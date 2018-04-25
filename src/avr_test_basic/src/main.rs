#![feature(asm, lang_items, unwind_attributes)]

#![no_std]
#![no_main]

#![feature(core_panic)]

extern crate arduino;
use arduino::*;
use core::ptr::{read_volatile, write_volatile};

#[macro_use] extern crate avrlib;
use avrlib::*;
pub use uart::{__vector_18, __vector_19}; // Needed for all Interrupts
pub use timer::{__vector_14};
use timer::*;
use itoa::*;
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

const PROJECT_NAME: &'static str = "avr_test_basic";

#[no_mangle]
pub extern fn main() {
	reg_sbi!(DDRB, DDB5); // PB5 as Output
	uart::init();
	timer::init();
	sei!();

	uart::put_str(PROJECT_NAME);
	uart::put_str("\n");

	loop {
		while uart::received_data_cnt() > 0 {
			uart::put_u8(uart::get_u8());
		}
		
		let time = time_ms();
		uart::put_data(&itoa_u32(time));
		
		uart::put_str("\n");

		delay_ms(500);		
		reg_cbi!(PORTB, PORTB5);
		delay_ms(500);		
		reg_sbi!(PORTB, PORTB5);
	}
}


