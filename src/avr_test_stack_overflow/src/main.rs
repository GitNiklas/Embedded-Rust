// Test for AVR Stack Overflow
// A Stack Overflow doesn't neccessarily generate a panic
#![feature(asm, lang_items, unwind_attributes)]

#![no_std]
#![no_main]

#![feature(core_panic)]

extern crate arduino;
use arduino::*;
use core::ptr::{read_volatile, write_volatile};

#[macro_use] extern crate avrlib;
use avrlib::*;
use avrlib::delay::*;
use avrlib::itoa::itoa_u8;

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

const PROJECT_NAME: &'static str = "avr_test_stack_overflow";

fn wdt_off() {
	cli!();
	wdt_reset!();
	reg_cbi!(MCUSR, WDRF);
	reg_sbi!(WDTCSR, WDCE | WDE); // Keep old prescaler setting to prevent unintentional time-out 
	reg_write!(WDTCSR, 0x00); // Turn off WDT
	sei!();
}

fn consume_mem(i: u8, max: u8) {
	if i < max {
		let mut buffer: [u8; 16] = [0x00 as u8; 16]; 
		
		reg_write!(DDRC, 0x00); // PINC as Input
		for j in 0..buffer.len() {
			let val = reg_read!(PINC);
			write_vl!(&mut buffer[j], val);
		}
		
		consume_mem(i + 1, max);
		
		reg_write!(DDRC, 0xFF); // PORTC as Output
		for j in 0..buffer.len() {
			let val = read_vl!(&buffer[j]);
			reg_write!(PORTC, val);
		}
	}
}


#[no_mangle]
pub extern fn main() {
	wdt_off();
	reg_sbi!(DDRB, DDB5); // PB5 as Output
	reg_cbi!(PORTB, PORTB5);
	uart::init();
	sei!();

	uart::put_str(PROJECT_NAME);
	uart::put_str("\n");
	delay_ms(1000);

	let mut i = 0;
	loop {		
		uart::put_u8_arr(&itoa_u8(i));
		uart::put_str(" ");
		delay_ms(50);
		consume_mem(0, i);
		uart::put_str("\n");
		i += 1;
		delay_ms(50);		
	}
}


