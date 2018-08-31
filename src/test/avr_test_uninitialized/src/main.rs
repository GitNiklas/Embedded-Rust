#![feature(asm, lang_items, unwind_attributes)]

#![no_std]
#![no_main]

#![feature(core_panic)]

extern crate arduino;
use arduino::*;
use core::ptr;
use core::ptr::{read_volatile};

#[macro_use] extern crate avrlib;
use avrlib::*;

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

const PROJECT_NAME: &'static str = "avr_test_uninititalized";

#[no_mangle]
pub extern fn main() {
	uart::init();
	sei!();
	
	uart::put_str(PROJECT_NAME);
	uart::put_str("\n");
		
	let a: u8;	
	// Not allowed: Use of uninitialized
	// uart::put_u8(a);
	
	// Not even allowed in unsafe
	//unsafe {uart::put_u8(a)}
	
	if reg_read!(PORTC) != 0x04 {
		a = 0x42;
	}
	else {
		a = 0xAB;
	}
		
	// Now allowed
	uart::put_u8(a);
	
	// Allowed in unsafe: Null Pointer 
	let b: *const u8 = ptr::null();
	unsafe {
		uart::put_u8(*b);
	}
	
	// Allowed in unsafe: Pointer to some location
	let address = 0xBEEF;
	let c = address as *const u8;
	unsafe {	
		uart::put_u8(*c);
	}
	
	loop {
		
	}
}


