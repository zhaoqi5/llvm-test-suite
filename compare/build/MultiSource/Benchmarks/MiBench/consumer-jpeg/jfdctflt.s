	.file	"jfdctflt.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function jpeg_fdct_float
.LCPI0_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	0                               # 0x0
	.text
	.globl	jpeg_fdct_float
	.p2align	5
	.type	jpeg_fdct_float,@function
jpeg_fdct_float:                        # @jpeg_fdct_float
# %bb.0:                                # %entry
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, 32
	fld.s	$fa2, $a0, 64
	fld.s	$fa3, $a0, 96
	fld.s	$fa4, $a0, 128
	fld.s	$fa5, $a0, 160
	fld.s	$fa6, $a0, 192
	fld.s	$fa7, $a0, 224
	xvinsve0.w	$xr0, $xr1, 1
	xvinsve0.w	$xr0, $xr2, 2
	xvinsve0.w	$xr0, $xr3, 3
	xvinsve0.w	$xr0, $xr4, 4
	xvinsve0.w	$xr0, $xr5, 5
	xvinsve0.w	$xr0, $xr6, 6
	xvinsve0.w	$xr0, $xr7, 7
	fld.s	$fa2, $a0, 28
	fld.s	$fa1, $a0, 60
	fld.s	$fa3, $a0, 92
	fld.s	$fa4, $a0, 124
	fld.s	$fa5, $a0, 156
	fld.s	$fa6, $a0, 188
	fld.s	$fa7, $a0, 220
	fld.s	$ft0, $a0, 252
	xvinsve0.w	$xr2, $xr1, 1
	xvinsve0.w	$xr2, $xr3, 2
	xvinsve0.w	$xr2, $xr4, 3
	xvinsve0.w	$xr2, $xr5, 4
	xvinsve0.w	$xr2, $xr6, 5
	xvinsve0.w	$xr2, $xr7, 6
	xvinsve0.w	$xr2, $xr8, 7
	xvfadd.s	$xr1, $xr0, $xr2
	xvfsub.s	$xr0, $xr0, $xr2
	fld.s	$fa2, $a0, 4
	fld.s	$fa3, $a0, 36
	fld.s	$fa4, $a0, 68
	fld.s	$fa5, $a0, 100
	fld.s	$fa6, $a0, 132
	fld.s	$fa7, $a0, 164
	fld.s	$ft0, $a0, 196
	fld.s	$ft1, $a0, 228
	xvinsve0.w	$xr2, $xr3, 1
	xvinsve0.w	$xr2, $xr4, 2
	xvinsve0.w	$xr2, $xr5, 3
	xvinsve0.w	$xr2, $xr6, 4
	xvinsve0.w	$xr2, $xr7, 5
	xvinsve0.w	$xr2, $xr8, 6
	xvinsve0.w	$xr2, $xr9, 7
	fld.s	$fa4, $a0, 24
	fld.s	$fa3, $a0, 56
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 120
	fld.s	$fa7, $a0, 152
	fld.s	$ft0, $a0, 184
	fld.s	$ft1, $a0, 216
	fld.s	$ft2, $a0, 248
	xvinsve0.w	$xr4, $xr3, 1
	xvinsve0.w	$xr4, $xr5, 2
	xvinsve0.w	$xr4, $xr6, 3
	xvinsve0.w	$xr4, $xr7, 4
	xvinsve0.w	$xr4, $xr8, 5
	xvinsve0.w	$xr4, $xr9, 6
	xvinsve0.w	$xr4, $xr10, 7
	xvfadd.s	$xr3, $xr2, $xr4
	xvfsub.s	$xr2, $xr2, $xr4
	fld.s	$fa4, $a0, 8
	fld.s	$fa5, $a0, 40
	fld.s	$fa6, $a0, 72
	fld.s	$fa7, $a0, 104
	fld.s	$ft0, $a0, 136
	fld.s	$ft1, $a0, 168
	fld.s	$ft2, $a0, 200
	fld.s	$ft3, $a0, 232
	xvinsve0.w	$xr4, $xr5, 1
	xvinsve0.w	$xr4, $xr6, 2
	xvinsve0.w	$xr4, $xr7, 3
	xvinsve0.w	$xr4, $xr8, 4
	xvinsve0.w	$xr4, $xr9, 5
	xvinsve0.w	$xr4, $xr10, 6
	xvinsve0.w	$xr4, $xr11, 7
	fld.s	$fa6, $a0, 20
	fld.s	$fa5, $a0, 52
	fld.s	$fa7, $a0, 84
	fld.s	$ft0, $a0, 116
	fld.s	$ft1, $a0, 148
	fld.s	$ft2, $a0, 180
	fld.s	$ft3, $a0, 212
	fld.s	$ft4, $a0, 244
	xvinsve0.w	$xr6, $xr5, 1
	xvinsve0.w	$xr6, $xr7, 2
	xvinsve0.w	$xr6, $xr8, 3
	xvinsve0.w	$xr6, $xr9, 4
	xvinsve0.w	$xr6, $xr10, 5
	xvinsve0.w	$xr6, $xr11, 6
	xvinsve0.w	$xr6, $xr12, 7
	xvfadd.s	$xr5, $xr4, $xr6
	xvfsub.s	$xr4, $xr4, $xr6
	fld.s	$fa6, $a0, 12
	fld.s	$fa7, $a0, 44
	fld.s	$ft0, $a0, 76
	fld.s	$ft1, $a0, 108
	fld.s	$ft2, $a0, 140
	fld.s	$ft3, $a0, 172
	fld.s	$ft4, $a0, 204
	fld.s	$ft5, $a0, 236
	xvinsve0.w	$xr6, $xr7, 1
	xvinsve0.w	$xr6, $xr8, 2
	xvinsve0.w	$xr6, $xr9, 3
	xvinsve0.w	$xr6, $xr10, 4
	xvinsve0.w	$xr6, $xr11, 5
	xvinsve0.w	$xr6, $xr12, 6
	xvinsve0.w	$xr6, $xr13, 7
	fld.s	$fa7, $a0, 16
	fld.s	$ft0, $a0, 48
	fld.s	$ft1, $a0, 80
	fld.s	$ft2, $a0, 112
	fld.s	$ft3, $a0, 144
	fld.s	$ft4, $a0, 176
	fld.s	$ft5, $a0, 208
	fld.s	$ft6, $a0, 240
	xvinsve0.w	$xr7, $xr8, 1
	xvinsve0.w	$xr7, $xr9, 2
	xvinsve0.w	$xr7, $xr10, 3
	xvinsve0.w	$xr7, $xr11, 4
	xvinsve0.w	$xr7, $xr12, 5
	xvinsve0.w	$xr7, $xr13, 6
	xvinsve0.w	$xr7, $xr14, 7
	xvfadd.s	$xr8, $xr6, $xr7
	xvfsub.s	$xr9, $xr6, $xr7
	xvfadd.s	$xr7, $xr1, $xr8
	xvfsub.s	$xr10, $xr1, $xr8
	xvfadd.s	$xr1, $xr3, $xr5
	xvfsub.s	$xr3, $xr3, $xr5
	xvfadd.s	$xr6, $xr1, $xr7
	xvstelm.w	$xr6, $a0, 32, 1
	xvstelm.w	$xr6, $a0, 64, 2
	xvstelm.w	$xr6, $a0, 96, 3
	xvstelm.w	$xr6, $a0, 128, 4
	xvstelm.w	$xr6, $a0, 160, 5
	xvstelm.w	$xr6, $a0, 192, 6
	xvstelm.w	$xr6, $a0, 224, 7
	xvfsub.s	$xr5, $xr7, $xr1
	xvstelm.w	$xr5, $a0, 48, 1
	xvstelm.w	$xr5, $a0, 80, 2
	xvstelm.w	$xr5, $a0, 112, 3
	xvstelm.w	$xr5, $a0, 144, 4
	xvstelm.w	$xr5, $a0, 176, 5
	xvstelm.w	$xr5, $a0, 208, 6
	xvstelm.w	$xr5, $a0, 240, 7
	xvfadd.s	$xr3, $xr3, $xr10
	lu12i.w	$a1, 258896
	ori	$a1, $a1, 1267
	xvreplgr2vr.w	$xr1, $a1
	xvfmul.s	$xr3, $xr3, $xr1
	xvfadd.s	$xr8, $xr10, $xr3
	xvstelm.w	$xr8, $a0, 40, 1
	xvstelm.w	$xr8, $a0, 72, 2
	xvstelm.w	$xr8, $a0, 104, 3
	xvstelm.w	$xr8, $a0, 136, 4
	xvstelm.w	$xr8, $a0, 168, 5
	xvstelm.w	$xr8, $a0, 200, 6
	xvstelm.w	$xr8, $a0, 232, 7
	xvfsub.s	$xr7, $xr10, $xr3
	xvstelm.w	$xr7, $a0, 56, 1
	xvstelm.w	$xr7, $a0, 88, 2
	xvstelm.w	$xr7, $a0, 120, 3
	xvstelm.w	$xr7, $a0, 152, 4
	xvstelm.w	$xr7, $a0, 184, 5
	xvstelm.w	$xr7, $a0, 216, 6
	xvstelm.w	$xr7, $a0, 248, 7
	xvfadd.s	$xr9, $xr4, $xr9
	xvfadd.s	$xr10, $xr2, $xr4
	xvfadd.s	$xr11, $xr0, $xr2
	xvfsub.s	$xr3, $xr9, $xr11
	lu12i.w	$a1, 257086
	ori	$a1, $a1, 3861
	xvreplgr2vr.w	$xr2, $a1
	xvfmul.s	$xr12, $xr3, $xr2
	lu12i.w	$a1, 258216
	ori	$a1, $a1, 3028
	xvreplgr2vr.w	$xr3, $a1
	xvfmadd.s	$xr9, $xr9, $xr3, $xr12
	lu12i.w	$a1, 260723
	ori	$a1, $a1, 3445
	xvreplgr2vr.w	$xr4, $a1
	xvfmadd.s	$xr11, $xr11, $xr4, $xr12
	xvfmul.s	$xr10, $xr10, $xr1
	xvfadd.s	$xr12, $xr0, $xr10
	xvfsub.s	$xr0, $xr0, $xr10
	xvfadd.s	$xr10, $xr0, $xr9
	xvstelm.w	$xr10, $a0, 52, 1
	xvstelm.w	$xr10, $a0, 84, 2
	xvstelm.w	$xr10, $a0, 116, 3
	xvstelm.w	$xr10, $a0, 148, 4
	xvstelm.w	$xr10, $a0, 180, 5
	xvstelm.w	$xr10, $a0, 212, 6
	xvstelm.w	$xr10, $a0, 244, 7
	xvfsub.s	$xr0, $xr0, $xr9
	xvstelm.w	$xr0, $a0, 44, 1
	xvstelm.w	$xr0, $a0, 76, 2
	xvstelm.w	$xr0, $a0, 108, 3
	xvstelm.w	$xr0, $a0, 140, 4
	xvstelm.w	$xr0, $a0, 172, 5
	xvstelm.w	$xr0, $a0, 204, 6
	xvstelm.w	$xr0, $a0, 236, 7
	xvfadd.s	$xr9, $xr12, $xr11
	xvstelm.w	$xr9, $a0, 36, 1
	xvstelm.w	$xr9, $a0, 68, 2
	xvstelm.w	$xr9, $a0, 100, 3
	xvstelm.w	$xr9, $a0, 132, 4
	xvstelm.w	$xr9, $a0, 164, 5
	xvstelm.w	$xr9, $a0, 196, 6
	xvstelm.w	$xr9, $a0, 228, 7
	xvfsub.s	$xr11, $xr12, $xr11
	xvpermi.d	$xr6, $xr6, 68
	xvpermi.d	$xr9, $xr9, 68
	xvpackev.w	$xr6, $xr9, $xr6
	xvpermi.d	$xr6, $xr6, 68
	xvpermi.d	$xr6, $xr6, 68
	xvpermi.d	$xr8, $xr8, 68
	xvpermi.d	$xr8, $xr8, 68
	xvpackev.d	$xr6, $xr8, $xr6
	xvpermi.d	$xr6, $xr6, 68
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr8, $a1, %pc_lo12(.LCPI0_0)
	xvpermi.d	$xr0, $xr0, 68
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	xvld	$xr9, $a1, %pc_lo12(.LCPI0_1)
	xvshuf.w	$xr8, $xr0, $xr6
	xvpermi.d	$xr0, $xr8, 68
	xvpermi.d	$xr5, $xr5, 68
	xvshuf.d	$xr9, $xr5, $xr0
	xvpickve2gr.w	$a1, $xr10, 0
	xvinsgr2vr.w	$xr9, $a1, 5
	xvpickve2gr.d	$a1, $xr7, 0
	xvinsgr2vr.d	$xr9, $a1, 3
	xvpickve2gr.w	$a1, $xr11, 0
	xvinsgr2vr.w	$xr9, $a1, 7
	xvst	$xr9, $a0, 0
	xvstelm.w	$xr11, $a0, 60, 1
	xvstelm.w	$xr11, $a0, 92, 2
	xvstelm.w	$xr11, $a0, 124, 3
	xvstelm.w	$xr11, $a0, 156, 4
	xvstelm.w	$xr11, $a0, 220, 6
	xvstelm.w	$xr11, $a0, 252, 7
	xvld	$xr0, $a0, 224
	xvld	$xr5, $a0, 32
	xvld	$xr6, $a0, 192
	xvstelm.w	$xr11, $a0, 188, 5
	xvfadd.s	$xr7, $xr9, $xr0
	xvfsub.s	$xr0, $xr9, $xr0
	xvfadd.s	$xr8, $xr5, $xr6
	xvld	$xr9, $a0, 64
	xvld	$xr10, $a0, 160
	xvld	$xr11, $a0, 96
	xvld	$xr12, $a0, 128
	xvfsub.s	$xr5, $xr5, $xr6
	xvfadd.s	$xr6, $xr9, $xr10
	xvfsub.s	$xr9, $xr9, $xr10
	xvfadd.s	$xr10, $xr11, $xr12
	xvfsub.s	$xr11, $xr11, $xr12
	xvfadd.s	$xr12, $xr7, $xr10
	xvfsub.s	$xr7, $xr7, $xr10
	xvfadd.s	$xr10, $xr8, $xr6
	xvfsub.s	$xr6, $xr8, $xr6
	xvfadd.s	$xr8, $xr10, $xr12
	xvst	$xr8, $a0, 0
	xvfsub.s	$xr8, $xr12, $xr10
	xvst	$xr8, $a0, 128
	xvfadd.s	$xr6, $xr6, $xr7
	xvfmul.s	$xr6, $xr6, $xr1
	xvfadd.s	$xr8, $xr7, $xr6
	xvst	$xr8, $a0, 64
	xvfsub.s	$xr6, $xr7, $xr6
	xvst	$xr6, $a0, 192
	xvfadd.s	$xr6, $xr9, $xr11
	xvfadd.s	$xr7, $xr5, $xr9
	xvfadd.s	$xr5, $xr0, $xr5
	xvfsub.s	$xr8, $xr6, $xr5
	xvfmul.s	$xr2, $xr8, $xr2
	xvfmadd.s	$xr3, $xr6, $xr3, $xr2
	xvfmadd.s	$xr2, $xr5, $xr4, $xr2
	xvfmul.s	$xr1, $xr7, $xr1
	xvfadd.s	$xr4, $xr0, $xr1
	xvfsub.s	$xr0, $xr0, $xr1
	xvfadd.s	$xr1, $xr0, $xr3
	xvst	$xr1, $a0, 160
	xvfsub.s	$xr0, $xr0, $xr3
	xvst	$xr0, $a0, 96
	xvfadd.s	$xr0, $xr4, $xr2
	xvst	$xr0, $a0, 32
	xvfsub.s	$xr0, $xr4, $xr2
	xvst	$xr0, $a0, 224
	ret
.Lfunc_end0:
	.size	jpeg_fdct_float, .Lfunc_end0-jpeg_fdct_float
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
