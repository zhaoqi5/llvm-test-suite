	.file	"wireest.c"
	.text
	.globl	wireestx                        # -- Begin function wireestx
	.p2align	5
	.type	wireestx,@function
wireestx:                               # @wireestx
# %bb.0:                                # %entry
	pcalau12i	$a3, %got_pc_hi20(blockmx)
	ld.d	$a3, $a3, %got_pc_lo12(blockmx)
	pcalau12i	$a4, %got_pc_hi20(blockr)
	ld.d	$a4, $a4, %got_pc_lo12(blockr)
	pcalau12i	$a5, %got_pc_hi20(blockl)
	pcalau12i	$a6, %got_pc_hi20(blockmy)
	ld.d	$a6, $a6, %got_pc_lo12(blockmy)
	ld.d	$a5, $a5, %got_pc_lo12(blockl)
	ld.w	$a3, $a3, 0
	ld.w	$a4, $a4, 0
	ld.w	$a6, $a6, 0
	ld.w	$a5, $a5, 0
	blt	$a2, $a6, .LBB0_3
# %bb.1:                                # %entry
	blt	$a6, $a1, .LBB0_3
# %bb.2:                                # %if.then10
	pcalau12i	$a1, %got_pc_hi20(blockt)
	ld.d	$a1, $a1, %got_pc_lo12(blockt)
	pcalau12i	$a2, %got_pc_hi20(blockb)
	ld.d	$a2, $a2, %got_pc_lo12(blockb)
	ld.w	$a1, $a1, 0
	ld.w	$a2, $a2, 0
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 1
	b	.LBB0_7
.LBB0_3:                                # %if.else12
	sub.w	$a7, $a1, $a6
	srai.d	$t0, $a7, 31
	xor	$a7, $a7, $t0
	sub.w	$a7, $a7, $t0
	sub.w	$a6, $a2, $a6
	srai.d	$t0, $a6, 31
	xor	$a6, $a6, $t0
	sub.w	$a6, $a6, $t0
	bgeu	$a6, $a7, .LBB0_5
# %bb.4:                                # %if.else33
	pcalau12i	$a1, %got_pc_hi20(blockb)
	ld.d	$a1, $a1, %got_pc_lo12(blockb)
	ld.w	$a1, $a1, 0
	b	.LBB0_6
.LBB0_5:                                # %if.then28
	pcalau12i	$a2, %got_pc_hi20(blockt)
	ld.d	$a2, $a2, %got_pc_lo12(blockt)
	ld.w	$a2, $a2, 0
.LBB0_6:                                # %if.end39
	sub.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
.LBB0_7:                                # %if.end39
	slt	$a2, $a3, $a0
	sub.w	$a3, $a4, $a0
	sub.w	$a0, $a0, $a5
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	srai.d	$a2, $a0, 63
	pcalau12i	$a3, %got_pc_hi20(slopeX)
	ld.d	$a3, $a3, %got_pc_lo12(slopeX)
	pcalau12i	$a4, %got_pc_hi20(basefactor)
	ld.d	$a4, $a4, %got_pc_lo12(basefactor)
	andn	$a0, $a0, $a2
	fld.d	$fa1, $a3, 0
	movgr2fr.w	$fa2, $a0
	fld.d	$fa3, $a4, 0
	ffint.d.w	$fa2, $fa2
	pcalau12i	$a0, %got_pc_hi20(slopeY)
	ld.d	$a0, $a0, %got_pc_lo12(slopeY)
	fmadd.d	$fa1, $fa1, $fa2, $fa3
	pcalau12i	$a2, %got_pc_hi20(aveChanWid)
	ld.d	$a2, $a2, %got_pc_lo12(aveChanWid)
	fld.d	$fa2, $a0, 0
	movgr2fr.w	$fa4, $a1
	ffint.d.w	$fa4, $fa4
	ld.w	$a0, $a2, 0
	fmadd.d	$fa2, $fa2, $fa4, $fa3
	fmul.d	$fa1, $fa1, $fa2
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ret
.Lfunc_end0:
	.size	wireestx, .Lfunc_end0-wireestx
                                        # -- End function
	.globl	wireesty                        # -- Begin function wireesty
	.p2align	5
	.type	wireesty,@function
wireesty:                               # @wireesty
# %bb.0:                                # %entry
	pcalau12i	$a3, %got_pc_hi20(blockmy)
	ld.d	$a3, $a3, %got_pc_lo12(blockmy)
	pcalau12i	$a4, %got_pc_hi20(blockt)
	ld.d	$a4, $a4, %got_pc_lo12(blockt)
	pcalau12i	$a5, %got_pc_hi20(blockb)
	pcalau12i	$a6, %got_pc_hi20(blockmx)
	ld.d	$a6, $a6, %got_pc_lo12(blockmx)
	ld.d	$a5, $a5, %got_pc_lo12(blockb)
	ld.w	$a3, $a3, 0
	ld.w	$a4, $a4, 0
	ld.w	$a6, $a6, 0
	ld.w	$a5, $a5, 0
	blt	$a2, $a6, .LBB1_3
# %bb.1:                                # %entry
	blt	$a6, $a1, .LBB1_3
# %bb.2:                                # %if.then10
	pcalau12i	$a1, %got_pc_hi20(blockr)
	ld.d	$a1, $a1, %got_pc_lo12(blockr)
	pcalau12i	$a2, %got_pc_hi20(blockl)
	ld.d	$a2, $a2, %got_pc_lo12(blockl)
	ld.w	$a1, $a1, 0
	ld.w	$a2, $a2, 0
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 1
	b	.LBB1_7
.LBB1_3:                                # %if.else12
	sub.w	$a7, $a1, $a6
	srai.d	$t0, $a7, 31
	xor	$a7, $a7, $t0
	sub.w	$a7, $a7, $t0
	sub.w	$a6, $a2, $a6
	srai.d	$t0, $a6, 31
	xor	$a6, $a6, $t0
	sub.w	$a6, $a6, $t0
	bgeu	$a6, $a7, .LBB1_5
# %bb.4:                                # %if.else33
	pcalau12i	$a1, %got_pc_hi20(blockl)
	ld.d	$a1, $a1, %got_pc_lo12(blockl)
	ld.w	$a1, $a1, 0
	b	.LBB1_6
.LBB1_5:                                # %if.then28
	pcalau12i	$a2, %got_pc_hi20(blockr)
	ld.d	$a2, $a2, %got_pc_lo12(blockr)
	ld.w	$a2, $a2, 0
.LBB1_6:                                # %if.end39
	sub.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
.LBB1_7:                                # %if.end39
	slt	$a2, $a3, $a0
	sub.w	$a3, $a4, $a0
	sub.w	$a0, $a0, $a5
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	srai.d	$a2, $a0, 63
	pcalau12i	$a3, %got_pc_hi20(slopeX)
	ld.d	$a3, $a3, %got_pc_lo12(slopeX)
	pcalau12i	$a4, %got_pc_hi20(basefactor)
	ld.d	$a4, $a4, %got_pc_lo12(basefactor)
	andn	$a0, $a0, $a2
	fld.d	$fa1, $a3, 0
	movgr2fr.w	$fa2, $a1
	fld.d	$fa3, $a4, 0
	ffint.d.w	$fa2, $fa2
	pcalau12i	$a1, %got_pc_hi20(slopeY)
	ld.d	$a1, $a1, %got_pc_lo12(slopeY)
	fmadd.d	$fa1, $fa1, $fa2, $fa3
	pcalau12i	$a2, %got_pc_hi20(aveChanWid)
	ld.d	$a2, $a2, %got_pc_lo12(aveChanWid)
	fld.d	$fa2, $a1, 0
	movgr2fr.w	$fa4, $a0
	ffint.d.w	$fa4, $fa4
	ld.w	$a0, $a2, 0
	fmadd.d	$fa2, $fa2, $fa4, $fa3
	fmul.d	$fa1, $fa1, $fa2
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ret
.Lfunc_end1:
	.size	wireesty, .Lfunc_end1-wireesty
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
