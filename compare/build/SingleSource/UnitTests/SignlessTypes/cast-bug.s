	.file	"cast-bug.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
.LCPI0_1:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	bltz	$a0, .LBB0_4
# %bb.1:                                # %iter.check
	addi.w	$a3, $a0, 2
	ori	$a0, $zero, 2
	slt	$a1, $a0, $a3
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	ori	$a2, $zero, 5
	ori	$a6, $zero, 1
	blt	$a3, $a2, .LBB0_13
# %bb.2:                                # %vector.main.loop.iter.check
	addi.d	$a0, $a1, -1
	ori	$a4, $zero, 2
	ori	$a5, $zero, 17
	addi.w	$a2, $a0, 0
	bge	$a3, $a5, .LBB0_5
# %bb.3:
	move	$a3, $zero
	ori	$a6, $zero, 1
	ori	$a5, $zero, 2
	b	.LBB0_9
.LBB0_4:
	ori	$a0, $zero, 1
	ret
.LBB0_5:                                # %vector.ph
	move	$a3, $a0
	bstrins.d	$a3, $zero, 3, 0
	ori	$a6, $zero, 2
	move	$a5, $a0
	bstrins.d	$a5, $a6, 3, 0
	pcalau12i	$a6, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a6, %pc_lo12(.LCPI0_0)
	pcalau12i	$a6, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI0_1)
	xvrepli.b	$xr2, 0
	xvrepli.w	$xr3, 1
	xvrepli.w	$xr4, 17
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvand.v	$xr5, $xr0, $xr3
	xvseqi.w	$xr5, $xr5, 0
	xvand.v	$xr5, $xr5, $xr4
	xvadd.w	$xr1, $xr1, $xr5
	xvadd.w	$xr2, $xr2, $xr5
	addi.w	$a6, $a6, -16
	xvaddi.wu	$xr0, $xr0, 16
	bnez	$a6, .LBB0_6
# %bb.7:                                # %middle.block
	xvadd.w	$xr0, $xr2, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	addi.w	$a7, $a3, 0
	xvpickve2gr.w	$a6, $xr0, 0
	beq	$a2, $a7, .LBB0_15
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a7, $a0, 12
	beqz	$a7, .LBB0_12
.LBB0_9:                                # %vec.epilog.ph
	move	$a7, $a0
	bstrins.d	$a7, $zero, 1, 0
	bstrins.d	$a0, $a4, 1, 0
	pcalau12i	$a4, %pc_hi20(.LCPI0_2)
	vld	$vr1, $a4, %pc_lo12(.LCPI0_2)
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a6, 0
	vreplgr2vr.w	$vr2, $a5
	vadd.w	$vr1, $vr2, $vr1
	sub.d	$a3, $a3, $a7
	vrepli.w	$vr2, 1
	vrepli.w	$vr3, 17
	.p2align	4, , 16
.LBB0_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vand.v	$vr4, $vr1, $vr2
	vseqi.w	$vr4, $vr4, 0
	vand.v	$vr4, $vr4, $vr3
	vadd.w	$vr0, $vr0, $vr4
	addi.w	$a3, $a3, 4
	vaddi.wu	$vr1, $vr1, 4
	bnez	$a3, .LBB0_10
# %bb.11:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	addi.w	$a3, $a7, 0
	vpickve2gr.w	$a6, $vr0, 0
	bne	$a2, $a3, .LBB0_13
	b	.LBB0_15
.LBB0_12:
	ori	$a0, $a3, 2
.LBB0_13:                               # %for.body.preheader
	addi.w	$a1, $a1, 1
	.p2align	4, , 16
.LBB0_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	andi	$a2, $a0, 1
	sltui	$a2, $a2, 1
	addi.w	$a3, $a6, 17
	masknez	$a4, $a6, $a2
	maskeqz	$a2, $a3, $a2
	addi.w	$a0, $a0, 1
	or	$a6, $a2, $a4
	bne	$a1, $a0, .LBB0_14
.LBB0_15:                               # %for.end.loopexit
	addi.d	$a0, $a6, -35
	sltu	$a0, $zero, $a0
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
