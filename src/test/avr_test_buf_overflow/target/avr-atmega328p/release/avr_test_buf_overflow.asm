
target/avr-atmega328p/release/avr_test_buf_overflow.elf:     Dateiformat elf32-avr


Disassembly of section .data:

00800100 <__data_start>:
  800100:	b3 00       	.word	0x00b3	; ????
  800102:	0b 00       	.word	0x000b	; ????
  800104:	47 00       	.word	0x0047	; ????
  800106:	00 00       	nop
  800108:	04 00       	.word	0x0004	; ????
	...

0080010c <ref.5>:
  80010c:	00 00       	nop
  80010e:	0e 00       	.word	0x000e	; ????
  800110:	c0 00       	.word	0x00c0	; ????
  800112:	33 00       	.word	0x0033	; ????
  800114:	30 00       	.word	0x0030	; ????
  800116:	00 00       	nop
  800118:	08 00       	.word	0x0008	; ????
	...

0080011c <panic_bounds_check_loc.7>:
  80011c:	c0 00       	.word	0x00c0	; ????
  80011e:	33 00       	.word	0x0033	; ????
  800120:	31 00       	.word	0x0031	; ????
  800122:	00 00       	nop
  800124:	09 00       	.word	0x0009	; ????
	...

00800128 <panic_bounds_check_loc.a>:
  800128:	c0 00       	.word	0x00c0	; ????
  80012a:	33 00       	.word	0x0033	; ????
  80012c:	37 00       	.word	0x0037	; ????
  80012e:	00 00       	nop
  800130:	14 00       	.word	0x0014	; ????
	...

00800134 <ref.c>:
  800134:	00 00       	nop
  800136:	0e 00       	.word	0x000e	; ????
  800138:	e0 00       	.word	0x00e0	; ????
  80013a:	33 00       	.word	0x0033	; ????
  80013c:	3d 00       	.word	0x003d	; ????
  80013e:	00 00       	nop
  800140:	04 00       	.word	0x0004	; ????
	...

00800150 <str.1>:
  800150:	61 76       	andi	r22, 0x61	; 97
  800152:	72 5f       	subi	r23, 0xF2	; 242
  800154:	74 65       	ori	r23, 0x54	; 84
  800156:	73 74       	andi	r23, 0x43	; 67
  800158:	5f 62       	ori	r21, 0x2F	; 47
  80015a:	75 66       	ori	r23, 0x65	; 101
  80015c:	5f 6f       	ori	r21, 0xFF	; 255
  80015e:	76 65       	ori	r23, 0x56	; 86
  800160:	72 66       	ori	r23, 0x62	; 98
  800162:	6c 6f       	ori	r22, 0xFC	; 252
  800164:	77 0a       	sbc	r7, r23

00800165 <str.2>:
  800165:	0a 73       	andi	r16, 0x3A	; 58

00800166 <str.3>:
  800166:	73 72       	andi	r23, 0x23	; 35
  800168:	63 2f       	mov	r22, r19
  80016a:	6d 61       	ori	r22, 0x1D	; 29
  80016c:	69 6e       	ori	r22, 0xE9	; 233
  80016e:	2e 72       	andi	r18, 0x2E	; 46
  800170:	73 65       	ori	r23, 0x53	; 83

00800171 <str.3>:
  800171:	65 78       	andi	r22, 0x85	; 133
  800173:	70 6c       	ori	r23, 0xC0	; 192
  800175:	69 63       	ori	r22, 0x39	; 57
  800177:	69 74       	andi	r22, 0x49	; 73
  800179:	20 70       	andi	r18, 0x00	; 0
  80017b:	61 6e       	ori	r22, 0xE1	; 225
  80017d:	69 63       	ori	r22, 0x39	; 57
	...

00800180 <str.4>:
  800180:	2f 68       	ori	r18, 0x8F	; 143
  800182:	6f 6d       	ori	r22, 0xDF	; 223
  800184:	65 2f       	mov	r22, r21
  800186:	75 73       	andi	r23, 0x35	; 53
  800188:	65 72       	andi	r22, 0x25	; 37
  80018a:	2f 44       	sbci	r18, 0x4F	; 79
  80018c:	65 76       	andi	r22, 0x65	; 101
  80018e:	2f 45       	sbci	r18, 0x5F	; 95
  800190:	6d 62       	ori	r22, 0x2D	; 45
  800192:	65 64       	ori	r22, 0x45	; 69
  800194:	64 65       	ori	r22, 0x54	; 84
  800196:	64 2d       	mov	r22, r4
  800198:	52 75       	andi	r21, 0x52	; 82
  80019a:	73 74       	andi	r23, 0x43	; 67
  80019c:	2f 73       	andi	r18, 0x3F	; 63
  80019e:	72 63       	ori	r23, 0x32	; 50
  8001a0:	2f 61       	ori	r18, 0x1F	; 31
  8001a2:	76 72       	andi	r23, 0x26	; 38
  8001a4:	6c 69       	ori	r22, 0x9C	; 156
  8001a6:	62 2f       	mov	r22, r18
  8001a8:	73 72       	andi	r23, 0x23	; 35
  8001aa:	63 2f       	mov	r22, r19
  8001ac:	66 69       	ori	r22, 0x96	; 150
  8001ae:	66 6f       	ori	r22, 0xF6	; 246
  8001b0:	2e 72       	andi	r18, 0x2E	; 46
  8001b2:	73 00       	.word	0x0073	; ????
	...

008001c0 <str.b>:
  8001c0:	2f 68       	ori	r18, 0x8F	; 143
  8001c2:	6f 6d       	ori	r22, 0xDF	; 223
  8001c4:	65 2f       	mov	r22, r21
  8001c6:	75 73       	andi	r23, 0x35	; 53
  8001c8:	65 72       	andi	r22, 0x25	; 37
  8001ca:	2f 44       	sbci	r18, 0x4F	; 79
  8001cc:	65 76       	andi	r22, 0x65	; 101
  8001ce:	2f 45       	sbci	r18, 0x5F	; 95
  8001d0:	6d 62       	ori	r22, 0x2D	; 45
  8001d2:	65 64       	ori	r22, 0x45	; 69
  8001d4:	64 65       	ori	r22, 0x54	; 84
  8001d6:	64 2d       	mov	r22, r4
  8001d8:	52 75       	andi	r21, 0x52	; 82
  8001da:	73 74       	andi	r23, 0x43	; 67
  8001dc:	2f 73       	andi	r18, 0x3F	; 63
  8001de:	72 63       	ori	r23, 0x32	; 50
  8001e0:	2f 61       	ori	r18, 0x1F	; 31
  8001e2:	76 72       	andi	r23, 0x26	; 38
  8001e4:	6c 69       	ori	r22, 0x9C	; 156
  8001e6:	62 2f       	mov	r22, r18
  8001e8:	73 72       	andi	r23, 0x23	; 35
  8001ea:	63 2f       	mov	r22, r19
  8001ec:	75 61       	ori	r23, 0x15	; 21
  8001ee:	72 74       	andi	r23, 0x42	; 66
  8001f0:	2e 72       	andi	r18, 0x2E	; 46
  8001f2:	73 00       	.word	0x0073	; ????

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
  38:	0c 94 c7 02 	jmp	0x58e	; 0x58e <__vector_14>
  3c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  40:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  44:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  48:	0c 94 27 02 	jmp	0x44e	; 0x44e <__vector_18>
  4c:	0c 94 76 02 	jmp	0x4ec	; 0x4ec <__vector_19>
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
  7a:	e2 ee       	ldi	r30, 0xE2	; 226
  7c:	f5 e0       	ldi	r31, 0x05	; 5
  7e:	02 c0       	rjmp	.+4      	; 0x84 <__do_copy_data+0x10>
  80:	05 90       	lpm	r0, Z+
  82:	0d 92       	st	X+, r0
  84:	a4 3f       	cpi	r26, 0xF4	; 244
  86:	b1 07       	cpc	r27, r17
  88:	d9 f7       	brne	.-10     	; 0x80 <__do_copy_data+0xc>

0000008a <__do_clear_bss>:
  8a:	22 e0       	ldi	r18, 0x02	; 2
  8c:	a4 ef       	ldi	r26, 0xF4	; 244
  8e:	b1 e0       	ldi	r27, 0x01	; 1
  90:	01 c0       	rjmp	.+2      	; 0x94 <.do_clear_bss_start>

00000092 <.do_clear_bss_loop>:
  92:	1d 92       	st	X+, r1

00000094 <.do_clear_bss_start>:
  94:	a0 38       	cpi	r26, 0x80	; 128
  96:	b2 07       	cpc	r27, r18
  98:	e1 f7       	brne	.-8      	; 0x92 <.do_clear_bss_loop>
  9a:	0e 94 53 00 	call	0xa6	; 0xa6 <main>
  9e:	0c 94 ef 02 	jmp	0x5de	; 0x5de <_exit>

000000a2 <__bad_interrupt>:
  a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <main>:
  a6:	cf 93       	push	r28
  a8:	df 93       	push	r29
  aa:	2f 92       	push	r2
  ac:	3f 92       	push	r3
  ae:	4f 92       	push	r4
  b0:	5f 92       	push	r5
  b2:	6f 92       	push	r6
  b4:	7f 92       	push	r7
  b6:	8f 92       	push	r8
  b8:	9f 92       	push	r9
  ba:	af 92       	push	r10
  bc:	bf 92       	push	r11
  be:	cf 92       	push	r12
  c0:	df 92       	push	r13
  c2:	ef 92       	push	r14
  c4:	ff 92       	push	r15
  c6:	0f 93       	push	r16
  c8:	1f 93       	push	r17
  ca:	cd b7       	in	r28, 0x3d	; 61
  cc:	de b7       	in	r29, 0x3e	; 62
  ce:	25 97       	sbiw	r28, 0x05	; 5
  d0:	0f b6       	in	r0, 0x3f	; 63
  d2:	f8 94       	cli
  d4:	de bf       	out	0x3e, r29	; 62
  d6:	0f be       	out	0x3f, r0	; 63
  d8:	cd bf       	out	0x3d, r28	; 61
  da:	f8 94       	cli
  dc:	a8 95       	wdr
  de:	84 b7       	in	r24, 0x34	; 52
  e0:	87 7f       	andi	r24, 0xF7	; 247
  e2:	84 bf       	out	0x34, r24	; 52
  e4:	80 91 60 00 	lds	r24, 0x0060
  e8:	88 61       	ori	r24, 0x18	; 24
  ea:	80 93 60 00 	sts	0x0060, r24
  ee:	80 e0       	ldi	r24, 0x00	; 0
  f0:	80 93 60 00 	sts	0x0060, r24
  f4:	78 94       	sei
  f6:	25 9a       	sbi	0x04, 5	; 4
  f8:	2d 9a       	sbi	0x05, 5	; 5
  fa:	0e 94 d1 00 	call	0x1a2	; 0x1a2 <_ZN6avrlib4uart4init17h3839464f3cc1af6bE>
  fe:	78 94       	sei
 100:	80 e5       	ldi	r24, 0x50	; 80
 102:	91 e0       	ldi	r25, 0x01	; 1
 104:	65 e1       	ldi	r22, 0x15	; 21
 106:	70 e0       	ldi	r23, 0x00	; 0
 108:	0e 94 29 01 	call	0x252	; 0x252 <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>
 10c:	85 e6       	ldi	r24, 0x65	; 101
 10e:	91 e0       	ldi	r25, 0x01	; 1
 110:	61 e0       	ldi	r22, 0x01	; 1
 112:	70 e0       	ldi	r23, 0x00	; 0
 114:	7c 01       	movw	r14, r24
 116:	6b 01       	movw	r12, r22
 118:	0e 94 29 01 	call	0x252	; 0x252 <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>
 11c:	82 e4       	ldi	r24, 0x42	; 66
 11e:	8d 83       	std	Y+5, r24	; 0x05
 120:	82 e4       	ldi	r24, 0x42	; 66
 122:	92 e4       	ldi	r25, 0x42	; 66
 124:	8b 83       	std	Y+3, r24	; 0x03
 126:	9c 83       	std	Y+4, r25	; 0x04
 128:	89 83       	std	Y+1, r24	; 0x01
 12a:	9a 83       	std	Y+2, r25	; 0x02
 12c:	00 e0       	ldi	r16, 0x00	; 0
 12e:	10 e0       	ldi	r17, 0x00	; 0
 130:	88 ee       	ldi	r24, 0xE8	; 232
 132:	93 e0       	ldi	r25, 0x03	; 3
 134:	4c 01       	movw	r8, r24
 136:	ce 01       	movw	r24, r28
 138:	01 96       	adiw	r24, 0x01	; 1
 13a:	3c 01       	movw	r6, r24
 13c:	85 e0       	ldi	r24, 0x05	; 5
 13e:	90 e0       	ldi	r25, 0x00	; 0
 140:	2c 01       	movw	r4, r24
 142:	18 01       	movw	r2, r16
 144:	58 01       	movw	r10, r16
 146:	08 c0       	rjmp	.+16     	; 0x158 <LBB2_2>

00000148 <LBB2_1>:
 148:	93 01       	movw	r18, r6
 14a:	d9 01       	movw	r26, r18
 14c:	ae 0f       	add	r26, r30
 14e:	bf 1f       	adc	r27, r31
 150:	8c 93       	st	X, r24
 152:	31 96       	adiw	r30, 0x01	; 1
 154:	1f 01       	movw	r2, r30
 156:	85 01       	movw	r16, r10

00000158 <LBB2_2>:
 158:	0e 94 cd 01 	call	0x39a	; 0x39a <_ZN6avrlib4uart17received_data_cnt17hdd2f212db4d41157E>
 15c:	80 17       	cp	r24, r16
 15e:	91 07       	cpc	r25, r17
 160:	41 f0       	breq	.+16     	; 0x172 <LBB2_4>
 162:	0e 94 ec 01 	call	0x3d8	; 0x3d8 <_ZN6avrlib4uart6get_u817h8390b86fb82135a0E>
 166:	92 01       	movw	r18, r4
 168:	f1 01       	movw	r30, r2
 16a:	e2 17       	cp	r30, r18
 16c:	f3 07       	cpc	r31, r19
 16e:	60 f3       	brcs	.-40     	; 0x148 <LBB2_1>
 170:	11 c0       	rjmp	.+34     	; 0x194 <LBB2_7>

00000172 <LBB2_4>:
 172:	20 16       	cp	r2, r16
 174:	31 06       	cpc	r3, r17
 176:	21 f0       	breq	.+8      	; 0x180 <LBB2_6>
 178:	c3 01       	movw	r24, r6
 17a:	b2 01       	movw	r22, r4
 17c:	0e 94 e8 00 	call	0x1d0	; 0x1d0 <_ZN6avrlib4uart10put_u8_arr17h9de83b577b64f971E>

00000180 <LBB2_6>:
 180:	c7 01       	movw	r24, r14
 182:	b6 01       	movw	r22, r12
 184:	0e 94 29 01 	call	0x252	; 0x252 <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>
 188:	c4 01       	movw	r24, r8
 18a:	0e 94 13 02 	call	0x426	; 0x426 <_ZN6avrlib5delay8delay_ms17h231abcdf3f763f3cE>
 18e:	85 01       	movw	r16, r10
 190:	18 01       	movw	r2, r16
 192:	e2 cf       	rjmp	.-60     	; 0x158 <LBB2_2>

00000194 <LBB2_7>:
 194:	80 e0       	ldi	r24, 0x00	; 0
 196:	91 e0       	ldi	r25, 0x01	; 1
 198:	45 e0       	ldi	r20, 0x05	; 5
 19a:	50 e0       	ldi	r21, 0x00	; 0
 19c:	bf 01       	movw	r22, r30
 19e:	0e 94 ee 02 	call	0x5dc	; 0x5dc <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

000001a2 <_ZN6avrlib4uart4init17h3839464f3cc1af6bE>:
 1a2:	80 e0       	ldi	r24, 0x00	; 0
 1a4:	80 93 c5 00 	sts	0x00C5, r24
 1a8:	80 e1       	ldi	r24, 0x10	; 16
 1aa:	80 93 c4 00 	sts	0x00C4, r24
 1ae:	80 91 c0 00 	lds	r24, 0x00C0
 1b2:	82 60       	ori	r24, 0x02	; 2
 1b4:	80 93 c0 00 	sts	0x00C0, r24
 1b8:	88 e1       	ldi	r24, 0x18	; 24
 1ba:	80 93 c1 00 	sts	0x00C1, r24
 1be:	86 e0       	ldi	r24, 0x06	; 6
 1c0:	80 93 c2 00 	sts	0x00C2, r24
 1c4:	80 91 c1 00 	lds	r24, 0x00C1
 1c8:	80 68       	ori	r24, 0x80	; 128
 1ca:	80 93 c1 00 	sts	0x00C1, r24
 1ce:	08 95       	ret

000001d0 <_ZN6avrlib4uart10put_u8_arr17h9de83b577b64f971E>:
 1d0:	0f 93       	push	r16
 1d2:	1f 93       	push	r17
 1d4:	dc 01       	movw	r26, r24
 1d6:	80 e0       	ldi	r24, 0x00	; 0
 1d8:	90 e0       	ldi	r25, 0x00	; 0
 1da:	68 17       	cp	r22, r24
 1dc:	79 07       	cpc	r23, r25
 1de:	09 f4       	brne	.+2      	; 0x1e2 <LBB14_1>
 1e0:	2a c0       	rjmp	.+84     	; 0x236 <LBB14_5>

000001e2 <LBB14_1>:
 1e2:	6a 0f       	add	r22, r26
 1e4:	7b 1f       	adc	r23, r27
 1e6:	80 e4       	ldi	r24, 0x40	; 64
 1e8:	90 e0       	ldi	r25, 0x00	; 0

000001ea <LBB14_2>:
 1ea:	2d 91       	ld	r18, X+
 1ec:	8d 01       	movw	r16, r26
 1ee:	a0 91 3a 02 	lds	r26, 0x023A
 1f2:	b0 91 3b 02 	lds	r27, 0x023B
 1f6:	fd 01       	movw	r30, r26
 1f8:	31 96       	adiw	r30, 0x01	; 1
 1fa:	ef 73       	andi	r30, 0x3F	; 63
 1fc:	f0 70       	andi	r31, 0x00	; 0
 1fe:	40 91 38 02 	lds	r20, 0x0238
 202:	50 91 39 02 	lds	r21, 0x0239
 206:	e4 17       	cp	r30, r20
 208:	f5 07       	cpc	r31, r21
 20a:	09 f4       	brne	.+2      	; 0x20e <LBB14_3>
 20c:	17 c0       	rjmp	.+46     	; 0x23c <LBB14_6>

0000020e <LBB14_3>:
 20e:	a8 17       	cp	r26, r24
 210:	b9 07       	cpc	r27, r25
 212:	c0 f4       	brcc	.+48     	; 0x244 <LBB14_7>
 214:	a8 50       	subi	r26, 0x08	; 8
 216:	be 4f       	sbci	r27, 0xFE	; 254
 218:	2c 93       	st	X, r18
 21a:	f0 93 3b 02 	sts	0x023B, r31
 21e:	e0 93 3a 02 	sts	0x023A, r30
 222:	20 91 c1 00 	lds	r18, 0x00C1
 226:	20 62       	ori	r18, 0x20	; 32
 228:	20 93 c1 00 	sts	0x00C1, r18
 22c:	d8 01       	movw	r26, r16
 22e:	a6 17       	cp	r26, r22
 230:	b7 07       	cpc	r27, r23
 232:	09 f0       	breq	.+2      	; 0x236 <LBB14_5>
 234:	da cf       	rjmp	.-76     	; 0x1ea <LBB14_2>

00000236 <LBB14_5>:
 236:	1f 91       	pop	r17
 238:	0f 91       	pop	r16
 23a:	08 95       	ret

0000023c <LBB14_6>:
 23c:	8c e0       	ldi	r24, 0x0C	; 12
 23e:	91 e0       	ldi	r25, 0x01	; 1
 240:	0e 94 ed 02 	call	0x5da	; 0x5da <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

00000244 <LBB14_7>:
 244:	8c e1       	ldi	r24, 0x1C	; 28
 246:	91 e0       	ldi	r25, 0x01	; 1
 248:	40 e4       	ldi	r20, 0x40	; 64
 24a:	50 e0       	ldi	r21, 0x00	; 0
 24c:	bd 01       	movw	r22, r26
 24e:	0e 94 ee 02 	call	0x5dc	; 0x5dc <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

00000252 <_ZN6avrlib4uart7put_str17h8f3c0579a697634eE>:
 252:	cf 92       	push	r12
 254:	df 92       	push	r13
 256:	ef 92       	push	r14
 258:	ff 92       	push	r15
 25a:	0f 93       	push	r16
 25c:	1f 93       	push	r17
 25e:	20 e0       	ldi	r18, 0x00	; 0
 260:	30 e0       	ldi	r19, 0x00	; 0
 262:	62 17       	cp	r22, r18
 264:	73 07       	cpc	r23, r19
 266:	09 f4       	brne	.+2      	; 0x26a <LBB15_1>
 268:	86 c0       	rjmp	.+268    	; 0x376 <LBB15_20>

0000026a <LBB15_1>:
 26a:	68 0f       	add	r22, r24
 26c:	79 1f       	adc	r23, r25
 26e:	20 e4       	ldi	r18, 0x40	; 64
 270:	30 e0       	ldi	r19, 0x00	; 0
 272:	69 01       	movw	r12, r18
 274:	40 e0       	ldi	r20, 0x00	; 0
 276:	50 e0       	ldi	r21, 0x00	; 0
 278:	7a 01       	movw	r14, r20

0000027a <LBB15_2>:
 27a:	fc 01       	movw	r30, r24
 27c:	21 91       	ld	r18, Z+
 27e:	22 23       	and	r18, r18
 280:	1a f0       	brmi	.+6      	; 0x288 <LBB15_4>
 282:	cf 01       	movw	r24, r30
 284:	42 2f       	mov	r20, r18
 286:	53 c0       	rjmp	.+166    	; 0x32e <LBB15_17>

00000288 <LBB15_4>:
 288:	e6 17       	cp	r30, r22
 28a:	f7 07       	cpc	r31, r23
 28c:	49 f0       	breq	.+18     	; 0x2a0 <LBB15_6>
 28e:	02 96       	adiw	r24, 0x02	; 2
 290:	40 81       	ld	r20, Z
 292:	4f 73       	andi	r20, 0x3F	; 63
 294:	55 27       	eor	r21, r21
 296:	8c 01       	movw	r16, r24
 298:	fc 01       	movw	r30, r24
 29a:	20 3e       	cpi	r18, 0xE0	; 224
 29c:	30 f4       	brcc	.+12     	; 0x2aa <LBB15_7>
 29e:	10 c0       	rjmp	.+32     	; 0x2c0 <LBB15_9>

000002a0 <LBB15_6>:
 2a0:	8b 01       	movw	r16, r22
 2a2:	c7 01       	movw	r24, r14
 2a4:	ac 01       	movw	r20, r24
 2a6:	20 3e       	cpi	r18, 0xE0	; 224
 2a8:	58 f0       	brcs	.+22     	; 0x2c0 <LBB15_9>

000002aa <LBB15_7>:
 2aa:	c8 01       	movw	r24, r16
 2ac:	06 17       	cp	r16, r22
 2ae:	17 07       	cpc	r17, r23
 2b0:	89 f0       	breq	.+34     	; 0x2d4 <LBB15_10>
 2b2:	fc 01       	movw	r30, r24
 2b4:	a1 91       	ld	r26, Z+
 2b6:	af 73       	andi	r26, 0x3F	; 63
 2b8:	0a 2f       	mov	r16, r26
 2ba:	11 27       	eor	r17, r17
 2bc:	cf 01       	movw	r24, r30
 2be:	0c c0       	rjmp	.+24     	; 0x2d8 <LBB15_11>

000002c0 <LBB15_9>:
 2c0:	22 0f       	add	r18, r18
 2c2:	22 0f       	add	r18, r18
 2c4:	22 0f       	add	r18, r18
 2c6:	22 0f       	add	r18, r18
 2c8:	22 0f       	add	r18, r18
 2ca:	22 0f       	add	r18, r18
 2cc:	42 2b       	or	r20, r18
 2ce:	53 2b       	or	r21, r19
 2d0:	cf 01       	movw	r24, r30
 2d2:	2d c0       	rjmp	.+90     	; 0x32e <LBB15_17>

000002d4 <LBB15_10>:
 2d4:	cb 01       	movw	r24, r22
 2d6:	87 01       	movw	r16, r14

000002d8 <LBB15_11>:
 2d8:	44 0f       	add	r20, r20
 2da:	55 1f       	adc	r21, r21
 2dc:	44 0f       	add	r20, r20
 2de:	55 1f       	adc	r21, r21
 2e0:	44 0f       	add	r20, r20
 2e2:	55 1f       	adc	r21, r21
 2e4:	44 0f       	add	r20, r20
 2e6:	55 1f       	adc	r21, r21
 2e8:	44 0f       	add	r20, r20
 2ea:	55 1f       	adc	r21, r21
 2ec:	44 0f       	add	r20, r20
 2ee:	55 1f       	adc	r21, r21
 2f0:	40 2b       	or	r20, r16
 2f2:	51 2b       	or	r21, r17
 2f4:	20 3f       	cpi	r18, 0xF0	; 240
 2f6:	48 f0       	brcs	.+18     	; 0x30a <LBB15_14>
 2f8:	86 17       	cp	r24, r22
 2fa:	97 07       	cpc	r25, r23
 2fc:	41 f0       	breq	.+16     	; 0x30e <LBB15_15>
 2fe:	dc 01       	movw	r26, r24
 300:	ed 91       	ld	r30, X+
 302:	cd 01       	movw	r24, r26
 304:	ef 73       	andi	r30, 0x3F	; 63
 306:	ff 27       	eor	r31, r31
 308:	04 c0       	rjmp	.+8      	; 0x312 <LBB15_16>

0000030a <LBB15_14>:
 30a:	cf 01       	movw	r24, r30
 30c:	10 c0       	rjmp	.+32     	; 0x32e <LBB15_17>

0000030e <LBB15_15>:
 30e:	cf 01       	movw	r24, r30
 310:	f7 01       	movw	r30, r14

00000312 <LBB15_16>:
 312:	44 0f       	add	r20, r20
 314:	55 1f       	adc	r21, r21
 316:	44 0f       	add	r20, r20
 318:	55 1f       	adc	r21, r21
 31a:	44 0f       	add	r20, r20
 31c:	55 1f       	adc	r21, r21
 31e:	44 0f       	add	r20, r20
 320:	55 1f       	adc	r21, r21
 322:	44 0f       	add	r20, r20
 324:	55 1f       	adc	r21, r21
 326:	44 0f       	add	r20, r20
 328:	55 1f       	adc	r21, r21
 32a:	4e 2b       	or	r20, r30
 32c:	5f 2b       	or	r21, r31

0000032e <LBB15_17>:
 32e:	a0 91 3a 02 	lds	r26, 0x023A
 332:	b0 91 3b 02 	lds	r27, 0x023B
 336:	fd 01       	movw	r30, r26
 338:	31 96       	adiw	r30, 0x01	; 1
 33a:	ef 73       	andi	r30, 0x3F	; 63
 33c:	f0 70       	andi	r31, 0x00	; 0
 33e:	00 91 38 02 	lds	r16, 0x0238
 342:	10 91 39 02 	lds	r17, 0x0239
 346:	e0 17       	cp	r30, r16
 348:	f1 07       	cpc	r31, r17
 34a:	09 f4       	brne	.+2      	; 0x34e <LBB15_18>
 34c:	1b c0       	rjmp	.+54     	; 0x384 <LBB15_21>

0000034e <LBB15_18>:
 34e:	96 01       	movw	r18, r12
 350:	a2 17       	cp	r26, r18
 352:	b3 07       	cpc	r27, r19
 354:	d8 f4       	brcc	.+54     	; 0x38c <LBB15_22>
 356:	a8 50       	subi	r26, 0x08	; 8
 358:	be 4f       	sbci	r27, 0xFE	; 254
 35a:	4c 93       	st	X, r20
 35c:	f0 93 3b 02 	sts	0x023B, r31
 360:	e0 93 3a 02 	sts	0x023A, r30
 364:	40 91 c1 00 	lds	r20, 0x00C1
 368:	40 62       	ori	r20, 0x20	; 32
 36a:	40 93 c1 00 	sts	0x00C1, r20
 36e:	86 17       	cp	r24, r22
 370:	97 07       	cpc	r25, r23
 372:	09 f0       	breq	.+2      	; 0x376 <LBB15_20>
 374:	82 cf       	rjmp	.-252    	; 0x27a <LBB15_2>

00000376 <LBB15_20>:
 376:	1f 91       	pop	r17
 378:	0f 91       	pop	r16
 37a:	ff 90       	pop	r15
 37c:	ef 90       	pop	r14
 37e:	df 90       	pop	r13
 380:	cf 90       	pop	r12
 382:	08 95       	ret

00000384 <LBB15_21>:
 384:	8c e0       	ldi	r24, 0x0C	; 12
 386:	91 e0       	ldi	r25, 0x01	; 1
 388:	0e 94 ed 02 	call	0x5da	; 0x5da <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

0000038c <LBB15_22>:
 38c:	8c e1       	ldi	r24, 0x1C	; 28
 38e:	91 e0       	ldi	r25, 0x01	; 1
 390:	40 e4       	ldi	r20, 0x40	; 64
 392:	50 e0       	ldi	r21, 0x00	; 0
 394:	bd 01       	movw	r22, r26
 396:	0e 94 ee 02 	call	0x5dc	; 0x5dc <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

0000039a <_ZN6avrlib4uart17received_data_cnt17hdd2f212db4d41157E>:
 39a:	20 91 7c 02 	lds	r18, 0x027C
 39e:	30 91 7d 02 	lds	r19, 0x027D
 3a2:	80 91 7e 02 	lds	r24, 0x027E
 3a6:	90 91 7f 02 	lds	r25, 0x027F
 3aa:	41 e0       	ldi	r20, 0x01	; 1
 3ac:	82 17       	cp	r24, r18
 3ae:	93 07       	cpc	r25, r19
 3b0:	08 f0       	brcs	.+2      	; 0x3b4 <LBB17_2>
 3b2:	40 e0       	ldi	r20, 0x00	; 0

000003b4 <LBB17_2>:
 3b4:	55 27       	eor	r21, r21
 3b6:	44 0f       	add	r20, r20
 3b8:	55 1f       	adc	r21, r21
 3ba:	44 0f       	add	r20, r20
 3bc:	55 1f       	adc	r21, r21
 3be:	44 0f       	add	r20, r20
 3c0:	55 1f       	adc	r21, r21
 3c2:	44 0f       	add	r20, r20
 3c4:	55 1f       	adc	r21, r21
 3c6:	44 0f       	add	r20, r20
 3c8:	55 1f       	adc	r21, r21
 3ca:	44 0f       	add	r20, r20
 3cc:	55 1f       	adc	r21, r21
 3ce:	82 1b       	sub	r24, r18
 3d0:	93 0b       	sbc	r25, r19
 3d2:	84 0f       	add	r24, r20
 3d4:	95 1f       	adc	r25, r21
 3d6:	08 95       	ret

000003d8 <_ZN6avrlib4uart6get_u817h8390b86fb82135a0E>:
 3d8:	e0 91 7c 02 	lds	r30, 0x027C
 3dc:	f0 91 7d 02 	lds	r31, 0x027D
 3e0:	80 91 7e 02 	lds	r24, 0x027E
 3e4:	90 91 7f 02 	lds	r25, 0x027F
 3e8:	e8 17       	cp	r30, r24
 3ea:	f9 07       	cpc	r31, r25
 3ec:	89 f0       	breq	.+34     	; 0x410 <LBB18_3>
 3ee:	80 e4       	ldi	r24, 0x40	; 64
 3f0:	90 e0       	ldi	r25, 0x00	; 0
 3f2:	e8 17       	cp	r30, r24
 3f4:	f9 07       	cpc	r31, r25
 3f6:	80 f4       	brcc	.+32     	; 0x418 <LBB18_4>
 3f8:	df 01       	movw	r26, r30
 3fa:	a4 5c       	subi	r26, 0xC4	; 196
 3fc:	bd 4f       	sbci	r27, 0xFD	; 253
 3fe:	8c 91       	ld	r24, X
 400:	31 96       	adiw	r30, 0x01	; 1
 402:	ef 73       	andi	r30, 0x3F	; 63
 404:	f0 70       	andi	r31, 0x00	; 0
 406:	f0 93 7d 02 	sts	0x027D, r31
 40a:	e0 93 7c 02 	sts	0x027C, r30
 40e:	08 95       	ret

00000410 <LBB18_3>:
 410:	84 e3       	ldi	r24, 0x34	; 52
 412:	91 e0       	ldi	r25, 0x01	; 1
 414:	0e 94 ed 02 	call	0x5da	; 0x5da <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

00000418 <LBB18_4>:
 418:	88 e2       	ldi	r24, 0x28	; 40
 41a:	91 e0       	ldi	r25, 0x01	; 1
 41c:	40 e4       	ldi	r20, 0x40	; 64
 41e:	50 e0       	ldi	r21, 0x00	; 0
 420:	bf 01       	movw	r22, r30
 422:	0e 94 ee 02 	call	0x5dc	; 0x5dc <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

00000426 <_ZN6avrlib5delay8delay_ms17h231abcdf3f763f3cE>:
 426:	20 e0       	ldi	r18, 0x00	; 0
 428:	30 e0       	ldi	r19, 0x00	; 0
 42a:	82 17       	cp	r24, r18
 42c:	93 07       	cpc	r25, r19
 42e:	71 f0       	breq	.+28     	; 0x44c <LBB19_5>
 430:	20 e0       	ldi	r18, 0x00	; 0
 432:	30 e0       	ldi	r19, 0x00	; 0
 434:	4a e6       	ldi	r20, 0x6A	; 106
 436:	5a e0       	ldi	r21, 0x0A	; 10
 438:	f9 01       	movw	r30, r18

0000043a <LBB19_2>:
 43a:	31 96       	adiw	r30, 0x01	; 1
 43c:	d9 01       	movw	r26, r18

0000043e <LBB19_3>:
 43e:	11 96       	adiw	r26, 0x01	; 1
 440:	a4 17       	cp	r26, r20
 442:	b5 07       	cpc	r27, r21
 444:	e0 f3       	brcs	.-8      	; 0x43e <LBB19_3>
 446:	e8 17       	cp	r30, r24
 448:	f9 07       	cpc	r31, r25
 44a:	b8 f3       	brcs	.-18     	; 0x43a <LBB19_2>

0000044c <LBB19_5>:
 44c:	08 95       	ret

0000044e <__vector_18>:
 44e:	0f 92       	push	r0
 450:	1f 92       	push	r1
 452:	0f b6       	in	r0, 0x3f	; 63
 454:	0f 92       	push	r0
 456:	00 24       	eor	r0, r0
 458:	0f 92       	push	r0
 45a:	1f 92       	push	r1
 45c:	2f 93       	push	r18
 45e:	3f 93       	push	r19
 460:	4f 93       	push	r20
 462:	5f 93       	push	r21
 464:	6f 93       	push	r22
 466:	7f 93       	push	r23
 468:	8f 93       	push	r24
 46a:	9f 93       	push	r25
 46c:	af 93       	push	r26
 46e:	bf 93       	push	r27
 470:	ef 93       	push	r30
 472:	ff 93       	push	r31
 474:	80 91 c6 00 	lds	r24, 0x00C6
 478:	a0 91 7e 02 	lds	r26, 0x027E
 47c:	b0 91 7f 02 	lds	r27, 0x027F
 480:	fd 01       	movw	r30, r26
 482:	31 96       	adiw	r30, 0x01	; 1
 484:	ef 73       	andi	r30, 0x3F	; 63
 486:	f0 70       	andi	r31, 0x00	; 0
 488:	20 91 7c 02 	lds	r18, 0x027C
 48c:	30 91 7d 02 	lds	r19, 0x027D
 490:	e2 17       	cp	r30, r18
 492:	f3 07       	cpc	r31, r19
 494:	09 f4       	brne	.+2      	; 0x498 <LBB32_1>
 496:	1f c0       	rjmp	.+62     	; 0x4d6 <LBB32_3>

00000498 <LBB32_1>:
 498:	20 e4       	ldi	r18, 0x40	; 64
 49a:	30 e0       	ldi	r19, 0x00	; 0
 49c:	a2 17       	cp	r26, r18
 49e:	b3 07       	cpc	r27, r19
 4a0:	f0 f4       	brcc	.+60     	; 0x4de <LBB32_4>
 4a2:	a4 5c       	subi	r26, 0xC4	; 196
 4a4:	bd 4f       	sbci	r27, 0xFD	; 253
 4a6:	8c 93       	st	X, r24
 4a8:	f0 93 7f 02 	sts	0x027F, r31
 4ac:	e0 93 7e 02 	sts	0x027E, r30
 4b0:	ff 91       	pop	r31
 4b2:	ef 91       	pop	r30
 4b4:	bf 91       	pop	r27
 4b6:	af 91       	pop	r26
 4b8:	9f 91       	pop	r25
 4ba:	8f 91       	pop	r24
 4bc:	7f 91       	pop	r23
 4be:	6f 91       	pop	r22
 4c0:	5f 91       	pop	r21
 4c2:	4f 91       	pop	r20
 4c4:	3f 91       	pop	r19
 4c6:	2f 91       	pop	r18
 4c8:	1f 90       	pop	r1
 4ca:	0f 90       	pop	r0
 4cc:	0f 90       	pop	r0
 4ce:	0f be       	out	0x3f, r0	; 63
 4d0:	1f 90       	pop	r1
 4d2:	0f 90       	pop	r0
 4d4:	18 95       	reti

000004d6 <LBB32_3>:
 4d6:	8c e0       	ldi	r24, 0x0C	; 12
 4d8:	91 e0       	ldi	r25, 0x01	; 1
 4da:	0e 94 ed 02 	call	0x5da	; 0x5da <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

000004de <LBB32_4>:
 4de:	8c e1       	ldi	r24, 0x1C	; 28
 4e0:	91 e0       	ldi	r25, 0x01	; 1
 4e2:	40 e4       	ldi	r20, 0x40	; 64
 4e4:	50 e0       	ldi	r21, 0x00	; 0
 4e6:	bd 01       	movw	r22, r26
 4e8:	0e 94 ee 02 	call	0x5dc	; 0x5dc <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

000004ec <__vector_19>:
 4ec:	0f 92       	push	r0
 4ee:	1f 92       	push	r1
 4f0:	0f b6       	in	r0, 0x3f	; 63
 4f2:	0f 92       	push	r0
 4f4:	00 24       	eor	r0, r0
 4f6:	0f 92       	push	r0
 4f8:	1f 92       	push	r1
 4fa:	2f 93       	push	r18
 4fc:	3f 93       	push	r19
 4fe:	4f 93       	push	r20
 500:	5f 93       	push	r21
 502:	6f 93       	push	r22
 504:	7f 93       	push	r23
 506:	8f 93       	push	r24
 508:	9f 93       	push	r25
 50a:	af 93       	push	r26
 50c:	bf 93       	push	r27
 50e:	ef 93       	push	r30
 510:	ff 93       	push	r31
 512:	e0 91 38 02 	lds	r30, 0x0238
 516:	f0 91 39 02 	lds	r31, 0x0239
 51a:	80 91 3a 02 	lds	r24, 0x023A
 51e:	90 91 3b 02 	lds	r25, 0x023B
 522:	e8 17       	cp	r30, r24
 524:	f9 07       	cpc	r31, r25
 526:	31 f4       	brne	.+12     	; 0x534 <LBB33_2>
 528:	80 91 c1 00 	lds	r24, 0x00C1
 52c:	8f 7d       	andi	r24, 0xDF	; 223
 52e:	80 93 c1 00 	sts	0x00C1, r24
 532:	13 c0       	rjmp	.+38     	; 0x55a <LBB33_4>

00000534 <LBB33_2>:
 534:	80 e4       	ldi	r24, 0x40	; 64
 536:	90 e0       	ldi	r25, 0x00	; 0
 538:	e8 17       	cp	r30, r24
 53a:	f9 07       	cpc	r31, r25
 53c:	08 f0       	brcs	.+2      	; 0x540 <LBB33_3>
 53e:	20 c0       	rjmp	.+64     	; 0x580 <LBB33_5>

00000540 <LBB33_3>:
 540:	df 01       	movw	r26, r30
 542:	a8 50       	subi	r26, 0x08	; 8
 544:	be 4f       	sbci	r27, 0xFE	; 254
 546:	8c 91       	ld	r24, X
 548:	31 96       	adiw	r30, 0x01	; 1
 54a:	ef 73       	andi	r30, 0x3F	; 63
 54c:	f0 70       	andi	r31, 0x00	; 0
 54e:	f0 93 39 02 	sts	0x0239, r31
 552:	e0 93 38 02 	sts	0x0238, r30
 556:	80 93 c6 00 	sts	0x00C6, r24

0000055a <LBB33_4>:
 55a:	ff 91       	pop	r31
 55c:	ef 91       	pop	r30
 55e:	bf 91       	pop	r27
 560:	af 91       	pop	r26
 562:	9f 91       	pop	r25
 564:	8f 91       	pop	r24
 566:	7f 91       	pop	r23
 568:	6f 91       	pop	r22
 56a:	5f 91       	pop	r21
 56c:	4f 91       	pop	r20
 56e:	3f 91       	pop	r19
 570:	2f 91       	pop	r18
 572:	1f 90       	pop	r1
 574:	0f 90       	pop	r0
 576:	0f 90       	pop	r0
 578:	0f be       	out	0x3f, r0	; 63
 57a:	1f 90       	pop	r1
 57c:	0f 90       	pop	r0
 57e:	18 95       	reti

00000580 <LBB33_5>:
 580:	88 e2       	ldi	r24, 0x28	; 40
 582:	91 e0       	ldi	r25, 0x01	; 1
 584:	40 e4       	ldi	r20, 0x40	; 64
 586:	50 e0       	ldi	r21, 0x00	; 0
 588:	bf 01       	movw	r22, r30
 58a:	0e 94 ee 02 	call	0x5dc	; 0x5dc <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

0000058e <__vector_14>:
 58e:	0f 92       	push	r0
 590:	1f 92       	push	r1
 592:	0f b6       	in	r0, 0x3f	; 63
 594:	0f 92       	push	r0
 596:	00 24       	eor	r0, r0
 598:	2f 93       	push	r18
 59a:	3f 93       	push	r19
 59c:	8f 93       	push	r24
 59e:	9f 93       	push	r25
 5a0:	80 91 f4 01 	lds	r24, 0x01F4
 5a4:	90 91 f5 01 	lds	r25, 0x01F5
 5a8:	20 91 f6 01 	lds	r18, 0x01F6
 5ac:	30 91 f7 01 	lds	r19, 0x01F7
 5b0:	8f 5f       	subi	r24, 0xFF	; 255
 5b2:	9f 4f       	sbci	r25, 0xFF	; 255
 5b4:	2f 4f       	sbci	r18, 0xFF	; 255
 5b6:	3f 4f       	sbci	r19, 0xFF	; 255
 5b8:	30 93 f7 01 	sts	0x01F7, r19
 5bc:	20 93 f6 01 	sts	0x01F6, r18
 5c0:	90 93 f5 01 	sts	0x01F5, r25
 5c4:	80 93 f4 01 	sts	0x01F4, r24
 5c8:	9f 91       	pop	r25
 5ca:	8f 91       	pop	r24
 5cc:	3f 91       	pop	r19
 5ce:	2f 91       	pop	r18
 5d0:	0f 90       	pop	r0
 5d2:	0f be       	out	0x3f, r0	; 63
 5d4:	1f 90       	pop	r1
 5d6:	0f 90       	pop	r0
 5d8:	18 95       	reti

000005da <_ZN4core9panicking5panic17hb168f5b3c00eca08E>:
 5da:	ff cf       	rjmp	.-2      	; 0x5da <_ZN4core9panicking5panic17hb168f5b3c00eca08E>

000005dc <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>:
 5dc:	ff cf       	rjmp	.-2      	; 0x5dc <_ZN4core9panicking18panic_bounds_check17h71893a369e3b06e3E>

000005de <_exit>:
 5de:	f8 94       	cli

000005e0 <__stop_program>:
 5e0:	ff cf       	rjmp	.-2      	; 0x5e0 <__stop_program>

Disassembly of section .bss:

008001f4 <__bss_start>:
  8001f4:	00 00       	nop
	...

008001f8 <_ZN6avrlib4uart7TX_FIFO17h69c1cda48df8d8a7E>:
	...

0080023c <_ZN6avrlib4uart7RX_FIFO17h06d6d39800eba9aeE>:
	...

Disassembly of section .note.gnu.avr.deviceinfo:

00000000 <_end-0x800280>:
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
