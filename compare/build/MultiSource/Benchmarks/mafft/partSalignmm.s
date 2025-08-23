	.file	"partSalignmm.c"
	.text
	.globl	part_imp_match_out_sc           # -- Begin function part_imp_match_out_sc
	.p2align	5
	.type	part_imp_match_out_sc,@function
part_imp_match_out_sc:                  # @part_imp_match_out_sc
# %bb.0:                                # %entry
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	part_imp_match_out_sc, .Lfunc_end0-part_imp_match_out_sc
                                        # -- End function
	.globl	part_imp_match_init_strict      # -- Begin function part_imp_match_init_strict
	.p2align	5
	.type	part_imp_match_init_strict,@function
part_imp_match_init_strict:             # @part_imp_match_init_strict
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
	.size	part_imp_match_init_strict, .Lfunc_end1-part_imp_match_init_strict
                                        # -- End function
	.globl	part_imp_rna                    # -- Begin function part_imp_rna
	.p2align	5
	.type	part_imp_rna,@function
part_imp_rna:                           # @part_imp_rna
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
	.size	part_imp_rna, .Lfunc_end2-part_imp_rna
                                        # -- End function
	.globl	part_imp_match_init             # -- Begin function part_imp_match_init
	.p2align	5
	.type	part_imp_match_init,@function
part_imp_match_init:                    # @part_imp_match_init
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
	pcalau12i	$fp, %pc_hi20(part_imp_match_init.impalloclen)
	ld.w	$a0, $fp, %pc_lo12(part_imp_match_init.impalloclen)
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	move	$s5, $a6
	move	$s0, $a5
	move	$s4, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	pcalau12i	$a1, %pc_hi20(impmtx)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(part_imp_match_init.nocount1)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(part_imp_match_init.nocount2)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	blt	$a0, $a3, .LBB3_11
# %bb.1:                                # %entry
	blt	$a0, $s4, .LBB3_11
# %bb.2:                                # %if.end12
	ori	$a1, $zero, 1
	blt	$s1, $a1, .LBB3_18
.LBB3_3:                                # %for.cond14.preheader.lr.ph
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount1)
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
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount1)
	beqz	$a0, .LBB3_15
# %bb.14:                               # %if.then4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_15:                               # %if.end5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount2)
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
	st.w	$a0, $fp, %pc_lo12(part_imp_match_init.impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(part_imp_match_init.impalloclen)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(part_imp_match_init.impalloclen)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(part_imp_match_init.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(part_imp_match_init.impalloclen)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(part_imp_match_init.nocount2)
	addi.d	$a0, $a1, -2
	st.w	$a0, $fp, %pc_lo12(part_imp_match_init.impalloclen)
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
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount2)
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
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount1)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(part_imp_match_init.nocount2)
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
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount1)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(part_imp_match_init.nocount2)
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
	ld.d	$a3, $a0, %pc_lo12(part_imp_match_init.nocount2)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(part_imp_match_init.nocount1)
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
	.size	part_imp_match_init, .Lfunc_end3-part_imp_match_init
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function partA__align
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
.LCPI4_2:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI4_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI4_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_4:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI4_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI4_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	partA__align
	.p2align	5
	.type	partA__align,@function
partA__align:                           # @partA__align
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	pcalau12i	$t1, %pc_hi20(partA__align.orlgth1)
	st.d	$t1, $sp, 272                   # 8-byte Folded Spill
	ld.w	$s4, $t1, %pc_lo12(partA__align.orlgth1)
	ld.w	$t0, $t0, 0
	st.d	$t0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a5
	move	$s1, $a4
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	move	$s5, $a2
	move	$s6, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(partA__align.mseq1)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.mseq2)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bnez	$s4, .LBB4_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(partA__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.w	$s4, $a1, %pc_lo12(partA__align.orlgth1)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.mseq2)
.LBB4_2:                                # %if.end
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	move	$s0, $a0
	addi.w	$s3, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(partA__align.orlgth2)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.w	$s7, $a1, %pc_lo12(partA__align.orlgth2)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(partA__align.w1)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.w2)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.initverticalw)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.lastverticalw)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.m)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.mp)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.mseq)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.ogcp1)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.ogcp2)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.fgcp1)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.fgcp2)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.cpmx1)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.cpmx2)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.floatwork)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(partA__align.intwork)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	blt	$s4, $s3, .LBB4_5
# %bb.3:                                # %if.end
	blt	$s7, $a1, .LBB4_5
# %bb.4:
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	bge	$s1, $a0, .LBB4_9
	b	.LBB4_16
.LBB4_5:                                # %if.then12
	ori	$a0, $zero, 1
	pcalau12i	$s6, %pc_hi20(partA__align.match)
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	blt	$s4, $a0, .LBB4_8
# %bb.6:                                # %if.then12
	blt	$s7, $a0, .LBB4_8
# %bb.7:                                # %if.then17
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(partA__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(partA__align.orlgth1)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(partA__align.orlgth2)
.LBB4_8:                                # %if.end18
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI4_0)
	movgr2fr.w	$fa1, $s0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	addi.w	$s8, $s4, 100
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	addi.w	$s3, $s7, 100
	addi.w	$s5, $s7, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(partA__align.match)
	addi.w	$s6, $s4, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.mp)
	add.w	$a1, $s3, $s8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $s0, %pc_lo12(partA__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.cpmx2)
	slt	$a0, $s3, $s8
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.floatwork)
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(partA__align.intwork)
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.w	$s4, $a0, %pc_lo12(partA__align.orlgth1)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(partA__align.orlgth2)
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB4_16
.LBB4_9:                                # %for.body.lr.ph
	ld.d	$a1, $s0, %pc_lo12(partA__align.mseq)
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partA__align.mseq1)
	ori	$a4, $zero, 8
	move	$a3, $zero
	bltu	$s1, $a4, .LBB4_14
# %bb.10:                               # %for.body.lr.ph
	sub.d	$a4, $a2, $a1
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB4_14
# %bb.11:                               # %vector.ph
	bstrpick.d	$a3, $s1, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a2, 32
	addi.d	$a5, $a1, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_12:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB4_12
# %bb.13:                               # %middle.block
	beq	$a3, $s1, .LBB4_16
.LBB4_14:                               # %for.body.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a1, $a3, $a1, 3
	sub.d	$a3, $s1, $a3
	.p2align	4, , 16
.LBB4_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB4_15
.LBB4_16:                               # %for.cond90.preheader
	blt	$fp, $a0, .LBB4_22
# %bb.17:                               # %for.body93.lr.ph
	ld.d	$a0, $s0, %pc_lo12(partA__align.mseq)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partA__align.mseq2)
	ori	$a2, $zero, 8
	bltu	$fp, $a2, .LBB4_19
# %bb.18:                               # %vector.memcheck548
	alsl.d	$a2, $s1, $a0, 3
	sub.d	$a2, $a1, $a2
	ori	$a3, $zero, 64
	bgeu	$a2, $a3, .LBB4_163
.LBB4_19:
	move	$a2, $zero
.LBB4_20:                               # %for.body93.preheader
	slli.d	$a3, $a2, 3
	alsl.d	$a3, $s1, $a3, 3
	add.d	$a0, $a0, $a3
	alsl.d	$a1, $a2, $a1, 3
	sub.d	$a2, $fp, $a2
	.p2align	4, , 16
.LBB4_21:                               # %for.body93
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	st.d	$a3, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB4_21
.LBB4_22:                               # %for.end101
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s0, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s3, $a0, %got_pc_lo12(commonAlloc2)
	ld.d	$a2, $sp, 440
	ld.w	$a1, $s0, 0
	ld.w	$a0, $s3, 0
	movgr2fr.w	$fs0, $s8
	blt	$a1, $s4, .LBB4_25
# %bb.23:                               # %for.end101
	blt	$a0, $s7, .LBB4_25
# %bb.24:                               # %lor.lhs.false104.if.end129_crit_edge
	move	$s8, $a2
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB4_29
.LBB4_25:                               # %if.then107
	move	$s8, $a2
	beqz	$a1, .LBB4_28
# %bb.26:                               # %if.then107
	beqz	$a0, .LBB4_28
# %bb.27:                               # %if.then112
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(partA__align.orlgth1)
	ld.w	$a1, $s0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(partA__align.orlgth2)
	ld.w	$a0, $s3, 0
.LBB4_28:                               # %if.end113
	slt	$a2, $a1, $s4
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s4, $a2
	or	$s4, $a2, $a1
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s6, $a1, $a0
	addi.w	$a0, $s4, 10
	addi.w	$a1, $s6, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s4, $s0, 0
	st.w	$s6, $s3, 0
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
.LBB4_29:                               # %if.end129
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partA__align.cpmx1)
	ffint.s.w	$fs0, $fs0
	pcalau12i	$a2, %pc_hi20(partA__align.ijp)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(partA__align.ijp)
	move	$a0, $s2
	move	$a2, $s5
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $s4, %pc_lo12(partA__align.cpmx2)
	move	$a0, $s6
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	move	$a2, $s7
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp1)
	beqz	$s8, .LBB4_31
# %bb.30:                               # %if.then131
	move	$a5, $s8
	ld.d	$s8, $sp, 464
	move	$s6, $s4
	ld.d	$s4, $sp, 456
	ld.d	$s3, $sp, 448
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s5
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp2)
	move	$a1, $fp
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s0
	move	$a5, $s3
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.fgcp1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s3
	move	$a5, $s4
	move	$s4, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.fgcp2)
	move	$a1, $fp
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s0
	move	$a5, $s8
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB4_32
.LBB4_31:                               # %if.else
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp2)
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s7
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.fgcp1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.fgcp2)
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s7
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB4_32:                               # %if.end132
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	fcvt.d.s	$fa0, $fs0
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	blt	$s3, $a0, .LBB4_39
# %bb.33:                               # %for.body136.lr.ph
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partA__align.ogcp1)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(partA__align.fgcp1)
	bstrpick.d	$a2, $t0, 30, 0
	ori	$a4, $zero, 8
	bltu	$a2, $a4, .LBB4_36
# %bb.34:                               # %vector.memcheck563
	alsl.d	$a4, $a2, $a3, 2
	bgeu	$a1, $a4, .LBB4_157
# %bb.35:                               # %vector.memcheck563
	alsl.d	$a4, $a2, $a1, 2
	bgeu	$a3, $a4, .LBB4_157
.LBB4_36:
	move	$a4, $zero
.LBB4_37:                               # %for.body136.preheader
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a1, $a4, $a1, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB4_38:                               # %for.body136
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a1, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a1, 0
	fld.s	$fa3, $a3, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB4_38
.LBB4_39:                               # %for.cond160.preheader
	blt	$t2, $a0, .LBB4_46
# %bb.40:                               # %for.body163.lr.ph
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp2)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(partA__align.fgcp2)
	bstrpick.d	$a1, $t1, 30, 0
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB4_43
# %bb.41:                               # %vector.memcheck578
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB4_160
# %bb.42:                               # %vector.memcheck578
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB4_160
.LBB4_43:
	move	$a3, $zero
.LBB4_44:                               # %for.body163.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB4_45:                               # %for.body163
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a0, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a0, 0
	fld.s	$fa3, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB4_45
.LBB4_46:                               # %for.end186
	ld.d	$a0, $sp, 432
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 424
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 392
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(partA__align.w1)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.w2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.initverticalw)
	ld.d	$s3, $s4, %pc_lo12(partA__align.cpmx2)
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s8, $a1, %pc_lo12(partA__align.cpmx1)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(partA__align.floatwork)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $a1, %pc_lo12(partA__align.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $zero
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$s8, $sp, 256                   # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	beqz	$a0, .LBB4_53
# %bb.47:                               # %if.then188
	move	$s8, $s3
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB4_50
# %bb.48:                               # %for.body.lr.ph.i
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $s3, 30, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_49:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	add.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	fldx.s	$fa0, $a5, $a2
	fld.s	$fa1, $a7, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a7, 0
	addi.d	$a1, $a1, -1
	addi.d	$a7, $a7, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB4_49
.LBB4_50:                               # %part_imp_match_out_vead_tate_gapmap.exit
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s8
	move	$a3, $zero
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	blt	$t6, $s0, .LBB4_54
# %bb.51:                               # %for.body.lr.ph.i246
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a2
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	bstrpick.d	$a1, $t4, 30, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_52:                               # %for.body.i249
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
	bnez	$a1, .LBB4_52
	b	.LBB4_54
.LBB4_53:                               # %if.end196.critedge
	ori	$a7, $zero, 1
	move	$a0, $s5
	move	$a1, $s8
	move	$s8, $s3
	move	$a2, $s3
	move	$a3, $zero
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t6, $s0
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
.LBB4_54:                               # %if.end196
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$t7, $a0, %got_pc_lo12(outgap)
	ld.w	$t0, $t7, 0
	ori	$a0, $zero, 1
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	bne	$t0, $a0, .LBB4_63
# %bb.55:                               # %for.cond200.preheader
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB4_59
# %bb.56:                               # %iter.check
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp1)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(partA__align.fgcp1)
	addi.d	$a1, $s3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 3
	ori	$a4, $zero, 1
	bltu	$a5, $a3, .LBB4_166
.LBB4_57:                               # %for.body204.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, -4
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 2
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB4_58:                               # %for.body204
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB4_58
.LBB4_59:                               # %for.cond216.preheader
	ori	$t8, $zero, 1
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	blt	$t6, $t8, .LBB4_86
# %bb.60:                               # %iter.check685
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ogcp2)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(partA__align.fgcp2)
	addi.d	$a1, $t4, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 3
	ori	$a4, $zero, 1
	bltu	$a5, $a3, .LBB4_170
.LBB4_61:                               # %for.body220.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, -4
	alsl.d	$a3, $a4, $t3, 2
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB4_62:                               # %for.body220
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB4_62
	b	.LBB4_78
.LBB4_63:                               # %for.cond233.preheader
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	blt	$t6, $a0, .LBB4_70
# %bb.64:                               # %for.body237.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t4, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB4_68
# %bb.65:                               # %vector.ph601
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI4_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI4_1)
	addi.d	$a5, $t3, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_66:                               # %vector.body606
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvpermi.q	$xr4, $xr3, 1
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	vext2xv.d.w	$xr3, $xr3
	xvld	$xr5, $a5, 0
	xvffint.d.l	$xr3, $xr3
	xvfmul.d	$xr3, $xr3, $xr2
	xvfmul.d	$xr4, $xr4, $xr2
	xvpermi.q	$xr6, $xr5, 1
	vreplvei.w	$vr7, $vr6, 3
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr6, 2
	fcvt.d.s	$ft0, $ft0
	vextrins.d	$vr8, $vr7, 16
	vreplvei.w	$vr7, $vr6, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr6, $vr6, 0
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr7, 16
	xvpermi.q	$xr6, $xr8, 2
	vreplvei.w	$vr7, $vr5, 3
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr5, 2
	fcvt.d.s	$ft0, $ft0
	vextrins.d	$vr8, $vr7, 16
	vreplvei.w	$vr7, $vr5, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr5, $vr5, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr7, 16
	xvpermi.q	$xr5, $xr8, 2
	xvfadd.d	$xr4, $xr6, $xr4
	xvfadd.d	$xr3, $xr5, $xr3
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvpickve.d	$xr6, $xr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr6, $vr5, 16
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr6, $vr5, 32
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr6, $vr4, 48
	xvpickve.d	$xr4, $xr3, 1
	fcvt.s.d	$fa4, $fa4
	xvpickve.d	$xr5, $xr3, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr4, 16
	xvpickve.d	$xr4, $xr3, 2
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 32
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr5, $vr3, 48
	xvpermi.q	$xr5, $xr6, 2
	xvst	$xr5, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_66
# %bb.67:                               # %middle.block610
	beq	$a2, $a4, .LBB4_70
.LBB4_68:                               # %for.body237.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $t3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_69:                               # %for.body237
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a4, 0
	add.w	$a2, $a2, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB4_69
.LBB4_70:                               # %for.cond248.preheader
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB4_77
# %bb.71:                               # %for.body252.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a2, $s3, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 8
	bltu	$a3, $a4, .LBB4_75
# %bb.72:                               # %vector.ph615
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a1, $a3
	bstrins.d	$a1, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI4_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI4_1)
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_73:                               # %vector.body620
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvpermi.q	$xr4, $xr3, 1
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	vext2xv.d.w	$xr3, $xr3
	xvld	$xr5, $a5, 0
	xvffint.d.l	$xr3, $xr3
	xvfmul.d	$xr3, $xr3, $xr2
	xvfmul.d	$xr4, $xr4, $xr2
	xvpermi.q	$xr6, $xr5, 1
	vreplvei.w	$vr7, $vr6, 3
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr6, 2
	fcvt.d.s	$ft0, $ft0
	vextrins.d	$vr8, $vr7, 16
	vreplvei.w	$vr7, $vr6, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr6, $vr6, 0
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr7, 16
	xvpermi.q	$xr6, $xr8, 2
	vreplvei.w	$vr7, $vr5, 3
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr5, 2
	fcvt.d.s	$ft0, $ft0
	vextrins.d	$vr8, $vr7, 16
	vreplvei.w	$vr7, $vr5, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr5, $vr5, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr7, 16
	xvpermi.q	$xr5, $xr8, 2
	xvfadd.d	$xr4, $xr6, $xr4
	xvfadd.d	$xr3, $xr5, $xr3
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvpickve.d	$xr6, $xr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr6, $vr5, 16
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr6, $vr5, 32
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr6, $vr4, 48
	xvpickve.d	$xr4, $xr3, 1
	fcvt.s.d	$fa4, $fa4
	xvpickve.d	$xr5, $xr3, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr4, 16
	xvpickve.d	$xr4, $xr3, 2
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 32
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr5, $vr3, 48
	xvpermi.q	$xr5, $xr6, 2
	xvst	$xr5, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_73
# %bb.74:                               # %middle.block627
	beq	$a3, $a4, .LBB4_77
.LBB4_75:                               # %for.body252.preheader
	mul.d	$a3, $a0, $a1
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 2
	sub.d	$a1, $a2, $a1
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_76:                               # %for.body252
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a4, 0
	add.w	$a3, $a3, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB4_76
.LBB4_77:                               # %if.end264
	ori	$t8, $zero, 1
	blt	$t6, $t8, .LBB4_87
.LBB4_78:                               # %iter.check737
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(partA__align.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partA__align.m)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partA__align.mp)
	addi.d	$a3, $t4, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a7, $zero, 4
	ori	$a5, $zero, 1
	bgeu	$a4, $a7, .LBB4_82
.LBB4_79:                               # %for.body269.preheader
	alsl.d	$a4, $a5, $t3, 2
	addi.d	$a4, $a4, -4
	alsl.d	$a1, $a5, $a1, 2
	alsl.d	$a2, $a5, $a2, 2
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB4_80:                               # %for.body269
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	st.w	$zero, $a2, 0
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB4_80
.LBB4_81:                               # %for.end281.loopexit
	ld.w	$t0, $t7, 0
	move	$t8, $zero
	b	.LBB4_87
.LBB4_82:                               # %vector.memcheck722
	addi.d	$a7, $a1, 4
	alsl.d	$t0, $a3, $a1, 2
	alsl.d	$t1, $a3, $t3, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $t3, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_79
# %bb.83:                               # %vector.memcheck722
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB4_79
# %bb.84:                               # %vector.main.loop.iter.check739
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB4_232
# %bb.85:
	move	$a6, $zero
	b	.LBB4_236
.LBB4_86:
	ori	$t0, $zero, 1
.LBB4_87:                               # %for.end281
	slli.d	$a0, $t4, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 30
	fldx.s	$fa0, $t3, $a1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s5, $a1, %pc_lo12(partA__align.lastverticalw)
	sltu	$a1, $zero, $t0
	add.w	$a2, $a1, $s3
	ori	$a1, $zero, 2
	fst.s	$fa0, $s5, 0
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	blt	$a2, $a1, .LBB4_102
# %bb.88:                               # %for.body295.lr.ph
	st.d	$t7, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	bstrpick.d	$a1, $t4, 30, 0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sltu	$a1, $zero, $a1
	slt	$a2, $zero, $t6
	and	$a1, $a1, $a2
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a4, $a1, %pc_lo12(partA__align.ogcp2)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partA__align.ijp)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(partA__align.m)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(partA__align.mp)
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partA__align.fgcp2)
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partA__align.fgcp1)
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(partA__align.ogcp1)
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a1, $a2, 4
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a1, $a4, 4
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s7, $zero, 1
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	b	.LBB4_90
	.p2align	4, , 16
.LBB4_89:                               # %for.end361
                                        #   in Loop: Header=BB4_90 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	fldx.s	$fa0, $s3, $a1
	addi.d	$s7, $s7, 1
	fstx.s	$fa0, $s5, $a0
	move	$t3, $s3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beq	$s7, $a0, .LBB4_103
.LBB4_90:                               # %for.body295
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_92 Depth 2
                                        #     Child Loop BB4_96 Depth 2
	move	$s4, $t8
	move	$s8, $s2
	addi.d	$s6, $s7, -1
	slli.d	$s0, $s6, 2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s0
	move	$s3, $t5
	move	$s2, $t3
	fst.s	$fa0, $t3, 0
	move	$a0, $t5
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $t6
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 2
	ld.d	$a6, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_93
# %bb.91:                               # %for.body.lr.ph.i260
                                        #   in Loop: Header=BB4_90 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_92:                               # %for.body.i264
                                        #   Parent Loop BB4_90 Depth=1
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
	bnez	$a4, .LBB4_92
.LBB4_93:                               # %if.end305
                                        #   in Loop: Header=BB4_90 Depth=1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $s3, 0
	move	$t5, $s2
	move	$s2, $s8
	ld.d	$t6, $sp, 264                   # 8-byte Folded Reload
	move	$t8, $s4
	bnez	$s4, .LBB4_89
# %bb.94:                               # %for.body326.preheader
                                        #   in Loop: Header=BB4_90 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	fld.s	$fa2, $t5, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	fld.s	$fa3, $a3, 4
	slli.d	$a3, $s7, 3
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	fldx.s	$fa0, $a4, $s0
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	fldx.s	$fa1, $a4, $a0
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a3, $a3, 4
	addi.d	$a4, $s3, 4
	addi.d	$a5, $zero, -1
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	move	$t2, $t5
	b	.LBB4_96
	.p2align	4, , 16
.LBB4_95:                               # %if.end351
                                        #   in Loop: Header=BB4_96 Depth=2
	fadd.s	$fa3, $fa3, $fa4
	fcmp.cult.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	movcf2gr	$t3, $fcc0
	fld.s	$fa3, $a4, 0
	masknez	$t4, $a1, $t3
	maskeqz	$a2, $a2, $t3
	or	$a2, $a2, $t4
	fadd.s	$fa3, $fs0, $fa3
	fst.s	$fa3, $a4, 0
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	addi.d	$a3, $a3, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a4, $a4, 4
	addi.d	$a6, $a6, 4
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, -1
	beq	$t6, $a1, .LBB4_89
.LBB4_96:                               # %for.body326
                                        #   Parent Loop BB4_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t1, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa4, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	st.w	$zero, $a3, 0
	fmov.s	$fs0, $fa3
	bcnez	$fcc0, .LBB4_98
# %bb.97:                               # %if.then330
                                        #   in Loop: Header=BB4_96 Depth=2
	add.d	$t3, $a2, $a5
	st.w	$t3, $a3, 0
	fmov.s	$fs0, $fa4
.LBB4_98:                               # %if.end333
                                        #   in Loop: Header=BB4_96 Depth=2
	fld.s	$fa5, $t0, 0
	fld.s	$fa4, $a6, 0
	fadd.s	$fa6, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fs0
	bcnez	$fcc0, .LBB4_100
# %bb.99:                               # %if.then343
                                        #   in Loop: Header=BB4_96 Depth=2
	ld.w	$t3, $a7, 0
	sub.d	$t3, $s7, $t3
	st.w	$t3, $a3, 0
	fmov.s	$fs0, $fa6
.LBB4_100:                              # %if.end345
                                        #   in Loop: Header=BB4_96 Depth=2
	fadd.s	$fa6, $fa1, $fa3
	fcmp.cult.s	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB4_95
# %bb.101:                              # %if.then349
                                        #   in Loop: Header=BB4_96 Depth=2
	fst.s	$fa6, $t0, 0
	st.w	$s6, $a7, 0
	b	.LBB4_95
.LBB4_102:
	movgr2fr.w	$fs0, $zero
	bnez	$t0, .LBB4_118
	b	.LBB4_104
.LBB4_103:                              # %for.end369.loopexit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$t0, $a0, 0
	move	$t3, $s3
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	bnez	$t0, .LBB4_118
.LBB4_104:                              # %for.cond372.preheader
	bnez	$t8, .LBB4_111
# %bb.105:                              # %for.body376.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t4, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB4_109
# %bb.106:                              # %vector.ph773
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.d	$xr1, $t4
	pcalau12i	$a5, %pc_hi20(.LCPI4_2)
	xvld	$xr2, $a5, %pc_lo12(.LCPI4_2)
	pcalau12i	$a5, %pc_hi20(.LCPI4_3)
	xvld	$xr3, $a5, %pc_lo12(.LCPI4_3)
	addi.d	$a5, $t3, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_107:                              # %vector.body780
                                        # =>This Inner Loop Header: Depth=1
	xvsub.d	$xr5, $xr1, $xr2
	xvsub.d	$xr6, $xr1, $xr3
	xvpickve2gr.d	$a7, $xr6, 0
	vinsgr2vr.w	$vr7, $a7, 0
	xvpickve2gr.d	$a7, $xr6, 1
	vinsgr2vr.w	$vr7, $a7, 1
	xvpickve2gr.d	$a7, $xr6, 2
	vinsgr2vr.w	$vr7, $a7, 2
	xvpickve2gr.d	$a7, $xr6, 3
	vinsgr2vr.w	$vr7, $a7, 3
	xvpickve2gr.d	$a7, $xr5, 0
	vinsgr2vr.w	$vr6, $a7, 0
	xvpickve2gr.d	$a7, $xr5, 1
	vinsgr2vr.w	$vr6, $a7, 1
	xvpickve2gr.d	$a7, $xr5, 2
	vinsgr2vr.w	$vr6, $a7, 2
	xvpickve2gr.d	$a7, $xr5, 3
	vinsgr2vr.w	$vr6, $a7, 3
	xvpermi.q	$xr7, $xr6, 2
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
	vreplvei.w	$vr9, $vr8, 3
	fcvt.d.s	$ft1, $ft1
	vreplvei.w	$vr10, $vr8, 2
	fcvt.d.s	$ft2, $ft2
	vextrins.d	$vr10, $vr9, 16
	vreplvei.w	$vr9, $vr8, 1
	fcvt.d.s	$ft1, $ft1
	vreplvei.w	$vr8, $vr8, 0
	fcvt.d.s	$ft0, $ft0
	vextrins.d	$vr8, $vr9, 16
	xvpermi.q	$xr8, $xr10, 2
	vreplvei.w	$vr9, $vr7, 3
	fcvt.d.s	$ft1, $ft1
	vreplvei.w	$vr10, $vr7, 2
	fcvt.d.s	$ft2, $ft2
	vextrins.d	$vr10, $vr9, 16
	vreplvei.w	$vr9, $vr7, 1
	fcvt.d.s	$ft1, $ft1
	vreplvei.w	$vr7, $vr7, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr9, 16
	xvpermi.q	$xr7, $xr10, 2
	xvfadd.d	$xr6, $xr8, $xr6
	xvfadd.d	$xr5, $xr7, $xr5
	xvpickve.d	$xr7, $xr6, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr6, 0
	fcvt.s.d	$ft0, $ft0
	vextrins.w	$vr8, $vr7, 16
	xvpickve.d	$xr7, $xr6, 2
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr8, $vr7, 32
	xvpickve.d	$xr6, $xr6, 3
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr8, $vr6, 48
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr7, $vr6, 16
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr7, $vr6, 32
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr7, $vr5, 48
	xvpermi.q	$xr7, $xr8, 2
	xvst	$xr7, $a5, 0
	xvaddi.du	$xr3, $xr3, 8
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_107
# %bb.108:                              # %middle.block787
	beq	$a2, $a4, .LBB4_111
.LBB4_109:                              # %for.body376.preheader
	sub.w	$a2, $t4, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB4_110:                              # %for.body376
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
	bnez	$a1, .LBB4_110
.LBB4_111:                              # %for.cond389.preheader
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB4_118
# %bb.112:                              # %for.body393.lr.ph
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $s3, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	addi.d	$a1, $s3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a3, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a2, $a3, .LBB4_116
# %bb.113:                              # %vector.ph792
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	move	$a0, $a2
	bstrins.d	$a0, $a4, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a4, %pc_hi20(.LCPI4_4)
	vld	$vr4, $a4, %pc_lo12(.LCPI4_4)
	addi.d	$a4, $s5, 4
	lu52i.d	$a5, $zero, -1026
	xvreplgr2vr.d	$xr5, $a5
	move	$a5, $a3
	.p2align	4, , 16
.LBB4_114:                              # %vector.body799
                                        # =>This Inner Loop Header: Depth=1
	vext2xv.du.wu	$xr6, $xr4
	vld	$vr7, $a4, 0
	xvffint.d.lu	$xr6, $xr6
	xvfmul.d	$xr6, $xr6, $xr5
	xvfadd.d	$xr6, $xr2, $xr6
	vreplvei.w	$vr8, $vr7, 3
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr9, $vr7, 2
	fcvt.d.s	$ft1, $ft1
	vextrins.d	$vr9, $vr8, 16
	vreplvei.w	$vr8, $vr7, 1
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr7, $vr7, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr8, 16
	xvpermi.q	$xr7, $xr9, 2
	xvfmadd.d	$xr6, $xr3, $xr6, $xr7
	xvpickve.d	$xr7, $xr6, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr6, 0
	fcvt.s.d	$ft0, $ft0
	vextrins.w	$vr8, $vr7, 16
	xvpickve.d	$xr7, $xr6, 2
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr8, $vr7, 32
	xvpickve.d	$xr6, $xr6, 3
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr8, $vr6, 48
	vst	$vr8, $a4, 0
	vaddi.wu	$vr4, $vr4, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 16
	bnez	$a5, .LBB4_114
# %bb.115:                              # %middle.block806
	beq	$a2, $a3, .LBB4_118
.LBB4_116:                              # %for.body393.preheader
	alsl.d	$a2, $a0, $s5, 2
	sub.d	$a1, $a1, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB4_117:                              # %for.body393
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a0, 31, 0
	movgr2fr.d	$fa3, $a3
	fld.s	$fa4, $a2, 0
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fadd.d	$fa3, $fa0, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa1, $fa3, $fa4
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB4_117
.LBB4_118:                              # %if.end407
	st.d	$t0, $sp, 280                   # 8-byte Folded Spill
	move	$s0, $t3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(partA__align.mseq1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(partA__align.mseq2)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(partA__align.ijp)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s8, 0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	addi.w	$a3, $a0, 0
	add.w	$a1, $a0, $s8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	beqz	$a2, .LBB4_125
# %bb.119:                              # %if.then409
	ori	$a2, $zero, 1
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	beq	$a4, $a2, .LBB4_136
# %bb.120:                              # %if.else.i
	move	$t0, $s0
	fld.s	$fa0, $s5, 0
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	blt	$a4, $a2, .LBB4_131
# %bb.121:                              # %for.body.lr.ph.i275
	slli.d	$a2, $s8, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a4, $a2, 3
	slli.d	$a2, $a0, 32
	srai.d	$a5, $a2, 30
	bstrpick.d	$a6, $s8, 30, 0
	move	$a7, $s8
	b	.LBB4_123
	.p2align	4, , 16
.LBB4_122:                              # %for.inc.i
                                        #   in Loop: Header=BB4_123 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$s5, $s5, 4
	beqz	$a6, .LBB4_131
.LBB4_123:                              # %for.body.i277
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s5, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_122
# %bb.124:                              # %if.then11.i
                                        #   in Loop: Header=BB4_123 Depth=1
	ldx.d	$a2, $ra, $a4
	stx.w	$a7, $a2, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_122
.LBB4_125:                              # %if.else410
	ori	$a2, $zero, 1
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	beq	$a4, $a2, .LBB4_154
# %bb.126:                              # %if.else.i286
	move	$t0, $s0
	fld.s	$fa0, $s5, 0
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	blt	$a4, $a2, .LBB4_149
# %bb.127:                              # %for.body.lr.ph.i386
	slli.d	$a2, $s8, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a4, $a2, 3
	slli.d	$a2, $a0, 32
	srai.d	$a5, $a2, 30
	bstrpick.d	$a6, $s8, 30, 0
	move	$a7, $s8
	b	.LBB4_129
	.p2align	4, , 16
.LBB4_128:                              # %for.inc.i396
                                        #   in Loop: Header=BB4_129 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$s5, $s5, 4
	beqz	$a6, .LBB4_149
.LBB4_129:                              # %for.body.i389
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s5, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_128
# %bb.130:                              # %if.then11.i394
                                        #   in Loop: Header=BB4_129 Depth=1
	ldx.d	$a2, $ra, $a4
	stx.w	$a7, $a2, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_128
.LBB4_131:                              # %for.cond19.preheader.i
	ori	$a2, $zero, 1
	blt	$a3, $a2, .LBB4_136
# %bb.132:                              # %for.body22.lr.ph.i
	slli.d	$a2, $s8, 32
	srai.d	$a4, $a2, 29
	slli.d	$a2, $a0, 2
	bstrpick.d	$a2, $a2, 32, 2
	slli.d	$a5, $a2, 2
	bstrpick.d	$a6, $a0, 30, 0
	sub.d	$a7, $zero, $a0
	b	.LBB4_134
	.p2align	4, , 16
.LBB4_133:                              # %for.inc38.i
                                        #   in Loop: Header=BB4_134 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 4
	beqz	$a6, .LBB4_136
.LBB4_134:                              # %for.body22.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_133
# %bb.135:                              # %if.then27.i
                                        #   in Loop: Header=BB4_134 Depth=1
	ldx.d	$a2, $ra, $a4
	stx.w	$a7, $a2, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_133
.LBB4_136:                              # %if.end41.i
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	bltz	$a2, .LBB4_144
# %bb.137:                              # %for.body45.preheader.i
	addi.d	$a2, $s8, 1
	bstrpick.d	$a4, $a2, 31, 0
	ori	$a5, $zero, 4
	bgeu	$a4, $a5, .LBB4_139
# %bb.138:
	move	$a5, $zero
	b	.LBB4_142
.LBB4_139:                              # %vector.ph861
	pcalau12i	$a5, %pc_hi20(.LCPI4_5)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_5)
	bstrpick.d	$a2, $a2, 31, 2
	slli.d	$a5, $a2, 2
	addi.d	$a6, $ra, 16
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_140:                              # %vector.body864
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a2, $vr1, 0
	vstelm.w	$vr4, $a2, 0, 0
	vpickve2gr.d	$a2, $vr1, 1
	vstelm.w	$vr4, $a2, 0, 1
	vpickve2gr.d	$a2, $vr2, 0
	vstelm.w	$vr3, $a2, 0, 0
	vpickve2gr.d	$a2, $vr2, 1
	vstelm.w	$vr3, $a2, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_140
# %bb.141:                              # %middle.block872
	beq	$a4, $a5, .LBB4_144
.LBB4_142:                              # %for.body45.i.preheader
	alsl.d	$a2, $a5, $ra, 3
	sub.d	$a4, $a4, $a5
	addi.d	$a5, $a5, 1
	.p2align	4, , 16
.LBB4_143:                              # %for.body45.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 0
	st.w	$a5, $a6, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	bnez	$a4, .LBB4_143
.LBB4_144:                              # %for.cond53.preheader.i
	bltz	$a3, .LBB4_193
# %bb.145:                              # %iter.check878
	ld.d	$a3, $ra, 0
	addi.d	$a6, $a0, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a2, $zero, 3
	bltu	$a2, $a4, .LBB4_147
# %bb.146:
	move	$a5, $zero
	b	.LBB4_191
.LBB4_147:                              # %vector.main.loop.iter.check880
	ori	$a2, $zero, 16
	bgeu	$a4, $a2, .LBB4_184
# %bb.148:
	move	$a5, $zero
	b	.LBB4_188
.LBB4_149:                              # %for.cond19.preheader.i288
	ori	$a2, $zero, 1
	blt	$a3, $a2, .LBB4_154
# %bb.150:                              # %for.body22.lr.ph.i376
	slli.d	$a2, $s8, 32
	srai.d	$a4, $a2, 29
	slli.d	$a2, $a0, 2
	bstrpick.d	$a2, $a2, 32, 2
	slli.d	$a5, $a2, 2
	bstrpick.d	$a6, $a0, 30, 0
	sub.d	$a7, $zero, $a0
	b	.LBB4_152
	.p2align	4, , 16
.LBB4_151:                              # %for.inc38.i384
                                        #   in Loop: Header=BB4_152 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 4
	beqz	$a6, .LBB4_154
.LBB4_152:                              # %for.body22.i379
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_151
# %bb.153:                              # %if.then27.i382
                                        #   in Loop: Header=BB4_152 Depth=1
	ldx.d	$a2, $ra, $a4
	stx.w	$a7, $a2, $a5
	fmov.s	$fa0, $fa1
	b	.LBB4_151
.LBB4_154:                              # %if.end41.i291
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	bltz	$a2, .LBB4_179
# %bb.155:                              # %for.body45.preheader.i292
	addi.d	$a4, $s8, 1
	bstrpick.d	$a2, $a4, 31, 0
	ori	$a5, $zero, 4
	bgeu	$a2, $a5, .LBB4_174
# %bb.156:
	move	$a4, $zero
	b	.LBB4_177
.LBB4_157:                              # %vector.ph567
	bstrpick.d	$a4, $t0, 30, 3
	slli.d	$a4, $a4, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a5, $zero, 1023
	xvreplgr2vr.d	$xr2, $a5
	lu52i.d	$a5, $zero, 1022
	xvreplgr2vr.d	$xr3, $a5
	move	$a5, $a1
	move	$a6, $a3
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_158:                              # %vector.body570
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a5, 0
	xvpermi.q	$xr5, $xr4, 1
	vreplvei.w	$vr6, $vr5, 3
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 2
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr5, $vr5, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	xvpermi.q	$xr5, $xr7, 2
	vreplvei.w	$vr6, $vr4, 3
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 2
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr4, $vr4, 0
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr6, 16
	xvpermi.q	$xr4, $xr7, 2
	xvfsub.d	$xr5, $xr2, $xr5
	xvfsub.d	$xr4, $xr2, $xr4
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr1
	xvfmul.d	$xr4, $xr4, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr7, $vr6, 16
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr7, $vr6, 32
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr7, $vr5, 48
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvpickve.d	$xr6, $xr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr6, $vr5, 16
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr6, $vr5, 32
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	xvld	$xr5, $a6, 0
	vextrins.w	$vr6, $vr4, 48
	xvpermi.q	$xr6, $xr7, 2
	xvst	$xr6, $a5, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 3
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 2
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr4, $vr4, 0
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr6, 16
	xvpermi.q	$xr4, $xr7, 2
	vreplvei.w	$vr6, $vr5, 3
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 2
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr5, $vr5, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	xvpermi.q	$xr5, $xr7, 2
	xvfsub.d	$xr4, $xr2, $xr4
	xvfsub.d	$xr5, $xr2, $xr5
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr4, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr4, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr7, $vr6, 16
	xvpickve.d	$xr6, $xr4, 2
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr7, $vr6, 32
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr7, $vr4, 48
	xvpickve.d	$xr4, $xr5, 1
	fcvt.s.d	$fa4, $fa4
	xvpickve.d	$xr6, $xr5, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr6, $vr4, 16
	xvpickve.d	$xr4, $xr5, 2
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr6, $vr4, 32
	xvpickve.d	$xr4, $xr5, 3
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr6, $vr4, 48
	xvpermi.q	$xr6, $xr7, 2
	xvst	$xr6, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB4_158
# %bb.159:                              # %middle.block575
	beq	$a2, $a4, .LBB4_39
	b	.LBB4_37
.LBB4_160:                              # %vector.ph586
	bstrpick.d	$a3, $t1, 30, 3
	slli.d	$a3, $a3, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr2, $a4
	lu52i.d	$a4, $zero, 1022
	xvreplgr2vr.d	$xr3, $a4
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_161:                              # %vector.body591
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a4, 0
	xvpermi.q	$xr5, $xr4, 1
	vreplvei.w	$vr6, $vr5, 3
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 2
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr5, $vr5, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	xvpermi.q	$xr5, $xr7, 2
	vreplvei.w	$vr6, $vr4, 3
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 2
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr4, $vr4, 0
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr6, 16
	xvpermi.q	$xr4, $xr7, 2
	xvfsub.d	$xr5, $xr2, $xr5
	xvfsub.d	$xr4, $xr2, $xr4
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr1
	xvfmul.d	$xr4, $xr4, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr7, $vr6, 16
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr7, $vr6, 32
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr7, $vr5, 48
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvpickve.d	$xr6, $xr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr6, $vr5, 16
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr6, $vr5, 32
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	xvld	$xr5, $a5, 0
	vextrins.w	$vr6, $vr4, 48
	xvpermi.q	$xr6, $xr7, 2
	xvst	$xr6, $a4, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 3
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 2
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr4, $vr4, 0
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr6, 16
	xvpermi.q	$xr4, $xr7, 2
	vreplvei.w	$vr6, $vr5, 3
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 2
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr5, $vr5, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	xvpermi.q	$xr5, $xr7, 2
	xvfsub.d	$xr4, $xr2, $xr4
	xvfsub.d	$xr5, $xr2, $xr5
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr4, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr4, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr7, $vr6, 16
	xvpickve.d	$xr6, $xr4, 2
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr7, $vr6, 32
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr7, $vr4, 48
	xvpickve.d	$xr4, $xr5, 1
	fcvt.s.d	$fa4, $fa4
	xvpickve.d	$xr6, $xr5, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr6, $vr4, 16
	xvpickve.d	$xr4, $xr5, 2
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr6, $vr4, 32
	xvpickve.d	$xr4, $xr5, 3
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr6, $vr4, 48
	xvpermi.q	$xr6, $xr7, 2
	xvst	$xr6, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB4_161
# %bb.162:                              # %middle.block596
	beq	$a1, $a3, .LBB4_46
	b	.LBB4_44
.LBB4_163:                              # %vector.ph552
	slli.d	$a4, $s1, 3
	bstrpick.d	$a2, $fp, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 32
	add.d	$a4, $a4, $a0
	addi.d	$a4, $a4, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_164:                              # %vector.body555
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB4_164
# %bb.165:                              # %middle.block560
	beq	$a2, $fp, .LBB4_22
	b	.LBB4_20
.LBB4_166:                              # %vector.memcheck630
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a1, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_57
# %bb.167:                              # %vector.memcheck630
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB4_57
# %bb.168:                              # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB4_294
# %bb.169:
	move	$a5, $zero
	b	.LBB4_298
.LBB4_170:                              # %vector.memcheck670
	addi.d	$a5, $t3, 4
	alsl.d	$a6, $a1, $t3, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB4_61
# %bb.171:                              # %vector.memcheck670
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB4_61
# %bb.172:                              # %vector.main.loop.iter.check687
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB4_301
# %bb.173:
	move	$a5, $zero
	b	.LBB4_305
.LBB4_174:                              # %vector.ph811
	pcalau12i	$a5, %pc_hi20(.LCPI4_5)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_5)
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $ra, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB4_175:                              # %vector.body814
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
	bnez	$a6, .LBB4_175
# %bb.176:                              # %middle.block821
	beq	$a2, $a4, .LBB4_179
.LBB4_177:                              # %for.body45.i293.preheader
	alsl.d	$a5, $a4, $ra, 3
	sub.d	$a2, $a2, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB4_178:                              # %for.body45.i293
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.w	$a4, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 1
	bnez	$a2, .LBB4_178
.LBB4_179:                              # %for.cond53.preheader.i295
	bltz	$a3, .LBB4_248
# %bb.180:                              # %iter.check827
	ld.d	$a2, $ra, 0
	addi.d	$a5, $a0, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB4_182
# %bb.181:
	move	$a4, $zero
	b	.LBB4_246
.LBB4_182:                              # %vector.main.loop.iter.check829
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB4_239
# %bb.183:
	move	$a4, $zero
	b	.LBB4_243
.LBB4_184:                              # %vector.ph881
	bstrpick.d	$a2, $a6, 31, 4
	slli.d	$a5, $a2, 4
	pcalau12i	$a2, %pc_hi20(.LCPI4_6)
	xvld	$xr0, $a2, %pc_lo12(.LCPI4_6)
	addi.d	$a2, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_185:                              # %vector.body884
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a2, -32
	xvst	$xr4, $a2, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a2, $a2, 64
	bnez	$a7, .LBB4_185
# %bb.186:                              # %middle.block890
	beq	$a4, $a5, .LBB4_193
# %bb.187:                              # %vec.epilog.iter.check895
	andi	$a2, $a6, 12
	beqz	$a2, .LBB4_191
.LBB4_188:                              # %vec.epilog.ph894
	move	$a7, $a5
	pcalau12i	$a2, %pc_hi20(.LCPI4_7)
	vld	$vr0, $a2, %pc_lo12(.LCPI4_7)
	bstrpick.d	$a2, $a6, 31, 2
	slli.d	$a5, $a2, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a2, $a7, $a5
	alsl.d	$a6, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB4_189:                              # %vec.epilog.vector.body903
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a2, $a2, 4
	addi.d	$a6, $a6, 16
	bnez	$a2, .LBB4_189
# %bb.190:                              # %vec.epilog.middle.block908
	beq	$a4, $a5, .LBB4_193
.LBB4_191:                              # %for.body57.i.preheader
	alsl.d	$a2, $a5, $a3, 2
	nor	$a3, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB4_192:                              # %for.body57.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, -1
	bnez	$a4, .LBB4_192
.LBB4_193:                              # %for.cond66.preheader.i
	ori	$a4, $zero, 1
	blt	$s1, $a4, .LBB4_196
# %bb.194:                              # %for.body69.lr.ph.i
	move	$a2, $s3
	move	$a3, $s1
	.p2align	4, , 16
.LBB4_195:                              # %for.body69.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	add.d	$a6, $a5, $a1
	st.d	$a6, $a2, 0
	stx.b	$zero, $a5, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB4_195
.LBB4_196:                              # %for.cond78.preheader.i
	ld.d	$a2, $sp, 384
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	blt	$fp, $a4, .LBB4_199
# %bb.197:                              # %for.body81.lr.ph.i
	move	$a2, $s7
	move	$a4, $fp
	.p2align	4, , 16
.LBB4_198:                              # %for.body81.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	add.d	$a6, $a5, $a1
	st.d	$a6, $a2, 0
	stx.b	$zero, $a5, $a1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB4_198
.LBB4_199:                              # %for.end91.i
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	st.w	$zero, $a2, 0
	bltz	$a1, .LBB4_284
# %bb.200:                              # %for.body96.lr.ph.i
	move	$a4, $zero
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$s5, $a2, %pc_lo12(impmtx)
	bstrpick.d	$a2, $s1, 31, 0
	bstrpick.d	$a7, $fp, 31, 0
	addi.w	$a3, $zero, -1
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	ori	$t1, $zero, 1
	ori	$t2, $zero, 45
	move	$t3, $a0
	b	.LBB4_202
	.p2align	4, , 16
.LBB4_201:                              # %for.end235.i
                                        #   in Loop: Header=BB4_202 Depth=1
	addi.w	$a4, $a4, 2
	move	$s8, $t4
	blt	$a1, $a4, .LBB4_284
.LBB4_202:                              # %for.body96.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_209 Depth 2
                                        #       Child Loop BB4_210 Depth 3
                                        #       Child Loop BB4_212 Depth 3
                                        #     Child Loop BB4_217 Depth 2
                                        #       Child Loop BB4_218 Depth 3
                                        #       Child Loop BB4_220 Depth 3
                                        #     Child Loop BB4_228 Depth 2
                                        #     Child Loop BB4_231 Depth 2
	addi.w	$t5, $s8, 0
	slli.d	$a6, $t5, 3
	ldx.d	$a6, $ra, $a6
	addi.w	$t6, $t3, 0
	slli.d	$t7, $t6, 2
	ldx.w	$t8, $a6, $t7
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	bge	$a3, $t8, .LBB4_205
# %bb.203:                              # %if.else110.i
                                        #   in Loop: Header=BB4_202 Depth=1
	beqz	$t8, .LBB4_206
# %bb.204:                              # %if.then117.i
                                        #   in Loop: Header=BB4_202 Depth=1
	sub.w	$t4, $s8, $t8
	b	.LBB4_207
	.p2align	4, , 16
.LBB4_205:                              # %if.then103.i
                                        #   in Loop: Header=BB4_202 Depth=1
	addi.w	$t4, $s8, -1
	nor	$s0, $t4, $zero
	add.w	$s4, $s8, $s0
	bnez	$s4, .LBB4_209
	b	.LBB4_214
	.p2align	4, , 16
.LBB4_206:                              # %if.else124.i
                                        #   in Loop: Header=BB4_202 Depth=1
	addi.w	$t4, $s8, -1
.LBB4_207:                              # %if.end128.i
                                        #   in Loop: Header=BB4_202 Depth=1
	ld.d	$t8, $sp, 280                   # 8-byte Folded Reload
	nor	$s0, $t4, $zero
	add.w	$s4, $s8, $s0
	bnez	$s4, .LBB4_209
	b	.LBB4_214
	.p2align	4, , 16
.LBB4_208:                              # %for.end153.i
                                        #   in Loop: Header=BB4_209 Depth=2
	addi.d	$s4, $s4, -1
	beqz	$s4, .LBB4_213
.LBB4_209:                              # %for.cond130.preheader.i
                                        #   Parent Loop BB4_202 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_210 Depth 3
                                        #       Child Loop BB4_212 Depth 3
	move	$s6, $s2
	move	$ra, $s3
	move	$a6, $a2
	blt	$s1, $t1, .LBB4_211
	.p2align	4, , 16
.LBB4_210:                              # %for.body133.i
                                        #   Parent Loop BB4_202 Depth=1
                                        #     Parent Loop BB4_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $s6, 0
	ld.d	$a3, $ra, 0
	add.d	$a5, $a5, $s4
	ldx.b	$a5, $a5, $t4
	addi.d	$t0, $a3, -1
	st.d	$t0, $ra, 0
	st.b	$a5, $a3, -1
	addi.d	$a6, $a6, -1
	addi.d	$ra, $ra, 8
	addi.d	$s6, $s6, 8
	bnez	$a6, .LBB4_210
.LBB4_211:                              # %for.cond144.preheader.i
                                        #   in Loop: Header=BB4_209 Depth=2
	move	$a6, $s7
	move	$s6, $a7
	blt	$fp, $t1, .LBB4_208
	.p2align	4, , 16
.LBB4_212:                              # %for.body147.i
                                        #   Parent Loop BB4_202 Depth=1
                                        #     Parent Loop BB4_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a6, 0
	addi.d	$a5, $a3, -1
	st.d	$a5, $a6, 0
	st.b	$t2, $a3, -1
	addi.d	$s6, $s6, -1
	addi.d	$a6, $a6, 8
	bnez	$s6, .LBB4_212
	b	.LBB4_208
	.p2align	4, , 16
.LBB4_213:                              # %while.end.loopexit.i
                                        #   in Loop: Header=BB4_202 Depth=1
	add.d	$a3, $s8, $a4
	add.d	$a4, $s0, $a3
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
.LBB4_214:                              # %while.end.i
                                        #   in Loop: Header=BB4_202 Depth=1
	add.w	$t3, $t8, $t3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	beq	$t8, $a3, .LBB4_221
# %bb.215:                              # %for.cond160.preheader.preheader.i
                                        #   in Loop: Header=BB4_202 Depth=1
	nor	$t8, $t8, $zero
	b	.LBB4_217
	.p2align	4, , 16
.LBB4_216:                              # %for.end185.i
                                        #   in Loop: Header=BB4_217 Depth=2
	addi.d	$t8, $t8, -1
	addi.d	$a4, $a4, 1
	beqz	$t8, .LBB4_221
.LBB4_217:                              # %for.cond160.preheader.i
                                        #   Parent Loop BB4_202 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_218 Depth 3
                                        #       Child Loop BB4_220 Depth 3
	move	$a6, $s3
	move	$s0, $a2
	blt	$s1, $t1, .LBB4_219
	.p2align	4, , 16
.LBB4_218:                              # %for.body163.i
                                        #   Parent Loop BB4_202 Depth=1
                                        #     Parent Loop BB4_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a6, 0
	addi.d	$a5, $a3, -1
	st.d	$a5, $a6, 0
	st.b	$t2, $a3, -1
	addi.d	$s0, $s0, -1
	addi.d	$a6, $a6, 8
	bnez	$s0, .LBB4_218
.LBB4_219:                              # %for.cond171.preheader.i
                                        #   in Loop: Header=BB4_217 Depth=2
	move	$s0, $s6
	move	$s4, $s7
	move	$a6, $a7
	blt	$fp, $t1, .LBB4_216
	.p2align	4, , 16
.LBB4_220:                              # %for.body174.i
                                        #   Parent Loop BB4_202 Depth=1
                                        #     Parent Loop BB4_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $s0, 0
	ld.d	$a5, $s4, 0
	add.d	$a3, $a3, $t8
	ldx.b	$a3, $a3, $t3
	addi.d	$t0, $a5, -1
	st.d	$t0, $s4, 0
	st.b	$a3, $a5, -1
	addi.d	$a6, $a6, -1
	addi.d	$s4, $s4, 8
	addi.d	$s0, $s0, 8
	bnez	$a6, .LBB4_220
	b	.LBB4_216
	.p2align	4, , 16
.LBB4_221:                              # %while.end187.i
                                        #   in Loop: Header=BB4_202 Depth=1
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	beq	$t5, $a3, .LBB4_224
# %bb.222:                              # %while.end187.i
                                        #   in Loop: Header=BB4_202 Depth=1
	addi.w	$a3, $a0, 0
	beq	$t6, $a3, .LBB4_224
# %bb.223:                              # %if.then192.i
                                        #   in Loop: Header=BB4_202 Depth=1
	slli.d	$a3, $t5, 2
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a3, $a5, $a3
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a5
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a5, $a5, $t7
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s5, $a3
	ld.d	$a6, $sp, 272                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	fldx.s	$fa0, $a3, $a5
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
.LBB4_224:                              # %if.end201.i
                                        #   in Loop: Header=BB4_202 Depth=1
	blt	$t5, $t1, .LBB4_284
# %bb.225:                              # %if.end201.i
                                        #   in Loop: Header=BB4_202 Depth=1
	blt	$t6, $t1, .LBB4_284
# %bb.226:                              # %for.cond208.preheader.i
                                        #   in Loop: Header=BB4_202 Depth=1
	blt	$s1, $t1, .LBB4_229
# %bb.227:                              # %for.body211.lr.ph.i
                                        #   in Loop: Header=BB4_202 Depth=1
	move	$a6, $s2
	move	$t5, $s3
	move	$t6, $a2
	.p2align	4, , 16
.LBB4_228:                              # %for.body211.i
                                        #   Parent Loop BB4_202 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a6, 0
	ld.d	$a5, $t5, 0
	ldx.b	$a3, $a3, $t4
	addi.d	$t0, $a5, -1
	st.d	$t0, $t5, 0
	st.b	$a3, $a5, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$a6, $a6, 8
	bnez	$t6, .LBB4_228
.LBB4_229:                              # %for.cond222.preheader.i
                                        #   in Loop: Header=BB4_202 Depth=1
	blt	$fp, $t1, .LBB4_201
# %bb.230:                              # %for.body225.lr.ph.i
                                        #   in Loop: Header=BB4_202 Depth=1
	move	$a6, $s6
	move	$t5, $s7
	move	$t6, $a7
	.p2align	4, , 16
.LBB4_231:                              # %for.body225.i
                                        #   Parent Loop BB4_202 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a6, 0
	ld.d	$a5, $t5, 0
	ldx.b	$a3, $a3, $t3
	addi.d	$t0, $a5, -1
	st.d	$t0, $t5, 0
	st.b	$a3, $a5, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$a6, $a6, 8
	bnez	$t6, .LBB4_231
	b	.LBB4_201
.LBB4_232:                              # %vector.ph740
	move	$a6, $a4
	bstrins.d	$a6, $zero, 3, 0
	xvldrepl.w	$xr0, $a0, 0
	addi.d	$a5, $t3, 32
	addi.d	$a7, $a1, 36
	addi.d	$t0, $a2, 36
	xvrepli.b	$xr1, 0
	move	$t1, $a6
	.p2align	4, , 16
.LBB4_233:                              # %vector.body743
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a5, -32
	xvld	$xr3, $a5, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a7, -32
	xvst	$xr3, $a7, 0
	xvst	$xr1, $t0, -32
	xvst	$xr1, $t0, 0
	addi.d	$t1, $t1, -16
	addi.d	$a5, $a5, 64
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB4_233
# %bb.234:                              # %middle.block750
	beq	$a4, $a6, .LBB4_81
# %bb.235:                              # %vec.epilog.iter.check755
	andi	$a5, $a4, 12
	beqz	$a5, .LBB4_308
.LBB4_236:                              # %vec.epilog.ph754
	move	$a7, $a4
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a5, $a4
	bstrins.d	$a5, $t0, 1, 0
	vldrepl.w	$vr0, $a0, 0
	slli.d	$t1, $a6, 2
	alsl.d	$t0, $a6, $t3, 2
	addi.d	$t2, $t1, 4
	add.d	$t1, $a1, $t2
	add.d	$t2, $a2, $t2
	sub.d	$a6, $a6, $a7
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB4_237:                              # %vec.epilog.vector.body760
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $t1, 0
	vst	$vr1, $t2, 0
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$a6, $a6, 4
	addi.d	$t2, $t2, 16
	bnez	$a6, .LBB4_237
# %bb.238:                              # %vec.epilog.middle.block767
	bne	$a4, $a7, .LBB4_79
	b	.LBB4_81
.LBB4_239:                              # %vector.ph830
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI4_6)
	xvld	$xr0, $a6, %pc_lo12(.LCPI4_6)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_240:                              # %vector.body833
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB4_240
# %bb.241:                              # %middle.block839
	beq	$a3, $a4, .LBB4_248
# %bb.242:                              # %vec.epilog.iter.check844
	andi	$a6, $a5, 12
	beqz	$a6, .LBB4_246
.LBB4_243:                              # %vec.epilog.ph843
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI4_7)
	vld	$vr0, $a4, %pc_lo12(.LCPI4_7)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB4_244:                              # %vec.epilog.vector.body851
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB4_244
# %bb.245:                              # %vec.epilog.middle.block856
	beq	$a3, $a4, .LBB4_248
.LBB4_246:                              # %for.body57.i297.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB4_247:                              # %for.body57.i297
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB4_247
.LBB4_248:                              # %for.cond66.preheader.i300
	ori	$a2, $zero, 1
	blt	$s1, $a2, .LBB4_251
# %bb.249:                              # %for.body69.lr.ph.i370
	move	$a3, $s3
	move	$a4, $s1
	.p2align	4, , 16
.LBB4_250:                              # %for.body69.i373
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	add.d	$a6, $a5, $a1
	st.d	$a6, $a3, 0
	stx.b	$zero, $a5, $a1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_250
.LBB4_251:                              # %for.cond78.preheader.i301
	blt	$fp, $a2, .LBB4_254
# %bb.252:                              # %for.body81.lr.ph.i364
	move	$a2, $s7
	move	$a3, $fp
	.p2align	4, , 16
.LBB4_253:                              # %for.body81.i367
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	add.d	$a5, $a4, $a1
	st.d	$a5, $a2, 0
	stx.b	$zero, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB4_253
.LBB4_254:                              # %for.end91.i302
	bltz	$a1, .LBB4_284
# %bb.255:                              # %for.body96.lr.ph.i303
	move	$a3, $zero
	bstrpick.d	$a2, $s1, 31, 0
	bstrpick.d	$a4, $fp, 31, 0
	addi.w	$a5, $zero, -1
	ori	$a6, $zero, 1
	ori	$a7, $zero, 45
	b	.LBB4_257
	.p2align	4, , 16
.LBB4_256:                              # %for.end221.i
                                        #   in Loop: Header=BB4_257 Depth=1
	addi.w	$a3, $a3, 2
	move	$s8, $t0
	blt	$a1, $a3, .LBB4_284
.LBB4_257:                              # %for.body96.i304
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_264 Depth 2
                                        #       Child Loop BB4_265 Depth 3
                                        #       Child Loop BB4_267 Depth 3
                                        #     Child Loop BB4_272 Depth 2
                                        #       Child Loop BB4_273 Depth 3
                                        #       Child Loop BB4_275 Depth 3
                                        #     Child Loop BB4_280 Depth 2
                                        #     Child Loop BB4_283 Depth 2
	addi.w	$t1, $s8, 0
	slli.d	$t0, $t1, 3
	ldx.d	$t0, $ra, $t0
	addi.w	$t2, $a0, 0
	slli.d	$t3, $t2, 2
	ldx.w	$t3, $t0, $t3
	bge	$a5, $t3, .LBB4_260
# %bb.258:                              # %if.else110.i310
                                        #   in Loop: Header=BB4_257 Depth=1
	beqz	$t3, .LBB4_261
# %bb.259:                              # %if.then117.i312
                                        #   in Loop: Header=BB4_257 Depth=1
	sub.w	$t0, $s8, $t3
	b	.LBB4_262
	.p2align	4, , 16
.LBB4_260:                              # %if.then103.i362
                                        #   in Loop: Header=BB4_257 Depth=1
	addi.w	$t0, $s8, -1
	nor	$t4, $t0, $zero
	add.w	$t5, $s8, $t4
	bnez	$t5, .LBB4_264
	b	.LBB4_269
	.p2align	4, , 16
.LBB4_261:                              # %if.else124.i360
                                        #   in Loop: Header=BB4_257 Depth=1
	addi.w	$t0, $s8, -1
.LBB4_262:                              # %if.end128.i314
                                        #   in Loop: Header=BB4_257 Depth=1
	move	$t3, $a5
	nor	$t4, $t0, $zero
	add.w	$t5, $s8, $t4
	bnez	$t5, .LBB4_264
	b	.LBB4_269
	.p2align	4, , 16
.LBB4_263:                              # %for.end153.i321
                                        #   in Loop: Header=BB4_264 Depth=2
	addi.d	$t5, $t5, -1
	beqz	$t5, .LBB4_268
.LBB4_264:                              # %for.cond130.preheader.i319
                                        #   Parent Loop BB4_257 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_265 Depth 3
                                        #       Child Loop BB4_267 Depth 3
	move	$t6, $s2
	move	$t7, $s3
	move	$t8, $a2
	blt	$s1, $a6, .LBB4_266
	.p2align	4, , 16
.LBB4_265:                              # %for.body133.i355
                                        #   Parent Loop BB4_257 Depth=1
                                        #     Parent Loop BB4_264 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $t6, 0
	ld.d	$s4, $t7, 0
	add.d	$s0, $s0, $t5
	ldx.b	$s0, $s0, $t0
	addi.d	$s5, $s4, -1
	st.d	$s5, $t7, 0
	st.b	$s0, $s4, -1
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	bnez	$t8, .LBB4_265
.LBB4_266:                              # %for.cond144.preheader.i320
                                        #   in Loop: Header=BB4_264 Depth=2
	move	$t6, $s7
	move	$t7, $a4
	blt	$fp, $a6, .LBB4_263
	.p2align	4, , 16
.LBB4_267:                              # %for.body147.i352
                                        #   Parent Loop BB4_257 Depth=1
                                        #     Parent Loop BB4_264 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t8, $t6, 0
	addi.d	$s0, $t8, -1
	st.d	$s0, $t6, 0
	st.b	$a7, $t8, -1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 8
	bnez	$t7, .LBB4_267
	b	.LBB4_263
	.p2align	4, , 16
.LBB4_268:                              # %while.end.loopexit.i323
                                        #   in Loop: Header=BB4_257 Depth=1
	add.d	$a3, $s8, $a3
	add.d	$a3, $t4, $a3
.LBB4_269:                              # %while.end.i324
                                        #   in Loop: Header=BB4_257 Depth=1
	add.w	$a0, $t3, $a0
	beq	$t3, $a5, .LBB4_276
# %bb.270:                              # %for.cond160.preheader.preheader.i326
                                        #   in Loop: Header=BB4_257 Depth=1
	nor	$t3, $t3, $zero
	b	.LBB4_272
	.p2align	4, , 16
.LBB4_271:                              # %for.end185.i329
                                        #   in Loop: Header=BB4_272 Depth=2
	addi.d	$t3, $t3, -1
	addi.d	$a3, $a3, 1
	beqz	$t3, .LBB4_276
.LBB4_272:                              # %for.cond160.preheader.i327
                                        #   Parent Loop BB4_257 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_273 Depth 3
                                        #       Child Loop BB4_275 Depth 3
	move	$t4, $s3
	move	$t5, $a2
	blt	$s1, $a6, .LBB4_274
	.p2align	4, , 16
.LBB4_273:                              # %for.body163.i349
                                        #   Parent Loop BB4_257 Depth=1
                                        #     Parent Loop BB4_272 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t6, $t4, 0
	addi.d	$t7, $t6, -1
	st.d	$t7, $t4, 0
	st.b	$a7, $t6, -1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB4_273
.LBB4_274:                              # %for.cond171.preheader.i328
                                        #   in Loop: Header=BB4_272 Depth=2
	move	$t4, $s6
	move	$t5, $s7
	move	$t6, $a4
	blt	$fp, $a6, .LBB4_271
	.p2align	4, , 16
.LBB4_275:                              # %for.body174.i344
                                        #   Parent Loop BB4_257 Depth=1
                                        #     Parent Loop BB4_272 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t7, $t4, 0
	ld.d	$t8, $t5, 0
	add.d	$t7, $t7, $t3
	ldx.b	$t7, $t7, $a0
	addi.d	$s0, $t8, -1
	st.d	$s0, $t5, 0
	st.b	$t7, $t8, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB4_275
	b	.LBB4_271
	.p2align	4, , 16
.LBB4_276:                              # %while.end187.i332
                                        #   in Loop: Header=BB4_257 Depth=1
	blt	$t1, $a6, .LBB4_284
# %bb.277:                              # %while.end187.i332
                                        #   in Loop: Header=BB4_257 Depth=1
	blt	$t2, $a6, .LBB4_284
# %bb.278:                              # %for.cond194.preheader.i
                                        #   in Loop: Header=BB4_257 Depth=1
	blt	$s1, $a6, .LBB4_281
# %bb.279:                              # %for.body197.lr.ph.i
                                        #   in Loop: Header=BB4_257 Depth=1
	move	$t1, $s2
	move	$t2, $s3
	move	$t3, $a2
	.p2align	4, , 16
.LBB4_280:                              # %for.body197.i
                                        #   Parent Loop BB4_257 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t1, 0
	ld.d	$t5, $t2, 0
	ldx.b	$t4, $t4, $t0
	addi.d	$t6, $t5, -1
	st.d	$t6, $t2, 0
	st.b	$t4, $t5, -1
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	bnez	$t3, .LBB4_280
.LBB4_281:                              # %for.cond208.preheader.i335
                                        #   in Loop: Header=BB4_257 Depth=1
	blt	$fp, $a6, .LBB4_256
# %bb.282:                              # %for.body211.lr.ph.i337
                                        #   in Loop: Header=BB4_257 Depth=1
	move	$t1, $s6
	move	$t2, $s7
	move	$t3, $a4
	.p2align	4, , 16
.LBB4_283:                              # %for.body211.i339
                                        #   Parent Loop BB4_257 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t1, 0
	ld.d	$t5, $t2, 0
	ldx.b	$t4, $t4, $a0
	addi.d	$t6, $t5, -1
	st.d	$t6, $t2, 0
	st.b	$t4, $t5, -1
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	bnez	$t3, .LBB4_283
	b	.LBB4_256
.LBB4_284:                              # %if.end412
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB4_293
# %bb.285:                              # %if.end412
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB4_293
# %bb.286:                              # %if.end423
	ori	$s0, $zero, 1
	blt	$s1, $s0, .LBB4_289
.LBB4_287:                              # %for.body427.lr.ph
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(partA__align.mseq1)
	.p2align	4, , 16
.LBB4_288:                              # %for.body427
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB4_288
.LBB4_289:                              # %for.cond436.preheader
	blt	$fp, $s0, .LBB4_292
# %bb.290:                              # %for.body439.lr.ph
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(partA__align.mseq2)
	.p2align	4, , 16
.LBB4_291:                              # %for.body439
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, -1
	addi.d	$s6, $s6, 8
	bnez	$fp, .LBB4_291
.LBB4_292:                              # %for.end447
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB4_293:                              # %if.then421
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
	ori	$s0, $zero, 1
	bge	$s1, $s0, .LBB4_287
	b	.LBB4_289
.LBB4_294:                              # %vector.ph645
	move	$a5, $a3
	xvldrepl.w	$xr0, $a0, 0
	bstrins.d	$a5, $zero, 3, 0
	addi.d	$a4, $a2, 32
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 36
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_295:                              # %vector.body648
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a6, -32
	xvst	$xr2, $a6, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB4_295
# %bb.296:                              # %middle.block657
	beq	$a3, $a5, .LBB4_59
# %bb.297:                              # %vec.epilog.iter.check
	andi	$a4, $a3, 12
	beqz	$a4, .LBB4_309
.LBB4_298:                              # %vec.epilog.ph
	move	$a6, $a3
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a7, $a5, $a2, 2
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$t0, $a5, $t0, 2
	addi.d	$t0, $t0, 4
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB4_299:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $t0, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB4_299
# %bb.300:                              # %vec.epilog.middle.block
	bne	$a3, $a6, .LBB4_57
	b	.LBB4_59
.LBB4_301:                              # %vector.ph688
	move	$a5, $a3
	xvldrepl.w	$xr0, $a0, 0
	bstrins.d	$a5, $zero, 3, 0
	addi.d	$a4, $a2, 32
	addi.d	$a6, $t3, 36
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_302:                              # %vector.body691
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a6, -32
	xvst	$xr2, $a6, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB4_302
# %bb.303:                              # %middle.block700
	beq	$a3, $a5, .LBB4_78
# %bb.304:                              # %vec.epilog.iter.check705
	andi	$a4, $a3, 12
	beqz	$a4, .LBB4_310
.LBB4_305:                              # %vec.epilog.ph704
	move	$a6, $a3
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a7, $a5, $a2, 2
	alsl.d	$t0, $a5, $t3, 2
	addi.d	$t0, $t0, 4
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB4_306:                              # %vec.epilog.vector.body710
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $t0, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB4_306
# %bb.307:                              # %vec.epilog.middle.block718
	bne	$a3, $a6, .LBB4_61
	b	.LBB4_78
.LBB4_308:
	addi.d	$a5, $a6, 1
	b	.LBB4_79
.LBB4_309:
	addi.d	$a4, $a5, 1
	b	.LBB4_57
.LBB4_310:
	addi.d	$a4, $a5, 1
	b	.LBB4_61
.Lfunc_end4:
	.size	partA__align, .Lfunc_end4-partA__align
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
	.type	part_imp_match_init.impalloclen,@object # @part_imp_match_init.impalloclen
	.local	part_imp_match_init.impalloclen
	.comm	part_imp_match_init.impalloclen,4,4
	.type	part_imp_match_init.nocount1,@object # @part_imp_match_init.nocount1
	.local	part_imp_match_init.nocount1
	.comm	part_imp_match_init.nocount1,8,8
	.type	part_imp_match_init.nocount2,@object # @part_imp_match_init.nocount2
	.local	part_imp_match_init.nocount2
	.comm	part_imp_match_init.nocount2,8,8
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

	.type	partA__align.m,@object          # @partA__align.m
	.local	partA__align.m
	.comm	partA__align.m,8,8
	.type	partA__align.ijp,@object        # @partA__align.ijp
	.local	partA__align.ijp
	.comm	partA__align.ijp,8,8
	.type	partA__align.mp,@object         # @partA__align.mp
	.local	partA__align.mp
	.comm	partA__align.mp,8,8
	.type	partA__align.w1,@object         # @partA__align.w1
	.local	partA__align.w1
	.comm	partA__align.w1,8,8
	.type	partA__align.w2,@object         # @partA__align.w2
	.local	partA__align.w2
	.comm	partA__align.w2,8,8
	.type	partA__align.match,@object      # @partA__align.match
	.local	partA__align.match
	.comm	partA__align.match,8,8
	.type	partA__align.initverticalw,@object # @partA__align.initverticalw
	.local	partA__align.initverticalw
	.comm	partA__align.initverticalw,8,8
	.type	partA__align.lastverticalw,@object # @partA__align.lastverticalw
	.local	partA__align.lastverticalw
	.comm	partA__align.lastverticalw,8,8
	.type	partA__align.mseq1,@object      # @partA__align.mseq1
	.local	partA__align.mseq1
	.comm	partA__align.mseq1,8,8
	.type	partA__align.mseq2,@object      # @partA__align.mseq2
	.local	partA__align.mseq2
	.comm	partA__align.mseq2,8,8
	.type	partA__align.mseq,@object       # @partA__align.mseq
	.local	partA__align.mseq
	.comm	partA__align.mseq,8,8
	.type	partA__align.ogcp1,@object      # @partA__align.ogcp1
	.local	partA__align.ogcp1
	.comm	partA__align.ogcp1,8,8
	.type	partA__align.ogcp2,@object      # @partA__align.ogcp2
	.local	partA__align.ogcp2
	.comm	partA__align.ogcp2,8,8
	.type	partA__align.fgcp1,@object      # @partA__align.fgcp1
	.local	partA__align.fgcp1
	.comm	partA__align.fgcp1,8,8
	.type	partA__align.fgcp2,@object      # @partA__align.fgcp2
	.local	partA__align.fgcp2
	.comm	partA__align.fgcp2,8,8
	.type	partA__align.cpmx1,@object      # @partA__align.cpmx1
	.local	partA__align.cpmx1
	.comm	partA__align.cpmx1,8,8
	.type	partA__align.cpmx2,@object      # @partA__align.cpmx2
	.local	partA__align.cpmx2
	.comm	partA__align.cpmx2,8,8
	.type	partA__align.intwork,@object    # @partA__align.intwork
	.local	partA__align.intwork
	.comm	partA__align.intwork,8,8
	.type	partA__align.floatwork,@object  # @partA__align.floatwork
	.local	partA__align.floatwork
	.comm	partA__align.floatwork,8,8
	.type	partA__align.orlgth1,@object    # @partA__align.orlgth1
	.local	partA__align.orlgth1
	.comm	partA__align.orlgth1,4,4
	.type	partA__align.orlgth2,@object    # @partA__align.orlgth2
	.local	partA__align.orlgth2
	.comm	partA__align.orlgth2,4,4
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
