
// itoa macro
// Buffer has to be large enough for num
// Usage: let startindex = itoa!(1, buffer);
#[macro_export] 
macro_rules! itoa {
    ($num:expr, $buffer:ident) => ({
        let mut x = $num;
        let mut i = $buffer.len() - 1;
        $buffer[i] = '0' as u8;
        
        while x > 0 {
            let digit = (x % 10) as u8;
            x = x / 10;
            $buffer[i] = ('0' as u8 + digit) as u8;
            i -= 1;
        }
        
        // return Index in buffer where number starts
        if i == $buffer.len() - 1 {i} else {i + 1}
    });
}

pub fn itoa_u8(num: u8) -> [u8; 3] {
    let mut buffer: [u8; 3] = [' ' as u8; 3];
    itoa!(num, buffer);
    return buffer;
}

pub fn itoa_u16(num: u16) -> [u8; 5] {
    let mut buffer: [u8; 5] = [' ' as u8; 5];
    itoa!(num, buffer);
    return buffer;
}

pub fn itoa_u32(num: u32) -> [u8; 10] {
    let mut buffer: [u8; 10] = [' ' as u8; 10];
    itoa!(num, buffer);
    return buffer;
}

