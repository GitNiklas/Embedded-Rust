#![feature(asm, abi_avr_interrupt, lang_items, unwind_attributes)]

#![no_std]
#![no_main]

#![feature(core_panic)]

#![allow(unused_must_use)]
#![allow(dead_code)]

extern crate arduino;
use arduino::*;
use core::ptr::{read_volatile, write_volatile};

#[macro_use] extern crate avrlib;
use avrlib::*;
use delay::delay_ms;

mod ds18b20;
use ds18b20::onewire as onewire;
use_timer2_compa_vect!(onewire);

mod esp8266;
use esp8266::*;

pub mod std {
	use arduino::*;
	use core::ptr::{read_volatile, write_volatile};
	
	#[lang = "eh_personality"]
	#[no_mangle]
	pub unsafe extern "C" fn rust_eh_personality(_state: (), _exception_object: *mut (), _context: *mut ()) -> () {
	}

	#[lang = "panic_fmt"]
	#[unwind]
	#[no_mangle]
	pub extern fn rust_begin_panic(_msg: (), _file: &'static str, _line: u32, _col: u32) -> ! {
		cli!();
		reg_sbi!(PORTB, PORTB5); // Set LED to on
		wdt_reset!();
		reg_sbi!(WDTCSR, WDCE | WDE); // Enable WDT Change
		reg_write!(WDTCSR, WDE | WDP2 | WDP1 | WDP0); // Enable System Reset, Prescaler = 2.0s
		sei!();
		loop { } // Wait for restart
	}
}

fn wdt_off() {
	cli!();
	wdt_reset!();
	reg_cbi!(MCUSR, WDRF);
	reg_sbi!(WDTCSR, WDCE | WDE); // Keep old prescaler setting to prevent unintentional time-out 
	reg_write!(WDTCSR, 0x00); // Turn off WDT
	sei!();
}

const WIFI_NAME: &[u8] = b"AndroidAP";
const WIFI_PW: &[u8] = b"urpa1436";

const HOST: &[u8]= b"192.168.43.47";
const PORT: u16 = 1234;

fn open_server_connection() -> Result<TCPConnection, ()> {
	esp8266::at().send().read_until_ok();
	esp8266::at().reset().send().wait_for_reset();

	esp8266::at().op_mode().set().cw_mode(CWMode::Client).send().read_until_ok();
	esp8266::at().multi_connections().set().enabled(true).send().read_until_ok();
	esp8266::at().wifi().scan().send().read_until_ok();
	
	let connect_wifi = esp8266::at().wifi().connect().set().name(WIFI_NAME).pw(WIFI_PW).send().read_until_ok();
	if let Ok(_) = connect_wifi {
		esp8266::at().wifi().connect().query().read_until_ok();
		return esp8266::at().tcp().open().set().tcp_handle(TCPHandle::Multi1).hostname(HOST).port(PORT).send().wait_tcp_open();
	}
	else {
		return Err(());
	}
}

fn close_server_connection(conn: TCPConnection) {
	conn.close().read_until_ok();
	delay_ms(1000);
	esp8266::at().wifi().disconnect().send().wait_for_disconnect();
}


#[no_mangle]
pub extern fn main() {
	wdt_off();
	reg_sbi!(DDRB, DDB5); // PB5 as Output
	reg_cbi!(PORTB, PORTB5);
	uart::init();
	timer::init();
	ds18b20::init();
	sei!();
	
	if let Ok(conn) = open_server_connection() {
		// Send Temperature 
		for _i in 0.. 15 {
			let temp = ds18b20::read_temperature();
			conn.send_str(b"Temperature: ").read_until_ok();
			ds18b20::read_temperature();
			conn.send_str(&ds18b20::temperature_to_str(&temp)).read_until_ok();
			conn.send_str(b"\r\n").read_until_ok();
			delay_ms(2000);
		}		
		close_server_connection(conn);
	}

	loop {
		delay_ms(100);
	}
}


