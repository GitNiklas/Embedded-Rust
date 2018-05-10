// Macros for easy definition & use of interrupts
//
// Definition of an interrupt routine:
//
// timer.rs:
//
// isr_timer0_compa_vect!({
//	  ...
// })
//
// Interrupts inside main crates need a 'pub use <ISR>' in main.rs
// for this, the use* macros can be used:
// main.rs:
// use_timer0_compa_vect!(timer);
//  
// This is not needed for Interrupts defined in external crates
//
#[macro_export] 
macro_rules! define_isr {
    ($vect:ident, $body:block) => (
        #[no_mangle]
		pub extern "avr-interrupt" fn $vect() {
			$body;
		}
    );
}

#[macro_export] 
macro_rules! use_isr {
    ($vect:ident, $mod:ident) => (
        pub use $mod::$vect;
    );
}

#[macro_export] 
macro_rules! isr_timer0_compa_vect {($body:block) => (define_isr!(__vector_14, $body););}
#[macro_export] 
macro_rules! use_timer0_compa_vect {($mod:ident) => (use_isr!(__vector_14, $mod););}

#[macro_export] 
macro_rules! isr_timer2_compa_vect {($body:block) => (define_isr!(__vector_7, $body););}
#[macro_export] 
macro_rules! use_timer2_compa_vect {($mod:ident) => (use_isr!(__vector_7, $mod););}

#[macro_export] 
macro_rules! isr_usart_rx_vect {($body:block) => (define_isr!(__vector_18, $body););}
#[macro_export] 
macro_rules! use_usart_rx_vect {($mod:ident) => (use_isr!(__vector_18, $mod););}

#[macro_export] 
macro_rules! isr_usart_udre_vect {($body:block) => (define_isr!(__vector_19, $body););}
#[macro_export] 
macro_rules! use_usart_udre_vect {($mod:ident) => (use_isr!(__vector_19, $mod););}
