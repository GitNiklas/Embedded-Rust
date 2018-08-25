// Module for Serial UART (Interrupt-based)
// Rx and Tx Data is stored in FiFo Buffers
use arduino::*;
use core::ptr::{write_volatile, read_volatile};
use fifo::*;

const F_CPU: u32 = 16_000_000; 
const BAUDRATE: u32 = 115200;
const UBRR_VAL: u16 = (F_CPU / (8 * BAUDRATE) - 1) as u16;

static mut TX_FIFO: FiFo = EMPTY_FIFO;
static mut RX_FIFO: FiFo = EMPTY_FIFO;

pub fn init() {
    reg_write!(UBRR0H, UBRR_VAL >> 8); // Set Baudrate
    reg_write!(UBRR0L, UBRR_VAL & 0xFF); // Set Baudrate
    reg_sbi!(UCSR0A, U2X0); // Double Transmission Speed
    reg_write!(UCSR0B, RXEN0 | TXEN0); // Enable Receiver & Transmitter
    reg_write!(UCSR0C, UCSZ01 | UCSZ00); // Mode: 8Bit, No Parity, 1 Stop bit
    reg_sbi!(UCSR0B, RXCIE0); // Enable Rx Interrupt
}

pub fn reset() {
    unsafe_ref!(TX_FIFO).reset();
}

pub fn put_u8_no_isr(data: u8) {
    while reg_read!(UCSR0A) & UDRE0 == 0 {}
    reg_write!(UDR0, data); // Put data into buffer, sends the data 
}

pub fn put_u8(data: u8) {
    unsafe_ref!(TX_FIFO).put(data);
    reg_sbi!(UCSR0B, UDRIE0); // Enable Tx Interrupt
}

pub fn put_u8_arr(data: &[u8]) {
    for c in data { 
        put_u8(*c);
    }
}

pub fn put_str(data: &str) {
    for c in data.chars() { 
        put_u8(c as u8);
    }
}

pub fn put_str_no_isr(data: &str) {
    for c in data.chars() { 
        put_u8_no_isr(c as u8);
    }
}

pub fn received_data_cnt() -> usize {
    return unsafe_ref!(RX_FIFO).len();
}

pub fn get_u8() -> u8 {
    let rx_fifo = unsafe_ref!(RX_FIFO);
    assert!(!rx_fifo.is_empty());
    return rx_fifo.get();
}


// RX Complete Interrupt (Received one Byte)
isr_usart_rx_vect!({
    unsafe_ref!(RX_FIFO).put(reg_read!(UDR0));
});

// USART Data Register Empty Interrupt (Ready to Transmit Data)
isr_usart_udre_vect!({
    let tx_fifo = unsafe_ref!(TX_FIFO);
    if !tx_fifo.is_empty() {
        reg_write!(UDR0, tx_fifo.get());
    }
    else {
        reg_cbi!(UCSR0B, UDRIE0); // Disable Tx Interrupt
    }       
});
