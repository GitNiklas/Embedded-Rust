pub mod onewire;
use uart;
use itoa;

const FRAC_LOOKUP_TABLE: [[u8; 4]; 16] = [
	*b"0000",
	*b"0625",
	*b"1250",
	*b"1875",
	*b"2500",
	*b"3125",
	*b"3750",
	*b"4375",
	*b"5000",
	*b"5625",
	*b"6250",
	*b"6875",
	*b"7500",
	*b"8125",
	*b"8750",
	*b"9375"
];

pub struct Temperature {
	is_negative: bool,
	int_part: u8,
	frac_part: u8	
}

fn read_scratchpad() -> [u8; 9] {
	onewire::reset();
	onewire::write(0xCC); // Skip Rom
	onewire::write(0xBE); // Read Scratchpad
	
	let mut scratchpad: [u8; 9] = [0x00; 9];
	for i in 0 .. scratchpad.len() {
		scratchpad[i] = onewire::read();
	}
	return scratchpad;
}

pub fn init() {
	onewire::init();
	cli!();
}

pub fn read_temperature() -> Temperature {
	onewire::reset();
	onewire::write(0xCC); // Skip Rom
	onewire::write(0x44); // Convert
	while onewire::read() == 0x00 {}
	
	
	let scratchpad = read_scratchpad();
	let lsb = scratchpad[0];
	let msb = scratchpad[1];
	
	let int_part = (msb & 0x07) << 4 | lsb >> 4;	
	let is_negative = (msb & 0xF0) != 0;
	let frac_part = lsb & 0x0F;

	return Temperature {
		is_negative: is_negative,
		int_part: int_part,
		frac_part: frac_part
	};
}

pub fn temperature_to_str(temp: &Temperature) -> [u8; 9] {
	let mut res : [u8; 9] = *b"+III.FFFF";
	res[0] = if temp.is_negative {'-'} else {' '} as u8;
	let buf_int = itoa::itoa_u8(temp.int_part);
	for i in 0 .. 3 {
		res[i+1] = buf_int[i];
	}
	res[4] = '.' as u8;
	for i in 0 .. 4 {
		res[5+i] = FRAC_LOOKUP_TABLE[temp.frac_part as usize][i];
	} 
	return res;
}

pub fn print_temperature(temp: &Temperature) {
	uart::put_u8( if temp.is_negative {'-'} else {' '} as u8);
	uart::put_u8_arr(&itoa::itoa_u8(temp.int_part));
	uart::put_u8('.' as u8);
	uart::put_u8_arr(&FRAC_LOOKUP_TABLE[temp.frac_part as usize]);
	uart::put_u8('\n' as u8);
}