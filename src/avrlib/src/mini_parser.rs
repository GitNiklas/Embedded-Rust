macro_rules! get {($next_byte:ident) => (
    match $next_byte() {
        Ok(x) => x,
        Err(_) => return MiniParser($next_byte, false)  
    }
);}


type NextByteFn = fn() -> Result<u8, ()>;

pub struct MiniParser(NextByteFn, bool);

pub fn start(next_byte: NextByteFn) -> MiniParser {
    return MiniParser(next_byte, true);
}

impl MiniParser {
    pub fn ok(self) -> bool {
        let MiniParser(_, ok) = self;
        return ok;
    }
    
    pub fn skip(self, no_bytes: u8) -> MiniParser {
        let MiniParser(next_byte, ok) = self;
        if ok {
            for _i in 0.. no_bytes {
                get!(next_byte);
            }
            return MiniParser(next_byte, true);
        }
        else {
            return MiniParser(next_byte, false);
        }
    }
    
    // Wait until a specific pattern occurs.
    // CAUTION: May fail if the pattern contains parts of itself
    // (e.g. pattern "tetest" won't be found in input "tetetest")
    pub fn read_until(self, pattern: &[u8]) -> MiniParser {
        let MiniParser(next_byte, ok) = self;
        if ok {
            let mut i = 0;
            while i < pattern.len() {       
                let byte = get!(next_byte);
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
            return MiniParser(next_byte, true);
        }
        else {
            return MiniParser(next_byte, false);
        }
    }
    
    pub fn tag(self, tag: &str) -> MiniParser {
        let MiniParser(next_byte, ok) = self;
        if ok {
            for c in tag.chars() { 
                let byte = get!(next_byte);
                if c as u8 != byte {
                    return MiniParser(next_byte, false);
                }
            }
            return MiniParser(next_byte, true);
        }
        else {
            return MiniParser(next_byte, false);
        }
    }
    
    pub fn val_u8(self, val: &mut u8) -> MiniParser {
        let MiniParser(next_byte, ok) = self;
        if ok {
            *val = get!(next_byte);
            return MiniParser(next_byte, true);
        }
        else {
            return MiniParser(next_byte, false);
        }
    }
}

