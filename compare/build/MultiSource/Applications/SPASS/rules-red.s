	.file	"rules-red.c"
	.text
	.globl	red_Init                        # -- Begin function red_Init
	.p2align	5
	.type	red_Init,@function
red_Init:                               # @red_Init
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(term_GetStampID)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(red_STAMPID)
	st.w	$a0, $a1, %pc_lo12(red_STAMPID)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	red_Init, .Lfunc_end0-red_Init
                                        # -- End function
	.globl	red_ReductionOnDerivedClause    # -- Begin function red_ReductionOnDerivedClause
	.p2align	5
	.type	red_ReductionOnDerivedClause,@function
red_ReductionOnDerivedClause:           # @red_ReductionOnDerivedClause
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
	move	$s3, $a2
	move	$fp, $a0
	ld.d	$s1, $a0, 112
	addi.d	$a0, $a2, -2
	sltu	$a0, $zero, $a0
	ori	$a2, $zero, 32
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 48
	maskeqz	$a0, $a3, $a0
	ld.d	$s2, $fp, 104
	or	$a0, $a0, $a2
	ldx.d	$s4, $fp, $a0
	st.d	$a1, $sp, 24
	st.d	$zero, $sp, 16
	st.d	$zero, $sp, 32
	addi.d	$a0, $sp, 24
	addi.d	$a3, $sp, 16
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(red_SimpleStaticReductions)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_19
# %bb.1:                                # %entry.red_StaticReductions.exit.thread53_crit_edge
	ld.d	$s0, $sp, 24
.LBB1_2:
	move	$s5, $zero
.LBB1_3:                                # %if.then
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB1_14
# %bb.4:                                # %for.body.lr.ph.i
	move	$s2, $s1
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_5:                                # %if.then.i
                                        #   in Loop: Header=BB1_7 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(split_KeepClauseAtLevel)
	jirl	$ra, $ra, 0
.LBB1_6:                                # %for.inc.i
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB1_12
.LBB1_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 8
	ld.w	$a2, $s0, 12
	ld.w	$a0, $a1, 12
	bltu	$a0, $a2, .LBB1_5
# %bb.8:                                # %for.body.i
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.w	$a0, $fp, 132
	bltu	$a0, $a2, .LBB1_5
# %bb.9:                                # %if.else.i
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a0, $fp, 112
	ld.w	$a0, $a0, 36
	beqz	$a0, .LBB1_11
# %bb.10:                               # %if.then11.i
                                        #   in Loop: Header=BB1_7 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(prfs_InsertDocProofClause)
	jirl	$ra, $ra, 0
	b	.LBB1_6
.LBB1_11:                               # %if.else12.i
                                        #   in Loop: Header=BB1_7 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	b	.LBB1_6
.LBB1_12:                               # %while.body.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB1_13:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a2, $a0, 128
	st.d	$s1, $a2, 0
	move	$s1, $a5
	bnez	$a5, .LBB1_13
.LBB1_14:                               # %list_Delete.exit
	beqz	$s5, .LBB1_17
# %bb.15:                               # %land.lhs.true
	ld.w	$a2, $s5, 12
	ld.w	$a0, $s0, 12
	bltu	$a0, $a2, .LBB1_23
# %bb.16:                               # %land.lhs.true
	ld.w	$a0, $fp, 132
	bltu	$a0, $a2, .LBB1_23
.LBB1_17:                               # %if.else
	ld.d	$a0, $fp, 112
	ld.w	$a0, $a0, 36
	beqz	$a0, .LBB1_24
# %bb.18:                               # %if.then13
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(prfs_InsertDocProofClause)
	jirl	$ra, $ra, 0
	b	.LBB1_25
.LBB1_19:                               # %if.end.i
	ld.w	$a0, $s1, 372
	beqz	$a0, .LBB1_31
# %bb.20:                               # %land.lhs.true.i
	ld.d	$s0, $sp, 24
	ld.w	$a4, $fp, 156
	addi.d	$a0, $a0, -2
	sltui	$a5, $a0, 1
	addi.d	$a3, $sp, 32
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(red_AssignmentEquationDeletion)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_31
# %bb.21:                               # %if.then13.i
	ld.d	$s5, $sp, 32
	beqz	$s5, .LBB1_27
# %bb.22:                               # %red_ExchangeClauses.exit.thread.i
	ld.d	$s6, $sp, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$a0, $sp, 16
	st.d	$s5, $sp, 24
	st.d	$zero, $sp, 32
	move	$s0, $s5
	b	.LBB1_28
.LBB1_23:                               # %if.then8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(split_KeepClauseAtLevel)
	jirl	$ra, $ra, 0
	b	.LBB1_25
.LBB1_24:                               # %if.else14
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
.LBB1_25:                               # %if.end17
	move	$s0, $zero
.LBB1_26:                               # %if.end17
	move	$a0, $s0
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
.LBB1_27:                               # %red_ExchangeClauses.exit.i
	beqz	$s0, .LBB1_31
.LBB1_28:                               # %land.lhs.true.i.i
	ld.w	$a0, $s0, 68
	bnez	$a0, .LBB1_31
# %bb.29:                               # %land.lhs.true1.i.i
	ld.w	$a0, $s0, 72
	bnez	$a0, .LBB1_31
# %bb.30:                               # %clause_IsEmptyClause.exit.i
	ld.w	$a0, $s0, 64
	beqz	$a0, .LBB1_81
.LBB1_31:                               # %if.end18.i
	ld.w	$a0, $s1, 364
	beqz	$a0, .LBB1_36
# %bb.32:                               # %if.then21.i
	ld.d	$s0, $sp, 24
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(red_ForwardSubsumer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 48
	move	$s5, $a0
	beqz	$a1, .LBB1_35
# %bb.33:                               # %if.then21.i
	beqz	$s5, .LBB1_35
.LBB1_34:                               # %red_ForwardSubsumption.exit.thread.i
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s5, 12
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB1_3
.LBB1_35:                               # %red_ForwardSubsumption.exit.i
	bnez	$s5, .LBB1_3
.LBB1_36:                               # %if.end27.i
	ld.w	$a0, $s1, 316
	beqz	$a0, .LBB1_38
# %bb.37:                               # %land.lhs.true30.i
	ld.d	$s0, $sp, 24
	ld.w	$a5, $fp, 132
	addi.d	$a4, $sp, 32
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_RewriteRedClause)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_40
.LBB1_38:                               # %lor.lhs.false.i
	ld.w	$a0, $s1, 324
	beqz	$a0, .LBB1_51
# %bb.39:                               # %land.lhs.true36.i
	ld.d	$s0, $sp, 24
	ld.w	$a3, $fp, 132
	addi.d	$a4, $sp, 32
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(red_ContextualRewriting)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_51
.LBB1_40:                               # %if.then40.i
	ld.d	$s5, $sp, 32
	beqz	$s5, .LBB1_42
# %bb.41:                               # %if.then.i101.i
	ld.d	$s6, $sp, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$a0, $sp, 16
	st.d	$s5, $sp, 24
	st.d	$zero, $sp, 32
.LBB1_42:                               # %red_ExchangeClauses.exit104.i
	addi.d	$a0, $sp, 24
	addi.d	$a3, $sp, 16
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(red_SimpleStaticReductions)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	bnez	$a0, .LBB1_2
# %bb.43:                               # %if.end44.i
	beqz	$s0, .LBB1_47
# %bb.44:                               # %land.lhs.true.i106.i
	ld.w	$a0, $s0, 68
	bnez	$a0, .LBB1_47
# %bb.45:                               # %land.lhs.true1.i110.i
	ld.w	$a0, $s0, 72
	bnez	$a0, .LBB1_47
# %bb.46:                               # %clause_IsEmptyClause.exit117.i
	ld.w	$a0, $s0, 64
	beqz	$a0, .LBB1_81
.LBB1_47:                               # %if.end48.i
	ld.w	$a0, $s1, 364
	beqz	$a0, .LBB1_51
# %bb.48:                               # %if.then51.i
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(red_ForwardSubsumer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 48
	move	$s5, $a0
	beqz	$a1, .LBB1_50
# %bb.49:                               # %if.then51.i
	bnez	$s5, .LBB1_34
.LBB1_50:                               # %red_ForwardSubsumption.exit
	bnez	$s5, .LBB1_3
.LBB1_51:                               # %if.end58.i
	ori	$a0, $zero, 2
	beq	$s3, $a0, .LBB1_53
# %bb.52:                               # %if.end58.i.if.end73.i_crit_edge
	ld.d	$s0, $sp, 24
	b	.LBB1_61
.LBB1_53:                               # %land.lhs.true61.i
	ld.w	$a0, $s1, 360
	ld.d	$s0, $sp, 24
	beqz	$a0, .LBB1_61
# %bb.54:                               # %if.then64.i
	ld.d	$a0, $fp, 80
	ld.w	$a2, $fp, 132
	ld.w	$a3, $s1, 36
	addi.d	$a6, $sp, 32
	move	$a1, $s0
	move	$a4, $s1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(red_SortSimplification)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 32
	beqz	$s5, .LBB1_56
# %bb.55:                               # %red_ExchangeClauses.exit127.thread.i
	ld.d	$s6, $sp, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$a0, $sp, 16
	st.d	$s5, $sp, 24
	st.d	$zero, $sp, 32
	move	$s0, $s5
	b	.LBB1_57
.LBB1_56:                               # %red_ExchangeClauses.exit127.i
	beqz	$s0, .LBB1_60
.LBB1_57:                               # %land.lhs.true.i129.i
	ld.w	$a0, $s0, 68
	bnez	$a0, .LBB1_61
# %bb.58:                               # %land.lhs.true1.i133.i
	ld.w	$a0, $s0, 72
	bnez	$a0, .LBB1_61
# %bb.59:                               # %clause_IsEmptyClause.exit140.i
	ld.w	$a0, $s0, 64
	bnez	$a0, .LBB1_61
	b	.LBB1_81
.LBB1_60:
	move	$s0, $zero
.LBB1_61:                               # %if.end73.i
	ld.w	$a0, $s1, 332
	beqz	$a0, .LBB1_69
# %bb.62:                               # %if.then76.i
	ld.w	$a5, $fp, 132
	addi.d	$a4, $sp, 32
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_MatchingReplacementResolution)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 32
	beqz	$s5, .LBB1_64
# %bb.63:                               # %red_ExchangeClauses.exit146.thread.i
	ld.d	$s6, $sp, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$a0, $sp, 16
	st.d	$s5, $sp, 24
	st.d	$zero, $sp, 32
	move	$s0, $s5
	b	.LBB1_65
.LBB1_64:                               # %red_ExchangeClauses.exit146.i
	beqz	$s0, .LBB1_68
.LBB1_65:                               # %land.lhs.true.i148.i
	ld.w	$a0, $s0, 68
	bnez	$a0, .LBB1_69
# %bb.66:                               # %land.lhs.true1.i152.i
	ld.w	$a0, $s0, 72
	bnez	$a0, .LBB1_69
# %bb.67:                               # %clause_IsEmptyClause.exit159.i
	ld.w	$a0, $s0, 64
	bnez	$a0, .LBB1_69
	b	.LBB1_81
.LBB1_68:
	move	$s0, $zero
.LBB1_69:                               # %if.end83.i
	ld.w	$a0, $s1, 344
	beqz	$a0, .LBB1_78
# %bb.70:                               # %if.then86.i
	ld.w	$a5, $fp, 132
	addi.d	$a4, $sp, 32
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_UnitConflict)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 32
	beqz	$s4, .LBB1_72
# %bb.71:                               # %red_ExchangeClauses.exit165.thread.i
	ld.d	$s5, $sp, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s5, $a0, 0
	st.d	$a0, $sp, 16
	st.d	$s4, $sp, 24
	move	$s0, $s4
	b	.LBB1_73
.LBB1_72:                               # %red_ExchangeClauses.exit165.i
	beqz	$s0, .LBB1_77
.LBB1_73:                               # %land.lhs.true.i167.i
	ld.w	$a0, $s0, 68
	bnez	$a0, .LBB1_78
# %bb.74:                               # %land.lhs.true1.i171.i
	ld.w	$a0, $s0, 72
	bnez	$a0, .LBB1_78
# %bb.75:                               # %clause_IsEmptyClause.exit178.i
	ori	$a0, $zero, 2
	bne	$s3, $a0, .LBB1_81
# %bb.76:                               # %clause_IsEmptyClause.exit178.i
	ld.w	$a0, $s0, 64
	bnez	$a0, .LBB1_79
	b	.LBB1_81
.LBB1_77:
	move	$s0, $zero
.LBB1_78:                               # %if.end93.i
	ori	$a0, $zero, 2
	bne	$s3, $a0, .LBB1_81
.LBB1_79:                               # %land.lhs.true96.i
	ld.w	$a0, $s1, 356
	beqz	$a0, .LBB1_81
# %bb.80:                               # %red_StaticReductions.exit
	ld.d	$a0, $fp, 64
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_ClauseDeletion)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_2
.LBB1_81:                               # %if.else16
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB1_26
# %bb.82:                               # %for.body.lr.ph.i14
	move	$s2, $s1
	b	.LBB1_85
	.p2align	4, , 16
.LBB1_83:                               # %if.then.i24
                                        #   in Loop: Header=BB1_85 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(split_KeepClauseAtLevel)
	jirl	$ra, $ra, 0
.LBB1_84:                               # %for.inc.i25
                                        #   in Loop: Header=BB1_85 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB1_90
.LBB1_85:                               # %for.body.i15
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 8
	ld.w	$a2, $s0, 12
	ld.w	$a0, $a1, 12
	bltu	$a0, $a2, .LBB1_83
# %bb.86:                               # %for.body.i15
                                        #   in Loop: Header=BB1_85 Depth=1
	ld.w	$a0, $fp, 132
	bltu	$a0, $a2, .LBB1_83
# %bb.87:                               # %if.else.i28
                                        #   in Loop: Header=BB1_85 Depth=1
	ld.d	$a0, $fp, 112
	ld.w	$a0, $a0, 36
	beqz	$a0, .LBB1_89
# %bb.88:                               # %if.then11.i32
                                        #   in Loop: Header=BB1_85 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(prfs_InsertDocProofClause)
	jirl	$ra, $ra, 0
	b	.LBB1_84
.LBB1_89:                               # %if.else12.i33
                                        #   in Loop: Header=BB1_85 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	b	.LBB1_84
.LBB1_90:                               # %while.body.i36.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB1_91:                               # %while.body.i36
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a2, $a0, 128
	st.d	$s1, $a2, 0
	move	$s1, $a5
	bnez	$a5, .LBB1_91
	b	.LBB1_26
.Lfunc_end1:
	.size	red_ReductionOnDerivedClause, .Lfunc_end1-red_ReductionOnDerivedClause
                                        # -- End function
	.globl	red_CompleteReductionOnDerivedClause # -- Begin function red_CompleteReductionOnDerivedClause
	.p2align	5
	.type	red_CompleteReductionOnDerivedClause,@function
red_CompleteReductionOnDerivedClause:   # @red_CompleteReductionOnDerivedClause
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	move	$a4, $a2
	move	$fp, $a0
	st.d	$a1, $sp, 32
	st.d	$zero, $sp, 16
	st.d	$zero, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 16
	pcaddu18i	$ra, %call36(red_SelectedStaticReductions)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$a0, .LBB2_17
# %bb.1:                                # %if.then
	ld.d	$s0, $sp, 32
	beqz	$s1, .LBB2_12
# %bb.2:                                # %for.body.lr.ph.i
	move	$s2, $s1
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_3:                                # %if.then.i
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(split_KeepClauseAtLevel)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %for.inc.i
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB2_10
.LBB2_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 8
	ld.w	$a2, $s0, 12
	ld.w	$a0, $a1, 12
	bltu	$a0, $a2, .LBB2_3
# %bb.6:                                # %for.body.i
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a0, $fp, 132
	bltu	$a0, $a2, .LBB2_3
# %bb.7:                                # %if.else.i
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $fp, 112
	ld.w	$a0, $a0, 36
	beqz	$a0, .LBB2_9
# %bb.8:                                # %if.then11.i
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(prfs_InsertDocProofClause)
	jirl	$ra, $ra, 0
	b	.LBB2_4
.LBB2_9:                                # %if.else12.i
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	b	.LBB2_4
.LBB2_10:                               # %while.body.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB2_11:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a2, $a0, 128
	st.d	$s1, $a2, 0
	move	$s1, $a5
	bnez	$a5, .LBB2_11
.LBB2_12:                               # %list_Delete.exit
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB2_15
# %bb.13:                               # %land.lhs.true
	ld.w	$a2, $a0, 12
	ld.w	$a0, $s0, 12
	bltu	$a0, $a2, .LBB2_28
# %bb.14:                               # %land.lhs.true
	ld.w	$a0, $fp, 132
	bltu	$a0, $a2, .LBB2_28
.LBB2_15:                               # %if.else
	ld.d	$a0, $fp, 112
	ld.w	$a0, $a0, 36
	beqz	$a0, .LBB2_29
# %bb.16:                               # %if.then13
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(prfs_InsertDocProofClause)
	jirl	$ra, $ra, 0
	b	.LBB2_30
.LBB2_17:                               # %if.else16
	ld.d	$s0, $sp, 32
	beqz	$s1, .LBB2_31
# %bb.18:                               # %for.body.lr.ph.i12
	move	$s2, $s1
	b	.LBB2_21
	.p2align	4, , 16
.LBB2_19:                               # %if.then.i22
                                        #   in Loop: Header=BB2_21 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(split_KeepClauseAtLevel)
	jirl	$ra, $ra, 0
.LBB2_20:                               # %for.inc.i23
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB2_26
.LBB2_21:                               # %for.body.i13
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 8
	ld.w	$a2, $s0, 12
	ld.w	$a0, $a1, 12
	bltu	$a0, $a2, .LBB2_19
# %bb.22:                               # %for.body.i13
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.w	$a0, $fp, 132
	bltu	$a0, $a2, .LBB2_19
# %bb.23:                               # %if.else.i26
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a0, $fp, 112
	ld.w	$a0, $a0, 36
	beqz	$a0, .LBB2_25
# %bb.24:                               # %if.then11.i30
                                        #   in Loop: Header=BB2_21 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(prfs_InsertDocProofClause)
	jirl	$ra, $ra, 0
	b	.LBB2_20
.LBB2_25:                               # %if.else12.i31
                                        #   in Loop: Header=BB2_21 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	b	.LBB2_20
.LBB2_26:                               # %while.body.i34.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB2_27:                               # %while.body.i34
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a2, $a0, 128
	st.d	$s1, $a2, 0
	move	$s1, $a5
	bnez	$a5, .LBB2_27
	b	.LBB2_31
.LBB2_28:                               # %if.then8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(split_KeepClauseAtLevel)
	jirl	$ra, $ra, 0
	b	.LBB2_30
.LBB2_29:                               # %if.else14
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
.LBB2_30:                               # %if.end17
	move	$s0, $zero
.LBB2_31:                               # %if.end17
	move	$a0, $s0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	red_CompleteReductionOnDerivedClause, .Lfunc_end2-red_CompleteReductionOnDerivedClause
                                        # -- End function
	.p2align	5                               # -- Begin function red_SelectedStaticReductions
	.type	red_SelectedStaticReductions,@function
red_SelectedStaticReductions:           # @red_SelectedStaticReductions
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$a5, $a4
	bstrins.d	$a5, $zero, 0, 0
	ori	$a6, $zero, 2
	move	$s3, $a3
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	bne	$a5, $a6, .LBB3_2
# %bb.1:                                # %if.then
	ld.d	$s5, $s0, 32
	b	.LBB3_3
.LBB3_2:
	move	$s5, $zero
.LBB3_3:                                # %if.end
	ld.d	$s1, $s0, 112
	ld.d	$s2, $s0, 104
	bstrins.d	$a4, $zero, 1, 1
	ori	$s7, $zero, 1
	bne	$a4, $s7, .LBB3_5
# %bb.4:                                # %if.then6
	ld.d	$s4, $s0, 48
	b	.LBB3_6
.LBB3_5:
	move	$s4, $zero
.LBB3_6:                                # %if.end8
	st.d	$zero, $sp, 48
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(red_SimpleStaticReductions)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_8
.LBB3_7:                                # %cleanup
	move	$a0, $s7
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB3_8:                                # %if.end12
	ld.w	$a1, $s1, 372
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	beqz	$a1, .LBB3_16
# %bb.9:                                # %land.lhs.true
	ld.d	$a0, $fp, 0
	ld.w	$a4, $s0, 156
	addi.d	$a1, $a1, -2
	sltui	$a5, $a1, 1
	addi.d	$a3, $sp, 48
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(red_AssignmentEquationDeletion)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_16
# %bb.10:                               # %if.then19
	ld.d	$s8, $sp, 48
	ld.d	$s6, $fp, 0
	beqz	$s8, .LBB3_12
# %bb.11:                               # %red_ExchangeClauses.exit.thread
	ld.d	$s4, $s3, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	st.d	$s4, $a0, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $s3, 0
	st.d	$s8, $fp, 0
	st.d	$zero, $sp, 48
	move	$s6, $s8
	b	.LBB3_13
.LBB3_12:                               # %red_ExchangeClauses.exit
	beqz	$s6, .LBB3_16
.LBB3_13:                               # %land.lhs.true.i
	ld.w	$a0, $s6, 68
	bnez	$a0, .LBB3_16
# %bb.14:                               # %land.lhs.true1.i
	ld.w	$a0, $s6, 72
	bnez	$a0, .LBB3_16
# %bb.15:                               # %clause_IsEmptyClause.exit
	ld.w	$a0, $s6, 64
	beqz	$a0, .LBB3_118
.LBB3_16:                               # %if.end24
	ld.w	$a0, $s1, 364
	beqz	$a0, .LBB3_26
# %bb.17:                               # %if.then27
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	beqz	$s5, .LBB3_21
# %bb.18:                               # %if.then30
	ld.d	$s6, $fp, 0
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(red_ForwardSubsumer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 48
	move	$s8, $a0
	beqz	$a1, .LBB3_20
# %bb.19:                               # %if.then30
	bnez	$s8, .LBB3_24
.LBB3_20:                               # %red_ForwardSubsumption.exit
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$s8, $a0, 0
	bnez	$s8, .LBB3_7
.LBB3_21:                               # %if.end36
	beqz	$s4, .LBB3_26
# %bb.22:                               # %if.then39
	ld.d	$s6, $fp, 0
	move	$a0, $s6
	move	$a1, $s4
	pcaddu18i	$ra, %call36(red_ForwardSubsumer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 48
	move	$s8, $a0
	beqz	$a1, .LBB3_25
# %bb.23:                               # %if.then39
	beqz	$s8, .LBB3_25
.LBB3_24:                               # %red_ForwardSubsumption.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	ori	$s7, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s8, 12
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$s8, $a0, 0
	b	.LBB3_7
.LBB3_25:                               # %red_ForwardSubsumption.exit183
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$s8, $a0, 0
	bnez	$s8, .LBB3_7
.LBB3_26:                               # %if.end46
	ld.w	$a0, $s1, 316
	ld.w	$s8, $s1, 324
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	or	$a0, $a0, $s8
	bnez	$a0, .LBB3_30
.LBB3_27:                               # %while.end
	ld.w	$a0, $s1, 360
	beqz	$a0, .LBB3_80
# %bb.28:                               # %if.then141
	ld.d	$a0, $s0, 80
	ld.d	$a1, $fp, 0
	ld.w	$a2, $s0, 132
	ld.w	$a3, $s1, 36
	addi.d	$a6, $sp, 48
	move	$a4, $s1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(red_SortSimplification)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 48
	ld.d	$s6, $fp, 0
	beqz	$s7, .LBB3_76
# %bb.29:                               # %red_ExchangeClauses.exit270.thread
	ld.d	$s4, $s3, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	st.d	$s4, $a0, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $s3, 0
	st.d	$s7, $fp, 0
	st.d	$zero, $sp, 48
	move	$s6, $s7
	b	.LBB3_77
.LBB3_30:                               # %while.body.lr.ph
	ori	$s6, $zero, 1
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	b	.LBB3_33
.LBB3_31:                               #   in Loop: Header=BB3_33 Depth=1
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB3_32:                               # %if.end138
                                        #   in Loop: Header=BB3_33 Depth=1
	move	$s6, $zero
	beqz	$s7, .LBB3_27
.LBB3_33:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s5, .LBB3_53
# %bb.34:                               # %land.lhs.true54
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_36
# %bb.35:                               # %land.lhs.true56
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a5, $s0, 132
	addi.d	$a4, $sp, 48
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_RewriteRedClause)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_38
.LBB3_36:                               # %lor.lhs.false
                                        #   in Loop: Header=BB3_33 Depth=1
	beqz	$s8, .LBB3_53
# %bb.37:                               # %land.lhs.true61
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a1, $fp, 0
	ld.w	$a3, $s0, 132
	ori	$a2, $zero, 2
	addi.d	$a4, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(red_ContextualRewriting)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_53
.LBB3_38:                               # %if.then65
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$s7, $sp, 48
	beqz	$s7, .LBB3_40
# %bb.39:                               # %if.then.i187
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$s4, $fp, 0
	ld.d	$s8, $s3, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	st.d	$s8, $a0, 0
	st.d	$a0, $s3, 0
	st.d	$s7, $fp, 0
	st.d	$zero, $sp, 48
.LBB3_40:                               # %red_ExchangeClauses.exit190
                                        #   in Loop: Header=BB3_33 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	move	$s8, $s3
	move	$a3, $s3
	pcaddu18i	$ra, %call36(red_SimpleStaticReductions)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_89
# %bb.41:                               # %if.end69
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB3_45
# %bb.42:                               # %land.lhs.true.i192
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.w	$a1, $a0, 68
	bnez	$a1, .LBB3_45
# %bb.43:                               # %land.lhs.true1.i196
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.w	$a1, $a0, 72
	bnez	$a1, .LBB3_45
# %bb.44:                               # %clause_IsEmptyClause.exit203
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.w	$a0, $a0, 64
	beqz	$a0, .LBB3_118
	.p2align	4, , 16
.LBB3_45:                               # %if.end73
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.w	$a0, $s1, 364
	beqz	$a0, .LBB3_74
# %bb.46:                               # %if.then76
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ld.d	$s6, $fp, 0
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(red_ForwardSubsumer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 48
	beqz	$a1, .LBB3_48
# %bb.47:                               # %if.then76
                                        #   in Loop: Header=BB3_33 Depth=1
	bnez	$a0, .LBB3_90
.LBB3_48:                               # %red_ForwardSubsumption.exit214
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	bnez	$a0, .LBB3_89
# %bb.49:                               # %if.end81
                                        #   in Loop: Header=BB3_33 Depth=1
	beqz	$s4, .LBB3_75
# %bb.50:                               # %if.then84
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$s6, $fp, 0
	move	$a0, $s6
	move	$a1, $s4
	pcaddu18i	$ra, %call36(red_ForwardSubsumer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 48
	move	$s3, $s8
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB3_52
# %bb.51:                               # %if.then84
                                        #   in Loop: Header=BB3_33 Depth=1
	bnez	$a0, .LBB3_90
.LBB3_52:                               # %red_ForwardSubsumption.exit224
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ori	$s7, $zero, 1
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB3_55
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_53:                               #   in Loop: Header=BB3_33 Depth=1
	move	$a0, $zero
	move	$s7, $zero
	beqz	$s4, .LBB3_32
.LBB3_54:                               # %land.lhs.true95
                                        #   in Loop: Header=BB3_33 Depth=1
	or	$a0, $s6, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB3_27
.LBB3_55:                               # %land.lhs.true99
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_57
# %bb.56:                               # %land.lhs.true101
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a5, $s0, 132
	addi.d	$a4, $sp, 48
	move	$a1, $s4
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_RewriteRedClause)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_59
.LBB3_57:                               # %lor.lhs.false105
                                        #   in Loop: Header=BB3_33 Depth=1
	beqz	$s8, .LBB3_32
# %bb.58:                               # %land.lhs.true107
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a1, $fp, 0
	ld.w	$a3, $s0, 132
	ori	$a2, $zero, 1
	addi.d	$a4, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(red_ContextualRewriting)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_32
.LBB3_59:                               # %if.then111
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$s6, $sp, 48
	beqz	$s6, .LBB3_61
# %bb.60:                               # %if.then.i226
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$s4, $fp, 0
	ld.d	$s7, $s3, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	st.d	$s7, $a0, 0
	st.d	$a0, $s3, 0
	st.d	$s6, $fp, 0
	st.d	$zero, $sp, 48
.LBB3_61:                               # %red_ExchangeClauses.exit229
                                        #   in Loop: Header=BB3_33 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(red_SimpleStaticReductions)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_89
# %bb.62:                               # %if.end115
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB3_66
# %bb.63:                               # %land.lhs.true.i231
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.w	$a1, $a0, 68
	bnez	$a1, .LBB3_66
# %bb.64:                               # %land.lhs.true1.i235
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.w	$a1, $a0, 72
	bnez	$a1, .LBB3_66
# %bb.65:                               # %clause_IsEmptyClause.exit242
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.w	$a0, $a0, 64
	beqz	$a0, .LBB3_118
	.p2align	4, , 16
.LBB3_66:                               # %if.end119
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.w	$a0, $s1, 364
	beqz	$a0, .LBB3_31
# %bb.67:                               # %if.then122
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	beqz	$s5, .LBB3_71
# %bb.68:                               # %if.then125
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$s6, $fp, 0
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(red_ForwardSubsumer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 48
	beqz	$a1, .LBB3_70
# %bb.69:                               # %if.then125
                                        #   in Loop: Header=BB3_33 Depth=1
	bnez	$a0, .LBB3_90
.LBB3_70:                               # %if.end127
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	bnez	$a0, .LBB3_89
.LBB3_71:                               # %if.end131
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$s6, $fp, 0
	move	$a0, $s6
	move	$a1, $s4
	pcaddu18i	$ra, %call36(red_ForwardSubsumer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 48
	beqz	$a1, .LBB3_73
# %bb.72:                               # %if.end131
                                        #   in Loop: Header=BB3_33 Depth=1
	bnez	$a0, .LBB3_90
.LBB3_73:                               # %red_ForwardSubsumption.exit263
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ori	$s7, $zero, 1
	beqz	$a0, .LBB3_32
	b	.LBB3_7
.LBB3_74:                               #   in Loop: Header=BB3_33 Depth=1
	ori	$a0, $zero, 1
	ori	$s7, $zero, 1
	move	$s3, $s8
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	bnez	$s4, .LBB3_54
	b	.LBB3_32
.LBB3_75:                               #   in Loop: Header=BB3_33 Depth=1
	ori	$s7, $zero, 1
	move	$s3, $s8
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	b	.LBB3_32
.LBB3_76:                               # %red_ExchangeClauses.exit270
	beqz	$s6, .LBB3_80
.LBB3_77:                               # %land.lhs.true.i272
	ld.w	$a0, $s6, 68
	bnez	$a0, .LBB3_80
# %bb.78:                               # %land.lhs.true1.i276
	ld.w	$a0, $s6, 72
	bnez	$a0, .LBB3_80
# %bb.79:                               # %clause_IsEmptyClause.exit283
	ld.w	$a0, $s6, 64
	beqz	$a0, .LBB3_118
.LBB3_80:                               # %if.end150
	ld.w	$a0, $s1, 332
	beqz	$a0, .LBB3_99
# %bb.81:                               # %if.then153
	beqz	$s5, .LBB3_83
# %bb.82:                               # %if.then155
	ld.d	$a0, $fp, 0
	ld.w	$a5, $s0, 132
	addi.d	$a4, $sp, 48
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_MatchingReplacementResolution)
	jirl	$ra, $ra, 0
.LBB3_83:                               # %if.end158
	ld.d	$s7, $sp, 48
	ld.d	$s6, $fp, 0
	beqz	$s7, .LBB3_85
# %bb.84:                               # %red_ExchangeClauses.exit289.thread
	ld.d	$s4, $s3, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	st.d	$s4, $a0, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $s3, 0
	st.d	$s7, $fp, 0
	st.d	$zero, $sp, 48
	move	$s6, $s7
	b	.LBB3_86
.LBB3_85:                               # %red_ExchangeClauses.exit289
	beqz	$s6, .LBB3_91
.LBB3_86:                               # %land.lhs.true.i291
	ld.w	$a0, $s6, 68
	bnez	$a0, .LBB3_92
# %bb.87:                               # %land.lhs.true1.i295
	ld.w	$a0, $s6, 72
	bnez	$a0, .LBB3_92
# %bb.88:                               # %clause_IsEmptyClause.exit302
	ld.w	$a0, $s6, 64
	bnez	$a0, .LBB3_92
	b	.LBB3_118
.LBB3_89:
	ori	$s7, $zero, 1
	b	.LBB3_7
.LBB3_90:                               # %red_ForwardSubsumption.exit214.thread
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a4, $a1, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	ori	$s7, $zero, 1
	move	$fp, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.w	$a2, $fp, 12
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$fp, $a0, 0
	b	.LBB3_7
.LBB3_91:
	move	$s6, $zero
.LBB3_92:                               # %if.end162
	beqz	$s4, .LBB3_95
# %bb.93:                               # %if.end167
	ld.w	$a5, $s0, 132
	addi.d	$a4, $sp, 48
	move	$a0, $s6
	move	$a1, $s4
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_MatchingReplacementResolution)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 48
	beqz	$s6, .LBB3_95
# %bb.94:                               # %red_ExchangeClauses.exit307.thread
	ld.d	$s4, $fp, 0
	ld.d	$s7, $s3, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	st.d	$s7, $a0, 0
	st.d	$a0, $s3, 0
	st.d	$s6, $fp, 0
	st.d	$zero, $sp, 48
	b	.LBB3_96
.LBB3_95:                               # %red_ExchangeClauses.exit307
	ld.d	$s6, $fp, 0
	beqz	$s6, .LBB3_99
.LBB3_96:                               # %land.lhs.true.i309
	ld.w	$a0, $s6, 68
	bnez	$a0, .LBB3_99
# %bb.97:                               # %land.lhs.true1.i313
	ld.w	$a0, $s6, 72
	bnez	$a0, .LBB3_99
# %bb.98:                               # %clause_IsEmptyClause.exit320
	ld.w	$a0, $s6, 64
	beqz	$a0, .LBB3_118
.LBB3_99:                               # %if.end172
	ld.w	$a0, $s1, 344
	beqz	$a0, .LBB3_116
# %bb.100:                              # %if.then175
	beqz	$s5, .LBB3_102
# %bb.101:                              # %if.then177
	ld.d	$a0, $fp, 0
	ld.w	$a5, $s0, 132
	addi.d	$a4, $sp, 48
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_UnitConflict)
	jirl	$ra, $ra, 0
.LBB3_102:                              # %if.end180
	ld.d	$s6, $sp, 48
	ld.d	$s5, $fp, 0
	beqz	$s6, .LBB3_104
# %bb.103:                              # %red_ExchangeClauses.exit326.thread
	ld.d	$s4, $s3, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s4, $a0, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $s3, 0
	st.d	$s6, $fp, 0
	st.d	$zero, $sp, 48
	move	$s5, $s6
	b	.LBB3_105
.LBB3_104:                              # %red_ExchangeClauses.exit326
	beqz	$s5, .LBB3_108
.LBB3_105:                              # %land.lhs.true.i328
	ld.w	$a0, $s5, 68
	bnez	$a0, .LBB3_109
# %bb.106:                              # %land.lhs.true1.i332
	ld.w	$a0, $s5, 72
	bnez	$a0, .LBB3_109
# %bb.107:                              # %clause_IsEmptyClause.exit339
	ld.w	$a0, $s5, 64
	bnez	$a0, .LBB3_109
	b	.LBB3_118
.LBB3_108:
	move	$s5, $zero
.LBB3_109:                              # %if.end184
	beqz	$s4, .LBB3_112
# %bb.110:                              # %if.end189
	ld.w	$a5, $s0, 132
	addi.d	$a4, $sp, 48
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_UnitConflict)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 48
	beqz	$s4, .LBB3_112
# %bb.111:                              # %red_ExchangeClauses.exit344.thread
	ld.d	$s5, $fp, 0
	ld.d	$s6, $s3, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$a0, $s3, 0
	st.d	$s4, $fp, 0
	b	.LBB3_113
.LBB3_112:                              # %red_ExchangeClauses.exit344
	ld.d	$s4, $fp, 0
	beqz	$s4, .LBB3_116
.LBB3_113:                              # %land.lhs.true.i346
	ld.w	$a0, $s4, 68
	bnez	$a0, .LBB3_116
# %bb.114:                              # %land.lhs.true1.i350
	ld.w	$a0, $s4, 72
	bnez	$a0, .LBB3_116
# %bb.115:                              # %clause_IsEmptyClause.exit357
	ld.w	$a0, $s4, 64
	beqz	$a0, .LBB3_118
.LBB3_116:                              # %if.end194
	ld.w	$a0, $s1, 356
	beqz	$a0, .LBB3_118
# %bb.117:                              # %if.then197
	ld.d	$a0, $s0, 64
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	move	$a3, $s2
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	pcaddu18i	$t8, %call36(red_ClauseDeletion)
	jr	$t8
.LBB3_118:
	move	$s7, $zero
	b	.LBB3_7
.Lfunc_end3:
	.size	red_SelectedStaticReductions, .Lfunc_end3-red_SelectedStaticReductions
                                        # -- End function
	.globl	red_BackReduction               # -- Begin function red_BackReduction
	.p2align	5
	.type	red_BackReduction,@function
red_BackReduction:                      # @red_BackReduction
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s2, $a0, 112
	ld.w	$a0, $s2, 368
	ld.d	$s3, $fp, 104
	move	$s1, $a2
	move	$s0, $a1
	st.d	$zero, $sp, 16
	beqz	$a0, .LBB4_14
# %bb.1:                                # %if.then
	move	$a0, $s1
	bstrins.d	$a0, $zero, 0, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_3
# %bb.2:                                # %if.then7
	ld.d	$a1, $fp, 32
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(red_BackSubsumption)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	bstrins.d	$a0, $zero, 1, 1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_4
	b	.LBB4_11
.LBB4_3:
	move	$s4, $zero
	move	$a0, $s1
	bstrins.d	$a0, $zero, 1, 1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_11
.LBB4_4:                                # %if.then12
	ld.d	$a1, $fp, 48
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(red_BackSubsumption)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB4_10
# %bb.5:                                # %if.end.i
	beqz	$a0, .LBB4_9
# %bb.6:                                # %for.cond.i.preheader
	move	$a2, $s4
	.p2align	4, , 16
.LBB4_7:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB4_7
# %bb.8:                                # %for.end.i
	st.d	$a0, $a1, 0
.LBB4_9:                                # %if.end16.thread
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(red_HandleRedundantIndexedClauses)
	jirl	$ra, $ra, 0
	b	.LBB4_12
.LBB4_10:
	move	$s4, $a0
.LBB4_11:                               # %if.end16
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(red_HandleRedundantIndexedClauses)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB4_14
.LBB4_12:                               # %while.body.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB4_13:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s4, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s4, 0
	ld.d	$a2, $a0, 128
	st.d	$s4, $a2, 0
	move	$s4, $a5
	bnez	$a5, .LBB4_13
.LBB4_14:                               # %if.end17
	ld.w	$a0, $s2, 336
	beqz	$a0, .LBB4_28
# %bb.15:                               # %if.then20
	move	$a0, $s1
	bstrins.d	$a0, $zero, 0, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_17
# %bb.16:                               # %if.then24
	ld.d	$a1, $fp, 32
	addi.d	$a4, $sp, 16
	move	$a0, $s0
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(red_BackMatchingReplacementResolution)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	bstrins.d	$a0, $zero, 1, 1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_18
	b	.LBB4_25
.LBB4_17:
	move	$s4, $zero
	move	$a0, $s1
	bstrins.d	$a0, $zero, 1, 1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_25
.LBB4_18:                               # %if.then30
	ld.d	$a1, $fp, 48
	addi.d	$a4, $sp, 16
	move	$a0, $s0
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(red_BackMatchingReplacementResolution)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB4_24
# %bb.19:                               # %if.end.i70
	beqz	$a0, .LBB4_23
# %bb.20:                               # %for.cond.i72.preheader
	move	$a2, $s4
	.p2align	4, , 16
.LBB4_21:                               # %for.cond.i72
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB4_21
# %bb.22:                               # %for.end.i76
	st.d	$a0, $a1, 0
.LBB4_23:                               # %if.end34.thread
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(red_HandleRedundantIndexedClauses)
	jirl	$ra, $ra, 0
	b	.LBB4_26
.LBB4_24:
	move	$s4, $a0
.LBB4_25:                               # %if.end34
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(red_HandleRedundantIndexedClauses)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB4_28
.LBB4_26:                               # %while.body.i80.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB4_27:                               # %while.body.i80
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s4, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s4, 0
	ld.d	$a2, $a0, 128
	st.d	$s4, $a2, 0
	move	$s4, $a5
	bnez	$a5, .LBB4_27
.LBB4_28:                               # %if.end35
	ld.w	$a0, $s2, 320
	beqz	$a0, .LBB4_42
# %bb.29:                               # %if.then38
	move	$a0, $s1
	bstrins.d	$a0, $zero, 0, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_31
# %bb.30:                               # %if.then42
	ld.d	$a1, $fp, 32
	addi.d	$a4, $sp, 16
	move	$a0, $s0
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(red_BackRewriting)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	bstrins.d	$a0, $zero, 1, 1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_32
	b	.LBB4_39
.LBB4_31:
	move	$s4, $zero
	move	$a0, $s1
	bstrins.d	$a0, $zero, 1, 1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_39
.LBB4_32:                               # %if.then48
	ld.d	$a1, $fp, 48
	addi.d	$a4, $sp, 16
	move	$a0, $s0
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(red_BackRewriting)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB4_38
# %bb.33:                               # %if.end.i92
	beqz	$a0, .LBB4_37
# %bb.34:                               # %for.cond.i94.preheader
	move	$a2, $s4
	.p2align	4, , 16
.LBB4_35:                               # %for.cond.i94
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB4_35
# %bb.36:                               # %for.end.i98
	st.d	$a0, $a1, 0
.LBB4_37:                               # %if.end52.thread
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(red_HandleRedundantIndexedClauses)
	jirl	$ra, $ra, 0
	b	.LBB4_40
.LBB4_38:
	move	$s4, $a0
.LBB4_39:                               # %if.end52
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(red_HandleRedundantIndexedClauses)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB4_42
.LBB4_40:                               # %while.body.i102.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB4_41:                               # %while.body.i102
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s4, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s4, 0
	ld.d	$a2, $a0, 128
	st.d	$s4, $a2, 0
	move	$s4, $a5
	bnez	$a5, .LBB4_41
.LBB4_42:                               # %if.end53
	ld.w	$a0, $s2, 328
	beqz	$a0, .LBB4_56
# %bb.43:                               # %if.then56
	move	$a0, $s1
	bstrins.d	$a0, $zero, 0, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_45
# %bb.44:                               # %if.then60
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(red_BackContextualRewriting)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bstrins.d	$s1, $zero, 1, 1
	ori	$a0, $zero, 1
	beq	$s1, $a0, .LBB4_46
	b	.LBB4_53
.LBB4_45:
	move	$s2, $zero
	bstrins.d	$s1, $zero, 1, 1
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB4_53
.LBB4_46:                               # %if.then65
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(red_BackContextualRewriting)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB4_52
# %bb.47:                               # %if.end.i114
	beqz	$a0, .LBB4_51
# %bb.48:                               # %for.cond.i116.preheader
	move	$a2, $s2
	.p2align	4, , 16
.LBB4_49:                               # %for.cond.i116
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB4_49
# %bb.50:                               # %for.end.i120
	st.d	$a0, $a1, 0
.LBB4_51:                               # %if.end68.thread
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(red_HandleRedundantIndexedClauses)
	jirl	$ra, $ra, 0
	b	.LBB4_54
.LBB4_52:
	move	$s2, $a0
.LBB4_53:                               # %if.end68
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(red_HandleRedundantIndexedClauses)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB4_56
.LBB4_54:                               # %while.body.i124.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB4_55:                               # %while.body.i124
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s2, 0
	ld.d	$a2, $a0, 128
	st.d	$s2, $a2, 0
	move	$s2, $a5
	bnez	$a5, .LBB4_55
.LBB4_56:                               # %if.end69
	ld.d	$a0, $sp, 16
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end4:
	.size	red_BackReduction, .Lfunc_end4-red_BackReduction
                                        # -- End function
	.p2align	5                               # -- Begin function red_BackSubsumption
	.type	red_BackSubsumption,@function
red_BackSubsumption:                    # @red_BackSubsumption
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	beqz	$a0, .LBB5_5
# %bb.1:                                # %land.lhs.true.i
	ld.w	$a5, $fp, 68
	bnez	$a5, .LBB5_6
# %bb.2:                                # %land.lhs.true1.i
	ld.w	$a0, $fp, 72
	bnez	$a0, .LBB5_4
# %bb.3:                                # %clause_IsEmptyClause.exit
	ld.w	$a0, $fp, 64
	beqz	$a0, .LBB5_80
.LBB5_4:
	move	$a5, $zero
	b	.LBB5_6
.LBB5_5:                                # %entry.if.end_crit_edge
	ld.w	$a5, $zero, 68
.LBB5_6:                                # %if.end
	ld.w	$s0, $fp, 64
	ld.w	$a3, $fp, 72
	addi.w	$s7, $s0, -1
	add.w	$s3, $s7, $a5
	ld.d	$a0, $fp, 56
	add.w	$a4, $s3, $a3
	ori	$a1, $zero, 1
	add.w	$s8, $a5, $s0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s2, $zero
	blt	$a4, $a1, .LBB5_9
# %bb.7:                                # %for.body.lr.ph
	add.d	$a2, $s8, $a3
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB5_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	slli.d	$a5, $s2, 3
	ldx.d	$a5, $a0, $a5
	ld.w	$a4, $a4, 4
	ld.w	$a5, $a5, 4
	sltu	$a4, $a5, $a4
	masknez	$a5, $s2, $a4
	maskeqz	$a4, $a1, $a4
	or	$s2, $a4, $a5
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB5_8
.LBB5_9:                                # %for.end
	slli.d	$a2, $s2, 3
	ldx.d	$a0, $a0, $a2
	ld.d	$s4, $a0, 24
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $s4, 0
	ld.w	$a0, $a0, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bne	$a1, $a0, .LBB5_11
# %bb.10:                               # %if.then.i.i
	ld.d	$a0, $s4, 16
	ld.d	$s4, $a0, 8
.LBB5_11:                               # %clause_GetLiteralAtom.exit
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s5, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s1, 0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(st_ExistInstance)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $zero
	beqz	$a0, .LBB5_40
# %bb.12:                               # %while.body.lr.ph
	slt	$a1, $s2, $s0
	slt	$a2, $s3, $s2
	or	$s3, $a1, $a2
	b	.LBB5_14
	.p2align	4, , 16
.LBB5_13:                               # %for.end56
                                        #   in Loop: Header=BB5_14 Depth=1
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_40
.LBB5_14:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_17 Depth 2
                                        #       Child Loop BB5_18 Depth 3
                                        #       Child Loop BB5_22 Depth 3
                                        #       Child Loop BB5_31 Depth 3
                                        #       Child Loop BB5_27 Depth 3
                                        #       Child Loop BB5_36 Depth 3
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_13
# %bb.15:                               # %for.body25.preheader
                                        #   in Loop: Header=BB5_14 Depth=1
	move	$s5, $a0
	b	.LBB5_17
	.p2align	4, , 16
.LBB5_16:                               # %for.inc54
                                        #   in Loop: Header=BB5_17 Depth=2
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB5_13
.LBB5_17:                               # %for.body25
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_18 Depth 3
                                        #       Child Loop BB5_22 Depth 3
                                        #       Child Loop BB5_31 Depth 3
                                        #       Child Loop BB5_27 Depth 3
                                        #       Child Loop BB5_36 Depth 3
	ld.d	$a0, $s5, 8
	ld.d	$s6, $a0, 16
	ld.d	$a1, $s6, 56
	move	$a2, $a1
	addi.d	$a3, $zero, -1
	.p2align	4, , 16
.LBB5_18:                               # %while.cond.i
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a2, 0
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	bne	$a4, $a0, .LBB5_18
# %bb.19:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB5_17 Depth=2
	beq	$fp, $s6, .LBB5_16
# %bb.20:                               # %land.lhs.true
                                        #   in Loop: Header=BB5_17 Depth=2
	blt	$s7, $s2, .LBB5_24
# %bb.21:                               # %while.cond.i.i.preheader
                                        #   in Loop: Header=BB5_17 Depth=2
	addi.d	$a2, $zero, -1
	move	$a4, $a1
	.p2align	4, , 16
.LBB5_22:                               # %while.cond.i.i
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a4, 0
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	bne	$a5, $a0, .LBB5_22
# %bb.23:                               # %clause_LiteralIsFromConstraint.exit
                                        #   in Loop: Header=BB5_17 Depth=2
	ld.w	$a4, $s6, 64
	blt	$a2, $a4, .LBB5_34
.LBB5_24:                               # %lor.lhs.false
                                        #   in Loop: Header=BB5_17 Depth=2
	beqz	$s3, .LBB5_30
.LBB5_25:                               # %lor.lhs.false40
                                        #   in Loop: Header=BB5_17 Depth=2
	blt	$s2, $s8, .LBB5_16
# %bb.26:                               # %while.cond.i.i116.preheader
                                        #   in Loop: Header=BB5_17 Depth=2
	addi.d	$a2, $zero, -1
	.p2align	4, , 16
.LBB5_27:                               # %while.cond.i.i116
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a1, 0
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bne	$a4, $a0, .LBB5_27
# %bb.28:                               # %clause_LiteralIsFromSuccedent.exit
                                        #   in Loop: Header=BB5_17 Depth=2
	ld.w	$a0, $s6, 64
	ld.w	$a1, $s6, 68
	add.w	$a0, $a1, $a0
	blt	$a2, $a0, .LBB5_16
# %bb.29:                               # %clause_LiteralIsFromSuccedent.exit
                                        #   in Loop: Header=BB5_17 Depth=2
	ld.w	$a1, $s6, 72
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	bge	$a0, $a2, .LBB5_34
	b	.LBB5_16
	.p2align	4, , 16
.LBB5_30:                               # %while.cond.i.i106.preheader
                                        #   in Loop: Header=BB5_17 Depth=2
	addi.d	$a2, $zero, -1
	move	$a4, $a1
	.p2align	4, , 16
.LBB5_31:                               # %while.cond.i.i106
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a4, 0
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	bne	$a5, $a0, .LBB5_31
# %bb.32:                               # %clause_LiteralIsFromAntecedent.exit
                                        #   in Loop: Header=BB5_17 Depth=2
	ld.w	$a4, $s6, 64
	blt	$a2, $a4, .LBB5_25
# %bb.33:                               # %clause_LiteralIsFromAntecedent.exit
                                        #   in Loop: Header=BB5_17 Depth=2
	ld.w	$a5, $s6, 68
	add.d	$a4, $a4, $a5
	addi.w	$a4, $a4, -1
	blt	$a4, $a2, .LBB5_25
.LBB5_34:                               # %land.lhs.true45
                                        #   in Loop: Header=BB5_17 Depth=2
	beqz	$s1, .LBB5_38
# %bb.35:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB5_17 Depth=2
	move	$a0, $s1
	.p2align	4, , 16
.LBB5_36:                               # %while.body.i
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a0, 8
	beq	$s6, $a1, .LBB5_16
# %bb.37:                               # %if.end.i
                                        #   in Loop: Header=BB5_36 Depth=3
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB5_36
.LBB5_38:                               # %land.lhs.true48
                                        #   in Loop: Header=BB5_17 Depth=2
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(subs_SubsumesBasic)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_16
# %bb.39:                               # %if.then51
                                        #   in Loop: Header=BB5_17 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	st.d	$s1, $a0, 0
	move	$s1, $a0
	b	.LBB5_16
.LBB5_40:                               # %while.end
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	ld.w	$s5, $s4, 0
	ld.w	$a0, $a0, 0
	bne	$s5, $a0, .LBB5_75
# %bb.41:                               # %land.lhs.true60
	ld.d	$a0, $fp, 56
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.w	$a0, $a0, 8
	bnez	$a0, .LBB5_75
# %bb.42:                               # %if.then64
	ld.d	$a0, $s4, 16
	pcaddu18i	$ra, %call36(list_Reverse)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s6, $a0
	move	$a0, $a2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(st_ExistInstance)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_71
# %bb.43:                               # %while.body74.lr.ph
	slt	$a1, $s2, $s0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	slt	$a2, $a2, $s2
	or	$s0, $a1, $a2
	b	.LBB5_45
	.p2align	4, , 16
.LBB5_44:                               # %for.end115
                                        #   in Loop: Header=BB5_45 Depth=1
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_71
.LBB5_45:                               # %while.body74
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_48 Depth 2
                                        #       Child Loop BB5_49 Depth 3
                                        #       Child Loop BB5_53 Depth 3
                                        #       Child Loop BB5_62 Depth 3
                                        #       Child Loop BB5_58 Depth 3
                                        #       Child Loop BB5_67 Depth 3
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_44
# %bb.46:                               # %for.body80.preheader
                                        #   in Loop: Header=BB5_45 Depth=1
	move	$s4, $a0
	b	.LBB5_48
	.p2align	4, , 16
.LBB5_47:                               # %for.inc113
                                        #   in Loop: Header=BB5_48 Depth=2
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB5_44
.LBB5_48:                               # %for.body80
                                        #   Parent Loop BB5_45 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_49 Depth 3
                                        #       Child Loop BB5_53 Depth 3
                                        #       Child Loop BB5_62 Depth 3
                                        #       Child Loop BB5_58 Depth 3
                                        #       Child Loop BB5_67 Depth 3
	ld.d	$a0, $s4, 8
	ld.d	$s5, $a0, 16
	ld.d	$a1, $s5, 56
	move	$a2, $a1
	addi.d	$a3, $zero, -1
	.p2align	4, , 16
.LBB5_49:                               # %while.cond.i137
                                        #   Parent Loop BB5_45 Depth=1
                                        #     Parent Loop BB5_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a2, 0
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	bne	$a4, $a0, .LBB5_49
# %bb.50:                               # %clause_LiteralGetIndex.exit142
                                        #   in Loop: Header=BB5_48 Depth=2
	beq	$fp, $s5, .LBB5_47
# %bb.51:                               # %land.lhs.true87
                                        #   in Loop: Header=BB5_48 Depth=2
	blt	$s7, $s2, .LBB5_55
# %bb.52:                               # %while.cond.i.i145.preheader
                                        #   in Loop: Header=BB5_48 Depth=2
	addi.d	$a2, $zero, -1
	move	$a4, $a1
	.p2align	4, , 16
.LBB5_53:                               # %while.cond.i.i145
                                        #   Parent Loop BB5_45 Depth=1
                                        #     Parent Loop BB5_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a4, 0
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	bne	$a5, $a0, .LBB5_53
# %bb.54:                               # %clause_LiteralIsFromConstraint.exit153
                                        #   in Loop: Header=BB5_48 Depth=2
	ld.w	$a4, $s5, 64
	blt	$a2, $a4, .LBB5_65
.LBB5_55:                               # %lor.lhs.false92
                                        #   in Loop: Header=BB5_48 Depth=2
	beqz	$s0, .LBB5_61
.LBB5_56:                               # %lor.lhs.false99
                                        #   in Loop: Header=BB5_48 Depth=2
	blt	$s2, $s8, .LBB5_47
# %bb.57:                               # %while.cond.i.i172.preheader
                                        #   in Loop: Header=BB5_48 Depth=2
	addi.d	$a2, $zero, -1
	.p2align	4, , 16
.LBB5_58:                               # %while.cond.i.i172
                                        #   Parent Loop BB5_45 Depth=1
                                        #     Parent Loop BB5_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a1, 0
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bne	$a4, $a0, .LBB5_58
# %bb.59:                               # %clause_LiteralIsFromSuccedent.exit187
                                        #   in Loop: Header=BB5_48 Depth=2
	ld.w	$a0, $s5, 64
	ld.w	$a1, $s5, 68
	add.w	$a0, $a1, $a0
	blt	$a2, $a0, .LBB5_47
# %bb.60:                               # %clause_LiteralIsFromSuccedent.exit187
                                        #   in Loop: Header=BB5_48 Depth=2
	ld.w	$a1, $s5, 72
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	bge	$a0, $a2, .LBB5_65
	b	.LBB5_47
	.p2align	4, , 16
.LBB5_61:                               # %while.cond.i.i156.preheader
                                        #   in Loop: Header=BB5_48 Depth=2
	addi.d	$a2, $zero, -1
	move	$a4, $a1
	.p2align	4, , 16
.LBB5_62:                               # %while.cond.i.i156
                                        #   Parent Loop BB5_45 Depth=1
                                        #     Parent Loop BB5_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a4, 0
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	bne	$a5, $a0, .LBB5_62
# %bb.63:                               # %clause_LiteralIsFromAntecedent.exit169
                                        #   in Loop: Header=BB5_48 Depth=2
	ld.w	$a4, $s5, 64
	blt	$a2, $a4, .LBB5_56
# %bb.64:                               # %clause_LiteralIsFromAntecedent.exit169
                                        #   in Loop: Header=BB5_48 Depth=2
	ld.w	$a5, $s5, 68
	add.d	$a4, $a4, $a5
	addi.w	$a4, $a4, -1
	blt	$a4, $a2, .LBB5_56
.LBB5_65:                               # %land.lhs.true104
                                        #   in Loop: Header=BB5_48 Depth=2
	beqz	$s1, .LBB5_69
# %bb.66:                               # %while.body.i189.preheader
                                        #   in Loop: Header=BB5_48 Depth=2
	move	$a0, $s1
	.p2align	4, , 16
.LBB5_67:                               # %while.body.i189
                                        #   Parent Loop BB5_45 Depth=1
                                        #     Parent Loop BB5_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a0, 8
	beq	$s5, $a1, .LBB5_47
# %bb.68:                               # %if.end.i193
                                        #   in Loop: Header=BB5_67 Depth=3
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB5_67
.LBB5_69:                               # %land.lhs.true107
                                        #   in Loop: Header=BB5_48 Depth=2
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(subs_SubsumesBasic)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_47
# %bb.70:                               # %if.then110
                                        #   in Loop: Header=BB5_48 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s1, $a0, 0
	move	$s1, $a0
	b	.LBB5_47
.LBB5_71:                               # %while.end117
	ld.d	$a0, $s6, 16
	beqz	$a0, .LBB5_74
# %bb.72:                               # %while.body.i201.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB5_73:                               # %while.body.i201
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB5_73
.LBB5_74:                               # %list_Delete.exit
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 256
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 256
	st.d	$s6, $a0, 0
.LBB5_75:                               # %if.end119
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 48
	beqz	$a0, .LBB5_79
# %bb.76:                               # %if.end119
	beqz	$s1, .LBB5_79
# %bb.77:                               # %for.body127.preheader
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s4, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$s0, $a0, %pc_lo12(.L.str.40)
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$s2, $a0, %pc_lo12(.L.str.41)
	move	$s5, $s1
	.p2align	4, , 16
.LBB5_78:                               # %for.body127
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s5, 8
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 0
	bnez	$s5, .LBB5_78
.LBB5_79:                               # %cleanup
	move	$a0, $s1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB5_80:
	move	$s1, $zero
	b	.LBB5_79
.Lfunc_end5:
	.size	red_BackSubsumption, .Lfunc_end5-red_BackSubsumption
                                        # -- End function
	.p2align	5                               # -- Begin function red_HandleRedundantIndexedClauses
	.type	red_HandleRedundantIndexedClauses,@function
red_HandleRedundantIndexedClauses:      # @red_HandleRedundantIndexedClauses
# %bb.0:                                # %entry
	beqz	$a1, .LBB6_14
# %bb.1:                                # %for.body.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ld.d	$s2, $a0, 112
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_2:                                # %if.then
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(split_DeleteClauseAtLevel)
	jirl	$ra, $ra, 0
.LBB6_3:                                # %for.inc
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB6_13
.LBB6_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	ld.w	$a2, $fp, 12
	ld.w	$a0, $a1, 12
	bltu	$a0, $a2, .LBB6_2
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.w	$a0, $s1, 132
	bltu	$a0, $a2, .LBB6_2
# %bb.6:                                # %if.else
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.bu	$a2, $a1, 48
	ld.w	$a0, $s2, 36
	andi	$a2, $a2, 1
	bnez	$a2, .LBB6_9
# %bb.7:                                # %if.else16
                                        #   in Loop: Header=BB6_4 Depth=1
	beqz	$a0, .LBB6_11
# %bb.8:                                # %if.then19
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(prfs_MoveUsableDocProof)
	jirl	$ra, $ra, 0
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_9:                                # %if.then11
                                        #   in Loop: Header=BB6_4 Depth=1
	beqz	$a0, .LBB6_12
# %bb.10:                               # %if.then14
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(prfs_MoveWorkedOffDocProof)
	jirl	$ra, $ra, 0
	b	.LBB6_3
.LBB6_11:                               # %if.else20
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(prfs_DeleteUsable)
	jirl	$ra, $ra, 0
	b	.LBB6_3
.LBB6_12:                               # %if.else15
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(prfs_DeleteWorkedOff)
	jirl	$ra, $ra, 0
	b	.LBB6_3
.LBB6_13:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB6_14:                               # %for.end
	ret
.Lfunc_end6:
	.size	red_HandleRedundantIndexedClauses, .Lfunc_end6-red_HandleRedundantIndexedClauses
                                        # -- End function
	.p2align	5                               # -- Begin function red_BackMatchingReplacementResolution
	.type	red_BackMatchingReplacementResolution,@function
red_BackMatchingReplacementResolution:  # @red_BackMatchingReplacementResolution
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
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a5, $fp, 68
	ld.w	$a6, $fp, 72
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a2, $a2, 36
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	add.d	$a0, $a5, $a0
	add.w	$s0, $a0, $a6
	ori	$a0, $zero, 1
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	move	$s7, $a1
	bne	$s0, $a0, .LBB7_3
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 56
	ld.d	$s1, $a0, 0
	ld.d	$a2, $s1, 24
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a0, $a2, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB7_59
# %bb.2:                                # %if.then.i107
	ld.d	$a0, $a2, 16
	ld.d	$a2, $a0, 8
	b	.LBB7_60
.LBB7_3:                                # %if.else88
	blt	$s0, $a0, .LBB7_95
# %bb.4:                                # %for.body100.lr.ph
	move	$s2, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	ld.w	$a0, $fp, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s1, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s4, $a0, %got_pc_lo12(fol_EQUALITY)
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_5:                                # %for.inc147
                                        #   in Loop: Header=BB7_7 Depth=1
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
.LBB7_6:                                # %for.inc147
                                        #   in Loop: Header=BB7_7 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s2, $s0, .LBB7_96
.LBB7_7:                                # %for.body100
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_11 Depth 2
                                        #     Child Loop BB7_17 Depth 2
                                        #       Child Loop BB7_20 Depth 3
                                        #         Child Loop BB7_25 Depth 4
                                        #     Child Loop BB7_31 Depth 2
                                        #       Child Loop BB7_32 Depth 3
                                        #       Child Loop BB7_35 Depth 3
                                        #       Child Loop BB7_43 Depth 3
                                        #       Child Loop BB7_45 Depth 3
                                        #       Child Loop BB7_47 Depth 3
                                        #       Child Loop BB7_49 Depth 3
                                        #       Child Loop BB7_51 Depth 3
                                        #     Child Loop BB7_57 Depth 2
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s2, 3
	ldx.d	$s3, $a0, $a1
	ld.d	$a2, $s3, 24
	ld.w	$a0, $a2, 0
	ld.w	$a1, $s1, 0
	move	$a3, $a0
	bne	$a0, $a1, .LBB7_9
# %bb.8:                                # %if.then.i142
                                        #   in Loop: Header=BB7_7 Depth=1
	ld.d	$a3, $a2, 16
	ld.d	$a3, $a3, 8
	ld.w	$a3, $a3, 0
.LBB7_9:                                # %clause_LiteralAtom.exit145
                                        #   in Loop: Header=BB7_7 Depth=1
	ld.w	$a4, $s4, 0
	beq	$a3, $a4, .LBB7_6
# %bb.10:                               # %if.then105
                                        #   in Loop: Header=BB7_7 Depth=1
	ld.d	$a3, $s3, 16
	ld.d	$a3, $a3, 56
	addi.d	$s6, $zero, -1
	.p2align	4, , 16
.LBB7_11:                               # %while.cond.i.i
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	addi.w	$s6, $s6, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $s3, .LBB7_11
# %bb.12:                               # %clause_LiteralGetIndex.exit.i
                                        #   in Loop: Header=BB7_7 Depth=1
	bne	$a0, $a1, .LBB7_14
# %bb.13:                               # %if.then.i.i
                                        #   in Loop: Header=BB7_7 Depth=1
	ld.d	$a0, $a2, 16
	ld.d	$a2, $a0, 8
.LBB7_14:                               # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB7_7 Depth=1
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s7, 0
	pcaddu18i	$ra, %call36(st_ExistInstance)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_6
# %bb.15:                               # %while.body.i148.preheader
                                        #   in Loop: Header=BB7_7 Depth=1
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	move	$s0, $zero
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_16:                               # %for.end.i
                                        #   in Loop: Header=BB7_17 Depth=2
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_28
.LBB7_17:                               # %while.body.i148
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_20 Depth 3
                                        #         Child Loop BB7_25 Depth 4
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_16
# %bb.18:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB7_17 Depth=2
	move	$s2, $a0
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_19:                               # %for.inc.i
                                        #   in Loop: Header=BB7_20 Depth=3
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB7_16
.LBB7_20:                               # %for.body.i
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_25 Depth 4
	ld.d	$s4, $s2, 8
	ld.d	$a1, $s4, 16
	beq	$a1, $fp, .LBB7_19
# %bb.21:                               # %land.lhs.true.i150
                                        #   in Loop: Header=BB7_20 Depth=3
	ld.d	$a0, $s3, 24
	ld.d	$a2, $s4, 24
	ld.w	$a0, $a0, 0
	ld.w	$a3, $s1, 0
	ld.w	$a2, $a2, 0
	bne	$a0, $a3, .LBB7_23
# %bb.22:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB7_20 Depth=3
	beq	$a2, $a0, .LBB7_19
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_23:                               # %lor.rhs.i.i
                                        #   in Loop: Header=BB7_20 Depth=3
	bne	$a2, $a3, .LBB7_19
.LBB7_24:                               # %land.lhs.true13.i
                                        #   in Loop: Header=BB7_20 Depth=3
	ld.d	$a0, $a1, 56
	addi.d	$a3, $zero, -1
	.p2align	4, , 16
.LBB7_25:                               # %while.cond.i17.i
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        #       Parent Loop BB7_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a0, 0
	addi.w	$a3, $a3, 1
	addi.d	$a0, $a0, 8
	bne	$a2, $s4, .LBB7_25
# %bb.26:                               # %clause_LiteralGetIndex.exit22.i
                                        #   in Loop: Header=BB7_20 Depth=3
	move	$a0, $fp
	move	$a2, $s6
	pcaddu18i	$ra, %call36(subs_SubsumesBasic)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_19
# %bb.27:                               # %if.then.i153
                                        #   in Loop: Header=BB7_20 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s0, $a0, 0
	move	$s0, $a0
	b	.LBB7_19
	.p2align	4, , 16
.LBB7_28:                               # %red_GetBackMRResLits.exit
                                        #   in Loop: Header=BB7_7 Depth=1
	beqz	$s0, .LBB7_5
# %bb.29:                               # %for.body111.lr.ph
                                        #   in Loop: Header=BB7_7 Depth=1
	move	$s3, $s0
	b	.LBB7_31
	.p2align	4, , 16
.LBB7_30:                               # %if.end141
                                        #   in Loop: Header=BB7_31 Depth=2
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s2, $s4, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	st.d	$s2, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB7_56
.LBB7_31:                               # %for.body111
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_32 Depth 3
                                        #       Child Loop BB7_35 Depth 3
                                        #       Child Loop BB7_43 Depth 3
                                        #       Child Loop BB7_45 Depth 3
                                        #       Child Loop BB7_47 Depth 3
                                        #       Child Loop BB7_49 Depth 3
                                        #       Child Loop BB7_51 Depth 3
	ld.d	$a0, $s3, 8
	ld.d	$s6, $a0, 16
	ld.d	$a1, $s6, 56
	addi.d	$s2, $zero, -1
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_32:                               # %while.cond.i160
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
	add.d	$s4, $s4, $a3
	addi.w	$s2, $s2, 1
	addi.d	$a1, $a1, 8
	bne	$a2, $a0, .LBB7_32
# %bb.33:                               # %clause_LiteralGetIndex.exit165
                                        #   in Loop: Header=BB7_31 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beqz	$s8, .LBB7_37
# %bb.34:                               # %while.body.i167.preheader
                                        #   in Loop: Header=BB7_31 Depth=2
	move	$a0, $s8
	.p2align	4, , 16
.LBB7_35:                               # %while.body.i167
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a0, 8
	beq	$s6, $a1, .LBB7_38
# %bb.36:                               # %if.end.i
                                        #   in Loop: Header=BB7_35 Depth=3
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB7_35
.LBB7_37:                               # %if.else123
                                        #   in Loop: Header=BB7_31 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	st.d	$s8, $a0, 0
	move	$s8, $a0
	ld.wu	$a0, $s7, 48
	andi	$a1, $a0, 1
	bnez	$a1, .LBB7_40
	b	.LBB7_41
	.p2align	4, , 16
.LBB7_38:                               # %if.then118
                                        #   in Loop: Header=BB7_31 Depth=2
	ld.w	$a0, $s5, 36
	beqz	$a0, .LBB7_55
	.p2align	4, , 16
# %bb.39:                               # %if.end125
                                        #   in Loop: Header=BB7_31 Depth=2
	ld.wu	$a0, $s7, 48
	andi	$a1, $a0, 1
	beqz	$a1, .LBB7_41
.LBB7_40:                               # %if.then.i177
                                        #   in Loop: Header=BB7_31 Depth=2
	addi.d	$a0, $a0, -1
	st.w	$a0, $s7, 48
.LBB7_41:                               # %clause_RemoveFlag.exit180
                                        #   in Loop: Header=BB7_31 Depth=2
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $s2
	move	$a2, $s5
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_DeleteLiteral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB7_53
# %bb.42:                               # %if.then127
                                        #   in Loop: Header=BB7_31 Depth=2
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
	srai.d	$s2, $s4, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$zero, $a1, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $zero
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a1, $a2, 8
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$zero, $a2, 0
	move	$s8, $s5
	.p2align	4, , 16
.LBB7_43:                               # %for.body.i187
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s4, $s7, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s2, $a0, 0
	ld.d	$s8, $s8, 0
	bnez	$s8, .LBB7_43
# %bb.44:                               # %for.end.i192
                                        #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a1, $s7, 32
	beqz	$a1, .LBB7_46
	.p2align	4, , 16
.LBB7_45:                               # %while.body.i.i
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	ld.d	$a3, $a2, 128
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a5, $a3, 32
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a1, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a4, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 128
	st.d	$a1, $a2, 0
	move	$a1, $a7
	bnez	$a7, .LBB7_45
.LBB7_46:                               # %list_Delete.exit.i
                                        #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a1, $s7, 40
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	beqz	$a1, .LBB7_48
	.p2align	4, , 16
.LBB7_47:                               # %while.body.i13.i
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	ld.d	$a3, $a2, 128
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a5, $a3, 32
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a1, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a4, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 128
	st.d	$a1, $a2, 0
	move	$a1, $a7
	bnez	$a7, .LBB7_47
.LBB7_48:                               # %for.cond.i.i.preheader
                                        #   in Loop: Header=BB7_31 Depth=2
	move	$a2, $a0
	.p2align	4, , 16
.LBB7_49:                               # %for.cond.i.i
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB7_49
# %bb.50:                               # %if.end.i23.i
                                        #   in Loop: Header=BB7_31 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$a2, $a1, 0
	st.d	$a0, $s7, 32
	move	$a1, $s5
	.p2align	4, , 16
.LBB7_51:                               # %for.cond.i25.i
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB7_51
# %bb.52:                               # %red_DocumentMatchingReplacementResolution.exit
                                        #   in Loop: Header=BB7_31 Depth=2
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a2, $a0, 0
	st.d	$s5, $s7, 40
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $a1, 0
	st.w	$a0, $s7, 0
	ori	$a0, $zero, 23
	st.w	$a0, $s7, 76
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
.LBB7_53:                               # %if.end134
                                        #   in Loop: Header=BB7_31 Depth=2
	ld.w	$a0, $s5, 80
	beqz	$a0, .LBB7_30
# %bb.54:                               # %if.then137
                                        #   in Loop: Header=BB7_31 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	b	.LBB7_30
.LBB7_55:                               # %if.then121
                                        #   in Loop: Header=BB7_31 Depth=2
	pcalau12i	$a0, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a0, $a0, %got_pc_lo12(clause_CLAUSECOUNTER)
	ld.w	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.w	$a2, $a0, 0
	st.w	$a1, $s7, 0
	ld.wu	$a0, $s7, 48
	andi	$a1, $a0, 1
	bnez	$a1, .LBB7_40
	b	.LBB7_41
.LBB7_56:                               # %while.body.i201.preheader
                                        #   in Loop: Header=BB7_7 Depth=1
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_57:                               # %while.body.i201
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 128
	st.d	$s0, $a0, 0
	move	$s0, $a5
	bnez	$a5, .LBB7_57
# %bb.58:                               #   in Loop: Header=BB7_7 Depth=1
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	b	.LBB7_5
.LBB7_59:                               # %clause_LiteralAtom.exit
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a1, $a1, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a1, $a1, 0
	beq	$a0, $a1, .LBB7_95
.LBB7_60:                               # %clause_LiteralAtom.exit110
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s7, 0
	pcaddu18i	$ra, %call36(st_ExistInstance)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_95
# %bb.61:                               # %while.body.preheader
	ld.w	$a1, $fp, 0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	move	$s5, $zero
	b	.LBB7_63
	.p2align	4, , 16
.LBB7_62:                               # %for.end
                                        #   in Loop: Header=BB7_63 Depth=1
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_70
.LBB7_63:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_67 Depth 2
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_62
# %bb.64:                               # %for.body.preheader
                                        #   in Loop: Header=BB7_63 Depth=1
	move	$s2, $a0
	ld.w	$a1, $s3, 0
	b	.LBB7_67
	.p2align	4, , 16
.LBB7_65:                               # %if.then23
                                        #   in Loop: Header=BB7_67 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 0
	ld.w	$a1, $s3, 0
	st.d	$s0, $a0, 8
	move	$s5, $a0
.LBB7_66:                               # %for.inc
                                        #   in Loop: Header=BB7_67 Depth=2
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB7_62
.LBB7_67:                               # %for.body
                                        #   Parent Loop BB7_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s2, 8
	ld.d	$a0, $s1, 24
	ld.d	$a2, $s0, 24
	ld.w	$a3, $a0, 0
	ld.w	$a0, $a2, 0
	bne	$a3, $a1, .LBB7_69
# %bb.68:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB7_67 Depth=2
	bne	$a0, $a1, .LBB7_65
	b	.LBB7_66
	.p2align	4, , 16
.LBB7_69:                               # %lor.rhs.i
                                        #   in Loop: Header=BB7_67 Depth=2
	bne	$a0, $a1, .LBB7_66
	b	.LBB7_65
.LBB7_70:                               # %while.cond28.preheader
	beqz	$s5, .LBB7_95
# %bb.71:                               # %while.body32.lr.ph
	move	$s0, $zero
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s1, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s3, $a0, %got_pc_lo12(memory_FREEDBYTES)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	ori	$s6, $zero, 0
	ori	$s7, $zero, 0
	lu32i.d	$s7, -1
	lu32i.d	$s6, 1
	b	.LBB7_73
	.p2align	4, , 16
.LBB7_72:                               # %if.end84
                                        #   in Loop: Header=BB7_73 Depth=1
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $s2, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$s5, $s8
	beqz	$s8, .LBB7_96
.LBB7_73:                               # %while.body32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_78 Depth 2
                                        #     Child Loop BB7_86 Depth 2
                                        #       Child Loop BB7_87 Depth 3
                                        #     Child Loop BB7_90 Depth 2
	ld.d	$s2, $s5, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	ld.d	$s2, $s2, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s2, $a0, 8
	st.d	$s0, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 80
	beqz	$a0, .LBB7_75
# %bb.74:                               # %if.then39
                                        #   in Loop: Header=BB7_73 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB7_75:                               # %if.end44
                                        #   in Loop: Header=BB7_73 Depth=1
	ld.d	$a1, $s5, 0
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
	beqz	$a1, .LBB7_81
# %bb.76:                               # %for.body50.preheader
                                        #   in Loop: Header=BB7_73 Depth=1
	move	$a0, $s5
	b	.LBB7_78
	.p2align	4, , 16
.LBB7_77:                               # %if.then54
                                        #   in Loop: Header=BB7_78 Depth=2
	ld.d	$a2, $a1, 0
	st.d	$a2, $a0, 0
	st.d	$s4, $a1, 0
	move	$s4, $a1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB7_80
.LBB7_78:                               # %for.body50
                                        #   Parent Loop BB7_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 8
	ld.d	$a2, $a2, 16
	beq	$s2, $a2, .LBB7_77
# %bb.79:                               #   in Loop: Header=BB7_78 Depth=2
	move	$a0, $a1
	ld.d	$a1, $a0, 0
	bnez	$a1, .LBB7_78
.LBB7_80:                               # %for.end59.loopexit
                                        #   in Loop: Header=BB7_73 Depth=1
	ld.d	$s8, $s5, 0
	b	.LBB7_82
	.p2align	4, , 16
.LBB7_81:                               #   in Loop: Header=BB7_73 Depth=1
	move	$s8, $zero
.LBB7_82:                               # %for.end59
                                        #   in Loop: Header=BB7_73 Depth=1
	ld.d	$a0, $s1, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s3, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s1, 128
	st.d	$s5, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.wu	$a0, $a0, 48
	andi	$a1, $a0, 1
	beqz	$a1, .LBB7_84
# %bb.83:                               # %if.then.i121
                                        #   in Loop: Header=BB7_73 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s5, 48
.LBB7_84:                               # %clause_RemoveFlag.exit
                                        #   in Loop: Header=BB7_73 Depth=1
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB7_91
# %bb.85:                               # %for.body66.preheader
                                        #   in Loop: Header=BB7_73 Depth=1
	move	$a0, $s4
	.p2align	4, , 16
.LBB7_86:                               # %for.body66
                                        #   Parent Loop BB7_73 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_87 Depth 3
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a1, 16
	ld.d	$a2, $a2, 56
	move	$a3, $s7
	.p2align	4, , 16
.LBB7_87:                               # %while.cond.i
                                        #   Parent Loop BB7_73 Depth=1
                                        #     Parent Loop BB7_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a2, 0
	add.d	$a3, $a3, $s6
	addi.d	$a2, $a2, 8
	bne	$a4, $a1, .LBB7_87
# %bb.88:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB7_86 Depth=2
	srai.d	$a1, $a3, 32
	st.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB7_86
# %bb.89:                               # %for.end71
                                        #   in Loop: Header=BB7_73 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_DeleteLiterals)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB7_92
	.p2align	4, , 16
.LBB7_90:                               # %while.body.i
                                        #   Parent Loop BB7_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s3, 0
	ld.d	$a3, $s4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s1, 128
	st.d	$s4, $a0, 0
	move	$s4, $a3
	bnez	$a3, .LBB7_90
	b	.LBB7_93
	.p2align	4, , 16
.LBB7_91:                               # %for.end71.thread
                                        #   in Loop: Header=BB7_73 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_DeleteLiterals)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB7_93
.LBB7_92:                               # %if.then73
                                        #   in Loop: Header=BB7_73 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $s2, 8
	st.d	$zero, $s2, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(red_DocumentMatchingReplacementResolution)
	jirl	$ra, $ra, 0
.LBB7_93:                               # %if.end80
                                        #   in Loop: Header=BB7_73 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 80
	beqz	$a0, .LBB7_72
# %bb.94:                               # %if.then83
                                        #   in Loop: Header=BB7_73 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	b	.LBB7_72
.LBB7_95:
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
.LBB7_96:                               # %cleanup
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
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
.Lfunc_end7:
	.size	red_BackMatchingReplacementResolution, .Lfunc_end7-red_BackMatchingReplacementResolution
                                        # -- End function
	.p2align	5                               # -- Begin function red_BackRewriting
	.type	red_BackRewriting,@function
red_BackRewriting:                      # @red_BackRewriting
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 72
	ori	$a5, $zero, 1
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	blt	$a0, $a5, .LBB8_42
# %bb.1:                                # %for.body.lr.ph
	move	$s7, $a2
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 64
	pcalau12i	$a3, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a3, $a3, %got_pc_lo12(symbol_TYPEMASK)
	move	$a4, $zero
	add.w	$a2, $a1, $a2
	add.w	$a0, $a2, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $a3, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.w	$s0, $zero, -1
	ori	$s1, $zero, 0
	ori	$s2, $zero, 0
	lu32i.d	$s2, -1
	lu32i.d	$s1, 1
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_4 Depth=1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
.LBB8_3:                                # %for.inc
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$a2, $a2, 1
	move	$a4, $s8
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bge	$a2, $a0, .LBB8_43
.LBB8_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
                                        #       Child Loop BB8_15 Depth 3
                                        #         Child Loop BB8_16 Depth 4
                                        #         Child Loop BB8_21 Depth 4
                                        #         Child Loop BB8_28 Depth 4
                                        #         Child Loop BB8_30 Depth 4
                                        #     Child Loop BB8_39 Depth 2
	ld.d	$a0, $fp, 56
	slli.d	$a1, $a2, 3
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 8
	beqz	$a1, .LBB8_41
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB8_4 Depth=1
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(st_ExistInstance)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_2
# %bb.6:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$s5, $a0
	move	$s8, $zero
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_7:                                # %if.end33.i
                                        #   in Loop: Header=BB8_8 Depth=2
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$a0, .LBB8_36
.LBB8_8:                                # %while.body.i
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_15 Depth 3
                                        #         Child Loop BB8_16 Depth 4
                                        #         Child Loop BB8_21 Depth 4
                                        #         Child Loop BB8_28 Depth 4
                                        #         Child Loop BB8_30 Depth 4
	ld.w	$a0, $s5, 0
	bgtz	$a0, .LBB8_7
# %bb.9:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB8_8 Depth=2
	blt	$s0, $a0, .LBB8_11
# %bb.10:                               # %symbol_IsPredicate.exit.i
                                        #   in Loop: Header=BB8_8 Depth=2
	sub.w	$a0, $zero, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB8_7
.LBB8_11:                               # %if.then.i
                                        #   in Loop: Header=BB8_8 Depth=2
	move	$a0, $s5
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sharing_GetDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_7
# %bb.12:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB8_8 Depth=2
	move	$s6, $a0
	b	.LBB8_15
.LBB8_13:                               # %red_ApplyRewriting.exit.i
                                        #   in Loop: Header=BB8_15 Depth=3
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $s4, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s8, $a0, 8
	st.d	$s3, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_14:                               # %if.end.i
                                        #   in Loop: Header=BB8_15 Depth=3
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s6, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 128
	st.d	$s6, $a0, 0
	move	$s6, $a5
	beqz	$a5, .LBB8_7
.LBB8_15:                               # %for.body.i
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_16 Depth 4
                                        #         Child Loop BB8_21 Depth 4
                                        #         Child Loop BB8_28 Depth 4
                                        #         Child Loop BB8_30 Depth 4
	ld.d	$a0, $s6, 8
	ld.d	$s3, $a0, 16
	ld.d	$a1, $s3, 56
	move	$a3, $s0
	move	$s4, $s2
	.p2align	4, , 16
.LBB8_16:                               # %while.cond.i.i
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        #       Parent Loop BB8_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a1, 0
	add.d	$s4, $s4, $s1
	addi.w	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a2, $a0, .LBB8_16
# %bb.17:                               # %clause_LiteralGetIndex.exit.i
                                        #   in Loop: Header=BB8_15 Depth=3
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s3, 0
	beq	$a0, $a1, .LBB8_14
# %bb.18:                               # %land.lhs.true19.i
                                        #   in Loop: Header=BB8_15 Depth=3
	ld.w	$a0, $s3, 64
	blt	$a3, $a0, .LBB8_14
# %bb.19:                               # %land.lhs.true22.i
                                        #   in Loop: Header=BB8_15 Depth=3
	beqz	$s8, .LBB8_23
# %bb.20:                               # %while.body.i.i.preheader
                                        #   in Loop: Header=BB8_15 Depth=3
	move	$a0, $s8
	.p2align	4, , 16
.LBB8_21:                               # %while.body.i.i
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        #       Parent Loop BB8_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $a0, 8
	beq	$s3, $a1, .LBB8_14
# %bb.22:                               # %if.end.i.i
                                        #   in Loop: Header=BB8_21 Depth=4
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB8_21
.LBB8_23:                               # %land.lhs.true25.i
                                        #   in Loop: Header=BB8_15 Depth=3
	move	$a0, $fp
	move	$a1, $s3
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subs_SubsumesBasic)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_14
# %bb.24:                               # %if.then28.i
                                        #   in Loop: Header=BB8_15 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.wu	$a0, $a0, 48
	andi	$a1, $a0, 1
	beqz	$a1, .LBB8_26
# %bb.25:                               # %if.then.i.i
                                        #   in Loop: Header=BB8_15 Depth=3
	addi.d	$a0, $a0, -1
	st.w	$a0, $s8, 48
.LBB8_26:                               # %clause_RemoveFlag.exit.i
                                        #   in Loop: Header=BB8_15 Depth=3
	ld.w	$a0, $s7, 36
	beqz	$a0, .LBB8_32
# %bb.27:                               # %if.then.i32.i
                                        #   in Loop: Header=BB8_15 Depth=3
	ld.d	$a0, $s8, 32
	beqz	$a0, .LBB8_29
	.p2align	4, , 16
.LBB8_28:                               # %while.body.i.i.i.i
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        #       Parent Loop BB8_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$a0, $a6
	bnez	$a6, .LBB8_28
.LBB8_29:                               # %list_Delete.exit.i.i.i
                                        #   in Loop: Header=BB8_15 Depth=3
	ld.d	$a0, $s8, 40
	beqz	$a0, .LBB8_31
	.p2align	4, , 16
.LBB8_30:                               # %while.body.i12.i.i.i
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        #       Parent Loop BB8_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$a0, $a6
	bnez	$a6, .LBB8_30
.LBB8_31:                               # %red_DocumentRewriting.exit.i.i
                                        #   in Loop: Header=BB8_15 Depth=3
	ld.w	$s3, $s8, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $s8, 32
	srai.d	$s3, $s4, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $s8, 40
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $a1, 0
	st.w	$a0, $s8, 0
	ori	$a0, $zero, 21
	st.w	$a0, $s8, 76
	ld.w	$s3, $fp, 0
	ld.d	$s7, $s8, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s7, $a0, 0
	ld.d	$s3, $s8, 40
	st.d	$a0, $s8, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a0, 8
	st.d	$s3, $a0, 0
	st.d	$a0, $s8, 40
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
.LBB8_32:                               # %if.end.i34.i
                                        #   in Loop: Header=BB8_15 Depth=3
	ld.w	$a0, $s7, 52
	beqz	$a0, .LBB8_34
# %bb.33:                               # %if.then3.i.i
                                        #   in Loop: Header=BB8_15 Depth=3
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB8_34:                               # %if.end7.i.i
                                        #   in Loop: Header=BB8_15 Depth=3
	ld.d	$a0, $fp, 56
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 16
	ld.d	$a1, $s8, 56
	ld.d	$a0, $a0, 0
	srai.d	$a2, $s4, 29
	ldx.d	$s4, $a1, $a2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $a1, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cont_ApplyBindingsModuloMatchingReverse)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 24
	move	$s3, $a0
	move	$a0, $a1
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(term_ReplaceSubtermBy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $s7
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $s7
	move	$a2, $s3
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s8, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 52
	beqz	$a0, .LBB8_13
# %bb.35:                               # %if.then18.i.i
                                        #   in Loop: Header=BB8_15 Depth=3
	move	$a0, $s8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_36:                               # %red_LiteralRewriting.exit
                                        #   in Loop: Header=BB8_4 Depth=1
	beqz	$s8, .LBB8_2
# %bb.37:                               # %if.end.i15
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	beqz	$a3, .LBB8_3
# %bb.38:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a1, $s8
	.p2align	4, , 16
.LBB8_39:                               # %for.cond.i
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB8_39
# %bb.40:                               # %for.end.i
                                        #   in Loop: Header=BB8_4 Depth=1
	st.d	$a3, $a0, 0
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_41:                               #   in Loop: Header=BB8_4 Depth=1
	move	$s8, $a4
	b	.LBB8_3
.LBB8_42:
	move	$s8, $zero
.LBB8_43:                               # %for.end
	move	$a0, $s8
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	pcaddu18i	$t8, %call36(list_PointerDeleteDuplicates)
	jr	$t8
.Lfunc_end8:
	.size	red_BackRewriting, .Lfunc_end8-red_BackRewriting
                                        # -- End function
	.p2align	5                               # -- Begin function red_BackContextualRewriting
	.type	red_BackContextualRewriting,@function
red_BackContextualRewriting:            # @red_BackContextualRewriting
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	ld.w	$a7, $a1, 64
	ld.w	$a4, $a1, 68
	ld.w	$a5, $a1, 72
	add.w	$a6, $a4, $a7
	add.d	$a5, $a6, $a5
	addi.w	$a5, $a5, -1
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	blt	$a5, $a6, .LBB9_62
# %bb.1:                                # %for.body.lr.ph
	ld.d	$s0, $a0, 112
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s1, $a0, 104
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	sltui	$a0, $a2, 2
	ori	$a2, $zero, 32
	pcalau12i	$a3, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a3, $a3, %got_pc_lo12(symbol_TYPEMASK)
	masknez	$a2, $a2, $a0
	ori	$a5, $zero, 48
	maskeqz	$a0, $a5, $a0
	ld.w	$a3, $a3, 0
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	or	$a0, $a0, $a2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	add.d	$a0, $a7, $a4
	ori	$s5, $zero, 3
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $a2, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	bge	$a2, $a3, .LBB9_62
.LBB9_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
                                        #     Child Loop BB9_12 Depth 2
	ld.d	$a1, $a1, 56
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ldx.d	$s6, $a1, $a0
	ld.w	$a0, $s6, 8
	beqz	$a0, .LBB9_2
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.bu	$a0, $s6, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB9_2
# %bb.5:                                # %land.lhs.true10
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a0, $s6, 24
	ld.d	$a0, $a0, 16
	ld.d	$a1, $s6, 16
	ld.d	$a4, $a0, 8
	ld.d	$a1, $a1, 56
	move	$a2, $zero
	.p2align	4, , 16
.LBB9_6:                                # %while.cond.i.i
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 0
	move	$a0, $a2
	addi.d	$a1, $a1, 8
	addi.w	$a2, $a2, 1
	bne	$a3, $s6, .LBB9_6
# %bb.7:                                # %clause_LiteralGetIndex.exit.i
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a2, $s4, 64
	ld.w	$a3, $s4, 68
	ld.w	$a1, $s4, 72
	add.w	$a2, $a3, $a2
	add.d	$a3, $a2, $a1
	addi.w	$a3, $a3, -1
	bltz	$a3, .LBB9_20
# %bb.8:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB9_3 Depth=1
	move	$s7, $zero
	add.d	$a1, $a2, $a1
	bstrpick.d	$s8, $a1, 31, 0
	bstrpick.d	$s4, $a0, 31, 0
	move	$s3, $a4
	b	.LBB9_12
	.p2align	4, , 16
.LBB9_9:                                # %if.else.i
                                        #   in Loop: Header=BB9_12 Depth=2
	move	$a0, $a4
	move	$a1, $s2
.LBB9_10:                               # %if.else.i
                                        #   in Loop: Header=BB9_12 Depth=2
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	move	$a4, $s3
	bne	$a0, $s5, .LBB9_2
.LBB9_11:                               # %for.inc.i
                                        #   in Loop: Header=BB9_12 Depth=2
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s4, $s4, -1
	beqz	$s8, .LBB9_19
.LBB9_12:                               # %for.body.i
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB9_11
# %bb.13:                               # %if.then.i
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	ldx.d	$fp, $a0, $s7
	ld.d	$s2, $fp, 24
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a1, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a0, $s2, 0
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB9_15
# %bb.14:                               # %if.then.i.i
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a0, $s2, 16
	ld.d	$s2, $a0, 8
	ld.w	$a0, $s2, 0
.LBB9_15:                               # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB9_12 Depth=2
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a1, $a1, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB9_9
# %bb.16:                               # %if.then9.i
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a0, $s2, 16
	ld.d	$a1, $a0, 8
	move	$a0, $a4
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB9_2
# %bb.17:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB9_12 Depth=2
	move	$a4, $s3
	ld.w	$a0, $fp, 8
	bnez	$a0, .LBB9_11
# %bb.18:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a0, $s2, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a4
	b	.LBB9_10
.LBB9_19:                               # %if.then.loopexit
	ld.d	$a0, $s6, 24
	ld.d	$a0, $a0, 16
	ld.d	$a4, $a0, 8
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
.LBB9_20:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a1, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a2, $a0, $a2
	ld.d	$a3, $a0, 112
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 104
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $a2, 0
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	move	$a2, $a4
	pcaddu18i	$ra, %call36(st_GetInstance)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_62
# %bb.21:                               # %for.body.lr.ph.i20
	move	$s3, $a0
	move	$s7, $zero
	addi.w	$a4, $zero, -1
	ori	$s6, $zero, 0
	ori	$a5, $zero, 0
	lu32i.d	$a5, -1
	lu32i.d	$s6, 1
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s5, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s2, $a0, %got_pc_lo12(memory_FREEDBYTES)
	vrepli.b	$vr0, 0
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	b	.LBB9_24
.LBB9_22:                               #   in Loop: Header=BB9_24 Depth=1
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_23:                               # %for.inc83.i
                                        #   in Loop: Header=BB9_24 Depth=1
	ld.d	$a0, $s5, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s2, 0
	ld.d	$a3, $s3, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s5, 128
	st.d	$s3, $a0, 0
	move	$s3, $a3
	beqz	$a3, .LBB9_63
.LBB9_24:                               # %for.body.i22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_32 Depth 2
                                        #       Child Loop BB9_33 Depth 3
                                        #       Child Loop BB9_38 Depth 3
                                        #       Child Loop BB9_45 Depth 3
                                        #       Child Loop BB9_54 Depth 3
                                        #       Child Loop BB9_56 Depth 3
	ld.d	$s0, $s3, 8
	ld.w	$a0, $s0, 0
	bgtz	$a0, .LBB9_23
# %bb.25:                               # %land.lhs.true.i24
                                        #   in Loop: Header=BB9_24 Depth=1
	blt	$a4, $a0, .LBB9_27
# %bb.26:                               # %symbol_IsPredicate.exit.i
                                        #   in Loop: Header=BB9_24 Depth=1
	sub.w	$a0, $zero, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB9_23
.LBB9_27:                               # %if.then19.i
                                        #   in Loop: Header=BB9_24 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sharing_GetDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_22
# %bb.28:                               # %for.body25.i.preheader
                                        #   in Loop: Header=BB9_24 Depth=1
	move	$s1, $a0
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	b	.LBB9_32
.LBB9_29:                               # %if.end78.i
                                        #   in Loop: Header=BB9_32 Depth=2
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $s0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
.LBB9_30:                               # %if.end80.i
                                        #   in Loop: Header=BB9_32 Depth=2
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_31:                               # %if.end80.i
                                        #   in Loop: Header=BB9_32 Depth=2
	ld.d	$a0, $s5, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s2, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s5, 128
	st.d	$s1, $a0, 0
	move	$s1, $a3
	beqz	$a3, .LBB9_23
.LBB9_32:                               # %for.body25.i
                                        #   Parent Loop BB9_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_33 Depth 3
                                        #       Child Loop BB9_38 Depth 3
                                        #       Child Loop BB9_45 Depth 3
                                        #       Child Loop BB9_54 Depth 3
                                        #       Child Loop BB9_56 Depth 3
	ld.d	$a0, $s1, 8
	ld.d	$s0, $a0, 16
	ld.d	$a1, $s0, 56
	move	$a2, $a4
	move	$s8, $a5
	.p2align	4, , 16
.LBB9_33:                               # %while.cond.i.i27
                                        #   Parent Loop BB9_24 Depth=1
                                        #     Parent Loop BB9_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a1, 0
	add.d	$s8, $s8, $s6
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a0, .LBB9_33
# %bb.34:                               # %clause_LiteralGetIndex.exit.i32
                                        #   in Loop: Header=BB9_32 Depth=2
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s0, 0
	st.d	$zero, $sp, 192
	beq	$a0, $a1, .LBB9_31
# %bb.35:                               # %land.lhs.true31.i
                                        #   in Loop: Header=BB9_32 Depth=2
	ld.w	$a0, $s0, 64
	blt	$a2, $a0, .LBB9_31
# %bb.36:                               # %land.lhs.true34.i
                                        #   in Loop: Header=BB9_32 Depth=2
	beqz	$s7, .LBB9_40
# %bb.37:                               # %while.body.i.i.preheader
                                        #   in Loop: Header=BB9_32 Depth=2
	move	$a0, $s7
	.p2align	4, , 16
.LBB9_38:                               # %while.body.i.i
                                        #   Parent Loop BB9_24 Depth=1
                                        #     Parent Loop BB9_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a0, 8
	beq	$s0, $a1, .LBB9_31
# %bb.39:                               # %if.end.i.i
                                        #   in Loop: Header=BB9_38 Depth=3
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB9_38
.LBB9_40:                               # %land.lhs.true37.i
                                        #   in Loop: Header=BB9_32 Depth=2
	addi.d	$a7, $sp, 192
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	move	$a4, $s4
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	move	$a6, $fp
	pcaddu18i	$ra, %call36(red_CRwTautologyCheck)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_30
# %bb.41:                               # %if.then40.i
                                        #   in Loop: Header=BB9_32 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s7, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.wu	$a0, $a0, 48
	andi	$a1, $a0, 1
	beqz	$a1, .LBB9_43
# %bb.42:                               # %if.then.i.i34
                                        #   in Loop: Header=BB9_32 Depth=2
	addi.d	$a0, $a0, -1
	st.w	$a0, $s7, 48
.LBB9_43:                               # %clause_RemoveFlag.exit.i
                                        #   in Loop: Header=BB9_32 Depth=2
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a4, $a0, %got_pc_lo12(cont_STACKPOINTER)
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$fp, $a0, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a1, $a4, 0
	ld.w	$a2, $fp, 0
	addi.d	$a0, $a1, 1
	pcalau12i	$a3, %got_pc_hi20(cont_STACK)
	ld.d	$a3, $a3, %got_pc_lo12(cont_STACK)
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	st.w	$a0, $a4, 0
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s3, 0
	slli.d	$a1, $a1, 2
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	stx.w	$a2, $a3, $a1
	st.w	$zero, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_MatchBindings)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 56
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$s4, $s3, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cont_ApplyBindingsModuloMatching)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s4, $a0
	ori	$a5, $zero, 1
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	blt	$a1, $a5, .LBB9_46
# %bb.44:                               # %while.body.i72.i.preheader
                                        #   in Loop: Header=BB9_32 Depth=2
	addi.d	$a0, $a1, 1
	.p2align	4, , 16
.LBB9_45:                               # %while.body.i72.i
                                        #   Parent Loop BB9_24 Depth=1
                                        #     Parent Loop BB9_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a1, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a1, $a1, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a2, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a3, $a3, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a2, $a3, 0
	ld.d	$a4, $a2, 24
	st.d	$a4, $a1, 0
	st.w	$zero, $a2, 20
	vst	$vr0, $a2, 4
	ld.d	$a1, $a3, 0
	st.d	$zero, $a1, 24
	addi.d	$a1, $a0, -2
	addi.w	$a0, $a0, -1
	st.w	$a1, $fp, 0
	bltu	$a5, $a0, .LBB9_45
.LBB9_46:                               # %while.end.i.i
                                        #   in Loop: Header=BB9_32 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 0
	beqz	$a0, .LBB9_48
# %bb.47:                               # %if.then.i68.i
                                        #   in Loop: Header=BB9_32 Depth=2
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a1, $a3, $a1
	st.w	$a0, $a2, 0
	st.w	$a1, $fp, 0
.LBB9_48:                               # %cont_BackTrack.exit.i
                                        #   in Loop: Header=BB9_32 Depth=2
	ld.d	$a0, $s7, 56
	srai.d	$a1, $s8, 29
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a1, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a2, $a0, 0
	ld.w	$a1, $a1, 0
	bne	$a2, $a1, .LBB9_50
# %bb.49:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB9_32 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB9_50:                               # %clause_GetLiteralAtom.exit.i
                                        #   in Loop: Header=BB9_32 Depth=2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(term_ReplaceSubtermBy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 36
	ld.d	$s4, $sp, 192
	beqz	$a0, .LBB9_58
# %bb.51:                               # %if.then58.i
                                        #   in Loop: Header=BB9_32 Depth=2
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vori.b	$vr1, $vr0, 0
	beqz	$s4, .LBB9_53
# %bb.52:                               # %if.then60.i
                                        #   in Loop: Header=BB9_32 Depth=2
	vld	$vr1, $s4, 32
	vst	$vr0, $s4, 32
.LBB9_53:                               # %if.end67.i
                                        #   in Loop: Header=BB9_32 Depth=2
	ld.d	$a0, $s7, 32
	beqz	$a0, .LBB9_55
	.p2align	4, , 16
.LBB9_54:                               # %while.body.i.i.i
                                        #   Parent Loop BB9_24 Depth=1
                                        #     Parent Loop BB9_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s5, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s2, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s5, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB9_54
.LBB9_55:                               # %list_Delete.exit.i.i
                                        #   in Loop: Header=BB9_32 Depth=2
	ld.d	$a0, $s7, 40
	beqz	$a0, .LBB9_57
	.p2align	4, , 16
.LBB9_56:                               # %while.body.i14.i.i
                                        #   Parent Loop BB9_24 Depth=1
                                        #     Parent Loop BB9_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s5, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s2, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s5, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB9_56
.LBB9_57:                               # %red_DocumentContextualRewriting.exit.i
                                        #   in Loop: Header=BB9_32 Depth=2
	ld.w	$fp, $s7, 0
	srai.d	$s3, $s8, 32
	vst	$vr1, $s7, 32
	ori	$a0, $zero, 16
	vst	$vr1, $sp, 128                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vstelm.d	$vr0, $a0, 0, 0
	ld.d	$fp, $s7, 40
	st.d	$a0, $s7, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s7, 40
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 0
	ld.d	$s3, $s7, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s3, $a0, 0
	ld.d	$fp, $s7, 40
	st.d	$a0, $s7, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.d	$a2, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s7, 40
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $a1, 0
	st.w	$a0, $s7, 0
	ori	$a0, $zero, 22
	st.w	$a0, $s7, 76
.LBB9_58:                               # %if.end68.i
                                        #   in Loop: Header=BB9_32 Depth=2
	move	$a0, $s7
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB9_60
# %bb.59:                               # %if.then70.i
                                        #   in Loop: Header=BB9_32 Depth=2
	move	$a0, $s7
	move	$a1, $s4
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
.LBB9_60:                               # %if.end71.i
                                        #   in Loop: Header=BB9_32 Depth=2
	move	$a0, $s7
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $fp
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s7, 4
	move	$a0, $s7
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 56
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB9_29
# %bb.61:                               # %if.then74.i
                                        #   in Loop: Header=BB9_32 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	b	.LBB9_29
.LBB9_62:
	move	$s7, $zero
.LBB9_63:                               # %for.end
	move	$a0, $s7
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	pcaddu18i	$t8, %call36(list_PointerDeleteDuplicates)
	jr	$t8
.Lfunc_end9:
	.size	red_BackContextualRewriting, .Lfunc_end9-red_BackContextualRewriting
                                        # -- End function
	.globl	red_CompleteReductionOnDerivedClauses # -- Begin function red_CompleteReductionOnDerivedClauses
	.p2align	5
	.type	red_CompleteReductionOnDerivedClauses,@function
red_CompleteReductionOnDerivedClauses:  # @red_CompleteReductionOnDerivedClauses
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a4
	move	$s0, $a3
	move	$s2, $a2
	move	$s3, $a0
	st.d	$zero, $sp, 80
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_ListSortWeighed)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_31
# %bb.1:                                # %while.body.lr.ph
	move	$s4, $a0
	ld.d	$a0, $s3, 112
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	sltu	$a0, $zero, $fp
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $s0, 1
	sltu	$a1, $zero, $a1
	and	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$s8, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s0, $a1, %got_pc_lo12(memory_FREEDBYTES)
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s6, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(clause_Weight)
	addi.d	$a0, $a0, %pc_lo12(clause_Weight)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s7, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_2:                               # %if.end64
                                        #   in Loop: Header=BB10_4 Depth=1
	addi.d	$a1, $sp, 80
	move	$a0, $s1
	pcaddu18i	$ra, %call36(split_ExtractEmptyClauses)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(prfs_InsertUsableClause)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(list_NumberSort)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(list_NNumberMerge)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB10_3:                               # %if.end69
                                        #   in Loop: Header=BB10_4 Depth=1
	beqz	$s4, .LBB10_30
.LBB10_4:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_22 Depth 2
	ld.d	$a0, $s8, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s0, 0
	move	$a3, $s4
	ld.d	$s4, $s4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a0, $s8, 128
	ld.d	$s5, $a3, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 120
	beqz	$a0, .LBB10_10
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB10_4 Depth=1
	sltui	$a0, $s5, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	bnez	$a0, .LBB10_11
.LBB10_6:                               # %land.lhs.true11
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.w	$a0, $s5, 76
	addi.w	$a0, $a0, -15
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB10_12
# %bb.7:                                # %if.then17
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB10_23
# %bb.8:                                # %if.then17
                                        #   in Loop: Header=BB10_4 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB10_33
# %bb.9:                                # %sw.bb
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.w	$fp, $s5, 4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bgeu	$a0, $fp, .LBB10_12
	b	.LBB10_24
	.p2align	4, , 16
.LBB10_10:                              # %if.then
                                        #   in Loop: Header=BB10_4 Depth=1
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(red_CompleteReductionOnDerivedClause)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	sltui	$a0, $s5, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	beqz	$a0, .LBB10_6
.LBB10_11:                              # %if.end34
                                        #   in Loop: Header=BB10_4 Depth=1
	beqz	$s5, .LBB10_3
.LBB10_12:                              # %land.lhs.true36
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a0, $s3, 120
	beqz	$a0, .LBB10_14
# %bb.13:                               # %if.end41
                                        #   in Loop: Header=BB10_4 Depth=1
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(red_CompleteReductionOnDerivedClause)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$a0, .LBB10_3
.LBB10_14:                              # %if.then43
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.w	$a0, $s3, 140
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 140
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 104
	beqz	$a0, .LBB10_16
# %bb.15:                               # %if.then46
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a3, $s6, 0
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB10_16:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.w	$a0, $s5, 68
	bnez	$a0, .LBB10_19
# %bb.17:                               # %land.lhs.true1.i
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.w	$a0, $s5, 72
	bnez	$a0, .LBB10_19
# %bb.18:                               # %clause_IsEmptyClause.exit
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.w	$a0, $s5, 64
	beqz	$a0, .LBB10_29
	.p2align	4, , 16
.LBB10_19:                              # %if.else
                                        #   in Loop: Header=BB10_4 Depth=1
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(red_BackReduction)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 144
	add.d	$a0, $a1, $a0
	st.w	$a0, $s3, 144
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 92
	beqz	$a0, .LBB10_2
# %bb.20:                               # %if.else
                                        #   in Loop: Header=BB10_4 Depth=1
	beqz	$s1, .LBB10_2
# %bb.21:                               # %for.body.preheader
                                        #   in Loop: Header=BB10_4 Depth=1
	move	$fp, $s1
	.p2align	4, , 16
.LBB10_22:                              # %for.body
                                        #   Parent Loop BB10_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s6, 0
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB10_22
	b	.LBB10_2
.LBB10_23:                              # %sw.bb19
                                        #   in Loop: Header=BB10_4 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_ComputeTermDepth)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bgeu	$a0, $fp, .LBB10_12
.LBB10_24:                              # %if.then23
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 140
	beqz	$a0, .LBB10_26
# %bb.25:                               # %if.then26
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a3, $s6, 0
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB10_26:                              # %if.end28
                                        #   in Loop: Header=BB10_4 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB10_28
# %bb.27:                               # %if.end28
                                        #   in Loop: Header=BB10_4 Depth=1
	bgeu	$fp, $a0, .LBB10_3
.LBB10_28:                              # %if.then31
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$fp, $a0, 0
	b	.LBB10_3
.LBB10_29:                              # %if.then51
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$fp, $sp, 80
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $sp, 80
	b	.LBB10_3
.LBB10_30:                              # %while.end.loopexit
	ld.d	$a0, $sp, 80
	b	.LBB10_32
.LBB10_31:
	move	$a0, $zero
.LBB10_32:                              # %while.end
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB10_33:                              # %sw.default
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	red_CompleteReductionOnDerivedClauses, .Lfunc_end10-red_CompleteReductionOnDerivedClauses
                                        # -- End function
	.p2align	5                               # -- Begin function clause_Weight
	.type	clause_Weight,@function
clause_Weight:                          # @clause_Weight
# %bb.0:                                # %entry
	ld.w	$a0, $a0, 4
	ret
.Lfunc_end11:
	.size	clause_Weight, .Lfunc_end11-clause_Weight
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function misc_Error
	.type	misc_Error,@function
misc_Error:                             # @misc_Error
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	misc_Error, .Lfunc_end12-misc_Error
                                        # -- End function
	.text
	.globl	red_ClauseDeletion              # -- Begin function red_ClauseDeletion
	.p2align	5
	.type	red_ClauseDeletion,@function
red_ClauseDeletion:                     # @red_ClauseDeletion
# %bb.0:                                # %entry
	beqz	$a0, .LBB13_10
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$s8, $a0
	ld.w	$a0, $a1, 64
	beqz	$a0, .LBB13_101
# %bb.2:                                # %lor.lhs.false
	move	$s1, $a2
	ld.w	$a0, $a2, 356
	beqz	$a0, .LBB13_101
# %bb.3:                                # %if.end
	ld.w	$a0, $s1, 32
	beqz	$a0, .LBB13_5
# %bb.4:                                # %if.then6
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	move	$fp, $a3
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	move	$a3, $fp
.LBB13_5:                               # %if.end8
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(st_IndexCreate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a3, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	ld.w	$a1, $s0, 64
	ld.w	$a4, $a3, 0
	ori	$a2, $zero, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB13_11
# %bb.6:                                # %for.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	move	$s3, $zero
	move	$s5, $zero
	slli.d	$s4, $a1, 3
	b	.LBB13_8
	.p2align	4, , 16
.LBB13_7:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB13_8 Depth=1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	addi.d	$s3, $s3, 8
	st.d	$s5, $a0, 0
	move	$s5, $a0
	beq	$s4, $s3, .LBB13_12
.LBB13_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 0
	bne	$a1, $a2, .LBB13_7
# %bb.9:                                # %if.then.i
                                        #   in Loop: Header=BB13_8 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB13_7
.LBB13_10:
	move	$a0, $zero
	ret
.LBB13_11:
	move	$a0, $zero
.LBB13_12:                              # %for.end
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $s1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Create)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s3, .LBB13_15
# %bb.13:                               # %while.body.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB13_14:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s3, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s3, 0
	ld.d	$a2, $a0, 128
	st.d	$s3, $a2, 0
	move	$s3, $a5
	bnez	$a5, .LBB13_14
.LBB13_15:                              # %list_Delete.exit
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 12
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s0, $s0, 0
	ld.d	$s2, $fp, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s2, $a0, 0
	ld.d	$s0, $fp, 40
	st.d	$a0, $fp, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 8
	st.d	$s0, $a0, 0
	st.d	$a0, $fp, 40
	st.w	$zero, $fp, 76
	move	$a0, $fp
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_InsertFlatIntoIndex)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	ld.w	$a0, $s1, 32
	st.d	$zero, $sp, 88
	beqz	$a0, .LBB13_17
# %bb.16:                               # %if.then30
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(clause_ListPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(clause_ListPrint)
	jirl	$ra, $ra, 0
.LBB13_17:                              # %while.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$s7, $zero
	addi.w	$s5, $zero, -1
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB13_18:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_32 Depth 2
                                        #       Child Loop BB13_38 Depth 3
                                        #         Child Loop BB13_43 Depth 4
                                        #           Child Loop BB13_45 Depth 5
                                        #       Child Loop BB13_61 Depth 3
                                        #         Child Loop BB13_64 Depth 4
                                        #           Child Loop BB13_66 Depth 5
                                        #           Child Loop BB13_70 Depth 5
                                        #       Child Loop BB13_74 Depth 3
                                        #       Child Loop BB13_77 Depth 3
                                        #     Child Loop BB13_93 Depth 2
	ld.d	$fp, $s4, 8
	ld.w	$a0, $fp, 48
	ori	$a0, $a0, 1
	st.w	$a0, $fp, 48
	ld.w	$a0, $s1, 32
	beqz	$a0, .LBB13_20
# %bb.19:                               # %if.then42
                                        #   in Loop: Header=BB13_18 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB13_20:                              # %if.end45
                                        #   in Loop: Header=BB13_18 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$fp, $a0, 8
	st.d	$s7, $a0, 0
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(list_PointerDeleteOneElement)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_HasTermSortConstraintLits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ori	$a3, $zero, 1
	beqz	$a0, .LBB13_22
# %bb.21:                               # %if.then.i74
                                        #   in Loop: Header=BB13_18 Depth=1
	move	$a0, $fp
	move	$a2, $s8
	move	$a4, $s1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(inf_ForwardSortResolution)
	jirl	$ra, $ra, 0
	b	.LBB13_23
	.p2align	4, , 16
.LBB13_22:                              # %if.else.i
                                        #   in Loop: Header=BB13_18 Depth=1
	move	$a0, $fp
	move	$a2, $s8
	move	$a4, $s1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(inf_ForwardEmptySort)
	jirl	$ra, $ra, 0
.LBB13_23:                              # %red_CDDerivables.exit
                                        #   in Loop: Header=BB13_18 Depth=1
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(split_ExtractEmptyClauses)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	move	$s7, $a0
	beqz	$a1, .LBB13_30
# %bb.24:                               # %if.then52
                                        #   in Loop: Header=BB13_18 Depth=1
	ld.w	$a0, $s1, 32
	beqz	$a0, .LBB13_27
# %bb.25:                               # %if.then55
                                        #   in Loop: Header=BB13_18 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 36
.LBB13_26:                              # %if.end101thread-pre-split.sink.split.sink.split
                                        #   in Loop: Header=BB13_18 Depth=1
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB13_27:                              # %if.end101thread-pre-split.sink.split
                                        #   in Loop: Header=BB13_18 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
.LBB13_28:                              # %if.end101thread-pre-split
                                        #   in Loop: Header=BB13_18 Depth=1
	ld.d	$a0, $sp, 88
	sltui	$a0, $a0, 1
	move	$s7, $s6
	beqz	$s4, .LBB13_94
.LBB13_29:                              # %if.end101
                                        #   in Loop: Header=BB13_18 Depth=1
	bnez	$a0, .LBB13_18
	b	.LBB13_94
	.p2align	4, , 16
.LBB13_30:                              # %for.cond60.preheader
                                        #   in Loop: Header=BB13_18 Depth=1
	beqz	$s7, .LBB13_91
# %bb.31:                               #   in Loop: Header=BB13_18 Depth=1
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB13_32:                              # %for.body67
                                        #   Parent Loop BB13_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_38 Depth 3
                                        #         Child Loop BB13_43 Depth 4
                                        #           Child Loop BB13_45 Depth 5
                                        #       Child Loop BB13_61 Depth 3
                                        #         Child Loop BB13_64 Depth 4
                                        #           Child Loop BB13_66 Depth 5
                                        #           Child Loop BB13_70 Depth 5
                                        #       Child Loop BB13_74 Depth 3
                                        #       Child Loop BB13_77 Depth 3
	ld.d	$s8, $s7, 8
	st.d	$zero, $sp, 96
	addi.d	$a4, $sp, 96
	move	$a0, $s8
	move	$a1, $zero
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_ObviousReductions)
	jirl	$ra, $ra, 0
	addi.d	$a6, $sp, 96
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s5
	move	$a3, $zero
	move	$a4, $s1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(red_SortSimplification)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB13_36
# %bb.33:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.w	$a0, $s8, 68
	bnez	$a0, .LBB13_36
# %bb.34:                               # %land.lhs.true1.i.i
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.w	$a0, $s8, 72
	bnez	$a0, .LBB13_36
# %bb.35:                               # %clause_IsEmptyClause.exit.i
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.w	$a0, $s8, 64
	beqz	$a0, .LBB13_79
	.p2align	4, , 16
.LBB13_36:                              # %if.end.i
                                        #   in Loop: Header=BB13_32 Depth=2
	addi.d	$a4, $sp, 96
	move	$a0, $s8
	move	$a1, $zero
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_Condensing)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 64
	ld.w	$a0, $s8, 68
	ld.w	$a2, $s8, 72
	add.d	$a1, $a0, $a1
	add.w	$s2, $a1, $a2
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB13_53
# %bb.37:                               # %for.body.lr.ph.i.i.i
                                        #   in Loop: Header=BB13_32 Depth=2
	move	$fp, $zero
.LBB13_38:                              # %for.body.i.i.i
                                        #   Parent Loop BB13_18 Depth=1
                                        #     Parent Loop BB13_32 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_43 Depth 4
                                        #           Child Loop BB13_45 Depth 5
	ld.d	$a0, $s8, 56
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a2, $a0, 24
	ld.w	$a0, $a2, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB13_40
# %bb.39:                               # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB13_38 Depth=3
	ld.d	$a0, $a2, 16
	ld.d	$a2, $a0, 8
.LBB13_40:                              # %clause_GetLiteralAtom.exit.i.i.i
                                        #   in Loop: Header=BB13_38 Depth=3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(st_ExistGen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB13_43
.LBB13_41:                              # %for.inc20.i.i.i
                                        #   in Loop: Header=BB13_38 Depth=3
	addi.d	$fp, $fp, 1
	bne	$fp, $s2, .LBB13_38
	b	.LBB13_51
	.p2align	4, , 16
.LBB13_42:                              # %for.end.i.i.i
                                        #   in Loop: Header=BB13_43 Depth=4
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_41
.LBB13_43:                              # %while.body.i.i.i
                                        #   Parent Loop BB13_18 Depth=1
                                        #     Parent Loop BB13_32 Depth=2
                                        #       Parent Loop BB13_38 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB13_45 Depth 5
	ld.d	$s0, $a0, 8
	bnez	$s0, .LBB13_45
	b	.LBB13_42
	.p2align	4, , 16
.LBB13_44:                              # %for.inc.i.i.i
                                        #   in Loop: Header=BB13_45 Depth=5
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB13_42
.LBB13_45:                              # %for.body8.i.i.i
                                        #   Parent Loop BB13_18 Depth=1
                                        #     Parent Loop BB13_32 Depth=2
                                        #       Parent Loop BB13_38 Depth=3
                                        #         Parent Loop BB13_43 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a0, $s0, 8
	ld.d	$s3, $a0, 16
	ld.d	$a1, $s3, 56
	ld.d	$a1, $a1, 0
	bne	$a1, $a0, .LBB13_44
# %bb.46:                               # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB13_45 Depth=5
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(subs_Subsumes)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_44
# %bb.47:                               # %if.then.i.i
                                        #   in Loop: Header=BB13_32 Depth=2
	pcaddu18i	$ra, %call36(st_CancelExistRetrieval)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 32
	beqz	$a0, .LBB13_50
# %bb.48:                               # %land.lhs.true.i20.i
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.w	$a0, $s1, 48
	beqz	$a0, .LBB13_50
# %bb.49:                               # %if.then6.i.i
                                        #   in Loop: Header=BB13_32 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB13_50:                              # %if.then71
                                        #   in Loop: Header=BB13_32 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	b	.LBB13_86
.LBB13_51:                              # %if.else.i86
                                        #   in Loop: Header=BB13_32 Depth=2
	beqz	$s8, .LBB13_56
# %bb.52:                               # %if.else.land.lhs.true.i.i21_crit_edge.i
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.w	$a0, $s8, 68
	.p2align	4, , 16
.LBB13_53:                              # %land.lhs.true.i.i21.i
                                        #   in Loop: Header=BB13_32 Depth=2
	bnez	$a0, .LBB13_56
# %bb.54:                               # %land.lhs.true1.i.i.i
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.w	$a0, $s8, 72
	bnez	$a0, .LBB13_56
# %bb.55:                               # %clause_IsEmptyClause.exit.i.i
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.w	$a0, $s8, 64
	beqz	$a0, .LBB13_78
	.p2align	4, , 16
.LBB13_56:                              # %if.then.i23.i
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$a0, $s8, 56
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 24
	ld.w	$a0, $a2, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB13_58
# %bb.57:                               # %if.then.i.i.i.i
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$a0, $a2, 16
	ld.d	$a2, $a0, 8
.LBB13_58:                              # %clause_GetLiteralAtom.exit.i.i
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(st_ExistInstance)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_78
# %bb.59:                               # %while.body.i.i.preheader
                                        #   in Loop: Header=BB13_32 Depth=2
	move	$s3, $zero
	b	.LBB13_61
	.p2align	4, , 16
.LBB13_60:                              # %for.end.i.i
                                        #   in Loop: Header=BB13_61 Depth=3
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_72
.LBB13_61:                              # %while.body.i.i
                                        #   Parent Loop BB13_18 Depth=1
                                        #     Parent Loop BB13_32 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_64 Depth 4
                                        #           Child Loop BB13_66 Depth 5
                                        #           Child Loop BB13_70 Depth 5
	ld.d	$s2, $a0, 8
	bnez	$s2, .LBB13_64
	b	.LBB13_60
	.p2align	4, , 16
.LBB13_62:                              # %if.then20.i.i
                                        #   in Loop: Header=BB13_64 Depth=4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s3, $a0, 0
	move	$s3, $a0
.LBB13_63:                              # %for.inc.i.i
                                        #   in Loop: Header=BB13_64 Depth=4
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB13_60
.LBB13_64:                              # %for.body.i.i
                                        #   Parent Loop BB13_18 Depth=1
                                        #     Parent Loop BB13_32 Depth=2
                                        #       Parent Loop BB13_61 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB13_66 Depth 5
                                        #           Child Loop BB13_70 Depth 5
	ld.d	$a0, $s2, 8
	ld.d	$fp, $a0, 16
	beq	$s8, $fp, .LBB13_63
# %bb.65:                               # %land.lhs.true.i25.i
                                        #   in Loop: Header=BB13_64 Depth=4
	ld.d	$a1, $fp, 56
	move	$a3, $s5
	.p2align	4, , 16
.LBB13_66:                              # %while.cond.i.i.i
                                        #   Parent Loop BB13_18 Depth=1
                                        #     Parent Loop BB13_32 Depth=2
                                        #       Parent Loop BB13_61 Depth=3
                                        #         Parent Loop BB13_64 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a2, $a0, .LBB13_66
# %bb.67:                               # %clause_LiteralGetIndex.exit.i.i
                                        #   in Loop: Header=BB13_64 Depth=4
	move	$a0, $s8
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subs_Subsumes)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_63
# %bb.68:                               # %land.lhs.true17.i.i
                                        #   in Loop: Header=BB13_64 Depth=4
	beqz	$s3, .LBB13_62
# %bb.69:                               # %while.body.i.i28.i.preheader
                                        #   in Loop: Header=BB13_64 Depth=4
	move	$a0, $s3
	.p2align	4, , 16
.LBB13_70:                              # %while.body.i.i28.i
                                        #   Parent Loop BB13_18 Depth=1
                                        #     Parent Loop BB13_32 Depth=2
                                        #       Parent Loop BB13_61 Depth=3
                                        #         Parent Loop BB13_64 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a1, $a0, 8
	beq	$fp, $a1, .LBB13_63
# %bb.71:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB13_70 Depth=5
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB13_70
	b	.LBB13_62
	.p2align	4, , 16
.LBB13_72:                              # %for.cond24.preheader.i.i
                                        #   in Loop: Header=BB13_32 Depth=2
	move	$s2, $s3
	bnez	$s3, .LBB13_74
	b	.LBB13_78
	.p2align	4, , 16
.LBB13_73:                              # %if.end39.i.i
                                        #   in Loop: Header=BB13_74 Depth=3
	ld.wu	$a0, $fp, 48
	andi	$a0, $a0, 1
	sltui	$s0, $a0, 1
	masknez	$a0, $s6, $s0
	maskeqz	$a1, $s4, $s0
	or	$a0, $a1, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(list_PointerDeleteOneElement)
	jirl	$ra, $ra, 0
	maskeqz	$a1, $a0, $s0
	masknez	$a2, $s4, $s0
	or	$s4, $a1, $a2
	masknez	$a0, $a0, $s0
	maskeqz	$a1, $s6, $s0
	or	$s6, $a1, $a0
	move	$a0, $fp
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_DeleteFlatFromIndex)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB13_77
.LBB13_74:                              # %for.body28.i.i
                                        #   Parent Loop BB13_18 Depth=1
                                        #     Parent Loop BB13_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s1, 32
	ld.d	$fp, $s2, 8
	beqz	$a0, .LBB13_73
# %bb.75:                               # %land.lhs.true32.i.i
                                        #   in Loop: Header=BB13_74 Depth=3
	ld.w	$a0, $s1, 48
	beqz	$a0, .LBB13_73
# %bb.76:                               # %if.then35.i.i
                                        #   in Loop: Header=BB13_74 Depth=3
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB13_73
	.p2align	4, , 16
.LBB13_77:                              # %while.body.i41.i.i
                                        #   Parent Loop BB13_18 Depth=1
                                        #     Parent Loop BB13_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s3, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s3, 0
	ld.d	$a0, $a0, 128
	st.d	$s3, $a0, 0
	move	$s3, $a5
	bnez	$a5, .LBB13_77
.LBB13_78:                              # %red_CDBackSubsumption.exit.i
                                        #   in Loop: Header=BB13_32 Depth=2
	move	$a0, $s8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_InsertFlatIntoIndex)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s8, $a0, 8
	st.d	$s4, $a0, 0
	move	$s4, $a0
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
.LBB13_79:                              # %if.else72
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.w	$a0, $s1, 32
	beqz	$a0, .LBB13_81
# %bb.80:                               # %if.then76
                                        #   in Loop: Header=BB13_32 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB13_81:                              # %if.end78
                                        #   in Loop: Header=BB13_32 Depth=2
	beqz	$s8, .LBB13_86
# %bb.82:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.w	$a0, $s8, 68
	bnez	$a0, .LBB13_86
# %bb.83:                               # %land.lhs.true1.i
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.w	$a0, $s8, 72
	bnez	$a0, .LBB13_86
# %bb.84:                               # %clause_IsEmptyClause.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.w	$a0, $s8, 64
	bnez	$a0, .LBB13_86
# %bb.85:                               # %if.then81
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$fp, $sp, 88
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s8, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $sp, 88
	.p2align	4, , 16
.LBB13_86:                              # %if.end84
                                        #   in Loop: Header=BB13_32 Depth=2
	st.d	$zero, $s7, 8
	ld.d	$s7, $s7, 0
	ld.d	$a0, $sp, 88
	beqz	$s7, .LBB13_88
# %bb.87:                               # %if.end84
                                        #   in Loop: Header=BB13_32 Depth=2
	beqz	$a0, .LBB13_32
.LBB13_88:                              # %for.end87
                                        #   in Loop: Header=BB13_18 Depth=1
	beqz	$a0, .LBB13_92
# %bb.89:                               # %if.then90
                                        #   in Loop: Header=BB13_18 Depth=1
	ld.w	$a0, $s1, 32
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB13_27
# %bb.90:                               # %if.then93
                                        #   in Loop: Header=BB13_18 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 35
	b	.LBB13_26
.LBB13_91:                              #   in Loop: Header=BB13_18 Depth=1
	ori	$a0, $zero, 1
	move	$s7, $s6
	bnez	$s4, .LBB13_29
	b	.LBB13_94
.LBB13_92:                              #   in Loop: Header=BB13_18 Depth=1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_93:                              # %while.body.i97
                                        #   Parent Loop BB13_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a6, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a6, 0
	ld.d	$a0, $a0, 128
	st.d	$a6, $a0, 0
	move	$a6, $a5
	bnez	$a5, .LBB13_93
	b	.LBB13_28
.LBB13_94:                              # %while.end
	beqz	$a0, .LBB13_97
# %bb.95:                               # %if.else111
	ld.w	$a0, $s1, 76
	beqz	$a0, .LBB13_99
# %bb.96:                               # %if.then114
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	b	.LBB13_99
.LBB13_97:                              # %if.then104
	ld.w	$a0, $s1, 32
	beqz	$a0, .LBB13_99
# %bb.98:                               # %if.then107
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB13_99:                              # %if.end117
	move	$a0, $s4
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_DeleteClauseListFlatFromIndex)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_DeleteClauseListFlatFromIndex)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(st_IndexDelete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB13_103
# %bb.100:                              # %if.then120
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
.LBB13_101:                             # %cleanup
	move	$a0, $zero
.LBB13_102:                             # %cleanup
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB13_103:
	ori	$a0, $zero, 1
	b	.LBB13_102
.Lfunc_end13:
	.size	red_ClauseDeletion, .Lfunc_end13-red_ClauseDeletion
                                        # -- End function
	.globl	red_SatUnit                     # -- Begin function red_SatUnit
	.p2align	5
	.type	red_SatUnit,@function
red_SatUnit:                            # @red_SatUnit
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
	move	$fp, $a0
	ld.d	$s1, $a0, 112
	ld.d	$s2, $a0, 104
	ld.w	$s7, $s1, 220
	move	$a0, $a1
	st.d	$zero, $sp, 16
	pcaddu18i	$ra, %call36(clause_ListSortWeighed)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_31
# %bb.1:
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s5, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s6, $a0, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB14_2:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_10 Depth 2
                                        #     Child Loop BB14_16 Depth 2
                                        #     Child Loop BB14_19 Depth 2
	ld.d	$a0, $s5, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s6, 0
	move	$a3, $s0
	ld.d	$s0, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a0, $s5, 128
	ld.d	$a1, $a3, 8
	st.d	$a3, $a0, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(red_ReductionOnDerivedClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_23
# %bb.3:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB14_2 Depth=1
	move	$s3, $a0
	ld.w	$a0, $a0, 68
	bnez	$a0, .LBB14_6
# %bb.4:                                # %land.lhs.true1.i
                                        #   in Loop: Header=BB14_2 Depth=1
	ld.w	$a0, $s3, 72
	bnez	$a0, .LBB14_6
# %bb.5:                                # %clause_IsEmptyClause.exit
                                        #   in Loop: Header=BB14_2 Depth=1
	ld.w	$a0, $s3, 64
	beqz	$a0, .LBB14_25
	.p2align	4, , 16
.LBB14_6:                               # %if.else
                                        #   in Loop: Header=BB14_2 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(red_BackReduction)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, 0
	beqz	$s7, .LBB14_12
# %bb.7:                                # %if.end25
                                        #   in Loop: Header=BB14_2 Depth=1
	ld.d	$a1, $fp, 48
	move	$s8, $a0
	move	$a0, $s3
	move	$a2, $zero
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(inf_BoundedDepthUnitResolution)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	sub.d	$a1, $s7, $a0
	sltu	$a2, $s7, $a1
	masknez	$s7, $a1, $a2
	beqz	$s8, .LBB14_13
# %bb.8:                                # %if.end.i
                                        #   in Loop: Header=BB14_2 Depth=1
	move	$a0, $s8
	beqz	$s4, .LBB14_14
# %bb.9:                                # %for.cond.i.preheader
                                        #   in Loop: Header=BB14_2 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB14_10:                              # %for.cond.i
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB14_10
# %bb.11:                               # %for.end.i
                                        #   in Loop: Header=BB14_2 Depth=1
	st.d	$s4, $a1, 0
	b	.LBB14_14
	.p2align	4, , 16
.LBB14_12:                              #   in Loop: Header=BB14_2 Depth=1
	move	$s7, $zero
	b	.LBB14_14
.LBB14_13:                              #   in Loop: Header=BB14_2 Depth=1
	move	$a0, $s4
.LBB14_14:                              # %list_Nconc.exit
                                        #   in Loop: Header=BB14_2 Depth=1
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(split_ExtractEmptyClauses)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(prfs_InsertUsableClause)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB14_21
# %bb.15:                               # %for.body.preheader
                                        #   in Loop: Header=BB14_2 Depth=1
	move	$a0, $s4
	.p2align	4, , 16
.LBB14_16:                              # %for.body
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 8
	st.w	$zero, $a1, 8
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB14_16
# %bb.17:                               # %for.end.thread
                                        #   in Loop: Header=BB14_2 Depth=1
	beqz	$s0, .LBB14_22
# %bb.18:                               # %for.cond.i38.preheader
                                        #   in Loop: Header=BB14_2 Depth=1
	move	$a1, $s0
	.p2align	4, , 16
.LBB14_19:                              # %for.cond.i38
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB14_19
# %bb.20:                               # %for.end.i42
                                        #   in Loop: Header=BB14_2 Depth=1
	st.d	$s4, $a0, 0
	bnez	$s0, .LBB14_24
	b	.LBB14_26
	.p2align	4, , 16
.LBB14_21:                              # %for.end
                                        #   in Loop: Header=BB14_2 Depth=1
	sltui	$a0, $s0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s4, $a0
	or	$s0, $a0, $a1
	bnez	$s0, .LBB14_24
	b	.LBB14_26
.LBB14_22:                              #   in Loop: Header=BB14_2 Depth=1
	move	$s0, $s4
	.p2align	4, , 16
.LBB14_23:                              # %if.end35
                                        #   in Loop: Header=BB14_2 Depth=1
	beqz	$s0, .LBB14_26
.LBB14_24:                              # %if.end35
                                        #   in Loop: Header=BB14_2 Depth=1
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB14_2
	b	.LBB14_26
.LBB14_25:                              # %if.then13
                                        #   in Loop: Header=BB14_2 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $sp, 16
	bnez	$s0, .LBB14_24
.LBB14_26:                              # %for.cond36.preheader
	beqz	$s0, .LBB14_32
# %bb.27:
	move	$s1, $s0
	.p2align	4, , 16
.LBB14_28:                              # %for.body40
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(prfs_InsertUsableClause)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB14_28
# %bb.29:
	move	$a0, $s0
	beqz	$s0, .LBB14_31
	.p2align	4, , 16
.LBB14_30:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s5, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s6, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s5, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB14_30
.LBB14_31:                              # %list_Delete.exit
	ld.d	$a0, $sp, 16
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
.LBB14_32:
	move	$a0, $zero
	bnez	$s0, .LBB14_30
	b	.LBB14_31
.Lfunc_end14:
	.size	red_SatUnit, .Lfunc_end14-red_SatUnit
                                        # -- End function
	.globl	red_ReduceInput                 # -- Begin function red_ReduceInput
	.p2align	5
	.type	red_ReduceInput,@function
red_ReduceInput:                        # @red_ReduceInput
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s3, $a0, 112
	ld.d	$a0, $a0, 104
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $a1
	st.d	$zero, $sp, 40
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clause_ListSortWeighed)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(split_ExtractEmptyClauses)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	sltui	$s1, $a0, 1
	beqz	$a0, .LBB15_30
# %bb.1:                                # %entry
	ld.d	$a0, $sp, 40
	bnez	$a0, .LBB15_30
# %bb.2:                                # %land.rhs.lr.ph
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s6, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s7, $a0, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s8, $a0, %got_pc_lo12(fol_NOT)
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(clause_Weight)
	addi.d	$a0, $a0, %pc_lo12(clause_Weight)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB15_3:                               # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_8 Depth 2
                                        #     Child Loop BB15_23 Depth 2
                                        #     Child Loop BB15_15 Depth 2
	ld.w	$a0, $s3, 28
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB15_5
# %bb.4:                                # %lor.rhs
                                        #   in Loop: Header=BB15_3 Depth=1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fs0, $fa0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(clock_GetSeconds)
	jirl	$ra, $ra, 0
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB15_32
.LBB15_5:                               # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a0, $s6, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s7, 0
	ld.d	$a3, $s5, 0
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	add.d	$a1, $a2, $a1
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s6, 128
	ld.d	$s4, $s5, 8
	st.d	$s5, $a0, 0
	ld.w	$a2, $s4, 64
	ld.w	$a3, $s4, 68
	add.w	$a0, $a3, $a2
	addi.w	$a1, $a0, -1
	bltz	$a1, .LBB15_13
# %bb.6:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.w	$a1, $s8, 0
	move	$s0, $zero
	move	$s1, $zero
	move	$s5, $zero
	bstrpick.d	$s2, $a0, 31, 0
	b	.LBB15_8
	.p2align	4, , 16
.LBB15_7:                               # %for.inc.i
                                        #   in Loop: Header=BB15_8 Depth=2
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	beq	$s2, $s1, .LBB15_12
.LBB15_8:                               # %for.body.i
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a2, $a0, 24
	ld.w	$a0, $a2, 0
	beq	$a0, $a1, .LBB15_10
# %bb.9:                                # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB15_8 Depth=2
	pcalau12i	$a2, %got_pc_hi20(fol_TRUE)
	ld.d	$a2, $a2, %got_pc_lo12(fol_TRUE)
	ld.w	$a2, $a2, 0
	bne	$a2, $a0, .LBB15_7
	b	.LBB15_11
	.p2align	4, , 16
.LBB15_10:                              # %if.then.i.i
                                        #   in Loop: Header=BB15_8 Depth=2
	ld.d	$a0, $a2, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(fol_TRUE)
	ld.d	$a2, $a2, %got_pc_lo12(fol_TRUE)
	ld.w	$a2, $a2, 0
	bne	$a2, $a0, .LBB15_7
.LBB15_11:                              # %if.then.i
                                        #   in Loop: Header=BB15_8 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 0
	ld.w	$a1, $s8, 0
	st.d	$s1, $a0, 8
	move	$s5, $a0
	b	.LBB15_7
	.p2align	4, , 16
.LBB15_12:                              # %for.end.loopexit.i
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.w	$a2, $s4, 64
	ld.w	$a3, $s4, 68
	add.w	$a0, $a2, $a3
	ld.w	$a4, $s4, 72
	add.d	$a1, $a4, $a0
	addi.w	$a1, $a1, -1
	blt	$a1, $a0, .LBB15_14
	b	.LBB15_21
	.p2align	4, , 16
.LBB15_13:                              #   in Loop: Header=BB15_3 Depth=1
	move	$s5, $zero
	ld.w	$a4, $s4, 72
	add.d	$a1, $a4, $a0
	addi.w	$a1, $a1, -1
	bge	$a1, $a0, .LBB15_21
	.p2align	4, , 16
.LBB15_14:                              # %for.end23.i
                                        #   in Loop: Header=BB15_3 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s3
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_DeleteLiterals)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB15_16
	.p2align	4, , 16
.LBB15_15:                              # %while.body.i.i
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s7, 0
	ld.d	$a3, $s5, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s6, 128
	st.d	$s5, $a0, 0
	move	$s5, $a3
	bnez	$a3, .LBB15_15
.LBB15_16:                              # %red_SpecialInputReductions.exit
                                        #   in Loop: Header=BB15_3 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(red_ReductionOnDerivedClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_27
# %bb.17:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB15_3 Depth=1
	move	$s4, $a0
	ld.w	$a0, $fp, 140
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 140
	ld.w	$a0, $s4, 68
	bnez	$a0, .LBB15_20
# %bb.18:                               # %land.lhs.true1.i
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.w	$a0, $s4, 72
	bnez	$a0, .LBB15_20
# %bb.19:                               # %clause_IsEmptyClause.exit
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.w	$a0, $s4, 64
	beqz	$a0, .LBB15_29
	.p2align	4, , 16
.LBB15_20:                              # %if.else
                                        #   in Loop: Header=BB15_3 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(red_BackReduction)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 144
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 144
	addi.d	$a1, $sp, 40
	move	$a0, $s5
	pcaddu18i	$ra, %call36(split_ExtractEmptyClauses)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(prfs_InsertUsableClause)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_ListSortWeighed)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_NNumberMerge)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	sltui	$s1, $s5, 1
	bnez	$s5, .LBB15_28
	b	.LBB15_30
	.p2align	4, , 16
.LBB15_21:                              # %for.body12.lr.ph.i
                                        #   in Loop: Header=BB15_3 Depth=1
	add.d	$s1, $a2, $a3
	ld.w	$a1, $s8, 0
	add.d	$a0, $a0, $a4
	add.d	$a2, $a2, $a3
	sub.d	$s2, $a0, $a2
	slli.d	$s0, $s1, 3
	b	.LBB15_23
	.p2align	4, , 16
.LBB15_22:                              # %for.inc21.i
                                        #   in Loop: Header=BB15_23 Depth=2
	addi.d	$s1, $s1, 1
	addi.w	$s2, $s2, -1
	addi.d	$s0, $s0, 8
	beqz	$s2, .LBB15_14
.LBB15_23:                              # %for.body12.i
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a2, $a0, 24
	ld.w	$a0, $a2, 0
	beq	$a0, $a1, .LBB15_25
# %bb.24:                               # %clause_LiteralAtom.exit35.i
                                        #   in Loop: Header=BB15_23 Depth=2
	pcalau12i	$a2, %got_pc_hi20(fol_FALSE)
	ld.d	$a2, $a2, %got_pc_lo12(fol_FALSE)
	ld.w	$a2, $a2, 0
	bne	$a2, $a0, .LBB15_22
	b	.LBB15_26
	.p2align	4, , 16
.LBB15_25:                              # %if.then.i32.i
                                        #   in Loop: Header=BB15_23 Depth=2
	ld.d	$a0, $a2, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(fol_FALSE)
	ld.d	$a2, $a2, %got_pc_lo12(fol_FALSE)
	ld.w	$a2, $a2, 0
	bne	$a2, $a0, .LBB15_22
.LBB15_26:                              # %if.then17.i
                                        #   in Loop: Header=BB15_23 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 0
	ld.w	$a1, $s8, 0
	st.d	$s1, $a0, 8
	move	$s5, $a0
	b	.LBB15_22
	.p2align	4, , 16
.LBB15_27:                              #   in Loop: Header=BB15_3 Depth=1
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	sltui	$s1, $s5, 1
	beqz	$s5, .LBB15_30
.LBB15_28:                              # %if.end27
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB15_3
	b	.LBB15_30
.LBB15_29:                              # %if.then20
                                        #   in Loop: Header=BB15_3 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $sp, 40
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	sltui	$s1, $s5, 1
	bnez	$s5, .LBB15_28
.LBB15_30:                              # %while.end
	bnez	$s5, .LBB15_33
# %bb.31:
	move	$s5, $zero
	b	.LBB15_35
.LBB15_32:
	move	$s1, $zero
.LBB15_33:                              # %for.body.preheader
	move	$s0, $s5
	.p2align	4, , 16
.LBB15_34:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(prfs_InsertUsableClause)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB15_34
.LBB15_35:                              # %for.end
	bnez	$s1, .LBB15_38
# %bb.36:                               # %while.body.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB15_37:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s5, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s5, 0
	ld.d	$a2, $a0, 128
	st.d	$s5, $a2, 0
	move	$s5, $a5
	bnez	$a5, .LBB15_37
.LBB15_38:                              # %list_Delete.exit
	ld.d	$a0, $sp, 40
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end15:
	.size	red_ReduceInput, .Lfunc_end15-red_ReduceInput
                                        # -- End function
	.globl	red_SatInput                    # -- Begin function red_SatInput
	.p2align	5
	.type	red_SatInput,@function
red_SatInput:                           # @red_SatInput
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 112
	ld.d	$s1, $a0, 104
	ld.d	$s4, $a0, 56
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s3, $zero
	beqz	$s4, .LBB16_14
# %bb.1:                                # %entry
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB16_14
# %bb.2:                                # %land.rhs.lr.ph
	move	$s3, $zero
	addi.w	$s6, $zero, -1
	.p2align	4, , 16
.LBB16_3:                               # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_9 Depth 2
	ld.w	$a0, $s0, 28
	beq	$a0, $s6, .LBB16_5
# %bb.4:                                # %lor.rhs
                                        #   in Loop: Header=BB16_3 Depth=1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fs0, $fa0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(clock_GetSeconds)
	jirl	$ra, $ra, 0
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB16_14
.LBB16_5:                               # %while.body
                                        #   in Loop: Header=BB16_3 Depth=1
	ld.d	$a0, $s4, 8
	ld.bu	$a1, $a0, 48
	andi	$a1, $a1, 8
	beqz	$a1, .LBB16_12
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB16_3 Depth=1
	ld.d	$a1, $fp, 48
	move	$a2, $zero
	move	$a3, $s0
	move	$a4, $s1
	pcaddu18i	$ra, %call36(inf_BoundedDepthUnitResolution)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	sub.w	$s2, $s2, $a0
	beqz	$s5, .LBB16_12
# %bb.7:                                # %if.end.i
                                        #   in Loop: Header=BB16_3 Depth=1
	beqz	$s3, .LBB16_11
# %bb.8:                                # %for.cond.i.preheader
                                        #   in Loop: Header=BB16_3 Depth=1
	move	$a1, $s5
	.p2align	4, , 16
.LBB16_9:                               # %for.cond.i
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB16_9
# %bb.10:                               # %for.end.i
                                        #   in Loop: Header=BB16_3 Depth=1
	st.d	$s3, $a0, 0
.LBB16_11:                              # %if.end
                                        #   in Loop: Header=BB16_3 Depth=1
	move	$s3, $s5
.LBB16_12:                              # %if.end
                                        #   in Loop: Header=BB16_3 Depth=1
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB16_14
# %bb.13:                               # %if.end
                                        #   in Loop: Header=BB16_3 Depth=1
	bgtz	$s2, .LBB16_3
.LBB16_14:                              # %while.end
	move	$a0, $s3
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 144
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 144
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(red_ReduceInput)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB16_17
# %bb.15:                               # %while.body.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB16_16:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s3, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s3, 0
	ld.d	$a3, $a1, 128
	st.d	$s3, $a3, 0
	move	$s3, $a6
	bnez	$a6, .LBB16_16
.LBB16_17:                              # %list_Delete.exit
	bnez	$a0, .LBB16_36
# %bb.18:                               # %while.cond28.preheader
	ld.d	$s5, $fp, 56
	move	$s3, $zero
	beqz	$s5, .LBB16_33
# %bb.19:                               # %while.cond28.preheader
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB16_33
# %bb.20:                               # %land.rhs34.lr.ph
	move	$s3, $zero
	addi.w	$s6, $zero, -1
	ori	$s7, $zero, 16
	.p2align	4, , 16
.LBB16_21:                              # %land.rhs34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_28 Depth 2
	ld.w	$a0, $s0, 28
	beq	$a0, $s6, .LBB16_23
# %bb.22:                               # %lor.rhs38
                                        #   in Loop: Header=BB16_21 Depth=1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fs0, $fa0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(clock_GetSeconds)
	jirl	$ra, $ra, 0
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB16_33
.LBB16_23:                              # %while.body46
                                        #   in Loop: Header=BB16_21 Depth=1
	ld.d	$a0, $s5, 8
	ld.bu	$a1, $a0, 48
	andi	$a1, $a1, 8
	beqz	$a1, .LBB16_31
# %bb.24:                               # %land.lhs.true50
                                        #   in Loop: Header=BB16_21 Depth=1
	ld.w	$a1, $a0, 76
	bne	$a1, $s7, .LBB16_31
# %bb.25:                               # %if.then53
                                        #   in Loop: Header=BB16_21 Depth=1
	ld.d	$a1, $fp, 48
	ori	$a2, $zero, 1
	move	$a3, $s0
	move	$a4, $s1
	pcaddu18i	$ra, %call36(inf_BoundedDepthUnitResolution)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	sub.w	$s2, $s2, $a0
	beqz	$s4, .LBB16_31
# %bb.26:                               # %if.end.i65
                                        #   in Loop: Header=BB16_21 Depth=1
	beqz	$s3, .LBB16_30
# %bb.27:                               # %for.cond.i67.preheader
                                        #   in Loop: Header=BB16_21 Depth=1
	move	$a1, $s4
	.p2align	4, , 16
.LBB16_28:                              # %for.cond.i67
                                        #   Parent Loop BB16_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB16_28
# %bb.29:                               # %for.end.i71
                                        #   in Loop: Header=BB16_21 Depth=1
	st.d	$s3, $a0, 0
.LBB16_30:                              # %if.end59
                                        #   in Loop: Header=BB16_21 Depth=1
	move	$s3, $s4
	.p2align	4, , 16
.LBB16_31:                              # %if.end59
                                        #   in Loop: Header=BB16_21 Depth=1
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB16_33
# %bb.32:                               # %if.end59
                                        #   in Loop: Header=BB16_21 Depth=1
	bgtz	$s2, .LBB16_21
.LBB16_33:                              # %while.end61
	move	$a0, $s3
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 144
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 144
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(red_ReduceInput)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB16_36
# %bb.34:                               # %while.body.i77.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB16_35:                              # %while.body.i77
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s3, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s3, 0
	ld.d	$a3, $a1, 128
	st.d	$s3, $a3, 0
	move	$s3, $a6
	bnez	$a6, .LBB16_35
.LBB16_36:                              # %if.end64
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.Lfunc_end16:
	.size	red_SatInput, .Lfunc_end16-red_SatInput
                                        # -- End function
	.globl	red_CheckSplitSubsumptionCondition # -- Begin function red_CheckSplitSubsumptionCondition
	.p2align	5
	.type	red_CheckSplitSubsumptionCondition,@function
red_CheckSplitSubsumptionCondition:     # @red_CheckSplitSubsumptionCondition
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s3, $a0, 120
	beqz	$s3, .LBB17_9
# %bb.1:
	move	$s0, $a0
	ld.d	$s1, $a0, 112
	ld.d	$s2, $a0, 104
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %for.cond.loopexit
                                        #   in Loop: Header=BB17_3 Depth=1
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB17_9
.LBB17_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
	ld.d	$a0, $s3, 8
	ld.d	$s4, $a0, 16
	bnez	$s4, .LBB17_5
	b	.LBB17_2
	.p2align	4, , 16
.LBB17_4:                               # %for.inc
                                        #   in Loop: Header=BB17_5 Depth=2
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB17_2
.LBB17_5:                               # %for.body10
                                        #   Parent Loop BB17_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $s4, 8
	ld.d	$a1, $s0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(red_ForwardSubsumer)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_4
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB17_5 Depth=2
	ld.d	$a1, $s0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(red_ForwardSubsumer)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_4
# %bb.7:                                # %land.lhs.true18
                                        #   in Loop: Header=BB17_5 Depth=2
	ld.d	$a0, $s0, 64
	move	$a1, $fp
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(red_ClauseDeletion)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_4
# %bb.8:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	lu12i.w	$a3, 1
	ori	$a3, $a3, 404
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(prfs_PrintSplit)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_DumpCore)
	jirl	$ra, $ra, 0
.LBB17_9:                               # %for.end29
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end17:
	.size	red_CheckSplitSubsumptionCondition, .Lfunc_end17-red_CheckSplitSubsumptionCondition
                                        # -- End function
	.p2align	5                               # -- Begin function red_ForwardSubsumer
	.type	red_ForwardSubsumer,@function
red_ForwardSubsumer:                    # @red_ForwardSubsumer
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a4, $a0, 64
	ld.w	$a2, $a0, 68
	ld.w	$a0, $a0, 72
	addi.w	$s7, $a4, -1
	add.w	$a3, $s7, $a2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	add.w	$a3, $a3, $a0
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	bltz	$a3, .LBB18_86
# %bb.1:                                # %for.body.lr.ph
	move	$s1, $zero
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	add.d	$a1, $a2, $a4
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$a3, $a2, %got_pc_lo12(fol_NOT)
	pcalau12i	$a2, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a2, $a2, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a2, $a2, %got_pc_lo12(fol_EQUALITY)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$s6, $a2, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s0, $a2, %got_pc_lo12(memory_FREEDBYTES)
	add.d	$a0, $a1, $a0
	addi.w	$a1, $a1, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	b	.LBB18_4
.LBB18_2:                               # %list_Delete.exit160
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a0, $s6, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s6, 256
	st.d	$s3, $a0, 0
	.p2align	4, , 16
.LBB18_3:                               # %for.inc111
                                        #   in Loop: Header=BB18_4 Depth=1
	addi.d	$s1, $s1, 1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beq	$s1, $a0, .LBB18_86
.LBB18_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_25 Depth 2
                                        #       Child Loop BB18_30 Depth 3
                                        #         Child Loop BB18_34 Depth 4
                                        #         Child Loop BB18_42 Depth 4
                                        #         Child Loop BB18_38 Depth 4
                                        #     Child Loop BB18_9 Depth 2
                                        #       Child Loop BB18_13 Depth 3
                                        #         Child Loop BB18_17 Depth 4
                                        #         Child Loop BB18_21 Depth 4
                                        #     Child Loop BB18_50 Depth 2
                                        #       Child Loop BB18_55 Depth 3
                                        #         Child Loop BB18_59 Depth 4
                                        #         Child Loop BB18_67 Depth 4
                                        #         Child Loop BB18_63 Depth 4
                                        #       Child Loop BB18_72 Depth 3
                                        #         Child Loop BB18_76 Depth 4
                                        #         Child Loop BB18_80 Depth 4
                                        #     Child Loop BB18_84 Depth 2
	ld.d	$a0, $fp, 56
	slli.d	$s8, $s1, 3
	ldx.d	$a0, $a0, $s8
	ld.d	$s3, $a0, 24
	ld.w	$a0, $s3, 0
	ld.w	$a1, $a3, 0
	bne	$a0, $a1, .LBB18_6
# %bb.5:                                # %if.then.i.i
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a0, $s3, 16
	ld.d	$s3, $a0, 8
.LBB18_6:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(st_ExistGen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_45
# %bb.7:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slt	$a1, $s1, $a1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	slt	$a2, $a2, $s1
	or	$s5, $a1, $a2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bge	$s1, $a1, .LBB18_25
	b	.LBB18_9
	.p2align	4, , 16
.LBB18_8:                               # %if.end44.us
                                        #   in Loop: Header=BB18_9 Depth=2
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_45
.LBB18_9:                               # %while.body.us
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_13 Depth 3
                                        #         Child Loop BB18_17 Depth 4
                                        #         Child Loop BB18_21 Depth 4
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB18_8
# %bb.10:                               # %if.then.us
                                        #   in Loop: Header=BB18_9 Depth=2
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB18_13
	b	.LBB18_8
.LBB18_11:                              # %land.lhs.true38.us.us
                                        #   in Loop: Header=BB18_13 Depth=3
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(subs_SubsumesBasic)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_85
	.p2align	4, , 16
.LBB18_12:                              # %for.inc.us.us
                                        #   in Loop: Header=BB18_13 Depth=3
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB18_8
.LBB18_13:                              # %for.body15.us.us
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_17 Depth 4
                                        #         Child Loop BB18_21 Depth 4
	ld.d	$a0, $s4, 8
	ld.d	$s2, $a0, 16
	beq	$s2, $fp, .LBB18_12
# %bb.14:                               # %land.lhs.true.us.us
                                        #   in Loop: Header=BB18_13 Depth=3
	ld.d	$a1, $s2, 56
	ld.d	$a2, $a1, 0
	bne	$a2, $a0, .LBB18_12
# %bb.15:                               # %land.lhs.true22.us.us
                                        #   in Loop: Header=BB18_13 Depth=3
	blt	$s7, $s1, .LBB18_19
# %bb.16:                               # %while.cond.i.i.us.us.preheader
                                        #   in Loop: Header=BB18_13 Depth=3
	addi.d	$a2, $zero, -1
	move	$a3, $a1
	.p2align	4, , 16
.LBB18_17:                              # %while.cond.i.i.us.us
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_9 Depth=2
                                        #       Parent Loop BB18_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a4, $a3, 0
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $a0, .LBB18_17
# %bb.18:                               # %clause_LiteralIsFromConstraint.exit.us.us
                                        #   in Loop: Header=BB18_13 Depth=3
	ld.w	$a3, $s2, 64
	blt	$a2, $a3, .LBB18_11
.LBB18_19:                              # %lor.lhs.false.us.us
                                        #   in Loop: Header=BB18_13 Depth=3
	bnez	$s5, .LBB18_12
# %bb.20:                               # %while.cond.i.i80.us.us.preheader
                                        #   in Loop: Header=BB18_13 Depth=3
	addi.d	$a2, $zero, -1
	.p2align	4, , 16
.LBB18_21:                              # %while.cond.i.i80.us.us
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_9 Depth=2
                                        #       Parent Loop BB18_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a1, 0
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a0, .LBB18_21
# %bb.22:                               # %clause_LiteralIsFromAntecedent.exit.us.us
                                        #   in Loop: Header=BB18_13 Depth=3
	ld.w	$a0, $s2, 64
	blt	$a2, $a0, .LBB18_12
# %bb.23:                               # %clause_LiteralIsFromAntecedent.exit.us.us
                                        #   in Loop: Header=BB18_13 Depth=3
	ld.w	$a1, $s2, 68
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	bge	$a0, $a2, .LBB18_11
	b	.LBB18_12
	.p2align	4, , 16
.LBB18_24:                              # %if.end44
                                        #   in Loop: Header=BB18_25 Depth=2
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_45
.LBB18_25:                              # %while.body
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_30 Depth 3
                                        #         Child Loop BB18_34 Depth 4
                                        #         Child Loop BB18_42 Depth 4
                                        #         Child Loop BB18_38 Depth 4
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB18_24
# %bb.26:                               # %if.then
                                        #   in Loop: Header=BB18_25 Depth=2
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_24
# %bb.27:                               # %for.body15.preheader
                                        #   in Loop: Header=BB18_25 Depth=2
	move	$s4, $a0
	b	.LBB18_30
.LBB18_28:                              # %land.lhs.true38
                                        #   in Loop: Header=BB18_30 Depth=3
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(subs_SubsumesBasic)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_85
	.p2align	4, , 16
.LBB18_29:                              # %for.inc
                                        #   in Loop: Header=BB18_30 Depth=3
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB18_24
.LBB18_30:                              # %for.body15
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_34 Depth 4
                                        #         Child Loop BB18_42 Depth 4
                                        #         Child Loop BB18_38 Depth 4
	ld.d	$a0, $s4, 8
	ld.d	$s2, $a0, 16
	beq	$s2, $fp, .LBB18_29
# %bb.31:                               # %land.lhs.true
                                        #   in Loop: Header=BB18_30 Depth=3
	ld.d	$a1, $s2, 56
	ld.d	$a2, $a1, 0
	bne	$a2, $a0, .LBB18_29
# %bb.32:                               # %land.lhs.true22
                                        #   in Loop: Header=BB18_30 Depth=3
	blt	$s7, $s1, .LBB18_36
# %bb.33:                               # %while.cond.i.i.preheader
                                        #   in Loop: Header=BB18_30 Depth=3
	addi.d	$a2, $zero, -1
	move	$a3, $a1
	.p2align	4, , 16
.LBB18_34:                              # %while.cond.i.i
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_25 Depth=2
                                        #       Parent Loop BB18_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a4, $a3, 0
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $a0, .LBB18_34
# %bb.35:                               # %clause_LiteralIsFromConstraint.exit
                                        #   in Loop: Header=BB18_30 Depth=3
	ld.w	$a3, $s2, 64
	blt	$a2, $a3, .LBB18_28
.LBB18_36:                              # %lor.lhs.false
                                        #   in Loop: Header=BB18_30 Depth=3
	beqz	$s5, .LBB18_41
.LBB18_37:                              # %while.cond.i.i89.preheader
                                        #   in Loop: Header=BB18_30 Depth=3
	addi.d	$a2, $zero, -1
	.p2align	4, , 16
.LBB18_38:                              # %while.cond.i.i89
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_25 Depth=2
                                        #       Parent Loop BB18_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a1, 0
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a0, .LBB18_38
# %bb.39:                               # %clause_LiteralIsFromSuccedent.exit
                                        #   in Loop: Header=BB18_30 Depth=3
	ld.w	$a0, $s2, 64
	ld.w	$a1, $s2, 68
	add.w	$a0, $a1, $a0
	blt	$a2, $a0, .LBB18_29
# %bb.40:                               # %clause_LiteralIsFromSuccedent.exit
                                        #   in Loop: Header=BB18_30 Depth=3
	ld.w	$a1, $s2, 72
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	bge	$a0, $a2, .LBB18_28
	b	.LBB18_29
.LBB18_41:                              # %while.cond.i.i80.preheader
                                        #   in Loop: Header=BB18_30 Depth=3
	addi.d	$a2, $zero, -1
	move	$a3, $a1
	.p2align	4, , 16
.LBB18_42:                              # %while.cond.i.i80
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_25 Depth=2
                                        #       Parent Loop BB18_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a4, $a3, 0
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $a0, .LBB18_42
# %bb.43:                               # %clause_LiteralIsFromAntecedent.exit
                                        #   in Loop: Header=BB18_30 Depth=3
	ld.w	$a3, $s2, 64
	blt	$a2, $a3, .LBB18_37
# %bb.44:                               # %clause_LiteralIsFromAntecedent.exit
                                        #   in Loop: Header=BB18_30 Depth=3
	ld.w	$a4, $s2, 68
	add.d	$a3, $a3, $a4
	addi.w	$a3, $a3, -1
	bge	$a3, $a2, .LBB18_28
	b	.LBB18_37
	.p2align	4, , 16
.LBB18_45:                              # %while.end
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.w	$s2, $s3, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bne	$s2, $a0, .LBB18_3
# %bb.46:                               # %land.lhs.true48
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s8
	ld.w	$a0, $a0, 8
	bnez	$a0, .LBB18_3
# %bb.47:                               # %if.then52
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a0, $s3, 16
	pcaddu18i	$ra, %call36(list_Reverse)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s3, $a0
	move	$a0, $a2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(st_ExistGen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_83
# %bb.48:                               # %while.body62.lr.ph
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slt	$a1, $s1, $a1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	slt	$a2, $a2, $s1
	or	$s5, $a1, $a2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	slt	$s8, $s1, $a1
	b	.LBB18_50
	.p2align	4, , 16
.LBB18_49:                              # %if.end106
                                        #   in Loop: Header=BB18_50 Depth=2
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_83
.LBB18_50:                              # %while.body62
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_55 Depth 3
                                        #         Child Loop BB18_59 Depth 4
                                        #         Child Loop BB18_67 Depth 4
                                        #         Child Loop BB18_63 Depth 4
                                        #       Child Loop BB18_72 Depth 3
                                        #         Child Loop BB18_76 Depth 4
                                        #         Child Loop BB18_80 Depth 4
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB18_49
# %bb.51:                               # %if.then65
                                        #   in Loop: Header=BB18_50 Depth=2
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_49
# %bb.52:                               # %for.body71.lr.ph
                                        #   in Loop: Header=BB18_50 Depth=2
	move	$s4, $a0
	beqz	$s8, .LBB18_55
	b	.LBB18_72
.LBB18_53:                              # %land.lhs.true96
                                        #   in Loop: Header=BB18_55 Depth=3
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(subs_SubsumesBasic)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_88
	.p2align	4, , 16
.LBB18_54:                              # %for.inc103
                                        #   in Loop: Header=BB18_55 Depth=3
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB18_49
.LBB18_55:                              # %for.body71
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_59 Depth 4
                                        #         Child Loop BB18_67 Depth 4
                                        #         Child Loop BB18_63 Depth 4
	ld.d	$a0, $s4, 8
	ld.d	$s2, $a0, 16
	beq	$s2, $fp, .LBB18_54
# %bb.56:                               # %land.lhs.true75
                                        #   in Loop: Header=BB18_55 Depth=3
	ld.d	$a1, $s2, 56
	ld.d	$a2, $a1, 0
	bne	$a2, $a0, .LBB18_54
# %bb.57:                               # %land.lhs.true79
                                        #   in Loop: Header=BB18_55 Depth=3
	blt	$s7, $s1, .LBB18_61
# %bb.58:                               # %while.cond.i.i109.preheader
                                        #   in Loop: Header=BB18_55 Depth=3
	addi.d	$a2, $zero, -1
	move	$a3, $a1
	.p2align	4, , 16
.LBB18_59:                              # %while.cond.i.i109
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_50 Depth=2
                                        #       Parent Loop BB18_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a4, $a3, 0
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $a0, .LBB18_59
# %bb.60:                               # %clause_LiteralIsFromConstraint.exit117
                                        #   in Loop: Header=BB18_55 Depth=3
	ld.w	$a3, $s2, 64
	blt	$a2, $a3, .LBB18_53
.LBB18_61:                              # %lor.lhs.false84
                                        #   in Loop: Header=BB18_55 Depth=3
	beqz	$s5, .LBB18_66
.LBB18_62:                              # %while.cond.i.i136.preheader
                                        #   in Loop: Header=BB18_55 Depth=3
	addi.d	$a2, $zero, -1
	.p2align	4, , 16
.LBB18_63:                              # %while.cond.i.i136
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_50 Depth=2
                                        #       Parent Loop BB18_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a1, 0
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a0, .LBB18_63
# %bb.64:                               # %clause_LiteralIsFromSuccedent.exit151
                                        #   in Loop: Header=BB18_55 Depth=3
	ld.w	$a0, $s2, 64
	ld.w	$a1, $s2, 68
	add.w	$a0, $a1, $a0
	blt	$a2, $a0, .LBB18_54
# %bb.65:                               # %clause_LiteralIsFromSuccedent.exit151
                                        #   in Loop: Header=BB18_55 Depth=3
	ld.w	$a1, $s2, 72
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	bge	$a0, $a2, .LBB18_53
	b	.LBB18_54
.LBB18_66:                              # %while.cond.i.i120.preheader
                                        #   in Loop: Header=BB18_55 Depth=3
	addi.d	$a2, $zero, -1
	move	$a3, $a1
	.p2align	4, , 16
.LBB18_67:                              # %while.cond.i.i120
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_50 Depth=2
                                        #       Parent Loop BB18_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a4, $a3, 0
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $a0, .LBB18_67
# %bb.68:                               # %clause_LiteralIsFromAntecedent.exit133
                                        #   in Loop: Header=BB18_55 Depth=3
	ld.w	$a3, $s2, 64
	blt	$a2, $a3, .LBB18_62
# %bb.69:                               # %clause_LiteralIsFromAntecedent.exit133
                                        #   in Loop: Header=BB18_55 Depth=3
	ld.w	$a4, $s2, 68
	add.d	$a3, $a3, $a4
	addi.w	$a3, $a3, -1
	bge	$a3, $a2, .LBB18_53
	b	.LBB18_62
.LBB18_70:                              # %land.lhs.true96.us
                                        #   in Loop: Header=BB18_72 Depth=3
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(subs_SubsumesBasic)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_88
	.p2align	4, , 16
.LBB18_71:                              # %for.inc103.us
                                        #   in Loop: Header=BB18_72 Depth=3
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB18_49
.LBB18_72:                              # %for.body71.us
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_76 Depth 4
                                        #         Child Loop BB18_80 Depth 4
	ld.d	$a0, $s4, 8
	ld.d	$s2, $a0, 16
	beq	$s2, $fp, .LBB18_71
# %bb.73:                               # %land.lhs.true75.us
                                        #   in Loop: Header=BB18_72 Depth=3
	ld.d	$a1, $s2, 56
	ld.d	$a2, $a1, 0
	bne	$a2, $a0, .LBB18_71
# %bb.74:                               # %land.lhs.true79.us
                                        #   in Loop: Header=BB18_72 Depth=3
	blt	$s7, $s1, .LBB18_78
# %bb.75:                               # %while.cond.i.i109.us.preheader
                                        #   in Loop: Header=BB18_72 Depth=3
	addi.d	$a2, $zero, -1
	move	$a3, $a1
	.p2align	4, , 16
.LBB18_76:                              # %while.cond.i.i109.us
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_50 Depth=2
                                        #       Parent Loop BB18_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a4, $a3, 0
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $a0, .LBB18_76
# %bb.77:                               # %clause_LiteralIsFromConstraint.exit117.us
                                        #   in Loop: Header=BB18_72 Depth=3
	ld.w	$a3, $s2, 64
	blt	$a2, $a3, .LBB18_70
.LBB18_78:                              # %lor.lhs.false84.us
                                        #   in Loop: Header=BB18_72 Depth=3
	bnez	$s5, .LBB18_71
# %bb.79:                               # %while.cond.i.i120.us.preheader
                                        #   in Loop: Header=BB18_72 Depth=3
	addi.d	$a2, $zero, -1
	.p2align	4, , 16
.LBB18_80:                              # %while.cond.i.i120.us
                                        #   Parent Loop BB18_4 Depth=1
                                        #     Parent Loop BB18_50 Depth=2
                                        #       Parent Loop BB18_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a1, 0
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a0, .LBB18_80
# %bb.81:                               # %clause_LiteralIsFromAntecedent.exit133.us
                                        #   in Loop: Header=BB18_72 Depth=3
	ld.w	$a0, $s2, 64
	blt	$a2, $a0, .LBB18_71
# %bb.82:                               # %clause_LiteralIsFromAntecedent.exit133.us
                                        #   in Loop: Header=BB18_72 Depth=3
	ld.w	$a1, $s2, 68
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	bge	$a0, $a2, .LBB18_70
	b	.LBB18_71
.LBB18_83:                              # %while.end108
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a0, $s3, 16
	beqz	$a0, .LBB18_2
	.p2align	4, , 16
.LBB18_84:                              # %while.body.i153
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s6, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s0, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s6, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB18_84
	b	.LBB18_2
.LBB18_85:                              # %if.then42
	pcaddu18i	$ra, %call36(st_CancelExistRetrieval)
	jirl	$ra, $ra, 0
	b	.LBB18_87
.LBB18_86:
	move	$s2, $zero
.LBB18_87:                              # %cleanup
	move	$a0, $s2
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB18_88:                              # %if.then100
	pcaddu18i	$ra, %call36(st_CancelExistRetrieval)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 16
	beqz	$a0, .LBB18_90
	.p2align	4, , 16
.LBB18_89:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s0, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s6, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB18_89
.LBB18_90:                              # %list_Delete.exit
	ld.d	$a0, $s6, 256
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s6, 256
	st.d	$s3, $a0, 0
	b	.LBB18_87
.Lfunc_end18:
	.size	red_ForwardSubsumer, .Lfunc_end18-red_ForwardSubsumer
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function misc_DumpCore
	.type	misc_DumpCore,@function
misc_DumpCore:                          # @misc_DumpCore
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	misc_DumpCore, .Lfunc_end19-misc_DumpCore
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function red_SimpleStaticReductions
	.type	red_SimpleStaticReductions,@function
red_SimpleStaticReductions:             # @red_SimpleStaticReductions
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s1, $a1
	ld.w	$a1, $a1, 352
	ld.w	$a4, $s1, 36
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$zero, $sp, 48
	beqz	$a1, .LBB20_33
# %bb.1:                                # %land.lhs.true
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	ld.w	$a0, $s4, 72
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB20_26
# %bb.2:                                # %for.body.lr.ph.i
	ld.w	$a1, $s4, 64
	ld.w	$a2, $s4, 68
	add.w	$s7, $a2, $a1
	addi.w	$s8, $s7, -1
	addi.w	$a1, $zero, -1
	add.w	$s6, $s7, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	bge	$a1, $s8, .LBB20_16
# %bb.3:                                # %for.body.preheader.i
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s3, $a0, %got_pc_lo12(fol_EQUALITY)
	.p2align	4, , 16
.LBB20_4:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_10 Depth 2
	ld.d	$a0, $s4, 56
	slli.d	$a1, $s7, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s5, $a0, 24
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s2, 0
	bne	$a1, $a2, .LBB20_6
# %bb.5:                                # %if.then.i.i
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a1, $s5, 16
	ld.d	$s5, $a1, 8
	ld.w	$a1, $s5, 0
.LBB20_6:                               # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.w	$a2, $s3, 0
	bne	$a1, $a2, .LBB20_9
# %bb.7:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.w	$a0, $a0, 8
	bnez	$a0, .LBB20_9
# %bb.8:                                # %if.end.i
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_30
	.p2align	4, , 16
.LBB20_9:                               # %for.body22.i.preheader
                                        #   in Loop: Header=BB20_4 Depth=1
	move	$fp, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB20_10:                              # %for.body22.i
                                        #   Parent Loop BB20_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s2, 0
	bne	$a0, $a2, .LBB20_12
# %bb.11:                               # %if.then.i42.i
                                        #   in Loop: Header=BB20_10 Depth=2
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
.LBB20_12:                              # %clause_LiteralAtom.exit45.i
                                        #   in Loop: Header=BB20_10 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	bgeu	$s0, $s8, .LBB20_14
# %bb.13:                               # %clause_LiteralAtom.exit45.i
                                        #   in Loop: Header=BB20_10 Depth=2
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	beqz	$a0, .LBB20_10
.LBB20_14:                              # %for.inc29.i
                                        #   in Loop: Header=BB20_4 Depth=1
	addi.d	$s7, $s7, 1
	sltui	$a2, $a0, 1
	bge	$s7, $s6, .LBB20_24
# %bb.15:                               # %for.inc29.i
                                        #   in Loop: Header=BB20_4 Depth=1
	beqz	$a0, .LBB20_4
	b	.LBB20_24
.LBB20_16:                              # %for.body.us.preheader.i
	ld.w	$a1, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s3, $a0, %got_pc_lo12(fol_EQUALITY)
	addi.d	$s5, $s7, 1
	slli.d	$s7, $s7, 3
	.p2align	4, , 16
.LBB20_17:                              # %for.body.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 56
	ldx.d	$a3, $a0, $s7
	ld.d	$a0, $a3, 24
	ld.w	$a4, $a0, 0
	bne	$a4, $a1, .LBB20_19
# %bb.18:                               # %if.then.i.us.i
                                        #   in Loop: Header=BB20_17 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a4, $a0, 0
.LBB20_19:                              # %clause_LiteralAtom.exit.us.i
                                        #   in Loop: Header=BB20_17 Depth=1
	ld.w	$a5, $s3, 0
	ori	$a2, $zero, 1
	bne	$a4, $a5, .LBB20_22
# %bb.20:                               # %land.lhs.true.us.i
                                        #   in Loop: Header=BB20_17 Depth=1
	ld.w	$a3, $a3, 8
	bnez	$a3, .LBB20_22
# %bb.21:                               # %land.lhs.true10.us.i
                                        #   in Loop: Header=BB20_17 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	sltui	$a2, $a0, 1
	.p2align	4, , 16
.LBB20_22:                              # %if.end.us.i
                                        #   in Loop: Header=BB20_17 Depth=1
	bge	$s5, $s6, .LBB20_24
# %bb.23:                               # %if.end.us.i
                                        #   in Loop: Header=BB20_17 Depth=1
	addi.d	$s5, $s5, 1
	addi.d	$s7, $s7, 8
	bnez	$a2, .LBB20_17
.LBB20_24:                              # %for.end31.i
	beqz	$a2, .LBB20_30
# %bb.25:                               # %for.end31.i.land.lhs.true33.i_crit_edge
	ld.w	$a1, $s1, 352
.LBB20_26:                              # %land.lhs.true33.i
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB20_33
# %bb.27:                               # %land.lhs.true36.i
	ld.w	$a0, $s4, 68
	beqz	$a0, .LBB20_33
# %bb.28:                               # %land.lhs.true39.i
	ld.w	$a0, $s4, 72
	beqz	$a0, .LBB20_33
# %bb.29:                               # %if.end44.i
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cc_Tautology)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_33
.LBB20_30:                              # %land.lhs.true46.i
	ld.w	$a0, $s1, 64
	beqz	$a0, .LBB20_32
# %bb.31:                               # %if.then49.i
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB20_32:
	ori	$a0, $zero, 1
	b	.LBB20_40
.LBB20_33:                              # %if.end
	ld.w	$a0, $s1, 340
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB20_36
# %bb.34:                               # %if.then5
	ld.d	$a0, $s4, 0
	addi.d	$a4, $sp, 48
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(red_ObviousReductions)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48
	beqz	$fp, .LBB20_36
# %bb.35:                               # %if.then.i
	ld.d	$s0, $s4, 0
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $s3, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s2, $a0, 0
	st.d	$a0, $s3, 0
	st.d	$fp, $s4, 0
	st.d	$zero, $sp, 48
.LBB20_36:                              # %if.end7
	ld.w	$a0, $s1, 376
	beqz	$a0, .LBB20_39
# %bb.37:                               # %if.then10
	ld.d	$a0, $s4, 0
	addi.d	$a4, $sp, 48
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(red_Condensing)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48
	beqz	$fp, .LBB20_39
# %bb.38:                               # %if.then.i20
	ld.d	$s0, $s4, 0
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $s2, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	st.d	$s0, $a1, 8
	st.d	$s1, $a1, 0
	st.d	$a1, $s2, 0
	st.d	$fp, $s4, 0
	b	.LBB20_40
.LBB20_39:
	move	$a0, $zero
.LBB20_40:                              # %cleanup
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end20:
	.size	red_SimpleStaticReductions, .Lfunc_end20-red_SimpleStaticReductions
                                        # -- End function
	.p2align	5                               # -- Begin function red_AssignmentEquationDeletion
	.type	red_AssignmentEquationDeletion,@function
red_AssignmentEquationDeletion:         # @red_AssignmentEquationDeletion
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
	move	$s2, $a5
	move	$s1, $a4
	move	$s0, $a3
	move	$s4, $a2
	move	$fp, $a1
	move	$s3, $a0
	pcaddu18i	$ra, %call36(clause_ContainsNegativeEquations)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB21_12
# %bb.1:                                # %if.then
	ld.w	$s5, $s3, 64
	ld.w	$a0, $s3, 68
	add.d	$a0, $s5, $a0
	addi.w	$a0, $a0, -1
	bltu	$a0, $s5, .LBB21_40
# %bb.2:                                # %for.body.lr.ph
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s6, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s7, $a0, %got_pc_lo12(fol_EQUALITY)
	move	$s2, $zero
	ori	$s8, $zero, 1
	b	.LBB21_5
	.p2align	4, , 16
.LBB21_3:                               # %if.then23
                                        #   in Loop: Header=BB21_5 Depth=1
	bstrpick.d	$s0, $s5, 31, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s2, $a0, 0
	move	$s2, $a0
.LBB21_4:                               # %for.inc
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.w	$a0, $s3, 64
	ld.w	$a1, $s3, 68
	addi.w	$s5, $s5, 1
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	bltu	$a0, $s5, .LBB21_25
.LBB21_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 56
	slli.d	$a1, $s5, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s6, 0
	bne	$a1, $a2, .LBB21_7
# %bb.6:                                # %clause_LiteralIsEquality.exit
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB21_7:                               # %clause_LiteralIsEquality.exit.thread
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.w	$a2, $s7, 0
	bne	$a1, $a2, .LBB21_4
# %bb.8:                                # %clause_GetLiteralAtom.exit81
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	ld.d	$s0, $a0, 8
	blt	$a1, $s8, .LBB21_10
# %bb.9:                                # %land.lhs.true
                                        #   in Loop: Header=BB21_5 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_NumberOfSymbolOccurrences)
	jirl	$ra, $ra, 0
	beq	$a0, $s8, .LBB21_3
.LBB21_10:                              # %lor.lhs.false
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.w	$a1, $s0, 0
	blt	$a1, $s8, .LBB21_4
# %bb.11:                               # %land.lhs.true19
                                        #   in Loop: Header=BB21_5 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_NumberOfSymbolOccurrences)
	jirl	$ra, $ra, 0
	beq	$a0, $s8, .LBB21_3
	b	.LBB21_4
.LBB21_12:                              # %if.else
	beqz	$s2, .LBB21_40
# %bb.13:                               # %land.lhs.true27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_ContainsPositiveEquations)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB21_40
# %bb.14:                               # %if.then30
	ld.w	$a0, $s3, 64
	ld.w	$a1, $s3, 68
	ld.w	$a2, $s3, 72
	add.w	$s5, $a1, $a0
	add.d	$a0, $s5, $a2
	addi.w	$a0, $a0, -1
	bltu	$a0, $s5, .LBB21_40
# %bb.15:                               # %for.body36.lr.ph
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s6, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s7, $a0, %got_pc_lo12(fol_EQUALITY)
	move	$s2, $zero
	ori	$s8, $zero, 1
	b	.LBB21_18
	.p2align	4, , 16
.LBB21_16:                              # %if.then60
                                        #   in Loop: Header=BB21_18 Depth=1
	bstrpick.d	$s0, $s5, 31, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s2, $a0, 0
	move	$s2, $a0
.LBB21_17:                              # %for.inc65
                                        #   in Loop: Header=BB21_18 Depth=1
	ld.w	$a0, $s3, 64
	ld.w	$a1, $s3, 68
	ld.w	$a2, $s3, 72
	addi.w	$s5, $s5, 1
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	bltu	$a0, $s5, .LBB21_25
.LBB21_18:                              # %for.body36
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 56
	slli.d	$a1, $s5, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s6, 0
	bne	$a1, $a2, .LBB21_20
# %bb.19:                               # %clause_LiteralIsEquality.exit99
                                        #   in Loop: Header=BB21_18 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB21_20:                              # %clause_LiteralIsEquality.exit99.thread
                                        #   in Loop: Header=BB21_18 Depth=1
	ld.w	$a2, $s7, 0
	bne	$a1, $a2, .LBB21_17
# %bb.21:                               # %clause_GetLiteralAtom.exit119
                                        #   in Loop: Header=BB21_18 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	ld.d	$s0, $a0, 8
	blt	$a1, $s8, .LBB21_23
# %bb.22:                               # %land.lhs.true47
                                        #   in Loop: Header=BB21_18 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_NumberOfSymbolOccurrences)
	jirl	$ra, $ra, 0
	beq	$a0, $s8, .LBB21_16
.LBB21_23:                              # %lor.lhs.false52
                                        #   in Loop: Header=BB21_18 Depth=1
	ld.w	$a1, $s0, 0
	blt	$a1, $s8, .LBB21_17
# %bb.24:                               # %land.lhs.true55
                                        #   in Loop: Header=BB21_18 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_NumberOfSymbolOccurrences)
	jirl	$ra, $ra, 0
	beq	$a0, $s8, .LBB21_16
	b	.LBB21_17
.LBB21_25:                              # %if.end69
	beqz	$s2, .LBB21_40
# %bb.26:                               # %if.then72
	ld.w	$a0, $fp, 88
	beqz	$a0, .LBB21_28
# %bb.27:                               # %if.then75
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB21_28:                              # %if.end78
	ld.w	$a0, $fp, 36
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB21_41
# %bb.29:                               # %if.then81
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a1, $s2
	move	$a2, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(clause_DeleteLiterals)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 32
	beqz	$a0, .LBB21_32
# %bb.30:                               # %while.body.i.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB21_31:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB21_31
.LBB21_32:                              # %list_Delete.exit.i
	ld.d	$a0, $s3, 40
	beqz	$a0, .LBB21_35
# %bb.33:                               # %while.body.i14.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB21_34:                              # %while.body.i14.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB21_34
.LBB21_35:                              # %list_Delete.exit21.i
	ld.w	$s0, $s3, 0
	st.d	$zero, $s3, 32
	st.d	$s2, $s3, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $s3, 32
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $a1, 0
	st.w	$a0, $s3, 0
	ori	$a0, $zero, 18
	st.w	$a0, $s3, 76
	beqz	$s1, .LBB21_37
# %bb.36:                               # %if.then.i
	ld.d	$s0, $s3, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s0, $a0, 0
	ld.d	$s0, $s3, 40
	st.d	$a0, $s3, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 8
	st.d	$s0, $a0, 0
	st.d	$a0, $s3, 40
.LBB21_37:                              # %red_DocumentAssignmentEquationDeletion.exit
	ld.w	$a0, $fp, 88
	beqz	$a0, .LBB21_39
# %bb.38:                               # %if.then85
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB21_39:                              # %if.end86
	st.d	$s3, $s5, 0
	b	.LBB21_45
.LBB21_40:
	move	$a0, $zero
	b	.LBB21_46
.LBB21_41:                              # %if.else87
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(clause_DeleteLiterals)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB21_42:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s2, 0
	ld.d	$a2, $a0, 128
	st.d	$s2, $a2, 0
	move	$s2, $a5
	bnez	$a5, .LBB21_42
# %bb.43:                               # %list_Delete.exit
	ld.w	$a1, $fp, 88
	ori	$a0, $zero, 1
	beqz	$a1, .LBB21_46
# %bb.44:                               # %if.then90
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB21_45:                              # %cleanup
	ori	$a0, $zero, 1
.LBB21_46:                              # %cleanup
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
.Lfunc_end21:
	.size	red_AssignmentEquationDeletion, .Lfunc_end21-red_AssignmentEquationDeletion
                                        # -- End function
	.p2align	5                               # -- Begin function red_RewriteRedClause
	.type	red_RewriteRedClause,@function
red_RewriteRedClause:                   # @red_RewriteRedClause
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	move	$s8, $a0
	ld.w	$t0, $a0, 64
	ld.w	$a0, $a0, 68
	ld.w	$a6, $s8, 72
	move	$fp, $a2
	add.d	$a2, $a0, $t0
	ld.w	$a7, $fp, 36
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	add.w	$a2, $a2, $a6
	ori	$a7, $zero, 1
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $a1
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	bne	$a2, $a7, .LBB22_58
# %bb.1:                                # %if.then
	move	$a2, $t0
	ld.d	$a0, $s8, 56
	ld.d	$a0, $a0, 0
	ld.d	$s4, $a0, 24
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a1, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a0, $s4, 0
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB22_3
# %bb.2:                                # %if.then.i.i.i
	ld.d	$a0, $s4, 16
	ld.d	$s4, $a0, 8
.LBB22_3:                               # %clause_GetLiteralAtom.exit.i
	bgtz	$a2, .LBB22_126
# %bb.4:                                # %lor.lhs.false.i
	ld.d	$a0, $s4, 16
	beqz	$a0, .LBB22_126
# %bb.5:                                # %if.end.i
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(red_STAMPID)
	ld.w	$a0, $a0, %pc_lo12(red_STAMPID)
	pcaddu18i	$ra, %call36(term_StampOverflow)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_7
# %bb.6:                                # %if.then9.i
	ld.d	$a0, $s8, 56
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 24
	st.w	$zero, $a0, 24
.LBB22_7:                               # %if.end13.i
	pcalau12i	$a0, %got_pc_hi20(term_STAMP)
	ld.d	$a2, $a0, %got_pc_lo12(term_STAMP)
	ld.w	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(stack_POINTER)
	ld.d	$s1, $a1, %got_pc_lo12(stack_POINTER)
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	move	$s7, $zero
	addi.d	$a0, $a0, 1
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.w	$a0, $a2, 0
	ld.w	$s3, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(stack_STACK)
	ld.d	$a0, $a0, %got_pc_lo12(stack_STACK)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s6, $a0, %got_pc_lo12(fol_EQUALITY)
	move	$s5, $s8
	ori	$s8, $zero, 1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	b	.LBB22_9
	.p2align	4, , 16
.LBB22_8:                               # %while.cond.loopexit.i
                                        #   in Loop: Header=BB22_9 Depth=1
	beqz	$s0, .LBB22_117
.LBB22_9:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_13 Depth 2
                                        #       Child Loop BB22_16 Depth 3
                                        #         Child Loop BB22_19 Depth 4
                                        #           Child Loop BB22_26 Depth 5
                                        #       Child Loop BB22_46 Depth 3
                                        #       Child Loop BB22_48 Depth 3
	ld.d	$a0, $s4, 16
	pcaddu18i	$ra, %call36(sharing_PushListOnStackNoStamps)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	beq	$a0, $s3, .LBB22_117
# %bb.10:                               # %while.body20.i.preheader
                                        #   in Loop: Header=BB22_9 Depth=1
	move	$s0, $zero
	b	.LBB22_13
	.p2align	4, , 16
.LBB22_11:                              # %while.end.i
                                        #   in Loop: Header=BB22_13 Depth=2
	pcaddu18i	$ra, %call36(st_CancelExistRetrieval)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB22_57
# %bb.12:                               # %if.end144.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 0
	beq	$a0, $s3, .LBB22_8
.LBB22_13:                              # %while.body20.i
                                        #   Parent Loop BB22_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_16 Depth 3
                                        #         Child Loop BB22_19 Depth 4
                                        #           Child Loop BB22_26 Depth 5
                                        #       Child Loop BB22_46 Depth 3
                                        #       Child Loop BB22_48 Depth 3
	addi.d	$a0, $a0, -1
	st.w	$a0, $s1, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s2, 0
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(st_ExistGen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_11
# %bb.14:                               # %while.body20.i
                                        #   in Loop: Header=BB22_13 Depth=2
	bnez	$s0, .LBB22_11
# %bb.15:                               # %while.body29.i.preheader
                                        #   in Loop: Header=BB22_13 Depth=2
	move	$fp, $a0
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
.LBB22_16:                              # %while.body29.i
                                        #   Parent Loop BB22_9 Depth=1
                                        #     Parent Loop BB22_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_19 Depth 4
                                        #           Child Loop BB22_26 Depth 5
	ld.d	$s5, $fp, 8
	bnez	$s5, .LBB22_19
.LBB22_17:                              # %if.then139.i
                                        #   in Loop: Header=BB22_16 Depth=3
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB22_16
	b	.LBB22_56
	.p2align	4, , 16
.LBB22_18:                              # %for.inc135.i
                                        #   in Loop: Header=BB22_19 Depth=4
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB22_17
.LBB22_19:                              # %for.body.i
                                        #   Parent Loop BB22_9 Depth=1
                                        #     Parent Loop BB22_13 Depth=2
                                        #       Parent Loop BB22_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB22_26 Depth 5
	ld.d	$s1, $s5, 8
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s6, 0
	bne	$a0, $a1, .LBB22_18
# %bb.20:                               # %if.then40.i
                                        #   in Loop: Header=BB22_19 Depth=4
	ld.d	$a0, $s1, 16
	ld.d	$s3, $a0, 8
	beq	$fp, $s3, .LBB22_22
# %bb.21:                               # %if.end46.i
                                        #   in Loop: Header=BB22_19 Depth=4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_23
	b	.LBB22_18
.LBB22_22:                              # %if.then43.i
                                        #   in Loop: Header=BB22_19 Depth=4
	ld.d	$a0, $a0, 0
	ld.d	$s3, $a0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_18
.LBB22_23:                              # %for.body55.i.preheader
                                        #   in Loop: Header=BB22_19 Depth=4
	move	$s2, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	b	.LBB22_26
.LBB22_24:                              # %land.end68.i
                                        #   in Loop: Header=BB22_26 Depth=5
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 8
	beq	$fp, $a1, .LBB22_31
	.p2align	4, , 16
.LBB22_25:                              # %for.inc.i
                                        #   in Loop: Header=BB22_26 Depth=5
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB22_18
.LBB22_26:                              # %for.body55.i
                                        #   Parent Loop BB22_9 Depth=1
                                        #     Parent Loop BB22_13 Depth=2
                                        #       Parent Loop BB22_16 Depth=3
                                        #         Parent Loop BB22_19 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a1, $s2, 8
	ld.d	$a2, $a1, 24
	ld.w	$a2, $a2, 0
	beq	$a2, $a0, .LBB22_25
# %bb.27:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB22_26 Depth=5
	ld.d	$s0, $a1, 16
	ld.w	$a2, $s0, 64
	ld.w	$a3, $s0, 68
	ld.w	$a4, $s0, 72
	add.d	$a2, $a3, $a2
	add.w	$a2, $a2, $a4
	bne	$a2, $s8, .LBB22_25
# %bb.28:                               # %if.then62.i
                                        #   in Loop: Header=BB22_26 Depth=5
	ld.w	$a1, $a1, 8
	bnez	$a1, .LBB22_24
# %bb.29:                               # %if.then73.i
                                        #   in Loop: Header=BB22_26 Depth=5
	ld.w	$a0, $s0, 52
	pcaddu18i	$ra, %call36(term_StartMaxRenaming)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Rename)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $fp
	move	$a2, $a0
	move	$a3, $s3
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_ContGreater)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 1
	bnez	$a0, .LBB22_31
# %bb.30:                               #   in Loop: Header=BB22_26 Depth=5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	b	.LBB22_25
	.p2align	4, , 16
.LBB22_31:                              # %if.then81.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $s5, .LBB22_36
# %bb.32:                               #   in Loop: Header=BB22_13 Depth=2
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	move	$s2, $s4
.LBB22_33:                              # %if.end94.i
                                        #   in Loop: Header=BB22_13 Depth=2
	beqz	$fp, .LBB22_42
# %bb.34:                               # %if.end103.thread.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_51
# %bb.35:                               # %if.else110.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$fp, $s5, 32
	ld.d	$a0, $fp, 0
	ld.w	$s1, $a0, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$fp, $a0, 0
	ld.d	$fp, $s5, 40
	st.d	$a0, $s5, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s5, 40
	b	.LBB22_50
.LBB22_36:                              # %land.lhs.true83.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB22_39
.LBB22_37:                              # %if.then90.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $a0, 56
	ld.d	$a0, $a0, 0
	ld.d	$s2, $a0, 24
	ld.w	$a0, $s2, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB22_33
# %bb.38:                               # %if.then.i.i104.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$a0, $s2, 16
	ld.d	$s2, $a0, 8
	b	.LBB22_33
.LBB22_39:                              # %lor.lhs.false85.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.w	$a0, $s0, 12
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB22_37
# %bb.40:                               # %lor.lhs.false85.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 12
	bltu	$a1, $a0, .LBB22_37
# %bb.41:                               # %if.end94.thread.i
                                        #   in Loop: Header=BB22_13 Depth=2
	move	$s2, $s4
	bnez	$fp, .LBB22_51
.LBB22_42:                              # %if.then96.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 52
	beqz	$a0, .LBB22_44
# %bb.43:                               # %if.then99.i
                                        #   in Loop: Header=BB22_13 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB22_44:                              # %if.end103.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_51
# %bb.45:                               # %if.then107.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$a0, $s5, 32
	beqz	$a0, .LBB22_47
	.p2align	4, , 16
.LBB22_46:                              # %while.body.i.i.i
                                        #   Parent Loop BB22_9 Depth=1
                                        #     Parent Loop BB22_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$a0, $a6
	bnez	$a6, .LBB22_46
.LBB22_47:                              # %list_Delete.exit.i.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$a0, $s5, 40
	beqz	$a0, .LBB22_49
	.p2align	4, , 16
.LBB22_48:                              # %while.body.i12.i.i
                                        #   Parent Loop BB22_9 Depth=1
                                        #     Parent Loop BB22_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$a0, $a6
	bnez	$a6, .LBB22_48
.LBB22_49:                              # %red_DocumentRewriting.exit.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.w	$fp, $s5, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $s5, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	st.d	$a0, $s5, 40
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $a1, 0
	st.w	$a0, $s5, 0
	ori	$a0, $zero, 21
	st.w	$a0, $s5, 76
.LBB22_50:                              # %if.end114.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.w	$fp, $s0, 0
	ld.d	$s1, $s5, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s1, $a0, 0
	ld.d	$fp, $s5, 40
	st.d	$a0, $s5, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s5, 40
.LBB22_51:                              # %if.end114.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cont_ApplyBindingsModuloMatching)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_RIGHTCONTEXT)
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cont_BindingsAreRenamingModuloMatching)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_53
# %bb.52:                               # %if.then121.i
                                        #   in Loop: Header=BB22_13 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_SetTermSubtermStamp)
	jirl	$ra, $ra, 0
.LBB22_53:                              # %if.end122.i
                                        #   in Loop: Header=BB22_13 Depth=2
	move	$s4, $s2
	move	$a0, $s2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(term_ReplaceSubtermBy)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $fp, 52
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	st.w	$s3, $s1, 0
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_55
# %bb.54:                               # %if.then126.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.w	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB22_55:                              # %while.end.thread.i
                                        #   in Loop: Header=BB22_13 Depth=2
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, 4
	pcaddu18i	$ra, %call36(st_CancelExistRetrieval)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a0, $s1, 0
	bne	$a0, $s3, .LBB22_13
	b	.LBB22_8
.LBB22_56:                              # %while.end.i.thread
                                        #   in Loop: Header=BB22_13 Depth=2
	pcaddu18i	$ra, %call36(st_CancelExistRetrieval)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB22_57:                              # %if.then143.i
                                        #   in Loop: Header=BB22_13 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	move	$s0, $zero
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $a1, 24
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 0
	bne	$a0, $s3, .LBB22_13
	b	.LBB22_8
.LBB22_58:                              # %for.cond.preheader
	bge	$t0, $a2, .LBB22_126
# %bb.59:                               # %for.body.lr.ph
	move	$a1, $t0
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	add.d	$a0, $a0, $a6
	add.w	$a0, $a0, $t0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s5, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(stack_POINTER)
	ld.d	$s4, $a0, %got_pc_lo12(stack_POINTER)
	pcalau12i	$a0, %got_pc_hi20(stack_STACK)
	ld.d	$s3, $a0, %got_pc_lo12(stack_STACK)
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s7, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	ori	$s0, $zero, 0
	lu32i.d	$s0, -1
	move	$s6, $s8
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	b	.LBB22_61
	.p2align	4, , 16
.LBB22_60:                              # %for.inc116
                                        #   in Loop: Header=BB22_61 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	addi.w	$a0, $a1, 0
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB22_111
.LBB22_61:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_65 Depth 2
                                        #       Child Loop BB22_71 Depth 3
                                        #         Child Loop BB22_75 Depth 4
                                        #           Child Loop BB22_78 Depth 5
                                        #             Child Loop BB22_83 Depth 6
                                        #               Child Loop BB22_84 Depth 7
                                        #         Child Loop BB22_104 Depth 4
                                        #         Child Loop BB22_106 Depth 4
	ld.d	$a0, $s6, 56
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s5, 0
	bne	$a1, $a2, .LBB22_63
# %bb.62:                               # %if.then.i.i
                                        #   in Loop: Header=BB22_61 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB22_63:                              # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB22_61 Depth=1
	ld.d	$a0, $a0, 16
	bnez	$a0, .LBB22_65
	b	.LBB22_60
	.p2align	4, , 16
.LBB22_64:                              # %while.cond
                                        #   in Loop: Header=BB22_65 Depth=2
	beqz	$fp, .LBB22_60
.LBB22_65:                              # %while.body
                                        #   Parent Loop BB22_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_71 Depth 3
                                        #         Child Loop BB22_75 Depth 4
                                        #           Child Loop BB22_78 Depth 5
                                        #             Child Loop BB22_83 Depth 6
                                        #               Child Loop BB22_84 Depth 7
                                        #         Child Loop BB22_104 Depth 4
                                        #         Child Loop BB22_106 Depth 4
	ld.d	$a0, $s6, 56
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$fp, $a0, 24
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s5, 0
	bne	$a0, $a1, .LBB22_67
# %bb.66:                               # %if.then.i.i95
                                        #   in Loop: Header=BB22_65 Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$fp, $a0, 8
.LBB22_67:                              # %clause_GetLiteralAtom.exit98
                                        #   in Loop: Header=BB22_65 Depth=2
	ld.w	$s1, $s4, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(sharing_PushListReverseOnStack)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	beq	$a0, $s1, .LBB22_60
# %bb.68:                               # %while.body16.lr.ph
                                        #   in Loop: Header=BB22_65 Depth=2
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $zero
	b	.LBB22_71
	.p2align	4, , 16
.LBB22_69:                              # %if.end112.thread
                                        #   in Loop: Header=BB22_71 Depth=3
	move	$a0, $s6
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
.LBB22_70:                              # %while.end
                                        #   in Loop: Header=BB22_71 Depth=3
	pcaddu18i	$ra, %call36(st_CancelExistRetrieval)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB22_64
.LBB22_71:                              # %while.body16
                                        #   Parent Loop BB22_61 Depth=1
                                        #     Parent Loop BB22_65 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_75 Depth 4
                                        #           Child Loop BB22_78 Depth 5
                                        #             Child Loop BB22_83 Depth 6
                                        #               Child Loop BB22_84 Depth 7
                                        #         Child Loop BB22_104 Depth 4
                                        #         Child Loop BB22_106 Depth 4
	addi.d	$a0, $a0, -1
	st.w	$a0, $s4, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $s3, $a0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s2, 0
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(st_ExistGen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_70
# %bb.72:                               # %while.body16
                                        #   in Loop: Header=BB22_71 Depth=3
	bnez	$fp, .LBB22_70
# %bb.73:                               # %while.body25.preheader
                                        #   in Loop: Header=BB22_71 Depth=3
	move	$s1, $a0
	b	.LBB22_75
	.p2align	4, , 16
.LBB22_74:                              # %if.end112
                                        #   in Loop: Header=BB22_75 Depth=4
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB22_95
.LBB22_75:                              # %while.body25
                                        #   Parent Loop BB22_61 Depth=1
                                        #     Parent Loop BB22_65 Depth=2
                                        #       Parent Loop BB22_71 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB22_78 Depth 5
                                        #             Child Loop BB22_83 Depth 6
                                        #               Child Loop BB22_84 Depth 7
	ld.w	$a0, $s1, 0
	bgtz	$a0, .LBB22_74
# %bb.76:                               # %if.then28
                                        #   in Loop: Header=BB22_75 Depth=4
	ld.d	$s8, $s1, 8
	bnez	$s8, .LBB22_78
	b	.LBB22_74
	.p2align	4, , 16
.LBB22_77:                              # %for.inc105
                                        #   in Loop: Header=BB22_78 Depth=5
	ld.d	$s8, $s8, 0
	beqz	$s8, .LBB22_74
.LBB22_78:                              # %for.body37
                                        #   Parent Loop BB22_61 Depth=1
                                        #     Parent Loop BB22_65 Depth=2
                                        #       Parent Loop BB22_71 Depth=3
                                        #         Parent Loop BB22_75 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB22_83 Depth 6
                                        #               Child Loop BB22_84 Depth 7
	ld.d	$fp, $s8, 8
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a1, $fp, 0
	ld.w	$a0, $a0, 0
	bne	$a1, $a0, .LBB22_77
# %bb.79:                               # %land.lhs.true
                                        #   in Loop: Header=BB22_78 Depth=5
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	bne	$a0, $s1, .LBB22_77
# %bb.80:                               # %if.then43
                                        #   in Loop: Header=BB22_78 Depth=5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_77
# %bb.81:                               # %for.body52.preheader
                                        #   in Loop: Header=BB22_78 Depth=5
	move	$s4, $a0
	b	.LBB22_83
	.p2align	4, , 16
.LBB22_82:                              # %for.inc
                                        #   in Loop: Header=BB22_83 Depth=6
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB22_77
.LBB22_83:                              # %for.body52
                                        #   Parent Loop BB22_61 Depth=1
                                        #     Parent Loop BB22_65 Depth=2
                                        #       Parent Loop BB22_71 Depth=3
                                        #         Parent Loop BB22_75 Depth=4
                                        #           Parent Loop BB22_78 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB22_84 Depth 7
	ld.d	$a0, $s4, 8
	ld.d	$s2, $a0, 16
	ld.d	$a1, $s2, 56
	addi.d	$s3, $zero, -1
	move	$s7, $s0
	.p2align	4, , 16
.LBB22_84:                              # %while.cond.i
                                        #   Parent Loop BB22_61 Depth=1
                                        #     Parent Loop BB22_65 Depth=2
                                        #       Parent Loop BB22_71 Depth=3
                                        #         Parent Loop BB22_75 Depth=4
                                        #           Parent Loop BB22_78 Depth=5
                                        #             Parent Loop BB22_83 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
	add.d	$s7, $s7, $a3
	addi.w	$s3, $s3, 1
	addi.d	$a1, $a1, 8
	bne	$a2, $a0, .LBB22_84
# %bb.85:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB22_83 Depth=6
	ld.d	$a1, $a0, 24
	ld.w	$a1, $a1, 0
	ld.w	$a2, $s5, 0
	beq	$a1, $a2, .LBB22_82
# %bb.86:                               # %land.lhs.true58
                                        #   in Loop: Header=BB22_83 Depth=6
	ld.w	$a0, $a0, 8
	beqz	$a0, .LBB22_82
# %bb.87:                               # %land.lhs.true61
                                        #   in Loop: Header=BB22_83 Depth=6
	move	$a0, $s2
	move	$a1, $s6
	move	$a2, $s3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subs_SubsumesBasic)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_82
# %bb.88:                               # %if.then64
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	beq	$s8, $s6, .LBB22_92
.LBB22_89:                              # %if.end75
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB22_100
# %bb.90:                               # %if.end84.thread
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_109
# %bb.91:                               # %if.else
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.d	$s1, $s6, 32
	ld.d	$a0, $s1, 0
	ld.w	$s4, $a0, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s1, $a0, 0
	ld.d	$s1, $s6, 40
	st.d	$a0, $s6, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a1, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $s6, 40
	b	.LBB22_108
.LBB22_92:                              # %land.lhs.true66
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_97
.LBB22_93:                              # %if.then72
                                        #   in Loop: Header=BB22_71 Depth=3
	move	$a0, $s8
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $a0, 56
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a2, $a0, 24
	ld.w	$a0, $a2, 0
	ld.w	$a1, $s5, 0
	bne	$a0, $a1, .LBB22_96
# %bb.94:                               # %if.then.i.i119
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.d	$a0, $a2, 16
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB22_89
.LBB22_95:                              #   in Loop: Header=BB22_71 Depth=3
	move	$fp, $zero
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	b	.LBB22_70
.LBB22_96:                              #   in Loop: Header=BB22_71 Depth=3
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	b	.LBB22_89
.LBB22_97:                              # %lor.lhs.false
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.w	$a0, $s2, 12
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB22_93
# %bb.98:                               # %lor.lhs.false
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.w	$a1, $s8, 12
	bltu	$a1, $a0, .LBB22_93
# %bb.99:                               # %if.end75.thread
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bnez	$a0, .LBB22_109
.LBB22_100:                             # %if.then77
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 52
	beqz	$a0, .LBB22_102
# %bb.101:                              # %if.then80
                                        #   in Loop: Header=BB22_71 Depth=3
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB22_102:                             # %if.end84
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_109
# %bb.103:                              # %if.then88
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.d	$a0, $s6, 32
	beqz	$a0, .LBB22_105
	.p2align	4, , 16
.LBB22_104:                             # %while.body.i.i
                                        #   Parent Loop BB22_61 Depth=1
                                        #     Parent Loop BB22_65 Depth=2
                                        #       Parent Loop BB22_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$a0, $a6
	bnez	$a6, .LBB22_104
.LBB22_105:                             # %list_Delete.exit.i
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.d	$a0, $s6, 40
	beqz	$a0, .LBB22_107
	.p2align	4, , 16
.LBB22_106:                             # %while.body.i12.i
                                        #   Parent Loop BB22_61 Depth=1
                                        #     Parent Loop BB22_65 Depth=2
                                        #       Parent Loop BB22_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$a0, $a6
	bnez	$a6, .LBB22_106
.LBB22_107:                             # %red_DocumentRewriting.exit
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.w	$s1, $s6, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $s6, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.d	$a2, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $s6, 40
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $a1, 0
	st.w	$a0, $s6, 0
	ori	$a0, $zero, 21
	st.w	$a0, $s6, 76
.LBB22_108:                             # %if.end90
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.w	$s1, $s2, 0
	ld.d	$s4, $s6, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s4, $a0, 0
	ld.d	$s1, $s6, 40
	st.d	$a0, $s6, 32
	srai.d	$s4, $s7, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $s6, 40
.LBB22_109:                             # %if.end90
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $s7, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cont_ApplyBindingsModuloMatching)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(term_ReplaceSubtermBy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $fp, 52
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $s4, 0
	beqz	$a0, .LBB22_69
# %bb.110:                              # %if.then98
                                        #   in Loop: Header=BB22_71 Depth=3
	ld.w	$a1, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB22_69
.LBB22_111:                             # %for.end117
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	beqz	$s1, .LBB22_126
# %bb.112:                              # %if.then119
	move	$a0, $s6
	move	$a1, $fp
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s6, 4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 52
	beqz	$a0, .LBB22_114
# %bb.113:                              # %if.then122
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB22_114:                             # %if.end124
	beq	$s6, $s8, .LBB22_116
# %bb.115:                              # %if.then126
	move	$a0, $s8
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s8, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$s6, $a0, 0
.LBB22_116:                             # %cleanup
	move	$a0, $s1
	b	.LBB22_127
.LBB22_117:                             # %while.end146.i
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	beqz	$s2, .LBB22_124
# %bb.118:                              # %if.then148.i
	move	$a0, $s5
	move	$a1, $fp
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, 4
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	move	$s0, $fp
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	beq	$s5, $fp, .LBB22_120
# %bb.119:                              # %if.then150.i
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
.LBB22_120:                             # %if.end151.i
	ld.w	$a0, $s0, 52
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB22_122
# %bb.121:                              # %if.then154.i
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB22_122:                             # %if.end156.i
	beq	$s5, $fp, .LBB22_128
# %bb.123:                              # %if.then158.i
	st.d	$s5, $s0, 0
	move	$a0, $s2
	b	.LBB22_127
.LBB22_124:                             # %if.else160.i
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	beqz	$s7, .LBB22_126
# %bb.125:                              # %if.then162.i
	move	$a0, $s5
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, 4
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
.LBB22_126:
	move	$a0, $zero
.LBB22_127:                             # %cleanup
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB22_128:
	move	$a0, $s2
	b	.LBB22_127
.Lfunc_end22:
	.size	red_RewriteRedClause, .Lfunc_end22-red_RewriteRedClause
                                        # -- End function
	.p2align	5                               # -- Begin function red_ContextualRewriting
	.type	red_ContextualRewriting,@function
red_ContextualRewriting:                # @red_ContextualRewriting
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	ld.w	$t0, $a1, 64
	ld.w	$a7, $a1, 68
	ld.w	$a5, $a1, 72
	add.d	$a6, $t0, $a7
	add.d	$a6, $a6, $a5
	addi.w	$a6, $a6, -1
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	blt	$a6, $t0, .LBB23_105
# %bb.1:                                # %for.body.lr.ph
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	ld.d	$a4, $a0, 112
	move	$a6, $a0
	ld.d	$a0, $a0, 104
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $a2
	bstrins.d	$a0, $zero, 0, 0
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 48
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 32
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	ldx.d	$a0, $a6, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	ld.w	$a0, $a4, 36
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	add.d	$a0, $a7, $a5
	add.w	$a0, $a0, $t0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stack_POINTER)
	ld.d	$a4, $a0, %got_pc_lo12(stack_POINTER)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	move	$a0, $a1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	b	.LBB23_3
	.p2align	4, , 16
.LBB23_2:                               # %for.inc147
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	addi.d	$t0, $t0, 1
	addi.w	$a1, $t0, 0
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB23_99
.LBB23_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_7 Depth 2
                                        #       Child Loop BB23_12 Depth 3
                                        #         Child Loop BB23_14 Depth 4
                                        #           Child Loop BB23_20 Depth 5
                                        #             Child Loop BB23_29 Depth 6
                                        #               Child Loop BB23_30 Depth 7
                                        #               Child Loop BB23_35 Depth 7
                                        #               Child Loop BB23_41 Depth 7
                                        #             Child Loop BB23_63 Depth 6
                                        #             Child Loop BB23_75 Depth 6
                                        #             Child Loop BB23_81 Depth 6
                                        #             Child Loop BB23_83 Depth 6
                                        #             Child Loop BB23_87 Depth 6
                                        #         Child Loop BB23_97 Depth 4
	ld.d	$a1, $a0, 56
	slli.d	$a2, $t0, 3
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ldx.d	$a1, $a1, $a2
	ld.d	$a3, $a1, 24
	ld.w	$a1, $a3, 0
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$t0, $sp, 176                   # 8-byte Folded Spill
	bne	$a1, $a2, .LBB23_5
# %bb.4:                                # %if.then.i.i
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.d	$a0, $a3, 16
	ld.d	$a3, $a0, 8
.LBB23_5:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.d	$a0, $a3, 16
	bnez	$a0, .LBB23_7
	b	.LBB23_2
	.p2align	4, , 16
.LBB23_6:                               # %while.cond.loopexit
                                        #   in Loop: Header=BB23_7 Depth=2
	beqz	$s0, .LBB23_2
.LBB23_7:                               # %while.body
                                        #   Parent Loop BB23_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_12 Depth 3
                                        #         Child Loop BB23_14 Depth 4
                                        #           Child Loop BB23_20 Depth 5
                                        #             Child Loop BB23_29 Depth 6
                                        #               Child Loop BB23_30 Depth 7
                                        #               Child Loop BB23_35 Depth 7
                                        #               Child Loop BB23_41 Depth 7
                                        #             Child Loop BB23_63 Depth 6
                                        #             Child Loop BB23_75 Depth 6
                                        #             Child Loop BB23_81 Depth 6
                                        #             Child Loop BB23_83 Depth 6
                                        #             Child Loop BB23_87 Depth 6
                                        #         Child Loop BB23_97 Depth 4
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a2, $a0, 24
	ld.w	$a0, $a2, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB23_9
# %bb.8:                                # %if.then.i.i110
                                        #   in Loop: Header=BB23_7 Depth=2
	ld.d	$a0, $a2, 16
	ld.d	$a2, $a0, 8
.LBB23_9:                               # %clause_GetLiteralAtom.exit113
                                        #   in Loop: Header=BB23_7 Depth=2
	ld.w	$fp, $a4, 0
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 16
	pcaddu18i	$ra, %call36(sharing_PushListReverseOnStack)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 0
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	beq	$a0, $fp, .LBB23_2
# %bb.10:                               # %while.body20.preheader
                                        #   in Loop: Header=BB23_7 Depth=2
	move	$s0, $zero
	b	.LBB23_12
	.p2align	4, , 16
.LBB23_11:                              # %list_Delete.exit
                                        #   in Loop: Header=BB23_12 Depth=3
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB23_6
.LBB23_12:                              # %while.body20
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB23_14 Depth 4
                                        #           Child Loop BB23_20 Depth 5
                                        #             Child Loop BB23_29 Depth 6
                                        #               Child Loop BB23_30 Depth 7
                                        #               Child Loop BB23_35 Depth 7
                                        #               Child Loop BB23_41 Depth 7
                                        #             Child Loop BB23_63 Depth 6
                                        #             Child Loop BB23_75 Depth 6
                                        #             Child Loop BB23_81 Depth 6
                                        #             Child Loop BB23_83 Depth 6
                                        #             Child Loop BB23_87 Depth 6
                                        #         Child Loop BB23_97 Depth 4
	addi.d	$a0, $a0, -1
	st.w	$a0, $a4, 0
	pcalau12i	$a1, %got_pc_hi20(stack_STACK)
	ld.d	$a1, $a1, %got_pc_lo12(stack_STACK)
	pcalau12i	$a2, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a3, $a2, %got_pc_lo12(cont_LEFTCONTEXT)
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(st_GetGen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	sltu	$a1, $zero, $a0
	beqz	$a0, .LBB23_98
# %bb.13:                               # %while.body20
                                        #   in Loop: Header=BB23_12 Depth=3
	bnez	$s0, .LBB23_95
	.p2align	4, , 16
.LBB23_14:                              # %for.body30
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB23_20 Depth 5
                                        #             Child Loop BB23_29 Depth 6
                                        #               Child Loop BB23_30 Depth 7
                                        #               Child Loop BB23_35 Depth 7
                                        #               Child Loop BB23_41 Depth 7
                                        #             Child Loop BB23_63 Depth 6
                                        #             Child Loop BB23_75 Depth 6
                                        #             Child Loop BB23_81 Depth 6
                                        #             Child Loop BB23_83 Depth 6
                                        #             Child Loop BB23_87 Depth 6
	ld.d	$s5, $fp, 8
	ld.w	$a0, $s5, 0
	blez	$a0, .LBB23_18
.LBB23_15:                              #   in Loop: Header=BB23_14 Depth=4
	move	$s0, $zero
.LBB23_16:                              # %for.inc142
                                        #   in Loop: Header=BB23_14 Depth=4
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a0, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a0, $fp, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $fp, 0
	ld.d	$a1, $a1, 128
	st.d	$fp, $a1, 0
	sltu	$a1, $zero, $a0
	beqz	$a0, .LBB23_96
# %bb.17:                               # %for.inc142
                                        #   in Loop: Header=BB23_14 Depth=4
	move	$fp, $a0
	beqz	$s0, .LBB23_14
	b	.LBB23_96
	.p2align	4, , 16
.LBB23_18:                              # %if.then34
                                        #   in Loop: Header=BB23_14 Depth=4
	ld.d	$s2, $s5, 8
	beqz	$s2, .LBB23_15
# %bb.19:                               # %for.body43.preheader
                                        #   in Loop: Header=BB23_14 Depth=4
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB23_20:                              # %for.body43
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        #         Parent Loop BB23_14 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB23_29 Depth 6
                                        #               Child Loop BB23_30 Depth 7
                                        #               Child Loop BB23_35 Depth 7
                                        #               Child Loop BB23_41 Depth 7
                                        #             Child Loop BB23_63 Depth 6
                                        #             Child Loop BB23_75 Depth 6
                                        #             Child Loop BB23_81 Depth 6
                                        #             Child Loop BB23_83 Depth 6
                                        #             Child Loop BB23_87 Depth 6
	ld.d	$s0, $s2, 8
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s1, $a0, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s1, 0
	bne	$a0, $a1, .LBB23_22
# %bb.21:                               # %land.lhs.true
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 8
	beq	$a0, $s5, .LBB23_25
.LBB23_22:                              #   in Loop: Header=BB23_20 Depth=5
	move	$s0, $zero
.LBB23_23:                              # %for.inc138
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB23_16
# %bb.24:                               # %for.inc138
                                        #   in Loop: Header=BB23_20 Depth=5
	beqz	$s0, .LBB23_20
	b	.LBB23_16
.LBB23_25:                              # %if.then49
                                        #   in Loop: Header=BB23_20 Depth=5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_22
# %bb.26:                               # %for.body58.preheader
                                        #   in Loop: Header=BB23_20 Depth=5
	move	$s4, $a0
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	b	.LBB23_29
.LBB23_27:                              # %land.lhs.true73
                                        #   in Loop: Header=BB23_29 Depth=6
	addi.d	$a7, $sp, 240
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	move	$a5, $s8
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(red_CRwTautologyCheck)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB23_49
	.p2align	4, , 16
.LBB23_28:                              # %for.inc
                                        #   in Loop: Header=BB23_29 Depth=6
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB23_48
.LBB23_29:                              # %for.body58
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        #         Parent Loop BB23_14 Depth=4
                                        #           Parent Loop BB23_20 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB23_30 Depth 7
                                        #               Child Loop BB23_35 Depth 7
                                        #               Child Loop BB23_41 Depth 7
	ld.d	$a0, $s4, 8
	ld.d	$a1, $a0, 16
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 56
	addi.d	$s8, $zero, -1
	move	$a2, $a1
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB23_30:                              # %while.cond.i
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        #         Parent Loop BB23_14 Depth=4
                                        #           Parent Loop BB23_20 Depth=5
                                        #             Parent Loop BB23_29 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	ld.d	$a3, $a2, 0
	ori	$a4, $zero, 0
	lu32i.d	$a4, 1
	add.d	$s2, $s2, $a4
	addi.w	$s8, $s8, 1
	addi.d	$a2, $a2, 8
	bne	$a3, $a0, .LBB23_30
# %bb.31:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB23_29 Depth=6
	ld.d	$a2, $a0, 24
	ld.w	$a3, $a2, 0
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	beq	$a3, $a4, .LBB23_28
# %bb.32:                               # %land.lhs.true64
                                        #   in Loop: Header=BB23_29 Depth=6
	ld.bu	$a3, $a0, 0
	andi	$a3, $a3, 2
	beqz	$a3, .LBB23_28
# %bb.33:                               # %land.lhs.true67
                                        #   in Loop: Header=BB23_29 Depth=6
	ld.w	$a3, $a0, 8
	beqz	$a3, .LBB23_28
# %bb.34:                               # %land.lhs.true70
                                        #   in Loop: Header=BB23_29 Depth=6
	ld.d	$a2, $a2, 16
	ld.d	$s3, $a2, 8
	move	$a3, $zero
	.p2align	4, , 16
.LBB23_35:                              # %while.cond.i.i
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        #         Parent Loop BB23_14 Depth=4
                                        #           Parent Loop BB23_20 Depth=5
                                        #             Parent Loop BB23_29 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	ld.d	$a4, $a1, 0
	move	$a2, $a3
	addi.d	$a1, $a1, 8
	addi.w	$a3, $a3, 1
	bne	$a4, $a0, .LBB23_35
# %bb.36:                               # %clause_LiteralGetIndex.exit.i
                                        #   in Loop: Header=BB23_29 Depth=6
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 64
	ld.w	$a3, $a0, 68
	ld.w	$a0, $a0, 72
	add.w	$a1, $a3, $a1
	add.d	$a3, $a1, $a0
	addi.w	$a3, $a3, -1
	bltz	$a3, .LBB23_27
# %bb.37:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB23_29 Depth=6
	move	$s7, $zero
	add.d	$a0, $a1, $a0
	bstrpick.d	$fp, $a0, 31, 0
	bstrpick.d	$s5, $a2, 31, 0
	b	.LBB23_41
	.p2align	4, , 16
.LBB23_38:                              # %if.else.i
                                        #   in Loop: Header=BB23_41 Depth=7
	move	$a0, $s3
	move	$a1, $s0
.LBB23_39:                              # %if.else.i
                                        #   in Loop: Header=BB23_41 Depth=7
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB23_28
.LBB23_40:                              # %for.inc.i
                                        #   in Loop: Header=BB23_41 Depth=7
	addi.d	$fp, $fp, -1
	addi.d	$s7, $s7, 8
	addi.d	$s5, $s5, -1
	beqz	$fp, .LBB23_27
.LBB23_41:                              # %for.body.i
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        #         Parent Loop BB23_14 Depth=4
                                        #           Parent Loop BB23_20 Depth=5
                                        #             Parent Loop BB23_29 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	beqz	$s5, .LBB23_40
# %bb.42:                               # %if.then.i
                                        #   in Loop: Header=BB23_41 Depth=7
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	ldx.d	$s6, $a0, $s7
	ld.d	$s0, $s6, 24
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB23_44
# %bb.43:                               # %if.then.i.i135
                                        #   in Loop: Header=BB23_41 Depth=7
	ld.d	$a0, $s0, 16
	ld.d	$s0, $a0, 8
	ld.w	$a0, $s0, 0
.LBB23_44:                              # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB23_41 Depth=7
	ld.w	$a1, $s1, 0
	bne	$a0, $a1, .LBB23_38
# %bb.45:                               # %if.then9.i
                                        #   in Loop: Header=BB23_41 Depth=7
	ld.d	$a0, $s0, 16
	ld.d	$a1, $a0, 8
	move	$a0, $s3
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB23_28
# %bb.46:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB23_41 Depth=7
	ld.w	$a0, $s6, 8
	bnez	$a0, .LBB23_40
# %bb.47:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB23_41 Depth=7
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s3
	b	.LBB23_39
.LBB23_48:                              #   in Loop: Header=BB23_20 Depth=5
	move	$s0, $zero
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	b	.LBB23_23
.LBB23_49:                              # %if.then76
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	beq	$a0, $s0, .LBB23_51
# %bb.50:                               #   in Loop: Header=BB23_20 Depth=5
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	b	.LBB23_55
.LBB23_51:                              # %land.lhs.true78
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	beqz	$a1, .LBB23_67
.LBB23_52:                              # %if.then89
                                        #   in Loop: Header=BB23_20 Depth=5
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $a0, 56
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a2, $a0, 24
	ld.w	$a0, $a2, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB23_54
# %bb.53:                               # %if.then.i.i150
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a0, $a2, 16
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB23_55
.LBB23_54:                              #   in Loop: Header=BB23_20 Depth=5
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
.LBB23_55:                              # %if.end92
                                        #   in Loop: Header=BB23_20 Depth=5
	bnez	$fp, .LBB23_58
# %bb.56:                               # %land.lhs.true94
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 56
	beqz	$a0, .LBB23_58
# %bb.57:                               # %if.then97
                                        #   in Loop: Header=BB23_20 Depth=5
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB23_58:                              # %if.end100
                                        #   in Loop: Header=BB23_20 Depth=5
	st.d	$s0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB23_85
# %bb.59:                               # %if.then102
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a1, $sp, 240
	beqz	$a1, .LBB23_65
# %bb.60:                               # %if.end112
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$s0, $a1, 32
	ld.d	$a0, $a1, 40
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a1, 32
	beqz	$fp, .LBB23_80
# %bb.61:                               # %if.else115
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 32
	ld.d	$a2, $a1, 0
	ld.w	$s3, $a2, 8
	beqz	$s0, .LBB23_71
# %bb.62:                               # %for.cond.i.i.preheader
                                        #   in Loop: Header=BB23_20 Depth=5
	move	$a3, $s0
	.p2align	4, , 16
.LBB23_63:                              # %for.cond.i.i
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        #         Parent Loop BB23_14 Depth=4
                                        #           Parent Loop BB23_20 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB23_63
# %bb.64:                               # %for.end.i.i
                                        #   in Loop: Header=BB23_20 Depth=5
	st.d	$a1, $a2, 0
	b	.LBB23_72
.LBB23_65:                              # %if.end112.thread
                                        #   in Loop: Header=BB23_20 Depth=5
	beqz	$fp, .LBB23_79
# %bb.66:                               # %list_Nconc.exit.i.thread
                                        #   in Loop: Header=BB23_20 Depth=5
	move	$a1, $s0
	ld.d	$s0, $s0, 32
	ld.d	$a0, $s0, 0
	ld.w	$s3, $a0, 8
	ld.d	$a0, $a1, 40
	addi.d	$fp, $a1, 32
	addi.d	$s1, $a1, 40
	b	.LBB23_78
.LBB23_67:                              # %lor.lhs.false
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 12
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB23_52
# %bb.68:                               # %lor.lhs.false
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.w	$a2, $a0, 12
	bltu	$a2, $a1, .LBB23_52
# %bb.69:                               # %lor.lhs.false84
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a1, $sp, 240
	ld.w	$a1, $a1, 12
	bltu	$a2, $a1, .LBB23_52
# %bb.70:                               # %lor.lhs.false84
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bgeu	$a2, $a1, .LBB23_55
	b	.LBB23_52
.LBB23_71:                              #   in Loop: Header=BB23_20 Depth=5
	move	$s0, $a1
.LBB23_72:                              # %list_Nconc.exit.i
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 40
	addi.d	$fp, $a2, 32
	st.d	$s0, $a2, 32
	addi.d	$s1, $a2, 40
	beqz	$a0, .LBB23_77
# %bb.73:                               # %if.end.i12.i
                                        #   in Loop: Header=BB23_20 Depth=5
	beqz	$a1, .LBB23_78
# %bb.74:                               # %for.cond.i14.i.preheader
                                        #   in Loop: Header=BB23_20 Depth=5
	move	$a3, $a0
	.p2align	4, , 16
.LBB23_75:                              # %for.cond.i14.i
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        #         Parent Loop BB23_14 Depth=4
                                        #           Parent Loop BB23_20 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB23_75
# %bb.76:                               # %for.end.i18.i
                                        #   in Loop: Header=BB23_20 Depth=5
	st.d	$a1, $a2, 0
	ld.d	$s0, $fp, 0
	b	.LBB23_78
.LBB23_77:                              #   in Loop: Header=BB23_20 Depth=5
	move	$a0, $a1
.LBB23_78:                              # %red_DocumentFurtherCRw.exit
                                        #   in Loop: Header=BB23_20 Depth=5
	st.d	$a0, $s1, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s0, $a0, 0
	ld.d	$s0, $s1, 0
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $a0, 8
	st.d	$s0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$s0, $a0, 0
	ld.d	$s3, $fp, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s3, $a0, 0
	ld.d	$s0, $s1, 0
	st.d	$a0, $fp, 0
	srai.d	$fp, $s2, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s0, $a0, 0
	st.d	$a0, $s1, 0
	b	.LBB23_85
.LBB23_79:                              #   in Loop: Header=BB23_20 Depth=5
	move	$a0, $zero
	move	$s0, $zero
.LBB23_80:                              # %if.then114
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 32
	beqz	$a1, .LBB23_82
	.p2align	4, , 16
.LBB23_81:                              # %while.body.i.i
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        #         Parent Loop BB23_14 Depth=4
                                        #           Parent Loop BB23_20 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	ld.d	$a3, $a2, 128
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a5, $a3, 32
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a1, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a4, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 128
	st.d	$a1, $a2, 0
	move	$a1, $a7
	bnez	$a7, .LBB23_81
.LBB23_82:                              # %list_Delete.exit.i
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	beqz	$a1, .LBB23_84
	.p2align	4, , 16
.LBB23_83:                              # %while.body.i14.i
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        #         Parent Loop BB23_14 Depth=4
                                        #           Parent Loop BB23_20 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	ld.d	$a3, $a2, 128
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a5, $a3, 32
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a1, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a4, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 128
	st.d	$a1, $a2, 0
	move	$a1, $a7
	bnez	$a7, .LBB23_83
.LBB23_84:                              # %red_DocumentContextualRewriting.exit
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$fp, $s1, 0
	st.d	$s0, $s1, 32
	st.d	$a0, $s1, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s0, $a0, 0
	ld.d	$fp, $s1, 40
	st.d	$a0, $s1, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s1, 40
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 0
	ld.d	$s0, $s1, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s0, $a0, 0
	ld.d	$fp, $s1, 40
	st.d	$a0, $s1, 32
	srai.d	$s0, $s2, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	st.d	$s0, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s1, 40
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $a1, 0
	st.w	$a0, $s1, 0
	ori	$a0, $zero, 22
	st.w	$a0, $s1, 76
.LBB23_85:                              # %if.end117
                                        #   in Loop: Header=BB23_20 Depth=5
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$fp, $a0, %got_pc_lo12(cont_STACKPOINTER)
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$s1, $a0, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a1, $fp, 0
	ld.w	$a2, $s1, 0
	addi.d	$a0, $a1, 1
	pcalau12i	$a3, %got_pc_hi20(cont_STACK)
	ld.d	$s2, $a3, %got_pc_lo12(cont_STACK)
	st.w	$a0, $fp, 0
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	slli.d	$a1, $a1, 2
	stx.w	$a2, $s2, $a1
	st.w	$zero, $s1, 0
	move	$a1, $s5
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_MatchBindings)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$s0, $s0, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cont_ApplyBindingsModuloMatching)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	move	$s3, $a0
	ori	$a5, $zero, 1
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	blt	$a1, $a5, .LBB23_88
# %bb.86:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB23_20 Depth=5
	addi.d	$a0, $a1, 1
	.p2align	4, , 16
.LBB23_87:                              # %while.body.i
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        #         Parent Loop BB23_14 Depth=4
                                        #           Parent Loop BB23_20 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	pcalau12i	$a1, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a1, $a1, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a2, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a3, $a3, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a2, $a3, 0
	ld.d	$a4, $a2, 24
	st.d	$a4, $a1, 0
	st.w	$zero, $a2, 20
	vst	$vr0, $a2, 4
	ld.d	$a1, $a3, 0
	st.d	$zero, $a1, 24
	addi.d	$a1, $a0, -2
	addi.w	$a0, $a0, -1
	st.w	$a1, $s1, 0
	bltu	$a5, $a0, .LBB23_87
.LBB23_88:                              # %while.end.i
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.w	$a0, $fp, 0
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB23_90
# %bb.89:                               # %if.then.i170
                                        #   in Loop: Header=BB23_20 Depth=5
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s2, $a1
	st.w	$a0, $fp, 0
	st.w	$a1, $s1, 0
.LBB23_90:                              # %cont_BackTrack.exit
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(term_ReplaceSubtermBy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s0, $sp, 240
	beqz	$s0, .LBB23_92
# %bb.91:                               # %if.then127
                                        #   in Loop: Header=BB23_20 Depth=5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
.LBB23_92:                              # %if.end128
                                        #   in Loop: Header=BB23_20 Depth=5
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 56
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB23_94
# %bb.93:                               # %if.then131
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a2, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB23_94:                              # %for.inc.thread
                                        #   in Loop: Header=BB23_20 Depth=5
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 4
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$s0, $zero, 1
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	b	.LBB23_23
	.p2align	4, , 16
.LBB23_95:                              #   in Loop: Header=BB23_12 Depth=3
	move	$a0, $fp
.LBB23_96:                              # %for.end144
                                        #   in Loop: Header=BB23_12 Depth=3
	beqz	$a1, .LBB23_11
	.p2align	4, , 16
.LBB23_97:                              # %while.body.i176
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        #       Parent Loop BB23_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$a0, $a6
	bnez	$a6, .LBB23_97
	b	.LBB23_11
	.p2align	4, , 16
.LBB23_98:                              #   in Loop: Header=BB23_12 Depth=3
	move	$a0, $fp
	bnez	$a1, .LBB23_97
	b	.LBB23_11
.LBB23_99:                              # %for.end148
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beqz	$a1, .LBB23_105
# %bb.100:                              # %if.then150
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.w	$a0, $a1, 4
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 56
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB23_102
# %bb.101:                              # %if.then153
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB23_102:                             # %if.end155
	beq	$s0, $fp, .LBB23_104
# %bb.103:                              # %if.then157
	move	$a0, $fp
	move	$s2, $s0
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$s2, $a0, 0
.LBB23_104:                             # %if.end159
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	b	.LBB23_106
.LBB23_105:
	move	$a0, $zero
.LBB23_106:                             # %if.end159
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end23:
	.size	red_ContextualRewriting, .Lfunc_end23-red_ContextualRewriting
                                        # -- End function
	.p2align	5                               # -- Begin function red_SortSimplification
	.type	red_SortSimplification,@function
red_SortSimplification:                 # @red_SortSimplification
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB24_52
# %bb.1:                                # %if.then
	move	$s0, $a1
	ld.w	$a0, $a1, 64
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB24_52
# %bb.2:                                # %while.body.lr.ph
	move	$s1, $a4
	move	$s4, $a3
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $s0, 12
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	sltu	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	pcalau12i	$a4, %got_pc_hi20(fol_NOT)
	ld.d	$a4, $a4, %got_pc_lo12(fol_NOT)
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(memory_ARRAY)
	ld.d	$s2, $a4, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s5, $a4, %got_pc_lo12(memory_FREEDBYTES)
	maskeqz	$a1, $a1, $a3
	addi.w	$s7, $a0, -1
	or	$a0, $a1, $a2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s3, $s0
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	b	.LBB24_6
	.p2align	4, , 16
.LBB24_3:                               #   in Loop: Header=BB24_6 Depth=1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
.LBB24_4:                               # %list_Nconc.exit76
                                        #   in Loop: Header=BB24_6 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s7, $s7, -1
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
.LBB24_5:                               # %if.end55
                                        #   in Loop: Header=BB24_6 Depth=1
	move	$a0, $a3
	pcaddu18i	$ra, %call36(sort_DeleteSortPair)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(sort_Delete)
	jirl	$ra, $ra, 0
	blt	$s7, $fp, .LBB24_41
.LBB24_6:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_16 Depth 2
                                        #     Child Loop BB24_25 Depth 2
                                        #     Child Loop BB24_38 Depth 2
                                        #     Child Loop BB24_20 Depth 2
	ld.d	$a0, $s3, 56
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s6, $a0, 24
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	bne	$a0, $a1, .LBB24_8
# %bb.7:                                # %if.then.i
                                        #   in Loop: Header=BB24_6 Depth=1
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 16
	ld.d	$s6, $a0, 8
	b	.LBB24_9
	.p2align	4, , 16
.LBB24_8:                               #   in Loop: Header=BB24_6 Depth=1
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
.LBB24_9:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB24_6 Depth=1
	ld.d	$a0, $s6, 16
	ld.d	$a1, $a0, 8
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $s7
	move	$a2, $s3
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	move	$a3, $fp
	move	$a4, $s1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sort_ComputeSortNoResidues)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$fp, $a0, 8
	ld.d	$s8, $a1, 32
	st.d	$zero, $a1, 32
	ld.w	$a1, $s6, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s7
	move	$a1, $fp
	move	$a2, $s6
	pcaddu18i	$ra, %call36(sort_TheoryIsSubsortOfNoResidues)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	beqz	$a0, .LBB24_19
# %bb.10:                               # %if.then19
                                        #   in Loop: Header=BB24_6 Depth=1
	move	$fp, $a0
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	bnez	$s4, .LBB24_13
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB24_6 Depth=1
	ld.w	$a0, $s1, 72
	beqz	$a0, .LBB24_13
# %bb.12:                               # %if.then22
                                        #   in Loop: Header=BB24_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s6, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB24_13:                              # %if.end
                                        #   in Loop: Header=BB24_6 Depth=1
	ld.d	$s6, $fp, 32
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	beqz	$s8, .LBB24_22
# %bb.14:                               # %if.end.i
                                        #   in Loop: Header=BB24_6 Depth=1
	beqz	$s6, .LBB24_18
# %bb.15:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB24_6 Depth=1
	move	$a1, $s8
	.p2align	4, , 16
.LBB24_16:                              # %for.cond.i
                                        #   Parent Loop BB24_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB24_16
# %bb.17:                               # %for.end.i
                                        #   in Loop: Header=BB24_6 Depth=1
	st.d	$s6, $a0, 0
.LBB24_18:                              # %list_Nconc.exit.thread
                                        #   in Loop: Header=BB24_6 Depth=1
	st.d	$zero, $fp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sort_ConditionDelete)
	jirl	$ra, $ra, 0
	b	.LBB24_23
	.p2align	4, , 16
.LBB24_19:                              # %if.else
                                        #   in Loop: Header=BB24_6 Depth=1
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	beqz	$s8, .LBB24_21
	.p2align	4, , 16
.LBB24_20:                              # %while.body.i
                                        #   Parent Loop BB24_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s5, 0
	ld.d	$a3, $s8, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $s2, 128
	st.d	$s8, $a0, 0
	move	$s8, $a3
	bnez	$a3, .LBB24_20
.LBB24_21:                              # %list_Delete.exit
                                        #   in Loop: Header=BB24_6 Depth=1
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	b	.LBB24_5
	.p2align	4, , 16
.LBB24_22:                              # %list_Nconc.exit
                                        #   in Loop: Header=BB24_6 Depth=1
	st.d	$zero, $fp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sort_ConditionDelete)
	jirl	$ra, $ra, 0
	move	$s8, $s6
	beqz	$s6, .LBB24_33
.LBB24_23:                              # %for.body.preheader
                                        #   in Loop: Header=BB24_6 Depth=1
	move	$fp, $s8
	b	.LBB24_25
	.p2align	4, , 16
.LBB24_24:                              # %for.inc
                                        #   in Loop: Header=BB24_25 Depth=2
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB24_31
.LBB24_25:                              # %for.body
                                        #   Parent Loop BB24_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$s0, $s3, .LBB24_29
# %bb.26:                               # %land.lhs.true31
                                        #   in Loop: Header=BB24_25 Depth=2
	bnez	$s4, .LBB24_28
# %bb.27:                               # %lor.lhs.false
                                        #   in Loop: Header=BB24_25 Depth=2
	ld.d	$a0, $fp, 8
	ld.w	$a0, $a0, 12
	bgeu	$s7, $a0, .LBB24_29
.LBB24_28:                              # %if.then37
                                        #   in Loop: Header=BB24_25 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB24_29:                              # %if.end39
                                        #   in Loop: Header=BB24_25 Depth=2
	ld.d	$a1, $fp, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 72
	beqz	$a0, .LBB24_24
# %bb.30:                               # %if.then43
                                        #   in Loop: Header=BB24_25 Depth=2
	ld.d	$a0, $fp, 8
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB24_24
	.p2align	4, , 16
.LBB24_31:                              #   in Loop: Header=BB24_6 Depth=1
	move	$fp, $zero
	beqz	$s4, .LBB24_34
.LBB24_32:                              # %if.then50
                                        #   in Loop: Header=BB24_6 Depth=1
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.w	$s6, $a0, $s7
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB24_35
.LBB24_33:                              #   in Loop: Header=BB24_6 Depth=1
	move	$s8, $zero
	ori	$fp, $zero, 1
	bnez	$s4, .LBB24_32
	.p2align	4, , 16
.LBB24_34:                              #   in Loop: Header=BB24_6 Depth=1
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
.LBB24_35:                              # %if.end52
                                        #   in Loop: Header=BB24_6 Depth=1
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s3
	move	$a1, $s7
	move	$a2, $s1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_DeleteLiteral)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB24_3
# %bb.36:                               # %if.end.i68
                                        #   in Loop: Header=BB24_6 Depth=1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	beqz	$a2, .LBB24_40
# %bb.37:                               # %for.cond.i70.preheader
                                        #   in Loop: Header=BB24_6 Depth=1
	move	$a1, $s8
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB24_38:                              # %for.cond.i70
                                        #   Parent Loop BB24_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB24_38
# %bb.39:                               # %for.end.i74
                                        #   in Loop: Header=BB24_6 Depth=1
	st.d	$a2, $a0, 0
	b	.LBB24_4
.LBB24_40:                              #   in Loop: Header=BB24_6 Depth=1
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	b	.LBB24_4
.LBB24_41:                              # %while.end
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB24_52
# %bb.42:                               # %if.then58
	beqz	$s4, .LBB24_54
# %bb.43:                               # %if.then60
	ld.d	$a0, $s3, 32
	beqz	$a0, .LBB24_45
	.p2align	4, , 16
.LBB24_44:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s2, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB24_44
.LBB24_45:                              # %list_Delete.exit.i
	ld.d	$a0, $s3, 40
	beqz	$a0, .LBB24_47
	.p2align	4, , 16
.LBB24_46:                              # %while.body.i23.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s2, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB24_46
.LBB24_47:                              # %list_Delete.exit30.i
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	beqz	$s5, .LBB24_56
# %bb.48:                               # %for.body.i.preheader
	move	$a0, $zero
	move	$fp, $s5
	.p2align	4, , 16
.LBB24_49:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s2, $s3, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s4, $a0, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB24_49
# %bb.50:                               # %for.cond8.preheader.thread.i
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	beqz	$s2, .LBB24_67
# %bb.51:
	move	$fp, $a0
	b	.LBB24_58
.LBB24_52:
	move	$a0, $zero
.LBB24_53:                              # %return
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB24_54:                              # %if.else61
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	beqz	$a4, .LBB24_72
	.p2align	4, , 16
.LBB24_55:                              # %while.body.i81
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s5, 0
	ld.d	$a3, $a4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $s2, 128
	st.d	$a4, $a0, 0
	move	$a4, $a3
	bnez	$a3, .LBB24_55
	b	.LBB24_72
.LBB24_56:                              # %for.cond8.preheader.i
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	beqz	$s2, .LBB24_70
# %bb.57:
	move	$fp, $zero
.LBB24_58:                              # %for.body12.preheader.i
	move	$a0, $zero
	.p2align	4, , 16
.LBB24_59:                              # %for.body12.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 8
	ld.w	$a2, $a1, 64
	ld.w	$a1, $a1, 68
	move	$s4, $a0
	add.w	$s5, $a1, $a2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s4, $a0, 0
	ld.d	$a1, $s2, 8
	ld.w	$a1, $a1, 0
	st.d	$a1, $s2, 8
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB24_59
# %bb.60:                               # %for.end22.i
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	beqz	$a4, .LBB24_68
# %bb.61:                               # %for.cond.i.i.preheader
	move	$a1, $a0
	move	$a3, $a4
	move	$a0, $fp
	.p2align	4, , 16
.LBB24_62:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB24_62
# %bb.63:                               # %for.end.i.i
	st.d	$a1, $a2, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$a4, $s3, 40
	beqz	$a0, .LBB24_69
.LBB24_64:                              # %for.cond.i40.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB24_65:                              # %for.cond.i40.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB24_65
# %bb.66:                               # %for.end.i44.i
	st.d	$a3, $a1, 0
	b	.LBB24_71
.LBB24_67:                              # %if.end.i38.thread.i
	st.d	$s5, $s3, 40
	b	.LBB24_71
.LBB24_68:
	move	$a4, $a0
	move	$a0, $fp
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$a4, $s3, 40
	bnez	$a0, .LBB24_64
.LBB24_69:
	move	$a0, $a3
	b	.LBB24_71
.LBB24_70:                              # %list_Nconc.exit.thread.i
	move	$a0, $zero
	st.d	$zero, $s3, 40
.LBB24_71:                              # %red_DocumentSortSimplification.exit
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	st.d	$a0, $s3, 32
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $a1, 0
	st.w	$a0, $s3, 0
	ori	$a0, $zero, 20
	st.w	$a0, $s3, 76
.LBB24_72:                              # %if.end62
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s3, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 72
	beqz	$a0, .LBB24_74
# %bb.73:                               # %if.then65
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB24_74:                              # %if.end67
	ori	$a0, $zero, 1
	beq	$s3, $s0, .LBB24_53
# %bb.75:                               # %if.then70
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	b	.LBB24_53
.Lfunc_end24:
	.size	red_SortSimplification, .Lfunc_end24-red_SortSimplification
                                        # -- End function
	.p2align	5                               # -- Begin function red_MatchingReplacementResolution
	.type	red_MatchingReplacementResolution,@function
red_MatchingReplacementResolution:      # @red_MatchingReplacementResolution
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	ld.w	$t0, $a0, 64
	ld.w	$a6, $a0, 68
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a7, $a0, 72
	add.d	$a0, $a6, $t0
	add.w	$s4, $a0, $a7
	ori	$s7, $zero, 1
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	blt	$s4, $s7, .LBB25_53
# %bb.1:                                # %while.body.lr.ph
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 36
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	move	$s8, $zero
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	move	$s0, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB25_3
	.p2align	4, , 16
.LBB25_2:                               # %if.else43
                                        #   in Loop: Header=BB25_3 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $s4, .LBB25_34
.LBB25_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_6 Depth 2
                                        #     Child Loop BB25_11 Depth 2
                                        #       Child Loop BB25_15 Depth 3
                                        #         Child Loop BB25_20 Depth 4
                                        #     Child Loop BB25_27 Depth 2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	slli.d	$a1, $s0, 3
	ldx.d	$s1, $a0, $a1
	ld.d	$a2, $s1, 24
	ld.w	$a0, $a2, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB25_5
# %bb.4:                                # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.d	$a3, $a2, 16
	ld.d	$a3, $a3, 8
	ld.w	$a3, $a3, 0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	beq	$a3, $a4, .LBB25_2
.LBB25_5:                               # %if.then
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.d	$s5, $s1, 16
	ld.d	$a3, $s5, 56
	addi.d	$s6, $zero, -1
	.p2align	4, , 16
.LBB25_6:                               # %while.cond.i.i
                                        #   Parent Loop BB25_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	addi.w	$s6, $s6, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $s1, .LBB25_6
# %bb.7:                                # %clause_LiteralGetIndex.exit.i
                                        #   in Loop: Header=BB25_3 Depth=1
	bne	$a0, $a1, .LBB25_9
# %bb.8:                                # %if.then.i.i
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.d	$a0, $a2, 16
	ld.d	$a2, $a0, 8
.LBB25_9:                               # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB25_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(st_ExistGen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_11
	b	.LBB25_2
	.p2align	4, , 16
.LBB25_10:                              # %if.end26.i
                                        #   in Loop: Header=BB25_11 Depth=2
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_2
.LBB25_11:                              # %while.body.i
                                        #   Parent Loop BB25_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_15 Depth 3
                                        #         Child Loop BB25_20 Depth 4
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB25_10
# %bb.12:                               # %if.then.i65
                                        #   in Loop: Header=BB25_11 Depth=2
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_10
# %bb.13:                               # %while.body12.preheader.i
                                        #   in Loop: Header=BB25_11 Depth=2
	move	$fp, $a0
	ld.w	$a0, $s3, 0
	b	.LBB25_15
	.p2align	4, , 16
.LBB25_14:                              # %if.end24.i
                                        #   in Loop: Header=BB25_15 Depth=3
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB25_10
.LBB25_15:                              # %while.body12.i
                                        #   Parent Loop BB25_3 Depth=1
                                        #     Parent Loop BB25_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB25_20 Depth 4
	ld.d	$s2, $fp, 8
	ld.d	$a1, $s1, 24
	ld.d	$a2, $s2, 24
	ld.w	$a3, $a1, 0
	ld.w	$a1, $a2, 0
	bne	$a3, $a0, .LBB25_17
# %bb.16:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB25_15 Depth=3
	beq	$a1, $a0, .LBB25_14
	b	.LBB25_18
	.p2align	4, , 16
.LBB25_17:                              # %lor.rhs.i.i
                                        #   in Loop: Header=BB25_15 Depth=3
	bne	$a1, $a0, .LBB25_14
.LBB25_18:                              # %if.then16.i
                                        #   in Loop: Header=BB25_15 Depth=3
	ld.d	$a0, $s2, 16
	ld.w	$a1, $a0, 64
	ld.w	$a2, $a0, 68
	ld.w	$a3, $a0, 72
	add.d	$a1, $a2, $a1
	add.w	$a1, $a1, $a3
	beq	$a1, $s7, .LBB25_23
# %bb.19:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB25_15 Depth=3
	ld.d	$a1, $a0, 56
	addi.d	$a2, $zero, -1
	.p2align	4, , 16
.LBB25_20:                              # %while.cond.i19.i
                                        #   Parent Loop BB25_3 Depth=1
                                        #     Parent Loop BB25_11 Depth=2
                                        #       Parent Loop BB25_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a1, 0
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $s2, .LBB25_20
# %bb.21:                               # %clause_LiteralGetIndex.exit24.i
                                        #   in Loop: Header=BB25_15 Depth=3
	move	$a1, $s5
	move	$a3, $s6
	pcaddu18i	$ra, %call36(subs_SubsumesBasic)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_23
# %bb.22:                               #   in Loop: Header=BB25_15 Depth=3
	ld.w	$a0, $s3, 0
	b	.LBB25_14
	.p2align	4, , 16
.LBB25_23:                              # %if.then14
                                        #   in Loop: Header=BB25_3 Depth=1
	pcaddu18i	$ra, %call36(st_CancelExistRetrieval)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_26
# %bb.24:                               # %land.lhs.true
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 80
	beqz	$a0, .LBB25_26
# %bb.25:                               # %if.then19
                                        #   in Loop: Header=BB25_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB25_26:                              # %if.end
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.d	$s6, $s2, 16
	ld.w	$fp, $s6, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$fp, $a0, 8
	st.d	$s8, $a0, 0
	ld.d	$a0, $s2, 16
	ld.d	$a0, $a0, 56
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB25_27:                              # %while.cond.i
                                        #   Parent Loop BB25_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
	add.d	$a1, $a1, $a3
	addi.d	$a0, $a0, 8
	bne	$a2, $s2, .LBB25_27
# %bb.28:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB25_3 Depth=1
	srai.d	$s1, $a1, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $a0, 8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	add.w	$s1, $s8, $s0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s1, $a0, 8
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $s2, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB25_31
# %bb.29:                               # %land.lhs.true31
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB25_32
.LBB25_30:                              # %if.then38
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
.LBB25_31:                              # %if.end40
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_DeleteLiteral)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	addi.d	$s8, $s8, 1
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	move	$s8, $s5
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	blt	$s0, $s4, .LBB25_3
	b	.LBB25_34
.LBB25_32:                              # %lor.lhs.false33
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.w	$a0, $s6, 12
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB25_30
# %bb.33:                               # %lor.lhs.false33
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 12
	bgeu	$a1, $a0, .LBB25_31
	b	.LBB25_30
.LBB25_34:                              # %while.end
	beqz	$s8, .LBB25_53
# %bb.35:                               # %if.then48
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB25_41
# %bb.36:                               # %if.then50
	move	$a0, $s8
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(red_DocumentMatchingReplacementResolution)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 80
	beqz	$a0, .LBB25_51
# %bb.37:                               # %if.then56
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB25_40
# %bb.38:                               # %for.body.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s2, $a0, %pc_lo12(.L.str.29)
	.p2align	4, , 16
.LBB25_39:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, 8
	ld.w	$a2, $s0, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	ld.d	$s0, $s0, 0
	bnez	$fp, .LBB25_39
.LBB25_40:                              # %for.end
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	b	.LBB25_51
.LBB25_41:                              # %if.else67
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 80
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB25_45
# %bb.42:                               # %if.then70
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$fp, $a0, %pc_lo12(.L.str.29)
	move	$s1, $s3
	move	$s2, $s8
	.p2align	4, , 16
.LBB25_43:                              # %for.body76
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, 8
	ld.w	$a2, $s1, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	ld.d	$s1, $s1, 0
	bnez	$s2, .LBB25_43
# %bb.44:                               # %for.end83
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB25_45:                              # %while.body.i86.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB25_46:                              # %while.body.i86
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s8, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s8, 0
	ld.d	$a2, $a0, 128
	st.d	$s8, $a2, 0
	move	$s8, $a5
	bnez	$a5, .LBB25_46
# %bb.47:                               # %list_Delete.exit
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	beqz	$s3, .LBB25_49
	.p2align	4, , 16
.LBB25_48:                              # %while.body.i89
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s3, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s3, 0
	ld.d	$a2, $a0, 128
	st.d	$s3, $a2, 0
	move	$s3, $a5
	bnez	$a5, .LBB25_48
.LBB25_49:                              # %list_Delete.exit96
	beqz	$a6, .LBB25_51
	.p2align	4, , 16
.LBB25_50:                              # %while.body.i98
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a6, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a6, 0
	ld.d	$a2, $a0, 128
	st.d	$a6, $a2, 0
	move	$a6, $a5
	bnez	$a5, .LBB25_50
.LBB25_51:                              # %if.end86
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB25_53
# %bb.52:                               # %if.then89
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
.LBB25_53:                              # %cleanup
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end25:
	.size	red_MatchingReplacementResolution, .Lfunc_end25-red_MatchingReplacementResolution
                                        # -- End function
	.p2align	5                               # -- Begin function red_UnitConflict
	.type	red_UnitConflict,@function
red_UnitConflict:                       # @red_UnitConflict
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
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a6, $fp, 68
	ld.w	$a7, $fp, 72
	add.d	$a0, $a6, $a0
	add.w	$a0, $a0, $a7
	ori	$a6, $zero, 1
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	bne	$a0, $a6, .LBB26_48
# %bb.1:                                # %if.then
	move	$s4, $a1
	move	$s1, $a2
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 56
	pcalau12i	$a1, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s0, $a1, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.d	$s7, $a0, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a3, $s7, 24
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$s8, $a2, %got_pc_lo12(fol_NOT)
	ld.d	$s3, $a1, %got_pc_lo12(cont_RIGHTCONTEXT)
	ld.d	$a1, $s4, 0
	ld.w	$a4, $a3, 0
	ld.w	$a6, $s8, 0
	ld.d	$a2, $s3, 0
	move	$s2, $a5
	bne	$a4, $a6, .LBB26_3
# %bb.2:                                # %if.then.i
	ld.d	$a3, $a3, 16
	ld.d	$a3, $a3, 8
.LBB26_3:                               # %clause_LiteralAtom.exit
	ld.w	$a4, $s1, 36
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(st_ExistUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_13
# %bb.4:                                # %while.body.preheader
	ori	$s6, $zero, 1
	b	.LBB26_6
	.p2align	4, , 16
.LBB26_5:                               # %if.end31
                                        #   in Loop: Header=BB26_6 Depth=1
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_13
.LBB26_6:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_10 Depth 2
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB26_5
# %bb.7:                                # %if.then12
                                        #   in Loop: Header=BB26_6 Depth=1
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_5
# %bb.8:                                # %while.body17.preheader
                                        #   in Loop: Header=BB26_6 Depth=1
	ld.d	$a2, $s7, 24
	ld.w	$a1, $s8, 0
	ld.w	$a2, $a2, 0
	xor	$a2, $a2, $a1
	sltui	$a2, $a2, 1
	b	.LBB26_10
	.p2align	4, , 16
.LBB26_9:                               # %if.end
                                        #   in Loop: Header=BB26_10 Depth=2
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB26_5
.LBB26_10:                              # %while.body17
                                        #   Parent Loop BB26_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $a0, 8
	ld.d	$a3, $s5, 24
	ld.w	$a3, $a3, 0
	xor	$a3, $a3, $a1
	sltui	$a3, $a3, 1
	beq	$a2, $a3, .LBB26_9
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB26_10 Depth=2
	ld.d	$a3, $s5, 16
	ld.w	$a4, $a3, 64
	ld.w	$a5, $a3, 68
	ld.w	$a3, $a3, 72
	add.d	$a4, $a5, $a4
	add.w	$a3, $a4, $a3
	bne	$a3, $s6, .LBB26_9
# %bb.12:                               # %if.end31.thread
	pcaddu18i	$ra, %call36(st_CancelExistRetrieval)
	jirl	$ra, $ra, 0
	move	$s6, $s2
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	b	.LBB26_30
.LBB26_13:                              # %land.lhs.true34
	ld.d	$a0, $s7, 24
	ld.w	$s5, $a0, 0
	ld.w	$a1, $s8, 0
	bne	$s5, $a1, .LBB26_15
# %bb.14:                               # %clause_LiteralAtom.exit71
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a1, $a1, %got_pc_lo12(fol_EQUALITY)
	ld.w	$s5, $a0, 0
	ld.w	$a1, $a1, 0
	move	$s6, $s2
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	beq	$s5, $a1, .LBB26_16
	b	.LBB26_48
.LBB26_15:                              # %clause_LiteralAtom.exit71.thread
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a1, $a1, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a1, $a1, 0
	move	$s6, $s2
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	bne	$s5, $a1, .LBB26_48
.LBB26_16:                              # %clause_LiteralAtom.exit80
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(list_Reverse)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $s3, 0
	move	$s4, $a0
	move	$a0, $a3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(st_ExistUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_26
# %bb.17:                               # %while.body53.preheader
	ori	$s0, $zero, 1
	b	.LBB26_19
	.p2align	4, , 16
.LBB26_18:                              # %if.end80
                                        #   in Loop: Header=BB26_19 Depth=1
	pcaddu18i	$ra, %call36(st_NextCandidate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_26
.LBB26_19:                              # %while.body53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_23 Depth 2
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB26_18
# %bb.20:                               # %if.then56
                                        #   in Loop: Header=BB26_19 Depth=1
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_18
# %bb.21:                               # %while.body62.preheader
                                        #   in Loop: Header=BB26_19 Depth=1
	ld.d	$a2, $s7, 24
	ld.w	$a1, $s8, 0
	ld.w	$a2, $a2, 0
	xor	$a2, $a2, $a1
	sltui	$a2, $a2, 1
	b	.LBB26_23
	.p2align	4, , 16
.LBB26_22:                              # %if.end74
                                        #   in Loop: Header=BB26_23 Depth=2
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB26_18
.LBB26_23:                              # %while.body62
                                        #   Parent Loop BB26_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $a0, 8
	ld.d	$a3, $s5, 24
	ld.w	$a3, $a3, 0
	xor	$a3, $a3, $a1
	sltui	$a3, $a3, 1
	beq	$a2, $a3, .LBB26_22
# %bb.24:                               # %land.lhs.true66
                                        #   in Loop: Header=BB26_23 Depth=2
	ld.d	$a3, $s5, 16
	ld.w	$a4, $a3, 64
	ld.w	$a5, $a3, 68
	ld.w	$a3, $a3, 72
	add.d	$a4, $a5, $a4
	add.w	$a3, $a4, $a3
	bne	$a3, $s0, .LBB26_22
# %bb.25:                               # %if.end80.thread
	pcaddu18i	$ra, %call36(st_CancelExistRetrieval)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 16
	bnez	$a0, .LBB26_27
	b	.LBB26_29
.LBB26_26:
	move	$s5, $zero
	ld.d	$a0, $s4, 16
	beqz	$a0, .LBB26_29
.LBB26_27:                              # %while.body.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB26_28:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB26_28
.LBB26_29:                              # %if.end83
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 256
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 256
	st.d	$s4, $a0, 0
	beqz	$s5, .LBB26_48
.LBB26_30:                              # %if.then86
	ld.w	$a0, $s1, 84
	beqz	$a0, .LBB26_32
# %bb.31:                               # %if.then89
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB26_32:                              # %if.end91
	ld.d	$s4, $s5, 16
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	beqz	$s0, .LBB26_49
.LBB26_33:                              # %if.then100
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB26_34:                              # %if.end102
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(clause_DeleteLiteral)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB26_44
# %bb.35:                               # %if.then105
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 0
	ld.w	$s0, $s4, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	ld.d	$a0, $s3, 32
	beqz	$a0, .LBB26_38
# %bb.36:                               # %while.body.i.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB26_37:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB26_37
.LBB26_38:                              # %list_Delete.exit.i
	ld.d	$a0, $s3, 40
	beqz	$a0, .LBB26_41
# %bb.39:                               # %while.body.i10.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB26_40:                              # %while.body.i10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB26_40
.LBB26_41:                              # %if.end.i20.i
	ld.w	$s0, $s3, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$a0, $s3, 32
	move	$a1, $s2
	.p2align	4, , 16
.LBB26_42:                              # %for.cond.i22.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB26_42
# %bb.43:                               # %red_DocumentUnitConflict.exit
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	st.d	$s5, $a0, 0
	st.d	$s2, $s3, 40
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $a1, 0
	st.w	$a0, $s3, 0
	ori	$a0, $zero, 24
	st.w	$a0, $s3, 76
.LBB26_44:                              # %if.end114
	ld.w	$a0, $s1, 84
	beqz	$a0, .LBB26_46
# %bb.45:                               # %if.then117
	ld.w	$a1, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB26_46:                              # %if.end121
	beq	$s3, $fp, .LBB26_48
# %bb.47:                               # %if.then124
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$s3, $a0, 0
.LBB26_48:                              # %cleanup
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
	ret
.LBB26_49:                              # %lor.lhs.false
	ld.w	$a0, $s4, 12
	bltu	$s6, $a0, .LBB26_33
# %bb.50:                               # %lor.lhs.false
	ld.w	$a1, $fp, 12
	move	$s3, $fp
	bgeu	$a1, $a0, .LBB26_34
	b	.LBB26_33
.Lfunc_end26:
	.size	red_UnitConflict, .Lfunc_end26-red_UnitConflict
                                        # -- End function
	.p2align	5                               # -- Begin function red_ObviousReductions
	.type	red_ObviousReductions,@function
red_ObviousReductions:                  # @red_ObviousReductions
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$s6, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a5, $s6, 68
	add.d	$a6, $a0, $a5
	addi.w	$s7, $a6, -1
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$s2, $s6
	bltz	$s7, .LBB27_21
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s8, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s0, $a0, %got_pc_lo12(fol_EQUALITY)
	move	$s4, $zero
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	bstrpick.d	$a0, $a6, 31, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$fp, $zero, 1
	b	.LBB27_6
.LBB27_2:                               # %land.lhs.true9
                                        #   in Loop: Header=BB27_6 Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_10
.LBB27_3:                               # %for.inc42.sink.split
                                        #   in Loop: Header=BB27_6 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
.LBB27_4:                               # %for.inc42
                                        #   in Loop: Header=BB27_6 Depth=1
	move	$s6, $s2
.LBB27_5:                               # %for.inc42
                                        #   in Loop: Header=BB27_6 Depth=1
	addi.d	$s4, $s4, 1
	addi.w	$fp, $fp, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB27_20
.LBB27_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_13 Depth 2
	ld.d	$a0, $s6, 56
	slli.d	$a1, $s4, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s5, $a0, 24
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s8, 0
	bne	$a1, $a2, .LBB27_8
# %bb.7:                                # %if.then.i
                                        #   in Loop: Header=BB27_6 Depth=1
	ld.d	$a1, $s5, 16
	ld.d	$s5, $a1, 8
	ld.w	$a1, $s5, 0
.LBB27_8:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB27_6 Depth=1
	ld.w	$a2, $s0, 0
	bne	$a1, $a2, .LBB27_10
# %bb.9:                                # %land.lhs.true
                                        #   in Loop: Header=BB27_6 Depth=1
	ld.w	$a0, $a0, 8
	beqz	$a0, .LBB27_2
.LBB27_10:                              # %if.else
                                        #   in Loop: Header=BB27_6 Depth=1
	bgeu	$s4, $s7, .LBB27_4
# %bb.11:                               # %for.body18.lr.ph
                                        #   in Loop: Header=BB27_6 Depth=1
	slli.d	$s1, $fp, 3
	move	$s3, $s4
	move	$s6, $s2
	b	.LBB27_13
	.p2align	4, , 16
.LBB27_12:                              # %for.inc
                                        #   in Loop: Header=BB27_13 Depth=2
	addi.w	$s3, $s3, 1
	addi.d	$s1, $s1, 8
	move	$s6, $s2
	bge	$s3, $s7, .LBB27_5
.LBB27_13:                              # %for.body18
                                        #   Parent Loop BB27_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$s6, $a0, 24
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s8, 0
	bne	$a0, $a1, .LBB27_15
# %bb.14:                               # %if.then.i113
                                        #   in Loop: Header=BB27_13 Depth=2
	ld.d	$a0, $s6, 16
	ld.d	$s6, $a0, 8
.LBB27_15:                              # %clause_LiteralAtom.exit116
                                        #   in Loop: Header=BB27_13 Depth=2
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_3
# %bb.16:                               # %lor.lhs.false
                                        #   in Loop: Header=BB27_13 Depth=2
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s0, 0
	bne	$a0, $a1, .LBB27_12
# %bb.17:                               # %land.lhs.true25
                                        #   in Loop: Header=BB27_13 Depth=2
	ld.w	$a1, $s6, 0
	bne	$a1, $a0, .LBB27_12
# %bb.18:                               # %land.lhs.true28
                                        #   in Loop: Header=BB27_13 Depth=2
	ld.d	$a0, $s6, 16
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_12
# %bb.19:                               # %land.lhs.true33
                                        #   in Loop: Header=BB27_13 Depth=2
	ld.d	$a0, $s5, 16
	ld.d	$a1, $s6, 16
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_12
	b	.LBB27_3
.LBB27_20:                              # %for.end44.loopexit
	ld.w	$a0, $s6, 64
	ld.w	$a5, $s6, 68
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	b	.LBB27_22
.LBB27_21:
	move	$s5, $zero
.LBB27_22:                              # %for.end44
	ld.w	$a1, $s6, 72
	add.w	$a2, $a5, $a0
	add.d	$a3, $a2, $a1
	addi.w	$fp, $a3, -1
	bge	$fp, $a2, .LBB27_24
# %bb.23:
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ori	$a3, $zero, 1
	beq	$a5, $a3, .LBB27_41
	b	.LBB27_58
.LBB27_24:                              # %for.body50.lr.ph
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	add.d	$s0, $a0, $a5
	pcalau12i	$a3, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a3, %got_pc_lo12(fol_NOT)
	pcalau12i	$a3, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s4, $a3, %got_pc_lo12(fol_EQUALITY)
	add.w	$a2, $a2, $a1
	add.d	$s7, $a0, $a5
	addi.w	$a3, $s7, 1
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	b	.LBB27_28
	.p2align	4, , 16
.LBB27_25:                              # %for.inc82.thread
                                        #   in Loop: Header=BB27_28 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$s6, $s2
.LBB27_26:                              #   in Loop: Header=BB27_28 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
.LBB27_27:                              # %for.cond47.loopexit
                                        #   in Loop: Header=BB27_28 Depth=1
	addi.d	$s0, $s0, 1
	addi.w	$a0, $s0, 0
	addi.d	$s7, $s7, 1
	addi.w	$a3, $a3, 1
	beq	$a0, $a2, .LBB27_40
.LBB27_28:                              # %for.body50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_33 Depth 2
	ld.d	$a0, $s6, 56
	slli.d	$a1, $s0, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s5, $a0, 24
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB27_30
# %bb.29:                               # %if.then.i130
                                        #   in Loop: Header=BB27_28 Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$s5, $a0, 8
.LBB27_30:                              # %clause_LiteralAtom.exit133
                                        #   in Loop: Header=BB27_28 Depth=1
	bge	$s0, $fp, .LBB27_27
# %bb.31:                               # %for.body57.lr.ph
                                        #   in Loop: Header=BB27_28 Depth=1
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	slli.d	$s1, $a3, 3
	move	$s8, $s7
	b	.LBB27_33
	.p2align	4, , 16
.LBB27_32:                              # %for.inc82
                                        #   in Loop: Header=BB27_33 Depth=2
	addi.w	$s8, $s8, 1
	addi.d	$s1, $s1, 8
	move	$s6, $s2
	bge	$s8, $fp, .LBB27_26
.LBB27_33:                              # %for.body57
                                        #   Parent Loop BB27_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$s6, $a0, 24
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB27_35
# %bb.34:                               # %if.then.i139
                                        #   in Loop: Header=BB27_33 Depth=2
	ld.d	$a0, $s6, 16
	ld.d	$s6, $a0, 8
.LBB27_35:                              # %clause_LiteralAtom.exit142
                                        #   in Loop: Header=BB27_33 Depth=2
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_25
# %bb.36:                               # %lor.lhs.false62
                                        #   in Loop: Header=BB27_33 Depth=2
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s4, 0
	bne	$a0, $a1, .LBB27_32
# %bb.37:                               # %land.lhs.true65
                                        #   in Loop: Header=BB27_33 Depth=2
	ld.w	$a1, $s6, 0
	bne	$a1, $a0, .LBB27_32
# %bb.38:                               # %land.lhs.true68
                                        #   in Loop: Header=BB27_33 Depth=2
	ld.d	$a0, $s6, 16
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_32
# %bb.39:                               # %land.lhs.true73
                                        #   in Loop: Header=BB27_33 Depth=2
	ld.d	$a0, $s5, 16
	ld.d	$a1, $s6, 16
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_32
	b	.LBB27_25
.LBB27_40:                              # %for.end87.loopexit
	ld.w	$a0, $s6, 64
	ld.w	$a5, $s6, 68
	ld.w	$a1, $s6, 72
	add.d	$a2, $a5, $a0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ori	$a3, $zero, 1
	bne	$a5, $a3, .LBB27_58
.LBB27_41:                              # %for.end87
	add.w	$a1, $a2, $a1
	bne	$a1, $a3, .LBB27_58
# %bb.42:                               # %land.lhs.true95
	beqz	$s5, .LBB27_46
# %bb.43:                               # %while.body.i.preheader
	move	$a1, $s5
	.p2align	4, , 16
.LBB27_44:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 8
	beq	$a2, $a0, .LBB27_58
# %bb.45:                               # %if.end.i
                                        #   in Loop: Header=BB27_44 Depth=1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB27_44
.LBB27_46:                              # %land.lhs.true100
	ld.d	$a1, $s6, 56
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a2, $a0, 24
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a1, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$a0, $a2, 0
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB27_48
# %bb.47:                               # %if.then.i.i
	ld.d	$a0, $a2, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
.LBB27_48:                              # %clause_GetLiteralAtom.exit
	pcalau12i	$a2, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a2, $a2, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a2, $a2, 0
	bne	$a0, $a2, .LBB27_58
# %bb.49:                               # %if.then105
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	pcalau12i	$a2, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$s0, $a2, %got_pc_lo12(cont_STACKPOINTER)
	ld.d	$fp, $a0, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a0, $s0, 0
	ld.w	$a2, $fp, 0
	pcalau12i	$a3, %got_pc_hi20(cont_STACK)
	ld.d	$s3, $a3, %got_pc_lo12(cont_STACK)
	addi.d	$a3, $a0, 1
	st.w	$a3, $s0, 0
	slli.d	$a0, $a0, 2
	stx.w	$a2, $s3, $a0
	st.w	$zero, $fp, 0
	ld.w	$a0, $s6, 64
	ld.d	$a2, $s6, 56
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	pcalau12i	$a3, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a2, $a0, 24
	ld.d	$a0, $a3, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.w	$a3, $a2, 0
	ld.d	$a0, $a0, 0
	bne	$a3, $a1, .LBB27_51
# %bb.50:                               # %if.then.i171
	ld.d	$a1, $a2, 16
	ld.d	$a2, $a1, 8
.LBB27_51:                              # %clause_LiteralAtom.exit174
	ld.d	$a1, $a2, 16
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a2, 8
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_53
# %bb.52:                               # %if.then117
	ld.w	$s1, $s6, 64
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s5, $a0, 0
	move	$s5, $a0
.LBB27_53:                              # %if.end121
	ld.w	$a3, $fp, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB27_56
# %bb.54:                               # %while.body.i182.preheader
	pcalau12i	$a1, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a1, $a1, %got_pc_lo12(cont_LASTBINDING)
	pcalau12i	$a2, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a2, $a2, %got_pc_lo12(cont_CURRENTBINDING)
	addi.d	$a3, $a3, 1
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB27_55:                              # %while.body.i182
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a2, 0
	ld.d	$a5, $a4, 24
	st.d	$a5, $a1, 0
	st.w	$zero, $a4, 20
	vst	$vr0, $a4, 4
	ld.d	$a4, $a2, 0
	st.d	$zero, $a4, 24
	addi.d	$a4, $a3, -2
	addi.w	$a3, $a3, -1
	st.w	$a4, $fp, 0
	bltu	$a0, $a3, .LBB27_55
.LBB27_56:                              # %while.end.i
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB27_58
# %bb.57:                               # %if.then.i178
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s3, $a1
	st.w	$a0, $s0, 0
	st.w	$a1, $fp, 0
.LBB27_58:                              # %if.end123
	beqz	$s5, .LBB27_71
# %bb.59:                               # %if.then126
	ld.w	$a0, $s4, 68
	beqz	$a0, .LBB27_61
# %bb.60:                               # %if.then129
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB27_61:                              # %if.end132
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB27_72
# %bb.62:                               # %if.then134
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s0, $s5
	move	$a1, $s5
	move	$a2, $s4
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_DeleteLiterals)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 32
	beqz	$a0, .LBB27_65
# %bb.63:                               # %while.body.i.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB27_64:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB27_64
.LBB27_65:                              # %list_Delete.exit.i
	ld.d	$a0, $s2, 40
	beqz	$a0, .LBB27_68
# %bb.66:                               # %while.body.i11.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB27_67:                              # %while.body.i11.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB27_67
.LBB27_68:                              # %red_DocumentObviousReductions.exit
	ld.w	$fp, $s2, 0
	st.d	$zero, $s2, 32
	st.d	$s0, $s2, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $s2, 32
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $a1, 0
	st.w	$a0, $s2, 0
	ori	$a0, $zero, 19
	st.w	$a0, $s2, 76
	ld.w	$a0, $s4, 68
	beqz	$a0, .LBB27_70
# %bb.69:                               # %if.then138
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB27_70:                              # %if.end139
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$s2, $a0, 0
.LBB27_71:                              # %cleanup
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB27_72:                              # %if.else140
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_DeleteLiterals)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB27_73:                              # %while.body.i192
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s5, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s5, 0
	ld.d	$a2, $a0, 128
	st.d	$s5, $a2, 0
	move	$s5, $a5
	bnez	$a5, .LBB27_73
# %bb.74:                               # %list_Delete.exit
	ld.w	$a0, $s4, 68
	beqz	$a0, .LBB27_71
# %bb.75:                               # %if.then143
	move	$a0, $s6
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	pcaddu18i	$t8, %call36(clause_Print)
	jr	$t8
.Lfunc_end27:
	.size	red_ObviousReductions, .Lfunc_end27-red_ObviousReductions
                                        # -- End function
	.p2align	5                               # -- Begin function red_Condensing
	.type	red_Condensing,@function
red_Condensing:                         # @red_Condensing
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a4
	move	$s3, $a3
	move	$fp, $a2
	move	$s4, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(cond_CondFast)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_13
# %bb.1:                                # %if.then
	move	$s1, $a0
	ld.w	$a0, $fp, 60
	beqz	$a0, .LBB28_3
# %bb.2:                                # %if.then4
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s5, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB28_3:                               # %if.end
	beqz	$s4, .LBB28_14
# %bb.4:                                # %if.then8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s3
	pcaddu18i	$ra, %call36(clause_DeleteLiterals)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 32
	beqz	$a0, .LBB28_7
# %bb.5:                                # %while.body.i.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB28_6:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB28_6
.LBB28_7:                               # %list_Delete.exit.i
	ld.d	$a0, $s2, 40
	beqz	$a0, .LBB28_10
# %bb.8:                                # %while.body.i11.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB28_9:                               # %while.body.i11.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB28_9
.LBB28_10:                              # %red_DocumentCondensing.exit
	ld.w	$s3, $s2, 0
	st.d	$zero, $s2, 32
	st.d	$s1, $s2, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $s2, 32
	ld.w	$a0, $a1, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $a1, 0
	st.w	$a0, $s2, 0
	ori	$a0, $zero, 17
	st.w	$a0, $s2, 76
	ld.w	$a0, $fp, 60
	beqz	$a0, .LBB28_12
# %bb.11:                               # %if.then12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
.LBB28_12:                              # %if.end13
	st.d	$s2, $s0, 0
.LBB28_13:                              # %cleanup
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB28_14:                              # %if.else
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s3
	pcaddu18i	$ra, %call36(clause_DeleteLiterals)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB28_15:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a2, $a0, 128
	st.d	$s1, $a2, 0
	move	$s1, $a5
	bnez	$a5, .LBB28_15
# %bb.16:                               # %list_Delete.exit
	ld.w	$a0, $fp, 60
	beqz	$a0, .LBB28_13
# %bb.17:                               # %if.then16
	move	$a0, $s2
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(clause_Print)
	jr	$t8
.Lfunc_end28:
	.size	red_Condensing, .Lfunc_end28-red_Condensing
                                        # -- End function
	.p2align	5                               # -- Begin function clause_UpdateSplitDataFromPartner
	.type	clause_UpdateSplitDataFromPartner,@function
clause_UpdateSplitDataFromPartner:      # @clause_UpdateSplitDataFromPartner
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.bu	$a1, $a1, 48
	andi	$a1, $a1, 8
	move	$s0, $a0
	beqz	$a1, .LBB29_2
# %bb.1:                                # %if.then
	ld.w	$a0, $s0, 48
	ori	$a0, $a0, 8
	st.w	$a0, $s0, 48
.LBB29_2:                               # %if.end
	ld.w	$a0, $fp, 12
	beqz	$a0, .LBB29_23
# %bb.3:                                # %if.end3
	ld.w	$a1, $s0, 12
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $s0, 12
	ld.w	$a0, $s0, 24
	ld.w	$s2, $fp, 24
	bgeu	$a0, $s2, .LBB29_20
# %bb.4:                                # %if.then.i.i
	slli.w	$a0, $s2, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 24
	move	$s1, $a0
	beqz	$a1, .LBB29_12
# %bb.5:                                # %for.body.lr.ph.i.i
	move	$a0, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB29_6:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 16
	ldx.d	$a1, $a1, $a0
	stx.d	$a1, $s1, $a0
	ld.wu	$a1, $s0, 24
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 8
	bltu	$a2, $a1, .LBB29_6
# %bb.7:                                # %for.cond8.preheader.i.i
	addi.w	$a0, $a1, 0
	bgeu	$a0, $s2, .LBB29_9
.LBB29_8:                               # %for.body11.preheader.i.i
	alsl.d	$a0, $a1, $s1, 3
	sub.d	$a1, $a1, $s2
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_9:                               # %for.end16.i.i
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB29_19
# %bb.10:                               # %if.then20.i.i
	ld.w	$a1, $s0, 24
	slli.w	$a1, $a1, 3
	ori	$a2, $zero, 1024
	bgeu	$a1, $a2, .LBB29_13
# %bb.11:                               # %if.else25.i.i.i
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a2, $a1
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a5, $a3, 32
	ld.d	$a6, $a4, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a4, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $a1, 0
	b	.LBB29_19
.LBB29_12:
	move	$a1, $zero
	addi.w	$a0, $a1, 0
	bltu	$a0, $s2, .LBB29_8
	b	.LBB29_9
.LBB29_13:                              # %if.then.i.i.i
	pcalau12i	$a2, %got_pc_hi20(memory_ALIGN)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ALIGN)
	pcalau12i	$a3, %got_pc_hi20(memory_OFFSET)
	ld.d	$a3, $a3, %got_pc_lo12(memory_OFFSET)
	ld.w	$a5, $a2, 0
	ld.wu	$a2, $a3, 0
	mod.wu	$a6, $a1, $a5
	sltui	$a7, $a6, 1
	sub.d	$a2, $a0, $a2
	ld.d	$a4, $a2, -16
	ld.d	$a3, $a2, -8
	sub.d	$a5, $a5, $a6
	masknez	$a5, $a5, $a7
	add.w	$a1, $a5, $a1
	beqz	$a4, .LBB29_24
# %bb.14:                               # %if.then3.i.i.i
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB29_16
.LBB29_15:                              # %if.then9.i.i.i
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB29_16:                              # %if.end13.i.i.i
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a2, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	add.d	$a3, $a1, $a3
	ld.d	$a5, $a4, 0
	ld.d	$a1, $a2, 0
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a3, $a3, 16
	add.d	$a5, $a3, $a5
	st.d	$a5, $a4, 0
	bltz	$a1, .LBB29_18
# %bb.17:                               # %if.then18.i.i.i
	add.d	$a1, $a1, $a3
	st.d	$a1, $a2, 0
.LBB29_18:                              # %if.end23.i.i.i
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB29_19:                              # %clause_ExpandSplitField.exit.i
	st.d	$s1, $s0, 16
	st.w	$s2, $s0, 24
	ld.w	$s2, $fp, 24
.LBB29_20:                              # %if.end.i
	beqz	$s2, .LBB29_23
# %bb.21:                               # %for.body.lr.ph.i
	move	$a0, $zero
	move	$a1, $zero
	.p2align	4, , 16
.LBB29_22:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s0, 16
	ld.d	$a3, $fp, 16
	ldx.d	$a4, $a2, $a0
	ldx.d	$a3, $a3, $a0
	or	$a3, $a3, $a4
	stx.d	$a3, $a2, $a0
	ld.wu	$a2, $fp, 24
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 8
	bltu	$a1, $a2, .LBB29_22
.LBB29_23:                              # %return
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB29_24:                              # %if.else.i.i.i
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB29_15
	b	.LBB29_16
.Lfunc_end29:
	.size	clause_UpdateSplitDataFromPartner, .Lfunc_end29-clause_UpdateSplitDataFromPartner
                                        # -- End function
	.p2align	5                               # -- Begin function red_CRwTautologyCheck
	.type	red_CRwTautologyCheck,@function
red_CRwTautologyCheck:                  # @red_CRwTautologyCheck
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s6, $a0, 112
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s2, $a0, 104
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	move	$s0, $a5
	move	$a0, $a4
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	move	$fp, $a1
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	st.d	$zero, $a7, 0
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a1, $fp, 52
	move	$s7, $a0
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 56
	slli.d	$fp, $s0, 3
	ldx.d	$a0, $a0, $fp
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s3, 0
	bne	$a1, $a2, .LBB30_2
# %bb.1:                                # %if.then.i.i
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB30_2:                               # %clause_GetLiteralAtom.exit
	ld.d	$a1, $a0, 16
	ld.d	$a0, $s7, 32
	ld.d	$a1, $a1, 8
	beqz	$a0, .LBB30_5
# %bb.3:                                # %while.body.i.preheader
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB30_4:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 128
	ld.w	$a5, $a4, 32
	ld.d	$a6, $a3, 0
	ld.d	$a7, $a0, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a2, 128
	st.d	$a0, $a4, 0
	move	$a0, $a7
	bnez	$a7, .LBB30_4
.LBB30_5:                               # %list_Delete.exit
	ld.d	$a0, $s7, 40
	st.d	$zero, $s7, 32
	beqz	$a0, .LBB30_8
# %bb.6:                                # %while.body.i77.preheader
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB30_7:                               # %while.body.i77
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 128
	ld.w	$a5, $a4, 32
	ld.d	$a6, $a3, 0
	ld.d	$a7, $a0, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a2, 128
	st.d	$a0, $a4, 0
	move	$a0, $a7
	bnez	$a7, .LBB30_7
.LBB30_8:                               # %list_Delete.exit84
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$s4, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a5, $a0, %got_pc_lo12(cont_STACKPOINTER)
	st.d	$zero, $s7, 40
	ori	$a0, $zero, 27
	ld.w	$a2, $s4, 0
	ld.w	$a3, $a5, 0
	pcalau12i	$a4, %got_pc_hi20(cont_STACK)
	ld.d	$a6, $a4, %got_pc_lo12(cont_STACK)
	pcalau12i	$a4, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s1, $a4, %got_pc_lo12(cont_LEFTCONTEXT)
	st.w	$a0, $s7, 76
	slli.d	$a0, $a3, 2
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	stx.w	$a2, $a6, $a0
	ld.d	$a0, $s1, 0
	addi.d	$a2, $a3, 1
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	st.w	$a2, $a5, 0
	st.w	$zero, $s4, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_MatchBindings)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $a0, 24
	ld.w	$a2, $a1, 0
	ld.w	$a3, $s3, 0
	st.d	$s1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $s1, 0
	bne	$a2, $a3, .LBB30_10
# %bb.9:                                # %if.then.i.i93
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 8
.LBB30_10:                              # %clause_GetLiteralAtom.exit96
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(cont_ApplyBindingsModuloMatching)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 64
	ld.w	$a1, $a1, 68
	add.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB30_15
# %bb.11:                               # %land.lhs.true
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a0, $a1
	ld.d	$a0, $a1, 24
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s3, 0
	bne	$a2, $a3, .LBB30_13
# %bb.12:                               # %if.then.i.i100
	ld.d	$a2, $a0, 16
	ld.d	$a2, $a2, 8
	ld.w	$a2, $a2, 0
.LBB30_13:                              # %clause_LiteralIsEquality.exit
	pcalau12i	$a3, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a3, $a3, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a3, $a3, 0
	bne	$a2, $a3, .LBB30_15
# %bb.14:                               # %land.lhs.true19
	ld.d	$a2, $s7, 56
	ldx.d	$a2, $a2, $fp
	ld.w	$a1, $a1, 8
	ld.d	$a2, $a2, 24
	ori	$a3, $zero, 1
	ori	$fp, $zero, 1
	move	$a4, $zero
	move	$a5, $s6
	move	$a6, $s2
	pcaddu18i	$ra, %call36(ord_LiteralCompare)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB30_160
.LBB30_15:                              # %if.end28
	ld.w	$a1, $s7, 64
	ld.w	$a2, $s7, 68
	ld.w	$a0, $s7, 72
	add.w	$a1, $a2, $a1
	add.d	$a2, $a1, $a0
	addi.w	$a2, $a2, -1
	bltz	$a2, .LBB30_22
# %bb.16:                               # %for.body.preheader
	move	$fp, $zero
	bstrpick.d	$s1, $s0, 31, 0
	add.d	$a0, $a1, $a0
	bstrpick.d	$s2, $a0, 31, 0
	b	.LBB30_19
	.p2align	4, , 16
.LBB30_17:                              # %clause_GetLiteralAtom.exit124
                                        #   in Loop: Header=BB30_19 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cont_ApplyBindingsModuloMatching)
	jirl	$ra, $ra, 0
.LBB30_18:                              # %for.inc
                                        #   in Loop: Header=BB30_19 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, 8
	beqz	$s2, .LBB30_22
.LBB30_19:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s1, .LBB30_18
# %bb.20:                               # %if.then33
                                        #   in Loop: Header=BB30_19 Depth=1
	ld.d	$a0, $s7, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s3, 0
	bne	$a0, $a2, .LBB30_17
# %bb.21:                               # %if.then.i.i121
                                        #   in Loop: Header=BB30_19 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	b	.LBB30_17
.LBB30_22:                              # %for.end
	ld.w	$a3, $s4, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB30_25
# %bb.23:                               # %while.body.i133.preheader
	pcalau12i	$a1, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a1, $a1, %got_pc_lo12(cont_LASTBINDING)
	pcalau12i	$a2, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a2, $a2, %got_pc_lo12(cont_CURRENTBINDING)
	addi.d	$a3, $a3, 1
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB30_24:                              # %while.body.i133
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a2, 0
	ld.d	$a5, $a4, 24
	st.d	$a5, $a1, 0
	st.w	$zero, $a4, 20
	vst	$vr0, $a4, 4
	ld.d	$a4, $a2, 0
	st.d	$zero, $a4, 24
	addi.d	$a4, $a3, -2
	addi.w	$a3, $a3, -1
	st.w	$a4, $s4, 0
	bltu	$a0, $a3, .LBB30_24
.LBB30_25:                              # %while.end.i127
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 0
	beqz	$a0, .LBB30_27
# %bb.26:                               # %if.then.i129
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a1, $a3, $a1
	st.w	$a0, $a2, 0
	st.w	$a1, $s4, 0
.LBB30_27:                              # %cont_BackTrack.exit139
	ori	$a0, $zero, 384
	ori	$fp, $zero, 384
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(flag_CLEAN)
	ld.d	$a1, $a1, %got_pc_lo12(flag_CLEAN)
	ld.w	$a1, $a1, 0
	move	$s1, $a0
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 8
	st.w	$a1, $a0, 12
	st.w	$a1, $a0, 16
	st.w	$a1, $a0, 20
	st.w	$a1, $a0, 24
	st.w	$a1, $a0, 28
	st.w	$a1, $a0, 32
	st.w	$a1, $a0, 36
	st.w	$a1, $a0, 40
	st.w	$a1, $a0, 44
	st.w	$a1, $a0, 48
	st.w	$a1, $a0, 52
	st.w	$a1, $a0, 56
	st.w	$a1, $a0, 60
	st.w	$a1, $a0, 64
	st.w	$a1, $a0, 68
	st.w	$a1, $a0, 72
	st.w	$a1, $a0, 76
	st.w	$a1, $a0, 80
	st.w	$a1, $a0, 84
	st.w	$a1, $a0, 88
	st.w	$a1, $a0, 92
	st.w	$a1, $a0, 96
	st.w	$a1, $a0, 100
	st.w	$a1, $a0, 104
	st.w	$a1, $a0, 108
	st.w	$a1, $a0, 112
	st.w	$a1, $a0, 116
	st.w	$a1, $a0, 120
	st.w	$a1, $a0, 124
	st.w	$a1, $a0, 128
	st.w	$a1, $a0, 132
	st.w	$a1, $a0, 136
	st.w	$a1, $a0, 140
	st.w	$a1, $a0, 144
	st.w	$a1, $a0, 148
	st.w	$a1, $a0, 152
	st.w	$a1, $a0, 156
	st.w	$a1, $a0, 160
	st.w	$a1, $a0, 164
	st.w	$a1, $a0, 168
	st.w	$a1, $a0, 172
	st.w	$a1, $a0, 176
	st.w	$a1, $a0, 180
	st.w	$a1, $a0, 184
	st.w	$a1, $a0, 188
	st.w	$a1, $a0, 192
	st.w	$a1, $a0, 196
	st.w	$a1, $a0, 200
	st.w	$a1, $a0, 204
	st.w	$a1, $a0, 208
	st.w	$a1, $a0, 212
	st.w	$a1, $a0, 216
	st.w	$a1, $a0, 220
	st.w	$a1, $a0, 224
	st.w	$a1, $a0, 228
	st.w	$a1, $a0, 232
	st.w	$a1, $a0, 236
	st.w	$a1, $a0, 240
	st.w	$a1, $a0, 244
	st.w	$a1, $a0, 248
	st.w	$a1, $a0, 252
	st.w	$a1, $a0, 256
	st.w	$a1, $a0, 260
	st.w	$a1, $a0, 264
	st.w	$a1, $a0, 268
	st.w	$a1, $a0, 272
	st.w	$a1, $a0, 276
	st.w	$a1, $a0, 280
	st.w	$a1, $a0, 284
	st.w	$a1, $a0, 288
	st.w	$a1, $a0, 292
	st.w	$a1, $a0, 296
	st.w	$a1, $a0, 300
	st.w	$a1, $a0, 304
	st.w	$a1, $a0, 308
	st.w	$a1, $a0, 312
	st.w	$a1, $a0, 316
	st.w	$a1, $a0, 320
	st.w	$a1, $a0, 324
	st.w	$a1, $a0, 328
	st.w	$a1, $a0, 332
	st.w	$a1, $a0, 336
	st.w	$a1, $a0, 340
	st.w	$a1, $a0, 344
	st.w	$a1, $a0, 348
	st.w	$a1, $a0, 352
	st.w	$a1, $a0, 356
	st.w	$a1, $a0, 360
	st.w	$a1, $a0, 364
	st.w	$a1, $a0, 368
	st.w	$a1, $a0, 372
	st.w	$a1, $a0, 376
	sub.d	$a0, $a0, $s6
	ori	$a2, $zero, 63
	st.w	$a1, $s1, 380
	bltu	$a2, $a0, .LBB30_30
# %bb.28:                               # %for.body.i.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB30_29:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s6, $a0
	stx.w	$a1, $s1, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $fp, .LBB30_29
	b	.LBB30_31
.LBB30_30:                              # %vector.body
	xvld	$xr0, $s6, 0
	xvld	$xr1, $s6, 32
	xvst	$xr0, $s1, 0
	xvst	$xr1, $s1, 32
	xvld	$xr0, $s6, 64
	xvld	$xr1, $s6, 96
	xvst	$xr0, $s1, 64
	xvst	$xr1, $s1, 96
	xvld	$xr0, $s6, 128
	xvld	$xr1, $s6, 160
	xvst	$xr0, $s1, 128
	xvst	$xr1, $s1, 160
	xvld	$xr0, $s6, 192
	xvld	$xr1, $s6, 224
	xvst	$xr0, $s1, 192
	xvst	$xr1, $s1, 224
	xvld	$xr0, $s6, 256
	xvld	$xr1, $s6, 288
	xvst	$xr0, $s1, 256
	xvst	$xr1, $s1, 288
	xvld	$xr0, $s6, 320
	xvld	$xr1, $s6, 352
	xvst	$xr0, $s1, 320
	xvst	$xr1, $s1, 352
.LBB30_31:                              # %flag_TransferAllFlags.exit
	move	$a0, $s6
	pcaddu18i	$ra, %call36(flag_ClearPrinting)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 82
	move	$a0, $s6
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 81
	move	$a0, $s6
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 64
	ld.w	$a1, $s7, 68
	pcalau12i	$a2, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a3, $a2, %got_pc_lo12(clause_CLAUSECOUNTER)
	ld.w	$a2, $s7, 72
	add.d	$a0, $a0, $a1
	ld.w	$a4, $a3, 0
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB30_156
# %bb.32:                               # %for.body46.lr.ph
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	move	$a2, $zero
	bstrpick.d	$s0, $s0, 31, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$s5, $a0, 31, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s1, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$fp, $a0, %got_pc_lo12(memory_FREEDBYTES)
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 232                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	b	.LBB30_37
.LBB30_33:                              #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $a1
.LBB30_34:                              # %list_Nconc.exit163
                                        #   in Loop: Header=BB30_37 Depth=1
	addi.d	$a1, $s3, 32
	st.d	$a0, $s7, 40
	vst	$vr0, $a1, 0
.LBB30_35:                              # %if.end63
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
.LBB30_36:                              # %for.inc66
                                        #   in Loop: Header=BB30_37 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s5, .LBB30_152
.LBB30_37:                              # %for.body46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_42 Depth 2
                                        #     Child Loop BB30_47 Depth 2
                                        #     Child Loop BB30_49 Depth 2
                                        #     Child Loop BB30_59 Depth 2
                                        #     Child Loop BB30_61 Depth 2
                                        #     Child Loop BB30_64 Depth 2
                                        #       Child Loop BB30_67 Depth 3
                                        #         Child Loop BB30_81 Depth 4
                                        #         Child Loop BB30_97 Depth 4
                                        #     Child Loop BB30_104 Depth 2
                                        #     Child Loop BB30_119 Depth 2
                                        #       Child Loop BB30_122 Depth 3
                                        #     Child Loop BB30_129 Depth 2
                                        #     Child Loop BB30_132 Depth 2
                                        #     Child Loop BB30_134 Depth 2
                                        #     Child Loop BB30_143 Depth 2
                                        #     Child Loop BB30_149 Depth 2
	beq	$a2, $s0, .LBB30_36
# %bb.38:                               # %if.then48
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$a0, $s7, 56
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s0, $a0, 24
	move	$a0, $s3
	ld.w	$s3, $s0, 0
	ld.w	$s5, $a0, 0
	bne	$s3, $s5, .LBB30_40
# %bb.39:                               # %if.then.i253
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$a0, $s0, 16
	ld.d	$s0, $a0, 8
.LBB30_40:                              # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 112
	ld.d	$a0, $a0, 104
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.w	$a0, $s7, 64
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.w	$s8, $a1, 36
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	bge	$a2, $a0, .LBB30_52
# %bb.41:                               # %if.then.i148
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Create)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 27
	st.w	$a0, $s2, 76
	.p2align	4, , 16
.LBB30_42:                              # %while.body.i237
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $fp, 0
	ld.d	$a3, $s4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s1, 128
	st.d	$s4, $a0, 0
	move	$s4, $a3
	bnez	$a3, .LBB30_42
# %bb.43:                               # %list_Delete.exit245
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.w	$s4, $s2, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 80
	st.d	$zero, $sp, 296
	addi.d	$a6, $sp, 296
	move	$a1, $s2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $s8
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(red_SortSimplification)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_51
# %bb.44:                               # %if.then15.i
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$s3, $sp, 296
	beqz	$s8, .LBB30_137
# %bb.45:                               # %if.then17.i
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$a0, $s3, 32
	st.d	$zero, $s3, 32
	move	$a1, $s4
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 32
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB30_48
# %bb.46:                               # %for.body29.i.preheader
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB30_47:                              # %for.body29.i
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$zero, $a1, 8
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB30_47
.LBB30_48:                              # %for.end32.i
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$a1, $s3, 40
	beqz	$a1, .LBB30_50
	.p2align	4, , 16
.LBB30_49:                              # %while.body.i.i229
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s1, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $fp, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $fp, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s1, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB30_49
.LBB30_50:                              # %if.end.i.thread
                                        #   in Loop: Header=BB30_37 Depth=1
	st.d	$a0, $s3, 40
	b	.LBB30_138
.LBB30_51:                              # %if.end21.i
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
.LBB30_52:                              # %if.end22.i
                                        #   in Loop: Header=BB30_37 Depth=1
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	bne	$s3, $s5, .LBB30_55
# %bb.53:                               # %if.then24.i
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.w	$a0, $s7, 64
	bge	$a2, $a0, .LBB30_56
# %bb.54:                               # %if.then27.i
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_CopyConstraint)
	jirl	$ra, $ra, 0
	b	.LBB30_57
.LBB30_55:                              # %if.else34.i
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_CopySuccedentExcept)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	b	.LBB30_58
.LBB30_56:                              # %if.else29.i
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_CopyAntecedentExcept)
	jirl	$ra, $ra, 0
.LBB30_57:                              # %if.end31.i
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$s2, $a0
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
.LBB30_58:                              # %if.end38.i
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $zero
	move	$a1, $s2
	move	$a2, $s0
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304
	ori	$a1, $zero, 27
	st.w	$a1, $a0, 76
	beqz	$s2, .LBB30_60
	.p2align	4, , 16
.LBB30_59:                              # %while.body.i210
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $fp, 0
	ld.d	$a3, $s2, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s1, 128
	st.d	$s2, $a0, 0
	move	$s2, $a3
	bnez	$a3, .LBB30_59
.LBB30_60:                              # %list_Delete.exit218
                                        #   in Loop: Header=BB30_37 Depth=1
	beqz	$s0, .LBB30_62
	.p2align	4, , 16
.LBB30_61:                              # %while.body.i200
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $fp, 0
	ld.d	$a3, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s1, 128
	st.d	$s0, $a0, 0
	move	$s0, $a3
	bnez	$a3, .LBB30_61
.LBB30_62:                              # %list_Delete.exit208
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$s4, $sp, 304
	ld.w	$s0, $s4, 64
	ld.w	$a0, $s4, 68
	add.w	$a4, $a0, $s0
	addi.w	$a0, $a4, -1
	blt	$a0, $s0, .LBB30_107
# %bb.63:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a2, $zero
	ori	$a3, $zero, 1
	st.d	$s4, $sp, 208                   # 8-byte Folded Spill
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
.LBB30_64:                              # %for.body.i179.outer
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB30_67 Depth 3
                                        #         Child Loop BB30_81 Depth 4
                                        #         Child Loop BB30_97 Depth 4
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	b	.LBB30_67
.LBB30_65:                              # %cont_BackTrack.exit.i
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	bnez	$s2, .LBB30_100
	.p2align	4, , 16
.LBB30_66:                              # %for.inc61.i
                                        #   in Loop: Header=BB30_67 Depth=3
	addi.d	$s0, $s0, 1
	addi.w	$a0, $s0, 0
	beq	$a4, $a0, .LBB30_102
.LBB30_67:                              # %for.body.i179
                                        #   Parent Loop BB30_37 Depth=1
                                        #     Parent Loop BB30_64 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB30_81 Depth 4
                                        #         Child Loop BB30_97 Depth 4
	ld.d	$a0, $s4, 56
	slli.d	$a1, $s0, 3
	ldx.d	$s2, $a0, $a1
	ld.d	$a0, $s2, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s3, 0
	bne	$a1, $a2, .LBB30_69
# %bb.68:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB30_69:                              # %clause_LiteralAtom.exit.i.i
                                        #   in Loop: Header=BB30_67 Depth=3
	pcalau12i	$a2, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s5, $a2, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a2, $s5, 0
	bne	$a1, $a2, .LBB30_66
# %bb.70:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.w	$a1, $s2, 8
	bnez	$a1, .LBB30_66
# %bb.71:                               # %land.lhs.true4.i.i
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a0, 0
	ld.d	$a1, $a1, 8
	bgtz	$a2, .LBB30_73
# %bb.72:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.w	$a2, $a1, 0
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB30_66
.LBB30_73:                              # %land.lhs.true11.i.i
                                        #   in Loop: Header=BB30_67 Depth=3
	pcaddu18i	$ra, %call36(term_VariableEqual)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	vld	$vr0, $sp, 240                  # 16-byte Folded Reload
	bnez	$a0, .LBB30_66
# %bb.74:                               # %if.then.i183
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.d	$a1, $s2, 24
	ld.d	$a0, $a1, 16
	ld.w	$a1, $a1, 0
	ld.w	$a2, $s3, 0
	ld.d	$a5, $a0, 8
	bne	$a1, $a2, .LBB30_76
# %bb.75:                               # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.d	$a0, $a5, 16
	ld.d	$a5, $a0, 8
.LBB30_76:                              # %clause_LiteralAtom.exit.thread.i
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.w	$a6, $a5, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$a6, $a1, .LBB30_78
# %bb.77:                               # %clause_LiteralAtom.exit59.i
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.d	$a0, $a0, 0
	ld.d	$a5, $a0, 8
	b	.LBB30_79
.LBB30_78:                              # %clause_LiteralAtom.exit66.i
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a6, $a0, 0
.LBB30_79:                              # %if.end.i187
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.w	$a0, $a3, 0
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a4, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a3, $a2, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	stx.w	$a1, $a2, $a0
	st.w	$zero, $a4, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $a3, 0
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a2, $a6, 5
	pcalau12i	$a3, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$s3, $a3, %got_pc_lo12(cont_CURRENTBINDING)
	add.d	$a0, $a0, $a2
	pcalau12i	$a2, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$s7, $a2, %got_pc_lo12(cont_LASTBINDING)
	st.d	$a0, $s3, 0
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $a0, 8
	ld.d	$a0, $s3, 0
	ld.d	$a2, $s7, 0
	ld.w	$a3, $a4, 0
	st.d	$a1, $a0, 16
	st.d	$a2, $a0, 24
	st.d	$a0, $s7, 0
	addi.w	$a0, $a3, 1
	st.w	$a0, $a4, 0
	ld.w	$a1, $s4, 64
	ld.w	$a2, $s4, 68
	ld.w	$a3, $s4, 72
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.w	$a1, $a1, -1
	bltz	$a1, .LBB30_92
# %bb.80:                               # %for.body24.preheader.i
                                        #   in Loop: Header=BB30_67 Depth=3
	move	$s6, $zero
	bstrpick.d	$a2, $s0, 31, 0
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB30_81:                              # %for.body24.i
                                        #   Parent Loop BB30_37 Depth=1
                                        #     Parent Loop BB30_64 Depth=2
                                        #       Parent Loop BB30_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ori	$s2, $zero, 1
	beq	$s6, $a2, .LBB30_90
# %bb.82:                               # %if.then26.i
                                        #   in Loop: Header=BB30_81 Depth=4
	ld.d	$a0, $s4, 56
	slli.d	$a1, $s6, 3
	ldx.d	$s8, $a0, $a1
	ld.d	$s4, $s8, 24
	ld.w	$a1, $s4, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bne	$a1, $a0, .LBB30_84
# %bb.83:                               # %if.then.i74.i
                                        #   in Loop: Header=BB30_81 Depth=4
	ld.d	$a0, $s4, 16
	ld.d	$s4, $a0, 8
	ld.w	$a1, $s4, 0
.LBB30_84:                              # %clause_LiteralAtom.exit77.i
                                        #   in Loop: Header=BB30_81 Depth=4
	ld.w	$a3, $s5, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	bne	$a1, $a3, .LBB30_88
# %bb.85:                               # %if.then31.i
                                        #   in Loop: Header=BB30_81 Depth=4
	ld.d	$a1, $s4, 16
	ld.d	$a3, $a1, 8
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_ContGreater)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_93
# %bb.86:                               # %land.lhs.true.i197
                                        #   in Loop: Header=BB30_81 Depth=4
	ld.w	$a0, $s8, 8
	bnez	$a0, .LBB30_89
# %bb.87:                               # %lor.lhs.false.i198
                                        #   in Loop: Header=BB30_81 Depth=4
	ld.d	$a0, $s4, 16
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 8
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_ContGreater)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 240                  # 16-byte Folded Reload
	ld.d	$s4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	bnez	$a0, .LBB30_90
	b	.LBB30_94
	.p2align	4, , 16
.LBB30_88:                              # %if.else46.i
                                        #   in Loop: Header=BB30_81 Depth=4
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_ContGreater)
	jirl	$ra, $ra, 0
	sltu	$s2, $zero, $a0
.LBB30_89:                              # %for.inc.i
                                        #   in Loop: Header=BB30_81 Depth=4
	vld	$vr0, $sp, 240                  # 16-byte Folded Reload
	ld.d	$s4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
.LBB30_90:                              # %for.inc.i
                                        #   in Loop: Header=BB30_81 Depth=4
	bgeu	$s6, $a1, .LBB30_95
# %bb.91:                               # %for.inc.i
                                        #   in Loop: Header=BB30_81 Depth=4
	addi.d	$s6, $s6, 1
	bnez	$s2, .LBB30_81
	b	.LBB30_95
.LBB30_92:                              #   in Loop: Header=BB30_67 Depth=3
	ori	$s2, $zero, 1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ori	$a4, $zero, 1
	bge	$a0, $a4, .LBB30_96
	b	.LBB30_98
.LBB30_93:                              #   in Loop: Header=BB30_67 Depth=3
	move	$s2, $zero
	vld	$vr0, $sp, 240                  # 16-byte Folded Reload
	ld.d	$s4, $sp, 208                   # 8-byte Folded Reload
	b	.LBB30_95
.LBB30_94:                              #   in Loop: Header=BB30_67 Depth=3
	move	$s2, $zero
.LBB30_95:                              # %for.end.loopexit.i
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB30_98
.LBB30_96:                              # %while.body.i.i.preheader
                                        #   in Loop: Header=BB30_67 Depth=3
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB30_97:                              # %while.body.i.i
                                        #   Parent Loop BB30_37 Depth=1
                                        #     Parent Loop BB30_64 Depth=2
                                        #       Parent Loop BB30_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s7, 0
	st.d	$a1, $s3, 0
	ld.d	$a2, $a1, 24
	st.d	$a2, $s7, 0
	st.w	$zero, $a1, 20
	vst	$vr0, $a1, 4
	ld.d	$a1, $s3, 0
	st.d	$zero, $a1, 24
	addi.d	$a1, $a0, -2
	addi.w	$a0, $a0, -1
	st.w	$a1, $a3, 0
	bltu	$a4, $a0, .LBB30_97
.LBB30_98:                              # %while.end.i.i
                                        #   in Loop: Header=BB30_67 Depth=3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 0
	beqz	$a0, .LBB30_65
# %bb.99:                               # %if.then.i79.i
                                        #   in Loop: Header=BB30_67 Depth=3
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 2
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a1, $a4, $a1
	st.w	$a0, $a2, 0
	st.w	$a1, $a3, 0
	b	.LBB30_65
.LBB30_100:                             # %for.inc61.i.thread
                                        #   in Loop: Header=BB30_64 Depth=2
	move	$a0, $s4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_ReplaceVariable)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	move	$a3, $zero
	st.d	$s0, $a0, 8
	addi.d	$s0, $s0, 1
	addi.w	$a1, $s0, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$a2, $a0, 0
	move	$a2, $a0
	bne	$a4, $a1, .LBB30_64
# %bb.101:                              # %if.then65.i.thread
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$s5, $a0
	move	$a0, $s4
	move	$a1, $s5
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	move	$a3, $s3
	pcaddu18i	$ra, %call36(clause_DeleteLiterals)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	b	.LBB30_104
.LBB30_102:                             # %for.end63.i
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	bnez	$a0, .LBB30_107
# %bb.103:                              # %if.then65.i
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $s4
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s5
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	move	$a3, $s3
	pcaddu18i	$ra, %call36(clause_DeleteLiterals)
	jirl	$ra, $ra, 0
	move	$s0, $s4
	beqz	$s5, .LBB30_106
	.p2align	4, , 16
.LBB30_104:                             # %while.body.i83.i
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $fp, 0
	ld.d	$a3, $s5, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s1, 128
	st.d	$s5, $a0, 0
	move	$s5, $a3
	bnez	$a3, .LBB30_104
# %bb.105:                              # %list_Delete.exit.i.loopexit
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$s0, $sp, 304
.LBB30_106:                             # %list_Delete.exit.i
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$s4, $s0
.LBB30_107:                             # %red_PropagateDefinitions.exit
                                        #   in Loop: Header=BB30_37 Depth=1
	st.d	$zero, $sp, 296
	st.d	$zero, $sp, 288
	ld.w	$s2, $s4, 0
	addi.d	$a1, $sp, 304
	addi.d	$a2, $sp, 296
	addi.d	$a3, $sp, 288
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(red_SelectedStaticReductions)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 304
	ori	$a1, $zero, 27
	st.w	$a1, $s3, 76
	bnez	$a0, .LBB30_112
# %bb.108:                              # %land.lhs.true.i176
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.w	$a0, $s3, 68
	bnez	$a0, .LBB30_111
# %bb.109:                              # %land.lhs.true1.i
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.w	$a0, $s3, 72
	bnez	$a0, .LBB30_111
# %bb.110:                              # %clause_IsEmptyClause.exit
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.w	$a0, $s3, 64
	beqz	$a0, .LBB30_167
.LBB30_111:                             # %land.lhs.true.i
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cc_Tautology)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_167
.LBB30_112:                             # %if.then53.i
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$s5, $sp, 296
	beqz	$s5, .LBB30_114
# %bb.113:                              # %if.then55.i
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
.LBB30_114:                             # %if.end56.i
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$s0, $sp, 288
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB30_136
# %bb.115:                              # %if.then58.i
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$s6, $s3, 32
	st.d	$zero, $s3, 32
	beqz	$s0, .LBB30_124
# %bb.116:                              # %for.body.i314.preheader
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$s4, $s0
	b	.LBB30_119
	.p2align	4, , 16
.LBB30_117:                             #   in Loop: Header=BB30_119 Depth=2
	move	$a0, $s6
.LBB30_118:                             # %list_Append.exit.i
                                        #   in Loop: Header=BB30_119 Depth=2
	ld.d	$s4, $s4, 0
	move	$s6, $a0
	beqz	$s4, .LBB30_125
.LBB30_119:                             # %for.body.i314
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB30_122 Depth 3
	ld.d	$a0, $s4, 8
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB30_117
# %bb.120:                              # %if.end.i.i
                                        #   in Loop: Header=BB30_119 Depth=2
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB30_118
# %bb.121:                              # %for.cond.i.i.preheader
                                        #   in Loop: Header=BB30_119 Depth=2
	move	$a2, $a0
	.p2align	4, , 16
.LBB30_122:                             # %for.cond.i.i
                                        #   Parent Loop BB30_37 Depth=1
                                        #     Parent Loop BB30_119 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB30_122
# %bb.123:                              # %for.end.i.i
                                        #   in Loop: Header=BB30_119 Depth=2
	st.d	$s6, $a1, 0
	b	.LBB30_118
.LBB30_124:                             #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $s6
.LBB30_125:                             # %for.end.i318
                                        #   in Loop: Header=BB30_37 Depth=1
	beqz	$s5, .LBB30_127
# %bb.126:                              # %if.then.i319
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.w	$s4, $s5, 0
	move	$s5, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s5, $a0, 0
.LBB30_127:                             # %if.end.i322
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB30_130
# %bb.128:                              # %for.body15.i.preheader
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$s2, $s0
	.p2align	4, , 16
.LBB30_129:                             # %for.body15.i
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 8
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB30_129
.LBB30_130:                             # %for.end22.i
                                        #   in Loop: Header=BB30_37 Depth=1
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 32
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_133
# %bb.131:                              # %for.body29.i327.preheader
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB30_132:                             # %for.body29.i327
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$zero, $a1, 8
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB30_132
.LBB30_133:                             # %for.end32.i332
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$a1, $s3, 40
	beqz	$a1, .LBB30_135
	.p2align	4, , 16
.LBB30_134:                             # %while.body.i.i335
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s1, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $fp, 0
	ld.d	$a5, $a1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $fp, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s1, 128
	st.d	$a1, $a2, 0
	move	$a1, $a5
	bnez	$a5, .LBB30_134
.LBB30_135:                             # %red_CRwCalculateAdditionalParents.exit
                                        #   in Loop: Header=BB30_37 Depth=1
	st.d	$a0, $s3, 40
.LBB30_136:                             # %red_CRwLitTautologyCheck.exit.thread303
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	b	.LBB30_139
.LBB30_137:                             # %if.end.i
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	beqz	$s3, .LBB30_151
.LBB30_138:                             # %red_CRwLitTautologyCheck.exit.thread
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
.LBB30_139:                             # %if.else
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $s7
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_UpdateSplitDataFromPartner)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 36
	beqz	$a0, .LBB30_35
# %bb.140:                              # %if.then54
                                        #   in Loop: Header=BB30_37 Depth=1
	ld.d	$a0, $s3, 32
	ld.d	$a1, $s7, 32
	beqz	$a0, .LBB30_145
# %bb.141:                              # %if.end.i151
                                        #   in Loop: Header=BB30_37 Depth=1
	beqz	$a1, .LBB30_146
# %bb.142:                              # %for.cond.i.preheader
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a3, $a0
	.p2align	4, , 16
.LBB30_143:                             # %for.cond.i
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB30_143
# %bb.144:                              # %for.end.i
                                        #   in Loop: Header=BB30_37 Depth=1
	st.d	$a1, $a2, 0
	b	.LBB30_146
.LBB30_145:                             #   in Loop: Header=BB30_37 Depth=1
	move	$a0, $a1
.LBB30_146:                             # %list_Nconc.exit
                                        #   in Loop: Header=BB30_37 Depth=1
	vld	$vr0, $sp, 240                  # 16-byte Folded Reload
	st.d	$a0, $s7, 32
	ld.d	$a0, $s3, 40
	ld.d	$a1, $s7, 40
	beqz	$a0, .LBB30_33
# %bb.147:                              # %if.end.i155
                                        #   in Loop: Header=BB30_37 Depth=1
	beqz	$a1, .LBB30_34
# %bb.148:                              # %for.cond.i157.preheader
                                        #   in Loop: Header=BB30_37 Depth=1
	move	$a3, $a0
	.p2align	4, , 16
.LBB30_149:                             # %for.cond.i157
                                        #   Parent Loop BB30_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB30_149
# %bb.150:                              # %for.end.i161
                                        #   in Loop: Header=BB30_37 Depth=1
	st.d	$a1, $a2, 0
	b	.LBB30_34
.LBB30_151:                             #   in Loop: Header=BB30_37 Depth=1
	move	$s3, $s2
	b	.LBB30_139
.LBB30_152:
	ori	$a0, $zero, 1
.LBB30_153:                             # %for.end68
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $s6, $s1
	ori	$a2, $zero, 63
	st.w	$a4, $a3, 0
	bltu	$a2, $a1, .LBB30_157
.LBB30_154:                             # %for.body.i167.preheader
	move	$a1, $zero
	ori	$a2, $zero, 384
	.p2align	4, , 16
.LBB30_155:                             # %for.body.i167
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a1
	stx.w	$a3, $s6, $a1
	addi.d	$a1, $a1, 4
	bne	$a1, $a2, .LBB30_155
	b	.LBB30_158
.LBB30_156:
	ori	$a0, $zero, 1
	sub.d	$a1, $s6, $s1
	ori	$a2, $zero, 63
	st.w	$a4, $a3, 0
	bgeu	$a2, $a1, .LBB30_154
.LBB30_157:                             # %vector.body363
	xvld	$xr0, $s1, 0
	xvld	$xr1, $s1, 32
	xvst	$xr0, $s6, 0
	xvst	$xr1, $s6, 32
	xvld	$xr0, $s1, 64
	xvld	$xr1, $s1, 96
	xvst	$xr0, $s6, 64
	xvst	$xr1, $s6, 96
	xvld	$xr0, $s1, 128
	xvld	$xr1, $s1, 160
	xvst	$xr0, $s6, 128
	xvst	$xr1, $s6, 160
	xvld	$xr0, $s1, 192
	xvld	$xr1, $s1, 224
	xvst	$xr0, $s6, 192
	xvst	$xr1, $s6, 224
	xvld	$xr0, $s1, 256
	xvld	$xr1, $s1, 288
	xvst	$xr0, $s6, 256
	xvst	$xr1, $s6, 288
	xvld	$xr0, $s1, 320
	xvld	$xr1, $s1, 352
	xvst	$xr0, $s6, 320
	xvst	$xr1, $s6, 352
.LBB30_158:                             # %flag_TransferAllFlags.exit174
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ldptr.d	$a2, $a1, 3072
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ldptr.d	$a1, $a1, 3072
	st.d	$s1, $a1, 0
	beqz	$a0, .LBB30_165
# %bb.159:                              # %if.then70
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$s7, $a0, 0
	ori	$a0, $zero, 1
	b	.LBB30_166
.LBB30_160:                             # %if.then26
	ld.w	$a2, $s4, 0
	blt	$a2, $fp, .LBB30_163
# %bb.161:                              # %while.body.i114.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	pcalau12i	$a1, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a1, $a1, %got_pc_lo12(cont_CURRENTBINDING)
	addi.d	$a2, $a2, 1
	vrepli.b	$vr0, 0
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB30_162:                             # %while.body.i114
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a5, $a4, 24
	st.d	$a5, $a0, 0
	st.w	$zero, $a4, 20
	vst	$vr0, $a4, 4
	ld.d	$a4, $a1, 0
	st.d	$zero, $a4, 24
	addi.d	$a4, $a2, -2
	addi.w	$a2, $a2, -1
	st.w	$a4, $s4, 0
	bltu	$a3, $a2, .LBB30_162
.LBB30_163:                             # %while.end.i
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 0
	beqz	$a0, .LBB30_165
# %bb.164:                              # %if.then.i
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a1, $a3, $a1
	st.w	$a0, $a2, 0
	st.w	$a1, $s4, 0
.LBB30_165:                             # %if.else71
	move	$a0, $s7
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB30_166:                             # %cleanup
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.LBB30_167:                             # %for.inc66.thread
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB30_153
.Lfunc_end30:
	.size	red_CRwTautologyCheck, .Lfunc_end30-red_CRwTautologyCheck
                                        # -- End function
	.p2align	5                               # -- Begin function flag_SetFlagValue
	.type	flag_SetFlagValue,@function
flag_SetFlagValue:                      # @flag_SetFlagValue
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(flag_Minimum)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB31_3
# %bb.1:                                # %if.else.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(flag_Maximum)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB31_4
# %bb.2:                                # %flag_CheckFlagValueInRange.exit
	slli.d	$a0, $fp, 2
	stx.w	$zero, $s0, $a0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB31_3:                               # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(flag_Name)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.LBB31_4:                               # %if.then5.i
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(flag_Name)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	flag_SetFlagValue, .Lfunc_end31-flag_SetFlagValue
                                        # -- End function
	.p2align	5                               # -- Begin function red_DocumentMatchingReplacementResolution
	.type	red_DocumentMatchingReplacementResolution,@function
red_DocumentMatchingReplacementResolution: # @red_DocumentMatchingReplacementResolution
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a3
	move	$s2, $a2
	move	$s0, $a1
	move	$fp, $a0
	beqz	$a1, .LBB32_4
# %bb.1:                                # %for.body.preheader
	move	$s4, $zero
	move	$s3, $s0
	.p2align	4, , 16
.LBB32_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s5, $fp, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s4, $a0, 0
	ld.d	$s3, $s3, 0
	move	$s4, $a0
	bnez	$s3, .LBB32_2
# %bb.3:                                # %for.end
	ld.d	$a1, $fp, 32
	bnez	$a1, .LBB32_5
	b	.LBB32_7
.LBB32_4:
	move	$a0, $zero
	ld.d	$a1, $fp, 32
	beqz	$a1, .LBB32_7
.LBB32_5:                               # %while.body.i.preheader
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB32_6:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 128
	ld.w	$a5, $a4, 32
	ld.d	$a6, $a3, 0
	ld.d	$a7, $a1, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a2, 128
	st.d	$a1, $a4, 0
	move	$a1, $a7
	bnez	$a7, .LBB32_6
.LBB32_7:                               # %list_Delete.exit
	ld.d	$a1, $fp, 40
	beqz	$a1, .LBB32_10
# %bb.8:                                # %while.body.i13.preheader
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB32_9:                               # %while.body.i13
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 128
	ld.w	$a5, $a4, 32
	ld.d	$a6, $a3, 0
	ld.d	$a7, $a1, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a2, 128
	st.d	$a1, $a4, 0
	move	$a1, $a7
	bnez	$a7, .LBB32_9
.LBB32_10:                              # %list_Delete.exit20
	beqz	$a0, .LBB32_20
# %bb.11:                               # %if.end.i
	beqz	$s2, .LBB32_15
# %bb.12:                               # %for.cond.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB32_13:                              # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB32_13
# %bb.14:                               # %for.end.i
	st.d	$s2, $a1, 0
.LBB32_15:                              # %list_Nconc.exit
	st.d	$a0, $fp, 32
	beqz	$s0, .LBB32_21
.LBB32_16:                              # %if.end.i23
	beqz	$s1, .LBB32_22
# %bb.17:                               # %for.cond.i25.preheader
	move	$a1, $s0
	.p2align	4, , 16
.LBB32_18:                              # %for.cond.i25
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB32_18
# %bb.19:                               # %for.end.i29
	st.d	$s1, $a0, 0
	b	.LBB32_22
.LBB32_20:
	move	$a0, $s2
	st.d	$a0, $fp, 32
	bnez	$s0, .LBB32_16
.LBB32_21:
	move	$s0, $s1
.LBB32_22:                              # %list_Nconc.exit31
	pcalau12i	$a0, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a0, $a0, %got_pc_lo12(clause_CLAUSECOUNTER)
	st.d	$s0, $fp, 40
	ld.w	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.w	$a2, $a0, 0
	st.w	$a1, $fp, 0
	ori	$a0, $zero, 23
	st.w	$a0, $fp, 76
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end32:
	.size	red_DocumentMatchingReplacementResolution, .Lfunc_end32-red_DocumentMatchingReplacementResolution
                                        # -- End function
	.type	red_USABLE,@object              # @red_USABLE
	.section	.rodata,"a",@progbits
	.globl	red_USABLE
	.p2align	2, 0x0
red_USABLE:
	.word	1                               # 0x1
	.size	red_USABLE, 4

	.type	red_WORKEDOFF,@object           # @red_WORKEDOFF
	.globl	red_WORKEDOFF
	.p2align	2, 0x0
red_WORKEDOFF:
	.word	2                               # 0x2
	.size	red_WORKEDOFF, 4

	.type	red_ALL,@object                 # @red_ALL
	.globl	red_ALL
	.p2align	2, 0x0
red_ALL:
	.word	3                               # 0x3
	.size	red_ALL, 4

	.type	red_STAMPID,@object             # @red_STAMPID
	.local	red_STAMPID
	.comm	red_STAMPID,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n Error while applying bound restrictions:"
	.size	.L.str, 43

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n You selected an unknown bound mode.\n"
	.size	.L.str.1, 39

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\nDeleted by bound: "
	.size	.L.str.2, 20

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\nKept: "
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\nDerived: "
	.size	.L.str.4, 11

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\n\nStatic Soft Typing tried on: "
	.size	.L.str.5, 32

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\n*************** Static Soft Typing Subproof: ***************"
	.size	.L.str.6, 62

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"The usable list:"
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\nThe worked-off list:"
	.size	.L.str.8, 22

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\n\tSubproof Given clause: "
	.size	.L.str.9, 26

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\nStatic Soft Typing not successful: "
	.size	.L.str.10, 37

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	" Static Soft Typing not successful!"
	.size	.L.str.11, 36

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\nStatic Soft Typing failed, constraint solvable."
	.size	.L.str.12, 49

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"************  Static Soft Typing Subproof finished. ************"
	.size	.L.str.13, 65

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\nStatic Soft Typing deleted: "
	.size	.L.str.14, 30

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"\n\tError in file %s at line %d\n"
	.size	.L.str.15, 31

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"/home/zhaoqi/llvm-test-suite/MultiSource/Applications/SPASS/rules-red.c"
	.size	.L.str.16, 72

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\n In red_CheckSplitSubsumptionCondition: No clause found implying "
	.size	.L.str.17, 67

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\n Current Split: "
	.size	.L.str.18, 18

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\n Please report this error via email to spass@mpi-sb.mpg.de including\n the SPASS version, input problem, options, operating system.\n"
	.size	.L.str.19, 133

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\nTautology: "
	.size	.L.str.20, 13

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"\nObvious: "
	.size	.L.str.21, 11

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	" ==> "
	.size	.L.str.22, 6

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"\nCondensing: "
	.size	.L.str.23, 14

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"\nAED: "
	.size	.L.str.24, 7

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"\nFSubsumption: "
	.size	.L.str.25, 16

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	" by %d %d "
	.size	.L.str.26, 11

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"\nFRewriting: "
	.size	.L.str.27, 14

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	" ==>[ "
	.size	.L.str.28, 7

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"%d.%d "
	.size	.L.str.29, 7

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"] "
	.size	.L.str.30, 3

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"\nFContRewriting: "
	.size	.L.str.31, 18

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"\n Error: Flag value %d is too small for flag %s.\n"
	.size	.L.str.32, 50

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"\n Error: Flag value %d is too large for flag %s.\n"
	.size	.L.str.33, 50

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"\nSortSimplification: "
	.size	.L.str.34, 22

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"%d "
	.size	.L.str.35, 4

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"\nFMatchingReplacementResolution: "
	.size	.L.str.36, 34

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	" ==> [ "
	.size	.L.str.37, 8

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"\nUnitConflict: "
	.size	.L.str.38, 16

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	" ==> [ %d.%d ]"
	.size	.L.str.39, 15

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"\nBSubsumption: "
	.size	.L.str.40, 16

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	" by %d "
	.size	.L.str.41, 8

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"\nBMatchingReplacementResolution: "
	.size	.L.str.42, 34

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	" ==>[ %d.%d ] "
	.size	.L.str.43, 15

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"\nBRewriting: "
	.size	.L.str.44, 14

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"\nBContRewriting: "
	.size	.L.str.45, 18

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"\nFSubsumption:"
	.size	.L.str.46, 15

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"\n\n"
	.size	.L.str.47, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clause_Weight
