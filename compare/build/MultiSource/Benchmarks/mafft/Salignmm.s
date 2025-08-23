	.file	"Salignmm.c"
	.text
	.globl	imp_match_out_sc                # -- Begin function imp_match_out_sc
	.p2align	5
	.type	imp_match_out_sc,@function
imp_match_out_sc:                       # @imp_match_out_sc
# %bb.0:                                # %entry
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	imp_match_out_sc, .Lfunc_end0-imp_match_out_sc
                                        # -- End function
	.globl	imp_rna                         # -- Begin function imp_rna
	.p2align	5
	.type	imp_rna,@function
imp_rna:                                # @imp_rna
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
	.size	imp_rna, .Lfunc_end1-imp_rna
                                        # -- End function
	.globl	imp_match_init_strict           # -- Begin function imp_match_init_strict
	.p2align	5
	.type	imp_match_init_strict,@function
imp_match_init_strict:                  # @imp_match_init_strict
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
	pcalau12i	$s8, %pc_hi20(imp_match_init_strict.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strict.nocount2)
	blt	$a0, $a1, .LBB2_11
# %bb.1:                                # %entry
	addi.w	$a1, $s5, 2
	blt	$a0, $a1, .LBB2_11
# %bb.2:                                # %if.end14
	ori	$a1, $zero, 1
	blt	$s4, $a1, .LBB2_18
.LBB2_3:                                # %for.cond16.preheader.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
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
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
	beqz	$a0, .LBB2_15
# %bb.14:                               # %if.then5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_15:                               # %if.end6
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strict.nocount2)
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
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(imp_match_init_strict.nocount2)
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
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strict.nocount2)
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
	.size	imp_match_init_strict, .Lfunc_end2-imp_match_init_strict
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function A__align
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
.LCPI3_2:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI3_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI3_6:
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
.LCPI3_4:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI3_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI3_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	A__align
	.p2align	5
	.type	A__align,@function
A__align:                               # @A__align
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 352                  # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	pcalau12i	$t1, %pc_hi20(A__align.orlgth1)
	st.d	$t1, $sp, 272                   # 8-byte Folded Spill
	ld.w	$fp, $t1, %pc_lo12(A__align.orlgth1)
	ld.w	$t0, $t0, 0
	st.d	$t0, $sp, 208                   # 8-byte Folded Spill
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	move	$s3, $a5
	move	$s6, $a4
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	move	$s4, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(A__align.mseq1)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.mseq2)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bnez	$fp, .LBB3_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(A__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.w	$fp, $a1, %pc_lo12(A__align.orlgth1)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mseq2)
.LBB3_2:                                # %if.end
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$s2, $a0
	addi.w	$s5, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s7, %pc_hi20(A__align.orlgth2)
	ld.w	$s0, $s7, %pc_lo12(A__align.orlgth2)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(A__align.w1)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.w2)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.initverticalw)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.lastverticalw)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.m)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.mp)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(A__align.mseq)
	pcalau12i	$a0, %pc_hi20(A__align.ogcp1)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.ogcp2)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.fgcp1)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.fgcp2)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.cpmx1)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.cpmx2)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.floatwork)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.intwork)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s2, $sp, 160                   # 8-byte Folded Spill
	blt	$fp, $s5, .LBB3_4
# %bb.3:                                # %if.end
	bge	$s0, $s8, .LBB3_8
.LBB3_4:                                # %if.then12
	ori	$a0, $zero, 1
	pcalau12i	$s2, %pc_hi20(A__align.match)
	blt	$fp, $a0, .LBB3_7
# %bb.5:                                # %if.then12
	blt	$s0, $a0, .LBB3_7
# %bb.6:                                # %if.then17
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(A__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(A__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$fp, $a0, %pc_lo12(A__align.orlgth1)
	ld.w	$s0, $s7, %pc_lo12(A__align.orlgth2)
.LBB3_7:                                # %if.end18
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
	addi.w	$s4, $fp, 100
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$s3, $s0, 100
	addi.w	$s5, $s0, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(A__align.match)
	addi.w	$s6, $fp, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mp)
	add.w	$a1, $s3, $s4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(A__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.cpmx2)
	slt	$a0, $s3, $s4
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.intwork)
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.w	$fp, $a0, %pc_lo12(A__align.orlgth1)
	st.w	$s0, $s7, %pc_lo12(A__align.orlgth2)
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
.LBB3_8:                                # %if.end84
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB3_11
# %bb.9:                                # %for.body.lr.ph
	ld.d	$a1, $s1, %pc_lo12(A__align.mseq)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.mseq1)
	move	$a3, $s6
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $a4, 0
	stx.b	$zero, $a5, $s5
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB3_10
.LBB3_11:                               # %for.cond94.preheader
	blt	$s3, $a0, .LBB3_14
# %bb.12:                               # %for.body97.lr.ph
	ld.d	$a1, $s1, %pc_lo12(A__align.mseq)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mseq2)
	alsl.d	$a1, $s6, $a1, 3
	move	$a2, $s3
	move	$a3, $s4
	.p2align	4, , 16
.LBB3_13:                               # %for.body97
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s8
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_13
.LBB3_14:                               # %for.end109
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s2, $a0, %got_pc_lo12(commonAlloc2)
	ld.d	$s5, $sp, 456
	ld.w	$a1, $s1, 0
	ld.w	$a0, $s2, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a2
	blt	$a1, $fp, .LBB3_17
# %bb.15:                               # %for.end109
	blt	$a0, $s0, .LBB3_17
# %bb.16:                               # %lor.lhs.false112.if.end137_crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB3_21
.LBB3_17:                               # %if.then115
	beqz	$a1, .LBB3_20
# %bb.18:                               # %if.then115
	beqz	$a0, .LBB3_20
# %bb.19:                               # %if.then120
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$fp, $a0, %pc_lo12(A__align.orlgth1)
	ld.w	$a1, $s1, 0
	ld.w	$s0, $s7, %pc_lo12(A__align.orlgth2)
	ld.w	$a0, $s2, 0
.LBB3_20:                               # %if.end121
	slt	$a2, $a1, $fp
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$fp, $a2, $a1
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$a0, $fp, 10
	addi.w	$a1, $s0, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$fp, $s1, 0
	st.w	$s0, $s2, 0
.LBB3_21:                               # %if.end137
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.cpmx1)
	ffint.s.w	$fs0, $fs0
	pcalau12i	$a2, %pc_hi20(A__align.ijp)
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(A__align.ijp)
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	move	$a0, $s7
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $s0
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(A__align.cpmx2)
	move	$a0, $s4
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s8
	move	$a4, $s3
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	beqz	$s5, .LBB3_23
# %bb.22:                               # %if.then139
	move	$fp, $s3
	move	$a5, $s5
	move	$s5, $s0
	move	$s0, $s6
	ld.d	$s6, $sp, 480
	ld.d	$s7, $sp, 472
	ld.d	$s3, $sp, 464
	move	$a1, $s0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s1
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s3
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	move	$a1, $s0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s1
	move	$a5, $s7
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB3_24
.LBB3_23:                               # %if.else
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s0
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s2
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s0
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s2
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB3_24:                               # %if.end140
	ori	$a0, $zero, 1
	fcvt.d.s	$fa0, $fs0
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB3_31
# %bb.25:                               # %for.body144.lr.ph
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.ogcp1)
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(A__align.fgcp1)
	bstrpick.d	$a2, $s2, 30, 0
	ori	$a4, $zero, 8
	bltu	$a2, $a4, .LBB3_28
# %bb.26:                               # %vector.memcheck
	alsl.d	$a4, $a2, $a3, 2
	bgeu	$a1, $a4, .LBB3_154
# %bb.27:                               # %vector.memcheck
	alsl.d	$a4, $a2, $a1, 2
	bgeu	$a3, $a4, .LBB3_154
.LBB3_28:
	move	$a4, $zero
.LBB3_29:                               # %for.body144.preheader
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a1, $a4, $a1, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_30:                               # %for.body144
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
	bnez	$a2, .LBB3_30
.LBB3_31:                               # %for.cond168.preheader
	blt	$s8, $a0, .LBB3_38
# %bb.32:                               # %for.body171.lr.ph
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp2)
	bstrpick.d	$a1, $fp, 30, 0
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB3_35
# %bb.33:                               # %vector.memcheck417
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB3_157
# %bb.34:                               # %vector.memcheck417
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB3_157
.LBB3_35:
	move	$a3, $zero
.LBB3_36:                               # %for.body171.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_37:                               # %for.body171
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
	bnez	$a1, .LBB3_37
.LBB3_38:                               # %for.end194
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align.w1)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(A__align.w2)
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.initverticalw)
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(A__align.cpmx2)
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(A__align.cpmx1)
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $a1, %pc_lo12(A__align.floatwork)
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(A__align.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a1, $s3
	move	$a2, $s1
	move	$a3, $zero
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $s6
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 32
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s1, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$s4, $sp, 320                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_48
# %bb.39:                               # %if.then196
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB3_42
# %bb.40:                               # %for.body.lr.ph.i
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $s3, 30, 0
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_41:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_41
.LBB3_42:                               # %imp_match_out_vead_tate.exit
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s5
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s6
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB3_57
# %bb.43:                               # %iter.check
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $a0, 0
	move	$t3, $fp
	bstrpick.d	$a0, $fp, 31, 0
	ori	$a2, $zero, 4
	bltu	$a0, $a2, .LBB3_46
# %bb.44:                               # %vector.memcheck438
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 3
	alsl.d	$a2, $t3, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a3, $a1, $a2
	bgeu	$s5, $a3, .LBB3_169
# %bb.45:                               # %vector.memcheck438
	add.d	$a2, $s5, $a2
	bgeu	$a1, $a2, .LBB3_169
.LBB3_46:
	move	$a2, $a1
	move	$a3, $t3
	move	$a4, $s5
	.p2align	4, , 16
.LBB3_47:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a3, .LBB3_47
	b	.LBB3_49
.LBB3_48:                               # %if.end200.critedge
	ori	$a7, $zero, 1
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s6
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t3, $fp
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
.LBB3_49:                               # %if.end200
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB3_58
# %bb.50:                               # %for.cond237.preheader
	blt	$s8, $a0, .LBB3_66
# %bb.51:                               # %for.body241.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_55
# %bb.52:                               # %vector.ph479
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI3_1)
	addi.d	$a5, $s5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_53:                               # %vector.body484
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
	bnez	$a6, .LBB3_53
# %bb.54:                               # %middle.block489
	beq	$a2, $a4, .LBB3_66
.LBB3_55:                               # %for.body241.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_56:                               # %for.body241
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
	bnez	$a1, .LBB3_56
	b	.LBB3_66
.LBB3_57:                               # %if.end200.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	move	$t3, $fp
	bne	$a0, $s0, .LBB3_66
.LBB3_58:                               # %for.cond204.preheader
	ori	$a4, $zero, 1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	blt	$a0, $a4, .LBB3_62
# %bb.59:                               # %iter.check523
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp1)
	addi.d	$a1, $s3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 3
	bltu	$a5, $a3, .LBB3_160
.LBB3_60:                               # %for.body208.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, -4
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 2
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB3_61:                               # %for.body208
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
	bnez	$a1, .LBB3_61
.LBB3_62:                               # %for.cond220.preheader
	ori	$a4, $zero, 1
	blt	$s8, $a4, .LBB3_78
# %bb.63:                               # %iter.check575
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp2)
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 3
	bltu	$a5, $a3, .LBB3_164
.LBB3_64:                               # %for.body224.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, -4
	alsl.d	$a3, $a4, $s5, 2
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB3_65:                               # %for.body224
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
	bnez	$a1, .LBB3_65
	b	.LBB3_74
.LBB3_66:                               # %for.cond252.preheader
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB3_73
# %bb.67:                               # %for.body256.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a2, $s3, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 8
	bltu	$a3, $a4, .LBB3_71
# %bb.68:                               # %vector.ph494
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a1, $a3
	bstrins.d	$a1, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI3_1)
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_69:                               # %vector.body499
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
	bnez	$a6, .LBB3_69
# %bb.70:                               # %middle.block506
	beq	$a3, $a4, .LBB3_73
.LBB3_71:                               # %for.body256.preheader
	mul.d	$a3, $a0, $a1
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 2
	sub.d	$a1, $a2, $a1
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_72:                               # %for.body256
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
	bnez	$a1, .LBB3_72
.LBB3_73:                               # %if.end268
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB3_78
.LBB3_74:                               # %iter.check627
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.m)
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.mp)
	addi.d	$a3, $t3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a7, $zero, 4
	ori	$a5, $zero, 1
	bgeu	$a4, $a7, .LBB3_132
.LBB3_75:                               # %for.body273.preheader
	alsl.d	$a4, $a5, $s5, 2
	addi.d	$a4, $a4, -4
	alsl.d	$a1, $a5, $a1, 2
	alsl.d	$a2, $a5, $a2, 2
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB3_76:                               # %for.body273
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
	bnez	$a3, .LBB3_76
.LBB3_77:
	move	$a0, $zero
	b	.LBB3_79
.LBB3_78:                               # %for.end285
	ori	$a0, $zero, 1
	beqz	$s8, .LBB3_168
.LBB3_79:
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $a3, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $s5, $a1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	move	$a0, $zero
.LBB3_80:                               # %if.end295
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s0, $a2, %pc_lo12(A__align.lastverticalw)
	sltu	$a2, $zero, $a1
	add.w	$fp, $a2, $s3
	ori	$a2, $zero, 2
	fst.s	$fa0, $s0, 0
	blt	$fp, $a2, .LBB3_108
# %bb.81:                               # %for.body304.lr.ph
	st.d	$s6, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ijp)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.m)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.mp)
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.fgcp2)
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.fgcp1)
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.ogcp1)
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a3, $a2
	srai.d	$s1, $a2, 30
	addi.w	$a2, $t3, -1
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a3, $a2, 2
	addi.d	$a3, $a3, 4
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a3, $a2, 1
	bstrpick.d	$a2, $a3, 32, 4
	slli.d	$a5, $a2, 4
	slli.d	$a2, $a2, 6
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	sub.d	$a2, $t3, $a5
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	andi	$a2, $a3, 12
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a3, 32, 2
	slli.d	$a3, $a2, 2
	slli.d	$a2, $a2, 4
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	sub.d	$a2, $t3, $a3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	sub.d	$a2, $zero, $a3
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s7, $zero, 1
	b	.LBB3_83
	.p2align	4, , 16
.LBB3_82:                               # %for.end368
                                        #   in Loop: Header=BB3_83 Depth=1
	fldx.s	$fa0, $s3, $s1
	addi.d	$s7, $s7, 1
	fstx.s	$fa0, $s0, $a1
	move	$s5, $s3
	beq	$s7, $fp, .LBB3_109
.LBB3_83:                               # %for.body304
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_101 Depth 2
                                        #     Child Loop BB3_105 Depth 2
                                        #     Child Loop BB3_88 Depth 2
                                        #     Child Loop BB3_92 Depth 2
	addi.d	$s6, $s7, -1
	slli.d	$s4, $s6, 2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s4
	move	$s3, $s2
	move	$s2, $s5
	fst.s	$fa0, $s5, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s8
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 3
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_89
# %bb.84:                               # %iter.check670
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ori	$a2, $zero, 3
	bltu	$a1, $a2, .LBB3_87
# %bb.85:                               # %vector.memcheck661
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a2
	bgeu	$s3, $a1, .LBB3_98
# %bb.86:                               # %vector.memcheck661
                                        #   in Loop: Header=BB3_83 Depth=1
	add.d	$a1, $s3, $a2
	bgeu	$a3, $a1, .LBB3_98
.LBB3_87:                               #   in Loop: Header=BB3_83 Depth=1
	move	$a1, $a3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $s3
	.p2align	4, , 16
.LBB3_88:                               # %while.body.i244
                                        #   Parent Loop BB3_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	addi.w	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a3, .LBB3_88
.LBB3_89:                               # %if.end311
                                        #   in Loop: Header=BB3_83 Depth=1
	slli.d	$a1, $s7, 2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa0, $a2, $a1
	fst.s	$fa0, $s3, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_82
# %bb.90:                               # %for.body333.preheader
                                        #   in Loop: Header=BB3_83 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	fld.s	$fa2, $s2, 0
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	fld.s	$fa3, $a4, 4
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	fldx.s	$fa0, $a4, $s4
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	fldx.s	$fa1, $a0, $a1
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a0, $s3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $zero, -1
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 248                   # 8-byte Folded Reload
	move	$t2, $s2
	b	.LBB3_92
	.p2align	4, , 16
.LBB3_91:                               # %if.end358
                                        #   in Loop: Header=BB3_92 Depth=2
	fadd.s	$fa3, $fa3, $fa4
	fcmp.cult.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	movcf2gr	$t3, $fcc0
	fld.s	$fa3, $a0, 0
	masknez	$t4, $a2, $t3
	maskeqz	$a3, $a3, $t3
	or	$a3, $a3, $t4
	fadd.s	$fa3, $fs0, $fa3
	fst.s	$fa3, $a0, 0
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, -1
	beq	$s8, $a2, .LBB3_82
.LBB3_92:                               # %for.body333
                                        #   Parent Loop BB3_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t1, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa4, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	st.w	$zero, $a4, 0
	fmov.s	$fs0, $fa3
	bcnez	$fcc0, .LBB3_94
# %bb.93:                               # %if.then337
                                        #   in Loop: Header=BB3_92 Depth=2
	add.d	$t3, $a3, $a5
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa4
.LBB3_94:                               # %if.end340
                                        #   in Loop: Header=BB3_92 Depth=2
	fld.s	$fa5, $t0, 0
	fld.s	$fa4, $a6, 0
	fadd.s	$fa6, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fs0
	bcnez	$fcc0, .LBB3_96
# %bb.95:                               # %if.then350
                                        #   in Loop: Header=BB3_92 Depth=2
	ld.w	$t3, $a7, 0
	sub.d	$t3, $s7, $t3
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa6
.LBB3_96:                               # %if.end352
                                        #   in Loop: Header=BB3_92 Depth=2
	fadd.s	$fa6, $fa1, $fa3
	fcmp.cult.s	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB3_91
# %bb.97:                               # %if.then356
                                        #   in Loop: Header=BB3_92 Depth=2
	fst.s	$fa6, $t0, 0
	st.w	$s6, $a7, 0
	b	.LBB3_91
.LBB3_98:                               # %vector.main.loop.iter.check672
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ori	$a2, $zero, 15
	bgeu	$a1, $a2, .LBB3_100
# %bb.99:                               #   in Loop: Header=BB3_83 Depth=1
	move	$a5, $zero
	b	.LBB3_104
.LBB3_100:                              # %vector.body676.preheader
                                        #   in Loop: Header=BB3_83 Depth=1
	addi.d	$a1, $s3, 32
	addi.d	$a2, $a3, 32
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_101:                              # %vector.body676
                                        #   Parent Loop BB3_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvld	$xr2, $a1, -32
	xvld	$xr3, $a1, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a1, $a1, 64
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	bnez	$a4, .LBB3_101
# %bb.102:                              # %middle.block685
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB3_89
# %bb.103:                              # %vec.epilog.iter.check690
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beqz	$a1, .LBB3_107
.LBB3_104:                              # %vec.epilog.ph689
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a3, $a2
	add.d	$a2, $s3, $a2
	alsl.d	$a4, $a5, $s3, 2
	alsl.d	$a3, $a5, $a3, 2
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	.p2align	4, , 16
.LBB3_105:                              # %vec.epilog.vector.body696
                                        #   Parent Loop BB3_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vld	$vr1, $a4, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, 16
	bnez	$a5, .LBB3_105
# %bb.106:                              # %vec.epilog.middle.block705
                                        #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	bne	$a4, $a5, .LBB3_88
	b	.LBB3_89
.LBB3_107:                              #   in Loop: Header=BB3_83 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $a3, $a2
	add.d	$a2, $s3, $a2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_88
.LBB3_108:
	movgr2fr.w	$fs0, $zero
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	bnez	$a1, .LBB3_124
	b	.LBB3_110
.LBB3_109:                              # %for.end376.loopexit
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $fp, 0
	move	$s5, $s3
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_124
.LBB3_110:                              # %for.cond379.preheader
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_117
# %bb.111:                              # %for.body383.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_115
# %bb.112:                              # %vector.ph716
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.d	$xr1, $t3
	pcalau12i	$a5, %pc_hi20(.LCPI3_2)
	xvld	$xr2, $a5, %pc_lo12(.LCPI3_2)
	pcalau12i	$a5, %pc_hi20(.LCPI3_3)
	xvld	$xr3, $a5, %pc_lo12(.LCPI3_3)
	addi.d	$a5, $s5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_113:                              # %vector.body723
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
	bnez	$a6, .LBB3_113
# %bb.114:                              # %middle.block730
	beq	$a2, $a4, .LBB3_117
.LBB3_115:                              # %for.body383.preheader
	sub.w	$a2, $t3, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_116:                              # %for.body383
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
	bnez	$a1, .LBB3_116
.LBB3_117:                              # %for.cond396.preheader
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB3_124
# %bb.118:                              # %for.body400.lr.ph
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $s3, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.lastverticalw)
	addi.d	$a2, $s3, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB3_122
# %bb.119:                              # %vector.ph735
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI3_4)
	vld	$vr4, $a5, %pc_lo12(.LCPI3_4)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_120:                              # %vector.body742
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
	bnez	$a6, .LBB3_120
# %bb.121:                              # %middle.block749
	beq	$a3, $a4, .LBB3_124
.LBB3_122:                              # %for.body400.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB3_123:                              # %for.body400
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
	bnez	$a2, .LBB3_123
.LBB3_124:                              # %if.end414
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(A__align.lastverticalw)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(A__align.mseq1)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align.mseq2)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align.ijp)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_131
# %bb.125:                              # %if.then416
	ld.d	$a0, $s7, 0
	st.d	$a6, $sp, 336                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	add.w	$a0, $a0, $s7
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	ld.w	$a3, $fp, 0
	ori	$a1, $zero, 1
	addi.w	$s8, $s7, 0
	move	$t1, $s0
	addi.w	$a2, $s0, 0
	beq	$a3, $a1, .LBB3_141
# %bb.126:                              # %if.else.i
	fld.s	$fa0, $s3, 0
	blt	$s8, $a1, .LBB3_136
# %bb.127:                              # %for.body.lr.ph.i259
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	slli.d	$a3, $t1, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB3_129
	.p2align	4, , 16
.LBB3_128:                              # %for.inc.i
                                        #   in Loop: Header=BB3_129 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB3_136
.LBB3_129:                              # %for.body.i261
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_128
# %bb.130:                              # %if.then16.i
                                        #   in Loop: Header=BB3_129 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_128
.LBB3_131:                              # %if.else417
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	st.d	$s1, $sp, 0
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s7
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $s6
	move	$s2, $a3
	move	$a5, $s4
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	move	$a7, $s3
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB3_220
.LBB3_132:                              # %vector.memcheck612
	addi.d	$a7, $a1, 4
	alsl.d	$t0, $a3, $a1, 2
	alsl.d	$t1, $a3, $s5, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $s5, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB3_75
# %bb.133:                              # %vector.memcheck612
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB3_75
# %bb.134:                              # %vector.main.loop.iter.check629
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB3_229
# %bb.135:
	move	$a6, $zero
	b	.LBB3_233
.LBB3_136:                              # %for.cond24.preheader.i
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB3_141
# %bb.137:                              # %for.body27.lr.ph.i
	slli.d	$a1, $s7, 32
	srai.d	$a1, $a1, 29
	slli.d	$a3, $t1, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $t1, 30, 0
	sub.d	$a5, $zero, $t1
	b	.LBB3_139
	.p2align	4, , 16
.LBB3_138:                              # %for.inc43.i
                                        #   in Loop: Header=BB3_139 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s5, $s5, 4
	beqz	$a4, .LBB3_141
.LBB3_139:                              # %for.body27.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s5, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_138
# %bb.140:                              # %if.then32.i
                                        #   in Loop: Header=BB3_139 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_138
.LBB3_141:                              # %if.end46.i
	bltz	$s8, .LBB3_149
# %bb.142:                              # %for.body51.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB3_144
# %bb.143:
	move	$a3, $zero
	b	.LBB3_147
.LBB3_144:                              # %vector.ph754
	pcalau12i	$a4, %pc_hi20(.LCPI3_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI3_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_145:                              # %vector.body757
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
	bnez	$a5, .LBB3_145
# %bb.146:                              # %middle.block764
	beq	$a1, $a3, .LBB3_149
.LBB3_147:                              # %for.body51.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB3_148:                              # %for.body51.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB3_148
.LBB3_149:                              # %for.cond59.preheader.i
	ld.d	$a1, $sp, 448
	bltz	$a2, .LBB3_180
# %bb.150:                              # %iter.check770
	ld.d	$a3, $ra, 0
	addi.d	$a6, $t1, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB3_152
# %bb.151:
	move	$a5, $zero
	b	.LBB3_178
.LBB3_152:                              # %vector.main.loop.iter.check772
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB3_171
# %bb.153:
	move	$a5, $zero
	b	.LBB3_175
.LBB3_154:                              # %vector.ph
	bstrpick.d	$a4, $s2, 30, 3
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
.LBB3_155:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a5, 0
	xvpermi.q	$xr5, $xr4, 1
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
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr5, 1
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr6, $xr5, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	xvld	$xr5, $a6, 0
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a5, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr7, $xr4, 3
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr5, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr4, 1
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 2
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB3_155
# %bb.156:                              # %middle.block
	beq	$a2, $a4, .LBB3_31
	b	.LBB3_29
.LBB3_157:                              # %vector.ph425
	bstrpick.d	$a3, $fp, 30, 3
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
.LBB3_158:                              # %vector.body430
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a4, 0
	xvpermi.q	$xr5, $xr4, 1
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
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr5, 1
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr6, $xr5, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	xvld	$xr5, $a5, 0
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a4, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr7, $xr4, 3
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr5, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr4, 1
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 2
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB3_158
# %bb.159:                              # %middle.block435
	beq	$a1, $a3, .LBB3_38
	b	.LBB3_36
.LBB3_160:                              # %vector.memcheck509
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a1, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB3_60
# %bb.161:                              # %vector.memcheck509
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_60
# %bb.162:                              # %vector.main.loop.iter.check525
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB3_244
# %bb.163:
	move	$a5, $zero
	b	.LBB3_248
.LBB3_164:                              # %vector.memcheck560
	addi.d	$a5, $s5, 4
	alsl.d	$a6, $a1, $s5, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB3_64
# %bb.165:                              # %vector.memcheck560
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_64
# %bb.166:                              # %vector.main.loop.iter.check577
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB3_251
# %bb.167:
	move	$a5, $zero
	b	.LBB3_255
.LBB3_168:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	b	.LBB3_80
.LBB3_169:                              # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB3_237
# %bb.170:
	move	$a5, $zero
	b	.LBB3_241
.LBB3_171:                              # %vector.ph773
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI3_6)
	xvld	$xr0, $a7, %pc_lo12(.LCPI3_6)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_172:                              # %vector.body776
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB3_172
# %bb.173:                              # %middle.block782
	beq	$a4, $a5, .LBB3_180
# %bb.174:                              # %vec.epilog.iter.check787
	andi	$a7, $a6, 12
	beqz	$a7, .LBB3_178
.LBB3_175:                              # %vec.epilog.ph786
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI3_7)
	vld	$vr0, $a5, %pc_lo12(.LCPI3_7)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB3_176:                              # %vec.epilog.vector.body794
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB3_176
# %bb.177:                              # %vec.epilog.middle.block799
	beq	$a4, $a5, .LBB3_180
.LBB3_178:                              # %for.body63.i.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_179:                              # %for.body63.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB3_179
.LBB3_180:                              # %for.end71.i
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s8
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	add.d	$a3, $a0, $s8
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	bltz	$a0, .LBB3_212
# %bb.181:                              # %for.body82.i.preheader
	move	$t2, $zero
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 111
	ori	$a5, $zero, 45
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a7, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	move	$a0, $t1
	move	$t0, $t1
	.p2align	4, , 16
.LBB3_182:                              # %for.body82.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_188 Depth 2
                                        #     Child Loop BB3_199 Depth 2
                                        #     Child Loop BB3_195 Depth 2
                                        #     Child Loop BB3_204 Depth 2
	addi.w	$t1, $s7, 0
	slli.d	$t6, $t1, 3
	ldx.d	$t3, $ra, $t6
	addi.w	$t4, $t0, 0
	slli.d	$t7, $t4, 2
	ldx.w	$t5, $t3, $t7
	bge	$a2, $t5, .LBB3_190
# %bb.183:                              # %if.else96.i
                                        #   in Loop: Header=BB3_182 Depth=1
	beqz	$t5, .LBB3_211
# %bb.184:                              # %if.then103.i
                                        #   in Loop: Header=BB3_182 Depth=1
	sub.d	$t3, $s7, $t5
	move	$t5, $a2
	nor	$t8, $t3, $zero
	add.w	$fp, $s7, $t8
	beqz	$fp, .LBB3_191
.LBB3_185:                              # %while.body.i255.preheader
                                        #   in Loop: Header=BB3_182 Depth=1
	move	$a6, $s8
	bltu	$fp, $a7, .LBB3_197
# %bb.186:                              # %while.body.i255.preheader
                                        #   in Loop: Header=BB3_182 Depth=1
	sub.d	$s0, $s3, $s5
	bltu	$s0, $a7, .LBB3_197
# %bb.187:                              # %vector.ph830
                                        #   in Loop: Header=BB3_182 Depth=1
	bstrpick.d	$s2, $fp, 31, 0
	bstrpick.d	$s0, $s2, 31, 5
	slli.d	$s8, $s0, 5
	sub.d	$fp, $fp, $s8
	sub.d	$s0, $s5, $s8
	sub.d	$s1, $s3, $s8
	addi.d	$s3, $s3, -32
	addi.d	$s5, $s5, -32
	move	$ra, $s8
	.p2align	4, , 16
.LBB3_188:                              # %vector.body834
                                        #   Parent Loop BB3_182 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s3, 0
	xvst	$xr4, $s5, 0
	addi.d	$ra, $ra, -32
	addi.d	$s3, $s3, -32
	addi.d	$s5, $s5, -32
	bnez	$ra, .LBB3_188
# %bb.189:                              # %middle.block841
                                        #   in Loop: Header=BB3_182 Depth=1
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	bne	$s8, $s2, .LBB3_198
	b	.LBB3_200
	.p2align	4, , 16
.LBB3_190:                              # %if.then89.i
                                        #   in Loop: Header=BB3_182 Depth=1
	addi.d	$t3, $s7, -1
	nor	$t8, $t3, $zero
	add.w	$fp, $s7, $t8
	bnez	$fp, .LBB3_185
	.p2align	4, , 16
.LBB3_191:                              # %while.end.i
                                        #   in Loop: Header=BB3_182 Depth=1
	beq	$t5, $a2, .LBB3_201
.LBB3_192:                              # %while.body122.preheader.i
                                        #   in Loop: Header=BB3_182 Depth=1
	addi.w	$t8, $zero, -17
	nor	$s1, $t5, $zero
	bltu	$t8, $t5, .LBB3_202
# %bb.193:                              # %while.body122.preheader.i
                                        #   in Loop: Header=BB3_182 Depth=1
	sub.d	$t8, $s3, $s5
	ori	$a6, $zero, 16
	bltu	$t8, $a6, .LBB3_202
# %bb.194:                              # %vector.ph807
                                        #   in Loop: Header=BB3_182 Depth=1
	bstrpick.d	$t8, $s1, 30, 4
	slli.d	$s2, $t8, 4
	sub.d	$s0, $s1, $s2
	sub.d	$t8, $s5, $s2
	sub.d	$fp, $s3, $s2
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $t2, 0
	addi.d	$t2, $s3, -8
	addi.d	$s3, $s5, -8
	move	$s5, $s2
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB3_195:                              # %vector.body811
                                        #   Parent Loop BB3_182 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t2, -8
	vst	$vr2, $s3, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s5, $s5, -16
	addi.d	$t2, $t2, -16
	addi.d	$s3, $s3, -16
	bnez	$s5, .LBB3_195
# %bb.196:                              # %middle.block819
                                        #   in Loop: Header=BB3_182 Depth=1
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
	xvpickve2gr.w	$t2, $xr5, 0
	bne	$s2, $s1, .LBB3_203
	b	.LBB3_205
	.p2align	4, , 16
.LBB3_197:                              #   in Loop: Header=BB3_182 Depth=1
	move	$s0, $s5
	move	$s1, $s3
.LBB3_198:                              # %while.body.i255.preheader848
                                        #   in Loop: Header=BB3_182 Depth=1
	move	$s2, $s0
	move	$s3, $s1
	.p2align	4, , 16
.LBB3_199:                              # %while.body.i255
                                        #   Parent Loop BB3_182 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s1, $s3, -1
	st.b	$a4, $s3, -1
	addi.d	$s0, $s2, -1
	addi.w	$fp, $fp, -1
	st.b	$a5, $s2, -1
	move	$s2, $s0
	move	$s3, $s1
	bnez	$fp, .LBB3_199
.LBB3_200:                              # %while.end.loopexit.i
                                        #   in Loop: Header=BB3_182 Depth=1
	add.d	$t2, $s7, $t2
	add.d	$t2, $t8, $t2
	move	$s3, $s1
	move	$s5, $s0
	move	$s8, $a6
	bne	$t5, $a2, .LBB3_192
.LBB3_201:                              #   in Loop: Header=BB3_182 Depth=1
	move	$fp, $s3
	move	$t8, $s5
	bne	$t1, $s8, .LBB3_206
	b	.LBB3_208
	.p2align	4, , 16
.LBB3_202:                              #   in Loop: Header=BB3_182 Depth=1
	move	$s0, $s1
	move	$t8, $s5
	move	$fp, $s3
.LBB3_203:                              # %while.body122.i.preheader
                                        #   in Loop: Header=BB3_182 Depth=1
	add.d	$t2, $t2, $s0
	.p2align	4, , 16
.LBB3_204:                              # %while.body122.i
                                        #   Parent Loop BB3_182 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a5, $fp, -1
	addi.d	$fp, $fp, -1
	st.b	$a4, $t8, -1
	addi.w	$s0, $s0, -1
	addi.d	$t8, $t8, -1
	bnez	$s0, .LBB3_204
.LBB3_205:                              # %while.end126.i
                                        #   in Loop: Header=BB3_182 Depth=1
	beq	$t1, $s8, .LBB3_208
.LBB3_206:                              # %while.end126.i
                                        #   in Loop: Header=BB3_182 Depth=1
	addi.w	$s0, $a0, 0
	beq	$t4, $s0, .LBB3_208
# %bb.207:                              # %if.else132.i
                                        #   in Loop: Header=BB3_182 Depth=1
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $s0, %pc_lo12(impmtx)
	ldx.d	$t6, $s0, $t6
	fldx.s	$fa5, $t6, $t7
	fld.s	$fa6, $a1, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a1, 0
.LBB3_208:                              # %if.end135.i
                                        #   in Loop: Header=BB3_182 Depth=1
	blt	$t1, $a3, .LBB3_213
# %bb.209:                              # %if.end135.i
                                        #   in Loop: Header=BB3_182 Depth=1
	blt	$t4, $a3, .LBB3_213
# %bb.210:                              # %if.end142.i
                                        #   in Loop: Header=BB3_182 Depth=1
	add.d	$t0, $t5, $t0
	addi.d	$s3, $fp, -1
	st.b	$a4, $fp, -1
	addi.d	$s5, $t8, -1
	addi.w	$t2, $t2, 2
	st.b	$a4, $t8, -1
	move	$s7, $t3
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	bge	$t1, $t2, .LBB3_182
	b	.LBB3_212
	.p2align	4, , 16
.LBB3_211:                              # %if.else110.i
                                        #   in Loop: Header=BB3_182 Depth=1
	addi.d	$t3, $s7, -1
	move	$t5, $a2
	nor	$t8, $t3, $zero
	add.w	$fp, $s7, $t8
	bnez	$fp, .LBB3_185
	b	.LBB3_191
.LBB3_212:                              # %for.end148.i
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	bge	$a0, $fp, .LBB3_214
	b	.LBB3_216
.LBB3_213:
	move	$s3, $fp
	move	$s5, $t8
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	blt	$a0, $fp, .LBB3_216
.LBB3_214:                              # %for.body152.preheader.i
	move	$s0, $s7
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_215:                              # %for.body152.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB3_215
.LBB3_216:                              # %for.cond160.preheader.i
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	blt	$s1, $fp, .LBB3_219
# %bb.217:                              # %for.body163.preheader.i
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB3_218:                              # %for.body163.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB3_218
.LBB3_219:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
.LBB3_220:                              # %if.end419
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB3_236
# %bb.221:                              # %if.end419
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB3_236
# %bb.222:                              # %if.end430
	ori	$fp, $zero, 1
	blt	$s3, $fp, .LBB3_225
.LBB3_223:                              # %for.body434.lr.ph
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(A__align.mseq1)
	.p2align	4, , 16
.LBB3_224:                              # %for.body434
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s3, $s3, -1
	addi.d	$s7, $s7, 8
	bnez	$s3, .LBB3_224
.LBB3_225:                              # %for.cond443.preheader
	blt	$s1, $fp, .LBB3_228
# %bb.226:                              # %for.body446.lr.ph
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align.mseq2)
	.p2align	4, , 16
.LBB3_227:                              # %for.body446
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB3_227
.LBB3_228:                              # %for.end454
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 352                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.LBB3_229:                              # %vector.ph630
	move	$a6, $a4
	bstrins.d	$a6, $zero, 3, 0
	xvldrepl.w	$xr0, $a0, 0
	addi.d	$a5, $s5, 32
	addi.d	$a7, $a1, 36
	addi.d	$t0, $a2, 36
	xvrepli.b	$xr1, 0
	move	$t1, $a6
	.p2align	4, , 16
.LBB3_230:                              # %vector.body633
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
	bnez	$t1, .LBB3_230
# %bb.231:                              # %middle.block640
	beq	$a4, $a6, .LBB3_77
# %bb.232:                              # %vec.epilog.iter.check645
	andi	$a5, $a4, 12
	beqz	$a5, .LBB3_258
.LBB3_233:                              # %vec.epilog.ph644
	move	$a7, $a4
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a5, $a4
	bstrins.d	$a5, $t0, 1, 0
	vldrepl.w	$vr0, $a0, 0
	slli.d	$t1, $a6, 2
	alsl.d	$t0, $a6, $s5, 2
	addi.d	$t2, $t1, 4
	add.d	$t1, $a1, $t2
	add.d	$t2, $a2, $t2
	sub.d	$a6, $a6, $a7
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB3_234:                              # %vec.epilog.vector.body650
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $t1, 0
	vst	$vr1, $t2, 0
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$a6, $a6, 4
	addi.d	$t2, $t2, 16
	bnez	$a6, .LBB3_234
# %bb.235:                              # %vec.epilog.middle.block657
	bne	$a4, $a7, .LBB3_75
	b	.LBB3_77
.LBB3_236:                              # %if.then428
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
	bge	$s3, $fp, .LBB3_223
	b	.LBB3_225
.LBB3_237:                              # %vector.ph448
	bstrpick.d	$a2, $t3, 31, 4
	slli.d	$a5, $a2, 4
	addi.d	$a2, $s5, 32
	addi.d	$a3, $a1, 32
	move	$a4, $a5
	.p2align	4, , 16
.LBB3_238:                              # %vector.body451
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
	bnez	$a4, .LBB3_238
# %bb.239:                              # %middle.block459
	beq	$a0, $a5, .LBB3_49
# %bb.240:                              # %vec.epilog.iter.check
	andi	$a2, $t3, 12
	beqz	$a2, .LBB3_259
.LBB3_241:                              # %vec.epilog.ph
	bstrpick.d	$a4, $t3, 31, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a2, $a4, $a1, 4
	andi	$a3, $t3, 3
	alsl.d	$a4, $a4, $s5, 4
	alsl.d	$a7, $a5, $s5, 2
	alsl.d	$a1, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_242:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a7, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB3_242
# %bb.243:                              # %vec.epilog.middle.block
	bne	$a0, $a6, .LBB3_47
	b	.LBB3_49
.LBB3_244:                              # %vector.ph526
	move	$a5, $a3
	xvldrepl.w	$xr0, $a0, 0
	bstrins.d	$a5, $zero, 3, 0
	addi.d	$a4, $a2, 32
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 36
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_245:                              # %vector.body529
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
	bnez	$a7, .LBB3_245
# %bb.246:                              # %middle.block538
	beq	$a3, $a5, .LBB3_62
# %bb.247:                              # %vec.epilog.iter.check543
	andi	$a4, $a3, 12
	beqz	$a4, .LBB3_260
.LBB3_248:                              # %vec.epilog.ph542
	move	$a6, $a3
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a7, $a5, $a2, 2
	ld.d	$t0, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$t0, $a5, $t0, 2
	addi.d	$t0, $t0, 4
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_249:                              # %vec.epilog.vector.body548
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $t0, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB3_249
# %bb.250:                              # %vec.epilog.middle.block556
	bne	$a3, $a6, .LBB3_60
	b	.LBB3_62
.LBB3_251:                              # %vector.ph578
	move	$a5, $a3
	xvldrepl.w	$xr0, $a0, 0
	bstrins.d	$a5, $zero, 3, 0
	addi.d	$a4, $a2, 32
	addi.d	$a6, $s5, 36
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_252:                              # %vector.body581
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
	bnez	$a7, .LBB3_252
# %bb.253:                              # %middle.block590
	beq	$a3, $a5, .LBB3_74
# %bb.254:                              # %vec.epilog.iter.check595
	andi	$a4, $a3, 12
	beqz	$a4, .LBB3_261
.LBB3_255:                              # %vec.epilog.ph594
	move	$a6, $a3
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a7, $a5, $a2, 2
	alsl.d	$t0, $a5, $s5, 2
	addi.d	$t0, $t0, 4
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_256:                              # %vec.epilog.vector.body600
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $t0, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB3_256
# %bb.257:                              # %vec.epilog.middle.block608
	bne	$a3, $a6, .LBB3_64
	b	.LBB3_74
.LBB3_258:
	addi.d	$a5, $a6, 1
	b	.LBB3_75
.LBB3_259:
	alsl.d	$a2, $a5, $a1, 2
	sub.d	$a3, $t3, $a5
	alsl.d	$a4, $a5, $s5, 2
	b	.LBB3_47
.LBB3_260:
	addi.d	$a4, $a5, 1
	b	.LBB3_60
.LBB3_261:
	addi.d	$a4, $a5, 1
	b	.LBB3_64
.Lfunc_end3:
	.size	A__align, .Lfunc_end3-A__align
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
	.p2align	3, 0x0                          # -- Begin function A__align_gapmap
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
.LCPI6_2:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI6_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI6_6:
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
.LCPI6_4:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI6_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI6_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	A__align_gapmap
	.p2align	5
	.type	A__align_gapmap,@function
A__align_gapmap:                        # @A__align_gapmap
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
	pcalau12i	$s5, %pc_hi20(A__align_gapmap.orlgth1)
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	st.d	$a7, $sp, 264                   # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $a5
	move	$s1, $a4
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mseq1)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mseq2)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bnez	$s4, .LBB6_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(A__align_gapmap.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.mseq2)
.LBB6_2:                                # %if.end
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $s0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(A__align_gapmap.orlgth2)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.w	$s3, $a1, %pc_lo12(A__align_gapmap.orlgth2)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.w1)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.w2)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.initverticalw)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(A__align_gapmap.lastverticalw)
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.m)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mp)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(A__align_gapmap.mseq)
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.ogcp1)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.ogcp2)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.fgcp1)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.fgcp2)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.cpmx1)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.cpmx2)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.floatwork)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.intwork)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	blt	$s4, $fp, .LBB6_4
# %bb.3:                                # %if.end
	bge	$s3, $s8, .LBB6_9
.LBB6_4:                                # %if.then10
	ori	$a0, $zero, 1
	pcalau12i	$fp, %pc_hi20(A__align_gapmap.match)
	blt	$s4, $a0, .LBB6_7
# %bb.5:                                # %if.then10
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	blt	$s3, $a0, .LBB6_8
# %bb.6:                                # %if.then15
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(A__align_gapmap.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(A__align_gapmap.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(A__align_gapmap.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(A__align_gapmap.orlgth2)
	b	.LBB6_8
.LBB6_7:
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
.LBB6_8:                                # %if.end16
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	movgr2fr.w	$fa1, $s0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	addi.w	$s0, $s4, 100
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	addi.w	$s1, $s3, 100
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	addi.w	$s5, $s3, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(A__align_gapmap.match)
	addi.w	$s6, $s4, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(A__align_gapmap.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.mp)
	add.w	$a1, $s1, $s0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(A__align_gapmap.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.cpmx2)
	slt	$a0, $s1, $s0
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.floatwork)
	ori	$a1, $zero, 26
	move	$a0, $s5
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.intwork)
	st.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.w	$s3, $a0, %pc_lo12(A__align_gapmap.orlgth2)
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
.LBB6_9:                                # %if.end82
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB6_12
# %bb.10:                               # %for.body.lr.ph
	ld.d	$a1, $s7, %pc_lo12(A__align_gapmap.mseq)
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.mseq1)
	move	$a3, $s1
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $a4, 0
	stx.b	$zero, $a5, $fp
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB6_11
.LBB6_12:                               # %for.cond92.preheader
	blt	$s6, $a0, .LBB6_15
# %bb.13:                               # %for.body95.lr.ph
	ld.d	$a1, $s7, %pc_lo12(A__align_gapmap.mseq)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mseq2)
	alsl.d	$a1, $s1, $a1, 3
	move	$a2, $s6
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_14:                               # %for.body95
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s8
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB6_14
.LBB6_15:                               # %for.end107
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s0, $a0, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $fp, 0
	ld.w	$a0, $s0, 0
	blt	$a1, $s4, .LBB6_18
# %bb.16:                               # %for.end107
	blt	$a0, $s3, .LBB6_18
# %bb.17:                               # %lor.lhs.false110.if.end135_crit_edge
	move	$s4, $s2
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	b	.LBB6_23
.LBB6_18:                               # %if.then113
	beqz	$a1, .LBB6_21
# %bb.19:                               # %if.then113
	move	$s1, $s5
	move	$s5, $s2
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_22
# %bb.20:                               # %if.then118
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s1, %pc_lo12(A__align_gapmap.orlgth1)
	ld.w	$a1, $fp, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(A__align_gapmap.orlgth2)
	ld.w	$a0, $s0, 0
	b	.LBB6_22
.LBB6_21:
	move	$s5, $s2
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
.LBB6_22:                               # %if.end119
	slt	$a2, $a1, $s4
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s4, $a2
	or	$s1, $a2, $a1
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s2, $a1, $a0
	addi.w	$a0, $s1, 10
	addi.w	$a1, $s2, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s1, $fp, 0
	st.w	$s2, $s0, 0
	move	$s4, $s5
.LBB6_23:                               # %if.end135
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $a1, %pc_lo12(A__align_gapmap.cpmx1)
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $s0, 0
	pcalau12i	$a2, %pc_hi20(A__align_gapmap.ijp)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(A__align_gapmap.ijp)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s0
	move	$a1, $s5
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align_gapmap.cpmx2)
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s7
	move	$a1, $s5
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s2
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp1)
	move	$a1, $fp
	move	$fp, $s3
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB6_30
# %bb.24:                               # %for.body145.lr.ph
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.ogcp1)
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(A__align_gapmap.fgcp1)
	bstrpick.d	$a2, $s1, 30, 0
	ori	$a4, $zero, 8
	bltu	$a2, $a4, .LBB6_27
# %bb.25:                               # %vector.memcheck
	alsl.d	$a4, $a2, $a3, 2
	bgeu	$a1, $a4, .LBB6_138
# %bb.26:                               # %vector.memcheck
	alsl.d	$a4, $a2, $a1, 2
	bgeu	$a3, $a4, .LBB6_138
.LBB6_27:
	move	$a4, $zero
.LBB6_28:                               # %for.body145.preheader
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a1, $a4, $a1, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr0, -912
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB6_29:                               # %for.body145
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a1, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a1, 0
	fld.s	$fa2, $a3, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_29
.LBB6_30:                               # %for.cond165.preheader
	move	$s2, $s4
	blt	$s8, $a0, .LBB6_37
# %bb.31:                               # %for.body168.lr.ph
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB6_34
# %bb.32:                               # %vector.memcheck414
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB6_141
# %bb.33:                               # %vector.memcheck414
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB6_141
.LBB6_34:
	move	$a3, $zero
.LBB6_35:                               # %for.body168.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -912
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB6_36:                               # %for.body168
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a0, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a0, 0
	fld.s	$fa2, $a2, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB6_36
.LBB6_37:                               # %for.end187
	ld.d	$a0, $sp, 400
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 392
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align_gapmap.w1)
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w2)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.initverticalw)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $a1, %pc_lo12(A__align_gapmap.cpmx2)
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s0, $a1, %pc_lo12(A__align_gapmap.cpmx1)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(A__align_gapmap.floatwork)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(A__align_gapmap.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$a1, $s6
	move	$a2, $s0
	move	$a3, $zero
	move	$a4, $fp
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 32
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	beqz	$a0, .LBB6_44
# %bb.38:                               # %if.then189
	move	$a0, $fp
	ld.d	$fp, $a1, %pc_lo12(impmtx)
	beqz	$a0, .LBB6_41
# %bb.39:                               # %while.body.lr.ph.i
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	move	$a1, $s1
	.p2align	4, , 16
.LBB6_40:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $fp, $a4
	fldx.s	$fa0, $a4, $a0
	fld.s	$fa1, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a1, .LBB6_40
.LBB6_41:                               # %imp_match_out_vead_tate_gapmap.exit
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s5
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $zero
	move	$a4, $s8
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB6_53
# %bb.42:                               # %while.body.i231.preheader
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_43:                               # %while.body.i231
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
	bnez	$a1, .LBB6_43
	b	.LBB6_45
.LBB6_44:                               # %if.end195.critedge
	ori	$a7, $zero, 1
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s6
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB6_45:                               # %if.end195
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB6_54
# %bb.46:                               # %for.cond231.preheader
	blt	$s8, $a0, .LBB6_62
# %bb.47:                               # %for.body235.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_51
# %bb.48:                               # %vector.ph435
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI6_1)
	addi.d	$a5, $s5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_49:                               # %vector.body438
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
	bnez	$a6, .LBB6_49
# %bb.50:                               # %middle.block442
	beq	$a2, $a4, .LBB6_62
.LBB6_51:                               # %for.body235.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_52:                               # %for.body235
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
	bnez	$a1, .LBB6_52
	b	.LBB6_62
.LBB6_53:                               # %if.end195.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	bne	$a0, $s0, .LBB6_62
.LBB6_54:                               # %for.cond199.preheader
	ori	$a4, $zero, 1
	blt	$fp, $a4, .LBB6_58
# %bb.55:                               # %iter.check
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	addi.d	$a1, $s1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 3
	bltu	$a5, $a3, .LBB6_144
.LBB6_56:                               # %for.body203.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, -4
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 2
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB6_57:                               # %for.body203
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
	bnez	$a1, .LBB6_57
.LBB6_58:                               # %for.cond215.preheader
	ori	$a4, $zero, 1
	blt	$s8, $a4, .LBB6_74
# %bb.59:                               # %iter.check517
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 3
	bltu	$a5, $a3, .LBB6_148
.LBB6_60:                               # %for.body219.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, -4
	alsl.d	$a3, $a4, $s5, 2
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB6_61:                               # %for.body219
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
	bnez	$a1, .LBB6_61
	b	.LBB6_70
.LBB6_62:                               # %for.cond246.preheader
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB6_69
# %bb.63:                               # %for.body250.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a2, $s1, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 8
	bltu	$a3, $a4, .LBB6_67
# %bb.64:                               # %vector.ph447
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a1, $a3
	bstrins.d	$a1, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI6_1)
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_65:                               # %vector.body452
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
	bnez	$a6, .LBB6_65
# %bb.66:                               # %middle.block459
	beq	$a3, $a4, .LBB6_69
.LBB6_67:                               # %for.body250.preheader
	mul.d	$a3, $a0, $a1
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 2
	sub.d	$a1, $a2, $a1
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_68:                               # %for.body250
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
	bnez	$a1, .LBB6_68
.LBB6_69:                               # %if.end262
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB6_74
.LBB6_70:                               # %iter.check569
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.m)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.mp)
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a7, $zero, 4
	ori	$a5, $zero, 1
	bgeu	$a4, $a7, .LBB6_116
.LBB6_71:                               # %for.body267.preheader
	alsl.d	$a4, $a5, $s5, 2
	addi.d	$a4, $a4, -4
	alsl.d	$a1, $a5, $a1, 2
	alsl.d	$a2, $a5, $a2, 2
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB6_72:                               # %for.body267
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
	bnez	$a3, .LBB6_72
.LBB6_73:
	move	$a2, $zero
	b	.LBB6_75
.LBB6_74:                               # %for.end279
	ori	$a2, $zero, 1
	beqz	$s8, .LBB6_152
.LBB6_75:
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $a3, $a0
	srai.d	$a0, $a0, 30
	fldx.s	$fa0, $s5, $a0
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	move	$a2, $zero
.LBB6_76:                               # %if.end289
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s0, $s2, %pc_lo12(A__align_gapmap.lastverticalw)
	sltu	$a1, $zero, $a0
	add.w	$s2, $a1, $s1
	ori	$a1, $zero, 2
	fst.s	$fa0, $s0, 0
	blt	$s2, $a1, .LBB6_92
# %bb.77:                               # %for.body298.lr.ph
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	move	$s6, $s3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ijp)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.m)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.mp)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.fgcp2)
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.fgcp1)
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.ogcp1)
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a3, $a2
	srai.d	$s1, $a2, 30
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s4, $zero, 1
	b	.LBB6_79
	.p2align	4, , 16
.LBB6_78:                               # %for.end364
                                        #   in Loop: Header=BB6_79 Depth=1
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	fldx.s	$fa0, $s3, $s1
	addi.d	$s4, $s4, 1
	fstx.s	$fa0, $s0, $a0
	move	$s5, $s3
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	beq	$s4, $s2, .LBB6_93
.LBB6_79:                               # %for.body298
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_82 Depth 2
                                        #     Child Loop BB6_86 Depth 2
	addi.d	$fp, $s4, -1
	slli.d	$s7, $fp, 2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s7
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	fst.s	$fa0, $s5, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s8
	move	$a6, $s6
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	beqz	$a1, .LBB6_83
# %bb.80:                               # %if.then304
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_83
# %bb.81:                               # %while.body.i244.preheader
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_82:                               # %while.body.i244
                                        #   Parent Loop BB6_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	slli.d	$a5, $a5, 2
	fldx.s	$fa0, $a1, $a5
	fld.s	$fa1, $a3, 0
	addi.w	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a3, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	move	$a3, $a5
	bnez	$a2, .LBB6_82
.LBB6_83:                               # %if.end307
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $s3, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_78
# %bb.84:                               # %for.body329.preheader
                                        #   in Loop: Header=BB6_79 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $s7
	fld.s	$fa2, $s5, 0
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	fld.s	$fa3, $a3, 4
	slli.d	$a3, $s4, 3
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a3
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	fldx.s	$fa1, $a3, $a0
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a3, $s3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $zero, -1
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	move	$t2, $s5
	b	.LBB6_86
	.p2align	4, , 16
.LBB6_85:                               # %if.end354
                                        #   in Loop: Header=BB6_86 Depth=2
	fadd.s	$fa3, $fa3, $fa4
	fcmp.cult.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	movcf2gr	$t3, $fcc0
	fld.s	$fa3, $a3, 0
	masknez	$t4, $a1, $t3
	maskeqz	$a2, $a2, $t3
	or	$a2, $a2, $t4
	fadd.s	$fa3, $fs0, $fa3
	fst.s	$fa3, $a3, 0
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, -1
	beq	$s8, $a1, .LBB6_78
.LBB6_86:                               # %for.body329
                                        #   Parent Loop BB6_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t1, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa4, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	st.w	$zero, $a4, 0
	fmov.s	$fs0, $fa3
	bcnez	$fcc0, .LBB6_88
# %bb.87:                               # %if.then333
                                        #   in Loop: Header=BB6_86 Depth=2
	add.d	$t3, $a2, $a5
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa4
.LBB6_88:                               # %if.end336
                                        #   in Loop: Header=BB6_86 Depth=2
	fld.s	$fa5, $t0, 0
	fld.s	$fa4, $a6, 0
	fadd.s	$fa6, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fs0
	bcnez	$fcc0, .LBB6_90
# %bb.89:                               # %if.then346
                                        #   in Loop: Header=BB6_86 Depth=2
	ld.w	$t3, $a7, 0
	sub.d	$t3, $s4, $t3
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa6
.LBB6_90:                               # %if.end348
                                        #   in Loop: Header=BB6_86 Depth=2
	fadd.s	$fa6, $fa1, $fa3
	fcmp.cult.s	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB6_85
# %bb.91:                               # %if.then352
                                        #   in Loop: Header=BB6_86 Depth=2
	fst.s	$fa6, $t0, 0
	st.w	$fp, $a7, 0
	b	.LBB6_85
.LBB6_92:
	movgr2fr.w	$fs0, $zero
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB6_108
	b	.LBB6_94
.LBB6_93:                               # %for.end372.loopexit
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $s0, 0
	move	$s5, $s3
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB6_108
.LBB6_94:                               # %for.cond375.preheader
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_101
# %bb.95:                               # %for.body379.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_99
# %bb.96:                               # %vector.ph605
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	xvreplgr2vr.d	$xr1, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI6_2)
	xvld	$xr2, $a5, %pc_lo12(.LCPI6_2)
	pcalau12i	$a5, %pc_hi20(.LCPI6_3)
	xvld	$xr3, $a5, %pc_lo12(.LCPI6_3)
	addi.d	$a5, $s5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_97:                               # %vector.body612
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
	bnez	$a6, .LBB6_97
# %bb.98:                               # %middle.block619
	beq	$a2, $a4, .LBB6_101
.LBB6_99:                               # %for.body379.preheader
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_100:                              # %for.body379
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
	bnez	$a1, .LBB6_100
.LBB6_101:                              # %for.cond392.preheader
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB6_108
# %bb.102:                              # %for.body396.lr.ph
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $s1, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $t0, %pc_lo12(A__align_gapmap.lastverticalw)
	addi.d	$a2, $s1, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB6_106
# %bb.103:                              # %vector.ph624
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI6_4)
	vld	$vr4, $a5, %pc_lo12(.LCPI6_4)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_104:                              # %vector.body631
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
	bnez	$a6, .LBB6_104
# %bb.105:                              # %middle.block638
	beq	$a3, $a4, .LBB6_108
.LBB6_106:                              # %for.body396.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB6_107:                              # %for.body396
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
	bnez	$a2, .LBB6_107
.LBB6_108:                              # %if.end410
	ld.d	$s3, $t0, %pc_lo12(A__align_gapmap.lastverticalw)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align_gapmap.mseq2)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(A__align_gapmap.ijp)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_115
# %bb.109:                              # %if.then412
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	add.w	$a0, $a0, $s7
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, 0
	ori	$a1, $zero, 1
	addi.w	$ra, $s7, 0
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	addi.w	$a2, $fp, 0
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	beq	$a3, $a1, .LBB6_125
# %bb.110:                              # %if.else.i
	fld.s	$fa0, $s3, 0
	blt	$ra, $a1, .LBB6_120
# %bb.111:                              # %for.body.lr.ph.i
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB6_113
	.p2align	4, , 16
.LBB6_112:                              # %for.inc.i
                                        #   in Loop: Header=BB6_113 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB6_120
.LBB6_113:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_112
# %bb.114:                              # %if.then16.i
                                        #   in Loop: Header=BB6_113 Depth=1
	ldx.d	$a6, $s2, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB6_112
.LBB6_115:                              # %if.else413
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	st.d	$s1, $sp, 0
	move	$a0, $s5
	move	$a1, $s3
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s7
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s2
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	move	$a7, $s2
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB6_202
.LBB6_116:                              # %vector.memcheck554
	addi.d	$a7, $a1, 4
	alsl.d	$t0, $a3, $a1, 2
	alsl.d	$t1, $a3, $s5, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $s5, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB6_71
# %bb.117:                              # %vector.memcheck554
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB6_71
# %bb.118:                              # %vector.main.loop.iter.check571
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB6_211
# %bb.119:
	move	$a6, $zero
	b	.LBB6_215
.LBB6_120:                              # %for.cond24.preheader.i
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB6_125
# %bb.121:                              # %for.body27.lr.ph.i
	slli.d	$a1, $s7, 32
	srai.d	$a1, $a1, 29
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a3, $a5, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $a5, 30, 0
	sub.d	$a5, $zero, $a5
	b	.LBB6_123
	.p2align	4, , 16
.LBB6_122:                              # %for.inc43.i
                                        #   in Loop: Header=BB6_123 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s5, $s5, 4
	beqz	$a4, .LBB6_125
.LBB6_123:                              # %for.body27.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s5, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_122
# %bb.124:                              # %if.then32.i
                                        #   in Loop: Header=BB6_123 Depth=1
	ldx.d	$a6, $s2, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB6_122
.LBB6_125:                              # %if.end46.i
	bltz	$ra, .LBB6_133
# %bb.126:                              # %for.body51.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB6_128
# %bb.127:
	move	$a3, $zero
	b	.LBB6_131
.LBB6_128:                              # %vector.ph643
	pcalau12i	$a4, %pc_hi20(.LCPI6_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI6_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s2, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB6_129:                              # %vector.body646
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
	bnez	$a5, .LBB6_129
# %bb.130:                              # %middle.block653
	beq	$a1, $a3, .LBB6_133
.LBB6_131:                              # %for.body51.i.preheader
	alsl.d	$a4, $a3, $s2, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB6_132:                              # %for.body51.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB6_132
.LBB6_133:                              # %for.cond59.preheader.i
	ld.d	$a1, $sp, 384
	bltz	$a2, .LBB6_162
# %bb.134:                              # %iter.check659
	ld.d	$a3, $s2, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a6, $a4, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB6_136
# %bb.135:
	move	$a5, $zero
	b	.LBB6_160
.LBB6_136:                              # %vector.main.loop.iter.check661
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB6_153
# %bb.137:
	move	$a5, $zero
	b	.LBB6_157
.LBB6_138:                              # %vector.ph
	bstrpick.d	$a4, $s1, 30, 3
	slli.d	$a4, $a4, 3
	lu52i.d	$a5, $zero, 1023
	xvreplgr2vr.d	$xr0, $a5
	lu52i.d	$a5, $zero, 1022
	xvreplgr2vr.d	$xr1, $a5
	move	$a5, $a1
	move	$a6, $a3
	move	$a7, $a4
	.p2align	4, , 16
.LBB6_139:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a5, 0
	xvpermi.q	$xr3, $xr2, 1
	vreplvei.w	$vr4, $vr3, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr3, 0
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr5, $xr4, 1
	vreplvei.w	$vr4, $vr3, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr5, $xr4, 2
	vreplvei.w	$vr3, $vr3, 3
	fcvt.d.s	$fa3, $fa3
	xvinsve0.d	$xr5, $xr3, 3
	vreplvei.w	$vr3, $vr2, 1
	fcvt.d.s	$fa3, $fa3
	vreplvei.w	$vr4, $vr2, 0
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr4, $xr3, 1
	vreplvei.w	$vr3, $vr2, 2
	fcvt.d.s	$fa3, $fa3
	xvinsve0.d	$xr4, $xr3, 2
	vreplvei.w	$vr2, $vr2, 3
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr4, $xr2, 3
	xvfsub.d	$xr2, $xr0, $xr5
	xvfsub.d	$xr3, $xr0, $xr4
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvpickve.d	$xr4, $xr3, 1
	fcvt.s.d	$fa4, $fa4
	xvpickve.d	$xr5, $xr3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr5, $xr4, 1
	xvpickve.d	$xr4, $xr3, 2
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr5, $xr4, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 3
	xvpickve.d	$xr3, $xr2, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 4
	xvpickve.d	$xr3, $xr2, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 5
	xvpickve.d	$xr3, $xr2, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 6
	xvpickve.d	$xr2, $xr2, 3
	xvld	$xr3, $a6, 0
	fcvt.s.d	$fa2, $fa2
	xvinsve0.w	$xr5, $xr2, 7
	xvst	$xr5, $a5, 0
	xvpermi.q	$xr2, $xr3, 1
	vreplvei.w	$vr4, $vr2, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr2, 0
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr5, $xr4, 1
	vreplvei.w	$vr4, $vr2, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr5, $xr4, 2
	vreplvei.w	$vr2, $vr2, 3
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr5, $xr2, 3
	vreplvei.w	$vr2, $vr3, 1
	fcvt.d.s	$fa2, $fa2
	vreplvei.w	$vr4, $vr3, 0
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr4, $xr2, 1
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr4, $xr2, 2
	vreplvei.w	$vr2, $vr3, 3
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr4, $xr2, 3
	xvfsub.d	$xr2, $xr0, $xr5
	xvfsub.d	$xr3, $xr0, $xr4
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvpickve.d	$xr4, $xr3, 1
	fcvt.s.d	$fa4, $fa4
	xvpickve.d	$xr5, $xr3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr5, $xr4, 1
	xvpickve.d	$xr4, $xr3, 2
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr5, $xr4, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 3
	xvpickve.d	$xr3, $xr2, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 4
	xvpickve.d	$xr3, $xr2, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 5
	xvpickve.d	$xr3, $xr2, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 6
	xvpickve.d	$xr2, $xr2, 3
	fcvt.s.d	$fa2, $fa2
	xvinsve0.w	$xr5, $xr2, 7
	xvst	$xr5, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB6_139
# %bb.140:                              # %middle.block
	beq	$a2, $a4, .LBB6_30
	b	.LBB6_28
.LBB6_141:                              # %vector.ph422
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 3
	slli.d	$a3, $a3, 3
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
	lu52i.d	$a4, $zero, 1022
	xvreplgr2vr.d	$xr1, $a4
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_142:                              # %vector.body425
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a4, 0
	xvpermi.q	$xr3, $xr2, 1
	vreplvei.w	$vr4, $vr3, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr3, 0
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr5, $xr4, 1
	vreplvei.w	$vr4, $vr3, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr5, $xr4, 2
	vreplvei.w	$vr3, $vr3, 3
	fcvt.d.s	$fa3, $fa3
	xvinsve0.d	$xr5, $xr3, 3
	vreplvei.w	$vr3, $vr2, 1
	fcvt.d.s	$fa3, $fa3
	vreplvei.w	$vr4, $vr2, 0
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr4, $xr3, 1
	vreplvei.w	$vr3, $vr2, 2
	fcvt.d.s	$fa3, $fa3
	xvinsve0.d	$xr4, $xr3, 2
	vreplvei.w	$vr2, $vr2, 3
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr4, $xr2, 3
	xvfsub.d	$xr2, $xr0, $xr5
	xvfsub.d	$xr3, $xr0, $xr4
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvpickve.d	$xr4, $xr3, 1
	fcvt.s.d	$fa4, $fa4
	xvpickve.d	$xr5, $xr3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr5, $xr4, 1
	xvpickve.d	$xr4, $xr3, 2
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr5, $xr4, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 3
	xvpickve.d	$xr3, $xr2, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 4
	xvpickve.d	$xr3, $xr2, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 5
	xvpickve.d	$xr3, $xr2, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 6
	xvpickve.d	$xr2, $xr2, 3
	xvld	$xr3, $a5, 0
	fcvt.s.d	$fa2, $fa2
	xvinsve0.w	$xr5, $xr2, 7
	xvst	$xr5, $a4, 0
	xvpermi.q	$xr2, $xr3, 1
	vreplvei.w	$vr4, $vr2, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr2, 0
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr5, $xr4, 1
	vreplvei.w	$vr4, $vr2, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr5, $xr4, 2
	vreplvei.w	$vr2, $vr2, 3
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr5, $xr2, 3
	vreplvei.w	$vr2, $vr3, 1
	fcvt.d.s	$fa2, $fa2
	vreplvei.w	$vr4, $vr3, 0
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr4, $xr2, 1
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr4, $xr2, 2
	vreplvei.w	$vr2, $vr3, 3
	fcvt.d.s	$fa2, $fa2
	xvinsve0.d	$xr4, $xr2, 3
	xvfsub.d	$xr2, $xr0, $xr5
	xvfsub.d	$xr3, $xr0, $xr4
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvpickve.d	$xr4, $xr3, 1
	fcvt.s.d	$fa4, $fa4
	xvpickve.d	$xr5, $xr3, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr5, $xr4, 1
	xvpickve.d	$xr4, $xr3, 2
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr5, $xr4, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 3
	xvpickve.d	$xr3, $xr2, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 4
	xvpickve.d	$xr3, $xr2, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 5
	xvpickve.d	$xr3, $xr2, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr5, $xr3, 6
	xvpickve.d	$xr2, $xr2, 3
	fcvt.s.d	$fa2, $fa2
	xvinsve0.w	$xr5, $xr2, 7
	xvst	$xr5, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB6_142
# %bb.143:                              # %middle.block430
	beq	$a1, $a3, .LBB6_37
	b	.LBB6_35
.LBB6_144:                              # %vector.memcheck462
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a1, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_56
# %bb.145:                              # %vector.memcheck462
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_56
# %bb.146:                              # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB6_219
# %bb.147:
	move	$a5, $zero
	b	.LBB6_223
.LBB6_148:                              # %vector.memcheck502
	addi.d	$a5, $s5, 4
	alsl.d	$a6, $a1, $s5, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_60
# %bb.149:                              # %vector.memcheck502
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_60
# %bb.150:                              # %vector.main.loop.iter.check519
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB6_226
# %bb.151:
	move	$a5, $zero
	b	.LBB6_230
.LBB6_152:
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	b	.LBB6_76
.LBB6_153:                              # %vector.ph662
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI6_6)
	xvld	$xr0, $a7, %pc_lo12(.LCPI6_6)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB6_154:                              # %vector.body665
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB6_154
# %bb.155:                              # %middle.block671
	beq	$a4, $a5, .LBB6_162
# %bb.156:                              # %vec.epilog.iter.check676
	andi	$a7, $a6, 12
	beqz	$a7, .LBB6_160
.LBB6_157:                              # %vec.epilog.ph675
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI6_7)
	vld	$vr0, $a5, %pc_lo12(.LCPI6_7)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB6_158:                              # %vec.epilog.vector.body683
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB6_158
# %bb.159:                              # %vec.epilog.middle.block688
	beq	$a4, $a5, .LBB6_162
.LBB6_160:                              # %for.body63.i.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB6_161:                              # %for.body63.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB6_161
.LBB6_162:                              # %for.end71.i
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	add.d	$a3, $a3, $ra
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	add.d	$a3, $a0, $ra
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	bltz	$a0, .LBB6_194
# %bb.163:                              # %for.body82.i.preheader
	move	$t2, $zero
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 45
	ori	$a5, $zero, 111
	ori	$a6, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a7, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $s2
	.p2align	4, , 16
.LBB6_164:                              # %for.body82.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_170 Depth 2
                                        #     Child Loop BB6_181 Depth 2
                                        #     Child Loop BB6_177 Depth 2
                                        #     Child Loop BB6_186 Depth 2
	addi.w	$t1, $s7, 0
	slli.d	$t3, $t1, 3
	ldx.d	$t3, $s2, $t3
	addi.w	$t4, $t0, 0
	slli.d	$t6, $t4, 2
	ldx.w	$t5, $t3, $t6
	bge	$a2, $t5, .LBB6_172
# %bb.165:                              # %if.else96.i
                                        #   in Loop: Header=BB6_164 Depth=1
	beqz	$t5, .LBB6_193
# %bb.166:                              # %if.then103.i
                                        #   in Loop: Header=BB6_164 Depth=1
	sub.d	$t3, $s7, $t5
	move	$t5, $a2
	nor	$t7, $t3, $zero
	add.w	$t8, $s7, $t7
	beqz	$t8, .LBB6_173
.LBB6_167:                              # %while.body.i257.preheader
                                        #   in Loop: Header=BB6_164 Depth=1
	bltu	$t8, $a7, .LBB6_179
# %bb.168:                              # %while.body.i257.preheader
                                        #   in Loop: Header=BB6_164 Depth=1
	sub.d	$fp, $s5, $s3
	bltu	$fp, $a7, .LBB6_179
# %bb.169:                              # %vector.ph717
                                        #   in Loop: Header=BB6_164 Depth=1
	bstrpick.d	$s1, $t8, 31, 0
	bstrpick.d	$fp, $s1, 31, 5
	slli.d	$s2, $fp, 5
	sub.d	$t8, $t8, $s2
	sub.d	$fp, $s3, $s2
	sub.d	$s0, $s5, $s2
	addi.d	$s5, $s5, -32
	addi.d	$s3, $s3, -32
	move	$s8, $s2
	.p2align	4, , 16
.LBB6_170:                              # %vector.body721
                                        #   Parent Loop BB6_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s5, 0
	xvst	$xr4, $s3, 0
	addi.d	$s8, $s8, -32
	addi.d	$s5, $s5, -32
	addi.d	$s3, $s3, -32
	bnez	$s8, .LBB6_170
# %bb.171:                              # %middle.block728
                                        #   in Loop: Header=BB6_164 Depth=1
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	bne	$s2, $s1, .LBB6_180
	b	.LBB6_182
	.p2align	4, , 16
.LBB6_172:                              # %if.then89.i
                                        #   in Loop: Header=BB6_164 Depth=1
	addi.d	$t3, $s7, -1
	nor	$t7, $t3, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB6_167
	.p2align	4, , 16
.LBB6_173:                              # %while.end.i
                                        #   in Loop: Header=BB6_164 Depth=1
	beq	$t5, $a2, .LBB6_183
.LBB6_174:                              # %while.body122.preheader.i
                                        #   in Loop: Header=BB6_164 Depth=1
	addi.w	$t7, $zero, -17
	nor	$s0, $t5, $zero
	bltu	$t7, $t5, .LBB6_184
# %bb.175:                              # %while.body122.preheader.i
                                        #   in Loop: Header=BB6_164 Depth=1
	sub.d	$t7, $s5, $s3
	bltu	$t7, $a6, .LBB6_184
# %bb.176:                              # %vector.ph696
                                        #   in Loop: Header=BB6_164 Depth=1
	bstrpick.d	$t7, $s0, 30, 4
	slli.d	$s1, $t7, 4
	sub.d	$fp, $s0, $s1
	sub.d	$t7, $s3, $s1
	sub.d	$t8, $s5, $s1
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $t2, 0
	addi.d	$t2, $s5, -8
	addi.d	$s2, $s3, -8
	move	$s3, $s1
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB6_177:                              # %vector.body699
                                        #   Parent Loop BB6_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t2, -8
	vst	$vr2, $s2, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s3, $s3, -16
	addi.d	$t2, $t2, -16
	addi.d	$s2, $s2, -16
	bnez	$s3, .LBB6_177
# %bb.178:                              # %middle.block706
                                        #   in Loop: Header=BB6_164 Depth=1
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
	xvpickve2gr.w	$t2, $xr5, 0
	move	$s2, $a0
	bne	$s1, $s0, .LBB6_185
	b	.LBB6_187
	.p2align	4, , 16
.LBB6_179:                              #   in Loop: Header=BB6_164 Depth=1
	move	$fp, $s3
	move	$s0, $s5
.LBB6_180:                              # %while.body.i257.preheader735
                                        #   in Loop: Header=BB6_164 Depth=1
	move	$s1, $fp
	move	$s2, $s0
	.p2align	4, , 16
.LBB6_181:                              # %while.body.i257
                                        #   Parent Loop BB6_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s0, $s2, -1
	st.b	$a5, $s2, -1
	addi.d	$fp, $s1, -1
	addi.w	$t8, $t8, -1
	st.b	$a4, $s1, -1
	move	$s1, $fp
	move	$s2, $s0
	bnez	$t8, .LBB6_181
.LBB6_182:                              # %while.end.loopexit.i
                                        #   in Loop: Header=BB6_164 Depth=1
	add.d	$t2, $s7, $t2
	add.d	$t2, $t7, $t2
	move	$s5, $s0
	move	$s3, $fp
	move	$s2, $a0
	bne	$t5, $a2, .LBB6_174
.LBB6_183:                              #   in Loop: Header=BB6_164 Depth=1
	move	$t8, $s5
	move	$t7, $s3
	bne	$t1, $ra, .LBB6_188
	b	.LBB6_190
	.p2align	4, , 16
.LBB6_184:                              #   in Loop: Header=BB6_164 Depth=1
	move	$fp, $s0
	move	$t7, $s3
	move	$t8, $s5
.LBB6_185:                              # %while.body122.i.preheader
                                        #   in Loop: Header=BB6_164 Depth=1
	add.d	$t2, $t2, $fp
	.p2align	4, , 16
.LBB6_186:                              # %while.body122.i
                                        #   Parent Loop BB6_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a5, $t7, -1
	addi.w	$fp, $fp, -1
	addi.d	$t7, $t7, -1
	bnez	$fp, .LBB6_186
.LBB6_187:                              # %while.end126.i
                                        #   in Loop: Header=BB6_164 Depth=1
	beq	$t1, $ra, .LBB6_190
.LBB6_188:                              # %while.end126.i
                                        #   in Loop: Header=BB6_164 Depth=1
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 0
	beq	$t4, $fp, .LBB6_190
# %bb.189:                              # %if.else132.i
                                        #   in Loop: Header=BB6_164 Depth=1
	slli.d	$fp, $t1, 2
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$fp, $s0, $fp
	ld.d	$s0, $s8, %pc_lo12(impmtx)
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$t6, $s1, $t6
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $s0, $fp
	slli.d	$t6, $t6, 2
	fldx.s	$fa5, $fp, $t6
	fld.s	$fa6, $a1, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a1, 0
.LBB6_190:                              # %if.end139.i
                                        #   in Loop: Header=BB6_164 Depth=1
	blt	$t1, $a3, .LBB6_195
# %bb.191:                              # %if.end139.i
                                        #   in Loop: Header=BB6_164 Depth=1
	blt	$t4, $a3, .LBB6_195
# %bb.192:                              # %if.end146.i
                                        #   in Loop: Header=BB6_164 Depth=1
	add.d	$t0, $t5, $t0
	addi.d	$s5, $t8, -1
	st.b	$a4, $t8, -1
	addi.d	$s3, $t7, -1
	addi.w	$t2, $t2, 2
	st.b	$a4, $t7, -1
	move	$s7, $t3
	ld.d	$t1, $sp, 280                   # 8-byte Folded Reload
	bge	$t1, $t2, .LBB6_164
	b	.LBB6_194
	.p2align	4, , 16
.LBB6_193:                              # %if.else110.i
                                        #   in Loop: Header=BB6_164 Depth=1
	addi.d	$t3, $s7, -1
	move	$t5, $a2
	nor	$t7, $t3, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB6_167
	b	.LBB6_173
.LBB6_194:                              # %for.end152.i
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bge	$a0, $fp, .LBB6_196
	b	.LBB6_198
.LBB6_195:
	move	$s5, $t8
	move	$s3, $t7
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blt	$a0, $fp, .LBB6_198
.LBB6_196:                              # %for.body156.preheader.i
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_197:                              # %for.body156.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB6_197
.LBB6_198:                              # %for.cond164.preheader.i
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	blt	$s1, $fp, .LBB6_201
# %bb.199:                              # %for.body167.preheader.i
	move	$fp, $s7
	move	$s0, $s1
	.p2align	4, , 16
.LBB6_200:                              # %for.body167.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB6_200
.LBB6_201:                              # %Atracking_localhom_gapmap.exit
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
.LBB6_202:                              # %if.end415
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB6_218
# %bb.203:                              # %if.end415
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB6_218
# %bb.204:                              # %if.end426
	ori	$fp, $zero, 1
	blt	$s2, $fp, .LBB6_207
.LBB6_205:                              # %for.body430.lr.ph
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(A__align_gapmap.mseq1)
	.p2align	4, , 16
.LBB6_206:                              # %for.body430
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB6_206
.LBB6_207:                              # %for.cond439.preheader
	blt	$s1, $fp, .LBB6_210
# %bb.208:                              # %for.body442.lr.ph
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align_gapmap.mseq2)
	.p2align	4, , 16
.LBB6_209:                              # %for.body442
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s7, $s7, 8
	bnez	$s1, .LBB6_209
.LBB6_210:                              # %for.end450
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
.LBB6_211:                              # %vector.ph572
	move	$a6, $a4
	bstrins.d	$a6, $zero, 3, 0
	xvldrepl.w	$xr0, $a0, 0
	addi.d	$a5, $s5, 32
	addi.d	$a7, $a1, 36
	addi.d	$t0, $a2, 36
	xvrepli.b	$xr1, 0
	move	$t1, $a6
	.p2align	4, , 16
.LBB6_212:                              # %vector.body575
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
	bnez	$t1, .LBB6_212
# %bb.213:                              # %middle.block582
	beq	$a4, $a6, .LBB6_73
# %bb.214:                              # %vec.epilog.iter.check587
	andi	$a5, $a4, 12
	beqz	$a5, .LBB6_233
.LBB6_215:                              # %vec.epilog.ph586
	move	$a7, $a4
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a5, $a4
	bstrins.d	$a5, $t0, 1, 0
	vldrepl.w	$vr0, $a0, 0
	slli.d	$t1, $a6, 2
	alsl.d	$t0, $a6, $s5, 2
	addi.d	$t2, $t1, 4
	add.d	$t1, $a1, $t2
	add.d	$t2, $a2, $t2
	sub.d	$a6, $a6, $a7
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB6_216:                              # %vec.epilog.vector.body592
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $t1, 0
	vst	$vr1, $t2, 0
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$a6, $a6, 4
	addi.d	$t2, $t2, 16
	bnez	$a6, .LBB6_216
# %bb.217:                              # %vec.epilog.middle.block599
	bne	$a4, $a7, .LBB6_71
	b	.LBB6_73
.LBB6_218:                              # %if.then424
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
	bge	$s2, $fp, .LBB6_205
	b	.LBB6_207
.LBB6_219:                              # %vector.ph477
	move	$a5, $a3
	xvldrepl.w	$xr0, $a0, 0
	bstrins.d	$a5, $zero, 3, 0
	addi.d	$a4, $a2, 32
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 36
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_220:                              # %vector.body480
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
	bnez	$a7, .LBB6_220
# %bb.221:                              # %middle.block489
	beq	$a3, $a5, .LBB6_58
# %bb.222:                              # %vec.epilog.iter.check
	andi	$a4, $a3, 12
	beqz	$a4, .LBB6_234
.LBB6_223:                              # %vec.epilog.ph
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
.LBB6_224:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $t0, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB6_224
# %bb.225:                              # %vec.epilog.middle.block
	bne	$a3, $a6, .LBB6_56
	b	.LBB6_58
.LBB6_226:                              # %vector.ph520
	move	$a5, $a3
	xvldrepl.w	$xr0, $a0, 0
	bstrins.d	$a5, $zero, 3, 0
	addi.d	$a4, $a2, 32
	addi.d	$a6, $s5, 36
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_227:                              # %vector.body523
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
	bnez	$a7, .LBB6_227
# %bb.228:                              # %middle.block532
	beq	$a3, $a5, .LBB6_70
# %bb.229:                              # %vec.epilog.iter.check537
	andi	$a4, $a3, 12
	beqz	$a4, .LBB6_235
.LBB6_230:                              # %vec.epilog.ph536
	move	$a6, $a3
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a7, $a5, $a2, 2
	alsl.d	$t0, $a5, $s5, 2
	addi.d	$t0, $t0, 4
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB6_231:                              # %vec.epilog.vector.body542
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $t0, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB6_231
# %bb.232:                              # %vec.epilog.middle.block550
	bne	$a3, $a6, .LBB6_60
	b	.LBB6_70
.LBB6_233:
	addi.d	$a5, $a6, 1
	b	.LBB6_71
.LBB6_234:
	addi.d	$a4, $a5, 1
	b	.LBB6_56
.LBB6_235:
	addi.d	$a4, $a5, 1
	b	.LBB6_60
.Lfunc_end6:
	.size	A__align_gapmap, .Lfunc_end6-A__align_gapmap
                                        # -- End function
	.globl	translate_and_Calign            # -- Begin function translate_and_Calign
	.p2align	5
	.type	translate_and_Calign,@function
translate_and_Calign:                   # @translate_and_Calign
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	ori	$a7, $zero, 1
	move	$s1, $a6
	move	$fp, $a1
	bne	$a4, $a7, .LBB7_3
# %bb.1:                                # %entry
	beq	$a5, $a7, .LBB7_3
# %bb.2:                                # %if.then
	ld.d	$s0, $a0, 0
	addi.w	$s3, $a5, 1
	b	.LBB7_7
.LBB7_3:                                # %if.else
	beq	$a4, $a7, .LBB7_6
# %bb.4:                                # %if.else
	ori	$a1, $zero, 1
	bne	$a5, $a1, .LBB7_6
# %bb.5:                                # %if.then5
	ld.d	$s0, $fp, 0
	addi.w	$s3, $a4, 1
	move	$fp, $a0
	move	$a3, $a2
	b	.LBB7_7
.LBB7_6:                                # %if.else8
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	move	$fp, $zero
	move	$a3, $zero
	move	$s3, $zero
.LBB7_7:                                # %if.end9
	addi.w	$a4, $s3, -2
	addi.d	$a0, $sp, 20
	move	$a1, $fp
	move	$a2, $s0
	move	$a5, $zero
	pcaddu18i	$ra, %call36(Calignm1)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a2, 1220
	blt	$s1, $a3, .LBB7_13
# %bb.8:                                # %if.end9
	ori	$a0, $a2, 2881
	bge	$a3, $a0, .LBB7_13
# %bb.9:                                # %if.end18
	ori	$a0, $zero, 2
	addi.w	$s1, $s3, -1
	blt	$s3, $a0, .LBB7_12
.LBB7_10:                               # %for.body.preheader
	move	$s3, $s1
	move	$s4, $s2
	.p2align	4, , 16
.LBB7_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	bnez	$s3, .LBB7_11
.LBB7_12:                               # %for.end
	slli.d	$a0, $s1, 3
	ldx.d	$a1, $s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB7_13:                               # %if.then16
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a4, $a2, 2880
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	addi.w	$s1, $s3, -1
	bge	$s3, $a0, .LBB7_10
	b	.LBB7_12
.Lfunc_end7:
	.size	translate_and_Calign, .Lfunc_end7-translate_and_Calign
                                        # -- End function
	.type	impmtx,@object                  # @impmtx
	.local	impmtx
	.comm	impmtx,8,8
	.type	imp_match_init_strict.nocount1,@object # @imp_match_init_strict.nocount1
	.local	imp_match_init_strict.nocount1
	.comm	imp_match_init_strict.nocount1,8,8
	.type	imp_match_init_strict.nocount2,@object # @imp_match_init_strict.nocount2
	.local	imp_match_init_strict.nocount2
	.comm	imp_match_init_strict.nocount2,8,8
	.type	impalloclen,@object             # @impalloclen
	.local	impalloclen
	.comm	impalloclen,4,4
	.type	A__align.m,@object              # @A__align.m
	.local	A__align.m
	.comm	A__align.m,8,8
	.type	A__align.ijp,@object            # @A__align.ijp
	.local	A__align.ijp
	.comm	A__align.ijp,8,8
	.type	A__align.mp,@object             # @A__align.mp
	.local	A__align.mp
	.comm	A__align.mp,8,8
	.type	A__align.w1,@object             # @A__align.w1
	.local	A__align.w1
	.comm	A__align.w1,8,8
	.type	A__align.w2,@object             # @A__align.w2
	.local	A__align.w2
	.comm	A__align.w2,8,8
	.type	A__align.match,@object          # @A__align.match
	.local	A__align.match
	.comm	A__align.match,8,8
	.type	A__align.initverticalw,@object  # @A__align.initverticalw
	.local	A__align.initverticalw
	.comm	A__align.initverticalw,8,8
	.type	A__align.lastverticalw,@object  # @A__align.lastverticalw
	.local	A__align.lastverticalw
	.comm	A__align.lastverticalw,8,8
	.type	A__align.mseq1,@object          # @A__align.mseq1
	.local	A__align.mseq1
	.comm	A__align.mseq1,8,8
	.type	A__align.mseq2,@object          # @A__align.mseq2
	.local	A__align.mseq2
	.comm	A__align.mseq2,8,8
	.type	A__align.mseq,@object           # @A__align.mseq
	.local	A__align.mseq
	.comm	A__align.mseq,8,8
	.type	A__align.ogcp1,@object          # @A__align.ogcp1
	.local	A__align.ogcp1
	.comm	A__align.ogcp1,8,8
	.type	A__align.ogcp2,@object          # @A__align.ogcp2
	.local	A__align.ogcp2
	.comm	A__align.ogcp2,8,8
	.type	A__align.fgcp1,@object          # @A__align.fgcp1
	.local	A__align.fgcp1
	.comm	A__align.fgcp1,8,8
	.type	A__align.fgcp2,@object          # @A__align.fgcp2
	.local	A__align.fgcp2
	.comm	A__align.fgcp2,8,8
	.type	A__align.cpmx1,@object          # @A__align.cpmx1
	.local	A__align.cpmx1
	.comm	A__align.cpmx1,8,8
	.type	A__align.cpmx2,@object          # @A__align.cpmx2
	.local	A__align.cpmx2
	.comm	A__align.cpmx2,8,8
	.type	A__align.intwork,@object        # @A__align.intwork
	.local	A__align.intwork
	.comm	A__align.intwork,8,8
	.type	A__align.floatwork,@object      # @A__align.floatwork
	.local	A__align.floatwork
	.comm	A__align.floatwork,8,8
	.type	A__align.orlgth1,@object        # @A__align.orlgth1
	.local	A__align.orlgth1
	.comm	A__align.orlgth1,4,4
	.type	A__align.orlgth2,@object        # @A__align.orlgth2
	.local	A__align.orlgth2
	.comm	A__align.orlgth2,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.1, 14

	.type	A__align_gapmap.m,@object       # @A__align_gapmap.m
	.local	A__align_gapmap.m
	.comm	A__align_gapmap.m,8,8
	.type	A__align_gapmap.ijp,@object     # @A__align_gapmap.ijp
	.local	A__align_gapmap.ijp
	.comm	A__align_gapmap.ijp,8,8
	.type	A__align_gapmap.mp,@object      # @A__align_gapmap.mp
	.local	A__align_gapmap.mp
	.comm	A__align_gapmap.mp,8,8
	.type	A__align_gapmap.w1,@object      # @A__align_gapmap.w1
	.local	A__align_gapmap.w1
	.comm	A__align_gapmap.w1,8,8
	.type	A__align_gapmap.w2,@object      # @A__align_gapmap.w2
	.local	A__align_gapmap.w2
	.comm	A__align_gapmap.w2,8,8
	.type	A__align_gapmap.match,@object   # @A__align_gapmap.match
	.local	A__align_gapmap.match
	.comm	A__align_gapmap.match,8,8
	.type	A__align_gapmap.initverticalw,@object # @A__align_gapmap.initverticalw
	.local	A__align_gapmap.initverticalw
	.comm	A__align_gapmap.initverticalw,8,8
	.type	A__align_gapmap.lastverticalw,@object # @A__align_gapmap.lastverticalw
	.local	A__align_gapmap.lastverticalw
	.comm	A__align_gapmap.lastverticalw,8,8
	.type	A__align_gapmap.mseq1,@object   # @A__align_gapmap.mseq1
	.local	A__align_gapmap.mseq1
	.comm	A__align_gapmap.mseq1,8,8
	.type	A__align_gapmap.mseq2,@object   # @A__align_gapmap.mseq2
	.local	A__align_gapmap.mseq2
	.comm	A__align_gapmap.mseq2,8,8
	.type	A__align_gapmap.mseq,@object    # @A__align_gapmap.mseq
	.local	A__align_gapmap.mseq
	.comm	A__align_gapmap.mseq,8,8
	.type	A__align_gapmap.ogcp1,@object   # @A__align_gapmap.ogcp1
	.local	A__align_gapmap.ogcp1
	.comm	A__align_gapmap.ogcp1,8,8
	.type	A__align_gapmap.ogcp2,@object   # @A__align_gapmap.ogcp2
	.local	A__align_gapmap.ogcp2
	.comm	A__align_gapmap.ogcp2,8,8
	.type	A__align_gapmap.fgcp1,@object   # @A__align_gapmap.fgcp1
	.local	A__align_gapmap.fgcp1
	.comm	A__align_gapmap.fgcp1,8,8
	.type	A__align_gapmap.fgcp2,@object   # @A__align_gapmap.fgcp2
	.local	A__align_gapmap.fgcp2
	.comm	A__align_gapmap.fgcp2,8,8
	.type	A__align_gapmap.cpmx1,@object   # @A__align_gapmap.cpmx1
	.local	A__align_gapmap.cpmx1
	.comm	A__align_gapmap.cpmx1,8,8
	.type	A__align_gapmap.cpmx2,@object   # @A__align_gapmap.cpmx2
	.local	A__align_gapmap.cpmx2
	.comm	A__align_gapmap.cpmx2,8,8
	.type	A__align_gapmap.intwork,@object # @A__align_gapmap.intwork
	.local	A__align_gapmap.intwork
	.comm	A__align_gapmap.intwork,8,8
	.type	A__align_gapmap.floatwork,@object # @A__align_gapmap.floatwork
	.local	A__align_gapmap.floatwork
	.comm	A__align_gapmap.floatwork,8,8
	.type	A__align_gapmap.orlgth1,@object # @A__align_gapmap.orlgth1
	.local	A__align_gapmap.orlgth1
	.comm	A__align_gapmap.orlgth1,4,4
	.type	A__align_gapmap.orlgth2,@object # @A__align_gapmap.orlgth2
	.local	A__align_gapmap.orlgth2
	.comm	A__align_gapmap.orlgth2,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"ERROR in translate_and_Calign"
	.size	.L.str.2, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
