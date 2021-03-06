@ RUN: llvm-mc -mcpu=cortex-a8 -triple arm-unknown-unknown -show-encoding < %s | FileCheck %s

_foo:
	vshl.u8	d16, d17, d16
	vshl.u16	d16, d17, d16
	vshl.u32	d16, d17, d16
	vshl.u64	d16, d17, d16
	vshl.i8	d16, d16, #7
	vshl.i16	d16, d16, #15
	vshl.i32	d16, d16, #31
	vshl.i64	d16, d16, #63
	vshl.u8	q8, q9, q8
	vshl.u16	q8, q9, q8
	vshl.u32	q8, q9, q8
	vshl.u64	q8, q9, q8
	vshl.i8	q8, q8, #7
	vshl.i16	q8, q8, #15
	vshl.i32	q8, q8, #31
	vshl.i64	q8, q8, #63

@ CHECK: vshl.u8	d16, d17, d16  @ encoding: [0xa1,0x04,0x40,0xf3]
@ CHECK: vshl.u16	d16, d17, d16  @ encoding: [0xa1,0x04,0x50,0xf3]
@ CHECK: vshl.u32	d16, d17, d16  @ encoding: [0xa1,0x04,0x60,0xf3]
@ CHECK: vshl.u64	d16, d17, d16  @ encoding: [0xa1,0x04,0x70,0xf3]
@ CHECK: vshl.i8	d16, d16, #7  @ encoding: [0x30,0x05,0xcf,0xf2]
@ CHECK: vshl.i16	d16, d16, #15  @ encoding: [0x30,0x05,0xdf,0xf2]
@ CHECK: vshl.i32	d16, d16, #31  @ encoding: [0x30,0x05,0xff,0xf2]
@ CHECK: vshl.i64	d16, d16, #63  @ encoding: [0xb0,0x05,0xff,0xf2]
@ CHECK: vshl.u8	q8, q9, q8  @ encoding: [0xe2,0x04,0x40,0xf3]
@ CHECK: vshl.u16	q8, q9, q8  @ encoding: [0xe2,0x04,0x50,0xf3]
@ CHECK: vshl.u32	q8, q9, q8  @ encoding: [0xe2,0x04,0x60,0xf3]
@ CHECK: vshl.u64	q8, q9, q8  @ encoding: [0xe2,0x04,0x70,0xf3]
@ CHECK: vshl.i8	q8, q8, #7  @ encoding: [0x70,0x05,0xcf,0xf2]
@ CHECK: vshl.i16	q8, q8, #15  @ encoding: [0x70,0x05,0xdf,0xf2]
@ CHECK: vshl.i32	q8, q8, #31  @ encoding: [0x70,0x05,0xff,0xf2]
@ CHECK: vshl.i64	q8, q8, #63  @ encoding: [0xf0,0x05,0xff,0xf2]


	vshr.u8	d16, d16, #7
	vshr.u16	d16, d16, #15
	vshr.u32	d16, d16, #31
	vshr.u64	d16, d16, #63
	vshr.u8	q8, q8, #7
	vshr.u16	q8, q8, #15
	vshr.u32	q8, q8, #31
	vshr.u64	q8, q8, #63
	vshr.s8	d16, d16, #7
	vshr.s16	d16, d16, #15
	vshr.s32	d16, d16, #31
	vshr.s64	d16, d16, #63
	vshr.s8	q8, q8, #7
	vshr.s16	q8, q8, #15
	vshr.s32	q8, q8, #31
	vshr.s64	q8, q8, #63

@ CHECK: vshr.u8	d16, d16, #7  @ encoding: [0x30,0x00,0xc9,0xf3]
@ CHECK: vshr.u16	d16, d16, #15  @ encoding: [0x30,0x00,0xd1,0xf3]
@ CHECK: vshr.u32	d16, d16, #31  @ encoding: [0x30,0x00,0xe1,0xf3]
@ CHECK: vshr.u64	d16, d16, #63  @ encoding: [0xb0,0x00,0xc1,0xf3]
@ CHECK: vshr.u8	q8, q8, #7  @ encoding: [0x70,0x00,0xc9,0xf3]
@ CHECK: vshr.u16	q8, q8, #15  @ encoding: [0x70,0x00,0xd1,0xf3]
@ CHECK: vshr.u32	q8, q8, #31  @ encoding: [0x70,0x00,0xe1,0xf3]
@ CHECK: vshr.u64	q8, q8, #63  @ encoding: [0xf0,0x00,0xc1,0xf3]
@ CHECK: vshr.s8	d16, d16, #7  @ encoding: [0x30,0x00,0xc9,0xf2]
@ CHECK: vshr.s16	d16, d16, #15  @ encoding: [0x30,0x00,0xd1,0xf2]
@ CHECK: vshr.s32	d16, d16, #31  @ encoding: [0x30,0x00,0xe1,0xf2]
@ CHECK: vshr.s64	d16, d16, #63  @ encoding: [0xb0,0x00,0xc1,0xf2]
@ CHECK: vshr.s8	q8, q8, #7  @ encoding: [0x70,0x00,0xc9,0xf2]
@ CHECK: vshr.s16	q8, q8, #15  @ encoding: [0x70,0x00,0xd1,0xf2]
@ CHECK: vshr.s32	q8, q8, #31  @ encoding: [0x70,0x00,0xe1,0xf2]
@ CHECK: vshr.s64	q8, q8, #63  @ encoding: [0xf0,0x00,0xc1,0xf2]

@ implied destination operand variants.
	vshr.u8	d16, #7
	vshr.u16	d16, #15
	vshr.u32	d16, #31
	vshr.u64	d16, #63
	vshr.u8	q8, #7
	vshr.u16	q8, #15
	vshr.u32	q8, #31
	vshr.u64	q8, #63
	vshr.s8	d16, #7
	vshr.s16	d16, #15
	vshr.s32	d16, #31
	vshr.s64	d16, #63
	vshr.s8	q8, #7
	vshr.s16	q8, #15
	vshr.s32	q8, #31
	vshr.s64	q8, #63

@ CHECK: vshr.u8	d16, d16, #7  @ encoding: [0x30,0x00,0xc9,0xf3]
@ CHECK: vshr.u16	d16, d16, #15  @ encoding: [0x30,0x00,0xd1,0xf3]
@ CHECK: vshr.u32	d16, d16, #31  @ encoding: [0x30,0x00,0xe1,0xf3]
@ CHECK: vshr.u64	d16, d16, #63  @ encoding: [0xb0,0x00,0xc1,0xf3]
@ CHECK: vshr.u8	q8, q8, #7  @ encoding: [0x70,0x00,0xc9,0xf3]
@ CHECK: vshr.u16	q8, q8, #15  @ encoding: [0x70,0x00,0xd1,0xf3]
@ CHECK: vshr.u32	q8, q8, #31  @ encoding: [0x70,0x00,0xe1,0xf3]
@ CHECK: vshr.u64	q8, q8, #63  @ encoding: [0xf0,0x00,0xc1,0xf3]
@ CHECK: vshr.s8	d16, d16, #7  @ encoding: [0x30,0x00,0xc9,0xf2]
@ CHECK: vshr.s16	d16, d16, #15  @ encoding: [0x30,0x00,0xd1,0xf2]
@ CHECK: vshr.s32	d16, d16, #31  @ encoding: [0x30,0x00,0xe1,0xf2]
@ CHECK: vshr.s64	d16, d16, #63  @ encoding: [0xb0,0x00,0xc1,0xf2]
@ CHECK: vshr.s8	q8, q8, #7  @ encoding: [0x70,0x00,0xc9,0xf2]
@ CHECK: vshr.s16	q8, q8, #15  @ encoding: [0x70,0x00,0xd1,0xf2]
@ CHECK: vshr.s32	q8, q8, #31  @ encoding: [0x70,0x00,0xe1,0xf2]
@ CHECK: vshr.s64	q8, q8, #63  @ encoding: [0xf0,0x00,0xc1,0xf2]


	vsra.s8   d16, d6, #7
	vsra.s16  d26, d18, #15
	vsra.s32  d11, d10, #31
	vsra.s64  d12, d19, #63
	vsra.s8   q1, q8, #7
	vsra.s16  q2, q7, #15
	vsra.s32  q3, q6, #31
	vsra.s64  q4, q5, #63

	vsra.s8   d16, #7
	vsra.s16  d15, #15
	vsra.s32  d14, #31
	vsra.s64  d13, #63
	vsra.s8   q4, #7
	vsra.s16  q5, #15
	vsra.s32  q6, #31
	vsra.s64  q7, #63

@ CHECK: vsra.s8	d16, d6, #7     @ encoding: [0x16,0x01,0xc9,0xf2]
@ CHECK: vsra.s16	d26, d18, #15   @ encoding: [0x32,0xa1,0xd1,0xf2]
@ CHECK: vsra.s32	d11, d10, #31   @ encoding: [0x1a,0xb1,0xa1,0xf2]
@ CHECK: vsra.s64	d12, d19, #63   @ encoding: [0xb3,0xc1,0x81,0xf2]
@ CHECK: vsra.s8	q1, q8, #7      @ encoding: [0x70,0x21,0x89,0xf2]
@ CHECK: vsra.s16	q2, q7, #15     @ encoding: [0x5e,0x41,0x91,0xf2]
@ CHECK: vsra.s32	q3, q6, #31     @ encoding: [0x5c,0x61,0xa1,0xf2]
@ CHECK: vsra.s64	q4, q5, #63     @ encoding: [0xda,0x81,0x81,0xf2]
@ CHECK: vsra.s8	d16, d16, #7    @ encoding: [0x30,0x01,0xc9,0xf2]
@ CHECK: vsra.s16	d15, d15, #15   @ encoding: [0x1f,0xf1,0x91,0xf2]
@ CHECK: vsra.s32	d14, d14, #31   @ encoding: [0x1e,0xe1,0xa1,0xf2]
@ CHECK: vsra.s64	d13, d13, #63   @ encoding: [0x9d,0xd1,0x81,0xf2]
@ CHECK: vsra.s8	q4, q4, #7      @ encoding: [0x58,0x81,0x89,0xf2]
@ CHECK: vsra.s16	q5, q5, #15     @ encoding: [0x5a,0xa1,0x91,0xf2]
@ CHECK: vsra.s32	q6, q6, #31     @ encoding: [0x5c,0xc1,0xa1,0xf2]
@ CHECK: vsra.s64	q7, q7, #63     @ encoding: [0xde,0xe1,0x81,0xf2]


	vsra.u8   d16, d6, #7
	vsra.u16  d26, d18, #15
	vsra.u32  d11, d10, #31
	vsra.u64  d12, d19, #63
	vsra.u8   q1, q8, #7
	vsra.u16  q2, q7, #15
	vsra.u32  q3, q6, #31
	vsra.u64  q4, q5, #63

	vsra.u8   d16, #7
	vsra.u16  d15, #15
	vsra.u32  d14, #31
	vsra.u64  d13, #63
	vsra.u8   q4, #7
	vsra.u16  q5, #15
	vsra.u32  q6, #31
	vsra.u64  q7, #63

@ CHECK: vsra.u8	d16, d6, #7     @ encoding: [0x16,0x01,0xc9,0xf3]
@ CHECK: vsra.u16	d26, d18, #15   @ encoding: [0x32,0xa1,0xd1,0xf3]
@ CHECK: vsra.u32	d11, d10, #31   @ encoding: [0x1a,0xb1,0xa1,0xf3]
@ CHECK: vsra.u64	d12, d19, #63   @ encoding: [0xb3,0xc1,0x81,0xf3]
@ CHECK: vsra.u8	q1, q8, #7      @ encoding: [0x70,0x21,0x89,0xf3]
@ CHECK: vsra.u16	q2, q7, #15     @ encoding: [0x5e,0x41,0x91,0xf3]
@ CHECK: vsra.u32	q3, q6, #31     @ encoding: [0x5c,0x61,0xa1,0xf3]
@ CHECK: vsra.u64	q4, q5, #63     @ encoding: [0xda,0x81,0x81,0xf3]
@ CHECK: vsra.u8	d16, d16, #7    @ encoding: [0x30,0x01,0xc9,0xf3]
@ CHECK: vsra.u16	d15, d15, #15   @ encoding: [0x1f,0xf1,0x91,0xf3]
@ CHECK: vsra.u32	d14, d14, #31   @ encoding: [0x1e,0xe1,0xa1,0xf3]
@ CHECK: vsra.u64	d13, d13, #63   @ encoding: [0x9d,0xd1,0x81,0xf3]
@ CHECK: vsra.u8	q4, q4, #7      @ encoding: [0x58,0x81,0x89,0xf3]
@ CHECK: vsra.u16	q5, q5, #15     @ encoding: [0x5a,0xa1,0x91,0xf3]
@ CHECK: vsra.u32	q6, q6, #31     @ encoding: [0x5c,0xc1,0xa1,0xf3]
@ CHECK: vsra.u64	q7, q7, #63     @ encoding: [0xde,0xe1,0x81,0xf3]


	vsri.8   d16, d6, #7
	vsri.16  d26, d18, #15
	vsri.32  d11, d10, #31
	vsri.64  d12, d19, #63
	vsri.8   q1, q8, #7
	vsri.16  q2, q7, #15
	vsri.32  q3, q6, #31
	vsri.64  q4, q5, #63

	vsri.8   d16, #7
	vsri.16  d15, #15
	vsri.32  d14, #31
	vsri.64  d13, #63
	vsri.8   q4, #7
	vsri.16  q5, #15
	vsri.32  q6, #31
	vsri.64  q7, #63

@ CHECK: vsri.8	d16, d6, #7             @ encoding: [0x16,0x04,0xc9,0xf3]
@ CHECK: vsri.16 d26, d18, #15          @ encoding: [0x32,0xa4,0xd1,0xf3]
@ CHECK: vsri.32 d11, d10, #31          @ encoding: [0x1a,0xb4,0xa1,0xf3]
@ CHECK: vsri.64 d12, d19, #63          @ encoding: [0xb3,0xc4,0x81,0xf3]
@ CHECK: vsri.8	q1, q8, #7              @ encoding: [0x70,0x24,0x89,0xf3]
@ CHECK: vsri.16 q2, q7, #15            @ encoding: [0x5e,0x44,0x91,0xf3]
@ CHECK: vsri.32 q3, q6, #31            @ encoding: [0x5c,0x64,0xa1,0xf3]
@ CHECK: vsri.64 q4, q5, #63            @ encoding: [0xda,0x84,0x81,0xf3]
@ CHECK: vsri.8	d16, d16, #7            @ encoding: [0x30,0x04,0xc9,0xf3]
@ CHECK: vsri.16 d15, d15, #15          @ encoding: [0x1f,0xf4,0x91,0xf3]
@ CHECK: vsri.32 d14, d14, #31          @ encoding: [0x1e,0xe4,0xa1,0xf3]
@ CHECK: vsri.64 d13, d13, #63          @ encoding: [0x9d,0xd4,0x81,0xf3]
@ CHECK: vsri.8	q4, q4, #7              @ encoding: [0x58,0x84,0x89,0xf3]
@ CHECK: vsri.16 q5, q5, #15            @ encoding: [0x5a,0xa4,0x91,0xf3]
@ CHECK: vsri.32 q6, q6, #31            @ encoding: [0x5c,0xc4,0xa1,0xf3]
@ CHECK: vsri.64 q7, q7, #63            @ encoding: [0xde,0xe4,0x81,0xf3]


	vsli.8   d16, d6, #7
	vsli.16  d26, d18, #15
	vsli.32  d11, d10, #31
	vsli.64  d12, d19, #63
	vsli.8   q1, q8, #7
	vsli.16  q2, q7, #15
	vsli.32  q3, q6, #31
	vsli.64  q4, q5, #63

	vsli.8   d16, #7
	vsli.16  d15, #15
	vsli.32  d14, #31
	vsli.64  d13, #63
	vsli.8   q4, #7
	vsli.16  q5, #15
	vsli.32  q6, #31
	vsli.64  q7, #63

@ CHECK: vsli.8	d16, d6, #7             @ encoding: [0x16,0x05,0xcf,0xf3]
@ CHECK: vsli.16 d26, d18, #15          @ encoding: [0x32,0xa5,0xdf,0xf3]
@ CHECK: vsli.32 d11, d10, #31          @ encoding: [0x1a,0xb5,0xbf,0xf3]
@ CHECK: vsli.64 d12, d19, #63          @ encoding: [0xb3,0xc5,0xbf,0xf3]
@ CHECK: vsli.8	q1, q8, #7              @ encoding: [0x70,0x25,0x8f,0xf3]
@ CHECK: vsli.16 q2, q7, #15            @ encoding: [0x5e,0x45,0x9f,0xf3]
@ CHECK: vsli.32 q3, q6, #31            @ encoding: [0x5c,0x65,0xbf,0xf3]
@ CHECK: vsli.64 q4, q5, #63            @ encoding: [0xda,0x85,0xbf,0xf3]
@ CHECK: vsli.8	d16, d16, #7            @ encoding: [0x30,0x05,0xcf,0xf3]
@ CHECK: vsli.16 d15, d15, #15          @ encoding: [0x1f,0xf5,0x9f,0xf3]
@ CHECK: vsli.32 d14, d14, #31          @ encoding: [0x1e,0xe5,0xbf,0xf3]
@ CHECK: vsli.64 d13, d13, #63          @ encoding: [0x9d,0xd5,0xbf,0xf3]
@ CHECK: vsli.8	q4, q4, #7              @ encoding: [0x58,0x85,0x8f,0xf3]
@ CHECK: vsli.16 q5, q5, #15            @ encoding: [0x5a,0xa5,0x9f,0xf3]
@ CHECK: vsli.32 q6, q6, #31            @ encoding: [0x5c,0xc5,0xbf,0xf3]
@ CHECK: vsli.64 q7, q7, #63            @ encoding: [0xde,0xe5,0xbf,0xf3]


@ CHECK: vshll.s8	q8, d16, #7  @ encoding: [0x30,0x0a,0xcf,0xf2]
	vshll.s8	q8, d16, #7
@ CHECK: vshll.s16	q8, d16, #15  @ encoding: [0x30,0x0a,0xdf,0xf2]
	vshll.s16	q8, d16, #15
@ CHECK: vshll.s32	q8, d16, #31  @ encoding: [0x30,0x0a,0xff,0xf2]
	vshll.s32	q8, d16, #31
@ CHECK: vshll.u8	q8, d16, #7  @ encoding: [0x30,0x0a,0xcf,0xf3]
	vshll.u8	q8, d16, #7
@ CHECK: vshll.u16	q8, d16, #15  @ encoding: [0x30,0x0a,0xdf,0xf3]
	vshll.u16	q8, d16, #15
@ CHECK: vshll.u32	q8, d16, #31  @ encoding: [0x30,0x0a,0xff,0xf3]
	vshll.u32	q8, d16, #31
@ CHECK: vshll.i8	q8, d16, #8  @ encoding: [0x20,0x03,0xf2,0xf3]
	vshll.i8	q8, d16, #8
@ CHECK: vshll.i16	q8, d16, #16  @ encoding: [0x20,0x03,0xf6,0xf3]
	vshll.i16	q8, d16, #16
@ CHECK: vshll.i32	q8, d16, #32  @ encoding: [0x20,0x03,0xfa,0xf3]
	vshll.i32	q8, d16, #32
@ CHECK: vshrn.i16	d16, q8, #8  @ encoding: [0x30,0x08,0xc8,0xf2]
	vshrn.i16	d16, q8, #8
@ CHECK: vshrn.i32	d16, q8, #16  @ encoding: [0x30,0x08,0xd0,0xf2]
	vshrn.i32	d16, q8, #16
@ CHECK: vshrn.i64	d16, q8, #32  @ encoding: [0x30,0x08,0xe0,0xf2]
	vshrn.i64	d16, q8, #32
@ CHECK: vrshl.s8	d16, d17, d16  @ encoding: [0xa1,0x05,0x40,0xf2]
	vrshl.s8	d16, d17, d16
@ CHECK: vrshl.s16	d16, d17, d16  @ encoding: [0xa1,0x05,0x50,0xf2]
	vrshl.s16	d16, d17, d16
@ CHECK: vrshl.s32	d16, d17, d16  @ encoding: [0xa1,0x05,0x60,0xf2]
	vrshl.s32	d16, d17, d16
@ CHECK: vrshl.s64	d16, d17, d16  @ encoding: [0xa1,0x05,0x70,0xf2]
	vrshl.s64	d16, d17, d16
@ CHECK: vrshl.u8	d16, d17, d16  @ encoding: [0xa1,0x05,0x40,0xf3]
	vrshl.u8	d16, d17, d16
@ CHECK: vrshl.u16	d16, d17, d16  @ encoding: [0xa1,0x05,0x50,0xf3]
	vrshl.u16	d16, d17, d16
@ CHECK: vrshl.u32	d16, d17, d16  @ encoding: [0xa1,0x05,0x60,0xf3]
	vrshl.u32	d16, d17, d16
@ CHECK: vrshl.u64	d16, d17, d16  @ encoding: [0xa1,0x05,0x70,0xf3]
	vrshl.u64	d16, d17, d16
@ CHECK: vrshl.s8	q8, q9, q8  @ encoding: [0xe2,0x05,0x40,0xf2]
	vrshl.s8	q8, q9, q8
@ CHECK: vrshl.s16	q8, q9, q8  @ encoding: [0xe2,0x05,0x50,0xf2]
	vrshl.s16	q8, q9, q8
@ CHECK: vrshl.s32	q8, q9, q8  @ encoding: [0xe2,0x05,0x60,0xf2]
	vrshl.s32	q8, q9, q8
@ CHECK: vrshl.s64	q8, q9, q8  @ encoding: [0xe2,0x05,0x70,0xf2]
	vrshl.s64	q8, q9, q8
@ CHECK: vrshl.u8	q8, q9, q8  @ encoding: [0xe2,0x05,0x40,0xf3]
	vrshl.u8	q8, q9, q8
@ CHECK: vrshl.u16	q8, q9, q8  @ encoding: [0xe2,0x05,0x50,0xf3]
	vrshl.u16	q8, q9, q8
@ CHECK: vrshl.u32	q8, q9, q8  @ encoding: [0xe2,0x05,0x60,0xf3]
	vrshl.u32	q8, q9, q8
@ CHECK: vrshl.u64	q8, q9, q8  @ encoding: [0xe2,0x05,0x70,0xf3]
	vrshl.u64	q8, q9, q8
@ CHECK: vrshr.s8	d16, d16, #8  @ encoding: [0x30,0x02,0xc8,0xf2]
	vrshr.s8	d16, d16, #8
@ CHECK: vrshr.s16	d16, d16, #16  @ encoding: [0x30,0x02,0xd0,0xf2]
	vrshr.s16	d16, d16, #16
@ CHECK: vrshr.s32	d16, d16, #32  @ encoding: [0x30,0x02,0xe0,0xf2]
	vrshr.s32	d16, d16, #32
@ CHECK: vrshr.s64	d16, d16, #64  @ encoding: [0xb0,0x02,0xc0,0xf2]
	vrshr.s64	d16, d16, #64
@ CHECK: vrshr.u8	d16, d16, #8  @ encoding: [0x30,0x02,0xc8,0xf3]
	vrshr.u8	d16, d16, #8
@ CHECK: vrshr.u16	d16, d16, #16  @ encoding: [0x30,0x02,0xd0,0xf3]
	vrshr.u16	d16, d16, #16
@ CHECK: vrshr.u32	d16, d16, #32  @ encoding: [0x30,0x02,0xe0,0xf3]
	vrshr.u32	d16, d16, #32
@ CHECK: vrshr.u64	d16, d16, #64  @ encoding: [0xb0,0x02,0xc0,0xf3]
	vrshr.u64	d16, d16, #64
@ CHECK: vrshr.s8	q8, q8, #8  @ encoding: [0x70,0x02,0xc8,0xf2]
	vrshr.s8	q8, q8, #8
@ CHECK: vrshr.s16	q8, q8, #16  @ encoding: [0x70,0x02,0xd0,0xf2]
	vrshr.s16	q8, q8, #16
@ CHECK: vrshr.s32	q8, q8, #32  @ encoding: [0x70,0x02,0xe0,0xf2]
	vrshr.s32	q8, q8, #32
@ CHECK: vrshr.s64	q8, q8, #64  @ encoding: [0xf0,0x02,0xc0,0xf2]
	vrshr.s64	q8, q8, #64
@ CHECK: vrshr.u8	q8, q8, #8  @ encoding: [0x70,0x02,0xc8,0xf3]
	vrshr.u8	q8, q8, #8
@ CHECK: vrshr.u16	q8, q8, #16  @ encoding: [0x70,0x02,0xd0,0xf3]
	vrshr.u16	q8, q8, #16
@ CHECK: vrshr.u32	q8, q8, #32  @ encoding: [0x70,0x02,0xe0,0xf3]
	vrshr.u32	q8, q8, #32
@ CHECK: vrshr.u64	q8, q8, #64  @ encoding: [0xf0,0x02,0xc0,0xf3]
	vrshr.u64	q8, q8, #64
@ CHECK: vrshrn.i16	d16, q8, #8  @ encoding: [0x70,0x08,0xc8,0xf2]
	vrshrn.i16	d16, q8, #8
@ CHECK: vrshrn.i32	d16, q8, #16  @ encoding: [0x70,0x08,0xd0,0xf2]
	vrshrn.i32	d16, q8, #16
@ CHECK: vrshrn.i64	d16, q8, #32  @ encoding: [0x70,0x08,0xe0,0xf2]
	vrshrn.i64	d16, q8, #32
@ CHECK: vqrshrn.s16	d16, q8, #4  @ encoding: [0x70,0x09,0xcc,0xf2]
	vqrshrn.s16	d16, q8, #4
@ CHECK: vqrshrn.s32	d16, q8, #13  @ encoding: [0x70,0x09,0xd3,0xf2]
	vqrshrn.s32	d16, q8, #13
@ CHECK: vqrshrn.s64	d16, q8, #13  @ encoding: [0x70,0x09,0xf3,0xf2]
	vqrshrn.s64	d16, q8, #13
@ CHECK: vqrshrn.u16	d16, q8, #4  @ encoding: [0x70,0x09,0xcc,0xf3]
	vqrshrn.u16	d16, q8, #4
@ CHECK: vqrshrn.u32	d16, q8, #13  @ encoding: [0x70,0x09,0xd3,0xf3]
	vqrshrn.u32	d16, q8, #13
@ CHECK: vqrshrn.u64	d16, q8, #13  @ encoding: [0x70,0x09,0xf3,0xf3]
	vqrshrn.u64	d16, q8, #13

@ Optional destination operand variants.
        vshl.s8 q4, q5
        vshl.s16 q4, q5
        vshl.s32 q4, q5
        vshl.s64 q4, q5

        vshl.u8 q4, q5
        vshl.u16 q4, q5
        vshl.u32 q4, q5
        vshl.u64 q4, q5

        vshl.s8 d4, d5
        vshl.s16 d4, d5
        vshl.s32 d4, d5
        vshl.s64 d4, d5

        vshl.u8 d4, d5
        vshl.u16 d4, d5
        vshl.u32 d4, d5
        vshl.u64 d4, d5

@ CHECK: vshl.s8	q4, q4, q5      @ encoding: [0x48,0x84,0x0a,0xf2]
@ CHECK: vshl.s16	q4, q4, q5      @ encoding: [0x48,0x84,0x1a,0xf2]
@ CHECK: vshl.s32	q4, q4, q5      @ encoding: [0x48,0x84,0x2a,0xf2]
@ CHECK: vshl.s64	q4, q4, q5      @ encoding: [0x48,0x84,0x3a,0xf2]

@ CHECK: vshl.u8	q4, q4, q5      @ encoding: [0x48,0x84,0x0a,0xf3]
@ CHECK: vshl.u16	q4, q4, q5      @ encoding: [0x48,0x84,0x1a,0xf3]
@ CHECK: vshl.u32	q4, q4, q5      @ encoding: [0x48,0x84,0x2a,0xf3]
@ CHECK: vshl.u64	q4, q4, q5      @ encoding: [0x48,0x84,0x3a,0xf3]

@ CHECK: vshl.s8	d4, d4, d5      @ encoding: [0x04,0x44,0x05,0xf2]
@ CHECK: vshl.s16	d4, d4, d5      @ encoding: [0x04,0x44,0x15,0xf2]
@ CHECK: vshl.s32	d4, d4, d5      @ encoding: [0x04,0x44,0x25,0xf2]
@ CHECK: vshl.s64	d4, d4, d5      @ encoding: [0x04,0x44,0x35,0xf2]

@ CHECK: vshl.u8	d4, d4, d5      @ encoding: [0x04,0x44,0x05,0xf3]
@ CHECK: vshl.u16	d4, d4, d5      @ encoding: [0x04,0x44,0x15,0xf3]
@ CHECK: vshl.u32	d4, d4, d5      @ encoding: [0x04,0x44,0x25,0xf3]
@ CHECK: vshl.u64	d4, d4, d5      @ encoding: [0x04,0x44,0x35,0xf3]

        vshl.s8 q4, #2
        vshl.s16 q4, #14
        vshl.s32 q4, #27
        vshl.s64 q4, #35

        vshl.s8 d4, #6
        vshl.u16 d4, #10
        vshl.s32 d4, #17
        vshl.u64 d4, #43

@ CHECK: vshl.i8	q4, q4, #2      @ encoding: [0x58,0x85,0x8a,0xf2]
@ CHECK: vshl.i16	q4, q4, #14     @ encoding: [0x58,0x85,0x9e,0xf2]
@ CHECK: vshl.i32	q4, q4, #27     @ encoding: [0x58,0x85,0xbb,0xf2]
@ CHECK: vshl.i64	q4, q4, #35     @ encoding: [0xd8,0x85,0xa3,0xf2]

@ CHECK: vshl.i8	d4, d4, #6      @ encoding: [0x14,0x45,0x8e,0xf2]
@ CHECK: vshl.i16	d4, d4, #10     @ encoding: [0x14,0x45,0x9a,0xf2]
@ CHECK: vshl.i32	d4, d4, #17     @ encoding: [0x14,0x45,0xb1,0xf2]
@ CHECK: vshl.i64	d4, d4, #43     @ encoding: [0x94,0x45,0xab,0xf2]
