	.file	"partQalignmm.c"
	.text
	.globl	part_imp_match_out_scQ          # -- Begin function part_imp_match_out_scQ
	.p2align	5
	.type	part_imp_match_out_scQ,@function
part_imp_match_out_scQ:                 # @part_imp_match_out_scQ
# %bb.0:                                # %entry
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	part_imp_match_out_scQ, .Lfunc_end0-part_imp_match_out_scQ
                                        # -- End function
	.globl	part_imp_match_init_strictQ     # -- Begin function part_imp_match_init_strictQ
	.p2align	5
	.type	part_imp_match_init_strictQ,@function
part_imp_match_init_strictQ:            # @part_imp_match_init_strictQ
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(impalloclen)
	ld.w	$a0, $s7, %pc_lo12(impalloclen)
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s5, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$s3, $a1
	addi.w	$a1, $a3, 2
	pcalau12i	$s6, %pc_hi20(impmtx)
	bge	$a1, $a0, .LBB1_2
# %bb.1:                                # %entry
	addi.w	$a1, $s5, 2
	blt	$a1, $a0, .LBB1_5
.LBB1_2:                                # %if.then
	ld.d	$a0, $s6, %pc_lo12(impmtx)
	beqz	$a0, .LBB1_4
# %bb.3:                                # %if.then3
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %if.end
	slt	$a0, $s5, $s4
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $a0, 2
	st.w	$a1, $s7, %pc_lo12(impalloclen)
	addi.w	$a0, $a0, 102
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(impmtx)
.LBB1_5:                                # %if.end8
	ori	$s7, $zero, 1
	blt	$s4, $s7, .LBB1_9
# %bb.6:                                # %for.cond10.preheader.lr.ph
	blt	$s5, $s7, .LBB1_9
# %bb.7:                                # %for.cond10.preheader.us.preheader
	ld.d	$s8, $s6, %pc_lo12(impmtx)
	slli.d	$s5, $s5, 2
	.p2align	4, , 16
.LBB1_8:                                # %for.cond10.preheader.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s8, $s8, 8
	bnez	$s4, .LBB1_8
.LBB1_9:                                # %for.end17
	blt	$s3, $s7, .LBB1_47
# %bb.10:                               # %for.cond21.preheader.lr.ph
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB1_47
# %bb.11:                               # %for.cond21.preheader.us.preheader
	pcalau12i	$a0, %got_pc_hi20(fastathreshold)
	ld.d	$a2, $a0, %got_pc_lo12(fastathreshold)
	ld.d	$a0, $sp, 104
	ld.d	$a1, $sp, 96
	fld.d	$fa0, $a2, 0
	ld.d	$a2, $s6, %pc_lo12(impmtx)
	move	$a3, $zero
	ori	$a4, $zero, 45
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               # %for.cond21.for.inc233_crit_edge.us
                                        #   in Loop: Header=BB1_13 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s3, .LBB1_47
.LBB1_13:                               # %for.cond21.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
                                        #       Child Loop BB1_18 Depth 3
                                        #         Child Loop BB1_19 Depth 4
                                        #         Child Loop BB1_23 Depth 4
                                        #         Child Loop BB1_27 Depth 4
                                        #         Child Loop BB1_31 Depth 4
                                        #         Child Loop BB1_35 Depth 4
	slli.d	$a5, $a3, 3
	fldx.d	$fa1, $fp, $a5
	ldx.d	$a5, $a0, $a5
	move	$a6, $zero
	alsl.d	$a7, $a3, $s1, 3
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_14:                               # %for.inc230.us
                                        #   in Loop: Header=BB1_15 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB1_12
.LBB1_15:                               # %for.body23.us
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_18 Depth 3
                                        #         Child Loop BB1_19 Depth 4
                                        #         Child Loop BB1_23 Depth 4
                                        #         Child Loop BB1_27 Depth 4
                                        #         Child Loop BB1_31 Depth 4
                                        #         Child Loop BB1_35 Depth 4
	slli.d	$t2, $a6, 3
	ldx.d	$t0, $a5, $t2
	beqz	$t0, .LBB1_14
# %bb.16:                               # %while.body.lr.ph.us
                                        #   in Loop: Header=BB1_15 Depth=2
	fldx.d	$fa2, $a1, $t2
	ld.d	$t1, $a7, 0
	ldx.d	$t2, $s0, $t2
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa0, $fa2
	nor	$t3, $t1, $zero
	nor	$t4, $t2, $zero
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_17:                               # %while.end228.us
                                        #   in Loop: Header=BB1_18 Depth=3
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB1_14
.LBB1_18:                               # %while.body.us
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_19 Depth 4
                                        #         Child Loop BB1_23 Depth 4
                                        #         Child Loop BB1_27 Depth 4
                                        #         Child Loop BB1_31 Depth 4
                                        #         Child Loop BB1_35 Depth 4
	ld.w	$s4, $t0, 24
	addi.d	$t8, $zero, -1
	move	$t7, $t1
	.p2align	4, , 16
.LBB1_19:                               # %while.cond37.us
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t5, $t7, 0
	beqz	$t5, .LBB1_22
# %bb.20:                               # %while.body40.us
                                        #   in Loop: Header=BB1_19 Depth=4
	addi.d	$t5, $t5, -45
	sltu	$t5, $zero, $t5
	add.w	$t8, $t8, $t5
	addi.d	$t7, $t7, 1
	bne	$t8, $s4, .LBB1_19
# %bb.21:                               #   in Loop: Header=BB1_18 Depth=3
	move	$t8, $s4
.LBB1_22:                               # %while.end.us
                                        #   in Loop: Header=BB1_18 Depth=3
	ld.w	$s5, $t0, 28
	add.w	$t5, $t3, $t7
	move	$t6, $t5
	beq	$s4, $s5, .LBB1_26
	.p2align	4, , 16
.LBB1_23:                               # %while.cond60.us
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t6, $t7, 0
	beqz	$t6, .LBB1_25
# %bb.24:                               # %while.body64.us
                                        #   in Loop: Header=BB1_23 Depth=4
	addi.d	$t6, $t6, -45
	sltu	$t6, $zero, $t6
	add.w	$t8, $t8, $t6
	addi.d	$t7, $t7, 1
	bne	$t8, $s5, .LBB1_23
.LBB1_25:                               # %while.end77.us
                                        #   in Loop: Header=BB1_18 Depth=3
	add.w	$t6, $t3, $t7
.LBB1_26:                               # %if.end85.us
                                        #   in Loop: Header=BB1_18 Depth=3
	ld.w	$s6, $t0, 32
	addi.d	$s5, $zero, -1
	move	$s4, $t2
	.p2align	4, , 16
.LBB1_27:                               # %while.cond88.us
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $s4, 0
	beqz	$t7, .LBB1_30
# %bb.28:                               # %while.body92.us
                                        #   in Loop: Header=BB1_27 Depth=4
	addi.d	$t7, $t7, -45
	sltu	$t7, $zero, $t7
	add.w	$s5, $s5, $t7
	addi.d	$s4, $s4, 1
	bne	$s5, $s6, .LBB1_27
# %bb.29:                               #   in Loop: Header=BB1_18 Depth=3
	move	$s5, $s6
.LBB1_30:                               # %while.end105.us
                                        #   in Loop: Header=BB1_18 Depth=3
	ld.w	$s7, $t0, 36
	add.w	$t7, $t4, $s4
	move	$t8, $t7
	beq	$s6, $s7, .LBB1_34
	.p2align	4, , 16
.LBB1_31:                               # %while.cond119.us
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t8, $s4, 0
	beqz	$t8, .LBB1_33
# %bb.32:                               # %while.body123.us
                                        #   in Loop: Header=BB1_31 Depth=4
	addi.d	$t8, $t8, -45
	sltu	$t8, $zero, $t8
	add.w	$s5, $s5, $t8
	addi.d	$s4, $s4, 1
	bne	$s5, $s7, .LBB1_31
.LBB1_33:                               # %while.end136.us
                                        #   in Loop: Header=BB1_18 Depth=3
	add.w	$t8, $t4, $s4
.LBB1_34:                               # %if.end144.us
                                        #   in Loop: Header=BB1_18 Depth=3
	add.d	$s4, $t1, $t5
	add.d	$s5, $t2, $t7
	.p2align	4, , 16
.LBB1_35:                               # %while.cond157.us
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s7, $s4, 0
	beqz	$s7, .LBB1_17
# %bb.36:                               # %land.rhs.us
                                        #   in Loop: Header=BB1_35 Depth=4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB1_17
# %bb.37:                               # %while.body162.us
                                        #   in Loop: Header=BB1_35 Depth=4
	beq	$s7, $a4, .LBB1_40
# %bb.38:                               # %while.body162.us
                                        #   in Loop: Header=BB1_35 Depth=4
	beq	$s6, $a4, .LBB1_40
# %bb.39:                               # %if.then169.us
                                        #   in Loop: Header=BB1_35 Depth=4
	slli.d	$s6, $t5, 3
	ldx.d	$s6, $a2, $s6
	fld.s	$fa3, $t0, 64
	slli.d	$s7, $t7, 2
	fldx.s	$fa4, $s6, $s7
	fcvt.d.s	$fa3, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa3, $fa2, $fa4
	fcvt.s.d	$fa3, $fa3
	fstx.s	$fa3, $s6, $s7
	addi.w	$t5, $t5, 1
	addi.w	$t7, $t7, 1
	addi.d	$s4, $s4, 1
	b	.LBB1_44
	.p2align	4, , 16
.LBB1_40:                               # %if.else182.us
                                        #   in Loop: Header=BB1_35 Depth=4
	bne	$s7, $a4, .LBB1_42
# %bb.41:                               # %land.lhs.true197.us
                                        #   in Loop: Header=BB1_35 Depth=4
	addi.w	$t5, $t5, 1
	addi.d	$s4, $s4, 1
.LBB1_42:                               # %land.lhs.true186.us
                                        #   in Loop: Header=BB1_35 Depth=4
	bne	$s6, $a4, .LBB1_45
# %bb.43:                               # %if.then212.us
                                        #   in Loop: Header=BB1_35 Depth=4
	addi.w	$t7, $t7, 1
.LBB1_44:                               # %if.end220.us
                                        #   in Loop: Header=BB1_35 Depth=4
	addi.d	$s5, $s5, 1
.LBB1_45:                               # %if.end220.us
                                        #   in Loop: Header=BB1_35 Depth=4
	blt	$t6, $t5, .LBB1_17
# %bb.46:                               # %if.end220.us
                                        #   in Loop: Header=BB1_35 Depth=4
	bge	$t8, $t7, .LBB1_35
	b	.LBB1_17
.LBB1_47:                               # %for.end235
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end1:
	.size	part_imp_match_init_strictQ, .Lfunc_end1-part_imp_match_init_strictQ
                                        # -- End function
	.globl	part_imp_rnaQ                   # -- Begin function part_imp_rnaQ
	.p2align	5
	.type	part_imp_rnaQ,@function
part_imp_rnaQ:                          # @part_imp_rnaQ
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	vld	$vr0, $sp, 48
	ld.d	$t0, $sp, 64
	pcalau12i	$t1, %pc_hi20(impmtx)
	ld.d	$t1, $t1, %pc_lo12(impmtx)
	st.d	$t0, $sp, 24
	vst	$vr0, $sp, 8
	st.d	$t1, $sp, 0
	pcaddu18i	$ra, %call36(foldrna)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	part_imp_rnaQ, .Lfunc_end2-part_imp_rnaQ
                                        # -- End function
	.globl	part_imp_match_initQ            # -- Begin function part_imp_match_initQ
	.p2align	5
	.type	part_imp_match_initQ,@function
part_imp_match_initQ:                   # @part_imp_match_initQ
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
	pcalau12i	$fp, %pc_hi20(part_imp_match_initQ.impalloclen)
	ld.w	$a0, $fp, %pc_lo12(part_imp_match_initQ.impalloclen)
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	move	$s5, $a6
	move	$s0, $a5
	move	$s4, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	pcalau12i	$a1, %pc_hi20(impmtx)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(part_imp_match_initQ.nocount1)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(part_imp_match_initQ.nocount2)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	blt	$a0, $a3, .LBB3_11
# %bb.1:                                # %entry
	blt	$a0, $s4, .LBB3_11
# %bb.2:                                # %if.end12
	ori	$a1, $zero, 1
	blt	$s1, $a1, .LBB3_18
.LBB3_3:                                # %for.cond14.preheader.lr.ph
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount1)
	blt	$s3, $a1, .LBB3_19
# %bb.4:                                # %for.cond14.preheader.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_5:                                # %if.else.us
                                        #   in Loop: Header=BB3_7 Depth=1
	move	$a4, $zero
.LBB3_6:                                # %for.inc31.us
                                        #   in Loop: Header=BB3_7 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s1, .LBB3_23
.LBB3_7:                                # %for.cond14.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	move	$a4, $s3
	move	$a5, $s0
	move	$a3, $s3
	.p2align	4, , 16
.LBB3_8:                                # %for.body16.us
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB3_10
# %bb.9:                                # %for.inc.us
                                        #   in Loop: Header=BB3_8 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB3_8
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_10:                               # %for.end.us
                                        #   in Loop: Header=BB3_7 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB3_6
	b	.LBB3_5
.LBB3_11:                               # %if.then
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	beqz	$a0, .LBB3_13
# %bb.12:                               # %if.then2
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB3_13:                               # %if.end
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount1)
	beqz	$a0, .LBB3_15
# %bb.14:                               # %if.then4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_15:                               # %if.end5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount2)
	beqz	$a0, .LBB3_17
# %bb.16:                               # %if.then7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_17:                               # %if.end8
	slt	$a0, $s4, $s1
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	st.w	$a0, $fp, %pc_lo12(part_imp_match_initQ.impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(part_imp_match_initQ.impalloclen)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(part_imp_match_initQ.impalloclen)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(part_imp_match_initQ.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(part_imp_match_initQ.impalloclen)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(part_imp_match_initQ.nocount2)
	addi.d	$a0, $a1, -2
	st.w	$a0, $fp, %pc_lo12(part_imp_match_initQ.impalloclen)
	ori	$a1, $zero, 1
	bge	$s1, $a1, .LBB3_3
.LBB3_18:                               # %for.cond34.preheader.thread
	bge	$s4, $a1, .LBB3_24
	b	.LBB3_39
.LBB3_19:                               # %for.cond14.preheader.lr.ph.split
	beqz	$s3, .LBB3_21
# %bb.20:                               # %for.cond14.preheader.preheader
	ori	$a1, $zero, 1
	b	.LBB3_22
.LBB3_21:                               # %for.cond14.preheader.us169.preheader
	move	$a1, $zero
.LBB3_22:                               # %for.cond34.preheader
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_23:                               # %for.cond34.preheader
	blez	$s4, .LBB3_39
.LBB3_24:                               # %for.cond38.preheader.lr.ph
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount2)
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB3_32
# %bb.25:                               # %for.cond38.preheader.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB3_28
	.p2align	4, , 16
.LBB3_26:                               # %if.else59.us
                                        #   in Loop: Header=BB3_28 Depth=1
	move	$a4, $zero
.LBB3_27:                               # %for.inc63.us
                                        #   in Loop: Header=BB3_28 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB3_36
.LBB3_28:                               # %for.cond38.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_29 Depth 2
	move	$a4, $s2
	move	$a5, $s5
	move	$a3, $s2
	.p2align	4, , 16
.LBB3_29:                               # %for.body41.us
                                        #   Parent Loop BB3_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB3_31
# %bb.30:                               # %for.inc51.us
                                        #   in Loop: Header=BB3_29 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB3_29
	b	.LBB3_26
	.p2align	4, , 16
.LBB3_31:                               # %for.end53.us
                                        #   in Loop: Header=BB3_28 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB3_27
	b	.LBB3_26
.LBB3_32:                               # %for.cond38.preheader.lr.ph.split
	beqz	$s2, .LBB3_34
# %bb.33:                               # %for.cond38.preheader.preheader
	ori	$a1, $zero, 1
	b	.LBB3_35
.LBB3_34:                               # %for.cond38.preheader.us183.preheader
	move	$a1, $zero
.LBB3_35:                               # %for.cond66.preheader
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_36:                               # %for.cond66.preheader
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB3_39
# %bb.37:                               # %for.cond70.preheader.lr.ph
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(impmtx)
	slli.d	$s4, $s4, 2
	.p2align	4, , 16
.LBB3_38:                               # %for.cond70.preheader.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB3_38
.LBB3_39:                               # %for.cond84.preheader
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB3_88
# %bb.40:                               # %for.body87.lr.ph
	blez	$s2, .LBB3_86
# %bb.41:                               # %for.body87.us.preheader
	move	$fp, $zero
	ld.d	$a0, $sp, 264
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 256
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
.LBB3_42:                               # %for.body87.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_43 Depth 2
                                        #       Child Loop BB3_44 Depth 3
                                        #       Child Loop BB3_47 Depth 3
                                        #       Child Loop BB3_50 Depth 3
                                        #       Child Loop BB3_53 Depth 3
                                        #       Child Loop BB3_58 Depth 3
                                        #       Child Loop BB3_78 Depth 3
                                        #         Child Loop BB3_81 Depth 4
                                        #       Child Loop BB3_65 Depth 3
                                        #         Child Loop BB3_68 Depth 4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 3
	ldx.d	$a3, $s0, $a1
	alsl.d	$a1, $fp, $s0, 3
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$s6, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$s7, $fp, $a0, 3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	alsl.d	$fp, $fp, $a0, 3
.LBB3_43:                               # %for.body94.us
                                        #   Parent Loop BB3_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_44 Depth 3
                                        #       Child Loop BB3_47 Depth 3
                                        #       Child Loop BB3_50 Depth 3
                                        #       Child Loop BB3_53 Depth 3
                                        #       Child Loop BB3_58 Depth 3
                                        #       Child Loop BB3_78 Depth 3
                                        #         Child Loop BB3_81 Depth 4
                                        #       Child Loop BB3_65 Depth 3
                                        #         Child Loop BB3_68 Depth 4
	ld.d	$a0, $s7, 0
	slli.d	$s2, $s6, 3
	ldx.d	$a1, $a0, $s2
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.w	$a2, $a1, 24
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldx.d	$a1, $a0, $s2
	ld.d	$a0, $s0, 0
	ld.w	$a2, $a1, 28
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$a3, $s5, $s2
	alsl.d	$s0, $s6, $s5, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	addi.d	$a1, $zero, -1
	move	$a0, $a2
	.p2align	4, , 16
.LBB3_44:                               # %while.cond.us
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a0, 0
	beqz	$a3, .LBB3_46
# %bb.45:                               # %while.body.us
                                        #   in Loop: Header=BB3_44 Depth=3
	ld.d	$a4, $s7, 0
	ldx.d	$a4, $a4, $s2
	ld.w	$a4, $a4, 24
	addi.d	$a3, $a3, -45
	sltu	$a3, $zero, $a3
	add.w	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bne	$a1, $a4, .LBB3_44
.LBB3_46:                               # %while.end.us
                                        #   in Loop: Header=BB3_43 Depth=2
	nor	$a3, $a2, $zero
	add.w	$s4, $a0, $a3
	.p2align	4, , 16
.LBB3_47:                               # %while.cond134.us
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB3_49
# %bb.48:                               # %while.body138.us
                                        #   in Loop: Header=BB3_47 Depth=3
	ld.d	$a4, $s7, 0
	ldx.d	$a4, $a4, $s2
	ld.w	$a4, $a4, 28
	addi.d	$a2, $a2, -45
	sltu	$a2, $zero, $a2
	add.w	$a1, $a1, $a2
	addi.d	$a0, $a0, 1
	bne	$a1, $a4, .LBB3_47
.LBB3_49:                               # %while.end155.us
                                        #   in Loop: Header=BB3_43 Depth=2
	ld.d	$a2, $s0, 0
	add.w	$s3, $a0, $a3
	addi.d	$a1, $zero, -1
	move	$a0, $a2
	.p2align	4, , 16
.LBB3_50:                               # %while.cond165.us
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a0, 0
	beqz	$a3, .LBB3_52
# %bb.51:                               # %while.body169.us
                                        #   in Loop: Header=BB3_50 Depth=3
	ld.d	$a4, $s7, 0
	ldx.d	$a4, $a4, $s2
	ld.w	$a4, $a4, 32
	addi.d	$a3, $a3, -45
	sltu	$a3, $zero, $a3
	add.w	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bne	$a1, $a4, .LBB3_50
.LBB3_52:                               # %while.end186.us
                                        #   in Loop: Header=BB3_43 Depth=2
	nor	$a2, $a2, $zero
	add.w	$s8, $a0, $a2
	.p2align	4, , 16
.LBB3_53:                               # %while.cond194.us
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a0, 0
	beqz	$a3, .LBB3_55
# %bb.54:                               # %while.body198.us
                                        #   in Loop: Header=BB3_53 Depth=3
	ld.d	$a4, $s7, 0
	ldx.d	$a4, $a4, $s2
	ld.w	$a4, $a4, 36
	addi.d	$a3, $a3, -45
	sltu	$a3, $zero, $a3
	add.w	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bne	$a1, $a4, .LBB3_53
.LBB3_55:                               # %while.end215.us
                                        #   in Loop: Header=BB3_43 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	add.w	$s1, $a0, $a2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$s0, $s6, $a0, 3
	blt	$s3, $s4, .LBB3_63
# %bb.56:                               # %while.end215.us
                                        #   in Loop: Header=BB3_43 Depth=2
	blt	$s1, $s8, .LBB3_63
# %bb.57:                               # %while.body229.lr.ph.us
                                        #   in Loop: Header=BB3_43 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount1)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(part_imp_match_initQ.nocount2)
	slli.d	$a2, $s8, 2
	alsl.d	$a3, $s4, $a3, 3
	move	$a6, $s8
	move	$a4, $s4
	.p2align	4, , 16
.LBB3_58:                               # %while.body229.us
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a7, $a0, $a4
	move	$a5, $a6
	bnez	$a7, .LBB3_61
# %bb.59:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB3_58 Depth=3
	ldx.bu	$a6, $a1, $a5
	bnez	$a6, .LBB3_61
# %bb.60:                               # %if.then236.us
                                        #   in Loop: Header=BB3_58 Depth=3
	ld.d	$a6, $s7, 0
	ldx.d	$a6, $a6, $s2
	ld.d	$a7, $a3, 0
	fld.d	$fa0, $a6, 72
	fld.d	$fa1, $fp, 0
	fldx.s	$fa2, $a7, $a2
	fld.d	$fa3, $s0, 0
	fmul.d	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a7, $a2
	.p2align	4, , 16
.LBB3_61:                               # %if.end252.us
                                        #   in Loop: Header=BB3_58 Depth=3
	bge	$a4, $s3, .LBB3_63
# %bb.62:                               # %if.end252.us
                                        #   in Loop: Header=BB3_58 Depth=3
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a5, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 8
	blt	$a5, $s1, .LBB3_58
.LBB3_63:                               # %while.end255.us
                                        #   in Loop: Header=BB3_43 Depth=2
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	sub.d	$a1, $s3, $s4
	sub.d	$a2, $s8, $s1
	add.w	$s5, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s5, .LBB3_76
# %bb.64:                               # %do.body.preheader.us
                                        #   in Loop: Header=BB3_43 Depth=2
	srai.d	$a0, $s8, 63
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
	andn	$s8, $s8, $a0
	slli.d	$a0, $s4, 3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
.LBB3_65:                               # %do.body.us
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_43 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_68 Depth 4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s6, $s5
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blt	$s3, $s4, .LBB3_74
# %bb.66:                               # %do.body.us
                                        #   in Loop: Header=BB3_65 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	sub.w	$a5, $a0, $s6
	blt	$s1, $a5, .LBB3_74
# %bb.67:                               # %while.body272.lr.ph.us
                                        #   in Loop: Header=BB3_65 Depth=3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount1)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(part_imp_match_initQ.nocount2)
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	move	$a3, $s4
	.p2align	4, , 16
.LBB3_68:                               # %while.body272.us
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_43 Depth=2
                                        #       Parent Loop BB3_65 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a4, $a5
	blt	$a5, $s8, .LBB3_72
# %bb.69:                               # %land.lhs.true278.us
                                        #   in Loop: Header=BB3_68 Depth=4
	ldx.bu	$a5, $a0, $a3
	bnez	$a5, .LBB3_72
# %bb.70:                               # %land.lhs.true282.us
                                        #   in Loop: Header=BB3_68 Depth=4
	ldx.bu	$a5, $a1, $a4
	bnez	$a5, .LBB3_72
# %bb.71:                               # %if.then286.us
                                        #   in Loop: Header=BB3_68 Depth=4
	ld.d	$a5, $s7, 0
	ldx.d	$a5, $a5, $s2
	fld.d	$fa0, $a5, 72
	fld.d	$fa1, $fp, 0
	fld.d	$fa2, $s0, 0
	fmul.d	$fa0, $fa0, $fa1
	ld.d	$a5, $a2, 0
	fmul.d	$fa0, $fa0, $fa2
	fcvt.s.d	$fa0, $fa0
	slli.d	$a6, $a4, 2
	fstx.s	$fa0, $a5, $a6
	.p2align	4, , 16
.LBB3_72:                               # %if.end303.us
                                        #   in Loop: Header=BB3_68 Depth=4
	bge	$a3, $s3, .LBB3_74
# %bb.73:                               # %if.end303.us
                                        #   in Loop: Header=BB3_68 Depth=4
	addi.d	$a3, $a3, 1
	addi.w	$a5, $a4, 1
	addi.d	$a2, $a2, 8
	blt	$a4, $s1, .LBB3_68
.LBB3_74:                               # %do.cond.us
                                        #   in Loop: Header=BB3_65 Depth=3
	addi.w	$s5, $s6, -1
	bnez	$s6, .LBB3_65
.LBB3_75:                               # %for.inc354.us
                                        #   in Loop: Header=BB3_43 Depth=2
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s6, $s6, 1
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	bne	$s6, $s2, .LBB3_43
	b	.LBB3_85
	.p2align	4, , 16
.LBB3_76:                               # %do.body309.preheader.us
                                        #   in Loop: Header=BB3_43 Depth=2
	srai.d	$a2, $s4, 63
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(part_imp_match_initQ.nocount2)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_initQ.nocount1)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	andn	$a2, $s4, $a2
	add.d	$a3, $a3, $s8
	slli.d	$a4, $s8, 2
	b	.LBB3_78
	.p2align	4, , 16
.LBB3_77:                               # %do.cond349.us
                                        #   in Loop: Header=BB3_78 Depth=3
	addi.w	$s5, $a5, 1
	beqz	$a5, .LBB3_75
.LBB3_78:                               # %do.body309.us
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_43 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_81 Depth 4
	move	$a5, $s5
	add.w	$t1, $s5, $s4
	blt	$s3, $t1, .LBB3_77
# %bb.79:                               # %while.body314.us.preheader
                                        #   in Loop: Header=BB3_78 Depth=3
	move	$a6, $a4
	move	$a7, $a3
	b	.LBB3_81
	.p2align	4, , 16
.LBB3_80:                               # %if.end345.us
                                        #   in Loop: Header=BB3_81 Depth=4
	addi.w	$t1, $t0, 1
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 4
	bge	$t0, $s3, .LBB3_77
.LBB3_81:                               # %while.body314.us
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_43 Depth=2
                                        #       Parent Loop BB3_78 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$t0, $t1
	blt	$t1, $a2, .LBB3_80
# %bb.82:                               # %land.lhs.true320.us
                                        #   in Loop: Header=BB3_81 Depth=4
	ldx.bu	$t1, $a0, $t0
	bnez	$t1, .LBB3_80
# %bb.83:                               # %land.lhs.true324.us
                                        #   in Loop: Header=BB3_81 Depth=4
	ld.bu	$t1, $a7, 0
	bnez	$t1, .LBB3_80
# %bb.84:                               # %if.then328.us
                                        #   in Loop: Header=BB3_81 Depth=4
	ld.d	$t1, $s7, 0
	ldx.d	$t1, $t1, $s2
	fld.d	$fa0, $t1, 72
	fld.d	$fa1, $fp, 0
	fld.d	$fa2, $s0, 0
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a1, $t1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $t1, $a6
	b	.LBB3_80
	.p2align	4, , 16
.LBB3_85:                               # %for.cond91.for.inc357_crit_edge.us
                                        #   in Loop: Header=BB3_42 Depth=1
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	addi.d	$fp, $fp, 1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	bne	$fp, $s3, .LBB3_42
	b	.LBB3_88
.LBB3_86:                               # %for.body87.preheader
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s2, $a0, %pc_lo12(.L.str)
.LBB3_87:                               # %for.body87
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a3, $s0, 0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	addi.d	$s3, $s3, -1
	addi.d	$s0, $s0, 8
	bnez	$s3, .LBB3_87
.LBB3_88:                               # %for.end359
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
.Lfunc_end3:
	.size	part_imp_match_initQ, .Lfunc_end3-part_imp_match_initQ
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function partQ__align
.LCPI4_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI4_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI4_3:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI4_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI4_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_2:
	.word	0x461c4000                      # float 1.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_5:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI4_6:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI4_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	partQ__align
	.p2align	5
	.type	partQ__align,@function
partQ__align:                           # @partQ__align
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 448                  # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	pcalau12i	$t1, %pc_hi20(partQ__align.orlgth1)
	st.d	$t1, $sp, 240                   # 8-byte Folded Spill
	ld.w	$s7, $t1, %pc_lo12(partQ__align.orlgth1)
	ld.w	$t0, $t0, 0
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	move	$s8, $a5
	st.d	$a4, $sp, 432                   # 8-byte Folded Spill
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	move	$s4, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(partQ__align.mseq1)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.mseq2)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bnez	$s7, .LBB4_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(partQ__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.w	$s7, $a1, %pc_lo12(partQ__align.orlgth1)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.mseq2)
.LBB4_2:                                # %if.end
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$fp, $a0
	addi.w	$s3, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(partQ__align.orlgth2)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$s0, $a0, %pc_lo12(partQ__align.orlgth2)
	addi.w	$a1, $s5, 0
	pcalau12i	$s6, %pc_hi20(partQ__align.w1)
	pcalau12i	$a0, %pc_hi20(partQ__align.w2)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.initverticalw)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.lastverticalw)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.m)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.mp)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(partQ__align.mseq)
	pcalau12i	$a0, %pc_hi20(partQ__align.digf1)
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.digf2)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.diaf1)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.diaf2)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapz1)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapz2)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapf1)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapf2)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.ogcp1g)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.ogcp2g)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fgcp1g)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fgcp2g)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.og_h_dg_n1_p)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.og_h_dg_n2_p)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fg_h_dg_n1_p)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fg_h_dg_n2_p)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.og_t_fg_h_dg_n1_p)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.og_t_fg_h_dg_n2_p)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fg_t_og_h_dg_n1_p)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.fg_t_og_h_dg_n2_p)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapz_n1)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.gapz_n2)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.cpmx1)
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.cpmx2)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.floatwork)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partQ__align.intwork)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	blt	$s7, $s3, .LBB4_4
# %bb.3:                                # %if.end
	bge	$s0, $a1, .LBB4_8
.LBB4_4:                                # %if.then12
	move	$s3, $t0
	ori	$a0, $zero, 1
	pcalau12i	$s2, %pc_hi20(partQ__align.match)
	blt	$s7, $a0, .LBB4_7
# %bb.5:                                # %if.then12
	blt	$s0, $a0, .LBB4_7
# %bb.6:                                # %if.then17
	ld.d	$a0, $s6, %pc_lo12(partQ__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(partQ__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(partQ__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.og_t_fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.og_t_fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fg_t_og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fg_t_og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz_n1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz_n2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(partQ__align.orlgth1)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(partQ__align.orlgth2)
.LBB4_7:                                # %if.end18
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI4_0)
	movgr2fr.w	$fa1, $fp
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	addi.w	$fp, $s7, 100
	movgr2fr.w	$fa1, $s5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$s1, $s0, 100
	addi.w	$s5, $s0, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(partQ__align.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(partQ__align.match)
	addi.w	$s6, $s7, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.mp)
	add.w	$a1, $s1, $fp
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$s2, $s3
	st.d	$a0, $s3, %pc_lo12(partQ__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.digf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.digf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.diaf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.diaf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapz1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapz2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.ogcp1g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.ogcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.fgcp1g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.fgcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.og_h_dg_n1_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.og_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.fg_h_dg_n1_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.fg_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.og_t_fg_h_dg_n1_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.og_t_fg_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.fg_t_og_h_dg_n1_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.fg_t_og_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapz_n1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.gapz_n2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.cpmx2)
	slt	$a0, $s1, $fp
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	addi.w	$s3, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.floatwork)
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$t0, $s2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partQ__align.intwork)
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(partQ__align.orlgth1)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$s0, $a0, %pc_lo12(partQ__align.orlgth2)
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
.LBB4_8:                                # %if.end120
	ori	$a0, $zero, 1
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	blt	$a4, $a0, .LBB4_16
# %bb.9:                                # %for.body.lr.ph
	ld.d	$a1, $t0, %pc_lo12(partQ__align.mseq)
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.mseq1)
	ori	$a5, $zero, 8
	move	$a3, $zero
	bltu	$a4, $a5, .LBB4_14
# %bb.10:                               # %for.body.lr.ph
	sub.d	$a6, $a2, $a1
	ori	$a5, $zero, 64
	bltu	$a6, $a5, .LBB4_14
# %bb.11:                               # %vector.ph
	bstrpick.d	$a3, $a4, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a7, $a2, 32
	addi.d	$a5, $a1, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_12:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$a6, $a6, -8
	addi.d	$a7, $a7, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB4_12
# %bb.13:                               # %middle.block
	beq	$a3, $a4, .LBB4_16
.LBB4_14:                               # %for.body.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a1, $a3, $a1, 3
	sub.d	$a3, $a4, $a3
	.p2align	4, , 16
.LBB4_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB4_15
.LBB4_16:                               # %for.cond126.preheader
	blt	$s8, $a0, .LBB4_22
# %bb.17:                               # %for.body129.lr.ph
	ld.d	$a0, $t0, %pc_lo12(partQ__align.mseq)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.mseq2)
	ori	$a2, $zero, 8
	bltu	$s8, $a2, .LBB4_19
# %bb.18:                               # %vector.memcheck726
	alsl.d	$a2, $a4, $a0, 3
	sub.d	$a2, $a1, $a2
	ori	$a3, $zero, 64
	bgeu	$a2, $a3, .LBB4_148
.LBB4_19:
	move	$a2, $zero
.LBB4_20:                               # %for.body129.preheader
	slli.d	$a3, $a2, 3
	alsl.d	$a3, $a4, $a3, 3
	add.d	$a0, $a0, $a3
	alsl.d	$a1, $a2, $a1, 3
	sub.d	$a2, $s8, $a2
	.p2align	4, , 16
.LBB4_21:                               # %for.body129
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	st.d	$a3, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB4_21
.LBB4_22:                               # %for.end137
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc2)
	ld.d	$s5, $sp, 600
	ld.w	$a1, $fp, 0
	ld.w	$a0, $s1, 0
	blt	$a1, $s7, .LBB4_25
# %bb.23:                               # %for.end137
	blt	$a0, $s0, .LBB4_25
# %bb.24:                               # %lor.lhs.false140.if.end165_crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB4_29
.LBB4_25:                               # %if.then143
	beqz	$a1, .LBB4_28
# %bb.26:                               # %if.then143
	beqz	$a0, .LBB4_28
# %bb.27:                               # %if.then148
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(partQ__align.orlgth1)
	ld.w	$a1, $fp, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(partQ__align.orlgth2)
	ld.w	$a0, $s1, 0
.LBB4_28:                               # %if.end149
	slt	$a2, $a1, $s7
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$s2, $a2, $a1
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$a0, $s2, 10
	addi.w	$a1, $s0, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s2, $fp, 0
	st.w	$s0, $s1, 0
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
.LBB4_29:                               # %if.end165
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.cpmx1)
	movgr2fr.w	$fs0, $a2
	pcalau12i	$a2, %pc_hi20(partQ__align.ijp)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(partQ__align.ijp)
	move	$a0, $s2
	move	$a2, $s4
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	move	$a3, $s6
	move	$s1, $a4
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(partQ__align.cpmx2)
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a2, $s3
	ld.d	$s0, $sp, 400                   # 8-byte Folded Reload
	move	$a3, $s0
	move	$a4, $s8
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp1g)
	beqz	$s5, .LBB4_31
# %bb.30:                               # %if.then167
	ld.d	$s0, $sp, 624
	move	$s7, $s4
	move	$a5, $s5
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a6, $sp, 616
	ld.d	$s6, $sp, 608
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	move	$s4, $a6
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp2g)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$s5, $s3
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s0
	move	$s3, $s0
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp1g)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s7
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	move	$a5, $s0
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	move	$a6, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp2g)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s5
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s3
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s7
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	move	$a5, $s0
	move	$a6, $s4
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s5
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s3
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf1)
	move	$s4, $s1
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s7
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	move	$a5, $s0
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf2)
	move	$a1, $s8
	move	$a2, $fp
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s6
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf1)
	move	$a1, $s4
	move	$a2, $s2
	move	$a3, $s7
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s1
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz1)
	move	$a1, $s4
	move	$a2, $s2
	move	$a3, $s7
	move	$a4, $s6
	move	$s3, $s0
	ld.d	$s0, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s3
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s1
	move	$a4, $s0
	move	$a5, $s3
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	b	.LBB4_32
.LBB4_31:                               # %if.else
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp2g)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp1g)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.fgcp2g)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.digf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.diaf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapf2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.gapz2)
	move	$a1, $s8
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
.LBB4_32:                               # %if.end168
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	addi.w	$ra, $zero, -1
	ffint.s.w	$ft11, $fs0
	blt	$s0, $ra, .LBB4_37
# %bb.33:                               # %for.body173.lr.ph
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp2g)
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.digf2)
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_h_dg_n2_p)
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fgcp2g)
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(partQ__align.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(partQ__align.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(partQ__align.fg_t_og_h_dg_n2_p)
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(partQ__align.gapz2)
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(partQ__align.gapz_n2)
	addi.d	$t3, $s4, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	fcvt.d.s	$fa0, $ft11
	bgeu	$t1, $t2, .LBB4_79
# %bb.34:
	move	$t2, $zero
.LBB4_35:                               # %for.body173.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB4_36:                               # %for.body173
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a2, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a4, $t3
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a3, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a5, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a0, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a6, $t3
	fldx.s	$fa4, $a7, $t3
	fsub.s	$fa4, $fa3, $fa4
	fstx.s	$fa4, $t0, $t3
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.d	$t1, $t1, -1
	addi.d	$a0, $a0, 4
	bnez	$t1, .LBB4_36
.LBB4_37:                               # %for.end247
	blt	$s6, $ra, .LBB4_42
# %bb.38:                               # %for.body252.lr.ph
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.ogcp1g)
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.digf1)
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_h_dg_n1_p)
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fgcp1g)
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(partQ__align.fg_h_dg_n1_p)
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(partQ__align.og_t_fg_h_dg_n1_p)
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(partQ__align.fg_t_og_h_dg_n1_p)
	ld.d	$a7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(partQ__align.gapz1)
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(partQ__align.gapz_n1)
	addi.d	$t3, $s7, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	fcvt.d.s	$fa0, $ft11
	bgeu	$t1, $t2, .LBB4_112
# %bb.39:
	move	$t2, $zero
.LBB4_40:                               # %for.body252.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB4_41:                               # %for.body252
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a2, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a4, $t3
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a3, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a5, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a0, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a6, $t3
	fldx.s	$fa4, $a7, $t3
	fsub.s	$fa4, $fa3, $fa4
	fstx.s	$fa4, $t0, $t3
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.d	$t1, $t1, -1
	addi.d	$a0, $a0, 4
	bnez	$t1, .LBB4_41
.LBB4_42:                               # %for.end326
	xvst	$xr19, $sp, 256                 # 32-byte Folded Spill
	st.d	$ra, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 592
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 568
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 552
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(partQ__align.w1)
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partQ__align.w2)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(partQ__align.initverticalw)
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(partQ__align.cpmx2)
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(partQ__align.cpmx1)
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(partQ__align.floatwork)
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(partQ__align.intwork)
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $a1
	move	$a1, $s3
	move	$a2, $s1
	move	$a3, $zero
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	move	$a4, $s4
	move	$a5, $s7
	move	$a6, $s0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	beqz	$a0, .LBB4_49
# %bb.43:                               # %if.then328
	move	$t0, $s0
	move	$s0, $s7
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	blt	$s4, $fp, .LBB4_46
# %bb.44:                               # %for.body.lr.ph.i
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	add.w	$a2, $a1, $a2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_45:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	add.w	$a5, $a5, $s5
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	fldx.s	$fa0, $a5, $a2
	fld.s	$fa1, $a6, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a6, 0
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a6, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB4_45
.LBB4_46:                               # %part_imp_match_out_vead_tate_gapmapQ.exit
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $zero
	move	$s4, $s0
	move	$a5, $s0
	move	$s0, $t0
	move	$a6, $t0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 104                   # 8-byte Folded Reload
	blt	$t4, $fp, .LBB4_50
# %bb.47:                               # %for.body.lr.ph.i413
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	add.w	$a0, $a0, $s5
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	bstrpick.d	$a1, $t8, 30, 0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_48:                               # %for.body.i416
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	fldx.s	$fa0, $a0, $a4
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB4_48
	b	.LBB4_50
.LBB4_49:                               # %if.end336.critedge
	ori	$a7, $zero, 1
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $zero
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	move	$a4, $fp
	move	$a5, $s7
	move	$a6, $s0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t4, $fp
	ld.d	$t8, $sp, 104                   # 8-byte Folded Reload
	move	$s4, $s7
.LBB4_50:                               # %if.end336
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$s6, $a0, %got_pc_lo12(outgap)
	ld.w	$a2, $s6, 0
	ori	$a1, $zero, 1
	slli.d	$a0, $t8, 32
	pcalau12i	$a3, %pc_hi20(.LCPI4_2)
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	xvld	$xr9, $sp, 256                  # 32-byte Folded Reload
	ld.d	$t6, $sp, 416                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB4_60
# %bb.51:                               # %if.then339
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.ogcp1g)
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.og_h_dg_n2_p)
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(partQ__align.ogcp2g)
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a3, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_h_dg_n1_p)
	fld.s	$fa2, $a4, 0
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fgcp1g)
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(partQ__align.fg_h_dg_n2_p)
	fld.s	$fa3, $a2, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.fgcp2g)
	fld.s	$fa4, $a3, 0
	fld.s	$fa5, $a4, 0
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fg_h_dg_n1_p)
	fld.s	$fa6, $a2, 0
	movgr2fr.w	$fa7, $zero
	fmadd.s	$fa0, $fa0, $fa1, $fa7
	fld.s	$fa1, $a3, 0
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	fld.s	$fa7, $a2, 0
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmadd.s	$fa0, $fa6, $fa1, $fa0
	fadd.s	$fa1, $fa7, $fa0
	fst.s	$fa1, $a2, 0
	ld.d	$t5, $sp, 64                    # 8-byte Folded Reload
	fld.s	$fa1, $t5, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t5, 0
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	blt	$fp, $a1, .LBB4_55
# %bb.52:                               # %for.body360.lr.ph
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.gapz_n2)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_t_fg_h_dg_n1_p)
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fg_t_og_h_dg_n1_p)
	addi.d	$a4, $t7, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a6, $a4, -1
	ori	$a7, $zero, 8
	ori	$a5, $zero, 1
	bgeu	$a6, $a7, .LBB4_151
.LBB4_53:                               # %for.body360.preheader
	alsl.d	$a3, $a5, $a3, 2
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a6, 2
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB4_54:                               # %for.body360
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a6, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a6, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a3, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a6, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 4
	bnez	$a4, .LBB4_54
.LBB4_55:                               # %for.cond377.preheader
	blez	$t4, .LBB4_145
# %bb.56:                               # %for.body381.lr.ph
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.gapz_n1)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.og_t_fg_h_dg_n2_p)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fg_t_og_h_dg_n2_p)
	addi.d	$a4, $t8, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a6, $a4, -1
	ori	$a7, $zero, 8
	ori	$a5, $zero, 1
	bgeu	$a6, $a7, .LBB4_157
.LBB4_57:                               # %for.body381.preheader
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a6, $a5, $t5, 2
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB4_58:                               # %for.body381
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a6, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a6, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a3, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a6, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 4
	bnez	$a4, .LBB4_58
.LBB4_59:                               # %if.end430.thread710
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.m)
	st.w	$zero, $a1, 0
	b	.LBB4_75
.LBB4_60:                               # %for.cond399.preheader
	ld.d	$t5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	blt	$t4, $a1, .LBB4_67
# %bb.61:                               # %for.body403.lr.ph
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	addi.d	$a2, $t8, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 8
	ori	$a4, $zero, 1
	bltu	$a3, $a5, .LBB4_65
# %bb.62:                               # %vector.ph1042
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a6, 2, 0
	xvreplgr2vr.w	$xr0, $a1
	pcalau12i	$a6, %pc_hi20(.LCPI4_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI4_1)
	addi.d	$a6, $t5, 4
	lu52i.d	$a7, $zero, -1026
	xvreplgr2vr.d	$xr2, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_63:                               # %vector.body1047
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvpermi.q	$xr4, $xr3, 1
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	vext2xv.d.w	$xr3, $xr3
	xvld	$xr5, $a6, 0
	xvffint.d.l	$xr3, $xr3
	xvfmul.d	$xr3, $xr3, $xr2
	xvfmul.d	$xr4, $xr4, $xr2
	xvpermi.q	$xr6, $xr5, 1
	vreplvei.w	$vr7, $vr6, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr6, 0
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr8, $xr7, 1
	vreplvei.w	$vr7, $vr6, 2
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr8, $xr7, 2
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr8, $xr6, 3
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	xvfadd.d	$xr4, $xr8, $xr4
	xvfadd.d	$xr3, $xr7, $xr3
	xvpickve2gr.d	$t0, $xr3, 1
	movgr2fr.d	$fa5, $t0
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$t0, $xr3, 0
	movgr2fr.d	$fa6, $t0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr6, $xr5, 1
	xvpickve2gr.d	$t0, $xr3, 2
	movgr2fr.d	$fa5, $t0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr6, $xr5, 2
	xvpickve2gr.d	$t0, $xr3, 3
	movgr2fr.d	$fa3, $t0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 3
	xvpickve2gr.d	$t0, $xr4, 0
	movgr2fr.d	$fa3, $t0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 4
	xvpickve2gr.d	$t0, $xr4, 1
	movgr2fr.d	$fa3, $t0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 5
	xvpickve2gr.d	$t0, $xr4, 2
	movgr2fr.d	$fa3, $t0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 6
	xvpickve2gr.d	$t0, $xr4, 3
	movgr2fr.d	$fa3, $t0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 7
	xvst	$xr6, $a6, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_63
# %bb.64:                               # %middle.block1051
	beq	$a3, $a5, .LBB4_67
.LBB4_65:                               # %for.body403.preheader
	mul.d	$a3, $a1, $a4
	alsl.d	$a5, $a4, $t5, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_66:                               # %for.body403
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a5, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a5, 0
	add.w	$a3, $a3, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 4
	bnez	$a2, .LBB4_66
.LBB4_67:                               # %for.cond414.preheader
	ori	$a2, $zero, 1
	blt	$fp, $a2, .LBB4_74
# %bb.68:                               # %for.body418.lr.ph
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	addi.d	$a3, $t7, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 8
	bltu	$a4, $a5, .LBB4_72
# %bb.69:                               # %vector.ph1056
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a2, $a4
	bstrins.d	$a2, $a6, 2, 0
	xvreplgr2vr.w	$xr0, $a1
	pcalau12i	$a6, %pc_hi20(.LCPI4_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI4_1)
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 4
	lu52i.d	$a7, $zero, -1026
	xvreplgr2vr.d	$xr2, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_70:                               # %vector.body1061
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvpermi.q	$xr4, $xr3, 1
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	vext2xv.d.w	$xr3, $xr3
	xvld	$xr5, $a6, 0
	xvffint.d.l	$xr3, $xr3
	xvfmul.d	$xr3, $xr3, $xr2
	xvfmul.d	$xr4, $xr4, $xr2
	xvpermi.q	$xr6, $xr5, 1
	vreplvei.w	$vr7, $vr6, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr6, 0
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr8, $xr7, 1
	vreplvei.w	$vr7, $vr6, 2
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr8, $xr7, 2
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr8, $xr6, 3
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	xvfadd.d	$xr4, $xr8, $xr4
	xvfadd.d	$xr3, $xr7, $xr3
	xvpickve2gr.d	$t0, $xr3, 1
	movgr2fr.d	$fa5, $t0
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$t0, $xr3, 0
	movgr2fr.d	$fa6, $t0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr6, $xr5, 1
	xvpickve2gr.d	$t0, $xr3, 2
	movgr2fr.d	$fa5, $t0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr6, $xr5, 2
	xvpickve2gr.d	$t0, $xr3, 3
	movgr2fr.d	$fa3, $t0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 3
	xvpickve2gr.d	$t0, $xr4, 0
	movgr2fr.d	$fa3, $t0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 4
	xvpickve2gr.d	$t0, $xr4, 1
	movgr2fr.d	$fa3, $t0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 5
	xvpickve2gr.d	$t0, $xr4, 2
	movgr2fr.d	$fa3, $t0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 6
	xvpickve2gr.d	$t0, $xr4, 3
	movgr2fr.d	$fa3, $t0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 7
	xvst	$xr6, $a6, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_70
# %bb.71:                               # %middle.block1068
	beq	$a4, $a5, .LBB4_74
.LBB4_72:                               # %for.body418.preheader
	mul.d	$a4, $a1, $a2
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a5, 2
	sub.d	$a2, $a3, $a2
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_73:                               # %for.body418
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a5, 0
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a5, 0
	add.w	$a4, $a4, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 4
	bnez	$a2, .LBB4_73
.LBB4_74:                               # %if.end430
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.m)
	ori	$a2, $zero, 1
	st.w	$zero, $a1, 0
	blt	$t4, $a2, .LBB4_146
.LBB4_75:                               # %iter.check
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.mp)
	addi.d	$a3, $t8, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 4
	ori	$a6, $zero, 1
	bltu	$a4, $a5, .LBB4_171
# %bb.76:                               # %vector.memcheck1147
	sub.d	$a5, $a1, $t5
	addi.d	$a5, $a5, 4
	ori	$a7, $zero, 64
	bltu	$a5, $a7, .LBB4_171
# %bb.77:                               # %vector.main.loop.iter.check
	ori	$a6, $zero, 16
	lu12i.w	$a5, 287172
	bgeu	$a4, $a6, .LBB4_163
# %bb.78:
	move	$a7, $zero
	b	.LBB4_167
.LBB4_79:                               # %vector.memcheck741
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB4_358
# %bb.80:                               # %vector.memcheck741
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB4_358
# %bb.81:                               # %vector.memcheck741
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB4_358
# %bb.82:                               # %vector.memcheck741
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB4_358
# %bb.83:                               # %vector.memcheck741
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB4_358
# %bb.84:                               # %vector.memcheck741
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB4_358
# %bb.85:                               # %vector.memcheck741
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB4_358
# %bb.86:                               # %vector.memcheck741
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB4_358
# %bb.87:                               # %vector.memcheck741
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_358
# %bb.88:                               # %vector.memcheck741
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_358
# %bb.89:                               # %vector.memcheck741
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_358
# %bb.90:                               # %vector.memcheck741
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_358
# %bb.91:                               # %vector.memcheck741
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_358
# %bb.92:                               # %vector.memcheck741
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_358
# %bb.93:                               # %vector.memcheck741
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB4_358
# %bb.94:                               # %vector.memcheck741
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_358
# %bb.95:                               # %vector.memcheck741
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_358
# %bb.96:                               # %vector.memcheck741
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_358
# %bb.97:                               # %vector.memcheck741
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_358
# %bb.98:                               # %vector.memcheck741
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_358
# %bb.99:                               # %vector.memcheck741
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	bnez	$s0, .LBB4_359
# %bb.100:                              # %vector.memcheck741
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_359
# %bb.101:                              # %vector.memcheck741
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_359
# %bb.102:                              # %vector.memcheck741
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_359
# %bb.103:                              # %vector.memcheck741
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_359
# %bb.104:                              # %vector.memcheck741
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB4_359
# %bb.105:                              # %vector.memcheck741
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	bnez	$t5, .LBB4_35
# %bb.106:                              # %vector.memcheck741
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_35
# %bb.107:                              # %vector.memcheck741
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_35
# %bb.108:                              # %vector.memcheck741
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB4_35
# %bb.109:                              # %vector.ph867
	bstrpick.d	$t2, $t3, 31, 3
	slli.d	$t2, $t2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$t3, $zero, 1023
	xvreplgr2vr.d	$xr2, $t3
	lu52i.d	$t3, $zero, 1022
	xvreplgr2vr.d	$xr3, $t3
	lu12i.w	$t3, 260096
	xvreplgr2vr.w	$xr4, $t3
	move	$t3, $a0
	move	$t4, $a1
	move	$t5, $a2
	move	$t6, $a3
	move	$t7, $a4
	move	$t8, $a5
	move	$s0, $a6
	move	$s3, $a7
	move	$s4, $t0
	move	$s5, $t2
	.p2align	4, , 16
.LBB4_110:                              # %vector.body870
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr7, $t3, 0
	xvpermi.q	$xr6, $xr7, 1
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$ft0, $fa5
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr5, $xr8, 1
	vreplvei.w	$vr8, $vr6, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr5, $xr8, 2
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr5, $xr6, 3
	vreplvei.w	$vr6, $vr7, 1
	fcvt.d.s	$ft0, $fa6
	vreplvei.w	$vr6, $vr7, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr8, 1
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr6, $xr8, 2
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvld	$xr11, $t4, 0
	xvinsve0.d	$xr6, $xr7, 3
	xvfsub.d	$xr9, $xr2, $xr5
	xvfsub.d	$xr10, $xr2, $xr6
	xvpermi.q	$xr8, $xr11, 1
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$ft4, $fa7
	vreplvei.w	$vr7, $vr8, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr12, 1
	vreplvei.w	$vr12, $vr8, 2
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr7, $xr12, 2
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr7, $xr8, 3
	vreplvei.w	$vr8, $vr11, 1
	fcvt.d.s	$ft4, $ft0
	vreplvei.w	$vr8, $vr11, 0
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr8, $xr12, 1
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr8, $xr12, 2
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr8, $xr11, 3
	xvfsub.d	$xr11, $xr9, $xr7
	xvfsub.d	$xr12, $xr10, $xr8
	xvfmul.d	$xr11, $xr11, $xr1
	xvfmul.d	$xr12, $xr12, $xr1
	xvfmul.d	$xr11, $xr11, $xr3
	xvfmul.d	$xr12, $xr12, $xr3
	xvpickve2gr.d	$fp, $xr12, 1
	movgr2fr.d	$ft5, $fp
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$fp, $xr12, 0
	movgr2fr.d	$ft6, $fp
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve2gr.d	$fp, $xr12, 2
	movgr2fr.d	$ft5, $fp
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve2gr.d	$fp, $xr12, 3
	movgr2fr.d	$ft4, $fp
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 3
	xvpickve2gr.d	$fp, $xr11, 0
	movgr2fr.d	$ft4, $fp
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 4
	xvpickve2gr.d	$fp, $xr11, 1
	movgr2fr.d	$ft4, $fp
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 5
	xvpickve2gr.d	$fp, $xr11, 2
	movgr2fr.d	$ft4, $fp
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 6
	xvpickve2gr.d	$fp, $xr11, 3
	movgr2fr.d	$ft3, $fp
	xvld	$xr12, $t6, 0
	fcvt.s.d	$ft3, $ft3
	xvinsve0.w	$xr14, $xr11, 7
	xvst	$xr14, $t5, 0
	xvpermi.q	$xr11, $xr12, 1
	vreplvei.w	$vr13, $vr11, 1
	fcvt.d.s	$ft6, $ft5
	vreplvei.w	$vr13, $vr11, 0
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr13, $xr14, 1
	vreplvei.w	$vr14, $vr11, 2
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr13, $xr14, 2
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr13, $xr11, 3
	xvfsub.d	$xr11, $xr2, $xr13
	xvfsub.d	$xr15, $xr11, $xr7
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft8, $ft6
	vreplvei.w	$vr14, $vr12, 0
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr14, $xr16, 1
	vreplvei.w	$vr16, $vr12, 2
	fcvt.d.s	$ft8, $ft8
	xvinsve0.d	$xr14, $xr16, 2
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr14, $xr12, 3
	xvfsub.d	$xr12, $xr2, $xr14
	xvfsub.d	$xr16, $xr12, $xr8
	xvfmul.d	$xr15, $xr15, $xr1
	xvfmul.d	$xr16, $xr16, $xr1
	xvfmul.d	$xr15, $xr15, $xr3
	xvfmul.d	$xr16, $xr16, $xr3
	xvpickve2gr.d	$fp, $xr16, 1
	movgr2fr.d	$ft9, $fp
	fcvt.s.d	$ft9, $ft9
	xvpickve2gr.d	$fp, $xr16, 0
	movgr2fr.d	$ft10, $fp
	fcvt.s.d	$ft10, $ft10
	xvinsve0.w	$xr18, $xr17, 1
	xvpickve2gr.d	$fp, $xr16, 2
	movgr2fr.d	$ft9, $fp
	fcvt.s.d	$ft9, $ft9
	xvinsve0.w	$xr18, $xr17, 2
	xvpickve2gr.d	$fp, $xr16, 3
	movgr2fr.d	$ft8, $fp
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 3
	xvpickve2gr.d	$fp, $xr15, 0
	movgr2fr.d	$ft8, $fp
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 4
	xvpickve2gr.d	$fp, $xr15, 1
	movgr2fr.d	$ft8, $fp
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 5
	xvpickve2gr.d	$fp, $xr15, 2
	movgr2fr.d	$ft8, $fp
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 6
	xvpickve2gr.d	$fp, $xr15, 3
	movgr2fr.d	$ft7, $fp
	fcvt.s.d	$ft7, $ft7
	xvinsve0.w	$xr18, $xr15, 7
	xvst	$xr18, $t7, 0
	xvfadd.d	$xr9, $xr9, $xr13
	xvfadd.d	$xr10, $xr10, $xr14
	xvfsub.d	$xr9, $xr9, $xr7
	xvfsub.d	$xr10, $xr10, $xr8
	xvfmul.d	$xr9, $xr9, $xr3
	xvfmul.d	$xr10, $xr10, $xr3
	xvfmul.d	$xr9, $xr9, $xr1
	xvfmul.d	$xr10, $xr10, $xr1
	xvpickve2gr.d	$fp, $xr10, 1
	movgr2fr.d	$ft5, $fp
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$fp, $xr10, 0
	movgr2fr.d	$ft6, $fp
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve2gr.d	$fp, $xr10, 2
	movgr2fr.d	$ft5, $fp
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve2gr.d	$fp, $xr10, 3
	movgr2fr.d	$ft2, $fp
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 3
	xvpickve2gr.d	$fp, $xr9, 0
	movgr2fr.d	$ft2, $fp
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 4
	xvpickve2gr.d	$fp, $xr9, 1
	movgr2fr.d	$ft2, $fp
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 5
	xvpickve2gr.d	$fp, $xr9, 2
	movgr2fr.d	$ft2, $fp
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 6
	xvpickve2gr.d	$fp, $xr9, 3
	movgr2fr.d	$ft1, $fp
	fcvt.s.d	$ft1, $ft1
	xvinsve0.w	$xr14, $xr9, 7
	xvst	$xr14, $t8, 0
	xvfadd.d	$xr5, $xr11, $xr5
	xvfadd.d	$xr6, $xr12, $xr6
	xvfsub.d	$xr5, $xr5, $xr7
	xvfsub.d	$xr6, $xr6, $xr8
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr5, $xr5, $xr1
	xvfmul.d	$xr6, $xr6, $xr1
	xvpickve2gr.d	$fp, $xr6, 1
	movgr2fr.d	$fa7, $fp
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$fp, $xr6, 0
	movgr2fr.d	$ft0, $fp
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve2gr.d	$fp, $xr6, 2
	movgr2fr.d	$fa7, $fp
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve2gr.d	$fp, $xr6, 3
	movgr2fr.d	$fa6, $fp
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 3
	xvpickve2gr.d	$fp, $xr5, 0
	movgr2fr.d	$fa6, $fp
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 4
	xvpickve2gr.d	$fp, $xr5, 1
	movgr2fr.d	$fa6, $fp
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 5
	xvpickve2gr.d	$fp, $xr5, 2
	movgr2fr.d	$fa6, $fp
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 6
	xvpickve2gr.d	$fp, $xr5, 3
	movgr2fr.d	$fa5, $fp
	xvld	$xr6, $s3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 7
	xvst	$xr8, $s0, 0
	xvfsub.s	$xr5, $xr4, $xr6
	xvst	$xr5, $s4, 0
	addi.d	$s5, $s5, -8
	addi.d	$s4, $s4, 32
	addi.d	$s3, $s3, 32
	addi.d	$s0, $s0, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$s5, .LBB4_110
# %bb.111:                              # %middle.block884
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	bne	$t1, $t2, .LBB4_35
	b	.LBB4_37
.LBB4_112:                              # %vector.memcheck887
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB4_360
# %bb.113:                              # %vector.memcheck887
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB4_360
# %bb.114:                              # %vector.memcheck887
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB4_360
# %bb.115:                              # %vector.memcheck887
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB4_360
# %bb.116:                              # %vector.memcheck887
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB4_360
# %bb.117:                              # %vector.memcheck887
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB4_360
# %bb.118:                              # %vector.memcheck887
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB4_360
# %bb.119:                              # %vector.memcheck887
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB4_360
# %bb.120:                              # %vector.memcheck887
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_360
# %bb.121:                              # %vector.memcheck887
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_360
# %bb.122:                              # %vector.memcheck887
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_360
# %bb.123:                              # %vector.memcheck887
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_360
# %bb.124:                              # %vector.memcheck887
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_360
# %bb.125:                              # %vector.memcheck887
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_360
# %bb.126:                              # %vector.memcheck887
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB4_360
# %bb.127:                              # %vector.memcheck887
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_360
# %bb.128:                              # %vector.memcheck887
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_360
# %bb.129:                              # %vector.memcheck887
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_360
# %bb.130:                              # %vector.memcheck887
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_360
# %bb.131:                              # %vector.memcheck887
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_360
# %bb.132:                              # %vector.memcheck887
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	bnez	$s0, .LBB4_40
# %bb.133:                              # %vector.memcheck887
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_40
# %bb.134:                              # %vector.memcheck887
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_40
# %bb.135:                              # %vector.memcheck887
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_40
# %bb.136:                              # %vector.memcheck887
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB4_40
# %bb.137:                              # %vector.memcheck887
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB4_40
# %bb.138:                              # %vector.memcheck887
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_40
# %bb.139:                              # %vector.memcheck887
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_40
# %bb.140:                              # %vector.memcheck887
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_40
# %bb.141:                              # %vector.memcheck887
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB4_40
# %bb.142:                              # %vector.ph1018
	bstrpick.d	$t2, $t3, 31, 3
	slli.d	$t2, $t2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$t3, $zero, 1023
	xvreplgr2vr.d	$xr2, $t3
	lu52i.d	$t3, $zero, 1022
	xvreplgr2vr.d	$xr3, $t3
	lu12i.w	$t3, 260096
	xvreplgr2vr.w	$xr4, $t3
	move	$t3, $a0
	move	$t4, $a1
	move	$t5, $a2
	move	$t6, $a3
	move	$t7, $a4
	move	$t8, $a5
	move	$s0, $a6
	move	$s3, $a7
	move	$s4, $t0
	move	$s5, $t2
	.p2align	4, , 16
.LBB4_143:                              # %vector.body1023
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr7, $t3, 0
	xvpermi.q	$xr6, $xr7, 1
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$ft0, $fa5
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr5, $xr8, 1
	vreplvei.w	$vr8, $vr6, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr5, $xr8, 2
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr5, $xr6, 3
	vreplvei.w	$vr6, $vr7, 1
	fcvt.d.s	$ft0, $fa6
	vreplvei.w	$vr6, $vr7, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr8, 1
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr6, $xr8, 2
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvld	$xr11, $t4, 0
	xvinsve0.d	$xr6, $xr7, 3
	xvfsub.d	$xr9, $xr2, $xr5
	xvfsub.d	$xr10, $xr2, $xr6
	xvpermi.q	$xr8, $xr11, 1
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$ft4, $fa7
	vreplvei.w	$vr7, $vr8, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr12, 1
	vreplvei.w	$vr12, $vr8, 2
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr7, $xr12, 2
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr7, $xr8, 3
	vreplvei.w	$vr8, $vr11, 1
	fcvt.d.s	$ft4, $ft0
	vreplvei.w	$vr8, $vr11, 0
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr8, $xr12, 1
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr8, $xr12, 2
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr8, $xr11, 3
	xvfsub.d	$xr11, $xr9, $xr7
	xvfsub.d	$xr12, $xr10, $xr8
	xvfmul.d	$xr11, $xr11, $xr1
	xvfmul.d	$xr12, $xr12, $xr1
	xvfmul.d	$xr11, $xr11, $xr3
	xvfmul.d	$xr12, $xr12, $xr3
	xvpickve2gr.d	$fp, $xr12, 1
	movgr2fr.d	$ft5, $fp
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$fp, $xr12, 0
	movgr2fr.d	$ft6, $fp
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve2gr.d	$fp, $xr12, 2
	movgr2fr.d	$ft5, $fp
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve2gr.d	$fp, $xr12, 3
	movgr2fr.d	$ft4, $fp
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 3
	xvpickve2gr.d	$fp, $xr11, 0
	movgr2fr.d	$ft4, $fp
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 4
	xvpickve2gr.d	$fp, $xr11, 1
	movgr2fr.d	$ft4, $fp
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 5
	xvpickve2gr.d	$fp, $xr11, 2
	movgr2fr.d	$ft4, $fp
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 6
	xvpickve2gr.d	$fp, $xr11, 3
	movgr2fr.d	$ft3, $fp
	xvld	$xr12, $t6, 0
	fcvt.s.d	$ft3, $ft3
	xvinsve0.w	$xr14, $xr11, 7
	xvst	$xr14, $t5, 0
	xvpermi.q	$xr11, $xr12, 1
	vreplvei.w	$vr13, $vr11, 1
	fcvt.d.s	$ft6, $ft5
	vreplvei.w	$vr13, $vr11, 0
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr13, $xr14, 1
	vreplvei.w	$vr14, $vr11, 2
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr13, $xr14, 2
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr13, $xr11, 3
	xvfsub.d	$xr11, $xr2, $xr13
	xvfsub.d	$xr15, $xr11, $xr7
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft8, $ft6
	vreplvei.w	$vr14, $vr12, 0
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr14, $xr16, 1
	vreplvei.w	$vr16, $vr12, 2
	fcvt.d.s	$ft8, $ft8
	xvinsve0.d	$xr14, $xr16, 2
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr14, $xr12, 3
	xvfsub.d	$xr12, $xr2, $xr14
	xvfsub.d	$xr16, $xr12, $xr8
	xvfmul.d	$xr15, $xr15, $xr1
	xvfmul.d	$xr16, $xr16, $xr1
	xvfmul.d	$xr15, $xr15, $xr3
	xvfmul.d	$xr16, $xr16, $xr3
	xvpickve2gr.d	$fp, $xr16, 1
	movgr2fr.d	$ft9, $fp
	fcvt.s.d	$ft9, $ft9
	xvpickve2gr.d	$fp, $xr16, 0
	movgr2fr.d	$ft10, $fp
	fcvt.s.d	$ft10, $ft10
	xvinsve0.w	$xr18, $xr17, 1
	xvpickve2gr.d	$fp, $xr16, 2
	movgr2fr.d	$ft9, $fp
	fcvt.s.d	$ft9, $ft9
	xvinsve0.w	$xr18, $xr17, 2
	xvpickve2gr.d	$fp, $xr16, 3
	movgr2fr.d	$ft8, $fp
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 3
	xvpickve2gr.d	$fp, $xr15, 0
	movgr2fr.d	$ft8, $fp
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 4
	xvpickve2gr.d	$fp, $xr15, 1
	movgr2fr.d	$ft8, $fp
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 5
	xvpickve2gr.d	$fp, $xr15, 2
	movgr2fr.d	$ft8, $fp
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 6
	xvpickve2gr.d	$fp, $xr15, 3
	movgr2fr.d	$ft7, $fp
	fcvt.s.d	$ft7, $ft7
	xvinsve0.w	$xr18, $xr15, 7
	xvst	$xr18, $t7, 0
	xvfadd.d	$xr9, $xr9, $xr13
	xvfadd.d	$xr10, $xr10, $xr14
	xvfsub.d	$xr9, $xr9, $xr7
	xvfsub.d	$xr10, $xr10, $xr8
	xvfmul.d	$xr9, $xr9, $xr3
	xvfmul.d	$xr10, $xr10, $xr3
	xvfmul.d	$xr9, $xr9, $xr1
	xvfmul.d	$xr10, $xr10, $xr1
	xvpickve2gr.d	$fp, $xr10, 1
	movgr2fr.d	$ft5, $fp
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$fp, $xr10, 0
	movgr2fr.d	$ft6, $fp
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve2gr.d	$fp, $xr10, 2
	movgr2fr.d	$ft5, $fp
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve2gr.d	$fp, $xr10, 3
	movgr2fr.d	$ft2, $fp
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 3
	xvpickve2gr.d	$fp, $xr9, 0
	movgr2fr.d	$ft2, $fp
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 4
	xvpickve2gr.d	$fp, $xr9, 1
	movgr2fr.d	$ft2, $fp
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 5
	xvpickve2gr.d	$fp, $xr9, 2
	movgr2fr.d	$ft2, $fp
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 6
	xvpickve2gr.d	$fp, $xr9, 3
	movgr2fr.d	$ft1, $fp
	fcvt.s.d	$ft1, $ft1
	xvinsve0.w	$xr14, $xr9, 7
	xvst	$xr14, $t8, 0
	xvfadd.d	$xr5, $xr11, $xr5
	xvfadd.d	$xr6, $xr12, $xr6
	xvfsub.d	$xr5, $xr5, $xr7
	xvfsub.d	$xr6, $xr6, $xr8
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr5, $xr5, $xr1
	xvfmul.d	$xr6, $xr6, $xr1
	xvpickve2gr.d	$fp, $xr6, 1
	movgr2fr.d	$fa7, $fp
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$fp, $xr6, 0
	movgr2fr.d	$ft0, $fp
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve2gr.d	$fp, $xr6, 2
	movgr2fr.d	$fa7, $fp
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve2gr.d	$fp, $xr6, 3
	movgr2fr.d	$fa6, $fp
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 3
	xvpickve2gr.d	$fp, $xr5, 0
	movgr2fr.d	$fa6, $fp
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 4
	xvpickve2gr.d	$fp, $xr5, 1
	movgr2fr.d	$fa6, $fp
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 5
	xvpickve2gr.d	$fp, $xr5, 2
	movgr2fr.d	$fa6, $fp
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 6
	xvpickve2gr.d	$fp, $xr5, 3
	movgr2fr.d	$fa5, $fp
	xvld	$xr6, $s3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 7
	xvst	$xr8, $s0, 0
	xvfsub.s	$xr5, $xr4, $xr6
	xvst	$xr5, $s4, 0
	addi.d	$s5, $s5, -8
	addi.d	$s4, $s4, 32
	addi.d	$s3, $s3, 32
	addi.d	$s0, $s0, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$s5, .LBB4_143
# %bb.144:                              # %middle.block1037
	bne	$t1, $t2, .LBB4_40
	b	.LBB4_42
.LBB4_145:                              # %if.end430.thread
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.m)
	st.w	$zero, $a1, 0
.LBB4_146:                              # %for.end447
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	bnez	$t4, .LBB4_174
# %bb.147:
	movgr2fr.w	$fa0, $zero
	b	.LBB4_175
.LBB4_148:                              # %vector.ph730
	slli.d	$a5, $a4, 3
	bstrpick.d	$a2, $s8, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 32
	add.d	$a5, $a5, $a0
	addi.d	$a6, $a5, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_149:                              # %vector.body733
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 64
	addi.d	$a6, $a6, 64
	bnez	$a5, .LBB4_149
# %bb.150:                              # %middle.block738
	beq	$a2, $s8, .LBB4_22
	b	.LBB4_20
.LBB4_151:                              # %vector.memcheck1071
	ld.d	$t0, $sp, 424                   # 8-byte Folded Reload
	addi.d	$a7, $t0, 4
	alsl.d	$t1, $a4, $t0, 2
	addi.d	$t0, $a1, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB4_53
# %bb.152:                              # %vector.memcheck1071
	addi.d	$t0, $a2, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a2, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB4_53
# %bb.153:                              # %vector.memcheck1071
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB4_53
# %bb.154:                              # %vector.ph1091
	move	$t1, $a6
	bstrins.d	$t1, $zero, 2, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	ori	$t2, $zero, 1
	move	$a5, $a6
	xvldrepl.w	$xr0, $a1, 4
	bstrins.d	$a5, $t2, 2, 0
	fmul.s	$fa1, $fa1, $fa2
	xvreplve0.w	$xr1, $xr1
	move	$t2, $t1
	.p2align	4, , 16
.LBB4_155:                              # %vector.body1094
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvld	$xr3, $t0, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvfmul.s	$xr3, $xr0, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvst	$xr2, $a7, 0
	addi.d	$a7, $a7, 32
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB4_155
# %bb.156:                              # %middle.block1106
	bne	$a6, $t1, .LBB4_53
	b	.LBB4_55
.LBB4_157:                              # %vector.memcheck1109
	addi.d	$a7, $t5, 4
	alsl.d	$t1, $a4, $t5, 2
	addi.d	$t0, $a1, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB4_57
# %bb.158:                              # %vector.memcheck1109
	addi.d	$t0, $a2, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a2, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB4_57
# %bb.159:                              # %vector.memcheck1109
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB4_57
# %bb.160:                              # %vector.ph1129
	move	$t1, $a6
	bstrins.d	$t1, $zero, 2, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	ori	$t2, $zero, 1
	move	$a5, $a6
	xvldrepl.w	$xr0, $a1, 4
	bstrins.d	$a5, $t2, 2, 0
	fmul.s	$fa1, $fa1, $fa2
	xvreplve0.w	$xr1, $xr1
	move	$t2, $t1
	.p2align	4, , 16
.LBB4_161:                              # %vector.body1132
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvld	$xr3, $t0, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvfmul.s	$xr3, $xr0, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvst	$xr2, $a7, 0
	addi.d	$a7, $a7, 32
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB4_161
# %bb.162:                              # %middle.block1144
	bne	$a6, $t1, .LBB4_57
	b	.LBB4_59
.LBB4_163:                              # %vector.ph1153
	move	$a6, $zero
	move	$a7, $a4
	bstrins.d	$a7, $zero, 3, 0
	xvreplve0.w	$xr0, $xr9
	addi.d	$t0, $a2, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a5
	move	$t1, $a7
	.p2align	4, , 16
.LBB4_164:                              # %vector.body1158
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t2, $t0, $a6
	add.d	$t3, $t5, $a6
	xvldx	$xr3, $t5, $a6
	xvld	$xr4, $t3, 32
	xvst	$xr1, $t2, -32
	xvstx	$xr1, $t0, $a6
	xvfmadd.s	$xr3, $xr0, $xr2, $xr3
	xvfmadd.s	$xr4, $xr0, $xr2, $xr4
	add.d	$t2, $a1, $a6
	xvst	$xr3, $t2, 4
	xvst	$xr4, $t2, 36
	addi.d	$t1, $t1, -16
	addi.d	$a6, $a6, 64
	bnez	$t1, .LBB4_164
# %bb.165:                              # %middle.block1163
	beq	$a4, $a7, .LBB4_173
# %bb.166:                              # %vec.epilog.iter.check
	andi	$a6, $a4, 12
	beqz	$a6, .LBB4_170
.LBB4_167:                              # %vec.epilog.ph
	move	$t0, $a4
	bstrins.d	$t0, $zero, 1, 0
	ori	$t1, $zero, 1
	move	$a6, $a4
	bstrins.d	$a6, $t1, 1, 0
	vreplvei.w	$vr0, $vr9, 0
	slli.d	$t1, $a7, 2
	addi.d	$t2, $a2, 4
	sub.d	$a7, $a7, $t0
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a5
	.p2align	4, , 16
.LBB4_168:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $t5, $t1
	vstx	$vr1, $t2, $t1
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a5, $a1, $t1
	vst	$vr3, $a5, 4
	addi.d	$a7, $a7, 4
	addi.d	$t1, $t1, 16
	bnez	$a7, .LBB4_168
# %bb.169:                              # %vec.epilog.middle.block
	bne	$a4, $t0, .LBB4_171
	b	.LBB4_173
.LBB4_170:
	addi.d	$a6, $a7, 1
.LBB4_171:                              # %for.body436.preheader
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	fld.s	$fa0, $a4, %pc_lo12(.LCPI4_2)
	addi.d	$a4, $t5, -4
	slli.d	$a5, $a6, 2
	sub.d	$a3, $a3, $a6
	.p2align	4, , 16
.LBB4_172:                              # %for.body436
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a4, $a5
	stx.w	$zero, $a2, $a5
	fmadd.s	$fa1, $ft1, $fa0, $fa1
	fstx.s	$fa1, $a1, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB4_172
.LBB4_173:
	st.d	$zero, $sp, 384                 # 8-byte Folded Spill
.LBB4_174:                              # %if.else452
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a0, $a2
	srai.d	$a2, $a2, 30
	fldx.s	$fa0, $t5, $a2
.LBB4_175:                              # %if.end457
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	ld.w	$a3, $s6, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $a2, %pc_lo12(partQ__align.lastverticalw)
	sltu	$a2, $zero, $a3
	add.w	$a5, $a2, $t7
	ori	$a2, $zero, 2
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	fst.s	$fa0, $a4, 0
	st.d	$a5, $sp, 368                   # 8-byte Folded Spill
	blt	$a5, $a2, .LBB4_190
# %bb.176:                              # %for.body467.lr.ph
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s3, $sp, 360                   # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $zero, $a2
	slt	$a3, $zero, $t4
	and	$a2, $a2, $a3
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	bstrpick.d	$a2, $t8, 30, 0
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.ijp)
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partQ__align.mp)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partQ__align.fg_t_og_h_dg_n2_p)
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(partQ__align.gapz_n2)
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(partQ__align.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(partQ__align.og_h_dg_n2_p)
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(partQ__align.fg_h_dg_n2_p)
	addi.d	$t3, $a4, 8
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(partQ__align.fgcp2g)
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(partQ__align.ogcp2g)
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.fg_t_og_h_dg_n1_p)
	st.d	$t1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.og_t_fg_h_dg_n1_p)
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.og_h_dg_n1_p)
	st.d	$t1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.fg_h_dg_n1_p)
	st.d	$t1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.gapz_n1)
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.fgcp1g)
	st.d	$t1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(partQ__align.ogcp1g)
	st.d	$t1, $sp, 168                   # 8-byte Folded Spill
	ori	$t1, $zero, 0
	lu32i.d	$t1, -1
	add.d	$a0, $a0, $t1
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	addi.d	$s2, $a1, 4
	addi.d	$s8, $a2, 4
	addi.d	$s0, $a3, 4
	addi.d	$fp, $a5, 4
	addi.d	$s1, $a6, 4
	addi.d	$s5, $a7, 4
	addi.d	$s6, $a4, 4
	addi.d	$s3, $t0, 4
	movgr2fr.w	$fs0, $zero
	ori	$s7, $zero, 1
	st.d	$t3, $sp, 312                   # 8-byte Folded Spill
	b	.LBB4_178
	.p2align	4, , 16
.LBB4_177:                              # %for.end569
                                        #   in Loop: Header=BB4_178 Depth=1
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	fldx.s	$fa0, $s4, $a2
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	move	$s7, $a1
	move	$t5, $s4
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_191
.LBB4_178:                              # %for.body467
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_180 Depth 2
                                        #     Child Loop BB4_184 Depth 2
	addi.d	$a0, $s7, -1
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	move	$s4, $t6
	st.d	$t5, $sp, 416                   # 8-byte Folded Spill
	fst.s	$fa0, $t5, 0
	move	$a0, $t6
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $t4
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 2
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_181
# %bb.179:                              # %for.body.lr.ph.i427
                                        #   in Loop: Header=BB4_178 Depth=1
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_180:                              # %for.body.i431
                                        #   Parent Loop BB4_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	add.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	fldx.s	$fa0, $a1, $a5
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB4_180
.LBB4_181:                              # %if.end477
                                        #   in Loop: Header=BB4_178 Depth=1
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $s4, 0
	addi.d	$a1, $s7, 1
	ld.d	$t4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 408                   # 8-byte Folded Reload
	bnez	$a2, .LBB4_177
# %bb.182:                              # %for.body516.preheader
                                        #   in Loop: Header=BB4_178 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	fldx.s	$fa0, $a5, $a0
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	fldx.s	$fa1, $a5, $a0
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	fldx.s	$fa2, $a5, $a0
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	fldx.s	$fa3, $a5, $a0
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	fldx.s	$fa4, $a6, $a0
	slli.d	$a5, $a1, 2
	fldx.s	$fa5, $a6, $a5
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	fldx.s	$fa6, $a5, $a0
	fld.s	$ft0, $t6, 0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	fld.s	$ft1, $a5, %pc_lo12(.LCPI4_2)
	slli.d	$a5, $s7, 3
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a5
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	fldx.s	$fa7, $a5, $a0
	xvld	$xr10, $sp, 256                 # 32-byte Folded Reload
	fmadd.s	$ft0, $ft2, $ft1, $ft0
	addi.d	$a5, $s4, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $zero, -1
	b	.LBB4_184
	.p2align	4, , 16
.LBB4_183:                              # %if.end553
                                        #   in Loop: Header=BB4_184 Depth=2
	fmul.s	$ft2, $fa4, $ft2
	fadd.s	$ft1, $ft1, $ft2
	fcmp.cult.s	$fcc0, $ft1, $ft0
	fsel	$ft0, $ft1, $ft0, $fcc0
	movcf2gr	$t0, $fcc0
	fldx.s	$ft1, $a5, $a3
	masknez	$t1, $a2, $t0
	maskeqz	$a4, $a4, $t0
	or	$a4, $a4, $t1
	fadd.s	$ft1, $fs0, $ft1
	fstx.s	$ft1, $a5, $a3
	addi.d	$a3, $a3, 4
	addi.w	$a2, $a2, 1
	addi.d	$a7, $a7, -1
	beq	$t4, $a2, .LBB4_177
.LBB4_184:                              # %for.body516
                                        #   Parent Loop BB4_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $s1, $a3
	fldx.s	$ft1, $t6, $a3
	fldx.s	$ft3, $s3, $a3
	fmul.s	$ft2, $fa7, $ft2
	fadd.s	$ft2, $ft1, $ft2
	fldx.s	$ft4, $s5, $a3
	fmul.s	$ft3, $fa2, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fldx.s	$ft3, $s6, $a3
	fmul.s	$ft4, $fa6, $ft4
	fldx.s	$ft5, $s0, $a3
	fadd.s	$ft2, $ft2, $ft4
	fmul.s	$ft3, $fa3, $ft3
	fadd.s	$fs0, $ft2, $ft3
	fmul.s	$ft2, $fa5, $ft5
	fadd.s	$ft2, $ft0, $ft2
	fcmp.cule.s	$fcc0, $ft2, $fs0
	stx.w	$zero, $a6, $a3
	bcnez	$fcc0, .LBB4_186
# %bb.185:                              # %if.then529
                                        #   in Loop: Header=BB4_184 Depth=2
	add.d	$t0, $a4, $a7
	stx.w	$t0, $a6, $a3
	fmov.s	$fs0, $ft2
.LBB4_186:                              # %if.end532
                                        #   in Loop: Header=BB4_184 Depth=2
	add.d	$t0, $t3, $a3
	fld.s	$ft4, $t0, 0
	fldx.s	$ft3, $s2, $a3
	fldx.s	$ft2, $fp, $a3
	fmul.s	$ft4, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB4_188
# %bb.187:                              # %if.then544
                                        #   in Loop: Header=BB4_184 Depth=2
	ldx.w	$t1, $s8, $a3
	sub.d	$t1, $s7, $t1
	stx.w	$t1, $a6, $a3
	fmov.s	$fs0, $ft4
.LBB4_188:                              # %if.end546
                                        #   in Loop: Header=BB4_184 Depth=2
	fld.s	$ft4, $t0, -4
	fmul.s	$ft4, $fa1, $ft4
	fadd.s	$ft4, $ft1, $ft4
	fcmp.cult.s	$fcc0, $ft4, $ft3
	bcnez	$fcc0, .LBB4_183
# %bb.189:                              # %if.then551
                                        #   in Loop: Header=BB4_184 Depth=2
	fstx.s	$ft4, $s2, $a3
	stx.w	$t5, $s8, $a3
	b	.LBB4_183
.LBB4_190:
	movgr2fr.w	$fs0, $zero
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	bnez	$a3, .LBB4_206
	b	.LBB4_192
.LBB4_191:                              # %for.end577.loopexit
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a3, $a0, 0
	move	$t5, $s4
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	bnez	$a3, .LBB4_206
.LBB4_192:                              # %for.cond580.preheader
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_199
# %bb.193:                              # %for.body584.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB4_197
# %bb.194:                              # %vector.ph1177
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	xvreplgr2vr.d	$xr1, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI4_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI4_3)
	pcalau12i	$a5, %pc_hi20(.LCPI4_4)
	xvld	$xr3, $a5, %pc_lo12(.LCPI4_4)
	addi.d	$a5, $t5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_195:                              # %vector.body1184
                                        # =>This Inner Loop Header: Depth=1
	xvsub.d	$xr5, $xr1, $xr2
	xvsub.d	$xr6, $xr1, $xr3
	xvpickve2gr.d	$a7, $xr6, 0
	xvinsgr2vr.w	$xr7, $a7, 0
	xvpickve2gr.d	$a7, $xr6, 1
	xvinsgr2vr.w	$xr7, $a7, 1
	xvpickve2gr.d	$a7, $xr6, 2
	xvinsgr2vr.w	$xr7, $a7, 2
	xvpickve2gr.d	$a7, $xr6, 3
	xvinsgr2vr.w	$xr7, $a7, 3
	xvpickve2gr.d	$a7, $xr5, 0
	xvinsgr2vr.w	$xr7, $a7, 4
	xvpickve2gr.d	$a7, $xr5, 1
	xvinsgr2vr.w	$xr7, $a7, 5
	xvpickve2gr.d	$a7, $xr5, 2
	xvinsgr2vr.w	$xr7, $a7, 6
	xvpickve2gr.d	$a7, $xr5, 3
	xvinsgr2vr.w	$xr7, $a7, 7
	xvmul.w	$xr5, $xr0, $xr7
	xvpermi.q	$xr6, $xr5, 1
	vext2xv.d.w	$xr6, $xr6
	xvffint.d.l	$xr6, $xr6
	vext2xv.d.w	$xr5, $xr5
	xvld	$xr7, $a5, 0
	xvffint.d.l	$xr5, $xr5
	xvfmul.d	$xr5, $xr5, $xr4
	xvfmul.d	$xr6, $xr6, $xr4
	xvpermi.q	$xr8, $xr7, 1
	vreplvei.w	$vr9, $vr8, 1
	fcvt.d.s	$ft1, $ft1
	vreplvei.w	$vr10, $vr8, 0
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr10, $xr9, 1
	vreplvei.w	$vr9, $vr8, 2
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr10, $xr9, 2
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr10, $xr8, 3
	vreplvei.w	$vr8, $vr7, 1
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr9, $vr7, 0
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr9, $xr8, 1
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr9, $xr8, 2
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr9, $xr7, 3
	xvfadd.d	$xr6, $xr10, $xr6
	xvfadd.d	$xr5, $xr9, $xr5
	xvpickve2gr.d	$a7, $xr5, 1
	movgr2fr.d	$fa7, $a7
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a7, $xr5, 0
	movgr2fr.d	$ft0, $a7
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve2gr.d	$a7, $xr5, 2
	movgr2fr.d	$fa7, $a7
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve2gr.d	$a7, $xr5, 3
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 3
	xvpickve2gr.d	$a7, $xr6, 0
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 4
	xvpickve2gr.d	$a7, $xr6, 1
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 5
	xvpickve2gr.d	$a7, $xr6, 2
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 6
	xvpickve2gr.d	$a7, $xr6, 3
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 7
	xvst	$xr8, $a5, 0
	xvaddi.du	$xr3, $xr3, 8
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_195
# %bb.196:                              # %middle.block1191
	beq	$a2, $a4, .LBB4_199
.LBB4_197:                              # %for.body584.preheader
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_198:                              # %for.body584
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a4, 0
	sub.w	$a2, $a2, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB4_198
.LBB4_199:                              # %for.cond597.preheader
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB4_206
# %bb.200:                              # %for.body601.lr.ph
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $t7, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partQ__align.lastverticalw)
	addi.d	$a2, $t7, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB4_204
# %bb.201:                              # %vector.ph1196
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI4_5)
	vld	$vr4, $a5, %pc_lo12(.LCPI4_5)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_202:                              # %vector.body1203
                                        # =>This Inner Loop Header: Depth=1
	vext2xv.du.wu	$xr6, $xr4
	vld	$vr7, $a5, 0
	xvffint.d.lu	$xr6, $xr6
	xvfmul.d	$xr6, $xr6, $xr5
	xvfadd.d	$xr6, $xr2, $xr6
	vreplvei.w	$vr8, $vr7, 1
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr9, $vr7, 0
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr9, $xr8, 1
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr9, $xr8, 2
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr9, $xr7, 3
	xvfmadd.d	$xr6, $xr3, $xr6, $xr9
	xvpickve2gr.d	$a7, $xr6, 1
	movgr2fr.d	$fa7, $a7
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a7, $xr6, 0
	movgr2fr.d	$ft0, $a7
	fcvt.s.d	$ft0, $ft0
	vextrins.w	$vr8, $vr7, 16
	xvpickve2gr.d	$a7, $xr6, 2
	movgr2fr.d	$fa7, $a7
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr8, $vr7, 32
	xvpickve2gr.d	$a7, $xr6, 3
	movgr2fr.d	$fa6, $a7
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr8, $vr6, 48
	vst	$vr8, $a5, 0
	vaddi.wu	$vr4, $vr4, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB4_202
# %bb.203:                              # %middle.block1210
	beq	$a3, $a4, .LBB4_206
.LBB4_204:                              # %for.body601.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB4_205:                              # %for.body601
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a0, 31, 0
	movgr2fr.d	$fa3, $a3
	fld.s	$fa4, $a1, 0
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fadd.d	$fa3, $fa0, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa1, $fa3, $fa4
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a1, 0
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB4_205
.LBB4_206:                              # %if.end615
	move	$s0, $t5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(partQ__align.lastverticalw)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(partQ__align.mseq1)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(partQ__align.mseq2)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(partQ__align.ijp)
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s4, 0
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	addi.w	$a3, $a0, 0
	add.w	$a1, $a0, $s4
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beqz	$a2, .LBB4_213
# %bb.207:                              # %if.then617
	ori	$a4, $zero, 1
	ld.d	$ra, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	beq	$a5, $a4, .LBB4_224
# %bb.208:                              # %if.else.i
	move	$a2, $s0
	fld.s	$fa0, $fp, 0
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	blt	$a5, $a4, .LBB4_219
# %bb.209:                              # %for.body.lr.ph.i442
	slli.d	$a4, $s4, 3
	bstrpick.d	$a4, $a4, 33, 3
	slli.d	$a4, $a4, 3
	slli.d	$a5, $a0, 32
	srai.d	$a5, $a5, 30
	bstrpick.d	$a6, $s4, 30, 0
	move	$a7, $s4
	b	.LBB4_211
	.p2align	4, , 16
.LBB4_210:                              # %for.inc.i
                                        #   in Loop: Header=BB4_211 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$fp, $fp, 4
	beqz	$a6, .LBB4_219
.LBB4_211:                              # %for.body.i444
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_210
# %bb.212:                              # %if.then11.i
                                        #   in Loop: Header=BB4_211 Depth=1
	ldx.d	$t0, $s7, $a4
	stx.w	$a7, $t0, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_210
.LBB4_213:                              # %if.else618
	ori	$a4, $zero, 1
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	beq	$a2, $a4, .LBB4_242
# %bb.214:                              # %if.else.i453
	move	$t0, $s0
	fld.s	$fa0, $fp, 0
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	blt	$a2, $a4, .LBB4_237
# %bb.215:                              # %for.body.lr.ph.i553
	slli.d	$a2, $s4, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a4, $a2, 3
	slli.d	$a2, $a0, 32
	srai.d	$a5, $a2, 30
	bstrpick.d	$a6, $s4, 30, 0
	move	$a7, $s4
	b	.LBB4_217
	.p2align	4, , 16
.LBB4_216:                              # %for.inc.i563
                                        #   in Loop: Header=BB4_217 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$fp, $fp, 4
	beqz	$a6, .LBB4_237
.LBB4_217:                              # %for.body.i556
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_216
# %bb.218:                              # %if.then11.i561
                                        #   in Loop: Header=BB4_217 Depth=1
	ldx.d	$a2, $s7, $a4
	stx.w	$a7, $a2, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_216
.LBB4_219:                              # %for.cond19.preheader.i
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB4_224
# %bb.220:                              # %for.body22.lr.ph.i
	slli.d	$a4, $s4, 32
	srai.d	$a4, $a4, 29
	slli.d	$a5, $a0, 2
	bstrpick.d	$a5, $a5, 32, 2
	slli.d	$a5, $a5, 2
	bstrpick.d	$a6, $a0, 30, 0
	sub.d	$a7, $zero, $a0
	b	.LBB4_222
	.p2align	4, , 16
.LBB4_221:                              # %for.inc38.i
                                        #   in Loop: Header=BB4_222 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 4
	beqz	$a6, .LBB4_224
.LBB4_222:                              # %for.body22.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a2, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_221
# %bb.223:                              # %if.then27.i
                                        #   in Loop: Header=BB4_222 Depth=1
	ldx.d	$t0, $s7, $a4
	stx.w	$a7, $t0, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_221
.LBB4_224:                              # %if.end41.i
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	bltz	$a2, .LBB4_232
# %bb.225:                              # %for.body45.preheader.i
	addi.d	$a5, $s4, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 4
	bgeu	$a4, $a6, .LBB4_227
# %bb.226:
	move	$a5, $zero
	b	.LBB4_230
.LBB4_227:                              # %vector.ph1265
	pcalau12i	$a6, %pc_hi20(.LCPI4_6)
	vld	$vr0, $a6, %pc_lo12(.LCPI4_6)
	bstrpick.d	$a5, $a5, 31, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $s7, 16
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_228:                              # %vector.body1268
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$t0, $vr1, 0
	vstelm.w	$vr4, $t0, 0, 0
	vpickve2gr.d	$t0, $vr1, 1
	vstelm.w	$vr4, $t0, 0, 1
	vpickve2gr.d	$t0, $vr2, 0
	vstelm.w	$vr3, $t0, 0, 0
	vpickve2gr.d	$t0, $vr2, 1
	vstelm.w	$vr3, $t0, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_228
# %bb.229:                              # %middle.block1276
	beq	$a4, $a5, .LBB4_232
.LBB4_230:                              # %for.body45.i.preheader
	alsl.d	$a6, $a5, $s7, 3
	sub.d	$a4, $a4, $a5
	addi.d	$a5, $a5, 1
	.p2align	4, , 16
.LBB4_231:                              # %for.body45.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	st.w	$a5, $a7, 0
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	bnez	$a4, .LBB4_231
.LBB4_232:                              # %for.cond53.preheader.i
	bltz	$a3, .LBB4_264
# %bb.233:                              # %iter.check1282
	ld.d	$a3, $s7, 0
	addi.d	$a6, $a0, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB4_235
# %bb.234:
	move	$a5, $zero
	b	.LBB4_262
.LBB4_235:                              # %vector.main.loop.iter.check1284
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB4_255
# %bb.236:
	move	$a5, $zero
	b	.LBB4_259
.LBB4_237:                              # %for.cond19.preheader.i455
	ori	$a2, $zero, 1
	blt	$a3, $a2, .LBB4_242
# %bb.238:                              # %for.body22.lr.ph.i543
	slli.d	$a2, $s4, 32
	srai.d	$a4, $a2, 29
	slli.d	$a2, $a0, 2
	bstrpick.d	$a2, $a2, 32, 2
	slli.d	$a5, $a2, 2
	bstrpick.d	$a6, $a0, 30, 0
	sub.d	$a7, $zero, $a0
	b	.LBB4_240
	.p2align	4, , 16
.LBB4_239:                              # %for.inc38.i551
                                        #   in Loop: Header=BB4_240 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 4
	beqz	$a6, .LBB4_242
.LBB4_240:                              # %for.body22.i546
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_239
# %bb.241:                              # %if.then27.i549
                                        #   in Loop: Header=BB4_240 Depth=1
	ldx.d	$a2, $s7, $a4
	stx.w	$a7, $a2, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_239
.LBB4_242:                              # %if.end41.i458
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	bltz	$a2, .LBB4_250
# %bb.243:                              # %for.body45.preheader.i459
	addi.d	$a4, $s4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ori	$a5, $zero, 4
	bgeu	$a2, $a5, .LBB4_245
# %bb.244:
	move	$a4, $zero
	b	.LBB4_248
.LBB4_245:                              # %vector.ph1215
	pcalau12i	$a5, %pc_hi20(.LCPI4_6)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_6)
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $s7, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_246:                              # %vector.body1218
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, -16
	vld	$vr2, $a5, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a7, $vr1, 0
	vstelm.w	$vr4, $a7, 0, 0
	vpickve2gr.d	$a7, $vr1, 1
	vstelm.w	$vr4, $a7, 0, 1
	vpickve2gr.d	$a7, $vr2, 0
	vstelm.w	$vr3, $a7, 0, 0
	vpickve2gr.d	$a7, $vr2, 1
	vstelm.w	$vr3, $a7, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_246
# %bb.247:                              # %middle.block1225
	beq	$a2, $a4, .LBB4_250
.LBB4_248:                              # %for.body45.i460.preheader
	alsl.d	$a5, $a4, $s7, 3
	sub.d	$a2, $a2, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB4_249:                              # %for.body45.i460
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.w	$a4, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 1
	bnez	$a2, .LBB4_249
.LBB4_250:                              # %for.cond53.preheader.i462
	bltz	$a3, .LBB4_312
# %bb.251:                              # %iter.check1231
	ld.d	$a2, $s7, 0
	addi.d	$a5, $a0, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB4_253
# %bb.252:
	move	$a4, $zero
	b	.LBB4_310
.LBB4_253:                              # %vector.main.loop.iter.check1233
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB4_303
# %bb.254:
	move	$a4, $zero
	b	.LBB4_307
.LBB4_255:                              # %vector.ph1285
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI4_7)
	xvld	$xr0, $a7, %pc_lo12(.LCPI4_7)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB4_256:                              # %vector.body1288
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB4_256
# %bb.257:                              # %middle.block1294
	beq	$a4, $a5, .LBB4_264
# %bb.258:                              # %vec.epilog.iter.check1299
	andi	$a7, $a6, 12
	beqz	$a7, .LBB4_262
.LBB4_259:                              # %vec.epilog.ph1298
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI4_8)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_8)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB4_260:                              # %vec.epilog.vector.body1307
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB4_260
# %bb.261:                              # %vec.epilog.middle.block1312
	beq	$a4, $a5, .LBB4_264
.LBB4_262:                              # %for.body57.i.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB4_263:                              # %for.body57.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB4_263
.LBB4_264:                              # %for.cond66.preheader.i
	ori	$a4, $zero, 1
	blt	$ra, $a4, .LBB4_267
# %bb.265:                              # %for.body69.lr.ph.i
	move	$a3, $s3
	move	$a5, $ra
	.p2align	4, , 16
.LBB4_266:                              # %for.body69.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	add.d	$a7, $a6, $a1
	st.d	$a7, $a3, 0
	stx.b	$zero, $a6, $a1
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 8
	bnez	$a5, .LBB4_266
.LBB4_267:                              # %for.cond78.preheader.i
	ld.d	$a3, $sp, 544
	blt	$s8, $a4, .LBB4_270
# %bb.268:                              # %for.body81.lr.ph.i
	move	$a4, $s6
	move	$a5, $s8
	.p2align	4, , 16
.LBB4_269:                              # %for.body81.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	add.d	$a7, $a6, $a1
	st.d	$a7, $a4, 0
	stx.b	$zero, $a6, $a1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB4_269
.LBB4_270:                              # %for.end91.i
	st.w	$zero, $a3, 0
	bltz	$a1, .LBB4_348
# %bb.271:                              # %for.body96.lr.ph.i
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(impmtx)
	ld.d	$a2, $a5, %pc_lo12(impmtx)
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	bstrpick.d	$a6, $ra, 31, 0
	bstrpick.d	$a7, $s8, 31, 0
	addi.w	$t0, $zero, -1
	ori	$t1, $zero, 1
	ori	$t2, $zero, 45
	move	$t3, $a0
	b	.LBB4_273
	.p2align	4, , 16
.LBB4_272:                              # %for.end235.i
                                        #   in Loop: Header=BB4_273 Depth=1
	addi.w	$a4, $a4, 2
	move	$s4, $t4
	blt	$a1, $a4, .LBB4_348
.LBB4_273:                              # %for.body96.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_280 Depth 2
                                        #       Child Loop BB4_281 Depth 3
                                        #       Child Loop BB4_283 Depth 3
                                        #     Child Loop BB4_288 Depth 2
                                        #       Child Loop BB4_289 Depth 3
                                        #       Child Loop BB4_291 Depth 3
                                        #     Child Loop BB4_299 Depth 2
                                        #     Child Loop BB4_302 Depth 2
	addi.w	$t5, $s4, 0
	slli.d	$t4, $t5, 3
	ldx.d	$t4, $s7, $t4
	addi.w	$t6, $t3, 0
	slli.d	$t7, $t6, 2
	ldx.w	$t8, $t4, $t7
	bge	$t0, $t8, .LBB4_276
# %bb.274:                              # %if.else110.i
                                        #   in Loop: Header=BB4_273 Depth=1
	beqz	$t8, .LBB4_277
# %bb.275:                              # %if.then117.i
                                        #   in Loop: Header=BB4_273 Depth=1
	sub.w	$t4, $s4, $t8
	b	.LBB4_278
	.p2align	4, , 16
.LBB4_276:                              # %if.then103.i
                                        #   in Loop: Header=BB4_273 Depth=1
	addi.w	$t4, $s4, -1
	nor	$fp, $t4, $zero
	add.w	$s0, $s4, $fp
	bnez	$s0, .LBB4_280
	b	.LBB4_285
	.p2align	4, , 16
.LBB4_277:                              # %if.else124.i
                                        #   in Loop: Header=BB4_273 Depth=1
	addi.w	$t4, $s4, -1
.LBB4_278:                              # %if.end128.i
                                        #   in Loop: Header=BB4_273 Depth=1
	move	$t8, $t0
	nor	$fp, $t4, $zero
	add.w	$s0, $s4, $fp
	bnez	$s0, .LBB4_280
	b	.LBB4_285
	.p2align	4, , 16
.LBB4_279:                              # %for.end153.i
                                        #   in Loop: Header=BB4_280 Depth=2
	addi.d	$s0, $s0, -1
	ld.d	$ra, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	beqz	$s0, .LBB4_284
.LBB4_280:                              # %for.cond130.preheader.i
                                        #   Parent Loop BB4_273 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_281 Depth 3
                                        #       Child Loop BB4_283 Depth 3
	move	$a5, $s8
	move	$s1, $s2
	move	$s2, $s3
	move	$s5, $a6
	blt	$ra, $t1, .LBB4_282
	.p2align	4, , 16
.LBB4_281:                              # %for.body133.i
                                        #   Parent Loop BB4_273 Depth=1
                                        #     Parent Loop BB4_280 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $s1, 0
	ld.d	$ra, $s2, 0
	add.d	$s8, $s8, $s0
	ldx.b	$s8, $s8, $t4
	addi.d	$a2, $ra, -1
	st.d	$a2, $s2, 0
	st.b	$s8, $ra, -1
	addi.d	$s5, $s5, -1
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	bnez	$s5, .LBB4_281
.LBB4_282:                              # %for.cond144.preheader.i
                                        #   in Loop: Header=BB4_280 Depth=2
	move	$s1, $s6
	move	$s2, $a7
	move	$s8, $a5
	blt	$a5, $t1, .LBB4_279
	.p2align	4, , 16
.LBB4_283:                              # %for.body147.i
                                        #   Parent Loop BB4_273 Depth=1
                                        #     Parent Loop BB4_280 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s1, 0
	addi.d	$s5, $a2, -1
	st.d	$s5, $s1, 0
	st.b	$t2, $a2, -1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB4_283
	b	.LBB4_279
	.p2align	4, , 16
.LBB4_284:                              # %while.end.loopexit.i
                                        #   in Loop: Header=BB4_273 Depth=1
	add.d	$a2, $s4, $a4
	add.d	$a4, $fp, $a2
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
.LBB4_285:                              # %while.end.i
                                        #   in Loop: Header=BB4_273 Depth=1
	add.w	$t3, $t8, $t3
	beq	$t8, $t0, .LBB4_292
# %bb.286:                              # %for.cond160.preheader.preheader.i
                                        #   in Loop: Header=BB4_273 Depth=1
	nor	$t8, $t8, $zero
	b	.LBB4_288
	.p2align	4, , 16
.LBB4_287:                              # %for.end185.i
                                        #   in Loop: Header=BB4_288 Depth=2
	addi.d	$t8, $t8, -1
	addi.d	$a4, $a4, 1
	beqz	$t8, .LBB4_292
.LBB4_288:                              # %for.cond160.preheader.i
                                        #   Parent Loop BB4_273 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_289 Depth 3
                                        #       Child Loop BB4_291 Depth 3
	move	$fp, $s3
	move	$s0, $a6
	blt	$ra, $t1, .LBB4_290
	.p2align	4, , 16
.LBB4_289:                              # %for.body163.i
                                        #   Parent Loop BB4_273 Depth=1
                                        #     Parent Loop BB4_288 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $fp, 0
	addi.d	$s1, $a2, -1
	st.d	$s1, $fp, 0
	st.b	$t2, $a2, -1
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB4_289
.LBB4_290:                              # %for.cond171.preheader.i
                                        #   in Loop: Header=BB4_288 Depth=2
	move	$fp, $s5
	move	$s0, $s6
	move	$s1, $a7
	blt	$s8, $t1, .LBB4_287
	.p2align	4, , 16
.LBB4_291:                              # %for.body174.i
                                        #   Parent Loop BB4_273 Depth=1
                                        #     Parent Loop BB4_288 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $fp, 0
	ld.d	$s2, $s0, 0
	add.d	$a2, $a2, $t8
	ldx.b	$a2, $a2, $t3
	addi.d	$s4, $s2, -1
	st.d	$s4, $s0, 0
	st.b	$a2, $s2, -1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB4_291
	b	.LBB4_287
	.p2align	4, , 16
.LBB4_292:                              # %while.end187.i
                                        #   in Loop: Header=BB4_273 Depth=1
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	beq	$t5, $a2, .LBB4_295
# %bb.293:                              # %while.end187.i
                                        #   in Loop: Header=BB4_273 Depth=1
	addi.w	$a2, $a0, 0
	beq	$t6, $a2, .LBB4_295
# %bb.294:                              # %if.then192.i
                                        #   in Loop: Header=BB4_273 Depth=1
	slli.d	$a2, $t5, 2
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a2, $a5, $a2
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a5
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	ldx.w	$t7, $a5, $t7
	slli.d	$a2, $a2, 3
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	ldx.d	$a2, $a5, $a2
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	add.w	$t7, $t7, $a5
	slli.d	$t7, $t7, 2
	fldx.s	$fa0, $a2, $t7
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
.LBB4_295:                              # %if.end201.i
                                        #   in Loop: Header=BB4_273 Depth=1
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	blt	$t5, $t1, .LBB4_348
# %bb.296:                              # %if.end201.i
                                        #   in Loop: Header=BB4_273 Depth=1
	blt	$t6, $t1, .LBB4_348
# %bb.297:                              # %for.cond208.preheader.i
                                        #   in Loop: Header=BB4_273 Depth=1
	blt	$ra, $t1, .LBB4_300
# %bb.298:                              # %for.body211.lr.ph.i
                                        #   in Loop: Header=BB4_273 Depth=1
	move	$t5, $s2
	move	$t6, $s3
	move	$t7, $a6
	.p2align	4, , 16
.LBB4_299:                              # %for.body211.i
                                        #   Parent Loop BB4_273 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $t5, 0
	ld.d	$t8, $t6, 0
	ldx.b	$a2, $a2, $t4
	addi.d	$fp, $t8, -1
	st.d	$fp, $t6, 0
	st.b	$a2, $t8, -1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	bnez	$t7, .LBB4_299
.LBB4_300:                              # %for.cond222.preheader.i
                                        #   in Loop: Header=BB4_273 Depth=1
	blt	$s8, $t1, .LBB4_272
# %bb.301:                              # %for.body225.lr.ph.i
                                        #   in Loop: Header=BB4_273 Depth=1
	move	$t5, $s5
	move	$t6, $s6
	move	$t7, $a7
	.p2align	4, , 16
.LBB4_302:                              # %for.body225.i
                                        #   Parent Loop BB4_273 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $t5, 0
	ld.d	$t8, $t6, 0
	ldx.b	$a2, $a2, $t3
	addi.d	$fp, $t8, -1
	st.d	$fp, $t6, 0
	st.b	$a2, $t8, -1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	bnez	$t7, .LBB4_302
	b	.LBB4_272
.LBB4_303:                              # %vector.ph1234
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI4_7)
	xvld	$xr0, $a6, %pc_lo12(.LCPI4_7)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_304:                              # %vector.body1237
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB4_304
# %bb.305:                              # %middle.block1243
	beq	$a3, $a4, .LBB4_312
# %bb.306:                              # %vec.epilog.iter.check1248
	andi	$a6, $a5, 12
	beqz	$a6, .LBB4_310
.LBB4_307:                              # %vec.epilog.ph1247
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI4_8)
	vld	$vr0, $a4, %pc_lo12(.LCPI4_8)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB4_308:                              # %vec.epilog.vector.body1255
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB4_308
# %bb.309:                              # %vec.epilog.middle.block1260
	beq	$a3, $a4, .LBB4_312
.LBB4_310:                              # %for.body57.i464.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB4_311:                              # %for.body57.i464
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB4_311
.LBB4_312:                              # %for.cond66.preheader.i467
	ori	$a2, $zero, 1
	blt	$s1, $a2, .LBB4_315
# %bb.313:                              # %for.body69.lr.ph.i537
	move	$a3, $s3
	move	$a4, $s1
	.p2align	4, , 16
.LBB4_314:                              # %for.body69.i540
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	add.d	$a6, $a5, $a1
	st.d	$a6, $a3, 0
	stx.b	$zero, $a5, $a1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_314
.LBB4_315:                              # %for.cond78.preheader.i468
	blt	$s8, $a2, .LBB4_318
# %bb.316:                              # %for.body81.lr.ph.i531
	move	$a2, $s6
	move	$a3, $s8
	.p2align	4, , 16
.LBB4_317:                              # %for.body81.i534
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	add.d	$a5, $a4, $a1
	st.d	$a5, $a2, 0
	stx.b	$zero, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB4_317
.LBB4_318:                              # %for.end91.i469
	bltz	$a1, .LBB4_348
# %bb.319:                              # %for.body96.lr.ph.i470
	move	$a3, $zero
	bstrpick.d	$a2, $s1, 31, 0
	bstrpick.d	$a4, $s8, 31, 0
	ori	$a5, $zero, 1
	ori	$a6, $zero, 45
	b	.LBB4_321
	.p2align	4, , 16
.LBB4_320:                              # %for.end221.i
                                        #   in Loop: Header=BB4_321 Depth=1
	addi.w	$a3, $a3, 2
	move	$s4, $a7
	blt	$a1, $a3, .LBB4_348
.LBB4_321:                              # %for.body96.i471
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_328 Depth 2
                                        #       Child Loop BB4_329 Depth 3
                                        #       Child Loop BB4_331 Depth 3
                                        #     Child Loop BB4_336 Depth 2
                                        #       Child Loop BB4_337 Depth 3
                                        #       Child Loop BB4_339 Depth 3
                                        #     Child Loop BB4_344 Depth 2
                                        #     Child Loop BB4_347 Depth 2
	addi.w	$t0, $s4, 0
	slli.d	$a7, $t0, 3
	ldx.d	$a7, $s7, $a7
	addi.w	$t1, $a0, 0
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a7, $t2
	bge	$ra, $t2, .LBB4_324
# %bb.322:                              # %if.else110.i477
                                        #   in Loop: Header=BB4_321 Depth=1
	beqz	$t2, .LBB4_325
# %bb.323:                              # %if.then117.i479
                                        #   in Loop: Header=BB4_321 Depth=1
	sub.w	$a7, $s4, $t2
	b	.LBB4_326
	.p2align	4, , 16
.LBB4_324:                              # %if.then103.i529
                                        #   in Loop: Header=BB4_321 Depth=1
	addi.w	$a7, $s4, -1
	nor	$t3, $a7, $zero
	add.w	$t4, $s4, $t3
	bnez	$t4, .LBB4_328
	b	.LBB4_333
	.p2align	4, , 16
.LBB4_325:                              # %if.else124.i527
                                        #   in Loop: Header=BB4_321 Depth=1
	addi.w	$a7, $s4, -1
.LBB4_326:                              # %if.end128.i481
                                        #   in Loop: Header=BB4_321 Depth=1
	move	$t2, $ra
	nor	$t3, $a7, $zero
	add.w	$t4, $s4, $t3
	bnez	$t4, .LBB4_328
	b	.LBB4_333
	.p2align	4, , 16
.LBB4_327:                              # %for.end153.i488
                                        #   in Loop: Header=BB4_328 Depth=2
	addi.d	$t4, $t4, -1
	beqz	$t4, .LBB4_332
.LBB4_328:                              # %for.cond130.preheader.i486
                                        #   Parent Loop BB4_321 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_329 Depth 3
                                        #       Child Loop BB4_331 Depth 3
	move	$t5, $s2
	move	$t6, $s3
	move	$t7, $a2
	blt	$s1, $a5, .LBB4_330
	.p2align	4, , 16
.LBB4_329:                              # %for.body133.i522
                                        #   Parent Loop BB4_321 Depth=1
                                        #     Parent Loop BB4_328 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t8, $t5, 0
	ld.d	$fp, $t6, 0
	add.d	$t8, $t8, $t4
	ldx.b	$t8, $t8, $a7
	addi.d	$s0, $fp, -1
	st.d	$s0, $t6, 0
	st.b	$t8, $fp, -1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	bnez	$t7, .LBB4_329
.LBB4_330:                              # %for.cond144.preheader.i487
                                        #   in Loop: Header=BB4_328 Depth=2
	move	$t5, $s6
	move	$t6, $a4
	blt	$s8, $a5, .LBB4_327
	.p2align	4, , 16
.LBB4_331:                              # %for.body147.i519
                                        #   Parent Loop BB4_321 Depth=1
                                        #     Parent Loop BB4_328 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t7, $t5, 0
	addi.d	$t8, $t7, -1
	st.d	$t8, $t5, 0
	st.b	$a6, $t7, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	bnez	$t6, .LBB4_331
	b	.LBB4_327
	.p2align	4, , 16
.LBB4_332:                              # %while.end.loopexit.i490
                                        #   in Loop: Header=BB4_321 Depth=1
	add.d	$a3, $s4, $a3
	add.d	$a3, $t3, $a3
.LBB4_333:                              # %while.end.i491
                                        #   in Loop: Header=BB4_321 Depth=1
	add.w	$a0, $t2, $a0
	beq	$t2, $ra, .LBB4_340
# %bb.334:                              # %for.cond160.preheader.preheader.i493
                                        #   in Loop: Header=BB4_321 Depth=1
	nor	$t2, $t2, $zero
	b	.LBB4_336
	.p2align	4, , 16
.LBB4_335:                              # %for.end185.i496
                                        #   in Loop: Header=BB4_336 Depth=2
	addi.d	$t2, $t2, -1
	addi.d	$a3, $a3, 1
	beqz	$t2, .LBB4_340
.LBB4_336:                              # %for.cond160.preheader.i494
                                        #   Parent Loop BB4_321 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_337 Depth 3
                                        #       Child Loop BB4_339 Depth 3
	move	$t3, $s3
	move	$t4, $a2
	blt	$s1, $a5, .LBB4_338
	.p2align	4, , 16
.LBB4_337:                              # %for.body163.i516
                                        #   Parent Loop BB4_321 Depth=1
                                        #     Parent Loop BB4_336 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t5, $t3, 0
	addi.d	$t6, $t5, -1
	st.d	$t6, $t3, 0
	st.b	$a6, $t5, -1
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 8
	bnez	$t4, .LBB4_337
.LBB4_338:                              # %for.cond171.preheader.i495
                                        #   in Loop: Header=BB4_336 Depth=2
	move	$t3, $s5
	move	$t4, $s6
	move	$t5, $a4
	blt	$s8, $a5, .LBB4_335
	.p2align	4, , 16
.LBB4_339:                              # %for.body174.i511
                                        #   Parent Loop BB4_321 Depth=1
                                        #     Parent Loop BB4_336 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t6, $t3, 0
	ld.d	$t7, $t4, 0
	add.d	$t6, $t6, $t2
	ldx.b	$t6, $t6, $a0
	addi.d	$t8, $t7, -1
	st.d	$t8, $t4, 0
	st.b	$t6, $t7, -1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	bnez	$t5, .LBB4_339
	b	.LBB4_335
	.p2align	4, , 16
.LBB4_340:                              # %while.end187.i499
                                        #   in Loop: Header=BB4_321 Depth=1
	blt	$t0, $a5, .LBB4_348
# %bb.341:                              # %while.end187.i499
                                        #   in Loop: Header=BB4_321 Depth=1
	blt	$t1, $a5, .LBB4_348
# %bb.342:                              # %for.cond194.preheader.i
                                        #   in Loop: Header=BB4_321 Depth=1
	blt	$s1, $a5, .LBB4_345
# %bb.343:                              # %for.body197.lr.ph.i
                                        #   in Loop: Header=BB4_321 Depth=1
	move	$t0, $s2
	move	$t1, $s3
	move	$t2, $a2
	.p2align	4, , 16
.LBB4_344:                              # %for.body197.i
                                        #   Parent Loop BB4_321 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t0, 0
	ld.d	$t4, $t1, 0
	ldx.b	$t3, $t3, $a7
	addi.d	$t5, $t4, -1
	st.d	$t5, $t1, 0
	st.b	$t3, $t4, -1
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	bnez	$t2, .LBB4_344
.LBB4_345:                              # %for.cond208.preheader.i502
                                        #   in Loop: Header=BB4_321 Depth=1
	blt	$s8, $a5, .LBB4_320
# %bb.346:                              # %for.body211.lr.ph.i504
                                        #   in Loop: Header=BB4_321 Depth=1
	move	$t0, $s5
	move	$t1, $s6
	move	$t2, $a4
	.p2align	4, , 16
.LBB4_347:                              # %for.body211.i506
                                        #   Parent Loop BB4_321 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t0, 0
	ld.d	$t4, $t1, 0
	ldx.b	$t3, $t3, $a0
	addi.d	$t5, $t4, -1
	st.d	$t5, $t1, 0
	st.b	$t3, $t4, -1
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	bnez	$t2, .LBB4_347
	b	.LBB4_320
.LBB4_348:                              # %if.end620
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB4_357
# %bb.349:                              # %if.end620
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB4_357
# %bb.350:                              # %if.end631
	ori	$fp, $zero, 1
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	blt	$a2, $fp, .LBB4_353
.LBB4_351:                              # %for.body635.lr.ph
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(partQ__align.mseq1)
	.p2align	4, , 16
.LBB4_352:                              # %for.body635
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	move	$s1, $a2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$a2, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$a2, .LBB4_352
.LBB4_353:                              # %for.cond644.preheader
	blt	$s8, $fp, .LBB4_356
# %bb.354:                              # %for.body647.lr.ph
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(partQ__align.mseq2)
	.p2align	4, , 16
.LBB4_355:                              # %for.body647
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s8, $s8, -1
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB4_355
.LBB4_356:                              # %for.end655
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 448                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB4_357:                              # %if.then629
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a4, $a4, 2880
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	bge	$a2, $fp, .LBB4_351
	b	.LBB4_353
.LBB4_358:
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
.LBB4_359:
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB4_35
.LBB4_360:
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	b	.LBB4_40
.Lfunc_end4:
	.size	partQ__align, .Lfunc_end4-partQ__align
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	st.d	$fp, $sp, 264                   # 8-byte Folded Spill
	st.d	$s0, $sp, 256                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 192                  # 8-byte Folded Spill
	beqz	$a7, .LBB5_8
# %bb.1:                                # %entry
	ori	$a7, $zero, 1
	blt	$a4, $a7, .LBB5_8
# %bb.2:                                # %for.cond1.preheader.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 208
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                # %for.end
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$t3, $t5, 0
	slli.d	$t2, $t2, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t3, $t2
	beq	$a7, $a4, .LBB5_8
.LBB5_4:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
	move	$t3, $zero
	move	$t4, $zero
	move	$t2, $zero
	alsl.d	$t6, $a7, $a5, 3
	alsl.d	$t5, $a7, $a6, 3
	slli.d	$t7, $a7, 2
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_5:                                # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=2
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 1
	beq	$t3, $t0, .LBB5_3
.LBB5_6:                                # %for.body3
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t8, $a2, $t3
	fldx.s	$fa1, $t8, $t7
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_5
# %bb.7:                                # %if.then7
                                        #   in Loop: Header=BB5_6 Depth=2
	ld.d	$t8, $t6, 0
	ld.d	$fp, $t5, 0
	slli.d	$s0, $t2, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t4, $fp, $s0
	addi.w	$t2, $t2, 1
	b	.LBB5_5
.LBB5_8:                                # %if.end28
	ld.d	$a2, $a1, 96
	ld.d	$a7, $a1, 104
	slli.d	$a3, $a3, 2
	fldx.s	$fa3, $a2, $a3
	xvst	$xr3, $sp, 48                   # 32-byte Folded Spill
	ld.d	$a2, $a1, 0
	fldx.s	$fa2, $a7, $a3
	ld.d	$a7, $a1, 112
	ld.d	$t0, $a1, 8
	fldx.s	$ft9, $a2, $a3
	ld.d	$a2, $a1, 16
	ld.d	$t1, $a1, 24
	fldx.s	$ft11, $t0, $a3
	ld.d	$t0, $a1, 32
	fldx.s	$ft10, $a2, $a3
	fldx.s	$ft8, $t1, $a3
	ld.d	$a2, $a1, 40
	fldx.s	$ft7, $t0, $a3
	ld.d	$t0, $a1, 48
	ld.d	$t1, $a1, 56
	fldx.s	$ft6, $a2, $a3
	ld.d	$a2, $a1, 64
	fldx.s	$ft5, $t0, $a3
	fldx.s	$ft4, $t1, $a3
	ld.d	$t0, $a1, 72
	fldx.s	$ft3, $a2, $a3
	ld.d	$a2, $a1, 80
	ld.d	$t1, $a1, 88
	fldx.s	$ft1, $t0, $a3
	ld.d	$t0, $a1, 120
	fldx.s	$ft2, $a2, $a3
	fldx.s	$ft0, $t1, $a3
	fldx.s	$fa7, $a7, $a3
	xvst	$xr7, $sp, 16                   # 32-byte Folded Spill
	fldx.s	$fa5, $t0, $a3
	ld.d	$a2, $a1, 128
	ld.d	$a7, $a1, 136
	ld.d	$t0, $a1, 144
	ld.d	$t1, $a1, 152
	fldx.s	$fa6, $a2, $a3
	fldx.s	$fa4, $a7, $a3
	fldx.s	$fa1, $t0, $a3
	fldx.s	$fa0, $t1, $a3
	xvreplve0.w	$xr22, $xr13
	xvreplve0.w	$xr21, $xr14
	xvreplve0.w	$xr23, $xr15
	pcalau12i	$a2, %got_pc_hi20(n_dis_consweight_multi)
	ld.d	$a2, $a2, %got_pc_lo12(n_dis_consweight_multi)
	xvreplve0.w	$xr24, $xr16
	xvreplve0.w	$xr20, $xr18
	xvreplve0.w	$xr25, $xr19
	xvld	$xr28, $a2, 0
	xvreplve0.w	$xr26, $xr17
	xvrepli.b	$xr27, 0
	xvld	$xr29, $a2, 104
	xvfmadd.s	$xr28, $xr28, $xr26, $xr27
	xvld	$xr30, $a2, 208
	xvld	$xr31, $a2, 312
	xvfmadd.s	$xr28, $xr29, $xr25, $xr28
	xvld	$xr29, $a2, 416
	xvfmadd.s	$xr28, $xr30, $xr20, $xr28
	xvfmadd.s	$xr28, $xr31, $xr24, $xr28
	xvld	$xr30, $a2, 520
	xvfmadd.s	$xr29, $xr29, $xr23, $xr28
	xvld	$xr28, $a2, 624
	xvld	$xr31, $a2, 32
	xvfmadd.s	$xr29, $xr30, $xr21, $xr29
	xvld	$xr30, $a2, 64
	xvfmadd.s	$xr28, $xr28, $xr22, $xr29
	xvfmadd.s	$xr29, $xr31, $xr26, $xr27
	xvld	$xr31, $a2, 136
	xvfmadd.s	$xr26, $xr30, $xr26, $xr27
	xvld	$xr27, $a2, 168
	xvreplve0.w	$xr30, $xr11
	xvfmadd.s	$xr29, $xr31, $xr25, $xr29
	xvld	$xr31, $a2, 728
	xvfmadd.s	$xr25, $xr27, $xr25, $xr26
	xvld	$xr26, $a2, 832
	xvreplve0.w	$xr27, $xr12
	xvfmadd.s	$xr28, $xr31, $xr27, $xr28
	xvld	$xr31, $a2, 240
	xvfmadd.s	$xr26, $xr26, $xr30, $xr28
	xvld	$xr28, $a2, 272
	ld.d	$a7, $a1, 160
	xvfmadd.s	$xr29, $xr31, $xr20, $xr29
	xvld	$xr31, $a2, 344
	xvfmadd.s	$xr25, $xr28, $xr20, $xr25
	xvld	$xr28, $a2, 376
	fldx.s	$ft12, $a7, $a3
	xvfmadd.s	$xr29, $xr31, $xr24, $xr29
	xvld	$xr31, $a2, 448
	xvfmadd.s	$xr24, $xr28, $xr24, $xr25
	xvld	$xr25, $a2, 480
	xvreplve0.w	$xr28, $xr10
	xvfmadd.s	$xr29, $xr31, $xr23, $xr29
	xvld	$xr31, $a2, 936
	xvfmadd.s	$xr23, $xr25, $xr23, $xr24
	xvld	$xr24, $a2, 1040
	xvreplve0.w	$xr25, $xr9
	xvfmadd.s	$xr26, $xr31, $xr25, $xr26
	xvld	$xr31, $a2, 552
	xvfmadd.s	$xr24, $xr24, $xr28, $xr26
	xvld	$xr26, $a2, 584
	ld.d	$a7, $a1, 168
	xvfmadd.s	$xr29, $xr31, $xr21, $xr29
	xvld	$xr31, $a2, 656
	xvfmadd.s	$xr23, $xr26, $xr21, $xr23
	xvld	$xr26, $a2, 688
	fldx.s	$ft13, $a7, $a3
	xvfmadd.s	$xr29, $xr31, $xr22, $xr29
	xvld	$xr31, $a2, 760
	xvfmadd.s	$xr22, $xr26, $xr22, $xr23
	xvld	$xr23, $a2, 792
	xvreplve0.w	$xr26, $xr8
	xvfmadd.s	$xr29, $xr31, $xr27, $xr29
	xvld	$xr31, $a2, 1144
	xvfmadd.s	$xr22, $xr23, $xr27, $xr22
	xvld	$xr23, $a2, 1248
	xvreplve0.w	$xr27, $xr3
	xvfmadd.s	$xr24, $xr31, $xr26, $xr24
	xvld	$xr31, $a2, 864
	xvfmadd.s	$xr23, $xr23, $xr27, $xr24
	xvld	$xr24, $a2, 896
	ld.d	$a7, $a1, 176
	xvfmadd.s	$xr29, $xr31, $xr30, $xr29
	xvld	$xr31, $a2, 968
	xvfmadd.s	$xr24, $xr24, $xr30, $xr22
	xvld	$xr30, $a2, 1000
	fldx.s	$ft14, $a7, $a3
	xvfmadd.s	$xr29, $xr31, $xr25, $xr29
	xvld	$xr31, $a2, 1072
	xvfmadd.s	$xr24, $xr30, $xr25, $xr24
	xvld	$xr25, $a2, 1104
	xvreplve0.w	$xr30, $xr7
	xvfmadd.s	$xr29, $xr31, $xr28, $xr29
	xvld	$xr31, $a2, 1352
	xvfmadd.s	$xr24, $xr25, $xr28, $xr24
	xvld	$xr25, $a2, 1456
	xvreplve0.w	$xr28, $xr2
	xvori.b	$xr7, $xr2, 0
	xvfmadd.s	$xr23, $xr31, $xr28, $xr23
	xvld	$xr31, $a2, 1176
	xvfmadd.s	$xr25, $xr25, $xr30, $xr23
	xvld	$xr23, $a2, 1208
	ld.d	$a7, $a1, 184
	xvfmadd.s	$xr29, $xr31, $xr26, $xr29
	xvld	$xr31, $a2, 1280
	xvfmadd.s	$xr24, $xr23, $xr26, $xr24
	xvld	$xr26, $a2, 1312
	fldx.s	$ft15, $a7, $a3
	xvfmadd.s	$xr29, $xr31, $xr27, $xr29
	xvld	$xr31, $a2, 1384
	xvfmadd.s	$xr24, $xr26, $xr27, $xr24
	xvld	$xr26, $a2, 1416
	xvreplve0.w	$xr27, $xr6
	xvfmadd.s	$xr29, $xr31, $xr28, $xr29
	xvld	$xr31, $a2, 1560
	xvfmadd.s	$xr24, $xr26, $xr28, $xr24
	xvld	$xr26, $a2, 1664
	xvreplve0.w	$xr28, $xr5
	xvfmadd.s	$xr25, $xr31, $xr28, $xr25
	xvld	$xr31, $a2, 1488
	xvfmadd.s	$xr25, $xr26, $xr27, $xr25
	xvld	$xr26, $a2, 1520
	ld.d	$a7, $a1, 192
	xvfmadd.s	$xr29, $xr31, $xr30, $xr29
	xvld	$xr31, $a2, 1592
	xvfmadd.s	$xr26, $xr26, $xr30, $xr24
	xvld	$xr30, $a2, 1624
	fldx.s	$fs0, $a7, $a3
	xvfmadd.s	$xr29, $xr31, $xr28, $xr29
	xvld	$xr31, $a2, 1696
	xvfmadd.s	$xr26, $xr30, $xr28, $xr26
	xvld	$xr28, $a2, 1728
	xvreplve0.w	$xr30, $xr1
	xvori.b	$xr3, $xr1, 0
	xvfmadd.s	$xr29, $xr31, $xr27, $xr29
	xvld	$xr31, $a2, 1768
	xvfmadd.s	$xr26, $xr28, $xr27, $xr26
	xvld	$xr27, $a2, 1872
	xvreplve0.w	$xr28, $xr4
	xvfmadd.s	$xr25, $xr31, $xr28, $xr25
	xvld	$xr31, $a2, 1800
	xvfmadd.s	$xr25, $xr27, $xr30, $xr25
	xvld	$xr27, $a2, 1832
	ld.d	$a1, $a1, 200
	xvfmadd.s	$xr29, $xr31, $xr28, $xr29
	xvld	$xr31, $a2, 1904
	xvfmadd.s	$xr26, $xr27, $xr28, $xr26
	xvld	$xr27, $a2, 1936
	xvreplve0.w	$xr28, $xr21
	xvfmadd.s	$xr29, $xr31, $xr30, $xr29
	xvld	$xr31, $a2, 1976
	xvfmadd.s	$xr26, $xr27, $xr30, $xr26
	xvreplve0.w	$xr27, $xr0
	xvori.b	$xr2, $xr0, 0
	xvld	$xr30, $a2, 2008
	xvfmadd.s	$xr25, $xr31, $xr27, $xr25
	xvld	$xr31, $a2, 2040
	ori	$a7, $zero, 2080
	xvfmadd.s	$xr29, $xr30, $xr27, $xr29
	xvldx	$xr30, $a2, $a7
	xvfmadd.s	$xr26, $xr31, $xr27, $xr26
	xvreplve0.w	$xr27, $xr20
	ori	$a7, $zero, 2184
	xvldx	$xr31, $a2, $a7
	xvfmadd.s	$xr25, $xr30, $xr27, $xr25
	ori	$a7, $zero, 2112
	xvldx	$xr30, $a2, $a7
	xvfmadd.s	$xr25, $xr31, $xr28, $xr25
	ori	$a7, $zero, 2144
	xvldx	$xr31, $a2, $a7
	xvfmadd.s	$xr29, $xr30, $xr27, $xr29
	xvreplve0.w	$xr30, $xr23
	ori	$a7, $zero, 2216
	xvfmadd.s	$xr26, $xr31, $xr27, $xr26
	xvldx	$xr27, $a2, $a7
	ori	$a7, $zero, 2248
	xvldx	$xr31, $a2, $a7
	ori	$a7, $zero, 2288
	xvfmadd.s	$xr27, $xr27, $xr28, $xr29
	xvldx	$xr29, $a2, $a7
	xvfmadd.s	$xr28, $xr31, $xr28, $xr26
	xvreplve0.w	$xr31, $xr22
	ori	$a7, $zero, 2392
	xvldx	$xr26, $a2, $a7
	xvfmadd.s	$xr25, $xr29, $xr31, $xr25
	ori	$a7, $zero, 2320
	xvldx	$xr29, $a2, $a7
	xvfmadd.s	$xr25, $xr26, $xr30, $xr25
	ori	$a7, $zero, 2352
	xvldx	$xr0, $a2, $a7
	xvfmadd.s	$xr27, $xr29, $xr31, $xr27
	fldx.s	$fs2, $a1, $a3
	ori	$a1, $zero, 2424
	xvfmadd.s	$xr0, $xr0, $xr31, $xr28
	xvldx	$xr28, $a2, $a1
	ori	$a1, $zero, 2456
	xvldx	$xr29, $a2, $a1
	ori	$a1, $zero, 2496
	xvfmadd.s	$xr27, $xr28, $xr30, $xr27
	xvldx	$xr28, $a2, $a1
	xvfmadd.s	$xr0, $xr29, $xr30, $xr0
	xvreplve0.w	$xr29, $xr24
	ori	$a1, $zero, 2528
	xvldx	$xr30, $a2, $a1
	xvfmadd.s	$xr25, $xr28, $xr29, $xr25
	ori	$a1, $zero, 2560
	xvldx	$xr28, $a2, $a1
	xvfmadd.s	$xr30, $xr30, $xr29, $xr27
	xvreplve0.w	$xr31, $xr26
	ori	$a1, $zero, 2600
	xvfmadd.s	$xr0, $xr28, $xr29, $xr0
	xvldx	$xr27, $a2, $a1
	ori	$a1, $zero, 2632
	xvldx	$xr28, $a2, $a1
	ori	$a1, $zero, 2664
	xvldx	$xr29, $a2, $a1
	xvfmadd.s	$xr27, $xr27, $xr31, $xr25
	xvfmadd.s	$xr28, $xr28, $xr31, $xr30
	fld.s	$fs6, $a2, 96
	xvfmadd.s	$xr29, $xr29, $xr31, $xr0
	fld.s	$fa0, $a2, 200
	movgr2fr.w	$fa1, $zero
	fmadd.s	$fs6, $fs6, $ft9, $fa1
	fld.s	$fs7, $a2, 100
	fmadd.s	$fa0, $fa0, $ft11, $fs6
	fld.s	$fs6, $a2, 204
	fld.s	$fs1, $a2, 304
	fmadd.s	$ft9, $fs7, $ft9, $fa1
	fld.s	$fs7, $a2, 308
	fmadd.s	$ft9, $fs6, $ft11, $ft9
	fmadd.s	$fa0, $fs1, $ft10, $fa0
	fld.s	$ft11, $a2, 408
	fmadd.s	$ft9, $fs7, $ft10, $ft9
	fld.s	$ft10, $a2, 412
	fld.s	$fs1, $a2, 512
	fmadd.s	$fa0, $ft11, $ft8, $fa0
	fld.s	$ft11, $a2, 516
	fmadd.s	$ft8, $ft10, $ft8, $ft9
	fmadd.s	$fa0, $fs1, $ft7, $fa0
	fld.s	$ft9, $a2, 616
	fmadd.s	$ft7, $ft11, $ft7, $ft8
	fld.s	$ft8, $a2, 620
	fld.s	$ft10, $a2, 720
	fmadd.s	$fa0, $ft9, $ft6, $fa0
	fld.s	$ft9, $a2, 724
	fmadd.s	$ft6, $ft8, $ft6, $ft7
	fmadd.s	$fa0, $ft10, $ft5, $fa0
	fld.s	$ft7, $a2, 824
	fmadd.s	$ft5, $ft9, $ft5, $ft6
	fld.s	$ft6, $a2, 828
	fld.s	$ft8, $a2, 928
	fmadd.s	$fa0, $ft7, $ft4, $fa0
	fld.s	$ft7, $a2, 932
	fmadd.s	$ft4, $ft6, $ft4, $ft5
	fmadd.s	$fa0, $ft8, $ft3, $fa0
	fld.s	$ft5, $a2, 1032
	fmadd.s	$ft3, $ft7, $ft3, $ft4
	fld.s	$ft4, $a2, 1036
	fld.s	$ft6, $a2, 1136
	fmadd.s	$fa0, $ft5, $ft1, $fa0
	fld.s	$ft5, $a2, 1140
	fmadd.s	$ft1, $ft4, $ft1, $ft3
	fmadd.s	$fa0, $ft6, $ft2, $fa0
	fld.s	$ft3, $a2, 1240
	fmadd.s	$ft1, $ft5, $ft2, $ft1
	fld.s	$ft2, $a2, 1244
	fld.s	$ft4, $a2, 1344
	fmadd.s	$fa0, $ft3, $ft0, $fa0
	fld.s	$ft3, $a2, 1348
	fmadd.s	$ft0, $ft2, $ft0, $ft1
	xvld	$xr10, $sp, 48                  # 32-byte Folded Reload
	fmadd.s	$fa0, $ft4, $ft2, $fa0
	fld.s	$ft1, $a2, 1448
	fmadd.s	$ft0, $ft3, $ft2, $ft0
	fld.s	$ft2, $a2, 1452
	fld.s	$ft3, $a2, 1552
	fmadd.s	$fa0, $ft1, $fa7, $fa0
	fld.s	$ft1, $a2, 1556
	fmadd.s	$ft0, $ft2, $fa7, $ft0
	xvld	$xr7, $sp, 16                   # 32-byte Folded Reload
	fmadd.s	$fa0, $ft3, $fa7, $fa0
	fld.s	$ft2, $a2, 1656
	fmadd.s	$fa7, $ft1, $fa7, $ft0
	fld.s	$ft0, $a2, 1660
	fld.s	$ft1, $a2, 1760
	fmadd.s	$fa0, $ft2, $fa5, $fa0
	fld.s	$ft2, $a2, 1764
	fmadd.s	$fa5, $ft0, $fa5, $fa7
	fmadd.s	$fa0, $ft1, $fa6, $fa0
	fld.s	$fa7, $a2, 1864
	fmadd.s	$fa5, $ft2, $fa6, $fa5
	fld.s	$fa6, $a2, 1968
	ori	$a1, $zero, 2072
	fldx.s	$ft0, $a2, $a1
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fmadd.s	$fa0, $fa6, $fa3, $fa0
	fld.s	$fa6, $a2, 1868
	fmadd.s	$fa0, $ft0, $fa2, $fa0
	ori	$a1, $zero, 2176
	fld.s	$fa7, $a2, 1972
	fmadd.s	$fa4, $fa6, $fa4, $fa5
	fldx.s	$fa5, $a2, $a1
	ori	$a1, $zero, 2280
	fmadd.s	$fa3, $fa7, $fa3, $fa4
	ori	$a3, $zero, 2076
	fldx.s	$fa4, $a2, $a3
	fldx.s	$fa6, $a2, $a1
	ori	$a1, $zero, 2180
	fldx.s	$fa7, $a2, $a1
	fmadd.s	$fa2, $fa4, $fa2, $fa3
	fmadd.s	$fa0, $fa5, $ft12, $fa0
	fmadd.s	$fa0, $fa6, $ft13, $fa0
	fmadd.s	$fa2, $fa7, $ft12, $fa2
	ori	$a1, $zero, 2284
	fldx.s	$fa3, $a2, $a1
	ori	$a1, $zero, 2384
	fldx.s	$fa4, $a2, $a1
	ori	$a1, $zero, 2488
	fmadd.s	$fa2, $fa3, $ft13, $fa2
	fldx.s	$fa3, $a2, $a1
	ori	$a1, $zero, 2388
	fldx.s	$fa5, $a2, $a1
	fmadd.s	$fa0, $fa4, $ft14, $fa0
	fmadd.s	$fa0, $fa3, $ft15, $fa0
	ori	$a1, $zero, 2592
	fmadd.s	$fa2, $fa5, $ft14, $fa2
	ori	$a3, $zero, 2492
	fldx.s	$fa3, $a2, $a3
	fldx.s	$fa4, $a2, $a1
	ori	$a1, $zero, 2696
	fldx.s	$fa5, $a2, $a1
	fmadd.s	$fa2, $fa3, $ft15, $fa2
	ori	$a1, $zero, 2596
	fldx.s	$fa3, $a2, $a1
	ori	$a1, $zero, 2700
	fldx.s	$fa6, $a2, $a1
	fmadd.s	$fa0, $fa4, $fs0, $fa0
	fmadd.s	$fa2, $fa3, $fs0, $fa2
	fmadd.s	$fa0, $fa5, $fs2, $fa0
	fmadd.s	$fa2, $fa6, $fs2, $fa2
	xvst	$xr27, $sp, 88
	xvst	$xr28, $sp, 120
	xvst	$xr29, $sp, 152
	fst.s	$fa0, $sp, 184
	fst.s	$fa2, $sp, 188
	beqz	$a4, .LBB5_14
# %bb.9:                                # %while.body.preheader
	addi.d	$a1, $sp, 88
	addi.w	$a2, $zero, -1
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               # %while.end
                                        #   in Loop: Header=BB5_11 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB5_14
.LBB5_11:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_13 Depth 2
	ld.d	$a7, $a6, 0
	ld.wu	$a3, $a7, 0
	addi.w	$t0, $a3, 0
	st.w	$zero, $a0, 0
	bltz	$t0, .LBB5_10
# %bb.12:                               # %while.body57.lr.ph
                                        #   in Loop: Header=BB5_11 Depth=1
	ld.d	$t0, $a5, 0
	addi.d	$a7, $a7, 4
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB5_13:                               # %while.body57
                                        #   Parent Loop BB5_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a3, $a3, 2
	fldx.s	$fa2, $a3, $a1
	fld.s	$fa3, $t0, 0
	ld.wu	$a3, $a7, 0
	addi.d	$t0, $t0, 4
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fst.s	$fa0, $a0, 0
	addi.w	$t1, $a3, 0
	addi.d	$a7, $a7, 4
	blt	$a2, $t1, .LBB5_13
	b	.LBB5_10
.LBB5_14:                               # %while.end63
	fld.d	$fs7, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 248                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end5:
	.size	match_calc, .Lfunc_end5-match_calc
                                        # -- End function
	.type	impmtx,@object                  # @impmtx
	.local	impmtx
	.comm	impmtx,8,8
	.type	impalloclen,@object             # @impalloclen
	.local	impalloclen
	.comm	impalloclen,4,4
	.type	part_imp_match_initQ.impalloclen,@object # @part_imp_match_initQ.impalloclen
	.local	part_imp_match_initQ.impalloclen
	.comm	part_imp_match_initQ.impalloclen,4,4
	.type	part_imp_match_initQ.nocount1,@object # @part_imp_match_initQ.nocount1
	.local	part_imp_match_initQ.nocount1
	.comm	part_imp_match_initQ.nocount1,8,8
	.type	part_imp_match_initQ.nocount2,@object # @part_imp_match_initQ.nocount2
	.local	part_imp_match_initQ.nocount2
	.comm	part_imp_match_initQ.nocount2,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"i = %d, seq1 = %s\n"
	.size	.L.str, 19

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"start1 = %d\n"
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"end1   = %d\n"
	.size	.L.str.2, 13

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"j = %d, seq2 = %s\n"
	.size	.L.str.3, 19

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"step 0\n"
	.size	.L.str.4, 8

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"dif = %d\n"
	.size	.L.str.5, 10

	.type	partQ__align.m,@object          # @partQ__align.m
	.local	partQ__align.m
	.comm	partQ__align.m,8,8
	.type	partQ__align.ijp,@object        # @partQ__align.ijp
	.local	partQ__align.ijp
	.comm	partQ__align.ijp,8,8
	.type	partQ__align.mp,@object         # @partQ__align.mp
	.local	partQ__align.mp
	.comm	partQ__align.mp,8,8
	.type	partQ__align.w1,@object         # @partQ__align.w1
	.local	partQ__align.w1
	.comm	partQ__align.w1,8,8
	.type	partQ__align.w2,@object         # @partQ__align.w2
	.local	partQ__align.w2
	.comm	partQ__align.w2,8,8
	.type	partQ__align.match,@object      # @partQ__align.match
	.local	partQ__align.match
	.comm	partQ__align.match,8,8
	.type	partQ__align.initverticalw,@object # @partQ__align.initverticalw
	.local	partQ__align.initverticalw
	.comm	partQ__align.initverticalw,8,8
	.type	partQ__align.lastverticalw,@object # @partQ__align.lastverticalw
	.local	partQ__align.lastverticalw
	.comm	partQ__align.lastverticalw,8,8
	.type	partQ__align.mseq1,@object      # @partQ__align.mseq1
	.local	partQ__align.mseq1
	.comm	partQ__align.mseq1,8,8
	.type	partQ__align.mseq2,@object      # @partQ__align.mseq2
	.local	partQ__align.mseq2
	.comm	partQ__align.mseq2,8,8
	.type	partQ__align.mseq,@object       # @partQ__align.mseq
	.local	partQ__align.mseq
	.comm	partQ__align.mseq,8,8
	.type	partQ__align.digf1,@object      # @partQ__align.digf1
	.local	partQ__align.digf1
	.comm	partQ__align.digf1,8,8
	.type	partQ__align.digf2,@object      # @partQ__align.digf2
	.local	partQ__align.digf2
	.comm	partQ__align.digf2,8,8
	.type	partQ__align.diaf1,@object      # @partQ__align.diaf1
	.local	partQ__align.diaf1
	.comm	partQ__align.diaf1,8,8
	.type	partQ__align.diaf2,@object      # @partQ__align.diaf2
	.local	partQ__align.diaf2
	.comm	partQ__align.diaf2,8,8
	.type	partQ__align.gapz1,@object      # @partQ__align.gapz1
	.local	partQ__align.gapz1
	.comm	partQ__align.gapz1,8,8
	.type	partQ__align.gapz2,@object      # @partQ__align.gapz2
	.local	partQ__align.gapz2
	.comm	partQ__align.gapz2,8,8
	.type	partQ__align.gapf1,@object      # @partQ__align.gapf1
	.local	partQ__align.gapf1
	.comm	partQ__align.gapf1,8,8
	.type	partQ__align.gapf2,@object      # @partQ__align.gapf2
	.local	partQ__align.gapf2
	.comm	partQ__align.gapf2,8,8
	.type	partQ__align.ogcp1g,@object     # @partQ__align.ogcp1g
	.local	partQ__align.ogcp1g
	.comm	partQ__align.ogcp1g,8,8
	.type	partQ__align.ogcp2g,@object     # @partQ__align.ogcp2g
	.local	partQ__align.ogcp2g
	.comm	partQ__align.ogcp2g,8,8
	.type	partQ__align.fgcp1g,@object     # @partQ__align.fgcp1g
	.local	partQ__align.fgcp1g
	.comm	partQ__align.fgcp1g,8,8
	.type	partQ__align.fgcp2g,@object     # @partQ__align.fgcp2g
	.local	partQ__align.fgcp2g
	.comm	partQ__align.fgcp2g,8,8
	.type	partQ__align.og_h_dg_n1_p,@object # @partQ__align.og_h_dg_n1_p
	.local	partQ__align.og_h_dg_n1_p
	.comm	partQ__align.og_h_dg_n1_p,8,8
	.type	partQ__align.og_h_dg_n2_p,@object # @partQ__align.og_h_dg_n2_p
	.local	partQ__align.og_h_dg_n2_p
	.comm	partQ__align.og_h_dg_n2_p,8,8
	.type	partQ__align.fg_h_dg_n1_p,@object # @partQ__align.fg_h_dg_n1_p
	.local	partQ__align.fg_h_dg_n1_p
	.comm	partQ__align.fg_h_dg_n1_p,8,8
	.type	partQ__align.fg_h_dg_n2_p,@object # @partQ__align.fg_h_dg_n2_p
	.local	partQ__align.fg_h_dg_n2_p
	.comm	partQ__align.fg_h_dg_n2_p,8,8
	.type	partQ__align.og_t_fg_h_dg_n1_p,@object # @partQ__align.og_t_fg_h_dg_n1_p
	.local	partQ__align.og_t_fg_h_dg_n1_p
	.comm	partQ__align.og_t_fg_h_dg_n1_p,8,8
	.type	partQ__align.og_t_fg_h_dg_n2_p,@object # @partQ__align.og_t_fg_h_dg_n2_p
	.local	partQ__align.og_t_fg_h_dg_n2_p
	.comm	partQ__align.og_t_fg_h_dg_n2_p,8,8
	.type	partQ__align.fg_t_og_h_dg_n1_p,@object # @partQ__align.fg_t_og_h_dg_n1_p
	.local	partQ__align.fg_t_og_h_dg_n1_p
	.comm	partQ__align.fg_t_og_h_dg_n1_p,8,8
	.type	partQ__align.fg_t_og_h_dg_n2_p,@object # @partQ__align.fg_t_og_h_dg_n2_p
	.local	partQ__align.fg_t_og_h_dg_n2_p
	.comm	partQ__align.fg_t_og_h_dg_n2_p,8,8
	.type	partQ__align.gapz_n1,@object    # @partQ__align.gapz_n1
	.local	partQ__align.gapz_n1
	.comm	partQ__align.gapz_n1,8,8
	.type	partQ__align.gapz_n2,@object    # @partQ__align.gapz_n2
	.local	partQ__align.gapz_n2
	.comm	partQ__align.gapz_n2,8,8
	.type	partQ__align.cpmx1,@object      # @partQ__align.cpmx1
	.local	partQ__align.cpmx1
	.comm	partQ__align.cpmx1,8,8
	.type	partQ__align.cpmx2,@object      # @partQ__align.cpmx2
	.local	partQ__align.cpmx2
	.comm	partQ__align.cpmx2,8,8
	.type	partQ__align.intwork,@object    # @partQ__align.intwork
	.local	partQ__align.intwork
	.comm	partQ__align.intwork,8,8
	.type	partQ__align.floatwork,@object  # @partQ__align.floatwork
	.local	partQ__align.floatwork
	.comm	partQ__align.floatwork,8,8
	.type	partQ__align.orlgth1,@object    # @partQ__align.orlgth1
	.local	partQ__align.orlgth1
	.comm	partQ__align.orlgth1,4,4
	.type	partQ__align.orlgth2,@object    # @partQ__align.orlgth2
	.local	partQ__align.orlgth2
	.comm	partQ__align.orlgth2,4,4
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str.6, 33

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.7, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
