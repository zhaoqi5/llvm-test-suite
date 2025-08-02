	.file	"weighted_prediction.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function estimate_weighting_factor_P_slice
.LCPI0_0:
	.dword	0x4040000000000000              # double 32
	.text
	.globl	estimate_weighting_factor_P_slice
	.p2align	5
	.type	estimate_weighting_factor_P_slice,@function
estimate_weighting_factor_P_slice:      # @estimate_weighting_factor_P_slice
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a3, $a1, 0
	ldptr.w	$a2, $a3, 15268
	ori	$a1, $zero, 2
	beqz	$a2, .LBB0_3
# %bb.1:                                # %land.lhs.true
	ld.w	$a2, $a3, 12
	ldptr.d	$a4, $a3, 14224
	ori	$a5, $zero, 536
	mul.d	$a5, $a2, $a5
	add.d	$a4, $a4, $a5
	ld.w	$a4, $a4, 424
	beqz	$a4, .LBB0_3
# %bb.2:                                # %cond.true
	andi	$a1, $a2, 1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 6
	masknez	$a2, $a2, $a1
	ori	$a4, $zero, 4
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
.LBB0_3:                                # %cond.end
	addi.d	$sp, $sp, -1648
	st.d	$ra, $sp, 1640                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1592                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1584                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1576                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1568                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1560                  # 8-byte Folded Spill
	move	$a6, $zero
	pcalau12i	$a2, %pc_hi20(luma_log_weight_denom)
	ori	$a4, $zero, 5
	st.w	$a4, $a2, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a2, %pc_hi20(chroma_log_weight_denom)
	st.w	$a4, $a2, %pc_lo12(chroma_log_weight_denom)
	pcalau12i	$a2, %pc_hi20(wp_luma_round)
	ori	$a4, $zero, 16
	st.w	$a4, $a2, %pc_lo12(wp_luma_round)
	pcalau12i	$a2, %pc_hi20(wp_chroma_round)
	st.w	$a4, $a2, %pc_lo12(wp_chroma_round)
	pcalau12i	$a2, %pc_hi20(wp_weight)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a7, $a2, %pc_lo12(wp_weight)
	pcalau12i	$a5, %pc_hi20(wp_offset)
	ld.d	$t0, $a5, %pc_lo12(wp_offset)
	addi.d	$t1, $sp, 24
	addi.d	$t2, $sp, 800
	pcalau12i	$a2, %got_pc_hi20(listXsize)
	ld.d	$a2, $a2, %got_pc_lo12(listXsize)
	ori	$t3, $zero, 1
	ori	$t4, $zero, 32
	ori	$t5, $zero, 32
	lu32i.d	$t5, 32
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %for.inc51
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$t1, $t1, 384
	addi.d	$t2, $t2, 384
	beq	$a6, $a1, .LBB0_8
.LBB0_5:                                # %for.cond12.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	slli.d	$t6, $a6, 2
	ldx.w	$t6, $a2, $t6
	blt	$t6, $t3, .LBB0_4
# %bb.6:                                # %for.cond17.preheader.lr.ph
                                        #   in Loop: Header=BB0_5 Depth=1
	slli.d	$t7, $a6, 3
	ldx.d	$t6, $a7, $t7
	ldx.d	$t7, $t0, $t7
	move	$t8, $zero
	alsl.d	$fp, $a6, $a2, 2
	move	$s0, $t2
	move	$s1, $t1
	.p2align	4, , 16
.LBB0_7:                                # %for.cond17.preheader
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $t6, 0
	ld.d	$s3, $t7, 0
	st.d	$zero, $s1, 0
	st.w	$zero, $s1, 8
	st.d	$t5, $s0, -8
	st.w	$t4, $s0, 0
	st.w	$t4, $s2, 0
	st.w	$zero, $s3, 0
	st.w	$t4, $s2, 4
	st.w	$zero, $s3, 4
	st.w	$t4, $s2, 8
	st.w	$zero, $s3, 8
	addi.d	$t8, $t8, 1
	ld.w	$s2, $fp, 0
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$s1, $s1, 12
	addi.d	$s0, $s0, 12
	blt	$t8, $s2, .LBB0_7
	b	.LBB0_4
.LBB0_8:                                # %for.cond54.preheader
	ld.w	$a6, $a3, 68
	ori	$t0, $zero, 1
	movgr2fr.d	$fa0, $zero
	blt	$a6, $t0, .LBB0_14
# %bb.9:                                # %for.cond57.preheader.lr.ph
	ld.w	$a7, $a3, 52
	blt	$a7, $t0, .LBB0_14
# %bb.10:                               # %for.cond57.preheader.us.preheader
	pcalau12i	$t0, %pc_hi20(imgY_org)
	ld.d	$t0, $t0, %pc_lo12(imgY_org)
	move	$t1, $zero
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB0_11:                               # %for.cond57.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $t0, $t2
	move	$t3, $a7
	.p2align	4, , 16
.LBB0_12:                               # %for.body59.us
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t4, $t2, 0
	movgr2fr.w	$fa1, $t4
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 2
	bnez	$t3, .LBB0_12
# %bb.13:                               # %for.cond57.for.inc68_crit_edge.us
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.d	$t1, $t1, 1
	bne	$t1, $a6, .LBB0_11
.LBB0_14:                               # %for.cond71.preheader
	addi.w	$a7, $a6, 20
	ori	$t0, $zero, 21
	slt	$t1, $t0, $a7
	masknez	$t0, $t0, $t1
	maskeqz	$a7, $a7, $t1
	or	$a7, $a7, $t0
	beqz	$a0, .LBB0_27
# %bb.15:                               # %for.cond76.preheader.preheader
	move	$a0, $zero
	ori	$t0, $zero, 1
	pcalau12i	$t1, %got_pc_hi20(listX)
	ld.d	$t1, $t1, %got_pc_lo12(listX)
	addi.d	$t2, $sp, 24
	addi.d	$t3, $sp, 792
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -928
	addi.w	$t4, $zero, -128
	ori	$t5, $zero, 127
	ori	$t6, $zero, 32
	ori	$t7, $zero, 32
	lu32i.d	$t7, 32
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_16:                               # %for.cond76.for.inc230_crit_edge.split
                                        #   in Loop: Header=BB0_18 Depth=1
	pcalau12i	$a4, %pc_hi20(ref_pic_sub)
	st.d	$s3, $a4, %pc_lo12(ref_pic_sub)
.LBB0_17:                               # %for.inc230
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB0_41
.LBB0_18:                               # %for.cond76.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #         Child Loop BB0_25 Depth 4
	slli.d	$t8, $a0, 2
	ldx.w	$t8, $a2, $t8
	blt	$t8, $t0, .LBB0_17
# %bb.19:                               # %for.body81.lr.ph
                                        #   in Loop: Header=BB0_18 Depth=1
	move	$fp, $zero
	slli.d	$s0, $a0, 3
	ldx.d	$s0, $t1, $s0
	alsl.d	$s1, $a0, $a0, 1
	ld.w	$s3, $a3, 88
	slli.d	$s2, $s1, 7
	add.d	$s1, $t2, $s2
	add.d	$s2, $t3, $s2
	movgr2fr.w	$fa3, $s3
	ffint.d.w	$fa3, $fa3
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_20:                               # %for.end115
                                        #   in Loop: Header=BB0_21 Depth=2
	fsub.d	$fa4, $fa0, $fa4
	fdiv.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa4, $fa2
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a4, $fa4
	alsl.d	$s4, $fp, $s4, 2
	slt	$s5, $t4, $a4
	maskeqz	$a4, $a4, $s5
	masknez	$s5, $t4, $s5
	or	$a4, $a4, $s5
	slti	$s5, $a4, 127
	maskeqz	$a4, $a4, $s5
	masknez	$s5, $t5, $s5
	or	$a4, $a4, $s5
	stx.w	$a4, $s1, $s4
	add.d	$a4, $s2, $s4
	stx.d	$t7, $s2, $s4
	addi.d	$fp, $fp, 1
	st.w	$t6, $a4, 8
	beq	$fp, $t8, .LBB0_16
.LBB0_21:                               # %for.body81
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #         Child Loop BB0_25 Depth 4
	slli.d	$s4, $fp, 3
	ldx.d	$s3, $s0, $s4
	ldptr.d	$s3, $s3, 6448
	fmov.d	$fa4, $fa1
	blt	$a6, $t0, .LBB0_20
# %bb.22:                               # %for.cond96.preheader.lr.ph
                                        #   in Loop: Header=BB0_21 Depth=2
	ld.w	$s6, $a3, 52
	fmov.d	$fa4, $fa1
	blt	$s6, $t0, .LBB0_20
# %bb.23:                               # %for.cond96.preheader.lr.ph.split.us
                                        #   in Loop: Header=BB0_21 Depth=2
	ld.d	$s5, $s3, 0
	ld.d	$s5, $s5, 0
	addi.w	$s7, $s6, 19
	ori	$s6, $zero, 20
	slt	$s8, $s6, $s7
	masknez	$ra, $s6, $s8
	maskeqz	$s7, $s7, $s8
	or	$s7, $s7, $ra
	addi.d	$s7, $s7, -19
	fmov.d	$fa4, $fa1
	.p2align	4, , 16
.LBB0_24:                               # %for.cond96.preheader.us
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_25 Depth 4
	slli.d	$s8, $s6, 3
	ldx.d	$s8, $s5, $s8
	addi.d	$s8, $s8, 40
	move	$ra, $s7
	.p2align	4, , 16
.LBB0_25:                               # %for.body101.us
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        #       Parent Loop BB0_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a4, $s8, 0
	movgr2fr.w	$fa5, $a4
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	addi.d	$ra, $ra, -1
	addi.d	$s8, $s8, 2
	bnez	$ra, .LBB0_25
# %bb.26:                               # %for.cond96.for.inc113_crit_edge.us
                                        #   in Loop: Header=BB0_24 Depth=3
	addi.d	$s6, $s6, 1
	bne	$s6, $a7, .LBB0_24
	b	.LBB0_20
.LBB0_27:                               # %for.cond76.preheader.us.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	move	$a0, $zero
	fmul.d	$fa0, $fa0, $fa1
	pcalau12i	$t0, %got_pc_hi20(listX)
	ld.d	$t0, $t0, %got_pc_lo12(listX)
	addi.d	$t1, $sp, 792
	ori	$t2, $zero, 1
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -928
	ori	$t3, $zero, 32
	ori	$t4, $zero, 32
	lu32i.d	$t4, 32
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_28:                               # %for.cond76.for.inc230_crit_edge.split.us.us
                                        #   in Loop: Header=BB0_30 Depth=1
	pcalau12i	$t5, %pc_hi20(ref_pic_sub)
	st.d	$fp, $t5, %pc_lo12(ref_pic_sub)
.LBB0_29:                               # %for.inc230.us
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB0_41
.LBB0_30:                               # %for.cond76.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_36 Depth 3
                                        #         Child Loop BB0_37 Depth 4
	slli.d	$t5, $a0, 2
	ldx.w	$t5, $a2, $t5
	blez	$t5, .LBB0_29
# %bb.31:                               # %for.body81.lr.ph.us
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$t6, $zero
	slli.d	$t7, $a0, 3
	ldx.d	$t7, $t0, $t7
	alsl.d	$t8, $a0, $a0, 1
	slli.d	$t8, $t8, 7
	add.d	$t8, $t1, $t8
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_32:                               # %if.end.us.us
                                        #   in Loop: Header=BB0_33 Depth=2
	alsl.d	$s0, $t6, $s0, 2
	add.d	$s2, $t8, $s0
	addi.w	$s3, $s1, -128
	sltui	$s3, $s3, -192
	masknez	$s1, $s1, $s3
	maskeqz	$s3, $t3, $s3
	or	$s1, $s3, $s1
	stx.w	$s1, $t8, $s0
	addi.d	$t6, $t6, 1
	st.d	$t4, $s2, 4
	beq	$t6, $t5, .LBB0_28
.LBB0_33:                               # %for.body81.us.us
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_36 Depth 3
                                        #         Child Loop BB0_37 Depth 4
	slli.d	$s0, $t6, 3
	ldx.d	$fp, $t7, $s0
	ldptr.d	$fp, $fp, 6448
	ori	$s1, $zero, 32
	blez	$a6, .LBB0_32
# %bb.34:                               # %for.cond96.preheader.lr.ph.us.us
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$s3, $a3, 52
	blt	$s3, $t2, .LBB0_32
# %bb.35:                               # %for.cond96.preheader.lr.ph.split.us.us.us
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.d	$s2, $fp, 0
	ld.d	$s2, $s2, 0
	addi.w	$s4, $s3, 19
	ori	$s3, $zero, 20
	slt	$s5, $s3, $s4
	masknez	$s6, $s3, $s5
	maskeqz	$s4, $s4, $s5
	or	$s4, $s4, $s6
	addi.d	$s4, $s4, -19
	fmov.d	$fa3, $fa1
	.p2align	4, , 16
.LBB0_36:                               # %for.cond96.preheader.us.us.us
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_37 Depth 4
	slli.d	$s5, $s3, 3
	ldx.d	$s5, $s2, $s5
	addi.d	$s5, $s5, 40
	move	$s6, $s4
	.p2align	4, , 16
.LBB0_37:                               # %for.body101.us.us.us
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_36 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$s7, $s5, 0
	movgr2fr.w	$fa4, $s7
	ffint.d.w	$fa4, $fa4
	fadd.d	$fa3, $fa3, $fa4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 2
	bnez	$s6, .LBB0_37
# %bb.38:                               # %for.cond96.for.inc113_crit_edge.us.us.us
                                        #   in Loop: Header=BB0_36 Depth=3
	addi.d	$s3, $s3, 1
	bne	$s3, $a7, .LBB0_36
# %bb.39:                               # %for.end115.us.us
                                        #   in Loop: Header=BB0_33 Depth=2
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	bcnez	$fcc0, .LBB0_32
# %bb.40:                               # %if.then123.us.us
                                        #   in Loop: Header=BB0_33 Depth=2
	fdiv.d	$fa3, $fa0, $fa3
	fadd.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s1, $fa3
	b	.LBB0_32
.LBB0_41:                               # %for.cond233.preheader
	move	$a0, $zero
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(wp_weight)
	ld.d	$a4, $a5, %pc_lo12(wp_offset)
	addi.d	$a5, $sp, 800
	addi.d	$a6, $sp, 32
	ori	$a7, $zero, 1
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               # %for.inc278
                                        #   in Loop: Header=BB0_43 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a5, $a5, 384
	addi.d	$a6, $a6, 384
	beq	$a0, $a1, .LBB0_46
.LBB0_43:                               # %for.cond238.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_45 Depth 2
	slli.d	$t0, $a0, 2
	ldx.w	$t0, $a2, $t0
	blt	$t0, $a7, .LBB0_42
# %bb.44:                               # %for.cond244.preheader.lr.ph
                                        #   in Loop: Header=BB0_43 Depth=1
	slli.d	$t1, $a0, 3
	ldx.d	$t0, $a3, $t1
	ldx.d	$t1, $a4, $t1
	move	$t2, $zero
	alsl.d	$t3, $a0, $a2, 2
	move	$t4, $a6
	move	$t5, $a5
	.p2align	4, , 16
.LBB0_45:                               # %for.cond244.preheader
                                        #   Parent Loop BB0_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $t0, 0
	ld.d	$t7, $t1, 0
	ld.w	$t8, $t5, -8
	ld.w	$fp, $t4, -8
	st.w	$t8, $t6, 0
	st.w	$fp, $t7, 0
	ld.w	$t8, $t5, -4
	ld.w	$fp, $t4, -4
	ld.w	$s0, $t5, 0
	ld.w	$s1, $t4, 0
	st.w	$t8, $t6, 4
	st.w	$fp, $t7, 4
	st.w	$s0, $t6, 8
	st.w	$s1, $t7, 8
	addi.d	$t2, $t2, 1
	ld.w	$t6, $t3, 0
	addi.d	$t1, $t1, 8
	addi.d	$t5, $t5, 12
	addi.d	$t4, $t4, 12
	addi.d	$t0, $t0, 8
	blt	$t2, $t6, .LBB0_45
	b	.LBB0_42
.LBB0_46:                               # %for.end280
	ld.d	$s8, $sp, 1560                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1568                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1640                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1648
	ret
.Lfunc_end0:
	.size	estimate_weighting_factor_P_slice, .Lfunc_end0-estimate_weighting_factor_P_slice
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function estimate_weighting_factor_B_slice
.LCPI1_0:
	.dword	0x4040000000000000              # double 32
	.text
	.globl	estimate_weighting_factor_B_slice
	.p2align	5
	.type	estimate_weighting_factor_B_slice,@function
estimate_weighting_factor_B_slice:      # @estimate_weighting_factor_B_slice
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2784
	sub.d	$sp, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$s8, $a0, 0
	ldptr.w	$a0, $s8, 15268
	ori	$s5, $zero, 2
	beqz	$a0, .LBB1_3
# %bb.1:                                # %land.lhs.true
	ld.w	$a0, $s8, 12
	ldptr.d	$a1, $s8, 14224
	ori	$a2, $zero, 536
	mul.d	$a2, $a0, $a2
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 424
	beqz	$a1, .LBB1_3
# %bb.2:                                # %cond.true
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 6
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 4
	maskeqz	$a0, $a2, $a0
	or	$s5, $a0, $a1
.LBB1_3:                                # %cond.end
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(luma_log_weight_denom)
	ori	$a2, $zero, 5
	st.w	$a2, $a1, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a1, %pc_hi20(chroma_log_weight_denom)
	st.w	$a2, $a1, %pc_lo12(chroma_log_weight_denom)
	pcalau12i	$a1, %pc_hi20(wp_luma_round)
	ori	$a2, $zero, 16
	st.w	$a2, $a1, %pc_lo12(wp_luma_round)
	pcalau12i	$a1, %pc_hi20(wp_chroma_round)
	st.w	$a2, $a1, %pc_lo12(wp_chroma_round)
	pcalau12i	$s6, %pc_hi20(wp_weight)
	ld.d	$a1, $s6, %pc_lo12(wp_weight)
	pcalau12i	$s7, %pc_hi20(wp_offset)
	ld.d	$a2, $s7, %pc_lo12(wp_offset)
	lu12i.w	$a3, 18
	ori	$a3, $a3, 104
	add.d	$a3, $sp, $a3
	lu12i.w	$a4, 18
	ori	$a4, $a4, 2416
	add.d	$a4, $sp, $a4
	pcalau12i	$a5, %got_pc_hi20(listXsize)
	ld.d	$ra, $a5, %got_pc_lo12(listXsize)
	ori	$a5, $zero, 1
	ori	$a6, $zero, 32
	ori	$a7, $zero, 32
	lu32i.d	$a7, 32
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %for.inc53
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 384
	addi.d	$a4, $a4, 384
	beq	$a0, $s5, .LBB1_8
.LBB1_5:                                # %for.cond14.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	slli.d	$t0, $a0, 2
	ldx.w	$t0, $ra, $t0
	blt	$t0, $a5, .LBB1_4
# %bb.6:                                # %for.cond19.preheader.lr.ph
                                        #   in Loop: Header=BB1_5 Depth=1
	slli.d	$t1, $a0, 3
	ldx.d	$t0, $a1, $t1
	ldx.d	$t1, $a2, $t1
	move	$t2, $zero
	alsl.d	$t3, $a0, $ra, 2
	move	$t4, $a4
	move	$t5, $a3
	.p2align	4, , 16
.LBB1_7:                                # %for.cond19.preheader
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $t0, 0
	ld.d	$t7, $t1, 0
	st.d	$zero, $t5, 0
	st.w	$zero, $t5, 8
	st.d	$a7, $t4, -8
	st.w	$a6, $t4, 0
	st.w	$a6, $t6, 0
	st.w	$zero, $t7, 0
	st.w	$a6, $t6, 4
	st.w	$zero, $t7, 4
	st.w	$a6, $t6, 8
	st.w	$zero, $t7, 8
	addi.d	$t2, $t2, 1
	ld.w	$t6, $t3, 0
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$t5, $t5, 12
	addi.d	$t4, $t4, 12
	blt	$t2, $t6, .LBB1_7
	b	.LBB1_4
.LBB1_8:                                # %for.cond56.preheader
	ld.w	$a0, $ra, 0
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB1_26
# %bb.9:                                # %for.cond59.preheader.lr.ph
	ld.w	$a2, $ra, 4
	lu12i.w	$a1, 3
	blt	$a2, $a3, .LBB1_18
# %bb.10:                               # %for.cond59.preheader.lr.ph.split.us
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a5, $a3, %got_pc_lo12(listX)
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$a6, $a3, %got_pc_lo12(enc_picture)
	move	$a3, $zero
	ld.d	$a4, $a5, 8
	ld.d	$a7, $a6, 0
	ld.d	$a5, $a5, 0
	addi.d	$a6, $sp, 104
	add.d	$a6, $a6, $a1
	ld.w	$a7, $a7, 4
	addi.w	$t0, $zero, -128
	ori	$t1, $zero, 127
	lu12i.w	$t2, 4
	addi.w	$t3, $zero, -1024
	ori	$t4, $zero, 1023
	addi.w	$t5, $zero, -193
	ori	$t6, $zero, 64
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_11:                               # %for.cond59.for.inc188_crit_edge.us
                                        #   in Loop: Header=BB1_12 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 384
	beq	$a3, $a0, .LBB1_18
.LBB1_12:                               # %for.cond59.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	slli.d	$t7, $a3, 3
	ldx.d	$t7, $a5, $t7
	ld.w	$t7, $t7, 4
	sub.w	$t8, $a7, $t7
	slt	$fp, $t0, $t8
	maskeqz	$t8, $t8, $fp
	masknez	$fp, $t0, $fp
	or	$t8, $t8, $fp
	slti	$fp, $t8, 127
	maskeqz	$t8, $t8, $fp
	masknez	$fp, $t1, $fp
	or	$t8, $t8, $fp
	move	$fp, $a6
	move	$s0, $a2
	move	$s1, $a4
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_13:                               # %for.body76.us213.us.preheader
                                        #   in Loop: Header=BB1_15 Depth=2
	ori	$s2, $zero, 32
	st.w	$s2, $fp, 0
	ori	$s3, $zero, 32
.LBB1_14:                               # %for.end184.us
                                        #   in Loop: Header=BB1_15 Depth=2
	stptr.w	$s2, $fp, -12288
	st.w	$s3, $fp, 4
	stptr.w	$s2, $fp, -12284
	st.w	$s3, $fp, 8
	stptr.w	$s2, $fp, -12280
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 12
	beqz	$s0, .LBB1_11
.LBB1_15:                               # %for.body61.us
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s1, 0
	ld.w	$s2, $s2, 4
	beq	$s2, $t7, .LBB1_13
# %bb.16:                               # %for.body61.split.us230
                                        #   in Loop: Header=BB1_15 Depth=2
	sub.w	$s2, $s2, $t7
	slt	$s3, $t0, $s2
	maskeqz	$s2, $s2, $s3
	masknez	$s3, $t0, $s3
	or	$s2, $s2, $s3
	slti	$s3, $s2, 127
	maskeqz	$s2, $s2, $s3
	masknez	$s3, $t1, $s3
	or	$s2, $s2, $s3
	bstrpick.d	$s3, $s2, 7, 7
	add.d	$s3, $s2, $s3
	ext.w.b	$s3, $s3
	srai.d	$s3, $s3, 1
	srai.d	$s4, $s3, 63
	xor	$s3, $s3, $s4
	sub.d	$s3, $s3, $s4
	or	$s3, $s3, $t2
	ext.w.h	$s2, $s2
	div.d	$s2, $s3, $s2
	ext.w.h	$s2, $s2
	mul.d	$s2, $t8, $s2
	addi.w	$s2, $s2, 32
	srai.d	$s2, $s2, 6
	slt	$s3, $t3, $s2
	maskeqz	$s2, $s2, $s3
	masknez	$s3, $t3, $s3
	or	$s2, $s2, $s3
	slti	$s3, $s2, 1023
	maskeqz	$s2, $s2, $s3
	masknez	$s3, $t4, $s3
	or	$s2, $s2, $s3
	srai.d	$s3, $s2, 2
	addi.d	$s2, $s3, -129
	bltu	$s2, $t5, .LBB1_13
# %bb.17:                               # %for.body76.us222.preheader
                                        #   in Loop: Header=BB1_15 Depth=2
	st.w	$s3, $fp, 0
	sub.d	$s2, $t6, $s3
	b	.LBB1_14
.LBB1_18:                               # %for.end190.thread392
	pcalau12i	$a2, %pc_hi20(active_pps)
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.w	$a3, $a2, 196
	ori	$a2, $zero, 2
	bne	$a3, $a2, .LBB1_32
# %bb.19:                               # %for.cond197.preheader.lr.ph
	ld.w	$t0, $ra, 4
	ori	$a2, $zero, 1
	blt	$t0, $a2, .LBB1_27
# %bb.20:                               # %for.cond197.preheader.preheader
	move	$a3, $zero
	pcalau12i	$a4, %pc_hi20(wbp_weight)
	ld.d	$a4, $a4, %pc_lo12(wbp_weight)
	ori	$a1, $a1, 8
	addi.d	$a5, $sp, 104
	add.d	$a1, $a5, $a1
	lu12i.w	$a6, -4
	ori	$a5, $a6, 4088
	ori	$a6, $a6, 4092
	lu12i.w	$a7, -3
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_21:                               # %for.inc242
                                        #   in Loop: Header=BB1_22 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 384
	bge	$a3, $a0, .LBB1_27
.LBB1_22:                               # %for.cond197.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_24 Depth 2
	blt	$t0, $a2, .LBB1_21
# %bb.23:                               # %for.cond200.preheader.lr.ph
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.d	$a0, $a4, 8
	ld.d	$t0, $a4, 0
	slli.d	$t1, $a3, 3
	ldx.d	$a0, $a0, $t1
	ldx.d	$t1, $t0, $t1
	move	$t2, $zero
	move	$t3, $a1
	.p2align	4, , 16
.LBB1_24:                               # %for.cond200.preheader
                                        #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a0, 0
	ld.d	$t4, $t1, 0
	ld.w	$t5, $t3, -8
	ldx.w	$t6, $t3, $a5
	st.w	$t5, $t0, 0
	st.w	$t6, $t4, 0
	ld.w	$t5, $t3, -4
	ldx.w	$t6, $t3, $a6
	ld.w	$t7, $t3, 0
	ldx.w	$t8, $t3, $a7
	st.w	$t5, $t0, 4
	st.w	$t6, $t4, 4
	st.w	$t7, $t0, 8
	st.w	$t8, $t4, 8
	ld.w	$t0, $ra, 4
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, 8
	addi.d	$a0, $a0, 8
	addi.d	$t3, $t3, 12
	blt	$t2, $t0, .LBB1_24
# %bb.25:                               # %for.inc242.loopexit
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a0, $ra, 0
	b	.LBB1_21
.LBB1_26:                               # %for.end190.thread
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a3, $a0, 196
	ori	$a0, $zero, 2
	bne	$a3, $a0, .LBB1_32
.LBB1_27:                               # %for.cond245.preheader
	move	$a0, $zero
	ld.d	$a1, $s6, %pc_lo12(wp_weight)
	ld.d	$a2, $s7, %pc_lo12(wp_offset)
	ori	$a3, $zero, 1
	ori	$a4, $zero, 32
	ori	$a5, $zero, 32
	lu32i.d	$a5, 32
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_28:                               # %for.inc290
                                        #   in Loop: Header=BB1_29 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s5, .LBB1_78
.LBB1_29:                               # %for.cond249.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_31 Depth 2
	slli.d	$a6, $a0, 2
	ldx.w	$a6, $ra, $a6
	blt	$a6, $a3, .LBB1_28
# %bb.30:                               # %for.body253.lr.ph
                                        #   in Loop: Header=BB1_29 Depth=1
	slli.d	$a7, $a0, 3
	ldx.d	$a6, $a1, $a7
	ldx.d	$a7, $a2, $a7
	move	$t0, $zero
	alsl.d	$t1, $a0, $ra, 2
	.p2align	4, , 16
.LBB1_31:                               # %for.body253
                                        #   Parent Loop BB1_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $a6, 0
	st.d	$a5, $t2, 0
	ld.d	$t3, $a7, 0
	st.w	$a4, $t2, 8
	st.d	$zero, $t3, 0
	st.w	$zero, $t3, 8
	ld.w	$t2, $t1, 0
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	blt	$t0, $t2, .LBB1_31
	b	.LBB1_28
.LBB1_32:                               # %for.cond294.preheader
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $s8, 68
	movgr2fr.d	$fs0, $zero
	ori	$t2, $zero, 1
	fmov.d	$fs1, $fs0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	blt	$a0, $t2, .LBB1_39
# %bb.33:                               # %for.cond297.preheader.lr.ph
	ld.w	$a0, $s8, 52
	fmov.d	$fs1, $fs0
	blt	$a0, $t2, .LBB1_39
# %bb.34:                               # %for.cond297.preheader.us.preheader
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$a1, $a1, %pc_lo12(imgY_org)
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB1_35:                               # %for.cond297.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	move	$a4, $a0
	.p2align	4, , 16
.LBB1_36:                               # %for.body299.us
                                        #   Parent Loop BB1_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a3, 0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 2
	bnez	$a4, .LBB1_36
# %bb.37:                               # %for.cond297.for.inc308_crit_edge.us
                                        #   in Loop: Header=BB1_35 Depth=1
	addi.d	$a2, $a2, 1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	bne	$a2, $a3, .LBB1_35
# %bb.38:                               # %for.cond311.preheader.loopexit
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_0)
	fmul.d	$fs1, $fa0, $fa1
.LBB1_39:                               # %for.cond311.preheader
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s7, $zero
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 20
	ori	$a1, $zero, 21
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s8, $a0, $a1
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2428
	add.d	$s2, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s4, $zero, 32
	vrepli.w	$vr3, 32
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2408
	add.d	$s3, $sp, $a0
	st.d	$ra, $sp, 80                    # 8-byte Folded Spill
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	vst	$vr3, $sp, 32                   # 16-byte Folded Spill
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_40:                               # %for.cond316.for.inc423_crit_edge
                                        #   in Loop: Header=BB1_42 Depth=1
	pcalau12i	$a1, %pc_hi20(ref_qpic_sub)
	st.d	$a0, $a1, %pc_lo12(ref_qpic_sub)
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
.LBB1_41:                               # %for.inc423
                                        #   in Loop: Header=BB1_42 Depth=1
	addi.d	$s7, $s7, 1
	addi.d	$s2, $s2, 384
	addi.d	$s3, $s3, 384
	beq	$s7, $s5, .LBB1_59
.LBB1_42:                               # %for.cond316.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_55 Depth 2
                                        #     Child Loop BB1_58 Depth 2
                                        #     Child Loop BB1_46 Depth 2
                                        #       Child Loop BB1_48 Depth 3
                                        #         Child Loop BB1_49 Depth 4
	slli.d	$a0, $s7, 2
	ldx.wu	$fp, $ra, $a0
	addi.w	$s0, $fp, 0
	blt	$s0, $t2, .LBB1_41
# %bb.43:                               # %for.body321.lr.ph
                                        #   in Loop: Header=BB1_42 Depth=1
	alsl.d	$a0, $s7, $s7, 1
	slli.d	$a1, $a0, 7
	slli.d	$a0, $s7, 3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s5, $a2, $a0
	lu12i.w	$a0, 18
	ori	$a0, $a0, 104
	add.d	$a0, $sp, $a0
	add.d	$a0, $a0, $a1
	ori	$s1, $zero, 32
	lu32i.d	$s1, 32
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	blez	$a2, .LBB1_53
# %bb.44:                               # %for.body321.lr.ph.split.us
                                        #   in Loop: Header=BB1_42 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s6, $a2, 52
	lu12i.w	$a2, 18
	ori	$a2, $a2, 2408
	add.d	$a2, $sp, $a2
	add.d	$fp, $a2, $a1
	addi.w	$a1, $s6, 19
	ori	$a3, $zero, 20
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a1, $s0, 3
	alsl.d	$a2, $s0, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a2, $a0, -19
	ld.d	$ra, $sp, 80                    # 8-byte Folded Reload
	ori	$t2, $zero, 1
	vldi	$vr2, -928
	b	.LBB1_46
	.p2align	4, , 16
.LBB1_45:                               # %if.end379.us
                                        #   in Loop: Header=BB1_46 Depth=2
	addi.w	$a5, $a4, -128
	sltui	$a5, $a5, -256
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $s4, $a5
	or	$a4, $a5, $a4
	alsl.d	$a3, $a1, $a3, 2
	add.d	$a5, $fp, $a3
	stx.w	$a4, $fp, $a3
	addi.d	$a1, $a1, 1
	st.d	$s1, $a5, 4
	beq	$a1, $s0, .LBB1_40
.LBB1_46:                               # %for.body321.us
                                        #   Parent Loop BB1_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_48 Depth 3
                                        #         Child Loop BB1_49 Depth 4
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $s5, $a3
	ldptr.d	$a0, $a0, 6448
	ori	$a4, $zero, 32
	blt	$s6, $t2, .LBB1_45
# %bb.47:                               # %for.cond338.preheader.us.us.preheader
                                        #   in Loop: Header=BB1_46 Depth=2
	ld.d	$a5, $a0, 0
	ld.d	$a5, $a5, 0
	ori	$a6, $zero, 20
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB1_48:                               # %for.cond338.preheader.us.us
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_46 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_49 Depth 4
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a5, $a7
	addi.d	$a7, $a7, 40
	move	$t0, $a2
	.p2align	4, , 16
.LBB1_49:                               # %for.body343.us.us
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_46 Depth=2
                                        #       Parent Loop BB1_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$t1, $a7, 0
	movgr2fr.w	$fa1, $t1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 2
	bnez	$t0, .LBB1_49
# %bb.50:                               # %for.cond338.for.inc357_crit_edge.us.us
                                        #   in Loop: Header=BB1_48 Depth=3
	addi.d	$a6, $a6, 1
	bne	$a6, $s8, .LBB1_48
# %bb.51:                               # %for.cond332.for.end359_crit_edge.us
                                        #   in Loop: Header=BB1_46 Depth=2
	fcmp.cune.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB1_45
# %bb.52:                               # %if.then366.us
                                        #   in Loop: Header=BB1_46 Depth=2
	fdiv.d	$fa0, $fs1, $fa0
	fadd.d	$fa0, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_53:                               # %for.body321.preheader
                                        #   in Loop: Header=BB1_42 Depth=1
	slli.d	$a1, $fp, 3
	alsl.d	$a2, $fp, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	ld.d	$ra, $sp, 80                    # 8-byte Folded Reload
	ori	$t2, $zero, 1
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	beq	$s0, $t2, .LBB1_57
# %bb.54:                               # %vector.ph
                                        #   in Loop: Header=BB1_42 Depth=1
	bstrpick.d	$a0, $fp, 30, 1
	slli.d	$a1, $a0, 1
	addi.d	$a2, $s5, 8
	move	$a3, $a1
	move	$a4, $s2
	.p2align	4, , 16
.LBB1_55:                               # %vector.body
                                        #   Parent Loop BB1_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 0
	ldptr.d	$a0, $a0, 6448
	st.d	$s1, $a4, -4
	vst	$vr3, $a4, -20
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -2
	addi.d	$a4, $a4, 24
	bnez	$a3, .LBB1_55
# %bb.56:                               # %middle.block
                                        #   in Loop: Header=BB1_42 Depth=1
	beq	$a1, $fp, .LBB1_40
.LBB1_57:                               # %if.end379.preheader
                                        #   in Loop: Header=BB1_42 Depth=1
	slli.d	$a0, $a1, 3
	alsl.d	$a2, $a1, $a0, 2
	alsl.d	$a3, $a1, $s5, 3
	sub.d	$a1, $fp, $a1
	.p2align	4, , 16
.LBB1_58:                               # %if.end379
                                        #   Parent Loop BB1_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a3, 0
	ldptr.d	$a0, $a0, 6448
	add.d	$a4, $s3, $a2
	stx.d	$s1, $s3, $a2
	st.w	$s4, $a4, 8
	addi.d	$a2, $a2, 12
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB1_58
	b	.LBB1_40
.LBB1_59:                               # %for.end425
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $s0, %pc_lo12(wp_weight)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	bne	$a3, $a2, .LBB1_65
# %bb.60:                               # %for.cond435.preheader.preheader
	move	$a3, $zero
	lu12i.w	$a4, 18
	ori	$a4, $a4, 2416
	add.d	$a4, $sp, $a4
	lu12i.w	$a5, 18
	ori	$a5, $a5, 112
	add.d	$a5, $sp, $a5
	b	.LBB1_62
	.p2align	4, , 16
.LBB1_61:                               # %for.inc475
                                        #   in Loop: Header=BB1_62 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 384
	addi.d	$a5, $a5, 384
	beq	$a3, $s5, .LBB1_70
.LBB1_62:                               # %for.cond435.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_64 Depth 2
	slli.d	$a6, $a3, 2
	ldx.w	$a6, $ra, $a6
	blt	$a6, $a2, .LBB1_61
# %bb.63:                               # %for.cond441.preheader.lr.ph
                                        #   in Loop: Header=BB1_62 Depth=1
	slli.d	$a7, $a3, 3
	ldx.d	$a6, $a0, $a7
	ldx.d	$a7, $a1, $a7
	move	$t0, $zero
	alsl.d	$t1, $a3, $ra, 2
	move	$t2, $a5
	move	$t3, $a4
	.p2align	4, , 16
.LBB1_64:                               # %for.cond441.preheader
                                        #   Parent Loop BB1_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $a6, 0
	ld.d	$t5, $a7, 0
	ld.w	$t6, $t3, -8
	ld.w	$t7, $t2, -8
	st.w	$t6, $t4, 0
	st.w	$t7, $t5, 0
	ld.w	$t6, $t3, -4
	ld.w	$t7, $t2, -4
	ld.w	$t8, $t3, 0
	ld.w	$fp, $t2, 0
	st.w	$t6, $t4, 4
	st.w	$t7, $t5, 4
	st.w	$t8, $t4, 8
	st.w	$fp, $t5, 8
	addi.d	$t0, $t0, 1
	ld.w	$t4, $t1, 0
	addi.d	$a7, $a7, 8
	addi.d	$t3, $t3, 12
	addi.d	$t2, $t2, 12
	addi.d	$a6, $a6, 8
	blt	$t0, $t4, .LBB1_64
	b	.LBB1_61
.LBB1_65:                               # %for.cond484.preheader.preheader
	move	$a3, $zero
	ori	$a4, $zero, 32
	ori	$a5, $zero, 32
	lu32i.d	$a5, 32
	b	.LBB1_67
	.p2align	4, , 16
.LBB1_66:                               # %for.inc526
                                        #   in Loop: Header=BB1_67 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s5, .LBB1_70
.LBB1_67:                               # %for.cond484.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_69 Depth 2
	slli.d	$a6, $a3, 2
	ldx.w	$a6, $ra, $a6
	blt	$a6, $a2, .LBB1_66
# %bb.68:                               # %for.body489.lr.ph
                                        #   in Loop: Header=BB1_67 Depth=1
	slli.d	$a7, $a3, 3
	ldx.d	$a6, $a0, $a7
	ldx.d	$a7, $a1, $a7
	move	$t0, $zero
	alsl.d	$t1, $a3, $ra, 2
	.p2align	4, , 16
.LBB1_69:                               # %for.body489
                                        #   Parent Loop BB1_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $a6, 0
	st.d	$a5, $t2, 0
	ld.d	$t3, $a7, 0
	st.w	$a4, $t2, 8
	st.d	$zero, $t3, 0
	st.w	$zero, $t3, 8
	ld.w	$t2, $t1, 0
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	blt	$t0, $t2, .LBB1_69
	b	.LBB1_66
.LBB1_70:                               # %if.end529
	ld.w	$a5, $ra, 0
	ori	$a0, $zero, 1
	blt	$a5, $a0, .LBB1_78
# %bb.71:                               # %for.cond534.preheader.lr.ph
	ld.w	$a4, $ra, 4
	blt	$a4, $a0, .LBB1_78
# %bb.72:                               # %for.cond534.preheader.preheader
	ld.d	$a0, $s0, %pc_lo12(wp_weight)
	pcalau12i	$a1, %pc_hi20(wbp_weight)
	ld.d	$a1, $a1, %pc_lo12(wbp_weight)
	move	$a2, $zero
	ori	$a3, $zero, 1
	b	.LBB1_74
	.p2align	4, , 16
.LBB1_73:                               # %for.inc578
                                        #   in Loop: Header=BB1_74 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a5, .LBB1_78
.LBB1_74:                               # %for.cond534.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_76 Depth 2
	blt	$a4, $a3, .LBB1_73
# %bb.75:                               # %for.cond538.preheader.lr.ph
                                        #   in Loop: Header=BB1_74 Depth=1
	ld.d	$a4, $a0, 0
	ld.d	$a6, $a1, 0
	slli.d	$t0, $a2, 3
	ld.d	$t1, $a1, 8
	ldx.d	$a5, $a4, $t0
	ldx.d	$a6, $a6, $t0
	ld.d	$a7, $a0, 8
	ldx.d	$t0, $t1, $t0
	move	$t1, $zero
	.p2align	4, , 16
.LBB1_76:                               # %for.cond538.preheader
                                        #   Parent Loop BB1_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a6, 0
	ld.w	$t2, $a5, 0
	ld.d	$t3, $a7, 0
	ld.d	$t4, $t0, 0
	st.w	$t2, $a4, 0
	ld.w	$t2, $t3, 0
	st.w	$t2, $t4, 0
	ld.w	$t2, $a5, 4
	st.w	$t2, $a4, 4
	ld.w	$t2, $t3, 4
	st.w	$t2, $t4, 4
	ld.w	$t2, $a5, 8
	st.w	$t2, $a4, 8
	ld.w	$a4, $t3, 8
	st.w	$a4, $t4, 8
	ld.w	$a4, $ra, 4
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	blt	$t1, $a4, .LBB1_76
# %bb.77:                               # %for.inc578.loopexit
                                        #   in Loop: Header=BB1_74 Depth=1
	ld.w	$a5, $ra, 0
	b	.LBB1_73
.LBB1_78:                               # %if.end581
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2784
	add.d	$sp, $sp, $a0
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	estimate_weighting_factor_B_slice, .Lfunc_end1-estimate_weighting_factor_B_slice
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test_wp_P_slice
.LCPI2_0:
	.dword	0x4040000000000000              # double 32
	.text
	.globl	test_wp_P_slice
	.p2align	5
	.type	test_wp_P_slice,@function
test_wp_P_slice:                        # @test_wp_P_slice
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a3, $a1, 0
	ldptr.w	$a2, $a3, 15268
	ori	$a1, $zero, 2
	beqz	$a2, .LBB2_3
# %bb.1:                                # %land.lhs.true
	ld.w	$a2, $a3, 12
	ldptr.d	$a4, $a3, 14224
	ori	$a5, $zero, 536
	mul.d	$a5, $a2, $a5
	add.d	$a4, $a4, $a5
	ld.w	$a4, $a4, 424
	beqz	$a4, .LBB2_3
# %bb.2:                                # %cond.true
	andi	$a1, $a2, 1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 6
	masknez	$a2, $a2, $a1
	ori	$a4, $zero, 4
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
.LBB2_3:                                # %cond.end
	addi.d	$sp, $sp, -1632
	st.d	$ra, $sp, 1624                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1592                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1584                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1576                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1568                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1560                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1552                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1544                  # 8-byte Folded Spill
	move	$a4, $zero
	pcalau12i	$a2, %pc_hi20(luma_log_weight_denom)
	ori	$a5, $zero, 5
	st.w	$a5, $a2, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a2, %pc_hi20(chroma_log_weight_denom)
	st.w	$a5, $a2, %pc_lo12(chroma_log_weight_denom)
	pcalau12i	$a2, %pc_hi20(wp_luma_round)
	ori	$a5, $zero, 16
	st.w	$a5, $a2, %pc_lo12(wp_luma_round)
	pcalau12i	$a2, %pc_hi20(wp_chroma_round)
	st.w	$a5, $a2, %pc_lo12(wp_chroma_round)
	pcalau12i	$a2, %pc_hi20(wp_weight)
	ld.d	$a5, $a2, %pc_lo12(wp_weight)
	pcalau12i	$a2, %pc_hi20(wp_offset)
	ld.d	$a6, $a2, %pc_lo12(wp_offset)
	addi.d	$a7, $sp, 8
	addi.d	$t0, $sp, 784
	pcalau12i	$a2, %got_pc_hi20(listXsize)
	ld.d	$a2, $a2, %got_pc_lo12(listXsize)
	ori	$t1, $zero, 1
	ori	$t2, $zero, 32
	ori	$t3, $zero, 32
	lu32i.d	$t3, 32
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %for.inc44
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$t0, $t0, 384
	addi.d	$a7, $a7, 384
	beq	$a4, $a1, .LBB2_8
.LBB2_5:                                # %for.cond9.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	slli.d	$t4, $a4, 2
	ldx.w	$t4, $a2, $t4
	blt	$t4, $t1, .LBB2_4
# %bb.6:                                # %for.cond14.preheader.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t5, $a4, 3
	ldx.d	$t4, $a5, $t5
	ldx.d	$t5, $a6, $t5
	move	$t6, $zero
	alsl.d	$t7, $a4, $a2, 2
	move	$t8, $a7
	move	$fp, $t0
	.p2align	4, , 16
.LBB2_7:                                # %for.cond14.preheader
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $t4, 0
	ld.d	$s1, $t5, 0
	st.d	$zero, $t8, 0
	st.w	$zero, $t8, 8
	st.w	$t2, $fp, -8
	st.w	$t2, $s0, 0
	st.w	$zero, $s1, 0
	st.d	$t3, $fp, -4
	st.w	$t2, $s0, 4
	st.w	$zero, $s1, 4
	st.w	$t2, $s0, 8
	st.w	$zero, $s1, 8
	addi.d	$t6, $t6, 1
	ld.w	$s0, $t7, 0
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$fp, $fp, 12
	addi.d	$t8, $t8, 12
	blt	$t6, $s0, .LBB2_7
	b	.LBB2_4
.LBB2_8:                                # %for.cond47.preheader
	ld.w	$a4, $a3, 68
	ori	$a6, $zero, 1
	movgr2fr.d	$fa0, $zero
	blt	$a4, $a6, .LBB2_14
# %bb.9:                                # %for.cond50.preheader.lr.ph
	ld.w	$a5, $a3, 52
	blt	$a5, $a6, .LBB2_14
# %bb.10:                               # %for.cond50.preheader.us.preheader
	pcalau12i	$a6, %pc_hi20(imgY_org)
	ld.d	$a6, $a6, %pc_lo12(imgY_org)
	move	$a7, $zero
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB2_11:                               # %for.cond50.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_12 Depth 2
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a6, $t0
	move	$t1, $a5
	.p2align	4, , 16
.LBB2_12:                               # %for.body52.us
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t2, $t0, 0
	movgr2fr.w	$fa1, $t2
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 2
	bnez	$t1, .LBB2_12
# %bb.13:                               # %for.cond50.for.inc61_crit_edge.us
                                        #   in Loop: Header=BB2_11 Depth=1
	addi.d	$a7, $a7, 1
	bne	$a7, $a4, .LBB2_11
.LBB2_14:                               # %for.cond64.preheader
	addi.w	$a5, $a4, 20
	ori	$a6, $zero, 21
	slt	$a7, $a6, $a5
	masknez	$a6, $a6, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $a6
	pcalau12i	$a6, %pc_hi20(ref_pic_sub)
	beqz	$a0, .LBB2_27
# %bb.15:                               # %for.cond69.preheader.preheader
	move	$a0, $zero
	ori	$a7, $zero, 1
	pcalau12i	$t0, %got_pc_hi20(listX)
	ld.d	$t0, $t0, %got_pc_lo12(listX)
	addi.d	$t1, $sp, 8
	addi.d	$t2, $sp, 776
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -928
	addi.w	$t3, $zero, -128
	ori	$t4, $zero, 127
	ori	$t5, $zero, 32
	ori	$t6, $zero, 32
	lu32i.d	$t6, 32
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_16:                               # %for.cond69.for.inc216_crit_edge.split
                                        #   in Loop: Header=BB2_18 Depth=1
	st.d	$s2, $a6, %pc_lo12(ref_pic_sub)
.LBB2_17:                               # %for.inc216
                                        #   in Loop: Header=BB2_18 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB2_41
.LBB2_18:                               # %for.cond69.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_21 Depth 2
                                        #       Child Loop BB2_24 Depth 3
                                        #         Child Loop BB2_25 Depth 4
	slli.d	$t7, $a0, 2
	ldx.w	$t7, $a2, $t7
	blt	$t7, $a7, .LBB2_17
# %bb.19:                               # %for.body74.lr.ph
                                        #   in Loop: Header=BB2_18 Depth=1
	move	$t8, $zero
	slli.d	$fp, $a0, 3
	ldx.d	$fp, $t0, $fp
	alsl.d	$s0, $a0, $a0, 1
	ld.w	$s2, $a3, 88
	slli.d	$s1, $s0, 7
	add.d	$s0, $t1, $s1
	add.d	$s1, $t2, $s1
	movgr2fr.w	$fa3, $s2
	ffint.d.w	$fa3, $fa3
	b	.LBB2_21
	.p2align	4, , 16
.LBB2_20:                               # %for.end108
                                        #   in Loop: Header=BB2_21 Depth=2
	fsub.d	$fa4, $fa0, $fa4
	fdiv.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa4, $fa2
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$s4, $fa4
	alsl.d	$s3, $t8, $s3, 2
	slt	$s5, $t3, $s4
	maskeqz	$s4, $s4, $s5
	masknez	$s5, $t3, $s5
	or	$s4, $s4, $s5
	slti	$s5, $s4, 127
	maskeqz	$s4, $s4, $s5
	masknez	$s5, $t4, $s5
	or	$s4, $s4, $s5
	stx.w	$s4, $s0, $s3
	add.d	$s4, $s1, $s3
	stx.d	$t6, $s1, $s3
	addi.d	$t8, $t8, 1
	st.w	$t5, $s4, 8
	beq	$t8, $t7, .LBB2_16
.LBB2_21:                               # %for.body74
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_24 Depth 3
                                        #         Child Loop BB2_25 Depth 4
	slli.d	$s3, $t8, 3
	ldx.d	$s2, $fp, $s3
	ldptr.d	$s2, $s2, 6448
	fmov.d	$fa4, $fa1
	blt	$a4, $a7, .LBB2_20
# %bb.22:                               # %for.cond89.preheader.lr.ph
                                        #   in Loop: Header=BB2_21 Depth=2
	ld.w	$s5, $a3, 52
	fmov.d	$fa4, $fa1
	blt	$s5, $a7, .LBB2_20
# %bb.23:                               # %for.cond89.preheader.lr.ph.split.us
                                        #   in Loop: Header=BB2_21 Depth=2
	ld.d	$s4, $s2, 0
	ld.d	$s4, $s4, 0
	addi.w	$s6, $s5, 19
	ori	$s5, $zero, 20
	slt	$s7, $s5, $s6
	masknez	$s8, $s5, $s7
	maskeqz	$s6, $s6, $s7
	or	$s6, $s6, $s8
	addi.d	$s6, $s6, -19
	fmov.d	$fa4, $fa1
	.p2align	4, , 16
.LBB2_24:                               # %for.cond89.preheader.us
                                        #   Parent Loop BB2_18 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_25 Depth 4
	slli.d	$s7, $s5, 3
	ldx.d	$s7, $s4, $s7
	addi.d	$s7, $s7, 40
	move	$s8, $s6
	.p2align	4, , 16
.LBB2_25:                               # %for.body94.us
                                        #   Parent Loop BB2_18 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        #       Parent Loop BB2_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$ra, $s7, 0
	movgr2fr.w	$fa5, $ra
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 2
	bnez	$s8, .LBB2_25
# %bb.26:                               # %for.cond89.for.inc106_crit_edge.us
                                        #   in Loop: Header=BB2_24 Depth=3
	addi.d	$s5, $s5, 1
	bne	$s5, $a5, .LBB2_24
	b	.LBB2_20
.LBB2_27:                               # %for.cond69.preheader.us.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_0)
	move	$a0, $zero
	fmul.d	$fa0, $fa0, $fa1
	pcalau12i	$a7, %got_pc_hi20(listX)
	ld.d	$a7, $a7, %got_pc_lo12(listX)
	addi.d	$t0, $sp, 776
	ori	$t1, $zero, 1
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -928
	ori	$t2, $zero, 32
	ori	$t3, $zero, 32
	lu32i.d	$t3, 32
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_28:                               # %for.cond69.for.inc216_crit_edge.split.us.us
                                        #   in Loop: Header=BB2_30 Depth=1
	st.d	$t8, $a6, %pc_lo12(ref_pic_sub)
.LBB2_29:                               # %for.inc216.us
                                        #   in Loop: Header=BB2_30 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB2_41
.LBB2_30:                               # %for.cond69.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_33 Depth 2
                                        #       Child Loop BB2_36 Depth 3
                                        #         Child Loop BB2_37 Depth 4
	slli.d	$t4, $a0, 2
	ldx.w	$t4, $a2, $t4
	blez	$t4, .LBB2_29
# %bb.31:                               # %for.body74.lr.ph.us
                                        #   in Loop: Header=BB2_30 Depth=1
	move	$t5, $zero
	slli.d	$t6, $a0, 3
	ldx.d	$t6, $a7, $t6
	alsl.d	$t7, $a0, $a0, 1
	slli.d	$t7, $t7, 7
	add.d	$t7, $t0, $t7
	b	.LBB2_33
	.p2align	4, , 16
.LBB2_32:                               # %if.end.us.us
                                        #   in Loop: Header=BB2_33 Depth=2
	alsl.d	$fp, $t5, $fp, 2
	add.d	$s1, $t7, $fp
	addi.w	$s2, $s0, -128
	sltui	$s2, $s2, -192
	masknez	$s0, $s0, $s2
	maskeqz	$s2, $t2, $s2
	or	$s0, $s2, $s0
	stx.w	$s0, $t7, $fp
	addi.d	$t5, $t5, 1
	st.d	$t3, $s1, 4
	beq	$t5, $t4, .LBB2_28
.LBB2_33:                               # %for.body74.us.us
                                        #   Parent Loop BB2_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_36 Depth 3
                                        #         Child Loop BB2_37 Depth 4
	slli.d	$fp, $t5, 3
	ldx.d	$t8, $t6, $fp
	ldptr.d	$t8, $t8, 6448
	ori	$s0, $zero, 32
	blez	$a4, .LBB2_32
# %bb.34:                               # %for.cond89.preheader.lr.ph.us.us
                                        #   in Loop: Header=BB2_33 Depth=2
	ld.w	$s2, $a3, 52
	blt	$s2, $t1, .LBB2_32
# %bb.35:                               # %for.cond89.preheader.lr.ph.split.us.us.us
                                        #   in Loop: Header=BB2_33 Depth=2
	ld.d	$s1, $t8, 0
	ld.d	$s1, $s1, 0
	addi.w	$s3, $s2, 19
	ori	$s2, $zero, 20
	slt	$s4, $s2, $s3
	masknez	$s5, $s2, $s4
	maskeqz	$s3, $s3, $s4
	or	$s3, $s3, $s5
	addi.d	$s3, $s3, -19
	fmov.d	$fa3, $fa1
	.p2align	4, , 16
.LBB2_36:                               # %for.cond89.preheader.us.us.us
                                        #   Parent Loop BB2_30 Depth=1
                                        #     Parent Loop BB2_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_37 Depth 4
	slli.d	$s4, $s2, 3
	ldx.d	$s4, $s1, $s4
	addi.d	$s4, $s4, 40
	move	$s5, $s3
	.p2align	4, , 16
.LBB2_37:                               # %for.body94.us.us.us
                                        #   Parent Loop BB2_30 Depth=1
                                        #     Parent Loop BB2_33 Depth=2
                                        #       Parent Loop BB2_36 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$s6, $s4, 0
	movgr2fr.w	$fa4, $s6
	ffint.d.w	$fa4, $fa4
	fadd.d	$fa3, $fa3, $fa4
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 2
	bnez	$s5, .LBB2_37
# %bb.38:                               # %for.cond89.for.inc106_crit_edge.us.us.us
                                        #   in Loop: Header=BB2_36 Depth=3
	addi.d	$s2, $s2, 1
	bne	$s2, $a5, .LBB2_36
# %bb.39:                               # %for.end108.us.us
                                        #   in Loop: Header=BB2_33 Depth=2
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	bcnez	$fcc0, .LBB2_32
# %bb.40:                               # %if.then115.us.us
                                        #   in Loop: Header=BB2_33 Depth=2
	fdiv.d	$fa3, $fa0, $fa3
	fadd.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s0, $fa3
	b	.LBB2_32
.LBB2_41:                               # %for.cond219.preheader
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	move	$a3, $zero
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a5, $a0, %pc_lo12(active_sps)
	addi.d	$a6, $sp, 784
	addi.d	$a7, $sp, 8
	addi.d	$t0, $sp, 16
	ori	$t1, $zero, 1
	ori	$t2, $zero, 32
	ori	$t3, $zero, 66
	ori	$t4, $zero, 2
.LBB2_42:                               # %for.cond224.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_53 Depth 2
                                        #     Child Loop BB2_46 Depth 2
                                        #     Child Loop BB2_61 Depth 2
	slli.d	$a0, $a3, 2
	ldx.w	$a0, $a2, $a0
	blt	$a0, $t1, .LBB2_68
# %bb.43:                               # %for.cond230.preheader.lr.ph
                                        #   in Loop: Header=BB2_42 Depth=1
	ldptr.w	$t6, $a4, 2952
	bstrpick.d	$t5, $a0, 31, 0
	beqz	$t6, .LBB2_60
# %bb.44:                               # %for.cond230.preheader.lr.ph.split
                                        #   in Loop: Header=BB2_42 Depth=1
	ld.w	$a0, $a5, 4
	move	$t6, $t0
	move	$t7, $a6
	bne	$a0, $t3, .LBB2_53
# %bb.45:                               # %for.cond230.preheader.us142.preheader
                                        #   in Loop: Header=BB2_42 Depth=1
	move	$t6, $zero
	slli.d	$a0, $t5, 3
	alsl.d	$t5, $t5, $a0, 2
	.p2align	4, , 16
.LBB2_46:                               # %for.cond230.preheader.us142
                                        #   Parent Loop BB2_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t7, $a6, $t6
	ld.w	$t8, $t7, -8
	ori	$a0, $zero, 1
	bne	$t8, $t2, .LBB2_70
# %bb.47:                               # %for.cond230.preheader.us142
                                        #   in Loop: Header=BB2_46 Depth=2
	ldx.w	$t8, $a7, $t6
	bnez	$t8, .LBB2_70
# %bb.48:                               # %for.cond230.us127.us
                                        #   in Loop: Header=BB2_46 Depth=2
	ld.w	$t7, $t7, -4
	bne	$t7, $t2, .LBB2_70
# %bb.49:                               # %for.cond230.us127.us
                                        #   in Loop: Header=BB2_46 Depth=2
	add.d	$t7, $a7, $t6
	ld.w	$t8, $t7, 4
	bnez	$t8, .LBB2_70
# %bb.50:                               # %for.cond230.us127.us.1
                                        #   in Loop: Header=BB2_46 Depth=2
	ldx.w	$t8, $a6, $t6
	bne	$t8, $t2, .LBB2_70
# %bb.51:                               # %for.cond230.us127.us.1
                                        #   in Loop: Header=BB2_46 Depth=2
	ld.w	$t7, $t7, 8
	bnez	$t7, .LBB2_70
# %bb.52:                               # %for.cond230.us127.us.2
                                        #   in Loop: Header=BB2_46 Depth=2
	addi.d	$t6, $t6, 12
	bne	$t5, $t6, .LBB2_46
	b	.LBB2_68
	.p2align	4, , 16
.LBB2_53:                               # %for.cond230.preheader
                                        #   Parent Loop BB2_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t7, -8
	ori	$a0, $zero, 1
	bne	$t8, $t2, .LBB2_70
# %bb.54:                               # %for.cond230.preheader
                                        #   in Loop: Header=BB2_53 Depth=2
	ld.w	$t8, $t6, -8
	srai.d	$fp, $t8, 31
	xor	$t8, $t8, $fp
	sub.w	$t8, $t8, $fp
	bltu	$t4, $t8, .LBB2_70
# %bb.55:                               # %for.cond230
                                        #   in Loop: Header=BB2_53 Depth=2
	ld.w	$t8, $t7, -4
	bne	$t8, $t2, .LBB2_70
# %bb.56:                               # %for.cond230
                                        #   in Loop: Header=BB2_53 Depth=2
	ld.w	$t8, $t6, -4
	srai.d	$fp, $t8, 31
	xor	$t8, $t8, $fp
	sub.w	$t8, $t8, $fp
	bltu	$t4, $t8, .LBB2_70
# %bb.57:                               # %for.cond230.1
                                        #   in Loop: Header=BB2_53 Depth=2
	ld.w	$t8, $t7, 0
	bne	$t8, $t2, .LBB2_70
# %bb.58:                               # %for.cond230.1
                                        #   in Loop: Header=BB2_53 Depth=2
	ld.w	$t8, $t6, 0
	srai.d	$fp, $t8, 31
	xor	$t8, $t8, $fp
	sub.w	$t8, $t8, $fp
	bltu	$t4, $t8, .LBB2_70
# %bb.59:                               # %for.cond230.2
                                        #   in Loop: Header=BB2_53 Depth=2
	addi.d	$t5, $t5, -1
	addi.d	$t7, $t7, 12
	addi.d	$t6, $t6, 12
	bnez	$t5, .LBB2_53
	b	.LBB2_68
	.p2align	4, , 16
.LBB2_60:                               # %for.cond230.preheader.us.preheader
                                        #   in Loop: Header=BB2_42 Depth=1
	move	$t6, $zero
	slli.d	$a0, $t5, 3
	alsl.d	$t5, $t5, $a0, 2
	.p2align	4, , 16
.LBB2_61:                               # %for.cond230.preheader.us
                                        #   Parent Loop BB2_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t7, $a6, $t6
	ld.w	$t8, $t7, -8
	ori	$a0, $zero, 1
	bne	$t8, $t2, .LBB2_70
# %bb.62:                               # %for.cond230.preheader.us
                                        #   in Loop: Header=BB2_61 Depth=2
	ldx.w	$t8, $a7, $t6
	bnez	$t8, .LBB2_70
# %bb.63:                               # %for.cond230.us.us
                                        #   in Loop: Header=BB2_61 Depth=2
	ld.w	$t7, $t7, -4
	bne	$t7, $t2, .LBB2_70
# %bb.64:                               # %for.cond230.us.us
                                        #   in Loop: Header=BB2_61 Depth=2
	add.d	$t7, $a7, $t6
	ld.w	$t8, $t7, 4
	bnez	$t8, .LBB2_70
# %bb.65:                               # %for.cond230.us.us.1
                                        #   in Loop: Header=BB2_61 Depth=2
	ldx.w	$t8, $a6, $t6
	bne	$t8, $t2, .LBB2_70
# %bb.66:                               # %for.cond230.us.us.1
                                        #   in Loop: Header=BB2_61 Depth=2
	ld.w	$t7, $t7, 8
	bnez	$t7, .LBB2_70
# %bb.67:                               # %for.cond230.us.us.2
                                        #   in Loop: Header=BB2_61 Depth=2
	addi.d	$t6, $t6, 12
	bne	$t5, $t6, .LBB2_61
	.p2align	4, , 16
.LBB2_68:                               # %for.inc284
                                        #   in Loop: Header=BB2_42 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 384
	addi.d	$t0, $t0, 384
	addi.d	$a7, $a7, 384
	bne	$a3, $a1, .LBB2_42
# %bb.69:
	move	$a0, $zero
.LBB2_70:                               # %for.end286
	ld.d	$s8, $sp, 1544                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1552                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1560                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1568                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1624                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1632
	ret
.Lfunc_end2:
	.size	test_wp_P_slice, .Lfunc_end2-test_wp_P_slice
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function test_wp_B_slice
.LCPI3_0:
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.globl	test_wp_B_slice
	.p2align	5
	.type	test_wp_B_slice,@function
test_wp_B_slice:                        # @test_wp_B_slice
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	lu12i.w	$a1, 18
	ori	$a1, $a1, 2768
	sub.d	$sp, $sp, $a1
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$t6, $a1, 0
	ldptr.w	$a1, $t6, 15268
	move	$s0, $a0
	ori	$s3, $zero, 2
	beqz	$a1, .LBB3_3
# %bb.1:                                # %land.lhs.true
	ld.w	$a0, $t6, 12
	ldptr.d	$a1, $t6, 14224
	ori	$a2, $zero, 536
	mul.d	$a2, $a0, $a2
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 424
	beqz	$a1, .LBB3_3
# %bb.2:                                # %cond.true
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 6
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 4
	maskeqz	$a0, $a2, $a0
	or	$s3, $a0, $a1
.LBB3_3:                                # %cond.end
	move	$a0, $zero
	addi.d	$a1, $s0, -1
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(luma_log_weight_denom)
	ori	$a3, $zero, 6
	sub.d	$a4, $a3, $a1
	st.w	$a4, $a2, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a2, %pc_hi20(chroma_log_weight_denom)
	st.w	$a4, $a2, %pc_lo12(chroma_log_weight_denom)
	xori	$a2, $a1, 5
	ori	$a1, $zero, 1
	sll.w	$a2, $a1, $a2
	pcalau12i	$a3, %pc_hi20(wp_luma_round)
	st.w	$a2, $a3, %pc_lo12(wp_luma_round)
	pcalau12i	$a3, %pc_hi20(wp_chroma_round)
	st.w	$a2, $a3, %pc_lo12(wp_chroma_round)
	pcalau12i	$s2, %pc_hi20(wp_weight)
	ld.d	$a2, $s2, %pc_lo12(wp_weight)
	pcalau12i	$fp, %pc_hi20(wp_offset)
	ld.d	$a3, $fp, %pc_lo12(wp_offset)
	pcalau12i	$a5, %got_pc_hi20(listXsize)
	ld.d	$s4, $a5, %got_pc_lo12(listXsize)
	sll.w	$s1, $a1, $a4
	lu12i.w	$a4, 18
	ori	$a4, $a4, 88
	add.d	$a4, $sp, $a4
	lu12i.w	$a5, 18
	ori	$a5, $a5, 2400
	add.d	$a5, $sp, $a5
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %for.inc53
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 384
	addi.d	$a5, $a5, 384
	beq	$a0, $s3, .LBB3_8
.LBB3_5:                                # %for.cond14.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	slli.d	$a6, $a0, 2
	ldx.w	$a6, $s4, $a6
	blt	$a6, $a1, .LBB3_4
# %bb.6:                                # %for.cond19.preheader.lr.ph
                                        #   in Loop: Header=BB3_5 Depth=1
	slli.d	$a7, $a0, 3
	ldx.d	$a6, $a2, $a7
	ldx.d	$a7, $a3, $a7
	move	$t0, $zero
	alsl.d	$t1, $a0, $s4, 2
	move	$t2, $a5
	move	$t3, $a4
	.p2align	4, , 16
.LBB3_7:                                # %for.cond19.preheader
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $a6, 0
	ld.d	$t5, $a7, 0
	st.d	$zero, $t3, 0
	st.w	$zero, $t3, 8
	st.w	$s1, $t2, -8
	st.w	$s1, $t2, -4
	st.w	$s1, $t2, 0
	st.w	$s1, $t4, 0
	st.w	$zero, $t5, 0
	st.w	$s1, $t4, 4
	st.w	$zero, $t5, 4
	st.w	$s1, $t4, 8
	st.w	$zero, $t5, 8
	addi.d	$t0, $t0, 1
	ld.w	$t4, $t1, 0
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$t3, $t3, 12
	addi.d	$t2, $t2, 12
	blt	$t0, $t4, .LBB3_7
	b	.LBB3_4
.LBB3_8:                                # %for.cond56.preheader
	ld.w	$a0, $s4, 0
	ori	$a2, $zero, 1
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	blt	$a0, $a2, .LBB3_22
# %bb.9:                                # %for.cond59.preheader.lr.ph
	ld.w	$a1, $s4, 4
	blt	$a1, $a2, .LBB3_23
# %bb.10:                               # %for.cond59.preheader.lr.ph.split.us
	st.d	$t6, $sp, 32                    # 8-byte Folded Spill
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a4, $a3, %got_pc_lo12(listX)
	ld.d	$a5, $a2, 0
	move	$a2, $zero
	ld.d	$a3, $a4, 8
	ld.d	$a4, $a4, 0
	ld.w	$a5, $a5, 4
	bstrpick.d	$a6, $a1, 30, 2
	slli.d	$a6, $a6, 2
	vreplgr2vr.w	$vr0, $s1
	lu12i.w	$t1, 3
	ori	$a7, $t1, 44
	addi.d	$t2, $sp, 88
	add.d	$a7, $t2, $a7
	addi.d	$t0, $a3, 16
	ori	$t1, $t1, 8
	add.d	$t1, $t2, $t1
	addi.w	$t2, $zero, -128
	ori	$t3, $zero, 127
	ori	$t4, $zero, 4
	lu12i.w	$t5, 4
	ori	$t6, $zero, 1023
	ori	$t7, $zero, 32
	ori	$t8, $zero, 64
	vrepli.w	$vr1, -128
	vrepli.w	$vr2, 127
	vrepli.b	$vr3, 0
	vrepli.h	$vr4, 1
	vrepli.w	$vr5, 32
	vreplgr2vr.w	$vr6, $t6
	vrepli.w	$vr7, -129
	vrepli.w	$vr8, -193
	vrepli.w	$vr9, 64
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %for.cond59.for.inc186_crit_edge.us
                                        #   in Loop: Header=BB3_12 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a7, $a7, 384
	addi.d	$t1, $t1, 384
	beq	$a2, $a0, .LBB3_21
.LBB3_12:                               # %for.cond59.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
                                        #     Child Loop BB3_19 Depth 2
	slli.d	$fp, $a2, 3
	ldx.d	$fp, $a4, $fp
	ld.w	$s6, $fp, 4
	sub.w	$fp, $a5, $s6
	slt	$s0, $t2, $fp
	maskeqz	$fp, $fp, $s0
	masknez	$s0, $t2, $s0
	or	$fp, $fp, $s0
	slti	$s0, $fp, 127
	maskeqz	$fp, $fp, $s0
	masknez	$s0, $t3, $s0
	or	$s2, $fp, $s0
	bgeu	$a1, $t4, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=1
	move	$s3, $zero
	b	.LBB3_17
	.p2align	4, , 16
.LBB3_14:                               # %vector.ph
                                        #   in Loop: Header=BB3_12 Depth=1
	vreplgr2vr.w	$vr10, $s6
	vreplgr2vr.w	$vr11, $s2
	move	$fp, $t0
	move	$s4, $a7
	move	$s5, $a6
	.p2align	4, , 16
.LBB3_15:                               # %vector.body
                                        #   Parent Loop BB3_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $fp, -16
	ld.d	$s3, $fp, -8
	ld.d	$s7, $fp, 0
	ld.d	$s8, $fp, 8
	ld.w	$s0, $s0, 4
	ld.w	$s3, $s3, 4
	ld.w	$s7, $s7, 4
	ld.w	$s8, $s8, 4
	vinsgr2vr.w	$vr12, $s0, 0
	vinsgr2vr.w	$vr12, $s3, 1
	vinsgr2vr.w	$vr12, $s7, 2
	vinsgr2vr.w	$vr12, $s8, 3
	vseq.w	$vr13, $vr12, $vr10
	vpickev.h	$vr14, $vr13, $vr13
	pcalau12i	$s0, %pc_hi20(.LCPI3_0)
	vld	$vr15, $s0, %pc_lo12(.LCPI3_0)
	vsub.w	$vr12, $vr12, $vr10
	vmax.w	$vr12, $vr12, $vr1
	vmin.w	$vr12, $vr12, $vr2
	vshuf.b	$vr15, $vr0, $vr12, $vr15
	vsrli.b	$vr16, $vr15, 7
	vadd.b	$vr15, $vr15, $vr16
	vsrai.b	$vr15, $vr15, 1
	vneg.b	$vr16, $vr15
	vmax.b	$vr15, $vr15, $vr16
	vilvl.b	$vr15, $vr3, $vr15
	vbitseti.h	$vr15, $vr15, 14
	vpickev.h	$vr12, $vr12, $vr12
	vbitsel.v	$vr12, $vr12, $vr4, $vr14
	vpickve2gr.h	$s0, $vr15, 3
	ori	$s3, $t5, 127
	and	$s0, $s0, $s3
	vpickve2gr.h	$s7, $vr12, 3
	ext.w.h	$s7, $s7
	div.d	$s0, $s0, $s7
	vpickve2gr.h	$s7, $vr15, 2
	and	$s7, $s7, $s3
	vpickve2gr.h	$s8, $vr12, 2
	ext.w.h	$s8, $s8
	div.d	$s7, $s7, $s8
	vpickve2gr.h	$s8, $vr15, 1
	and	$s8, $s8, $s3
	vpickve2gr.h	$ra, $vr12, 1
	ext.w.h	$ra, $ra
	div.d	$s8, $s8, $ra
	vpickve2gr.h	$ra, $vr15, 0
	and	$s3, $ra, $s3
	vpickve2gr.h	$ra, $vr12, 0
	ext.w.h	$ra, $ra
	div.d	$s3, $s3, $ra
	vinsgr2vr.h	$vr12, $s3, 0
	vinsgr2vr.h	$vr12, $s8, 2
	vinsgr2vr.h	$vr12, $s7, 4
	vinsgr2vr.h	$vr12, $s0, 6
	vslli.w	$vr12, $vr12, 16
	vsrai.w	$vr12, $vr12, 16
	vori.b	$vr14, $vr5, 0
	vmadd.w	$vr14, $vr11, $vr12
	vsrai.w	$vr12, $vr14, 6
	addi.d	$s0, $zero, -1024
	vreplgr2vr.w	$vr14, $s0
	vmax.w	$vr12, $vr12, $vr14
	vmin.w	$vr12, $vr12, $vr6
	vsrai.w	$vr12, $vr12, 2
	vadd.w	$vr14, $vr12, $vr7
	vslt.wu	$vr14, $vr14, $vr8
	vbitsel.v	$vr12, $vr12, $vr5, $vr14
	vsub.w	$vr14, $vr9, $vr12
	vbitsel.v	$vr12, $vr12, $vr0, $vr13
	vbitsel.v	$vr13, $vr14, $vr0, $vr13
	vstelm.w	$vr12, $s4, -44, 0
	vstelm.w	$vr12, $s4, -32, 1
	vstelm.w	$vr12, $s4, -20, 2
	vstelm.w	$vr12, $s4, -8, 3
	vpickve2gr.w	$s0, $vr13, 0
	stptr.w	$s0, $s4, -12332
	vpickve2gr.w	$s3, $vr13, 1
	stptr.w	$s3, $s4, -12320
	vpickve2gr.w	$s7, $vr13, 2
	stptr.w	$s7, $s4, -12308
	vpickve2gr.w	$s8, $vr13, 3
	stptr.w	$s8, $s4, -12296
	vstelm.w	$vr12, $s4, -40, 0
	vstelm.w	$vr12, $s4, -28, 1
	vstelm.w	$vr12, $s4, -16, 2
	vstelm.w	$vr12, $s4, -4, 3
	stptr.w	$s0, $s4, -12328
	stptr.w	$s3, $s4, -12316
	stptr.w	$s7, $s4, -12304
	stptr.w	$s8, $s4, -12292
	vstelm.w	$vr12, $s4, -36, 0
	vstelm.w	$vr12, $s4, -24, 1
	vstelm.w	$vr12, $s4, -12, 2
	vstelm.w	$vr12, $s4, 0, 3
	stptr.w	$s0, $s4, -12324
	stptr.w	$s3, $s4, -12312
	stptr.w	$s7, $s4, -12300
	stptr.w	$s8, $s4, -12288
	addi.d	$s5, $s5, -4
	addi.d	$s4, $s4, 48
	addi.d	$fp, $fp, 32
	bnez	$s5, .LBB3_15
# %bb.16:                               # %middle.block
                                        #   in Loop: Header=BB3_12 Depth=1
	move	$s3, $a6
	beq	$a6, $a1, .LBB3_11
.LBB3_17:                               # %for.body61.us.preheader
                                        #   in Loop: Header=BB3_12 Depth=1
	slli.d	$s4, $s3, 3
	alsl.d	$fp, $s3, $a3, 3
	sub.d	$s0, $a1, $s3
	alsl.d	$s3, $s3, $s4, 2
	add.d	$s3, $t1, $s3
	b	.LBB3_19
	.p2align	4, , 16
.LBB3_18:                               # %for.end182.us
                                        #   in Loop: Header=BB3_19 Depth=2
	st.w	$s4, $s3, -8
	stptr.w	$s5, $s3, -12296
	st.w	$s4, $s3, -4
	stptr.w	$s5, $s3, -12292
	st.w	$s4, $s3, 0
	stptr.w	$s5, $s3, -12288
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 12
	beqz	$s0, .LBB3_11
.LBB3_19:                               # %for.body61.us
                                        #   Parent Loop BB3_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $fp, 0
	ld.w	$s7, $s4, 4
	move	$s4, $s1
	move	$s5, $s1
	beq	$s7, $s6, .LBB3_18
# %bb.20:                               # %for.body61.split.us243
                                        #   in Loop: Header=BB3_19 Depth=2
	sub.w	$s4, $s7, $s6
	slt	$s5, $t2, $s4
	maskeqz	$s4, $s4, $s5
	masknez	$s5, $t2, $s5
	or	$s4, $s4, $s5
	slti	$s5, $s4, 127
	maskeqz	$s4, $s4, $s5
	masknez	$s5, $t3, $s5
	or	$s4, $s4, $s5
	bstrpick.d	$s5, $s4, 7, 7
	add.d	$s5, $s4, $s5
	ext.w.b	$s5, $s5
	srai.d	$s5, $s5, 1
	srai.d	$s7, $s5, 63
	xor	$s5, $s5, $s7
	sub.d	$s5, $s5, $s7
	or	$s5, $s5, $t5
	ext.w.h	$s4, $s4
	div.d	$s4, $s5, $s4
	ext.w.h	$s4, $s4
	mul.d	$s4, $s2, $s4
	addi.w	$s4, $s4, 32
	srai.d	$s4, $s4, 6
	addi.w	$s5, $zero, -1024
	slt	$s7, $s5, $s4
	maskeqz	$s4, $s4, $s7
	masknez	$s5, $s5, $s7
	or	$s4, $s4, $s5
	slti	$s5, $s4, 1023
	maskeqz	$s4, $s4, $s5
	masknez	$s5, $t6, $s5
	or	$s4, $s4, $s5
	srai.d	$s4, $s4, 2
	addi.d	$s5, $s4, -129
	sltui	$s5, $s5, -193
	masknez	$s4, $s4, $s5
	maskeqz	$s5, $t7, $s5
	or	$s4, $s5, $s4
	sub.d	$s5, $t8, $s4
	b	.LBB3_18
.LBB3_21:                               # %for.end188
	ori	$a1, $zero, 1
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	beq	$s0, $a1, .LBB3_24
	b	.LBB3_31
.LBB3_22:                               # %for.end188.thread
	bne	$s0, $a2, .LBB3_31
	b	.LBB3_57
.LBB3_23:                               # %for.end188.thread410
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB3_31
.LBB3_24:                               # %for.cond194.preheader.lr.ph
	ld.w	$t0, $s4, 4
	ori	$a1, $zero, 1
	blt	$t0, $a1, .LBB3_57
# %bb.25:                               # %for.cond194.preheader.preheader
	move	$a2, $zero
	pcalau12i	$a3, %pc_hi20(wbp_weight)
	ld.d	$a3, $a3, %pc_lo12(wbp_weight)
	lu12i.w	$a4, 3
	ori	$a4, $a4, 8
	addi.d	$a5, $sp, 88
	add.d	$a4, $a5, $a4
	lu12i.w	$a6, -4
	ori	$a5, $a6, 4088
	ori	$a6, $a6, 4092
	lu12i.w	$a7, -3
	b	.LBB3_27
	.p2align	4, , 16
.LBB3_26:                               # %for.inc239
                                        #   in Loop: Header=BB3_27 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a4, $a4, 384
	bge	$a2, $a0, .LBB3_57
.LBB3_27:                               # %for.cond194.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_29 Depth 2
	blt	$t0, $a1, .LBB3_26
# %bb.28:                               # %for.cond197.preheader.lr.ph
                                        #   in Loop: Header=BB3_27 Depth=1
	ld.d	$a0, $a3, 8
	ld.d	$t0, $a3, 0
	slli.d	$t1, $a2, 3
	ldx.d	$a0, $a0, $t1
	ldx.d	$t1, $t0, $t1
	move	$t2, $zero
	move	$t3, $a4
	.p2align	4, , 16
.LBB3_29:                               # %for.cond197.preheader
                                        #   Parent Loop BB3_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a0, 0
	ld.d	$t4, $t1, 0
	ld.w	$t5, $t3, -8
	ldx.w	$t6, $t3, $a5
	st.w	$t5, $t0, 0
	st.w	$t6, $t4, 0
	ld.w	$t5, $t3, -4
	ldx.w	$t6, $t3, $a6
	ld.w	$t7, $t3, 0
	ldx.w	$t8, $t3, $a7
	st.w	$t5, $t0, 4
	st.w	$t6, $t4, 4
	st.w	$t7, $t0, 8
	st.w	$t8, $t4, 8
	ld.w	$t0, $s4, 4
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, 8
	addi.d	$a0, $a0, 8
	addi.d	$t3, $t3, 12
	blt	$t2, $t0, .LBB3_29
# %bb.30:                               # %for.inc239.loopexit
                                        #   in Loop: Header=BB3_27 Depth=1
	ld.w	$a0, $s4, 0
	b	.LBB3_26
.LBB3_31:                               # %for.cond291.preheader
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $t6, 68
	movgr2fr.d	$fs0, $zero
	ori	$s7, $zero, 1
	fmov.d	$fa0, $fs0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	blt	$a0, $s7, .LBB3_37
# %bb.32:                               # %for.cond294.preheader.lr.ph
	ld.w	$a0, $t6, 52
	fmov.d	$fa0, $fs0
	blt	$a0, $s7, .LBB3_37
# %bb.33:                               # %for.cond294.preheader.us.preheader
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$a1, $a1, %pc_lo12(imgY_org)
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB3_34:                               # %for.cond294.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_35 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	move	$a4, $a0
	.p2align	4, , 16
.LBB3_35:                               # %for.body296.us
                                        #   Parent Loop BB3_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a3, 0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 2
	bnez	$a4, .LBB3_35
# %bb.36:                               # %for.cond294.for.inc305_crit_edge.us
                                        #   in Loop: Header=BB3_34 Depth=1
	addi.d	$a2, $a2, 1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bne	$a2, $a3, .LBB3_34
.LBB3_37:                               # %for.cond308.preheader
	st.d	$t6, $sp, 32                    # 8-byte Folded Spill
	move	$s8, $zero
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 20
	bstrpick.d	$a1, $s1, 31, 0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmul.d	$fs1, $fa0, $fa1
	ori	$a1, $zero, 21
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s2, $a0, $a1
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2404
	add.d	$fp, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 18
	ori	$a0, $a0, 2392
	add.d	$s5, $sp, $a0
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	b	.LBB3_40
	.p2align	4, , 16
.LBB3_38:                               # %for.cond313.for.inc420_crit_edge
                                        #   in Loop: Header=BB3_40 Depth=1
	pcalau12i	$a1, %pc_hi20(ref_pic_sub)
	st.d	$a0, $a1, %pc_lo12(ref_pic_sub)
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
.LBB3_39:                               # %for.inc420
                                        #   in Loop: Header=BB3_40 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$fp, $fp, 384
	addi.d	$s5, $s5, 384
	beq	$s8, $s3, .LBB3_62
.LBB3_40:                               # %for.cond313.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_53 Depth 2
                                        #     Child Loop BB3_56 Depth 2
                                        #     Child Loop BB3_44 Depth 2
                                        #       Child Loop BB3_46 Depth 3
                                        #         Child Loop BB3_47 Depth 4
	slli.d	$a0, $s8, 2
	ldx.wu	$s0, $s4, $a0
	addi.w	$s6, $s0, 0
	blt	$s6, $s7, .LBB3_39
# %bb.41:                               # %for.body318.lr.ph
                                        #   in Loop: Header=BB3_40 Depth=1
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$s4, $a1, $a0
	alsl.d	$a0, $s8, $s8, 1
	slli.d	$a1, $a0, 7
	lu12i.w	$a0, 18
	ori	$a0, $a0, 88
	add.d	$a0, $sp, $a0
	add.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	blez	$a2, .LBB3_51
# %bb.42:                               # %for.body318.lr.ph.split.us
                                        #   in Loop: Header=BB3_40 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$s0, $a2, 52
	lu12i.w	$a2, 18
	ori	$a2, $a2, 2392
	add.d	$a2, $sp, $a2
	add.d	$s3, $a2, $a1
	addi.w	$a1, $s0, 19
	ori	$a3, $zero, 20
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a1, $s6, 3
	alsl.d	$a2, $s6, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a2, $a0, -19
	vldi	$vr2, -928
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_43:                               # %if.end376.us
                                        #   in Loop: Header=BB3_44 Depth=2
	addi.w	$a5, $a4, -128
	sltui	$a5, $a5, -192
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $s1, $a5
	or	$a4, $a5, $a4
	alsl.d	$a3, $a1, $a3, 2
	add.d	$a5, $s3, $a3
	stx.w	$a4, $s3, $a3
	st.w	$s1, $a5, 4
	addi.d	$a1, $a1, 1
	st.w	$s1, $a5, 8
	beq	$a1, $s6, .LBB3_38
.LBB3_44:                               # %for.body318.us
                                        #   Parent Loop BB3_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_46 Depth 3
                                        #         Child Loop BB3_47 Depth 4
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $s4, $a3
	ldptr.d	$a0, $a0, 6448
	move	$a4, $s1
	blt	$s0, $s7, .LBB3_43
# %bb.45:                               # %for.cond335.preheader.us.us.preheader
                                        #   in Loop: Header=BB3_44 Depth=2
	ld.d	$a4, $a0, 0
	ld.d	$a4, $a4, 0
	ori	$a5, $zero, 20
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB3_46:                               # %for.cond335.preheader.us.us
                                        #   Parent Loop BB3_40 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_47 Depth 4
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a4, $a6
	addi.d	$a6, $a6, 40
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_47:                               # %for.body340.us.us
                                        #   Parent Loop BB3_40 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        #       Parent Loop BB3_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$t0, $a6, 0
	movgr2fr.w	$fa1, $t0
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 2
	bnez	$a7, .LBB3_47
# %bb.48:                               # %for.cond335.for.inc354_crit_edge.us.us
                                        #   in Loop: Header=BB3_46 Depth=3
	addi.d	$a5, $a5, 1
	bne	$a5, $s2, .LBB3_46
# %bb.49:                               # %for.cond329.for.end356_crit_edge.us
                                        #   in Loop: Header=BB3_44 Depth=2
	fcmp.cune.d	$fcc0, $fa0, $fs0
	move	$a4, $s1
	bceqz	$fcc0, .LBB3_43
# %bb.50:                               # %if.then363.us
                                        #   in Loop: Header=BB3_44 Depth=2
	fdiv.d	$fa0, $fs1, $fa0
	fadd.d	$fa0, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	b	.LBB3_43
	.p2align	4, , 16
.LBB3_51:                               # %for.body318.preheader
                                        #   in Loop: Header=BB3_40 Depth=1
	slli.d	$a1, $s0, 3
	alsl.d	$a2, $s0, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	beq	$s6, $s7, .LBB3_55
# %bb.52:                               # %vector.ph440
                                        #   in Loop: Header=BB3_40 Depth=1
	bstrpick.d	$a0, $s0, 30, 1
	slli.d	$a1, $a0, 1
	addi.d	$a2, $s4, 8
	move	$a3, $fp
	move	$a4, $a1
	.p2align	4, , 16
.LBB3_53:                               # %vector.body443
                                        #   Parent Loop BB3_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 0
	ldptr.d	$a0, $a0, 6448
	st.w	$s1, $a3, -12
	st.w	$s1, $a3, 0
	st.w	$s1, $a3, -8
	st.w	$s1, $a3, 4
	st.w	$s1, $a3, -4
	st.w	$s1, $a3, 8
	addi.d	$a2, $a2, 16
	addi.d	$a4, $a4, -2
	addi.d	$a3, $a3, 24
	bnez	$a4, .LBB3_53
# %bb.54:                               # %middle.block446
                                        #   in Loop: Header=BB3_40 Depth=1
	beq	$a1, $s0, .LBB3_38
.LBB3_55:                               # %if.end376.preheader
                                        #   in Loop: Header=BB3_40 Depth=1
	slli.d	$a0, $a1, 3
	alsl.d	$a2, $a1, $a0, 2
	alsl.d	$a3, $a1, $s4, 3
	sub.d	$a1, $s0, $a1
	.p2align	4, , 16
.LBB3_56:                               # %if.end376
                                        #   Parent Loop BB3_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a3, 0
	ldptr.d	$a0, $a0, 6448
	add.d	$a4, $s5, $a2
	stx.w	$s1, $s5, $a2
	st.w	$s1, $a4, 4
	st.w	$s1, $a4, 8
	addi.d	$a2, $a2, 12
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB3_56
	b	.LBB3_38
.LBB3_57:                               # %for.cond242.preheader
	ld.d	$a0, $s2, %pc_lo12(wp_weight)
	ld.d	$a1, $fp, %pc_lo12(wp_offset)
	move	$a2, $zero
	ori	$a3, $zero, 1
	b	.LBB3_59
	.p2align	4, , 16
.LBB3_58:                               # %for.inc287
                                        #   in Loop: Header=BB3_59 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s3, .LBB3_81
.LBB3_59:                               # %for.cond246.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_61 Depth 2
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $s4, $a4
	blt	$a4, $a3, .LBB3_58
# %bb.60:                               # %for.body250.lr.ph
                                        #   in Loop: Header=BB3_59 Depth=1
	slli.d	$a5, $a2, 3
	ldx.d	$a4, $a0, $a5
	ldx.d	$a5, $a1, $a5
	move	$a6, $zero
	alsl.d	$a7, $a2, $s4, 2
	.p2align	4, , 16
.LBB3_61:                               # %for.body250
                                        #   Parent Loop BB3_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a4, 0
	ld.d	$t1, $a5, 0
	st.w	$s1, $t0, 0
	st.w	$s1, $t0, 4
	st.w	$s1, $t0, 8
	st.d	$zero, $t1, 0
	st.w	$zero, $t1, 8
	ld.w	$t0, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	blt	$a6, $t0, .LBB3_61
	b	.LBB3_58
.LBB3_62:                               # %for.end422
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s2, %pc_lo12(wp_weight)
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	beqz	$s0, .LBB3_68
# %bb.63:                               # %for.cond480.preheader.preheader
	move	$a2, $zero
	ori	$a3, $zero, 1
	b	.LBB3_65
	.p2align	4, , 16
.LBB3_64:                               # %for.inc522
                                        #   in Loop: Header=BB3_65 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s3, .LBB3_73
.LBB3_65:                               # %for.cond480.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_67 Depth 2
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $s4, $a4
	blt	$a4, $a3, .LBB3_64
# %bb.66:                               # %for.body485.lr.ph
                                        #   in Loop: Header=BB3_65 Depth=1
	slli.d	$a5, $a2, 3
	ldx.d	$a4, $a0, $a5
	ldx.d	$a5, $a1, $a5
	move	$a6, $zero
	alsl.d	$a7, $a2, $s4, 2
	.p2align	4, , 16
.LBB3_67:                               # %for.body485
                                        #   Parent Loop BB3_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a4, 0
	ld.d	$t1, $a5, 0
	st.w	$s1, $t0, 0
	st.w	$s1, $t0, 4
	st.w	$s1, $t0, 8
	st.d	$zero, $t1, 0
	st.w	$zero, $t1, 8
	ld.w	$t0, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	blt	$a6, $t0, .LBB3_67
	b	.LBB3_64
.LBB3_68:                               # %for.cond431.preheader.preheader
	move	$a2, $zero
	lu12i.w	$a3, 18
	ori	$a3, $a3, 2400
	add.d	$a3, $sp, $a3
	lu12i.w	$a4, 18
	ori	$a4, $a4, 96
	add.d	$a4, $sp, $a4
	ori	$a5, $zero, 1
	b	.LBB3_70
	.p2align	4, , 16
.LBB3_69:                               # %for.inc471
                                        #   in Loop: Header=BB3_70 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 384
	addi.d	$a4, $a4, 384
	beq	$a2, $s3, .LBB3_73
.LBB3_70:                               # %for.cond431.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_72 Depth 2
	slli.d	$a6, $a2, 2
	ldx.w	$a6, $s4, $a6
	blt	$a6, $a5, .LBB3_69
# %bb.71:                               # %for.cond437.preheader.lr.ph
                                        #   in Loop: Header=BB3_70 Depth=1
	slli.d	$a7, $a2, 3
	ldx.d	$a6, $a0, $a7
	ldx.d	$a7, $a1, $a7
	move	$t0, $zero
	alsl.d	$t1, $a2, $s4, 2
	move	$t2, $a4
	move	$t3, $a3
	.p2align	4, , 16
.LBB3_72:                               # %for.cond437.preheader
                                        #   Parent Loop BB3_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $a6, 0
	ld.d	$t5, $a7, 0
	ld.w	$t6, $t3, -8
	ld.w	$t7, $t2, -8
	st.w	$t6, $t4, 0
	st.w	$t7, $t5, 0
	ld.w	$t6, $t3, -4
	ld.w	$t7, $t2, -4
	ld.w	$t8, $t3, 0
	ld.w	$fp, $t2, 0
	st.w	$t6, $t4, 4
	st.w	$t7, $t5, 4
	st.w	$t8, $t4, 8
	st.w	$fp, $t5, 8
	addi.d	$t0, $t0, 1
	ld.w	$t4, $t1, 0
	addi.d	$a7, $a7, 8
	addi.d	$t3, $t3, 12
	addi.d	$t2, $t2, 12
	addi.d	$a6, $a6, 8
	blt	$t0, $t4, .LBB3_72
	b	.LBB3_69
.LBB3_73:                               # %if.end525
	ld.w	$a5, $s4, 0
	ori	$a0, $zero, 1
	blt	$a5, $a0, .LBB3_81
# %bb.74:                               # %for.cond530.preheader.lr.ph
	ld.w	$a4, $s4, 4
	blt	$a4, $a0, .LBB3_81
# %bb.75:                               # %for.cond530.preheader.preheader
	ld.d	$a0, $s2, %pc_lo12(wp_weight)
	pcalau12i	$a1, %pc_hi20(wbp_weight)
	ld.d	$a1, $a1, %pc_lo12(wbp_weight)
	move	$a2, $zero
	ori	$a3, $zero, 1
	b	.LBB3_77
	.p2align	4, , 16
.LBB3_76:                               # %for.inc574
                                        #   in Loop: Header=BB3_77 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a5, .LBB3_81
.LBB3_77:                               # %for.cond530.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_79 Depth 2
	blt	$a4, $a3, .LBB3_76
# %bb.78:                               # %for.cond534.preheader.lr.ph
                                        #   in Loop: Header=BB3_77 Depth=1
	ld.d	$a4, $a0, 0
	ld.d	$a6, $a1, 0
	slli.d	$t0, $a2, 3
	ld.d	$t1, $a1, 8
	ldx.d	$a5, $a4, $t0
	ldx.d	$a6, $a6, $t0
	ld.d	$a7, $a0, 8
	ldx.d	$t0, $t1, $t0
	move	$t1, $zero
	.p2align	4, , 16
.LBB3_79:                               # %for.cond534.preheader
                                        #   Parent Loop BB3_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a6, 0
	ld.w	$t2, $a5, 0
	ld.d	$t3, $a7, 0
	ld.d	$t4, $t0, 0
	st.w	$t2, $a4, 0
	ld.w	$t2, $t3, 0
	st.w	$t2, $t4, 0
	ld.w	$t2, $a5, 4
	st.w	$t2, $a4, 4
	ld.w	$t2, $t3, 4
	st.w	$t2, $t4, 4
	ld.w	$t2, $a5, 8
	st.w	$t2, $a4, 8
	ld.w	$a4, $t3, 8
	st.w	$a4, $t4, 8
	ld.w	$a4, $s4, 4
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	blt	$t1, $a4, .LBB3_79
# %bb.80:                               # %for.inc574.loopexit
                                        #   in Loop: Header=BB3_77 Depth=1
	ld.w	$a5, $s4, 0
	b	.LBB3_76
.LBB3_81:                               # %if.end577
	beqz	$s0, .LBB3_84
.LBB3_82:
	move	$a0, $zero
.LBB3_83:                               # %if.end643
	lu12i.w	$a1, 18
	ori	$a1, $a1, 2768
	add.d	$sp, $sp, $a1
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB3_84:                               # %if.then580
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a0, 40
	ld.w	$a3, $s4, 0
	move	$a1, $zero
	slt	$a4, $a2, $a3
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a4, $a4, $a5
	sltui	$a5, $a2, 1
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	ld.w	$a0, $a0, 44
	ld.w	$a5, $s4, 4
	or	$a3, $a3, $a4
	st.w	$a3, $sp, 80
	sltui	$a0, $a0, 1
	slt	$a3, $a2, $a5
	masknez	$a4, $a5, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a2
	ld.d	$a2, $s2, %pc_lo12(wp_weight)
	st.w	$a0, $sp, 84
	addi.d	$a3, $sp, 80
	ori	$a4, $zero, 1
.LBB3_85:                               # %for.cond604.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_87 Depth 2
	slli.d	$a0, $a1, 2
	ldx.w	$a5, $a0, $a3
	blt	$a5, $a4, .LBB3_91
# %bb.86:                               # %for.cond610.preheader.lr.ph
                                        #   in Loop: Header=BB3_85 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a6, $a2, $a0
	.p2align	4, , 16
.LBB3_87:                               # %for.cond610.preheader
                                        #   Parent Loop BB3_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a6, 0
	ld.w	$t0, $a7, 0
	ori	$a0, $zero, 1
	bne	$t0, $s1, .LBB3_83
# %bb.88:                               # %for.cond610
                                        #   in Loop: Header=BB3_87 Depth=2
	ld.w	$t0, $a7, 4
	bne	$t0, $s1, .LBB3_83
# %bb.89:                               # %for.cond610.1
                                        #   in Loop: Header=BB3_87 Depth=2
	ld.w	$a7, $a7, 8
	bne	$a7, $s1, .LBB3_83
# %bb.90:                               # %for.cond610.2
                                        #   in Loop: Header=BB3_87 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB3_87
.LBB3_91:                               # %for.inc640
                                        #   in Loop: Header=BB3_85 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $s3, .LBB3_85
	b	.LBB3_82
.Lfunc_end3:
	.size	test_wp_B_slice, .Lfunc_end3-test_wp_B_slice
                                        # -- End function
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	ref_pic_sub,@object             # @ref_pic_sub
	.local	ref_pic_sub
	.comm	ref_pic_sub,24,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	ref_qpic_sub,@object            # @ref_qpic_sub
	.local	ref_qpic_sub
	.comm	ref_qpic_sub,24,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
