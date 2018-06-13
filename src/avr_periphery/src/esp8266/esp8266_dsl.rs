macro_rules! esp_cmd {
	(send wait $($tail:tt)*) => { esp_cmd!(send $($tail)*).wait() };
	(send get $($tail:tt)*) => { esp_cmd!(send $($tail)*).get() };
	(send $($tail:tt)*) => { esp_cmd!($($tail)*).send() };
	(AT E $val:expr) => { at().echo($val) };
	(ATE $val:expr) => { esp_cmd!(AT E $val) };
	(AT) => { at() };
	(AT $($tail:tt)*) => { process_expr!(at(), $($tail)*) };
}

macro_rules! process_expr {
    ($obj:expr, $func:tt) => { call_func!($obj, $func) };
    ($obj:expr, = $($tail:tt)* ) => { process_params!(call_func!($obj, =), $($tail)*) };
    ($obj:expr, $func:tt $($tail:tt)* ) => { process_expr!(call_func!($obj, $func), $($tail)*); };
}

macro_rules! process_params {
	 ($obj:expr, $func:tt : $val:tt) => { $obj.$func($val)};
	 ($obj:expr, $func:tt : $val:tt, $($tail:tt)*) => { process_params!($obj.$func($val), $($tail)*)};
}

macro_rules! call_func {
	($obj:expr, +)  		=> {$obj.ext()};
	($obj:expr, ?)  		=> {$obj.query()};
	($obj:expr, =)  		=> {$obj.set()};
	
	($obj:expr, GMR)  		=> {$obj.firmware()};
	($obj:expr, RST)  		=> {$obj.reset()};
	($obj:expr, CIPMUX)  	=> {$obj.multi_connections()};
	($obj:expr, UART_DEF)  	=> {$obj.uart_def()};
	
	($obj:expr, CW)  		=> {$obj.wifi()};
	($obj:expr, MODE)  		=> {$obj.mode()};
	($obj:expr, CWMODE)  	=> {call_func!(call_func!($obj, CW), MODE)};
	($obj:expr, LAP)  		=> {$obj.scan()};
	($obj:expr, CWLAP)  	=> {call_func!(call_func!($obj, CW), LAP)};
	($obj:expr, JAP)  		=> {$obj.connection()};
	($obj:expr, CWJAP)  	=> {call_func!(call_func!($obj, CW), JAP)};
	($obj:expr, QAP)  		=> {$obj.disconnect()};
	($obj:expr, CWQAP)  	=> {call_func!(call_func!($obj, CW), QAP)};
	
	($obj:expr, CIFSR)  	=> {$obj.ip_address()};
	
	($obj:expr, CIP)  		=> {$obj.tcp()};
	($obj:expr, STATE)  	=> {$obj.get_state()};
	($obj:expr, CIPSTATE)  	=> {call_func!(call_func!($obj, CIP), STATE)};
	($obj:expr, START)  	=> {$obj.open()};
	($obj:expr, CIPSTART)  	=> {call_func!(call_func!($obj, CIP), START)};
	($obj:expr, CLOSE)  	=> {$obj.close()};
	($obj:expr, CIPCLOSE)  	=> {call_func!(call_func!($obj, CIP), CLOSE)};
	($obj:expr, SEND)  		=> {$obj.send_data()};
	($obj:expr, CIPSEND)  	=> {call_func!(call_func!($obj, CIP), SEND)};
}
