use arduino::*;
use core::ptr::{write_volatile, read_volatile};

const F_CPU: u32 = 16_000_000; 

macro_rules! calc_timer_val {
    ($prescaler:expr, $timer_freq:expr) => (
        (F_CPU / ($prescaler * $timer_freq) - 1) as u8;
    );
}

struct TimerConf {
    pub ocr2a_val: u8,
    pub tccr2b_val: u8
}

const TIMER_CONF_5_US: TimerConf = TimerConf { 
    ocr2a_val: calc_timer_val!(8, 200_000), // 5 us delay
    tccr2b_val: CS21 // Prescaler 8
};

const TIMER_CONF_10_US: TimerConf = TimerConf { 
    ocr2a_val: calc_timer_val!(8, 100_000), // 10 us delay
    tccr2b_val: CS21 // Prescaler 8
};

const TIMER_CONF_50_US: TimerConf = TimerConf { 
    ocr2a_val: calc_timer_val!(8, 20_000), // 50 us delay
    tccr2b_val: CS21 // Prescaler 8
};

const TIMER_CONF_60_US: TimerConf = TimerConf { 
    ocr2a_val: calc_timer_val!(8, 16_666), // 60 us delay
    tccr2b_val: CS21 // Prescaler 8
};

const TIMER_CONF_160_US: TimerConf = TimerConf { 
    ocr2a_val: calc_timer_val!(32, 6_250), // 160 us delay
    tccr2b_val: CS21 | CS20 // Prescaler 32
};

const TIMER_CONF_500_US: TimerConf = TimerConf { 
    ocr2a_val: calc_timer_val!(32, 2_000), // 500 us delay
    tccr2b_val: CS21 | CS20 // Prescaler 32
};


#[derive(Copy, Clone, PartialEq)]
enum Mode {
    WriteByte,
    ReadByte,
    Reset
}

#[derive(Copy, Clone, PartialEq)]
enum State {
    BeginCycle,
    After5us,
    After10us,
    After45us,
    After60us,
    After70us,
    After160us,
    After500us,
    After660us,
    Done
}

static mut BUFFER: u8 = 0x00;
static mut BIT_CNT: u8 = 0;
static mut STATE: State = State::BeginCycle;
static mut MODE: Mode = Mode::Reset;

/* --------------------------------- */
/* Helper Methods                    */
/* --------------------------------- */

fn bus_low() {
    reg_sbi!(DDRC, DDC3);
    reg_cbi!(PORTC, PORTC3);
}

fn bus_high() {
    reg_sbi!(PORTC, PORTC3);
    reg_cbi!(DDRC, DDC3);
}

fn bus_read() -> u8 {
    (reg_read!(PINC) & PINC3 > 0) as u8
}

fn configure_timer(config: TimerConf) {
    reg_write!(TCCR2B, config.tccr2b_val); // Prescaler
    reg_write!(OCR2A, config.ocr2a_val); // Value
    reg_write!(TCNT2, 0x00); // Reset the timer
    reg_sbi!(TIFR2, OCF2A); // Clear the Interrupt flag
}

fn enable_timer2() {
    reg_sbi!(TIMSK2, OCIE2A);
}

fn disable_timer2() {
    reg_cbi!(TIMSK2, OCIE2A);
}

fn wait_until_done() {
    while read_vl!(&STATE) != State::Done {}
}

/* --------------------------------- */
/* Public Functions                  */
/* --------------------------------- */

pub fn init() {
    reg_sbi!(TCCR2A, WGM21); // CTC Mode
    configure_timer(TIMER_CONF_10_US);
    bus_high();
    unsafe_write!(STATE = State::Done);
}

pub fn read() -> u8 {
    wait_until_done();
    unsafe_write!(MODE = Mode::ReadByte);
    unsafe_write!(STATE = State::BeginCycle);
    unsafe_write!(BIT_CNT = 0);
    enable_timer2();
    wait_until_done();
    return unsafe_read!(BUFFER);
}

pub fn write(val: u8) {
    wait_until_done();
    unsafe_write!(MODE = Mode::WriteByte);
    unsafe_write!(STATE = State::BeginCycle);
    unsafe_write!(BUFFER = val);
    unsafe_write!(BIT_CNT = 0);
    enable_timer2();
}

pub fn reset() {
    wait_until_done();
    unsafe_write!(MODE = Mode::Reset);
    unsafe_write!(STATE = State::BeginCycle);
    enable_timer2();
}

/* --------------------------------- */
/* ISR Section                       */
/* --------------------------------- */

fn isr_reset() {
    match unsafe_read!(STATE) {
        State::BeginCycle => {
            bus_low();
            unsafe_write!(STATE = State::After500us);
            configure_timer(TIMER_CONF_500_US);
        }
        State::After500us => {
            bus_high();
            unsafe_write!(STATE = State::After660us);
            configure_timer(TIMER_CONF_160_US); // After 160 us, presence-detect should be done
        }
        _ => { // State::After500us
            unsafe_write!(STATE = State::Done);
            disable_timer2();
        }
    }
}

fn isr_write() {
    let bit: u8 = unsafe_read!(BUFFER) & 0x01;
    match unsafe_read!(STATE) {
        State::BeginCycle => {
            bus_low();
            if bit == 0x01 {                
                unsafe_write!(STATE = State::After10us);
                configure_timer(TIMER_CONF_10_US);
            }
            else {
                unsafe_write!(STATE = State::After60us);
                configure_timer(TIMER_CONF_60_US);
            }
        }
        State::After10us => {
            bus_high();
            unsafe_write!(STATE = State::After70us);
            configure_timer(TIMER_CONF_60_US);
        }
        State::After60us => {
            bus_high();
            unsafe_write!(STATE = State::After70us);
            configure_timer(TIMER_CONF_10_US);
        }
        _ => { // State::After70us
            unsafe_write!(BUFFER = BUFFER >> 1);
            unsafe_write!(BIT_CNT = BIT_CNT + 1);
            if unsafe_read!(BIT_CNT) < 8 {
                unsafe_write!(STATE = State::BeginCycle);
                configure_timer(TIMER_CONF_10_US);
            }
            else {
                unsafe_write!(STATE = State::Done);
                disable_timer2();
            }
        }
    }
}

fn isr_read() {
    match unsafe_read!(STATE) {
        State::BeginCycle => {
            bus_low();          
            unsafe_write!(STATE = State::After5us);
            configure_timer(TIMER_CONF_5_US);
        }
        State::After5us => {
            bus_high();         
            unsafe_write!(STATE = State::After10us);
        }
        State::After10us => {
            unsafe_write!(BUFFER = bus_read() << 7 | BUFFER >> 1 );     
            unsafe_write!(STATE = State::After70us);
            configure_timer(TIMER_CONF_60_US);
        }
        _ => { // State::After70us
            unsafe_write!(BIT_CNT = BIT_CNT + 1);
            if unsafe_read!(BIT_CNT) < 8 {
                unsafe_write!(STATE = State::BeginCycle);
                configure_timer(TIMER_CONF_10_US);
            }
            else {
                unsafe_write!(STATE = State::Done);
                disable_timer2();
            }
        }
    }
}

// Timer/Counter2 Compare Match A
isr_timer2_compa_vect!({    
    match unsafe_read!(MODE) {
        Mode::Reset => isr_reset(),
        Mode::WriteByte => isr_write(),
        Mode::ReadByte => isr_read()
    }
});
