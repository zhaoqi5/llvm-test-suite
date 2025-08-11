	.file	"Qalignmm.c"
	.text
	.globl	imp_match_out_scQ               # -- Begin function imp_match_out_scQ
	.p2align	5
	.type	imp_match_out_scQ,@function
imp_match_out_scQ:                      # @imp_match_out_scQ
# %bb.0:                                # %entry
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	imp_match_out_scQ, .Lfunc_end0-imp_match_out_scQ
                                        # -- End function
	.globl	imp_rnaQ                        # -- Begin function imp_rnaQ
	.p2align	5
	.type	imp_rnaQ,@function
imp_rnaQ:                               # @imp_rnaQ
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
.Lfunc_end1:
	.size	imp_rnaQ, .Lfunc_end1-imp_rnaQ
                                        # -- End function
	.globl	imp_match_init_strictQ          # -- Begin function imp_match_init_strictQ
	.p2align	5
	.type	imp_match_init_strictQ,@function
imp_match_init_strictQ:                 # @imp_match_init_strictQ
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s5, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$s3, $a1
	pcalau12i	$s6, %pc_hi20(impalloclen)
	ld.w	$a0, $s6, %pc_lo12(impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strictQ.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strictQ.nocount2)
	blt	$a0, $a1, .LBB2_11
# %bb.1:                                # %entry
	addi.w	$a1, $s5, 2
	blt	$a0, $a1, .LBB2_11
# %bb.2:                                # %if.end14
	ori	$a1, $zero, 1
	blt	$s4, $a1, .LBB2_18
.LBB2_3:                                # %for.cond16.preheader.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictQ.nocount1)
	blt	$s3, $a1, .LBB2_19
# %bb.4:                                # %for.cond16.preheader.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_5:                                # %if.else.us
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a4, $zero
.LBB2_6:                                # %for.inc33.us
                                        #   in Loop: Header=BB2_7 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB2_23
.LBB2_7:                                # %for.cond16.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	move	$a4, $s3
	move	$a5, $s1
	move	$a3, $s3
	.p2align	4, , 16
.LBB2_8:                                # %for.body18.us
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB2_10
# %bb.9:                                # %for.inc.us
                                        #   in Loop: Header=BB2_8 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB2_8
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_10:                               # %for.end.us
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB2_6
	b	.LBB2_5
.LBB2_11:                               # %if.then
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	beqz	$a0, .LBB2_13
# %bb.12:                               # %if.then3
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB2_13:                               # %if.end
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictQ.nocount1)
	beqz	$a0, .LBB2_15
# %bb.14:                               # %if.then5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_15:                               # %if.end6
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictQ.nocount2)
	beqz	$a0, .LBB2_17
# %bb.16:                               # %if.then8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_17:                               # %if.end9
	slt	$a0, $s5, $s4
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	st.w	$a0, $s6, %pc_lo12(impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(impalloclen)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(impalloclen)
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strictQ.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(imp_match_init_strictQ.nocount2)
	ori	$a1, $zero, 1
	bge	$s4, $a1, .LBB2_3
.LBB2_18:                               # %for.cond36.preheader.thread
	bge	$s5, $a1, .LBB2_24
	b	.LBB2_39
.LBB2_19:                               # %for.cond16.preheader.lr.ph.split
	beqz	$s3, .LBB2_21
# %bb.20:                               # %for.cond16.preheader.preheader
	ori	$a1, $zero, 1
	b	.LBB2_22
.LBB2_21:                               # %for.cond16.preheader.us131.preheader
	move	$a1, $zero
.LBB2_22:                               # %for.cond36.preheader
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_23:                               # %for.cond36.preheader
	blez	$s5, .LBB2_39
.LBB2_24:                               # %for.cond40.preheader.lr.ph
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictQ.nocount2)
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB2_32
# %bb.25:                               # %for.cond40.preheader.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_26:                               # %if.else61.us
                                        #   in Loop: Header=BB2_28 Depth=1
	move	$a4, $zero
.LBB2_27:                               # %for.inc65.us
                                        #   in Loop: Header=BB2_28 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s5, .LBB2_36
.LBB2_28:                               # %for.cond40.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_29 Depth 2
	move	$a4, $s2
	move	$a5, $s0
	move	$a3, $s2
	.p2align	4, , 16
.LBB2_29:                               # %for.body43.us
                                        #   Parent Loop BB2_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB2_31
# %bb.30:                               # %for.inc53.us
                                        #   in Loop: Header=BB2_29 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB2_29
	b	.LBB2_26
	.p2align	4, , 16
.LBB2_31:                               # %for.end55.us
                                        #   in Loop: Header=BB2_28 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB2_27
	b	.LBB2_26
.LBB2_32:                               # %for.cond40.preheader.lr.ph.split
	beqz	$s2, .LBB2_34
# %bb.33:                               # %for.cond40.preheader.preheader
	ori	$a1, $zero, 1
	b	.LBB2_35
.LBB2_34:                               # %for.cond40.preheader.us145.preheader
	move	$a1, $zero
.LBB2_35:                               # %for.cond68.preheader
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_36:                               # %for.cond68.preheader
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB2_39
# %bb.37:                               # %for.cond72.preheader.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(impmtx)
	slli.d	$s5, $s5, 2
	.p2align	4, , 16
.LBB2_38:                               # %for.cond72.preheader.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	bnez	$s4, .LBB2_38
.LBB2_39:                               # %for.end85
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB2_77
# %bb.40:                               # %for.cond90.preheader.lr.ph
	blt	$s2, $a0, .LBB2_77
# %bb.41:                               # %for.cond90.preheader.us.preheader
	pcalau12i	$a0, %got_pc_hi20(fastathreshold)
	ld.d	$a2, $a0, %got_pc_lo12(fastathreshold)
	ld.d	$a0, $sp, 120
	ld.d	$a1, $sp, 112
	fld.d	$fa0, $a2, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	move	$a3, $zero
	ori	$a4, $zero, 45
	b	.LBB2_43
	.p2align	4, , 16
.LBB2_42:                               # %for.cond90.for.inc302_crit_edge.us
                                        #   in Loop: Header=BB2_43 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s3, .LBB2_77
.LBB2_43:                               # %for.cond90.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_45 Depth 2
                                        #       Child Loop BB2_48 Depth 3
                                        #         Child Loop BB2_49 Depth 4
                                        #         Child Loop BB2_53 Depth 4
                                        #         Child Loop BB2_57 Depth 4
                                        #         Child Loop BB2_61 Depth 4
                                        #         Child Loop BB2_65 Depth 4
	slli.d	$a5, $a3, 3
	fldx.d	$fa1, $fp, $a5
	ldx.d	$a5, $a0, $a5
	move	$a6, $zero
	alsl.d	$a7, $a3, $s1, 3
	b	.LBB2_45
	.p2align	4, , 16
.LBB2_44:                               # %for.inc299.us
                                        #   in Loop: Header=BB2_45 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB2_42
.LBB2_45:                               # %for.body93.us
                                        #   Parent Loop BB2_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_48 Depth 3
                                        #         Child Loop BB2_49 Depth 4
                                        #         Child Loop BB2_53 Depth 4
                                        #         Child Loop BB2_57 Depth 4
                                        #         Child Loop BB2_61 Depth 4
                                        #         Child Loop BB2_65 Depth 4
	slli.d	$t2, $a6, 3
	ldx.d	$t0, $a5, $t2
	beqz	$t0, .LBB2_44
# %bb.46:                               # %while.body.lr.ph.us
                                        #   in Loop: Header=BB2_45 Depth=2
	fldx.d	$fa2, $a1, $t2
	fmul.d	$fa2, $fa1, $fa2
	ld.d	$t1, $a7, 0
	ldx.d	$t2, $s0, $t2
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	nor	$t3, $t1, $zero
	nor	$t4, $t2, $zero
	b	.LBB2_48
	.p2align	4, , 16
.LBB2_47:                               # %while.end297.us
                                        #   in Loop: Header=BB2_48 Depth=3
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB2_44
.LBB2_48:                               # %while.body.us
                                        #   Parent Loop BB2_43 Depth=1
                                        #     Parent Loop BB2_45 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_49 Depth 4
                                        #         Child Loop BB2_53 Depth 4
                                        #         Child Loop BB2_57 Depth 4
                                        #         Child Loop BB2_61 Depth 4
                                        #         Child Loop BB2_65 Depth 4
	ld.w	$s4, $t0, 24
	addi.d	$t8, $zero, -1
	move	$t7, $t1
	.p2align	4, , 16
.LBB2_49:                               # %while.cond107.us
                                        #   Parent Loop BB2_43 Depth=1
                                        #     Parent Loop BB2_45 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t5, $t7, 0
	beqz	$t5, .LBB2_52
# %bb.50:                               # %while.body111.us
                                        #   in Loop: Header=BB2_49 Depth=4
	addi.d	$t5, $t5, -45
	sltu	$t5, $zero, $t5
	add.w	$t8, $t8, $t5
	addi.d	$t7, $t7, 1
	bne	$t8, $s4, .LBB2_49
# %bb.51:                               #   in Loop: Header=BB2_48 Depth=3
	move	$t8, $s4
.LBB2_52:                               # %while.end.us
                                        #   in Loop: Header=BB2_48 Depth=3
	ld.w	$s5, $t0, 28
	add.w	$t5, $t7, $t3
	move	$t6, $t5
	beq	$s4, $s5, .LBB2_56
	.p2align	4, , 16
.LBB2_53:                               # %while.cond132.us
                                        #   Parent Loop BB2_43 Depth=1
                                        #     Parent Loop BB2_45 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t6, $t7, 0
	beqz	$t6, .LBB2_55
# %bb.54:                               # %while.body136.us
                                        #   in Loop: Header=BB2_53 Depth=4
	addi.d	$t6, $t6, -45
	sltu	$t6, $zero, $t6
	add.w	$t8, $t8, $t6
	addi.d	$t7, $t7, 1
	bne	$t8, $s5, .LBB2_53
.LBB2_55:                               # %while.end149.us
                                        #   in Loop: Header=BB2_48 Depth=3
	add.w	$t6, $t7, $t3
.LBB2_56:                               # %if.end157.us
                                        #   in Loop: Header=BB2_48 Depth=3
	ld.w	$s6, $t0, 32
	addi.d	$s5, $zero, -1
	move	$s4, $t2
	.p2align	4, , 16
.LBB2_57:                               # %while.cond160.us
                                        #   Parent Loop BB2_43 Depth=1
                                        #     Parent Loop BB2_45 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $s4, 0
	beqz	$t7, .LBB2_60
# %bb.58:                               # %while.body164.us
                                        #   in Loop: Header=BB2_57 Depth=4
	addi.d	$t7, $t7, -45
	sltu	$t7, $zero, $t7
	add.w	$s5, $s5, $t7
	addi.d	$s4, $s4, 1
	bne	$s5, $s6, .LBB2_57
# %bb.59:                               #   in Loop: Header=BB2_48 Depth=3
	move	$s5, $s6
.LBB2_60:                               # %while.end177.us
                                        #   in Loop: Header=BB2_48 Depth=3
	ld.w	$s7, $t0, 36
	add.w	$t7, $s4, $t4
	move	$t8, $t7
	beq	$s6, $s7, .LBB2_64
	.p2align	4, , 16
.LBB2_61:                               # %while.cond191.us
                                        #   Parent Loop BB2_43 Depth=1
                                        #     Parent Loop BB2_45 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t8, $s4, 0
	beqz	$t8, .LBB2_63
# %bb.62:                               # %while.body195.us
                                        #   in Loop: Header=BB2_61 Depth=4
	addi.d	$t8, $t8, -45
	sltu	$t8, $zero, $t8
	add.w	$s5, $s5, $t8
	addi.d	$s4, $s4, 1
	bne	$s5, $s7, .LBB2_61
.LBB2_63:                               # %while.end208.us
                                        #   in Loop: Header=BB2_48 Depth=3
	add.w	$t8, $s4, $t4
.LBB2_64:                               # %if.end216.us
                                        #   in Loop: Header=BB2_48 Depth=3
	add.d	$s4, $t1, $t5
	add.d	$s5, $t2, $t7
	.p2align	4, , 16
.LBB2_65:                               # %while.cond229.us
                                        #   Parent Loop BB2_43 Depth=1
                                        #     Parent Loop BB2_45 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s7, $s4, 0
	beqz	$s7, .LBB2_47
# %bb.66:                               # %land.rhs.us
                                        #   in Loop: Header=BB2_65 Depth=4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB2_47
# %bb.67:                               # %while.body234.us
                                        #   in Loop: Header=BB2_65 Depth=4
	beq	$s7, $a4, .LBB2_70
# %bb.68:                               # %while.body234.us
                                        #   in Loop: Header=BB2_65 Depth=4
	beq	$s6, $a4, .LBB2_70
# %bb.69:                               # %if.then241.us
                                        #   in Loop: Header=BB2_65 Depth=4
	slli.d	$s6, $t5, 3
	ldx.d	$s6, $a2, $s6
	fld.s	$fa3, $t0, 64
	slli.d	$s7, $t7, 2
	fldx.s	$fa4, $s6, $s7
	fmadd.s	$fa3, $fa3, $fa2, $fa4
	fstx.s	$fa3, $s6, $s7
	addi.w	$t5, $t5, 1
	addi.w	$t7, $t7, 1
	addi.d	$s4, $s4, 1
	b	.LBB2_74
	.p2align	4, , 16
.LBB2_70:                               # %if.else251.us
                                        #   in Loop: Header=BB2_65 Depth=4
	bne	$s7, $a4, .LBB2_72
# %bb.71:                               # %land.lhs.true266.us
                                        #   in Loop: Header=BB2_65 Depth=4
	addi.w	$t5, $t5, 1
	addi.d	$s4, $s4, 1
.LBB2_72:                               # %land.lhs.true255.us
                                        #   in Loop: Header=BB2_65 Depth=4
	bne	$s6, $a4, .LBB2_75
# %bb.73:                               # %if.then281.us
                                        #   in Loop: Header=BB2_65 Depth=4
	addi.w	$t7, $t7, 1
.LBB2_74:                               # %if.end289.us
                                        #   in Loop: Header=BB2_65 Depth=4
	addi.d	$s5, $s5, 1
.LBB2_75:                               # %if.end289.us
                                        #   in Loop: Header=BB2_65 Depth=4
	blt	$t6, $t5, .LBB2_47
# %bb.76:                               # %if.end289.us
                                        #   in Loop: Header=BB2_65 Depth=4
	bge	$t8, $t7, .LBB2_65
	b	.LBB2_47
.LBB2_77:                               # %for.end304
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end2:
	.size	imp_match_init_strictQ, .Lfunc_end2-imp_match_init_strictQ
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Q__align
.LCPI3_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI3_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI3_3:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI3_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI3_7:
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
.LCPI3_2:
	.word	0x461c4000                      # float 1.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_5:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI3_6:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI3_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	Q__align
	.p2align	5
	.type	Q__align,@function
Q__align:                               # @Q__align
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	st.d	$s4, $sp, 520                   # 8-byte Folded Spill
	st.d	$s5, $sp, 512                   # 8-byte Folded Spill
	st.d	$s6, $sp, 504                   # 8-byte Folded Spill
	st.d	$s7, $sp, 496                   # 8-byte Folded Spill
	st.d	$s8, $sp, 488                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 480                  # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	pcalau12i	$s4, %pc_hi20(Q__align.orlgth1)
	ld.w	$s6, $s4, %pc_lo12(Q__align.orlgth1)
	ld.w	$t0, $t0, 0
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	move	$s7, $a5
	move	$s3, $a4
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	move	$s8, $a2
	move	$s5, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(Q__align.mseq1)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.mseq2)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bnez	$s6, .LBB3_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Q__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, %pc_lo12(Q__align.orlgth1)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.mseq2)
.LBB3_2:                                # %if.end
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$s2, $a0
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Q__align.orlgth2)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$s0, $a1, %pc_lo12(Q__align.orlgth2)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.w	$a6, $a0, 0
	pcalau12i	$a0, %pc_hi20(Q__align.w1)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.w2)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.initverticalw)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.lastverticalw)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.m)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.mp)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.mseq)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.digf1)
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.digf2)
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.diaf1)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.diaf2)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz1)
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz2)
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapf1)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapf2)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.ogcp1g)
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.ogcp2g)
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fgcp1g)
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fgcp2g)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_h_dg_n1_p)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_h_dg_n2_p)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_h_dg_n1_p)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_h_dg_n2_p)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_t_fg_h_dg_n1_p)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_t_fg_h_dg_n2_p)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_t_og_h_dg_n1_p)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_t_og_h_dg_n2_p)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz_n1)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz_n2)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.cpmx1)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.cpmx2)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.floatwork)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.intwork)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	st.d	$s5, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$a6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	blt	$s6, $fp, .LBB3_5
# %bb.3:                                # %if.end
	blt	$s0, $a6, .LBB3_5
# %bb.4:
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	bge	$s3, $a0, .LBB3_9
	b	.LBB3_11
.LBB3_5:                                # %if.then12
	ori	$a0, $zero, 1
	pcalau12i	$fp, %pc_hi20(Q__align.match)
	blt	$s6, $a0, .LBB3_8
# %bb.6:                                # %if.then12
	blt	$s0, $a0, .LBB3_8
# %bb.7:                                # %if.then17
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(Q__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, %pc_lo12(Q__align.orlgth1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(Q__align.orlgth2)
.LBB3_8:                                # %if.end18
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a0
	addi.w	$s1, $s6, 100
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$s2, $s0, 100
	addi.w	$s4, $s0, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.w1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.w2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(Q__align.match)
	addi.w	$s5, $s6, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.initverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.lastverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.m)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.mp)
	add.w	$a1, $s2, $s1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $fp, %pc_lo12(Q__align.mseq)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.digf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.digf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.diaf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.diaf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.ogcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.ogcp2g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fgcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fgcp2g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz_n1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz_n2)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.cpmx2)
	slt	$a0, $s2, $s1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	addi.w	$s3, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.intwork)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(Q__align.orlgth1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$s0, $a0, %pc_lo12(Q__align.orlgth2)
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	blt	$s3, $a0, .LBB3_11
.LBB3_9:                                # %for.body.lr.ph
	ld.d	$a1, $fp, %pc_lo12(Q__align.mseq)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.mseq1)
	move	$a3, $s3
	.p2align	4, , 16
.LBB3_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $s1, 0
	stx.b	$zero, $a5, $s2
	addi.d	$s1, $s1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB3_10
.LBB3_11:                               # %for.cond130.preheader
	blt	$s7, $a0, .LBB3_14
# %bb.12:                               # %for.body133.lr.ph
	ld.d	$a1, $fp, %pc_lo12(Q__align.mseq)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mseq2)
	alsl.d	$a1, $s3, $a1, 3
	move	$a2, $s7
	move	$a3, $s5
	.p2align	4, , 16
.LBB3_13:                               # %for.body133
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a6
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_13
.LBB3_14:                               # %for.end145
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc2)
	ld.d	$s4, $sp, 584
	ld.w	$a1, $fp, 0
	ld.w	$a0, $s1, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a2
	blt	$a1, $s6, .LBB3_17
# %bb.15:                               # %for.end145
	blt	$a0, $s0, .LBB3_17
# %bb.16:                               # %lor.lhs.false148.if.end173_crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB3_21
.LBB3_17:                               # %if.then151
	beqz	$a1, .LBB3_20
# %bb.18:                               # %if.then151
	beqz	$a0, .LBB3_20
# %bb.19:                               # %if.then156
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$s6, $a0, %pc_lo12(Q__align.orlgth1)
	ld.w	$a1, $fp, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(Q__align.orlgth2)
	ld.w	$a0, $s1, 0
.LBB3_20:                               # %if.end157
	slt	$a2, $a1, $s6
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s6, $a2
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
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
.LBB3_21:                               # %if.end173
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.cpmx1)
	ffint.s.w	$fa0, $fs0
	xvst	$xr0, $sp, 368                  # 32-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(Q__align.ijp)
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(Q__align.ijp)
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a2, $s8
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.cpmx2)
	move	$a0, $s5
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$s1, $sp, 408                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s7
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	beqz	$s4, .LBB3_23
# %bb.22:                               # %if.then175
	ld.d	$s5, $sp, 608
	ld.d	$s3, $sp, 600
	ld.d	$s6, $sp, 592
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	move	$a1, $s7
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s6
	move	$a6, $s5
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp1g)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp2g)
	move	$a1, $s7
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s6
	move	$a6, $s5
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf1)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf2)
	move	$a1, $s7
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s6
	move	$a6, $s5
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf1)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s3
	move	$s3, $fp
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf2)
	move	$a1, $s7
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s1
	move	$a5, $s6
	move	$a6, $s5
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf2)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $s3
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	move	$a5, $s4
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz2)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $s3
	move	$a4, $s1
	move	$a5, $s4
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	b	.LBB3_24
.LBB3_23:                               # %if.else
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp1g)
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp2g)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf1)
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf2)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf1)
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf2)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf1)
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf2)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz1)
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz2)
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
.LBB3_24:                               # %if.end176
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	addi.w	$a0, $zero, -1
	xvld	$xr19, $sp, 368                 # 32-byte Folded Reload
	fcvt.d.s	$fa0, $ft11
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	move	$ra, $s1
	blt	$s1, $a0, .LBB3_29
# %bb.25:                               # %for.body181.lr.ph
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.digf2)
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.og_h_dg_n2_p)
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp2g)
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align.gapz2)
	ld.d	$t0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.gapz_n2)
	addi.d	$t3, $s8, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	bgeu	$t1, $t2, .LBB3_44
# %bb.26:
	move	$t2, $zero
.LBB3_27:                               # %for.body181.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB3_28:                               # %for.body181
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
	bnez	$t1, .LBB3_28
.LBB3_29:                               # %for.end255
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	blt	$s2, $a0, .LBB3_34
# %bb.30:                               # %for.body260.lr.ph
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.digf1)
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.og_h_dg_n1_p)
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp1g)
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align.fg_h_dg_n1_p)
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	ld.d	$a7, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align.gapz1)
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.gapz_n1)
	addi.d	$t3, $s4, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	bgeu	$t1, $t2, .LBB3_77
# %bb.31:
	move	$t2, $zero
.LBB3_32:                               # %for.body260.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB3_33:                               # %for.body260
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
	bnez	$t1, .LBB3_33
.LBB3_34:                               # %for.end334
	pcalau12i	$a0, %got_pc_hi20(RNAscoremtx)
	ld.d	$a1, $a0, %got_pc_lo12(RNAscoremtx)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t3, $a0, %pc_lo12(Q__align.w1)
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.bu	$a0, $a1, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t4, $a1, %pc_lo12(Q__align.w2)
	ori	$a1, $zero, 114
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	move	$s0, $t3
	move	$s1, $t4
	bne	$a0, $a1, .LBB3_37
# %bb.35:                               # %if.else339
	beqz	$s2, .LBB3_110
# %bb.36:                               # %while.body.preheader.i
	ld.d	$s3, $s6, %pc_lo12(Q__align.initverticalw)
	slli.d	$a0, $s4, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_38
.LBB3_37:                               # %if.then338
	ld.d	$s3, $s6, %pc_lo12(Q__align.initverticalw)
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.cpmx2)
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align.cpmx1)
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align.floatwork)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a3, $zero
	move	$a4, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB3_38:                               # %if.end340
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	xvld	$xr19, $sp, 368                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$t3, $s0
	move	$t4, $s1
	beqz	$a0, .LBB3_43
# %bb.39:                               # %if.then342
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB3_42
# %bb.40:                               # %for.body.lr.ph.i
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $s4, 30, 0
	.p2align	4, , 16
.LBB3_41:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s3, 0
	addi.d	$s3, $s3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_41
.LBB3_42:
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	b	.LBB3_112
.LBB3_43:
	ori	$a0, $zero, 1
	b	.LBB3_111
.LBB3_44:                               # %vector.memcheck
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB3_321
# %bb.45:                               # %vector.memcheck
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB3_321
# %bb.46:                               # %vector.memcheck
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB3_321
# %bb.47:                               # %vector.memcheck
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB3_321
# %bb.48:                               # %vector.memcheck
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB3_321
# %bb.49:                               # %vector.memcheck
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB3_321
# %bb.50:                               # %vector.memcheck
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB3_321
# %bb.51:                               # %vector.memcheck
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB3_321
# %bb.52:                               # %vector.memcheck
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_321
# %bb.53:                               # %vector.memcheck
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_321
# %bb.54:                               # %vector.memcheck
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_321
# %bb.55:                               # %vector.memcheck
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_321
# %bb.56:                               # %vector.memcheck
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_321
# %bb.57:                               # %vector.memcheck
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_321
# %bb.58:                               # %vector.memcheck
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB3_321
# %bb.59:                               # %vector.memcheck
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_321
# %bb.60:                               # %vector.memcheck
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_321
# %bb.61:                               # %vector.memcheck
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_321
# %bb.62:                               # %vector.memcheck
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_321
# %bb.63:                               # %vector.memcheck
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_321
# %bb.64:                               # %vector.memcheck
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_27
# %bb.65:                               # %vector.memcheck
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_27
# %bb.66:                               # %vector.memcheck
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_27
# %bb.67:                               # %vector.memcheck
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_27
# %bb.68:                               # %vector.memcheck
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_27
# %bb.69:                               # %vector.memcheck
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB3_27
# %bb.70:                               # %vector.memcheck
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_27
# %bb.71:                               # %vector.memcheck
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_27
# %bb.72:                               # %vector.memcheck
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_27
# %bb.73:                               # %vector.memcheck
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB3_27
# %bb.74:                               # %vector.ph
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
	move	$s2, $t0
	move	$s4, $t2
	.p2align	4, , 16
.LBB3_75:                               # %vector.body
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
	xvpickve.d	$xr13, $xr12, 1
	fcvt.s.d	$ft5, $ft5
	xvpickve.d	$xr14, $xr12, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr12, 2
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve.d	$xr12, $xr12, 3
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 3
	xvpickve.d	$xr12, $xr11, 0
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 4
	xvpickve.d	$xr12, $xr11, 1
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 5
	xvpickve.d	$xr12, $xr11, 2
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 6
	xvpickve.d	$xr11, $xr11, 3
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
	xvpickve.d	$xr17, $xr16, 1
	fcvt.s.d	$ft9, $ft9
	xvpickve.d	$xr18, $xr16, 0
	fcvt.s.d	$ft10, $ft10
	xvinsve0.w	$xr18, $xr17, 1
	xvpickve.d	$xr17, $xr16, 2
	fcvt.s.d	$ft9, $ft9
	xvinsve0.w	$xr18, $xr17, 2
	xvpickve.d	$xr16, $xr16, 3
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 3
	xvpickve.d	$xr16, $xr15, 0
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 4
	xvpickve.d	$xr16, $xr15, 1
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 5
	xvpickve.d	$xr16, $xr15, 2
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 6
	xvpickve.d	$xr15, $xr15, 3
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
	xvpickve.d	$xr13, $xr10, 1
	fcvt.s.d	$ft5, $ft5
	xvpickve.d	$xr14, $xr10, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr10, 2
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve.d	$xr10, $xr10, 3
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 3
	xvpickve.d	$xr10, $xr9, 0
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 4
	xvpickve.d	$xr10, $xr9, 1
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 5
	xvpickve.d	$xr10, $xr9, 2
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 6
	xvpickve.d	$xr9, $xr9, 3
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
	xvpickve.d	$xr7, $xr6, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr6, 0
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.d	$xr7, $xr6, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve.d	$xr6, $xr6, 3
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 3
	xvpickve.d	$xr6, $xr5, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 4
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 5
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 6
	xvpickve.d	$xr5, $xr5, 3
	xvld	$xr6, $s3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 7
	xvst	$xr8, $s0, 0
	xvfsub.s	$xr5, $xr4, $xr6
	xvst	$xr5, $s2, 0
	addi.d	$s4, $s4, -8
	addi.d	$s2, $s2, 32
	addi.d	$s3, $s3, 32
	addi.d	$s0, $s0, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$s4, .LBB3_75
# %bb.76:                               # %middle.block
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	bne	$t1, $t2, .LBB3_27
	b	.LBB3_29
.LBB3_77:                               # %vector.memcheck748
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB3_322
# %bb.78:                               # %vector.memcheck748
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB3_322
# %bb.79:                               # %vector.memcheck748
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB3_322
# %bb.80:                               # %vector.memcheck748
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB3_322
# %bb.81:                               # %vector.memcheck748
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB3_322
# %bb.82:                               # %vector.memcheck748
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB3_322
# %bb.83:                               # %vector.memcheck748
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB3_322
# %bb.84:                               # %vector.memcheck748
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB3_322
# %bb.85:                               # %vector.memcheck748
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_322
# %bb.86:                               # %vector.memcheck748
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_322
# %bb.87:                               # %vector.memcheck748
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_322
# %bb.88:                               # %vector.memcheck748
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_322
# %bb.89:                               # %vector.memcheck748
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_322
# %bb.90:                               # %vector.memcheck748
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_322
# %bb.91:                               # %vector.memcheck748
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB3_322
# %bb.92:                               # %vector.memcheck748
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_322
# %bb.93:                               # %vector.memcheck748
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_322
# %bb.94:                               # %vector.memcheck748
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_322
# %bb.95:                               # %vector.memcheck748
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_322
# %bb.96:                               # %vector.memcheck748
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_322
# %bb.97:                               # %vector.memcheck748
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_32
# %bb.98:                               # %vector.memcheck748
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_32
# %bb.99:                               # %vector.memcheck748
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_32
# %bb.100:                              # %vector.memcheck748
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_32
# %bb.101:                              # %vector.memcheck748
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB3_32
# %bb.102:                              # %vector.memcheck748
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB3_32
# %bb.103:                              # %vector.memcheck748
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_32
# %bb.104:                              # %vector.memcheck748
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_32
# %bb.105:                              # %vector.memcheck748
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_32
# %bb.106:                              # %vector.memcheck748
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB3_32
# %bb.107:                              # %vector.ph879
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
	move	$s2, $t0
	move	$s4, $t2
	.p2align	4, , 16
.LBB3_108:                              # %vector.body884
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
	xvpickve.d	$xr13, $xr12, 1
	fcvt.s.d	$ft5, $ft5
	xvpickve.d	$xr14, $xr12, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr12, 2
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve.d	$xr12, $xr12, 3
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 3
	xvpickve.d	$xr12, $xr11, 0
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 4
	xvpickve.d	$xr12, $xr11, 1
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 5
	xvpickve.d	$xr12, $xr11, 2
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 6
	xvpickve.d	$xr11, $xr11, 3
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
	xvpickve.d	$xr17, $xr16, 1
	fcvt.s.d	$ft9, $ft9
	xvpickve.d	$xr18, $xr16, 0
	fcvt.s.d	$ft10, $ft10
	xvinsve0.w	$xr18, $xr17, 1
	xvpickve.d	$xr17, $xr16, 2
	fcvt.s.d	$ft9, $ft9
	xvinsve0.w	$xr18, $xr17, 2
	xvpickve.d	$xr16, $xr16, 3
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 3
	xvpickve.d	$xr16, $xr15, 0
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 4
	xvpickve.d	$xr16, $xr15, 1
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 5
	xvpickve.d	$xr16, $xr15, 2
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 6
	xvpickve.d	$xr15, $xr15, 3
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
	xvpickve.d	$xr13, $xr10, 1
	fcvt.s.d	$ft5, $ft5
	xvpickve.d	$xr14, $xr10, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr10, 2
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve.d	$xr10, $xr10, 3
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 3
	xvpickve.d	$xr10, $xr9, 0
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 4
	xvpickve.d	$xr10, $xr9, 1
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 5
	xvpickve.d	$xr10, $xr9, 2
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 6
	xvpickve.d	$xr9, $xr9, 3
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
	xvpickve.d	$xr7, $xr6, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr6, 0
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.d	$xr7, $xr6, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve.d	$xr6, $xr6, 3
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 3
	xvpickve.d	$xr6, $xr5, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 4
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 5
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 6
	xvpickve.d	$xr5, $xr5, 3
	xvld	$xr6, $s3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 7
	xvst	$xr8, $s0, 0
	xvfsub.s	$xr5, $xr4, $xr6
	xvst	$xr5, $s2, 0
	addi.d	$s4, $s4, -8
	addi.d	$s2, $s2, 32
	addi.d	$s3, $s3, 32
	addi.d	$s0, $s0, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$s4, .LBB3_108
# %bb.109:                              # %middle.block898
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	bne	$t1, $t2, .LBB3_32
	b	.LBB3_34
.LBB3_110:                              # %if.end340.thread
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
.LBB3_111:                              # %if.end343
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
.LBB3_112:                              # %if.end343
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	slli.d	$s3, $s8, 32
	pcalau12i	$a2, %pc_hi20(.LCPI3_2)
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB3_115
# %bb.113:                              # %if.else348
	beqz	$ra, .LBB3_139
# %bb.114:                              # %while.body.preheader.i415
	slli.d	$a0, $s8, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $t3
	move	$a1, $zero
	move	$fp, $ra
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_116
.LBB3_115:                              # %if.then347
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.cpmx1)
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align.cpmx2)
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align.floatwork)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $t3
	move	$a3, $zero
	move	$a4, $ra
	move	$fp, $ra
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB3_116:                              # %if.end349
	sltui	$a0, $fp, 1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	move	$ra, $fp
	xvld	$xr19, $sp, 368                 # 32-byte Folded Reload
	move	$t3, $s0
	move	$t4, $s1
	bnez	$a0, .LBB3_122
# %bb.117:                              # %iter.check
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $a0, 0
	bstrpick.d	$a0, $s8, 31, 0
	ori	$a2, $zero, 4
	bltu	$a0, $a2, .LBB3_120
# %bb.118:                              # %vector.memcheck901
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 3
	alsl.d	$a2, $s8, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a3, $a1, $a2
	bgeu	$t3, $a3, .LBB3_167
# %bb.119:                              # %vector.memcheck901
	add.d	$a2, $t3, $a2
	bgeu	$a1, $a2, .LBB3_167
.LBB3_120:
	move	$a2, $a1
	move	$a3, $s8
	move	$a4, $t3
	.p2align	4, , 16
.LBB3_121:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a3, .LBB3_121
.LBB3_122:                              # %if.end352
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB3_132
.LBB3_123:                              # %if.then355
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.og_h_dg_n2_p)
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.ogcp2g)
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_h_dg_n1_p)
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.fgcp1g)
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.fg_h_dg_n2_p)
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp2g)
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a2, 0
	fld.s	$fa6, $a3, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_h_dg_n1_p)
	ld.d	$a2, $s6, %pc_lo12(Q__align.initverticalw)
	movgr2fr.w	$fa7, $zero
	fmadd.s	$fa0, $fa0, $fa1, $fa7
	fld.s	$fa1, $a0, 0
	fld.s	$fa7, $a2, 0
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmadd.s	$fa0, $fa6, $fa1, $fa0
	fadd.s	$fa1, $fa0, $fa7
	fst.s	$fa1, $a2, 0
	fld.s	$fa1, $t3, 0
	fadd.s	$fa0, $fa0, $fa1
	ori	$a5, $zero, 1
	fst.s	$fa0, $t3, 0
	blt	$s2, $a5, .LBB3_127
# %bb.124:                              # %for.body376.lr.ph
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n2)
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	addi.d	$a4, $s4, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a6, $a4, -1
	ori	$a7, $zero, 8
	bgeu	$a6, $a7, .LBB3_155
.LBB3_125:                              # %for.body376.preheader
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a2, $a5, $a2, 2
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_126:                              # %for.body376
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a3, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB3_126
.LBB3_127:                              # %for.cond393.preheader
	blez	$ra, .LBB3_152
# %bb.128:                              # %for.body397.lr.ph
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n1)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	addi.d	$a3, $s8, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a5, $a3, -1
	ori	$a6, $zero, 8
	ori	$a4, $zero, 1
	bgeu	$a5, $a6, .LBB3_161
.LBB3_129:                              # %for.body397.preheader
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a5, $a4, $t3, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB3_130:                              # %for.body397
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a5, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a5, 0
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a2, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB3_130
.LBB3_131:                              # %if.end446.thread604
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	st.w	$zero, $a0, 0
	b	.LBB3_148
.LBB3_132:                              # %for.cond415.preheader
	blt	$ra, $a0, .LBB3_140
# %bb.133:                              # %for.body419.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s8, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_137
# %bb.134:                              # %vector.ph942
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI3_1)
	addi.d	$a5, $t3, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_135:                              # %vector.body947
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
	xvpickve.d	$xr5, $xr3, 1
	fcvt.s.d	$fa5, $fa5
	xvpickve.d	$xr6, $xr3, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr6, $xr5, 1
	xvpickve.d	$xr5, $xr3, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr6, $xr5, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 3
	xvpickve.d	$xr3, $xr4, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 4
	xvpickve.d	$xr3, $xr4, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 5
	xvpickve.d	$xr3, $xr4, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 6
	xvpickve.d	$xr3, $xr4, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 7
	xvst	$xr6, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_135
# %bb.136:                              # %middle.block952
	beq	$a2, $a4, .LBB3_140
.LBB3_137:                              # %for.body419.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $t3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_138:                              # %for.body419
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
	bnez	$a1, .LBB3_138
	b	.LBB3_140
.LBB3_139:                              # %if.end352.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_123
.LBB3_140:                              # %for.cond430.preheader
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB3_147
# %bb.141:                              # %for.body434.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a2, $s6, %pc_lo12(Q__align.initverticalw)
	addi.d	$a3, $s4, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 8
	bltu	$a4, $a5, .LBB3_145
# %bb.142:                              # %vector.ph957
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a1, $a4
	bstrins.d	$a1, $a6, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a6, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI3_1)
	addi.d	$a6, $a2, 4
	lu52i.d	$a7, $zero, -1026
	xvreplgr2vr.d	$xr2, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_143:                              # %vector.body962
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
	xvpickve.d	$xr5, $xr3, 1
	fcvt.s.d	$fa5, $fa5
	xvpickve.d	$xr6, $xr3, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr6, $xr5, 1
	xvpickve.d	$xr5, $xr3, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr6, $xr5, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 3
	xvpickve.d	$xr3, $xr4, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 4
	xvpickve.d	$xr3, $xr4, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 5
	xvpickve.d	$xr3, $xr4, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 6
	xvpickve.d	$xr3, $xr4, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 7
	xvst	$xr6, $a6, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB3_143
# %bb.144:                              # %middle.block969
	beq	$a4, $a5, .LBB3_147
.LBB3_145:                              # %for.body434.preheader
	mul.d	$a4, $a0, $a1
	alsl.d	$a2, $a1, $a2, 2
	sub.d	$a1, $a3, $a1
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_146:                              # %for.body434
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a2, 0
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a2, 0
	add.w	$a4, $a4, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB3_146
.LBB3_147:                              # %if.end446
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	ori	$a1, $zero, 1
	st.w	$zero, $a0, 0
	blt	$ra, $a1, .LBB3_153
.LBB3_148:                              # %iter.check1052
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.mp)
	addi.d	$a2, $s8, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	ori	$a5, $zero, 1
	bltu	$a3, $a4, .LBB3_184
# %bb.149:                              # %vector.memcheck1048
	sub.d	$a4, $a0, $t3
	addi.d	$a4, $a4, 4
	ori	$a6, $zero, 64
	bltu	$a4, $a6, .LBB3_184
# %bb.150:                              # %vector.main.loop.iter.check1054
	ori	$a5, $zero, 16
	lu12i.w	$a4, 287172
	bgeu	$a3, $a5, .LBB3_169
# %bb.151:
	move	$a6, $zero
	b	.LBB3_173
.LBB3_152:                              # %if.end446.thread
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	st.w	$zero, $a0, 0
.LBB3_153:                              # %for.end463
	ori	$t2, $zero, 1
	bnez	$ra, .LBB3_187
# %bb.154:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	b	.LBB3_188
.LBB3_155:                              # %vector.memcheck972
	addi.d	$a7, $a2, 4
	alsl.d	$t1, $a4, $a2, 2
	addi.d	$t0, $a0, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a0, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB3_125
# %bb.156:                              # %vector.memcheck972
	addi.d	$t0, $a1, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB3_125
# %bb.157:                              # %vector.memcheck972
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB3_125
# %bb.158:                              # %vector.ph992
	move	$t1, $a6
	bstrins.d	$t1, $zero, 2, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	ori	$t2, $zero, 1
	move	$a5, $a6
	xvldrepl.w	$xr0, $a0, 4
	bstrins.d	$a5, $t2, 2, 0
	fmul.s	$fa1, $fa1, $fa2
	xvreplve0.w	$xr1, $xr1
	move	$t2, $t1
	.p2align	4, , 16
.LBB3_159:                              # %vector.body995
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
	bnez	$t2, .LBB3_159
# %bb.160:                              # %middle.block1007
	bne	$a6, $t1, .LBB3_125
	b	.LBB3_127
.LBB3_161:                              # %vector.memcheck1010
	addi.d	$a6, $t3, 4
	alsl.d	$t0, $a3, $t3, 2
	addi.d	$a7, $a0, 8
	sltu	$a7, $a6, $a7
	sltu	$t1, $a0, $t0
	and	$a7, $a7, $t1
	bnez	$a7, .LBB3_129
# %bb.162:                              # %vector.memcheck1010
	addi.d	$a7, $a1, 4
	sltu	$a7, $a6, $a7
	sltu	$t1, $a1, $t0
	and	$a7, $a7, $t1
	bnez	$a7, .LBB3_129
# %bb.163:                              # %vector.memcheck1010
	addi.d	$a7, $a2, 4
	alsl.d	$t1, $a3, $a2, 2
	sltu	$t1, $a6, $t1
	sltu	$t0, $a7, $t0
	and	$t0, $t1, $t0
	bnez	$t0, .LBB3_129
# %bb.164:                              # %vector.ph1030
	move	$t0, $a5
	bstrins.d	$t0, $zero, 2, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	ori	$t1, $zero, 1
	move	$a4, $a5
	xvldrepl.w	$xr0, $a0, 4
	bstrins.d	$a4, $t1, 2, 0
	fmul.s	$fa1, $fa1, $fa2
	xvreplve0.w	$xr1, $xr1
	move	$t1, $t0
	.p2align	4, , 16
.LBB3_165:                              # %vector.body1033
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a6, 0
	xvld	$xr3, $a7, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvfmul.s	$xr3, $xr0, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvst	$xr2, $a6, 0
	addi.d	$a6, $a6, 32
	addi.d	$t1, $t1, -8
	addi.d	$a7, $a7, 32
	bnez	$t1, .LBB3_165
# %bb.166:                              # %middle.block1045
	bne	$a5, $t0, .LBB3_129
	b	.LBB3_131
.LBB3_167:                              # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB3_176
# %bb.168:
	move	$a5, $zero
	b	.LBB3_180
.LBB3_169:                              # %vector.ph1055
	move	$a5, $zero
	move	$a6, $a3
	bstrins.d	$a6, $zero, 3, 0
	xvreplve0.w	$xr0, $xr19
	addi.d	$a7, $a1, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a4
	move	$t0, $a6
	.p2align	4, , 16
.LBB3_170:                              # %vector.body1060
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t1, $a7, $a5
	add.d	$t2, $t3, $a5
	xvldx	$xr3, $t3, $a5
	xvld	$xr4, $t2, 32
	xvst	$xr1, $t1, -32
	xvstx	$xr1, $a7, $a5
	xvfmadd.s	$xr3, $xr0, $xr2, $xr3
	xvfmadd.s	$xr4, $xr0, $xr2, $xr4
	add.d	$t1, $a0, $a5
	xvst	$xr3, $t1, 4
	xvst	$xr4, $t1, 36
	addi.d	$t0, $t0, -16
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB3_170
# %bb.171:                              # %middle.block1065
	beq	$a3, $a6, .LBB3_186
# %bb.172:                              # %vec.epilog.iter.check1070
	andi	$a5, $a3, 12
	beqz	$a5, .LBB3_183
.LBB3_173:                              # %vec.epilog.ph1069
	move	$a7, $a3
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a5, $a3
	bstrins.d	$a5, $t0, 1, 0
	vreplvei.w	$vr0, $vr19, 0
	addi.d	$t0, $a1, 4
	slli.d	$t1, $a6, 2
	sub.d	$a6, $a6, $a7
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a4
	.p2align	4, , 16
.LBB3_174:                              # %vec.epilog.vector.body1077
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $t3, $t1
	vstx	$vr1, $t0, $t1
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a4, $a0, $t1
	vst	$vr3, $a4, 4
	addi.d	$a6, $a6, 4
	addi.d	$t1, $t1, 16
	bnez	$a6, .LBB3_174
# %bb.175:                              # %vec.epilog.middle.block1082
	bne	$a3, $a7, .LBB3_184
	b	.LBB3_186
.LBB3_176:                              # %vector.ph911
	bstrpick.d	$a2, $s8, 31, 4
	slli.d	$a5, $a2, 4
	addi.d	$a2, $t3, 32
	addi.d	$a3, $a1, 32
	move	$a4, $a5
	.p2align	4, , 16
.LBB3_177:                              # %vector.body914
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB3_177
# %bb.178:                              # %middle.block922
	beq	$a0, $a5, .LBB3_122
# %bb.179:                              # %vec.epilog.iter.check
	andi	$a2, $s8, 12
	beqz	$a2, .LBB3_320
.LBB3_180:                              # %vec.epilog.ph
	bstrpick.d	$a4, $s8, 31, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a2, $a4, $a1, 4
	andi	$a3, $s8, 3
	alsl.d	$a4, $a4, $t3, 4
	alsl.d	$a7, $a5, $t3, 2
	alsl.d	$a1, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_181:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a7, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB3_181
# %bb.182:                              # %vec.epilog.middle.block
	bne	$a0, $a6, .LBB3_121
	b	.LBB3_122
.LBB3_183:
	addi.d	$a5, $a6, 1
.LBB3_184:                              # %for.body452.preheader
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	fld.s	$fa0, $a3, %pc_lo12(.LCPI3_2)
	slli.d	$a3, $a5, 2
	addi.d	$a4, $t3, -4
	sub.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB3_185:                              # %for.body452
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a4, $a3
	stx.w	$zero, $a1, $a3
	fmadd.s	$fa1, $ft11, $fa0, $fa1
	fstx.s	$fa1, $a0, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB3_185
.LBB3_186:
	move	$t2, $zero
.LBB3_187:                              # %if.else468
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $s3, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $t3, $a1
	st.d	$t2, $sp, 440                   # 8-byte Folded Spill
	move	$t2, $zero
.LBB3_188:                              # %if.end473
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$s0, $a1, %got_pc_lo12(outgap)
	ld.w	$a1, $s0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(Q__align.lastverticalw)
	sltu	$a2, $zero, $a1
	add.w	$a4, $a2, $s4
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 432                   # 8-byte Folded Spill
	fst.s	$fa0, $a3, 0
	st.d	$a4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	blt	$a4, $a2, .LBB3_219
# %bb.189:                              # %for.body482.lr.ph
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$t5, $s6, %pc_lo12(Q__align.initverticalw)
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.cpmx1)
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.cpmx2)
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.floatwork)
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.intwork)
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	slli.d	$a1, $s8, 2
	bstrpick.d	$a1, $a1, 33, 2
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.mp)
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.gapz_n2)
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align.og_h_dg_n2_p)
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align.fg_h_dg_n2_p)
	addi.d	$s1, $a3, 8
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp2g)
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align.ogcp2g)
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	st.d	$t0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	st.d	$t0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.og_h_dg_n1_p)
	st.d	$t0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.fg_h_dg_n1_p)
	st.d	$t0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.gapz_n1)
	st.d	$t0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.fgcp1g)
	st.d	$t0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.ogcp1g)
	st.d	$t0, $sp, 264                   # 8-byte Folded Spill
	ori	$t0, $zero, 0
	lu32i.d	$t0, -1
	add.d	$t0, $s3, $t0
	srai.d	$t0, $t0, 30
	st.d	$t0, $sp, 416                   # 8-byte Folded Spill
	addi.w	$t0, $s8, -1
	st.d	$t0, $sp, 240                   # 8-byte Folded Spill
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t1, $t0, 2
	addi.d	$t1, $t1, 4
	st.d	$t1, $sp, 128                   # 8-byte Folded Spill
	addi.d	$t1, $t0, 1
	bstrpick.d	$t0, $t1, 32, 4
	slli.d	$t6, $t0, 4
	slli.d	$t0, $t0, 6
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$t0, $t1, 32, 2
	slli.d	$t7, $t0, 2
	slli.d	$t0, $t0, 4
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s4, $a0, 4
	addi.d	$s2, $a1, 4
	addi.d	$s6, $a2, 4
	addi.d	$s0, $a4, 4
	addi.d	$s7, $a5, 4
	addi.d	$fp, $a6, 4
	addi.d	$s5, $a3, 4
	addi.d	$s3, $a7, 4
	movgr2fr.w	$fs0, $zero
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$t2, $sp, 352                   # 8-byte Folded Spill
	or	$a0, $t2, $a0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ijp)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	st.d	$t6, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a0, $s8, $t6
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	andi	$a0, $t1, 12
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	sub.d	$a0, $s8, $t7
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$t7, $sp, 72                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $t7
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	st.d	$t5, $sp, 400                   # 8-byte Folded Spill
	b	.LBB3_191
	.p2align	4, , 16
.LBB3_190:                              # %for.end588
                                        #   in Loop: Header=BB3_191 Depth=1
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	fldx.s	$fa0, $t2, $a2
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a1
	move	$s8, $a0
	move	$t3, $t2
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_220
.LBB3_191:                              # %for.body482
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_212 Depth 2
                                        #     Child Loop BB3_216 Depth 2
                                        #     Child Loop BB3_199 Depth 2
                                        #     Child Loop BB3_203 Depth 2
	addi.d	$t6, $s8, -1
	slli.d	$a0, $t6, 2
	fldx.s	$fa0, $t5, $a0
	move	$t2, $t4
	move	$t4, $t3
	fst.s	$fa0, $t3, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB3_194
# %bb.192:                              # %if.else491
                                        #   in Loop: Header=BB3_191 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_200
# %bb.193:                              # %if.end492.thread
                                        #   in Loop: Header=BB3_191 Depth=1
	move	$a0, $t2
	move	$a1, $zero
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.d	$t4, $sp, 472                   # 8-byte Folded Spill
	st.d	$t2, $sp, 464                   # 8-byte Folded Spill
	st.d	$t6, $sp, 456                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_195
	b	.LBB3_200
	.p2align	4, , 16
.LBB3_194:                              # %if.end492
                                        #   in Loop: Header=BB3_191 Depth=1
	move	$a0, $t2
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $ra
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	st.d	$t4, $sp, 472                   # 8-byte Folded Spill
	st.d	$t2, $sp, 464                   # 8-byte Folded Spill
	st.d	$t6, $sp, 456                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_200
.LBB3_195:                              # %iter.check1095
                                        #   in Loop: Header=BB3_191 Depth=1
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB3_198
# %bb.196:                              # %vector.memcheck1086
                                        #   in Loop: Header=BB3_191 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	bgeu	$t2, $a0, .LBB3_209
# %bb.197:                              # %vector.memcheck1086
                                        #   in Loop: Header=BB3_191 Depth=1
	add.d	$a0, $t2, $a1
	bgeu	$a2, $a0, .LBB3_209
.LBB3_198:                              #   in Loop: Header=BB3_191 Depth=1
	move	$a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a1, $t2
	.p2align	4, , 16
.LBB3_199:                              # %while.body.i428
                                        #   Parent Loop BB3_191 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a1, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	move	$a1, $a3
	bnez	$a2, .LBB3_199
.LBB3_200:                              # %if.end495
                                        #   in Loop: Header=BB3_191 Depth=1
	slli.d	$a1, $s8, 2
	fldx.s	$fa0, $t5, $a1
	fst.s	$fa0, $t2, 0
	addi.d	$a0, $s8, 1
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_190
# %bb.201:                              # %for.body535.preheader
                                        #   in Loop: Header=BB3_191 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	fldx.s	$fa0, $a5, $a1
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	fldx.s	$fa1, $a5, $a1
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	fldx.s	$fa2, $a5, $a1
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	fldx.s	$fa3, $a5, $a1
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa4, $a6, $a1
	slli.d	$a5, $a0, 2
	fldx.s	$fa5, $a6, $a5
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	fldx.s	$fa6, $a5, $a1
	fld.s	$ft0, $t4, 0
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	fld.s	$ft1, $a5, %pc_lo12(.LCPI3_2)
	slli.d	$a5, $s8, 3
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a5
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	fldx.s	$fa7, $a5, $a1
	xvld	$xr10, $sp, 368                 # 32-byte Folded Reload
	fmadd.s	$ft0, $ft2, $ft1, $ft0
	addi.d	$a5, $t2, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $zero, -1
	b	.LBB3_203
	.p2align	4, , 16
.LBB3_202:                              # %if.end572
                                        #   in Loop: Header=BB3_203 Depth=2
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
	beq	$ra, $a2, .LBB3_190
.LBB3_203:                              # %for.body535
                                        #   Parent Loop BB3_191 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $s7, $a3
	fldx.s	$ft1, $t4, $a3
	fldx.s	$ft3, $s3, $a3
	fmul.s	$ft2, $fa7, $ft2
	fadd.s	$ft2, $ft1, $ft2
	fldx.s	$ft4, $fp, $a3
	fmul.s	$ft3, $fa2, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fldx.s	$ft3, $s5, $a3
	fmul.s	$ft4, $fa6, $ft4
	fldx.s	$ft5, $s6, $a3
	fadd.s	$ft2, $ft2, $ft4
	fmul.s	$ft3, $fa3, $ft3
	fadd.s	$fs0, $ft2, $ft3
	fmul.s	$ft2, $fa5, $ft5
	fadd.s	$ft2, $ft0, $ft2
	fcmp.cule.s	$fcc0, $ft2, $fs0
	stx.w	$zero, $a6, $a3
	bcnez	$fcc0, .LBB3_205
# %bb.204:                              # %if.then548
                                        #   in Loop: Header=BB3_203 Depth=2
	add.d	$t0, $a4, $a7
	stx.w	$t0, $a6, $a3
	fmov.s	$fs0, $ft2
.LBB3_205:                              # %if.end551
                                        #   in Loop: Header=BB3_203 Depth=2
	add.d	$t0, $s1, $a3
	fld.s	$ft4, $t0, 0
	fldx.s	$ft3, $s4, $a3
	fldx.s	$ft2, $s0, $a3
	fmul.s	$ft4, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB3_207
# %bb.206:                              # %if.then563
                                        #   in Loop: Header=BB3_203 Depth=2
	ldx.w	$t1, $s2, $a3
	sub.d	$t1, $s8, $t1
	stx.w	$t1, $a6, $a3
	fmov.s	$fs0, $ft4
.LBB3_207:                              # %if.end565
                                        #   in Loop: Header=BB3_203 Depth=2
	fld.s	$ft4, $t0, -4
	fmul.s	$ft4, $fa1, $ft4
	fadd.s	$ft4, $ft1, $ft4
	fcmp.cult.s	$fcc0, $ft4, $ft3
	bcnez	$fcc0, .LBB3_202
# %bb.208:                              # %if.then570
                                        #   in Loop: Header=BB3_203 Depth=2
	fstx.s	$ft4, $s4, $a3
	stx.w	$t6, $s2, $a3
	b	.LBB3_202
.LBB3_209:                              # %vector.main.loop.iter.check1097
                                        #   in Loop: Header=BB3_191 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ori	$a1, $zero, 15
	bgeu	$a0, $a1, .LBB3_211
# %bb.210:                              #   in Loop: Header=BB3_191 Depth=1
	move	$a4, $zero
	b	.LBB3_215
.LBB3_211:                              # %vector.body1101.preheader
                                        #   in Loop: Header=BB3_191 Depth=1
	addi.d	$a0, $t2, 32
	addi.d	$a1, $a2, 32
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_212:                              # %vector.body1101
                                        #   Parent Loop BB3_191 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvld	$xr2, $a0, -32
	xvld	$xr3, $a0, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a0, -32
	xvst	$xr1, $a0, 0
	addi.d	$a0, $a0, 64
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB3_212
# %bb.213:                              # %middle.block1110
                                        #   in Loop: Header=BB3_191 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_200
# %bb.214:                              # %vec.epilog.iter.check1115
                                        #   in Loop: Header=BB3_191 Depth=1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_218
.LBB3_215:                              # %vec.epilog.ph1114
                                        #   in Loop: Header=BB3_191 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $t2, $a1
	alsl.d	$a3, $a4, $t2, 2
	alsl.d	$a2, $a4, $a2, 2
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB3_216:                              # %vec.epilog.vector.body1121
                                        #   Parent Loop BB3_191 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vld	$vr1, $a3, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a3, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB3_216
# %bb.217:                              # %vec.epilog.middle.block1130
                                        #   in Loop: Header=BB3_191 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	bne	$a3, $a4, .LBB3_199
	b	.LBB3_200
.LBB3_218:                              #   in Loop: Header=BB3_191 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $t2, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_199
.LBB3_219:
	movgr2fr.w	$fs0, $zero
	bnez	$a1, .LBB3_235
	b	.LBB3_221
.LBB3_220:                              # %for.end596.loopexit
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $s0, 0
	move	$t3, $t2
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_235
.LBB3_221:                              # %for.cond599.preheader
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_228
# %bb.222:                              # %for.body603.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s8, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_226
# %bb.223:                              # %vector.ph1141
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.d	$xr1, $s8
	pcalau12i	$a5, %pc_hi20(.LCPI3_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI3_3)
	pcalau12i	$a5, %pc_hi20(.LCPI3_4)
	xvld	$xr3, $a5, %pc_lo12(.LCPI3_4)
	addi.d	$a5, $t3, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_224:                              # %vector.body1148
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
	xvpickve.d	$xr7, $xr5, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr5, 0
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.d	$xr7, $xr5, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 3
	xvpickve.d	$xr5, $xr6, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 4
	xvpickve.d	$xr5, $xr6, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 5
	xvpickve.d	$xr5, $xr6, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 6
	xvpickve.d	$xr5, $xr6, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 7
	xvst	$xr8, $a5, 0
	xvaddi.du	$xr3, $xr3, 8
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_224
# %bb.225:                              # %middle.block1155
	beq	$a2, $a4, .LBB3_228
.LBB3_226:                              # %for.body603.preheader
	sub.w	$a2, $s8, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_227:                              # %for.body603
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
	bnez	$a1, .LBB3_227
.LBB3_228:                              # %for.cond616.preheader
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB3_235
# %bb.229:                              # %for.body620.lr.ph
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $s4, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.lastverticalw)
	addi.d	$a2, $s4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB3_233
# %bb.230:                              # %vector.ph1160
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI3_5)
	vld	$vr4, $a5, %pc_lo12(.LCPI3_5)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_231:                              # %vector.body1167
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
	vst	$vr8, $a5, 0
	vaddi.wu	$vr4, $vr4, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB3_231
# %bb.232:                              # %middle.block1174
	beq	$a3, $a4, .LBB3_235
.LBB3_233:                              # %for.body620.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB3_234:                              # %for.body620
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
	bnez	$a2, .LBB3_234
.LBB3_235:                              # %if.end634
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(Q__align.lastverticalw)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(Q__align.mseq1)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Q__align.mseq2)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(Q__align.ijp)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_237
# %bb.236:                              # %if.else637
	st.d	$s7, $sp, 0
	move	$a0, $t3
	move	$a1, $s3
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s2
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	move	$a7, $s1
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB3_310
.LBB3_237:                              # %if.then636
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$fp, $t3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	add.w	$a0, $a0, $s7
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, 0
	ori	$a1, $zero, 1
	addi.w	$ra, $s7, 0
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	addi.w	$a2, $s5, 0
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	beq	$a3, $a1, .LBB3_248
# %bb.238:                              # %if.else.i
	move	$a7, $fp
	fld.s	$fa0, $s3, 0
	blt	$ra, $a1, .LBB3_243
# %bb.239:                              # %for.body.lr.ph.i443
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB3_241
	.p2align	4, , 16
.LBB3_240:                              # %for.inc.i
                                        #   in Loop: Header=BB3_241 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB3_243
.LBB3_241:                              # %for.body.i445
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_240
# %bb.242:                              # %if.then16.i
                                        #   in Loop: Header=BB3_241 Depth=1
	ldx.d	$a6, $s2, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_240
.LBB3_243:                              # %for.cond24.preheader.i
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB3_248
# %bb.244:                              # %for.body27.lr.ph.i
	slli.d	$a1, $s7, 32
	srai.d	$a1, $a1, 29
	ld.d	$a5, $sp, 464                   # 8-byte Folded Reload
	slli.d	$a3, $a5, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $a5, 30, 0
	sub.d	$a5, $zero, $a5
	b	.LBB3_246
	.p2align	4, , 16
.LBB3_245:                              # %for.inc43.i
                                        #   in Loop: Header=BB3_246 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 4
	beqz	$a4, .LBB3_248
.LBB3_246:                              # %for.body27.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_245
# %bb.247:                              # %if.then32.i
                                        #   in Loop: Header=BB3_246 Depth=1
	ldx.d	$a6, $s2, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_245
.LBB3_248:                              # %if.end46.i
	bltz	$ra, .LBB3_256
# %bb.249:                              # %for.body51.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB3_251
# %bb.250:
	move	$a3, $zero
	b	.LBB3_254
.LBB3_251:                              # %vector.ph1179
	pcalau12i	$a4, %pc_hi20(.LCPI3_6)
	vld	$vr0, $a4, %pc_lo12(.LCPI3_6)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s2, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_252:                              # %vector.body1182
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a6, $vr1, 0
	vstelm.w	$vr4, $a6, 0, 0
	vpickve2gr.d	$a6, $vr1, 1
	vstelm.w	$vr4, $a6, 0, 1
	vpickve2gr.d	$a6, $vr2, 0
	vstelm.w	$vr3, $a6, 0, 0
	vpickve2gr.d	$a6, $vr2, 1
	vstelm.w	$vr3, $a6, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_252
# %bb.253:                              # %middle.block1189
	beq	$a1, $a3, .LBB3_256
.LBB3_254:                              # %for.body51.i.preheader
	alsl.d	$a4, $a3, $s2, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB3_255:                              # %for.body51.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB3_255
.LBB3_256:                              # %for.cond59.preheader.i
	ld.d	$a1, $sp, 576
	bltz	$a2, .LBB3_270
# %bb.257:                              # %iter.check1195
	ld.d	$a3, $s2, 0
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	addi.d	$a6, $a4, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB3_259
# %bb.258:
	move	$a5, $zero
	b	.LBB3_268
.LBB3_259:                              # %vector.main.loop.iter.check1197
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB3_261
# %bb.260:
	move	$a5, $zero
	b	.LBB3_265
.LBB3_261:                              # %vector.ph1198
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI3_7)
	xvld	$xr0, $a7, %pc_lo12(.LCPI3_7)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_262:                              # %vector.body1201
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB3_262
# %bb.263:                              # %middle.block1207
	beq	$a4, $a5, .LBB3_270
# %bb.264:                              # %vec.epilog.iter.check1212
	andi	$a7, $a6, 12
	beqz	$a7, .LBB3_268
.LBB3_265:                              # %vec.epilog.ph1211
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI3_8)
	vld	$vr0, $a5, %pc_lo12(.LCPI3_8)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB3_266:                              # %vec.epilog.vector.body1219
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB3_266
# %bb.267:                              # %vec.epilog.middle.block1224
	beq	$a4, $a5, .LBB3_270
.LBB3_268:                              # %for.body63.i.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_269:                              # %for.body63.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB3_269
.LBB3_270:                              # %for.end71.i
	st.d	$s1, $sp, 456                   # 8-byte Folded Spill
	add.d	$a3, $s1, $ra
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	add.d	$a3, $a0, $ra
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bltz	$a0, .LBB3_302
# %bb.271:                              # %for.body82.i.preheader
	move	$t3, $zero
	ori	$a2, $zero, 1
	ori	$a3, $zero, 111
	ori	$a4, $zero, 45
	ori	$a5, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a6, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	ld.d	$a7, $sp, 464                   # 8-byte Folded Reload
	move	$a0, $s2
	.p2align	4, , 16
.LBB3_272:                              # %for.body82.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_278 Depth 2
                                        #     Child Loop BB3_289 Depth 2
                                        #     Child Loop BB3_285 Depth 2
                                        #     Child Loop BB3_294 Depth 2
	addi.w	$t0, $s7, 0
	slli.d	$t5, $t0, 3
	ldx.d	$t1, $s2, $t5
	addi.w	$t2, $a7, 0
	slli.d	$t6, $t2, 2
	ldx.w	$t4, $t1, $t6
	bge	$s8, $t4, .LBB3_280
# %bb.273:                              # %if.else96.i
                                        #   in Loop: Header=BB3_272 Depth=1
	beqz	$t4, .LBB3_301
# %bb.274:                              # %if.then103.i
                                        #   in Loop: Header=BB3_272 Depth=1
	sub.d	$t1, $s7, $t4
	move	$t4, $s8
	nor	$t7, $t1, $zero
	add.w	$t8, $s7, $t7
	beqz	$t8, .LBB3_281
.LBB3_275:                              # %while.body.i439.preheader
                                        #   in Loop: Header=BB3_272 Depth=1
	bltu	$t8, $a6, .LBB3_287
# %bb.276:                              # %while.body.i439.preheader
                                        #   in Loop: Header=BB3_272 Depth=1
	sub.d	$fp, $s3, $s5
	bltu	$fp, $a6, .LBB3_287
# %bb.277:                              # %vector.ph1256
                                        #   in Loop: Header=BB3_272 Depth=1
	bstrpick.d	$s1, $t8, 31, 0
	bstrpick.d	$fp, $s1, 31, 5
	slli.d	$s2, $fp, 5
	sub.d	$t8, $t8, $s2
	sub.d	$fp, $s5, $s2
	sub.d	$s0, $s3, $s2
	addi.d	$s3, $s3, -32
	addi.d	$s5, $s5, -32
	move	$s8, $s2
	.p2align	4, , 16
.LBB3_278:                              # %vector.body1260
                                        #   Parent Loop BB3_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s3, 0
	xvst	$xr4, $s5, 0
	addi.d	$s8, $s8, -32
	addi.d	$s3, $s3, -32
	addi.d	$s5, $s5, -32
	bnez	$s8, .LBB3_278
# %bb.279:                              # %middle.block1267
                                        #   in Loop: Header=BB3_272 Depth=1
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB3_288
	b	.LBB3_290
	.p2align	4, , 16
.LBB3_280:                              # %if.then89.i
                                        #   in Loop: Header=BB3_272 Depth=1
	addi.d	$t1, $s7, -1
	nor	$t7, $t1, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB3_275
	.p2align	4, , 16
.LBB3_281:                              # %while.end.i
                                        #   in Loop: Header=BB3_272 Depth=1
	beq	$t4, $s8, .LBB3_291
.LBB3_282:                              # %while.body122.preheader.i
                                        #   in Loop: Header=BB3_272 Depth=1
	addi.w	$t7, $zero, -17
	nor	$s0, $t4, $zero
	bltu	$t7, $t4, .LBB3_292
# %bb.283:                              # %while.body122.preheader.i
                                        #   in Loop: Header=BB3_272 Depth=1
	sub.d	$t7, $s3, $s5
	bltu	$t7, $a5, .LBB3_292
# %bb.284:                              # %vector.ph1233
                                        #   in Loop: Header=BB3_272 Depth=1
	bstrpick.d	$t7, $s0, 30, 4
	slli.d	$s1, $t7, 4
	sub.d	$fp, $s0, $s1
	sub.d	$t7, $s5, $s1
	sub.d	$t8, $s3, $s1
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $t3, 0
	addi.d	$t3, $s3, -8
	addi.d	$s2, $s5, -8
	move	$s3, $s1
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB3_285:                              # %vector.body1237
                                        #   Parent Loop BB3_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t3, -8
	vst	$vr2, $s2, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s3, $s3, -16
	addi.d	$t3, $t3, -16
	addi.d	$s2, $s2, -16
	bnez	$s3, .LBB3_285
# %bb.286:                              # %middle.block1245
                                        #   in Loop: Header=BB3_272 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf4i.w	$xr6, $xr6, 228
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvshuf4i.w	$xr6, $xr6, 14
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.w	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpickve2gr.w	$t3, $xr5, 0
	move	$s2, $a0
	bne	$s1, $s0, .LBB3_293
	b	.LBB3_295
	.p2align	4, , 16
.LBB3_287:                              #   in Loop: Header=BB3_272 Depth=1
	move	$fp, $s5
	move	$s0, $s3
.LBB3_288:                              # %while.body.i439.preheader1275
                                        #   in Loop: Header=BB3_272 Depth=1
	move	$s1, $fp
	move	$s2, $s0
	.p2align	4, , 16
.LBB3_289:                              # %while.body.i439
                                        #   Parent Loop BB3_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s0, $s2, -1
	st.b	$a3, $s2, -1
	addi.d	$fp, $s1, -1
	addi.w	$t8, $t8, -1
	st.b	$a4, $s1, -1
	move	$s1, $fp
	move	$s2, $s0
	bnez	$t8, .LBB3_289
.LBB3_290:                              # %while.end.loopexit.i
                                        #   in Loop: Header=BB3_272 Depth=1
	add.d	$t3, $s7, $t3
	add.d	$t3, $t7, $t3
	move	$s3, $s0
	move	$s5, $fp
	move	$s2, $a0
	bne	$t4, $s8, .LBB3_282
.LBB3_291:                              #   in Loop: Header=BB3_272 Depth=1
	move	$t8, $s3
	move	$t7, $s5
	bne	$t0, $ra, .LBB3_296
	b	.LBB3_298
	.p2align	4, , 16
.LBB3_292:                              #   in Loop: Header=BB3_272 Depth=1
	move	$fp, $s0
	move	$t7, $s5
	move	$t8, $s3
.LBB3_293:                              # %while.body122.i.preheader
                                        #   in Loop: Header=BB3_272 Depth=1
	add.d	$t3, $t3, $fp
	.p2align	4, , 16
.LBB3_294:                              # %while.body122.i
                                        #   Parent Loop BB3_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a3, $t7, -1
	addi.w	$fp, $fp, -1
	addi.d	$t7, $t7, -1
	bnez	$fp, .LBB3_294
.LBB3_295:                              # %while.end126.i
                                        #   in Loop: Header=BB3_272 Depth=1
	beq	$t0, $ra, .LBB3_298
.LBB3_296:                              # %while.end126.i
                                        #   in Loop: Header=BB3_272 Depth=1
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 0
	beq	$t2, $fp, .LBB3_298
# %bb.297:                              # %if.else132.i
                                        #   in Loop: Header=BB3_272 Depth=1
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $fp, %pc_lo12(impmtx)
	ldx.d	$t5, $fp, $t5
	fldx.s	$fa5, $t5, $t6
	fld.s	$fa6, $a1, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a1, 0
.LBB3_298:                              # %if.end135.i
                                        #   in Loop: Header=BB3_272 Depth=1
	blt	$t0, $a2, .LBB3_303
# %bb.299:                              # %if.end135.i
                                        #   in Loop: Header=BB3_272 Depth=1
	blt	$t2, $a2, .LBB3_303
# %bb.300:                              # %if.end142.i
                                        #   in Loop: Header=BB3_272 Depth=1
	add.d	$a7, $t4, $a7
	addi.d	$s3, $t8, -1
	st.b	$a3, $t8, -1
	addi.d	$s5, $t7, -1
	addi.w	$t3, $t3, 2
	st.b	$a3, $t7, -1
	move	$s7, $t1
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	bge	$t0, $t3, .LBB3_272
	b	.LBB3_302
	.p2align	4, , 16
.LBB3_301:                              # %if.else110.i
                                        #   in Loop: Header=BB3_272 Depth=1
	addi.d	$t1, $s7, -1
	move	$t4, $s8
	nor	$t7, $t1, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB3_275
	b	.LBB3_281
.LBB3_302:                              # %for.end148.i
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bge	$a0, $fp, .LBB3_304
	b	.LBB3_306
.LBB3_303:
	move	$s3, $t8
	move	$s5, $t7
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	blt	$a0, $fp, .LBB3_306
.LBB3_304:                              # %for.body152.preheader.i
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_305:                              # %for.body152.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB3_305
.LBB3_306:                              # %for.cond160.preheader.i
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	blt	$s7, $fp, .LBB3_309
# %bb.307:                              # %for.body163.preheader.i
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$s0, $s7
	.p2align	4, , 16
.LBB3_308:                              # %for.body163.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB3_308
.LBB3_309:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
.LBB3_310:                              # %if.end639
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB3_319
# %bb.311:                              # %if.end639
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB3_319
# %bb.312:                              # %if.end650
	ori	$fp, $zero, 1
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	blt	$s1, $fp, .LBB3_315
.LBB3_313:                              # %for.body654.lr.ph
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(Q__align.mseq1)
	.p2align	4, , 16
.LBB3_314:                              # %for.body654
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB3_314
.LBB3_315:                              # %for.cond663.preheader
	blt	$s7, $fp, .LBB3_318
# %bb.316:                              # %for.body666.lr.ph
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Q__align.mseq2)
	.p2align	4, , 16
.LBB3_317:                              # %for.body666
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s7, $s7, -1
	addi.d	$s5, $s5, 8
	bnez	$s7, .LBB3_317
.LBB3_318:                              # %for.end674
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 480                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.LBB3_319:                              # %if.then648
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a4, $a4, 2880
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	bge	$s1, $fp, .LBB3_313
	b	.LBB3_315
.LBB3_320:
	alsl.d	$a2, $a5, $a1, 2
	sub.d	$a3, $s8, $a5
	alsl.d	$a4, $a5, $t3, 2
	b	.LBB3_121
.LBB3_321:
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	b	.LBB3_27
.LBB3_322:
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	b	.LBB3_32
.Lfunc_end3:
	.size	Q__align, .Lfunc_end3-Q__align
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
	beqz	$a7, .LBB4_8
# %bb.1:                                # %entry
	ori	$a7, $zero, 1
	blt	$a4, $a7, .LBB4_8
# %bb.2:                                # %for.cond1.preheader.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 208
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %for.end
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t3, $t5, 0
	slli.d	$t2, $t2, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t3, $t2
	beq	$a7, $a4, .LBB4_8
.LBB4_4:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	move	$t3, $zero
	move	$t4, $zero
	move	$t2, $zero
	alsl.d	$t6, $a7, $a5, 3
	alsl.d	$t5, $a7, $a6, 3
	slli.d	$t7, $a7, 2
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_5:                                # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=2
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 1
	beq	$t3, $t0, .LBB4_3
.LBB4_6:                                # %for.body3
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t8, $a2, $t3
	fldx.s	$fa1, $t8, $t7
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_5
# %bb.7:                                # %if.then7
                                        #   in Loop: Header=BB4_6 Depth=2
	ld.d	$t8, $t6, 0
	ld.d	$fp, $t5, 0
	slli.d	$s0, $t2, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t4, $fp, $s0
	addi.w	$t2, $t2, 1
	b	.LBB4_5
.LBB4_8:                                # %if.end28
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
	beqz	$a4, .LBB4_14
# %bb.9:                                # %while.body.preheader
	addi.d	$a1, $sp, 88
	addi.w	$a2, $zero, -1
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_10:                               # %while.end
                                        #   in Loop: Header=BB4_11 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB4_14
.LBB4_11:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
	ld.d	$a7, $a6, 0
	ld.wu	$a3, $a7, 0
	addi.w	$t0, $a3, 0
	st.w	$zero, $a0, 0
	bltz	$t0, .LBB4_10
# %bb.12:                               # %while.body57.lr.ph
                                        #   in Loop: Header=BB4_11 Depth=1
	ld.d	$t0, $a5, 0
	addi.d	$a7, $a7, 4
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB4_13:                               # %while.body57
                                        #   Parent Loop BB4_11 Depth=1
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
	blt	$a2, $t1, .LBB4_13
	b	.LBB4_10
.LBB4_14:                               # %while.end63
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
.Lfunc_end4:
	.size	match_calc, .Lfunc_end4-match_calc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Atracking
.LCPI5_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI5_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI5_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.p2align	5
	.type	Atracking,@function
Atracking:                              # @Atracking
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s2, $a2
	ld.d	$s6, $sp, 128
	ld.d	$a2, $a2, 0
	move	$s4, $a7
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a5
	move	$s5, $a4
	move	$s0, $a3
	move	$s3, $a1
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	add.w	$a0, $a0, $s8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	ld.w	$a3, $a1, 0
	ori	$a2, $zero, 1
	addi.w	$a1, $s8, 0
	addi.w	$t0, $s7, 0
	beq	$a3, $a2, .LBB5_11
# %bb.1:                                # %if.else
	fld.s	$fa0, $s3, 0
	blt	$a1, $a2, .LBB5_6
# %bb.2:                                # %for.body.lr.ph
	slli.d	$a2, $s8, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s7, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s8, 30, 0
	move	$a5, $s8
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                # %for.inc
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, -1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB5_6
.LBB5_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_3
# %bb.5:                                # %if.then16
                                        #   in Loop: Header=BB5_4 Depth=1
	ldx.d	$a6, $a7, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB5_3
.LBB5_6:                                # %for.cond24.preheader
	ori	$a2, $zero, 1
	blt	$t0, $a2, .LBB5_11
# %bb.7:                                # %for.body27.lr.ph
	slli.d	$a2, $s8, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s7, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s7, 30, 0
	sub.d	$a5, $zero, $s7
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_8:                                # %for.inc43
                                        #   in Loop: Header=BB5_9 Depth=1
	addi.d	$s1, $s1, 4
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	beqz	$a4, .LBB5_11
.LBB5_9:                                # %for.body27
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_8
# %bb.10:                               # %if.then32
                                        #   in Loop: Header=BB5_9 Depth=1
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB5_8
.LBB5_11:                               # %if.end46
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	bltz	$a1, .LBB5_19
# %bb.12:                               # %for.body51.preheader
	addi.d	$a3, $s8, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB5_14
# %bb.13:
	move	$a3, $zero
	b	.LBB5_17
.LBB5_14:                               # %vector.ph
	pcalau12i	$a4, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI5_0)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB5_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a6, $vr1, 0
	vstelm.w	$vr4, $a6, 0, 0
	vpickve2gr.d	$a6, $vr1, 1
	vstelm.w	$vr4, $a6, 0, 1
	vpickve2gr.d	$a6, $vr2, 0
	vstelm.w	$vr3, $a6, 0, 0
	vpickve2gr.d	$a6, $vr2, 1
	vstelm.w	$vr3, $a6, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_15
# %bb.16:                               # %middle.block
	beq	$a2, $a3, .LBB5_19
.LBB5_17:                               # %for.body51.preheader73
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB5_18:                               # %for.body51
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB5_18
.LBB5_19:                               # %for.cond59.preheader
	bltz	$t0, .LBB5_33
# %bb.20:                               # %iter.check
	ld.d	$a2, $ra, 0
	addi.d	$a5, $s7, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB5_22
# %bb.21:
	move	$a4, $zero
	b	.LBB5_31
.LBB5_22:                               # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB5_24
# %bb.23:
	move	$a4, $zero
	b	.LBB5_28
.LBB5_24:                               # %vector.ph6
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI5_1)
	xvld	$xr0, $a6, %pc_lo12(.LCPI5_1)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB5_25:                               # %vector.body9
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB5_25
# %bb.26:                               # %middle.block15
	beq	$a3, $a4, .LBB5_33
# %bb.27:                               # %vec.epilog.iter.check
	andi	$a6, $a5, 12
	beqz	$a6, .LBB5_31
.LBB5_28:                               # %vec.epilog.ph
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI5_2)
	vld	$vr0, $a4, %pc_lo12(.LCPI5_2)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB5_29:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB5_29
# %bb.30:                               # %vec.epilog.middle.block
	beq	$a3, $a4, .LBB5_33
.LBB5_31:                               # %for.body63.preheader
	nor	$a5, $a4, $zero
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB5_32:                               # %for.body63
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB5_32
.LBB5_33:                               # %for.end71
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	add.d	$s3, $a2, $t0
	stx.b	$zero, $a2, $t0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	add.d	$a1, $a0, $a1
	add.d	$s1, $a1, $t0
	stx.b	$zero, $a1, $t0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bltz	$a0, .LBB5_63
# %bb.34:                               # %for.body82.preheader
	move	$a7, $zero
	addi.w	$a0, $zero, -1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 111
	ori	$a3, $zero, 45
	ori	$a4, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a5, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	.p2align	4, , 16
.LBB5_35:                               # %for.body82
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_54 Depth 2
                                        #     Child Loop BB5_58 Depth 2
                                        #     Child Loop BB5_43 Depth 2
                                        #     Child Loop BB5_47 Depth 2
	addi.w	$a6, $s8, 0
	slli.d	$t0, $a6, 3
	ldx.d	$t0, $ra, $t0
	addi.w	$t1, $s7, 0
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $t0, $t2
	bge	$a0, $t2, .LBB5_38
# %bb.36:                               # %if.else96
                                        #   in Loop: Header=BB5_35 Depth=1
	beqz	$t2, .LBB5_49
# %bb.37:                               # %if.then103
                                        #   in Loop: Header=BB5_35 Depth=1
	sub.d	$t0, $s8, $t2
	b	.LBB5_50
	.p2align	4, , 16
.LBB5_38:                               # %if.then89
                                        #   in Loop: Header=BB5_35 Depth=1
	addi.d	$t0, $s8, -1
	nor	$t3, $t0, $zero
	add.w	$t4, $s8, $t3
	bnez	$t4, .LBB5_51
	.p2align	4, , 16
.LBB5_39:                               # %while.end
                                        #   in Loop: Header=BB5_35 Depth=1
	beq	$t2, $a0, .LBB5_60
.LBB5_40:                               # %while.body122.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	addi.w	$t3, $zero, -17
	nor	$t6, $t2, $zero
	bltu	$t3, $t2, .LBB5_45
# %bb.41:                               # %while.body122.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	sub.d	$t3, $s3, $s1
	bltu	$t3, $a4, .LBB5_45
# %bb.42:                               # %vector.ph30
                                        #   in Loop: Header=BB5_35 Depth=1
	bstrpick.d	$t3, $t6, 30, 4
	slli.d	$t7, $t3, 4
	sub.d	$t5, $t6, $t7
	sub.d	$t3, $s1, $t7
	sub.d	$t4, $s3, $t7
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $a7, 0
	addi.d	$a7, $s3, -8
	addi.d	$t8, $s1, -8
	move	$s1, $t7
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB5_43:                               # %vector.body33
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a7, -8
	vst	$vr2, $t8, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s1, $s1, -16
	addi.d	$a7, $a7, -16
	addi.d	$t8, $t8, -16
	bnez	$s1, .LBB5_43
# %bb.44:                               # %middle.block39
                                        #   in Loop: Header=BB5_35 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf4i.w	$xr6, $xr6, 228
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvshuf4i.w	$xr6, $xr6, 14
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.w	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpickve2gr.w	$a7, $xr5, 0
	bne	$t7, $t6, .LBB5_46
	b	.LBB5_48
	.p2align	4, , 16
.LBB5_45:                               #   in Loop: Header=BB5_35 Depth=1
	move	$t5, $t6
	move	$t3, $s1
	move	$t4, $s3
.LBB5_46:                               # %while.body122.preheader68
                                        #   in Loop: Header=BB5_35 Depth=1
	add.d	$a7, $a7, $t5
	.p2align	4, , 16
.LBB5_47:                               # %while.body122
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t4, -1
	addi.d	$t4, $t4, -1
	st.b	$a2, $t3, -1
	addi.w	$t5, $t5, -1
	addi.d	$t3, $t3, -1
	bnez	$t5, .LBB5_47
.LBB5_48:                               # %while.end126
                                        #   in Loop: Header=BB5_35 Depth=1
	bge	$a6, $a1, .LBB5_61
	b	.LBB5_68
	.p2align	4, , 16
.LBB5_49:                               # %if.else110
                                        #   in Loop: Header=BB5_35 Depth=1
	addi.d	$t0, $s8, -1
.LBB5_50:                               # %if.end114
                                        #   in Loop: Header=BB5_35 Depth=1
	move	$t2, $a0
	nor	$t3, $t0, $zero
	add.w	$t4, $s8, $t3
	beqz	$t4, .LBB5_39
.LBB5_51:                               # %while.body.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	bltu	$t4, $a5, .LBB5_56
# %bb.52:                               # %while.body.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	sub.d	$t5, $s3, $s1
	bltu	$t5, $a5, .LBB5_56
# %bb.53:                               # %vector.ph50
                                        #   in Loop: Header=BB5_35 Depth=1
	bstrpick.d	$t7, $t4, 31, 0
	bstrpick.d	$t5, $t7, 31, 5
	slli.d	$t8, $t5, 5
	sub.d	$t4, $t4, $t8
	sub.d	$t5, $s1, $t8
	sub.d	$t6, $s3, $t8
	addi.d	$s3, $s3, -32
	addi.d	$s1, $s1, -32
	move	$ra, $t8
	.p2align	4, , 16
.LBB5_54:                               # %vector.body54
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s3, 0
	xvst	$xr4, $s1, 0
	addi.d	$ra, $ra, -32
	addi.d	$s3, $s3, -32
	addi.d	$s1, $s1, -32
	bnez	$ra, .LBB5_54
# %bb.55:                               # %middle.block61
                                        #   in Loop: Header=BB5_35 Depth=1
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	bne	$t8, $t7, .LBB5_57
	b	.LBB5_59
	.p2align	4, , 16
.LBB5_56:                               #   in Loop: Header=BB5_35 Depth=1
	move	$t5, $s1
	move	$t6, $s3
.LBB5_57:                               # %while.body.preheader69
                                        #   in Loop: Header=BB5_35 Depth=1
	move	$t7, $t5
	move	$t8, $t6
	.p2align	4, , 16
.LBB5_58:                               # %while.body
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t6, $t8, -1
	st.b	$a2, $t8, -1
	addi.d	$t5, $t7, -1
	addi.w	$t4, $t4, -1
	st.b	$a3, $t7, -1
	move	$t7, $t5
	move	$t8, $t6
	bnez	$t4, .LBB5_58
.LBB5_59:                               # %while.end.loopexit
                                        #   in Loop: Header=BB5_35 Depth=1
	add.d	$a7, $s8, $a7
	add.d	$a7, $t3, $a7
	move	$s3, $t6
	move	$s1, $t5
	bne	$t2, $a0, .LBB5_40
.LBB5_60:                               #   in Loop: Header=BB5_35 Depth=1
	move	$t4, $s3
	move	$t3, $s1
	blt	$a6, $a1, .LBB5_68
.LBB5_61:                               # %while.end126
                                        #   in Loop: Header=BB5_35 Depth=1
	blt	$t1, $a1, .LBB5_68
# %bb.62:                               # %if.end132
                                        #   in Loop: Header=BB5_35 Depth=1
	add.d	$s7, $t2, $s7
	addi.d	$s3, $t4, -1
	st.b	$a2, $t4, -1
	addi.d	$s1, $t3, -1
	addi.w	$a7, $a7, 2
	st.b	$a2, $t3, -1
	move	$s8, $t0
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	bge	$a6, $a7, .LBB5_35
.LBB5_63:                               # %for.end138
	ori	$s7, $zero, 1
	blt	$s4, $s7, .LBB5_65
	.p2align	4, , 16
.LBB5_64:                               # %for.body142
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s2, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, 8
	bnez	$s4, .LBB5_64
.LBB5_65:                               # %for.cond150.preheader
	blt	$s6, $s7, .LBB5_67
	.p2align	4, , 16
.LBB5_66:                               # %for.body153
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, -1
	addi.d	$fp, $fp, 8
	bnez	$s6, .LBB5_66
.LBB5_67:                               # %for.end160
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB5_68:
	move	$s3, $t4
	move	$s1, $t3
	ori	$s7, $zero, 1
	bge	$s4, $s7, .LBB5_64
	b	.LBB5_65
.Lfunc_end5:
	.size	Atracking, .Lfunc_end5-Atracking
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Q__align_gapmap
.LCPI6_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI6_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI6_3:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI6_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI6_7:
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
.LCPI6_2:
	.word	0x461c4000                      # float 1.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_5:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI6_6:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI6_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	Q__align_gapmap
	.p2align	5
	.type	Q__align_gapmap,@function
Q__align_gapmap:                        # @Q__align_gapmap
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
	pcalau12i	$s2, %pc_hi20(Q__align_gapmap.orlgth1)
	ld.w	$s6, $s2, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.w	$t0, $t0, 0
	st.d	$t0, $sp, 288                   # 8-byte Folded Spill
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 424                   # 8-byte Folded Spill
	st.d	$a4, $sp, 440                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	move	$s7, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.mseq1)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.mseq2)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	bnez	$s6, .LBB6_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Q__align_gapmap.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s2, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.mseq2)
.LBB6_2:                                # %if.end
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$s1, $a0
	addi.w	$s4, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Q__align_gapmap.orlgth2)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s0, $a1, %pc_lo12(Q__align_gapmap.orlgth2)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	addi.w	$a7, $a0, 0
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.w1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.w2)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.initverticalw)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.lastverticalw)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.m)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.mp)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(Q__align_gapmap.mseq)
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.digf1)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.digf2)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.diaf1)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.diaf2)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz1)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz2)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapf1)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapf2)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(Q__align_gapmap.ogcp1g)
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.ogcp2g)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fgcp1g)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fgcp2g)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_h_dg_n1_p)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_h_dg_n2_p)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_h_dg_n1_p)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_h_dg_n2_p)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz_n1)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz_n2)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.cpmx1)
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.cpmx2)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.floatwork)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.intwork)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a7, $sp, 352                   # 8-byte Folded Spill
	blt	$s6, $s4, .LBB6_4
# %bb.3:                                # %if.end
	bge	$s0, $a7, .LBB6_9
.LBB6_4:                                # %if.then12
	st.d	$fp, $sp, 360                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	pcalau12i	$fp, %pc_hi20(Q__align_gapmap.match)
	blt	$s6, $a0, .LBB6_7
# %bb.5:                                # %if.then12
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	blt	$s0, $a0, .LBB6_8
# %bb.6:                                # %if.then17
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(Q__align_gapmap.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(Q__align_gapmap.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(Q__align_gapmap.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz_n1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz_n2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s2, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(Q__align_gapmap.orlgth2)
	b	.LBB6_8
.LBB6_7:
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
.LBB6_8:                                # %if.end18
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	movgr2fr.w	$fa1, $s1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a0
	addi.w	$s1, $s6, 100
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	addi.w	$s2, $s0, 100
	addi.w	$s4, $s0, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.w1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.w2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(Q__align_gapmap.match)
	addi.w	$s5, $s6, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.initverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.lastverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.m)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.mp)
	add.w	$a1, $s2, $s1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $fp, %pc_lo12(Q__align_gapmap.mseq)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.digf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.digf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.diaf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.diaf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(Q__align_gapmap.gapz2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(Q__align_gapmap.ogcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.ogcp2g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fgcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fgcp2g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz_n1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz_n2)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.cpmx2)
	slt	$a0, $s2, $s1
	masknez	$a1, $s2, $a0
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	addi.w	$s3, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.intwork)
	st.w	$s6, $s2, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$s0, $a0, %pc_lo12(Q__align_gapmap.orlgth2)
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 352                   # 8-byte Folded Reload
.LBB6_9:                                # %if.end120
	ori	$a0, $zero, 1
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	blt	$a4, $a0, .LBB6_12
# %bb.10:                               # %for.body.lr.ph
	ld.d	$a1, $fp, %pc_lo12(Q__align_gapmap.mseq)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.mseq1)
	move	$a3, $a4
	move	$a6, $s3
	.p2align	4, , 16
.LBB6_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $a6, 0
	stx.b	$zero, $a5, $s4
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB6_11
.LBB6_12:                               # %for.cond130.preheader
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB6_15
# %bb.13:                               # %for.body133.lr.ph
	ld.d	$a1, $fp, %pc_lo12(Q__align_gapmap.mseq)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.mseq2)
	alsl.d	$a1, $a4, $a1, 3
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	move	$a3, $s7
	.p2align	4, , 16
.LBB6_14:                               # %for.body133
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a0, 0
	ld.d	$a5, $a3, 0
	stx.b	$zero, $a5, $a7
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB6_14
.LBB6_15:                               # %for.end145
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc2)
	ld.d	$s5, $sp, 552
	ld.w	$a1, $fp, 0
	ld.w	$a0, $s1, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a2
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	st.d	$s5, $sp, 360                   # 8-byte Folded Spill
	blt	$a1, $s6, .LBB6_18
# %bb.16:                               # %for.end145
	blt	$a0, $s0, .LBB6_18
# %bb.17:                               # %lor.lhs.false148.if.end173_crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB6_22
.LBB6_18:                               # %if.then151
	beqz	$a1, .LBB6_21
# %bb.19:                               # %if.then151
	beqz	$a0, .LBB6_21
# %bb.20:                               # %if.then156
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s2, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.w	$a1, $fp, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(Q__align_gapmap.orlgth2)
	ld.w	$a0, $s1, 0
.LBB6_21:                               # %if.end157
	slt	$a2, $a1, $s6
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s6, $a2
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
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
.LBB6_22:                               # %if.end173
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.cpmx1)
	ffint.s.w	$fa0, $fs0
	xvst	$xr0, $sp, 288                  # 32-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(Q__align_gapmap.ijp)
	st.d	$a0, $s0, %pc_lo12(Q__align_gapmap.ijp)
	move	$a0, $s3
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $s4
	move	$s5, $s3
	move	$s3, $a4
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	move	$a0, $s7
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	move	$s8, $a3
	ld.d	$fp, $sp, 424                   # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp1g)
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	beqz	$s6, .LBB6_24
# %bb.23:                               # %if.then175
	ld.d	$a1, $sp, 576
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a6, $sp, 568
	move	$s5, $s1
	ld.d	$s1, $sp, 560
	move	$a1, $s3
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$s0, $s4
	move	$a4, $s4
	move	$a5, $s6
	move	$s6, $a6
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s1
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp1g)
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	move	$a1, $s8
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$s4, $s5
	move	$a4, $s0
	move	$s5, $fp
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	move	$a5, $fp
	move	$a6, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp2g)
	move	$a1, $s5
	move	$a2, $s7
	move	$a3, $s2
	ld.d	$s6, $sp, 352                   # 8-byte Folded Reload
	move	$a4, $s6
	move	$a5, $s1
	move	$a6, $s3
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf1)
	move	$a1, $s8
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s0
	move	$a5, $fp
	move	$s4, $fp
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	move	$a6, $s8
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf2)
	move	$a1, $s5
	move	$a2, $s7
	move	$a3, $s2
	move	$a4, $s6
	move	$a5, $s1
	move	$a6, $s3
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf1)
	ld.d	$s3, $sp, 440                   # 8-byte Folded Reload
	move	$a1, $s3
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s0
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf2)
	move	$a1, $s5
	move	$a2, $s7
	move	$a3, $s2
	move	$a4, $s6
	move	$a5, $s1
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf1)
	move	$a1, $s3
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf2)
	move	$a1, $s5
	move	$a2, $s7
	move	$a3, $s2
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz1)
	move	$a1, $s3
	move	$a2, $s1
	move	$a3, $fp
	move	$s4, $s0
	move	$a4, $s0
	ld.d	$s3, $sp, 360                   # 8-byte Folded Reload
	move	$a5, $s3
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $s1, %pc_lo12(Q__align_gapmap.gapz2)
	move	$a1, $s5
	move	$a2, $s7
	move	$a3, $s2
	move	$a4, $s6
	move	$a5, $s3
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	b	.LBB6_25
.LBB6_24:                               # %if.else
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s2
	move	$s6, $s8
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp1g)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp2g)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s2
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf1)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf2)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s2
	move	$a4, $s8
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf1)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf2)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s2
	move	$a4, $s8
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf1)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf2)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s2
	move	$a4, $s8
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz1)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $s1, %pc_lo12(Q__align_gapmap.gapz2)
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s2
	move	$a4, $s8
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
.LBB6_25:                               # %if.end176
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a0, $zero, -1
	xvld	$xr19, $sp, 288                 # 32-byte Folded Reload
	fcvt.d.s	$fa0, $ft11
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	move	$s2, $s4
	blt	$s6, $a0, .LBB6_30
# %bb.26:                               # %for.body181.lr.ph
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.digf2)
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fgcp2g)
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	ld.d	$a7, $s1, %pc_lo12(Q__align_gapmap.gapz2)
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align_gapmap.gapz_n2)
	ld.d	$t1, $sp, 320                   # 8-byte Folded Reload
	addi.d	$t3, $t1, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	bgeu	$t1, $t2, .LBB6_81
# %bb.27:
	move	$t2, $zero
.LBB6_28:                               # %for.body181.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB6_29:                               # %for.body181
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
	bnez	$t1, .LBB6_29
.LBB6_30:                               # %for.end255
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	blt	$s2, $a0, .LBB6_35
# %bb.31:                               # %for.body260.lr.ph
	ld.d	$a0, $s8, %pc_lo12(Q__align_gapmap.ogcp1g)
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.digf1)
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fgcp1g)
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align_gapmap.gapz1)
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align_gapmap.gapz_n1)
	addi.d	$t3, $s5, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	bgeu	$t1, $t2, .LBB6_114
# %bb.32:
	move	$t2, $zero
.LBB6_33:                               # %for.body260.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB6_34:                               # %for.body260
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
	bnez	$t1, .LBB6_34
.LBB6_35:                               # %for.end334
	pcalau12i	$a0, %got_pc_hi20(RNAscoremtx)
	ld.d	$a1, $a0, %got_pc_lo12(RNAscoremtx)
	ld.d	$a0, $sp, 592
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t5, $a0, %pc_lo12(Q__align_gapmap.w1)
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ld.bu	$a0, $a1, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t6, $a1, %pc_lo12(Q__align_gapmap.w2)
	ori	$a1, $zero, 114
	move	$fp, $t5
	move	$s0, $t6
	bne	$a0, $a1, .LBB6_38
# %bb.36:                               # %if.else339
	beqz	$s2, .LBB6_147
# %bb.37:                               # %while.body.preheader.i
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(Q__align_gapmap.initverticalw)
	slli.d	$a0, $s5, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_39
.LBB6_38:                               # %if.then338
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(Q__align_gapmap.initverticalw)
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align_gapmap.cpmx1)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align_gapmap.floatwork)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align_gapmap.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a3, $zero
	move	$a4, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB6_39:                               # %if.end340
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	xvld	$xr19, $sp, 288                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$t5, $fp
	move	$t6, $s0
	beqz	$a0, .LBB6_46
# %bb.40:                               # %if.then342
	beqz	$s2, .LBB6_43
# %bb.41:                               # %while.body.lr.ph.i
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $s5
	.p2align	4, , 16
.LBB6_42:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	fldx.s	$fa0, $a4, $a1
	fld.s	$fa1, $s3, 0
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $s3, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s3, 0
	move	$s3, $a4
	bnez	$a2, .LBB6_42
.LBB6_43:
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB6_47
.LBB6_44:                               # %if.else349
	beqz	$t4, .LBB6_52
# %bb.45:                               # %while.body.preheader.i422
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $t5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_48
.LBB6_46:
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	beq	$a0, $a1, .LBB6_44
.LBB6_47:                               # %if.then348
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align_gapmap.cpmx1)
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align_gapmap.floatwork)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align_gapmap.intwork)
	ori	$a7, $zero, 1
	move	$a0, $t5
	move	$a3, $zero
	move	$a4, $t4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB6_48:                               # %if.end350
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	xvld	$xr19, $sp, 288                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$t5, $fp
	move	$t6, $s0
	bnez	$a0, .LBB6_52
# %bb.49:                               # %if.then352
	beqz	$t4, .LBB6_52
# %bb.50:                               # %while.body.i427.preheader
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $t5
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_51:                               # %while.body.i427
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 2
	fldx.s	$fa0, $a0, $a4
	fld.s	$fa1, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a1, .LBB6_51
.LBB6_52:                               # %if.end354
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$t7, $a0, %got_pc_lo12(outgap)
	ld.w	$a2, $t7, 0
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 32
	pcalau12i	$a3, %pc_hi20(.LCPI6_2)
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	bne	$a2, $a1, .LBB6_62
# %bb.53:                               # %if.then357
	ld.d	$a2, $s8, %pc_lo12(Q__align_gapmap.ogcp1g)
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.ogcp2g)
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a4, 0
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fgcp1g)
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.fgcp2g)
	fld.s	$fa3, $a2, 0
	fld.s	$fa4, $a3, 0
	fld.s	$fa5, $a4, 0
	fld.s	$fa6, $a5, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.initverticalw)
	movgr2fr.w	$fa7, $zero
	fmadd.s	$fa0, $fa0, $fa1, $fa7
	fld.s	$fa1, $a2, 0
	fld.s	$fa7, $a3, 0
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmadd.s	$fa0, $fa6, $fa1, $fa0
	fadd.s	$fa1, $fa0, $fa7
	fst.s	$fa1, $a3, 0
	fld.s	$fa1, $t5, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t5, 0
	blt	$s2, $a1, .LBB6_57
# %bb.54:                               # %for.body378.lr.ph
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.gapz_n2)
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	addi.d	$a5, $s5, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a7, $a5, -1
	ori	$t0, $zero, 8
	ori	$a6, $zero, 1
	bgeu	$a7, $t0, .LBB6_151
.LBB6_55:                               # %for.body378.preheader
	alsl.d	$a4, $a6, $a4, 2
	alsl.d	$a3, $a6, $a3, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB6_56:                               # %for.body378
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a4, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 4
	bnez	$a5, .LBB6_56
.LBB6_57:                               # %for.cond395.preheader
	blez	$t4, .LBB6_148
# %bb.58:                               # %for.body399.lr.ph
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.gapz_n1)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a6, $a4, -1
	ori	$a7, $zero, 8
	ori	$a5, $zero, 1
	bgeu	$a6, $a7, .LBB6_157
.LBB6_59:                               # %for.body399.preheader
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a6, $a5, $t5, 2
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB6_60:                               # %for.body399
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
	bnez	$a4, .LBB6_60
.LBB6_61:                               # %if.end448.thread606
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.m)
	st.w	$zero, $a1, 0
	b	.LBB6_77
.LBB6_62:                               # %for.cond417.preheader
	blt	$t4, $a1, .LBB6_69
# %bb.63:                               # %for.body421.lr.ph
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 8
	ori	$a4, $zero, 1
	bltu	$a3, $a5, .LBB6_67
# %bb.64:                               # %vector.ph913
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a6, 2, 0
	xvreplgr2vr.w	$xr0, $a1
	pcalau12i	$a6, %pc_hi20(.LCPI6_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI6_1)
	addi.d	$a6, $t5, 4
	lu52i.d	$a7, $zero, -1026
	xvreplgr2vr.d	$xr2, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_65:                               # %vector.body918
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
	xvpickve.d	$xr5, $xr3, 1
	fcvt.s.d	$fa5, $fa5
	xvpickve.d	$xr6, $xr3, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr6, $xr5, 1
	xvpickve.d	$xr5, $xr3, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr6, $xr5, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 3
	xvpickve.d	$xr3, $xr4, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 4
	xvpickve.d	$xr3, $xr4, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 5
	xvpickve.d	$xr3, $xr4, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 6
	xvpickve.d	$xr3, $xr4, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 7
	xvst	$xr6, $a6, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB6_65
# %bb.66:                               # %middle.block922
	beq	$a3, $a5, .LBB6_69
.LBB6_67:                               # %for.body421.preheader
	mul.d	$a3, $a1, $a4
	alsl.d	$a5, $a4, $t5, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_68:                               # %for.body421
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
	bnez	$a2, .LBB6_68
.LBB6_69:                               # %for.cond432.preheader
	ori	$a2, $zero, 1
	blt	$s2, $a2, .LBB6_76
# %bb.70:                               # %for.body436.lr.ph
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.initverticalw)
	addi.d	$a4, $s5, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a5, $a4, -1
	ori	$a6, $zero, 8
	bltu	$a5, $a6, .LBB6_74
# %bb.71:                               # %vector.ph927
	move	$a6, $a5
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a2, $a5
	bstrins.d	$a2, $a7, 2, 0
	xvreplgr2vr.w	$xr0, $a1
	pcalau12i	$a7, %pc_hi20(.LCPI6_1)
	xvld	$xr1, $a7, %pc_lo12(.LCPI6_1)
	addi.d	$a7, $a3, 4
	lu52i.d	$t0, $zero, -1026
	xvreplgr2vr.d	$xr2, $t0
	move	$t0, $a6
	.p2align	4, , 16
.LBB6_72:                               # %vector.body932
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvpermi.q	$xr4, $xr3, 1
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	vext2xv.d.w	$xr3, $xr3
	xvld	$xr5, $a7, 0
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
	xvpickve.d	$xr5, $xr3, 1
	fcvt.s.d	$fa5, $fa5
	xvpickve.d	$xr6, $xr3, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr6, $xr5, 1
	xvpickve.d	$xr5, $xr3, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr6, $xr5, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 3
	xvpickve.d	$xr3, $xr4, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 4
	xvpickve.d	$xr3, $xr4, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 5
	xvpickve.d	$xr3, $xr4, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 6
	xvpickve.d	$xr3, $xr4, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 7
	xvst	$xr6, $a7, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB6_72
# %bb.73:                               # %middle.block939
	beq	$a5, $a6, .LBB6_76
.LBB6_74:                               # %for.body436.preheader
	mul.d	$a5, $a1, $a2
	alsl.d	$a3, $a2, $a3, 2
	sub.d	$a2, $a4, $a2
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_75:                               # %for.body436
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a3, 0
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a3, 0
	add.w	$a5, $a5, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB6_75
.LBB6_76:                               # %if.end448
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.m)
	ori	$a2, $zero, 1
	st.w	$zero, $a1, 0
	blt	$t4, $a2, .LBB6_149
.LBB6_77:                               # %iter.check
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.mp)
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 4
	ori	$a6, $zero, 1
	bltu	$a4, $a5, .LBB6_171
# %bb.78:                               # %vector.memcheck1018
	sub.d	$a5, $a1, $t5
	addi.d	$a5, $a5, 4
	ori	$a7, $zero, 64
	bltu	$a5, $a7, .LBB6_171
# %bb.79:                               # %vector.main.loop.iter.check
	ori	$a6, $zero, 16
	lu12i.w	$a5, 287172
	bgeu	$a4, $a6, .LBB6_163
# %bb.80:
	move	$a7, $zero
	b	.LBB6_167
.LBB6_81:                               # %vector.memcheck
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB6_295
# %bb.82:                               # %vector.memcheck
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB6_295
# %bb.83:                               # %vector.memcheck
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB6_295
# %bb.84:                               # %vector.memcheck
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB6_295
# %bb.85:                               # %vector.memcheck
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB6_295
# %bb.86:                               # %vector.memcheck
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB6_295
# %bb.87:                               # %vector.memcheck
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB6_295
# %bb.88:                               # %vector.memcheck
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB6_295
# %bb.89:                               # %vector.memcheck
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.90:                               # %vector.memcheck
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.91:                               # %vector.memcheck
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.92:                               # %vector.memcheck
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.93:                               # %vector.memcheck
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.94:                               # %vector.memcheck
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.95:                               # %vector.memcheck
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB6_295
# %bb.96:                               # %vector.memcheck
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.97:                               # %vector.memcheck
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.98:                               # %vector.memcheck
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.99:                               # %vector.memcheck
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.100:                              # %vector.memcheck
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.101:                              # %vector.memcheck
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	bnez	$s0, .LBB6_28
# %bb.102:                              # %vector.memcheck
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_28
# %bb.103:                              # %vector.memcheck
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_28
# %bb.104:                              # %vector.memcheck
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_28
# %bb.105:                              # %vector.memcheck
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_28
# %bb.106:                              # %vector.memcheck
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB6_28
# %bb.107:                              # %vector.memcheck
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_28
# %bb.108:                              # %vector.memcheck
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_28
# %bb.109:                              # %vector.memcheck
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_28
# %bb.110:                              # %vector.memcheck
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB6_28
# %bb.111:                              # %vector.ph
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
.LBB6_112:                              # %vector.body
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
	xvpickve.d	$xr13, $xr12, 1
	fcvt.s.d	$ft5, $ft5
	xvpickve.d	$xr14, $xr12, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr12, 2
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve.d	$xr12, $xr12, 3
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 3
	xvpickve.d	$xr12, $xr11, 0
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 4
	xvpickve.d	$xr12, $xr11, 1
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 5
	xvpickve.d	$xr12, $xr11, 2
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 6
	xvpickve.d	$xr11, $xr11, 3
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
	xvpickve.d	$xr17, $xr16, 1
	fcvt.s.d	$ft9, $ft9
	xvpickve.d	$xr18, $xr16, 0
	fcvt.s.d	$ft10, $ft10
	xvinsve0.w	$xr18, $xr17, 1
	xvpickve.d	$xr17, $xr16, 2
	fcvt.s.d	$ft9, $ft9
	xvinsve0.w	$xr18, $xr17, 2
	xvpickve.d	$xr16, $xr16, 3
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 3
	xvpickve.d	$xr16, $xr15, 0
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 4
	xvpickve.d	$xr16, $xr15, 1
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 5
	xvpickve.d	$xr16, $xr15, 2
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 6
	xvpickve.d	$xr15, $xr15, 3
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
	xvpickve.d	$xr13, $xr10, 1
	fcvt.s.d	$ft5, $ft5
	xvpickve.d	$xr14, $xr10, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr10, 2
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve.d	$xr10, $xr10, 3
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 3
	xvpickve.d	$xr10, $xr9, 0
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 4
	xvpickve.d	$xr10, $xr9, 1
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 5
	xvpickve.d	$xr10, $xr9, 2
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 6
	xvpickve.d	$xr9, $xr9, 3
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
	xvpickve.d	$xr7, $xr6, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr6, 0
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.d	$xr7, $xr6, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve.d	$xr6, $xr6, 3
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 3
	xvpickve.d	$xr6, $xr5, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 4
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 5
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 6
	xvpickve.d	$xr5, $xr5, 3
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
	bnez	$s5, .LBB6_112
# %bb.113:                              # %middle.block
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	bne	$t1, $t2, .LBB6_28
	b	.LBB6_30
.LBB6_114:                              # %vector.memcheck758
	alsl.d	$s2, $t1, $a2, 2
	alsl.d	$s1, $t1, $a4, 2
	sltu	$t2, $a2, $s1
	sltu	$t4, $a4, $s2
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB6_296
# %bb.115:                              # %vector.memcheck758
	alsl.d	$s0, $t1, $a5, 2
	sltu	$t4, $a2, $s0
	sltu	$t5, $a5, $s2
	and	$t4, $t4, $t5
	bnez	$t4, .LBB6_296
# %bb.116:                              # %vector.memcheck758
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s2
	and	$t4, $t4, $t6
	bnez	$t4, .LBB6_296
# %bb.117:                              # %vector.memcheck758
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s2
	and	$t6, $t6, $t7
	bnez	$t6, .LBB6_296
# %bb.118:                              # %vector.memcheck758
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s2
	and	$t7, $t7, $t8
	bnez	$t7, .LBB6_296
# %bb.119:                              # %vector.memcheck758
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$fp, $a1, $s2
	and	$t8, $t8, $fp
	bnez	$t8, .LBB6_296
# %bb.120:                              # %vector.memcheck758
	alsl.d	$t8, $t1, $a3, 2
	sltu	$fp, $a2, $t8
	sltu	$s3, $a3, $s2
	and	$fp, $fp, $s3
	bnez	$fp, .LBB6_296
# %bb.121:                              # %vector.memcheck758
	alsl.d	$fp, $t1, $a7, 2
	sltu	$s3, $a2, $fp
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB6_296
# %bb.122:                              # %vector.memcheck758
	sltu	$s2, $a4, $s0
	sltu	$s3, $a5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.123:                              # %vector.memcheck758
	sltu	$s2, $a4, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.124:                              # %vector.memcheck758
	sltu	$s2, $a4, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.125:                              # %vector.memcheck758
	sltu	$s2, $a4, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.126:                              # %vector.memcheck758
	sltu	$s2, $a4, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.127:                              # %vector.memcheck758
	sltu	$s2, $a4, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.128:                              # %vector.memcheck758
	sltu	$s2, $a4, $fp
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB6_296
# %bb.129:                              # %vector.memcheck758
	sltu	$s1, $a5, $t5
	sltu	$s2, $a6, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.130:                              # %vector.memcheck758
	sltu	$s1, $a5, $t4
	sltu	$s2, $t0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.131:                              # %vector.memcheck758
	sltu	$s1, $a5, $t6
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.132:                              # %vector.memcheck758
	sltu	$s1, $a5, $t7
	sltu	$s2, $a1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.133:                              # %vector.memcheck758
	sltu	$s1, $a5, $t8
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.134:                              # %vector.memcheck758
	sltu	$s1, $a5, $fp
	sltu	$s0, $a7, $s0
	and	$s0, $s1, $s0
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	bnez	$s0, .LBB6_33
# %bb.135:                              # %vector.memcheck758
	sltu	$s0, $a6, $t4
	sltu	$s1, $t0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_33
# %bb.136:                              # %vector.memcheck758
	sltu	$s0, $a6, $t6
	sltu	$s1, $a0, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_33
# %bb.137:                              # %vector.memcheck758
	sltu	$s0, $a6, $t7
	sltu	$s1, $a1, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_33
# %bb.138:                              # %vector.memcheck758
	sltu	$s0, $a6, $t8
	sltu	$s1, $a3, $t5
	and	$s0, $s0, $s1
	bnez	$s0, .LBB6_33
# %bb.139:                              # %vector.memcheck758
	sltu	$s0, $a6, $fp
	sltu	$t5, $a7, $t5
	and	$t5, $s0, $t5
	bnez	$t5, .LBB6_33
# %bb.140:                              # %vector.memcheck758
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_33
# %bb.141:                              # %vector.memcheck758
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_33
# %bb.142:                              # %vector.memcheck758
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_33
# %bb.143:                              # %vector.memcheck758
	sltu	$t5, $t0, $fp
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB6_33
# %bb.144:                              # %vector.ph889
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
.LBB6_145:                              # %vector.body894
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
	xvpickve.d	$xr13, $xr12, 1
	fcvt.s.d	$ft5, $ft5
	xvpickve.d	$xr14, $xr12, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr12, 2
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve.d	$xr12, $xr12, 3
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 3
	xvpickve.d	$xr12, $xr11, 0
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 4
	xvpickve.d	$xr12, $xr11, 1
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 5
	xvpickve.d	$xr12, $xr11, 2
	fcvt.s.d	$ft4, $ft4
	xvinsve0.w	$xr14, $xr12, 6
	xvpickve.d	$xr11, $xr11, 3
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
	xvpickve.d	$xr17, $xr16, 1
	fcvt.s.d	$ft9, $ft9
	xvpickve.d	$xr18, $xr16, 0
	fcvt.s.d	$ft10, $ft10
	xvinsve0.w	$xr18, $xr17, 1
	xvpickve.d	$xr17, $xr16, 2
	fcvt.s.d	$ft9, $ft9
	xvinsve0.w	$xr18, $xr17, 2
	xvpickve.d	$xr16, $xr16, 3
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 3
	xvpickve.d	$xr16, $xr15, 0
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 4
	xvpickve.d	$xr16, $xr15, 1
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 5
	xvpickve.d	$xr16, $xr15, 2
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr18, $xr16, 6
	xvpickve.d	$xr15, $xr15, 3
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
	xvpickve.d	$xr13, $xr10, 1
	fcvt.s.d	$ft5, $ft5
	xvpickve.d	$xr14, $xr10, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr14, $xr13, 1
	xvpickve.d	$xr13, $xr10, 2
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr14, $xr13, 2
	xvpickve.d	$xr10, $xr10, 3
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 3
	xvpickve.d	$xr10, $xr9, 0
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 4
	xvpickve.d	$xr10, $xr9, 1
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 5
	xvpickve.d	$xr10, $xr9, 2
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr14, $xr10, 6
	xvpickve.d	$xr9, $xr9, 3
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
	xvpickve.d	$xr7, $xr6, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr6, 0
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.d	$xr7, $xr6, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve.d	$xr6, $xr6, 3
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 3
	xvpickve.d	$xr6, $xr5, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 4
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 5
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 6
	xvpickve.d	$xr5, $xr5, 3
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
	bnez	$s5, .LBB6_145
# %bb.146:                              # %middle.block908
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	bne	$t1, $t2, .LBB6_33
	b	.LBB6_35
.LBB6_147:                              # %if.end340.thread
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	beq	$a0, $a1, .LBB6_44
	b	.LBB6_47
.LBB6_148:                              # %if.end448.thread
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.m)
	st.w	$zero, $a1, 0
.LBB6_149:                              # %for.end465
	ori	$t2, $zero, 1
	bnez	$t4, .LBB6_174
# %bb.150:
	movgr2fr.w	$fa0, $zero
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	b	.LBB6_175
.LBB6_151:                              # %vector.memcheck942
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a5, $a3, 2
	addi.d	$t1, $a1, 8
	sltu	$t1, $t0, $t1
	sltu	$t3, $a1, $t2
	and	$t1, $t1, $t3
	bnez	$t1, .LBB6_55
# %bb.152:                              # %vector.memcheck942
	addi.d	$t1, $a2, 4
	sltu	$t1, $t0, $t1
	sltu	$t3, $a2, $t2
	and	$t1, $t1, $t3
	bnez	$t1, .LBB6_55
# %bb.153:                              # %vector.memcheck942
	addi.d	$t1, $a4, 4
	alsl.d	$t3, $a5, $a4, 2
	sltu	$t3, $t0, $t3
	sltu	$t2, $t1, $t2
	and	$t2, $t3, $t2
	bnez	$t2, .LBB6_55
# %bb.154:                              # %vector.ph962
	move	$t2, $a7
	bstrins.d	$t2, $zero, 2, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	ori	$t3, $zero, 1
	move	$a6, $a7
	xvldrepl.w	$xr0, $a1, 4
	bstrins.d	$a6, $t3, 2, 0
	fmul.s	$fa1, $fa1, $fa2
	xvreplve0.w	$xr1, $xr1
	move	$t3, $t2
	.p2align	4, , 16
.LBB6_155:                              # %vector.body965
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t0, 0
	xvld	$xr3, $t1, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvfmul.s	$xr3, $xr0, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvst	$xr2, $t0, 0
	addi.d	$t0, $t0, 32
	addi.d	$t3, $t3, -8
	addi.d	$t1, $t1, 32
	bnez	$t3, .LBB6_155
# %bb.156:                              # %middle.block977
	bne	$a7, $t2, .LBB6_55
	b	.LBB6_57
.LBB6_157:                              # %vector.memcheck980
	addi.d	$a7, $t5, 4
	alsl.d	$t1, $a4, $t5, 2
	addi.d	$t0, $a1, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB6_59
# %bb.158:                              # %vector.memcheck980
	addi.d	$t0, $a2, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a2, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB6_59
# %bb.159:                              # %vector.memcheck980
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB6_59
# %bb.160:                              # %vector.ph1000
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
.LBB6_161:                              # %vector.body1003
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
	bnez	$t2, .LBB6_161
# %bb.162:                              # %middle.block1015
	bne	$a6, $t1, .LBB6_59
	b	.LBB6_61
.LBB6_163:                              # %vector.ph1023
	move	$a6, $zero
	move	$a7, $a4
	bstrins.d	$a7, $zero, 3, 0
	xvreplve0.w	$xr0, $xr19
	addi.d	$t0, $a2, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a5
	move	$t1, $a7
	.p2align	4, , 16
.LBB6_164:                              # %vector.body1028
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
	bnez	$t1, .LBB6_164
# %bb.165:                              # %middle.block1033
	beq	$a4, $a7, .LBB6_173
# %bb.166:                              # %vec.epilog.iter.check
	andi	$a6, $a4, 12
	beqz	$a6, .LBB6_170
.LBB6_167:                              # %vec.epilog.ph
	move	$t0, $a4
	bstrins.d	$t0, $zero, 1, 0
	ori	$t1, $zero, 1
	move	$a6, $a4
	bstrins.d	$a6, $t1, 1, 0
	vreplvei.w	$vr0, $vr19, 0
	addi.d	$t1, $a2, 4
	slli.d	$t2, $a7, 2
	sub.d	$a7, $a7, $t0
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a5
	.p2align	4, , 16
.LBB6_168:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $t5, $t2
	vstx	$vr1, $t1, $t2
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a5, $a1, $t2
	vst	$vr3, $a5, 4
	addi.d	$a7, $a7, 4
	addi.d	$t2, $t2, 16
	bnez	$a7, .LBB6_168
# %bb.169:                              # %vec.epilog.middle.block
	bne	$a4, $t0, .LBB6_171
	b	.LBB6_173
.LBB6_170:
	addi.d	$a6, $a7, 1
.LBB6_171:                              # %for.body454.preheader
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	fld.s	$fa0, $a4, %pc_lo12(.LCPI6_2)
	slli.d	$a4, $a6, 2
	addi.d	$a5, $t5, -4
	sub.d	$a3, $a3, $a6
	.p2align	4, , 16
.LBB6_172:                              # %for.body454
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a5, $a4
	stx.w	$zero, $a2, $a4
	fmadd.s	$fa1, $ft11, $fa0, $fa1
	fstx.s	$fa1, $a1, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB6_172
.LBB6_173:
	move	$t2, $zero
.LBB6_174:                              # %if.else470
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a0, $a2
	srai.d	$a2, $a2, 30
	fldx.s	$fa0, $t5, $a2
	st.d	$t2, $sp, 376                   # 8-byte Folded Spill
	move	$t2, $zero
.LBB6_175:                              # %if.end475
	ld.w	$s1, $t7, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(Q__align_gapmap.lastverticalw)
	sltu	$a2, $zero, $s1
	add.w	$a4, $a2, $s5
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 368                   # 8-byte Folded Spill
	fst.s	$fa0, $a3, 0
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	blt	$a4, $a2, .LBB6_193
# %bb.176:                              # %for.body484.lr.ph
	st.d	$t7, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t3, $a2, %pc_lo12(Q__align_gapmap.initverticalw)
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.cpmx1)
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.cpmx2)
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.floatwork)
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.intwork)
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.ijp)
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.mp)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.gapz_n2)
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	addi.d	$s5, $a4, 8
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fgcp2g)
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align_gapmap.ogcp2g)
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	st.d	$t1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	st.d	$t1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.gapz_n1)
	st.d	$t1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.fgcp1g)
	st.d	$t1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$t1, $s8, %pc_lo12(Q__align_gapmap.ogcp1g)
	st.d	$t1, $sp, 160                   # 8-byte Folded Spill
	ori	$t1, $zero, 0
	lu32i.d	$t1, -1
	add.d	$a0, $a0, $t1
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$t2, $sp, 256                   # 8-byte Folded Spill
	or	$a0, $a0, $t2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$s2, $a1, 4
	addi.d	$s0, $a2, 4
	addi.d	$fp, $a3, 4
	addi.d	$s1, $a5, 4
	addi.d	$s7, $a6, 4
	addi.d	$s4, $a7, 4
	addi.d	$s6, $a4, 4
	addi.d	$s3, $t0, 4
	movgr2fr.w	$fs0, $zero
	ori	$s8, $zero, 1
	st.d	$t3, $sp, 328                   # 8-byte Folded Spill
	b	.LBB6_178
	.p2align	4, , 16
.LBB6_177:                              # %for.end592
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa0, $t1, $a1
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $t5
	move	$s8, $a0
	move	$t5, $t1
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB6_194
.LBB6_178:                              # %for.body484
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_183 Depth 2
                                        #     Child Loop BB6_187 Depth 2
	addi.d	$t2, $s8, -1
	slli.d	$a0, $t2, 2
	fldx.s	$fa0, $t3, $a0
	move	$t1, $t6
	move	$t6, $t5
	fst.s	$fa0, $t5, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	slli.d	$t5, $s8, 2
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB6_181
# %bb.179:                              # %if.else493
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_184
# %bb.180:                              # %if.end494.thread
                                        #   in Loop: Header=BB6_178 Depth=1
	move	$a0, $t1
	move	$a1, $zero
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$t6, $sp, 416                   # 8-byte Folded Spill
	st.d	$t1, $sp, 408                   # 8-byte Folded Spill
	st.d	$t2, $sp, 400                   # 8-byte Folded Spill
	st.d	$t5, $sp, 392                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_182
	b	.LBB6_184
	.p2align	4, , 16
.LBB6_181:                              # %if.end494
                                        #   in Loop: Header=BB6_178 Depth=1
	move	$a0, $t1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $t4
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	move	$a7, $zero
	st.d	$t6, $sp, 416                   # 8-byte Folded Spill
	st.d	$t1, $sp, 408                   # 8-byte Folded Spill
	st.d	$t2, $sp, 400                   # 8-byte Folded Spill
	st.d	$t5, $sp, 392                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_184
.LBB6_182:                              # %while.body.i443.preheader
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $t5
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $t1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_183:                              # %while.body.i443
                                        #   Parent Loop BB6_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 2
	fldx.s	$fa0, $a0, $a4
	fld.s	$fa1, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a1, .LBB6_183
.LBB6_184:                              # %if.end499
                                        #   in Loop: Header=BB6_178 Depth=1
	fldx.s	$fa0, $t3, $t5
	fst.s	$fa0, $t1, 0
	addi.d	$a0, $s8, 1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_177
# %bb.185:                              # %for.body539.preheader
                                        #   in Loop: Header=BB6_178 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	fldx.s	$fa0, $a4, $t5
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	fldx.s	$fa1, $a4, $t5
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	fldx.s	$fa2, $a4, $t5
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	fldx.s	$fa3, $a4, $t5
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	fldx.s	$fa4, $a5, $t5
	slli.d	$a4, $a0, 2
	fldx.s	$fa5, $a5, $a4
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	fldx.s	$fa6, $a4, $t5
	fld.s	$ft0, $t6, 0
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	fld.s	$ft1, $a4, %pc_lo12(.LCPI6_2)
	slli.d	$a4, $s8, 3
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a4
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	fldx.s	$fa7, $a4, $t5
	xvld	$xr10, $sp, 288                 # 32-byte Folded Reload
	fmadd.s	$ft0, $ft2, $ft1, $ft0
	addi.d	$a4, $t1, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $zero, -1
	b	.LBB6_187
	.p2align	4, , 16
.LBB6_186:                              # %if.end576
                                        #   in Loop: Header=BB6_187 Depth=2
	fmul.s	$ft2, $fa4, $ft2
	fadd.s	$ft1, $ft1, $ft2
	fcmp.cult.s	$fcc0, $ft1, $ft0
	fsel	$ft0, $ft1, $ft0, $fcc0
	movcf2gr	$a7, $fcc0
	fldx.s	$ft1, $a4, $a2
	masknez	$t0, $a1, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $t0
	fadd.s	$ft1, $fs0, $ft1
	fstx.s	$ft1, $a4, $a2
	addi.d	$a2, $a2, 4
	addi.w	$a1, $a1, 1
	addi.d	$a6, $a6, -1
	beq	$t4, $a1, .LBB6_177
.LBB6_187:                              # %for.body539
                                        #   Parent Loop BB6_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $s7, $a2
	fldx.s	$ft1, $t6, $a2
	fldx.s	$ft3, $s3, $a2
	fmul.s	$ft2, $fa7, $ft2
	fadd.s	$ft2, $ft1, $ft2
	fldx.s	$ft4, $s4, $a2
	fmul.s	$ft3, $fa2, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fldx.s	$ft3, $s6, $a2
	fmul.s	$ft4, $fa6, $ft4
	fldx.s	$ft5, $fp, $a2
	fadd.s	$ft2, $ft2, $ft4
	fmul.s	$ft3, $fa3, $ft3
	fadd.s	$fs0, $ft2, $ft3
	fmul.s	$ft2, $fa5, $ft5
	fadd.s	$ft2, $ft0, $ft2
	fcmp.cule.s	$fcc0, $ft2, $fs0
	stx.w	$zero, $a5, $a2
	bcnez	$fcc0, .LBB6_189
# %bb.188:                              # %if.then552
                                        #   in Loop: Header=BB6_187 Depth=2
	add.d	$a7, $a3, $a6
	stx.w	$a7, $a5, $a2
	fmov.s	$fs0, $ft2
.LBB6_189:                              # %if.end555
                                        #   in Loop: Header=BB6_187 Depth=2
	add.d	$a7, $s5, $a2
	fld.s	$ft4, $a7, 0
	fldx.s	$ft3, $s2, $a2
	fldx.s	$ft2, $s1, $a2
	fmul.s	$ft4, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB6_191
# %bb.190:                              # %if.then567
                                        #   in Loop: Header=BB6_187 Depth=2
	ldx.w	$t0, $s0, $a2
	sub.d	$t0, $s8, $t0
	stx.w	$t0, $a5, $a2
	fmov.s	$fs0, $ft4
.LBB6_191:                              # %if.end569
                                        #   in Loop: Header=BB6_187 Depth=2
	fld.s	$ft4, $a7, -4
	fmul.s	$ft4, $fa1, $ft4
	fadd.s	$ft4, $ft1, $ft4
	fcmp.cult.s	$fcc0, $ft4, $ft3
	bcnez	$fcc0, .LBB6_186
# %bb.192:                              # %if.then574
                                        #   in Loop: Header=BB6_187 Depth=2
	fstx.s	$ft4, $s2, $a2
	stx.w	$t2, $s0, $a2
	b	.LBB6_186
.LBB6_193:
	movgr2fr.w	$fs0, $zero
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	bnez	$s1, .LBB6_209
	b	.LBB6_195
.LBB6_194:                              # %for.end600.loopexit
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$s1, $a0, 0
	move	$t5, $t1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	bnez	$s1, .LBB6_209
.LBB6_195:                              # %for.cond603.preheader
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_202
# %bb.196:                              # %for.body607.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_200
# %bb.197:                              # %vector.ph1047
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	xvreplgr2vr.d	$xr1, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI6_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI6_3)
	pcalau12i	$a5, %pc_hi20(.LCPI6_4)
	xvld	$xr3, $a5, %pc_lo12(.LCPI6_4)
	addi.d	$a5, $t5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_198:                              # %vector.body1054
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
	xvpickve.d	$xr7, $xr5, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr5, 0
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.d	$xr7, $xr5, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 3
	xvpickve.d	$xr5, $xr6, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 4
	xvpickve.d	$xr5, $xr6, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 5
	xvpickve.d	$xr5, $xr6, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 6
	xvpickve.d	$xr5, $xr6, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 7
	xvst	$xr8, $a5, 0
	xvaddi.du	$xr3, $xr3, 8
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_198
# %bb.199:                              # %middle.block1061
	beq	$a2, $a4, .LBB6_202
.LBB6_200:                              # %for.body607.preheader
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_201:                              # %for.body607
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
	bnez	$a1, .LBB6_201
.LBB6_202:                              # %for.cond620.preheader
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB6_209
# %bb.203:                              # %for.body624.lr.ph
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $s5, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.lastverticalw)
	addi.d	$a2, $s5, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB6_207
# %bb.204:                              # %vector.ph1066
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI6_5)
	vld	$vr4, $a5, %pc_lo12(.LCPI6_5)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_205:                              # %vector.body1073
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
	vst	$vr8, $a5, 0
	vaddi.wu	$vr4, $vr4, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_205
# %bb.206:                              # %middle.block1080
	beq	$a3, $a4, .LBB6_209
.LBB6_207:                              # %for.body624.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB6_208:                              # %for.body624
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
	bnez	$a2, .LBB6_208
.LBB6_209:                              # %if.end638
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(Q__align_gapmap.lastverticalw)
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $s0, %pc_lo12(Q__align_gapmap.mseq1)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(Q__align_gapmap.mseq2)
	ld.d	$s3, $t0, %pc_lo12(Q__align_gapmap.ijp)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_211
# %bb.210:                              # %if.else641
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $t5
	move	$a1, $s8
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s5
	move	$a6, $s3
	move	$a7, $ra
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s0, %pc_lo12(Q__align_gapmap.mseq1)
	b	.LBB6_285
.LBB6_211:                              # %if.then640
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$fp, $t5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
	addi.w	$a1, $s7, 0
	addi.w	$a2, $a0, 0
	beq	$s1, $a3, .LBB6_222
# %bb.212:                              # %if.else.i
	move	$t0, $fp
	fld.s	$fa0, $s8, 0
	blt	$a1, $a3, .LBB6_217
# %bb.213:                              # %for.body.lr.ph.i
	slli.d	$a3, $s7, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	slli.d	$a4, $a0, 32
	srai.d	$a4, $a4, 30
	bstrpick.d	$a5, $s7, 30, 0
	move	$a6, $s7
	b	.LBB6_215
	.p2align	4, , 16
.LBB6_214:                              # %for.inc.i
                                        #   in Loop: Header=BB6_215 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	addi.d	$s8, $s8, 4
	beqz	$a5, .LBB6_217
.LBB6_215:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s8, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_214
# %bb.216:                              # %if.then11.i
                                        #   in Loop: Header=BB6_215 Depth=1
	ldx.d	$a7, $s3, $a3
	stx.w	$a6, $a7, $a4
	fmov.s	$fa0, $fa1
	b	.LBB6_214
.LBB6_217:                              # %for.cond19.preheader.i
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB6_222
# %bb.218:                              # %for.body22.lr.ph.i
	slli.d	$a3, $s7, 32
	srai.d	$a3, $a3, 29
	slli.d	$a4, $a0, 2
	bstrpick.d	$a4, $a4, 32, 2
	slli.d	$a4, $a4, 2
	bstrpick.d	$a5, $a0, 30, 0
	sub.d	$a6, $zero, $a0
	b	.LBB6_220
	.p2align	4, , 16
.LBB6_219:                              # %for.inc38.i
                                        #   in Loop: Header=BB6_220 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 4
	beqz	$a5, .LBB6_222
.LBB6_220:                              # %for.body22.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_219
# %bb.221:                              # %if.then27.i
                                        #   in Loop: Header=BB6_220 Depth=1
	ldx.d	$a7, $s3, $a3
	stx.w	$a6, $a7, $a4
	fmov.s	$fa0, $fa1
	b	.LBB6_219
.LBB6_222:                              # %if.end41.i
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	bltz	$a1, .LBB6_230
# %bb.223:                              # %for.body45.preheader.i
	addi.d	$a4, $s7, 1
	bstrpick.d	$a3, $a4, 31, 0
	ori	$a5, $zero, 4
	bgeu	$a3, $a5, .LBB6_225
# %bb.224:
	move	$a4, $zero
	b	.LBB6_228
.LBB6_225:                              # %vector.ph1085
	pcalau12i	$a5, %pc_hi20(.LCPI6_6)
	vld	$vr0, $a5, %pc_lo12(.LCPI6_6)
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $s3, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_226:                              # %vector.body1088
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
	bnez	$a6, .LBB6_226
# %bb.227:                              # %middle.block1095
	beq	$a3, $a4, .LBB6_230
.LBB6_228:                              # %for.body45.i.preheader
	alsl.d	$a5, $a4, $s3, 3
	sub.d	$a3, $a3, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB6_229:                              # %for.body45.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.w	$a4, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 1
	bnez	$a3, .LBB6_229
.LBB6_230:                              # %for.cond53.preheader.i
	bltz	$a2, .LBB6_244
# %bb.231:                              # %iter.check1101
	ld.d	$a2, $s3, 0
	addi.d	$a5, $a0, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB6_233
# %bb.232:
	move	$a4, $zero
	b	.LBB6_242
.LBB6_233:                              # %vector.main.loop.iter.check1103
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB6_235
# %bb.234:
	move	$a4, $zero
	b	.LBB6_239
.LBB6_235:                              # %vector.ph1104
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI6_7)
	xvld	$xr0, $a6, %pc_lo12(.LCPI6_7)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB6_236:                              # %vector.body1107
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB6_236
# %bb.237:                              # %middle.block1113
	beq	$a3, $a4, .LBB6_244
# %bb.238:                              # %vec.epilog.iter.check1118
	andi	$a6, $a5, 12
	beqz	$a6, .LBB6_242
.LBB6_239:                              # %vec.epilog.ph1117
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI6_8)
	vld	$vr0, $a4, %pc_lo12(.LCPI6_8)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB6_240:                              # %vec.epilog.vector.body1125
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB6_240
# %bb.241:                              # %vec.epilog.middle.block1130
	beq	$a3, $a4, .LBB6_244
.LBB6_242:                              # %for.body57.i.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB6_243:                              # %for.body57.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB6_243
.LBB6_244:                              # %for.cond66.preheader.i
	ori	$a4, $zero, 1
	add.w	$a2, $a0, $s7
	blt	$ra, $a4, .LBB6_247
# %bb.245:                              # %for.body69.lr.ph.i
	move	$a3, $s4
	move	$a5, $ra
	.p2align	4, , 16
.LBB6_246:                              # %for.body69.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	add.d	$a7, $a6, $a2
	st.d	$a7, $a3, 0
	stx.b	$zero, $a6, $a2
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 8
	bnez	$a5, .LBB6_246
.LBB6_247:                              # %for.cond78.preheader.i
	ld.d	$a3, $sp, 544
	blt	$s8, $a4, .LBB6_250
# %bb.248:                              # %for.body81.lr.ph.i
	move	$a4, $s5
	move	$a5, $s8
	.p2align	4, , 16
.LBB6_249:                              # %for.body81.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	add.d	$a7, $a6, $a2
	st.d	$a7, $a4, 0
	stx.b	$zero, $a6, $a2
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB6_249
.LBB6_250:                              # %for.end91.i
	st.w	$zero, $a3, 0
	bltz	$a2, .LBB6_283
# %bb.251:                              # %for.body96.lr.ph.i
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(impmtx)
	ld.d	$a5, $a5, %pc_lo12(impmtx)
	bstrpick.d	$a6, $ra, 31, 0
	bstrpick.d	$a7, $s8, 31, 0
	ori	$t0, $zero, 1
	ori	$t1, $zero, 45
	move	$t2, $a0
	b	.LBB6_253
	.p2align	4, , 16
.LBB6_252:                              # %for.end233.i
                                        #   in Loop: Header=BB6_253 Depth=1
	addi.w	$a4, $a4, 2
	move	$s7, $t3
	blt	$a2, $a4, .LBB6_283
.LBB6_253:                              # %for.body96.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_260 Depth 2
                                        #       Child Loop BB6_261 Depth 3
                                        #       Child Loop BB6_263 Depth 3
                                        #     Child Loop BB6_268 Depth 2
                                        #       Child Loop BB6_269 Depth 3
                                        #       Child Loop BB6_271 Depth 3
                                        #     Child Loop BB6_279 Depth 2
                                        #     Child Loop BB6_282 Depth 2
	addi.w	$t4, $s7, 0
	slli.d	$t3, $t4, 3
	ldx.d	$t3, $s3, $t3
	addi.w	$t5, $t2, 0
	slli.d	$t6, $t5, 2
	ldx.w	$t7, $t3, $t6
	ld.d	$t3, $sp, 336                   # 8-byte Folded Reload
	bge	$t3, $t7, .LBB6_256
# %bb.254:                              # %if.else110.i
                                        #   in Loop: Header=BB6_253 Depth=1
	beqz	$t7, .LBB6_257
# %bb.255:                              # %if.then117.i
                                        #   in Loop: Header=BB6_253 Depth=1
	sub.w	$t3, $s7, $t7
	b	.LBB6_258
	.p2align	4, , 16
.LBB6_256:                              # %if.then103.i
                                        #   in Loop: Header=BB6_253 Depth=1
	addi.w	$t3, $s7, -1
	nor	$t8, $t3, $zero
	add.w	$fp, $s7, $t8
	bnez	$fp, .LBB6_260
	b	.LBB6_265
	.p2align	4, , 16
.LBB6_257:                              # %if.else124.i
                                        #   in Loop: Header=BB6_253 Depth=1
	addi.w	$t3, $s7, -1
.LBB6_258:                              # %if.end128.i
                                        #   in Loop: Header=BB6_253 Depth=1
	ld.d	$t7, $sp, 336                   # 8-byte Folded Reload
	nor	$t8, $t3, $zero
	add.w	$fp, $s7, $t8
	bnez	$fp, .LBB6_260
	b	.LBB6_265
	.p2align	4, , 16
.LBB6_259:                              # %for.end153.i
                                        #   in Loop: Header=BB6_260 Depth=2
	addi.d	$fp, $fp, -1
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	beqz	$fp, .LBB6_264
.LBB6_260:                              # %for.cond130.preheader.i
                                        #   Parent Loop BB6_253 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_261 Depth 3
                                        #       Child Loop BB6_263 Depth 3
	ld.d	$s0, $sp, 432                   # 8-byte Folded Reload
	move	$s1, $s4
	move	$s2, $a6
	blt	$ra, $t0, .LBB6_262
	.p2align	4, , 16
.LBB6_261:                              # %for.body133.i
                                        #   Parent Loop BB6_253 Depth=1
                                        #     Parent Loop BB6_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s0, 0
	ld.d	$s8, $s1, 0
	add.d	$s6, $s6, $fp
	ldx.b	$s6, $s6, $t3
	addi.d	$ra, $s8, -1
	st.d	$ra, $s1, 0
	st.b	$s6, $s8, -1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	bnez	$s2, .LBB6_261
.LBB6_262:                              # %for.cond144.preheader.i
                                        #   in Loop: Header=BB6_260 Depth=2
	move	$s0, $s5
	move	$s1, $a7
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	blt	$s8, $t0, .LBB6_259
	.p2align	4, , 16
.LBB6_263:                              # %for.body147.i
                                        #   Parent Loop BB6_253 Depth=1
                                        #     Parent Loop BB6_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s0, 0
	addi.d	$s6, $s2, -1
	st.d	$s6, $s0, 0
	st.b	$t1, $s2, -1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB6_263
	b	.LBB6_259
	.p2align	4, , 16
.LBB6_264:                              # %while.end.loopexit.i
                                        #   in Loop: Header=BB6_253 Depth=1
	add.d	$a4, $s7, $a4
	add.d	$a4, $t8, $a4
.LBB6_265:                              # %while.end.i
                                        #   in Loop: Header=BB6_253 Depth=1
	add.w	$t2, $t7, $t2
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 336                   # 8-byte Folded Reload
	beq	$t7, $t8, .LBB6_272
# %bb.266:                              # %for.cond160.preheader.preheader.i
                                        #   in Loop: Header=BB6_253 Depth=1
	nor	$t7, $t7, $zero
	b	.LBB6_268
	.p2align	4, , 16
.LBB6_267:                              # %for.end185.i
                                        #   in Loop: Header=BB6_268 Depth=2
	addi.d	$t7, $t7, -1
	addi.d	$a4, $a4, 1
	beqz	$t7, .LBB6_272
.LBB6_268:                              # %for.cond160.preheader.i
                                        #   Parent Loop BB6_253 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_269 Depth 3
                                        #       Child Loop BB6_271 Depth 3
	move	$t8, $s4
	move	$fp, $a6
	blt	$ra, $t0, .LBB6_270
	.p2align	4, , 16
.LBB6_269:                              # %for.body163.i
                                        #   Parent Loop BB6_253 Depth=1
                                        #     Parent Loop BB6_268 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $t8, 0
	addi.d	$s1, $s0, -1
	st.d	$s1, $t8, 0
	st.b	$t1, $s0, -1
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 8
	bnez	$fp, .LBB6_269
.LBB6_270:                              # %for.cond171.preheader.i
                                        #   in Loop: Header=BB6_268 Depth=2
	move	$t8, $s7
	move	$fp, $s5
	move	$s0, $a7
	blt	$s8, $t0, .LBB6_267
	.p2align	4, , 16
.LBB6_271:                              # %for.body174.i
                                        #   Parent Loop BB6_253 Depth=1
                                        #     Parent Loop BB6_268 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $t8, 0
	ld.d	$s2, $fp, 0
	add.d	$s1, $s1, $t7
	ldx.b	$s1, $s1, $t2
	addi.d	$s6, $s2, -1
	st.d	$s6, $fp, 0
	st.b	$s1, $s2, -1
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$t8, $t8, 8
	bnez	$s0, .LBB6_271
	b	.LBB6_267
	.p2align	4, , 16
.LBB6_272:                              # %while.end187.i
                                        #   in Loop: Header=BB6_253 Depth=1
	beq	$t4, $a1, .LBB6_275
# %bb.273:                              # %while.end187.i
                                        #   in Loop: Header=BB6_253 Depth=1
	addi.w	$t7, $a0, 0
	beq	$t5, $t7, .LBB6_275
# %bb.274:                              # %if.then192.i
                                        #   in Loop: Header=BB6_253 Depth=1
	slli.d	$t7, $t4, 2
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	ldx.w	$t7, $t8, $t7
	ld.d	$t8, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$t6, $t8, $t6
	slli.d	$t7, $t7, 3
	ldx.d	$t7, $a5, $t7
	slli.d	$t6, $t6, 2
	fldx.s	$fa0, $t7, $t6
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
.LBB6_275:                              # %if.end199.i
                                        #   in Loop: Header=BB6_253 Depth=1
	blt	$t4, $t0, .LBB6_284
# %bb.276:                              # %if.end199.i
                                        #   in Loop: Header=BB6_253 Depth=1
	blt	$t5, $t0, .LBB6_284
# %bb.277:                              # %for.cond206.preheader.i
                                        #   in Loop: Header=BB6_253 Depth=1
	blt	$ra, $t0, .LBB6_280
# %bb.278:                              # %for.body209.lr.ph.i
                                        #   in Loop: Header=BB6_253 Depth=1
	ld.d	$t4, $sp, 432                   # 8-byte Folded Reload
	move	$t5, $s4
	move	$t6, $a6
	.p2align	4, , 16
.LBB6_279:                              # %for.body209.i
                                        #   Parent Loop BB6_253 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t4, 0
	ld.d	$t8, $t5, 0
	ldx.b	$t7, $t7, $t3
	addi.d	$fp, $t8, -1
	st.d	$fp, $t5, 0
	st.b	$t7, $t8, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB6_279
.LBB6_280:                              # %for.cond220.preheader.i
                                        #   in Loop: Header=BB6_253 Depth=1
	blt	$s8, $t0, .LBB6_252
# %bb.281:                              # %for.body223.lr.ph.i
                                        #   in Loop: Header=BB6_253 Depth=1
	move	$t5, $s5
	move	$t6, $a7
	.p2align	4, , 16
.LBB6_282:                              # %for.body223.i
                                        #   Parent Loop BB6_253 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $s7, 0
	ld.d	$t8, $t5, 0
	ldx.b	$t7, $t7, $t2
	addi.d	$fp, $t8, -1
	st.d	$fp, $t5, 0
	st.b	$t7, $t8, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$s7, $s7, 8
	bnez	$t6, .LBB6_282
	b	.LBB6_252
.LBB6_283:
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
.LBB6_284:                              # %if.end643
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
.LBB6_285:                              # %if.end643
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB6_294
# %bb.286:                              # %if.end643
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB6_294
.LBB6_287:                              # %if.end654
	ori	$fp, $zero, 1
	ld.d	$s1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	blt	$a2, $fp, .LBB6_290
# %bb.288:                              # %for.body658.lr.ph
	ld.d	$s0, $s0, %pc_lo12(Q__align_gapmap.mseq1)
	.p2align	4, , 16
.LBB6_289:                              # %for.body658
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s0, 0
	move	$s2, $a2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$a2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$a2, .LBB6_289
.LBB6_290:                              # %for.cond667.preheader
	blt	$s1, $fp, .LBB6_293
# %bb.291:                              # %for.body670.lr.ph
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Q__align_gapmap.mseq2)
	.p2align	4, , 16
.LBB6_292:                              # %for.body670
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s7, $s7, 8
	bnez	$s1, .LBB6_292
.LBB6_293:                              # %for.end678
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
.LBB6_294:                              # %if.then652
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a4, $a4, 2880
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	b	.LBB6_287
.LBB6_295:
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	b	.LBB6_28
.LBB6_296:
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	b	.LBB6_33
.Lfunc_end6:
	.size	Q__align_gapmap, .Lfunc_end6-Q__align_gapmap
                                        # -- End function
	.type	impmtx,@object                  # @impmtx
	.local	impmtx
	.comm	impmtx,8,8
	.type	imp_match_init_strictQ.nocount1,@object # @imp_match_init_strictQ.nocount1
	.local	imp_match_init_strictQ.nocount1
	.comm	imp_match_init_strictQ.nocount1,8,8
	.type	imp_match_init_strictQ.nocount2,@object # @imp_match_init_strictQ.nocount2
	.local	imp_match_init_strictQ.nocount2
	.comm	imp_match_init_strictQ.nocount2,8,8
	.type	impalloclen,@object             # @impalloclen
	.local	impalloclen
	.comm	impalloclen,4,4
	.type	Q__align.m,@object              # @Q__align.m
	.local	Q__align.m
	.comm	Q__align.m,8,8
	.type	Q__align.ijp,@object            # @Q__align.ijp
	.local	Q__align.ijp
	.comm	Q__align.ijp,8,8
	.type	Q__align.mp,@object             # @Q__align.mp
	.local	Q__align.mp
	.comm	Q__align.mp,8,8
	.type	Q__align.w1,@object             # @Q__align.w1
	.local	Q__align.w1
	.comm	Q__align.w1,8,8
	.type	Q__align.w2,@object             # @Q__align.w2
	.local	Q__align.w2
	.comm	Q__align.w2,8,8
	.type	Q__align.match,@object          # @Q__align.match
	.local	Q__align.match
	.comm	Q__align.match,8,8
	.type	Q__align.initverticalw,@object  # @Q__align.initverticalw
	.local	Q__align.initverticalw
	.comm	Q__align.initverticalw,8,8
	.type	Q__align.lastverticalw,@object  # @Q__align.lastverticalw
	.local	Q__align.lastverticalw
	.comm	Q__align.lastverticalw,8,8
	.type	Q__align.mseq1,@object          # @Q__align.mseq1
	.local	Q__align.mseq1
	.comm	Q__align.mseq1,8,8
	.type	Q__align.mseq2,@object          # @Q__align.mseq2
	.local	Q__align.mseq2
	.comm	Q__align.mseq2,8,8
	.type	Q__align.mseq,@object           # @Q__align.mseq
	.local	Q__align.mseq
	.comm	Q__align.mseq,8,8
	.type	Q__align.digf1,@object          # @Q__align.digf1
	.local	Q__align.digf1
	.comm	Q__align.digf1,8,8
	.type	Q__align.digf2,@object          # @Q__align.digf2
	.local	Q__align.digf2
	.comm	Q__align.digf2,8,8
	.type	Q__align.diaf1,@object          # @Q__align.diaf1
	.local	Q__align.diaf1
	.comm	Q__align.diaf1,8,8
	.type	Q__align.diaf2,@object          # @Q__align.diaf2
	.local	Q__align.diaf2
	.comm	Q__align.diaf2,8,8
	.type	Q__align.gapz1,@object          # @Q__align.gapz1
	.local	Q__align.gapz1
	.comm	Q__align.gapz1,8,8
	.type	Q__align.gapz2,@object          # @Q__align.gapz2
	.local	Q__align.gapz2
	.comm	Q__align.gapz2,8,8
	.type	Q__align.gapf1,@object          # @Q__align.gapf1
	.local	Q__align.gapf1
	.comm	Q__align.gapf1,8,8
	.type	Q__align.gapf2,@object          # @Q__align.gapf2
	.local	Q__align.gapf2
	.comm	Q__align.gapf2,8,8
	.type	Q__align.ogcp1g,@object         # @Q__align.ogcp1g
	.local	Q__align.ogcp1g
	.comm	Q__align.ogcp1g,8,8
	.type	Q__align.ogcp2g,@object         # @Q__align.ogcp2g
	.local	Q__align.ogcp2g
	.comm	Q__align.ogcp2g,8,8
	.type	Q__align.fgcp1g,@object         # @Q__align.fgcp1g
	.local	Q__align.fgcp1g
	.comm	Q__align.fgcp1g,8,8
	.type	Q__align.fgcp2g,@object         # @Q__align.fgcp2g
	.local	Q__align.fgcp2g
	.comm	Q__align.fgcp2g,8,8
	.type	Q__align.og_h_dg_n1_p,@object   # @Q__align.og_h_dg_n1_p
	.local	Q__align.og_h_dg_n1_p
	.comm	Q__align.og_h_dg_n1_p,8,8
	.type	Q__align.og_h_dg_n2_p,@object   # @Q__align.og_h_dg_n2_p
	.local	Q__align.og_h_dg_n2_p
	.comm	Q__align.og_h_dg_n2_p,8,8
	.type	Q__align.fg_h_dg_n1_p,@object   # @Q__align.fg_h_dg_n1_p
	.local	Q__align.fg_h_dg_n1_p
	.comm	Q__align.fg_h_dg_n1_p,8,8
	.type	Q__align.fg_h_dg_n2_p,@object   # @Q__align.fg_h_dg_n2_p
	.local	Q__align.fg_h_dg_n2_p
	.comm	Q__align.fg_h_dg_n2_p,8,8
	.type	Q__align.og_t_fg_h_dg_n1_p,@object # @Q__align.og_t_fg_h_dg_n1_p
	.local	Q__align.og_t_fg_h_dg_n1_p
	.comm	Q__align.og_t_fg_h_dg_n1_p,8,8
	.type	Q__align.og_t_fg_h_dg_n2_p,@object # @Q__align.og_t_fg_h_dg_n2_p
	.local	Q__align.og_t_fg_h_dg_n2_p
	.comm	Q__align.og_t_fg_h_dg_n2_p,8,8
	.type	Q__align.fg_t_og_h_dg_n1_p,@object # @Q__align.fg_t_og_h_dg_n1_p
	.local	Q__align.fg_t_og_h_dg_n1_p
	.comm	Q__align.fg_t_og_h_dg_n1_p,8,8
	.type	Q__align.fg_t_og_h_dg_n2_p,@object # @Q__align.fg_t_og_h_dg_n2_p
	.local	Q__align.fg_t_og_h_dg_n2_p
	.comm	Q__align.fg_t_og_h_dg_n2_p,8,8
	.type	Q__align.gapz_n1,@object        # @Q__align.gapz_n1
	.local	Q__align.gapz_n1
	.comm	Q__align.gapz_n1,8,8
	.type	Q__align.gapz_n2,@object        # @Q__align.gapz_n2
	.local	Q__align.gapz_n2
	.comm	Q__align.gapz_n2,8,8
	.type	Q__align.cpmx1,@object          # @Q__align.cpmx1
	.local	Q__align.cpmx1
	.comm	Q__align.cpmx1,8,8
	.type	Q__align.cpmx2,@object          # @Q__align.cpmx2
	.local	Q__align.cpmx2
	.comm	Q__align.cpmx2,8,8
	.type	Q__align.intwork,@object        # @Q__align.intwork
	.local	Q__align.intwork
	.comm	Q__align.intwork,8,8
	.type	Q__align.floatwork,@object      # @Q__align.floatwork
	.local	Q__align.floatwork
	.comm	Q__align.floatwork,8,8
	.type	Q__align.orlgth1,@object        # @Q__align.orlgth1
	.local	Q__align.orlgth1
	.comm	Q__align.orlgth1,4,4
	.type	Q__align.orlgth2,@object        # @Q__align.orlgth2
	.local	Q__align.orlgth2
	.comm	Q__align.orlgth2,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.1, 14

	.type	Q__align_gapmap.m,@object       # @Q__align_gapmap.m
	.local	Q__align_gapmap.m
	.comm	Q__align_gapmap.m,8,8
	.type	Q__align_gapmap.ijp,@object     # @Q__align_gapmap.ijp
	.local	Q__align_gapmap.ijp
	.comm	Q__align_gapmap.ijp,8,8
	.type	Q__align_gapmap.mp,@object      # @Q__align_gapmap.mp
	.local	Q__align_gapmap.mp
	.comm	Q__align_gapmap.mp,8,8
	.type	Q__align_gapmap.w1,@object      # @Q__align_gapmap.w1
	.local	Q__align_gapmap.w1
	.comm	Q__align_gapmap.w1,8,8
	.type	Q__align_gapmap.w2,@object      # @Q__align_gapmap.w2
	.local	Q__align_gapmap.w2
	.comm	Q__align_gapmap.w2,8,8
	.type	Q__align_gapmap.match,@object   # @Q__align_gapmap.match
	.local	Q__align_gapmap.match
	.comm	Q__align_gapmap.match,8,8
	.type	Q__align_gapmap.initverticalw,@object # @Q__align_gapmap.initverticalw
	.local	Q__align_gapmap.initverticalw
	.comm	Q__align_gapmap.initverticalw,8,8
	.type	Q__align_gapmap.lastverticalw,@object # @Q__align_gapmap.lastverticalw
	.local	Q__align_gapmap.lastverticalw
	.comm	Q__align_gapmap.lastverticalw,8,8
	.type	Q__align_gapmap.mseq1,@object   # @Q__align_gapmap.mseq1
	.local	Q__align_gapmap.mseq1
	.comm	Q__align_gapmap.mseq1,8,8
	.type	Q__align_gapmap.mseq2,@object   # @Q__align_gapmap.mseq2
	.local	Q__align_gapmap.mseq2
	.comm	Q__align_gapmap.mseq2,8,8
	.type	Q__align_gapmap.mseq,@object    # @Q__align_gapmap.mseq
	.local	Q__align_gapmap.mseq
	.comm	Q__align_gapmap.mseq,8,8
	.type	Q__align_gapmap.digf1,@object   # @Q__align_gapmap.digf1
	.local	Q__align_gapmap.digf1
	.comm	Q__align_gapmap.digf1,8,8
	.type	Q__align_gapmap.digf2,@object   # @Q__align_gapmap.digf2
	.local	Q__align_gapmap.digf2
	.comm	Q__align_gapmap.digf2,8,8
	.type	Q__align_gapmap.diaf1,@object   # @Q__align_gapmap.diaf1
	.local	Q__align_gapmap.diaf1
	.comm	Q__align_gapmap.diaf1,8,8
	.type	Q__align_gapmap.diaf2,@object   # @Q__align_gapmap.diaf2
	.local	Q__align_gapmap.diaf2
	.comm	Q__align_gapmap.diaf2,8,8
	.type	Q__align_gapmap.gapz1,@object   # @Q__align_gapmap.gapz1
	.local	Q__align_gapmap.gapz1
	.comm	Q__align_gapmap.gapz1,8,8
	.type	Q__align_gapmap.gapz2,@object   # @Q__align_gapmap.gapz2
	.local	Q__align_gapmap.gapz2
	.comm	Q__align_gapmap.gapz2,8,8
	.type	Q__align_gapmap.gapf1,@object   # @Q__align_gapmap.gapf1
	.local	Q__align_gapmap.gapf1
	.comm	Q__align_gapmap.gapf1,8,8
	.type	Q__align_gapmap.gapf2,@object   # @Q__align_gapmap.gapf2
	.local	Q__align_gapmap.gapf2
	.comm	Q__align_gapmap.gapf2,8,8
	.type	Q__align_gapmap.ogcp1g,@object  # @Q__align_gapmap.ogcp1g
	.local	Q__align_gapmap.ogcp1g
	.comm	Q__align_gapmap.ogcp1g,8,8
	.type	Q__align_gapmap.ogcp2g,@object  # @Q__align_gapmap.ogcp2g
	.local	Q__align_gapmap.ogcp2g
	.comm	Q__align_gapmap.ogcp2g,8,8
	.type	Q__align_gapmap.fgcp1g,@object  # @Q__align_gapmap.fgcp1g
	.local	Q__align_gapmap.fgcp1g
	.comm	Q__align_gapmap.fgcp1g,8,8
	.type	Q__align_gapmap.fgcp2g,@object  # @Q__align_gapmap.fgcp2g
	.local	Q__align_gapmap.fgcp2g
	.comm	Q__align_gapmap.fgcp2g,8,8
	.type	Q__align_gapmap.og_h_dg_n1_p,@object # @Q__align_gapmap.og_h_dg_n1_p
	.local	Q__align_gapmap.og_h_dg_n1_p
	.comm	Q__align_gapmap.og_h_dg_n1_p,8,8
	.type	Q__align_gapmap.og_h_dg_n2_p,@object # @Q__align_gapmap.og_h_dg_n2_p
	.local	Q__align_gapmap.og_h_dg_n2_p
	.comm	Q__align_gapmap.og_h_dg_n2_p,8,8
	.type	Q__align_gapmap.fg_h_dg_n1_p,@object # @Q__align_gapmap.fg_h_dg_n1_p
	.local	Q__align_gapmap.fg_h_dg_n1_p
	.comm	Q__align_gapmap.fg_h_dg_n1_p,8,8
	.type	Q__align_gapmap.fg_h_dg_n2_p,@object # @Q__align_gapmap.fg_h_dg_n2_p
	.local	Q__align_gapmap.fg_h_dg_n2_p
	.comm	Q__align_gapmap.fg_h_dg_n2_p,8,8
	.type	Q__align_gapmap.og_t_fg_h_dg_n1_p,@object # @Q__align_gapmap.og_t_fg_h_dg_n1_p
	.local	Q__align_gapmap.og_t_fg_h_dg_n1_p
	.comm	Q__align_gapmap.og_t_fg_h_dg_n1_p,8,8
	.type	Q__align_gapmap.og_t_fg_h_dg_n2_p,@object # @Q__align_gapmap.og_t_fg_h_dg_n2_p
	.local	Q__align_gapmap.og_t_fg_h_dg_n2_p
	.comm	Q__align_gapmap.og_t_fg_h_dg_n2_p,8,8
	.type	Q__align_gapmap.fg_t_og_h_dg_n1_p,@object # @Q__align_gapmap.fg_t_og_h_dg_n1_p
	.local	Q__align_gapmap.fg_t_og_h_dg_n1_p
	.comm	Q__align_gapmap.fg_t_og_h_dg_n1_p,8,8
	.type	Q__align_gapmap.fg_t_og_h_dg_n2_p,@object # @Q__align_gapmap.fg_t_og_h_dg_n2_p
	.local	Q__align_gapmap.fg_t_og_h_dg_n2_p
	.comm	Q__align_gapmap.fg_t_og_h_dg_n2_p,8,8
	.type	Q__align_gapmap.gapz_n1,@object # @Q__align_gapmap.gapz_n1
	.local	Q__align_gapmap.gapz_n1
	.comm	Q__align_gapmap.gapz_n1,8,8
	.type	Q__align_gapmap.gapz_n2,@object # @Q__align_gapmap.gapz_n2
	.local	Q__align_gapmap.gapz_n2
	.comm	Q__align_gapmap.gapz_n2,8,8
	.type	Q__align_gapmap.cpmx1,@object   # @Q__align_gapmap.cpmx1
	.local	Q__align_gapmap.cpmx1
	.comm	Q__align_gapmap.cpmx1,8,8
	.type	Q__align_gapmap.cpmx2,@object   # @Q__align_gapmap.cpmx2
	.local	Q__align_gapmap.cpmx2
	.comm	Q__align_gapmap.cpmx2,8,8
	.type	Q__align_gapmap.intwork,@object # @Q__align_gapmap.intwork
	.local	Q__align_gapmap.intwork
	.comm	Q__align_gapmap.intwork,8,8
	.type	Q__align_gapmap.floatwork,@object # @Q__align_gapmap.floatwork
	.local	Q__align_gapmap.floatwork
	.comm	Q__align_gapmap.floatwork,8,8
	.type	Q__align_gapmap.orlgth1,@object # @Q__align_gapmap.orlgth1
	.local	Q__align_gapmap.orlgth1
	.comm	Q__align_gapmap.orlgth1,4,4
	.type	Q__align_gapmap.orlgth2,@object # @Q__align_gapmap.orlgth2
	.local	Q__align_gapmap.orlgth2
	.comm	Q__align_gapmap.orlgth2,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
