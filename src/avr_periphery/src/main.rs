#![feature(asm, abi_avr_interrupt, lang_items, unwind_attributes)]

#![no_std]
#![no_main]

#![feature(core_panic)]

#![allow(unused_must_use)]
#![allow(dead_code)]

extern crate arduino;
use arduino::*;
use core::ptr::{read_volatile, write_volatile};

#[macro_use]
extern crate avrlib;
use avrlib::*;
use delay::delay_ms;

mod ds18b20;
use ds18b20::onewire as onewire;
use_timer2_compa_vect!(onewire);

#[macro_use]
mod esp8266;
use esp8266::*;

pub mod std {
    use arduino::*;
    use core::ptr::{read_volatile, write_volatile};
    
    #[lang = "eh_personality"]
    #[no_mangle]
    pub unsafe extern "C" fn rust_eh_personality(_state: (), _exception_object: *mut (), _context: *mut ()) -> () {
    }

    // On panic, set LED and restart MCU
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

fn led_on() {
    reg_sbi!(PORTB, PORTB5);
}

fn led_off() {
    reg_cbi!(PORTB, PORTB5);
}

fn is_button_pressed() -> bool {
    return reg_read!(PINB) & PINB7 == 0;
}

const WIFI_NAME: &[u8] = b"AndroidAP";
const WIFI_PW: &[u8] = b"urpa1436";

const HOST: &[u8]= b"192.168.43.47";
const PORT: u16 = 1234;

fn open_server_connection() -> Result<TCPConnection, ()> {
    esp_cmd!(send wait AT)?;
    esp_cmd!(send wait AT+RST)?;
    
    esp_cmd!(send wait ATE true)?;
    esp_cmd!(send wait AT+CWMODE = cw_mode:(CWMode::Client))?;
    //let mode = esp_cmd!(send get AT+CWMODE?)?; 
    esp_cmd!(send wait AT+CIPMUX = enabled:true)?;
    esp_cmd!(send wait AT+CWLAP)?;
    
    esp_cmd!(send wait AT+CWJAP = name:WIFI_NAME, pw:WIFI_PW)?;
    return esp_cmd!(send wait AT+CIPSTART = tcp_handle:(TCPHandle::Multi1), hostname: HOST, port:PORT);
}

fn close_server_connection(conn: TCPConnection) {
    conn.close().wait();
    delay_ms(1000);
    esp_cmd!(send wait AT+CWQAP);
}

fn send_temperature() {
    if let Ok(conn) = open_server_connection() {
        for _i in 0.. 10 {
            conn.send_str(b"Temperature: ").wait();
            let temp = ds18b20::read_temperature();
            let temp_str = ds18b20::temperature_to_str(&temp);
            conn.send_str(&temp_str).wait();
            conn.send_str(b"\r\n").wait();
            delay_ms(1000);
        }
        close_server_connection(conn);
    }
}

#[no_mangle]
pub extern fn main() {
    wdt_off();
    reg_cbi!(DDRB, DDB7); // PB7 as Input
    reg_sbi!(DDRB, DDB5); // PB5 as Output
    reg_cbi!(PORTB, PORTB5);
    uart::init();
    timer::init();
    ds18b20::init();
    sei!();
    
    loop {
        if is_button_pressed() {
            send_temperature();
        }
        delay_ms(1000);
    }
}


