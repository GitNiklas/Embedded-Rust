// Type Definitions for the ESP8266 DSL

#[derive(PartialEq)]
pub enum CWMode {
    Unknown = 0x30,
    Client = 0x31,
    AccessPoint = 0x32,
    AcPointClient = 0x33
}

pub type Baudrate = u32;

pub enum DataBits {
    _5 = 0x35,
    _6 = 0x36,
    _7 = 0x37,
    _8 = 0x38
}

pub enum StopBits {
    _1 = 0x31,
    _1p5 = 0x32,
    _2 = 0x33,
}

pub enum Parity {
    None = 0x30,
    Odd = 0x31,
    Even = 0x32,
}

pub enum FlowControl {
    Disabled = 0x30,
    Rts = 0x31,
    Cts = 0x32,
    RtsCts = 0x33,
}

#[derive(Copy, Clone)]
pub enum TCPHandle {
    Multi0 = 0x30,
    Multi1 = 0x31,
    Multi2 = 0x32,
    Multi3 = 0x33,
    Multi4 = 0x34
}

pub enum TCPStatus {
    Unknown = 0x30,
    ConnectedHasIP = 0x32,
    OpenTCPConn = 0x33,
    TCPDisconnected = 0x34,
    NoWiFiConnected = 0x35
}

pub type WiFiName = &'static [u8];
pub type WiFiPW = &'static [u8];

pub type HostName = &'static [u8];
pub type PortNo = u16;

pub type DataLen = u8;

pub struct ATBase();
pub struct Echoing(pub ATBase, pub bool);

pub struct ATExt(pub ATBase);
pub struct Firmware(pub ATExt);
pub struct Reset(pub ATExt);
pub struct MultiConnections(pub ATExt);
pub struct MultiConnectionsSet(pub MultiConnections, pub bool);
pub struct UARTDef(pub ATExt);
pub struct UARTDefSet(pub UARTDef, pub Baudrate, pub DataBits, pub StopBits, pub Parity, pub FlowControl);

pub struct WiFi(pub ATExt);
pub struct WiFiMode(pub WiFi);
pub struct WiFiModeQuery(pub WiFiMode);
pub struct WiFiModeSet(pub WiFiMode, pub CWMode);
pub struct WiFiScan(pub WiFi);
pub struct WiFiConnection(pub WiFi);
pub struct WiFiConnectionSet(pub WiFiConnection, pub WiFiName, pub WiFiPW);
pub struct WiFiDisconnect(pub WiFi);

pub struct IPAddress(pub ATExt);

pub struct TCP(pub ATExt);
pub struct TCPGetState(pub TCP);
pub struct TCPOpen(pub TCP);
pub struct TCPOpenSet(pub TCPOpen, pub TCPHandle, pub HostName, pub PortNo);
pub struct TCPClose(pub TCP);
pub struct TCPCloseSet(pub TCPClose, pub TCPHandle);
pub struct TCPSendData(pub TCP);
pub struct TCPSendDataSet(pub TCPSendData, pub TCPHandle, pub DataLen);

pub struct ReadOK();
pub struct WaitResetDone();
pub struct WaitDisconnectDone();
pub struct ReadWiFiMode();
pub struct ReadTCPStatus();
pub struct WaitTCPOpen(pub TCPHandle);
pub struct ReadUntil(pub &'static [u8]);

#[derive(Copy, Clone)]
pub struct TCPConnection(pub TCPHandle);

impl From<u8> for CWMode {
    fn from(val: u8) -> CWMode {
        return match val {
            0x31 => CWMode::Client,
            0x32 => CWMode::AccessPoint,
            0x33 => CWMode::AcPointClient,
            _ => CWMode::Unknown
        }
    }
}

impl From<u8> for TCPStatus {
    fn from(val: u8) -> TCPStatus {
        return match val {
            0x32 => TCPStatus::ConnectedHasIP,
            0x33 => TCPStatus::OpenTCPConn,
            0x34 => TCPStatus::TCPDisconnected,
            0x35 => TCPStatus::NoWiFiConnected,
            _ => TCPStatus::Unknown
        }
    }
}