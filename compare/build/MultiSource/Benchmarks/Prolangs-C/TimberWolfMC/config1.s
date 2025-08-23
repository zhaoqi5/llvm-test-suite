	.file	"config1.c"
	.text
	.globl	config1                         # -- Begin function config1
	.p2align	5
	.type	config1,@function
config1:                                # @config1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	ld.w	$a3, $a0, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB0_8
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a1, %got_pc_hi20(cellarray)
	ld.d	$a2, $a1, %got_pc_lo12(cellarray)
	move	$a1, $zero
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a4, $zero, 1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a6, $a5, 56
	ld.w	$a7, $a5, 60
	ld.w	$t0, $a5, 64
	ld.w	$a5, $a5, 68
	sub.d	$a6, $a7, $a6
	sub.d	$a5, $a5, $t0
	mul.d	$a5, $a5, $a6
	add.w	$a1, $a5, $a1
.LBB0_3:                                # %for.inc21
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a3, .LBB0_7
.LBB0_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a2, $a5
	ld.w	$a6, $a5, 56
	ld.w	$a7, $a5, 60
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 152
	beq	$a7, $a0, .LBB0_2
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a5, $a5, 0
	beqz	$a5, .LBB0_3
	.p2align	4, , 16
.LBB0_6:                                # %for.body11
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a5, 56
	ld.w	$a7, $a5, 60
	ld.w	$t0, $a5, 64
	ld.w	$t1, $a5, 68
	ld.d	$a5, $a5, 0
	sub.d	$a6, $a7, $a6
	sub.d	$a7, $t1, $t0
	mul.d	$a6, $a7, $a6
	add.w	$a1, $a6, $a1
	bnez	$a5, .LBB0_6
	b	.LBB0_3
.LBB0_7:                                # %for.end22.loopexit
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	b	.LBB0_9
.LBB0_8:
	movgr2fr.d	$fa0, $zero
.LBB0_9:                                # %for.end22
	pcalau12i	$a0, %got_pc_hi20(coreGiven)
	ld.d	$a0, $a0, %got_pc_lo12(coreGiven)
	ld.w	$fp, $a0, 0
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB0_12
# %bb.10:                               # %for.end22.split
	ftintrz.w.d	$fa0, $fa1
	movfr2gr.s	$a1, $fa0
	beqz	$fp, .LBB0_13
.LBB0_11:                               # %if.else29
	pcalau12i	$a0, %got_pc_hi20(perim)
	ld.d	$a0, $a0, %got_pc_lo12(perim)
	ld.wu	$a0, $a0, 0
	srli.d	$a2, $a0, 31
	pcalau12i	$a3, %got_pc_hi20(blockr)
	ld.d	$a3, $a3, %got_pc_lo12(blockr)
	pcalau12i	$a4, %got_pc_hi20(blockt)
	ld.d	$a4, $a4, %got_pc_lo12(blockt)
	add.w	$a0, $a0, $a2
	srli.d	$a5, $a0, 1
	ld.w	$a2, $a3, 0
	ld.w	$a0, $a4, 0
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a5, $a1
	addi.d	$a1, $a1, -2
	b	.LBB0_14
.LBB0_12:                               # %call.sqrt
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	ftintrz.w.d	$fa0, $fa1
	movfr2gr.s	$a1, $fa0
	bnez	$fp, .LBB0_11
.LBB0_13:                               # %if.then24
	pcalau12i	$a0, %got_pc_hi20(blockt)
	pcalau12i	$a2, %got_pc_hi20(perim)
	ld.d	$a2, $a2, %got_pc_lo12(perim)
	ld.d	$a3, $a0, %got_pc_lo12(blockt)
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a4, $a0, %got_pc_lo12(blockr)
	ld.wu	$a2, $a2, 0
	addi.w	$a0, $a1, 1
	st.w	$a0, $a3, 0
	st.w	$a0, $a4, 0
	srli.d	$a1, $a2, 31
	add.w	$a1, $a2, $a1
	srli.d	$a1, $a1, 1
	slli.d	$a2, $a0, 1
	sub.d	$a1, $a1, $a2
	move	$a2, $a0
.LBB0_14:                               # %if.end37
	pcalau12i	$a3, %got_pc_hi20(maxWeight)
	ld.d	$a3, $a3, %got_pc_lo12(maxWeight)
	pcalau12i	$a4, %got_pc_hi20(baseWeight)
	ld.d	$a4, $a4, %got_pc_lo12(baseWeight)
	pcalau12i	$a5, %got_pc_hi20(aveChanWid)
	ld.d	$a5, $a5, %got_pc_lo12(aveChanWid)
	ld.w	$a3, $a3, 0
	ld.w	$a4, $a4, 0
	pcalau12i	$a6, %pc_hi20(totChanLen)
	st.w	$a1, $a6, %pc_lo12(totChanLen)
	st.w	$zero, $a5, 0
	sub.d	$a1, $a3, $a4
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	pcalau12i	$a1, %got_pc_hi20(slopeX)
	ld.d	$a1, $a1, %got_pc_lo12(slopeX)
	vldi	$vr2, -928
	fmul.d	$fa1, $fa1, $fa2
	fdiv.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a1, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa2
	pcalau12i	$a0, %got_pc_hi20(slopeY)
	ld.d	$a0, $a0, %got_pc_lo12(slopeY)
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %got_pc_hi20(basefactor)
	ld.d	$a1, $a1, %got_pc_lo12(basefactor)
	fst.d	$fa0, $a0, 0
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a1, 0
	pcaddu18i	$ra, %call36(placepads)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a0, $a0, %got_pc_lo12(blockr)
	pcalau12i	$a1, %got_pc_hi20(blockl)
	ld.d	$a1, $a1, %got_pc_lo12(blockl)
	ld.w	$a3, $a0, 0
	ld.w	$a1, $a1, 0
	add.d	$a4, $a1, $a3
	bstrpick.d	$a5, $a4, 31, 31
	pcalau12i	$a0, %got_pc_hi20(blockt)
	ld.d	$a0, $a0, %got_pc_lo12(blockt)
	pcalau12i	$a2, %got_pc_hi20(blockb)
	ld.d	$a6, $a2, %got_pc_lo12(blockb)
	pcalau12i	$a2, %got_pc_hi20(blockmx)
	ld.d	$a7, $a2, %got_pc_lo12(blockmx)
	ld.w	$a2, $a0, 0
	ld.w	$a0, $a6, 0
	add.w	$a4, $a4, $a5
	srli.d	$a4, $a4, 1
	st.w	$a4, $a7, 0
	add.d	$a4, $a0, $a2
	bstrpick.d	$a5, $a4, 31, 31
	pcalau12i	$a6, %got_pc_hi20(numBinsX)
	ld.d	$a6, $a6, %got_pc_lo12(numBinsX)
	pcalau12i	$a7, %got_pc_hi20(blockmy)
	ld.d	$a7, $a7, %got_pc_lo12(blockmy)
	add.w	$a4, $a4, $a5
	ld.wu	$a5, $a6, 0
	srli.d	$a4, $a4, 1
	st.w	$a4, $a7, 0
	sub.w	$a4, $a3, $a1
	addi.w	$a6, $a5, 0
	div.w	$a4, $a4, $a6
	mul.d	$a6, $a4, $a5
	add.d	$a6, $a1, $a6
	sub.w	$a3, $a3, $a6
	srli.d	$a6, $a5, 31
	add.w	$a5, $a5, $a6
	srai.d	$a5, $a5, 1
	pcalau12i	$a6, %got_pc_hi20(binWidthX)
	ld.d	$a6, $a6, %got_pc_lo12(binWidthX)
	slt	$a3, $a3, $a5
	xori	$a3, $a3, 1
	add.d	$a3, $a4, $a3
	st.w	$a3, $a6, 0
	pcalau12i	$a4, %got_pc_hi20(numBinsY)
	ld.d	$a4, $a4, %got_pc_lo12(numBinsY)
	pcalau12i	$a5, %got_pc_hi20(binOffsetX)
	ld.d	$a5, $a5, %got_pc_lo12(binOffsetX)
	sub.d	$a1, $a1, $a3
	ld.w	$a3, $a4, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a5, 0
	sub.w	$a1, $a2, $a0
	div.w	$a1, $a1, $a3
	mul.d	$a4, $a1, $a3
	add.d	$a4, $a0, $a4
	sub.w	$a2, $a2, $a4
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 1
	pcalau12i	$a4, %got_pc_hi20(binWidthY)
	ld.d	$a4, $a4, %got_pc_lo12(binWidthY)
	slt	$a2, $a2, $a3
	xori	$a2, $a2, 1
	add.d	$a1, $a1, $a2
	st.w	$a1, $a4, 0
	pcalau12i	$a2, %got_pc_hi20(binOffsetY)
	ld.d	$a2, $a2, %got_pc_lo12(binOffsetY)
	sub.d	$a0, $a0, $a1
	addi.d	$a1, $a0, 1
	ori	$a0, $zero, 1
	st.w	$a1, $a2, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(loadbins)
	jr	$t8
.Lfunc_end0:
	.size	config1, .Lfunc_end0-config1
                                        # -- End function
	.type	totChanLen,@object              # @totChanLen
	.comm	totChanLen,4,4
	.type	totNetLen,@object               # @totNetLen
	.comm	totNetLen,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
