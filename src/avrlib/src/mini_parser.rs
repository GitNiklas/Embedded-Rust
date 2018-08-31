// Low-level Parser Module for reading a byte stream.

// Internal Macro to read next byte, early return on error
macro_rules! get {($get_next_byte:ident) => (
    match $get_next_byte() {
        Ok(x) => x,
        Err(_) => return MiniParser($get_next_byte, false)  
    }
);}

// Prototype for external Get Byte Function
type NextByteFn = fn() -> Result<u8, ()>;

pub struct MiniParser(NextByteFn, bool);

pub fn start(get_next_byte: NextByteFn) -> MiniParser {
    return MiniParser(get_next_byte, true);
}

impl MiniParser {
    // check if all operations succeded
    pub fn ok(self) -> bool {
        let MiniParser(_, ok) = self;
        return ok;
    }
    
    // Skip a certain number of bytes (no timeout)
    pub fn skip(self, no_bytes: u8) -> MiniParser {
        let MiniParser(get_next_byte, ok) = self;
        if ok {
            for _i in 0.. no_bytes {
                get!(get_next_byte);
            }
            return MiniParser(get_next_byte, true);
        }
        else {
            return MiniParser(get_next_byte, false);
        }
    }
    
    // Wait until a specific pattern occurs.
    // CAUTION: May fail if the pattern contains parts of itself
    // (e.g. pattern "tetest" won't be found in input "tetetest")
    pub fn read_until(self, pattern: &[u8]) -> MiniParser {
        let MiniParser(get_next_byte, ok) = self;
        if ok {
            let mut i = 0;
            while i < pattern.len() {       
                let byte = get!(get_next_byte);
                if byte == pattern[i] {
                    i += 1;
                }
                else if byte == pattern[0] {
                    i = 1;
                }
                else {
                    i = 0;
                }
            }
            return MiniParser(get_next_byte, true);
        }
        else {
            return MiniParser(get_next_byte, false);
        }
    }
    
    // Expect a specific Byte Sequence in stream, fail if Sequence not found
    pub fn tag(self, tag: &str) -> MiniParser {
        let MiniParser(get_next_byte, ok) = self;
        if ok {
            for c in tag.chars() { 
                let byte = get!(get_next_byte);
                if c as u8 != byte {
                    return MiniParser(get_next_byte, false);
                }
            }
            return MiniParser(get_next_byte, true);
        }
        else {
            return MiniParser(get_next_byte, false);
        }
    }
    
    // Read a u8 from stream
    pub fn val_u8(self, val: &mut u8) -> MiniParser {
        let MiniParser(get_next_byte, ok) = self;
        if ok {
            *val = get!(get_next_byte);
            return MiniParser(get_next_byte, true);
        }
        else {
            return MiniParser(get_next_byte, false);
        }
    }
}

