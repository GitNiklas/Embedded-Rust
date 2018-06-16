use uart;
use esp8266::esp8266_types::*;

macro_rules! itoa_send {
	($val:expr, $buffer:ident) => ({
		let start = itoa!($val, $buffer);
		uart::put_u8_arr(&$buffer[start .. $buffer.len()]);
	});
}

const CHAR_EXT: u8 = '+' as u8;
const CHAR_QUERY: u8 = '?' as u8;
const CHAR_SET: u8 = '=' as u8;
const CHAR_SEP: u8 = ',' as u8;
const CHAR_QUOTE: u8 = '"' as u8;
const DUMMY_STR: &[u8] = b"";

pub fn at() -> ATBase {
	ATBase()
}

impl ATBase {	
	fn send_cmd(self) {
		uart::put_str("AT");
	}
	
    pub fn send(self) -> ReadOK {
		self.send_cmd();
		cmd_end()
    }
    
	pub fn echo(self, enabled: bool) -> Echoing {
		Echoing(self, enabled)
	}
    	
    pub fn ext(self) -> ATExt {
    	ATExt(self)
    }
}

impl Echoing {
    pub fn send(self) -> ReadOK {
		let Echoing(prev_cmd, ena) = self;
		prev_cmd.send_cmd();
		uart::put_u8('E' as u8);
		uart::put_u8(if ena {'1'} else {'0'} as u8);
		cmd_end()
    }
}

impl ATExt {
	fn send_cmd(self) {
		let ATExt(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8(CHAR_EXT);
	}
		
	pub fn firmware(self) -> Firmware {
		Firmware(self)
	}
	
	pub fn reset(self) -> Reset {
		Reset(self)
	}
	
	pub fn multi_connections(self) -> MultiConnections {
		MultiConnections(self)
	}
	
	pub fn uart_def(self) -> UARTDef {
		UARTDef(self)
	}
	
	pub fn wifi(self) -> WiFi {
		WiFi(self)
	}
	
	pub fn ip_address(self) -> IPAddress {
		IPAddress(self)
	}
		
	pub fn tcp(self) -> TCP {
		TCP(self)
	}
}

impl Firmware {
    pub fn send(self) -> ReadOK {
		let Firmware(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"GMR");
		cmd_end()
    }
}

impl Reset {	
    pub fn send(self) -> WaitResetDone {
		let Reset(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"RST");
		cmd_end();
		WaitResetDone()
    }
}

impl MultiConnections {	
	fn send_cmd(self) {
		let MultiConnections(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"CIPMUX");
	}
	
	pub fn set(self) -> MultiConnectionsSet {
		MultiConnectionsSet(self, true)
	}
}

impl MultiConnectionsSet {	
	pub fn send(self)-> ReadOK {
		let MultiConnectionsSet(prev_cmd, enabled) = self;
		prev_cmd.send_cmd();
		uart::put_u8(CHAR_SET);
		u8_param(if enabled {'1'} else {'0'} as u8);
		cmd_end()
    }
	    
	pub fn enabled(self, enabled: bool) -> Self {
		let MultiConnectionsSet(prev_cmd, _) = self;
		MultiConnectionsSet(prev_cmd, enabled)
	}
}

impl UARTDef {	
	fn send_cmd(self) {
		let UARTDef(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"UART_DEF");
	}
	
	pub fn set(self) -> UARTDefSet {
		UARTDefSet(
			self, 
			115200, 
			DataBits::_8, 
			StopBits::_1, 
			Parity::None, 
			FlowControl::Disabled
		)
	}
}

impl UARTDefSet {	
	pub fn send(self) -> ReadOK {
		let UARTDefSet(prev_cmd, baud, data, stop, par, flow) = self;
		prev_cmd.send_cmd();
		set();
		let mut buffer: [u8; 7] = [0; 7];
		itoa_send!(baud, buffer);
		sep();
		u8_param(data as u8);
		sep();
		u8_param(stop as u8);
		sep();
		u8_param(par as u8);
		sep();
		u8_param(flow as u8);
		cmd_end()
    }
	    
	pub fn baudrate(self, baud: Baudrate) -> Self {
		let UARTDefSet(prev_cmd, _, data, stop, par, flow) = self;
		UARTDefSet(prev_cmd, baud, data, stop, par, flow)
	}
	
	pub fn databits(self, databits: DataBits) -> Self {
		let UARTDefSet(prev_cmd, baud, _, stop, par, flow) = self;
		UARTDefSet(prev_cmd, baud, databits, stop, par, flow)
	}
	
	pub fn stopbits(self, stopbits: StopBits) -> Self {
		let UARTDefSet(prev_cmd, baud, data, _, par, flow) = self;
		UARTDefSet(prev_cmd, baud, data, stopbits, par, flow)
	}
	
	pub fn parity(self, par: Parity) -> Self {
		let UARTDefSet(prev_cmd, baud, data, stop, _, flow) = self;
		UARTDefSet(prev_cmd, baud, data, stop, par, flow)
	}
	
	pub fn flow_control(self, flow: FlowControl) -> Self {
		let UARTDefSet(prev_cmd, baud, data, stop, par, _) = self;
		UARTDefSet(prev_cmd, baud, data, stop, par, flow)
	}
}

impl WiFi {	
	fn send_cmd(self) {
		let WiFi(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"CW");
	}
	
	pub fn mode(self) -> WiFiMode {
		WiFiMode(self)
	}
	
	pub fn scan(self) -> WiFiScan {
		WiFiScan(self)
	}
	
	pub fn connection(self) -> WiFiConnection {
		WiFiConnection(self)
	}
	
	pub fn disconnect(self) -> WiFiDisconnect {
		WiFiDisconnect(self)
	}
}

impl WiFiMode {	
	fn send_cmd(self) {
		let WiFiMode(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"MODE");
	}
	
	pub fn query(self) -> WiFiModeQuery {
		WiFiModeQuery(self)
	}
	
	pub fn set(self) -> WiFiModeSet {
		WiFiModeSet(self, CWMode::Client)
	}
}

impl WiFiModeQuery {
	pub fn send(self)-> ReadWiFiMode {
		let WiFiModeQuery(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8(CHAR_QUERY);
		cmd_end();
		ReadWiFiMode()
    }
}

impl WiFiModeSet {	
	pub fn send(self)-> ReadOK {
		let WiFiModeSet(prev_cmd, cw_mode) = self;
		prev_cmd.send_cmd();
		uart::put_u8(CHAR_SET);
		u8_param(cw_mode as u8);
		cmd_end()
    }
	    
	pub fn cw_mode(self, cw_mode: CWMode) -> Self {
		let WiFiModeSet(prev_cmd, _) = self;
		WiFiModeSet(prev_cmd, cw_mode)
	}
}

impl WiFiScan {		
	pub fn send(self) -> ReadOK {
		let WiFiScan(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"LAP");
		cmd_end();
		ReadOK() 
    }
}

impl WiFiConnection {	
	fn send_cmd(self) {
		let WiFiConnection(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"JAP");
	}
	
	pub fn set(self) -> WiFiConnectionSet {
		WiFiConnectionSet(self, &DUMMY_STR, &DUMMY_STR)
	}
}

impl WiFiConnectionSet {	
	pub fn send(self) -> ReadOK {
		let WiFiConnectionSet(prev_cmd, name, pw) = self;
		prev_cmd.send_cmd();
		set();
		str_param(name);
		sep();
		str_param(pw);
		cmd_end()
    }
	
	pub fn name(self, name: WiFiName) -> Self {
		let WiFiConnectionSet(prev_cmd, _,  pw) = self;
		WiFiConnectionSet(prev_cmd, name, pw)
	}
	
	pub fn pw(self, pw: WiFiPW) -> Self {
		let WiFiConnectionSet(prev_cmd, name, _) = self;
		WiFiConnectionSet(prev_cmd, name, pw)
	}
}

impl WiFiDisconnect {		
	pub fn send(self) -> WaitDisconnectDone {
		let WiFiDisconnect(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"QAP");
		cmd_end();
		WaitDisconnectDone()
    }
}

impl IPAddress {		
	pub fn send(self) -> ReadOK {
		let IPAddress(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"CIFSR");
		cmd_end()
    }
}

impl TCP {	
	fn send_cmd(self) {
		let TCP(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"CIP");
	}
	
	pub fn get_state(self) -> TCPGetState {
		TCPGetState(self)
	}
	
	pub fn open(self) -> TCPOpen {
		TCPOpen(self)
	}
	
	pub fn close(self) -> TCPClose {
		TCPClose(self)
	}
	
	pub fn send_data(self) -> TCPSendData {
		TCPSendData(self)
	}
}

impl TCPGetState {		
	pub fn send(self) -> ReadTCPStatus {
		let TCPGetState(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"STATUS");
		cmd_end();
		ReadTCPStatus()
    }
}

impl TCPOpen {
	fn send_cmd(self) {
		let TCPOpen(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"START");
	}
	
	pub fn set(self) -> TCPOpenSet {
		TCPOpenSet(self, TCPHandle::Multi0, &DUMMY_STR, 0)
	}
}

impl TCPOpenSet {	
	pub fn send(self) -> WaitTCPOpen {
		let TCPOpenSet(prev_cmd, handle, host, port) = self;	
		prev_cmd.send_cmd();
		set();
		u8_param(handle as u8);
		sep();
		str_param(b"TCP");
		sep();
		str_param(host);
		sep();
		let mut buffer: [u8; 5] = [0; 5];
		itoa_send!(port, buffer);
		cmd_end();
		WaitTCPOpen(handle)
    }
	
	pub fn tcp_handle(self, handle: TCPHandle) -> Self {
		let TCPOpenSet(prev_cmd, _, host, port) = self;
		TCPOpenSet(prev_cmd, handle, host, port)
	}
	
	pub fn hostname(self, host: HostName) -> Self {
		let TCPOpenSet(prev_cmd, handle, _, port) = self;
		TCPOpenSet(prev_cmd, handle, host, port)
	}
	
	pub fn port(self, port: PortNo) -> Self {
		let TCPOpenSet(prev_cmd, handle, host, _) = self;
		TCPOpenSet(prev_cmd, handle, host, port)
	}
}

impl TCPClose {
	fn send_cmd(self) {
		let TCPClose(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"CLOSE");
	}
	
	pub fn set(self) -> TCPCloseSet {
		TCPCloseSet(self, TCPHandle::Multi0)
	}
}

impl TCPCloseSet {	
	pub fn send(self) -> ReadOK {
		let TCPCloseSet(prev_cmd, handle) = self;
		prev_cmd.send_cmd();
		set();
		u8_param(handle as u8);
		cmd_end();
		ReadOK()
    }
	
	pub fn tcp_handle(self, handle: TCPHandle) -> Self {
		let TCPCloseSet(prev_cmd, _) = self;
		TCPCloseSet(prev_cmd, handle)
	}
}

impl TCPSendData {
	fn send_cmd(self) {
		let TCPSendData(prev_cmd) = self;
		prev_cmd.send_cmd();
		uart::put_u8_arr(b"SEND");
	}
	
	pub fn set(self) -> TCPSendDataSet {
		TCPSendDataSet(self, TCPHandle::Multi0, 0)
	}
}

impl TCPSendDataSet {	
	pub fn send(self) -> ReadUntil {
		let TCPSendDataSet(prev_cmd, handle, len) = self;
		prev_cmd.send_cmd();
		set();
		u8_param(handle as u8);
		sep();
		let mut buffer: [u8; 3] = [0x00; 3];
		itoa_send!(len, buffer);
		cmd_end();
		ReadUntil(b"OK\r\n>")
    }
	
	pub fn tcp_handle(self, handle: TCPHandle) -> Self {
		let TCPSendDataSet(prev_cmd, _, len) = self;
		TCPSendDataSet(prev_cmd, handle, len)
	}
	
	pub fn len(self, len: DataLen) -> Self {
		let TCPSendDataSet(prev_cmd, handle, _) = self;
		TCPSendDataSet(prev_cmd, handle, len)
	}
}

impl TCPConnection {
	pub fn send_str(self, data: &[u8]) -> ReadOK {
		let TCPConnection(handle) = self;
		at().ext().tcp().send_data().set().tcp_handle(handle).len(data.len() as u8).send().wait();
		uart::put_u8_arr(data);
		cmd_end()
	}
	
	pub fn read_until(self, pat: &'static [u8]) -> Self {
		ReadUntil(pat).wait();
		self
	}
	
	pub fn close(self) -> ReadOK {
		let TCPConnection(handle) = self;
		at().ext().tcp().close().set().tcp_handle(handle).send()
	}
}

fn query() {
	uart::put_u8(CHAR_QUERY);
	cmd_end();
}

fn cmd_end() -> ReadOK {
	uart::put_u8_arr(b"\r\n");
	ReadOK()
}

fn set() {
	uart::put_u8(CHAR_SET);
}

fn sep() {
	uart::put_u8(CHAR_SEP);
}

fn u8_param(data: u8) {
	uart::put_u8(data);
}

fn str_param(data: &[u8]) {
	uart::put_u8(CHAR_QUOTE);
	uart::put_u8_arr(data);
	uart::put_u8(CHAR_QUOTE);
}