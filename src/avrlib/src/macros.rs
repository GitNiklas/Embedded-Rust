#[macro_export] 
macro_rules! reg_write { 
    ($reg:ident, $val:expr) => (
        unsafe{ write_volatile($reg as *mut u8, $val as u8) }
    );
}

#[macro_export] 
macro_rules! reg_read {
    ($reg:ident) => (
        unsafe{ read_volatile($reg as *mut u8) }
    );
}

#[macro_export] 
macro_rules! reg_sbi {
    ($reg:ident, $bit:expr) => (
        unsafe{ write_volatile($reg as *mut u8, read_volatile($reg) | $bit) }
    );
}

#[macro_export] 
macro_rules! reg_cbi {
    ($reg:ident, $bit:expr) => (
        unsafe{ write_volatile($reg as *mut u8, read_volatile($reg) & !$bit) }
    );
}

#[macro_export] 
macro_rules! write_vl { 
    ($ptr:expr, $val:expr) => (
        unsafe{ write_volatile($ptr, $val) }
    );
}

#[macro_export] 
macro_rules! read_vl {
    ($ptr:expr) => (
        unsafe{ read_volatile($ptr) }
    );
}

#[macro_export] 
macro_rules! sei {() => (unsafe{ asm!("SEI") });}

#[macro_export] 
macro_rules! cli {() => (unsafe{ asm!("CLI") });}

#[macro_export] 
macro_rules! nop {() => (unsafe{ asm!("" :::: "volatile") });}

#[macro_export] 
macro_rules! wdt_reset {() => (unsafe{ asm!("wdr" :::: "volatile") });}

#[macro_export] 
macro_rules! unsafe_ref {($global_var:ident) => (unsafe{ &mut $global_var });}

#[macro_export] 
macro_rules! unsafe_read {($global_var:ident) => (unsafe{ $global_var });}

#[macro_export] 
macro_rules! unsafe_write {($global_var:ident = $val:expr) => (unsafe{ $global_var = $val });}

#[macro_export] 
macro_rules! assert{($x:expr) => (if !$x {panic!()});}
