
target/avr-atmega328p/release/avr_test_stack_overflow.elf:     Dateiformat elf32-avr


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

00800140 <str.3>:
  800140:	61 76       	andi	r22, 0x61	; 97
  800142:	72 5f       	subi	r23, 0xF2	; 242
  800144:	74 65       	ori	r23, 0x54	; 84
  800146:	73 74       	andi	r23, 0x43	; 67
  800148:	5f 73       	andi	r21, 0x3F	; 63
  80014a:	74 61       	ori	r23, 0x14	; 20
  80014c:	63 6b       	ori	r22, 0xB3	; 179
  80014e:	5f 6f       	ori	r21, 0xFF	; 255
  800150:	76 65       	ori	r23, 0x56	; 86
  800152:	72 66       	ori	r23, 0x62	; 98
  800154:	6c 6f       	ori	r22, 0xFC	; 252
  800156:	77 0a       	sbc	r7, r23

00800157 <str.4>:
  800157:	0a 20       	and	r0, r10

00800158 <str.5>:
  800158:	20 00       	.word	0x0020	; ????
  80015a:	00 00       	nop
  80015c:	00 00       	nop
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
  38:	0c 94 2d 03 	jmp	0x65a	; 0x65a <__vector_14>
  3c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  40:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  44:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  48:	0c 94 8d 02 	jmp	0x51a	; 0x51a <__vector_18>
  4c:	0c 94 dc 02 	jmp	0x5b8	; 0x5b8 <__vector_19>
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
  74:	11 e0       	ldi	r17, 0x01	; 1
  76:	a0 e0       	ldi	r26, 0x00	; 0
  78:	b1 e0       	ldi	r27, 0x01	; 1
  7a:	ee ea       	ldi	r30, 0xAE	; 174
  7c:	f6 e0       	ldi	r31, 0x06	; 6
  7e:	02 c0       	rjmp	.+4      	; 0x84 <__do_copy_data+0x10>
  80:	05 90       	lpm	r0, Z+
  82:	0d 92       	st	X+, r0
  84:	a4 3e       	cpi	r26, 0xE4	; 228
  86:	b1 07       	cpc	r27, r17
  88:	d9 f7       	brne	.-10     	; 0x80 <__do_copy_data+0xc>

0000008a <__do_clear_bss>:
  8a:	22 e0       	ldi	r18, 0x02	; 2
  8c:	a4 ee       	ldi	r26, 0xE4	; 228
  8e:	b1 e0       	ldi	r27, 0x01	; 1
  90:	01 c0       	rjmp	.+2      	; 0x94 <.do_clear_bss_start>

00000092 <.do_clear_bss_loop>:
  92:	1d 92       	st	X+, r1

00000094 <.do_clear_bss_start>:
  94:	a0 37       	cpi	r26, 0x70	; 112
  96:	b2 07       	cpc	r27, r18
  98:	e1 f7       	brne	.-8      	; 0x92 <.do_clear_bss_loop>
  9a:	0e 94 c2 00 	call	0x184	; 0x184 <main>
  9e:	0c 94 55 03 	jmp	0x6aa	; 0x6aa <_exit>

000000a2 <__bad_interrupt>:
  a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <_ZN23avr_test_stack_overflow11consume_mem17h14357444871b7821E>:
  a6:	cf 93       	push	r28
  a8:	df 93       	push	r29
  aa:	cd b7       	in	r28, 0x3d	; 61
  ac:	de b7       	in	r29, 0x3e	; 62
  ae:	60 97       	sbiw	r28, 0x10	; 16
  b0:	0f b6       	in	r0, 0x3f	; 63
  b2:	f8 94       	cli
  b4:	de bf       	out	0x3e, r29	; 62
  b6:	0f be       	out	0x3f, r0	; 63
  b8:	cd bf       	out	0x3d, r28	; 61
  ba:	86 17       	cp	r24, r22
  bc:	08 f0       	brcs	.+2      	; 0xc0 <LBB2_1>
  be:	59 c0       	rjmp	.+178    	; 0x172 <LBB2_2>

000000c0 <LBB2_1>:
  c0:	20 e0       	ldi	r18, 0x00	; 0
  c2:	30 e0       	ldi	r19, 0x00	; 0
  c4:	2f 87       	std	Y+15, r18	; 0x0f
  c6:	38 8b       	std	Y+16, r19	; 0x10
  c8:	2d 87       	std	Y+13, r18	; 0x0d
  ca:	3e 87       	std	Y+14, r19	; 0x0e
  cc:	2b 87       	std	Y+11, r18	; 0x0b
  ce:	3c 87       	std	Y+12, r19	; 0x0c
  d0:	29 87       	std	Y+9, r18	; 0x09
  d2:	3a 87       	std	Y+10, r19	; 0x0a
  d4:	2f 83       	std	Y+7, r18	; 0x07
  d6:	38 87       	std	Y+8, r19	; 0x08
  d8:	2d 83       	std	Y+5, r18	; 0x05
  da:	3e 83       	std	Y+6, r19	; 0x06
  dc:	2b 83       	std	Y+3, r18	; 0x03
  de:	3c 83       	std	Y+4, r19	; 0x04
  e0:	29 83       	std	Y+1, r18	; 0x01
  e2:	3a 83       	std	Y+2, r19	; 0x02
  e4:	90 e0       	ldi	r25, 0x00	; 0
  e6:	97 b9       	out	0x07, r25	; 7
  e8:	96 b1       	in	r25, 0x06	; 6
  ea:	99 83       	std	Y+1, r25	; 0x01
  ec:	96 b1       	in	r25, 0x06	; 6
  ee:	9a 83       	std	Y+2, r25	; 0x02
  f0:	96 b1       	in	r25, 0x06	; 6
  f2:	9b 83       	std	Y+3, r25	; 0x03
  f4:	96 b1       	in	r25, 0x06	; 6
  f6:	9c 83       	std	Y+4, r25	; 0x04
  f8:	96 b1       	in	r25, 0x06	; 6
  fa:	9d 83       	std	Y+5, r25	; 0x05
  fc:	96 b1       	in	r25, 0x06	; 6
  fe:	9e 83       	std	Y+6, r25	; 0x06
 100:	96 b1       	in	r25, 0x06	; 6
 102:	9f 83       	std	Y+7, r25	; 0x07
 104:	96 b1       	in	r25, 0x06	; 6
 106:	98 87       	std	Y+8, r25	; 0x08
 108:	96 b1       	in	r25, 0x06	; 6
 10a:	99 87       	std	Y+9, r25	; 0x09
 10c:	96 b1       	in	r25, 0x06	; 6
 10e:	9a 87       	std	Y+10, r25	; 0x0a
 110:	96 b1       	in	r25, 0x06	; 6
 112:	9b 87       	std	Y+11, r25	; 0x0b
 114:	96 b1       	in	r25, 0x06	; 6
 116:	9c 87       	std	Y+12, r25	; 0x0c
 118:	96 b1       	in	r25, 0x06	; 6
 11a:	9d 87       	std	Y+13, r25	; 0x0d
 11c:	96 b1       	in	r25, 0x06	; 6
 11e:	9e 87       	std	Y+14, r25	; 0x0e
 120:	96 b1       	in	r25, 0x06	; 6
 122:	9f 87       	std	Y+15, r25	; 0x0f
 124:	96 b1       	in	r25, 0x06	; 6
 126:	98 8b       	std	Y+16, r25	; 0x10
 128:	83 95       	inc	r24
 12a:	0e 94 53 00 	call	0xa6	; 0xa6 <_ZN23avr_test_stack_overflow11consume_mem17h14357444871b7821E>
 12e:	8f ef       	ldi	r24, 0xFF	; 255
 130:	87 b9       	out	0x07, r24	; 7
 132:	89 81       	ldd	r24, Y+1	; 0x01
 134:	88 b9       	out	0x08, r24	; 8
 136:	8a 81       	ldd	r24, Y+2	; 0x02
 138:	88 b9       	out	0x08, r24	; 8
 13a:	8b 81       	ldd	r24, Y+3	; 0x03
 13c:	88 b9       	out	0x08, r24	; 8
 13e:	8c 81       	ldd	r24, Y+4	; 0x04
 140:	88 b9       	out	0x08, r24	; 8
 142:	8d 81       	ldd	r24, Y+5	; 0x05
 144:	88 b9       	out	0x08, r24	; 8
 146:	8e 81       	ldd	r24, Y+6	; 0x06
 148:	88 b9       	out	0x08, r24	; 8
 14a:	8f 81       	ldd	r24, Y+7	; 0x07
 14c:	88 b9       	out	0x08, r24	; 8
 14e:	88 85       	ldd	r24, Y+8	; 0x08
 150:	88 b9       	out	0x08, r24	; 8
 152:	89 85       	ldd	r24, Y+9	; 0x09
 154:	88 b9       	out	0x08, r24	; 8
 156:	8a 85       	ldd	r24, Y+10	; 0x0a
 158:	88 b9       	out	0x08, r24	; 8
 15a:	8b 85       	ldd	r24, Y+11	; 0x0b
 15c:	88 b9       	out	0x08, r24	; 8
 15e:	8c 85       	ldd	r24, Y+12	; 0x0c
 160:	88 b9       	out	0x08, r24	; 8
 162:	8d 85       	ldd	r24, Y+13	; 0x0d
 164:	88 b9       	out	0x08, r24	; 8
 166:	8e 85       	ldd	r24, Y+14	; 0x0e
 168:	88 b9       	out	0x08, r24	; 8
 16a:	8f 85       	ldd	r24, Y+15	; 0x0f
 16c:	88 b9       	out	0x08, r24	; 8
 16e:	88 89       	ldd	r24, Y+16	; 0x10
 170:	88 b9       	out	0x08, r24	; 8

00000172 <LBB2_2>:
 172:	60 96       	adiw	r28, 0x10	; 16
 174:	0f b6       	in	r0, 0x3f	; 63
 176:	f8 94       	cli
 178:	de bf       	out	0x3e, r29	; 62
 17a:	0f be       	out	0x3f, r0	; 63
 17c:	cd bf       	out	0x3d, r28	; 61
 17e:	df 91       	pop	r29
 180:	cf 91       	pop	r28
 182:	08 95       	ret

00000184 <main>:
 184:	cf 93       	push	r28
 186:	df 93       	push	r29
 188:	2f 92       	push	r2
 18a:	3f 92       	push	r3
 18c:	4f 92       	push	r4
 18e:	5f 92       	push	r5
 190:	6f 92       	push	r6
 192:	7f 92       	push	r7
 194:	8f 92       	push	r8
 196:	9f 92       	push	r9
 198:	af 92       	push	r10
 19a:	bf 92       	push	r11
 19c:	cf 92       	push	r12
 19e:	df 92       	push	r13
 1a0:	ef 92       	push	r14
 1a2:	ff 92       	push	r15
 1a4:	1f 93       	push	r17
 1a6:	cd b7       	in	r28, 0x3d	; 61
 1a8:	de b7       	in	r29, 0x3e	; 62
 1aa:	23 97       	sbiw	r28, 0x03	; 3
 1ac:	0f b6       	in	r0, 0x3f	; 63
 1ae:	f8 94       	cli
 1b0:	de bf       	out	0x3e, r29	; 62
 1b2:	0f be       	out	0x3f, r0	; 63
 1b4:	cd bf       	out	0x3d, r28	; 61
 1b6:	f8 94       	cli
 1b8:	a8 95       	wdr
 1ba:	84 b7       	in	r24, 0x34	; 52
 1bc:	87 7f       	andi	r24, 0xF7	; 247
 1be:	84 bf       	out	0x34, r24	; 52
 1c0:	80 91 60 00 	lds	r24, 0x0060
 1c4:	88 61       	ori	r24, 0x18	; 24
 1c6:	80 93 60 00 	sts	0x0060, r24
 1ca:	10 e0       	ldi	r17, 0x00	; 0
 1cc:	10 93 60 00 	sts	0x0060, r17
 1d0:	78 94       	sei
 1d2:	25 9a       	sbi	0x04, 5	; 4
 1d4:	2d 98       	cbi	0x05, 5	; 5
 1d6:	0e 94 7d 01 	call	0x2fa	; 0x2fa <_ZN6avrlib4uart4init17h3839464f3cc1af6bE>
 1da:	78 94       	sei
 1dc:	80 e4       	ldi	r24, 0x40	; 64
 1de:	91 e0       	ldi	r25, 0x01	; 1
 1e0:	67 e1       	ldi	r22, 0x17	; 23
 1e2:	70 e0       	ldi	r23, 0x00	; 0
 1e4:	0e 94 d5 01 	call	0x3aa	; 0x3aa <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>
 1e8:	87 e5       	ldi	r24, 0x57	; 87
 1ea:	91 e0       	ldi	r25, 0x01	; 1
 1ec:	61 e0       	ldi	r22, 0x01	; 1
 1ee:	70 e0       	ldi	r23, 0x00	; 0
 1f0:	5b 01       	movw	r10, r22
 1f2:	0e 94 d5 01 	call	0x3aa	; 0x3aa <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>
 1f6:	88 ee       	ldi	r24, 0xE8	; 232
 1f8:	93 e0       	ldi	r25, 0x03	; 3
 1fa:	0e 94 79 02 	call	0x4f2	; 0x4f2 <_ZN6avrlib5delay8delay_ms17h231abcdf3f763f3cE>
 1fe:	ce 01       	movw	r24, r28
 200:	01 96       	adiw	r24, 0x01	; 1
 202:	4c 01       	movw	r8, r24
 204:	83 e0       	ldi	r24, 0x03	; 3
 206:	90 e0       	ldi	r25, 0x00	; 0
 208:	3c 01       	movw	r6, r24
 20a:	88 e5       	ldi	r24, 0x58	; 88
 20c:	91 e0       	ldi	r25, 0x01	; 1
 20e:	2c 01       	movw	r4, r24
 210:	82 e3       	ldi	r24, 0x32	; 50
 212:	90 e0       	ldi	r25, 0x00	; 0
 214:	7c 01       	movw	r14, r24

00000216 <LBB3_1>:
 216:	64 01       	movw	r12, r8
 218:	c6 01       	movw	r24, r12
 21a:	61 2f       	mov	r22, r17
 21c:	0e 94 2b 01 	call	0x256	; 0x256 <_ZN6avrlib4itoa7itoa_u817hbd72e283d8168b95E>
 220:	c6 01       	movw	r24, r12
 222:	b3 01       	movw	r22, r6
 224:	0e 94 94 01 	call	0x328	; 0x328 <_ZN6avrlib4uart10put_u8_arr17h9de83b577b64f971E>
 228:	c2 01       	movw	r24, r4
 22a:	65 01       	movw	r12, r10
 22c:	b6 01       	movw	r22, r12
 22e:	0e 94 d5 01 	call	0x3aa	; 0x3aa <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>
 232:	17 01       	movw	r2, r14
 234:	c1 01       	movw	r24, r2
 236:	0e 94 79 02 	call	0x4f2	; 0x4f2 <_ZN6avrlib5delay8delay_ms17h231abcdf3f763f3cE>
 23a:	80 e0       	ldi	r24, 0x00	; 0
 23c:	61 2f       	mov	r22, r17
 23e:	0e 94 53 00 	call	0xa6	; 0xa6 <_ZN23avr_test_stack_overflow11consume_mem17h14357444871b7821E>
 242:	87 e5       	ldi	r24, 0x57	; 87
 244:	91 e0       	ldi	r25, 0x01	; 1
 246:	b6 01       	movw	r22, r12
 248:	0e 94 d5 01 	call	0x3aa	; 0x3aa <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>
 24c:	c1 01       	movw	r24, r2
 24e:	0e 94 79 02 	call	0x4f2	; 0x4f2 <_ZN6avrlib5delay8delay_ms17h231abcdf3f763f3cE>
 252:	13 95       	inc	r17
 254:	e0 cf       	rjmp	.-64     	; 0x216 <LBB3_1>

00000256 <_ZN6avrlib4itoa7itoa_u817hbd72e283d8168b95E>:
 256:	cf 93       	push	r28
 258:	df 93       	push	r29
 25a:	ef 92       	push	r14
 25c:	ff 92       	push	r15
 25e:	1f 93       	push	r17
 260:	cd b7       	in	r28, 0x3d	; 61
 262:	de b7       	in	r29, 0x3e	; 62
 264:	23 97       	sbiw	r28, 0x03	; 3
 266:	0f b6       	in	r0, 0x3f	; 63
 268:	f8 94       	cli
 26a:	de bf       	out	0x3e, r29	; 62
 26c:	0f be       	out	0x3f, r0	; 63
 26e:	cd bf       	out	0x3d, r28	; 61
 270:	20 e2       	ldi	r18, 0x20	; 32
 272:	30 e2       	ldi	r19, 0x20	; 32
 274:	29 83       	std	Y+1, r18	; 0x01
 276:	3a 83       	std	Y+2, r19	; 0x02
 278:	20 e3       	ldi	r18, 0x30	; 48
 27a:	2b 83       	std	Y+3, r18	; 0x03
 27c:	60 30       	cpi	r22, 0x00	; 0
 27e:	09 f4       	brne	.+2      	; 0x282 <LBB0_1>
 280:	22 c0       	rjmp	.+68     	; 0x2c6 <LBB0_4>

00000282 <LBB0_1>:
 282:	e2 e0       	ldi	r30, 0x02	; 2
 284:	f0 e0       	ldi	r31, 0x00	; 0
 286:	23 e0       	ldi	r18, 0x03	; 3
 288:	30 e0       	ldi	r19, 0x00	; 0
 28a:	79 01       	movw	r14, r18
 28c:	9e 01       	movw	r18, r28
 28e:	2f 5f       	subi	r18, 0xFF	; 255
 290:	3f 4f       	sbci	r19, 0xFF	; 255
 292:	4d ec       	ldi	r20, 0xCD	; 205
 294:	5a e0       	ldi	r21, 0x0A	; 10

00000296 <LBB0_2>:
 296:	d7 01       	movw	r26, r14
 298:	ea 17       	cp	r30, r26
 29a:	fb 07       	cpc	r31, r27
 29c:	08 f0       	brcs	.+2      	; 0x2a0 <LBB0_3>
 29e:	26 c0       	rjmp	.+76     	; 0x2ec <LBB0_5>

000002a0 <LBB0_3>:
 2a0:	d9 01       	movw	r26, r18
 2a2:	ae 0f       	add	r26, r30
 2a4:	bf 1f       	adc	r27, r31
 2a6:	64 9f       	mul	r22, r20
 2a8:	71 2d       	mov	r23, r1
 2aa:	11 24       	eor	r1, r1
 2ac:	76 95       	lsr	r23
 2ae:	76 95       	lsr	r23
 2b0:	76 95       	lsr	r23
 2b2:	75 02       	muls	r23, r21
 2b4:	11 24       	eor	r1, r1
 2b6:	16 2f       	mov	r17, r22
 2b8:	10 19       	sub	r17, r0
 2ba:	10 63       	ori	r17, 0x30	; 48
 2bc:	1c 93       	st	X, r17
 2be:	31 97       	sbiw	r30, 0x01	; 1
 2c0:	6a 30       	cpi	r22, 0x0A	; 10
 2c2:	67 2f       	mov	r22, r23
 2c4:	40 f7       	brcc	.-48     	; 0x296 <LBB0_2>

000002c6 <LBB0_4>:
 2c6:	29 81       	ldd	r18, Y+1	; 0x01
 2c8:	3a 81       	ldd	r19, Y+2	; 0x02
 2ca:	dc 01       	movw	r26, r24
 2cc:	2d 93       	st	X+, r18
 2ce:	3d 93       	st	X+, r19
 2d0:	8b 81       	ldd	r24, Y+3	; 0x03
 2d2:	8c 93       	st	X, r24
 2d4:	23 96       	adiw	r28, 0x03	; 3
 2d6:	0f b6       	in	r0, 0x3f	; 63
 2d8:	f8 94       	cli
 2da:	de bf       	out	0x3e, r29	; 62
 2dc:	0f be       	out	0x3f, r0	; 63
 2de:	cd bf       	out	0x3d, r28	; 61
 2e0:	1f 91       	pop	r17
 2e2:	ff 90       	pop	r15
 2e4:	ef 90       	pop	r14
 2e6:	df 91       	pop	r29
 2e8:	cf 91       	pop	r28
 2ea:	08 95       	ret

000002ec <LBB0_5>:
 2ec:	80 e0       	ldi	r24, 0x00	; 0
 2ee:	91 e0       	ldi	r25, 0x01	; 1
 2f0:	43 e0       	ldi	r20, 0x03	; 3
 2f2:	50 e0       	ldi	r21, 0x00	; 0
 2f4:	bf 01       	movw	r22, r30
 2f6:	0e 94 54 03 	call	0x6a8	; 0x6a8 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

000002fa <_ZN6avrlib4uart4init17h3839464f3cc1af6bE>:
 2fa:	80 e0       	ldi	r24, 0x00	; 0
 2fc:	80 93 c5 00 	sts	0x00C5, r24
 300:	80 e1       	ldi	r24, 0x10	; 16
 302:	80 93 c4 00 	sts	0x00C4, r24
 306:	80 91 c0 00 	lds	r24, 0x00C0
 30a:	82 60       	ori	r24, 0x02	; 2
 30c:	80 93 c0 00 	sts	0x00C0, r24
 310:	88 e1       	ldi	r24, 0x18	; 24
 312:	80 93 c1 00 	sts	0x00C1, r24
 316:	86 e0       	ldi	r24, 0x06	; 6
 318:	80 93 c2 00 	sts	0x00C2, r24
 31c:	80 91 c1 00 	lds	r24, 0x00C1
 320:	80 68       	ori	r24, 0x80	; 128
 322:	80 93 c1 00 	sts	0x00C1, r24
 326:	08 95       	ret

00000328 <_ZN6avrlib4uart10put_u8_arr17h9de83b577b64f971E>:
 328:	0f 93       	push	r16
 32a:	1f 93       	push	r17
 32c:	dc 01       	movw	r26, r24
 32e:	80 e0       	ldi	r24, 0x00	; 0
 330:	90 e0       	ldi	r25, 0x00	; 0
 332:	68 17       	cp	r22, r24
 334:	79 07       	cpc	r23, r25
 336:	09 f4       	brne	.+2      	; 0x33a <LBB14_1>
 338:	2a c0       	rjmp	.+84     	; 0x38e <LBB14_5>

0000033a <LBB14_1>:
 33a:	6a 0f       	add	r22, r26
 33c:	7b 1f       	adc	r23, r27
 33e:	80 e4       	ldi	r24, 0x40	; 64
 340:	90 e0       	ldi	r25, 0x00	; 0

00000342 <LBB14_2>:
 342:	2d 91       	ld	r18, X+
 344:	8d 01       	movw	r16, r26
 346:	a0 91 2a 02 	lds	r26, 0x022A
 34a:	b0 91 2b 02 	lds	r27, 0x022B
 34e:	fd 01       	movw	r30, r26
 350:	31 96       	adiw	r30, 0x01	; 1
 352:	ef 73       	andi	r30, 0x3F	; 63
 354:	f0 70       	andi	r31, 0x00	; 0
 356:	40 91 28 02 	lds	r20, 0x0228
 35a:	50 91 29 02 	lds	r21, 0x0229
 35e:	e4 17       	cp	r30, r20
 360:	f5 07       	cpc	r31, r21
 362:	09 f4       	brne	.+2      	; 0x366 <LBB14_3>
 364:	17 c0       	rjmp	.+46     	; 0x394 <LBB14_6>

00000366 <LBB14_3>:
 366:	a8 17       	cp	r26, r24
 368:	b9 07       	cpc	r27, r25
 36a:	c0 f4       	brcc	.+48     	; 0x39c <LBB14_7>
 36c:	a8 51       	subi	r26, 0x18	; 24
 36e:	be 4f       	sbci	r27, 0xFE	; 254
 370:	2c 93       	st	X, r18
 372:	f0 93 2b 02 	sts	0x022B, r31
 376:	e0 93 2a 02 	sts	0x022A, r30
 37a:	20 91 c1 00 	lds	r18, 0x00C1
 37e:	20 62       	ori	r18, 0x20	; 32
 380:	20 93 c1 00 	sts	0x00C1, r18
 384:	d8 01       	movw	r26, r16
 386:	a6 17       	cp	r26, r22
 388:	b7 07       	cpc	r27, r23
 38a:	09 f0       	breq	.+2      	; 0x38e <LBB14_5>
 38c:	da cf       	rjmp	.-76     	; 0x342 <LBB14_2>

0000038e <LBB14_5>:
 38e:	1f 91       	pop	r17
 390:	0f 91       	pop	r16
 392:	08 95       	ret

00000394 <LBB14_6>:
 394:	8c e0       	ldi	r24, 0x0C	; 12
 396:	91 e0       	ldi	r25, 0x01	; 1
 398:	0e 94 53 03 	call	0x6a6	; 0x6a6 <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

0000039c <LBB14_7>:
 39c:	8c e1       	ldi	r24, 0x1C	; 28
 39e:	91 e0       	ldi	r25, 0x01	; 1
 3a0:	40 e4       	ldi	r20, 0x40	; 64
 3a2:	50 e0       	ldi	r21, 0x00	; 0
 3a4:	bd 01       	movw	r22, r26
 3a6:	0e 94 54 03 	call	0x6a8	; 0x6a8 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

000003aa <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>:
 3aa:	cf 92       	push	r12
 3ac:	df 92       	push	r13
 3ae:	ef 92       	push	r14
 3b0:	ff 92       	push	r15
 3b2:	0f 93       	push	r16
 3b4:	1f 93       	push	r17
 3b6:	20 e0       	ldi	r18, 0x00	; 0
 3b8:	30 e0       	ldi	r19, 0x00	; 0
 3ba:	62 17       	cp	r22, r18
 3bc:	73 07       	cpc	r23, r19
 3be:	09 f4       	brne	.+2      	; 0x3c2 <LBB15_1>
 3c0:	86 c0       	rjmp	.+268    	; 0x4ce <LBB15_20>

000003c2 <LBB15_1>:
 3c2:	68 0f       	add	r22, r24
 3c4:	79 1f       	adc	r23, r25
 3c6:	20 e4       	ldi	r18, 0x40	; 64
 3c8:	30 e0       	ldi	r19, 0x00	; 0
 3ca:	69 01       	movw	r12, r18
 3cc:	40 e0       	ldi	r20, 0x00	; 0
 3ce:	50 e0       	ldi	r21, 0x00	; 0
 3d0:	7a 01       	movw	r14, r20

000003d2 <LBB15_2>:
 3d2:	fc 01       	movw	r30, r24
 3d4:	21 91       	ld	r18, Z+
 3d6:	22 23       	and	r18, r18
 3d8:	1a f0       	brmi	.+6      	; 0x3e0 <LBB15_4>
 3da:	cf 01       	movw	r24, r30
 3dc:	42 2f       	mov	r20, r18
 3de:	53 c0       	rjmp	.+166    	; 0x486 <LBB15_17>

000003e0 <LBB15_4>:
 3e0:	e6 17       	cp	r30, r22
 3e2:	f7 07       	cpc	r31, r23
 3e4:	49 f0       	breq	.+18     	; 0x3f8 <LBB15_6>
 3e6:	02 96       	adiw	r24, 0x02	; 2
 3e8:	40 81       	ld	r20, Z
 3ea:	4f 73       	andi	r20, 0x3F	; 63
 3ec:	55 27       	eor	r21, r21
 3ee:	8c 01       	movw	r16, r24
 3f0:	fc 01       	movw	r30, r24
 3f2:	20 3e       	cpi	r18, 0xE0	; 224
 3f4:	30 f4       	brcc	.+12     	; 0x402 <LBB15_7>
 3f6:	10 c0       	rjmp	.+32     	; 0x418 <LBB15_9>

000003f8 <LBB15_6>:
 3f8:	8b 01       	movw	r16, r22
 3fa:	c7 01       	movw	r24, r14
 3fc:	ac 01       	movw	r20, r24
 3fe:	20 3e       	cpi	r18, 0xE0	; 224
 400:	58 f0       	brcs	.+22     	; 0x418 <LBB15_9>

00000402 <LBB15_7>:
 402:	c8 01       	movw	r24, r16
 404:	06 17       	cp	r16, r22
 406:	17 07       	cpc	r17, r23
 408:	89 f0       	breq	.+34     	; 0x42c <LBB15_10>
 40a:	fc 01       	movw	r30, r24
 40c:	a1 91       	ld	r26, Z+
 40e:	af 73       	andi	r26, 0x3F	; 63
 410:	0a 2f       	mov	r16, r26
 412:	11 27       	eor	r17, r17
 414:	cf 01       	movw	r24, r30
 416:	0c c0       	rjmp	.+24     	; 0x430 <LBB15_11>

00000418 <LBB15_9>:
 418:	22 0f       	add	r18, r18
 41a:	22 0f       	add	r18, r18
 41c:	22 0f       	add	r18, r18
 41e:	22 0f       	add	r18, r18
 420:	22 0f       	add	r18, r18
 422:	22 0f       	add	r18, r18
 424:	42 2b       	or	r20, r18
 426:	53 2b       	or	r21, r19
 428:	cf 01       	movw	r24, r30
 42a:	2d c0       	rjmp	.+90     	; 0x486 <LBB15_17>

0000042c <LBB15_10>:
 42c:	cb 01       	movw	r24, r22
 42e:	87 01       	movw	r16, r14

00000430 <LBB15_11>:
 430:	44 0f       	add	r20, r20
 432:	55 1f       	adc	r21, r21
 434:	44 0f       	add	r20, r20
 436:	55 1f       	adc	r21, r21
 438:	44 0f       	add	r20, r20
 43a:	55 1f       	adc	r21, r21
 43c:	44 0f       	add	r20, r20
 43e:	55 1f       	adc	r21, r21
 440:	44 0f       	add	r20, r20
 442:	55 1f       	adc	r21, r21
 444:	44 0f       	add	r20, r20
 446:	55 1f       	adc	r21, r21
 448:	40 2b       	or	r20, r16
 44a:	51 2b       	or	r21, r17
 44c:	20 3f       	cpi	r18, 0xF0	; 240
 44e:	48 f0       	brcs	.+18     	; 0x462 <LBB15_14>
 450:	86 17       	cp	r24, r22
 452:	97 07       	cpc	r25, r23
 454:	41 f0       	breq	.+16     	; 0x466 <LBB15_15>
 456:	dc 01       	movw	r26, r24
 458:	ed 91       	ld	r30, X+
 45a:	cd 01       	movw	r24, r26
 45c:	ef 73       	andi	r30, 0x3F	; 63
 45e:	ff 27       	eor	r31, r31
 460:	04 c0       	rjmp	.+8      	; 0x46a <LBB15_16>

00000462 <LBB15_14>:
 462:	cf 01       	movw	r24, r30
 464:	10 c0       	rjmp	.+32     	; 0x486 <LBB15_17>

00000466 <LBB15_15>:
 466:	cf 01       	movw	r24, r30
 468:	f7 01       	movw	r30, r14

0000046a <LBB15_16>:
 46a:	44 0f       	add	r20, r20
 46c:	55 1f       	adc	r21, r21
 46e:	44 0f       	add	r20, r20
 470:	55 1f       	adc	r21, r21
 472:	44 0f       	add	r20, r20
 474:	55 1f       	adc	r21, r21
 476:	44 0f       	add	r20, r20
 478:	55 1f       	adc	r21, r21
 47a:	44 0f       	add	r20, r20
 47c:	55 1f       	adc	r21, r21
 47e:	44 0f       	add	r20, r20
 480:	55 1f       	adc	r21, r21
 482:	4e 2b       	or	r20, r30
 484:	5f 2b       	or	r21, r31

00000486 <LBB15_17>:
 486:	a0 91 2a 02 	lds	r26, 0x022A
 48a:	b0 91 2b 02 	lds	r27, 0x022B
 48e:	fd 01       	movw	r30, r26
 490:	31 96       	adiw	r30, 0x01	; 1
 492:	ef 73       	andi	r30, 0x3F	; 63
 494:	f0 70       	andi	r31, 0x00	; 0
 496:	00 91 28 02 	lds	r16, 0x0228
 49a:	10 91 29 02 	lds	r17, 0x0229
 49e:	e0 17       	cp	r30, r16
 4a0:	f1 07       	cpc	r31, r17
 4a2:	09 f4       	brne	.+2      	; 0x4a6 <LBB15_18>
 4a4:	1b c0       	rjmp	.+54     	; 0x4dc <LBB15_21>

000004a6 <LBB15_18>:
 4a6:	96 01       	movw	r18, r12
 4a8:	a2 17       	cp	r26, r18
 4aa:	b3 07       	cpc	r27, r19
 4ac:	d8 f4       	brcc	.+54     	; 0x4e4 <LBB15_22>
 4ae:	a8 51       	subi	r26, 0x18	; 24
 4b0:	be 4f       	sbci	r27, 0xFE	; 254
 4b2:	4c 93       	st	X, r20
 4b4:	f0 93 2b 02 	sts	0x022B, r31
 4b8:	e0 93 2a 02 	sts	0x022A, r30
 4bc:	40 91 c1 00 	lds	r20, 0x00C1
 4c0:	40 62       	ori	r20, 0x20	; 32
 4c2:	40 93 c1 00 	sts	0x00C1, r20
 4c6:	86 17       	cp	r24, r22
 4c8:	97 07       	cpc	r25, r23
 4ca:	09 f0       	breq	.+2      	; 0x4ce <LBB15_20>
 4cc:	82 cf       	rjmp	.-252    	; 0x3d2 <LBB15_2>

000004ce <LBB15_20>:
 4ce:	1f 91       	pop	r17
 4d0:	0f 91       	pop	r16
 4d2:	ff 90       	pop	r15
 4d4:	ef 90       	pop	r14
 4d6:	df 90       	pop	r13
 4d8:	cf 90       	pop	r12
 4da:	08 95       	ret

000004dc <LBB15_21>:
 4dc:	8c e0       	ldi	r24, 0x0C	; 12
 4de:	91 e0       	ldi	r25, 0x01	; 1
 4e0:	0e 94 53 03 	call	0x6a6	; 0x6a6 <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

000004e4 <LBB15_22>:
 4e4:	8c e1       	ldi	r24, 0x1C	; 28
 4e6:	91 e0       	ldi	r25, 0x01	; 1
 4e8:	40 e4       	ldi	r20, 0x40	; 64
 4ea:	50 e0       	ldi	r21, 0x00	; 0
 4ec:	bd 01       	movw	r22, r26
 4ee:	0e 94 54 03 	call	0x6a8	; 0x6a8 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

000004f2 <_ZN6avrlib5delay8delay_ms17h231abcdf3f763f3cE>:
 4f2:	20 e0       	ldi	r18, 0x00	; 0
 4f4:	30 e0       	ldi	r19, 0x00	; 0
 4f6:	82 17       	cp	r24, r18
 4f8:	93 07       	cpc	r25, r19
 4fa:	71 f0       	breq	.+28     	; 0x518 <LBB19_5>
 4fc:	20 e0       	ldi	r18, 0x00	; 0
 4fe:	30 e0       	ldi	r19, 0x00	; 0
 500:	4a e6       	ldi	r20, 0x6A	; 106
 502:	5a e0       	ldi	r21, 0x0A	; 10
 504:	f9 01       	movw	r30, r18

00000506 <LBB19_2>:
 506:	31 96       	adiw	r30, 0x01	; 1
 508:	d9 01       	movw	r26, r18

0000050a <LBB19_3>:
 50a:	11 96       	adiw	r26, 0x01	; 1
 50c:	a4 17       	cp	r26, r20
 50e:	b5 07       	cpc	r27, r21
 510:	e0 f3       	brcs	.-8      	; 0x50a <LBB19_3>
 512:	e8 17       	cp	r30, r24
 514:	f9 07       	cpc	r31, r25
 516:	b8 f3       	brcs	.-18     	; 0x506 <LBB19_2>

00000518 <LBB19_5>:
 518:	08 95       	ret

0000051a <__vector_18>:
 51a:	0f 92       	push	r0
 51c:	1f 92       	push	r1
 51e:	0f b6       	in	r0, 0x3f	; 63
 520:	0f 92       	push	r0
 522:	00 24       	eor	r0, r0
 524:	0f 92       	push	r0
 526:	1f 92       	push	r1
 528:	2f 93       	push	r18
 52a:	3f 93       	push	r19
 52c:	4f 93       	push	r20
 52e:	5f 93       	push	r21
 530:	6f 93       	push	r22
 532:	7f 93       	push	r23
 534:	8f 93       	push	r24
 536:	9f 93       	push	r25
 538:	af 93       	push	r26
 53a:	bf 93       	push	r27
 53c:	ef 93       	push	r30
 53e:	ff 93       	push	r31
 540:	80 91 c6 00 	lds	r24, 0x00C6
 544:	a0 91 6e 02 	lds	r26, 0x026E
 548:	b0 91 6f 02 	lds	r27, 0x026F
 54c:	fd 01       	movw	r30, r26
 54e:	31 96       	adiw	r30, 0x01	; 1
 550:	ef 73       	andi	r30, 0x3F	; 63
 552:	f0 70       	andi	r31, 0x00	; 0
 554:	20 91 6c 02 	lds	r18, 0x026C
 558:	30 91 6d 02 	lds	r19, 0x026D
 55c:	e2 17       	cp	r30, r18
 55e:	f3 07       	cpc	r31, r19
 560:	09 f4       	brne	.+2      	; 0x564 <LBB32_1>
 562:	1f c0       	rjmp	.+62     	; 0x5a2 <LBB32_3>

00000564 <LBB32_1>:
 564:	20 e4       	ldi	r18, 0x40	; 64
 566:	30 e0       	ldi	r19, 0x00	; 0
 568:	a2 17       	cp	r26, r18
 56a:	b3 07       	cpc	r27, r19
 56c:	f0 f4       	brcc	.+60     	; 0x5aa <LBB32_4>
 56e:	a4 5d       	subi	r26, 0xD4	; 212
 570:	bd 4f       	sbci	r27, 0xFD	; 253
 572:	8c 93       	st	X, r24
 574:	f0 93 6f 02 	sts	0x026F, r31
 578:	e0 93 6e 02 	sts	0x026E, r30
 57c:	ff 91       	pop	r31
 57e:	ef 91       	pop	r30
 580:	bf 91       	pop	r27
 582:	af 91       	pop	r26
 584:	9f 91       	pop	r25
 586:	8f 91       	pop	r24
 588:	7f 91       	pop	r23
 58a:	6f 91       	pop	r22
 58c:	5f 91       	pop	r21
 58e:	4f 91       	pop	r20
 590:	3f 91       	pop	r19
 592:	2f 91       	pop	r18
 594:	1f 90       	pop	r1
 596:	0f 90       	pop	r0
 598:	0f 90       	pop	r0
 59a:	0f be       	out	0x3f, r0	; 63
 59c:	1f 90       	pop	r1
 59e:	0f 90       	pop	r0
 5a0:	18 95       	reti

000005a2 <LBB32_3>:
 5a2:	8c e0       	ldi	r24, 0x0C	; 12
 5a4:	91 e0       	ldi	r25, 0x01	; 1
 5a6:	0e 94 53 03 	call	0x6a6	; 0x6a6 <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

000005aa <LBB32_4>:
 5aa:	8c e1       	ldi	r24, 0x1C	; 28
 5ac:	91 e0       	ldi	r25, 0x01	; 1
 5ae:	40 e4       	ldi	r20, 0x40	; 64
 5b0:	50 e0       	ldi	r21, 0x00	; 0
 5b2:	bd 01       	movw	r22, r26
 5b4:	0e 94 54 03 	call	0x6a8	; 0x6a8 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

000005b8 <__vector_19>:
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
 5de:	e0 91 28 02 	lds	r30, 0x0228
 5e2:	f0 91 29 02 	lds	r31, 0x0229
 5e6:	80 91 2a 02 	lds	r24, 0x022A
 5ea:	90 91 2b 02 	lds	r25, 0x022B
 5ee:	e8 17       	cp	r30, r24
 5f0:	f9 07       	cpc	r31, r25
 5f2:	31 f4       	brne	.+12     	; 0x600 <LBB33_2>
 5f4:	80 91 c1 00 	lds	r24, 0x00C1
 5f8:	8f 7d       	andi	r24, 0xDF	; 223
 5fa:	80 93 c1 00 	sts	0x00C1, r24
 5fe:	13 c0       	rjmp	.+38     	; 0x626 <LBB33_4>

00000600 <LBB33_2>:
 600:	80 e4       	ldi	r24, 0x40	; 64
 602:	90 e0       	ldi	r25, 0x00	; 0
 604:	e8 17       	cp	r30, r24
 606:	f9 07       	cpc	r31, r25
 608:	08 f0       	brcs	.+2      	; 0x60c <LBB33_3>
 60a:	20 c0       	rjmp	.+64     	; 0x64c <LBB33_5>

0000060c <LBB33_3>:
 60c:	df 01       	movw	r26, r30
 60e:	a8 51       	subi	r26, 0x18	; 24
 610:	be 4f       	sbci	r27, 0xFE	; 254
 612:	8c 91       	ld	r24, X
 614:	31 96       	adiw	r30, 0x01	; 1
 616:	ef 73       	andi	r30, 0x3F	; 63
 618:	f0 70       	andi	r31, 0x00	; 0
 61a:	f0 93 29 02 	sts	0x0229, r31
 61e:	e0 93 28 02 	sts	0x0228, r30
 622:	80 93 c6 00 	sts	0x00C6, r24

00000626 <LBB33_4>:
 626:	ff 91       	pop	r31
 628:	ef 91       	pop	r30
 62a:	bf 91       	pop	r27
 62c:	af 91       	pop	r26
 62e:	9f 91       	pop	r25
 630:	8f 91       	pop	r24
 632:	7f 91       	pop	r23
 634:	6f 91       	pop	r22
 636:	5f 91       	pop	r21
 638:	4f 91       	pop	r20
 63a:	3f 91       	pop	r19
 63c:	2f 91       	pop	r18
 63e:	1f 90       	pop	r1
 640:	0f 90       	pop	r0
 642:	0f 90       	pop	r0
 644:	0f be       	out	0x3f, r0	; 63
 646:	1f 90       	pop	r1
 648:	0f 90       	pop	r0
 64a:	18 95       	reti

0000064c <LBB33_5>:
 64c:	88 e2       	ldi	r24, 0x28	; 40
 64e:	91 e0       	ldi	r25, 0x01	; 1
 650:	40 e4       	ldi	r20, 0x40	; 64
 652:	50 e0       	ldi	r21, 0x00	; 0
 654:	bf 01       	movw	r22, r30
 656:	0e 94 54 03 	call	0x6a8	; 0x6a8 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

0000065a <__vector_14>:
 65a:	0f 92       	push	r0
 65c:	1f 92       	push	r1
 65e:	0f b6       	in	r0, 0x3f	; 63
 660:	0f 92       	push	r0
 662:	00 24       	eor	r0, r0
 664:	2f 93       	push	r18
 666:	3f 93       	push	r19
 668:	8f 93       	push	r24
 66a:	9f 93       	push	r25
 66c:	80 91 e4 01 	lds	r24, 0x01E4
 670:	90 91 e5 01 	lds	r25, 0x01E5
 674:	20 91 e6 01 	lds	r18, 0x01E6
 678:	30 91 e7 01 	lds	r19, 0x01E7
 67c:	8f 5f       	subi	r24, 0xFF	; 255
 67e:	9f 4f       	sbci	r25, 0xFF	; 255
 680:	2f 4f       	sbci	r18, 0xFF	; 255
 682:	3f 4f       	sbci	r19, 0xFF	; 255
 684:	30 93 e7 01 	sts	0x01E7, r19
 688:	20 93 e6 01 	sts	0x01E6, r18
 68c:	90 93 e5 01 	sts	0x01E5, r25
 690:	80 93 e4 01 	sts	0x01E4, r24
 694:	9f 91       	pop	r25
 696:	8f 91       	pop	r24
 698:	3f 91       	pop	r19
 69a:	2f 91       	pop	r18
 69c:	0f 90       	pop	r0
 69e:	0f be       	out	0x3f, r0	; 63
 6a0:	1f 90       	pop	r1
 6a2:	0f 90       	pop	r0
 6a4:	18 95       	reti

000006a6 <_ZN4core9panicking5panic17hb168f5b3c00eca08E>:
 6a6:	ff cf       	rjmp	.-2      	; 0x6a6 <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

000006a8 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>:
 6a8:	ff cf       	rjmp	.-2      	; 0x6a8 <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

000006aa <_exit>:
 6aa:	f8 94       	cli

000006ac <__stop_program>:
 6ac:	ff cf       	rjmp	.-2      	; 0x6ac <__stop_program>

Disassembly of section .bss:

008001e4 <__bss_start>:
  8001e4:	00 00       	nop
	...

008001e8 <_ZN6avrlib4uart7TX_FIFO17h69c1cda48df8d8a7E>:
	...

0080022c <_ZN6avrlib4uart7RX_FIFO17h06d6d39800eba9aeE>:
	...

Disassembly of section .note.gnu.avr.deviceinfo:

00000000 <_end-0x800270>:
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
