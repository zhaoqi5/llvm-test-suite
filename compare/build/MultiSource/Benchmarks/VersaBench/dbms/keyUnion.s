	.file	"keyUnion.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function keyUnion
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	keyUnion
	.p2align	5
	.type	keyUnion,@function
keyUnion:                               # @keyUnion
# %bb.0:                                # %entry
	xvld	$xr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_0)
	xvld	$xr2, $a1, 0
	xvori.b	$xr3, $xr1, 0
	xvshuf.d	$xr3, $xr2, $xr0
	xvshuf.d	$xr1, $xr0, $xr2
	xvfcmp.clt.s	$xr1, $xr3, $xr1
	xvbitsel.v	$xr0, $xr2, $xr0, $xr1
	xvst	$xr0, $a2, 0
	ret
.Lfunc_end0:
	.size	keyUnion, .Lfunc_end0-keyUnion
                                        # -- End function
	.globl	keysUnion                       # -- Begin function keysUnion
	.p2align	5
	.type	keysUnion,@function
keysUnion:                              # @keysUnion
# %bb.0:                                # %entry
	xvld	$xr0, $a0, 8
	xvst	$xr0, $a1, 0
	ld.d	$a0, $a0, 40
	beqz	$a0, .LBB1_3
# %bb.1:                                # %for.body.lr.ph
	xvld	$xr0, $a1, 0
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a0, 8
	xvfcmp.clt.s	$xr2, $xr1, $xr0
	xvpickve2gr.w	$a2, $xr2, 3
	xvpickve2gr.w	$a3, $xr2, 2
	xvpickve2gr.w	$a4, $xr2, 1
	xvpickve2gr.w	$a5, $xr2, 0
	xvfcmp.clt.s	$xr2, $xr0, $xr1
	xvpickve2gr.w	$a6, $xr2, 7
	xvpickve2gr.w	$a7, $xr2, 6
	xvpickve2gr.w	$t0, $xr2, 5
	xvpickve2gr.w	$t1, $xr2, 4
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 0
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr2, $a4, 1
	ext.w.h	$a3, $a3
	xvinsgr2vr.w	$xr2, $a3, 2
	ext.w.h	$a2, $a2
	xvinsgr2vr.w	$xr2, $a2, 3
	ext.w.h	$a2, $t1
	xvinsgr2vr.w	$xr2, $a2, 4
	ext.w.h	$a2, $t0
	xvinsgr2vr.w	$xr2, $a2, 5
	ext.w.h	$a2, $a7
	xvinsgr2vr.w	$xr2, $a2, 6
	ld.d	$a0, $a0, 40
	ext.w.h	$a2, $a6
	xvinsgr2vr.w	$xr2, $a2, 7
	xvbitsel.v	$xr0, $xr0, $xr1, $xr2
	xvst	$xr0, $a1, 0
	bnez	$a0, .LBB1_2
.LBB1_3:                                # %for.end
	ret
.Lfunc_end1:
	.size	keysUnion, .Lfunc_end1-keysUnion
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
