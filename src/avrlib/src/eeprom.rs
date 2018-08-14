use arduino::*;
use arduino::prelude::without_interrupts;
use core::ptr::{write_volatile, read_volatile};

pub fn write_u8(address: u16, val: u8) {
    while reg_read!(EECR) & EEPE != 0 {} // Wait for completion of previous write
    reg_write!(EEARH, address >> 8);
    reg_write!(EEARL, address & 0xFF);
    reg_write!(EEDR, val);
    without_interrupts(|| {
        reg_write!(EECR, EEMPE); // EEMPE = 1, EEPE = 0
        reg_write!(EECR, EEPE); // Start eeprom write
    });
}

pub fn read_u8(address: u16) -> u8 {
    while reg_read!(EECR) & EEPE != 0 {}
    reg_write!(EEARH, address >> 8);
    reg_write!(EEARL, address & 0xFF);
    reg_write!(EECR, EERE); // Start eeprom read
    return reg_read!(EEDR);
}

pub fn write_u8_arr(address: u16, data: &[u8]) {
    for i in 0..data.len() {
        write_u8(address + i as u16, data[i]);
    }
}

pub fn read_u8_arr(address: u16, len: usize, buffer: &mut [u8]) {
    for i in 0..len {
        buffer[i] = read_u8(address + i as u16);
    }
}
