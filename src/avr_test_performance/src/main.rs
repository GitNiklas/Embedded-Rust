#![feature(asm, lang_items, unwind_attributes)]

#![no_std]
#![no_main]

#![feature(core_panic)]

use core::ptr::{read_volatile, write_volatile};

#[macro_use] extern crate avrlib;
use avrlib::*;
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

#[macro_export] 
macro_rules! write_vl { 
    ($dst:expr, $val:expr) => (
        unsafe{ write_volatile($dst, $val) }
    );
}

#[macro_export] 
macro_rules! read_vl {
    ($dst:expr) => (
        unsafe{ read_volatile($dst) }
    );
}

static mut FIBS : [u32; 40] = [0x00; 40];

const PROJECT_NAME: &'static str = "avr_test_performance";
	
fn calc_fib(x: u8) {
	let xi = x as usize;
	let fibs = unsafe_ref!(FIBS);
	write_vl!(&mut fibs[xi],
		match x {
			0 => 0,
			1 => 1,
			_ => {
				calc_fib(x - 1);
				calc_fib(x - 2);
				read_volatile(&fibs[xi-1]) + read_volatile(&fibs[xi-2])
			}
		}
	);
}
        
#[no_mangle]
pub extern fn main() {
	uart::init();
	timer::init();
	sei!();

	uart::put_str(PROJECT_NAME);
	uart::put_str("\n");
	delay_ms(100);

	let mut i = 1;
	loop {
		uart::put_data(&itoa_u8(i as u8));
		uart::put_str(" ");
		
		let time = timer::time_ms();
		uart::put_data(&itoa_u32(time));
		uart::put_str(" ");

		calc_fib(i);
		let f = unsafe{FIBS[i as usize]};
		uart::put_data(&itoa_u32(f as u32));
		
		uart::put_str("\n");
		
		i += 1;
		delay_ms(100);
	}
}


