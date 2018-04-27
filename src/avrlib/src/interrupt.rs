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
macro_rules! isr_timer0_compa_vect {
	($body:block) => (define_isr!(__vector_14, $body););
}

#[macro_export] 
macro_rules! isr_usart_rx_vect {
	($body:block) => (define_isr!(__vector_18, $body););
}

#[macro_export] 
macro_rules! isr_usart_udre_vect {
	($body:block) => (define_isr!(__vector_19, $body););
}
