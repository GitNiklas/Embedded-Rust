use arduino::*;
use core::ptr::{write_volatile, read_volatile};

const F_CPU: u32 = 16_000_000; 
const PRESCALER: u32 = 64;
const TIMER_FREQUENCY_HZ: u32 = 1000;
const OCR0A_VAL: u8 = (F_CPU / (PRESCALER * TIMER_FREQUENCY_HZ) - 1) as u8; // Should have minimum rounding error

static mut TIME_MS: u32 = 0;

pub fn init() {
    reg_sbi!(TCCR0A, WGM01); // CTC Mode    
    reg_sbi!(TCCR0B, CS01 | CS00); // Prescaler = 64
    reg_write!(OCR0A, OCR0A_VAL);
    reg_write!(TIMSK0, OCIE0A); // Allow Compare Interrupt
}

pub fn time_ms() -> u32 {
    unsafe {
        return read_volatile(&TIME_MS);
    }
}

// Timer/Counter0 Compare Match A
isr_timer0_compa_vect!({
    unsafe {
        TIME_MS += 1;
    }
});
