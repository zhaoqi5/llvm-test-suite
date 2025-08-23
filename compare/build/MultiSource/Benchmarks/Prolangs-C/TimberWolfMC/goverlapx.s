	.file	"goverlapx.c"
	.text
	.globl	goverlapx                       # -- Begin function goverlapx
	.p2align	5
	.type	goverlapx,@function
goverlapx:                              # @goverlapx
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(cellarray)
	ld.d	$a5, $a5, %got_pc_lo12(cellarray)
	ld.d	$s7, $a5, 0
	move	$t8, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a6, $s7, $a0
	ld.w	$a0, $a6, 56
	alsl.d	$a0, $a0, $a6, 3
	ld.d	$t0, $a0, 152
	ld.w	$a0, $t0, 76
	ld.w	$t1, $a6, 12
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a0, $fa2
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	ld.w	$a5, $t0, 84
	vldi	$vr2, -928
	fcmp.cle.d	$fcc0, $fa2, $fa1
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
	ld.w	$t2, $a6, 16
	sub.d	$a5, $a5, $a2
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa3, $fa1
	movfr2gr.s	$a5, $fa3
	movgr2fr.w	$fa3, $a5
	ld.w	$a6, $t0, 40
	ffint.d.w	$fa3, $fa3
	fsub.d	$fa1, $fa1, $fa3
	fcmp.cle.d	$fcc1, $fa2, $fa1
	add.d	$a6, $a3, $a6
	sub.w	$t3, $t1, $a6
	ld.w	$a6, $t0, 44
	sub.d	$t4, $t1, $a3
	ld.w	$a7, $t0, 48
	add.d	$a0, $t4, $a0
	add.d	$a0, $a0, $a6
	movcf2gr	$a6, $fcc0
	add.w	$t5, $a0, $a6
	add.d	$a0, $a4, $a7
	st.d	$t0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a6, $t0, 52
	sub.w	$t6, $t2, $a0
	sub.d	$t7, $t2, $a4
	add.d	$a0, $t7, $a5
	add.d	$a0, $a0, $a6
	movcf2gr	$a5, $fcc1
	pcalau12i	$a6, %got_pc_hi20(binOffsetX)
	ld.d	$a6, $a6, %got_pc_lo12(binOffsetX)
	pcalau12i	$a7, %got_pc_hi20(binWidthX)
	ld.d	$a7, $a7, %got_pc_lo12(binWidthX)
	pcalau12i	$t0, %got_pc_hi20(numBinsX)
	ld.d	$t0, $t0, %got_pc_lo12(numBinsX)
	ld.w	$a6, $a6, 0
	ld.w	$a7, $a7, 0
	add.w	$fp, $a0, $a5
	ld.w	$a0, $t0, 0
	st.d	$t3, $sp, 120                   # 8-byte Folded Spill
	sub.w	$a5, $t3, $a6
	div.w	$a5, $a5, $a7
	slti	$t0, $a5, 1
	slt	$t3, $a5, $a0
	maskeqz	$a5, $a5, $t3
	masknez	$t3, $a0, $t3
	or	$a5, $a5, $t3
	masknez	$a5, $a5, $t0
	ori	$t3, $zero, 1
	maskeqz	$t0, $t3, $t0
	or	$s0, $t0, $a5
	st.d	$t5, $sp, 160                   # 8-byte Folded Spill
	sub.w	$a5, $t5, $a6
	div.w	$a5, $a5, $a7
	slt	$a6, $a0, $a5
	slt	$a7, $t3, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t3, $a7
	or	$a5, $a5, $a7
	masknez	$a5, $a5, $a6
	maskeqz	$a0, $a0, $a6
	pcalau12i	$a6, %got_pc_hi20(binOffsetY)
	ld.d	$a6, $a6, %got_pc_lo12(binOffsetY)
	pcalau12i	$a7, %got_pc_hi20(binWidthY)
	ld.d	$a7, $a7, %got_pc_lo12(binWidthY)
	pcalau12i	$t0, %got_pc_hi20(numBinsY)
	ld.d	$t0, $t0, %got_pc_lo12(numBinsY)
	ld.w	$a6, $a6, 0
	ld.w	$a7, $a7, 0
	or	$a5, $a0, $a5
	ld.w	$a0, $t0, 0
	st.d	$t6, $sp, 144                   # 8-byte Folded Spill
	sub.w	$t0, $t6, $a6
	div.w	$t0, $t0, $a7
	slti	$t5, $t0, 1
	slt	$t6, $t0, $a0
	maskeqz	$t0, $t0, $t6
	masknez	$t6, $a0, $t6
	or	$t0, $t0, $t6
	masknez	$t0, $t0, $t5
	maskeqz	$t5, $t3, $t5
	or	$t5, $t5, $t0
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	sub.w	$a6, $fp, $a6
	div.w	$a6, $a6, $a7
	slt	$a7, $a0, $a6
	slt	$t0, $t3, $a6
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $t3, $t0
	or	$a6, $a6, $t0
	masknez	$a6, $a6, $a7
	maskeqz	$a0, $a0, $a7
	or	$a6, $a0, $a6
	xor	$a0, $s0, $a5
	sltui	$a0, $a0, 1
	xor	$a7, $t5, $a6
	sltui	$a7, $a7, 1
	and	$a0, $a0, $a7
	pcalau12i	$a7, %got_pc_hi20(binX)
	ld.d	$a7, $a7, %got_pc_lo12(binX)
	pcalau12i	$t0, %got_pc_hi20(binY)
	ld.d	$t0, $t0, %got_pc_lo12(binY)
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	maskeqz	$t3, $s0, $a0
	st.d	$t5, $sp, 48                    # 8-byte Folded Spill
	maskeqz	$a0, $t5, $a0
	st.w	$t3, $a7, 0
	st.w	$a0, $t0, 0
	bltz	$a5, .LBB0_45
# %bb.1:                                # %for.body.lr.ph
	bltz	$a6, .LBB0_45
# %bb.2:                                # %for.body.preheader
	move	$t5, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockarray)
	ld.d	$a0, $a0, %got_pc_lo12(blockarray)
	pcalau12i	$a7, %got_pc_hi20(numcells)
	ld.d	$a7, $a7, %got_pc_lo12(numcells)
	pcalau12i	$t0, %got_pc_hi20(lapFactor)
	ld.d	$t0, $t0, %got_pc_lo12(lapFactor)
	pcalau12i	$t3, %got_pc_hi20(offset)
	ld.d	$t3, $t3, %got_pc_lo12(offset)
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s3, $a7, 0
	fld.d	$fa1, $t0, 0
	ld.w	$a0, $t3, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a6, 1
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$t8, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.inc375
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$t5, $t5, 1
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	beq	$t5, $a5, .LBB0_46
.LBB0_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #         Child Loop BB0_28 Depth 4
                                        #           Child Loop BB0_37 Depth 5
                                        #           Child Loop BB0_31 Depth 5
	beqz	$t5, .LBB0_6
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	blt	$t5, $a5, .LBB0_3
.LBB0_6:                                # %for.cond93.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a6, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a5, $t5, $a5, 3
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	sltui	$a5, $t5, 1
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %for.inc372
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	beq	$a6, $a5, .LBB0_3
.LBB0_8:                                # %for.body96
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #         Child Loop BB0_28 Depth 4
                                        #           Child Loop BB0_37 Depth 5
                                        #           Child Loop BB0_31 Depth 5
	or	$a5, $a6, $t5
	bstrpick.d	$a5, $a5, 31, 0
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	beqz	$a5, .LBB0_10
# %bb.9:                                # %for.body96
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	slt	$a5, $a6, $a5
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	or	$a5, $a7, $a5
	bnez	$a5, .LBB0_7
.LBB0_10:                               # %if.end109
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	slli.d	$a6, $a6, 3
	ldx.d	$fp, $a5, $a6
	ld.w	$a5, $fp, 0
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB0_7
# %bb.11:                               # %for.body118.preheader
                                        #   in Loop: Header=BB0_8 Depth=2
	addi.d	$a5, $a5, 1
	bstrpick.d	$s5, $a5, 31, 0
	ori	$ra, $zero, 1
	b	.LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_15 Depth=3
	ld.d	$t8, $sp, 136                   # 8-byte Folded Reload
.LBB0_13:                               # %for.inc370
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_14:                               # %for.inc370
                                        #   in Loop: Header=BB0_15 Depth=3
	addi.d	$ra, $ra, 1
	beq	$ra, $s5, .LBB0_7
.LBB0_15:                               # %for.body118
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_28 Depth 4
                                        #           Child Loop BB0_37 Depth 5
                                        #           Child Loop BB0_31 Depth 5
	slli.d	$a5, $ra, 2
	ldx.w	$s0, $fp, $a5
	beq	$s0, $t8, .LBB0_14
# %bb.16:                               # %if.end124
                                        #   in Loop: Header=BB0_15 Depth=3
	slli.d	$a5, $s0, 3
	ldx.d	$a7, $s7, $a5
	ld.w	$a5, $a7, 56
	alsl.d	$a5, $a5, $a7, 3
	ld.d	$a5, $a5, 152
	ld.w	$s2, $a7, 12
	ld.w	$s6, $a7, 16
	ld.w	$a6, $a5, 56
	ld.w	$t0, $a5, 60
	ld.w	$t3, $a5, 64
	ld.w	$t5, $a5, 68
	add.w	$s1, $a6, $s2
	add.w	$t6, $t0, $s2
	add.w	$t0, $t3, $s6
	add.w	$a6, $t5, $s6
	blt	$s3, $s0, .LBB0_18
# %bb.17:                               # %if.then139
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.w	$t3, $a5, 40
	ld.w	$t5, $a5, 44
	ld.w	$t8, $a5, 48
	ld.w	$s4, $a5, 52
	sub.w	$s1, $s1, $t3
	add.w	$t6, $t5, $t6
	sub.w	$t0, $t0, $t8
	add.w	$a6, $s4, $a6
	ld.d	$t8, $sp, 136                   # 8-byte Folded Reload
.LBB0_18:                               # %if.end148
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	bge	$s1, $t3, .LBB0_14
# %bb.19:                               # %if.end148
                                        #   in Loop: Header=BB0_15 Depth=3
	bge	$a0, $t6, .LBB0_14
# %bb.20:                               # %if.end148
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	bge	$t0, $t3, .LBB0_14
# %bb.21:                               # %if.end148
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	bge	$t3, $a6, .LBB0_14
# %bb.22:                               # %if.end161
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$t3, $a0, 60
	ori	$a0, $zero, 1
	bne	$t3, $a0, .LBB0_25
# %bb.23:                               # %land.lhs.true164
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.w	$a7, $a7, 60
	ori	$a0, $zero, 1
	bne	$a7, $a0, .LBB0_25
# %bb.24:                               # %if.then168
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a5, $s1, $a0
	masknez	$a7, $s1, $a5
	maskeqz	$a5, $a0, $a5
	or	$a5, $a5, $a7
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	slt	$a7, $t5, $t6
	masknez	$t3, $t6, $a7
	maskeqz	$a7, $t5, $a7
	or	$a7, $a7, $t3
	ld.d	$t5, $sp, 144                   # 8-byte Folded Reload
	slt	$t3, $t0, $t5
	masknez	$t0, $t0, $t3
	maskeqz	$t3, $t5, $t3
	or	$t0, $t3, $t0
	ld.d	$t5, $sp, 152                   # 8-byte Folded Reload
	slt	$t3, $t5, $a6
	masknez	$a6, $a6, $t3
	maskeqz	$t3, $t5, $t3
	or	$a6, $t3, $a6
	sub.d	$a6, $a6, $t0
	sub.d	$a5, $a7, $a5
	mul.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	movgr2fr.w	$fa3, $a5
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a5, $fa3
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a5
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	b	.LBB0_14
.LBB0_25:                               # %if.else201
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	beqz	$s4, .LBB0_12
# %bb.26:                               # %for.body205.lr.ph
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.d	$t6, $a5, 0
	move	$s1, $zero
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_27:                               # %for.cond202.loopexit
                                        #   in Loop: Header=BB0_28 Depth=4
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB0_42
.LBB0_28:                               # %for.body205
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_15 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_37 Depth 5
                                        #           Child Loop BB0_31 Depth 5
	beqz	$t6, .LBB0_27
# %bb.29:                               # %for.body294.lr.ph
                                        #   in Loop: Header=BB0_28 Depth=4
	ld.w	$a5, $s4, 72
	sub.d	$a5, $a5, $a1
	movgr2fr.w	$fa3, $a5
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a5, $fa4
	movgr2fr.w	$fa4, $a5
	ld.w	$a6, $s4, 76
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa3, $fa3, $fa4
	fcmp.cle.d	$fcc0, $fa2, $fa3
	sub.d	$a6, $a6, $a1
	movgr2fr.w	$fa3, $a6
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a6, $fa4
	movgr2fr.w	$fa4, $a6
	ld.w	$a7, $s4, 80
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa3, $fa3, $fa4
	fcmp.cle.d	$fcc1, $fa2, $fa3
	sub.d	$a7, $a7, $a2
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$t0, $fa4
	movgr2fr.w	$fa4, $t0
	ld.w	$a7, $s4, 84
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa3, $fa3, $fa4
	fcmp.cle.d	$fcc2, $fa2, $fa3
	sub.d	$a7, $a7, $a2
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	ld.w	$a7, $s4, 40
	fmul.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa4, $fa3
	add.d	$a5, $t1, $a5
	add.d	$a7, $a3, $a7
	sub.d	$a5, $a5, $a7
	movcf2gr	$a7, $fcc0
	ld.w	$t3, $s4, 44
	add.w	$a7, $a5, $a7
	movfr2gr.s	$t5, $fa4
	add.d	$a5, $t4, $a6
	add.d	$a5, $a5, $t3
	movcf2gr	$a6, $fcc1
	add.w	$s7, $a5, $a6
	ld.w	$a5, $s4, 48
	movgr2fr.w	$fa4, $t5
	ffint.d.w	$fa4, $fa4
	add.d	$a6, $t2, $t0
	add.d	$a5, $a4, $a5
	sub.d	$a5, $a6, $a5
	movcf2gr	$a6, $fcc2
	add.w	$a5, $a5, $a6
	ld.w	$a6, $s4, 52
	fsub.d	$fa3, $fa3, $fa4
	fcmp.cle.d	$fcc0, $fa2, $fa3
	add.d	$t0, $t7, $t5
	add.d	$a6, $t0, $a6
	movcf2gr	$t0, $fcc0
	add.w	$a6, $a6, $t0
	move	$t0, $t6
	blt	$s3, $s0, .LBB0_31
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_30:                               # %for.inc.us
                                        #   in Loop: Header=BB0_31 Depth=5
	ld.d	$t0, $t0, 0
	beqz	$t0, .LBB0_27
.LBB0_31:                               # %for.body294.us
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_15 Depth=3
                                        #         Parent Loop BB0_28 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t3, $t0, 56
	add.w	$t3, $t3, $s2
	bge	$t3, $s7, .LBB0_30
# %bb.32:                               # %for.body294.us
                                        #   in Loop: Header=BB0_31 Depth=5
	ld.w	$t5, $t0, 60
	add.w	$t5, $t5, $s2
	bge	$a7, $t5, .LBB0_30
# %bb.33:                               # %for.body294.us
                                        #   in Loop: Header=BB0_31 Depth=5
	ld.w	$t8, $t0, 64
	add.w	$t8, $t8, $s6
	bge	$t8, $a6, .LBB0_30
# %bb.34:                               # %for.body294.us
                                        #   in Loop: Header=BB0_31 Depth=5
	ld.w	$s8, $t0, 68
	add.w	$s8, $s8, $s6
	bge	$a5, $s8, .LBB0_30
# %bb.35:                               # %if.end327.us
                                        #   in Loop: Header=BB0_31 Depth=5
	slt	$a0, $t3, $a7
	masknez	$t3, $t3, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $t3
	slt	$t3, $s7, $t5
	masknez	$t5, $t5, $t3
	maskeqz	$t3, $s7, $t3
	or	$t3, $t3, $t5
	slt	$t5, $t8, $a5
	masknez	$t8, $t8, $t5
	maskeqz	$t5, $a5, $t5
	or	$t5, $t5, $t8
	slt	$t8, $a6, $s8
	masknez	$s8, $s8, $t8
	maskeqz	$t8, $a6, $t8
	or	$t8, $t8, $s8
	sub.d	$t5, $t8, $t5
	sub.d	$a0, $t3, $a0
	mul.d	$a0, $t5, $a0
	add.w	$s1, $a0, $s1
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_36:                               # %for.inc
                                        #   in Loop: Header=BB0_37 Depth=5
	ld.d	$t0, $t0, 0
	beqz	$t0, .LBB0_27
.LBB0_37:                               # %for.body294
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_15 Depth=3
                                        #         Parent Loop BB0_28 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a0, $t0, 56
	ld.w	$t3, $t0, 40
	add.d	$a0, $a0, $s2
	sub.w	$t3, $a0, $t3
	bge	$t3, $s7, .LBB0_36
# %bb.38:                               # %for.body294
                                        #   in Loop: Header=BB0_37 Depth=5
	ld.w	$a0, $t0, 60
	ld.w	$t5, $t0, 44
	add.d	$a0, $a0, $s2
	add.w	$t8, $t5, $a0
	bge	$a7, $t8, .LBB0_36
# %bb.39:                               # %for.body294
                                        #   in Loop: Header=BB0_37 Depth=5
	ld.w	$a0, $t0, 64
	ld.w	$t5, $t0, 48
	add.d	$a0, $a0, $s6
	sub.w	$t5, $a0, $t5
	bge	$t5, $a6, .LBB0_36
# %bb.40:                               # %for.body294
                                        #   in Loop: Header=BB0_37 Depth=5
	ld.w	$a0, $t0, 68
	ld.w	$s8, $t0, 52
	add.d	$a0, $a0, $s6
	add.w	$s8, $s8, $a0
	bge	$a5, $s8, .LBB0_36
# %bb.41:                               # %if.end327
                                        #   in Loop: Header=BB0_37 Depth=5
	slt	$a0, $t3, $a7
	masknez	$t3, $t3, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $t3
	slt	$t3, $s7, $t8
	masknez	$t8, $t8, $t3
	maskeqz	$t3, $s7, $t3
	or	$t3, $t3, $t8
	slt	$t8, $t5, $a5
	masknez	$t5, $t5, $t8
	maskeqz	$t8, $a5, $t8
	or	$t5, $t8, $t5
	slt	$t8, $a6, $s8
	masknez	$s8, $s8, $t8
	maskeqz	$t8, $a6, $t8
	or	$t8, $t8, $s8
	sub.d	$t5, $t8, $t5
	sub.d	$a0, $t3, $a0
	mul.d	$a0, $t5, $a0
	add.w	$s1, $a0, $s1
	b	.LBB0_36
.LBB0_42:                               # %for.end359
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.d	$t8, $sp, 136                   # 8-byte Folded Reload
	beqz	$s1, .LBB0_44
# %bb.43:                               # %if.then362
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a0, $fa3
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a0
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
.LBB0_44:                               # %for.inc370
                                        #   in Loop: Header=BB0_15 Depth=3
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_13
.LBB0_45:
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
.LBB0_46:                               # %for.end377
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end0:
	.size	goverlapx, .Lfunc_end0-goverlapx
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
