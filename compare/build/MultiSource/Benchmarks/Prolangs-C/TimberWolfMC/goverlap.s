	.file	"goverlap.c"
	.text
	.globl	goverlap                        # -- Begin function goverlap
	.p2align	5
	.type	goverlap,@function
goverlap:                               # @goverlap
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a7, %got_pc_hi20(cellarray)
	ld.d	$a7, $a7, %got_pc_lo12(cellarray)
	ld.d	$a7, $a7, 0
	slli.d	$t0, $a0, 3
	ldx.d	$s7, $a7, $t0
	alsl.d	$a3, $a3, $s7, 3
	ld.d	$s0, $a3, 152
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a3, $s0, 56
	pcalau12i	$a5, %got_pc_hi20(numcells)
	ld.d	$a5, $a5, %got_pc_lo12(numcells)
	ld.w	$a6, $s0, 60
	ld.w	$t0, $s0, 64
	ld.w	$t1, $s0, 68
	ld.w	$t2, $a5, 0
	add.w	$t3, $a3, $a1
	add.w	$t4, $a6, $a1
	add.w	$a5, $t0, $a2
	add.w	$t6, $t1, $a2
	blt	$t2, $a0, .LBB0_2
# %bb.1:                                # %if.then
	ld.w	$a3, $s0, 40
	ld.w	$a6, $s0, 44
	ld.w	$t0, $s0, 48
	ld.w	$t1, $s0, 52
	sub.w	$t3, $t3, $a3
	add.w	$t4, $a6, $t4
	sub.w	$a5, $a5, $t0
	add.w	$t6, $t1, $t6
.LBB0_2:                                # %if.end
	pcalau12i	$a3, %got_pc_hi20(binOffsetX)
	ld.d	$a3, $a3, %got_pc_lo12(binOffsetX)
	pcalau12i	$a6, %got_pc_hi20(binWidthX)
	ld.d	$a6, $a6, %got_pc_lo12(binWidthX)
	pcalau12i	$t0, %got_pc_hi20(numBinsX)
	ld.d	$t0, $t0, %got_pc_lo12(numBinsX)
	ld.w	$a3, $a3, 0
	ld.w	$a6, $a6, 0
	ld.w	$t0, $t0, 0
	sub.w	$t1, $t3, $a3
	div.w	$t1, $t1, $a6
	slti	$t5, $t1, 1
	slt	$t7, $t1, $t0
	maskeqz	$t1, $t1, $t7
	masknez	$t7, $t0, $t7
	or	$t1, $t1, $t7
	masknez	$t1, $t1, $t5
	ori	$t7, $zero, 1
	maskeqz	$t5, $t7, $t5
	or	$s1, $t5, $t1
	sub.w	$a3, $t4, $a3
	div.w	$a3, $a3, $a6
	slt	$a6, $t0, $a3
	slt	$t1, $t7, $a3
	maskeqz	$a3, $a3, $t1
	masknez	$t1, $t7, $t1
	or	$a3, $a3, $t1
	masknez	$a3, $a3, $a6
	maskeqz	$a6, $t0, $a6
	pcalau12i	$t0, %got_pc_hi20(binOffsetY)
	ld.d	$t0, $t0, %got_pc_lo12(binOffsetY)
	pcalau12i	$t1, %got_pc_hi20(binWidthY)
	ld.d	$t1, $t1, %got_pc_lo12(binWidthY)
	pcalau12i	$t5, %got_pc_hi20(numBinsY)
	ld.d	$t5, $t5, %got_pc_lo12(numBinsY)
	ld.w	$t0, $t0, 0
	ld.w	$t1, $t1, 0
	or	$a3, $a6, $a3
	ld.w	$a6, $t5, 0
	sub.w	$t5, $a5, $t0
	div.w	$t5, $t5, $t1
	slti	$t8, $t5, 1
	slt	$fp, $t5, $a6
	maskeqz	$t5, $t5, $fp
	masknez	$fp, $a6, $fp
	or	$t5, $t5, $fp
	masknez	$t5, $t5, $t8
	maskeqz	$t8, $t7, $t8
	or	$t8, $t8, $t5
	sub.w	$t0, $t6, $t0
	div.w	$t0, $t0, $t1
	slt	$t1, $a6, $t0
	slt	$t5, $t7, $t0
	maskeqz	$t0, $t0, $t5
	masknez	$t5, $t7, $t5
	or	$t0, $t0, $t5
	masknez	$t0, $t0, $t1
	maskeqz	$a6, $a6, $t1
	or	$a6, $a6, $t0
	xor	$t0, $s1, $a3
	sltui	$t0, $t0, 1
	xor	$t1, $t8, $a6
	sltui	$t1, $t1, 1
	and	$t0, $t0, $t1
	pcalau12i	$t1, %got_pc_hi20(binX)
	ld.d	$t1, $t1, %got_pc_lo12(binX)
	pcalau12i	$t5, %got_pc_hi20(binY)
	ld.d	$t5, $t5, %got_pc_lo12(binY)
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	maskeqz	$t7, $s1, $t0
	st.d	$t8, $sp, 64                    # 8-byte Folded Spill
	maskeqz	$t0, $t8, $t0
	st.w	$t7, $t1, 0
	st.w	$t0, $t5, 0
	bltz	$a3, .LBB0_55
# %bb.3:                                # %for.body.lr.ph
	bltz	$a6, .LBB0_55
# %bb.4:                                # %for.body.preheader
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(blockarray)
	ld.d	$t0, $t0, %got_pc_lo12(blockarray)
	pcalau12i	$t1, %got_pc_hi20(lapFactor)
	ld.d	$t1, $t1, %got_pc_lo12(lapFactor)
	pcalau12i	$t5, %got_pc_hi20(offset)
	ld.d	$t5, $t5, %got_pc_lo12(offset)
	move	$a5, $zero
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	ld.d	$t0, $t0, 0
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	fld.d	$fa0, $t1, 0
	ld.w	$t0, $t5, 0
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a6, $a6, 1
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a3, $a6, 31, 0
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %for.inc264
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a5, $a5, 1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	beq	$a5, $a3, .LBB0_56
.LBB0_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_37 Depth 5
	beqz	$a5, .LBB0_8
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	blt	$a5, $a3, .LBB0_5
.LBB0_8:                                # %for.cond53.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $zero
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	sltui	$a3, $a5, 1
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %for.inc261
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$s5, $s5, 1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	beq	$s5, $a3, .LBB0_5
.LBB0_10:                               # %for.body55
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_37 Depth 5
	or	$a3, $s5, $a5
	bstrpick.d	$a3, $a3, 31, 0
	beqz	$a3, .LBB0_12
# %bb.11:                               # %for.body55
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	slt	$a3, $s5, $a3
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	or	$a3, $a5, $a3
	bnez	$a3, .LBB0_9
.LBB0_12:                               # %if.end64
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a6, $s5, 3
	ldx.d	$s8, $a3, $a6
	ld.w	$a3, $s8, 0
	ori	$a5, $zero, 1
	blt	$a3, $a5, .LBB0_9
# %bb.13:                               # %for.body72.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$a3, $a3, 1
	bstrpick.d	$ra, $a3, 31, 0
	ori	$s0, $zero, 1
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               # %if.else88
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	beqz	$a3, .LBB0_19
	.p2align	4, , 16
.LBB0_15:                               # %for.inc259
                                        #   in Loop: Header=BB0_16 Depth=3
	addi.d	$s0, $s0, 1
	beq	$s0, $ra, .LBB0_9
.LBB0_16:                               # %for.body72
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_37 Depth 5
	slli.d	$a3, $s0, 2
	ldx.w	$a6, $s8, $a3
	beq	$a6, $a0, .LBB0_15
# %bb.17:                               # %if.end77
                                        #   in Loop: Header=BB0_16 Depth=3
	slli.d	$a3, $a6, 3
	ldx.d	$t1, $a7, $a3
	beq	$a6, $a4, .LBB0_14
# %bb.18:                               # %if.then81
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a3, $t1, 56
	alsl.d	$a3, $a3, $t1, 3
	addi.d	$a3, $a3, 152
	move	$t0, $t1
	b	.LBB0_20
.LBB0_19:                               # %if.then90
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a3, $a3, $t1, 3
	addi.d	$a3, $a3, 152
	move	$t0, $s7
.LBB0_20:                               # %if.end98
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a3, $a3, 0
	ld.w	$t7, $t0, 16
	ld.w	$s2, $t0, 12
	ld.w	$t0, $a3, 56
	ld.w	$t5, $a3, 60
	ld.w	$t8, $a3, 64
	ld.w	$fp, $a3, 68
	add.w	$s6, $t0, $s2
	add.w	$s3, $t5, $s2
	add.w	$s1, $t8, $t7
	add.w	$t8, $fp, $t7
	blt	$t2, $a6, .LBB0_22
# %bb.21:                               # %if.then108
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$t0, $a3, 40
	ld.w	$t5, $a3, 44
	ld.w	$fp, $a3, 48
	ld.w	$s4, $a3, 52
	sub.w	$s6, $s6, $t0
	add.w	$s3, $t5, $s3
	sub.w	$s1, $s1, $fp
	add.w	$t8, $s4, $t8
.LBB0_22:                               # %if.end117
                                        #   in Loop: Header=BB0_16 Depth=3
	bge	$s6, $t4, .LBB0_15
# %bb.23:                               # %if.end117
                                        #   in Loop: Header=BB0_16 Depth=3
	bge	$t3, $s3, .LBB0_15
# %bb.24:                               # %if.end117
                                        #   in Loop: Header=BB0_16 Depth=3
	bge	$s1, $t6, .LBB0_15
# %bb.25:                               # %if.end117
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	bge	$a5, $t8, .LBB0_15
# %bb.26:                               # %if.end126
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$t0, $s7, 60
	ori	$a5, $zero, 1
	bne	$t0, $a5, .LBB0_29
# %bb.27:                               # %land.lhs.true128
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$t0, $t1, 60
	ori	$a5, $zero, 1
	bne	$t0, $a5, .LBB0_29
# %bb.28:                               # %if.then131
                                        #   in Loop: Header=BB0_16 Depth=3
	slt	$a3, $s6, $t3
	masknez	$a6, $s6, $a3
	maskeqz	$a3, $t3, $a3
	or	$a3, $a3, $a6
	slt	$a6, $t4, $s3
	masknez	$t0, $s3, $a6
	maskeqz	$a6, $t4, $a6
	or	$a6, $a6, $t0
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	slt	$t0, $s1, $a5
	masknez	$t1, $s1, $t0
	maskeqz	$t0, $a5, $t0
	or	$t0, $t0, $t1
	slt	$t1, $t6, $t8
	masknez	$t5, $t8, $t1
	maskeqz	$t1, $t6, $t1
	or	$t1, $t1, $t5
	sub.d	$t0, $t1, $t0
	sub.d	$a3, $a6, $a3
	mul.d	$a3, $t0, $a3
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a3, $fa1
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a3
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	b	.LBB0_15
.LBB0_29:                               # %if.else154
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s6, $a5, 0
	beqz	$s6, .LBB0_15
# %bb.30:                               # %for.body158.lr.ph
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a3, $a3, 0
	beqz	$a3, .LBB0_15
# %bb.31:                               # %for.body158.lr.ph.split
                                        #   in Loop: Header=BB0_16 Depth=3
	move	$s1, $zero
	bge	$t2, $a6, .LBB0_43
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_32:                               # %for.cond180.for.cond155.loopexit_crit_edge.split.us.us
                                        #   in Loop: Header=BB0_33 Depth=4
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB0_52
.LBB0_33:                               # %for.body158.us176
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_37 Depth 5
	ld.w	$a6, $s6, 56
	ld.w	$t0, $s6, 60
	ld.w	$t5, $s6, 64
	ld.w	$t8, $s6, 68
	add.w	$a6, $a6, $a1
	add.w	$t1, $t0, $a1
	add.w	$s3, $t5, $a2
	add.w	$s7, $t8, $a2
	blt	$t2, $a0, .LBB0_35
# %bb.34:                               # %if.then169.us187
                                        #   in Loop: Header=BB0_33 Depth=4
	ld.w	$t0, $s6, 40
	ld.w	$t5, $s6, 44
	ld.w	$t8, $s6, 48
	ld.w	$fp, $s6, 52
	sub.w	$a6, $a6, $t0
	add.w	$t1, $t5, $t1
	sub.w	$s3, $s3, $t8
	add.w	$s7, $fp, $s7
.LBB0_35:                               # %if.end178.us196
                                        #   in Loop: Header=BB0_33 Depth=4
	move	$t8, $a3
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               # %for.inc.us.us
                                        #   in Loop: Header=BB0_37 Depth=5
	ld.d	$t8, $t8, 0
	beqz	$t8, .LBB0_32
.LBB0_37:                               # %for.body183.us.us
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_33 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t0, $t8, 56
	add.w	$t0, $t0, $s2
	bge	$t0, $t1, .LBB0_36
# %bb.38:                               # %for.body183.us.us
                                        #   in Loop: Header=BB0_37 Depth=5
	ld.w	$t5, $t8, 60
	add.w	$t5, $t5, $s2
	bge	$a6, $t5, .LBB0_36
# %bb.39:                               # %for.body183.us.us
                                        #   in Loop: Header=BB0_37 Depth=5
	ld.w	$fp, $t8, 64
	add.w	$fp, $fp, $t7
	bge	$fp, $s7, .LBB0_36
# %bb.40:                               # %for.body183.us.us
                                        #   in Loop: Header=BB0_37 Depth=5
	ld.w	$s4, $t8, 68
	add.w	$s4, $s4, $t7
	bge	$s3, $s4, .LBB0_36
# %bb.41:                               # %if.end216.us.us
                                        #   in Loop: Header=BB0_37 Depth=5
	slt	$a5, $t0, $a6
	masknez	$t0, $t0, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $t0
	slt	$t0, $t1, $t5
	masknez	$t5, $t5, $t0
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $t5
	slt	$t5, $fp, $s3
	masknez	$fp, $fp, $t5
	maskeqz	$t5, $s3, $t5
	or	$t5, $t5, $fp
	slt	$fp, $s7, $s4
	masknez	$s4, $s4, $fp
	maskeqz	$fp, $s7, $fp
	or	$fp, $fp, $s4
	sub.d	$t5, $fp, $t5
	sub.d	$a5, $t0, $a5
	mul.d	$a5, $t5, $a5
	add.w	$s1, $a5, $s1
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_42:                               # %for.cond180.for.cond155.loopexit_crit_edge.split
                                        #   in Loop: Header=BB0_43 Depth=4
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB0_52
.LBB0_43:                               # %for.body158
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_47 Depth 5
	ld.w	$a5, $s6, 56
	ld.w	$t0, $s6, 60
	ld.w	$t1, $s6, 64
	ld.w	$t5, $s6, 68
	add.w	$a6, $a5, $a1
	add.w	$s7, $t0, $a1
	add.w	$t1, $t1, $a2
	add.w	$s3, $t5, $a2
	blt	$t2, $a0, .LBB0_45
# %bb.44:                               # %if.then169
                                        #   in Loop: Header=BB0_43 Depth=4
	ld.w	$a5, $s6, 40
	ld.w	$t0, $s6, 44
	ld.w	$t5, $s6, 48
	ld.w	$t8, $s6, 52
	sub.w	$a6, $a6, $a5
	add.w	$s7, $t0, $s7
	sub.w	$t1, $t1, $t5
	add.w	$s3, $t8, $s3
.LBB0_45:                               # %if.end178
                                        #   in Loop: Header=BB0_43 Depth=4
	move	$t8, $a3
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_46:                               # %for.inc
                                        #   in Loop: Header=BB0_47 Depth=5
	ld.d	$t8, $t8, 0
	beqz	$t8, .LBB0_42
.LBB0_47:                               # %for.body183
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_43 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a5, $t8, 56
	ld.w	$t0, $t8, 40
	add.d	$a5, $a5, $s2
	sub.w	$s4, $a5, $t0
	bge	$s4, $s7, .LBB0_46
# %bb.48:                               # %for.body183
                                        #   in Loop: Header=BB0_47 Depth=5
	ld.w	$a5, $t8, 60
	ld.w	$t0, $t8, 44
	add.d	$a5, $a5, $s2
	add.w	$fp, $t0, $a5
	bge	$a6, $fp, .LBB0_46
# %bb.49:                               # %for.body183
                                        #   in Loop: Header=BB0_47 Depth=5
	ld.w	$a5, $t8, 64
	ld.w	$t0, $t8, 48
	add.d	$a5, $a5, $t7
	sub.w	$t0, $a5, $t0
	bge	$t0, $s3, .LBB0_46
# %bb.50:                               # %for.body183
                                        #   in Loop: Header=BB0_47 Depth=5
	ld.w	$a5, $t8, 68
	ld.w	$t5, $t8, 52
	add.d	$a5, $a5, $t7
	add.w	$t5, $t5, $a5
	bge	$t1, $t5, .LBB0_46
# %bb.51:                               # %if.end216
                                        #   in Loop: Header=BB0_47 Depth=5
	slt	$a5, $s4, $a6
	masknez	$s4, $s4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $s4
	slt	$s4, $s7, $fp
	masknez	$fp, $fp, $s4
	maskeqz	$s4, $s7, $s4
	or	$fp, $s4, $fp
	slt	$s4, $t0, $t1
	masknez	$t0, $t0, $s4
	maskeqz	$s4, $t1, $s4
	or	$t0, $s4, $t0
	slt	$s4, $s3, $t5
	masknez	$t5, $t5, $s4
	maskeqz	$s4, $s3, $s4
	or	$t5, $s4, $t5
	sub.d	$t0, $t5, $t0
	sub.d	$a5, $fp, $a5
	mul.d	$a5, $t0, $a5
	add.w	$s1, $a5, $s1
	b	.LBB0_46
.LBB0_52:                               # %for.end248
                                        #   in Loop: Header=BB0_16 Depth=3
	beqz	$s1, .LBB0_54
# %bb.53:                               # %if.then251
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	add.d	$a3, $a3, $s1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a3, $fa1
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a3
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
.LBB0_54:                               # %for.inc259
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_15
.LBB0_55:
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
.LBB0_56:                               # %for.end266
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end0:
	.size	goverlap, .Lfunc_end0-goverlap
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
