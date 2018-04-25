pub const ERR_NONE: u8 = 0;
pub const FIFO_PUT_BUFFER_FULL: u8 = 1;
pub const FIFO_GET_BUFFER_EPMTY: u8 = 2;
pub const UART_GET_FIFO_EMPTY: u8 = 3;

#[macro_export] 
macro_rules! ensure {
    ($cond:expr, $err_code:expr) => (
    	if !$cond {
    		loop {}
    	}
    );
}