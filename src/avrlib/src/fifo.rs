use core::ptr::read_volatile;

pub const FIFO_SIZE: usize = 64;

pub const EMPTY_FIFO: FiFo = FiFo { buffer: [0x00; FIFO_SIZE], read: 0, write: 0};

pub struct FiFo {
    buffer: [u8; FIFO_SIZE],
    read: usize,
    write: usize
}

impl FiFo {
    pub fn create() -> Self {
        return FiFo {
            buffer: [0x42; FIFO_SIZE],
            read: 0,
            write: 0
        };
    }

    pub fn reset(&mut self) {
        self.read = 0;
        self.write = 0;
    }

    pub fn is_empty(&self) -> bool {
        return self.read == self.write;
    }
    
    pub fn wait_for_data(&self) {
        unsafe {
            while read_volatile(&self.read) == read_volatile(&self.write) {}    
        }
    }

    pub fn len(&self) -> usize {
        if self.write >= self.read {
            return self.write - self.read;
        }
        else {
            return FIFO_SIZE - self.read + self.write;
        }
    }

    pub fn put(&mut self, data: u8) {
        let next = (self.write + 1) % FIFO_SIZE;
        assert!(next != self.read);
        self.buffer[self.write] = data;
        self.write = next;
    }

    pub fn get(&mut self) -> u8 {
        assert!(!self.is_empty());
        let data = self.buffer[self.read];
        self.read = (self.read + 1) % FIFO_SIZE;
        return data;
    }
}