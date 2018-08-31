
target/avr-atmega328p/release/avr_test_basic.elf:     Dateiformat elf32-avr


Disassembly of section .data:

00800100 <__data_start>:
  800100:	b0 00       	.word	0x00b0	; ????
  800102:	33 00       	.word	0x0033	; ????
  800104:	0f 00       	.word	0x000f	; ????
  800106:	00 00       	nop
  800108:	16 00       	.word	0x0016	; ????
	...

0080010c <ref.5>:
  80010c:	00 00       	nop
  80010e:	0e 00       	.word	0x000e	; ????
  800110:	d8 00       	.word	0x00d8	; ????
  800112:	33 00       	.word	0x0033	; ????
  800114:	30 00       	.word	0x0030	; ????
  800116:	00 00       	nop
  800118:	08 00       	.word	0x0008	; ????
	...

0080011c <panic_bounds_check_loc.7>:
  80011c:	d8 00       	.word	0x00d8	; ????
  80011e:	33 00       	.word	0x0033	; ????
  800120:	31 00       	.word	0x0031	; ????
  800122:	00 00       	nop
  800124:	09 00       	.word	0x0009	; ????
	...

00800128 <panic_bounds_check_loc.a>:
  800128:	d8 00       	.word	0x00d8	; ????
  80012a:	33 00       	.word	0x0033	; ????
  80012c:	37 00       	.word	0x0037	; ????
  80012e:	00 00       	nop
  800130:	14 00       	.word	0x0014	; ????
	...

00800134 <ref.c>:
  800134:	00 00       	nop
  800136:	0e 00       	.word	0x000e	; ????
  800138:	f8 00       	.word	0x00f8	; ????
  80013a:	33 00       	.word	0x0033	; ????
  80013c:	3d 00       	.word	0x003d	; ????
  80013e:	00 00       	nop
  800140:	04 00       	.word	0x0004	; ????
	...

00800144 <str.0>:
  800144:	61 76       	andi	r22, 0x61	; 97
  800146:	72 5f       	subi	r23, 0xF2	; 242
  800148:	74 65       	ori	r23, 0x54	; 84
  80014a:	73 74       	andi	r23, 0x43	; 67
  80014c:	5f 62       	ori	r21, 0x2F	; 47
  80014e:	61 73       	andi	r22, 0x31	; 49
  800150:	69 63       	ori	r22, 0x39	; 57

00800152 <str.1>:
  800152:	0a 00       	.word	0x000a	; ????
	...

00800160 <str.0>:
  800160:	2f 68       	ori	r18, 0x8F	; 143
  800162:	6f 6d       	ori	r22, 0xDF	; 223
  800164:	65 2f       	mov	r22, r21
  800166:	75 73       	andi	r23, 0x35	; 53
  800168:	65 72       	andi	r22, 0x25	; 37
  80016a:	2f 44       	sbci	r18, 0x4F	; 79
  80016c:	65 76       	andi	r22, 0x65	; 101
  80016e:	2f 45       	sbci	r18, 0x5F	; 95
  800170:	6d 62       	ori	r22, 0x2D	; 45
  800172:	65 64       	ori	r22, 0x45	; 69
  800174:	64 65       	ori	r22, 0x54	; 84
  800176:	64 2d       	mov	r22, r4
  800178:	52 75       	andi	r21, 0x52	; 82
  80017a:	73 74       	andi	r23, 0x43	; 67
  80017c:	2f 73       	andi	r18, 0x3F	; 63
  80017e:	72 63       	ori	r23, 0x32	; 50
  800180:	2f 61       	ori	r18, 0x1F	; 31
  800182:	76 72       	andi	r23, 0x26	; 38
  800184:	6c 69       	ori	r22, 0x9C	; 156
  800186:	62 2f       	mov	r22, r18
  800188:	73 72       	andi	r23, 0x23	; 35
  80018a:	63 2f       	mov	r22, r19
  80018c:	69 74       	andi	r22, 0x49	; 73
  80018e:	6f 61       	ori	r22, 0x1F	; 31
  800190:	2e 72       	andi	r18, 0x2E	; 46
  800192:	73 65       	ori	r23, 0x53	; 83

00800193 <str.3>:
  800193:	65 78       	andi	r22, 0x85	; 133
  800195:	70 6c       	ori	r23, 0xC0	; 192
  800197:	69 63       	ori	r22, 0x39	; 57
  800199:	69 74       	andi	r22, 0x49	; 73
  80019b:	20 70       	andi	r18, 0x00	; 0
  80019d:	61 6e       	ori	r22, 0xE1	; 225
  80019f:	69 63       	ori	r22, 0x39	; 57
	...

008001b0 <str.4>:
  8001b0:	2f 68       	ori	r18, 0x8F	; 143
  8001b2:	6f 6d       	ori	r22, 0xDF	; 223
  8001b4:	65 2f       	mov	r22, r21
  8001b6:	75 73       	andi	r23, 0x35	; 53
  8001b8:	65 72       	andi	r22, 0x25	; 37
  8001ba:	2f 44       	sbci	r18, 0x4F	; 79
  8001bc:	65 76       	andi	r22, 0x65	; 101
  8001be:	2f 45       	sbci	r18, 0x5F	; 95
  8001c0:	6d 62       	ori	r22, 0x2D	; 45
  8001c2:	65 64       	ori	r22, 0x45	; 69
  8001c4:	64 65       	ori	r22, 0x54	; 84
  8001c6:	64 2d       	mov	r22, r4
  8001c8:	52 75       	andi	r21, 0x52	; 82
  8001ca:	73 74       	andi	r23, 0x43	; 67
  8001cc:	2f 73       	andi	r18, 0x3F	; 63
  8001ce:	72 63       	ori	r23, 0x32	; 50
  8001d0:	2f 61       	ori	r18, 0x1F	; 31
  8001d2:	76 72       	andi	r23, 0x26	; 38
  8001d4:	6c 69       	ori	r22, 0x9C	; 156
  8001d6:	62 2f       	mov	r22, r18
  8001d8:	73 72       	andi	r23, 0x23	; 35
  8001da:	63 2f       	mov	r22, r19
  8001dc:	66 69       	ori	r22, 0x96	; 150
  8001de:	66 6f       	ori	r22, 0xF6	; 246
  8001e0:	2e 72       	andi	r18, 0x2E	; 46
  8001e2:	73 00       	.word	0x0073	; ????
	...

008001f0 <str.b>:
  8001f0:	2f 68       	ori	r18, 0x8F	; 143
  8001f2:	6f 6d       	ori	r22, 0xDF	; 223
  8001f4:	65 2f       	mov	r22, r21
  8001f6:	75 73       	andi	r23, 0x35	; 53
  8001f8:	65 72       	andi	r22, 0x25	; 37
  8001fa:	2f 44       	sbci	r18, 0x4F	; 79
  8001fc:	65 76       	andi	r22, 0x65	; 101
  8001fe:	2f 45       	sbci	r18, 0x5F	; 95
  800200:	6d 62       	ori	r22, 0x2D	; 45
  800202:	65 64       	ori	r22, 0x45	; 69
  800204:	64 65       	ori	r22, 0x54	; 84
  800206:	64 2d       	mov	r22, r4
  800208:	52 75       	andi	r21, 0x52	; 82
  80020a:	73 74       	andi	r23, 0x43	; 67
  80020c:	2f 73       	andi	r18, 0x3F	; 63
  80020e:	72 63       	ori	r23, 0x32	; 50
  800210:	2f 61       	ori	r18, 0x1F	; 31
  800212:	76 72       	andi	r23, 0x26	; 38
  800214:	6c 69       	ori	r22, 0x9C	; 156
  800216:	62 2f       	mov	r22, r18
  800218:	73 72       	andi	r23, 0x23	; 35
  80021a:	63 2f       	mov	r22, r19
  80021c:	75 61       	ori	r23, 0x15	; 21
  80021e:	72 74       	andi	r23, 0x42	; 66
  800220:	2e 72       	andi	r18, 0x2E	; 46
  800222:	73 00       	.word	0x0073	; ????

Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   8:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  10:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  14:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  18:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  1c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  20:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  24:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  28:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  2c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  30:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  34:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  38:	0c 94 7c 03 	jmp	0x6f8	; 0x6f8 <__vector_14>
  3c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  40:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  44:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  48:	0c 94 dc 02 	jmp	0x5b8	; 0x5b8 <__vector_18>
  4c:	0c 94 2b 03 	jmp	0x656	; 0x656 <__vector_19>
  50:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  54:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  58:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  5c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  60:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  64:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61

00000074 <__do_copy_data>:
  74:	12 e0       	ldi	r17, 0x02	; 2
  76:	a0 e0       	ldi	r26, 0x00	; 0
  78:	b1 e0       	ldi	r27, 0x01	; 1
  7a:	e0 e9       	ldi	r30, 0x90	; 144
  7c:	f7 e0       	ldi	r31, 0x07	; 7
  7e:	02 c0       	rjmp	.+4      	; 0x84 <__do_copy_data+0x10>
  80:	05 90       	lpm	r0, Z+
  82:	0d 92       	st	X+, r0
  84:	a4 32       	cpi	r26, 0x24	; 36
  86:	b1 07       	cpc	r27, r17
  88:	d9 f7       	brne	.-10     	; 0x80 <__do_copy_data+0xc>

0000008a <__do_clear_bss>:
  8a:	22 e0       	ldi	r18, 0x02	; 2
  8c:	a4 e2       	ldi	r26, 0x24	; 36
  8e:	b2 e0       	ldi	r27, 0x02	; 2
  90:	01 c0       	rjmp	.+2      	; 0x94 <.do_clear_bss_start>

00000092 <.do_clear_bss_loop>:
  92:	1d 92       	st	X+, r1

00000094 <.do_clear_bss_start>:
  94:	a0 3b       	cpi	r26, 0xB0	; 176
  96:	b2 07       	cpc	r27, r18
  98:	e1 f7       	brne	.-8      	; 0x92 <.do_clear_bss_loop>
  9a:	0e 94 53 00 	call	0xa6	; 0xa6 <main>
  9e:	0c 94 c6 03 	jmp	0x78c	; 0x78c <_exit>

000000a2 <__bad_interrupt>:
  a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <main>:
  a6:	cf 93       	push	r28
  a8:	df 93       	push	r29
  aa:	4f 92       	push	r4
  ac:	5f 92       	push	r5
  ae:	6f 92       	push	r6
  b0:	7f 92       	push	r7
  b2:	8f 92       	push	r8
  b4:	9f 92       	push	r9
  b6:	af 92       	push	r10
  b8:	bf 92       	push	r11
  ba:	cf 92       	push	r12
  bc:	df 92       	push	r13
  be:	ef 92       	push	r14
  c0:	ff 92       	push	r15
  c2:	0f 93       	push	r16
  c4:	1f 93       	push	r17
  c6:	cd b7       	in	r28, 0x3d	; 61
  c8:	de b7       	in	r29, 0x3e	; 62
  ca:	2a 97       	sbiw	r28, 0x0a	; 10
  cc:	0f b6       	in	r0, 0x3f	; 63
  ce:	f8 94       	cli
  d0:	de bf       	out	0x3e, r29	; 62
  d2:	0f be       	out	0x3f, r0	; 63
  d4:	cd bf       	out	0x3d, r28	; 61
  d6:	25 9a       	sbi	0x04, 5	; 4
  d8:	0e 94 45 01 	call	0x28a	; 0x28a <_ZN6avrlib4uart4init17h3839464f3cc1af6bE>
  dc:	0e 94 c7 02 	call	0x58e	; 0x58e <_ZN6avrlib5timer4init17he13493d0182a9283E>
  e0:	78 94       	sei
  e2:	84 e4       	ldi	r24, 0x44	; 68
  e4:	91 e0       	ldi	r25, 0x01	; 1
  e6:	6e e0       	ldi	r22, 0x0E	; 14
  e8:	70 e0       	ldi	r23, 0x00	; 0
  ea:	0e 94 c9 01 	call	0x392	; 0x392 <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>
  ee:	82 e5       	ldi	r24, 0x52	; 82
  f0:	91 e0       	ldi	r25, 0x01	; 1
  f2:	61 e0       	ldi	r22, 0x01	; 1
  f4:	70 e0       	ldi	r23, 0x00	; 0
  f6:	7c 01       	movw	r14, r24
  f8:	6b 01       	movw	r12, r22
  fa:	0e 94 c9 01 	call	0x392	; 0x392 <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>
  fe:	80 e0       	ldi	r24, 0x00	; 0
 100:	90 e0       	ldi	r25, 0x00	; 0
 102:	5c 01       	movw	r10, r24
 104:	8e 01       	movw	r16, r28
 106:	0f 5f       	subi	r16, 0xFF	; 255
 108:	1f 4f       	sbci	r17, 0xFF	; 255
 10a:	8a e0       	ldi	r24, 0x0A	; 10
 10c:	90 e0       	ldi	r25, 0x00	; 0
 10e:	4c 01       	movw	r8, r24
 110:	84 ef       	ldi	r24, 0xF4	; 244
 112:	91 e0       	ldi	r25, 0x01	; 1
 114:	2c 01       	movw	r4, r24
 116:	04 c0       	rjmp	.+8      	; 0x120 <LBB2_2>

00000118 <LBB2_1>:
 118:	0e 94 8c 02 	call	0x518	; 0x518 <_ZN6avrlib4uart6get_u817h8390b86fb82135a0E>
 11c:	0e 94 5c 01 	call	0x2b8	; 0x2b8 <_ZN6avrlib4uart6put_u817h59ffb87f2b2bab31E>

00000120 <LBB2_2>:
 120:	0e 94 6d 02 	call	0x4da	; 0x4da <_ZN6avrlib4uart17received_data_cnt17hdd2f212db4d41157E>
 124:	95 01       	movw	r18, r10
 126:	82 17       	cp	r24, r18
 128:	93 07       	cpc	r25, r19
 12a:	b1 f7       	brne	.-20     	; 0x118 <LBB2_1>
 12c:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN6avrlib5timer7time_ms17hc8ec00e5d4f729dcE>
 130:	9c 01       	movw	r18, r24
 132:	c8 01       	movw	r24, r16
 134:	ab 01       	movw	r20, r22
 136:	b9 01       	movw	r22, r18
 138:	0e 94 b0 00 	call	0x160	; 0x160 <_ZN6avrlib4itoa8itoa_u3217ha7d3aeeaa5f7ef14E>
 13c:	c8 01       	movw	r24, r16
 13e:	b4 01       	movw	r22, r8
 140:	0e 94 88 01 	call	0x310	; 0x310 <_ZN6avrlib4uart10put_u8_arr17h9de83b577b64f971E>
 144:	c7 01       	movw	r24, r14
 146:	b6 01       	movw	r22, r12
 148:	0e 94 c9 01 	call	0x392	; 0x392 <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>
 14c:	32 01       	movw	r6, r4
 14e:	c3 01       	movw	r24, r6
 150:	0e 94 b3 02 	call	0x566	; 0x566 <_ZN6avrlib5delay8delay_ms17h231abcdf3f763f3cE>
 154:	2d 98       	cbi	0x05, 5	; 5
 156:	c3 01       	movw	r24, r6
 158:	0e 94 b3 02 	call	0x566	; 0x566 <_ZN6avrlib5delay8delay_ms17h231abcdf3f763f3cE>
 15c:	2d 9a       	sbi	0x05, 5	; 5
 15e:	e0 cf       	rjmp	.-64     	; 0x120 <LBB2_2>

00000160 <_ZN6avrlib4itoa8itoa_u3217ha7d3aeeaa5f7ef14E>:
 160:	cf 93       	push	r28
 162:	df 93       	push	r29
 164:	2f 92       	push	r2
 166:	3f 92       	push	r3
 168:	4f 92       	push	r4
 16a:	5f 92       	push	r5
 16c:	6f 92       	push	r6
 16e:	7f 92       	push	r7
 170:	8f 92       	push	r8
 172:	9f 92       	push	r9
 174:	af 92       	push	r10
 176:	bf 92       	push	r11
 178:	cf 92       	push	r12
 17a:	df 92       	push	r13
 17c:	ef 92       	push	r14
 17e:	ff 92       	push	r15
 180:	0f 93       	push	r16
 182:	1f 93       	push	r17
 184:	cd b7       	in	r28, 0x3d	; 61
 186:	de b7       	in	r29, 0x3e	; 62
 188:	2a 97       	sbiw	r28, 0x0a	; 10
 18a:	0f b6       	in	r0, 0x3f	; 63
 18c:	f8 94       	cli
 18e:	de bf       	out	0x3e, r29	; 62
 190:	0f be       	out	0x3f, r0	; 63
 192:	cd bf       	out	0x3d, r28	; 61
 194:	7b 01       	movw	r14, r22
 196:	6a 01       	movw	r12, r20
 198:	5c 01       	movw	r10, r24
 19a:	80 e2       	ldi	r24, 0x20	; 32
 19c:	89 87       	std	Y+9, r24	; 0x09
 19e:	80 e2       	ldi	r24, 0x20	; 32
 1a0:	90 e2       	ldi	r25, 0x20	; 32
 1a2:	8f 83       	std	Y+7, r24	; 0x07
 1a4:	98 87       	std	Y+8, r25	; 0x08
 1a6:	8d 83       	std	Y+5, r24	; 0x05
 1a8:	9e 83       	std	Y+6, r25	; 0x06
 1aa:	8b 83       	std	Y+3, r24	; 0x03
 1ac:	9c 83       	std	Y+4, r25	; 0x04
 1ae:	89 83       	std	Y+1, r24	; 0x01
 1b0:	9a 83       	std	Y+2, r25	; 0x02
 1b2:	80 e3       	ldi	r24, 0x30	; 48
 1b4:	8a 87       	std	Y+10, r24	; 0x0a
 1b6:	20 e0       	ldi	r18, 0x00	; 0
 1b8:	30 e0       	ldi	r19, 0x00	; 0
 1ba:	81 e0       	ldi	r24, 0x01	; 1
 1bc:	c2 16       	cp	r12, r18
 1be:	d3 06       	cpc	r13, r19
 1c0:	39 01       	movw	r6, r18
 1c2:	e2 06       	cpc	r14, r18
 1c4:	f3 06       	cpc	r15, r19
 1c6:	09 f0       	breq	.+2      	; 0x1ca <LBB2_2>
 1c8:	80 e0       	ldi	r24, 0x00	; 0

000001ca <LBB2_2>:
 1ca:	81 70       	andi	r24, 0x01	; 1
 1cc:	80 30       	cpi	r24, 0x00	; 0
 1ce:	09 f0       	breq	.+2      	; 0x1d2 <LBB2_3>
 1d0:	27 c0       	rjmp	.+78     	; 0x220 <LBB2_8>

000001d2 <LBB2_3>:
 1d2:	e9 e0       	ldi	r30, 0x09	; 9
 1d4:	f0 e0       	ldi	r31, 0x00	; 0
 1d6:	0a e0       	ldi	r16, 0x0A	; 10
 1d8:	10 e0       	ldi	r17, 0x00	; 0
 1da:	ce 01       	movw	r24, r28
 1dc:	01 96       	adiw	r24, 0x01	; 1
 1de:	1c 01       	movw	r2, r24

000001e0 <LBB2_4>:
 1e0:	e0 17       	cp	r30, r16
 1e2:	f1 07       	cpc	r31, r17
 1e4:	2f 01       	movw	r4, r30
 1e6:	08 f0       	brcs	.+2      	; 0x1ea <LBB2_5>
 1e8:	49 c0       	rjmp	.+146    	; 0x27c <LBB2_9>

000001ea <LBB2_5>:
 1ea:	b6 01       	movw	r22, r12
 1ec:	c7 01       	movw	r24, r14
 1ee:	98 01       	movw	r18, r16
 1f0:	43 01       	movw	r8, r6
 1f2:	a4 01       	movw	r20, r8
 1f4:	0e 94 a4 03 	call	0x748	; 0x748 <__udivmodsi4>
 1f8:	60 63       	ori	r22, 0x30	; 48
 1fa:	c1 01       	movw	r24, r2
 1fc:	dc 01       	movw	r26, r24
 1fe:	a4 0d       	add	r26, r4
 200:	b5 1d       	adc	r27, r5
 202:	6c 93       	st	X, r22
 204:	81 e0       	ldi	r24, 0x01	; 1
 206:	c0 16       	cp	r12, r16
 208:	d1 06       	cpc	r13, r17
 20a:	e8 04       	cpc	r14, r8
 20c:	f9 04       	cpc	r15, r9
 20e:	f2 01       	movw	r30, r4
 210:	08 f0       	brcs	.+2      	; 0x214 <LBB2_7>
 212:	80 e0       	ldi	r24, 0x00	; 0

00000214 <LBB2_7>:
 214:	81 70       	andi	r24, 0x01	; 1
 216:	31 97       	sbiw	r30, 0x01	; 1
 218:	80 30       	cpi	r24, 0x00	; 0
 21a:	69 01       	movw	r12, r18
 21c:	7a 01       	movw	r14, r20
 21e:	01 f3       	breq	.-64     	; 0x1e0 <LBB2_4>

00000220 <LBB2_8>:
 220:	89 85       	ldd	r24, Y+9	; 0x09
 222:	9a 85       	ldd	r25, Y+10	; 0x0a
 224:	f5 01       	movw	r30, r10
 226:	80 87       	std	Z+8, r24	; 0x08
 228:	91 87       	std	Z+9, r25	; 0x09
 22a:	8f 81       	ldd	r24, Y+7	; 0x07
 22c:	98 85       	ldd	r25, Y+8	; 0x08
 22e:	86 83       	std	Z+6, r24	; 0x06
 230:	97 83       	std	Z+7, r25	; 0x07
 232:	8d 81       	ldd	r24, Y+5	; 0x05
 234:	9e 81       	ldd	r25, Y+6	; 0x06
 236:	84 83       	std	Z+4, r24	; 0x04
 238:	95 83       	std	Z+5, r25	; 0x05
 23a:	89 81       	ldd	r24, Y+1	; 0x01
 23c:	9a 81       	ldd	r25, Y+2	; 0x02
 23e:	81 93       	st	Z+, r24
 240:	91 93       	st	Z+, r25
 242:	8b 81       	ldd	r24, Y+3	; 0x03
 244:	9c 81       	ldd	r25, Y+4	; 0x04
 246:	80 83       	st	Z, r24
 248:	91 83       	std	Z+1, r25	; 0x01
 24a:	2a 96       	adiw	r28, 0x0a	; 10
 24c:	0f b6       	in	r0, 0x3f	; 63
 24e:	f8 94       	cli
 250:	de bf       	out	0x3e, r29	; 62
 252:	0f be       	out	0x3f, r0	; 63
 254:	cd bf       	out	0x3d, r28	; 61
 256:	1f 91       	pop	r17
 258:	0f 91       	pop	r16
 25a:	ff 90       	pop	r15
 25c:	ef 90       	pop	r14
 25e:	df 90       	pop	r13
 260:	cf 90       	pop	r12
 262:	bf 90       	pop	r11
 264:	af 90       	pop	r10
 266:	9f 90       	pop	r9
 268:	8f 90       	pop	r8
 26a:	7f 90       	pop	r7
 26c:	6f 90       	pop	r6
 26e:	5f 90       	pop	r5
 270:	4f 90       	pop	r4
 272:	3f 90       	pop	r3
 274:	2f 90       	pop	r2
 276:	df 91       	pop	r29
 278:	cf 91       	pop	r28
 27a:	08 95       	ret

0000027c <LBB2_9>:
 27c:	80 e0       	ldi	r24, 0x00	; 0
 27e:	91 e0       	ldi	r25, 0x01	; 1
 280:	4a e0       	ldi	r20, 0x0A	; 10
 282:	50 e0       	ldi	r21, 0x00	; 0
 284:	b2 01       	movw	r22, r4
 286:	0e 94 a3 03 	call	0x746	; 0x746 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

0000028a <_ZN6avrlib4uart4init17h3839464f3cc1af6bE>:
 28a:	80 e0       	ldi	r24, 0x00	; 0
 28c:	80 93 c5 00 	sts	0x00C5, r24
 290:	80 e1       	ldi	r24, 0x10	; 16
 292:	80 93 c4 00 	sts	0x00C4, r24
 296:	80 91 c0 00 	lds	r24, 0x00C0
 29a:	82 60       	ori	r24, 0x02	; 2
 29c:	80 93 c0 00 	sts	0x00C0, r24
 2a0:	88 e1       	ldi	r24, 0x18	; 24
 2a2:	80 93 c1 00 	sts	0x00C1, r24
 2a6:	86 e0       	ldi	r24, 0x06	; 6
 2a8:	80 93 c2 00 	sts	0x00C2, r24
 2ac:	80 91 c1 00 	lds	r24, 0x00C1
 2b0:	80 68       	ori	r24, 0x80	; 128
 2b2:	80 93 c1 00 	sts	0x00C1, r24
 2b6:	08 95       	ret

000002b8 <_ZN6avrlib4uart6put_u817h59ffb87f2b2bab31E>:
 2b8:	a0 91 6a 02 	lds	r26, 0x026A
 2bc:	b0 91 6b 02 	lds	r27, 0x026B
 2c0:	fd 01       	movw	r30, r26
 2c2:	31 96       	adiw	r30, 0x01	; 1
 2c4:	ef 73       	andi	r30, 0x3F	; 63
 2c6:	f0 70       	andi	r31, 0x00	; 0
 2c8:	20 91 68 02 	lds	r18, 0x0268
 2cc:	30 91 69 02 	lds	r19, 0x0269
 2d0:	e2 17       	cp	r30, r18
 2d2:	f3 07       	cpc	r31, r19
 2d4:	91 f0       	breq	.+36     	; 0x2fa <LBB13_3>
 2d6:	20 e4       	ldi	r18, 0x40	; 64
 2d8:	30 e0       	ldi	r19, 0x00	; 0
 2da:	a2 17       	cp	r26, r18
 2dc:	b3 07       	cpc	r27, r19
 2de:	88 f4       	brcc	.+34     	; 0x302 <LBB13_4>
 2e0:	a8 5d       	subi	r26, 0xD8	; 216
 2e2:	bd 4f       	sbci	r27, 0xFD	; 253
 2e4:	8c 93       	st	X, r24
 2e6:	f0 93 6b 02 	sts	0x026B, r31
 2ea:	e0 93 6a 02 	sts	0x026A, r30
 2ee:	80 91 c1 00 	lds	r24, 0x00C1
 2f2:	80 62       	ori	r24, 0x20	; 32
 2f4:	80 93 c1 00 	sts	0x00C1, r24
 2f8:	08 95       	ret

000002fa <LBB13_3>:
 2fa:	8c e0       	ldi	r24, 0x0C	; 12
 2fc:	91 e0       	ldi	r25, 0x01	; 1
 2fe:	0e 94 a2 03 	call	0x744	; 0x744 <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

00000302 <LBB13_4>:
 302:	8c e1       	ldi	r24, 0x1C	; 28
 304:	91 e0       	ldi	r25, 0x01	; 1
 306:	40 e4       	ldi	r20, 0x40	; 64
 308:	50 e0       	ldi	r21, 0x00	; 0
 30a:	bd 01       	movw	r22, r26
 30c:	0e 94 a3 03 	call	0x746	; 0x746 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

00000310 <_ZN6avrlib4uart10put_u8_arr17h9de83b577b64f971E>:
 310:	0f 93       	push	r16
 312:	1f 93       	push	r17
 314:	dc 01       	movw	r26, r24
 316:	80 e0       	ldi	r24, 0x00	; 0
 318:	90 e0       	ldi	r25, 0x00	; 0
 31a:	68 17       	cp	r22, r24
 31c:	79 07       	cpc	r23, r25
 31e:	09 f4       	brne	.+2      	; 0x322 <LBB14_1>
 320:	2a c0       	rjmp	.+84     	; 0x376 <LBB14_5>

00000322 <LBB14_1>:
 322:	6a 0f       	add	r22, r26
 324:	7b 1f       	adc	r23, r27
 326:	80 e4       	ldi	r24, 0x40	; 64
 328:	90 e0       	ldi	r25, 0x00	; 0

0000032a <LBB14_2>:
 32a:	2d 91       	ld	r18, X+
 32c:	8d 01       	movw	r16, r26
 32e:	a0 91 6a 02 	lds	r26, 0x026A
 332:	b0 91 6b 02 	lds	r27, 0x026B
 336:	fd 01       	movw	r30, r26
 338:	31 96       	adiw	r30, 0x01	; 1
 33a:	ef 73       	andi	r30, 0x3F	; 63
 33c:	f0 70       	andi	r31, 0x00	; 0
 33e:	40 91 68 02 	lds	r20, 0x0268
 342:	50 91 69 02 	lds	r21, 0x0269
 346:	e4 17       	cp	r30, r20
 348:	f5 07       	cpc	r31, r21
 34a:	09 f4       	brne	.+2      	; 0x34e <LBB14_3>
 34c:	17 c0       	rjmp	.+46     	; 0x37c <LBB14_6>

0000034e <LBB14_3>:
 34e:	a8 17       	cp	r26, r24
 350:	b9 07       	cpc	r27, r25
 352:	c0 f4       	brcc	.+48     	; 0x384 <LBB14_7>
 354:	a8 5d       	subi	r26, 0xD8	; 216
 356:	bd 4f       	sbci	r27, 0xFD	; 253
 358:	2c 93       	st	X, r18
 35a:	f0 93 6b 02 	sts	0x026B, r31
 35e:	e0 93 6a 02 	sts	0x026A, r30
 362:	20 91 c1 00 	lds	r18, 0x00C1
 366:	20 62       	ori	r18, 0x20	; 32
 368:	20 93 c1 00 	sts	0x00C1, r18
 36c:	d8 01       	movw	r26, r16
 36e:	a6 17       	cp	r26, r22
 370:	b7 07       	cpc	r27, r23
 372:	09 f0       	breq	.+2      	; 0x376 <LBB14_5>
 374:	da cf       	rjmp	.-76     	; 0x32a <LBB14_2>

00000376 <LBB14_5>:
 376:	1f 91       	pop	r17
 378:	0f 91       	pop	r16
 37a:	08 95       	ret

0000037c <LBB14_6>:
 37c:	8c e0       	ldi	r24, 0x0C	; 12
 37e:	91 e0       	ldi	r25, 0x01	; 1
 380:	0e 94 a2 03 	call	0x744	; 0x744 <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

00000384 <LBB14_7>:
 384:	8c e1       	ldi	r24, 0x1C	; 28
 386:	91 e0       	ldi	r25, 0x01	; 1
 388:	40 e4       	ldi	r20, 0x40	; 64
 38a:	50 e0       	ldi	r21, 0x00	; 0
 38c:	bd 01       	movw	r22, r26
 38e:	0e 94 a3 03 	call	0x746	; 0x746 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

00000392 <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>:
 392:	cf 92       	push	r12
 394:	df 92       	push	r13
 396:	ef 92       	push	r14
 398:	ff 92       	push	r15
 39a:	0f 93       	push	r16
 39c:	1f 93       	push	r17
 39e:	20 e0       	ldi	r18, 0x00	; 0
 3a0:	30 e0       	ldi	r19, 0x00	; 0
 3a2:	62 17       	cp	r22, r18
 3a4:	73 07       	cpc	r23, r19
 3a6:	09 f4       	brne	.+2      	; 0x3aa <LBB15_1>
 3a8:	86 c0       	rjmp	.+268    	; 0x4b6 <LBB15_20>

000003aa <LBB15_1>:
 3aa:	68 0f       	add	r22, r24
 3ac:	79 1f       	adc	r23, r25
 3ae:	20 e4       	ldi	r18, 0x40	; 64
 3b0:	30 e0       	ldi	r19, 0x00	; 0
 3b2:	69 01       	movw	r12, r18
 3b4:	40 e0       	ldi	r20, 0x00	; 0
 3b6:	50 e0       	ldi	r21, 0x00	; 0
 3b8:	7a 01       	movw	r14, r20

000003ba <LBB15_2>:
 3ba:	fc 01       	movw	r30, r24
 3bc:	21 91       	ld	r18, Z+
 3be:	22 23       	and	r18, r18
 3c0:	1a f0       	brmi	.+6      	; 0x3c8 <LBB15_4>
 3c2:	cf 01       	movw	r24, r30
 3c4:	42 2f       	mov	r20, r18
 3c6:	53 c0       	rjmp	.+166    	; 0x46e <LBB15_17>

000003c8 <LBB15_4>:
 3c8:	e6 17       	cp	r30, r22
 3ca:	f7 07       	cpc	r31, r23
 3cc:	49 f0       	breq	.+18     	; 0x3e0 <LBB15_6>
 3ce:	02 96       	adiw	r24, 0x02	; 2
 3d0:	40 81       	ld	r20, Z
 3d2:	4f 73       	andi	r20, 0x3F	; 63
 3d4:	55 27       	eor	r21, r21
 3d6:	8c 01       	movw	r16, r24
 3d8:	fc 01       	movw	r30, r24
 3da:	20 3e       	cpi	r18, 0xE0	; 224
 3dc:	30 f4       	brcc	.+12     	; 0x3ea <LBB15_7>
 3de:	10 c0       	rjmp	.+32     	; 0x400 <LBB15_9>

000003e0 <LBB15_6>:
 3e0:	8b 01       	movw	r16, r22
 3e2:	c7 01       	movw	r24, r14
 3e4:	ac 01       	movw	r20, r24
 3e6:	20 3e       	cpi	r18, 0xE0	; 224
 3e8:	58 f0       	brcs	.+22     	; 0x400 <LBB15_9>

000003ea <LBB15_7>:
 3ea:	c8 01       	movw	r24, r16
 3ec:	06 17       	cp	r16, r22
 3ee:	17 07       	cpc	r17, r23
 3f0:	89 f0       	breq	.+34     	; 0x414 <LBB15_10>
 3f2:	fc 01       	movw	r30, r24
 3f4:	a1 91       	ld	r26, Z+
 3f6:	af 73       	andi	r26, 0x3F	; 63
 3f8:	0a 2f       	mov	r16, r26
 3fa:	11 27       	eor	r17, r17
 3fc:	cf 01       	movw	r24, r30
 3fe:	0c c0       	rjmp	.+24     	; 0x418 <LBB15_11>

00000400 <LBB15_9>:
 400:	22 0f       	add	r18, r18
 402:	22 0f       	add	r18, r18
 404:	22 0f       	add	r18, r18
 406:	22 0f       	add	r18, r18
 408:	22 0f       	add	r18, r18
 40a:	22 0f       	add	r18, r18
 40c:	42 2b       	or	r20, r18
 40e:	53 2b       	or	r21, r19
 410:	cf 01       	movw	r24, r30
 412:	2d c0       	rjmp	.+90     	; 0x46e <LBB15_17>

00000414 <LBB15_10>:
 414:	cb 01       	movw	r24, r22
 416:	87 01       	movw	r16, r14

00000418 <LBB15_11>:
 418:	44 0f       	add	r20, r20
 41a:	55 1f       	adc	r21, r21
 41c:	44 0f       	add	r20, r20
 41e:	55 1f       	adc	r21, r21
 420:	44 0f       	add	r20, r20
 422:	55 1f       	adc	r21, r21
 424:	44 0f       	add	r20, r20
 426:	55 1f       	adc	r21, r21
 428:	44 0f       	add	r20, r20
 42a:	55 1f       	adc	r21, r21
 42c:	44 0f       	add	r20, r20
 42e:	55 1f       	adc	r21, r21
 430:	40 2b       	or	r20, r16
 432:	51 2b       	or	r21, r17
 434:	20 3f       	cpi	r18, 0xF0	; 240
 436:	48 f0       	brcs	.+18     	; 0x44a <LBB15_14>
 438:	86 17       	cp	r24, r22
 43a:	97 07       	cpc	r25, r23
 43c:	41 f0       	breq	.+16     	; 0x44e <LBB15_15>
 43e:	dc 01       	movw	r26, r24
 440:	ed 91       	ld	r30, X+
 442:	cd 01       	movw	r24, r26
 444:	ef 73       	andi	r30, 0x3F	; 63
 446:	ff 27       	eor	r31, r31
 448:	04 c0       	rjmp	.+8      	; 0x452 <LBB15_16>

0000044a <LBB15_14>:
 44a:	cf 01       	movw	r24, r30
 44c:	10 c0       	rjmp	.+32     	; 0x46e <LBB15_17>

0000044e <LBB15_15>:
 44e:	cf 01       	movw	r24, r30
 450:	f7 01       	movw	r30, r14

00000452 <LBB15_16>:
 452:	44 0f       	add	r20, r20
 454:	55 1f       	adc	r21, r21
 456:	44 0f       	add	r20, r20
 458:	55 1f       	adc	r21, r21
 45a:	44 0f       	add	r20, r20
 45c:	55 1f       	adc	r21, r21
 45e:	44 0f       	add	r20, r20
 460:	55 1f       	adc	r21, r21
 462:	44 0f       	add	r20, r20
 464:	55 1f       	adc	r21, r21
 466:	44 0f       	add	r20, r20
 468:	55 1f       	adc	r21, r21
 46a:	4e 2b       	or	r20, r30
 46c:	5f 2b       	or	r21, r31

0000046e <LBB15_17>:
 46e:	a0 91 6a 02 	lds	r26, 0x026A
 472:	b0 91 6b 02 	lds	r27, 0x026B
 476:	fd 01       	movw	r30, r26
 478:	31 96       	adiw	r30, 0x01	; 1
 47a:	ef 73       	andi	r30, 0x3F	; 63
 47c:	f0 70       	andi	r31, 0x00	; 0
 47e:	00 91 68 02 	lds	r16, 0x0268
 482:	10 91 69 02 	lds	r17, 0x0269
 486:	e0 17       	cp	r30, r16
 488:	f1 07       	cpc	r31, r17
 48a:	09 f4       	brne	.+2      	; 0x48e <LBB15_18>
 48c:	1b c0       	rjmp	.+54     	; 0x4c4 <LBB15_21>

0000048e <LBB15_18>:
 48e:	96 01       	movw	r18, r12
 490:	a2 17       	cp	r26, r18
 492:	b3 07       	cpc	r27, r19
 494:	d8 f4       	brcc	.+54     	; 0x4cc <LBB15_22>
 496:	a8 5d       	subi	r26, 0xD8	; 216
 498:	bd 4f       	sbci	r27, 0xFD	; 253
 49a:	4c 93       	st	X, r20
 49c:	f0 93 6b 02 	sts	0x026B, r31
 4a0:	e0 93 6a 02 	sts	0x026A, r30
 4a4:	40 91 c1 00 	lds	r20, 0x00C1
 4a8:	40 62       	ori	r20, 0x20	; 32
 4aa:	40 93 c1 00 	sts	0x00C1, r20
 4ae:	86 17       	cp	r24, r22
 4b0:	97 07       	cpc	r25, r23
 4b2:	09 f0       	breq	.+2      	; 0x4b6 <LBB15_20>
 4b4:	82 cf       	rjmp	.-252    	; 0x3ba <LBB15_2>

000004b6 <LBB15_20>:
 4b6:	1f 91       	pop	r17
 4b8:	0f 91       	pop	r16
 4ba:	ff 90       	pop	r15
 4bc:	ef 90       	pop	r14
 4be:	df 90       	pop	r13
 4c0:	cf 90       	pop	r12
 4c2:	08 95       	ret

000004c4 <LBB15_21>:
 4c4:	8c e0       	ldi	r24, 0x0C	; 12
 4c6:	91 e0       	ldi	r25, 0x01	; 1
 4c8:	0e 94 a2 03 	call	0x744	; 0x744 <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

000004cc <LBB15_22>:
 4cc:	8c e1       	ldi	r24, 0x1C	; 28
 4ce:	91 e0       	ldi	r25, 0x01	; 1
 4d0:	40 e4       	ldi	r20, 0x40	; 64
 4d2:	50 e0       	ldi	r21, 0x00	; 0
 4d4:	bd 01       	movw	r22, r26
 4d6:	0e 94 a3 03 	call	0x746	; 0x746 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

000004da <_ZN6avrlib4uart17received_data_cnt17hdd2f212db4d41157E>:
 4da:	20 91 ac 02 	lds	r18, 0x02AC
 4de:	30 91 ad 02 	lds	r19, 0x02AD
 4e2:	80 91 ae 02 	lds	r24, 0x02AE
 4e6:	90 91 af 02 	lds	r25, 0x02AF
 4ea:	41 e0       	ldi	r20, 0x01	; 1
 4ec:	82 17       	cp	r24, r18
 4ee:	93 07       	cpc	r25, r19
 4f0:	08 f0       	brcs	.+2      	; 0x4f4 <LBB17_2>
 4f2:	40 e0       	ldi	r20, 0x00	; 0

000004f4 <LBB17_2>:
 4f4:	55 27       	eor	r21, r21
 4f6:	44 0f       	add	r20, r20
 4f8:	55 1f       	adc	r21, r21
 4fa:	44 0f       	add	r20, r20
 4fc:	55 1f       	adc	r21, r21
 4fe:	44 0f       	add	r20, r20
 500:	55 1f       	adc	r21, r21
 502:	44 0f       	add	r20, r20
 504:	55 1f       	adc	r21, r21
 506:	44 0f       	add	r20, r20
 508:	55 1f       	adc	r21, r21
 50a:	44 0f       	add	r20, r20
 50c:	55 1f       	adc	r21, r21
 50e:	82 1b       	sub	r24, r18
 510:	93 0b       	sbc	r25, r19
 512:	84 0f       	add	r24, r20
 514:	95 1f       	adc	r25, r21
 516:	08 95       	ret

00000518 <_ZN6avrlib4uart6get_u817h8390b86fb82135a0E>:
 518:	e0 91 ac 02 	lds	r30, 0x02AC
 51c:	f0 91 ad 02 	lds	r31, 0x02AD
 520:	80 91 ae 02 	lds	r24, 0x02AE
 524:	90 91 af 02 	lds	r25, 0x02AF
 528:	e8 17       	cp	r30, r24
 52a:	f9 07       	cpc	r31, r25
 52c:	89 f0       	breq	.+34     	; 0x550 <LBB18_3>
 52e:	80 e4       	ldi	r24, 0x40	; 64
 530:	90 e0       	ldi	r25, 0x00	; 0
 532:	e8 17       	cp	r30, r24
 534:	f9 07       	cpc	r31, r25
 536:	80 f4       	brcc	.+32     	; 0x558 <LBB18_4>
 538:	df 01       	movw	r26, r30
 53a:	a4 59       	subi	r26, 0x94	; 148
 53c:	bd 4f       	sbci	r27, 0xFD	; 253
 53e:	8c 91       	ld	r24, X
 540:	31 96       	adiw	r30, 0x01	; 1
 542:	ef 73       	andi	r30, 0x3F	; 63
 544:	f0 70       	andi	r31, 0x00	; 0
 546:	f0 93 ad 02 	sts	0x02AD, r31
 54a:	e0 93 ac 02 	sts	0x02AC, r30
 54e:	08 95       	ret

00000550 <LBB18_3>:
 550:	84 e3       	ldi	r24, 0x34	; 52
 552:	91 e0       	ldi	r25, 0x01	; 1
 554:	0e 94 a2 03 	call	0x744	; 0x744 <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

00000558 <LBB18_4>:
 558:	88 e2       	ldi	r24, 0x28	; 40
 55a:	91 e0       	ldi	r25, 0x01	; 1
 55c:	40 e4       	ldi	r20, 0x40	; 64
 55e:	50 e0       	ldi	r21, 0x00	; 0
 560:	bf 01       	movw	r22, r30
 562:	0e 94 a3 03 	call	0x746	; 0x746 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

00000566 <_ZN6avrlib5delay8delay_ms17h231abcdf3f763f3cE>:
 566:	20 e0       	ldi	r18, 0x00	; 0
 568:	30 e0       	ldi	r19, 0x00	; 0
 56a:	82 17       	cp	r24, r18
 56c:	93 07       	cpc	r25, r19
 56e:	71 f0       	breq	.+28     	; 0x58c <LBB19_5>
 570:	20 e0       	ldi	r18, 0x00	; 0
 572:	30 e0       	ldi	r19, 0x00	; 0
 574:	4a e6       	ldi	r20, 0x6A	; 106
 576:	5a e0       	ldi	r21, 0x0A	; 10
 578:	f9 01       	movw	r30, r18

0000057a <LBB19_2>:
 57a:	31 96       	adiw	r30, 0x01	; 1
 57c:	d9 01       	movw	r26, r18

0000057e <LBB19_3>:
 57e:	11 96       	adiw	r26, 0x01	; 1
 580:	a4 17       	cp	r26, r20
 582:	b5 07       	cpc	r27, r21
 584:	e0 f3       	brcs	.-8      	; 0x57e <LBB19_3>
 586:	e8 17       	cp	r30, r24
 588:	f9 07       	cpc	r31, r25
 58a:	b8 f3       	brcs	.-18     	; 0x57a <LBB19_2>

0000058c <LBB19_5>:
 58c:	08 95       	ret

0000058e <_ZN6avrlib5timer4init17he13493d0182a9283E>:
 58e:	84 b5       	in	r24, 0x24	; 36
 590:	82 60       	ori	r24, 0x02	; 2
 592:	84 bd       	out	0x24, r24	; 36
 594:	85 b5       	in	r24, 0x25	; 37
 596:	83 60       	ori	r24, 0x03	; 3
 598:	85 bd       	out	0x25, r24	; 37
 59a:	89 ef       	ldi	r24, 0xF9	; 249
 59c:	87 bd       	out	0x27, r24	; 39
 59e:	82 e0       	ldi	r24, 0x02	; 2
 5a0:	80 93 6e 00 	sts	0x006E, r24
 5a4:	08 95       	ret

000005a6 <_ZN6avrlib5timer7time_ms17hc8ec00e5d4f729dcE>:
 5a6:	80 91 26 02 	lds	r24, 0x0226
 5aa:	90 91 27 02 	lds	r25, 0x0227
 5ae:	60 91 24 02 	lds	r22, 0x0224
 5b2:	70 91 25 02 	lds	r23, 0x0225
 5b6:	08 95       	ret

000005b8 <__vector_18>:
 5b8:	0f 92       	push	r0
 5ba:	1f 92       	push	r1
 5bc:	0f b6       	in	r0, 0x3f	; 63
 5be:	0f 92       	push	r0
 5c0:	00 24       	eor	r0, r0
 5c2:	0f 92       	push	r0
 5c4:	1f 92       	push	r1
 5c6:	2f 93       	push	r18
 5c8:	3f 93       	push	r19
 5ca:	4f 93       	push	r20
 5cc:	5f 93       	push	r21
 5ce:	6f 93       	push	r22
 5d0:	7f 93       	push	r23
 5d2:	8f 93       	push	r24
 5d4:	9f 93       	push	r25
 5d6:	af 93       	push	r26
 5d8:	bf 93       	push	r27
 5da:	ef 93       	push	r30
 5dc:	ff 93       	push	r31
 5de:	80 91 c6 00 	lds	r24, 0x00C6
 5e2:	a0 91 ae 02 	lds	r26, 0x02AE
 5e6:	b0 91 af 02 	lds	r27, 0x02AF
 5ea:	fd 01       	movw	r30, r26
 5ec:	31 96       	adiw	r30, 0x01	; 1
 5ee:	ef 73       	andi	r30, 0x3F	; 63
 5f0:	f0 70       	andi	r31, 0x00	; 0
 5f2:	20 91 ac 02 	lds	r18, 0x02AC
 5f6:	30 91 ad 02 	lds	r19, 0x02AD
 5fa:	e2 17       	cp	r30, r18
 5fc:	f3 07       	cpc	r31, r19
 5fe:	09 f4       	brne	.+2      	; 0x602 <LBB32_1>
 600:	1f c0       	rjmp	.+62     	; 0x640 <LBB32_3>

00000602 <LBB32_1>:
 602:	20 e4       	ldi	r18, 0x40	; 64
 604:	30 e0       	ldi	r19, 0x00	; 0
 606:	a2 17       	cp	r26, r18
 608:	b3 07       	cpc	r27, r19
 60a:	f0 f4       	brcc	.+60     	; 0x648 <LBB32_4>
 60c:	a4 59       	subi	r26, 0x94	; 148
 60e:	bd 4f       	sbci	r27, 0xFD	; 253
 610:	8c 93       	st	X, r24
 612:	f0 93 af 02 	sts	0x02AF, r31
 616:	e0 93 ae 02 	sts	0x02AE, r30
 61a:	ff 91       	pop	r31
 61c:	ef 91       	pop	r30
 61e:	bf 91       	pop	r27
 620:	af 91       	pop	r26
 622:	9f 91       	pop	r25
 624:	8f 91       	pop	r24
 626:	7f 91       	pop	r23
 628:	6f 91       	pop	r22
 62a:	5f 91       	pop	r21
 62c:	4f 91       	pop	r20
 62e:	3f 91       	pop	r19
 630:	2f 91       	pop	r18
 632:	1f 90       	pop	r1
 634:	0f 90       	pop	r0
 636:	0f 90       	pop	r0
 638:	0f be       	out	0x3f, r0	; 63
 63a:	1f 90       	pop	r1
 63c:	0f 90       	pop	r0
 63e:	18 95       	reti

00000640 <LBB32_3>:
 640:	8c e0       	ldi	r24, 0x0C	; 12
 642:	91 e0       	ldi	r25, 0x01	; 1
 644:	0e 94 a2 03 	call	0x744	; 0x744 <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

00000648 <LBB32_4>:
 648:	8c e1       	ldi	r24, 0x1C	; 28
 64a:	91 e0       	ldi	r25, 0x01	; 1
 64c:	40 e4       	ldi	r20, 0x40	; 64
 64e:	50 e0       	ldi	r21, 0x00	; 0
 650:	bd 01       	movw	r22, r26
 652:	0e 94 a3 03 	call	0x746	; 0x746 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

00000656 <__vector_19>:
 656:	0f 92       	push	r0
 658:	1f 92       	push	r1
 65a:	0f b6       	in	r0, 0x3f	; 63
 65c:	0f 92       	push	r0
 65e:	00 24       	eor	r0, r0
 660:	0f 92       	push	r0
 662:	1f 92       	push	r1
 664:	2f 93       	push	r18
 666:	3f 93       	push	r19
 668:	4f 93       	push	r20
 66a:	5f 93       	push	r21
 66c:	6f 93       	push	r22
 66e:	7f 93       	push	r23
 670:	8f 93       	push	r24
 672:	9f 93       	push	r25
 674:	af 93       	push	r26
 676:	bf 93       	push	r27
 678:	ef 93       	push	r30
 67a:	ff 93       	push	r31
 67c:	e0 91 68 02 	lds	r30, 0x0268
 680:	f0 91 69 02 	lds	r31, 0x0269
 684:	80 91 6a 02 	lds	r24, 0x026A
 688:	90 91 6b 02 	lds	r25, 0x026B
 68c:	e8 17       	cp	r30, r24
 68e:	f9 07       	cpc	r31, r25
 690:	31 f4       	brne	.+12     	; 0x69e <LBB33_2>
 692:	80 91 c1 00 	lds	r24, 0x00C1
 696:	8f 7d       	andi	r24, 0xDF	; 223
 698:	80 93 c1 00 	sts	0x00C1, r24
 69c:	13 c0       	rjmp	.+38     	; 0x6c4 <LBB33_4>

0000069e <LBB33_2>:
 69e:	80 e4       	ldi	r24, 0x40	; 64
 6a0:	90 e0       	ldi	r25, 0x00	; 0
 6a2:	e8 17       	cp	r30, r24
 6a4:	f9 07       	cpc	r31, r25
 6a6:	08 f0       	brcs	.+2      	; 0x6aa <LBB33_3>
 6a8:	20 c0       	rjmp	.+64     	; 0x6ea <LBB33_5>

000006aa <LBB33_3>:
 6aa:	df 01       	movw	r26, r30
 6ac:	a8 5d       	subi	r26, 0xD8	; 216
 6ae:	bd 4f       	sbci	r27, 0xFD	; 253
 6b0:	8c 91       	ld	r24, X
 6b2:	31 96       	adiw	r30, 0x01	; 1
 6b4:	ef 73       	andi	r30, 0x3F	; 63
 6b6:	f0 70       	andi	r31, 0x00	; 0
 6b8:	f0 93 69 02 	sts	0x0269, r31
 6bc:	e0 93 68 02 	sts	0x0268, r30
 6c0:	80 93 c6 00 	sts	0x00C6, r24

000006c4 <LBB33_4>:
 6c4:	ff 91       	pop	r31
 6c6:	ef 91       	pop	r30
 6c8:	bf 91       	pop	r27
 6ca:	af 91       	pop	r26
 6cc:	9f 91       	pop	r25
 6ce:	8f 91       	pop	r24
 6d0:	7f 91       	pop	r23
 6d2:	6f 91       	pop	r22
 6d4:	5f 91       	pop	r21
 6d6:	4f 91       	pop	r20
 6d8:	3f 91       	pop	r19
 6da:	2f 91       	pop	r18
 6dc:	1f 90       	pop	r1
 6de:	0f 90       	pop	r0
 6e0:	0f 90       	pop	r0
 6e2:	0f be       	out	0x3f, r0	; 63
 6e4:	1f 90       	pop	r1
 6e6:	0f 90       	pop	r0
 6e8:	18 95       	reti

000006ea <LBB33_5>:
 6ea:	88 e2       	ldi	r24, 0x28	; 40
 6ec:	91 e0       	ldi	r25, 0x01	; 1
 6ee:	40 e4       	ldi	r20, 0x40	; 64
 6f0:	50 e0       	ldi	r21, 0x00	; 0
 6f2:	bf 01       	movw	r22, r30
 6f4:	0e 94 a3 03 	call	0x746	; 0x746 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

000006f8 <__vector_14>:
 6f8:	0f 92       	push	r0
 6fa:	1f 92       	push	r1
 6fc:	0f b6       	in	r0, 0x3f	; 63
 6fe:	0f 92       	push	r0
 700:	00 24       	eor	r0, r0
 702:	2f 93       	push	r18
 704:	3f 93       	push	r19
 706:	8f 93       	push	r24
 708:	9f 93       	push	r25
 70a:	80 91 24 02 	lds	r24, 0x0224
 70e:	90 91 25 02 	lds	r25, 0x0225
 712:	20 91 26 02 	lds	r18, 0x0226
 716:	30 91 27 02 	lds	r19, 0x0227
 71a:	8f 5f       	subi	r24, 0xFF	; 255
 71c:	9f 4f       	sbci	r25, 0xFF	; 255
 71e:	2f 4f       	sbci	r18, 0xFF	; 255
 720:	3f 4f       	sbci	r19, 0xFF	; 255
 722:	30 93 27 02 	sts	0x0227, r19
 726:	20 93 26 02 	sts	0x0226, r18
 72a:	90 93 25 02 	sts	0x0225, r25
 72e:	80 93 24 02 	sts	0x0224, r24
 732:	9f 91       	pop	r25
 734:	8f 91       	pop	r24
 736:	3f 91       	pop	r19
 738:	2f 91       	pop	r18
 73a:	0f 90       	pop	r0
 73c:	0f be       	out	0x3f, r0	; 63
 73e:	1f 90       	pop	r1
 740:	0f 90       	pop	r0
 742:	18 95       	reti

00000744 <_ZN4core9panicking5panic17hb168f5b3c00eca08E>:
 744:	ff cf       	rjmp	.-2      	; 0x744 <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

00000746 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>:
 746:	ff cf       	rjmp	.-2      	; 0x746 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

00000748 <__udivmodsi4>:
 748:	a1 e2       	ldi	r26, 0x21	; 33
 74a:	1a 2e       	mov	r1, r26
 74c:	aa 1b       	sub	r26, r26
 74e:	bb 1b       	sub	r27, r27
 750:	fd 01       	movw	r30, r26
 752:	0d c0       	rjmp	.+26     	; 0x76e <__udivmodsi4_ep>

00000754 <__udivmodsi4_loop>:
 754:	aa 1f       	adc	r26, r26
 756:	bb 1f       	adc	r27, r27
 758:	ee 1f       	adc	r30, r30
 75a:	ff 1f       	adc	r31, r31
 75c:	a2 17       	cp	r26, r18
 75e:	b3 07       	cpc	r27, r19
 760:	e4 07       	cpc	r30, r20
 762:	f5 07       	cpc	r31, r21
 764:	20 f0       	brcs	.+8      	; 0x76e <__udivmodsi4_ep>
 766:	a2 1b       	sub	r26, r18
 768:	b3 0b       	sbc	r27, r19
 76a:	e4 0b       	sbc	r30, r20
 76c:	f5 0b       	sbc	r31, r21

0000076e <__udivmodsi4_ep>:
 76e:	66 1f       	adc	r22, r22
 770:	77 1f       	adc	r23, r23
 772:	88 1f       	adc	r24, r24
 774:	99 1f       	adc	r25, r25
 776:	1a 94       	dec	r1
 778:	69 f7       	brne	.-38     	; 0x754 <__udivmodsi4_loop>
 77a:	60 95       	com	r22
 77c:	70 95       	com	r23
 77e:	80 95       	com	r24
 780:	90 95       	com	r25
 782:	9b 01       	movw	r18, r22
 784:	ac 01       	movw	r20, r24
 786:	bd 01       	movw	r22, r26
 788:	cf 01       	movw	r24, r30
 78a:	08 95       	ret

0000078c <_exit>:
 78c:	f8 94       	cli

0000078e <__stop_program>:
 78e:	ff cf       	rjmp	.-2      	; 0x78e <__stop_program>

Disassembly of section .bss:

00800224 <__bss_start>:
  800224:	00 00       	nop
	...

00800228 <_ZN6avrlib4uart7TX_FIFO17h69c1cda48df8d8a7E>:
	...

0080026c <_ZN6avrlib4uart7RX_FIFO17h06d6d39800eba9aeE>:
	...

Disassembly of section .note.gnu.avr.deviceinfo:

00000000 <_end-0x8002b0>:
   0:	04 00       	.word	0x0004	; ????
   2:	00 00       	nop
   4:	2d 00       	.word	0x002d	; ????
   6:	00 00       	nop
   8:	01 00       	.word	0x0001	; ????
   a:	00 00       	nop
   c:	41 56       	subi	r20, 0x61	; 97
   e:	52 00       	.word	0x0052	; ????
  10:	00 00       	nop
  12:	00 00       	nop
  14:	00 80       	ld	r0, Z
  16:	00 00       	nop
  18:	00 01       	movw	r0, r0
  1a:	00 00       	nop
  1c:	00 08       	sbc	r0, r0
  1e:	00 00       	nop
  20:	00 00       	nop
  22:	00 00       	nop
  24:	00 04       	cpc	r0, r0
  26:	00 00       	nop
  28:	08 00       	.word	0x0008	; ????
  2a:	00 00       	nop
  2c:	01 00       	.word	0x0001	; ????
  2e:	00 00       	nop
  30:	00 61       	ori	r16, 0x10	; 16
  32:	74 6d       	ori	r23, 0xD4	; 212
  34:	65 67       	ori	r22, 0x75	; 117
  36:	61 33       	cpi	r22, 0x31	; 49
  38:	32 38       	cpi	r19, 0x82	; 130
  3a:	70 00       	.word	0x0070	; ????
  3c:	00 00       	nop
	...
