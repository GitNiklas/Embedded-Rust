pub fn delay_ms(wait: u16) {
    const F_CPU: u32 = 16_000_000; 
    const CYCLES_PER_MS: u16 = (F_CPU / 1000) as u16;
    // CYCLES_PER_INNER_ITERATION: CPU Cycles needed for a Iteration
    // Inner loop disassembly:
    // 208: 11 96           adiw    r26, 0x01   ; 1          - 2 Cycles         
    // 20a: a4 17           cp  r26, r20                     - 1 Cycle
    // 20c: b5 07           cpc r27, r21                     - 1 Cycle
    // 20e: e0 f3           brcs    .-8         ;  0x208     - 2 Cycles
    const CYCLES_PER_INNER_ITERATION: u16 = 6; 
    const INNER_LOOP_ITERATIONS: u16 = CYCLES_PER_MS / CYCLES_PER_INNER_ITERATION;

    for _i in 0 .. wait {
        for _j in 0 .. INNER_LOOP_ITERATIONS { // Wait 1 ms
            nop!();
        }
    }
}