	.file	"rules-sort.c"
	.text
	.globl	inf_BackwardSortResolution      # -- Begin function inf_BackwardSortResolution
	.p2align	5
	.type	inf_BackwardSortResolution,@function
inf_BackwardSortResolution:             # @inf_BackwardSortResolution
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
	move	$s5, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a6, $s5, 68
	ld.w	$a7, $s5, 72
	add.w	$t0, $a6, $a0
	add.d	$t1, $t0, $a7
	addi.w	$t1, $t1, -1
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	bge	$t1, $t0, .LBB0_3
# %bb.1:
	move	$s2, $zero
.LBB0_2:                                # %for.end92
	move	$a0, $s2
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
	ret
.LBB0_3:                                # %for.body.lr.ph
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPESTATBITS)
	move	$s2, $zero
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a1, $a2, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	add.d	$s4, $a0, $a6
	add.w	$fp, $t0, $a7
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a6, $a0, %got_pc_lo12(fol_NOT)
	addi.w	$s0, $zero, -1
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_SIGNATURE)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s7, $zero, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	b	.LBB0_6
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_5:                                # %if.end89
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$s4, $s4, 1
	addi.w	$a0, $s4, 0
	beq	$fp, $a0, .LBB0_2
.LBB0_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #         Child Loop BB0_26 Depth 4
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_36 Depth 4
                                        #         Child Loop BB0_48 Depth 4
                                        #         Child Loop BB0_52 Depth 4
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_58 Depth 4
                                        #         Child Loop BB0_61 Depth 4
	ld.d	$a0, $s5, 56
	slli.d	$a4, $s4, 3
	ldx.d	$a5, $a0, $a4
	ld.d	$a3, $a5, 24
	ld.w	$a0, $a3, 0
	ld.w	$a2, $a6, 0
	ld.wu	$a1, $a5, 0
	andi	$a1, $a1, 2
	bne	$a0, $a2, .LBB0_9
# %bb.7:                                # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$a1, .LBB0_5
# %bb.8:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $a3, 16
	ld.d	$a3, $a0, 8
	ld.w	$a0, $a3, 0
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %clause_LiteralAtom.exit.thread
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$a1, .LBB0_5
.LBB0_10:                               # %clause_LiteralPredicate.exit.i
                                        #   in Loop: Header=BB0_6 Depth=1
	blt	$s0, $a0, .LBB0_5
# %bb.11:                               # %symbol_IsPredicate.exit.i
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.w	$a0, $zero, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	and	$a1, $a1, $a0
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_5
# %bb.12:                               # %clause_LiteralIsSort.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	srl.w	$a0, $a0, $a2
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 16
	bne	$a0, $s7, .LBB0_5
# %bb.13:                               # %if.then
                                        #   in Loop: Header=BB0_6 Depth=1
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a1, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a2, $a0, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_4
# %bb.14:                               # %for.body14.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s3, $a0
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=2
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_16:                               # %for.inc86
                                        #   in Loop: Header=BB0_17 Depth=2
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
	beqz	$a5, .LBB0_5
.LBB0_17:                               # %for.body14
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #         Child Loop BB0_26 Depth 4
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_36 Depth 4
                                        #         Child Loop BB0_48 Depth 4
                                        #         Child Loop BB0_52 Depth 4
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_58 Depth 4
                                        #         Child Loop BB0_61 Depth 4
	ld.d	$a0, $s3, 8
	ld.w	$a1, $a0, 0
	blt	$s0, $a1, .LBB0_16
# %bb.18:                               # %term_IsAtom.exit
                                        #   in Loop: Header=BB0_17 Depth=2
	sub.w	$a1, $zero, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	and	$a1, $a2, $a1
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_16
# %bb.19:                               # %land.lhs.true18
                                        #   in Loop: Header=BB0_17 Depth=2
	ld.d	$a1, $a0, 16
	ld.d	$a1, $a1, 8
	ld.w	$a1, $a1, 0
	bgtz	$a1, .LBB0_16
# %bb.20:                               # %if.then23
                                        #   in Loop: Header=BB0_17 Depth=2
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_15
# %bb.21:                               # %for.body30.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	move	$s8, $a0
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	b	.LBB0_25
.LBB0_22:                               #   in Loop: Header=BB0_25 Depth=3
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
.LBB0_23:                               #   in Loop: Header=BB0_25 Depth=3
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
.LBB0_24:                               # %if.end81
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$s8, $s8, 0
	beqz	$s8, .LBB0_16
.LBB0_25:                               # %for.body30
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_26 Depth 4
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_36 Depth 4
                                        #         Child Loop BB0_48 Depth 4
                                        #         Child Loop BB0_52 Depth 4
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_58 Depth 4
                                        #         Child Loop BB0_61 Depth 4
	ld.d	$a0, $s8, 8
	ld.d	$s1, $a0, 16
	ld.d	$a1, $s1, 56
	move	$a3, $a1
	move	$a2, $s0
	.p2align	4, , 16
.LBB0_26:                               # %while.cond.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a4, $a3, 0
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $a0, .LBB0_26
# %bb.27:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.w	$s6, $s1, 64
	bge	$a2, $s6, .LBB0_24
# %bb.28:                               # %land.lhs.true36
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.bu	$a2, $s1, 48
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_24
# %bb.29:                               # %if.then39
                                        #   in Loop: Header=BB0_25 Depth=3
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s2, $a0, 24
	ld.w	$a2, $s2, 0
	ld.w	$a3, $a6, 0
	bne	$a2, $a3, .LBB0_31
# %bb.30:                               # %if.then.i74
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a2, $s2, 16
	ld.d	$s2, $a2, 8
.LBB0_31:                               # %clause_LiteralAtom.exit77
                                        #   in Loop: Header=BB0_25 Depth=3
	addi.w	$fp, $zero, -1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_32:                               # %while.cond.i81
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a1, 0
	addi.d	$fp, $fp, 1
	ori	$a4, $zero, 0
	lu32i.d	$a4, 1
	add.d	$a2, $a2, $a4
	addi.d	$a1, $a1, 8
	bne	$a3, $a0, .LBB0_32
# %bb.33:                               # %clause_LiteralGetIndex.exit86
                                        #   in Loop: Header=BB0_25 Depth=3
	srai.d	$s3, $a2, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	blt	$s6, $s7, .LBB0_41
# %bb.34:                               # %for.body49.lr.ph
                                        #   in Loop: Header=BB0_25 Depth=3
	move	$s5, $zero
	move	$s3, $zero
	bstrpick.d	$s7, $fp, 31, 0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_35:                               # %if.end
                                        #   in Loop: Header=BB0_36 Depth=4
	addi.d	$s5, $s5, 1
	beq	$s5, $s6, .LBB0_42
.LBB0_36:                               # %for.body49
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$s5, $s7, .LBB0_35
# %bb.37:                               # %land.lhs.true53
                                        #   in Loop: Header=BB0_36 Depth=4
	ld.d	$a0, $s1, 56
	slli.d	$a1, $s5, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a3, 0
	bne	$a1, $a2, .LBB0_39
# %bb.38:                               # %if.then.i92
                                        #   in Loop: Header=BB0_36 Depth=4
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB0_39:                               # %clause_LiteralAtom.exit95
                                        #   in Loop: Header=BB0_36 Depth=4
	ld.d	$a0, $a0, 16
	ld.d	$a1, $s2, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	bne	$a0, $a1, .LBB0_35
# %bb.40:                               # %if.then59
                                        #   in Loop: Header=BB0_36 Depth=4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s5, $a0, 8
	st.d	$s0, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.d	$s5, $a0, 8
	st.d	$s3, $a0, 0
	move	$s0, $fp
	move	$s3, $a0
	b	.LBB0_35
.LBB0_41:                               #   in Loop: Header=BB0_25 Depth=3
	move	$s3, $zero
.LBB0_42:                               # %for.end
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_44
# %bb.43:                               # %lor.lhs.false
                                        #   in Loop: Header=BB0_25 Depth=3
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_SubsortPrecheck)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_62
.LBB0_44:                               # %if.then67
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s1, 52
	move	$s7, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $s6, 8
	st.d	$zero, $s6, 0
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $s7, 56
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$fp, $a0, 24
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB0_46
# %bb.45:                               # %if.then.i.i
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a0, $fp, 16
	ld.d	$fp, $a0, 8
.LBB0_46:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB0_25 Depth=3
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $s7, 0
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $s5, 0
	move	$a1, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $s5, 0
	addi.d	$a1, $sp, 192
	addi.d	$a3, $sp, 184
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	beqz	$a1, .LBB0_49
# %bb.47:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB0_25 Depth=3
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB0_48:                               # %while.body.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a4, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a4, $a4, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a1, $a4, 0
	ld.d	$a5, $a1, 24
	st.d	$a5, $a0, 0
	st.w	$zero, $a1, 20
	vst	$vr0, $a1, 4
	ld.d	$a4, $a4, 0
	ld.d	$a1, $a0, 0
	st.d	$zero, $a4, 24
	st.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	bnez	$a1, .LBB0_48
.LBB0_49:                               # %cont_Reset.exit
                                        #   in Loop: Header=BB0_25 Depth=3
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a1, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a2, $a0, %got_pc_lo12(cont_STACKPOINTER)
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a3, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ld.d	$a0, $sp, 184
	st.w	$zero, $a1, 0
	ori	$s7, $zero, 1
	st.w	$s7, $a2, 0
	ori	$a1, $zero, 2000
	st.w	$a1, $a3, 0
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 192
	move	$a0, $s1
	move	$a1, $s0
	move	$a3, $s3
	move	$a4, $s6
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ConstraintHyperResolvents)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_54
# %bb.50:                               # %if.end.i
                                        #   in Loop: Header=BB0_25 Depth=3
	move	$s2, $a0
	beqz	$a2, .LBB0_55
# %bb.51:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB0_25 Depth=3
	move	$a1, $s2
	.p2align	4, , 16
.LBB0_52:                               # %for.cond.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB0_52
# %bb.53:                               # %for.end.i
                                        #   in Loop: Header=BB0_25 Depth=3
	st.d	$a2, $a0, 0
	b	.LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_25 Depth=3
	move	$s2, $a2
.LBB0_55:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_56:                               # %while.body.i111
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
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
	bnez	$a5, .LBB0_56
# %bb.57:                               # %list_Delete.exit
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB0_59
	.p2align	4, , 16
.LBB0_58:                               # %while.body.i114
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
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
	bnez	$a5, .LBB0_58
.LBB0_59:                               # %list_Delete.exit121
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	beqz	$s3, .LBB0_22
# %bb.60:                               # %while.body.i123.preheader
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_61:                               # %while.body.i123
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
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
	bnez	$a5, .LBB0_61
	b	.LBB0_23
.LBB0_62:                               #   in Loop: Header=BB0_25 Depth=3
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ori	$s7, $zero, 1
	bnez	$s0, .LBB0_58
	b	.LBB0_59
.Lfunc_end0:
	.size	inf_BackwardSortResolution, .Lfunc_end0-inf_BackwardSortResolution
                                        # -- End function
	.p2align	5                               # -- Begin function inf_SubsortPrecheck
	.type	inf_SubsortPrecheck,@function
inf_SubsortPrecheck:                    # @inf_SubsortPrecheck
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a1
	ld.d	$a1, $a1, 8
	move	$s3, $a0
	ld.d	$a0, $a0, 56
	slli.d	$a1, $a1, 32
	srai.d	$a1, $a1, 29
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	move	$s0, $a4
	move	$a1, $a3
	move	$s1, $a2
	pcaddu18i	$ra, %call36(inf_GetForwardPartnerLits)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_19
# %bb.1:                                # %for.body.i.preheader
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s5, $a0, %got_pc_lo12(fol_NOT)
	move	$fp, $zero
	move	$s6, $s4
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                # %sort_Intersect.exit.i
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $a0
.LBB1_3:                                # %sort_Intersect.exit.i
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB1_11
.LBB1_4:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
	ld.d	$a0, $s6, 8
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s5, 0
	bne	$a1, $a2, .LBB1_6
# %bb.5:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB1_6:                                # %clause_LiteralPredicate.exit.i
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_3
# %bb.7:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	beqz	$fp, .LBB1_2
# %bb.8:                                # %for.cond.i.i.i.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB1_9:                                # %for.cond.i.i.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB1_9
# %bb.10:                               # %for.end.i.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	st.d	$fp, $a1, 0
	b	.LBB1_2
.LBB1_11:                               # %inf_GetSortFromLits.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB1_12:                               # %while.body.i
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
	bnez	$a5, .LBB1_12
# %bb.13:                               # %list_Delete.exit
	bnez	$s2, .LBB1_20
# %bb.14:
	move	$s4, $zero
.LBB1_15:                               # %for.end
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$s1, .LBB1_30
# %bb.16:                               # %if.else
	ld.d	$a0, $s1, 24
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB1_18
# %bb.17:                               # %if.then.i.i26
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB1_18:                               # %clause_LiteralPredicate.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s2
	pcaddu18i	$ra, %call36(sort_TheoryIsSubsortOfExtra)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sort_Delete)
	jirl	$ra, $ra, 0
	b	.LBB1_31
.LBB1_19:                               # %list_Delete.exit.thread
	move	$a0, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	move	$fp, $zero
.LBB1_20:                               # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s5, $a0, %got_pc_lo12(fol_NOT)
	move	$s4, $zero
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_21:                               # %sort_Intersect.exit
                                        #   in Loop: Header=BB1_23 Depth=1
	move	$s4, $a0
.LBB1_22:                               # %sort_Intersect.exit
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB1_15
.LBB1_23:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_28 Depth 2
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s3, 56
	slli.d	$a0, $a0, 32
	srai.d	$a0, $a0, 29
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s5, 0
	bne	$a1, $a2, .LBB1_25
# %bb.24:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB1_25:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB1_23 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_22
# %bb.26:                               # %if.end.i.i
                                        #   in Loop: Header=BB1_23 Depth=1
	beqz	$s4, .LBB1_21
# %bb.27:                               # %for.cond.i.i.preheader
                                        #   in Loop: Header=BB1_23 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB1_28:                               # %for.cond.i.i
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB1_28
# %bb.29:                               # %for.end.i.i
                                        #   in Loop: Header=BB1_23 Depth=1
	st.d	$s4, $a1, 0
	b	.LBB1_21
.LBB1_30:                               # %if.then
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(sort_TheoryIsSubsortOf)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB1_31:                               # %if.end
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sort_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sort_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	inf_SubsortPrecheck, .Lfunc_end1-inf_SubsortPrecheck
                                        # -- End function
	.p2align	5                               # -- Begin function inf_ConstraintHyperResolvents
	.type	inf_ConstraintHyperResolvents,@function
inf_ConstraintHyperResolvents:          # @inf_ConstraintHyperResolvents
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	move	$s8, $a4
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	move	$s0, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	beqz	$a3, .LBB2_21
# %bb.1:                                # %if.else
	ld.d	$a0, $a3, 8
	ld.d	$a1, $s0, 56
	slli.d	$a0, $a0, 32
	srai.d	$a0, $a0, 29
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a1, %got_pc_lo12(fol_NOT)
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a2, 0
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	bne	$a1, $a2, .LBB2_3
# %bb.2:                                # %if.then.i34
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB2_3:                                # %clause_LiteralAtom.exit
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a2, $a1, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a1, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a3, $a1, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $a2, 0
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a2, $a3, 0
	move	$a3, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_36
# %bb.4:                                # %for.body.lr.ph.i
	move	$s5, $a0
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$fp, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s2, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$s1, $zero
	addi.w	$s3, $zero, -1
	ori	$s4, $zero, 2
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_5:                                # %for.inc34.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a0, $s0, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s2, 0
	ld.d	$a3, $s5, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s0, 128
	st.d	$s5, $a0, 0
	move	$s5, $a3
	beqz	$a3, .LBB2_37
.LBB2_6:                                # %for.body.i35
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
                                        #       Child Loop BB2_19 Depth 3
	ld.d	$a0, $s5, 8
	ld.w	$a1, $a0, 0
	blt	$s3, $a1, .LBB2_5
# %bb.7:                                # %term_IsAtom.exit.i
                                        #   in Loop: Header=BB2_6 Depth=1
	sub.w	$a1, $zero, $a1
	and	$a1, $fp, $a1
	bne	$a1, $s4, .LBB2_5
# %bb.8:                                # %if.then.i41
                                        #   in Loop: Header=BB2_6 Depth=1
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_5
# %bb.9:                                # %for.body14.i.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	move	$s6, $a0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	b	.LBB2_13
.LBB2_10:                               # %if.then30.i
                                        #   in Loop: Header=BB2_13 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	st.d	$s1, $a0, 0
	move	$s1, $a0
.LBB2_11:                               # %for.inc.i
                                        #   in Loop: Header=BB2_13 Depth=2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_12:                               # %for.inc.i
                                        #   in Loop: Header=BB2_13 Depth=2
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB2_5
.LBB2_13:                               # %for.body14.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_19 Depth 3
	ld.d	$s7, $s6, 8
	ld.d	$a0, $s7, 24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a2, 0
	beq	$a0, $a1, .LBB2_12
# %bb.14:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB2_13 Depth=2
	ld.bu	$a0, $s7, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB2_12
# %bb.15:                               # %land.lhs.true21.i
                                        #   in Loop: Header=BB2_13 Depth=2
	ld.d	$a0, $s7, 16
	ld.bu	$a1, $a0, 48
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_12
# %bb.16:                               # %land.lhs.true24.i
                                        #   in Loop: Header=BB2_13 Depth=2
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_11
# %bb.17:                               # %land.lhs.true27.i
                                        #   in Loop: Header=BB2_13 Depth=2
	beqz	$s1, .LBB2_10
# %bb.18:                               # %while.body.i.i43.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	move	$a0, $s1
	.p2align	4, , 16
.LBB2_19:                               # %while.body.i.i43
                                        #   Parent Loop BB2_6 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a0, 8
	beq	$s7, $a1, .LBB2_11
# %bb.20:                               # %if.end.i.i46
                                        #   in Loop: Header=BB2_19 Depth=3
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB2_19
	b	.LBB2_10
.LBB2_21:                               # %if.then
	ld.w	$a0, $s0, 8
	beqz	$s8, .LBB2_24
# %bb.22:                               # %for.body.i.preheader
	move	$fp, $s8
	.p2align	4, , 16
.LBB2_23:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 8
	ld.d	$a1, $a1, 16
	ld.w	$a1, $a1, 8
	pcaddu18i	$ra, %call36(misc_Max)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB2_23
.LBB2_24:                               # %for.end.i
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s6, $a0, 8
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(clause_SubstApply)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s0, 56
	slli.d	$a0, $a0, 32
	srai.d	$a0, $a0, 29
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $a0, 0
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 0
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	bne	$a1, $a2, .LBB2_26
# %bb.25:                               # %if.then.i.i.i
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB2_26:                               # %clause_GetLiteralAtom.exit.i
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$s2, $s6, 64
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB2_55
# %bb.27:                               # %for.body22.lr.ph.i
	move	$s0, $zero
	move	$s5, $zero
	move	$fp, $zero
	move	$s4, $zero
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_28:                               # %if.else.i
                                        #   in Loop: Header=BB2_29 Depth=1
	ld.w	$s3, $s6, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s3, $a0, 8
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s4, $a0, 0
	move	$s4, $a0
	move	$fp, $s1
	addi.d	$s0, $s0, 1
	beq	$s0, $s2, .LBB2_35
.LBB2_29:                               # %for.body22.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_30 Depth 2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_30:                               # %while.body.i.i
                                        #   Parent Loop BB2_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 8
	beq	$a1, $s0, .LBB2_28
# %bb.31:                               # %if.end.i.i
                                        #   in Loop: Header=BB2_30 Depth=2
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB2_30
# %bb.32:                               # %if.then.i
                                        #   in Loop: Header=BB2_29 Depth=1
	ld.d	$a0, $s6, 56
	slli.d	$a1, $s0, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB2_34
# %bb.33:                               # %if.then.i.i149.i
                                        #   in Loop: Header=BB2_29 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB2_34:                               # %clause_GetLiteralAtom.exit152.i
                                        #   in Loop: Header=BB2_29 Depth=1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s5, $a0, 0
	move	$s5, $a0
	addi.d	$s0, $s0, 1
	bne	$s0, $s2, .LBB2_29
.LBB2_35:                               # %for.end34.loopexit.i
	ld.w	$a0, $s6, 64
	b	.LBB2_56
.LBB2_36:
	move	$s1, $zero
.LBB2_37:                               # %inf_GetSortResolutionPartnerLits.exit
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 52
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_AtomMaxVar)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB2_53
# %bb.38:                               # %for.body.preheader
	move	$s0, $zero
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s3, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu32i.d	$s3, 1
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$s5, $a0, %got_pc_lo12(cont_LASTBINDING)
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$fp, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s4, $a0, %got_pc_lo12(memory_FREEDBYTES)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_39:                               #   in Loop: Header=BB2_41 Depth=1
	move	$s7, $s0
.LBB2_40:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB2_41 Depth=1
	ld.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s4, 0
	ld.d	$s8, $s6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $a4, 128
	st.d	$s6, $a0, 0
	ld.d	$a0, $a4, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s4, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a4, 128
	st.d	$s1, $a0, 0
	move	$s0, $s7
	move	$s1, $a3
	beqz	$a3, .LBB2_54
.LBB2_41:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_42 Depth 2
                                        #     Child Loop BB2_47 Depth 2
                                        #     Child Loop BB2_51 Depth 2
	ld.d	$s2, $s1, 8
	ld.d	$a0, $s2, 16
	ld.d	$a0, $a0, 56
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_42:                               # %while.cond.i
                                        #   Parent Loop BB2_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 0
	add.d	$s7, $s7, $s3
	addi.d	$a0, $a0, 8
	bne	$a1, $s2, .LBB2_42
# %bb.43:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB2_41 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s2, $a0, 8
	st.d	$s8, $a0, 0
	ld.d	$a0, $s2, 16
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 56
	srai.d	$a1, $s7, 29
	ldx.d	$s7, $a0, $a1
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, 24
	ld.w	$a0, $a3, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB2_45
# %bb.44:                               # %if.then.i63
                                        #   in Loop: Header=BB2_41 Depth=1
	ld.d	$a0, $a3, 16
	ld.d	$a3, $a0, 8
.LBB2_45:                               # %clause_LiteralAtom.exit66
                                        #   in Loop: Header=BB2_41 Depth=1
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s7, 0
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $s8, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $s8, 0
	addi.d	$a1, $sp, 176
	addi.d	$a3, $sp, 168
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	beqz	$a0, .LBB2_48
# %bb.46:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB2_41 Depth=1
	ld.w	$a1, $fp, 0
	addi.d	$a1, $a1, -1
	.p2align	4, , 16
.LBB2_47:                               # %while.body.i
                                        #   Parent Loop BB2_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a2, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a2, $a2, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a0, $a2, 0
	ld.d	$a3, $a0, 24
	st.d	$a3, $s5, 0
	st.w	$zero, $a0, 20
	vst	$vr0, $a0, 4
	ld.d	$a2, $a2, 0
	ld.d	$a0, $s5, 0
	st.d	$zero, $a2, 24
	st.w	$a1, $fp, 0
	addi.d	$a1, $a1, -1
	bnez	$a0, .LBB2_47
.LBB2_48:                               # %cont_Reset.exit
                                        #   in Loop: Header=BB2_41 Depth=1
	ld.d	$a0, $sp, 168
	st.w	$zero, $fp, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
	st.w	$a2, $a1, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ori	$a2, $zero, 2000
	st.w	$a2, $a1, 0
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 176
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(subst_Compose)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	move	$a2, $a0
	st.d	$a0, $sp, 176
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$a4, $s6
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ConstraintHyperResolvents)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_39
# %bb.49:                               # %if.end.i
                                        #   in Loop: Header=BB2_41 Depth=1
	move	$s7, $a0
	beqz	$s0, .LBB2_40
# %bb.50:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB2_41 Depth=1
	move	$a1, $s7
	.p2align	4, , 16
.LBB2_51:                               # %for.cond.i
                                        #   Parent Loop BB2_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB2_51
# %bb.52:                               # %for.end.i68
                                        #   in Loop: Header=BB2_41 Depth=1
	st.d	$s0, $a0, 0
	b	.LBB2_40
.LBB2_53:
	move	$s7, $zero
.LBB2_54:                               # %for.end
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	b	.LBB2_137
.LBB2_55:
	move	$s4, $zero
	move	$fp, $zero
	move	$s5, $zero
	move	$a0, $s2
	move	$s2, $zero
.LBB2_56:                               # %for.end34.i
	ld.w	$a1, $s6, 68
	add.w	$s0, $a1, $a0
	addi.w	$a0, $s0, -1
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	bge	$a0, $s2, .LBB2_62
# %bb.57:
	move	$s7, $zero
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a1, $s6, 72
	add.w	$s0, $a1, $a0
	blt	$s0, $s2, .LBB2_67
.LBB2_58:                               # %for.body50.lr.ph.i
	move	$s4, $zero
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s2, $s2, -1
	slli.d	$s3, $a0, 3
	b	.LBB2_60
	.p2align	4, , 16
.LBB2_59:                               # %clause_GetLiteralAtom.exit183.i
                                        #   in Loop: Header=BB2_60 Depth=1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s1, $a0, 8
	st.d	$s4, $a0, 0
	addi.w	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	move	$s4, $a0
	bge	$s2, $s0, .LBB2_68
.LBB2_60:                               # %for.body50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB2_59
# %bb.61:                               # %if.then.i.i180.i
                                        #   in Loop: Header=BB2_60 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB2_59
.LBB2_62:                               # %for.body39.lr.ph.i
	move	$s4, $zero
	bstrpick.d	$a0, $s2, 31, 0
	bstrpick.d	$a1, $s0, 31, 0
	sub.d	$s2, $a1, $a0
	slli.d	$s3, $a0, 3
	b	.LBB2_64
	.p2align	4, , 16
.LBB2_63:                               # %clause_GetLiteralAtom.exit169.i
                                        #   in Loop: Header=BB2_64 Depth=1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s4, $a0, 0
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	move	$s4, $a0
	beqz	$s2, .LBB2_66
.LBB2_64:                               # %for.body39.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB2_63
# %bb.65:                               # %if.then.i.i166.i
                                        #   in Loop: Header=BB2_64 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB2_63
.LBB2_66:                               # %for.end45.loopexit.i
	move	$s7, $a0
	ld.w	$a0, $s6, 64
	ld.w	$a1, $s6, 68
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	move	$s2, $s0
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a1, $s6, 72
	add.w	$s0, $a1, $a0
	bge	$s0, $s2, .LBB2_58
.LBB2_67:
	move	$s8, $zero
.LBB2_68:                               # %for.end56.i
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 64
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB2_127
# %bb.69:                               # %for.body62.lr.ph.i
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_127
# %bb.70:                               # %for.body62.preheader.i
	move	$s3, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s2, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu32i.d	$s2, 1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	st.d	$s6, $sp, 128                   # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	b	.LBB2_74
.LBB2_71:                               #   in Loop: Header=BB2_74 Depth=1
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
.LBB2_72:                               # %for.end176.i
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a0, $a0, %got_pc_lo12(clause_CLAUSECOUNTER)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
.LBB2_73:                               # %for.inc178.i
                                        #   in Loop: Header=BB2_74 Depth=1
	addi.d	$s3, $s3, 1
	beq	$s3, $a2, .LBB2_127
.LBB2_74:                               # %for.body62.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_75 Depth 2
                                        #     Child Loop BB2_80 Depth 2
                                        #     Child Loop BB2_82 Depth 2
                                        #     Child Loop BB2_84 Depth 2
                                        #     Child Loop BB2_87 Depth 2
                                        #     Child Loop BB2_90 Depth 2
                                        #     Child Loop BB2_96 Depth 2
                                        #     Child Loop BB2_101 Depth 2
                                        #     Child Loop BB2_117 Depth 2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_75:                               # %while.body.i188.i
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 8
	beq	$a1, $s3, .LBB2_77
# %bb.76:                               # %if.end.i192.i
                                        #   in Loop: Header=BB2_75 Depth=2
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB2_75
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_77:                               # %if.then66.i
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a0, $s6, 56
	slli.d	$a1, $s3, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s4, $a0, 24
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB2_79
# %bb.78:                               # %if.then.i.i203.i
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a0, $s4, 16
	ld.d	$s4, $a0, 8
.LBB2_79:                               # %clause_GetLiteralAtom.exit206.i
                                        #   in Loop: Header=BB2_74 Depth=1
	move	$a0, $s5
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(clause_CreateUnnormalized)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	beqz	$s5, .LBB2_81
	.p2align	4, , 16
.LBB2_80:                               # %while.body.i208.i
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s5, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 128
	st.d	$s5, $a0, 0
	move	$s5, $a5
	bnez	$a5, .LBB2_80
.LBB2_81:                               # %list_Delete.exit.i
                                        #   in Loop: Header=BB2_74 Depth=1
	beqz	$s7, .LBB2_83
	.p2align	4, , 16
.LBB2_82:                               # %while.body.i211.i
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s7, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 128
	st.d	$s7, $a0, 0
	move	$s7, $a5
	bnez	$a5, .LBB2_82
.LBB2_83:                               # %list_Delete.exit218.i
                                        #   in Loop: Header=BB2_74 Depth=1
	beqz	$s8, .LBB2_85
	.p2align	4, , 16
.LBB2_84:                               # %while.body.i220.i
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s8, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 128
	st.d	$s8, $a0, 0
	move	$s8, $a5
	bnez	$a5, .LBB2_84
.LBB2_85:                               # %list_Delete.exit227.i
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 8
	ld.d	$a5, $a1, 24
	ld.w	$a4, $a5, 0
	bne	$a4, $a2, .LBB2_87
	.p2align	4, , 16
.LBB2_86:                               # %if.then.i.i
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a4, $a5, 16
	ld.d	$a4, $a4, 8
	ld.w	$a4, $a4, 0
.LBB2_87:                               # %clause_LiteralAtom.exit.i
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $a4, .LBB2_89
# %bb.88:                               # %for.inc80.i
                                        #   in Loop: Header=BB2_87 Depth=2
	ld.d	$a3, $a3, 0
	ld.d	$a1, $a3, 8
	ld.d	$a5, $a1, 24
	ld.w	$a4, $a5, 0
	beq	$a4, $a2, .LBB2_86
	b	.LBB2_87
	.p2align	4, , 16
.LBB2_89:                               # %for.end82.i
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a2, $a0, 56
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_90:                               # %while.cond.i.i
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	addi.d	$s1, $s1, 1
	add.d	$s0, $s0, $s2
	addi.d	$a2, $a2, 8
	bne	$a3, $a1, .LBB2_90
# %bb.91:                               # %clause_LiteralGetIndex.exit.i
                                        #   in Loop: Header=BB2_74 Depth=1
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s6, $a0, 8
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $s5, 0
	ld.w	$s2, $s6, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$s2, $a0, 8
	st.d	$fp, $a0, 0
	srai.d	$fp, $s0, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$fp, $a0, 8
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $s8, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_SearchMaxVar)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_SearchMaxVar)
	jirl	$ra, $ra, 0
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a1, $a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 56
	srai.d	$a1, $s0, 29
	ldx.d	$a0, $a0, $a1
	ld.d	$fp, $a0, 24
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB2_93
# %bb.92:                               # %if.then.i241.i
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$fp, $a0, 8
.LBB2_93:                               # %clause_LiteralAtom.exit244.i
                                        #   in Loop: Header=BB2_74 Depth=1
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$s2, $a0, %got_pc_lo12(cont_RIGHTCONTEXT)
	ld.d	$a0, $s0, 0
	ld.d	$a2, $s2, 0
	move	$a1, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_138
# %bb.94:                               # %if.end107.i
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $s2, 0
	addi.d	$a1, $sp, 168
	addi.d	$a3, $sp, 176
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	beqz	$a1, .LBB2_97
# %bb.95:                               # %while.body.preheader.i.i
                                        #   in Loop: Header=BB2_74 Depth=1
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB2_96:                               # %while.body.i245.i
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a4, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a4, $a4, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a1, $a4, 0
	ld.d	$a5, $a1, 24
	st.d	$a5, $a0, 0
	st.w	$zero, $a1, 20
	vst	$vr0, $a1, 4
	ld.d	$a4, $a4, 0
	ld.d	$a1, $a0, 0
	st.d	$zero, $a4, 24
	st.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	bnez	$a1, .LBB2_96
.LBB2_97:                               # %cont_Reset.exit.i
                                        #   in Loop: Header=BB2_74 Depth=1
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a1, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a2, $a0, %got_pc_lo12(cont_STACKPOINTER)
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a3, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ld.d	$a0, $sp, 176
	st.w	$zero, $a1, 0
	ori	$fp, $zero, 1
	st.w	$fp, $a2, 0
	ori	$a1, $zero, 2000
	st.w	$a1, $a3, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_SubstApply)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_SubstApply)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 64
	ld.w	$a1, $s6, 68
	ld.w	$a2, $s6, 72
	add.d	$a3, $a1, $a0
	add.w	$s4, $a3, $a2
	blt	$s4, $fp, .LBB2_112
# %bb.98:                               # %for.body117.preheader.i
                                        #   in Loop: Header=BB2_74 Depth=1
	move	$s2, $zero
	move	$s5, $zero
	move	$s7, $zero
	move	$s8, $zero
	addi.w	$s0, $a0, -1
	add.w	$a0, $s0, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$s1, $s1, 31, 0
	b	.LBB2_101
	.p2align	4, , 16
.LBB2_99:                               # %clause_GetLiteralAtom.exit258.i
                                        #   in Loop: Header=BB2_101 Depth=2
	ld.d	$fp, $sp, 168
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s5, $a0, 0
	move	$s5, $a0
.LBB2_100:                              # %for.inc144.i
                                        #   in Loop: Header=BB2_101 Depth=2
	addi.d	$s2, $s2, 1
	beq	$s2, $s4, .LBB2_113
.LBB2_101:                              # %for.body117.i
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bge	$s0, $s2, .LBB2_107
# %bb.102:                              # %if.else125.i
                                        #   in Loop: Header=BB2_101 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$a0, $s2, .LBB2_109
# %bb.103:                              # %if.else133.i
                                        #   in Loop: Header=BB2_101 Depth=2
	beq	$s2, $s1, .LBB2_100
# %bb.104:                              # %if.then136.i
                                        #   in Loop: Header=BB2_101 Depth=2
	ld.d	$a0, $s6, 56
	slli.d	$a1, $s2, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB2_106
# %bb.105:                              # %if.then.i.i279.i
                                        #   in Loop: Header=BB2_101 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB2_106:                              # %clause_GetLiteralAtom.exit282.i
                                        #   in Loop: Header=BB2_101 Depth=2
	ld.d	$fp, $sp, 168
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s8, $a0, 0
	move	$s8, $a0
	b	.LBB2_100
	.p2align	4, , 16
.LBB2_107:                              # %if.then120.i
                                        #   in Loop: Header=BB2_101 Depth=2
	ld.d	$a0, $s6, 56
	slli.d	$a1, $s2, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB2_99
# %bb.108:                              # %if.then.i.i255.i
                                        #   in Loop: Header=BB2_101 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB2_99
	.p2align	4, , 16
.LBB2_109:                              # %if.then128.i
                                        #   in Loop: Header=BB2_101 Depth=2
	ld.d	$a0, $s6, 56
	slli.d	$a1, $s2, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB2_111
# %bb.110:                              # %if.then.i.i267.i
                                        #   in Loop: Header=BB2_101 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB2_111:                              # %clause_GetLiteralAtom.exit270.i
                                        #   in Loop: Header=BB2_101 Depth=2
	ld.d	$fp, $sp, 168
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s7, $a0, 0
	move	$s7, $a0
	b	.LBB2_100
.LBB2_112:                              #   in Loop: Header=BB2_74 Depth=1
	move	$s8, $zero
	move	$s7, $zero
	move	$s5, $zero
.LBB2_113:                              # %for.end146.i
                                        #   in Loop: Header=BB2_74 Depth=1
	ld.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 64
	ld.w	$a1, $a2, 68
	ld.w	$a2, $a2, 72
	add.d	$a3, $a1, $a0
	add.w	$s0, $a3, $a2
	ori	$a2, $zero, 1
	blt	$s0, $a2, .LBB2_71
# %bb.114:                              # %for.body154.lr.ph.i
                                        #   in Loop: Header=BB2_74 Depth=1
	move	$s1, $zero
	addi.w	$s2, $a0, -1
	add.w	$s4, $s2, $a1
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	b	.LBB2_117
	.p2align	4, , 16
.LBB2_115:                              # %clause_GetLiteralAtom.exit302.i
                                        #   in Loop: Header=BB2_117 Depth=2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s5, $a0, 0
	move	$s5, $a0
.LBB2_116:                              # %for.inc174.i
                                        #   in Loop: Header=BB2_117 Depth=2
	addi.d	$s1, $s1, 1
	beq	$s1, $s0, .LBB2_72
.LBB2_117:                              # %for.body154.i
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a0, $s1, 3
	bge	$s2, $s1, .LBB2_122
# %bb.118:                              # %if.else161.i
                                        #   in Loop: Header=BB2_117 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 56
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bge	$s4, $s1, .LBB2_124
# %bb.119:                              # %if.else168.i
                                        #   in Loop: Header=BB2_117 Depth=2
	bne	$a1, $a2, .LBB2_121
# %bb.120:                              # %if.then.i.i323.i
                                        #   in Loop: Header=BB2_117 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB2_121:                              # %clause_GetLiteralAtom.exit326.i
                                        #   in Loop: Header=BB2_117 Depth=2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s8, $a0, 0
	move	$s8, $a0
	b	.LBB2_116
	.p2align	4, , 16
.LBB2_122:                              # %if.then157.i
                                        #   in Loop: Header=BB2_117 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 56
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB2_115
# %bb.123:                              # %if.then.i.i299.i
                                        #   in Loop: Header=BB2_117 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB2_115
	.p2align	4, , 16
.LBB2_124:                              # %if.then164.i
                                        #   in Loop: Header=BB2_117 Depth=2
	bne	$a1, $a2, .LBB2_126
# %bb.125:                              # %if.then.i.i311.i
                                        #   in Loop: Header=BB2_117 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB2_126:                              # %clause_GetLiteralAtom.exit314.i
                                        #   in Loop: Header=BB2_117 Depth=2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s7, $a0, 0
	move	$s7, $a0
	b	.LBB2_116
.LBB2_127:                              # %for.end180.i
	move	$a0, $s5
	move	$a1, $s7
	move	$a2, $s8
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Create)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s5, .LBB2_130
# %bb.128:                              # %while.body.i330.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB2_129:                              # %while.body.i330.i
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
	bnez	$a5, .LBB2_129
.LBB2_130:                              # %list_Delete.exit337.i
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	beqz	$s7, .LBB2_133
# %bb.131:                              # %while.body.i339.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB2_132:                              # %while.body.i339.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s7, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s7, 0
	ld.d	$a3, $a1, 128
	st.d	$s7, $a3, 0
	move	$s7, $a6
	bnez	$a6, .LBB2_132
.LBB2_133:                              # %list_Delete.exit346.i
	beqz	$s8, .LBB2_136
# %bb.134:                              # %while.body.i348.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB2_135:                              # %while.body.i348.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s8, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s8, 0
	ld.d	$a3, $a1, 128
	st.d	$s8, $a3, 0
	move	$s8, $a6
	bnez	$a6, .LBB2_135
.LBB2_136:                              # %inf_BuildConstraintHyperResolvent.exit
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	slti	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	st.w	$a1, $s1, 76
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 8
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_SetSplitDataFromList)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
.LBB2_137:                              # %return
	move	$a0, $s7
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB2_138:                              # %if.then103.i
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 258
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_DumpCore)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	inf_ConstraintHyperResolvents, .Lfunc_end2-inf_ConstraintHyperResolvents
                                        # -- End function
	.globl	inf_ForwardSortResolution       # -- Begin function inf_ForwardSortResolution
	.p2align	5
	.type	inf_ForwardSortResolution,@function
inf_ForwardSortResolution:              # @inf_ForwardSortResolution
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
	ori	$a6, $zero, 1
	blt	$a0, $a6, .LBB3_7
# %bb.1:                                # %while.body.lr.ph
	pcalau12i	$a6, %got_pc_hi20(fol_NOT)
	ld.d	$s5, $a6, %got_pc_lo12(fol_NOT)
	ld.d	$a6, $fp, 56
	ld.w	$a7, $s5, 0
	move	$s6, $zero
	addi.w	$s1, $a0, -1
	.p2align	4, , 16
.LBB3_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $s6
	slli.d	$t0, $s6, 3
	ldx.d	$t0, $a6, $t0
	ld.d	$t0, $t0, 24
	ld.w	$t1, $t0, 0
	bne	$t1, $a7, .LBB3_4
# %bb.3:                                # %if.then.i.i
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.d	$t0, $t0, 16
	ld.d	$t0, $t0, 8
.LBB3_4:                                # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.d	$t0, $t0, 16
	ld.d	$t0, $t0, 8
	ld.w	$s4, $t0, 0
	slt	$t0, $zero, $s4
	add.w	$s6, $s2, $t0
	bge	$s6, $a0, .LBB3_6
# %bb.5:                                # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB3_2 Depth=1
	bgtz	$s4, .LBB3_2
.LBB3_6:                                # %while.end
	blez	$s4, .LBB3_9
.LBB3_7:
	move	$a0, $zero
.LBB3_8:                                # %cleanup
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
.LBB3_9:                                # %if.end10
	ld.d	$a0, $fp, 56
	slli.d	$a6, $s6, 3
	ldx.d	$a0, $a0, $a6
	ld.d	$s8, $a0, 24
	ld.w	$a0, $s8, 0
	ld.w	$a6, $s5, 0
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $a3
	move	$s3, $a1
	bne	$a0, $a6, .LBB3_11
# %bb.10:                               # %if.then.i.i32
	ld.d	$a0, $s8, 16
	ld.d	$s8, $a0, 8
.LBB3_11:                               # %clause_GetLiteralAtom.exit35
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s6, $a0, 8
	st.d	$zero, $a0, 0
	bge	$s6, $s1, .LBB3_18
# %bb.12:                               # %for.body.lr.ph
	slt	$a0, $zero, $s4
	bstrpick.d	$s1, $s1, 31, 0
	ld.w	$a1, $s5, 0
	add.d	$a0, $s2, $a0
	slli.d	$a0, $a0, 3
	addi.d	$s2, $a0, 8
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_13:                               # %for.inc
                                        #   in Loop: Header=BB3_14 Depth=1
	addi.d	$s2, $s2, 8
	beq	$s1, $s6, .LBB3_18
.LBB3_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 24
	ld.w	$a2, $a0, 0
	bne	$a2, $a1, .LBB3_16
# %bb.15:                               # %if.then.i.i42
                                        #   in Loop: Header=BB3_14 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB3_16:                               # %clause_GetLiteralAtom.exit45
                                        #   in Loop: Header=BB3_14 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a2, $s8, 16
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	addi.d	$s6, $s6, 1
	bne	$a0, $a2, .LBB3_13
# %bb.17:                               # %if.then20
                                        #   in Loop: Header=BB3_14 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 0
	ld.w	$a1, $s5, 0
	st.d	$s6, $a0, 8
	move	$s0, $a0
	b	.LBB3_13
.LBB3_18:                               # %for.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$s7, .LBB3_20
# %bb.19:                               # %lor.lhs.false
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $s3
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_SubsortPrecheck)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_21
.LBB3_20:                               # %if.then29
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $s5
	move	$a4, $zero
	move	$a5, $s3
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ConstraintHyperResolvents)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB3_22
	b	.LBB3_24
.LBB3_21:
	move	$a0, $zero
	beqz	$s5, .LBB3_24
.LBB3_22:                               # %while.body.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB3_23:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s5, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s5, 0
	ld.d	$a3, $a1, 128
	st.d	$s5, $a3, 0
	move	$s5, $a6
	bnez	$a6, .LBB3_23
.LBB3_24:                               # %list_Delete.exit
	beqz	$s0, .LBB3_8
# %bb.25:                               # %while.body.i47.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB3_26:                               # %while.body.i47
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s0, 0
	ld.d	$a3, $a1, 128
	st.d	$s0, $a3, 0
	move	$s0, $a6
	bnez	$a6, .LBB3_26
	b	.LBB3_8
.Lfunc_end3:
	.size	inf_ForwardSortResolution, .Lfunc_end3-inf_ForwardSortResolution
                                        # -- End function
	.globl	inf_BackwardEmptySort           # -- Begin function inf_BackwardEmptySort
	.p2align	5
	.type	inf_BackwardEmptySort,@function
inf_BackwardEmptySort:                  # @inf_BackwardEmptySort
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	move	$s7, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a6, $s7, 68
	ld.w	$a7, $s7, 72
	add.w	$t0, $a6, $a0
	add.d	$t1, $t0, $a7
	addi.w	$t1, $t1, -1
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	bge	$t1, $t0, .LBB4_3
# %bb.1:
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
.LBB4_2:                                # %for.end114
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB4_3:                                # %for.body.lr.ph
	move	$s5, $a5
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPESTATBITS)
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.w	$a1, $a2, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	add.d	$fp, $a0, $a6
	add.w	$s0, $t0, $a7
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	addi.w	$s1, $zero, -1
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_SIGNATURE)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_4:                                # %if.end111
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$fp, $fp, 1
	addi.w	$a0, $fp, 0
	beq	$s0, $a0, .LBB4_2
.LBB4_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
                                        #       Child Loop BB4_23 Depth 3
                                        #         Child Loop BB4_24 Depth 4
                                        #         Child Loop BB4_31 Depth 4
                                        #         Child Loop BB4_34 Depth 4
                                        #         Child Loop BB4_43 Depth 4
                                        #         Child Loop BB4_55 Depth 4
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_62 Depth 4
                                        #         Child Loop BB4_64 Depth 4
                                        #         Child Loop BB4_67 Depth 4
	ld.d	$a0, $s7, 56
	slli.d	$a4, $fp, 3
	ldx.d	$a5, $a0, $a4
	ld.d	$a3, $a5, 24
	ld.w	$a0, $a3, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	ld.wu	$a1, $a5, 0
	andi	$a1, $a1, 2
	bne	$a0, $a2, .LBB4_8
# %bb.6:                                # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB4_5 Depth=1
	beqz	$a1, .LBB4_4
# %bb.7:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $a3, 16
	ld.d	$a3, $a0, 8
	ld.w	$a0, $a3, 0
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_8:                                # %clause_LiteralAtom.exit.thread
                                        #   in Loop: Header=BB4_5 Depth=1
	beqz	$a1, .LBB4_4
.LBB4_9:                                # %clause_LiteralPredicate.exit.i
                                        #   in Loop: Header=BB4_5 Depth=1
	blt	$s1, $a0, .LBB4_4
# %bb.10:                               # %symbol_IsPredicate.exit.i
                                        #   in Loop: Header=BB4_5 Depth=1
	sub.w	$a0, $zero, $a0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	and	$a1, $a1, $a0
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB4_4
# %bb.11:                               # %clause_LiteralIsSort.exit
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	srl.w	$a0, $a0, $a2
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 16
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_4
# %bb.12:                               # %if.then
                                        #   in Loop: Header=BB4_5 Depth=1
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a1, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a2, $a0, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_4
# %bb.13:                               # %for.body14.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$s4, $a0
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_14:                               # %for.inc108
                                        #   in Loop: Header=BB4_15 Depth=2
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s4, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 128
	st.d	$s4, $a0, 0
	move	$s4, $a5
	beqz	$a5, .LBB4_4
.LBB4_15:                               # %for.body14
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_23 Depth 3
                                        #         Child Loop BB4_24 Depth 4
                                        #         Child Loop BB4_31 Depth 4
                                        #         Child Loop BB4_34 Depth 4
                                        #         Child Loop BB4_43 Depth 4
                                        #         Child Loop BB4_55 Depth 4
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_62 Depth 4
                                        #         Child Loop BB4_64 Depth 4
                                        #         Child Loop BB4_67 Depth 4
	ld.d	$a0, $s4, 8
	ld.w	$a1, $a0, 0
	blt	$s1, $a1, .LBB4_14
# %bb.16:                               # %term_IsAtom.exit
                                        #   in Loop: Header=BB4_15 Depth=2
	sub.w	$a1, $zero, $a1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	and	$a1, $a2, $a1
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB4_14
# %bb.17:                               # %land.lhs.true18
                                        #   in Loop: Header=BB4_15 Depth=2
	ld.d	$a1, $a0, 16
	ld.d	$a1, $a1, 8
	ld.w	$a1, $a1, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB4_14
# %bb.18:                               # %if.then23
                                        #   in Loop: Header=BB4_15 Depth=2
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_14
# %bb.19:                               # %for.body30.preheader
                                        #   in Loop: Header=BB4_15 Depth=2
	move	$s8, $a0
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	b	.LBB4_23
.LBB4_20:                               #   in Loop: Header=BB4_23 Depth=3
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
.LBB4_21:                               # %if.end103
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_22:                               # %if.end103
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.d	$s8, $s8, 0
	beqz	$s8, .LBB4_14
.LBB4_23:                               # %for.body30
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_24 Depth 4
                                        #         Child Loop BB4_31 Depth 4
                                        #         Child Loop BB4_34 Depth 4
                                        #         Child Loop BB4_43 Depth 4
                                        #         Child Loop BB4_55 Depth 4
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_62 Depth 4
                                        #         Child Loop BB4_64 Depth 4
                                        #         Child Loop BB4_67 Depth 4
	ld.d	$s2, $s8, 8
	ld.d	$s3, $s2, 16
	ld.d	$a1, $s3, 56
	move	$a0, $s1
	.p2align	4, , 16
.LBB4_24:                               # %while.cond.i
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a1, 0
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a2, $s2, .LBB4_24
# %bb.25:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.w	$a1, $s3, 64
	bge	$a0, $a1, .LBB4_22
# %bb.26:                               # %land.lhs.true36
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.bu	$a0, $s3, 48
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_22
# %bb.27:                               # %land.lhs.true39
                                        #   in Loop: Header=BB4_23 Depth=3
	move	$a0, $s3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(clause_HasOnlyVarsInConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_22
# %bb.28:                               # %if.then42
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.d	$s0, $s2, 24
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB4_30
# %bb.29:                               # %if.then.i88
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.d	$a0, $s0, 16
	ld.d	$s0, $a0, 8
.LBB4_30:                               # %clause_LiteralAtom.exit91
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s2, 16
	ld.wu	$s6, $s3, 64
	ld.w	$s1, $a0, 0
	ld.d	$a0, $a1, 56
	addi.w	$a1, $s6, 0
	addi.w	$fp, $zero, -1
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_31:                               # %while.cond.i95
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a0, 0
	addi.d	$fp, $fp, 1
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
	add.d	$s4, $s4, $a3
	addi.d	$a0, $a0, 8
	bne	$a2, $s2, .LBB4_31
# %bb.32:                               # %clause_LiteralGetIndex.exit100
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.w	$a0, $s3, 68
	ld.w	$a2, $s3, 72
	addi.w	$s2, $a1, -1
	add.d	$a0, $a0, $s2
	add.w	$s5, $a0, $a2
	blt	$s5, $a1, .LBB4_40
# %bb.33:                               # %for.body53.preheader
                                        #   in Loop: Header=BB4_23 Depth=3
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	slli.d	$s2, $a1, 3
	.p2align	4, , 16
.LBB4_34:                               # %for.body53
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s3, 56
	ldx.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 24
	ld.w	$a2, $a0, 0
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	move	$s7, $a1
	bne	$a2, $a3, .LBB4_36
# %bb.35:                               # %if.then.i.i
                                        #   in Loop: Header=BB4_34 Depth=4
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB4_36:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB4_34 Depth=4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_38
# %bb.37:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB4_34 Depth=4
	addi.d	$a1, $s7, 1
	addi.d	$s2, $s2, 8
	blt	$s7, $s5, .LBB4_34
.LBB4_38:                               # %for.end
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_40
# %bb.39:                               #   in Loop: Header=BB4_23 Depth=3
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB4_21
.LBB4_40:                               # %if.then59
                                        #   in Loop: Header=BB4_23 Depth=3
	srai.d	$s1, $s4, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
	bltz	$s2, .LBB4_48
# %bb.41:                               # %for.body66.preheader
                                        #   in Loop: Header=BB4_23 Depth=3
	move	$s1, $zero
	move	$s2, $zero
	bstrpick.d	$s5, $fp, 31, 0
	b	.LBB4_43
	.p2align	4, , 16
.LBB4_42:                               # %if.end81
                                        #   in Loop: Header=BB4_43 Depth=4
	addi.d	$s1, $s1, 1
	beq	$s1, $s6, .LBB4_49
.LBB4_43:                               # %for.body66
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$s1, $s5, .LBB4_42
# %bb.44:                               # %land.lhs.true70
                                        #   in Loop: Header=BB4_43 Depth=4
	ld.d	$a0, $s3, 56
	slli.d	$a1, $s1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB4_46
# %bb.45:                               # %if.then.i114
                                        #   in Loop: Header=BB4_43 Depth=4
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB4_46:                               # %clause_LiteralAtom.exit117
                                        #   in Loop: Header=BB4_43 Depth=4
	ld.d	$a0, $a0, 16
	ld.d	$a1, $s0, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	bne	$a0, $a1, .LBB4_42
# %bb.47:                               # %if.then76
                                        #   in Loop: Header=BB4_43 Depth=4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $a0, 8
	st.d	$s4, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s2, $a0, 0
	move	$s4, $fp
	move	$s2, $a0
	b	.LBB4_42
.LBB4_48:                               #   in Loop: Header=BB4_23 Depth=3
	move	$s2, $zero
.LBB4_49:                               # %for.end84
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_51
# %bb.50:                               # %lor.lhs.false
                                        #   in Loop: Header=BB4_23 Depth=3
	move	$a0, $s3
	move	$a1, $s4
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_SubsortPrecheck)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_69
.LBB4_51:                               # %if.then88
                                        #   in Loop: Header=BB4_23 Depth=3
	move	$a0, $s7
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s3, 52
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $s6, 8
	st.d	$zero, $s6, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 56
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$fp, $a0, 24
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB4_53
# %bb.52:                               # %if.then.i.i128
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.d	$a0, $fp, 16
	ld.d	$fp, $a0, 8
.LBB4_53:                               # %clause_GetLiteralAtom.exit131
                                        #   in Loop: Header=BB4_23 Depth=3
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s7, 0
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $s5, 0
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $s5, 0
	addi.d	$a1, $sp, 208
	addi.d	$a3, $sp, 200
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	beqz	$a1, .LBB4_56
# %bb.54:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB4_23 Depth=3
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB4_55:                               # %while.body.i
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a4, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a4, $a4, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a1, $a4, 0
	ld.d	$a5, $a1, 24
	st.d	$a5, $a0, 0
	st.w	$zero, $a1, 20
	vst	$vr0, $a1, 4
	ld.d	$a4, $a4, 0
	ld.d	$a1, $a0, 0
	st.d	$zero, $a4, 24
	st.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	bnez	$a1, .LBB4_55
.LBB4_56:                               # %cont_Reset.exit
                                        #   in Loop: Header=BB4_23 Depth=3
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a1, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a2, $a0, %got_pc_lo12(cont_STACKPOINTER)
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a3, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ld.d	$a0, $sp, 200
	st.w	$zero, $a1, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a2, 0
	ori	$a1, $zero, 2000
	st.w	$a1, $a3, 0
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 208
	move	$a0, $s3
	move	$a1, $s4
	move	$a3, $s2
	move	$a4, $s6
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	move	$a7, $s5
	pcaddu18i	$ra, %call36(inf_ConstraintHyperResolvents)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB4_61
# %bb.57:                               # %if.end.i
                                        #   in Loop: Header=BB4_23 Depth=3
	move	$s0, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB4_62
# %bb.58:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB4_23 Depth=3
	move	$a1, $s0
	.p2align	4, , 16
.LBB4_59:                               # %for.cond.i
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB4_59
# %bb.60:                               # %for.end.i
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	b	.LBB4_62
.LBB4_61:                               #   in Loop: Header=BB4_23 Depth=3
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_62:                               # %while.body.i134
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
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
	bnez	$a5, .LBB4_62
# %bb.63:                               # %list_Delete.exit
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	beqz	$s4, .LBB4_65
	.p2align	4, , 16
.LBB4_64:                               # %while.body.i144
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s4, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 128
	st.d	$s4, $a0, 0
	move	$s4, $a5
	bnez	$a5, .LBB4_64
.LBB4_65:                               # %list_Delete.exit151
                                        #   in Loop: Header=BB4_23 Depth=3
	beqz	$s2, .LBB4_20
# %bb.66:                               # %while.body.i153.preheader
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_67:                               # %while.body.i153
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s2, 0
	ld.d	$a0, $a0, 128
	st.d	$s2, $a0, 0
	move	$s2, $a5
	bnez	$a5, .LBB4_67
# %bb.68:                               #   in Loop: Header=BB4_23 Depth=3
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB4_22
.LBB4_69:                               #   in Loop: Header=BB4_23 Depth=3
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	bnez	$s4, .LBB4_64
	b	.LBB4_65
.Lfunc_end4:
	.size	inf_BackwardEmptySort, .Lfunc_end4-inf_BackwardEmptySort
                                        # -- End function
	.globl	inf_ForwardEmptySort            # -- Begin function inf_ForwardEmptySort
	.p2align	5
	.type	inf_ForwardEmptySort,@function
inf_ForwardEmptySort:                   # @inf_ForwardEmptySort
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
	move	$s1, $a0
	ld.w	$fp, $a0, 64
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB5_15
# %bb.1:                                # %while.body.lr.ph
	move	$s2, $a1
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s6, $a0, %got_pc_lo12(fol_NOT)
	move	$s7, $zero
	addi.w	$s8, $fp, -1
	.p2align	4, , 16
.LBB5_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	ld.d	$a0, $s1, 56
	slli.d	$a1, $s7, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s6, 0
	bne	$a1, $a2, .LBB5_4
# %bb.3:                                # %if.then.i.i
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB5_4:                                # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$s5, $a0, 0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB5_12
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.w	$s0, $s1, 64
	ld.w	$a0, $s1, 68
	ld.w	$a1, $s1, 72
	add.d	$a0, $s0, $a0
	add.d	$a0, $a0, $a1
	addi.w	$s3, $a0, -1
	blt	$s3, $s0, .LBB5_16
# %bb.6:                                # %for.body.preheader
                                        #   in Loop: Header=BB5_2 Depth=1
	slli.d	$s4, $s0, 3
	.p2align	4, , 16
.LBB5_7:                                # %for.body
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 56
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s6, 0
	bne	$a1, $a2, .LBB5_9
# %bb.8:                                # %if.then.i.i47
                                        #   in Loop: Header=BB5_7 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB5_9:                                # %clause_GetLiteralAtom.exit50
                                        #   in Loop: Header=BB5_7 Depth=2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	bge	$s0, $s3, .LBB5_11
# %bb.10:                               # %clause_GetLiteralAtom.exit50
                                        #   in Loop: Header=BB5_7 Depth=2
	addi.d	$s0, $s0, 1
	addi.d	$s4, $s4, 8
	beqz	$a0, .LBB5_7
.LBB5_11:                               # %if.end19.loopexit
                                        #   in Loop: Header=BB5_2 Depth=1
	sltu	$a0, $zero, $a0
.LBB5_12:                               # %if.end19
                                        #   in Loop: Header=BB5_2 Depth=1
	add.w	$s7, $s7, $a0
	bge	$s7, $fp, .LBB5_14
# %bb.13:                               # %if.end19
                                        #   in Loop: Header=BB5_2 Depth=1
	bnez	$a0, .LBB5_2
.LBB5_14:                               # %while.end
	beqz	$a0, .LBB5_16
.LBB5_15:
	move	$a0, $zero
	b	.LBB5_34
.LBB5_16:                               # %if.end27
	ld.d	$a0, $s1, 56
	slli.d	$s0, $s7, 3
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s6, 0
	bne	$a1, $a2, .LBB5_18
# %bb.17:                               # %if.then.i.i57
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB5_18:                               # %clause_GetLiteralAtom.exit60
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$fp, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s7, $a0, 8
	st.d	$zero, $a0, 0
	bge	$s7, $s8, .LBB5_25
# %bb.19:                               # %for.body35.preheader
	ld.w	$a1, $s6, 0
	bstrpick.d	$s8, $s8, 31, 0
	addi.d	$s0, $s0, 8
	b	.LBB5_21
	.p2align	4, , 16
.LBB5_20:                               # %if.end44
                                        #   in Loop: Header=BB5_21 Depth=1
	addi.d	$s0, $s0, 8
	beq	$s8, $s7, .LBB5_25
.LBB5_21:                               # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	ld.w	$a2, $a0, 0
	bne	$a2, $a1, .LBB5_23
# %bb.22:                               # %if.then.i.i67
                                        #   in Loop: Header=BB5_21 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB5_23:                               # %clause_GetLiteralAtom.exit70
                                        #   in Loop: Header=BB5_21 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	addi.d	$s7, $s7, 1
	bne	$a0, $fp, .LBB5_20
# %bb.24:                               # %if.then41
                                        #   in Loop: Header=BB5_21 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 0
	ld.w	$a1, $s6, 0
	st.d	$s7, $a0, 8
	move	$s5, $a0
	b	.LBB5_20
.LBB5_25:                               # %for.end47
	move	$a0, $s5
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_27
# %bb.26:                               # %lor.lhs.false
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $zero
	move	$a3, $s2
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_SubsortPrecheck)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_28
.LBB5_27:                               # %if.then52
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $zero
	move	$a3, $s6
	move	$a4, $zero
	move	$a5, $s2
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ConstraintHyperResolvents)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB5_29
	b	.LBB5_31
.LBB5_28:
	move	$a0, $zero
	beqz	$s6, .LBB5_31
.LBB5_29:                               # %while.body.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB5_30:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s6, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s6, 0
	ld.d	$a3, $a1, 128
	st.d	$s6, $a3, 0
	move	$s6, $a6
	bnez	$a6, .LBB5_30
.LBB5_31:                               # %list_Delete.exit
	beqz	$s5, .LBB5_34
# %bb.32:                               # %while.body.i72.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB5_33:                               # %while.body.i72
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s5, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s5, 0
	ld.d	$a3, $a1, 128
	st.d	$s5, $a3, 0
	move	$s5, $a6
	bnez	$a6, .LBB5_33
.LBB5_34:                               # %cleanup
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
.Lfunc_end5:
	.size	inf_ForwardEmptySort, .Lfunc_end5-inf_ForwardEmptySort
                                        # -- End function
	.globl	inf_ForwardWeakening            # -- Begin function inf_ForwardWeakening
	.p2align	5
	.type	inf_ForwardWeakening,@function
inf_ForwardWeakening:                   # @inf_ForwardWeakening
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
	ld.w	$fp, $a0, 64
	ori	$s4, $zero, 1
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	blt	$fp, $s4, .LBB6_49
# %bb.1:                                # %for.body.lr.ph
	move	$a5, $a0
	move	$s2, $a2
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	move	$s1, $zero
	move	$s7, $zero
	addi.d	$a0, $fp, -1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB6_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_12 Depth 2
                                        #       Child Loop BB6_18 Depth 3
                                        #     Child Loop BB6_25 Depth 2
                                        #     Child Loop BB6_31 Depth 2
                                        #       Child Loop BB6_36 Depth 3
                                        #     Child Loop BB6_41 Depth 2
                                        #     Child Loop BB6_44 Depth 2
                                        #     Child Loop BB6_45 Depth 2
	ld.d	$a0, $a5, 56
	slli.d	$s0, $s1, 3
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s3, 0
	move	$a1, $a0
	bne	$a2, $a3, .LBB6_4
# %bb.3:                                # %if.then.i.i
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.d	$a1, $a0, 16
	ld.d	$a1, $a1, 8
.LBB6_4:                                # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 8
	ld.w	$s6, $a1, 0
	bgtz	$s6, .LBB6_47
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_GetForwardPartnerLits)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_50
# %bb.6:                                # %if.then11
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$s5, $a0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$s0, $a0, 24
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB6_8
# %bb.7:                                # %if.then.i.i45
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.d	$a0, $s0, 16
	ld.d	$s0, $a0, 8
.LBB6_8:                                # %clause_GetLiteralAtom.exit48
                                        #   in Loop: Header=BB6_2 Depth=1
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bgeu	$s1, $a0, .LBB6_21
# %bb.9:                                # %for.body17.lr.ph
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$s8, $zero
	move	$s7, $zero
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	b	.LBB6_12
	.p2align	4, , 16
.LBB6_10:                               #   in Loop: Header=BB6_12 Depth=2
	move	$s4, $s7
	move	$a0, $s8
.LBB6_11:                               # %if.end
                                        #   in Loop: Header=BB6_12 Depth=2
	addi.d	$s6, $s6, -1
	move	$s8, $a0
	move	$s7, $s4
	bge	$s1, $s6, .LBB6_22
.LBB6_12:                               # %for.body17
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_18 Depth 3
	ld.d	$a0, $a3, 56
	slli.d	$a1, $s6, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$fp, $a0, 24
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB6_14
# %bb.13:                               # %if.then.i.i55
                                        #   in Loop: Header=BB6_12 Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$fp, $a0, 8
.LBB6_14:                               # %clause_GetLiteralAtom.exit58
                                        #   in Loop: Header=BB6_12 Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s0, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	bne	$a0, $a1, .LBB6_10
# %bb.15:                               # %if.then22
                                        #   in Loop: Header=BB6_12 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s6, $a0, 8
	st.d	$s7, $a0, 0
	ld.w	$a1, $fp, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_20
# %bb.16:                               # %if.end.i.i
                                        #   in Loop: Header=BB6_12 Depth=2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	beqz	$s8, .LBB6_11
# %bb.17:                               # %for.cond.i.i.preheader
                                        #   in Loop: Header=BB6_12 Depth=2
	move	$a2, $a0
	.p2align	4, , 16
.LBB6_18:                               # %for.cond.i.i
                                        #   Parent Loop BB6_2 Depth=1
                                        #     Parent Loop BB6_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB6_18
# %bb.19:                               # %for.end.i.i
                                        #   in Loop: Header=BB6_12 Depth=2
	st.d	$s8, $a1, 0
	b	.LBB6_11
.LBB6_20:                               #   in Loop: Header=BB6_12 Depth=2
	move	$a0, $s8
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	b	.LBB6_11
.LBB6_21:                               #   in Loop: Header=BB6_2 Depth=1
	move	$s4, $zero
	move	$a0, $zero
.LBB6_22:                               # %for.end
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s1, $a0, 8
	st.d	$s4, $a0, 0
	ld.w	$a1, $s0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_27
# %bb.23:                               # %if.end.i.i64
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$s7, $a0
	ori	$s4, $zero, 1
	beqz	$fp, .LBB6_28
# %bb.24:                               # %for.cond.i.i66.preheader
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$a1, $s7
	.p2align	4, , 16
.LBB6_25:                               # %for.cond.i.i66
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB6_25
# %bb.26:                               # %for.end.i.i70
                                        #   in Loop: Header=BB6_2 Depth=1
	st.d	$fp, $a0, 0
	b	.LBB6_28
.LBB6_27:                               #   in Loop: Header=BB6_2 Depth=1
	move	$s7, $fp
	ori	$s4, $zero, 1
.LBB6_28:                               # %sort_Intersect.exit72
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	move	$s8, $zero
	move	$s0, $s5
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	b	.LBB6_31
	.p2align	4, , 16
.LBB6_29:                               # %sort_Intersect.exit.i
                                        #   in Loop: Header=BB6_31 Depth=2
	move	$s8, $a0
.LBB6_30:                               # %sort_Intersect.exit.i
                                        #   in Loop: Header=BB6_31 Depth=2
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB6_38
.LBB6_31:                               # %for.body.i
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_36 Depth 3
	ld.d	$a0, $s0, 8
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s3, 0
	bne	$a1, $a2, .LBB6_33
# %bb.32:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB6_31 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB6_33:                               # %clause_LiteralPredicate.exit.i
                                        #   in Loop: Header=BB6_31 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_30
# %bb.34:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB6_31 Depth=2
	beqz	$s8, .LBB6_29
# %bb.35:                               # %for.cond.i.i.i.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	move	$a2, $a0
	.p2align	4, , 16
.LBB6_36:                               # %for.cond.i.i.i
                                        #   Parent Loop BB6_2 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB6_36
# %bb.37:                               # %for.end.i.i.i
                                        #   in Loop: Header=BB6_31 Depth=2
	st.d	$s8, $a1, 0
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_38:                               # %inf_GetSortFromLits.exit
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(sort_TheoryComputeAllSubsortHits)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(sort_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(sort_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $zero
	move	$a4, $s0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_InternWeakening)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_43
# %bb.39:                               # %if.end.i
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$s7, $a0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	beqz	$a3, .LBB6_44
# %bb.40:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$a2, $s7
	.p2align	4, , 16
.LBB6_41:                               # %for.cond.i
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB6_41
# %bb.42:                               # %for.end.i
                                        #   in Loop: Header=BB6_2 Depth=1
	st.d	$a3, $a1, 0
	b	.LBB6_44
.LBB6_43:                               #   in Loop: Header=BB6_2 Depth=1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_44:                               # %while.body.i
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a3, $a1, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s6, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s6, 0
	ld.d	$a3, $a1, 128
	st.d	$s6, $a3, 0
	move	$s6, $a6
	bnez	$a6, .LBB6_44
	.p2align	4, , 16
.LBB6_45:                               # %while.body.i76
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s5, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s5, 0
	ld.d	$a3, $a1, 128
	st.d	$s5, $a3, 0
	move	$s5, $a6
	bnez	$a6, .LBB6_45
# %bb.46:                               #   in Loop: Header=BB6_2 Depth=1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
.LBB6_47:                               # %for.inc39
                                        #   in Loop: Header=BB6_2 Depth=1
	blt	$s6, $s4, .LBB6_50
# %bb.48:                               # %for.inc39
                                        #   in Loop: Header=BB6_2 Depth=1
	addi.d	$s1, $s1, 1
	bltu	$s1, $fp, .LBB6_2
	b	.LBB6_50
.LBB6_49:
	move	$s7, $zero
.LBB6_50:                               # %for.end40
	move	$a0, $s7
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
.Lfunc_end6:
	.size	inf_ForwardWeakening, .Lfunc_end6-inf_ForwardWeakening
                                        # -- End function
	.p2align	5                               # -- Begin function inf_GetForwardPartnerLits
	.type	inf_GetForwardPartnerLits,@function
inf_GetForwardPartnerLits:              # @inf_GetForwardPartnerLits
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
	pcalau12i	$a2, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a2, $a2, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a3, %got_pc_hi20(cont_RIGHTCONTEXT)
	pcalau12i	$a4, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a4, %got_pc_lo12(fol_NOT)
	ld.d	$a3, $a3, %got_pc_lo12(cont_RIGHTCONTEXT)
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a0, 0
	ld.w	$a6, $s2, 0
	ld.d	$a2, $a3, 0
	bne	$a5, $a6, .LBB7_2
# %bb.1:                                # %if.then.i
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB7_2:                                # %clause_LiteralAtom.exit
	ld.d	$a0, $a0, 16
	ld.d	$a3, $a0, 8
	move	$a0, $a4
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_22
# %bb.3:                                # %for.body.lr.ph
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	ld.w	$s3, $a0, 0
	ld.w	$a0, $a1, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s5, $a0, %got_pc_lo12(symbol_SIGNATURE)
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a0, $a0, %got_pc_lo12(memory_FREEDBYTES)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.w	$s8, $zero, -1
	ori	$s6, $zero, 2
	ori	$s7, $zero, 1
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_4:                                # %for.inc53
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 128
	ld.w	$a1, $a0, 32
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a5, 0
	ld.d	$a3, $fp, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $a4, 128
	st.d	$fp, $a0, 0
	move	$fp, $a3
	beqz	$a3, .LBB7_23
.LBB7_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #       Child Loop BB7_15 Depth 3
	ld.d	$a0, $fp, 8
	ld.w	$a1, $a0, 0
	blt	$s8, $a1, .LBB7_7
# %bb.6:                                # %term_IsAtom.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	sub.w	$a1, $zero, $a1
	and	$a1, $s3, $a1
	beq	$a1, $s6, .LBB7_4
.LBB7_7:                                # %if.then
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$s0, $a0, 8
	bnez	$s0, .LBB7_9
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_8:                                # %if.end48
                                        #   in Loop: Header=BB7_9 Depth=2
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB7_4
.LBB7_9:                                # %for.body16
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_15 Depth 3
	ld.d	$a0, $s0, 8
	ld.w	$a1, $a0, 0
	blt	$s8, $a1, .LBB7_8
# %bb.10:                               # %term_IsAtom.exit.i
                                        #   in Loop: Header=BB7_9 Depth=2
	sub.w	$a1, $zero, $a1
	and	$a2, $s3, $a1
	bne	$a2, $s6, .LBB7_8
# %bb.11:                               # %term_IsDeclaration.exit
                                        #   in Loop: Header=BB7_9 Depth=2
	ld.d	$a2, $s5, 0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	srl.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 16
	bne	$a1, $s7, .LBB7_8
# %bb.12:                               # %if.then20
                                        #   in Loop: Header=BB7_9 Depth=2
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_8
# %bb.13:                               # %for.body26.preheader
                                        #   in Loop: Header=BB7_9 Depth=2
	move	$s1, $a0
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_14:                               # %if.end
                                        #   in Loop: Header=BB7_15 Depth=3
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB7_8
.LBB7_15:                               # %for.body26
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s1, 8
	ld.d	$a0, $s4, 24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s2, 0
	beq	$a0, $a1, .LBB7_14
# %bb.16:                               # %land.lhs.true
                                        #   in Loop: Header=BB7_15 Depth=3
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB7_14
# %bb.17:                               # %land.lhs.true33
                                        #   in Loop: Header=BB7_15 Depth=3
	ld.d	$a0, $s4, 16
	ld.bu	$a1, $a0, 48
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_14
# %bb.18:                               # %land.lhs.true36
                                        #   in Loop: Header=BB7_15 Depth=3
	ld.d	$a1, $fp, 8
	ld.w	$a1, $a1, 0
	blt	$a1, $s7, .LBB7_20
# %bb.19:                               # %lor.lhs.false
                                        #   in Loop: Header=BB7_15 Depth=3
	ld.w	$a1, $a0, 64
	bnez	$a1, .LBB7_14
.LBB7_20:                               # %land.lhs.true42
                                        #   in Loop: Header=BB7_15 Depth=3
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_14
# %bb.21:                               # %if.then45
                                        #   in Loop: Header=BB7_15 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB7_14
.LBB7_22:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
.LBB7_23:                               # %for.end55
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
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
.Lfunc_end7:
	.size	inf_GetForwardPartnerLits, .Lfunc_end7-inf_GetForwardPartnerLits
                                        # -- End function
	.p2align	5                               # -- Begin function inf_InternWeakening
	.type	inf_InternWeakening,@function
inf_InternWeakening:                    # @inf_InternWeakening
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a7, %got_pc_hi20(stdout)
	ld.d	$s3, $a7, %got_pc_lo12(stdout)
	ld.d	$a7, $s3, 0
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $a4
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s6, $a1
	move	$s1, $a0
	ori	$a0, $zero, 10
	move	$a1, $a7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB8_3
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $s6
	.p2align	4, , 16
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a1, $s1, 56
	slli.d	$a0, $a0, 32
	srai.d	$a0, $a0, 29
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(clause_LiteralPrint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB8_2
.LBB8_3:                                # %for.end
	st.d	$s1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB8_6
# %bb.4:                                # %for.body12.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s0, $a0, %pc_lo12(.L.str.7)
	move	$s1, $fp
	.p2align	4, , 16
.LBB8_5:                                # %for.body12
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(clause_LiteralPrint)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s3, 0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB8_5
.LBB8_6:                                # %for.end20
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB8_166
# %bb.7:                                # %if.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$a0, .LBB8_12
# %bb.8:                                # %for.body.i.preheader
	ori	$fp, $zero, 0
	ori	$s0, $zero, 0
	lu32i.d	$s0, -1
	lu32i.d	$fp, 1
	move	$s1, $s5
	.p2align	4, , 16
.LBB8_9:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
	ld.d	$a1, $s1, 8
	ld.d	$a0, $a1, 16
	ld.d	$a2, $a0, 56
	move	$s2, $s0
	.p2align	4, , 16
.LBB8_10:                               # %while.cond.i.i
                                        #   Parent Loop BB8_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	add.d	$s2, $s2, $fp
	addi.d	$a2, $a2, 8
	bne	$a3, $a1, .LBB8_10
# %bb.11:                               # %clause_LiteralGetIndex.exit.i
                                        #   in Loop: Header=BB8_9 Depth=1
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 56
	srai.d	$a1, $s2, 29
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $s1, 8
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB8_9
.LBB8_12:                               # %inf_CopyUnifierClauses.exit
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $s5, 8
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.w	$s0, $s2, 52
	ld.d	$fp, $a0, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s1, $s5, 0
	beqz	$s1, .LBB8_14
	.p2align	4, , 16
.LBB8_13:                               # %for.body.i68
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 52
	ld.d	$a0, $s1, 8
	slt	$a2, $a1, $s0
	ld.d	$a0, $a0, 16
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s0, $a2
	or	$s0, $a2, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB8_13
.LBB8_14:                               # %inf_MakeClausesDisjoint.exit
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s2, 56
	slli.d	$a0, $a0, 32
	srai.d	$a0, $a0, 29
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$s8, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s8, 0
	bne	$a1, $a2, .LBB8_16
# %bb.15:                               # %if.then.i.i
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB8_16:                               # %clause_GetLiteralAtom.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(stack_POINTER)
	ld.d	$a2, $a1, %got_pc_lo12(stack_POINTER)
	pcalau12i	$a1, %got_pc_hi20(memory_ALIGN)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ALIGN)
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ld.w	$a0, $a2, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.w	$a0, $a1, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a0, $a0, %got_pc_lo12(memory_FREEDBYTES)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	b	.LBB8_18
	.p2align	4, , 16
.LBB8_17:                               # %sort_PairDelete.exit
                                        #   in Loop: Header=BB8_18 Depth=1
	ld.d	$a0, $s1, 0
	move	$fp, $a7
	move	$s5, $s1
	move	$s1, $t1
	pcaddu18i	$ra, %call36(sort_ConditionDelete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $fp, 128
	st.d	$s5, $a0, 0
	ld.d	$a0, $fp, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s1, 0
	ld.d	$a3, $s4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $fp, 128
	st.d	$s4, $a0, 0
	move	$s4, $a3
	beqz	$a3, .LBB8_161
.LBB8_18:                               # %for.body35
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_25 Depth 2
                                        #       Child Loop BB8_29 Depth 3
                                        #         Child Loop BB8_39 Depth 4
                                        #       Child Loop BB8_47 Depth 3
                                        #       Child Loop BB8_50 Depth 3
                                        #       Child Loop BB8_53 Depth 3
                                        #       Child Loop BB8_56 Depth 3
                                        #       Child Loop BB8_65 Depth 3
                                        #         Child Loop BB8_66 Depth 4
                                        #         Child Loop BB8_70 Depth 4
                                        #         Child Loop BB8_76 Depth 4
                                        #         Child Loop BB8_83 Depth 4
                                        #       Child Loop BB8_87 Depth 3
                                        #         Child Loop BB8_89 Depth 4
                                        #       Child Loop BB8_115 Depth 3
                                        #       Child Loop BB8_120 Depth 3
                                        #       Child Loop BB8_98 Depth 3
                                        #       Child Loop BB8_100 Depth 3
                                        #       Child Loop BB8_102 Depth 3
                                        #       Child Loop BB8_105 Depth 3
                                        #       Child Loop BB8_131 Depth 3
                                        #       Child Loop BB8_134 Depth 3
                                        #         Child Loop BB8_136 Depth 4
                                        #       Child Loop BB8_137 Depth 3
                                        #       Child Loop BB8_141 Depth 3
                                        #         Child Loop BB8_144 Depth 4
                                        #       Child Loop BB8_149 Depth 3
                                        #     Child Loop BB8_156 Depth 2
                                        #     Child Loop BB8_160 Depth 2
	ld.d	$s1, $s4, 8
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $fp, 0
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sort_PairPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB8_22
# %bb.19:                               # %lor.lhs.false
                                        #   in Loop: Header=BB8_18 Depth=1
	ld.d	$a0, $s0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s8, 0
	bne	$a1, $a2, .LBB8_21
# %bb.20:                               # %if.then.i.i76
                                        #   in Loop: Header=BB8_18 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB8_21:                               # %clause_LiteralPredicate.exit
                                        #   in Loop: Header=BB8_18 Depth=1
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(sort_ContainsSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_159
.LBB8_22:                               # %if.then43
                                        #   in Loop: Header=BB8_18 Depth=1
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(sort_GetSymbolsFromSort)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	b	.LBB8_25
	.p2align	4, , 16
.LBB8_23:                               #   in Loop: Header=BB8_25 Depth=2
	move	$s1, $t2
	move	$s0, $a2
	beqz	$a0, .LBB8_25
.LBB8_24:                               # %do.cond
                                        #   in Loop: Header=BB8_25 Depth=2
	beqz	$s1, .LBB8_154
.LBB8_25:                               # %do.body
                                        #   Parent Loop BB8_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_29 Depth 3
                                        #         Child Loop BB8_39 Depth 4
                                        #       Child Loop BB8_47 Depth 3
                                        #       Child Loop BB8_50 Depth 3
                                        #       Child Loop BB8_53 Depth 3
                                        #       Child Loop BB8_56 Depth 3
                                        #       Child Loop BB8_65 Depth 3
                                        #         Child Loop BB8_66 Depth 4
                                        #         Child Loop BB8_70 Depth 4
                                        #         Child Loop BB8_76 Depth 4
                                        #         Child Loop BB8_83 Depth 4
                                        #       Child Loop BB8_87 Depth 3
                                        #         Child Loop BB8_89 Depth 4
                                        #       Child Loop BB8_115 Depth 3
                                        #       Child Loop BB8_120 Depth 3
                                        #       Child Loop BB8_98 Depth 3
                                        #       Child Loop BB8_100 Depth 3
                                        #       Child Loop BB8_102 Depth 3
                                        #       Child Loop BB8_105 Depth 3
                                        #       Child Loop BB8_131 Depth 3
                                        #       Child Loop BB8_134 Depth 3
                                        #         Child Loop BB8_136 Depth 4
                                        #       Child Loop BB8_137 Depth 3
                                        #       Child Loop BB8_141 Depth 3
                                        #         Child Loop BB8_144 Depth 4
                                        #       Child Loop BB8_149 Depth 3
	beqz	$fp, .LBB8_42
# %bb.26:                               # %land.rhs.preheader
                                        #   in Loop: Header=BB8_25 Depth=2
	bnez	$s1, .LBB8_29
.LBB8_27:                               #   in Loop: Header=BB8_25 Depth=2
	move	$t2, $zero
	ld.w	$a1, $t0, 0
	ori	$a0, $zero, 1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	bne	$a1, $a2, .LBB8_141
	b	.LBB8_139
	.p2align	4, , 16
.LBB8_28:                               # %if.end80.sink.split
                                        #   in Loop: Header=BB8_29 Depth=3
	ld.d	$s1, $s1, 0
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ori	$s3, $zero, 1
	beqz	$s1, .LBB8_27
.LBB8_29:                               # %while.body
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_39 Depth 4
	ld.d	$s2, $s1, 8
	ld.d	$a2, $s2, 24
	ld.w	$a1, $a2, 0
	ld.w	$a0, $s8, 0
	bne	$a1, $a0, .LBB8_31
# %bb.30:                               # %if.then.i.i86
                                        #   in Loop: Header=BB8_29 Depth=3
	ld.d	$a1, $a2, 16
	ld.d	$a1, $a1, 8
	ld.w	$a1, $a1, 0
.LBB8_31:                               # %clause_LiteralPredicate.exit90
                                        #   in Loop: Header=BB8_29 Depth=3
	ld.w	$a2, $fp, 8
	bne	$a1, $a2, .LBB8_28
# %bb.32:                               # %if.then58
                                        #   in Loop: Header=BB8_29 Depth=3
	pcalau12i	$a1, %got_pc_hi20(cont_BINDINGS)
	pcalau12i	$a2, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$s4, $a2, %got_pc_lo12(cont_STACKPOINTER)
	ld.d	$s3, $a1, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a1, $s4, 0
	ld.w	$a2, $s3, 0
	pcalau12i	$a3, %got_pc_hi20(cont_STACK)
	ld.d	$s5, $a3, %got_pc_lo12(cont_STACK)
	addi.d	$a3, $a1, 1
	st.w	$a3, $s4, 0
	slli.d	$a1, $a1, 2
	stx.w	$a2, $s5, $a1
	st.w	$zero, $s3, 0
	ld.d	$a1, $s2, 24
	ld.w	$a2, $a1, 0
	bne	$a2, $a0, .LBB8_34
# %bb.33:                               # %if.then.i
                                        #   in Loop: Header=BB8_29 Depth=3
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
.LBB8_34:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB8_29 Depth=3
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a2, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a2, $a2, %got_pc_lo12(cont_RIGHTCONTEXT)
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_37
# %bb.35:                               # %if.then65
                                        #   in Loop: Header=BB8_29 Depth=3
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.wu	$a0, $a4, 0
	pcalau12i	$a1, %got_pc_hi20(stack_STACK)
	ld.d	$a1, $a1, %got_pc_lo12(stack_STACK)
	addi.d	$a2, $a0, 1
	st.w	$a2, $a4, 0
	slli.d	$a3, $a0, 3
	stx.d	$fp, $a1, $a3
	ld.d	$a3, $s1, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $a4, 0
	bstrpick.d	$a0, $a2, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$a3, $a1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s0, $a0, 0
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB8_122
# %bb.36:                               #   in Loop: Header=BB8_29 Depth=3
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	move	$s0, $a0
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	ori	$s3, $zero, 1
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	bnez	$s1, .LBB8_29
	b	.LBB8_27
.LBB8_37:                               # %if.else74
                                        #   in Loop: Header=BB8_29 Depth=3
	ld.w	$a0, $s3, 0
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ori	$a5, $zero, 1
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	blt	$a0, $a5, .LBB8_40
# %bb.38:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB8_29 Depth=3
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB8_39:                               # %while.body.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        #       Parent Loop BB8_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
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
	st.w	$a1, $s3, 0
	bltu	$a5, $a0, .LBB8_39
.LBB8_40:                               # %while.end.i
                                        #   in Loop: Header=BB8_29 Depth=3
	ld.w	$a0, $s4, 0
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB8_28
# %bb.41:                               # %if.then.i106
                                        #   in Loop: Header=BB8_29 Depth=3
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s5, $a1
	st.w	$a0, $s4, 0
	st.w	$a1, $s3, 0
	b	.LBB8_28
	.p2align	4, , 16
.LBB8_42:                               #   in Loop: Header=BB8_25 Depth=2
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
.LBB8_43:                               # %if.then83
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s2, 56
	slli.d	$a0, $a0, 32
	srai.d	$a0, $a0, 29
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s8, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	bne	$a1, $a2, .LBB8_45
# %bb.44:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB8_45:                               # %clause_GetLiteralAtom.exit.i
                                        #   in Loop: Header=BB8_25 Depth=2
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$fp, $a3, 0
	ld.d	$a0, $a0, 16
	ld.w	$s8, $s2, 8
	ld.d	$s2, $fp, 8
	ld.d	$s4, $a0, 8
	beqz	$s2, .LBB8_57
# %bb.46:                               # %for.body.i116.preheader
                                        #   in Loop: Header=BB8_25 Depth=2
	move	$s3, $zero
	.p2align	4, , 16
.LBB8_47:                               # %for.body.i116
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s0, $a0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(term_ReplaceVariable)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cont_CopyAndApplyBindings)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s1, $a0, 8
	st.d	$s3, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	move	$s3, $s5
	bnez	$s2, .LBB8_47
# %bb.48:                               # %for.end.i
                                        #   in Loop: Header=BB8_25 Depth=2
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s2, $fp, 16
	beqz	$s2, .LBB8_58
.LBB8_49:                               # %for.body21.i.preheader
                                        #   in Loop: Header=BB8_25 Depth=2
	move	$s4, $zero
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_50:                               # %for.body21.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s0, $a0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(term_ReplaceVariable)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cont_CopyAndApplyBindings)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s3, $a0, 8
	st.d	$s4, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	move	$s4, $s1
	bnez	$s2, .LBB8_50
# %bb.51:                               # %for.end31.i
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.d	$s2, $fp, 24
	beqz	$s2, .LBB8_59
.LBB8_52:                               # %for.body37.i.preheader
                                        #   in Loop: Header=BB8_25 Depth=2
	move	$s6, $zero
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_53:                               # %for.body37.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s0, $a0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(term_ReplaceVariable)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cont_CopyAndApplyBindings)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s3, $a0, 8
	st.d	$s6, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	move	$s6, $s4
	bnez	$s2, .LBB8_53
# %bb.54:                               # %for.end47.i
                                        #   in Loop: Header=BB8_25 Depth=2
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	ld.d	$fp, $fp, 32
	beqz	$fp, .LBB8_60
.LBB8_55:                               # %for.body53.i.preheader
                                        #   in Loop: Header=BB8_25 Depth=2
	move	$s3, $zero
	move	$s4, $zero
	move	$s0, $zero
	move	$a0, $s8
	.p2align	4, , 16
.LBB8_56:                               # %for.body53.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$s6, $fp, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s6, $a0, 8
	st.d	$s3, $a0, 0
	ld.w	$s3, $s6, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s3, $a0, 8
	st.d	$s4, $a0, 0
	ld.w	$a0, $s6, 64
	ld.w	$a1, $s6, 68
	add.w	$s3, $a1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$s3, $a0, 8
	st.d	$s0, $a0, 0
	ld.w	$a1, $s6, 8
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(misc_Max)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	move	$a1, $s8
	move	$s3, $s8
	move	$s4, $s2
	move	$s0, $s7
	bnez	$fp, .LBB8_56
	b	.LBB8_61
.LBB8_57:                               #   in Loop: Header=BB8_25 Depth=2
	move	$s5, $zero
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s2, $fp, 16
	bnez	$s2, .LBB8_49
.LBB8_58:                               #   in Loop: Header=BB8_25 Depth=2
	move	$s1, $zero
	ld.d	$s2, $fp, 24
	bnez	$s2, .LBB8_52
.LBB8_59:                               #   in Loop: Header=BB8_25 Depth=2
	move	$s4, $zero
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	ld.d	$fp, $fp, 32
	bnez	$fp, .LBB8_55
.LBB8_60:                               #   in Loop: Header=BB8_25 Depth=2
	move	$s7, $zero
	move	$s2, $zero
	move	$a1, $zero
	move	$a0, $s8
.LBB8_61:                               # %for.cond66.preheader.i
                                        #   in Loop: Header=BB8_25 Depth=2
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $a0
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	bnez	$a0, .LBB8_65
.LBB8_62:                               # %for.end123.i
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.w	$fp, $s3, 64
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB8_112
# %bb.63:                               # %for.body129.lr.ph.i
                                        #   in Loop: Header=BB8_25 Depth=2
	move	$s2, $zero
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	b	.LBB8_87
	.p2align	4, , 16
.LBB8_64:                               # %for.end112.i
                                        #   in Loop: Header=BB8_65 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$s2, $a0, 8
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $s7, 0
	ld.w	$fp, $s2, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$fp, $a0, 8
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $s6, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $s0, 8
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	ld.w	$a1, $s2, 8
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(misc_Max)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	beqz	$a1, .LBB8_62
.LBB8_65:                               # %for.body70.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_66 Depth 4
                                        #         Child Loop BB8_70 Depth 4
                                        #         Child Loop BB8_76 Depth 4
                                        #         Child Loop BB8_83 Depth 4
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 8
	ld.d	$s2, $a0, 16
	ld.d	$a1, $s2, 56
	move	$a2, $zero
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_66:                               # %while.cond.i.i119
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        #       Parent Loop BB8_65 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$s0, $a2
	ld.d	$a3, $a1, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	add.d	$s6, $s6, $a2
	addi.d	$a1, $a1, 8
	addi.w	$a2, $s0, 1
	bne	$a3, $a0, .LBB8_66
# %bb.67:                               # %clause_LiteralGetIndex.exit.i123
                                        #   in Loop: Header=BB8_65 Depth=3
	ld.w	$a1, $s2, 64
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB8_73
# %bb.68:                               # %for.body78.preheader.i
                                        #   in Loop: Header=BB8_65 Depth=3
	move	$fp, $zero
	slli.d	$s3, $a1, 3
	b	.LBB8_70
	.p2align	4, , 16
.LBB8_69:                               # %clause_GetLiteralAtom.exit177.i
                                        #   in Loop: Header=BB8_70 Depth=4
	pcalau12i	$a0, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_RIGHTCONTEXT)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(cont_CopyAndApplyBindings)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	addi.d	$fp, $fp, 8
	st.d	$s5, $a0, 0
	move	$s5, $a0
	beq	$s3, $fp, .LBB8_72
.LBB8_70:                               # %for.body78.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        #       Parent Loop BB8_65 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s2, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s8, 0
	bne	$a0, $a2, .LBB8_69
# %bb.71:                               # %if.then.i.i174.i
                                        #   in Loop: Header=BB8_70 Depth=4
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	b	.LBB8_69
	.p2align	4, , 16
.LBB8_72:                               # %for.end84.loopexit.i
                                        #   in Loop: Header=BB8_65 Depth=3
	ld.w	$a1, $s2, 64
	move	$s5, $a0
.LBB8_73:                               # %for.end84.i
                                        #   in Loop: Header=BB8_65 Depth=3
	ld.w	$s3, $s2, 68
	add.w	$a2, $s3, $a1
	addi.w	$a0, $a2, -1
	blt	$a0, $a1, .LBB8_79
# %bb.74:                               # %for.body90.preheader.i
                                        #   in Loop: Header=BB8_65 Depth=3
	slli.d	$fp, $a1, 3
	b	.LBB8_76
	.p2align	4, , 16
.LBB8_75:                               # %clause_GetLiteralAtom.exit190.i
                                        #   in Loop: Header=BB8_76 Depth=4
	pcalau12i	$a0, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_RIGHTCONTEXT)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(cont_CopyAndApplyBindings)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	st.d	$s1, $a0, 0
	addi.w	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	move	$s1, $a0
	beqz	$s3, .LBB8_78
.LBB8_76:                               # %for.body90.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        #       Parent Loop BB8_65 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s2, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s8, 0
	bne	$a0, $a2, .LBB8_75
# %bb.77:                               # %if.then.i.i187.i
                                        #   in Loop: Header=BB8_76 Depth=4
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	b	.LBB8_75
	.p2align	4, , 16
.LBB8_78:                               # %for.end97.loopexit.i
                                        #   in Loop: Header=BB8_65 Depth=3
	ld.w	$a1, $s2, 64
	ld.w	$s3, $s2, 68
	add.w	$a2, $a1, $s3
	move	$s1, $a0
.LBB8_79:                               # %for.end97.i
                                        #   in Loop: Header=BB8_65 Depth=3
	ld.w	$a0, $s2, 72
	add.d	$a3, $a0, $a2
	addi.w	$a3, $a3, -1
	srai.d	$a4, $s6, 32
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	blt	$a3, $a2, .LBB8_64
# %bb.80:                               # %for.body103.preheader.i
                                        #   in Loop: Header=BB8_65 Depth=3
	add.d	$a3, $a1, $s3
	add.d	$a0, $a2, $a0
	add.d	$a1, $a1, $s3
	sub.d	$s3, $a0, $a1
	slli.d	$s6, $a3, 3
	sub.d	$s0, $s0, $a3
	b	.LBB8_83
	.p2align	4, , 16
.LBB8_81:                               # %clause_GetLiteralAtom.exit205.i
                                        #   in Loop: Header=BB8_83 Depth=4
	pcalau12i	$a0, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_RIGHTCONTEXT)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(cont_CopyAndApplyBindings)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	st.d	$s4, $a0, 0
	move	$s4, $a0
.LBB8_82:                               # %for.inc110.i
                                        #   in Loop: Header=BB8_83 Depth=4
	addi.w	$s3, $s3, -1
	addi.d	$s6, $s6, 8
	addi.d	$s0, $s0, -1
	beqz	$s3, .LBB8_64
.LBB8_83:                               # %for.body103.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        #       Parent Loop BB8_65 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beqz	$s0, .LBB8_82
# %bb.84:                               # %if.then.i124
                                        #   in Loop: Header=BB8_83 Depth=4
	ld.d	$a0, $s2, 56
	ldx.d	$a0, $a0, $s6
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s8, 0
	bne	$a0, $a2, .LBB8_81
# %bb.85:                               # %if.then.i.i202.i
                                        #   in Loop: Header=BB8_83 Depth=4
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	b	.LBB8_81
	.p2align	4, , 16
.LBB8_86:                               # %clause_GetLiteralAtom.exit225.i
                                        #   in Loop: Header=BB8_87 Depth=3
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(cont_CopyAndApplyBindings)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s5, $a0, 0
	move	$s5, $a0
	addi.d	$s2, $s2, 1
	beq	$s2, $fp, .LBB8_94
.LBB8_87:                               # %for.body129.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_89 Depth 4
	beqz	$s6, .LBB8_91
# %bb.88:                               # %while.body.i.i.preheader
                                        #   in Loop: Header=BB8_87 Depth=3
	move	$a0, $s6
	.p2align	4, , 16
.LBB8_89:                               # %while.body.i.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        #       Parent Loop BB8_87 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $a0, 8
	beq	$a1, $s2, .LBB8_93
# %bb.90:                               # %if.end.i.i
                                        #   in Loop: Header=BB8_89 Depth=4
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB8_89
.LBB8_91:                               # %if.then133.i
                                        #   in Loop: Header=BB8_87 Depth=3
	ld.d	$a0, $s3, 56
	slli.d	$a1, $s2, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s8, 0
	bne	$a0, $a2, .LBB8_86
# %bb.92:                               # %if.then.i.i222.i
                                        #   in Loop: Header=BB8_87 Depth=3
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	b	.LBB8_86
	.p2align	4, , 16
.LBB8_93:                               # %if.else.i
                                        #   in Loop: Header=BB8_87 Depth=3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.w	$s3, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s3, $a0, 8
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	addi.d	$s2, $s2, 1
	bne	$s2, $fp, .LBB8_87
.LBB8_94:                               # %for.end146.loopexit.i
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.w	$fp, $s3, 64
	ld.w	$s2, $s3, 68
	add.w	$a1, $s2, $fp
	addi.w	$a0, $a1, -1
	bge	$a0, $fp, .LBB8_113
.LBB8_95:                               # %for.end159.i
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.w	$a0, $s3, 72
	add.d	$a2, $a0, $a1
	addi.w	$a2, $a2, -1
	bge	$a2, $a1, .LBB8_118
.LBB8_96:                               #   in Loop: Header=BB8_25 Depth=2
	move	$s7, $s4
.LBB8_97:                               # %for.end172.i
                                        #   in Loop: Header=BB8_25 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s3, $a0, 8
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $s4, 0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s7
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Create)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	beqz	$s5, .LBB8_99
	.p2align	4, , 16
.LBB8_98:                               # %while.body.i268.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $t0, 0
	ld.d	$a3, $s5, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $a7, 128
	st.d	$s5, $a0, 0
	move	$s5, $a3
	bnez	$a3, .LBB8_98
.LBB8_99:                               # %list_Delete.exit.i
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	beqz	$s1, .LBB8_101
	.p2align	4, , 16
.LBB8_100:                              # %while.body.i271.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $t0, 0
	ld.d	$a3, $s1, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a7, 128
	st.d	$s1, $a0, 0
	move	$s1, $a3
	bnez	$a3, .LBB8_100
.LBB8_101:                              # %list_Delete.exit278.i
                                        #   in Loop: Header=BB8_25 Depth=2
	beqz	$s7, .LBB8_103
	.p2align	4, , 16
.LBB8_102:                              # %while.body.i280.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $t0, 0
	ld.d	$a3, $s7, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $a7, 128
	st.d	$s7, $a0, 0
	move	$s7, $a3
	bnez	$a3, .LBB8_102
.LBB8_103:                              # %while.body.lr.ph.i
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slti	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 76
	addi.d	$a0, $a4, 1
	ld.w	$a3, $s3, 48
	ld.w	$a1, $s3, 24
	ld.w	$a2, $s3, 12
	st.w	$a0, $s3, 8
	ori	$a0, $a3, 4
	st.w	$a0, $s3, 48
	move	$fp, $a1
	move	$a3, $s4
	ld.d	$s0, $sp, 240                   # 8-byte Folded Reload
	b	.LBB8_105
	.p2align	4, , 16
.LBB8_104:                              # %if.end.i217
                                        #   in Loop: Header=BB8_105 Depth=3
	ld.w	$a5, $a4, 12
	sltu	$a6, $a2, $a5
	masknez	$a2, $a2, $a6
	maskeqz	$a5, $a5, $a6
	or	$a2, $a5, $a2
	st.w	$a2, $s3, 12
	ld.w	$a4, $a4, 24
	ld.d	$a3, $a3, 0
	sltu	$a5, $a4, $fp
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $fp, $a5
	or	$fp, $a5, $a4
	beqz	$a3, .LBB8_107
.LBB8_105:                              # %while.body.i213
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a3, 8
	ld.bu	$a5, $a4, 48
	andi	$a5, $a5, 8
	beqz	$a5, .LBB8_104
# %bb.106:                              # %if.then.i215
                                        #   in Loop: Header=BB8_105 Depth=3
	ori	$a0, $a0, 8
	st.w	$a0, $s3, 48
	b	.LBB8_104
	.p2align	4, , 16
.LBB8_107:                              # %while.end.i220
                                        #   in Loop: Header=BB8_25 Depth=2
	bgeu	$a1, $fp, .LBB8_111
# %bb.108:                              # %if.then16.i
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.d	$a0, $s3, 16
	beqz	$a0, .LBB8_129
# %bb.109:                              # %if.then18.i
                                        #   in Loop: Header=BB8_25 Depth=2
	slli.w	$a1, $a1, 3
	ori	$a2, $zero, 1024
	bgeu	$a1, $a2, .LBB8_123
# %bb.110:                              # %if.else25.i.i
                                        #   in Loop: Header=BB8_25 Depth=2
	slli.d	$a1, $a1, 3
	ldx.d	$a2, $a7, $a1
	ld.w	$a3, $a2, 32
	ld.d	$a4, $t0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $t0, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ldx.d	$a1, $a7, $a1
	st.d	$a0, $a1, 0
	b	.LBB8_129
	.p2align	4, , 16
.LBB8_111:                              # %if.end29.i
                                        #   in Loop: Header=BB8_25 Depth=2
	move	$a0, $s4
	bnez	$a1, .LBB8_130
	b	.LBB8_134
.LBB8_112:                              #   in Loop: Header=BB8_25 Depth=2
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.w	$s2, $s3, 68
	add.w	$a1, $s2, $fp
	addi.w	$a0, $a1, -1
	blt	$a0, $fp, .LBB8_95
.LBB8_113:                              # %for.body152.preheader.i
                                        #   in Loop: Header=BB8_25 Depth=2
	slli.d	$fp, $fp, 3
	b	.LBB8_115
	.p2align	4, , 16
.LBB8_114:                              # %clause_GetLiteralAtom.exit243.i
                                        #   in Loop: Header=BB8_115 Depth=3
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(cont_CopyAndApplyBindings)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 0
	addi.w	$s2, $s2, -1
	addi.d	$fp, $fp, 8
	move	$s1, $a0
	beqz	$s2, .LBB8_117
.LBB8_115:                              # %for.body152.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s8, 0
	bne	$a0, $a2, .LBB8_114
# %bb.116:                              # %if.then.i.i240.i
                                        #   in Loop: Header=BB8_115 Depth=3
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	b	.LBB8_114
	.p2align	4, , 16
.LBB8_117:                              # %for.end159.loopexit.i
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.w	$fp, $s3, 64
	ld.w	$s2, $s3, 68
	add.w	$a1, $fp, $s2
	move	$s1, $a0
	ld.w	$a0, $s3, 72
	add.d	$a2, $a0, $a1
	addi.w	$a2, $a2, -1
	blt	$a2, $a1, .LBB8_96
.LBB8_118:                              # %for.body165.preheader.i
                                        #   in Loop: Header=BB8_25 Depth=2
	add.d	$a2, $fp, $s2
	add.d	$a0, $a1, $a0
	add.d	$a1, $fp, $s2
	sub.d	$fp, $a0, $a1
	slli.d	$s2, $a2, 3
	b	.LBB8_120
	.p2align	4, , 16
.LBB8_119:                              # %clause_GetLiteralAtom.exit262.i
                                        #   in Loop: Header=BB8_120 Depth=3
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(cont_CopyAndApplyBindings)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$s0, $a0, 8
	st.d	$s4, $a0, 0
	addi.w	$fp, $fp, -1
	addi.d	$s2, $s2, 8
	move	$s4, $a0
	beqz	$fp, .LBB8_97
.LBB8_120:                              # %for.body165.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 56
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $a0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s8, 0
	bne	$a0, $a2, .LBB8_119
# %bb.121:                              # %if.then.i.i259.i
                                        #   in Loop: Header=BB8_120 Depth=3
	ld.d	$a0, $a1, 16
	ld.d	$a1, $a0, 8
	b	.LBB8_119
.LBB8_122:                              # %if.then83.loopexit
                                        #   in Loop: Header=BB8_25 Depth=2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s1, $s1, 0
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	b	.LBB8_43
.LBB8_123:                              # %if.then.i.i227
                                        #   in Loop: Header=BB8_25 Depth=2
	pcalau12i	$a2, %got_pc_hi20(memory_OFFSET)
	ld.d	$a2, $a2, %got_pc_lo12(memory_OFFSET)
	ld.wu	$a2, $a2, 0
	sub.d	$a2, $a0, $a2
	ld.d	$a4, $a2, -16
	ld.d	$a3, $a2, -8
	beqz	$a4, .LBB8_153
# %bb.124:                              # %if.then3.i.i
                                        #   in Loop: Header=BB8_25 Depth=2
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB8_126
.LBB8_125:                              # %if.then9.i.i
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB8_126:                              # %if.end13.i.i
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	mod.wu	$a2, $a1, $a5
	pcalau12i	$a3, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a3, $a3, %got_pc_lo12(memory_MARKSIZE)
	sltui	$a4, $a2, 1
	sub.d	$a2, $a5, $a2
	masknez	$a4, $a2, $a4
	ld.w	$a3, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	add.w	$a1, $a4, $a1
	add.d	$a3, $a1, $a3
	ld.d	$a4, $t0, 0
	ld.d	$a1, $a2, 0
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a3, $a3, 16
	add.d	$a4, $a3, $a4
	st.d	$a4, $t0, 0
	bltz	$a1, .LBB8_128
# %bb.127:                              # %if.then18.i.i
                                        #   in Loop: Header=BB8_25 Depth=2
	add.d	$a1, $a1, $a3
	st.d	$a1, $a2, 0
.LBB8_128:                              # %if.end23.i.i
                                        #   in Loop: Header=BB8_25 Depth=2
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_129:                              # %if.end29.thread.i
                                        #   in Loop: Header=BB8_25 Depth=2
	slli.w	$a0, $fp, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $s3, 16
	st.w	$fp, $s3, 24
.LBB8_130:                              # %for.body.lr.ph.i221
                                        #   in Loop: Header=BB8_25 Depth=2
	move	$a0, $zero
	move	$a1, $zero
	.p2align	4, , 16
.LBB8_131:                              # %for.body.i222
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s3, 16
	stx.d	$zero, $a2, $a0
	ld.wu	$a2, $s3, 24
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 8
	bltu	$a1, $a2, .LBB8_131
# %bb.132:                              #   in Loop: Header=BB8_25 Depth=2
	move	$a0, $s4
	b	.LBB8_134
	.p2align	4, , 16
.LBB8_133:                              # %while.cond34.loopexit.i
                                        #   in Loop: Header=BB8_134 Depth=3
	beqz	$a0, .LBB8_137
.LBB8_134:                              # %while.body38.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_136 Depth 4
	ld.d	$a1, $a0, 8
	ld.w	$a2, $a1, 24
	ld.d	$a0, $a0, 0
	beqz	$a2, .LBB8_133
# %bb.135:                              # %for.body45.lr.ph.i
                                        #   in Loop: Header=BB8_134 Depth=3
	move	$a2, $zero
	move	$a3, $zero
	.p2align	4, , 16
.LBB8_136:                              # %for.body45.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        #       Parent Loop BB8_134 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a4, $s3, 16
	ld.d	$a5, $a1, 16
	ldx.d	$a6, $a4, $a2
	ldx.d	$a5, $a5, $a2
	or	$a5, $a5, $a6
	stx.d	$a5, $a4, $a2
	ld.wu	$a4, $a1, 24
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	bltu	$a3, $a4, .LBB8_136
	b	.LBB8_133
	.p2align	4, , 16
.LBB8_137:                              # %while.body.i290.i
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $t0, 0
	ld.d	$a3, $s4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $a7, 128
	st.d	$s4, $a0, 0
	move	$s4, $a3
	bnez	$a3, .LBB8_137
# %bb.138:                              # %if.end.i
                                        #   in Loop: Header=BB8_25 Depth=2
	st.d	$s2, $s3, 32
	st.d	$s0, $s3, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	move	$fp, $zero
	st.d	$s3, $a0, 8
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ori	$s3, $zero, 1
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $t0, 0
	ori	$a0, $zero, 1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	bne	$a1, $a2, .LBB8_141
.LBB8_139:                              #   in Loop: Header=BB8_25 Depth=2
	move	$s1, $t2
	bnez	$a0, .LBB8_24
	b	.LBB8_25
	.p2align	4, , 16
.LBB8_140:                              # %cont_BackTrack.exit151
                                        #   in Loop: Header=BB8_141 Depth=3
	ld.d	$a1, $a7, 128
	ld.w	$a3, $a1, 32
	ld.d	$a4, $t1, 0
	ld.d	$a2, $s0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $t1, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s0, 0
	ld.d	$a1, $a7, 128
	st.d	$s0, $a1, 0
	ld.w	$a1, $t0, 0
	move	$s0, $a2
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	beq	$a1, $a3, .LBB8_23
.LBB8_141:                              # %land.rhs91
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_144 Depth 4
	pcalau12i	$a2, %got_pc_hi20(stack_STACK)
	ld.d	$a2, $a2, %got_pc_lo12(stack_STACK)
	addi.d	$a3, $a1, -1
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 3
	ldx.d	$s1, $a2, $a3
	addi.w	$a1, $a1, -2
	st.w	$a1, $t0, 0
	bnez	$s1, .LBB8_147
# %bb.142:                              # %while.body96
                                        #   in Loop: Header=BB8_141 Depth=3
	pcalau12i	$a1, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a1, $a1, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a2, $a1, 0
	blt	$a2, $s3, .LBB8_145
# %bb.143:                              # %while.body.i145.preheader
                                        #   in Loop: Header=BB8_141 Depth=3
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB8_144:                              # %while.body.i145
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        #       Parent Loop BB8_141 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a3, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a3, $a3, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a4, $a3, 0
	pcalau12i	$a5, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a5, $a5, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a4, $a5, 0
	ld.d	$a6, $a4, 24
	st.d	$a6, $a3, 0
	st.w	$zero, $a4, 20
	vst	$vr0, $a4, 4
	ld.d	$a3, $a5, 0
	st.d	$zero, $a3, 24
	addi.d	$a3, $a2, -2
	addi.w	$a2, $a2, -1
	st.w	$a3, $a1, 0
	bltu	$s3, $a2, .LBB8_144
.LBB8_145:                              # %while.end.i138
                                        #   in Loop: Header=BB8_141 Depth=3
	pcalau12i	$a2, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a2, $a2, %got_pc_lo12(cont_STACKPOINTER)
	ld.w	$a3, $a2, 0
	beqz	$a3, .LBB8_140
# %bb.146:                              # %if.then.i140
                                        #   in Loop: Header=BB8_141 Depth=3
	pcalau12i	$a4, %got_pc_hi20(cont_STACK)
	ld.d	$a4, $a4, %got_pc_lo12(cont_STACK)
	addi.w	$a3, $a3, -1
	slli.d	$a5, $a3, 2
	ldx.w	$a4, $a4, $a5
	st.w	$a3, $a2, 0
	st.w	$a4, $a1, 0
	b	.LBB8_140
	.p2align	4, , 16
.LBB8_147:                              # %if.then102
                                        #   in Loop: Header=BB8_25 Depth=2
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a3, $a1, 3
	ld.w	$a1, $a0, 0
	ldx.d	$fp, $a2, $a3
	blt	$a1, $s3, .LBB8_150
# %bb.148:                              # %while.body.i168.preheader
                                        #   in Loop: Header=BB8_25 Depth=2
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB8_149:                              # %while.body.i168
                                        #   Parent Loop BB8_18 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a2, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a2, $a2, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a3, $a2, 0
	pcalau12i	$a4, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a4, $a4, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a3, $a4, 0
	ld.d	$a5, $a3, 24
	st.d	$a5, $a2, 0
	st.w	$zero, $a3, 20
	vst	$vr0, $a3, 4
	ld.d	$a2, $a4, 0
	st.d	$zero, $a2, 24
	addi.d	$a2, $a1, -2
	addi.w	$a1, $a1, -1
	st.w	$a2, $a0, 0
	bltu	$s3, $a1, .LBB8_149
.LBB8_150:                              # %while.end.i161
                                        #   in Loop: Header=BB8_25 Depth=2
	pcalau12i	$a1, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a1, $a1, %got_pc_lo12(cont_STACKPOINTER)
	ld.w	$a2, $a1, 0
	beqz	$a2, .LBB8_152
# %bb.151:                              # %if.then.i163
                                        #   in Loop: Header=BB8_25 Depth=2
	pcalau12i	$a3, %got_pc_hi20(cont_STACK)
	ld.d	$a3, $a3, %got_pc_lo12(cont_STACK)
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 2
	ldx.w	$a3, $a3, $a4
	st.w	$a2, $a1, 0
	st.w	$a3, $a0, 0
.LBB8_152:                              # %cont_BackTrack.exit174
                                        #   in Loop: Header=BB8_25 Depth=2
	ld.d	$a0, $a7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $t1, 0
	ld.d	$a3, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $t1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $a7, 128
	st.d	$s0, $a0, 0
	ld.w	$a0, $t0, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	move	$s0, $a3
	bnez	$a0, .LBB8_24
	b	.LBB8_25
.LBB8_153:                              # %if.else.i.i
                                        #   in Loop: Header=BB8_25 Depth=2
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB8_125
	b	.LBB8_126
	.p2align	4, , 16
.LBB8_154:                              # %do.end
                                        #   in Loop: Header=BB8_18 Depth=1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	beqz	$a4, .LBB8_158
# %bb.155:                              # %while.body.i183.preheader
                                        #   in Loop: Header=BB8_18 Depth=1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_156:                              # %while.body.i183
                                        #   Parent Loop BB8_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $t1, 0
	ld.d	$a3, $a4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $t1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a7, 128
	st.d	$a4, $a0, 0
	move	$a4, $a3
	bnez	$a3, .LBB8_156
# %bb.157:                              # %if.end113
                                        #   in Loop: Header=BB8_18 Depth=1
	ld.d	$a0, $s1, 8
	bnez	$a0, .LBB8_160
	b	.LBB8_17
	.p2align	4, , 16
.LBB8_158:                              #   in Loop: Header=BB8_18 Depth=1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 8
	bnez	$a0, .LBB8_160
	b	.LBB8_17
	.p2align	4, , 16
.LBB8_159:                              #   in Loop: Header=BB8_18 Depth=1
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $s1, 8
	beqz	$a0, .LBB8_17
	.p2align	4, , 16
.LBB8_160:                              # %while.body.i.i.i
                                        #   Parent Loop BB8_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a7, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $t1, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $t1, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $a7, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB8_160
	b	.LBB8_17
.LBB8_161:                              # %for.body.i197.preheader
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$fp, $s0
	.p2align	4, , 16
.LBB8_162:                              # %for.body.i197
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 8
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB8_162
# %bb.163:                              # %while.body.i203.preheader
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_164:                              # %while.body.i203
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a4, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $a5, 0
	ld.d	$a3, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $a4, 128
	st.d	$s0, $a0, 0
	move	$s0, $a3
	bnez	$a3, .LBB8_164
# %bb.165:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	b	.LBB8_167
.LBB8_166:
	move	$a0, $zero
.LBB8_167:                              # %cleanup
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end8:
	.size	inf_InternWeakening, .Lfunc_end8-inf_InternWeakening
                                        # -- End function
	.globl	inf_BackwardWeakening           # -- Begin function inf_BackwardWeakening
	.p2align	5
	.type	inf_BackwardWeakening,@function
inf_BackwardWeakening:                  # @inf_BackwardWeakening
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	move	$t1, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a5, $t1, 68
	ld.w	$a6, $t1, 72
	add.w	$a7, $a5, $a0
	add.d	$t0, $a7, $a6
	addi.w	$t0, $t0, -1
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	bge	$t0, $a7, .LBB9_3
# %bb.1:
	move	$a4, $zero
.LBB9_2:                                # %for.end61
	move	$a0, $a4
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB9_3:                                # %for.body.lr.ph
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a3, $a2, %got_pc_lo12(symbol_TYPEMASK)
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPESTATBITS)
	move	$a4, $zero
	ld.w	$t0, $a3, 0
	ld.w	$t2, $a2, 0
	add.d	$a5, $a0, $a5
	add.w	$a6, $a7, $a6
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a7, $a0, %got_pc_lo12(fol_NOT)
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$t3, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$t4, $a0, %got_pc_lo12(symbol_SIGNATURE)
	ori	$t5, $zero, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_4:                                # %if.end59
                                        #   in Loop: Header=BB9_5 Depth=1
	addi.d	$a5, $a5, 1
	addi.w	$a0, $a5, 0
	beq	$a6, $a0, .LBB9_2
.LBB9_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_17 Depth 2
                                        #       Child Loop BB9_22 Depth 3
                                        #     Child Loop BB9_26 Depth 2
                                        #       Child Loop BB9_29 Depth 3
                                        #       Child Loop BB9_34 Depth 3
                                        #         Child Loop BB9_41 Depth 4
                                        #       Child Loop BB9_48 Depth 3
                                        #       Child Loop BB9_54 Depth 3
                                        #       Child Loop BB9_59 Depth 3
                                        #       Child Loop BB9_62 Depth 3
                                        #     Child Loop BB9_65 Depth 2
	ld.d	$a0, $t1, 56
	slli.d	$a2, $a5, 3
	ldx.d	$s6, $a0, $a2
	ld.d	$s7, $s6, 24
	ld.w	$a0, $s7, 0
	ld.w	$a2, $a7, 0
	ld.wu	$a3, $s6, 0
	andi	$a3, $a3, 2
	bne	$a0, $a2, .LBB9_8
# %bb.6:                                # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB9_5 Depth=1
	beqz	$a3, .LBB9_4
# %bb.7:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a0, $s7, 16
	ld.d	$s7, $a0, 8
	ld.w	$a0, $s7, 0
	b	.LBB9_9
	.p2align	4, , 16
.LBB9_8:                                # %clause_LiteralAtom.exit.thread
                                        #   in Loop: Header=BB9_5 Depth=1
	beqz	$a3, .LBB9_4
.LBB9_9:                                # %clause_LiteralPredicate.exit.i
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	blt	$a2, $a0, .LBB9_4
# %bb.10:                               # %symbol_IsPredicate.exit.i
                                        #   in Loop: Header=BB9_5 Depth=1
	sub.w	$a0, $zero, $a0
	and	$a2, $t0, $a0
	bne	$a2, $t3, .LBB9_4
# %bb.11:                               # %clause_LiteralIsSort.exit
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a2, $t4, 0
	srl.w	$a0, $a0, $t2
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 16
	bne	$a0, $t5, .LBB9_4
# %bb.12:                               # %land.lhs.true8
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a0, $s7, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	blt	$a0, $t5, .LBB9_14
# %bb.13:                               # %lor.lhs.false
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.w	$a0, $t1, 64
	bnez	$a0, .LBB9_4
.LBB9_14:                               # %if.then
                                        #   in Loop: Header=BB9_5 Depth=1
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	st.d	$t4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$t2, $sp, 40                    # 8-byte Folded Spill
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	st.d	$t1, $sp, 64                    # 8-byte Folded Spill
	st.d	$zero, $sp, 200
	st.d	$zero, $sp, 208
	addi.d	$a2, $sp, 200
	addi.d	$a3, $sp, 208
	move	$a0, $s6
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	move	$a4, $zero
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	st.d	$a7, $sp, 184                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(inf_GetBackwardPartnerLits)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 208
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	move	$s8, $a0
	move	$s2, $zero
	st.d	$s6, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $sp, 208
	move	$fp, $a0
	b	.LBB9_17
	.p2align	4, , 16
.LBB9_15:                               #   in Loop: Header=BB9_17 Depth=2
	move	$s2, $a0
.LBB9_16:                               #   in Loop: Header=BB9_17 Depth=2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB9_24
.LBB9_17:                               # %for.body.i
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_22 Depth 3
	ld.d	$a0, $fp, 8
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a3, 0
	bne	$a1, $a2, .LBB9_19
# %bb.18:                               # %if.then.i.i.i54
                                        #   in Loop: Header=BB9_17 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB9_19:                               # %clause_LiteralPredicate.exit.i51
                                        #   in Loop: Header=BB9_17 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_16
# %bb.20:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB9_17 Depth=2
	beqz	$s2, .LBB9_15
# %bb.21:                               # %for.cond.i.i.i.preheader
                                        #   in Loop: Header=BB9_17 Depth=2
	move	$a2, $a0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_22:                               # %for.cond.i.i.i
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB9_22
# %bb.23:                               # %for.end.i.i.i
                                        #   in Loop: Header=BB9_17 Depth=2
	st.d	$s2, $a1, 0
	move	$s2, $a0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB9_17
.LBB9_24:                               # %inf_GetSortFromLits.exit
                                        #   in Loop: Header=BB9_5 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 200
	beqz	$a3, .LBB9_64
# %bb.25:                               # %for.body20.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	ori	$a7, $zero, 1
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB9_26:                               # %for.body20
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_29 Depth 3
                                        #       Child Loop BB9_34 Depth 3
                                        #         Child Loop BB9_41 Depth 4
                                        #       Child Loop BB9_48 Depth 3
                                        #       Child Loop BB9_54 Depth 3
                                        #       Child Loop BB9_59 Depth 3
                                        #       Child Loop BB9_62 Depth 3
	ld.d	$a0, $a3, 8
	ld.d	$s3, $a0, 24
	ld.w	$a1, $s3, 0
	ld.w	$a2, $a6, 0
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	bne	$a1, $a2, .LBB9_28
# %bb.27:                               # %if.then.i63
                                        #   in Loop: Header=BB9_26 Depth=2
	ld.d	$a1, $s3, 16
	ld.d	$s3, $a1, 8
.LBB9_28:                               # %clause_LiteralAtom.exit66
                                        #   in Loop: Header=BB9_26 Depth=2
	ld.d	$s0, $a0, 16
	ld.d	$a2, $s0, 56
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_29:                               # %while.cond.i
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	addi.d	$a1, $a1, 1
	ori	$a4, $zero, 0
	lu32i.d	$a4, 1
	add.d	$s1, $s1, $a4
	addi.d	$a2, $a2, 8
	bne	$a3, $a0, .LBB9_29
# %bb.30:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB9_26 Depth=2
	ld.w	$s5, $s0, 64
	blt	$s5, $a7, .LBB9_44
# %bb.31:                               # %for.body31.lr.ph
                                        #   in Loop: Header=BB9_26 Depth=2
	move	$s4, $zero
	move	$fp, $zero
	bstrpick.d	$s7, $a1, 31, 0
	b	.LBB9_34
	.p2align	4, , 16
.LBB9_32:                               #   in Loop: Header=BB9_34 Depth=3
	move	$s6, $fp
	move	$s2, $s4
.LBB9_33:                               # %if.end
                                        #   in Loop: Header=BB9_34 Depth=3
	move	$s4, $s2
	move	$fp, $s6
	bgeu	$a7, $s8, .LBB9_45
.LBB9_34:                               # %for.body31
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_41 Depth 4
	ld.d	$a0, $s0, 56
	move	$s8, $s5
	addi.d	$s5, $s5, -1
	slli.d	$a1, $s5, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s2, $a0, 24
	ld.w	$a0, $s2, 0
	ld.w	$a1, $a6, 0
	bne	$a0, $a1, .LBB9_36
# %bb.35:                               # %if.then.i.i
                                        #   in Loop: Header=BB9_34 Depth=3
	ld.d	$a0, $s2, 16
	ld.d	$s2, $a0, 8
.LBB9_36:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB9_34 Depth=3
	beq	$s5, $s7, .LBB9_32
# %bb.37:                               # %land.lhs.true34
                                        #   in Loop: Header=BB9_34 Depth=3
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s3, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	bne	$a0, $a1, .LBB9_32
# %bb.38:                               # %if.then38
                                        #   in Loop: Header=BB9_34 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s5, $a0, 8
	st.d	$fp, $a0, 0
	ld.w	$a1, $s2, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_43
# %bb.39:                               # %if.end.i.i
                                        #   in Loop: Header=BB9_34 Depth=3
	move	$s2, $a0
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	ori	$a7, $zero, 1
	beqz	$s4, .LBB9_33
# %bb.40:                               # %for.cond.i.i.preheader
                                        #   in Loop: Header=BB9_34 Depth=3
	move	$a1, $s2
	.p2align	4, , 16
.LBB9_41:                               # %for.cond.i.i
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_26 Depth=2
                                        #       Parent Loop BB9_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB9_41
# %bb.42:                               # %for.end.i.i
                                        #   in Loop: Header=BB9_34 Depth=3
	st.d	$s4, $a0, 0
	b	.LBB9_33
.LBB9_43:                               #   in Loop: Header=BB9_34 Depth=3
	move	$s2, $s4
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	ori	$a7, $zero, 1
	b	.LBB9_33
	.p2align	4, , 16
.LBB9_44:                               #   in Loop: Header=BB9_26 Depth=2
	move	$s6, $zero
	move	$s2, $zero
.LBB9_45:                               # %for.end
                                        #   in Loop: Header=BB9_26 Depth=2
	srai.d	$fp, $s1, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$fp, $a0, 8
	st.d	$s6, $a0, 0
	ld.w	$a1, $s3, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_50
# %bb.46:                               # %if.end.i.i77
                                        #   in Loop: Header=BB9_26 Depth=2
	move	$fp, $a0
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beqz	$s2, .LBB9_51
# %bb.47:                               # %for.cond.i.i79.preheader
                                        #   in Loop: Header=BB9_26 Depth=2
	move	$a2, $fp
	.p2align	4, , 16
.LBB9_48:                               # %for.cond.i.i79
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB9_48
# %bb.49:                               # %for.end.i.i83
                                        #   in Loop: Header=BB9_26 Depth=2
	st.d	$s2, $a1, 0
	b	.LBB9_51
	.p2align	4, , 16
.LBB9_50:                               #   in Loop: Header=BB9_26 Depth=2
	move	$fp, $s2
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
.LBB9_51:                               # %sort_Intersect.exit85
                                        #   in Loop: Header=BB9_26 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(sort_TheoryComputeAllSubsortHits)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sort_Delete)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$fp, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$s5, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s5, 0
	pcalau12i	$a2, %got_pc_hi20(cont_STACK)
	ld.d	$a5, $a2, %got_pc_lo12(cont_STACK)
	pcalau12i	$a2, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a2, $a2, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a3, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a3, $a3, %got_pc_lo12(cont_RIGHTCONTEXT)
	slli.d	$a4, $a1, 2
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	stx.w	$a0, $a5, $a4
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a3, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s5, 0
	st.w	$zero, $fp, 0
	move	$a1, $s3
	move	$a3, $s7
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s8
	move	$a3, $s6
	move	$a4, $s4
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_InternWeakening)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_57
# %bb.52:                               # %if.end.i
                                        #   in Loop: Header=BB9_26 Depth=2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	ori	$a7, $zero, 1
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a3, .LBB9_56
# %bb.53:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB9_26 Depth=2
	move	$a2, $a0
	.p2align	4, , 16
.LBB9_54:                               # %for.cond.i
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB9_54
# %bb.55:                               # %for.end.i
                                        #   in Loop: Header=BB9_26 Depth=2
	st.d	$a3, $a1, 0
.LBB9_56:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB9_26 Depth=2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a0, $fp, 0
	bge	$a0, $a7, .LBB9_58
	b	.LBB9_60
	.p2align	4, , 16
.LBB9_57:                               #   in Loop: Header=BB9_26 Depth=2
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	ori	$a7, $zero, 1
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $fp, 0
	blt	$a0, $a7, .LBB9_60
.LBB9_58:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB9_26 Depth=2
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB9_59:                               # %while.body.i
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_26 Depth=2
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
	bltu	$a7, $a0, .LBB9_59
.LBB9_60:                               # %while.end.i
                                        #   in Loop: Header=BB9_26 Depth=2
	ld.w	$a0, $s5, 0
	beqz	$a0, .LBB9_62
# %bb.61:                               # %if.then.i91
                                        #   in Loop: Header=BB9_26 Depth=2
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	st.w	$a0, $s5, 0
	st.w	$a1, $fp, 0
	.p2align	4, , 16
.LBB9_62:                               # %while.body.i96
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a0, 128
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
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
	bnez	$a5, .LBB9_62
# %bb.63:                               # %list_Delete.exit
                                        #   in Loop: Header=BB9_26 Depth=2
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $t0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a1, $a2, 0
	st.d	$a1, $t0, 0
	ld.d	$a0, $a0, 128
	st.d	$t0, $a0, 0
	move	$a3, $a5
	bnez	$a5, .LBB9_26
.LBB9_64:                               # %while.body.i104.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sort_Delete)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB9_65:                               # %while.body.i104
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s8, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 128
	st.d	$s8, $a0, 0
	move	$s8, $a5
	bnez	$a5, .LBB9_65
# %bb.66:                               # %list_Delete.exit112
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	ori	$t3, $zero, 2
	ld.d	$t4, $sp, 16                    # 8-byte Folded Reload
	ori	$t5, $zero, 1
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	b	.LBB9_4
.Lfunc_end9:
	.size	inf_BackwardWeakening, .Lfunc_end9-inf_BackwardWeakening
                                        # -- End function
	.p2align	5                               # -- Begin function inf_GetBackwardPartnerLits
	.type	inf_GetBackwardPartnerLits,@function
inf_GetBackwardPartnerLits:             # @inf_GetBackwardPartnerLits
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
	pcalau12i	$a7, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$t2, $a7, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a7, %got_pc_hi20(cont_RIGHTCONTEXT)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$t0, $a0, 24
	pcalau12i	$t1, %got_pc_hi20(fol_NOT)
	ld.d	$s7, $t1, %got_pc_lo12(fol_NOT)
	ld.d	$a7, $a7, %got_pc_lo12(cont_RIGHTCONTEXT)
	ld.d	$a0, $t2, 0
	ld.w	$t1, $t0, 0
	ld.w	$t2, $s7, 0
	ld.d	$a7, $a7, 0
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	move	$s3, $a4
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	bne	$t1, $t2, .LBB10_2
# %bb.1:                                # %if.then.i
	ld.d	$a2, $t0, 16
	ld.d	$t0, $a2, 8
.LBB10_2:                               # %clause_LiteralAtom.exit
	ld.d	$a2, $t0, 16
	ld.d	$a3, $a2, 8
	move	$a2, $a7
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_34
# %bb.3:                                # %for.body.lr.ph
	move	$s5, $a0
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.w	$s8, $a0, 0
	ld.w	$a0, $a1, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_SIGNATURE)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a0, $a0, %got_pc_lo12(memory_FREEDBYTES)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$fp, $zero, -1
	ori	$s1, $zero, 2
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_4:                               # %for.inc79
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 128
	ld.w	$a1, $a0, 32
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a5, 0
	ld.d	$a3, $s5, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $a4, 128
	st.d	$s5, $a0, 0
	move	$s5, $a3
	beqz	$a3, .LBB10_34
.LBB10_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
                                        #       Child Loop BB10_16 Depth 3
                                        #         Child Loop BB10_19 Depth 4
	ld.d	$a0, $s5, 8
	ld.w	$a1, $a0, 0
	blt	$fp, $a1, .LBB10_7
# %bb.6:                                # %term_IsAtom.exit
                                        #   in Loop: Header=BB10_5 Depth=1
	sub.w	$a1, $zero, $a1
	and	$a1, $s8, $a1
	beq	$a1, $s1, .LBB10_4
.LBB10_7:                               # %if.then
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$s2, $a0, 8
	bnez	$s2, .LBB10_9
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_8:                               # %if.end74
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB10_4
.LBB10_9:                               # %for.body15
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_16 Depth 3
                                        #         Child Loop BB10_19 Depth 4
	ld.d	$a0, $s2, 8
	ld.w	$a1, $a0, 0
	blt	$fp, $a1, .LBB10_8
# %bb.10:                               # %term_IsAtom.exit.i
                                        #   in Loop: Header=BB10_9 Depth=2
	sub.w	$a1, $zero, $a1
	and	$a2, $s8, $a1
	bne	$a2, $s1, .LBB10_8
# %bb.11:                               # %term_IsDeclaration.exit
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	srl.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 16
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB10_8
# %bb.12:                               # %if.then19
                                        #   in Loop: Header=BB10_9 Depth=2
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_8
# %bb.13:                               # %for.body25.preheader
                                        #   in Loop: Header=BB10_9 Depth=2
	move	$s6, $a0
	b	.LBB10_16
.LBB10_14:                              # %for.inc.sink.split
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.d	$s1, $s0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s1, $a0, 0
	ori	$s1, $zero, 2
	st.d	$a0, $s0, 0
	.p2align	4, , 16
.LBB10_15:                              # %for.inc
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB10_8
.LBB10_16:                              # %for.body25
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_19 Depth 4
	ld.d	$s4, $s6, 8
	ld.d	$a0, $s4, 16
	ld.bu	$a1, $a0, 48
	andi	$a1, $a1, 1
	beqz	$a1, .LBB10_15
# %bb.17:                               # %if.then30
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.d	$a1, $s4, 24
	ld.w	$a1, $a1, 0
	ld.w	$a2, $s7, 0
	bne	$a1, $a2, .LBB10_25
# %bb.18:                               # %if.else
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.d	$a2, $a0, 56
	move	$a1, $fp
	.p2align	4, , 16
.LBB10_19:                              # %while.cond.i
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_9 Depth=2
                                        #       Parent Loop BB10_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a2, 0
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bne	$a3, $s4, .LBB10_19
# %bb.20:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.w	$a2, $a0, 64
	bge	$a1, $a2, .LBB10_15
# %bb.21:                               # %land.lhs.true53
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.d	$a1, $s5, 8
	ld.w	$a1, $a1, 0
	slt	$a2, $zero, $a1
	or	$a2, $s3, $a2
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a2, .LBB10_14
# %bb.22:                               # %lor.lhs.false59
                                        #   in Loop: Header=BB10_16 Depth=3
	beqz	$s3, .LBB10_15
# %bb.23:                               # %lor.lhs.false59
                                        #   in Loop: Header=BB10_16 Depth=3
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB10_15
# %bb.24:                               # %land.lhs.true65
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_HasOnlyVarsInConstraint)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB10_14
	b	.LBB10_15
	.p2align	4, , 16
.LBB10_25:                              # %if.then33
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.bu	$a1, $s4, 0
	andi	$a1, $a1, 2
	beqz	$a1, .LBB10_15
# %bb.26:                               # %land.lhs.true
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.d	$a1, $s5, 8
	ld.w	$a1, $a1, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB10_28
# %bb.27:                               # %lor.lhs.false
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.w	$a1, $a0, 64
	bnez	$a1, .LBB10_15
.LBB10_28:                              # %land.lhs.true41
                                        #   in Loop: Header=BB10_16 Depth=3
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_15
# %bb.29:                               # %land.lhs.true44
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 24
	ld.w	$a0, $a2, 0
	ld.w	$a1, $s7, 0
	beq	$a0, $a1, .LBB10_32
# %bb.30:                               # %clause_LiteralPredicate.exit
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.d	$a3, $s4, 24
	ld.w	$a2, $a3, 0
	beq	$a2, $a1, .LBB10_33
.LBB10_31:                              # %clause_LiteralPredicate.exit61
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	bne	$a0, $a2, .LBB10_14
	b	.LBB10_15
.LBB10_32:                              # %if.then.i.i
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.d	$a0, $a2, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	ld.d	$a3, $s4, 24
	ld.w	$a2, $a3, 0
	bne	$a2, $a1, .LBB10_31
.LBB10_33:                              # %if.then.i.i57
                                        #   in Loop: Header=BB10_16 Depth=3
	ld.d	$a1, $a3, 16
	ld.d	$a1, $a1, 8
	ld.w	$a2, $a1, 0
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	bne	$a0, $a2, .LBB10_14
	b	.LBB10_15
.LBB10_34:                              # %for.end81
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(inf_LiteralsHaveSameSubtermAndAreFromSameClause)
	addi.d	$a1, $a1, %pc_lo12(inf_LiteralsHaveSameSubtermAndAreFromSameClause)
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
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
.Lfunc_end10:
	.size	inf_GetBackwardPartnerLits, .Lfunc_end10-inf_GetBackwardPartnerLits
                                        # -- End function
	.globl	inf_ForwardEmptySortPlusPlus    # -- Begin function inf_ForwardEmptySortPlusPlus
	.p2align	5
	.type	inf_ForwardEmptySortPlusPlus,@function
inf_ForwardEmptySortPlusPlus:           # @inf_ForwardEmptySortPlusPlus
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
	move	$s1, $a0
	ld.w	$fp, $a0, 64
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB11_30
# %bb.1:                                # %for.body.lr.ph
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s7, $a0, %got_pc_lo12(fol_NOT)
	move	$s6, $zero
	addi.d	$s4, $fp, -1
	addi.w	$a0, $s4, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_2:                               # %for.end
                                        #   in Loop: Header=BB11_4 Depth=1
	beqz	$a0, .LBB11_13
.LBB11_3:                               # %for.inc59
                                        #   in Loop: Header=BB11_4 Depth=1
	addi.d	$s6, $s6, 1
	bgeu	$s6, $fp, .LBB11_30
.LBB11_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_9 Depth 2
	ld.d	$a0, $s1, 56
	slli.d	$a1, $s6, 3
	ldx.d	$s5, $a0, $a1
	ld.d	$a0, $s5, 24
	ld.d	$a1, $a0, 16
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s7, 0
	ld.d	$s8, $a1, 8
	bne	$a2, $a3, .LBB11_6
# %bb.5:                                # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a1, $s8, 16
	ld.d	$s8, $a1, 8
.LBB11_6:                               # %clause_GetLiteralAtom.exit.thread
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.w	$a1, $s8, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB11_3
# %bb.7:                                # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.w	$a1, $s1, 64
	ld.w	$a2, $s1, 68
	ld.w	$a3, $s1, 72
	add.d	$a2, $a1, $a2
	add.d	$a2, $a2, $a3
	addi.w	$s3, $a2, -1
	blt	$s3, $a1, .LBB11_14
# %bb.8:                                # %for.body17.preheader
                                        #   in Loop: Header=BB11_4 Depth=1
	slli.d	$s2, $a1, 3
	.p2align	4, , 16
.LBB11_9:                               # %for.body17
                                        #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 56
	ldx.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 24
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s7, 0
	move	$s0, $a1
	bne	$a2, $a3, .LBB11_11
# %bb.10:                               # %if.then.i.i55
                                        #   in Loop: Header=BB11_9 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB11_11:                              # %clause_GetLiteralAtom.exit58
                                        #   in Loop: Header=BB11_9 Depth=2
	ld.w	$a1, $s8, 0
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_2
# %bb.12:                               # %clause_GetLiteralAtom.exit58
                                        #   in Loop: Header=BB11_9 Depth=2
	addi.d	$a1, $s0, 1
	addi.d	$s2, $s2, 8
	blt	$s0, $s3, .LBB11_9
	b	.LBB11_2
.LBB11_13:                              # %for.end.if.then24_crit_edge
	ld.d	$a0, $s5, 24
.LBB11_14:                              # %if.then24.loopexit
	addi.d	$fp, $s5, 24
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_GetForwardPartnerLits)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_30
# %bb.15:                               # %if.then28
	move	$s3, $a0
	ld.d	$a2, $fp, 0
	ld.w	$a0, $a2, 0
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB11_17
# %bb.16:                               # %if.then.i62
	ld.d	$a0, $a2, 16
	ld.d	$a2, $a0, 8
.LBB11_17:                              # %clause_LiteralAtom.exit65
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bgeu	$s6, $a0, .LBB11_31
# %bb.18:                               # %for.body34.preheader
	move	$s0, $zero
	move	$s5, $zero
	b	.LBB11_22
	.p2align	4, , 16
.LBB11_19:                              #   in Loop: Header=BB11_22 Depth=1
	move	$fp, $s5
.LBB11_20:                              # %if.end43
                                        #   in Loop: Header=BB11_22 Depth=1
	move	$a0, $s0
.LBB11_21:                              # %if.end43
                                        #   in Loop: Header=BB11_22 Depth=1
	addi.d	$s4, $s4, -1
	move	$s0, $a0
	move	$s5, $fp
	bge	$s6, $s4, .LBB11_32
.LBB11_22:                              # %for.body34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_28 Depth 2
	ld.d	$a0, $s1, 56
	slli.d	$a1, $s4, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s2, $a0, 24
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB11_24
# %bb.23:                               # %if.then.i.i72
                                        #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a0, $s2, 16
	ld.d	$s2, $a0, 8
.LBB11_24:                              # %clause_GetLiteralAtom.exit75
                                        #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a0, $s2, 16
	ld.d	$a0, $a0, 8
	bne	$a0, $s8, .LBB11_19
# %bb.25:                               # %if.then38
                                        #   in Loop: Header=BB11_22 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s4, $a0, 8
	st.d	$s5, $a0, 0
	ld.w	$a1, $s2, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_20
# %bb.26:                               # %if.end.i.i
                                        #   in Loop: Header=BB11_22 Depth=1
	beqz	$s0, .LBB11_21
# %bb.27:                               # %for.cond.i.i.preheader
                                        #   in Loop: Header=BB11_22 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB11_28:                              # %for.cond.i.i
                                        #   Parent Loop BB11_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB11_28
# %bb.29:                               # %for.end.i.i
                                        #   in Loop: Header=BB11_22 Depth=1
	st.d	$s0, $a1, 0
	b	.LBB11_21
.LBB11_30:
	move	$a0, $zero
	b	.LBB11_51
.LBB11_31:
	move	$fp, $zero
	move	$a0, $zero
.LBB11_32:                              # %for.end45
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s6, $a0, 8
	st.d	$fp, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_37
# %bb.33:                               # %if.end.i.i81
	move	$s5, $a0
	beqz	$s0, .LBB11_38
# %bb.34:                               # %for.cond.i.i83.preheader
	move	$a1, $s5
	.p2align	4, , 16
.LBB11_35:                              # %for.cond.i.i83
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB11_35
# %bb.36:                               # %for.end.i.i87
	st.d	$s0, $a0, 0
	b	.LBB11_38
.LBB11_37:
	move	$s5, $s0
.LBB11_38:                              # %sort_Intersect.exit89
	move	$a0, $s5
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	move	$s6, $zero
	move	$fp, $s3
	b	.LBB11_41
	.p2align	4, , 16
.LBB11_39:                              # %sort_Intersect.exit.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$s6, $a0
.LBB11_40:                              # %sort_Intersect.exit.i
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB11_48
.LBB11_41:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_46 Depth 2
	ld.d	$a0, $fp, 8
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s7, 0
	bne	$a1, $a2, .LBB11_43
# %bb.42:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB11_43:                              # %clause_LiteralPredicate.exit.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_40
# %bb.44:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	beqz	$s6, .LBB11_39
# %bb.45:                               # %for.cond.i.i.i.preheader
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB11_46:                              # %for.cond.i.i.i
                                        #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB11_46
# %bb.47:                               # %for.end.i.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	st.d	$s6, $a1, 0
	b	.LBB11_39
.LBB11_48:                              # %inf_GetSortFromLits.exit
	move	$a0, $s6
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(sort_TheoryComputeAllSubsortHits)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(sort_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(sort_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $zero
	move	$a4, $s2
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_InternWeakening)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB11_49:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s4, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s4, 0
	ld.d	$a3, $a1, 128
	st.d	$s4, $a3, 0
	move	$s4, $a6
	bnez	$a6, .LBB11_49
	.p2align	4, , 16
.LBB11_50:                              # %while.body.i95
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
	bnez	$a6, .LBB11_50
.LBB11_51:                              # %for.end61
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
.Lfunc_end11:
	.size	inf_ForwardEmptySortPlusPlus, .Lfunc_end11-inf_ForwardEmptySortPlusPlus
                                        # -- End function
	.globl	inf_BackwardEmptySortPlusPlus   # -- Begin function inf_BackwardEmptySortPlusPlus
	.p2align	5
	.type	inf_BackwardEmptySortPlusPlus,@function
inf_BackwardEmptySortPlusPlus:          # @inf_BackwardEmptySortPlusPlus
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	move	$t1, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a5, $t1, 68
	ld.w	$a6, $t1, 72
	add.w	$a7, $a5, $a0
	add.d	$t0, $a7, $a6
	addi.w	$t0, $t0, -1
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	bge	$t0, $a7, .LBB12_3
# %bb.1:
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
.LBB12_2:                               # %for.end81
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB12_3:                               # %for.body.lr.ph
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a3, $a2, %got_pc_lo12(symbol_TYPEMASK)
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPESTATBITS)
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	ld.w	$a4, $a3, 0
	ld.w	$t0, $a2, 0
	add.d	$a5, $a0, $a5
	add.w	$a6, $a7, $a6
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s7, $a0, %got_pc_lo12(fol_NOT)
	addi.w	$s6, $zero, -1
	ori	$a7, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$t2, $a0, %got_pc_lo12(symbol_SIGNATURE)
	ori	$s8, $zero, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	b	.LBB12_5
	.p2align	4, , 16
.LBB12_4:                               # %if.end78
                                        #   in Loop: Header=BB12_5 Depth=1
	addi.d	$a5, $a5, 1
	addi.w	$a0, $a5, 0
	beq	$a6, $a0, .LBB12_2
.LBB12_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_17 Depth 2
                                        #       Child Loop BB12_22 Depth 3
                                        #     Child Loop BB12_28 Depth 2
                                        #       Child Loop BB12_31 Depth 3
                                        #       Child Loop BB12_34 Depth 3
                                        #       Child Loop BB12_45 Depth 3
                                        #         Child Loop BB12_52 Depth 4
                                        #       Child Loop BB12_58 Depth 3
                                        #       Child Loop BB12_65 Depth 3
                                        #       Child Loop BB12_70 Depth 3
                                        #       Child Loop BB12_73 Depth 3
                                        #     Child Loop BB12_76 Depth 2
	ld.d	$a0, $t1, 56
	slli.d	$a2, $a5, 3
	ldx.d	$fp, $a0, $a2
	ld.d	$t3, $fp, 24
	ld.w	$a0, $t3, 0
	ld.w	$a2, $s7, 0
	ld.wu	$a3, $fp, 0
	andi	$a3, $a3, 2
	bne	$a0, $a2, .LBB12_8
# %bb.6:                                # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB12_5 Depth=1
	beqz	$a3, .LBB12_4
# %bb.7:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $t3, 16
	ld.d	$t3, $a0, 8
	ld.w	$a0, $t3, 0
	b	.LBB12_9
	.p2align	4, , 16
.LBB12_8:                               # %clause_LiteralAtom.exit.thread
                                        #   in Loop: Header=BB12_5 Depth=1
	beqz	$a3, .LBB12_4
.LBB12_9:                               # %clause_LiteralPredicate.exit.i
                                        #   in Loop: Header=BB12_5 Depth=1
	blt	$s6, $a0, .LBB12_4
# %bb.10:                               # %symbol_IsPredicate.exit.i
                                        #   in Loop: Header=BB12_5 Depth=1
	sub.w	$a0, $zero, $a0
	and	$a2, $a4, $a0
	bne	$a2, $a7, .LBB12_4
# %bb.11:                               # %clause_LiteralIsSort.exit
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a2, $t2, 0
	srl.w	$a0, $a0, $t0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 16
	bne	$a0, $s8, .LBB12_4
# %bb.12:                               # %land.lhs.true8
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $t3, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	blt	$a0, $s8, .LBB12_14
# %bb.13:                               # %lor.lhs.false
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.w	$a0, $t1, 64
	bnez	$a0, .LBB12_4
.LBB12_14:                              # %if.then
                                        #   in Loop: Header=BB12_5 Depth=1
	st.d	$t3, $sp, 80                    # 8-byte Folded Spill
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$t1, $sp, 64                    # 8-byte Folded Spill
	st.d	$zero, $sp, 200
	st.d	$zero, $sp, 208
	addi.d	$a2, $sp, 200
	addi.d	$a3, $sp, 208
	ori	$a4, $zero, 1
	move	$a0, $fp
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_GetBackwardPartnerLits)
	jirl	$ra, $ra, 0
	move	$s0, $fp
	ld.d	$fp, $sp, 208
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s1, $zero
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $sp, 208
	move	$fp, $a0
	b	.LBB12_17
	.p2align	4, , 16
.LBB12_15:                              # %sort_Intersect.exit.i
                                        #   in Loop: Header=BB12_17 Depth=2
	move	$s1, $a0
.LBB12_16:                              # %sort_Intersect.exit.i
                                        #   in Loop: Header=BB12_17 Depth=2
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB12_24
.LBB12_17:                              # %for.body.i
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_22 Depth 3
	ld.d	$a0, $fp, 8
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s7, 0
	bne	$a1, $a2, .LBB12_19
# %bb.18:                               # %if.then.i.i.i65
                                        #   in Loop: Header=BB12_17 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB12_19:                              # %clause_LiteralPredicate.exit.i62
                                        #   in Loop: Header=BB12_17 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_16
# %bb.20:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB12_17 Depth=2
	beqz	$s1, .LBB12_15
# %bb.21:                               # %for.cond.i.i.i.preheader
                                        #   in Loop: Header=BB12_17 Depth=2
	move	$a2, $a0
	.p2align	4, , 16
.LBB12_22:                              # %for.cond.i.i.i
                                        #   Parent Loop BB12_5 Depth=1
                                        #     Parent Loop BB12_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB12_22
# %bb.23:                               # %for.end.i.i.i
                                        #   in Loop: Header=BB12_17 Depth=2
	st.d	$s1, $a1, 0
	b	.LBB12_15
.LBB12_24:                              # %inf_GetSortFromLits.exit
                                        #   in Loop: Header=BB12_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 200
	beqz	$a3, .LBB12_75
# %bb.25:                               # %for.body20.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	b	.LBB12_28
	.p2align	4, , 16
.LBB12_26:                              #   in Loop: Header=BB12_28 Depth=2
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
.LBB12_27:                              # %if.end74
                                        #   in Loop: Header=BB12_28 Depth=2
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a7, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a7, 0
	ld.d	$a0, $a0, 128
	st.d	$a7, $a0, 0
	move	$a3, $a5
	beqz	$a5, .LBB12_75
.LBB12_28:                              # %for.body20
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_31 Depth 3
                                        #       Child Loop BB12_34 Depth 3
                                        #       Child Loop BB12_45 Depth 3
                                        #         Child Loop BB12_52 Depth 4
                                        #       Child Loop BB12_58 Depth 3
                                        #       Child Loop BB12_65 Depth 3
                                        #       Child Loop BB12_70 Depth 3
                                        #       Child Loop BB12_73 Depth 3
	ld.d	$a0, $a3, 8
	ld.d	$a4, $a0, 24
	ld.w	$a1, $a4, 0
	ld.w	$a2, $s7, 0
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	bne	$a1, $a2, .LBB12_30
# %bb.29:                               # %if.then.i74
                                        #   in Loop: Header=BB12_28 Depth=2
	ld.d	$a1, $a4, 16
	ld.d	$a4, $a1, 8
.LBB12_30:                              # %clause_LiteralAtom.exit77
                                        #   in Loop: Header=BB12_28 Depth=2
	ld.d	$s0, $a0, 16
	ld.d	$a1, $s0, 56
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	move	$fp, $s6
	.p2align	4, , 16
.LBB12_31:                              # %while.cond.i
                                        #   Parent Loop BB12_5 Depth=1
                                        #     Parent Loop BB12_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, 0
	addi.d	$fp, $fp, 1
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
	add.d	$s1, $s1, $a3
	addi.d	$a1, $a1, 8
	bne	$a2, $a0, .LBB12_31
# %bb.32:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB12_28 Depth=2
	ld.w	$s5, $s0, 64
	ld.w	$a0, $s0, 68
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $a4, 16
	ld.w	$a2, $s0, 72
	add.d	$a0, $s5, $a0
	ld.d	$s3, $a1, 8
	add.d	$a0, $a0, $a2
	addi.w	$s2, $a0, -1
	blt	$s2, $s5, .LBB12_40
# %bb.33:                               # %for.body31.preheader
                                        #   in Loop: Header=BB12_28 Depth=2
	slli.d	$s4, $s5, 3
	.p2align	4, , 16
.LBB12_34:                              # %for.body31
                                        #   Parent Loop BB12_5 Depth=1
                                        #     Parent Loop BB12_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 56
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s7, 0
	bne	$a1, $a2, .LBB12_36
# %bb.35:                               # %if.then.i.i
                                        #   in Loop: Header=BB12_34 Depth=3
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB12_36:                              # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB12_34 Depth=3
	ld.w	$a1, $s3, 0
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	bge	$s5, $s2, .LBB12_38
# %bb.37:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB12_34 Depth=3
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	beqz	$a0, .LBB12_34
.LBB12_38:                              # %for.end
                                        #   in Loop: Header=BB12_28 Depth=2
	bnez	$a0, .LBB12_26
# %bb.39:                               # %for.end.if.then38_crit_edge
                                        #   in Loop: Header=BB12_28 Depth=2
	ld.w	$s5, $s0, 64
.LBB12_40:                              # %if.then38
                                        #   in Loop: Header=BB12_28 Depth=2
	blt	$s5, $s8, .LBB12_54
# %bb.41:                               # %for.body45.preheader
                                        #   in Loop: Header=BB12_28 Depth=2
	move	$s4, $zero
	move	$s2, $zero
	bstrpick.d	$s7, $fp, 31, 0
	b	.LBB12_45
	.p2align	4, , 16
.LBB12_42:                              #   in Loop: Header=BB12_45 Depth=3
	move	$fp, $s2
.LBB12_43:                              # %if.end58
                                        #   in Loop: Header=BB12_45 Depth=3
	move	$s6, $s4
.LBB12_44:                              # %if.end58
                                        #   in Loop: Header=BB12_45 Depth=3
	move	$s4, $s6
	move	$s2, $fp
	ori	$a0, $zero, 1
	bgeu	$a0, $s8, .LBB12_55
.LBB12_45:                              # %for.body45
                                        #   Parent Loop BB12_5 Depth=1
                                        #     Parent Loop BB12_28 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_52 Depth 4
	ld.d	$a0, $s0, 56
	move	$s8, $s5
	addi.d	$s5, $s5, -1
	slli.d	$a1, $s5, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s6, $a0, 24
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB12_47
# %bb.46:                               # %if.then.i.i93
                                        #   in Loop: Header=BB12_45 Depth=3
	ld.d	$a0, $s6, 16
	ld.d	$s6, $a0, 8
.LBB12_47:                              # %clause_GetLiteralAtom.exit96
                                        #   in Loop: Header=BB12_45 Depth=3
	beq	$s5, $s7, .LBB12_42
# %bb.48:                               # %land.lhs.true48
                                        #   in Loop: Header=BB12_45 Depth=3
	ld.d	$a0, $s6, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB12_42
# %bb.49:                               # %if.then53
                                        #   in Loop: Header=BB12_45 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s5, $a0, 8
	st.d	$s2, $a0, 0
	ld.w	$a1, $s6, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_43
# %bb.50:                               # %if.end.i.i
                                        #   in Loop: Header=BB12_45 Depth=3
	move	$s6, $a0
	beqz	$s4, .LBB12_44
# %bb.51:                               # %for.cond.i.i.preheader
                                        #   in Loop: Header=BB12_45 Depth=3
	move	$a1, $s6
	.p2align	4, , 16
.LBB12_52:                              # %for.cond.i.i
                                        #   Parent Loop BB12_5 Depth=1
                                        #     Parent Loop BB12_28 Depth=2
                                        #       Parent Loop BB12_45 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB12_52
# %bb.53:                               # %for.end.i.i
                                        #   in Loop: Header=BB12_45 Depth=3
	st.d	$s4, $a0, 0
	b	.LBB12_44
	.p2align	4, , 16
.LBB12_54:                              #   in Loop: Header=BB12_28 Depth=2
	move	$fp, $zero
	move	$s6, $zero
.LBB12_55:                              # %for.end60
                                        #   in Loop: Header=BB12_28 Depth=2
	srai.d	$s2, $s1, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s2, $a0, 8
	st.d	$fp, $a0, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sort_TheorySortOfSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_61
# %bb.56:                               # %if.end.i.i104
                                        #   in Loop: Header=BB12_28 Depth=2
	move	$fp, $a0
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ori	$s8, $zero, 1
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	beqz	$s6, .LBB12_60
# %bb.57:                               # %for.cond.i.i106.preheader
                                        #   in Loop: Header=BB12_28 Depth=2
	move	$a2, $fp
	.p2align	4, , 16
.LBB12_58:                              # %for.cond.i.i106
                                        #   Parent Loop BB12_5 Depth=1
                                        #     Parent Loop BB12_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB12_58
# %bb.59:                               # %for.end.i.i110
                                        #   in Loop: Header=BB12_28 Depth=2
	st.d	$s6, $a1, 0
.LBB12_60:                              # %sort_Intersect.exit112
                                        #   in Loop: Header=BB12_28 Depth=2
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB12_62
	.p2align	4, , 16
.LBB12_61:                              #   in Loop: Header=BB12_28 Depth=2
	move	$fp, $s6
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ori	$s8, $zero, 1
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
.LBB12_62:                              # %sort_Intersect.exit112
                                        #   in Loop: Header=BB12_28 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(sort_TheoryComputeAllSubsortHits)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sort_Delete)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$fp, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$s3, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s3, 0
	pcalau12i	$a2, %got_pc_hi20(cont_STACK)
	ld.d	$s5, $a2, %got_pc_lo12(cont_STACK)
	pcalau12i	$a2, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a2, $a2, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a3, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a3, $a3, %got_pc_lo12(cont_RIGHTCONTEXT)
	slli.d	$a4, $a1, 2
	stx.w	$a0, $s5, $a4
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a3, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s3, 0
	st.w	$zero, $fp, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	move	$a4, $s4
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_InternWeakening)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_68
# %bb.63:                               # %if.end.i
                                        #   in Loop: Header=BB12_28 Depth=2
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	beqz	$a3, .LBB12_67
# %bb.64:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB12_28 Depth=2
	move	$a2, $a0
	.p2align	4, , 16
.LBB12_65:                              # %for.cond.i
                                        #   Parent Loop BB12_5 Depth=1
                                        #     Parent Loop BB12_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB12_65
# %bb.66:                               # %for.end.i
                                        #   in Loop: Header=BB12_28 Depth=2
	st.d	$a3, $a1, 0
.LBB12_67:                              # %list_Nconc.exit
                                        #   in Loop: Header=BB12_28 Depth=2
	ld.w	$a1, $fp, 0
	bge	$a1, $s8, .LBB12_69
	b	.LBB12_71
	.p2align	4, , 16
.LBB12_68:                              #   in Loop: Header=BB12_28 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a1, $fp, 0
	blt	$a1, $s8, .LBB12_71
.LBB12_69:                              # %while.body.i.preheader
                                        #   in Loop: Header=BB12_28 Depth=2
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB12_70:                              # %while.body.i
                                        #   Parent Loop BB12_5 Depth=1
                                        #     Parent Loop BB12_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a2, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a2, $a2, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a3, $a2, 0
	pcalau12i	$a4, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a4, $a4, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a3, $a4, 0
	ld.d	$a5, $a3, 24
	st.d	$a5, $a2, 0
	st.w	$zero, $a3, 20
	vst	$vr0, $a3, 4
	ld.d	$a2, $a4, 0
	st.d	$zero, $a2, 24
	addi.d	$a2, $a1, -2
	addi.w	$a1, $a1, -1
	st.w	$a2, $fp, 0
	bltu	$s8, $a1, .LBB12_70
.LBB12_71:                              # %while.end.i
                                        #   in Loop: Header=BB12_28 Depth=2
	ld.w	$a1, $s3, 0
	beqz	$a1, .LBB12_73
# %bb.72:                               # %if.then.i118
                                        #   in Loop: Header=BB12_28 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a2, $a1, 2
	ldx.w	$a2, $s5, $a2
	st.w	$a1, $s3, 0
	st.w	$a2, $fp, 0
	.p2align	4, , 16
.LBB12_73:                              # %while.body.i123
                                        #   Parent Loop BB12_5 Depth=1
                                        #     Parent Loop BB12_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $s1, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a1, $a1, 128
	st.d	$s1, $a1, 0
	move	$s1, $a6
	bnez	$a6, .LBB12_73
# %bb.74:                               #   in Loop: Header=BB12_28 Depth=2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	b	.LBB12_27
.LBB12_75:                              # %while.body.i131.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sort_Delete)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB12_76:                              # %while.body.i131
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s2, 0
	ld.d	$a0, $a0, 128
	st.d	$s2, $a0, 0
	move	$s2, $a5
	bnez	$a5, .LBB12_76
# %bb.77:                               # %list_Delete.exit139
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ori	$a7, $zero, 2
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	b	.LBB12_4
.Lfunc_end12:
	.size	inf_BackwardEmptySortPlusPlus, .Lfunc_end12-inf_BackwardEmptySortPlusPlus
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
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
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
.Lfunc_end13:
	.size	misc_DumpCore, .Lfunc_end13-misc_DumpCore
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function clause_SetSplitDataFromList
	.type	clause_SetSplitDataFromList,@function
clause_SetSplitDataFromList:            # @clause_SetSplitDataFromList
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a2, $a0, 24
	beqz	$a1, .LBB14_9
# %bb.1:                                # %while.body.lr.ph
	ld.w	$a3, $a0, 12
	move	$fp, $a2
	move	$a4, $a1
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               # %if.end
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.w	$a6, $a5, 12
	sltu	$a7, $a3, $a6
	masknez	$a3, $a3, $a7
	maskeqz	$a6, $a6, $a7
	or	$a3, $a6, $a3
	st.w	$a3, $a0, 12
	ld.w	$a5, $a5, 24
	ld.d	$a4, $a4, 0
	sltu	$a6, $a5, $fp
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $fp, $a6
	or	$fp, $a6, $a5
	beqz	$a4, .LBB14_5
.LBB14_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 8
	ld.bu	$a6, $a5, 48
	andi	$a6, $a6, 8
	beqz	$a6, .LBB14_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.w	$a6, $a0, 48
	ori	$a6, $a6, 8
	st.w	$a6, $a0, 48
	b	.LBB14_2
.LBB14_5:                               # %while.end
	bgeu	$a2, $fp, .LBB14_9
# %bb.6:                                # %if.then16
	move	$s0, $a1
	move	$s1, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB14_16
# %bb.7:                                # %if.then18
	slli.w	$a1, $a2, 3
	ori	$a2, $zero, 1024
	bgeu	$a1, $a2, .LBB14_10
# %bb.8:                                # %if.else25.i
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
	b	.LBB14_16
.LBB14_9:                               # %if.end29
	bnez	$a2, .LBB14_17
	b	.LBB14_19
.LBB14_10:                              # %if.then.i
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
	beqz	$a4, .LBB14_25
# %bb.11:                               # %if.then3.i
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB14_13
.LBB14_12:                              # %if.then9.i
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB14_13:                              # %if.end13.i
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
	bltz	$a1, .LBB14_15
# %bb.14:                               # %if.then18.i
	add.d	$a1, $a1, $a3
	st.d	$a1, $a2, 0
.LBB14_15:                              # %if.end23.i
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB14_16:                              # %if.end29.thread
	slli.w	$a0, $fp, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	st.d	$a1, $s1, 16
	st.w	$fp, $s1, 24
	move	$a1, $s0
.LBB14_17:                              # %for.body.lr.ph
	move	$a2, $zero
	move	$a3, $zero
	.p2align	4, , 16
.LBB14_18:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 16
	stx.d	$zero, $a4, $a2
	ld.wu	$a4, $a0, 24
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	bltu	$a3, $a4, .LBB14_18
.LBB14_19:                              # %while.cond34.preheader
	bnez	$a1, .LBB14_22
.LBB14_20:                              # %while.end58
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
	.p2align	4, , 16
.LBB14_21:                              # %while.cond34.loopexit
                                        #   in Loop: Header=BB14_22 Depth=1
	beqz	$a1, .LBB14_20
.LBB14_22:                              # %while.body38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_24 Depth 2
	ld.d	$a2, $a1, 8
	ld.w	$a3, $a2, 24
	ld.d	$a1, $a1, 0
	beqz	$a3, .LBB14_21
# %bb.23:                               # %for.body45.lr.ph
                                        #   in Loop: Header=BB14_22 Depth=1
	move	$a3, $zero
	move	$a4, $zero
	.p2align	4, , 16
.LBB14_24:                              # %for.body45
                                        #   Parent Loop BB14_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a0, 16
	ld.d	$a6, $a2, 16
	ldx.d	$a7, $a5, $a3
	ldx.d	$a6, $a6, $a3
	or	$a6, $a6, $a7
	stx.d	$a6, $a5, $a3
	ld.wu	$a5, $a2, 24
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 8
	bltu	$a4, $a5, .LBB14_24
	b	.LBB14_21
.LBB14_25:                              # %if.else.i
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB14_12
	b	.LBB14_13
.Lfunc_end14:
	.size	clause_SetSplitDataFromList, .Lfunc_end14-clause_SetSplitDataFromList
                                        # -- End function
	.p2align	5                               # -- Begin function inf_LiteralsHaveSameSubtermAndAreFromSameClause
	.type	inf_LiteralsHaveSameSubtermAndAreFromSameClause,@function
inf_LiteralsHaveSameSubtermAndAreFromSameClause: # @inf_LiteralsHaveSameSubtermAndAreFromSameClause
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 24
	pcalau12i	$a3, %got_pc_hi20(fol_NOT)
	ld.d	$a3, $a3, %got_pc_lo12(fol_NOT)
	ld.w	$a4, $a2, 0
	ld.w	$a3, $a3, 0
	bne	$a4, $a3, .LBB15_2
# %bb.1:                                # %if.then.i
	ld.d	$a2, $a2, 16
	ld.d	$a2, $a2, 8
.LBB15_2:                               # %clause_LiteralAtom.exit
	ld.d	$a4, $a1, 24
	ld.d	$a2, $a2, 16
	ld.w	$a5, $a4, 0
	ld.d	$a2, $a2, 8
	bne	$a5, $a3, .LBB15_4
# %bb.3:                                # %if.then.i8
	ld.d	$a3, $a4, 16
	ld.d	$a4, $a3, 8
.LBB15_4:                               # %clause_LiteralAtom.exit11
	ld.d	$a3, $a4, 16
	ld.d	$a3, $a3, 8
	beq	$a2, $a3, .LBB15_6
# %bb.5:
	move	$a0, $zero
	ret
.LBB15_6:                               # %land.rhs
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ret
.Lfunc_end15:
	.size	inf_LiteralsHaveSameSubtermAndAreFromSameClause, .Lfunc_end15-inf_LiteralsHaveSameSubtermAndAreFromSameClause
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n\tError in file %s at line %d\n"
	.size	.L.str, 31

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"/home/zhaoqi/llvm-test-suite/MultiSource/Applications/SPASS/rules-sort.c"
	.size	.L.str.1, 73

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n In inf_BuildConstraintHyperResolvent: Unification failed."
	.size	.L.str.2, 60

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\n Please report this error via email to spass@mpi-sb.mpg.de including\n the SPASS version, input problem, options, operating system.\n"
	.size	.L.str.3, 133

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n\n"
	.size	.L.str.4, 3

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\nT_k = "
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\nS_k ="
	.size	.L.str.6, 7

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" in "
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\nSOJU: "
	.size	.L.str.8, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inf_LiteralsHaveSameSubtermAndAreFromSameClause
