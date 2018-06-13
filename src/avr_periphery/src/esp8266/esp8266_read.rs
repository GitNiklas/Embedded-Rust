use uart;
use mini_parser;
use timer;
use delay::delay_ms;
use esp8266::esp8266_types::*;

const OK: &[u8] = b"OK\r\n";
const TIMEOUT_MS: u32 = 30000; 

pub fn clear_read_buffer() {
	while uart::received_data_cnt() > 0 {
		let _dummy = uart::get_u8();
	}
}

impl ReadOK {
	pub fn wait(self) -> Result<(), ()> {
		if mini_parser::start(get_byte)
			.read_until(OK).ok() {
				Ok(())
			}
		else {
			Err(())
		}
	}
}

impl WaitResetDone {
	pub fn wait(self) -> Result<(), ()> {
		if mini_parser::start(get_byte)
			.read_until(b"ready\r\n").ok() {
				Ok(())
			}
		else {
			Err(())
		}
	}
}

impl WaitDisconnectDone {
	pub fn wait(self) -> Result<(), ()> {
		if mini_parser::start(get_byte)
			.read_until(b"DISCONNECT\r\n").ok() {
				Ok(())
			}
		else {
			Err(())
		}
	}
}

impl ReadWiFiMode {
	pub fn get(self) -> Result<CWMode, ()> {
		let mut mode: u8 = 0;
		if mini_parser::start(get_byte)
			.read_until(b"+CWMODE:") // AT+CWMODE?\r\r\n+CWMODE:
			.val_u8(&mut mode) 
			.read_until(OK) // \r\n\r\nOK\r\n
			.ok() 
		{	
			return Ok(CWMode::from(mode as u8));	
			
		}
		else {
			return Err(());
		}
	}
}


impl ReadTCPStatus {
	pub fn get(self) -> Result<TCPStatus, ()> {
		let mut status: u8 = 0;
		if mini_parser::start(get_byte)
			.read_until(b"STATUS:") // AT+CIPSTATUS\r\r\nSTATUS:
			.val_u8(&mut status) 
			.read_until(OK) // ... OK\r\n
			.ok() 
		{	
			return Ok(TCPStatus::from(status as u8));	
			
		}
		else {
			return Err(());
		}
	}
}

impl WaitTCPOpen {
	pub fn wait(self) -> Result<TCPConnection, ()> {
		let WaitTCPOpen(handle) = self;
		if mini_parser::start(get_byte)
			.read_until(OK).ok() {
				Ok(TCPConnection(handle))
			}
		else {
			Err(())
		}
	}
}

impl ReadUntil {
	pub fn wait(self) {
		let ReadUntil(pat) = self;
		mini_parser::start(get_byte).read_until(pat);
	}
}

fn get_byte() -> Result<u8, ()> {
	if uart::received_data_cnt() == 0 {
		let timeout_ms = timer::time_ms() + TIMEOUT_MS;
		while uart::received_data_cnt() == 0 {
			if timer::time_ms() > timeout_ms {
				return Err(());
			}
			delay_ms(1);
		}
	}
	return Ok(uart::get_u8());
}