	.file	"Halignmm.c"
	.text
	.globl	imp_match_out_scH               # -- Begin function imp_match_out_scH
	.p2align	5
	.type	imp_match_out_scH,@function
imp_match_out_scH:                      # @imp_match_out_scH
# %bb.0:                                # %entry
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	imp_match_out_scH, .Lfunc_end0-imp_match_out_scH
                                        # -- End function
	.globl	imp_match_init_strictH          # -- Begin function imp_match_init_strictH
	.p2align	5
	.type	imp_match_init_strictH,@function
imp_match_init_strictH:                 # @imp_match_init_strictH
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
	pcalau12i	$s6, %pc_hi20(imp_match_init_strictH.impalloclen)
	ld.w	$a0, $s6, %pc_lo12(imp_match_init_strictH.impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strictH.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strictH.nocount2)
	blt	$a0, $a1, .LBB1_11
# %bb.1:                                # %entry
	addi.w	$a1, $s5, 2
	blt	$a0, $a1, .LBB1_11
# %bb.2:                                # %if.end14
	ori	$a1, $zero, 1
	blt	$s4, $a1, .LBB1_18
.LBB1_3:                                # %for.cond16.preheader.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
	blt	$s3, $a1, .LBB1_19
# %bb.4:                                # %for.cond16.preheader.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_5:                                # %if.else.us
                                        #   in Loop: Header=BB1_7 Depth=1
	move	$a4, $zero
.LBB1_6:                                # %for.inc33.us
                                        #   in Loop: Header=BB1_7 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB1_23
.LBB1_7:                                # %for.cond16.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	move	$a4, $s3
	move	$a5, $s1
	move	$a3, $s3
	.p2align	4, , 16
.LBB1_8:                                # %for.body18.us
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB1_10
# %bb.9:                                # %for.inc.us
                                        #   in Loop: Header=BB1_8 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB1_8
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_10:                               # %for.end.us
                                        #   in Loop: Header=BB1_7 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB1_6
	b	.LBB1_5
.LBB1_11:                               # %if.then
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	beqz	$a0, .LBB1_13
# %bb.12:                               # %if.then3
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB1_13:                               # %if.end
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
	beqz	$a0, .LBB1_15
# %bb.14:                               # %if.then5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_15:                               # %if.end6
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictH.nocount2)
	beqz	$a0, .LBB1_17
# %bb.16:                               # %if.then8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_17:                               # %if.end9
	slt	$a0, $s5, $s4
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	st.w	$a0, $s6, %pc_lo12(imp_match_init_strictH.impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(imp_match_init_strictH.impalloclen)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(imp_match_init_strictH.impalloclen)
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(imp_match_init_strictH.nocount2)
	ori	$a1, $zero, 1
	bge	$s4, $a1, .LBB1_3
.LBB1_18:                               # %for.cond36.preheader.thread
	bge	$s5, $a1, .LBB1_24
	b	.LBB1_39
.LBB1_19:                               # %for.cond16.preheader.lr.ph.split
	beqz	$s3, .LBB1_21
# %bb.20:                               # %for.cond16.preheader.preheader
	ori	$a1, $zero, 1
	b	.LBB1_22
.LBB1_21:                               # %for.cond16.preheader.us131.preheader
	move	$a1, $zero
.LBB1_22:                               # %for.cond36.preheader
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_23:                               # %for.cond36.preheader
	blez	$s5, .LBB1_39
.LBB1_24:                               # %for.cond40.preheader.lr.ph
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictH.nocount2)
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB1_32
# %bb.25:                               # %for.cond40.preheader.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB1_28
	.p2align	4, , 16
.LBB1_26:                               # %if.else61.us
                                        #   in Loop: Header=BB1_28 Depth=1
	move	$a4, $zero
.LBB1_27:                               # %for.inc65.us
                                        #   in Loop: Header=BB1_28 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s5, .LBB1_36
.LBB1_28:                               # %for.cond40.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_29 Depth 2
	move	$a4, $s2
	move	$a5, $s0
	move	$a3, $s2
	.p2align	4, , 16
.LBB1_29:                               # %for.body43.us
                                        #   Parent Loop BB1_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB1_31
# %bb.30:                               # %for.inc53.us
                                        #   in Loop: Header=BB1_29 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB1_29
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_31:                               # %for.end55.us
                                        #   in Loop: Header=BB1_28 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB1_27
	b	.LBB1_26
.LBB1_32:                               # %for.cond40.preheader.lr.ph.split
	beqz	$s2, .LBB1_34
# %bb.33:                               # %for.cond40.preheader.preheader
	ori	$a1, $zero, 1
	b	.LBB1_35
.LBB1_34:                               # %for.cond40.preheader.us145.preheader
	move	$a1, $zero
.LBB1_35:                               # %for.cond68.preheader
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_36:                               # %for.cond68.preheader
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB1_39
# %bb.37:                               # %for.cond72.preheader.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(impmtx)
	slli.d	$s5, $s5, 2
	.p2align	4, , 16
.LBB1_38:                               # %for.cond72.preheader.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	bnez	$s4, .LBB1_38
.LBB1_39:                               # %for.end85
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB1_77
# %bb.40:                               # %for.cond90.preheader.lr.ph
	blt	$s2, $a0, .LBB1_77
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
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_42:                               # %for.cond90.for.inc302_crit_edge.us
                                        #   in Loop: Header=BB1_43 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s3, .LBB1_77
.LBB1_43:                               # %for.cond90.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_45 Depth 2
                                        #       Child Loop BB1_48 Depth 3
                                        #         Child Loop BB1_49 Depth 4
                                        #         Child Loop BB1_53 Depth 4
                                        #         Child Loop BB1_57 Depth 4
                                        #         Child Loop BB1_61 Depth 4
                                        #         Child Loop BB1_65 Depth 4
	slli.d	$a5, $a3, 3
	fldx.d	$fa1, $fp, $a5
	ldx.d	$a5, $a0, $a5
	move	$a6, $zero
	alsl.d	$a7, $a3, $s1, 3
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_44:                               # %for.inc299.us
                                        #   in Loop: Header=BB1_45 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB1_42
.LBB1_45:                               # %for.body93.us
                                        #   Parent Loop BB1_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_48 Depth 3
                                        #         Child Loop BB1_49 Depth 4
                                        #         Child Loop BB1_53 Depth 4
                                        #         Child Loop BB1_57 Depth 4
                                        #         Child Loop BB1_61 Depth 4
                                        #         Child Loop BB1_65 Depth 4
	slli.d	$t2, $a6, 3
	ldx.d	$t0, $a5, $t2
	beqz	$t0, .LBB1_44
# %bb.46:                               # %while.body.lr.ph.us
                                        #   in Loop: Header=BB1_45 Depth=2
	fldx.d	$fa2, $a1, $t2
	fmul.d	$fa2, $fa1, $fa2
	ld.d	$t1, $a7, 0
	ldx.d	$t2, $s0, $t2
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	nor	$t3, $t1, $zero
	nor	$t4, $t2, $zero
	b	.LBB1_48
	.p2align	4, , 16
.LBB1_47:                               # %while.end297.us
                                        #   in Loop: Header=BB1_48 Depth=3
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB1_44
.LBB1_48:                               # %while.body.us
                                        #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_45 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_49 Depth 4
                                        #         Child Loop BB1_53 Depth 4
                                        #         Child Loop BB1_57 Depth 4
                                        #         Child Loop BB1_61 Depth 4
                                        #         Child Loop BB1_65 Depth 4
	ld.w	$s4, $t0, 24
	addi.d	$t8, $zero, -1
	move	$t7, $t1
	.p2align	4, , 16
.LBB1_49:                               # %while.cond107.us
                                        #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_45 Depth=2
                                        #       Parent Loop BB1_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t5, $t7, 0
	beqz	$t5, .LBB1_52
# %bb.50:                               # %while.body111.us
                                        #   in Loop: Header=BB1_49 Depth=4
	addi.d	$t5, $t5, -45
	sltu	$t5, $zero, $t5
	add.w	$t8, $t8, $t5
	addi.d	$t7, $t7, 1
	bne	$t8, $s4, .LBB1_49
# %bb.51:                               #   in Loop: Header=BB1_48 Depth=3
	move	$t8, $s4
.LBB1_52:                               # %while.end.us
                                        #   in Loop: Header=BB1_48 Depth=3
	ld.w	$s5, $t0, 28
	add.w	$t5, $t7, $t3
	move	$t6, $t5
	beq	$s4, $s5, .LBB1_56
	.p2align	4, , 16
.LBB1_53:                               # %while.cond132.us
                                        #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_45 Depth=2
                                        #       Parent Loop BB1_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t6, $t7, 0
	beqz	$t6, .LBB1_55
# %bb.54:                               # %while.body136.us
                                        #   in Loop: Header=BB1_53 Depth=4
	addi.d	$t6, $t6, -45
	sltu	$t6, $zero, $t6
	add.w	$t8, $t8, $t6
	addi.d	$t7, $t7, 1
	bne	$t8, $s5, .LBB1_53
.LBB1_55:                               # %while.end149.us
                                        #   in Loop: Header=BB1_48 Depth=3
	add.w	$t6, $t7, $t3
.LBB1_56:                               # %if.end157.us
                                        #   in Loop: Header=BB1_48 Depth=3
	ld.w	$s6, $t0, 32
	addi.d	$s5, $zero, -1
	move	$s4, $t2
	.p2align	4, , 16
.LBB1_57:                               # %while.cond160.us
                                        #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_45 Depth=2
                                        #       Parent Loop BB1_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $s4, 0
	beqz	$t7, .LBB1_60
# %bb.58:                               # %while.body164.us
                                        #   in Loop: Header=BB1_57 Depth=4
	addi.d	$t7, $t7, -45
	sltu	$t7, $zero, $t7
	add.w	$s5, $s5, $t7
	addi.d	$s4, $s4, 1
	bne	$s5, $s6, .LBB1_57
# %bb.59:                               #   in Loop: Header=BB1_48 Depth=3
	move	$s5, $s6
.LBB1_60:                               # %while.end177.us
                                        #   in Loop: Header=BB1_48 Depth=3
	ld.w	$s7, $t0, 36
	add.w	$t7, $s4, $t4
	move	$t8, $t7
	beq	$s6, $s7, .LBB1_64
	.p2align	4, , 16
.LBB1_61:                               # %while.cond191.us
                                        #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_45 Depth=2
                                        #       Parent Loop BB1_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t8, $s4, 0
	beqz	$t8, .LBB1_63
# %bb.62:                               # %while.body195.us
                                        #   in Loop: Header=BB1_61 Depth=4
	addi.d	$t8, $t8, -45
	sltu	$t8, $zero, $t8
	add.w	$s5, $s5, $t8
	addi.d	$s4, $s4, 1
	bne	$s5, $s7, .LBB1_61
.LBB1_63:                               # %while.end208.us
                                        #   in Loop: Header=BB1_48 Depth=3
	add.w	$t8, $s4, $t4
.LBB1_64:                               # %if.end216.us
                                        #   in Loop: Header=BB1_48 Depth=3
	add.d	$s4, $t1, $t5
	add.d	$s5, $t2, $t7
	.p2align	4, , 16
.LBB1_65:                               # %while.cond229.us
                                        #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_45 Depth=2
                                        #       Parent Loop BB1_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s7, $s4, 0
	beqz	$s7, .LBB1_47
# %bb.66:                               # %land.rhs.us
                                        #   in Loop: Header=BB1_65 Depth=4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB1_47
# %bb.67:                               # %while.body234.us
                                        #   in Loop: Header=BB1_65 Depth=4
	beq	$s7, $a4, .LBB1_70
# %bb.68:                               # %while.body234.us
                                        #   in Loop: Header=BB1_65 Depth=4
	beq	$s6, $a4, .LBB1_70
# %bb.69:                               # %if.then241.us
                                        #   in Loop: Header=BB1_65 Depth=4
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
	b	.LBB1_74
	.p2align	4, , 16
.LBB1_70:                               # %if.else251.us
                                        #   in Loop: Header=BB1_65 Depth=4
	bne	$s7, $a4, .LBB1_72
# %bb.71:                               # %land.lhs.true266.us
                                        #   in Loop: Header=BB1_65 Depth=4
	addi.w	$t5, $t5, 1
	addi.d	$s4, $s4, 1
.LBB1_72:                               # %land.lhs.true255.us
                                        #   in Loop: Header=BB1_65 Depth=4
	bne	$s6, $a4, .LBB1_75
# %bb.73:                               # %if.then281.us
                                        #   in Loop: Header=BB1_65 Depth=4
	addi.w	$t7, $t7, 1
.LBB1_74:                               # %if.end289.us
                                        #   in Loop: Header=BB1_65 Depth=4
	addi.d	$s5, $s5, 1
.LBB1_75:                               # %if.end289.us
                                        #   in Loop: Header=BB1_65 Depth=4
	blt	$t6, $t5, .LBB1_47
# %bb.76:                               # %if.end289.us
                                        #   in Loop: Header=BB1_65 Depth=4
	bge	$t8, $t7, .LBB1_65
	b	.LBB1_47
.LBB1_77:                               # %for.end304
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
.Lfunc_end1:
	.size	imp_match_init_strictH, .Lfunc_end1-imp_match_init_strictH
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function H__align
.LCPI2_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI2_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI2_3:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI2_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI2_7:
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
.LCPI2_2:
	.word	0x461c4000                      # float 1.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_5:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI2_6:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	H__align
	.p2align	5
	.type	H__align,@function
H__align:                               # @H__align
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 464                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 456                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 448                  # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	pcalau12i	$s4, %pc_hi20(H__align.orlgth1)
	ld.w	$s6, $s4, %pc_lo12(H__align.orlgth1)
	ld.w	$t0, $t0, 0
	st.d	$t0, $sp, 240                   # 8-byte Folded Spill
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a5
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 440                   # 8-byte Folded Spill
	move	$s2, $a2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mseq1)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mseq2)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bnez	$s6, .LBB2_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(H__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, %pc_lo12(H__align.orlgth1)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.mseq2)
.LBB2_2:                                # %if.end
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(H__align.orlgth2)
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.w	$s7, $a1, %pc_lo12(H__align.orlgth2)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	addi.w	$s5, $a0, 0
	pcalau12i	$a0, %pc_hi20(H__align.w1)
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.w2)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.initverticalw)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.lastverticalw)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(H__align.m)
	pcalau12i	$s3, %pc_hi20(H__align.mseq)
	pcalau12i	$a0, %pc_hi20(H__align.digf1)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.digf2)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.diaf1)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.diaf2)
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gappat1)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gappat2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gapz1)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gapz2)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gapf1)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gapf2)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.ogcp1g)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.ogcp2g)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.fgcp1g)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.fgcp2g)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.cpmx1)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.cpmx2)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.floatwork)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.intwork)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	blt	$s6, $fp, .LBB2_4
# %bb.3:                                # %if.end
	bge	$s7, $s5, .LBB2_8
.LBB2_4:                                # %if.then12
	ori	$a0, $zero, 1
	pcalau12i	$s5, %pc_hi20(H__align.match)
	pcalau12i	$a1, %pc_hi20(H__align.ogcp1)
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(H__align.ogcp2)
	pcalau12i	$s0, %pc_hi20(H__align.fgcp1)
	pcalau12i	$fp, %pc_hi20(H__align.fgcp2)
	blt	$s6, $a0, .LBB2_7
# %bb.5:                                # %if.then12
	blt	$s7, $a0, .LBB2_7
# %bb.6:                                # %if.then17
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(H__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(H__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(H__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat2)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(H__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(H__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(H__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, %pc_lo12(H__align.orlgth1)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(H__align.orlgth2)
.LBB2_7:                                # %if.end18
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a0
	st.d	$s4, $sp, 208                   # 8-byte Folded Spill
	st.d	$fp, $sp, 200                   # 8-byte Folded Spill
	addi.w	$fp, $s6, 100
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	st.d	$s0, $sp, 192                   # 8-byte Folded Spill
	addi.w	$s0, $s7, 100
	move	$s4, $s8
	move	$s8, $s3
	addi.w	$s3, $s7, 102
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.w1)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.w2)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(H__align.match)
	addi.w	$s5, $s6, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.initverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.lastverticalw)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(H__align.m)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(H__align.mp)
	st.d	$a0, $a1, %pc_lo12(H__align.mp)
	add.w	$a1, $s0, $fp
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(H__align.mseq)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.digf1)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.digf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.diaf1)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.diaf2)
	ori	$a1, $zero, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gappat1)
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gappat2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapz1)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapz2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapf1)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapf2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp1)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(H__align.ogcp2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp1)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp2)
	ld.d	$s4, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp1g)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp2g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp1g)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp2g)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.cpmx2)
	slt	$a0, $s0, $fp
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	addi.w	$s3, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s3
	move	$s3, $s8
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.intwork)
	st.w	$s6, $s4, %pc_lo12(H__align.orlgth1)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(H__align.orlgth2)
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
.LBB2_8:                                # %if.end114
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_11
# %bb.9:                                # %for.body.lr.ph
	ld.d	$a1, $s3, %pc_lo12(H__align.mseq)
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(H__align.mseq1)
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $a4, 0
	stx.b	$zero, $a5, $fp
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB2_10
.LBB2_11:                               # %for.cond124.preheader
	blt	$s0, $a0, .LBB2_14
# %bb.12:                               # %for.body127.lr.ph
	ld.d	$a1, $s3, %pc_lo12(H__align.mseq)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.mseq2)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_13:                               # %for.body127
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s5
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$s0, $s0, -1
	addi.d	$a0, $a0, 8
	bnez	$s0, .LBB2_13
.LBB2_14:                               # %for.end139
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s0, $a0, %got_pc_lo12(commonAlloc2)
	ld.d	$s3, $sp, 568
	ld.w	$a1, $fp, 0
	ld.w	$a0, $s0, 0
	st.d	$s1, $sp, 248                   # 8-byte Folded Spill
	blt	$a1, $s6, .LBB2_17
# %bb.15:                               # %for.end139
	blt	$a0, $s7, .LBB2_17
# %bb.16:                               # %lor.lhs.false142.if.end167_crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB2_21
.LBB2_17:                               # %if.then145
	beqz	$a1, .LBB2_20
# %bb.18:                               # %if.then145
	beqz	$a0, .LBB2_20
# %bb.19:                               # %if.then150
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, %pc_lo12(H__align.orlgth1)
	ld.w	$a1, $fp, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(H__align.orlgth2)
	ld.w	$a0, $s0, 0
.LBB2_20:                               # %if.end151
	slt	$a2, $a1, $s6
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s6, $a2
	or	$s4, $a2, $a1
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s5, $a1, $a0
	addi.w	$a0, $s4, 10
	addi.w	$a1, $s5, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s4, $fp, 0
	st.w	$s5, $s0, 0
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
.LBB2_21:                               # %if.end167
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.cpmx1)
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a2
	pcalau12i	$a2, %pc_hi20(H__align.ijp)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(H__align.ijp)
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s1
	move	$a2, $s2
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s0
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(H__align.cpmx2)
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s7, $sp, 440                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s5
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1g)
	bnez	$s3, .LBB2_23
# %bb.22:                               # %if.else
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_getGapPattern)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat2)
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_getGapPattern)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	b	.LBB2_24
.LBB2_23:                               # %if.then169
	ld.d	$s4, $sp, 592
	ld.d	$s7, $sp, 584
	ld.d	$s8, $sp, 576
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s0
	move	$a5, $s3
	move	$a6, $s7
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	move	$a1, $fp
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	move	$a4, $s5
	move	$a5, $s8
	move	$a6, $s7
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s0
	move	$a5, $s3
	move	$a6, $s7
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	move	$a1, $fp
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	move	$a4, $s5
	move	$a5, $s3
	move	$a6, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s0
	move	$a5, $s3
	move	$a6, $s7
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	move	$a1, $fp
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	move	$a4, $s5
	move	$a5, $s8
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	move	$a6, $s4
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s0
	move	$a5, $s3
	move	$a6, $s7
	ld.d	$s7, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	move	$a1, $fp
	move	$a2, $s8
	move	$a3, $s7
	move	$a4, $s5
	move	$a5, $s3
	move	$a6, $s4
	move	$s4, $s8
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
.LBB2_24:                               # %if.end170
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf1)
	ffint.s.w	$fa0, $fs0
	xvst	$xr0, $sp, 368                  # 32-byte Folded Spill
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf2)
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz1)
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz2)
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $s7
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(H__align.w1)
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w2)
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(H__align.initverticalw)
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(H__align.cpmx2)
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(H__align.cpmx1)
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(H__align.floatwork)
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(H__align.intwork)
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s2
	move	$a1, $s6
	move	$a2, $s3
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $s7
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	slli.d	$a1, $s8, 32
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	bnez	$a0, .LBB2_26
# %bb.25:                               # %if.end176.critedge
	ori	$a7, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $zero
	move	$a4, $s5
	move	$a5, $s7
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	xvld	$xr10, $sp, 368                 # 32-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	b	.LBB2_47
.LBB2_26:                               # %if.then172
	blt	$s0, $fp, .LBB2_29
# %bb.27:                               # %for.body.lr.ph.i
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	move	$a2, $s2
	.p2align	4, , 16
.LBB2_28:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB2_28
.LBB2_29:                               # %imp_match_out_vead_tateH.exit
	move	$s0, $s2
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s1
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$s2, $sp, 400                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $s7
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB2_31
# %bb.30:                               # %if.end176.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	xvld	$xr10, $sp, 368                 # 32-byte Folded Reload
	move	$s2, $s0
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	beq	$a0, $fp, .LBB2_48
	b	.LBB2_58
.LBB2_31:                               # %iter.check
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $a0, 0
	bstrpick.d	$a0, $s8, 31, 0
	ori	$a2, $zero, 4
	xvld	$xr10, $sp, 368                 # 32-byte Folded Reload
	bgeu	$a0, $a2, .LBB2_33
# %bb.32:
	move	$a2, $a1
	move	$a3, $s8
	move	$a4, $s1
	move	$s2, $s0
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	b	.LBB2_46
.LBB2_33:                               # %vector.memcheck
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 3
	alsl.d	$a2, $s8, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a3, $a1, $a2
	move	$s2, $s0
	bgeu	$s1, $a3, .LBB2_36
# %bb.34:                               # %vector.memcheck
	add.d	$a2, $s1, $a2
	bgeu	$a1, $a2, .LBB2_36
# %bb.35:
	move	$a2, $a1
	move	$a3, $s8
	move	$a4, $s1
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	b	.LBB2_46
.LBB2_36:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB2_41
# %bb.37:
	move	$a5, $zero
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
.LBB2_38:                               # %vec.epilog.ph
	bstrpick.d	$a4, $s8, 31, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a2, $a4, $a1, 4
	andi	$a3, $s8, 3
	alsl.d	$a4, $a4, $s1, 4
	alsl.d	$a7, $a5, $s1, 2
	alsl.d	$a1, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB2_39:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a7, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB2_39
# %bb.40:                               # %vec.epilog.middle.block
	bne	$a0, $a6, .LBB2_46
	b	.LBB2_47
.LBB2_41:                               # %vector.ph
	bstrpick.d	$a2, $s8, 31, 4
	slli.d	$a5, $a2, 4
	addi.d	$a2, $s1, 32
	addi.d	$a3, $a1, 32
	move	$a4, $a5
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_42:                               # %vector.body
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
	bnez	$a4, .LBB2_42
# %bb.43:                               # %middle.block
	beq	$a0, $a5, .LBB2_47
# %bb.44:                               # %vec.epilog.iter.check
	andi	$a2, $s8, 12
	bnez	$a2, .LBB2_38
# %bb.45:
	alsl.d	$a2, $a5, $a1, 2
	sub.d	$a3, $s8, $a5
	alsl.d	$a4, $a5, $s1, 2
	.p2align	4, , 16
.LBB2_46:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a3, .LBB2_46
.LBB2_47:                               # %if.end176
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB2_51
.LBB2_48:                               # %for.cond180.preheader
	ori	$a0, $zero, 1
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	bge	$t7, $a0, .LBB2_75
.LBB2_49:                               # %for.cond229.preheader
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	bgtz	$a0, .LBB2_91
# %bb.50:                               # %if.end312.thread
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(H__align.m)
	st.w	$zero, $t1, 0
	b	.LBB2_66
.LBB2_51:                               # %for.cond281.preheader
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_58
# %bb.52:                               # %for.body285.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s8, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_56
# %bb.53:                               # %vector.ph874
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI2_1)
	addi.d	$a5, $s1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_54:                               # %vector.body877
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
	xvpickve2gr.d	$a7, $xr3, 1
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr3, 0
	movgr2fr.d	$fa6, $a7
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr6, $xr5, 1
	xvpickve2gr.d	$a7, $xr3, 2
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr6, $xr5, 2
	xvpickve2gr.d	$a7, $xr3, 3
	movgr2fr.d	$fa3, $a7
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 3
	xvpickve2gr.d	$a7, $xr4, 0
	movgr2fr.d	$fa3, $a7
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 4
	xvpickve2gr.d	$a7, $xr4, 1
	movgr2fr.d	$fa3, $a7
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 5
	xvpickve2gr.d	$a7, $xr4, 2
	movgr2fr.d	$fa3, $a7
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 6
	xvpickve2gr.d	$a7, $xr4, 3
	movgr2fr.d	$fa3, $a7
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 7
	xvst	$xr6, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_54
# %bb.55:                               # %middle.block882
	beq	$a2, $a4, .LBB2_58
.LBB2_56:                               # %for.body285.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s1, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_57:                               # %for.body285
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
	bnez	$a1, .LBB2_57
.LBB2_58:                               # %for.cond296.preheader
	ori	$a1, $zero, 1
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	blt	$t7, $a1, .LBB2_65
# %bb.59:                               # %for.body300.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 8
	bltu	$a3, $a4, .LBB2_63
# %bb.60:                               # %vector.ph887
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a1, $a3
	bstrins.d	$a1, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI2_1)
	addi.d	$a5, $s2, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_61:                               # %vector.body892
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
	xvpickve2gr.d	$a7, $xr3, 1
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr3, 0
	movgr2fr.d	$fa6, $a7
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr6, $xr5, 1
	xvpickve2gr.d	$a7, $xr3, 2
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr6, $xr5, 2
	xvpickve2gr.d	$a7, $xr3, 3
	movgr2fr.d	$fa3, $a7
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 3
	xvpickve2gr.d	$a7, $xr4, 0
	movgr2fr.d	$fa3, $a7
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 4
	xvpickve2gr.d	$a7, $xr4, 1
	movgr2fr.d	$fa3, $a7
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 5
	xvpickve2gr.d	$a7, $xr4, 2
	movgr2fr.d	$fa3, $a7
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 6
	xvpickve2gr.d	$a7, $xr4, 3
	movgr2fr.d	$fa3, $a7
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 7
	xvst	$xr6, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_61
# %bb.62:                               # %middle.block899
	beq	$a3, $a4, .LBB2_65
.LBB2_63:                               # %for.body300.preheader
	mul.d	$a3, $a0, $a1
	alsl.d	$a4, $a1, $s2, 2
	sub.d	$a1, $a2, $a1
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_64:                               # %for.body300
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
	bnez	$a1, .LBB2_64
.LBB2_65:                               # %if.end312
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(H__align.m)
	ori	$a4, $zero, 1
	st.w	$zero, $t1, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	bge	$a0, $a4, .LBB2_68
.LBB2_66:                               # %for.end330
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_115
# %bb.67:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	b	.LBB2_116
.LBB2_68:                               # %iter.check906
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	addi.d	$a1, $s8, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a3, $zero, 4
	bltu	$a2, $a3, .LBB2_112
# %bb.69:                               # %vector.memcheck902
	sub.d	$a3, $t1, $s1
	addi.d	$a3, $a3, 4
	ori	$a5, $zero, 64
	bltu	$a3, $a5, .LBB2_112
# %bb.70:                               # %vector.main.loop.iter.check908
	ori	$a4, $zero, 16
	lu12i.w	$a3, 287172
	bgeu	$a2, $a4, .LBB2_107
# %bb.71:
	move	$a5, $zero
.LBB2_72:                               # %vec.epilog.ph923
	move	$a6, $a2
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a2
	bstrins.d	$a4, $a7, 1, 0
	vreplvei.w	$vr0, $vr10, 0
	slli.d	$a7, $a5, 2
	addi.d	$t0, $a0, 4
	sub.d	$a5, $a5, $a6
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a3
	.p2align	4, , 16
.LBB2_73:                               # %vec.epilog.vector.body931
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $s1, $a7
	vstx	$vr1, $t0, $a7
	vfadd.s	$vr3, $vr3, $vr1
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a3, $t1, $a7
	vst	$vr3, $a3, 4
	addi.d	$a5, $a5, 4
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB2_73
# %bb.74:                               # %vec.epilog.middle.block936
	bne	$a2, $a6, .LBB2_112
	b	.LBB2_114
.LBB2_75:                               # %for.body184.lr.ph
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.diaf1)
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(H__align.gapf2)
	fcvt.d.s	$fa0, $ft2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(H__align.gappat1)
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(H__align.gappat2)
	ld.d	$a5, $s0, %pc_lo12(H__align.diaf2)
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.w	$fa1, $zero
	vldi	$vr2, -912
	ori	$a7, $zero, 1
	b	.LBB2_78
	.p2align	4, , 16
.LBB2_76:                               # %countnocountx.exit
                                        #   in Loop: Header=BB2_78 Depth=1
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fcvt.s.d	$fa4, $fa4
	fneg.s	$fa5, $fa7
	fmadd.s	$fa4, $fa5, $ft2, $fa4
.LBB2_77:                               # %if.end222
                                        #   in Loop: Header=BB2_78 Depth=1
	alsl.d	$t0, $a0, $s2, 2
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $t0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a7, $a7, 1
	beq	$a0, $a6, .LBB2_49
.LBB2_78:                               # %for.body184
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_82 Depth 2
                                        #     Child Loop BB2_87 Depth 2
                                        #       Child Loop BB2_89 Depth 3
	slli.d	$t0, $a0, 2
	fldx.s	$fa3, $s2, $t0
	fadd.s	$fa3, $fa3, $fa1
	fstx.s	$fa3, $s2, $t0
	fldx.s	$fa4, $a1, $t0
	fld.s	$fa5, $a2, 0
	slli.d	$t0, $a0, 3
	ldx.d	$t2, $a3, $t0
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fld.s	$fa6, $t2, 4
	fsub.d	$fa5, $fa2, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fcmp.ceq.s	$fcc0, $fa6, $fa1
	fcvt.s.d	$fa4, $fa4
	bcnez	$fcc0, .LBB2_77
# %bb.79:                               # %if.then202
                                        #   in Loop: Header=BB2_78 Depth=1
	ld.w	$t0, $t2, 8
	fmov.s	$fa7, $fa1
	beqz	$t0, .LBB2_76
# %bb.80:                               # %for.body.i418.preheader
                                        #   in Loop: Header=BB2_78 Depth=1
	ld.d	$t1, $a4, 0
	fld.s	$ft0, $a5, 0
	addi.d	$t2, $t2, 16
	move	$t3, $t2
	move	$t4, $t0
	fmov.s	$fa7, $fa1
	b	.LBB2_82
	.p2align	4, , 16
.LBB2_81:                               # %for.inc.i
                                        #   in Loop: Header=BB2_82 Depth=2
	ld.w	$t4, $t3, 0
	addi.d	$t3, $t3, 8
	beqz	$t4, .LBB2_84
.LBB2_82:                               # %for.body.i418
                                        #   Parent Loop BB2_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t4, 31, 0
	bne	$a0, $t4, .LBB2_81
# %bb.83:                               # %if.then.i
                                        #   in Loop: Header=BB2_82 Depth=2
	fld.s	$fa7, $t3, -4
	fmul.s	$fa7, $ft0, $fa7
	b	.LBB2_81
	.p2align	4, , 16
.LBB2_84:                               # %for.cond4.preheader.i
                                        #   in Loop: Header=BB2_78 Depth=1
	ld.w	$t4, $t1, 8
	beqz	$t4, .LBB2_76
# %bb.85:                               #   in Loop: Header=BB2_78 Depth=1
	addi.d	$t5, $t1, 8
	b	.LBB2_87
	.p2align	4, , 16
.LBB2_86:                               # %for.cond9.for.cond4.loopexit_crit_edge.i
                                        #   in Loop: Header=BB2_87 Depth=2
	ld.w	$t4, $t1, 8
	addi.d	$t5, $t1, 8
	beqz	$t4, .LBB2_76
.LBB2_87:                               # %for.cond9.preheader.i
                                        #   Parent Loop BB2_78 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_89 Depth 3
	move	$t3, $t1
	move	$t1, $t5
	add.w	$t4, $t4, $a7
	move	$t5, $t2
	move	$t6, $t0
	b	.LBB2_89
	.p2align	4, , 16
.LBB2_88:                               # %for.inc21.i
                                        #   in Loop: Header=BB2_89 Depth=3
	ld.w	$t6, $t5, 0
	addi.d	$t5, $t5, 8
	beqz	$t6, .LBB2_86
.LBB2_89:                               # %for.body12.i
                                        #   Parent Loop BB2_78 Depth=1
                                        #     Parent Loop BB2_87 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$t4, $t6, .LBB2_88
# %bb.90:                               # %if.then16.i
                                        #   in Loop: Header=BB2_89 Depth=3
	fld.s	$ft0, $t3, 12
	fld.s	$ft1, $t5, -4
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	b	.LBB2_88
.LBB2_91:                               # %for.body233.lr.ph
	ld.d	$a0, $s0, %pc_lo12(H__align.diaf2)
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.gapf1)
	fcvt.d.s	$fa0, $ft2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(H__align.gappat2)
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(H__align.gappat1)
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(H__align.diaf1)
	addi.d	$a5, $s8, 1
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	movgr2fr.w	$fa1, $zero
	vldi	$vr2, -912
	ori	$a7, $zero, 1
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_92:                               # %countnocountx.exit457
                                        #   in Loop: Header=BB2_94 Depth=1
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fcvt.s.d	$fa4, $fa4
	fneg.s	$fa5, $fa7
	fmadd.s	$fa4, $fa5, $ft2, $fa4
.LBB2_93:                               # %if.end273
                                        #   in Loop: Header=BB2_94 Depth=1
	alsl.d	$t0, $a6, $s1, 2
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $t0, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 1
	beq	$a6, $a5, .LBB2_65
.LBB2_94:                               # %for.body233
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_98 Depth 2
                                        #     Child Loop BB2_103 Depth 2
                                        #       Child Loop BB2_105 Depth 3
	slli.d	$t0, $a6, 2
	fldx.s	$fa3, $s1, $t0
	fadd.s	$fa3, $fa3, $fa1
	fstx.s	$fa3, $s1, $t0
	fldx.s	$fa4, $a0, $t0
	fld.s	$fa5, $a1, 0
	slli.d	$t0, $a6, 3
	ldx.d	$t2, $a2, $t0
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fld.s	$fa6, $t2, 4
	fsub.d	$fa5, $fa2, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fcmp.ceq.s	$fcc0, $fa6, $fa1
	fcvt.s.d	$fa4, $fa4
	bcnez	$fcc0, .LBB2_93
# %bb.95:                               # %if.then252
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.w	$t0, $t2, 8
	fmov.s	$fa7, $fa1
	beqz	$t0, .LBB2_92
# %bb.96:                               # %for.body.i423.preheader
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$t1, $a3, 0
	fld.s	$ft0, $a4, 0
	addi.d	$t2, $t2, 16
	move	$t3, $t2
	move	$t4, $t0
	fmov.s	$fa7, $fa1
	b	.LBB2_98
	.p2align	4, , 16
.LBB2_97:                               # %for.inc.i427
                                        #   in Loop: Header=BB2_98 Depth=2
	ld.w	$t4, $t3, 0
	addi.d	$t3, $t3, 8
	beqz	$t4, .LBB2_100
.LBB2_98:                               # %for.body.i423
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t4, 31, 0
	bne	$a6, $t4, .LBB2_97
# %bb.99:                               # %if.then.i454
                                        #   in Loop: Header=BB2_98 Depth=2
	fld.s	$fa7, $t3, -4
	fmul.s	$fa7, $ft0, $fa7
	b	.LBB2_97
	.p2align	4, , 16
.LBB2_100:                              # %for.cond4.preheader.i431
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.w	$t4, $t1, 8
	beqz	$t4, .LBB2_92
# %bb.101:                              #   in Loop: Header=BB2_94 Depth=1
	addi.d	$t5, $t1, 8
	b	.LBB2_103
	.p2align	4, , 16
.LBB2_102:                              # %for.cond9.for.cond4.loopexit_crit_edge.i448
                                        #   in Loop: Header=BB2_103 Depth=2
	ld.w	$t4, $t1, 8
	addi.d	$t5, $t1, 8
	beqz	$t4, .LBB2_92
.LBB2_103:                              # %for.cond9.preheader.i434
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_105 Depth 3
	move	$t3, $t1
	move	$t1, $t5
	add.w	$t4, $t4, $a7
	move	$t5, $t2
	move	$t6, $t0
	b	.LBB2_105
	.p2align	4, , 16
.LBB2_104:                              # %for.inc21.i444
                                        #   in Loop: Header=BB2_105 Depth=3
	ld.w	$t6, $t5, 0
	addi.d	$t5, $t5, 8
	beqz	$t6, .LBB2_102
.LBB2_105:                              # %for.body12.i440
                                        #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$t4, $t6, .LBB2_104
# %bb.106:                              # %if.then16.i452
                                        #   in Loop: Header=BB2_105 Depth=3
	fld.s	$ft0, $t3, 12
	fld.s	$ft1, $t5, -4
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	b	.LBB2_104
.LBB2_107:                              # %vector.ph909
	move	$a4, $zero
	move	$a5, $a2
	bstrins.d	$a5, $zero, 3, 0
	xvreplve0.w	$xr0, $xr10
	addi.d	$a6, $a0, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a3
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_108:                              # %vector.body914
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $s1, $a4
	xvldx	$xr3, $s1, $a4
	xvld	$xr4, $t0, 32
	add.d	$t0, $a6, $a4
	xvst	$xr1, $t0, -32
	xvstx	$xr1, $a6, $a4
	xvfadd.s	$xr3, $xr3, $xr1
	xvfadd.s	$xr4, $xr4, $xr1
	xvfmadd.s	$xr3, $xr0, $xr2, $xr3
	xvfmadd.s	$xr4, $xr0, $xr2, $xr4
	add.d	$t0, $t1, $a4
	xvst	$xr3, $t0, 4
	xvst	$xr4, $t0, 36
	addi.d	$a7, $a7, -16
	addi.d	$a4, $a4, 64
	bnez	$a7, .LBB2_108
# %bb.109:                              # %middle.block919
	beq	$a2, $a5, .LBB2_114
# %bb.110:                              # %vec.epilog.iter.check924
	andi	$a4, $a2, 12
	bnez	$a4, .LBB2_72
# %bb.111:
	addi.d	$a4, $a5, 1
.LBB2_112:                              # %for.body318.preheader
	addi.d	$a2, $s1, -4
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	fld.s	$fa0, $a3, %pc_lo12(.LCPI2_2)
	slli.d	$a3, $a4, 2
	sub.d	$a1, $a1, $a4
	movgr2fr.w	$fa1, $zero
	.p2align	4, , 16
.LBB2_113:                              # %for.body318
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa2, $a2, $a3
	stx.w	$zero, $a0, $a3
	fadd.s	$fa2, $fa2, $fa1
	fmadd.s	$fa2, $ft2, $fa0, $fa2
	fstx.s	$fa2, $t1, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB2_113
.LBB2_114:
	move	$a0, $zero
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
.LBB2_115:                              # %if.else335
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $a4, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $s1, $a1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a0, $zero
.LBB2_116:                              # %if.end340
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a5, $a2, %pc_lo12(H__align.lastverticalw)
	sltu	$a2, $zero, $a1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	add.w	$a3, $a2, $a3
	ori	$a2, $zero, 2
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	fst.s	$fa0, $a5, 0
	st.d	$a3, $sp, 328                   # 8-byte Folded Spill
	blt	$a3, $a2, .LBB2_175
# %bb.117:                              # %for.body349.lr.ph
	st.d	$t1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ijp)
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.gappat2)
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$s0, $s0, %pc_lo12(H__align.diaf2)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf1)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	fcvt.d.s	$fs1, $ft2
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(H__align.gapf2)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $a4, $a0
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	addi.d	$a0, $s8, 1
	bstrpick.d	$s2, $a0, 31, 0
	addi.w	$a0, $s8, -1
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 2
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 32, 4
	slli.d	$a2, $a0, 4
	slli.d	$a0, $a0, 6
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	sub.d	$a0, $s8, $a2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	andi	$a0, $a1, 12
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 32, 2
	slli.d	$a1, $a0, 2
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	sub.d	$a0, $s8, $a1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	movgr2fr.w	$fs2, $zero
	ori	$s3, $zero, 1
	fmov.s	$fs0, $fs2
	b	.LBB2_119
	.p2align	4, , 16
.LBB2_118:                              # %for.end568
                                        #   in Loop: Header=BB2_119 Depth=1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	fldx.s	$fa0, $a2, $a0
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fstx.s	$fa0, $a0, $a1
	move	$s1, $a2
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB2_176
.LBB2_119:                              # %for.body349
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_168 Depth 2
                                        #     Child Loop BB2_172 Depth 2
                                        #     Child Loop BB2_124 Depth 2
                                        #     Child Loop BB2_128 Depth 2
                                        #       Child Loop BB2_134 Depth 3
                                        #       Child Loop BB2_145 Depth 3
                                        #         Child Loop BB2_147 Depth 4
                                        #       Child Loop BB2_150 Depth 3
                                        #       Child Loop BB2_155 Depth 3
                                        #         Child Loop BB2_157 Depth 4
	addi.d	$s8, $s3, -1
	slli.d	$a0, $s8, 2
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	fst.s	$fa0, $s1, 0
	move	$a0, $s5
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a3, $s3, 3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_125
# %bb.120:                              # %iter.check949
                                        #   in Loop: Header=BB2_119 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a2, $a0, $a3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB2_123
# %bb.121:                              # %vector.memcheck940
                                        #   in Loop: Header=BB2_119 Depth=1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	bgeu	$s5, $a0, .LBB2_165
# %bb.122:                              # %vector.memcheck940
                                        #   in Loop: Header=BB2_119 Depth=1
	add.d	$a0, $s5, $a1
	bgeu	$a2, $a0, .LBB2_165
.LBB2_123:                              #   in Loop: Header=BB2_119 Depth=1
	move	$a0, $a2
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	move	$a1, $s5
	.p2align	4, , 16
.LBB2_124:                              # %while.body.i461
                                        #   Parent Loop BB2_119 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a1, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	move	$a1, $a4
	bnez	$a2, .LBB2_124
.LBB2_125:                              # %if.end356
                                        #   in Loop: Header=BB2_119 Depth=1
	slli.d	$a1, $s3, 2
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	fldx.s	$fa0, $a0, $a1
	st.d	$s5, $sp, 424                   # 8-byte Folded Spill
	fst.s	$fa0, $s5, 0
	xvld	$xr11, $sp, 368                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	vldi	$vr12, -912
	bnez	$a0, .LBB2_118
# %bb.126:                              # %for.body378.lr.ph
                                        #   in Loop: Header=BB2_119 Depth=1
	ld.d	$t4, $sp, 432                   # 8-byte Folded Reload
	fld.s	$fa0, $t4, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	fld.s	$fa1, $a0, %pc_lo12(.LCPI2_2)
	move	$a1, $zero
	fadd.s	$fa0, $fa0, $fs2
	fmadd.s	$fa0, $ft3, $fa1, $fa0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ldx.d	$s5, $a0, $a3
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ldx.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a4, $s3, $a0, 2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a5, $s3, $a0, 2
	addi.d	$a6, $s5, 8
	addi.d	$a7, $s5, 16
	ori	$t0, $zero, 1
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 256                   # 8-byte Folded Reload
	b	.LBB2_128
	.p2align	4, , 16
.LBB2_127:                              # %if.end558
                                        #   in Loop: Header=BB2_128 Depth=2
	addi.d	$t1, $t1, 4
	fcmp.cult.s	$fcc0, $fa1, $fa0
	addi.d	$a0, $t0, -1
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$a2, $fcc0
	fld.s	$fa1, $t1, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a1, $a1, $a0
	fadd.s	$fa1, $fs0, $fa1
	fst.s	$fa1, $t1, 0
	addi.d	$t0, $t0, 1
	addi.d	$t4, $t4, 4
	beq	$t0, $s2, .LBB2_118
.LBB2_128:                              # %for.body378
                                        #   Parent Loop BB2_119 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_134 Depth 3
                                        #       Child Loop BB2_145 Depth 3
                                        #         Child Loop BB2_147 Depth 4
                                        #       Child Loop BB2_150 Depth 3
                                        #       Child Loop BB2_155 Depth 3
                                        #         Child Loop BB2_157 Depth 4
	slli.d	$a0, $t0, 3
	ldx.d	$t5, $fp, $a0
	fld.s	$fa4, $t5, 4
	fld.s	$fa1, $t4, 0
	fcmp.ceq.s	$fcc0, $fa4, $fs2
	fmov.s	$fa5, $fa1
	bcnez	$fcc0, .LBB2_130
# %bb.129:                              # %if.then384
                                        #   in Loop: Header=BB2_128 Depth=2
	fld.s	$fa2, $a4, 0
	fmul.s	$fa2, $fa4, $fa2
	fmul.s	$fa2, $fa2, $ft3
	fadd.s	$fa5, $fa1, $fa2
.LBB2_130:                              # %if.end394
                                        #   in Loop: Header=BB2_128 Depth=2
	addi.d	$a3, $a3, 4
	slli.d	$t6, $t0, 2
	fldx.s	$fa2, $s0, $t6
	fld.s	$fa6, $a5, 0
	fld.s	$fa3, $s5, 4
	st.w	$zero, $a3, 0
	fcvt.d.s	$ft0, $fa2
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa7, $ft4, $fa6
	fmul.d	$fa6, $fa7, $ft0
	fmul.d	$fa6, $fa6, $fs1
	fcvt.s.d	$fa6, $fa6
	bcnez	$fcc0, .LBB2_138
# %bb.131:                              # %if.then460
                                        #   in Loop: Header=BB2_128 Depth=2
	ld.w	$s6, $t5, 8
	fmov.s	$ft0, $fs2
	beqz	$s6, .LBB2_137
# %bb.132:                              # %for.body.i473.preheader
                                        #   in Loop: Header=BB2_128 Depth=2
	fld.s	$ft1, $a4, 0
	nor	$a0, $a1, $zero
	addi.d	$s7, $t5, 16
	add.w	$s1, $t0, $a0
	move	$a0, $s7
	move	$a2, $s6
	fmov.s	$ft0, $fs2
	b	.LBB2_134
	.p2align	4, , 16
.LBB2_133:                              # %for.inc.i477
                                        #   in Loop: Header=BB2_134 Depth=3
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 8
	beqz	$a2, .LBB2_136
.LBB2_134:                              # %for.body.i473
                                        #   Parent Loop BB2_119 Depth=1
                                        #     Parent Loop BB2_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$a2, $s1, .LBB2_133
# %bb.135:                              # %if.then.i504
                                        #   in Loop: Header=BB2_134 Depth=3
	fld.s	$ft0, $a0, -4
	fmul.s	$ft0, $ft1, $ft0
	b	.LBB2_133
	.p2align	4, , 16
.LBB2_136:                              # %for.cond4.preheader.i481
                                        #   in Loop: Header=BB2_128 Depth=2
	ld.w	$a0, $a6, 0
	move	$t8, $a6
	move	$a2, $s5
	bnez	$a0, .LBB2_145
.LBB2_137:                              # %countnocountx.exit507
                                        #   in Loop: Header=BB2_128 Depth=2
	fcvt.d.s	$ft1, $fa4
	fmul.d	$fa7, $fa7, $ft1
	fcvt.d.s	$fa6, $fa6
	fmadd.d	$fa6, $fa7, $fs1, $fa6
	fcvt.s.d	$fa6, $fa6
	fneg.s	$fa7, $ft0
	fmadd.s	$fa6, $fa7, $ft3, $fa6
.LBB2_138:                              # %if.end473
                                        #   in Loop: Header=BB2_128 Depth=2
	fmul.s	$fa7, $fa3, $fa2
	fmul.s	$fa7, $fa7, $ft3
	fadd.s	$fa7, $fa5, $fa7
	fcmp.cune.s	$fcc0, $fa3, $fs2
	fsel	$fa5, $fa5, $fa7, $fcc0
	fmul.s	$fa4, $fa4, $fa3
	fmul.s	$fa4, $fa4, $ft3
	fadd.s	$fs0, $fa4, $fa5
	fadd.s	$fa4, $fa6, $fa0
	fcmp.cule.s	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB2_140
# %bb.139:                              # %if.then477
                                        #   in Loop: Header=BB2_128 Depth=2
	sub.d	$a0, $a1, $t0
	st.w	$a0, $a3, 0
	fmov.s	$fs0, $fa4
.LBB2_140:                              # %if.end480
                                        #   in Loop: Header=BB2_128 Depth=2
	fld.s	$fa4, $a4, 0
	fldx.s	$fa5, $s4, $t6
	addi.d	$t3, $t3, 4
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa5, $ft4, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fs1
	fcmp.ceq.s	$fcc0, $fa3, $fs2
	fcvt.s.d	$fa4, $fa4
	bcnez	$fcc0, .LBB2_161
# %bb.141:                              # %if.then507
                                        #   in Loop: Header=BB2_128 Depth=2
	ld.w	$a0, $t3, 0
	slli.d	$a2, $a0, 3
	ld.d	$t6, $sp, 440                   # 8-byte Folded Reload
	ldx.d	$a2, $t6, $a2
	fcvt.d.s	$fa3, $fa3
	alsl.d	$a2, $t0, $a2, 2
	ld.w	$a2, $a2, -4
	fmul.d	$fa3, $fa5, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa3, $fs1, $fa4
	fcvt.s.d	$fa4, $fa3
	bnez	$a2, .LBB2_161
# %bb.142:                              # %if.then529
                                        #   in Loop: Header=BB2_128 Depth=2
	ld.w	$t6, $a6, 0
	beqz	$t6, .LBB2_159
# %bb.143:                              # %for.body.i510.preheader
                                        #   in Loop: Header=BB2_128 Depth=2
	nor	$a0, $a0, $zero
	add.w	$t7, $s3, $a0
	movgr2fr.w	$fa3, $zero
	move	$a0, $a7
	move	$a2, $t6
	b	.LBB2_150
	.p2align	4, , 16
.LBB2_144:                              # %for.cond9.for.cond4.loopexit_crit_edge.i498
                                        #   in Loop: Header=BB2_145 Depth=3
	ld.w	$a0, $a2, 8
	addi.d	$t8, $a2, 8
	beqz	$a0, .LBB2_137
.LBB2_145:                              # %for.cond9.preheader.i484
                                        #   Parent Loop BB2_119 Depth=1
                                        #     Parent Loop BB2_128 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_147 Depth 4
	move	$ra, $a2
	move	$a2, $t8
	add.w	$a0, $a0, $s1
	move	$t8, $s7
	move	$t7, $s6
	b	.LBB2_147
	.p2align	4, , 16
.LBB2_146:                              # %for.inc21.i494
                                        #   in Loop: Header=BB2_147 Depth=4
	ld.w	$t7, $t8, 0
	addi.d	$t8, $t8, 8
	beqz	$t7, .LBB2_144
.LBB2_147:                              # %for.body12.i490
                                        #   Parent Loop BB2_119 Depth=1
                                        #     Parent Loop BB2_128 Depth=2
                                        #       Parent Loop BB2_145 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$a0, $t7, .LBB2_146
# %bb.148:                              # %if.then16.i502
                                        #   in Loop: Header=BB2_147 Depth=4
	fld.s	$ft1, $ra, 12
	fld.s	$ft2, $t8, -4
	fmadd.s	$ft0, $ft1, $ft2, $ft0
	b	.LBB2_146
	.p2align	4, , 16
.LBB2_149:                              # %for.inc.i514
                                        #   in Loop: Header=BB2_150 Depth=3
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 8
	beqz	$a2, .LBB2_152
.LBB2_150:                              # %for.body.i510
                                        #   Parent Loop BB2_119 Depth=1
                                        #     Parent Loop BB2_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$a2, $t7, .LBB2_149
# %bb.151:                              # %if.then.i541
                                        #   in Loop: Header=BB2_150 Depth=3
	fld.s	$fa3, $a0, -4
	fmul.s	$fa3, $fa2, $fa3
	b	.LBB2_149
.LBB2_152:                              # %for.cond4.preheader.i518
                                        #   in Loop: Header=BB2_128 Depth=2
	ld.w	$a0, $t5, 8
	beqz	$a0, .LBB2_160
# %bb.153:                              #   in Loop: Header=BB2_128 Depth=2
	addi.d	$t8, $t5, 8
	b	.LBB2_155
	.p2align	4, , 16
.LBB2_154:                              # %for.cond9.for.cond4.loopexit_crit_edge.i535
                                        #   in Loop: Header=BB2_155 Depth=3
	ld.w	$a0, $t5, 8
	addi.d	$t8, $t5, 8
	beqz	$a0, .LBB2_160
.LBB2_155:                              # %for.cond9.preheader.i521
                                        #   Parent Loop BB2_119 Depth=1
                                        #     Parent Loop BB2_128 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_157 Depth 4
	move	$a2, $t5
	move	$t5, $t8
	add.w	$a0, $a0, $t7
	move	$t8, $a7
	move	$s1, $t6
	b	.LBB2_157
	.p2align	4, , 16
.LBB2_156:                              # %for.inc21.i531
                                        #   in Loop: Header=BB2_157 Depth=4
	ld.w	$s1, $t8, 0
	addi.d	$t8, $t8, 8
	beqz	$s1, .LBB2_154
.LBB2_157:                              # %for.body12.i527
                                        #   Parent Loop BB2_119 Depth=1
                                        #     Parent Loop BB2_128 Depth=2
                                        #       Parent Loop BB2_155 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$a0, $s1, .LBB2_156
# %bb.158:                              # %if.then16.i539
                                        #   in Loop: Header=BB2_157 Depth=4
	fld.s	$fa2, $a2, 12
	fld.s	$fa5, $t8, -4
	fmadd.s	$fa3, $fa2, $fa5, $fa3
	b	.LBB2_156
.LBB2_159:                              #   in Loop: Header=BB2_128 Depth=2
	movgr2fr.w	$fa3, $zero
.LBB2_160:                              # %countnocountx.exit544
                                        #   in Loop: Header=BB2_128 Depth=2
	fneg.s	$fa2, $fa3
	fmadd.s	$fa4, $fa2, $ft3, $fa4
.LBB2_161:                              # %if.end542
                                        #   in Loop: Header=BB2_128 Depth=2
	addi.d	$t2, $t2, 4
	fld.s	$fa2, $t2, 0
	fadd.s	$fa3, $fa4, $fa2
	fcmp.cule.s	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB2_163
# %bb.162:                              # %if.then546
                                        #   in Loop: Header=BB2_128 Depth=2
	ld.w	$a0, $t3, 0
	sub.d	$a0, $s3, $a0
	st.w	$a0, $a3, 0
	fmov.s	$fs0, $fa3
.LBB2_163:                              # %if.end548
                                        #   in Loop: Header=BB2_128 Depth=2
	fcmp.cult.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB2_127
# %bb.164:                              # %if.then551
                                        #   in Loop: Header=BB2_128 Depth=2
	fst.s	$fa1, $t2, 0
	st.w	$s8, $t3, 0
	b	.LBB2_127
.LBB2_165:                              # %vector.main.loop.iter.check951
                                        #   in Loop: Header=BB2_119 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ori	$a1, $zero, 15
	bgeu	$a0, $a1, .LBB2_167
# %bb.166:                              #   in Loop: Header=BB2_119 Depth=1
	move	$a5, $zero
	b	.LBB2_171
.LBB2_167:                              # %vector.body955.preheader
                                        #   in Loop: Header=BB2_119 Depth=1
	addi.d	$a0, $s5, 32
	addi.d	$a1, $a2, 32
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_168:                              # %vector.body955
                                        #   Parent Loop BB2_119 Depth=1
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
	addi.d	$a4, $a4, -16
	addi.d	$a1, $a1, 64
	bnez	$a4, .LBB2_168
# %bb.169:                              # %middle.block964
                                        #   in Loop: Header=BB2_119 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_125
# %bb.170:                              # %vec.epilog.iter.check969
                                        #   in Loop: Header=BB2_119 Depth=1
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_174
.LBB2_171:                              # %vec.epilog.ph968
                                        #   in Loop: Header=BB2_119 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $s5, $a1
	alsl.d	$a4, $a5, $s5, 2
	alsl.d	$a2, $a5, $a2, 2
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	.p2align	4, , 16
.LBB2_172:                              # %vec.epilog.vector.body975
                                        #   Parent Loop BB2_119 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vld	$vr1, $a4, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, 16
	bnez	$a5, .LBB2_172
# %bb.173:                              # %vec.epilog.middle.block984
                                        #   in Loop: Header=BB2_119 Depth=1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	bne	$a4, $a5, .LBB2_124
	b	.LBB2_125
.LBB2_174:                              #   in Loop: Header=BB2_119 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $s5, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	b	.LBB2_124
.LBB2_175:
	movgr2fr.w	$fs0, $zero
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB2_177
	b	.LBB2_191
.LBB2_176:                              # %for.end576.loopexit
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $s4, 0
	move	$s1, $a2
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_191
.LBB2_177:                              # %for.cond579.preheader
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_184
# %bb.178:                              # %for.body583.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s8, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_182
# %bb.179:                              # %vector.ph995
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.d	$xr1, $s8
	pcalau12i	$a5, %pc_hi20(.LCPI2_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI2_3)
	pcalau12i	$a5, %pc_hi20(.LCPI2_4)
	xvld	$xr3, $a5, %pc_lo12(.LCPI2_4)
	addi.d	$a5, $s1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_180:                              # %vector.body1002
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
	bnez	$a6, .LBB2_180
# %bb.181:                              # %middle.block1009
	beq	$a2, $a4, .LBB2_184
.LBB2_182:                              # %for.body583.preheader
	sub.w	$a2, $s8, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s1, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_183:                              # %for.body583
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
	bnez	$a1, .LBB2_183
.LBB2_184:                              # %for.cond596.preheader
	ori	$a0, $zero, 1
	blt	$t7, $a0, .LBB2_191
# %bb.185:                              # %for.body600.lr.ph
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a3, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.lastverticalw)
	addi.d	$a2, $a3, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB2_189
# %bb.186:                              # %vector.ph1014
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI2_5)
	vld	$vr4, $a5, %pc_lo12(.LCPI2_5)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_187:                              # %vector.body1021
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
	bnez	$a6, .LBB2_187
# %bb.188:                              # %middle.block1028
	beq	$a3, $a4, .LBB2_191
.LBB2_189:                              # %for.body600.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB2_190:                              # %for.body600
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
	bnez	$a2, .LBB2_190
.LBB2_191:                              # %if.end615
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.lastverticalw)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(H__align.mseq1)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(H__align.mseq2)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ijp)
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s5, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.w	$s6, $a0, $s5
	addi.w	$s8, $s6, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 0
	addi.w	$a1, $s5, 0
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	addi.w	$a1, $s3, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	bnez	$a3, .LBB2_198
# %bb.192:                              # %if.else618
	ori	$a3, $zero, 1
	ld.d	$s4, $sp, 432                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_209
# %bb.193:                              # %if.else.i568
	fld.s	$fa0, $fp, 0
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_204
# %bb.194:                              # %for.body.lr.ph.i684
	slli.d	$a2, $s5, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s3, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s5, 30, 0
	move	$a5, $s5
	b	.LBB2_196
	.p2align	4, , 16
.LBB2_195:                              # %for.inc.i694
                                        #   in Loop: Header=BB2_196 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$fp, $fp, 4
	beqz	$a4, .LBB2_204
.LBB2_196:                              # %for.body.i687
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_195
# %bb.197:                              # %if.then16.i692
                                        #   in Loop: Header=BB2_196 Depth=1
	ldx.d	$a6, $s4, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_195
.LBB2_198:                              # %if.then617
	ori	$a3, $zero, 1
	ld.d	$ra, $sp, 432                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_217
# %bb.199:                              # %if.else.i
	fld.s	$fa0, $fp, 0
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_212
# %bb.200:                              # %for.body.lr.ph.i551
	slli.d	$a2, $s5, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s3, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s5, 30, 0
	move	$a5, $s5
	b	.LBB2_202
	.p2align	4, , 16
.LBB2_201:                              # %for.inc.i556
                                        #   in Loop: Header=BB2_202 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$fp, $fp, 4
	beqz	$a4, .LBB2_212
.LBB2_202:                              # %for.body.i553
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_201
# %bb.203:                              # %if.then16.i555
                                        #   in Loop: Header=BB2_202 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_201
.LBB2_204:                              # %for.cond24.preheader.i570
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB2_209
# %bb.205:                              # %for.body27.lr.ph.i669
	slli.d	$a2, $s5, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s3, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s3, 30, 0
	sub.d	$a5, $zero, $s3
	b	.LBB2_207
	.p2align	4, , 16
.LBB2_206:                              # %for.inc43.i680
                                        #   in Loop: Header=BB2_207 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s1, $s1, 4
	beqz	$a4, .LBB2_209
.LBB2_207:                              # %for.body27.i673
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_206
# %bb.208:                              # %if.then32.i678
                                        #   in Loop: Header=BB2_207 Depth=1
	ldx.d	$a6, $s4, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_206
.LBB2_209:                              # %if.end46.i573
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_225
# %bb.210:                              # %for.body51.preheader.i575
	addi.d	$a3, $s5, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_220
# %bb.211:
	move	$a3, $zero
	b	.LBB2_223
.LBB2_212:                              # %for.cond24.preheader.i
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB2_217
# %bb.213:                              # %for.body27.lr.ph.i
	slli.d	$a2, $s5, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s3, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s3, 30, 0
	sub.d	$a5, $zero, $s3
	b	.LBB2_215
	.p2align	4, , 16
.LBB2_214:                              # %for.inc43.i
                                        #   in Loop: Header=BB2_215 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s1, $s1, 4
	beqz	$a4, .LBB2_217
.LBB2_215:                              # %for.body27.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_214
# %bb.216:                              # %if.then32.i
                                        #   in Loop: Header=BB2_215 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_214
.LBB2_217:                              # %if.end46.i
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_233
# %bb.218:                              # %for.body51.preheader.i
	addi.d	$a3, $s5, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_228
# %bb.219:
	move	$a3, $zero
	b	.LBB2_231
.LBB2_220:                              # %vector.ph1128
	pcalau12i	$a4, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_6)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s4, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_221:                              # %vector.body1131
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
	bnez	$a5, .LBB2_221
# %bb.222:                              # %middle.block1139
	beq	$a2, $a3, .LBB2_225
.LBB2_223:                              # %for.body51.i577.preheader
	alsl.d	$a4, $a3, $s4, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_224:                              # %for.body51.i577
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_224
.LBB2_225:                              # %for.cond59.preheader.i582
	bltz	$a1, .LBB2_252
# %bb.226:                              # %iter.check1145
	ld.d	$a2, $s4, 0
	addi.d	$a5, $s3, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB2_236
# %bb.227:
	move	$a4, $zero
	b	.LBB2_250
.LBB2_228:                              # %vector.ph1033
	pcalau12i	$a4, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_6)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_229:                              # %vector.body1036
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
	bnez	$a5, .LBB2_229
# %bb.230:                              # %middle.block1043
	beq	$a2, $a3, .LBB2_233
.LBB2_231:                              # %for.body51.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_232:                              # %for.body51.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_232
.LBB2_233:                              # %for.cond59.preheader.i
	ld.d	$a2, $sp, 560
	bltz	$a1, .LBB2_295
# %bb.234:                              # %iter.check1049
	ld.d	$a3, $ra, 0
	addi.d	$a6, $s3, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB2_241
# %bb.235:
	move	$a5, $zero
	b	.LBB2_293
.LBB2_236:                              # %vector.main.loop.iter.check1147
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB2_246
# %bb.237:
	move	$a4, $zero
.LBB2_238:                              # %vec.epilog.ph1161
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_8)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB2_239:                              # %vec.epilog.vector.body1170
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB2_239
# %bb.240:                              # %vec.epilog.middle.block1175
	bne	$a3, $a4, .LBB2_250
	b	.LBB2_252
.LBB2_241:                              # %vector.main.loop.iter.check1051
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB2_289
# %bb.242:
	move	$a5, $zero
.LBB2_243:                              # %vec.epilog.ph1065
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a5, %pc_lo12(.LCPI2_8)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB2_244:                              # %vec.epilog.vector.body1073
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB2_244
# %bb.245:                              # %vec.epilog.middle.block1078
	bne	$a4, $a5, .LBB2_293
	b	.LBB2_295
.LBB2_246:                              # %vector.ph1148
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a6, %pc_lo12(.LCPI2_7)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_247:                              # %vector.body1151
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB2_247
# %bb.248:                              # %middle.block1157
	beq	$a3, $a4, .LBB2_252
# %bb.249:                              # %vec.epilog.iter.check1162
	andi	$a6, $a5, 12
	bnez	$a6, .LBB2_238
.LBB2_250:                              # %for.body63.i586.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB2_251:                              # %for.body63.i586
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB2_251
.LBB2_252:                              # %for.end71.i592
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	add.d	$s8, $a2, $a1
	stx.b	$zero, $a2, $a1
	add.d	$a0, $a0, $a3
	add.d	$s1, $a0, $a1
	stx.b	$zero, $a0, $a1
	bltz	$s6, .LBB2_282
# %bb.253:                              # %for.body82.i600.preheader
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
.LBB2_254:                              # %for.body82.i600
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_273 Depth 2
                                        #     Child Loop BB2_277 Depth 2
                                        #     Child Loop BB2_262 Depth 2
                                        #     Child Loop BB2_266 Depth 2
	addi.w	$a6, $s5, 0
	slli.d	$t0, $a6, 3
	ldx.d	$t0, $s4, $t0
	addi.w	$t1, $s3, 0
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $t0, $t2
	bge	$a0, $t2, .LBB2_257
# %bb.255:                              # %if.else96.i611
                                        #   in Loop: Header=BB2_254 Depth=1
	beqz	$t2, .LBB2_268
# %bb.256:                              # %if.then103.i613
                                        #   in Loop: Header=BB2_254 Depth=1
	sub.d	$t0, $s5, $t2
	b	.LBB2_269
	.p2align	4, , 16
.LBB2_257:                              # %if.then89.i667
                                        #   in Loop: Header=BB2_254 Depth=1
	addi.d	$t0, $s5, -1
	nor	$t3, $t0, $zero
	add.w	$t4, $s5, $t3
	bnez	$t4, .LBB2_270
	.p2align	4, , 16
.LBB2_258:                              # %while.end.i630
                                        #   in Loop: Header=BB2_254 Depth=1
	beq	$t2, $a0, .LBB2_279
.LBB2_259:                              # %while.body122.preheader.i635
                                        #   in Loop: Header=BB2_254 Depth=1
	addi.w	$t3, $zero, -17
	nor	$t6, $t2, $zero
	bltu	$t3, $t2, .LBB2_264
# %bb.260:                              # %while.body122.preheader.i635
                                        #   in Loop: Header=BB2_254 Depth=1
	sub.d	$t3, $s8, $s1
	bltu	$t3, $a4, .LBB2_264
# %bb.261:                              # %vector.ph1184
                                        #   in Loop: Header=BB2_254 Depth=1
	bstrpick.d	$t3, $t6, 30, 4
	slli.d	$t7, $t3, 4
	sub.d	$t5, $t6, $t7
	sub.d	$t3, $s1, $t7
	sub.d	$t4, $s8, $t7
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $a7, 0
	addi.d	$a7, $s8, -8
	addi.d	$t8, $s1, -8
	move	$fp, $t7
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB2_262:                              # %vector.body1188
                                        #   Parent Loop BB2_254 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a7, -8
	vst	$vr2, $t8, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$fp, $fp, -16
	addi.d	$a7, $a7, -16
	addi.d	$t8, $t8, -16
	bnez	$fp, .LBB2_262
# %bb.263:                              # %middle.block1197
                                        #   in Loop: Header=BB2_254 Depth=1
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
	bne	$t7, $t6, .LBB2_265
	b	.LBB2_267
	.p2align	4, , 16
.LBB2_264:                              #   in Loop: Header=BB2_254 Depth=1
	move	$t5, $t6
	move	$t3, $s1
	move	$t4, $s8
.LBB2_265:                              # %while.body122.i637.preheader
                                        #   in Loop: Header=BB2_254 Depth=1
	add.d	$a7, $a7, $t5
	.p2align	4, , 16
.LBB2_266:                              # %while.body122.i637
                                        #   Parent Loop BB2_254 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t4, -1
	addi.d	$t4, $t4, -1
	st.b	$a2, $t3, -1
	addi.w	$t5, $t5, -1
	addi.d	$t3, $t3, -1
	bnez	$t5, .LBB2_266
.LBB2_267:                              # %while.end126.i647
                                        #   in Loop: Header=BB2_254 Depth=1
	bge	$a6, $a1, .LBB2_280
	b	.LBB2_283
	.p2align	4, , 16
.LBB2_268:                              # %if.else110.i665
                                        #   in Loop: Header=BB2_254 Depth=1
	addi.d	$t0, $s5, -1
.LBB2_269:                              # %if.end114.i615
                                        #   in Loop: Header=BB2_254 Depth=1
	move	$t2, $a0
	nor	$t3, $t0, $zero
	add.w	$t4, $s5, $t3
	beqz	$t4, .LBB2_258
.LBB2_270:                              # %while.body.i621.preheader
                                        #   in Loop: Header=BB2_254 Depth=1
	bltu	$t4, $a5, .LBB2_275
# %bb.271:                              # %while.body.i621.preheader
                                        #   in Loop: Header=BB2_254 Depth=1
	sub.d	$t5, $s8, $s1
	bltu	$t5, $a5, .LBB2_275
# %bb.272:                              # %vector.ph1210
                                        #   in Loop: Header=BB2_254 Depth=1
	bstrpick.d	$t7, $t4, 31, 0
	bstrpick.d	$t5, $t7, 31, 5
	slli.d	$t8, $t5, 5
	sub.d	$t4, $t4, $t8
	sub.d	$t5, $s1, $t8
	sub.d	$t6, $s8, $t8
	addi.d	$fp, $s8, -32
	addi.d	$s0, $s1, -32
	move	$s1, $t8
	.p2align	4, , 16
.LBB2_273:                              # %vector.body1214
                                        #   Parent Loop BB2_254 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $fp, 0
	xvst	$xr4, $s0, 0
	addi.d	$s1, $s1, -32
	addi.d	$fp, $fp, -32
	addi.d	$s0, $s0, -32
	bnez	$s1, .LBB2_273
# %bb.274:                              # %middle.block1221
                                        #   in Loop: Header=BB2_254 Depth=1
	bne	$t8, $t7, .LBB2_276
	b	.LBB2_278
	.p2align	4, , 16
.LBB2_275:                              #   in Loop: Header=BB2_254 Depth=1
	move	$t5, $s1
	move	$t6, $s8
.LBB2_276:                              # %while.body.i621.preheader1231
                                        #   in Loop: Header=BB2_254 Depth=1
	move	$t7, $t5
	move	$t8, $t6
	.p2align	4, , 16
.LBB2_277:                              # %while.body.i621
                                        #   Parent Loop BB2_254 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t6, $t8, -1
	st.b	$a2, $t8, -1
	addi.d	$t5, $t7, -1
	addi.w	$t4, $t4, -1
	st.b	$a3, $t7, -1
	move	$t7, $t5
	move	$t8, $t6
	bnez	$t4, .LBB2_277
.LBB2_278:                              # %while.end.loopexit.i629
                                        #   in Loop: Header=BB2_254 Depth=1
	add.d	$a7, $s5, $a7
	add.d	$a7, $t3, $a7
	move	$s8, $t6
	move	$s1, $t5
	bne	$t2, $a0, .LBB2_259
.LBB2_279:                              #   in Loop: Header=BB2_254 Depth=1
	move	$t4, $s8
	move	$t3, $s1
	blt	$a6, $a1, .LBB2_283
.LBB2_280:                              # %while.end126.i647
                                        #   in Loop: Header=BB2_254 Depth=1
	blt	$t1, $a1, .LBB2_283
# %bb.281:                              # %if.end132.i
                                        #   in Loop: Header=BB2_254 Depth=1
	add.d	$s3, $t2, $s3
	addi.d	$s8, $t4, -1
	st.b	$a2, $t4, -1
	addi.d	$s1, $t3, -1
	addi.w	$a7, $a7, 2
	st.b	$a2, $t3, -1
	move	$s5, $t0
	bge	$s6, $a7, .LBB2_254
.LBB2_282:                              # %for.end138.i
	ori	$fp, $zero, 1
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	bge	$s5, $fp, .LBB2_284
	b	.LBB2_286
.LBB2_283:
	move	$s8, $t4
	move	$s1, $t3
	ori	$fp, $zero, 1
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	blt	$s5, $fp, .LBB2_286
.LBB2_284:                              # %for.body142.preheader.i
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	move	$s3, $s5
	.p2align	4, , 16
.LBB2_285:                              # %for.body142.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s0, $s0, 8
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB2_285
.LBB2_286:                              # %for.cond150.preheader.i
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 400                   # 8-byte Folded Reload
	blt	$s2, $fp, .LBB2_335
# %bb.287:                              # %for.body153.preheader.i
	move	$fp, $s3
	move	$s0, $s2
	.p2align	4, , 16
.LBB2_288:                              # %for.body153.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s7, $s7, 8
	bnez	$s0, .LBB2_288
	b	.LBB2_335
.LBB2_289:                              # %vector.ph1052
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a7, %pc_lo12(.LCPI2_7)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB2_290:                              # %vector.body1055
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB2_290
# %bb.291:                              # %middle.block1061
	beq	$a4, $a5, .LBB2_295
# %bb.292:                              # %vec.epilog.iter.check1066
	andi	$a7, $a6, 12
	bnez	$a7, .LBB2_243
.LBB2_293:                              # %for.body63.i.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB2_294:                              # %for.body63.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB2_294
.LBB2_295:                              # %for.end71.i
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	add.d	$s8, $a3, $a1
	stx.b	$zero, $a3, $a1
	add.d	$a3, $a0, $a4
	add.d	$s1, $a3, $a1
	stx.b	$zero, $a3, $a1
	st.w	$zero, $a2, 0
	bltz	$s6, .LBB2_328
# %bb.296:                              # %for.body82.i.preheader
	move	$t2, $zero
	addi.w	$a1, $zero, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 111
	ori	$a5, $zero, 45
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a7, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	move	$t0, $s3
	move	$a0, $s6
	.p2align	4, , 16
.LBB2_297:                              # %for.body82.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_316 Depth 2
                                        #     Child Loop BB2_320 Depth 2
                                        #     Child Loop BB2_305 Depth 2
                                        #     Child Loop BB2_309 Depth 2
	addi.w	$t1, $s5, 0
	slli.d	$t6, $t1, 3
	ldx.d	$a6, $ra, $t6
	addi.w	$t4, $t0, 0
	slli.d	$t7, $t4, 2
	ldx.w	$t5, $a6, $t7
	bge	$a1, $t5, .LBB2_300
# %bb.298:                              # %if.else96.i
                                        #   in Loop: Header=BB2_297 Depth=1
	beqz	$t5, .LBB2_311
# %bb.299:                              # %if.then103.i
                                        #   in Loop: Header=BB2_297 Depth=1
	sub.d	$t3, $s5, $t5
	b	.LBB2_312
	.p2align	4, , 16
.LBB2_300:                              # %if.then89.i
                                        #   in Loop: Header=BB2_297 Depth=1
	addi.d	$t3, $s5, -1
	nor	$t8, $t3, $zero
	add.w	$fp, $s5, $t8
	bnez	$fp, .LBB2_313
	.p2align	4, , 16
.LBB2_301:                              # %while.end.i
                                        #   in Loop: Header=BB2_297 Depth=1
	beq	$t5, $a1, .LBB2_322
.LBB2_302:                              # %while.body122.preheader.i
                                        #   in Loop: Header=BB2_297 Depth=1
	addi.w	$a6, $zero, -17
	nor	$s4, $t5, $zero
	bltu	$a6, $t5, .LBB2_307
# %bb.303:                              # %while.body122.preheader.i
                                        #   in Loop: Header=BB2_297 Depth=1
	sub.d	$a6, $s8, $s1
	ori	$t8, $zero, 16
	bltu	$a6, $t8, .LBB2_307
# %bb.304:                              # %vector.ph1087
                                        #   in Loop: Header=BB2_297 Depth=1
	bstrpick.d	$a6, $s4, 30, 4
	slli.d	$s5, $a6, 4
	sub.d	$s0, $s4, $s5
	sub.d	$t8, $s1, $s5
	sub.d	$fp, $s8, $s5
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $t2, 0
	addi.d	$t2, $s8, -8
	addi.d	$s1, $s1, -8
	move	$s6, $s5
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB2_305:                              # %vector.body1091
                                        #   Parent Loop BB2_297 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t2, -8
	vst	$vr2, $s1, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s6, $s6, -16
	addi.d	$t2, $t2, -16
	addi.d	$s1, $s1, -16
	bnez	$s6, .LBB2_305
# %bb.306:                              # %middle.block1099
                                        #   in Loop: Header=BB2_297 Depth=1
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
	move	$s6, $a0
	bne	$s5, $s4, .LBB2_308
	b	.LBB2_310
	.p2align	4, , 16
.LBB2_307:                              #   in Loop: Header=BB2_297 Depth=1
	move	$s0, $s4
	move	$t8, $s1
	move	$fp, $s8
.LBB2_308:                              # %while.body122.i.preheader
                                        #   in Loop: Header=BB2_297 Depth=1
	add.d	$t2, $t2, $s0
	.p2align	4, , 16
.LBB2_309:                              # %while.body122.i
                                        #   Parent Loop BB2_297 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a5, $fp, -1
	addi.d	$fp, $fp, -1
	st.b	$a4, $t8, -1
	addi.w	$s0, $s0, -1
	addi.d	$t8, $t8, -1
	bnez	$s0, .LBB2_309
.LBB2_310:                              # %while.end126.i
                                        #   in Loop: Header=BB2_297 Depth=1
	ld.d	$a6, $sp, 440                   # 8-byte Folded Reload
	bne	$t1, $a6, .LBB2_323
	b	.LBB2_325
	.p2align	4, , 16
.LBB2_311:                              # %if.else110.i
                                        #   in Loop: Header=BB2_297 Depth=1
	addi.d	$t3, $s5, -1
.LBB2_312:                              # %if.end114.i
                                        #   in Loop: Header=BB2_297 Depth=1
	move	$t5, $a1
	nor	$t8, $t3, $zero
	add.w	$fp, $s5, $t8
	beqz	$fp, .LBB2_301
.LBB2_313:                              # %while.body.i547.preheader
                                        #   in Loop: Header=BB2_297 Depth=1
	bltu	$fp, $a7, .LBB2_318
# %bb.314:                              # %while.body.i547.preheader
                                        #   in Loop: Header=BB2_297 Depth=1
	sub.d	$a6, $s8, $s1
	bltu	$a6, $a7, .LBB2_318
# %bb.315:                              # %vector.ph1110
                                        #   in Loop: Header=BB2_297 Depth=1
	bstrpick.d	$s6, $fp, 31, 0
	bstrpick.d	$a6, $s6, 31, 5
	slli.d	$a6, $a6, 5
	sub.d	$fp, $fp, $a6
	sub.d	$s0, $s1, $a6
	sub.d	$s4, $s8, $a6
	addi.d	$s8, $s8, -32
	addi.d	$s1, $s1, -32
	move	$ra, $a6
	.p2align	4, , 16
.LBB2_316:                              # %vector.body1114
                                        #   Parent Loop BB2_297 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s8, 0
	xvst	$xr4, $s1, 0
	addi.d	$ra, $ra, -32
	addi.d	$s8, $s8, -32
	addi.d	$s1, $s1, -32
	bnez	$ra, .LBB2_316
# %bb.317:                              # %middle.block1121
                                        #   in Loop: Header=BB2_297 Depth=1
	ld.d	$ra, $sp, 432                   # 8-byte Folded Reload
	bne	$a6, $s6, .LBB2_319
	b	.LBB2_321
	.p2align	4, , 16
.LBB2_318:                              #   in Loop: Header=BB2_297 Depth=1
	move	$s0, $s1
	move	$s4, $s8
.LBB2_319:                              # %while.body.i547.preheader1236
                                        #   in Loop: Header=BB2_297 Depth=1
	move	$s1, $s0
	move	$a6, $s4
	.p2align	4, , 16
.LBB2_320:                              # %while.body.i547
                                        #   Parent Loop BB2_297 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s4, $a6, -1
	st.b	$a4, $a6, -1
	addi.d	$s0, $s1, -1
	addi.w	$fp, $fp, -1
	st.b	$a5, $s1, -1
	move	$s1, $s0
	move	$a6, $s4
	bnez	$fp, .LBB2_320
.LBB2_321:                              # %while.end.loopexit.i
                                        #   in Loop: Header=BB2_297 Depth=1
	add.d	$a6, $s5, $t2
	add.d	$t2, $t8, $a6
	move	$s8, $s4
	move	$s1, $s0
	move	$s6, $a0
	bne	$t5, $a1, .LBB2_302
.LBB2_322:                              #   in Loop: Header=BB2_297 Depth=1
	move	$fp, $s8
	move	$t8, $s1
	ld.d	$a6, $sp, 440                   # 8-byte Folded Reload
	beq	$t1, $a6, .LBB2_325
.LBB2_323:                              # %while.end126.i
                                        #   in Loop: Header=BB2_297 Depth=1
	addi.w	$a6, $s3, 0
	beq	$t4, $a6, .LBB2_325
# %bb.324:                              # %if.else132.i
                                        #   in Loop: Header=BB2_297 Depth=1
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(impmtx)
	ldx.d	$a6, $a6, $t6
	fldx.s	$fa5, $a6, $t7
	fld.s	$fa6, $a2, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a2, 0
.LBB2_325:                              # %if.end135.i
                                        #   in Loop: Header=BB2_297 Depth=1
	blt	$t1, $a3, .LBB2_329
# %bb.326:                              # %if.end135.i
                                        #   in Loop: Header=BB2_297 Depth=1
	blt	$t4, $a3, .LBB2_329
# %bb.327:                              # %if.end142.i
                                        #   in Loop: Header=BB2_297 Depth=1
	add.d	$t0, $t5, $t0
	addi.d	$s8, $fp, -1
	st.b	$a4, $fp, -1
	addi.d	$s1, $t8, -1
	addi.w	$t2, $t2, 2
	st.b	$a4, $t8, -1
	move	$s5, $t3
	bge	$s6, $t2, .LBB2_297
.LBB2_328:                              # %for.end148.i
	ori	$fp, $zero, 1
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	bge	$s5, $fp, .LBB2_330
	b	.LBB2_332
.LBB2_329:
	move	$s8, $fp
	move	$s1, $t8
	ori	$fp, $zero, 1
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	blt	$s5, $fp, .LBB2_332
.LBB2_330:                              # %for.body152.preheader.i
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	move	$s3, $s5
	.p2align	4, , 16
.LBB2_331:                              # %for.body152.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s0, $s0, 8
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB2_331
.LBB2_332:                              # %for.cond160.preheader.i
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 400                   # 8-byte Folded Reload
	blt	$s2, $fp, .LBB2_335
# %bb.333:                              # %for.body163.preheader.i
	move	$fp, $s3
	move	$s0, $s2
	.p2align	4, , 16
.LBB2_334:                              # %for.body163.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s7, $s7, 8
	bnez	$s0, .LBB2_334
.LBB2_335:                              # %if.end620
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_337
# %bb.336:                              # %if.end620
	ori	$a0, $a4, 2881
	blt	$a3, $a0, .LBB2_338
.LBB2_337:                              # %if.then629
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
.LBB2_338:                              # %if.end631
	ori	$fp, $zero, 1
	blt	$s5, $fp, .LBB2_341
# %bb.339:                              # %for.body635.lr.ph
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(H__align.mseq1)
	.p2align	4, , 16
.LBB2_340:                              # %for.body635
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 8
	bnez	$s5, .LBB2_340
.LBB2_341:                              # %for.cond644.preheader
	blt	$s2, $fp, .LBB2_344
# %bb.342:                              # %for.body647.lr.ph
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.mseq2)
	.p2align	4, , 16
.LBB2_343:                              # %for.body647
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB2_343
.LBB2_344:                              # %for.end655
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bltz	$a0, .LBB2_347
# %bb.345:                              # %for.body662.lr.ph
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.gappat1)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bstrpick.d	$s0, $a0, 31, 0
	.p2align	4, , 16
.LBB2_346:                              # %for.body662
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB2_346
.LBB2_347:                              # %for.cond670.preheader
	bltz	$s4, .LBB2_350
# %bb.348:                              # %for.body674.lr.ph
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.gappat2)
	addi.d	$a0, $s1, 1
	bstrpick.d	$s0, $a0, 31, 0
	.p2align	4, , 16
.LBB2_349:                              # %for.body674
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB2_349
.LBB2_350:                              # %for.end681
	fmov.s	$fa0, $fs0
	fld.d	$fs2, $sp, 448                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 456                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 464                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.Lfunc_end2:
	.size	H__align, .Lfunc_end2-H__align
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 120                  # 8-byte Folded Spill
	beqz	$a7, .LBB3_8
# %bb.1:                                # %entry
	ori	$a7, $zero, 1
	blt	$a4, $a7, .LBB3_8
# %bb.2:                                # %for.cond1.preheader.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 208
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %for.end
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t3, $t5, 0
	slli.d	$t2, $t2, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t3, $t2
	beq	$a7, $a4, .LBB3_8
.LBB3_4:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	move	$t3, $zero
	move	$t4, $zero
	move	$t2, $zero
	alsl.d	$t6, $a7, $a5, 3
	alsl.d	$t5, $a7, $a6, 3
	slli.d	$t7, $a7, 2
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                # %for.inc
                                        #   in Loop: Header=BB3_6 Depth=2
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 1
	beq	$t3, $t0, .LBB3_3
.LBB3_6:                                # %for.body3
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t8, $a2, $t3
	fldx.s	$fa1, $t8, $t7
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_5
# %bb.7:                                # %if.then7
                                        #   in Loop: Header=BB3_6 Depth=2
	ld.d	$t8, $t6, 0
	ld.d	$fp, $t5, 0
	slli.d	$s0, $t2, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t4, $fp, $s0
	addi.w	$t2, $t2, 1
	b	.LBB3_5
.LBB3_8:                                # %if.end28
	ld.d	$a7, $a1, 0
	ld.d	$t0, $a1, 8
	move	$a2, $zero
	slli.d	$a3, $a3, 2
	fldx.s	$fa1, $a7, $a3
	fldx.s	$fa2, $t0, $a3
	ld.d	$a7, $a1, 16
	ld.d	$t0, $a1, 24
	ld.d	$t1, $a1, 32
	ld.d	$t2, $a1, 40
	fldx.s	$fa3, $a7, $a3
	fldx.s	$fa4, $t0, $a3
	fldx.s	$fa5, $t1, $a3
	fldx.s	$fa6, $t2, $a3
	ld.d	$a7, $a1, 48
	ld.d	$t0, $a1, 56
	ld.d	$t1, $a1, 64
	ld.d	$t2, $a1, 72
	fldx.s	$fa7, $a7, $a3
	fldx.s	$ft0, $t0, $a3
	fldx.s	$ft1, $t1, $a3
	fldx.s	$ft2, $t2, $a3
	ld.d	$a7, $a1, 80
	ld.d	$t0, $a1, 88
	ld.d	$t1, $a1, 96
	ld.d	$t2, $a1, 104
	fldx.s	$ft3, $a7, $a3
	fldx.s	$ft4, $t0, $a3
	fldx.s	$ft5, $t1, $a3
	fldx.s	$ft6, $t2, $a3
	ld.d	$a7, $a1, 112
	ld.d	$t0, $a1, 120
	ld.d	$t1, $a1, 128
	ld.d	$t2, $a1, 136
	fldx.s	$ft7, $a7, $a3
	fldx.s	$ft8, $t0, $a3
	fldx.s	$ft9, $t1, $a3
	fldx.s	$ft10, $t2, $a3
	ld.d	$a7, $a1, 144
	ld.d	$t0, $a1, 152
	ld.d	$t1, $a1, 160
	ld.d	$t2, $a1, 168
	fldx.s	$ft11, $a7, $a3
	fldx.s	$ft12, $t0, $a3
	fldx.s	$ft13, $t1, $a3
	fldx.s	$ft14, $t2, $a3
	ld.d	$a7, $a1, 176
	ld.d	$t0, $a1, 184
	ld.d	$t1, $a1, 192
	ld.d	$a1, $a1, 200
	fldx.s	$ft15, $a7, $a3
	fldx.s	$fs0, $t0, $a3
	fldx.s	$fs1, $t1, $a3
	fldx.s	$fs2, $a1, $a3
	pcalau12i	$a1, %got_pc_hi20(n_dis)
	ld.d	$a1, $a1, %got_pc_lo12(n_dis)
	movgr2fr.w	$fa0, $zero
	addi.d	$a3, $sp, 16
	ori	$a7, $zero, 104
	.p2align	4, , 16
.LBB3_9:                                # %for.body31
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t1, $a1, $a2
	add.d	$t0, $a1, $a2
	ld.w	$t2, $t0, 104
	movgr2fr.w	$fs3, $t1
	ffint.s.w	$fs3, $fs3
	fmadd.s	$fs3, $fs3, $fa1, $fa0
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 208
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa2, $fs3
	ld.w	$t2, $t0, 312
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa3, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 416
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa4, $fs3
	ld.w	$t2, $t0, 520
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa5, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 624
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa6, $fs3
	ld.w	$t2, $t0, 728
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa7, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 832
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft0, $fs3
	ld.w	$t2, $t0, 936
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft1, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1040
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft2, $fs3
	ld.w	$t2, $t0, 1144
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft3, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1248
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft4, $fs3
	ld.w	$t2, $t0, 1352
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft5, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1456
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft6, $fs3
	ld.w	$t2, $t0, 1560
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft7, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1664
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft8, $fs3
	ld.w	$t2, $t0, 1768
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft9, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1872
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft10, $fs3
	ld.w	$t2, $t0, 1976
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft11, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2080
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft12, $fs3
	ldptr.w	$t2, $t0, 2184
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft13, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2288
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft14, $fs3
	ldptr.w	$t2, $t0, 2392
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft15, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2496
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs0, $fs3
	ldptr.w	$t0, $t0, 2600
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs1, $fs3
	movgr2fr.w	$fs4, $t0
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs2, $fs3
	fstx.s	$fs3, $a2, $a3
	addi.d	$a2, $a2, 4
	bne	$a2, $a7, .LBB3_9
# %bb.10:                               # %while.cond.preheader
	beqz	$a4, .LBB3_16
# %bb.11:
	addi.d	$a1, $sp, 16
	addi.w	$a2, $zero, -1
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_12:                               # %while.end
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB3_16
.LBB3_13:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
	ld.d	$a7, $a6, 0
	ld.wu	$a3, $a7, 0
	addi.w	$t0, $a3, 0
	st.w	$zero, $a0, 0
	bltz	$t0, .LBB3_12
# %bb.14:                               # %while.body58.lr.ph
                                        #   in Loop: Header=BB3_13 Depth=1
	ld.d	$t0, $a5, 0
	addi.d	$a7, $a7, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB3_15:                               # %while.body58
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a3, $a3, 2
	fldx.s	$fa2, $a3, $a1
	fld.s	$fa3, $t0, 0
	ld.wu	$a3, $a7, 0
	addi.d	$t0, $t0, 4
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $a0, 0
	addi.w	$t1, $a3, 0
	addi.d	$a7, $a7, 4
	blt	$a2, $t1, .LBB3_15
	b	.LBB3_12
.LBB3_16:                               # %while.end64
	fld.d	$fs4, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 152                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end3:
	.size	match_calc, .Lfunc_end3-match_calc
                                        # -- End function
	.type	impmtx,@object                  # @impmtx
	.local	impmtx
	.comm	impmtx,8,8
	.type	imp_match_init_strictH.impalloclen,@object # @imp_match_init_strictH.impalloclen
	.local	imp_match_init_strictH.impalloclen
	.comm	imp_match_init_strictH.impalloclen,4,4
	.type	imp_match_init_strictH.nocount1,@object # @imp_match_init_strictH.nocount1
	.local	imp_match_init_strictH.nocount1
	.comm	imp_match_init_strictH.nocount1,8,8
	.type	imp_match_init_strictH.nocount2,@object # @imp_match_init_strictH.nocount2
	.local	imp_match_init_strictH.nocount2
	.comm	imp_match_init_strictH.nocount2,8,8
	.type	H__align.m,@object              # @H__align.m
	.local	H__align.m
	.comm	H__align.m,8,8
	.type	H__align.ijp,@object            # @H__align.ijp
	.local	H__align.ijp
	.comm	H__align.ijp,8,8
	.type	H__align.mp,@object             # @H__align.mp
	.local	H__align.mp
	.comm	H__align.mp,8,8
	.type	H__align.w1,@object             # @H__align.w1
	.local	H__align.w1
	.comm	H__align.w1,8,8
	.type	H__align.w2,@object             # @H__align.w2
	.local	H__align.w2
	.comm	H__align.w2,8,8
	.type	H__align.match,@object          # @H__align.match
	.local	H__align.match
	.comm	H__align.match,8,8
	.type	H__align.initverticalw,@object  # @H__align.initverticalw
	.local	H__align.initverticalw
	.comm	H__align.initverticalw,8,8
	.type	H__align.lastverticalw,@object  # @H__align.lastverticalw
	.local	H__align.lastverticalw
	.comm	H__align.lastverticalw,8,8
	.type	H__align.mseq1,@object          # @H__align.mseq1
	.local	H__align.mseq1
	.comm	H__align.mseq1,8,8
	.type	H__align.mseq2,@object          # @H__align.mseq2
	.local	H__align.mseq2
	.comm	H__align.mseq2,8,8
	.type	H__align.mseq,@object           # @H__align.mseq
	.local	H__align.mseq
	.comm	H__align.mseq,8,8
	.type	H__align.gappat1,@object        # @H__align.gappat1
	.local	H__align.gappat1
	.comm	H__align.gappat1,8,8
	.type	H__align.gappat2,@object        # @H__align.gappat2
	.local	H__align.gappat2
	.comm	H__align.gappat2,8,8
	.type	H__align.digf1,@object          # @H__align.digf1
	.local	H__align.digf1
	.comm	H__align.digf1,8,8
	.type	H__align.digf2,@object          # @H__align.digf2
	.local	H__align.digf2
	.comm	H__align.digf2,8,8
	.type	H__align.diaf1,@object          # @H__align.diaf1
	.local	H__align.diaf1
	.comm	H__align.diaf1,8,8
	.type	H__align.diaf2,@object          # @H__align.diaf2
	.local	H__align.diaf2
	.comm	H__align.diaf2,8,8
	.type	H__align.gapz1,@object          # @H__align.gapz1
	.local	H__align.gapz1
	.comm	H__align.gapz1,8,8
	.type	H__align.gapz2,@object          # @H__align.gapz2
	.local	H__align.gapz2
	.comm	H__align.gapz2,8,8
	.type	H__align.gapf1,@object          # @H__align.gapf1
	.local	H__align.gapf1
	.comm	H__align.gapf1,8,8
	.type	H__align.gapf2,@object          # @H__align.gapf2
	.local	H__align.gapf2
	.comm	H__align.gapf2,8,8
	.type	H__align.ogcp1g,@object         # @H__align.ogcp1g
	.local	H__align.ogcp1g
	.comm	H__align.ogcp1g,8,8
	.type	H__align.ogcp2g,@object         # @H__align.ogcp2g
	.local	H__align.ogcp2g
	.comm	H__align.ogcp2g,8,8
	.type	H__align.fgcp1g,@object         # @H__align.fgcp1g
	.local	H__align.fgcp1g
	.comm	H__align.fgcp1g,8,8
	.type	H__align.fgcp2g,@object         # @H__align.fgcp2g
	.local	H__align.fgcp2g
	.comm	H__align.fgcp2g,8,8
	.type	H__align.ogcp1,@object          # @H__align.ogcp1
	.local	H__align.ogcp1
	.comm	H__align.ogcp1,8,8
	.type	H__align.ogcp2,@object          # @H__align.ogcp2
	.local	H__align.ogcp2
	.comm	H__align.ogcp2,8,8
	.type	H__align.fgcp1,@object          # @H__align.fgcp1
	.local	H__align.fgcp1
	.comm	H__align.fgcp1,8,8
	.type	H__align.fgcp2,@object          # @H__align.fgcp2
	.local	H__align.fgcp2
	.comm	H__align.fgcp2,8,8
	.type	H__align.cpmx1,@object          # @H__align.cpmx1
	.local	H__align.cpmx1
	.comm	H__align.cpmx1,8,8
	.type	H__align.cpmx2,@object          # @H__align.cpmx2
	.local	H__align.cpmx2
	.comm	H__align.cpmx2,8,8
	.type	H__align.intwork,@object        # @H__align.intwork
	.local	H__align.intwork
	.comm	H__align.intwork,8,8
	.type	H__align.floatwork,@object      # @H__align.floatwork
	.local	H__align.floatwork
	.comm	H__align.floatwork,8,8
	.type	H__align.orlgth1,@object        # @H__align.orlgth1
	.local	H__align.orlgth1
	.comm	H__align.orlgth1,4,4
	.type	H__align.orlgth2,@object        # @H__align.orlgth2
	.local	H__align.orlgth2
	.comm	H__align.orlgth2,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"wm = %f\n"
	.size	.L.str.2, 9

	.section	".note.GNU-stack","",@progbits
	.addrsig
