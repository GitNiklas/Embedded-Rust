#![feature(asm, lang_items, unwind_attributes)]

#![no_std]
#![no_main]

#![feature(core_panic)]

extern crate arduino;
use arduino::*;
use core::ptr::{read_volatile, write_volatile};

#[macro_use] extern crate avrlib;
use avrlib::*;
use delay::delay_ms;

pub mod std {

	#[lang = "eh_personality"]
	#[no_mangle]
	pub unsafe extern "C" fn rust_eh_personality(_state: (), _exception_object: *mut (), _context: *mut ()) -> () {
	}

	#[lang = "panic_fmt"]
	#[unwind]
	#[no_mangle]
	pub extern fn rust_begin_panic(_msg: (), _file: &'static str, _line: u32, _col: u32) -> ! {
		loop { }
	}
}

const PROJECT_NAME: &'static str = "avr_test_eeprom";

const EEPROM_VAL_ADDR: u16 = 0x0004;

#[no_mangle]
pub extern fn main() {
	reg_sbi!(DDRB, DDB5); // PB5 as Output
	uart::init();
	sei!();

	uart::put_str(PROJECT_NAME);
	uart::put_str("\n");
	
	let mut buffer: [u8; 16] = [' ' as u8; 16];
	
	loop {
		let mut i = 0;
		while uart::received_data_cnt() > 0 {
			eeprom::write_u8(EEPROM_VAL_ADDR + i, uart::get_u8());
			i += 1;
		}
		eeprom::read_u8_arr(EEPROM_VAL_ADDR, buffer.len(), &mut buffer);
		uart::put_u8_arr(&buffer);
		
		uart::put_str("\n");

		delay_ms(500);		
		reg_cbi!(PORTB, PORTB5);
		delay_ms(500);		
		reg_sbi!(PORTB, PORTB5);
	}
}


