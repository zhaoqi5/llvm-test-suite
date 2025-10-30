	.file	"rules-inf.c"
	.text
	.globl	inf_EqualityResolution          # -- Begin function inf_EqualityResolution
	.p2align	5
	.type	inf_EqualityResolution,@function
inf_EqualityResolution:                 # @inf_EqualityResolution
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
	move	$s7, $a0
	ld.w	$a0, $a0, 68
	beqz	$a0, .LBB0_3
# %bb.1:                                # %lor.lhs.false
	move	$s0, $a3
	move	$s1, $a2
	move	$s5, $a1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_3
# %bb.2:                                # %if.end
	ld.w	$s3, $s7, 64
	ld.w	$a0, $s7, 68
	add.d	$a1, $s3, $a0
	addi.w	$a1, $a1, -1
	bge	$a1, $s3, .LBB0_5
.LBB0_3:
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
.LBB0_4:                                # %cleanup
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
.LBB0_5:                                # %for.body.lr.ph
	add.w	$s8, $a0, $s3
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a4, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a5, $a0, %got_pc_lo12(fol_EQUALITY)
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$s2, $a0, %got_pc_lo12(cont_LASTBINDING)
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$s4, $a0, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_6:                                # %cont_Reset.exit
                                        #   in Loop: Header=BB0_8 Depth=1
	st.w	$zero, $a3, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ori	$a1, $zero, 2000
	st.w	$a1, $a0, 0
.LBB0_7:                                # %for.inc60
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.d	$s3, $s3, 1
	addi.w	$a0, $s3, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	beq	$s8, $a0, .LBB0_4
.LBB0_8:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_30 Depth 2
	ld.d	$a0, $s7, 56
	slli.d	$a1, $s3, 3
	ldx.d	$s6, $a0, $a1
	ld.d	$fp, $s6, 24
	ld.w	$a0, $fp, 0
	ld.w	$a1, $a4, 0
	move	$a2, $a0
	bne	$a0, $a1, .LBB0_10
# %bb.9:                                # %if.then.i.i
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a2, $fp, 16
	ld.d	$a2, $a2, 8
	ld.w	$a2, $a2, 0
.LBB0_10:                               # %clause_LiteralIsEquality.exit
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a3, $a5, 0
	bne	$a2, $a3, .LBB0_7
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.wu	$a2, $s6, 0
	andi	$a3, $a2, 4
	bnez	$a3, .LBB0_15
# %bb.12:                               # %lor.lhs.false12
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.bu	$a3, $s7, 48
	andi	$a3, $a3, 2
	bnez	$a3, .LBB0_7
# %bb.13:                               # %land.lhs.true15
                                        #   in Loop: Header=BB0_8 Depth=1
	beqz	$s5, .LBB0_15
# %bb.14:                               # %land.lhs.true15
                                        #   in Loop: Header=BB0_8 Depth=1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_7
	.p2align	4, , 16
.LBB0_15:                               # %if.then20
                                        #   in Loop: Header=BB0_8 Depth=1
	bne	$a0, $a1, .LBB0_17
# %bb.16:                               # %if.then.i.i62
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$fp, $a0, 8
.LBB0_17:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB0_8 Depth=1
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a1, 0
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a2, 8
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_28
# %bb.18:                               # %if.then27
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB0_21
# %bb.19:                               # %if.then27
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.wu	$a0, $s6, 0
	andi	$a0, $a0, 4
	bnez	$a0, .LBB0_21
# %bb.20:                               # %lor.lhs.false33
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a3, $sp, 128
	move	$a0, $s7
	move	$a1, $s3
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	move	$a4, $zero
	move	$a5, $s1
	move	$a6, $s0
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_27
.LBB0_21:                               # %if.then36
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $s7, 64
	ld.w	$a1, $s7, 68
	ld.w	$a2, $s7, 72
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	pcaddu18i	$ra, %call36(clause_CreateBody)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 64
	move	$s6, $a0
	st.w	$a1, $a0, 64
	ld.w	$a0, $s7, 68
	addi.d	$a0, $a0, -1
	st.w	$a0, $s6, 68
	ld.w	$a0, $s7, 72
	st.w	$a0, $s6, 72
	ld.w	$a1, $s7, 64
	ld.w	$a2, $s7, 68
	add.d	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	addi.w	$a1, $a0, -1
	bltz	$a1, .LBB0_26
# %bb.22:                               # %for.body47.lr.ph
                                        #   in Loop: Header=BB0_8 Depth=1
	move	$s5, $zero
	move	$s0, $zero
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$fp, $a1, 31, 0
	bstrpick.d	$s8, $a0, 31, 0
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               # %for.inc
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$s5, $s5, 8
	addi.d	$s8, $s8, -1
	addi.d	$fp, $fp, -1
	beqz	$s8, .LBB0_26
.LBB0_24:                               # %for.body47
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$fp, .LBB0_23
# %bb.25:                               # %if.then49
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a0, $s7, 56
	ldx.d	$a0, $a0, $s5
	move	$s1, $s7
	ld.d	$s7, $sp, 128
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s7
	move	$s7, $s1
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 56
	slli.d	$a2, $s0, 3
	stx.d	$a0, $a1, $a2
	addi.w	$s0, $s0, 1
	b	.LBB0_23
.LBB0_26:                               # %for.end
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.w	$a2, $s3, 0
	move	$a0, $s6
	move	$a1, $s7
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(clause_SetDataFromFather)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	st.w	$a0, $s6, 76
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
.LBB0_27:                               # %if.end57
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
.LBB0_28:                               # %if.end58
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	beqz	$a0, .LBB0_6
# %bb.29:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a1, $a3, 0
	addi.d	$a1, $a1, -1
	.p2align	4, , 16
.LBB0_30:                               # %while.body.i
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a0, $s4, 0
	ld.d	$a2, $a0, 24
	st.d	$a2, $s2, 0
	st.w	$zero, $a0, 20
	vst	$vr0, $a0, 4
	ld.d	$a2, $s4, 0
	ld.d	$a0, $s2, 0
	st.d	$zero, $a2, 24
	st.w	$a1, $a3, 0
	addi.d	$a1, $a1, -1
	bnez	$a0, .LBB0_30
	b	.LBB0_6
.Lfunc_end0:
	.size	inf_EqualityResolution, .Lfunc_end0-inf_EqualityResolution
                                        # -- End function
	.p2align	5                               # -- Begin function inf_LitMax
	.type	inf_LitMax,@function
inf_LitMax:                             # @inf_LitMax
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
	ld.d	$a0, $a0, 56
	move	$s0, $a1
	slli.d	$s7, $a1, 3
	ldx.d	$a1, $a0, $s7
	ld.wu	$a0, $a1, 0
	andi	$a7, $a0, 1
	beqz	$a7, .LBB1_3
# %bb.1:                                # %lor.lhs.false
	move	$s2, $a5
	move	$s3, $a3
	move	$s4, $a2
	beqz	$a4, .LBB1_5
# %bb.2:                                # %lor.lhs.false
	andi	$a0, $a0, 2
	bnez	$a0, .LBB1_5
.LBB1_3:
	move	$a0, $zero
.LBB1_4:                                # %cleanup
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
.LBB1_5:                                # %if.end
	ori	$a0, $zero, 1
	beqz	$s3, .LBB1_4
# %bb.6:                                # %if.end
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 72
	add.w	$a2, $a3, $a2
	ori	$s1, $zero, 1
	beq	$a2, $s1, .LBB1_4
# %bb.7:                                # %if.end11
	move	$s5, $a6
	move	$s6, $a4
	ld.w	$a3, $fp, 64
	ld.d	$a0, $a1, 24
	add.d	$a1, $a2, $a3
	addi.w	$s8, $a1, -1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 64
	bge	$s8, $a1, .LBB1_9
# %bb.8:
	move	$s6, $a0
	b	.LBB1_19
.LBB1_9:                                # %for.body.preheader
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	slli.d	$s5, $a1, 3
	sltu	$a0, $zero, $s6
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_10:                               # %if.end42
                                        #   in Loop: Header=BB1_12 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB1_11:                               # %for.inc
                                        #   in Loop: Header=BB1_12 Depth=1
	addi.d	$a1, $s1, 1
	addi.d	$s5, $s5, 8
	bge	$s1, $s8, .LBB1_18
.LBB1_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $a1
	beq	$s0, $a1, .LBB1_11
# %bb.13:                               # %for.body
                                        #   in Loop: Header=BB1_12 Depth=1
	beq	$s4, $s1, .LBB1_11
# %bb.14:                               # %land.lhs.true21
                                        #   in Loop: Header=BB1_12 Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s5
	ld.bu	$a1, $a0, 0
	andi	$a1, $a1, 1
	beqz	$a1, .LBB1_11
# %bb.15:                               # %if.then25
                                        #   in Loop: Header=BB1_12 Depth=1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	ldx.d	$a2, $a1, $s7
	ldx.d	$a3, $a1, $s5
	ld.w	$a1, $a2, 8
	ld.w	$a3, $a3, 8
	move	$s6, $a0
	ori	$a4, $zero, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s6
	move	$a5, $s2
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_LiteralCompare)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_17
# %bb.16:                               # %if.then25
                                        #   in Loop: Header=BB1_12 Depth=1
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	beqz	$a0, .LBB1_10
.LBB1_17:                               # %if.then41
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	b	.LBB1_19
.LBB1_18:
	ori	$s1, $zero, 1
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
.LBB1_19:                               # %cleanup.sink.split
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB1_4
.Lfunc_end1:
	.size	inf_LitMax, .Lfunc_end1-inf_LitMax
                                        # -- End function
	.p2align	5                               # -- Begin function clause_SetDataFromFather
	.type	clause_SetDataFromFather,@function
clause_SetDataFromFather:               # @clause_SetDataFromFather
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s2, $a4
	move	$s3, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	move	$a1, $a3
	move	$a2, $a4
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 48
	andi	$a0, $a0, 8
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.then.i
	ld.w	$a0, $fp, 48
	ori	$a0, $a0, 8
	st.w	$a0, $fp, 48
.LBB2_2:                                # %if.end.i
	ld.w	$a0, $s1, 12
	st.w	$a0, $fp, 12
	ld.w	$s3, $s1, 24
	ld.w	$a1, $fp, 24
	ld.d	$s2, $s1, 16
	beq	$a1, $s3, .LBB2_16
# %bb.3:                                # %if.then.i.i
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB2_6
# %bb.4:                                # %if.then2.i.i
	slli.w	$a1, $a1, 3
	ori	$a2, $zero, 1024
	bgeu	$a1, $a2, .LBB2_8
# %bb.5:                                # %if.else25.i.i.i
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	ldx.d	$a3, $a2, $a1
	ld.w	$a4, $a3, 32
	pcalau12i	$a5, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a5, $a5, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a6, $a5, 0
	add.d	$a4, $a6, $a4
	st.d	$a4, $a5, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $a1, 0
.LBB2_6:                                # %if.end.i.i
	beqz	$s3, .LBB2_14
.LBB2_7:                                # %if.then8.i.i
	slli.w	$a0, $s3, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	b	.LBB2_15
.LBB2_8:                                # %if.then.i.i.i
	pcalau12i	$a2, %got_pc_hi20(memory_ALIGN)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ALIGN)
	ld.w	$a2, $a2, 0
	mod.wu	$a3, $a1, $a2
	sltui	$a4, $a3, 1
	sub.d	$a2, $a2, $a3
	masknez	$a2, $a2, $a4
	add.w	$a1, $a2, $a1
	pcalau12i	$a2, %got_pc_hi20(memory_OFFSET)
	ld.d	$a2, $a2, %got_pc_lo12(memory_OFFSET)
	ld.wu	$a2, $a2, 0
	sub.d	$a2, $a0, $a2
	ld.d	$a4, $a2, -16
	ld.d	$a3, $a2, -8
	beqz	$a4, .LBB2_20
# %bb.9:                                # %if.then3.i.i.i
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB2_11
.LBB2_10:                               # %if.then9.i.i.i
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB2_11:                               # %if.end13.i.i.i
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a2, $a2, 0
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 16
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a3, $a2, 0
	add.d	$a3, $a1, $a3
	st.d	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	ld.d	$a3, $a2, 0
	bltz	$a3, .LBB2_13
# %bb.12:                               # %if.then18.i.i.i
	add.d	$a1, $a3, $a1
	st.d	$a1, $a2, 0
.LBB2_13:                               # %if.end23.i.i.i
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB2_7
.LBB2_14:
	move	$a0, $zero
.LBB2_15:                               # %if.end14.i.i
	st.d	$a0, $fp, 16
	st.w	$s3, $fp, 24
.LBB2_16:                               # %if.end16.i.i
	beqz	$s3, .LBB2_19
# %bb.17:                               # %for.body.lr.ph.i.i
	move	$a0, $zero
	bstrpick.d	$a1, $s3, 31, 0
	slli.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB2_18:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a2, $s2, $a0
	ld.d	$a3, $fp, 16
	stx.d	$a2, $a3, $a0
	addi.d	$a0, $a0, 8
	bne	$a1, $a0, .LBB2_18
.LBB2_19:                               # %clause_SetSplitDataFromFather.exit
	ld.w	$a0, $s1, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 8
	ld.w	$s1, $s1, 0
	ld.d	$s2, $fp, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s2, $a0, 0
	ld.d	$s1, $fp, 40
	st.d	$a0, $fp, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $fp, 40
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB2_20:                               # %if.else.i.i.i
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB2_10
	b	.LBB2_11
.Lfunc_end2:
	.size	clause_SetDataFromFather, .Lfunc_end2-clause_SetDataFromFather
                                        # -- End function
	.globl	inf_EqualityFactoring           # -- Begin function inf_EqualityFactoring
	.p2align	5
	.type	inf_EqualityFactoring,@function
inf_EqualityFactoring:                  # @inf_EqualityFactoring
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
	move	$fp, $a0
	ld.w	$a0, $a0, 72
	beqz	$a0, .LBB3_4
# %bb.1:                                # %lor.lhs.false
	ld.bu	$a0, $fp, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB3_4
# %bb.2:                                # %lor.lhs.false3
	move	$s3, $a2
	move	$s0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_4
# %bb.3:                                # %if.end
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.w	$a3, $a1, $a0
	add.d	$a4, $a3, $a2
	addi.w	$s8, $a4, -1
	bge	$s8, $a3, .LBB3_6
.LBB3_4:
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
.LBB3_5:                                # %cleanup
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
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
.LBB3_6:                                # %for.body.lr.ph
	add.d	$s2, $a0, $a1
	add.w	$a0, $a3, $a2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a4, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a5, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_7:                                # %for.inc86
                                        #   in Loop: Header=BB3_8 Depth=1
	addi.d	$s2, $s2, 1
	addi.w	$a0, $s2, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_5
.LBB3_8:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_17 Depth 2
                                        #       Child Loop BB3_27 Depth 3
                                        #       Child Loop BB3_34 Depth 3
                                        #       Child Loop BB3_43 Depth 3
                                        #       Child Loop BB3_51 Depth 3
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s2, 3
	ldx.d	$a6, $a0, $a1
	ld.bu	$a0, $a6, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB3_7
# %bb.9:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a0, $a6, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a4, 0
	bne	$a1, $a2, .LBB3_11
# %bb.10:                               # %clause_LiteralIsEquality.exit
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB3_11:                               # %clause_LiteralIsEquality.exit.thread
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.w	$a2, $a5, 0
	bne	$a1, $a2, .LBB3_7
# %bb.12:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	add.w	$a3, $a2, $a1
	blt	$s8, $a3, .LBB3_7
# %bb.13:                               # %for.body22.lr.ph
                                        #   in Loop: Header=BB3_8 Depth=1
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 16
	ld.d	$a3, $a0, 0
	ld.d	$s1, $a0, 8
	ld.d	$s7, $a3, 8
	add.d	$a0, $a1, $a2
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	b	.LBB3_17
.LBB3_14:                               # %cont_Reset.exit152
                                        #   in Loop: Header=BB3_17 Depth=2
	st.w	$zero, $s0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s4, 0
	ori	$a0, $zero, 2000
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB3_15:                               # %for.inc
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
.LBB3_16:                               # %for.inc
                                        #   in Loop: Header=BB3_17 Depth=2
	addi.d	$a0, $s6, 1
	bge	$s6, $s8, .LBB3_7
.LBB3_17:                               # %for.body22
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_27 Depth 3
                                        #       Child Loop BB3_34 Depth 3
                                        #       Child Loop BB3_43 Depth 3
                                        #       Child Loop BB3_51 Depth 3
	move	$s6, $a0
	beq	$a0, $s2, .LBB3_16
# %bb.18:                               # %land.lhs.true25
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s6, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a4, 0
	bne	$a1, $a2, .LBB3_20
# %bb.19:                               # %clause_LiteralIsEquality.exit106
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB3_20:                               # %clause_LiteralIsEquality.exit106.thread
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.w	$a2, $a5, 0
	bne	$a1, $a2, .LBB3_16
# %bb.21:                               # %clause_LiteralAtom.exit113
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ld.d	$s4, $a0, 8
	ld.d	$a0, $a1, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s5, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	ld.d	$a0, $s5, 0
	move	$a1, $s1
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	move	$a2, $s4
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	beqz	$a0, .LBB3_25
# %bb.22:                               # %if.then35
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a0, $s5, 0
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 144
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s7
	move	$a5, $s0
	move	$a6, $s3
	pcaddu18i	$ra, %call36(inf_EqualityFactoringApplicable)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_24
# %bb.23:                               # %if.then39
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a5, $sp, 144
	move	$a0, $fp
	move	$a1, $s7
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s6
	move	$a6, $s0
	move	$a7, $s3
	pcaddu18i	$ra, %call36(inf_ApplyEqualityFactoring)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
.LBB3_24:                               # %if.end42
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
.LBB3_25:                               # %if.end43
                                        #   in Loop: Header=BB3_17 Depth=2
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$s1, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a0, $s1, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	beqz	$a0, .LBB3_28
# %bb.26:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB3_17 Depth=2
	pcalau12i	$a1, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a1, $a1, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a2, $a1, 0
	addi.d	$a2, $a2, -1
	.p2align	4, , 16
.LBB3_27:                               # %while.body.i
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a3, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a3, $a3, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a0, $a3, 0
	ld.d	$a4, $a0, 24
	st.d	$a4, $s1, 0
	st.w	$zero, $a0, 20
	vst	$vr0, $a0, 4
	ld.d	$a3, $a3, 0
	ld.d	$a0, $s1, 0
	st.d	$zero, $a3, 24
	st.w	$a2, $a1, 0
	addi.d	$a2, $a2, -1
	bnez	$a0, .LBB3_27
.LBB3_28:                               # %cont_Reset.exit
                                        #   in Loop: Header=BB3_17 Depth=2
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$s0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a1, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a0, $zero, 1
	move	$s4, $a1
	st.w	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a1, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ori	$a0, $zero, 2000
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.w	$a0, $a1, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $s5, 0
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s3
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_32
# %bb.29:                               # %if.then47
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a0, $s5, 0
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 144
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $s7
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	move	$a5, $s8
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(inf_EqualityFactoringApplicable)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_31
# %bb.30:                               # %if.then51
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a5, $sp, 144
	move	$a0, $fp
	move	$a1, $s7
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s6
	move	$a6, $s8
	move	$a7, $s3
	pcaddu18i	$ra, %call36(inf_ApplyEqualityFactoring)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
.LBB3_31:                               # %if.end54
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	bnez	$a0, .LBB3_33
	b	.LBB3_35
.LBB3_32:                               #   in Loop: Header=BB3_17 Depth=2
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	beqz	$a0, .LBB3_35
.LBB3_33:                               # %while.body.preheader.i117
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	.p2align	4, , 16
.LBB3_34:                               # %while.body.i119
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a2, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a2, $a2, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a0, $a2, 0
	ld.d	$a3, $a0, 24
	st.d	$a3, $s1, 0
	st.w	$zero, $a0, 20
	vst	$vr0, $a0, 4
	ld.d	$a2, $a2, 0
	ld.d	$a0, $s1, 0
	st.d	$zero, $a2, 24
	st.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	bnez	$a0, .LBB3_34
.LBB3_35:                               # %cont_Reset.exit126
                                        #   in Loop: Header=BB3_17 Depth=2
	st.w	$zero, $s0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s4, 0
	ori	$a0, $zero, 2000
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_15
# %bb.36:                               # %if.then58
                                        #   in Loop: Header=BB3_17 Depth=2
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	move	$a1, $s7
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_39
# %bb.37:                               # %if.then62
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a0, $s5, 0
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 144
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s7
	move	$s7, $s3
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	move	$a5, $s8
	move	$a6, $s7
	pcaddu18i	$ra, %call36(inf_EqualityFactoringApplicable)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_40
# %bb.38:                               # %if.then66
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a5, $sp, 144
	move	$a0, $fp
	move	$a1, $s3
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s6
	move	$a6, $s8
	move	$a7, $s7
	pcaddu18i	$ra, %call36(inf_ApplyEqualityFactoring)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB3_41
.LBB3_39:                               #   in Loop: Header=BB3_17 Depth=2
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB3_42
	b	.LBB3_44
.LBB3_40:                               #   in Loop: Header=BB3_17 Depth=2
	move	$s3, $s7
.LBB3_41:                               # %if.end69
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB3_44
.LBB3_42:                               # %while.body.preheader.i130
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	.p2align	4, , 16
.LBB3_43:                               # %while.body.i132
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a2, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a2, $a2, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a0, $a2, 0
	ld.d	$a3, $a0, 24
	st.d	$a3, $s1, 0
	st.w	$zero, $a0, 20
	vst	$vr0, $a0, 4
	ld.d	$a2, $a2, 0
	ld.d	$a0, $s1, 0
	st.d	$zero, $a2, 24
	st.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	bnez	$a0, .LBB3_43
.LBB3_44:                               # %cont_Reset.exit139
                                        #   in Loop: Header=BB3_17 Depth=2
	st.w	$zero, $s0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s4, 0
	ori	$a0, $zero, 2000
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	move	$a1, $s7
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_49
# %bb.45:                               # %if.then74
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a0, $s5, 0
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 144
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s7
	move	$s7, $s3
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s7
	pcaddu18i	$ra, %call36(inf_EqualityFactoringApplicable)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_47
# %bb.46:                               # %if.then78
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a5, $sp, 144
	move	$a0, $fp
	move	$a1, $s3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s6
	move	$a6, $s5
	move	$a7, $s7
	pcaddu18i	$ra, %call36(inf_ApplyEqualityFactoring)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB3_48
.LBB3_47:                               #   in Loop: Header=BB3_17 Depth=2
	move	$s3, $s7
.LBB3_48:                               # %if.end81
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
.LBB3_49:                               # %if.end82
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.d	$a0, $s1, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	beqz	$a0, .LBB3_14
# %bb.50:                               # %while.body.preheader.i143
                                        #   in Loop: Header=BB3_17 Depth=2
	ld.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	.p2align	4, , 16
.LBB3_51:                               # %while.body.i145
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a2, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a2, $a2, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a0, $a2, 0
	ld.d	$a3, $a0, 24
	st.d	$a3, $s1, 0
	st.w	$zero, $a0, 20
	vst	$vr0, $a0, 4
	ld.d	$a2, $a2, 0
	ld.d	$a0, $s1, 0
	st.d	$zero, $a2, 24
	st.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	bnez	$a0, .LBB3_51
	b	.LBB3_14
.Lfunc_end3:
	.size	inf_EqualityFactoring, .Lfunc_end3-inf_EqualityFactoring
                                        # -- End function
	.p2align	5                               # -- Begin function inf_EqualityFactoringApplicable
	.type	inf_EqualityFactoringApplicable,@function
inf_EqualityFactoringApplicable:        # @inf_EqualityFactoringApplicable
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
	ld.d	$a7, $a0, 56
	slli.d	$t0, $a1, 3
	ldx.d	$a7, $a7, $t0
	ld.w	$a7, $a7, 8
	move	$fp, $a6
	move	$s0, $a5
	move	$s1, $a4
	bnez	$a7, .LBB4_3
# %bb.1:                                # %if.then
	move	$s2, $a3
	move	$s4, $a0
	move	$a0, $a2
	move	$s5, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	addi.w	$s6, $a0, -1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	move	$a0, $s4
	ori	$a2, $zero, 2
	bgeu	$s6, $a2, .LBB4_3
# %bb.2:                                # %cleanup14
	move	$a0, $zero
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
.LBB4_3:                                # %if.end12
	addi.w	$a2, $zero, -1
	move	$a3, $s1
	move	$a4, $zero
	move	$a5, $s0
	move	$a6, $fp
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
	pcaddu18i	$t8, %call36(inf_LitMax)
	jr	$t8
.Lfunc_end4:
	.size	inf_EqualityFactoringApplicable, .Lfunc_end4-inf_EqualityFactoringApplicable
                                        # -- End function
	.p2align	5                               # -- Begin function inf_ApplyEqualityFactoring
	.type	inf_ApplyEqualityFactoring,@function
inf_ApplyEqualityFactoring:             # @inf_ApplyEqualityFactoring
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
	move	$fp, $a0
	ld.w	$a0, $a0, 64
	ld.w	$t0, $fp, 68
	ld.w	$t1, $fp, 72
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	move	$s5, $a5
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	move	$s6, $a2
	move	$s7, $a1
	add.d	$a0, $t0, $a0
	add.w	$a0, $a0, $t1
	pcaddu18i	$ra, %call36(clause_CreateBody)
	jirl	$ra, $ra, 0
	ld.w	$s4, $fp, 64
	move	$s3, $a0
	st.w	$s4, $a0, 64
	ld.w	$a0, $fp, 68
	add.w	$s0, $s4, $a0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 68
	ld.w	$a0, $fp, 72
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 68
	addi.w	$s2, $s0, -1
	addi.d	$a0, $a0, -1
	add.d	$a1, $a0, $a1
	add.w	$s1, $a1, $a2
	st.w	$a0, $s3, 72
	blez	$s4, .LBB5_5
# %bb.1:                                # %for.body.lr.ph
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $s6
	move	$s8, $zero
	slli.d	$s6, $s4, 3
	.p2align	4, , 16
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	stx.d	$a0, $a1, $s8
	addi.d	$s8, $s8, 8
	bne	$s6, $s8, .LBB5_2
# %bb.3:
	move	$s6, $s7
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	bge	$s2, $s4, .LBB5_6
.LBB5_4:                                # %for.cond13.preheader.for.end22_crit_edge
	move	$s2, $s4
	b	.LBB5_9
.LBB5_5:
	move	$s4, $zero
	blt	$s2, $s4, .LBB5_4
.LBB5_6:                                # %for.body15.lr.ph
	bstrpick.d	$a0, $s4, 31, 0
	bstrpick.d	$s2, $s0, 31, 0
	slli.d	$s4, $a0, 3
	sub.d	$s8, $s2, $a0
	.p2align	4, , 16
.LBB5_7:                                # %for.body15
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	stx.d	$a0, $a1, $s4
	addi.d	$s8, $s8, -1
	addi.d	$s4, $s4, 8
	bnez	$s8, .LBB5_7
# %bb.8:
	move	$s4, $s0
.LBB5_9:                                # %for.end22
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	ld.w	$s8, $a0, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s6, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s7, $a0, 8
	st.d	$s0, $a0, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a0, $a0, %got_pc_lo12(fol_NOT)
	ld.w	$s0, $a0, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s6, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	slli.d	$s0, $s2, 3
	stx.d	$a0, $a1, $s0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	blt	$s1, $s4, .LBB5_14
# %bb.10:                               # %for.body36.lr.ph
	bstrpick.d	$a0, $s7, 31, 0
	addi.d	$s4, $s2, -1
	sub.d	$s2, $a0, $s2
	ori	$s6, $zero, 1
	b	.LBB5_12
	.p2align	4, , 16
.LBB5_11:                               # %if.else
                                        #   in Loop: Header=BB5_12 Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	alsl.d	$a1, $s6, $a1, 3
	stx.d	$a0, $a1, $s0
	addi.d	$s0, $s0, 8
	addi.w	$s4, $s4, 1
	addi.d	$s2, $s2, -1
	bge	$s4, $s1, .LBB5_14
.LBB5_12:                               # %for.body36
                                        # =>This Inner Loop Header: Depth=1
	bnez	$s2, .LBB5_11
# %bb.13:                               #   in Loop: Header=BB5_12 Depth=1
	move	$s6, $zero
	addi.d	$s0, $s0, 8
	addi.w	$s4, $s4, 1
	addi.d	$s2, $s2, -1
	blt	$s4, $s1, .LBB5_12
.LBB5_14:                               # %for.end45
	ld.w	$s0, $fp, 0
	ld.d	$s1, $s3, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 0
	ld.d	$s0, $s3, 40
	st.d	$a0, $s3, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $a0, 8
	st.d	$s0, $a0, 0
	st.d	$a0, $s3, 40
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s7
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_SetDataFromFather)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s3, 76
	move	$a0, $s3
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
.Lfunc_end5:
	.size	inf_ApplyEqualityFactoring, .Lfunc_end5-inf_ApplyEqualityFactoring
                                        # -- End function
	.globl	inf_GenSuperpositionRight       # -- Begin function inf_GenSuperpositionRight
	.p2align	5
	.type	inf_GenSuperpositionRight,@function
inf_GenSuperpositionRight:              # @inf_GenSuperpositionRight
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
	ld.bu	$a7, $a0, 48
	andi	$a7, $a7, 2
	st.d	$a6, $sp, 168                   # 8-byte Folded Spill
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	bnez	$a7, .LBB6_6
# %bb.1:                                # %lor.lhs.false
	ld.w	$a1, $a0, 72
	beqz	$a1, .LBB6_6
# %bb.2:                                # %lor.lhs.false3
	move	$s6, $a4
	move	$s3, $a3
	move	$s2, $a2
	move	$fp, $a0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_6
# %bb.3:                                # %if.end
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $a6, 68
	ld.w	$a2, $a6, 72
	add.w	$a3, $a1, $a0
	add.d	$a4, $a3, $a2
	addi.w	$a4, $a4, -1
	bge	$a4, $a3, .LBB6_8
# %bb.4:
	move	$a0, $zero
.LBB6_5:                                # %for.end
	move	$fp, $a0
	move	$a0, $a6
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB6_7
.LBB6_6:
	move	$a0, $zero
.LBB6_7:                                # %cleanup
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
.LBB6_8:                                # %for.body.lr.ph
	add.d	$s4, $a0, $a1
	add.w	$a0, $a3, $a2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$a7, $a0, %got_pc_lo12(fol_NOT)
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	st.d	$a6, $sp, 224                   # 8-byte Folded Spill
	st.d	$a7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	b	.LBB6_11
	.p2align	4, , 16
.LBB6_9:                                #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
.LBB6_10:                               # %for.inc
                                        #   in Loop: Header=BB6_11 Depth=1
	addi.d	$s4, $s4, 1
	addi.w	$a1, $s4, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB6_5
.LBB6_11:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_19 Depth 2
                                        #     Child Loop BB6_41 Depth 2
                                        #     Child Loop BB6_46 Depth 2
                                        #       Child Loop BB6_50 Depth 3
                                        #         Child Loop BB6_53 Depth 4
                                        #           Child Loop BB6_60 Depth 5
                                        #             Child Loop BB6_61 Depth 6
                                        #             Child Loop BB6_75 Depth 6
                                        #     Child Loop BB6_32 Depth 2
                                        #     Child Loop BB6_98 Depth 2
	ld.d	$a0, $a6, 56
	slli.d	$s0, $s4, 3
	ldx.d	$s2, $a0, $s0
	ld.d	$s1, $s2, 24
	beqz	$s3, .LBB6_13
# %bb.12:                               # %lor.lhs.false14
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.bu	$a0, $s2, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB6_9
.LBB6_13:                               # %if.then17
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB6_23
# %bb.14:                               # %land.lhs.true
                                        #   in Loop: Header=BB6_11 Depth=1
	beqz	$s6, .LBB6_16
# %bb.15:                               # %lor.lhs.false21
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 64
	ld.w	$a1, $a2, 68
	ld.w	$a2, $a2, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_23
.LBB6_16:                               # %if.then24
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a2, 8
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $a6
	move	$a3, $s4
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	move	$a6, $s3
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_GenLitSPRight)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_36
# %bb.17:                               # %if.end.i
                                        #   in Loop: Header=BB6_11 Depth=1
	move	$fp, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_91
# %bb.18:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB6_11 Depth=1
	move	$a1, $fp
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_19:                               # %for.cond.i
                                        #   Parent Loop BB6_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB6_19
# %bb.20:                               # %for.end.i
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	beqz	$a1, .LBB6_37
.LBB6_21:                               # %lor.lhs.false30
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.w	$a0, $s2, 8
	move	$a5, $a1
	move	$s2, $a1
	beqz	$a0, .LBB6_38
# %bb.22:                               #   in Loop: Header=BB6_11 Depth=1
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.bu	$a0, $a6, 48
	andi	$a0, $a0, 32
	bnez	$a0, .LBB6_9
	b	.LBB6_24
	.p2align	4, , 16
.LBB6_23:                               #   in Loop: Header=BB6_11 Depth=1
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.bu	$a0, $a6, 48
	andi	$a0, $a0, 32
	bnez	$a0, .LBB6_9
.LBB6_24:                               # %if.then42
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a0, $a6, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a2, $a0, 24
	ld.w	$a0, $a2, 0
	ld.w	$a1, $a7, 0
	bne	$a0, $a1, .LBB6_26
# %bb.25:                               # %if.then.i.i
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a0, $a2, 16
	ld.d	$a2, $a0, 8
	ld.w	$a0, $a2, 0
.LBB6_26:                               # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB6_34
# %bb.27:                               # %if.then.i
                                        #   in Loop: Header=BB6_11 Depth=1
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $a6
	move	$a1, $s4
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $s3
	move	$a6, $s6
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_GenSPRightEqToGiven)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	beqz	$s3, .LBB6_29
# %bb.28:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a0, $a6, 56
	ldx.d	$a0, $a0, $s0
	ld.w	$a0, $a0, 8
	bnez	$a0, .LBB6_94
.LBB6_29:                               # %if.then10.i
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $a6
	move	$a1, $s4
	move	$a2, $zero
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $s3
	move	$a6, $s6
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_GenSPRightEqToGiven)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_93
# %bb.30:                               # %if.end.i34.i
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB6_101
# %bb.31:                               # %for.cond.i.i.preheader
                                        #   in Loop: Header=BB6_11 Depth=1
	move	$a2, $a0
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_32:                               # %for.cond.i.i
                                        #   Parent Loop BB6_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB6_32
# %bb.33:                               # %for.end.i.i
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a2, $a1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_97
	b	.LBB6_10
.LBB6_34:                               # %if.else.i
                                        #   in Loop: Header=BB6_11 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stack_POINTER)
	ld.d	$fp, $a0, %got_pc_lo12(stack_POINTER)
	ld.w	$s0, $fp, 0
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 16
	pcaddu18i	$ra, %call36(sharing_PushListOnStack)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	bne	$a0, $s0, .LBB6_43
# %bb.35:                               #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	b	.LBB6_10
.LBB6_36:                               #   in Loop: Header=BB6_11 Depth=1
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_21
.LBB6_37:                               #   in Loop: Header=BB6_11 Depth=1
	move	$a5, $zero
	move	$s2, $a1
.LBB6_38:                               # %if.then33
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a0, 8
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $a6
	move	$a3, $s4
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	move	$a6, $s3
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_GenLitSPRight)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	beqz	$a0, .LBB6_92
# %bb.39:                               # %if.end.i66
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	beqz	$fp, .LBB6_100
# %bb.40:                               # %for.cond.i68.preheader
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_41:                               # %for.cond.i68
                                        #   Parent Loop BB6_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB6_41
# %bb.42:                               # %for.end.i72
                                        #   in Loop: Header=BB6_11 Depth=1
	st.d	$fp, $a0, 0
	ld.bu	$a0, $a6, 48
	andi	$a0, $a0, 32
	bnez	$a0, .LBB6_9
	b	.LBB6_24
.LBB6_43:                               # %while.body.i.i.preheader
                                        #   in Loop: Header=BB6_11 Depth=1
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	b	.LBB6_46
.LBB6_44:                               #   in Loop: Header=BB6_46 Depth=2
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_45:                               # %if.end107.i.i
                                        #   in Loop: Header=BB6_46 Depth=2
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 0
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB6_95
.LBB6_46:                               # %while.body.i.i
                                        #   Parent Loop BB6_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_50 Depth 3
                                        #         Child Loop BB6_53 Depth 4
                                        #           Child Loop BB6_60 Depth 5
                                        #             Child Loop BB6_61 Depth 6
                                        #             Child Loop BB6_75 Depth 6
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %got_pc_hi20(stack_STACK)
	ld.d	$a1, $a1, %got_pc_lo12(stack_STACK)
	ldx.d	$fp, $a1, $a0
	ld.w	$a0, $fp, 0
	bgtz	$a0, .LBB6_45
# %bb.47:                               # %if.then.i38.i
                                        #   in Loop: Header=BB6_46 Depth=2
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a2, $a2, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_44
# %bb.48:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB6_46 Depth=2
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	b	.LBB6_50
	.p2align	4, , 16
.LBB6_49:                               # %for.inc104.i.i
                                        #   in Loop: Header=BB6_50 Depth=3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	ld.w	$a3, $a2, 32
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a5, $a4, 0
	add.d	$a3, $a5, $a3
	st.d	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$a0, $t0
	beqz	$t0, .LBB6_45
.LBB6_50:                               # %for.body.i.i
                                        #   Parent Loop BB6_11 Depth=1
                                        #     Parent Loop BB6_46 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_53 Depth 4
                                        #           Child Loop BB6_60 Depth 5
                                        #             Child Loop BB6_61 Depth 6
                                        #             Child Loop BB6_75 Depth 6
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s0, $a0, 8
	ld.d	$s4, $s0, 8
	bnez	$s4, .LBB6_53
	b	.LBB6_49
.LBB6_51:                               #   in Loop: Header=BB6_53 Depth=4
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_52:                               # %for.inc101.i.i
                                        #   in Loop: Header=BB6_53 Depth=4
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB6_49
.LBB6_53:                               # %for.body20.i.i
                                        #   Parent Loop BB6_11 Depth=1
                                        #     Parent Loop BB6_46 Depth=2
                                        #       Parent Loop BB6_50 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_60 Depth 5
                                        #             Child Loop BB6_61 Depth 6
                                        #             Child Loop BB6_75 Depth 6
	ld.d	$s7, $s4, 8
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB6_52
# %bb.54:                               # %if.then24.i.i
                                        #   in Loop: Header=BB6_53 Depth=4
	move	$a0, $s7
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_51
# %bb.55:                               # %for.body30.lr.ph.i.i
                                        #   in Loop: Header=BB6_53 Depth=4
	move	$s1, $a0
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	b	.LBB6_60
.LBB6_56:                               #   in Loop: Header=BB6_60 Depth=5
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
.LBB6_57:                               # %if.end97.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$a0, $sp, 240
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
.LBB6_58:                               # %for.inc.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_59:                               # %for.inc.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB6_52
.LBB6_60:                               # %for.body30.i.i
                                        #   Parent Loop BB6_11 Depth=1
                                        #     Parent Loop BB6_46 Depth=2
                                        #       Parent Loop BB6_50 Depth=3
                                        #         Parent Loop BB6_53 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB6_61 Depth 6
                                        #             Child Loop BB6_75 Depth 6
	ld.d	$s8, $s1, 8
	ld.d	$fp, $s8, 16
	ld.d	$a0, $fp, 56
	addi.d	$s5, $zero, -1
	.p2align	4, , 16
.LBB6_61:                               # %while.cond.i.i.i
                                        #   Parent Loop BB6_11 Depth=1
                                        #     Parent Loop BB6_46 Depth=2
                                        #       Parent Loop BB6_50 Depth=3
                                        #         Parent Loop BB6_53 Depth=4
                                        #           Parent Loop BB6_60 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a1, $a0, 0
	addi.w	$s5, $s5, 1
	addi.d	$a0, $a0, 8
	bne	$a1, $s8, .LBB6_61
# %bb.62:                               # %clause_LiteralGetIndex.exit.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.bu	$a0, $fp, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB6_59
# %bb.63:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	beqz	$s3, .LBB6_65
# %bb.64:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.bu	$a0, $s8, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB6_59
.LBB6_65:                               # %land.lhs.true39.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	beqz	$s2, .LBB6_68
# %bb.66:                               # %lor.lhs.false41.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$a0, $s7, 16
	ld.d	$a0, $a0, 8
	beq	$s0, $a0, .LBB6_68
# %bb.67:                               # %lor.lhs.false43.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.w	$a0, $s8, 8
	bnez	$a0, .LBB6_59
	.p2align	4, , 16
.LBB6_68:                               # %land.lhs.true46.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$a0, $s8, 24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a7, 0
	beq	$a0, $a1, .LBB6_59
# %bb.69:                               # %land.lhs.true49.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.w	$a0, $fp, 0
	ld.w	$a1, $a6, 0
	beq	$a0, $a1, .LBB6_59
# %bb.70:                               # %land.lhs.true53.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	beqz	$s6, .LBB6_72
# %bb.71:                               # %lor.lhs.false55.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_59
.LBB6_72:                               # %land.lhs.true58.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_58
# %bb.73:                               # %if.then61.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.w	$a1, $fp, 52
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $s6, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $s6, 0
	addi.d	$a1, $sp, 240
	addi.d	$a3, $sp, 232
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	beqz	$a1, .LBB6_76
# %bb.74:                               # %while.body.preheader.i.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB6_75:                               # %while.body.i.i.i
                                        #   Parent Loop BB6_11 Depth=1
                                        #     Parent Loop BB6_46 Depth=2
                                        #       Parent Loop BB6_50 Depth=3
                                        #         Parent Loop BB6_53 Depth=4
                                        #           Parent Loop BB6_60 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
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
	bnez	$a1, .LBB6_75
.LBB6_76:                               # %cont_Reset.exit.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ori	$a1, $zero, 2000
	st.w	$a1, $a0, 0
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	beqz	$s3, .LBB6_81
# %bb.77:                               # %lor.lhs.false69.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 48
	ld.d	$s2, $sp, 232
	andi	$a0, $a0, 2
	bnez	$a0, .LBB6_79
# %bb.78:                               # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 64
	ld.w	$a1, $a0, 68
	ld.d	$a3, $sp, 240
	add.d	$a1, $a2, $a1
	addi.w	$a2, $a1, -1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	slt	$a4, $a2, $a1
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_56
.LBB6_79:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.bu	$a0, $fp, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB6_81
# %bb.80:                               # %land.lhs.true6.i.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	slt	$a4, $a0, $s5
	addi.w	$a2, $zero, -1
	move	$a0, $fp
	move	$a1, $s5
	move	$a3, $s2
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_56
.LBB6_81:                               # %if.then72.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$s2, $sp, 232
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s7, 16
	ld.d	$a1, $a2, 8
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	bne	$s0, $a1, .LBB6_83
# %bb.82:                               # %if.then77.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$a0, $a2, 0
	ld.d	$a1, $a0, 8
.LBB6_83:                               # %if.end.i40.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$s6, $sp, 232
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	beqz	$s2, .LBB6_87
# %bb.84:                               # %lor.lhs.false85.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.w	$a0, $s8, 8
	bnez	$a0, .LBB6_87
# %bb.85:                               # %lor.lhs.false88.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	move	$a1, $s3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_87
# %bb.86:                               #   in Loop: Header=BB6_60 Depth=5
	move	$s8, $s3
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB6_90
.LBB6_87:                               # %if.then92.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$s2, $sp, 240
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	move	$s8, $s3
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_89
# %bb.88:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$s6, $zero
.LBB6_89:                               # %inf_AllTermsRplac.exit.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232
	ld.d	$a5, $sp, 240
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 24
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	st.d	$s3, $sp, 8
	ori	$a7, $zero, 1
	st.d	$s2, $sp, 0
	move	$a0, $fp
	move	$a1, $s5
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	move	$a6, $s6
	pcaddu18i	$ra, %call36(inf_ApplyGenSuperposition)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
.LBB6_90:                               # %if.end96.i.i
                                        #   in Loop: Header=BB6_60 Depth=5
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	b	.LBB6_57
.LBB6_91:                               #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_21
	b	.LBB6_37
.LBB6_92:                               #   in Loop: Header=BB6_11 Depth=1
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.bu	$a0, $a6, 48
	andi	$a0, $a0, 32
	bnez	$a0, .LBB6_9
	b	.LBB6_24
.LBB6_93:                               #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
.LBB6_94:                               # %inf_GenSPRightToGiven.exit
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
.LBB6_95:                               # %inf_GenSPRightToGiven.exit
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $a1
	beqz	$a1, .LBB6_9
# %bb.96:                               # %if.end.i82
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beqz	$a1, .LBB6_10
.LBB6_97:                               # %for.cond.i84.preheader
                                        #   in Loop: Header=BB6_11 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB6_98:                               # %for.cond.i84
                                        #   Parent Loop BB6_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB6_98
# %bb.99:                               # %for.end.i88
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $a1, 0
	b	.LBB6_10
.LBB6_100:                              #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.bu	$a0, $a6, 48
	andi	$a0, $a0, 32
	bnez	$a0, .LBB6_9
	b	.LBB6_24
.LBB6_101:                              #   in Loop: Header=BB6_11 Depth=1
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_97
	b	.LBB6_10
.Lfunc_end6:
	.size	inf_GenSuperpositionRight, .Lfunc_end6-inf_GenSuperpositionRight
                                        # -- End function
	.p2align	5                               # -- Begin function inf_GenLitSPRight
	.type	inf_GenLitSPRight,@function
inf_GenLitSPRight:                      # @inf_GenLitSPRight
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	move	$s5, $a6
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	move	$fp, $a3
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	move	$a3, $a1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $a4, 0
	pcalau12i	$a2, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a2, $a2, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_63
# %bb.1:                                # %for.body.lr.ph
	move	$s7, $a0
	ld.d	$a0, $sp, 368
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s6, $a0, %got_pc_lo12(fol_NOT)
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 3
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s2, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s8, $a0, %got_pc_lo12(memory_FREEDBYTES)
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	st.d	$s5, $sp, 232                   # 8-byte Folded Spill
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %if.end102
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s8, 0
	ld.d	$a3, $s7, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $s2, 128
	st.d	$s7, $a0, 0
	move	$s7, $a3
	beqz	$a3, .LBB7_64
.LBB7_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_13 Depth 2
                                        #       Child Loop BB7_16 Depth 3
                                        #       Child Loop BB7_27 Depth 3
	ld.d	$a0, $s7, 8
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB7_2
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_3 Depth=1
	bgez	$a1, .LBB7_6
# %bb.5:                                # %symbol_IsPredicate.exit
                                        #   in Loop: Header=BB7_3 Depth=1
	sub.w	$a2, $zero, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	and	$a2, $a1, $a2
	ori	$a1, $zero, 2
	beq	$a2, $a1, .LBB7_2
.LBB7_6:                                # %if.then
                                        #   in Loop: Header=BB7_3 Depth=1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sharing_GetDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_2
# %bb.7:                                # %for.body17.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$s4, $a0
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	b	.LBB7_13
.LBB7_8:                                #   in Loop: Header=BB7_13 Depth=2
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
.LBB7_9:                                # %if.then97
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB7_10:                               # %if.end98
                                        #   in Loop: Header=BB7_13 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB7_11:                               # %if.end99
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB7_12:                               # %if.end100
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s8, 0
	ld.d	$a3, $s4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s2, 128
	st.d	$s4, $a0, 0
	move	$s4, $a3
	beqz	$a3, .LBB7_2
.LBB7_13:                               # %for.body17
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_16 Depth 3
                                        #       Child Loop BB7_27 Depth 3
	ld.d	$s0, $s4, 8
	ld.d	$s1, $s0, 24
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s6, 0
	bne	$a0, $a1, .LBB7_15
# %bb.14:                               # %if.then.i
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a2, $s1, 16
	ld.d	$s1, $a2, 8
.LBB7_15:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$s3, $s0, 16
	ld.d	$a2, $s3, 56
	addi.d	$fp, $zero, -1
	.p2align	4, , 16
.LBB7_16:                               # %while.cond.i
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	addi.w	$fp, $fp, 1
	addi.d	$a2, $a2, 8
	bne	$a3, $s0, .LBB7_16
# %bb.17:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.wu	$a2, $s3, 48
	andi	$a3, $a2, 2
	bnez	$a3, .LBB7_12
# %bb.18:                               # %land.lhs.true24
                                        #   in Loop: Header=BB7_13 Depth=2
	andi	$a2, $a2, 32
	beqz	$s5, .LBB7_22
# %bb.19:                               # %lor.lhs.false
                                        #   in Loop: Header=BB7_13 Depth=2
	beq	$a0, $a1, .LBB7_12
# %bb.20:                               # %lor.lhs.false
                                        #   in Loop: Header=BB7_13 Depth=2
	bnez	$a2, .LBB7_12
# %bb.21:                               # %lor.lhs.false
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.wu	$a0, $s0, 0
	andi	$a0, $a0, 2
	bnez	$a0, .LBB7_24
	b	.LBB7_12
.LBB7_22:                               # %land.lhs.true28
                                        #   in Loop: Header=BB7_13 Depth=2
	beq	$a0, $a1, .LBB7_12
# %bb.23:                               # %land.lhs.true28
                                        #   in Loop: Header=BB7_13 Depth=2
	bnez	$a2, .LBB7_12
.LBB7_24:                               # %land.lhs.true34
                                        #   in Loop: Header=BB7_13 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_12
# %bb.25:                               # %if.then37
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.w	$a1, $s3, 52
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $s7, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $s7, 0
	addi.d	$a1, $sp, 272
	addi.d	$a3, $sp, 264
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	beqz	$a1, .LBB7_28
# %bb.26:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB7_13 Depth=2
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB7_27:                               # %while.body.i
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	bnez	$a1, .LBB7_27
.LBB7_28:                               # %cont_Reset.exit
                                        #   in Loop: Header=BB7_13 Depth=2
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ori	$a1, $zero, 2000
	st.w	$a1, $a0, 0
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	beqz	$s5, .LBB7_33
# %bb.29:                               # %lor.lhs.false45
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 48
	ld.d	$s5, $sp, 264
	andi	$a0, $a0, 2
	bnez	$a0, .LBB7_31
# %bb.30:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 64
	ld.w	$a1, $a0, 68
	ld.d	$a3, $sp, 272
	add.d	$a1, $a2, $a1
	addi.w	$a2, $a1, -1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	slt	$a4, $a2, $a1
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_37
.LBB7_31:                               # %if.end.i
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.bu	$a0, $s3, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB7_33
# %bb.32:                               # %land.lhs.true6.i
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.w	$a0, $s3, 64
	ld.w	$a1, $s3, 68
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	slt	$a4, $a0, $fp
	addi.w	$a2, $zero, -1
	move	$a0, $s3
	move	$a1, $fp
	move	$a3, $s5
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_37
.LBB7_33:                               # %if.then48
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$s5, $sp, 272
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_36
# %bb.34:                               # %land.lhs.true52
                                        #   in Loop: Header=BB7_13 Depth=2
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 56
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	ld.w	$a0, $a0, 8
	beqz	$a0, .LBB7_38
# %bb.35:                               #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	bnez	$s5, .LBB7_42
	b	.LBB7_48
.LBB7_36:                               #   in Loop: Header=BB7_13 Depth=2
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	bnez	$s5, .LBB7_42
	b	.LBB7_48
.LBB7_37:                               #   in Loop: Header=BB7_13 Depth=2
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB7_11
.LBB7_38:                               # %if.end
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$s5, $sp, 272
	ld.d	$s6, $sp, 240                   # 8-byte Folded Reload
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	beq	$a0, $s6, .LBB7_41
# %bb.39:                               # %lor.lhs.false61
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB7_8
# %bb.40:                               #   in Loop: Header=BB7_13 Depth=2
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	bnez	$s5, .LBB7_42
	b	.LBB7_48
.LBB7_41:                               #   in Loop: Header=BB7_13 Depth=2
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	beqz	$s5, .LBB7_48
.LBB7_42:                               # %lor.lhs.false67
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a1, $s0, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s6, 0
	bne	$a0, $a2, .LBB7_44
# %bb.43:                               # %if.then.i.i
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $a1, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
.LBB7_44:                               # %clause_LiteralIsPredicate.exit
                                        #   in Loop: Header=BB7_13 Depth=2
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a1, $a1, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB7_48
# %bb.45:                               # %if.else
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.w	$a0, $s0, 8
	ld.d	$s0, $sp, 264
	beqz	$a0, .LBB7_51
# %bb.46:                               # %if.then74
                                        #   in Loop: Header=BB7_13 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a3, $s0
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s0
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_55
# %bb.47:                               # %if.end89.thread152
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB7_50
.LBB7_48:                               # %if.then70
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$s5, $sp, 264
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s5
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_56
# %bb.49:                               # %if.end89
                                        #   in Loop: Header=BB7_13 Depth=2
	beqz	$s1, .LBB7_57
.LBB7_50:                               # %if.then91
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a2, $sp, 272
	ld.d	$a5, $sp, 264
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 24
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	st.d	$s5, $sp, 8
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $fp
	move	$a6, $s1
	pcaddu18i	$ra, %call36(inf_ApplyGenSuperposition)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB7_57
.LBB7_51:                               # %if.else76
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $s1, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 0
	ld.d	$s5, $sp, 264
	ld.d	$a1, $a1, 8
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	move	$s5, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 3
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	beq	$s5, $a0, .LBB7_58
# %bb.52:                               # %if.else76
                                        #   in Loop: Header=BB7_13 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	bne	$s5, $a0, .LBB7_60
# %bb.53:                               # %sw.bb
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $s1, 16
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 8
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s0
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $s5
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_61
# %bb.54:                               # %if.then7.i.i108
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s5
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	b	.LBB7_62
.LBB7_55:                               #   in Loop: Header=BB7_13 Depth=2
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
.LBB7_56:                               # %if.end89.thread
                                        #   in Loop: Header=BB7_13 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB7_57:                               # %if.end95
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_9
	b	.LBB7_10
.LBB7_58:                               # %sw.bb85
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $s1, 16
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $s5
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_61
# %bb.59:                               # %if.then7.i.i121
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	b	.LBB7_62
.LBB7_60:                               # %sw.default
                                        #   in Loop: Header=BB7_13 Depth=2
	move	$a0, $s1
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_62
.LBB7_61:                               # %if.then.i131
                                        #   in Loop: Header=BB7_13 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$s1, $zero
.LBB7_62:                               # %sw.epilog
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB7_50
	b	.LBB7_57
.LBB7_63:
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
.LBB7_64:                               # %for.end105
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end7:
	.size	inf_GenLitSPRight, .Lfunc_end7-inf_GenLitSPRight
                                        # -- End function
	.globl	inf_MergingParamodulation       # -- Begin function inf_MergingParamodulation
	.p2align	5
	.type	inf_MergingParamodulation,@function
inf_MergingParamodulation:              # @inf_MergingParamodulation
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
	ld.bu	$a4, $a0, 48
	andi	$a4, $a4, 2
	bnez	$a4, .LBB8_6
# %bb.1:                                # %lor.lhs.false
	move	$s1, $a1
	ld.w	$a1, $a0, 72
	beqz	$a1, .LBB8_6
# %bb.2:                                # %lor.lhs.false3
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_6
# %bb.3:                                # %if.end
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $s2, 68
	ld.w	$a2, $s2, 72
	add.w	$a3, $a1, $a0
	add.d	$a4, $a3, $a2
	addi.w	$a4, $a4, -1
	bge	$a4, $a3, .LBB8_8
# %bb.4:
	move	$s4, $zero
.LBB8_5:                                # %for.end
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	b	.LBB8_7
.LBB8_6:
	move	$s4, $zero
.LBB8_7:                                # %cleanup
	move	$a0, $s4
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
.LBB8_8:                                # %for.body.lr.ph
	add.d	$s3, $a0, $a1
	add.w	$s6, $a3, $a2
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s7, $a0, %got_pc_lo12(fol_EQUALITY)
	move	$s4, $zero
	b	.LBB8_11
.LBB8_9:                                #   in Loop: Header=BB8_11 Depth=1
	move	$s4, $s5
	.p2align	4, , 16
.LBB8_10:                               # %if.end30
                                        #   in Loop: Header=BB8_11 Depth=1
	addi.d	$s3, $s3, 1
	addi.w	$a0, $s3, 0
	beq	$s6, $a0, .LBB8_5
.LBB8_11:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_16 Depth 2
                                        #     Child Loop BB8_22 Depth 2
                                        #     Child Loop BB8_29 Depth 2
                                        #     Child Loop BB8_35 Depth 2
	ld.d	$a0, $s2, 56
	slli.d	$a1, $s3, 3
	ldx.d	$s8, $a0, $a1
	ld.bu	$a0, $s8, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB8_10
# %bb.12:                               # %land.lhs.true
                                        #   in Loop: Header=BB8_11 Depth=1
	ld.d	$a0, $s8, 24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB8_10
# %bb.13:                               # %if.then17
                                        #   in Loop: Header=BB8_11 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $s1
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_LitMParamod)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_18
# %bb.14:                               # %if.end.i
                                        #   in Loop: Header=BB8_11 Depth=1
	move	$s5, $a0
	beqz	$s4, .LBB8_19
# %bb.15:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB8_11 Depth=1
	move	$a1, $s5
	.p2align	4, , 16
.LBB8_16:                               # %for.cond.i
                                        #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB8_16
# %bb.17:                               # %for.end.i
                                        #   in Loop: Header=BB8_11 Depth=1
	st.d	$s4, $a0, 0
	b	.LBB8_19
.LBB8_18:                               #   in Loop: Header=BB8_11 Depth=1
	move	$s5, $s4
.LBB8_19:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB8_11 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $s1
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_MParamodLitToGiven)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_25
# %bb.20:                               # %if.end.i45
                                        #   in Loop: Header=BB8_11 Depth=1
	move	$s4, $a0
	beqz	$s5, .LBB8_24
# %bb.21:                               # %for.cond.i47.preheader
                                        #   in Loop: Header=BB8_11 Depth=1
	move	$a1, $s4
	.p2align	4, , 16
.LBB8_22:                               # %for.cond.i47
                                        #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB8_22
# %bb.23:                               # %for.end.i51
                                        #   in Loop: Header=BB8_11 Depth=1
	st.d	$s5, $a0, 0
.LBB8_24:                               # %list_Nconc.exit53
                                        #   in Loop: Header=BB8_11 Depth=1
	ld.w	$a0, $s8, 8
	bnez	$a0, .LBB8_10
	b	.LBB8_26
.LBB8_25:                               #   in Loop: Header=BB8_11 Depth=1
	move	$s4, $s5
	ld.w	$a0, $s8, 8
	bnez	$a0, .LBB8_10
.LBB8_26:                               # %if.then24
                                        #   in Loop: Header=BB8_11 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a1, $s3
	move	$a3, $s1
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_LitMParamod)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_31
# %bb.27:                               # %if.end.i55
                                        #   in Loop: Header=BB8_11 Depth=1
	move	$s5, $a0
	beqz	$s4, .LBB8_32
# %bb.28:                               # %for.cond.i57.preheader
                                        #   in Loop: Header=BB8_11 Depth=1
	move	$a1, $s5
	.p2align	4, , 16
.LBB8_29:                               # %for.cond.i57
                                        #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB8_29
# %bb.30:                               # %for.end.i61
                                        #   in Loop: Header=BB8_11 Depth=1
	st.d	$s4, $a0, 0
	b	.LBB8_32
.LBB8_31:                               #   in Loop: Header=BB8_11 Depth=1
	move	$s5, $s4
.LBB8_32:                               # %list_Nconc.exit63
                                        #   in Loop: Header=BB8_11 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a1, $s3
	move	$a3, $s1
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_MParamodLitToGiven)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_9
# %bb.33:                               # %if.end.i65
                                        #   in Loop: Header=BB8_11 Depth=1
	move	$s4, $a0
	beqz	$s5, .LBB8_10
# %bb.34:                               # %for.cond.i67.preheader
                                        #   in Loop: Header=BB8_11 Depth=1
	move	$a1, $s4
	.p2align	4, , 16
.LBB8_35:                               # %for.cond.i67
                                        #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB8_35
# %bb.36:                               # %for.end.i71
                                        #   in Loop: Header=BB8_11 Depth=1
	st.d	$s5, $a0, 0
	b	.LBB8_10
.Lfunc_end8:
	.size	inf_MergingParamodulation, .Lfunc_end8-inf_MergingParamodulation
                                        # -- End function
	.p2align	5                               # -- Begin function inf_LitMParamod
	.type	inf_LitMParamod,@function
inf_LitMParamod:                        # @inf_LitMParamod
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
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 56
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ld.d	$fp, $a0, 8
	ld.d	$s0, $a1, 8
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	sltui	$s1, $a2, 1
	maskeqz	$a0, $fp, $s1
	masknez	$a1, $s0, $s1
	or	$a4, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a1, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a2, $a2, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	move	$a3, $a4
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_42
# %bb.1:                                # %for.body.lr.ph
	move	$s5, $a0
	masknez	$a0, $fp, $s1
	maskeqz	$a1, $s0, $s1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	vrepli.b	$vr0, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s2, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s7, $a0, %got_pc_lo12(memory_FREEDBYTES)
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                # %if.end89
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s7, 0
	ld.d	$a3, $s5, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s2, 128
	st.d	$s5, $a0, 0
	move	$s5, $a3
	beqz	$a3, .LBB9_43
.LBB9_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_12 Depth 2
                                        #       Child Loop BB9_15 Depth 3
                                        #       Child Loop BB9_26 Depth 3
                                        #       Child Loop BB9_32 Depth 3
                                        #       Child Loop BB9_41 Depth 3
	ld.d	$s8, $s5, 8
	ld.w	$a0, $s8, 0
	bgtz	$a0, .LBB9_2
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_3 Depth=1
	bgez	$a0, .LBB9_6
# %bb.5:                                # %term_IsAtom.exit
                                        #   in Loop: Header=BB9_3 Depth=1
	sub.w	$a0, $zero, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB9_2
.LBB9_6:                                # %if.then17
                                        #   in Loop: Header=BB9_3 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sharing_GetDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_2
# %bb.7:                                # %for.body23.preheader
                                        #   in Loop: Header=BB9_3 Depth=1
	move	$s6, $a0
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	b	.LBB9_12
.LBB9_8:                                # %if.end85.sink.split
                                        #   in Loop: Header=BB9_12 Depth=2
	st.d	$a3, $a1, 0
.LBB9_9:                                # %if.end85
                                        #   in Loop: Header=BB9_12 Depth=2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
.LBB9_10:                               # %if.end85
                                        #   in Loop: Header=BB9_12 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB9_11:                               # %if.end87
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s7, 0
	ld.d	$a3, $s6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s2, 128
	st.d	$s6, $a0, 0
	move	$s6, $a3
	beqz	$a3, .LBB9_2
.LBB9_12:                               # %for.body23
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_15 Depth 3
                                        #       Child Loop BB9_26 Depth 3
                                        #       Child Loop BB9_32 Depth 3
                                        #       Child Loop BB9_41 Depth 3
	ld.d	$s4, $s6, 8
	ld.d	$fp, $s4, 24
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB9_14
# %bb.13:                               # %if.then.i
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a2, $fp, 16
	ld.d	$fp, $a2, 8
.LBB9_14:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$s1, $s4, 16
	ld.d	$a2, $s1, 56
	addi.d	$s0, $zero, -1
	.p2align	4, , 16
.LBB9_15:                               # %while.cond.i
                                        #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	addi.w	$s0, $s0, 1
	addi.d	$a2, $a2, 8
	bne	$a3, $s4, .LBB9_15
# %bb.16:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.bu	$a2, $s1, 48
	andi	$a2, $a2, 2
	bnez	$a2, .LBB9_11
# %bb.17:                               # %land.lhs.true30
                                        #   in Loop: Header=BB9_12 Depth=2
	beq	$a0, $a1, .LBB9_11
# %bb.18:                               # %land.lhs.true30
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.wu	$a1, $s4, 0
	andi	$a1, $a1, 2
	beqz	$a1, .LBB9_11
# %bb.19:                               # %land.lhs.true30
                                        #   in Loop: Header=BB9_12 Depth=2
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a1, $a1, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB9_11
# %bb.20:                               # %land.lhs.true39
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.w	$a0, $s1, 72
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB9_11
# %bb.21:                               # %land.lhs.true41
                                        #   in Loop: Header=BB9_12 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_11
# %bb.22:                               # %if.then44
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$a1, $a0, 0
	ld.d	$fp, $a0, 8
	ld.d	$a0, $a1, 8
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	move	$a1, $s8
	pcaddu18i	$ra, %call36(term_HasPointerSubterm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 8
	beqz	$a1, .LBB9_24
# %bb.23:                               # %if.then44
                                        #   in Loop: Header=BB9_12 Depth=2
	beqz	$a0, .LBB9_11
.LBB9_24:                               # %if.then51
                                        #   in Loop: Header=BB9_12 Depth=2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a1, $s1, 52
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s8
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$a1, $sp, 176
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	beqz	$a1, .LBB9_27
# %bb.25:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB9_12 Depth=2
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB9_26:                               # %while.body.i
                                        #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	bnez	$a1, .LBB9_26
.LBB9_27:                               # %cont_Reset.exit
                                        #   in Loop: Header=BB9_12 Depth=2
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ld.d	$fp, $sp, 176
	ori	$a1, $zero, 2000
	st.w	$a1, $a0, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 176
	move	$s8, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 8
	move	$fp, $a0
	beqz	$a1, .LBB9_33
# %bb.28:                               # %if.end66.thread
                                        #   in Loop: Header=BB9_12 Depth=2
	move	$s4, $s8
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB9_10
.LBB9_29:                               # %if.then71
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a0, $sp, 176
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 24
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$s4, $sp, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $s0
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	move	$a6, $s8
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_Lit2MParamod)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_10
# %bb.30:                               # %if.end.i
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	beqz	$a3, .LBB9_9
# %bb.31:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB9_12 Depth=2
	move	$a2, $a0
	.p2align	4, , 16
.LBB9_32:                               # %for.cond.i
                                        #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB9_32
	b	.LBB9_8
.LBB9_33:                               # %if.end66
                                        #   in Loop: Header=BB9_12 Depth=2
	move	$a0, $s8
	move	$a1, $fp
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	move	$s4, $s8
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB9_36
# %bb.34:                               # %land.lhs.true68
                                        #   in Loop: Header=BB9_12 Depth=2
	ori	$a1, $zero, 1
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB9_37
# %bb.35:                               # %land.lhs.true68
                                        #   in Loop: Header=BB9_12 Depth=2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB9_29
	b	.LBB9_10
.LBB9_36:                               # %if.end74.thread
                                        #   in Loop: Header=BB9_12 Depth=2
	ori	$a1, $zero, 1
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB9_10
	b	.LBB9_38
.LBB9_37:                               # %lor.lhs.false79
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(term_HasPointerSubterm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_10
.LBB9_38:                               # %if.then82
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a0, $sp, 176
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 24
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$fp, $sp, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $s0
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	move	$a6, $s8
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_Lit2MParamod)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_10
# %bb.39:                               # %if.end.i87
                                        #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	beqz	$a3, .LBB9_9
# %bb.40:                               # %for.cond.i89.preheader
                                        #   in Loop: Header=BB9_12 Depth=2
	move	$a2, $a0
	.p2align	4, , 16
.LBB9_41:                               # %for.cond.i89
                                        #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB9_41
	b	.LBB9_8
.LBB9_42:
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
.LBB9_43:                               # %for.end92
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
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
.Lfunc_end9:
	.size	inf_LitMParamod, .Lfunc_end9-inf_LitMParamod
                                        # -- End function
	.p2align	5                               # -- Begin function inf_MParamodLitToGiven
	.type	inf_MParamodLitToGiven,@function
inf_MParamodLitToGiven:                 # @inf_MParamodLitToGiven
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
	ld.w	$a0, $a0, 72
	ori	$a6, $zero, 2
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	blt	$a0, $a6, .LBB10_2
# %bb.1:                                # %if.end
	move	$s2, $a1
	ld.d	$a0, $s7, 56
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ld.d	$fp, $a0, 8
	ld.d	$s0, $a1, 8
	sltui	$s1, $a2, 1
	masknez	$a0, $fp, $s1
	maskeqz	$a1, $s0, $s1
	or	$a0, $a1, $a0
	pcalau12i	$a1, %got_pc_hi20(stack_POINTER)
	ld.d	$s3, $a1, %got_pc_lo12(stack_POINTER)
	ld.w	$s4, $s3, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sharing_PushReverseOnStack)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	bne	$a0, $s4, .LBB10_4
.LBB10_2:
	move	$s0, $zero
.LBB10_3:                               # %cleanup
	move	$a0, $s0
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
.LBB10_4:                               # %while.body.lr.ph
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	maskeqz	$a1, $fp, $s1
	masknez	$a2, $s0, $s1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(stack_STACK)
	ld.d	$a1, $a1, %got_pc_lo12(stack_STACK)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s1, $a1, %got_pc_lo12(fol_EQUALITY)
	move	$fp, $zero
	vrepli.b	$vr0, 0
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_5:                               # %while.cond.loopexit
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $s3, 0
	move	$fp, $s0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB10_3
.LBB10_6:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
                                        #       Child Loop BB10_13 Depth 3
                                        #         Child Loop BB10_16 Depth 4
                                        #           Child Loop BB10_17 Depth 5
                                        #           Child Loop BB10_28 Depth 5
                                        #           Child Loop BB10_36 Depth 5
	addi.d	$a0, $a0, -1
	st.w	$a0, $s3, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_9
# %bb.7:                                #   in Loop: Header=BB10_6 Depth=1
	move	$s0, $fp
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_8:                               # %for.end105
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 128
	ld.w	$a1, $a0, 32
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a5, 0
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a6, 0
	ld.d	$a0, $a4, 128
	st.d	$a6, $a0, 0
	move	$fp, $s0
	move	$a0, $a3
	beqz	$a3, .LBB10_5
.LBB10_9:                               # %for.body
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_13 Depth 3
                                        #         Child Loop BB10_16 Depth 4
                                        #           Child Loop BB10_17 Depth 5
                                        #           Child Loop BB10_28 Depth 5
                                        #           Child Loop BB10_36 Depth 5
	ld.d	$s8, $a0, 8
	ld.d	$s6, $s8, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bnez	$s6, .LBB10_13
# %bb.10:                               #   in Loop: Header=BB10_9 Depth=2
	move	$s0, $fp
	b	.LBB10_8
	.p2align	4, , 16
.LBB10_11:                              #   in Loop: Header=BB10_13 Depth=3
	move	$s0, $fp
.LBB10_12:                              # %if.end102
                                        #   in Loop: Header=BB10_13 Depth=3
	ld.d	$s6, $s6, 0
	move	$fp, $s0
	beqz	$s6, .LBB10_8
.LBB10_13:                              # %for.body27
                                        #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_16 Depth 4
                                        #           Child Loop BB10_17 Depth 5
                                        #           Child Loop BB10_28 Depth 5
                                        #           Child Loop BB10_36 Depth 5
	ld.d	$s2, $s6, 8
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s1, 0
	bne	$a0, $a1, .LBB10_11
# %bb.14:                               # %if.then31
                                        #   in Loop: Header=BB10_13 Depth=3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_11
# %bb.15:                               # %for.body37.lr.ph
                                        #   in Loop: Header=BB10_13 Depth=3
	move	$s5, $a0
	.p2align	4, , 16
.LBB10_16:                              # %for.body37
                                        #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_9 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB10_17 Depth 5
                                        #           Child Loop BB10_28 Depth 5
                                        #           Child Loop BB10_36 Depth 5
	ld.d	$a0, $s5, 8
	ld.d	$s3, $a0, 16
	ld.d	$a1, $s3, 56
	addi.d	$s0, $zero, -1
	.p2align	4, , 16
.LBB10_17:                              # %while.cond.i
                                        #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_9 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        #         Parent Loop BB10_16 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a2, $a1, 0
	addi.w	$s0, $s0, 1
	addi.d	$a1, $a1, 8
	bne	$a2, $a0, .LBB10_17
# %bb.18:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.bu	$a1, $s3, 48
	andi	$a1, $a1, 2
	bnez	$a1, .LBB10_25
# %bb.19:                               # %land.lhs.true
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.bu	$a1, $a0, 0
	andi	$a1, $a1, 2
	beqz	$a1, .LBB10_25
# %bb.20:                               # %land.lhs.true45
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.d	$a1, $a0, 24
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a2, %got_pc_lo12(fol_NOT)
	ld.w	$a2, $a2, 0
	beq	$a1, $a2, .LBB10_25
# %bb.21:                               # %land.lhs.true48
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.d	$a1, $s2, 16
	ld.d	$a1, $a1, 8
	beq	$s8, $a1, .LBB10_23
# %bb.22:                               # %lor.lhs.false
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.w	$a0, $a0, 8
	bnez	$a0, .LBB10_25
.LBB10_23:                              # %land.lhs.true53
                                        #   in Loop: Header=BB10_16 Depth=4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_25
# %bb.24:                               # %land.lhs.true56
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB10_26
	.p2align	4, , 16
.LBB10_25:                              #   in Loop: Header=BB10_16 Depth=4
	move	$s0, $fp
	ld.d	$s5, $s5, 0
	move	$fp, $s0
	bnez	$s5, .LBB10_16
	b	.LBB10_12
.LBB10_26:                              # %if.then60
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.w	$a1, $s3, 52
	move	$a0, $s7
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a1, $s8
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	addi.d	$a1, $sp, 208
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	beqz	$a1, .LBB10_29
# %bb.27:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB10_16 Depth=4
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB10_28:                              # %while.body.i
                                        #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_9 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        #         Parent Loop BB10_16 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
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
	bnez	$a1, .LBB10_28
.LBB10_29:                              # %cont_Reset.exit
                                        #   in Loop: Header=BB10_16 Depth=4
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ori	$a1, $zero, 2000
	st.w	$a1, $a0, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	move	$s4, $zero
	move	$s1, $zero
	bnez	$a0, .LBB10_31
# %bb.30:                               # %if.end78
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.d	$s1, $sp, 208
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 208
	move	$s1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	move	$a1, $s4
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB10_44
.LBB10_31:                              # %if.then80
                                        #   in Loop: Header=BB10_16 Depth=4
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	move	$s4, $s7
	ld.d	$a0, $s2, 16
	ld.d	$s7, $a0, 8
	beq	$s8, $s7, .LBB10_38
# %bb.32:                               # %if.end86
                                        #   in Loop: Header=BB10_16 Depth=4
	beqz	$s1, .LBB10_39
.LBB10_33:                              # %if.end93
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.d	$a0, $sp, 208
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $sp, 24
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$s1, $sp, 0
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $s8
	move	$a5, $s7
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_Lit2MParamod)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_40
# %bb.34:                               # %if.end.i
                                        #   in Loop: Header=BB10_16 Depth=4
	move	$s0, $a0
	beqz	$fp, .LBB10_41
# %bb.35:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB10_16 Depth=4
	move	$a1, $s0
	move	$s7, $s4
	.p2align	4, , 16
.LBB10_36:                              # %for.cond.i
                                        #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_9 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        #         Parent Loop BB10_16 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB10_36
# %bb.37:                               # %for.end.i
                                        #   in Loop: Header=BB10_16 Depth=4
	st.d	$fp, $a0, 0
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	bnez	$s1, .LBB10_42
	b	.LBB10_43
.LBB10_38:                              # %if.then83
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.d	$a0, $a0, 0
	ld.d	$s7, $a0, 8
	bnez	$s1, .LBB10_33
.LBB10_39:                              # %if.then88
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.d	$s1, $sp, 208
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	move	$s1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	b	.LBB10_33
.LBB10_40:                              #   in Loop: Header=BB10_16 Depth=4
	move	$s0, $fp
.LBB10_41:                              #   in Loop: Header=BB10_16 Depth=4
	move	$s7, $s4
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	beqz	$s1, .LBB10_43
.LBB10_42:                              # %if.then98
                                        #   in Loop: Header=BB10_16 Depth=4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB10_43:                              # %if.end99
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $s5, 0
	move	$fp, $s0
	bnez	$s5, .LBB10_16
	b	.LBB10_12
.LBB10_44:                              #   in Loop: Header=BB10_16 Depth=4
	move	$s0, $fp
	bnez	$s1, .LBB10_42
	b	.LBB10_43
.Lfunc_end10:
	.size	inf_MParamodLitToGiven, .Lfunc_end10-inf_MParamodLitToGiven
                                        # -- End function
	.globl	inf_GeneralResolution           # -- Begin function inf_GeneralResolution
	.p2align	5
	.type	inf_GeneralResolution,@function
inf_GeneralResolution:                  # @inf_GeneralResolution
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
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	move	$fp, $a3
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_6
# %bb.1:                                # %if.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.bu	$a0, $a0, 48
	ld.w	$a4, $s3, 64
	ld.w	$a1, $s3, 68
	andi	$a2, $a0, 2
	move	$a3, $a4
	add.d	$a0, $a4, $a1
	bnez	$a2, .LBB11_3
# %bb.2:                                # %if.else
	ld.w	$a1, $s3, 72
	add.d	$a0, $a0, $a1
.LBB11_3:                               # %if.end9
	addi.w	$a0, $a0, -1
	bge	$a0, $a3, .LBB11_8
# %bb.4:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
.LBB11_5:                               # %for.end136
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB11_7
.LBB11_6:
	move	$a0, $zero
.LBB11_7:                               # %cleanup
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
.LBB11_8:                               # %for.body.lr.ph
	move	$a2, $a3
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s7, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a7, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a5, $a0, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	st.d	$s3, $sp, 152                   # 8-byte Folded Spill
	b	.LBB11_11
	.p2align	4, , 16
.LBB11_9:                               #   in Loop: Header=BB11_11 Depth=1
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
.LBB11_10:                              # %for.inc135
                                        #   in Loop: Header=BB11_11 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$a0, $a2, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB11_5
.LBB11_11:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_21 Depth 2
                                        #     Child Loop BB11_26 Depth 2
                                        #       Child Loop BB11_29 Depth 3
                                        #         Child Loop BB11_34 Depth 4
                                        #           Child Loop BB11_35 Depth 5
                                        #           Child Loop BB11_42 Depth 5
                                        #           Child Loop BB11_57 Depth 5
	ld.d	$a0, $s3, 56
	slli.d	$a1, $a2, 3
	ldx.d	$s8, $a0, $a1
	ld.d	$a3, $s8, 24
	ld.w	$a0, $a3, 0
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB11_13
# %bb.12:                               # %if.then.i
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.d	$a0, $a3, 16
	ld.d	$a3, $a0, 8
.LBB11_13:                              # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB11_11 Depth=1
	bnez	$fp, .LBB11_15
# %bb.14:                               # %lor.lhs.false
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.w	$a0, $a3, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beq	$a0, $a1, .LBB11_10
.LBB11_15:                              # %land.lhs.true
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.wu	$a0, $s8, 0
	andi	$a1, $a0, 4
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	bnez	$a1, .LBB11_19
# %bb.16:                               # %lor.lhs.false18
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.bu	$a1, $s3, 48
	andi	$a1, $a1, 2
	bnez	$a1, .LBB11_10
# %bb.17:                               # %land.lhs.true21
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB11_24
# %bb.18:                               # %lor.lhs.false23
                                        #   in Loop: Header=BB11_11 Depth=1
	andi	$a1, $a0, 1
	beqz	$a1, .LBB11_10
	b	.LBB11_20
	.p2align	4, , 16
.LBB11_19:                              # %land.lhs.true26
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB11_24
.LBB11_20:                              # %lor.lhs.false28
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.d	$a2, $s8, 16
	ld.d	$a6, $a2, 56
	addi.d	$a1, $zero, -1
	.p2align	4, , 16
.LBB11_21:                              # %while.cond.i.i
                                        #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a6, 0
	addi.w	$a1, $a1, 1
	addi.d	$a6, $a6, 8
	bne	$a4, $s8, .LBB11_21
# %bb.22:                               # %clause_LiteralIsFromAntecedent.exit
                                        #   in Loop: Header=BB11_11 Depth=1
	andi	$a0, $a0, 2
	move	$s5, $zero
	bnez	$a0, .LBB11_25
# %bb.23:                               # %clause_LiteralIsFromAntecedent.exit
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.w	$a0, $a2, 64
	ld.w	$a2, $a2, 68
	add.d	$a2, $a0, $a2
	addi.w	$a2, $a2, -1
	slt	$a2, $a2, $a1
	slt	$a0, $a1, $a0
	or	$a0, $a0, $a2
	bnez	$a0, .LBB11_9
	b	.LBB11_25
	.p2align	4, , 16
.LBB11_24:                              #   in Loop: Header=BB11_11 Depth=1
	ori	$s5, $zero, 1
.LBB11_25:                              # %if.then34
                                        #   in Loop: Header=BB11_11 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB11_26:                              # %while.cond
                                        #   Parent Loop BB11_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_29 Depth 3
                                        #         Child Loop BB11_34 Depth 4
                                        #           Child Loop BB11_35 Depth 5
                                        #           Child Loop BB11_42 Depth 5
                                        #           Child Loop BB11_57 Depth 5
	move	$s2, $a7
	ld.d	$a0, $a7, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a5, 0
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_68
# %bb.27:                               # %for.body42.preheader
                                        #   in Loop: Header=BB11_26 Depth=2
	move	$s1, $a0
	b	.LBB11_29
	.p2align	4, , 16
.LBB11_28:                              # %if.end123
                                        #   in Loop: Header=BB11_29 Depth=3
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	ld.w	$a3, $a2, 32
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a5, $a4, 0
	add.d	$a3, $a5, $a3
	st.d	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a1, $a1, 128
	st.d	$s1, $a1, 0
	move	$s1, $a0
	beqz	$a0, .LBB11_68
.LBB11_29:                              # %for.body42
                                        #   Parent Loop BB11_11 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_34 Depth 4
                                        #           Child Loop BB11_35 Depth 5
                                        #           Child Loop BB11_42 Depth 5
                                        #           Child Loop BB11_57 Depth 5
	ld.d	$a0, $s1, 8
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB11_28
# %bb.30:                               # %if.then46
                                        #   in Loop: Header=BB11_29 Depth=3
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_28
# %bb.31:                               # %for.body52.preheader
                                        #   in Loop: Header=BB11_29 Depth=3
	move	$s6, $a0
	b	.LBB11_34
.LBB11_32:                              #   in Loop: Header=BB11_34 Depth=4
	move	$s5, $zero
	.p2align	4, , 16
.LBB11_33:                              # %for.inc
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB11_28
.LBB11_34:                              # %for.body52
                                        #   Parent Loop BB11_11 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        #       Parent Loop BB11_29 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB11_35 Depth 5
                                        #           Child Loop BB11_42 Depth 5
                                        #           Child Loop BB11_57 Depth 5
	ld.d	$s4, $s6, 8
	ld.d	$fp, $s4, 16
	ld.d	$a0, $fp, 56
	addi.d	$s0, $zero, -1
	.p2align	4, , 16
.LBB11_35:                              # %while.cond.i
                                        #   Parent Loop BB11_11 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        #       Parent Loop BB11_29 Depth=3
                                        #         Parent Loop BB11_34 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a1, $a0, 0
	addi.w	$s0, $s0, 1
	addi.d	$a0, $a0, 8
	bne	$a1, $s4, .LBB11_35
# %bb.36:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$a0, $s4, 24
	ld.d	$a1, $s8, 24
	ld.w	$a0, $a0, 0
	ld.w	$a2, $s7, 0
	ld.w	$a1, $a1, 0
	bne	$a0, $a2, .LBB11_38
# %bb.37:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB11_34 Depth=4
	beq	$a1, $a0, .LBB11_33
	b	.LBB11_39
	.p2align	4, , 16
.LBB11_38:                              # %lor.rhs.i
                                        #   in Loop: Header=BB11_34 Depth=4
	bne	$a1, $a2, .LBB11_33
.LBB11_39:                              # %land.lhs.true58
                                        #   in Loop: Header=BB11_34 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_33
# %bb.40:                               # %land.lhs.true61
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$a0, $s4, 24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB11_45
# %bb.41:                               # %lor.lhs.false64
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$a3, $s4, 16
	ld.d	$a4, $a3, 56
	addi.d	$a2, $zero, -1
	.p2align	4, , 16
.LBB11_42:                              # %while.cond.i.i100
                                        #   Parent Loop BB11_11 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        #       Parent Loop BB11_29 Depth=3
                                        #         Parent Loop BB11_34 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a5, $a4, 0
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	bne	$a5, $s4, .LBB11_42
# %bb.43:                               # %clause_LiteralIsFromAntecedent.exit113
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.w	$a4, $a3, 64
	blt	$a2, $a4, .LBB11_33
# %bb.44:                               # %clause_LiteralIsFromAntecedent.exit113
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.w	$a3, $a3, 68
	add.d	$a3, $a4, $a3
	addi.w	$a3, $a3, -1
	blt	$a3, $a2, .LBB11_33
.LBB11_45:                              # %land.lhs.true67
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.wu	$a2, $s4, 0
	andi	$a3, $a2, 4
	bnez	$a3, .LBB11_51
# %bb.46:                               # %lor.lhs.false70
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.bu	$a3, $fp, 48
	andi	$a3, $a3, 2
	bnez	$a3, .LBB11_33
# %bb.47:                               # %land.lhs.true73
                                        #   in Loop: Header=BB11_34 Depth=4
	andi	$a3, $s5, 1
	bnez	$a3, .LBB11_52
# %bb.48:                               # %lor.lhs.false75
                                        #   in Loop: Header=BB11_34 Depth=4
	andi	$a3, $a2, 1
	beqz	$a3, .LBB11_32
# %bb.49:                               # %lor.lhs.false80
                                        #   in Loop: Header=BB11_34 Depth=4
	beq	$a0, $a1, .LBB11_53
# %bb.50:                               # %lor.lhs.false83
                                        #   in Loop: Header=BB11_34 Depth=4
	andi	$a2, $a2, 2
	beqz	$a2, .LBB11_32
	b	.LBB11_52
.LBB11_51:                              # %land.lhs.true78
                                        #   in Loop: Header=BB11_34 Depth=4
	xor	$a3, $a0, $a1
	sltui	$a3, $a3, 1
	srli.d	$a2, $a2, 1
	or	$a2, $a3, $a2
	or	$a2, $a2, $s5
	andi	$a2, $a2, 1
	beqz	$a2, .LBB11_32
.LBB11_52:                              # %land.lhs.true86
                                        #   in Loop: Header=BB11_34 Depth=4
	bne	$a0, $a1, .LBB11_54
.LBB11_53:                              # %lor.lhs.false89
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, 0
	beq	$a0, $a1, .LBB11_33
.LBB11_54:                              # %if.then93
                                        #   in Loop: Header=BB11_34 Depth=4
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a1, $fp, 52
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $s5, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_72
# %bb.55:                               # %if.end103
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$a0, $s2, 0
	ld.d	$a2, $s5, 0
	addi.d	$a1, $sp, 176
	addi.d	$a3, $sp, 168
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	beqz	$a1, .LBB11_58
# %bb.56:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB11_34 Depth=4
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB11_57:                              # %while.body.i
                                        #   Parent Loop BB11_11 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        #       Parent Loop BB11_29 Depth=3
                                        #         Parent Loop BB11_34 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
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
	bnez	$a1, .LBB11_57
.LBB11_58:                              # %cont_Reset.exit
                                        #   in Loop: Header=BB11_34 Depth=4
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	andi	$a1, $a1, 1
	ori	$a2, $zero, 2000
	st.w	$a2, $a0, 0
	bnez	$a1, .LBB11_63
# %bb.59:                               # %lor.lhs.false107
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 48
	ld.d	$s5, $sp, 168
	andi	$a0, $a0, 2
	bnez	$a0, .LBB11_61
# %bb.60:                               # %land.lhs.true.i130
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 64
	ld.w	$a1, $a0, 68
	ld.d	$a3, $sp, 176
	add.d	$a1, $a2, $a1
	addi.w	$a2, $a1, -1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	slt	$a4, $a2, $a1
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_67
.LBB11_61:                              # %if.end.i
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.bu	$a0, $fp, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB11_63
# %bb.62:                               # %land.lhs.true6.i
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	slt	$a4, $a0, $s0
	addi.w	$a2, $zero, -1
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $s5
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_67
.LBB11_63:                              # %if.then110
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$a0, $s4, 24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB11_65
# %bb.64:                               # %if.then113
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$a2, $sp, 176
	ld.d	$a3, $sp, 168
	move	$a0, $s8
	move	$a1, $s4
	b	.LBB11_66
.LBB11_65:                              # %if.else116
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$a2, $sp, 168
	ld.d	$a3, $sp, 176
	move	$a0, $s4
	move	$a1, $s8
.LBB11_66:                              # %if.end120.sink.split
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ApplyGenRes)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
.LBB11_67:                              # %if.end120
                                        #   in Loop: Header=BB11_34 Depth=4
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	b	.LBB11_33
	.p2align	4, , 16
.LBB11_68:                              # %for.end126
                                        #   in Loop: Header=BB11_26 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_71
# %bb.69:                               # %land.lhs.true128
                                        #   in Loop: Header=BB11_26 Depth=2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	move	$a7, $s2
	bne	$a0, $a1, .LBB11_9
# %bb.70:                               # %if.then131
                                        #   in Loop: Header=BB11_26 Depth=2
	ld.d	$a0, $a3, 16
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 8
	ld.d	$a0, $a3, 16
	ld.d	$a0, $a0, 0
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.d	$a2, $a0, 8
	b	.LBB11_26
.LBB11_71:                              #   in Loop: Header=BB11_11 Depth=1
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	move	$a7, $s2
	b	.LBB11_10
.LBB11_72:                              # %if.then99
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 2382
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	inf_GeneralResolution, .Lfunc_end11-inf_GeneralResolution
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
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
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
.Lfunc_end12:
	.size	misc_DumpCore, .Lfunc_end12-misc_DumpCore
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function inf_ApplyGenRes
	.type	inf_ApplyGenRes,@function
inf_ApplyGenRes:                        # @inf_ApplyGenRes
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
	ld.d	$s2, $a1, 16
	ld.d	$s7, $a0, 16
	ld.wu	$s8, $s2, 64
	ld.w	$a7, $s2, 68
	ld.w	$s1, $s2, 72
	ld.d	$a6, $s2, 56
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	addi.d	$s3, $zero, -1
	.p2align	4, , 16
.LBB13_1:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a6, 0
	addi.w	$s3, $s3, 1
	addi.d	$a6, $a6, 8
	bne	$a2, $a1, .LBB13_1
# %bb.2:                                # %clause_LiteralGetIndex.exit
	ld.wu	$a4, $s7, 64
	ld.w	$a5, $s7, 68
	ld.w	$a1, $s7, 72
	ld.d	$a2, $s7, 56
	addi.d	$s5, $zero, -1
	.p2align	4, , 16
.LBB13_3:                               # %while.cond.i133
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	addi.w	$s5, $s5, 1
	addi.d	$a2, $a2, 8
	bne	$a3, $a0, .LBB13_3
# %bb.4:                                # %clause_LiteralGetIndex.exit138
	addi.w	$a0, $s8, -1
	addi.w	$fp, $a4, -1
	add.w	$a2, $fp, $a5
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	add.w	$a2, $a2, $a1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slt	$s4, $a0, $s3
	xori	$s0, $s4, 1
	sub.d	$a0, $zero, $s0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	add.w	$a0, $s8, $a7
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	add.d	$a0, $a0, $s1
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a4
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -2
	pcaddu18i	$ra, %call36(clause_CreateBody)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 64
	ld.w	$a2, $s2, 64
	move	$s6, $a0
	sub.d	$a0, $a1, $s0
	add.d	$a0, $a0, $a2
	st.w	$a0, $s6, 64
	ld.w	$a0, $s7, 68
	ld.w	$a1, $s2, 68
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	sub.d	$a0, $a0, $s4
	add.d	$a0, $a0, $a1
	st.w	$a0, $s6, 68
	ld.w	$a0, $s7, 72
	ld.w	$a1, $s2, 72
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s6, 72
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	bltz	$fp, .LBB13_8
# %bb.5:                                # %for.body.lr.ph
	move	$fp, $zero
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	slli.d	$s0, $s4, 3
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 56
	stx.d	$a0, $a1, $fp
	addi.d	$fp, $fp, 8
	bne	$s0, $fp, .LBB13_6
# %bb.7:
	move	$s1, $s4
	b	.LBB13_9
.LBB13_8:
	move	$s1, $zero
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
.LBB13_9:                               # %for.end
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a1, $s2, 64
	addi.w	$a0, $s1, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.w	$fp, $a1, $a2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB13_13
# %bb.10:                               # %for.body36.lr.ph
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.w	$a1, $s4, $a1
	slli.d	$s2, $fp, 3
	slli.d	$s4, $a0, 3
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	sub.d	$s1, $a1, $s1
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_11:                              # %for.body36
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 56
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 56
	add.d	$a1, $a1, $s2
	stx.d	$a0, $a1, $s4
	addi.w	$s1, $s1, -1
	addi.d	$s4, $s4, 8
	bnez	$s1, .LBB13_11
# %bb.12:
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
.LBB13_13:                              # %for.end44
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $s1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB13_20
.LBB13_14:                              # %for.end62
	ld.w	$s7, $s7, 64
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$a2, $s3, 31, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bltz	$a0, .LBB13_25
# %bb.15:                               # %for.body67.lr.ph
	move	$fp, $zero
	move	$s0, $zero
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	slli.d	$s4, $a2, 3
	slli.d	$s1, $s8, 3
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB13_17
	.p2align	4, , 16
.LBB13_16:                              # %if.else75
                                        #   in Loop: Header=BB13_17 Depth=1
	addi.d	$s7, $s7, -1
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, 1
	beq	$s1, $fp, .LBB13_19
.LBB13_17:                              # %for.body67
                                        # =>This Inner Loop Header: Depth=1
	beq	$s4, $fp, .LBB13_16
# %bb.18:                               # %if.then69
                                        #   in Loop: Header=BB13_17 Depth=1
	ld.d	$a0, $s2, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a0, $a0, 24
	add.w	$s2, $s7, $s0
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 56
	slli.d	$a2, $s2, 3
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	stx.d	$a0, $a1, $a2
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, 1
	bne	$s1, $fp, .LBB13_17
.LBB13_19:
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	b	.LBB13_26
.LBB13_20:                              # %for.body50.lr.ph
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $zero, $a1
	add.d	$a1, $fp, $a1
	add.d	$s2, $a1, $a0
	bstrpick.d	$s4, $s1, 31, 0
	slli.d	$fp, $s4, 3
	bstrpick.d	$a0, $s5, 31, 0
	sub.d	$s0, $a0, $s4
	b	.LBB13_23
	.p2align	4, , 16
.LBB13_21:                              # %if.else58
                                        #   in Loop: Header=BB13_23 Depth=1
	addi.d	$s2, $s2, -1
	move	$a0, $s4
.LBB13_22:                              # %for.inc60
                                        #   in Loop: Header=BB13_23 Depth=1
	addi.d	$s4, $s4, 1
	addi.w	$a0, $a0, 0
	addi.d	$s1, $s1, 1
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB13_14
.LBB13_23:                              # %for.body50
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s0, .LBB13_21
# %bb.24:                               # %if.then52
                                        #   in Loop: Header=BB13_23 Depth=1
	ld.d	$a0, $s7, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a0, $a0, 24
	add.w	$s7, $s1, $s2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 56
	slli.d	$a2, $s7, 3
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	stx.d	$a0, $a1, $a2
	move	$a0, $s1
	b	.LBB13_22
.LBB13_25:
	move	$s8, $zero
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
.LBB13_26:                              # %for.end80
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	addi.w	$a1, $s8, 0
	add.d	$s7, $a0, $s7
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB13_31
.LBB13_27:                              # %for.end98
	addi.w	$a0, $s8, 0
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	blt	$s8, $a0, .LBB13_30
# %bb.28:                               # %for.body104.lr.ph
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 72
	add.d	$a1, $s7, $a1
	addi.w	$a1, $a1, -1
	slli.d	$fp, $a1, 3
	slli.d	$s0, $a0, 3
	addi.d	$s1, $a0, -1
	.p2align	4, , 16
.LBB13_29:                              # %for.body104
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 56
	add.d	$a1, $a1, $fp
	stx.d	$a0, $a1, $s0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $s8, .LBB13_29
.LBB13_30:                              # %for.end112
	move	$a0, $s6
	move	$a1, $s2
	move	$a2, $s3
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	move	$a4, $s5
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_SetDataFromParents)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 13
	st.w	$a0, $s6, 76
	move	$a0, $s6
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
.LBB13_31:                              # %for.body85.lr.ph
	slli.d	$fp, $s8, 3
	sub.d	$s0, $a2, $s8
	b	.LBB13_34
	.p2align	4, , 16
.LBB13_32:                              # %if.else93
                                        #   in Loop: Header=BB13_34 Depth=1
	addi.d	$s7, $s7, -1
.LBB13_33:                              # %for.inc96
                                        #   in Loop: Header=BB13_34 Depth=1
	addi.w	$s8, $s8, 1
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$a0, $s8, .LBB13_27
.LBB13_34:                              # %for.body85
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s0, .LBB13_32
# %bb.35:                               # %if.then87
                                        #   in Loop: Header=BB13_34 Depth=1
	ld.d	$a0, $s2, 56
	ldx.d	$a0, $a0, $fp
	ld.d	$a0, $a0, 24
	add.w	$s1, $s8, $s7
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 56
	slli.d	$a2, $s1, 3
	stx.d	$a0, $a1, $a2
	b	.LBB13_33
.Lfunc_end13:
	.size	inf_ApplyGenRes, .Lfunc_end13-inf_ApplyGenRes
                                        # -- End function
	.globl	inf_UnitResolution              # -- Begin function inf_UnitResolution
	.p2align	5
	.type	inf_UnitResolution,@function
inf_UnitResolution:                     # @inf_UnitResolution
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
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_4
# %bb.1:                                # %if.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	ld.w	$a5, $a0, 64
	ld.w	$a3, $a0, 68
	ld.bu	$a2, $a0, 48
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a1, $a0, 72
	add.d	$a0, $a3, $a5
	andi	$a2, $a2, 2
	sltui	$a2, $a2, 1
	maskeqz	$a2, $a1, $a2
	add.d	$a3, $a0, $a2
	addi.w	$a3, $a3, -1
	bge	$a3, $a5, .LBB14_6
# %bb.2:
	move	$s8, $zero
.LBB14_3:                               # %for.end105
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	b	.LBB14_5
.LBB14_4:
	move	$s8, $zero
.LBB14_5:                               # %cleanup
	move	$a0, $s8
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
.LBB14_6:                               # %for.body.lr.ph
	move	$a4, $a5
	add.w	$s0, $a0, $a1
	add.w	$a0, $a0, $a2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$fp, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a5, $a0, %got_pc_lo12(cont_RIGHTCONTEXT)
	move	$s8, $zero
	ori	$s6, $zero, 1
	vrepli.b	$vr0, 0
	move	$a2, $a4
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	b	.LBB14_9
	.p2align	4, , 16
.LBB14_7:                               #   in Loop: Header=BB14_9 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
.LBB14_8:                               # %for.inc104
                                        #   in Loop: Header=BB14_9 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$a0, $a2, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB14_3
.LBB14_9:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_16 Depth 2
                                        #       Child Loop BB14_19 Depth 3
                                        #         Child Loop BB14_25 Depth 4
                                        #           Child Loop BB14_33 Depth 5
                                        #           Child Loop BB14_41 Depth 5
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	slli.d	$a1, $a2, 3
	ldx.d	$s5, $a0, $a1
	ld.d	$a3, $s5, 24
	ld.w	$a0, $a3, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB14_11
# %bb.10:                               # %if.then.i
                                        #   in Loop: Header=BB14_9 Depth=1
	ld.d	$a0, $a3, 16
	ld.d	$a3, $a0, 8
.LBB14_11:                              # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB14_9 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bnez	$a0, .LBB14_13
# %bb.12:                               # %lor.lhs.false
                                        #   in Loop: Header=BB14_9 Depth=1
	ld.w	$a0, $a3, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beq	$a0, $a1, .LBB14_8
.LBB14_13:                              # %land.lhs.true
                                        #   in Loop: Header=BB14_9 Depth=1
	ld.bu	$a0, $s5, 0
	andi	$a0, $a0, 4
	bnez	$a0, .LBB14_15
# %bb.14:                               # %lor.lhs.false21
                                        #   in Loop: Header=BB14_9 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB14_8
.LBB14_15:                              # %if.then24
                                        #   in Loop: Header=BB14_9 Depth=1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB14_16:                              # %while.cond
                                        #   Parent Loop BB14_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_19 Depth 3
                                        #         Child Loop BB14_25 Depth 4
                                        #           Child Loop BB14_33 Depth 5
                                        #           Child Loop BB14_41 Depth 5
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a5, 0
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_44
# %bb.17:                               # %for.body32.preheader
                                        #   in Loop: Header=BB14_16 Depth=2
	move	$s7, $a0
	b	.LBB14_19
	.p2align	4, , 16
.LBB14_18:                              # %if.end92
                                        #   in Loop: Header=BB14_19 Depth=3
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	ld.w	$a3, $a2, 32
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a5, $a4, 0
	add.d	$a3, $a5, $a3
	st.d	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s7, 0
	ld.d	$a1, $a1, 128
	st.d	$s7, $a1, 0
	move	$s7, $a0
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB14_44
.LBB14_19:                              # %for.body32
                                        #   Parent Loop BB14_9 Depth=1
                                        #     Parent Loop BB14_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB14_25 Depth 4
                                        #           Child Loop BB14_33 Depth 5
                                        #           Child Loop BB14_41 Depth 5
	ld.d	$fp, $s7, 8
	ld.w	$a0, $fp, 0
	bgtz	$a0, .LBB14_18
# %bb.20:                               # %if.then36
                                        #   in Loop: Header=BB14_19 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_18
# %bb.21:                               # %for.body42.preheader
                                        #   in Loop: Header=BB14_19 Depth=3
	move	$s1, $a0
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	b	.LBB14_25
.LBB14_22:                              # %if.else86
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.d	$a2, $sp, 136
	ld.d	$a3, $sp, 144
	move	$a0, $s2
	move	$a1, $s5
.LBB14_23:                              # %if.end89
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ApplyGenRes)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s8, $a0, 0
	ld.d	$a0, $sp, 144
	st.d	$fp, $s4, 8
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	move	$s8, $s4
	.p2align	4, , 16
.LBB14_24:                              # %for.inc
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB14_18
.LBB14_25:                              # %for.body42
                                        #   Parent Loop BB14_9 Depth=1
                                        #     Parent Loop BB14_16 Depth=2
                                        #       Parent Loop BB14_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB14_33 Depth 5
                                        #           Child Loop BB14_41 Depth 5
	ld.d	$s2, $s1, 8
	ld.d	$fp, $s2, 16
	beq	$s0, $s6, .LBB14_27
# %bb.26:                               # %lor.lhs.false46
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 68
	ld.w	$a2, $fp, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	bne	$a0, $s6, .LBB14_24
.LBB14_27:                              # %land.lhs.true50
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s5, 24
	ld.w	$a0, $a0, 0
	ld.w	$a2, $s3, 0
	ld.w	$a1, $a1, 0
	bne	$a0, $a2, .LBB14_29
# %bb.28:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB14_25 Depth=4
	beq	$a1, $a0, .LBB14_24
	b	.LBB14_30
	.p2align	4, , 16
.LBB14_29:                              # %lor.rhs.i
                                        #   in Loop: Header=BB14_25 Depth=4
	bne	$a1, $a2, .LBB14_24
.LBB14_30:                              # %land.lhs.true53
                                        #   in Loop: Header=BB14_25 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_24
# %bb.31:                               # %land.lhs.true56
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.d	$a0, $s2, 24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB14_36
# %bb.32:                               # %lor.lhs.false59
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a1, 56
	addi.d	$a0, $zero, -1
	.p2align	4, , 16
.LBB14_33:                              # %while.cond.i.i
                                        #   Parent Loop BB14_9 Depth=1
                                        #     Parent Loop BB14_16 Depth=2
                                        #       Parent Loop BB14_19 Depth=3
                                        #         Parent Loop BB14_25 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a3, $a2, 0
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$a3, $s2, .LBB14_33
# %bb.34:                               # %clause_LiteralIsFromAntecedent.exit
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.w	$a2, $a1, 64
	blt	$a0, $a2, .LBB14_24
# %bb.35:                               # %clause_LiteralIsFromAntecedent.exit
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.w	$a1, $a1, 68
	add.d	$a1, $a2, $a1
	addi.w	$a1, $a1, -1
	blt	$a1, $a0, .LBB14_24
.LBB14_36:                              # %land.lhs.true62
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.bu	$a0, $s2, 0
	andi	$a0, $a0, 4
	bnez	$a0, .LBB14_38
# %bb.37:                               # %lor.lhs.false65
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.bu	$a0, $fp, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB14_24
.LBB14_38:                              # %if.then68
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.w	$a1, $fp, 52
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $s4, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_48
# %bb.39:                               # %if.end78
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.d	$a0, $fp, 0
	ld.d	$a2, $s4, 0
	addi.d	$a1, $sp, 144
	addi.d	$a3, $sp, 136
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	beqz	$a1, .LBB14_42
# %bb.40:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB14_25 Depth=4
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB14_41:                              # %while.body.i
                                        #   Parent Loop BB14_9 Depth=1
                                        #     Parent Loop BB14_16 Depth=2
                                        #       Parent Loop BB14_19 Depth=3
                                        #         Parent Loop BB14_25 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
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
	bnez	$a1, .LBB14_41
.LBB14_42:                              # %cont_Reset.exit
                                        #   in Loop: Header=BB14_25 Depth=4
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	st.w	$s6, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ori	$a1, $zero, 2000
	st.w	$a1, $a0, 0
	ld.d	$a0, $s2, 24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB14_22
# %bb.43:                               # %if.then83
                                        #   in Loop: Header=BB14_25 Depth=4
	ld.d	$a2, $sp, 144
	ld.d	$a3, $sp, 136
	move	$a0, $s5
	move	$a1, $s2
	b	.LBB14_23
	.p2align	4, , 16
.LBB14_44:                              # %for.end95
                                        #   in Loop: Header=BB14_16 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB14_7
# %bb.45:                               # %land.lhs.true97
                                        #   in Loop: Header=BB14_16 Depth=2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB14_47
# %bb.46:                               # %if.then100
                                        #   in Loop: Header=BB14_16 Depth=2
	ld.d	$a0, $a3, 16
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 8
	ld.d	$a0, $a3, 16
	ld.d	$a0, $a0, 0
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	st.d	$a2, $a0, 8
	b	.LBB14_16
	.p2align	4, , 16
.LBB14_47:                              #   in Loop: Header=BB14_9 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	b	.LBB14_8
.LBB14_48:                              # %if.then74
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 2525
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	inf_UnitResolution, .Lfunc_end14-inf_UnitResolution
                                        # -- End function
	.globl	inf_BoundedDepthUnitResolution  # -- Begin function inf_BoundedDepthUnitResolution
	.p2align	5
	.type	inf_BoundedDepthUnitResolution,@function
inf_BoundedDepthUnitResolution:         # @inf_BoundedDepthUnitResolution
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
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $s0, 68
	ld.w	$a2, $s0, 72
	add.d	$a0, $a0, $a1
	add.d	$fp, $a0, $a2
	addi.w	$s1, $fp, -1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_ComputeTermDepth)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bltz	$s1, .LBB15_36
# %bb.1:                                # %for.body.lr.ph
	bstrpick.d	$a0, $fp, 31, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s5, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a2, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$s2, $a0, %got_pc_lo12(cont_RIGHTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a4, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$s7, $zero, 1
	vrepli.b	$vr0, 0
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	ori	$s3, $zero, 1
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               # %while.end
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB15_37
.LBB15_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_6 Depth 2
                                        #       Child Loop BB15_9 Depth 3
                                        #         Child Loop BB15_15 Depth 4
                                        #           Child Loop BB15_27 Depth 5
	ld.d	$a0, $s0, 56
	slli.d	$a1, $a4, 3
	ldx.d	$s6, $a0, $a1
	ld.d	$a3, $s6, 24
	ld.w	$a0, $a3, 0
	ld.w	$a1, $s5, 0
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	bne	$a0, $a1, .LBB15_5
# %bb.4:                                # %if.then.i
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a0, $a3, 16
	ld.d	$a3, $a0, 8
.LBB15_5:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB15_3 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB15_6:                               # %while.cond
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_9 Depth 3
                                        #         Child Loop BB15_15 Depth 4
                                        #           Child Loop BB15_27 Depth 5
	ld.d	$a0, $a2, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $s2, 0
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_33
# %bb.7:                                # %for.body13.preheader
                                        #   in Loop: Header=BB15_6 Depth=2
	move	$s8, $a0
	b	.LBB15_9
	.p2align	4, , 16
.LBB15_8:                               # %if.end70
                                        #   in Loop: Header=BB15_9 Depth=3
	ld.d	$a0, $s8, 0
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	ld.w	$a3, $a2, 32
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a5, $a4, 0
	add.d	$a3, $a5, $a3
	st.d	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 128
	st.d	$s8, $a1, 0
	move	$s8, $a0
	beqz	$a0, .LBB15_33
.LBB15_9:                               # %for.body13
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_15 Depth 4
                                        #           Child Loop BB15_27 Depth 5
	ld.d	$a0, $s8, 8
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB15_8
# %bb.10:                               # %if.then
                                        #   in Loop: Header=BB15_9 Depth=3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_8
# %bb.11:                               # %for.body22.preheader
                                        #   in Loop: Header=BB15_9 Depth=3
	move	$fp, $a0
	ld.w	$a0, $s5, 0
	b	.LBB15_15
.LBB15_12:                              # %if.else65
                                        #   in Loop: Header=BB15_15 Depth=4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
.LBB15_13:                              # %if.end67
                                        #   in Loop: Header=BB15_15 Depth=4
	ld.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	.p2align	4, , 16
.LBB15_14:                              # %for.inc
                                        #   in Loop: Header=BB15_15 Depth=4
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB15_8
.LBB15_15:                              # %for.body22
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_6 Depth=2
                                        #       Parent Loop BB15_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB15_27 Depth 5
	ld.d	$s1, $fp, 8
	ld.d	$a1, $s1, 24
	ld.d	$a2, $s6, 24
	ld.d	$s4, $s1, 16
	ld.w	$a3, $a1, 0
	ld.w	$a1, $a2, 0
	bne	$a3, $a0, .LBB15_17
# %bb.16:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB15_15 Depth=4
	beq	$a1, $a0, .LBB15_14
	b	.LBB15_18
	.p2align	4, , 16
.LBB15_17:                              # %lor.rhs.i
                                        #   in Loop: Header=BB15_15 Depth=4
	bne	$a1, $a0, .LBB15_14
.LBB15_18:                              # %land.lhs.true
                                        #   in Loop: Header=BB15_15 Depth=4
	ld.w	$a1, $s0, 64
	ld.w	$a2, $s0, 68
	ld.w	$a3, $s0, 72
	add.d	$a1, $a2, $a1
	add.w	$a1, $a1, $a3
	beq	$a1, $s7, .LBB15_20
# %bb.19:                               # %lor.lhs.false
                                        #   in Loop: Header=BB15_15 Depth=4
	ld.w	$a1, $s4, 64
	ld.w	$a2, $s4, 68
	ld.w	$a3, $s4, 72
	add.d	$a1, $a2, $a1
	add.w	$a1, $a1, $a3
	bne	$a1, $s7, .LBB15_14
.LBB15_20:                              # %land.lhs.true31
                                        #   in Loop: Header=BB15_15 Depth=4
	ld.bu	$a1, $s0, 48
	andi	$a1, $a1, 8
	bnez	$a1, .LBB15_22
# %bb.21:                               # %lor.lhs.false34
                                        #   in Loop: Header=BB15_15 Depth=4
	ld.bu	$a1, $s4, 48
	andi	$a1, $a1, 8
	beqz	$a1, .LBB15_14
.LBB15_22:                              # %land.lhs.true37
                                        #   in Loop: Header=BB15_15 Depth=4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beqz	$a1, .LBB15_24
# %bb.23:                               # %lor.lhs.false39
                                        #   in Loop: Header=BB15_15 Depth=4
	ld.bu	$a1, $s4, 48
	andi	$a1, $a1, 8
	beqz	$a1, .LBB15_14
.LBB15_24:                              # %if.then42
                                        #   in Loop: Header=BB15_15 Depth=4
	move	$s7, $s5
	move	$a0, $s4
	pcaddu18i	$ra, %call36(clause_ComputeTermDepth)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(misc_Max)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 52
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	move	$s5, $s2
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ld.d	$a2, $s5, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_38
# %bb.25:                               # %if.end
                                        #   in Loop: Header=BB15_15 Depth=4
	ld.d	$a0, $s2, 0
	ld.d	$a2, $s5, 0
	addi.d	$a1, $sp, 144
	addi.d	$a3, $sp, 136
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	move	$s2, $s5
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	beqz	$a1, .LBB15_28
# %bb.26:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB15_15 Depth=4
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB15_27:                              # %while.body.i
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_6 Depth=2
                                        #       Parent Loop BB15_9 Depth=3
                                        #         Parent Loop BB15_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
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
	bnez	$a1, .LBB15_27
.LBB15_28:                              # %cont_Reset.exit
                                        #   in Loop: Header=BB15_15 Depth=4
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	st.w	$s3, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ori	$a1, $zero, 2000
	st.w	$a1, $a0, 0
	ld.d	$a0, $s1, 24
	ld.w	$a0, $a0, 0
	move	$s5, $s7
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB15_30
# %bb.29:                               # %if.then58
                                        #   in Loop: Header=BB15_15 Depth=4
	ld.d	$a2, $sp, 144
	ld.d	$a3, $sp, 136
	move	$a0, $s6
	move	$a1, $s1
	b	.LBB15_31
.LBB15_30:                              # %if.else
                                        #   in Loop: Header=BB15_15 Depth=4
	ld.d	$a2, $sp, 136
	ld.d	$a3, $sp, 144
	move	$a0, $s1
	move	$a1, $s6
.LBB15_31:                              # %if.end61
                                        #   in Loop: Header=BB15_15 Depth=4
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ApplyGenRes)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(clause_ComputeTermDepth)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 1
	bgeu	$s4, $a0, .LBB15_12
# %bb.32:                               # %if.then64
                                        #   in Loop: Header=BB15_15 Depth=4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	b	.LBB15_13
	.p2align	4, , 16
.LBB15_33:                              # %for.end73
                                        #   in Loop: Header=BB15_6 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_2
# %bb.34:                               # %land.lhs.true75
                                        #   in Loop: Header=BB15_6 Depth=2
	ld.w	$a0, $a3, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB15_2
# %bb.35:                               # %if.then78
                                        #   in Loop: Header=BB15_6 Depth=2
	ld.d	$a0, $a3, 16
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 8
	ld.d	$a0, $a3, 16
	ld.d	$a0, $a0, 0
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$a2, $a0, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	b	.LBB15_6
.LBB15_36:
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
.LBB15_37:                              # %for.end82
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
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
.LBB15_38:                              # %if.then50
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 2645
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	inf_BoundedDepthUnitResolution, .Lfunc_end15-inf_BoundedDepthUnitResolution
                                        # -- End function
	.globl	inf_GeneralFactoring            # -- Begin function inf_GeneralFactoring
	.p2align	5
	.type	inf_GeneralFactoring,@function
inf_GeneralFactoring:                   # @inf_GeneralFactoring
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
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s3, $a0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_49
# %bb.1:                                # %if.end
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	ld.bu	$a0, $s3, 48
	andi	$a0, $a0, 2
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	bnez	$a0, .LBB16_46
# %bb.2:                                # %if.end
	ld.w	$a1, $s3, 64
	ld.w	$a2, $s3, 68
	ld.w	$a0, $s3, 72
	add.w	$s6, $a2, $a1
	add.d	$a1, $s6, $a0
	addi.w	$fp, $a1, -1
	blt	$fp, $s6, .LBB16_46
# %bb.3:                                # %for.body.lr.ph
	add.w	$a0, $s6, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$s2, $a0, %got_pc_lo12(cont_LASTBINDING)
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$s0, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	b	.LBB16_5
	.p2align	4, , 16
.LBB16_4:                               # %for.inc79
                                        #   in Loop: Header=BB16_5 Depth=1
	addi.d	$s6, $s6, 1
	addi.w	$a0, $s6, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB16_46
.LBB16_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_17 Depth 2
                                        #       Child Loop BB16_32 Depth 3
                                        #       Child Loop BB16_45 Depth 3
	ld.d	$a0, $s3, 56
	slli.d	$a1, $s6, 3
	ldx.d	$a0, $a0, $a1
	beqz	$s1, .LBB16_7
# %bb.6:                                # %lor.lhs.false
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.bu	$a1, $a0, 0
	andi	$a1, $a1, 1
	beqz	$a1, .LBB16_4
.LBB16_7:                               # %land.lhs.true
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.d	$s7, $a0, 24
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s4, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	bnez	$a2, .LBB16_11
# %bb.8:                                # %lor.lhs.false13
                                        #   in Loop: Header=BB16_5 Depth=1
	move	$a2, $a0
	bne	$a0, $a1, .LBB16_10
# %bb.9:                                # %if.then.i.i
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a2, $s7, 16
	ld.d	$a2, $a2, 8
	ld.w	$a2, $a2, 0
.LBB16_10:                              # %clause_LiteralIsEquality.exit
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	beq	$a2, $a3, .LBB16_4
.LBB16_11:                              # %if.then16
                                        #   in Loop: Header=BB16_5 Depth=1
	bne	$a0, $a1, .LBB16_13
# %bb.12:                               # %if.then.i
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a0, $s7, 16
	ld.d	$s7, $a0, 8
.LBB16_13:                              # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.w	$a0, $s3, 64
	ld.w	$a1, $s3, 68
	add.w	$a2, $a1, $a0
	blt	$fp, $a2, .LBB16_4
# %bb.14:                               # %for.body21.lr.ph
                                        #   in Loop: Header=BB16_5 Depth=1
	add.d	$a0, $a0, $a1
	b	.LBB16_17
.LBB16_15:                              # %cont_Reset.exit170
                                        #   in Loop: Header=BB16_17 Depth=2
	st.w	$zero, $s0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	ori	$a0, $zero, 2000
	st.w	$a0, $s4, 0
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_16:                              # %for.inc
                                        #   in Loop: Header=BB16_17 Depth=2
	addi.d	$a0, $s8, 1
	bge	$s8, $fp, .LBB16_4
.LBB16_17:                              # %for.body21
                                        #   Parent Loop BB16_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_32 Depth 3
                                        #       Child Loop BB16_45 Depth 3
	move	$s8, $a0
	beq	$a0, $s6, .LBB16_16
# %bb.18:                               # %if.then23
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$a0, $s3, 56
	slli.d	$a1, $s8, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s5, $a0, 24
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s4, 0
	bne	$a1, $a2, .LBB16_20
# %bb.19:                               # %if.then.i149
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$a1, $s5, 16
	ld.d	$s5, $a1, 8
.LBB16_20:                              # %clause_LiteralAtom.exit152
                                        #   in Loop: Header=BB16_17 Depth=2
	blt	$s6, $s8, .LBB16_23
# %bb.21:                               # %lor.lhs.false27
                                        #   in Loop: Header=BB16_17 Depth=2
	beqz	$s1, .LBB16_16
# %bb.22:                               # %land.lhs.true29
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB16_16
.LBB16_23:                              # %land.lhs.true32
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s5, 0
	bne	$a0, $a1, .LBB16_16
# %bb.24:                               # %if.then35
                                        #   in Loop: Header=BB16_17 Depth=2
	move	$s3, $s1
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	move	$a1, $s7
	move	$a2, $s5
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_27
# %bb.25:                               # %if.then39
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$a0, $s1, 0
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB16_28
# %bb.26:                               # %lor.lhs.false42
                                        #   in Loop: Header=BB16_17 Depth=2
	move	$s1, $s3
	ld.d	$a3, $sp, 128
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s3
	move	$a1, $s6
	move	$a2, $s8
	move	$a4, $zero
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_29
	b	.LBB16_30
.LBB16_27:                              #   in Loop: Header=BB16_17 Depth=2
	move	$s1, $s3
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	bnez	$a0, .LBB16_31
	b	.LBB16_33
.LBB16_28:                              # %if.then39.if.then45_crit_edge
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
.LBB16_29:                              # %if.then45
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$a3, $sp, 128
	addi.w	$a1, $s6, 0
	addi.w	$a2, $s8, 0
	move	$a0, $s3
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ApplyGeneralFactoring)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
.LBB16_30:                              # %if.end48
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	beqz	$a0, .LBB16_33
.LBB16_31:                              # %while.body.preheader.i
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	.p2align	4, , 16
.LBB16_32:                              # %while.body.i
                                        #   Parent Loop BB16_5 Depth=1
                                        #     Parent Loop BB16_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a2, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a2, $a2, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a0, $a2, 0
	ld.d	$a3, $a0, 24
	st.d	$a3, $s2, 0
	st.w	$zero, $a0, 20
	vst	$vr0, $a0, 4
	ld.d	$a2, $a2, 0
	ld.d	$a0, $s2, 0
	st.d	$zero, $a2, 24
	st.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	bnez	$a0, .LBB16_32
.LBB16_33:                              # %cont_Reset.exit
                                        #   in Loop: Header=BB16_17 Depth=2
	st.w	$zero, $s0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$s4, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ori	$a0, $zero, 2000
	st.w	$a0, $s4, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB16_43
# %bb.34:                               # %land.lhs.true52
                                        #   in Loop: Header=BB16_17 Depth=2
	move	$s3, $s1
	ld.d	$a0, $s7, 16
	ld.d	$a1, $a0, 0
	ld.d	$a2, $s5, 16
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a2, 8
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_38
# %bb.35:                               # %land.lhs.true58
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$a0, $s5, 16
	ld.d	$a1, $s7, 16
	ld.d	$a2, $a0, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a2, 8
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_38
# %bb.36:                               # %if.then64
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$a0, $s1, 0
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB16_39
# %bb.37:                               # %lor.lhs.false68
                                        #   in Loop: Header=BB16_17 Depth=2
	move	$s1, $s3
	ld.d	$a3, $sp, 128
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s3
	move	$a1, $s6
	move	$a2, $s8
	move	$a4, $zero
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_40
	b	.LBB16_41
.LBB16_38:                              #   in Loop: Header=BB16_17 Depth=2
	move	$s1, $s3
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	b	.LBB16_42
.LBB16_39:                              # %if.then64.if.then71_crit_edge
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
.LBB16_40:                              # %if.then71
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$a3, $sp, 128
	addi.w	$a1, $s6, 0
	addi.w	$a2, $s8, 0
	move	$a0, $s3
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ApplyGeneralFactoring)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
.LBB16_41:                              # %if.end74
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
.LBB16_42:                              # %if.end75
                                        #   in Loop: Header=BB16_17 Depth=2
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
.LBB16_43:                              # %if.end75
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB16_15
# %bb.44:                               # %while.body.preheader.i161
                                        #   in Loop: Header=BB16_17 Depth=2
	ld.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	.p2align	4, , 16
.LBB16_45:                              # %while.body.i163
                                        #   Parent Loop BB16_5 Depth=1
                                        #     Parent Loop BB16_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a2, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a2, $a2, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a0, $a2, 0
	ld.d	$a3, $a0, 24
	st.d	$a3, $s2, 0
	st.w	$zero, $a0, 20
	vst	$vr0, $a0, 4
	ld.d	$a2, $a2, 0
	ld.d	$a0, $s2, 0
	st.d	$zero, $a2, 24
	st.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	bnez	$a0, .LBB16_45
	b	.LBB16_15
.LBB16_46:                              # %if.end82
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB16_48
# %bb.47:                               # %if.then84
	ld.w	$s5, $s3, 64
	ld.w	$a0, $s3, 68
	add.w	$fp, $s5, $a0
	addi.w	$a0, $fp, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	bge	$a0, $s5, .LBB16_51
.LBB16_48:                              # %if.end189
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	b	.LBB16_50
.LBB16_49:
	move	$a0, $zero
.LBB16_50:                              # %cleanup
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
.LBB16_51:                              # %for.body89.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s0, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s2, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$s4, $a0, %got_pc_lo12(cont_LASTBINDING)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	b	.LBB16_53
	.p2align	4, , 16
.LBB16_52:                              # %for.inc186
                                        #   in Loop: Header=BB16_53 Depth=1
	addi.d	$s5, $s5, 1
	addi.w	$a0, $s5, 0
	beq	$fp, $a0, .LBB16_48
.LBB16_53:                              # %for.body89
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_66 Depth 2
                                        #       Child Loop BB16_84 Depth 3
                                        #       Child Loop BB16_97 Depth 3
	ld.d	$a0, $s3, 56
	slli.d	$a1, $s5, 3
	ldx.d	$a3, $a0, $a1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bnez	$a0, .LBB16_57
# %bb.54:                               # %lor.lhs.false92
                                        #   in Loop: Header=BB16_53 Depth=1
	ld.d	$a1, $a3, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s0, 0
	bne	$a0, $a2, .LBB16_56
# %bb.55:                               # %if.then.i.i180
                                        #   in Loop: Header=BB16_53 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
.LBB16_56:                              # %clause_LiteralIsEquality.exit184
                                        #   in Loop: Header=BB16_53 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beq	$a0, $a1, .LBB16_52
.LBB16_57:                              # %land.lhs.true95
                                        #   in Loop: Header=BB16_53 Depth=1
	ld.wu	$a0, $a3, 0
	andi	$a1, $a0, 4
	bnez	$a1, .LBB16_61
# %bb.58:                               # %lor.lhs.false98
                                        #   in Loop: Header=BB16_53 Depth=1
	ld.bu	$a1, $s3, 48
	andi	$a1, $a1, 2
	bnez	$a1, .LBB16_52
# %bb.59:                               # %land.lhs.true101
                                        #   in Loop: Header=BB16_53 Depth=1
	beqz	$s1, .LBB16_61
# %bb.60:                               # %land.lhs.true101
                                        #   in Loop: Header=BB16_53 Depth=1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB16_52
	.p2align	4, , 16
.LBB16_61:                              # %if.then106
                                        #   in Loop: Header=BB16_53 Depth=1
	ld.d	$s6, $a3, 24
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s0, 0
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB16_63
# %bb.62:                               # %if.then.i195
                                        #   in Loop: Header=BB16_53 Depth=1
	ld.d	$a0, $s6, 16
	ld.d	$s6, $a0, 8
.LBB16_63:                              # %clause_LiteralAtom.exit198
                                        #   in Loop: Header=BB16_53 Depth=1
	ld.w	$s7, $s3, 64
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bge	$a0, $s7, .LBB16_66
	b	.LBB16_52
	.p2align	4, , 16
.LBB16_64:                              # %cont_Reset.exit254
                                        #   in Loop: Header=BB16_66 Depth=2
	st.w	$zero, $s0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 0
	ori	$a0, $zero, 2000
	st.w	$a0, $s1, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
.LBB16_65:                              # %for.inc182
                                        #   in Loop: Header=BB16_66 Depth=2
	addi.d	$s7, $s7, 1
	addi.w	$a0, $s7, 0
	beq	$fp, $a0, .LBB16_52
.LBB16_66:                              # %for.body114
                                        #   Parent Loop BB16_53 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_84 Depth 3
                                        #       Child Loop BB16_97 Depth 3
	beq	$s7, $s5, .LBB16_65
# %bb.67:                               # %if.then116
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a0, $s3, 56
	slli.d	$a1, $s7, 3
	ldx.d	$a2, $a0, $a1
	ld.d	$s8, $a2, 24
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s0, 0
	move	$a3, $s8
	bne	$a0, $a1, .LBB16_69
# %bb.68:                               # %if.then.i204
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a3, $s8, 16
	ld.d	$a3, $a3, 8
.LBB16_69:                              # %clause_LiteralAtom.exit207
                                        #   in Loop: Header=BB16_66 Depth=2
	blt	$s5, $s7, .LBB16_73
# %bb.70:                               # %lor.lhs.false120
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a4, $a4, 0
	andi	$a4, $a4, 4
	bnez	$a4, .LBB16_73
# %bb.71:                               # %lor.lhs.false123
                                        #   in Loop: Header=BB16_66 Depth=2
	beqz	$s1, .LBB16_65
# %bb.72:                               # %land.lhs.true125
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.bu	$a2, $a2, 0
	andi	$a2, $a2, 1
	bnez	$a2, .LBB16_65
	.p2align	4, , 16
.LBB16_73:                              # %land.lhs.true128
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.w	$a2, $s6, 0
	ld.w	$a3, $a3, 0
	bne	$a2, $a3, .LBB16_65
# %bb.74:                               # %if.then131
                                        #   in Loop: Header=BB16_66 Depth=2
	bne	$a0, $a1, .LBB16_76
# %bb.75:                               # %if.then.i217
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a0, $s8, 16
	ld.d	$s8, $a0, 8
.LBB16_76:                              # %clause_LiteralAtom.exit220
                                        #   in Loop: Header=BB16_66 Depth=2
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	move	$a1, $s6
	move	$a2, $s8
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_82
# %bb.77:                               # %if.then136
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a0, $s2, 0
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB16_80
# %bb.78:                               # %lor.lhs.false140
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 4
	bnez	$a0, .LBB16_80
# %bb.79:                               # %lor.lhs.false143
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a3, $sp, 128
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s7
	move	$a4, $zero
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_81
.LBB16_80:                              # %if.then146
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a3, $sp, 128
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s7
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ApplyGeneralFactoring)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
.LBB16_81:                              # %if.end149
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
.LBB16_82:                              # %if.end150
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a0, $s4, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	beqz	$a0, .LBB16_85
# %bb.83:                               # %while.body.preheader.i227
                                        #   in Loop: Header=BB16_66 Depth=2
	pcalau12i	$a1, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a1, $a1, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a2, $a1, 0
	addi.d	$a2, $a2, -1
	.p2align	4, , 16
.LBB16_84:                              # %while.body.i229
                                        #   Parent Loop BB16_53 Depth=1
                                        #     Parent Loop BB16_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a3, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a3, $a3, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a0, $a3, 0
	ld.d	$a4, $a0, 24
	st.d	$a4, $s4, 0
	st.w	$zero, $a0, 20
	vst	$vr0, $a0, 4
	ld.d	$a3, $a3, 0
	ld.d	$a0, $s4, 0
	st.d	$zero, $a3, 24
	st.w	$a2, $a1, 0
	addi.d	$a2, $a2, -1
	bnez	$a0, .LBB16_84
.LBB16_85:                              # %cont_Reset.exit236
                                        #   in Loop: Header=BB16_66 Depth=2
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$s0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$s2, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$s1, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ori	$a0, $zero, 2000
	st.w	$a0, $s1, 0
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB16_95
# %bb.86:                               # %land.lhs.true153
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a0, $s6, 16
	ld.d	$a1, $a0, 0
	ld.d	$a2, $s8, 16
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a2, 8
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_93
# %bb.87:                               # %land.lhs.true159
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a0, $s8, 16
	ld.d	$a1, $s6, 16
	ld.d	$a2, $a0, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a2, 8
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_93
# %bb.88:                               # %if.then165
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a0, $fp, 0
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB16_91
# %bb.89:                               # %lor.lhs.false169
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 4
	bnez	$a0, .LBB16_91
# %bb.90:                               # %lor.lhs.false172
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a3, $sp, 128
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s7
	move	$a4, $zero
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_92
.LBB16_91:                              # %if.then175
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a3, $sp, 128
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s7
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ApplyGeneralFactoring)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s8, $a0, 8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
.LBB16_92:                              # %if.end178
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	b	.LBB16_94
.LBB16_93:                              #   in Loop: Header=BB16_66 Depth=2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
.LBB16_94:                              # %if.end179
                                        #   in Loop: Header=BB16_66 Depth=2
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
.LBB16_95:                              # %if.end179
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB16_64
# %bb.96:                               # %while.body.preheader.i245
                                        #   in Loop: Header=BB16_66 Depth=2
	ld.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	.p2align	4, , 16
.LBB16_97:                              # %while.body.i247
                                        #   Parent Loop BB16_53 Depth=1
                                        #     Parent Loop BB16_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a2, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a2, $a2, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a0, $a2, 0
	ld.d	$a3, $a0, 24
	st.d	$a3, $s4, 0
	st.w	$zero, $a0, 20
	vst	$vr0, $a0, 4
	ld.d	$a2, $a2, 0
	ld.d	$a0, $s4, 0
	st.d	$zero, $a2, 24
	st.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	bnez	$a0, .LBB16_97
	b	.LBB16_64
.Lfunc_end16:
	.size	inf_GeneralFactoring, .Lfunc_end16-inf_GeneralFactoring
                                        # -- End function
	.p2align	5                               # -- Begin function inf_ApplyGeneralFactoring
	.type	inf_ApplyGeneralFactoring,@function
inf_ApplyGeneralFactoring:              # @inf_ApplyGeneralFactoring
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
	move	$s2, $a5
	move	$s3, $a4
	move	$s5, $a3
	move	$s4, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$zero, $a0, 48
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(clause_SubstApply)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(clause_DeleteLiteral)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB17_3
# %bb.1:                                # %while.body.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB17_2:                               # %while.body.i
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
	bnez	$a6, .LBB17_2
.LBB17_3:                               # %list_Delete.exit
	ld.d	$a1, $fp, 40
	addi.d	$a0, $fp, 32
	beqz	$a1, .LBB17_6
# %bb.4:                                # %while.body.i20.preheader
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB17_5:                               # %while.body.i20
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
	bnez	$a7, .LBB17_5
.LBB17_6:                               # %list_Delete.exit27
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $s2
	pcaddu18i	$ra, %call36(clause_SetDataFromFather)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 14
	st.w	$a0, $fp, 76
	ld.w	$s1, $s1, 0
	ld.d	$s2, $fp, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s2, $a0, 0
	ld.d	$s1, $fp, 40
	st.d	$a0, $fp, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $fp, 40
	pcalau12i	$a0, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a0, $a0, %got_pc_lo12(clause_CLAUSECOUNTER)
	ld.w	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.w	$a2, $a0, 0
	st.w	$a1, $fp, 0
	move	$a0, $fp
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
.Lfunc_end17:
	.size	inf_ApplyGeneralFactoring, .Lfunc_end17-inf_ApplyGeneralFactoring
                                        # -- End function
	.globl	inf_GenSuperpositionLeft        # -- Begin function inf_GenSuperpositionLeft
	.p2align	5
	.type	inf_GenSuperpositionLeft,@function
inf_GenSuperpositionLeft:               # @inf_GenSuperpositionLeft
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
	st.d	$a6, $sp, 192                   # 8-byte Folded Spill
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	move	$s0, $a4
	move	$s2, $a3
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_27
# %bb.1:                                # %if.end
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$t0, $a0
	ld.wu	$a1, $a0, 48
	ld.w	$a4, $a0, 64
	ld.w	$a0, $a0, 68
	andi	$a2, $a1, 2
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	bnez	$a2, .LBB18_28
# %bb.2:                                # %land.lhs.true
	ld.w	$a2, $t0, 72
	add.w	$fp, $a0, $a4
	add.w	$s1, $fp, $a2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sltu	$a2, $zero, $a2
	addi.d	$a3, $s1, -1
	sltu	$a3, $zero, $a3
	and	$a2, $a2, $a3
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	bnez	$a2, .LBB18_29
# %bb.3:                                # %land.lhs.true
	addi.w	$a2, $s1, -1
	blt	$a2, $fp, .LBB18_29
# %bb.4:                                # %for.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s3, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	b	.LBB18_8
	.p2align	4, , 16
.LBB18_5:                               # %lor.lhs.false26
                                        #   in Loop: Header=BB18_8 Depth=1
	ld.w	$a0, $s5, 8
	move	$a5, $a7
	beqz	$a0, .LBB18_20
# %bb.6:                                #   in Loop: Header=BB18_8 Depth=1
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB18_7:                               # %for.inc
                                        #   in Loop: Header=BB18_8 Depth=1
	addi.d	$fp, $fp, 1
	addi.w	$a0, $fp, 0
	beq	$s1, $a0, .LBB18_108
.LBB18_8:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_15 Depth 2
                                        #     Child Loop BB18_23 Depth 2
	ld.d	$a0, $t0, 56
	slli.d	$a1, $fp, 3
	ldx.d	$s5, $a0, $a1
	ld.d	$s4, $s5, 24
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB18_7
# %bb.9:                                # %land.lhs.true15
                                        #   in Loop: Header=BB18_8 Depth=1
	beqz	$s2, .LBB18_11
# %bb.10:                               # %lor.lhs.false17
                                        #   in Loop: Header=BB18_8 Depth=1
	ld.bu	$a0, $s5, 0
	andi	$a0, $a0, 2
	move	$a6, $s2
	beqz	$a0, .LBB18_7
	b	.LBB18_12
.LBB18_11:                              #   in Loop: Header=BB18_8 Depth=1
	move	$a6, $zero
.LBB18_12:                              # %if.then20
                                        #   in Loop: Header=BB18_8 Depth=1
	ld.d	$a0, $s4, 16
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a2, 8
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $t0
	move	$a3, $fp
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	move	$a5, $a7
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_GenLitSPLeft)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_17
# %bb.13:                               # %if.end.i
                                        #   in Loop: Header=BB18_8 Depth=1
	move	$s0, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB18_18
# %bb.14:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB18_8 Depth=1
	move	$a1, $s0
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_15:                              # %for.cond.i
                                        #   Parent Loop BB18_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB18_15
# %bb.16:                               # %for.end.i
                                        #   in Loop: Header=BB18_8 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	bnez	$a7, .LBB18_5
	b	.LBB18_19
.LBB18_17:                              #   in Loop: Header=BB18_8 Depth=1
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
.LBB18_18:                              #   in Loop: Header=BB18_8 Depth=1
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	bnez	$a7, .LBB18_5
.LBB18_19:                              #   in Loop: Header=BB18_8 Depth=1
	move	$a5, $zero
.LBB18_20:                              # %if.then29
                                        #   in Loop: Header=BB18_8 Depth=1
	ld.d	$a0, $s4, 16
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a0, 8
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $t0
	move	$a3, $fp
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	move	$a6, $s2
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_GenLitSPLeft)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB18_25
# %bb.21:                               # %if.end.i90
                                        #   in Loop: Header=BB18_8 Depth=1
	beqz	$s0, .LBB18_26
# %bb.22:                               # %for.cond.i92.preheader
                                        #   in Loop: Header=BB18_8 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_23:                              # %for.cond.i92
                                        #   Parent Loop BB18_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB18_23
# %bb.24:                               # %for.end.i96
                                        #   in Loop: Header=BB18_8 Depth=1
	st.d	$s0, $a0, 0
	b	.LBB18_7
.LBB18_25:                              #   in Loop: Header=BB18_8 Depth=1
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
.LBB18_26:                              #   in Loop: Header=BB18_8 Depth=1
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	b	.LBB18_7
.LBB18_27:
	move	$a0, $zero
	b	.LBB18_111
.LBB18_28:
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
.LBB18_29:                              # %if.end36
	andi	$a1, $a1, 32
	bnez	$a1, .LBB18_109
.LBB18_30:                              # %if.end36
	add.d	$a1, $a4, $a0
	addi.w	$a1, $a1, -1
	blt	$a1, $a4, .LBB18_109
# %bb.31:                               # %for.body44.lr.ph
	add.w	$a0, $a0, $a4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stack_POINTER)
	ld.d	$s0, $a0, %got_pc_lo12(stack_POINTER)
	pcalau12i	$a0, %got_pc_hi20(stack_STACK)
	ld.d	$a0, $a0, %got_pc_lo12(stack_STACK)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	b	.LBB18_34
	.p2align	4, , 16
.LBB18_32:                              #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
.LBB18_33:                              # %for.inc60
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	addi.w	$a1, $a4, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB18_110
.LBB18_34:                              # %for.body44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_54 Depth 2
                                        #       Child Loop BB18_58 Depth 3
                                        #         Child Loop BB18_62 Depth 4
                                        #           Child Loop BB18_71 Depth 5
                                        #             Child Loop BB18_72 Depth 6
                                        #             Child Loop BB18_89 Depth 6
                                        #     Child Loop BB18_49 Depth 2
                                        #     Child Loop BB18_105 Depth 2
	ld.d	$a0, $t0, 56
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	slli.d	$fp, $a4, 3
	ldx.d	$a0, $a0, $fp
	ld.wu	$a1, $a0, 0
	andi	$a2, $a1, 4
	bnez	$a2, .LBB18_38
# %bb.35:                               # %lor.lhs.false48
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.bu	$a2, $t0, 48
	andi	$a2, $a2, 2
	bnez	$a2, .LBB18_32
# %bb.36:                               # %land.lhs.true51
                                        #   in Loop: Header=BB18_34 Depth=1
	beqz	$s2, .LBB18_38
# %bb.37:                               # %land.lhs.true51
                                        #   in Loop: Header=BB18_34 Depth=1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB18_32
	.p2align	4, , 16
.LBB18_38:                              # %if.then56
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a2, $a0, 24
	ld.w	$a0, $a2, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB18_40
# %bb.39:                               # %if.then.i.i
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a0, $a2, 16
	ld.d	$a2, $a0, 8
	ld.w	$a0, $a2, 0
.LBB18_40:                              # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB18_44
# %bb.41:                               # %if.then.i
                                        #   in Loop: Header=BB18_34 Depth=1
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $t0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	move	$a4, $a7
	move	$a5, $s2
	move	$a6, $s1
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_GenSPLeftEqToGiven)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	beqz	$s2, .LBB18_46
# %bb.42:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a0, $t0, 56
	ldx.d	$a0, $a0, $fp
	ld.w	$a0, $a0, 8
	beqz	$a0, .LBB18_46
# %bb.43:                               #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	b	.LBB18_102
	.p2align	4, , 16
.LBB18_44:                              # %if.else.i
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.w	$fp, $s0, 0
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 16
	pcaddu18i	$ra, %call36(sharing_PushListOnStack)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	bne	$a0, $fp, .LBB18_51
# %bb.45:                               #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	b	.LBB18_33
.LBB18_46:                              # %if.then10.i
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $t0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $zero
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	move	$a5, $s2
	move	$a6, $s1
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_GenSPLeftEqToGiven)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_101
# %bb.47:                               # %if.end.i34.i
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB18_107
# %bb.48:                               # %for.cond.i.i.preheader
                                        #   in Loop: Header=BB18_34 Depth=1
	move	$a2, $a0
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_49:                              # %for.cond.i.i
                                        #   Parent Loop BB18_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB18_49
# %bb.50:                               # %for.end.i.i
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a2, $a1, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bnez	$a1, .LBB18_104
	b	.LBB18_33
.LBB18_51:                              # %while.body.i.i.preheader
                                        #   in Loop: Header=BB18_34 Depth=1
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	b	.LBB18_54
.LBB18_52:                              #   in Loop: Header=BB18_54 Depth=2
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_53:                              # %if.end109.i.i
                                        #   in Loop: Header=BB18_54 Depth=2
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB18_102
.LBB18_54:                              # %while.body.i.i
                                        #   Parent Loop BB18_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_58 Depth 3
                                        #         Child Loop BB18_62 Depth 4
                                        #           Child Loop BB18_71 Depth 5
                                        #             Child Loop BB18_72 Depth 6
                                        #             Child Loop BB18_89 Depth 6
	addi.d	$a0, $a0, -1
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$fp, $a2, $a1
	st.w	$a0, $s0, 0
	ld.w	$a0, $fp, 0
	bgtz	$a0, .LBB18_53
# %bb.55:                               # %if.then.i38.i
                                        #   in Loop: Header=BB18_54 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a2, $a2, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_52
# %bb.56:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB18_54 Depth=2
	st.d	$fp, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	b	.LBB18_58
	.p2align	4, , 16
.LBB18_57:                              # %for.inc106.i.i
                                        #   in Loop: Header=BB18_58 Depth=3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a6, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	ld.w	$a3, $a2, 32
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a5, $a4, 0
	add.d	$a3, $a5, $a3
	st.d	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$a0, $a6
	beqz	$a6, .LBB18_53
.LBB18_58:                              # %for.body.i.i
                                        #   Parent Loop BB18_34 Depth=1
                                        #     Parent Loop BB18_54 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_62 Depth 4
                                        #           Child Loop BB18_71 Depth 5
                                        #             Child Loop BB18_72 Depth 6
                                        #             Child Loop BB18_89 Depth 6
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$fp, $a0, 8
	ld.d	$s8, $fp, 8
	beqz	$s8, .LBB18_57
# %bb.59:                               # %for.body21.i.i.preheader
                                        #   in Loop: Header=BB18_58 Depth=3
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	b	.LBB18_62
.LBB18_60:                              #   in Loop: Header=BB18_62 Depth=4
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_61:                              # %for.inc103.i.i
                                        #   in Loop: Header=BB18_62 Depth=4
	ld.d	$s8, $s8, 0
	beqz	$s8, .LBB18_57
.LBB18_62:                              # %for.body21.i.i
                                        #   Parent Loop BB18_34 Depth=1
                                        #     Parent Loop BB18_54 Depth=2
                                        #       Parent Loop BB18_58 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB18_71 Depth 5
                                        #             Child Loop BB18_72 Depth 6
                                        #             Child Loop BB18_89 Depth 6
	ld.d	$a0, $s8, 8
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB18_61
# %bb.63:                               # %if.then25.i.i
                                        #   in Loop: Header=BB18_62 Depth=4
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_60
# %bb.64:                               # %for.body31.i.i.preheader
                                        #   in Loop: Header=BB18_62 Depth=4
	move	$s0, $a0
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	b	.LBB18_71
.LBB18_65:                              # %if.then94.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 240
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $s5
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_100
.LBB18_66:                              # %inf_AllTermsRplac.exit.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.d	$a2, $sp, 232
	ld.d	$a5, $sp, 240
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 24
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	st.d	$s2, $sp, 8
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s7
	move	$a1, $s4
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	move	$a6, $s6
	move	$a7, $zero
	pcaddu18i	$ra, %call36(inf_ApplyGenSuperposition)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
.LBB18_67:                              # %if.end98.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB18_68:                              # %if.end99.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.d	$a0, $sp, 240
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
.LBB18_69:                              # %for.inc.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_70:                              # %for.inc.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB18_61
.LBB18_71:                              # %for.body31.i.i
                                        #   Parent Loop BB18_34 Depth=1
                                        #     Parent Loop BB18_54 Depth=2
                                        #       Parent Loop BB18_58 Depth=3
                                        #         Parent Loop BB18_62 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB18_72 Depth 6
                                        #             Child Loop BB18_89 Depth 6
	ld.d	$s5, $s0, 8
	ld.d	$s7, $s5, 16
	ld.d	$a0, $s7, 56
	addi.d	$s4, $zero, -1
	.p2align	4, , 16
.LBB18_72:                              # %while.cond.i.i.i
                                        #   Parent Loop BB18_34 Depth=1
                                        #     Parent Loop BB18_54 Depth=2
                                        #       Parent Loop BB18_58 Depth=3
                                        #         Parent Loop BB18_62 Depth=4
                                        #           Parent Loop BB18_71 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a1, $a0, 0
	addi.w	$s4, $s4, 1
	addi.d	$a0, $a0, 8
	bne	$a1, $s5, .LBB18_72
# %bb.73:                               # %clause_LiteralGetIndex.exit.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.d	$s6, $s5, 24
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB18_75
# %bb.74:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.d	$a2, $s6, 16
	ld.d	$s6, $a2, 8
.LBB18_75:                              # %clause_LiteralAtom.exit.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.bu	$a2, $s7, 48
	andi	$a2, $a2, 2
	bnez	$a2, .LBB18_70
# %bb.76:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	beqz	$s2, .LBB18_78
# %bb.77:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.bu	$a2, $s5, 0
	andi	$a2, $a2, 2
	beqz	$a2, .LBB18_70
.LBB18_78:                              # %land.lhs.true41.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	beqz	$a7, .LBB18_82
# %bb.79:                               # %lor.lhs.false43.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.d	$a2, $s6, 16
	ld.d	$a2, $a2, 8
	beq	$fp, $a2, .LBB18_82
# %bb.80:                               # %lor.lhs.false45.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	beq	$a0, $a1, .LBB18_70
# %bb.81:                               # %lor.lhs.false45.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.w	$a0, $s5, 8
	beqz	$a0, .LBB18_83
	b	.LBB18_70
	.p2align	4, , 16
.LBB18_82:                              # %land.lhs.true48.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	beq	$a0, $a1, .LBB18_70
.LBB18_83:                              # %land.lhs.true51.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.w	$a0, $s7, 0
	ld.w	$a1, $t0, 0
	beq	$a0, $a1, .LBB18_70
# %bb.84:                               # %land.lhs.true55.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	beqz	$s1, .LBB18_86
# %bb.85:                               # %lor.lhs.false57.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.w	$a0, $s7, 64
	ld.w	$a1, $s7, 68
	ld.w	$a2, $s7, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB18_70
.LBB18_86:                              # %land.lhs.true60.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	move	$a0, $s7
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_69
# %bb.87:                               # %if.then63.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.w	$a1, $s7, 52
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $s2, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $s2, 0
	addi.d	$a1, $sp, 240
	addi.d	$a3, $sp, 232
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	beqz	$a1, .LBB18_90
# %bb.88:                               # %while.body.preheader.i.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB18_89:                              # %while.body.i.i.i
                                        #   Parent Loop BB18_34 Depth=1
                                        #     Parent Loop BB18_54 Depth=2
                                        #       Parent Loop BB18_58 Depth=3
                                        #         Parent Loop BB18_62 Depth=4
                                        #           Parent Loop BB18_71 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
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
	bnez	$a1, .LBB18_89
.LBB18_90:                              # %cont_Reset.exit.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ori	$a1, $zero, 2000
	st.w	$a1, $a0, 0
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	beqz	$s2, .LBB18_95
# %bb.91:                               # %lor.lhs.false71.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 48
	ld.d	$s1, $sp, 232
	andi	$a0, $a0, 2
	bnez	$a0, .LBB18_93
# %bb.92:                               # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 64
	ld.w	$a1, $a0, 68
	ld.d	$a3, $sp, 240
	add.d	$a1, $a2, $a1
	addi.w	$a2, $a1, -1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slt	$a4, $a2, $a1
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_68
.LBB18_93:                              # %if.end.i.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.bu	$a0, $s7, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB18_95
# %bb.94:                               # %land.lhs.true6.i.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.w	$a0, $s7, 64
	ld.w	$a1, $s7, 68
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	slt	$a4, $a0, $s4
	addi.w	$a2, $zero, -1
	move	$a0, $s7
	move	$a1, $s4
	move	$a3, $s1
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_68
.LBB18_95:                              # %if.then74.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.d	$s1, $sp, 232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s6, 16
	ld.d	$a1, $a2, 8
	move	$s6, $a0
	bne	$fp, $a1, .LBB18_97
# %bb.96:                               # %if.then79.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.d	$a0, $a2, 0
	ld.d	$a1, $a0, 8
.LBB18_97:                              # %if.end.i40.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.d	$s1, $sp, 232
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	beqz	$a0, .LBB18_65
# %bb.98:                               # %lor.lhs.false87.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	ld.w	$a0, $s5, 8
	bnez	$a0, .LBB18_65
# %bb.99:                               # %lor.lhs.false90.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	move	$a0, $s6
	move	$a1, $s1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB18_65
	b	.LBB18_67
.LBB18_100:                             # %if.then.i86.i.i
                                        #   in Loop: Header=BB18_71 Depth=5
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$s6, $zero
	b	.LBB18_66
.LBB18_101:                             #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
.LBB18_102:                             # %inf_GenSPLeftToGiven.exit
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	move	$a0, $a1
	beqz	$a1, .LBB18_32
# %bb.103:                              # %if.end.i115
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beqz	$a1, .LBB18_33
.LBB18_104:                             # %for.cond.i117.preheader
                                        #   in Loop: Header=BB18_34 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB18_105:                             # %for.cond.i117
                                        #   Parent Loop BB18_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB18_105
# %bb.106:                              # %for.end.i121
                                        #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.d	$a2, $a1, 0
	b	.LBB18_33
.LBB18_107:                             #   in Loop: Header=BB18_34 Depth=1
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bnez	$a1, .LBB18_104
	b	.LBB18_33
.LBB18_108:                             # %if.end36.loopexit
	ld.w	$a4, $t0, 64
	ld.w	$a0, $t0, 68
	ld.w	$a1, $t0, 48
	andi	$a1, $a1, 32
	beqz	$a1, .LBB18_30
.LBB18_109:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
.LBB18_110:                             # %if.end63
	move	$fp, $a0
	move	$a0, $t0
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB18_111:                             # %cleanup
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
.Lfunc_end18:
	.size	inf_GenSuperpositionLeft, .Lfunc_end18-inf_GenSuperpositionLeft
                                        # -- End function
	.p2align	5                               # -- Begin function inf_GenLitSPLeft
	.type	inf_GenLitSPLeft,@function
inf_GenLitSPLeft:                       # @inf_GenLitSPLeft
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	st.d	$a7, $sp, 184                   # 8-byte Folded Spill
	move	$s5, $a6
	st.d	$a5, $sp, 192                   # 8-byte Folded Spill
	move	$fp, $a3
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	move	$a3, $a1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $a4, 0
	pcalau12i	$a2, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a2, $a2, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_63
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $a0
	ld.d	$a0, $sp, 368
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s7, $a0, %got_pc_lo12(fol_NOT)
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 3
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s6, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s8, $a0, %got_pc_lo12(memory_FREEDBYTES)
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	st.d	$s5, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 152                   # 8-byte Folded Spill
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_2:                               # %if.end105
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a0, $s6, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s8, 0
	ld.d	$a3, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s6, 128
	st.d	$s0, $a0, 0
	move	$s0, $a3
	beqz	$a3, .LBB19_64
.LBB19_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_13 Depth 2
                                        #       Child Loop BB19_16 Depth 3
                                        #       Child Loop BB19_27 Depth 3
	ld.d	$a0, $s0, 8
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB19_2
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB19_3 Depth=1
	bgez	$a1, .LBB19_6
# %bb.5:                                # %symbol_IsPredicate.exit
                                        #   in Loop: Header=BB19_3 Depth=1
	sub.w	$a2, $zero, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	and	$a2, $a1, $a2
	ori	$a1, $zero, 2
	beq	$a2, $a1, .LBB19_2
.LBB19_6:                               # %if.then
                                        #   in Loop: Header=BB19_3 Depth=1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sharing_GetDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_2
# %bb.7:                                # %for.body17.preheader
                                        #   in Loop: Header=BB19_3 Depth=1
	move	$s2, $a0
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	b	.LBB19_13
.LBB19_8:                               #   in Loop: Header=BB19_13 Depth=2
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
.LBB19_9:                               # %if.then100
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB19_10:                              # %if.end101
                                        #   in Loop: Header=BB19_13 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB19_11:                              # %if.end102
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB19_12:                              # %if.end103
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $s6, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s8, 0
	ld.d	$a3, $s2, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s6, 128
	st.d	$s2, $a0, 0
	move	$s2, $a3
	beqz	$a3, .LBB19_2
.LBB19_13:                              # %for.body17
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_16 Depth 3
                                        #       Child Loop BB19_27 Depth 3
	ld.d	$s4, $s2, 8
	ld.d	$s1, $s4, 24
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB19_15
# %bb.14:                               # %if.then.i
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a2, $s1, 16
	ld.d	$s1, $a2, 8
.LBB19_15:                              # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$s3, $s4, 16
	ld.d	$a2, $s3, 56
	addi.d	$fp, $zero, -1
	.p2align	4, , 16
.LBB19_16:                              # %while.cond.i
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	addi.w	$fp, $fp, 1
	addi.d	$a2, $a2, 8
	bne	$a3, $s4, .LBB19_16
# %bb.17:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.wu	$a3, $s4, 0
	andi	$a2, $a3, 4
	bnez	$a2, .LBB19_22
# %bb.18:                               # %lor.lhs.false
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.wu	$a2, $s3, 48
	andi	$a4, $a2, 2
	bnez	$a4, .LBB19_12
# %bb.19:                               # %land.lhs.true26
                                        #   in Loop: Header=BB19_13 Depth=2
	bne	$a0, $a1, .LBB19_12
# %bb.20:                               # %land.lhs.true26
                                        #   in Loop: Header=BB19_13 Depth=2
	sltu	$a0, $zero, $s5
	andi	$a1, $a3, 1
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	bnez	$a0, .LBB19_12
# %bb.21:                               # %land.lhs.true34
                                        #   in Loop: Header=BB19_13 Depth=2
	andi	$a0, $a2, 32
	bnez	$a0, .LBB19_12
	b	.LBB19_24
	.p2align	4, , 16
.LBB19_22:                              # %land.lhs.true31
                                        #   in Loop: Header=BB19_13 Depth=2
	bne	$a0, $a1, .LBB19_12
# %bb.23:                               # %land.lhs.true31.land.lhs.true34_crit_edge
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.w	$a2, $s3, 48
	andi	$a0, $a2, 32
	bnez	$a0, .LBB19_12
.LBB19_24:                              # %land.lhs.true37
                                        #   in Loop: Header=BB19_13 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_12
# %bb.25:                               # %if.then40
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.w	$a1, $s3, 52
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $s7, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $s7, 0
	addi.d	$a1, $sp, 272
	addi.d	$a3, $sp, 264
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	beqz	$a1, .LBB19_28
# %bb.26:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB19_13 Depth=2
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB19_27:                              # %while.body.i
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	bnez	$a1, .LBB19_27
.LBB19_28:                              # %cont_Reset.exit
                                        #   in Loop: Header=BB19_13 Depth=2
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ori	$a1, $zero, 2000
	st.w	$a1, $a0, 0
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	beqz	$s5, .LBB19_33
# %bb.29:                               # %lor.lhs.false48
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 48
	ld.d	$s5, $sp, 264
	andi	$a0, $a0, 2
	bnez	$a0, .LBB19_31
# %bb.30:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 64
	ld.w	$a1, $a0, 68
	ld.d	$a3, $sp, 272
	add.d	$a1, $a2, $a1
	addi.w	$a2, $a1, -1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	slt	$a4, $a2, $a1
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_43
.LBB19_31:                              # %if.end.i
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.bu	$a0, $s3, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB19_33
# %bb.32:                               # %land.lhs.true6.i
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.w	$a0, $s3, 64
	ld.w	$a1, $s3, 68
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	slt	$a4, $a0, $fp
	addi.w	$a2, $zero, -1
	move	$a0, $s3
	move	$a1, $fp
	move	$a3, $s5
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_43
.LBB19_33:                              # %if.then51
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$s5, $sp, 272
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB19_36
# %bb.34:                               # %land.lhs.true55
                                        #   in Loop: Header=BB19_13 Depth=2
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.w	$a0, $a0, 8
	beqz	$a0, .LBB19_44
# %bb.35:                               #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	bnez	$s5, .LBB19_37
	b	.LBB19_51
.LBB19_36:                              #   in Loop: Header=BB19_13 Depth=2
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	beqz	$s5, .LBB19_51
.LBB19_37:                              # %lor.lhs.false70
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a1, $s4, 24
	ld.w	$a0, $a1, 0
	ld.w	$a2, $s7, 0
	bne	$a0, $a2, .LBB19_39
# %bb.38:                               # %if.then.i.i
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $a1, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
.LBB19_39:                              # %clause_LiteralIsPredicate.exit
                                        #   in Loop: Header=BB19_13 Depth=2
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a1, $a1, %got_pc_lo12(fol_EQUALITY)
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB19_51
# %bb.40:                               # %if.else
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.w	$a0, $s4, 8
	ld.d	$s4, $sp, 264
	beqz	$a0, .LBB19_47
# %bb.41:                               # %if.then77
                                        #   in Loop: Header=BB19_13 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a3, $s4
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_54
# %bb.42:                               # %if.end92.thread155
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB19_53
.LBB19_43:                              #   in Loop: Header=BB19_13 Depth=2
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB19_11
.LBB19_44:                              # %if.end
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $sp, 272
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	beq	$a0, $s5, .LBB19_50
# %bb.45:                               # %lor.lhs.false64
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB19_8
# %bb.46:                               #   in Loop: Header=BB19_13 Depth=2
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
	bnez	$s5, .LBB19_37
	b	.LBB19_51
.LBB19_47:                              # %if.else79
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $s1, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 0
	ld.d	$s5, $sp, 264
	ld.d	$a1, $a1, 8
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s5, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 3
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	beq	$s5, $a0, .LBB19_57
# %bb.48:                               # %if.else79
                                        #   in Loop: Header=BB19_13 Depth=2
	ori	$a0, $zero, 1
	bne	$s5, $a0, .LBB19_60
# %bb.49:                               # %sw.bb
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $s1, 16
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 8
	b	.LBB19_58
.LBB19_50:                              #   in Loop: Header=BB19_13 Depth=2
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	bnez	$s5, .LBB19_37
.LBB19_51:                              # %if.then73
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$s5, $sp, 264
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	move	$a3, $s5
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_55
# %bb.52:                               # %if.end92
                                        #   in Loop: Header=BB19_13 Depth=2
	beqz	$s1, .LBB19_56
.LBB19_53:                              # %if.then94
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a2, $sp, 272
	ld.d	$a5, $sp, 264
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 24
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	st.d	$s5, $sp, 8
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $fp
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(inf_ApplyGenSuperposition)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB19_56
.LBB19_54:                              #   in Loop: Header=BB19_13 Depth=2
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
.LBB19_55:                              # %if.end92.thread
                                        #   in Loop: Header=BB19_13 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB19_56:                              # %if.end98
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	beqz	$a0, .LBB19_9
	b	.LBB19_10
.LBB19_57:                              # %sw.bb88
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $s1, 16
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
.LBB19_58:                              # %sw.bb
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $s5
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_61
# %bb.59:                               # %if.then7.i.i111
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	b	.LBB19_62
.LBB19_60:                              # %sw.default
                                        #   in Loop: Header=BB19_13 Depth=2
	move	$a0, $s1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_62
.LBB19_61:                              # %if.then.i134
                                        #   in Loop: Header=BB19_13 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$s1, $zero
.LBB19_62:                              # %sw.epilog
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB19_53
	b	.LBB19_56
.LBB19_63:
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
.LBB19_64:                              # %for.end108
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end19:
	.size	inf_GenLitSPLeft, .Lfunc_end19-inf_GenLitSPLeft
                                        # -- End function
	.globl	inf_ApplyDefinition             # -- Begin function inf_ApplyDefinition
	.p2align	5
	.type	inf_ApplyDefinition,@function
inf_ApplyDefinition:                    # @inf_ApplyDefinition
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s2, $a0, 0
	beqz	$s2, .LBB20_9
# %bb.1:                                # %for.body.preheader
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s3, $zero
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_2:                               #   in Loop: Header=BB20_4 Depth=1
	move	$a0, $s3
.LBB20_3:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$s2, $s2, 0
	move	$s3, $a0
	beqz	$s2, .LBB20_10
.LBB20_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_7 Depth 2
	ld.d	$a0, $s2, 8
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(def_ApplyDefToClauseOnce)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_2
# %bb.5:                                # %if.end.i
                                        #   in Loop: Header=BB20_4 Depth=1
	beqz	$s3, .LBB20_3
# %bb.6:                                # %for.cond.i.preheader
                                        #   in Loop: Header=BB20_4 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB20_7:                               # %for.cond.i
                                        #   Parent Loop BB20_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB20_7
# %bb.8:                                # %for.end.i
                                        #   in Loop: Header=BB20_4 Depth=1
	st.d	$s3, $a1, 0
	b	.LBB20_3
.LBB20_9:
	move	$a0, $zero
.LBB20_10:                              # %for.end
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end20:
	.size	inf_ApplyDefinition, .Lfunc_end20-inf_ApplyDefinition
                                        # -- End function
	.globl	inf_GeneralHyperResolution      # -- Begin function inf_GeneralHyperResolution
	.p2align	5
	.type	inf_GeneralHyperResolution,@function
inf_GeneralHyperResolution:             # @inf_GeneralHyperResolution
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
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB21_4
# %bb.1:                                # %if.then
	ld.w	$s0, $fp, 68
	beqz	$s0, .LBB21_5
# %bb.2:                                # %if.end.i
	ld.w	$a1, $fp, 64
	add.d	$a0, $s0, $a1
	addi.w	$a0, $a0, -1
	bge	$a0, $a1, .LBB21_6
# %bb.3:                                # %inf_GetAntecedentLiterals.exit.thread.i
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_BuildHyperResolvent)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
	b	.LBB21_10
.LBB21_4:
	move	$a0, $zero
	b	.LBB21_64
.LBB21_5:
	move	$a0, $zero
	b	.LBB21_11
.LBB21_6:                               # %for.body.lr.ph.i.i
	move	$a0, $zero
	slli.d	$s1, $a1, 3
	.p2align	4, , 16
.LBB21_7:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	ldx.d	$s2, $a1, $s1
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s3, $a0, 0
	addi.w	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB21_7
# %bb.8:                                # %while.body.i.preheader.i
	ld.w	$a3, $fp, 52
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a1, $sp, 0
	move	$s0, $a0
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	move	$a4, $zero
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_HyperResolvents)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB21_9:                               # %while.body.i.i
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
	bnez	$a6, .LBB21_9
.LBB21_10:                              # %inf_ForwardHyperResolution.exit
	ld.w	$a1, $fp, 68
	bnez	$a1, .LBB21_64
.LBB21_11:                              # %lor.lhs.false.i
	ld.w	$a1, $fp, 72
	beqz	$a1, .LBB21_64
# %bb.12:                               # %if.end.i10
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.w	$a0, $a0, 64
	ld.w	$a1, $s2, 68
	ld.w	$a2, $s2, 72
	ld.w	$a3, $fp, 64
	ld.w	$a4, $fp, 68
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a1, $a0, -1
	add.d	$a0, $a4, $a3
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB21_14
# %bb.13:                               # %inf_BackwardHyperResolution.exit.thread47
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	b	.LBB21_63
.LBB21_14:                              # %for.body.lr.ph.i
	slt	$a2, $a1, $a0
	maskeqz	$a3, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a1, $a3, $a1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$fp, $a1, %got_pc_lo12(fol_NOT)
	pcalau12i	$a1, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s4, $a1, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a1, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$s5, $a1, %got_pc_lo12(cont_RIGHTCONTEXT)
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a1, $a1, %got_pc_lo12(fol_EQUALITY)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$s3, $zero
	vrepli.b	$vr0, 0
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	b	.LBB21_17
	.p2align	4, , 16
.LBB21_15:                              #   in Loop: Header=BB21_17 Depth=1
	move	$s3, $s7
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB21_16:                              # %if.end74.i
                                        #   in Loop: Header=BB21_17 Depth=1
	addi.d	$a0, $a2, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB21_57
.LBB21_17:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_22 Depth 2
                                        #       Child Loop BB21_29 Depth 3
                                        #         Child Loop BB21_33 Depth 4
                                        #           Child Loop BB21_36 Depth 5
                                        #           Child Loop BB21_43 Depth 5
                                        #           Child Loop BB21_47 Depth 5
                                        #           Child Loop BB21_51 Depth 5
                                        #           Child Loop BB21_55 Depth 5
	ld.d	$a1, $s2, 56
	move	$a2, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a3, $a0, 24
	ld.w	$a0, $a3, 0
	ld.w	$a1, $fp, 0
	bne	$a0, $a1, .LBB21_19
# %bb.18:                               # %if.then.i.i
                                        #   in Loop: Header=BB21_17 Depth=1
	ld.d	$a0, $a3, 16
	ld.d	$a3, $a0, 8
.LBB21_19:                              # %clause_LiteralAtom.exit.i
                                        #   in Loop: Header=BB21_17 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB21_21
# %bb.20:                               # %lor.lhs.false11.i
                                        #   in Loop: Header=BB21_17 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB21_16
.LBB21_21:                              # %if.then14.i
                                        #   in Loop: Header=BB21_17 Depth=1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB21_22:                              # %while.cond.i
                                        #   Parent Loop BB21_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_29 Depth 3
                                        #         Child Loop BB21_33 Depth 4
                                        #           Child Loop BB21_36 Depth 5
                                        #           Child Loop BB21_43 Depth 5
                                        #           Child Loop BB21_47 Depth 5
                                        #           Child Loop BB21_51 Depth 5
                                        #           Child Loop BB21_55 Depth 5
	ld.d	$a0, $s4, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $s5, 0
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB21_29
# %bb.23:                               #   in Loop: Header=BB21_22 Depth=2
	move	$s7, $s3
.LBB21_24:                              # %for.end67.i
                                        #   in Loop: Header=BB21_22 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB21_15
# %bb.25:                               # %land.lhs.true69.i
                                        #   in Loop: Header=BB21_22 Depth=2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB21_15
# %bb.26:                               # %if.then72.i
                                        #   in Loop: Header=BB21_22 Depth=2
	ld.d	$a0, $a3, 16
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 8
	ld.d	$a0, $a3, 16
	ld.d	$a0, $a0, 0
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.d	$a2, $a0, 8
	move	$s3, $s7
	b	.LBB21_22
	.p2align	4, , 16
.LBB21_27:                              #   in Loop: Header=BB21_29 Depth=3
	move	$s7, $s3
.LBB21_28:                              # %for.inc65.i
                                        #   in Loop: Header=BB21_29 Depth=3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	ld.w	$a3, $a2, 32
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a5, $a4, 0
	add.d	$a3, $a5, $a3
	st.d	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$s3, $s7
	move	$a0, $a6
	beqz	$a6, .LBB21_24
.LBB21_29:                              # %for.body22.i
                                        #   Parent Loop BB21_17 Depth=1
                                        #     Parent Loop BB21_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB21_33 Depth 4
                                        #           Child Loop BB21_36 Depth 5
                                        #           Child Loop BB21_43 Depth 5
                                        #           Child Loop BB21_47 Depth 5
                                        #           Child Loop BB21_51 Depth 5
                                        #           Child Loop BB21_55 Depth 5
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB21_27
# %bb.30:                               # %if.then26.i
                                        #   in Loop: Header=BB21_29 Depth=3
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB21_27
# %bb.31:                               # %for.body33.i.preheader
                                        #   in Loop: Header=BB21_29 Depth=3
	move	$s6, $a0
	b	.LBB21_33
	.p2align	4, , 16
.LBB21_32:                              #   in Loop: Header=BB21_33 Depth=4
	move	$s7, $s3
	ld.d	$s6, $s6, 0
	move	$s3, $s7
	beqz	$s6, .LBB21_28
.LBB21_33:                              # %for.body33.i
                                        #   Parent Loop BB21_17 Depth=1
                                        #     Parent Loop BB21_22 Depth=2
                                        #       Parent Loop BB21_29 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB21_36 Depth 5
                                        #           Child Loop BB21_43 Depth 5
                                        #           Child Loop BB21_47 Depth 5
                                        #           Child Loop BB21_51 Depth 5
                                        #           Child Loop BB21_55 Depth 5
	ld.d	$s8, $s6, 8
	ld.d	$s1, $s8, 24
	ld.w	$a0, $s1, 0
	ld.w	$a1, $fp, 0
	bne	$a0, $a1, .LBB21_35
# %bb.34:                               # %if.then.i55.i
                                        #   in Loop: Header=BB21_33 Depth=4
	ld.d	$a0, $s1, 16
	ld.d	$s1, $a0, 8
.LBB21_35:                              # %clause_LiteralAtom.exit58.i
                                        #   in Loop: Header=BB21_33 Depth=4
	ld.d	$s7, $s8, 16
	ld.d	$a1, $s7, 56
	addi.d	$a0, $zero, -1
	.p2align	4, , 16
.LBB21_36:                              # %while.cond.i.i.i
                                        #   Parent Loop BB21_17 Depth=1
                                        #     Parent Loop BB21_22 Depth=2
                                        #       Parent Loop BB21_29 Depth=3
                                        #         Parent Loop BB21_33 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a2, $a1, 0
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a2, $s8, .LBB21_36
# %bb.37:                               # %clause_LiteralIsFromAntecedent.exit.i
                                        #   in Loop: Header=BB21_33 Depth=4
	ld.w	$a1, $s7, 64
	blt	$a0, $a1, .LBB21_32
# %bb.38:                               # %clause_LiteralIsFromAntecedent.exit.i
                                        #   in Loop: Header=BB21_33 Depth=4
	ld.w	$a2, $s7, 68
	add.d	$a1, $a1, $a2
	addi.w	$a1, $a1, -1
	blt	$a1, $a0, .LBB21_32
# %bb.39:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB21_33 Depth=4
	move	$a0, $s7
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB21_32
# %bb.40:                               # %if.then41.i
                                        #   in Loop: Header=BB21_33 Depth=4
	ld.w	$s0, $s7, 52
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_SearchMaxVar)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 64
	ld.w	$fp, $s7, 68
	add.d	$a2, $fp, $a1
	addi.w	$a2, $a2, -1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	bge	$a2, $a1, .LBB21_42
# %bb.41:                               #   in Loop: Header=BB21_33 Depth=4
	move	$a0, $zero
	b	.LBB21_44
.LBB21_42:                              # %for.body.lr.ph.i.i15
                                        #   in Loop: Header=BB21_33 Depth=4
	move	$s5, $zero
	slli.d	$s4, $a1, 3
	.p2align	4, , 16
.LBB21_43:                              # %for.body.i.i16
                                        #   Parent Loop BB21_17 Depth=1
                                        #     Parent Loop BB21_22 Depth=2
                                        #       Parent Loop BB21_29 Depth=3
                                        #         Parent Loop BB21_33 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a0, $s7, 56
	ldx.d	$s2, $a0, $s4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s5, $a0, 0
	addi.w	$fp, $fp, -1
	addi.d	$s4, $s4, 8
	move	$s5, $a0
	bnez	$fp, .LBB21_43
.LBB21_44:                              # %inf_GetAntecedentLiterals.exit.i
                                        #   in Loop: Header=BB21_33 Depth=4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s4, 0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $s5, 0
	move	$a1, $s1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB21_65
# %bb.45:                               # %if.end56.i
                                        #   in Loop: Header=BB21_33 Depth=4
	ld.d	$a0, $s4, 0
	ld.d	$a2, $s5, 0
	addi.d	$a1, $sp, 208
	addi.d	$a3, $sp, 200
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	beqz	$a1, .LBB21_48
# %bb.46:                               # %while.body.preheader.i.i
                                        #   in Loop: Header=BB21_33 Depth=4
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB21_47:                              # %while.body.i.i26
                                        #   Parent Loop BB21_17 Depth=1
                                        #     Parent Loop BB21_22 Depth=2
                                        #       Parent Loop BB21_29 Depth=3
                                        #         Parent Loop BB21_33 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
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
	bnez	$a1, .LBB21_47
.LBB21_48:                              # %cont_Reset.exit.i
                                        #   in Loop: Header=BB21_33 Depth=4
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	slt	$a0, $a1, $s0
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s0, $a0
	or	$s1, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ld.d	$a1, $sp, 200
	ori	$a2, $zero, 2000
	st.w	$a2, $a0, 0
	st.d	$s8, $sp, 176
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $sp, 184
	st.d	$a1, $sp, 192
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$zero, $a0, 0
	ld.d	$a1, $sp, 208
	addi.d	$a0, $sp, 176
	st.d	$a0, $s0, 8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s7
	move	$a2, $fp
	move	$a3, $s1
	move	$a4, $s0
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_HyperResolvents)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB21_53
# %bb.49:                               # %if.end.i.i
                                        #   in Loop: Header=BB21_33 Depth=4
	move	$s7, $a0
	beqz	$s3, .LBB21_54
# %bb.50:                               # %for.cond.i.i.preheader
                                        #   in Loop: Header=BB21_33 Depth=4
	move	$a1, $s7
	.p2align	4, , 16
.LBB21_51:                              # %for.cond.i.i
                                        #   Parent Loop BB21_17 Depth=1
                                        #     Parent Loop BB21_22 Depth=2
                                        #       Parent Loop BB21_29 Depth=3
                                        #         Parent Loop BB21_33 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB21_51
# %bb.52:                               # %for.end.i.i
                                        #   in Loop: Header=BB21_33 Depth=4
	st.d	$s3, $a0, 0
	b	.LBB21_54
.LBB21_53:                              #   in Loop: Header=BB21_33 Depth=4
	move	$s7, $s3
.LBB21_54:                              # %list_Nconc.exit.i
                                        #   in Loop: Header=BB21_33 Depth=4
	ld.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB21_56
	.p2align	4, , 16
.LBB21_55:                              # %while.body.i68.i
                                        #   Parent Loop BB21_17 Depth=1
                                        #     Parent Loop BB21_22 Depth=2
                                        #       Parent Loop BB21_29 Depth=3
                                        #         Parent Loop BB21_33 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	ld.w	$a3, $a2, 32
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a4, $a4, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a5, $a4, 0
	add.d	$a3, $a5, $a3
	st.d	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $fp, 0
	ld.d	$a1, $a1, 128
	st.d	$fp, $a1, 0
	move	$fp, $a0
	bnez	$a0, .LBB21_55
.LBB21_56:                              # %list_Delete.exit.i
                                        #   in Loop: Header=BB21_33 Depth=4
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	ld.w	$a2, $a1, 32
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a4, $a3, 0
	add.d	$a2, $a4, $a2
	st.d	$a2, $a3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 128
	st.d	$s0, $a0, 0
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $s6, 0
	move	$s3, $s7
	bnez	$s6, .LBB21_33
	b	.LBB21_28
.LBB21_57:                              # %inf_BackwardHyperResolution.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB21_63
# %bb.58:                               # %if.end.i33
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB21_62
# %bb.59:                               # %for.cond.i.preheader
	move	$a2, $s3
	.p2align	4, , 16
.LBB21_60:                              # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB21_60
# %bb.61:                               # %for.end.i
	st.d	$a0, $a1, 0
.LBB21_62:                              # %if.end
	move	$a0, $s3
	b	.LBB21_64
.LBB21_63:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
.LBB21_64:                              # %if.end
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
.LBB21_65:                              # %if.then52.i
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 4001
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	inf_GeneralHyperResolution, .Lfunc_end21-inf_GeneralHyperResolution
                                        # -- End function
	.globl	inf_DerivableClauses            # -- Begin function inf_DerivableClauses
	.p2align	5
	.type	inf_DerivableClauses,@function
inf_DerivableClauses:                   # @inf_DerivableClauses
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
	move	$s2, $a0
	ld.d	$s0, $a0, 112
	ld.d	$fp, $a0, 104
	ld.d	$s4, $a0, 80
	ld.d	$s3, $a0, 32
	move	$s1, $a1
	beqz	$s4, .LBB22_9
# %bb.1:                                # %land.lhs.true
	move	$a0, $s1
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_14
# %bb.2:                                # %land.lhs.true26
	ld.w	$a0, $s0, 236
	beqz	$a0, .LBB22_17
# %bb.3:                                # %if.then29
	ld.d	$a1, $s3, 0
	move	$a0, $s1
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_BackwardEmptySort)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.w	$a0, $s0, 240
	beqz	$a0, .LBB22_18
.LBB22_4:                               # %if.then38
	ld.d	$a1, $s3, 0
	move	$a0, $s1
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_BackwardSortResolution)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_193
# %bb.5:                                # %if.end.i166
	move	$s4, $a0
	beqz	$s5, .LBB22_19
# %bb.6:                                # %for.cond.i.preheader
	move	$a1, $s4
	.p2align	4, , 16
.LBB22_7:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_7
# %bb.8:                                # %for.end.i
	st.d	$s5, $a0, 0
	ld.w	$a0, $s0, 244
	bnez	$a0, .LBB22_20
	b	.LBB22_10
.LBB22_9:
	move	$s4, $zero
	ld.w	$a0, $s0, 244
	bnez	$a0, .LBB22_20
.LBB22_10:
	move	$s5, $s4
	ld.w	$a0, $s0, 248
	bnez	$a0, .LBB22_27
.LBB22_11:
	move	$s4, $s5
	ld.w	$a0, $s0, 256
	bnez	$a0, .LBB22_34
.LBB22_12:
	move	$s5, $s4
	ld.w	$a0, $s0, 252
	bnez	$a0, .LBB22_41
.LBB22_13:
	move	$s4, $s5
	ld.w	$a0, $s0, 296
	bnez	$a0, .LBB22_48
	b	.LBB22_60
.LBB22_14:                              # %if.then
	move	$a0, $s1
	pcaddu18i	$ra, %call36(clause_HasTermSortConstraintLits)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_194
# %bb.15:                               # %if.then9
	ld.w	$a0, $s0, 240
	beqz	$a0, .LBB22_196
# %bb.16:                               # %if.then12
	ld.d	$a1, $s4, 0
	move	$a0, $s1
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $fp
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
	pcaddu18i	$t8, %call36(inf_ForwardSortResolution)
	jr	$t8
.LBB22_17:
	move	$s5, $zero
	ld.w	$a0, $s0, 240
	bnez	$a0, .LBB22_4
.LBB22_18:
	move	$s4, $s5
.LBB22_19:                              # %if.end42
	ld.w	$a0, $s0, 244
	beqz	$a0, .LBB22_10
.LBB22_20:                              # %if.then45
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(inf_EqualityResolution)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_25
# %bb.21:                               # %if.end.i171
	move	$s5, $a0
	beqz	$s4, .LBB22_26
# %bb.22:                               # %for.cond.i173.preheader
	move	$a1, $s5
	.p2align	4, , 16
.LBB22_23:                              # %for.cond.i173
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_23
# %bb.24:                               # %for.end.i177
	st.d	$s4, $a0, 0
	ld.w	$a0, $s0, 248
	bnez	$a0, .LBB22_27
	b	.LBB22_11
.LBB22_25:
	move	$s5, $s4
.LBB22_26:                              # %if.end48
	ld.w	$a0, $s0, 248
	beqz	$a0, .LBB22_11
.LBB22_27:                              # %if.then51
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(inf_EqualityResolution)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_32
# %bb.28:                               # %if.end.i182
	move	$s4, $a0
	beqz	$s5, .LBB22_33
# %bb.29:                               # %for.cond.i184.preheader
	move	$a1, $s4
	.p2align	4, , 16
.LBB22_30:                              # %for.cond.i184
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_30
# %bb.31:                               # %for.end.i188
	st.d	$s5, $a0, 0
	ld.w	$a0, $s0, 256
	bnez	$a0, .LBB22_34
	b	.LBB22_12
.LBB22_32:
	move	$s4, $s5
.LBB22_33:                              # %if.end54
	ld.w	$a0, $s0, 256
	beqz	$a0, .LBB22_12
.LBB22_34:                              # %if.then57
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(inf_MergingParamodulation)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_39
# %bb.35:                               # %if.end.i193
	move	$s5, $a0
	beqz	$s4, .LBB22_40
# %bb.36:                               # %for.cond.i195.preheader
	move	$a1, $s5
	.p2align	4, , 16
.LBB22_37:                              # %for.cond.i195
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_37
# %bb.38:                               # %for.end.i199
	st.d	$s4, $a0, 0
	ld.w	$a0, $s0, 252
	bnez	$a0, .LBB22_41
	b	.LBB22_13
.LBB22_39:
	move	$s5, $s4
.LBB22_40:                              # %if.end60
	ld.w	$a0, $s0, 252
	beqz	$a0, .LBB22_13
.LBB22_41:                              # %if.then63
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(inf_EqualityFactoring)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_46
# %bb.42:                               # %if.end.i204
	move	$s4, $a0
	beqz	$s5, .LBB22_47
# %bb.43:                               # %for.cond.i206.preheader
	move	$a1, $s4
	.p2align	4, , 16
.LBB22_44:                              # %for.cond.i206
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_44
# %bb.45:                               # %for.end.i210
	st.d	$s5, $a0, 0
	ld.w	$a0, $s0, 296
	bnez	$a0, .LBB22_48
	b	.LBB22_60
.LBB22_46:
	move	$s4, $s5
.LBB22_47:                              # %if.end66
	ld.w	$a0, $s0, 296
	beqz	$a0, .LBB22_60
.LBB22_48:                              # %if.end66
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB22_54
# %bb.49:                               # %if.end66
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB22_197
# %bb.50:                               # %sw.bb
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a2, $zero
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_GeneralFactoring)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_60
# %bb.51:                               # %if.end.i215
	beqz	$s4, .LBB22_59
# %bb.52:                               # %for.cond.i217.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB22_53:                              # %for.cond.i217
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB22_53
	b	.LBB22_58
.LBB22_54:                              # %sw.bb70
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_GeneralFactoring)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_60
# %bb.55:                               # %if.end.i225
	beqz	$s4, .LBB22_59
# %bb.56:                               # %for.cond.i227.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB22_57:                              # %for.cond.i227
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB22_57
.LBB22_58:                              # %sw.epilog.sink.split
	st.d	$s4, $a1, 0
.LBB22_59:                              # %sw.epilog
	move	$s4, $a0
.LBB22_60:                              # %sw.epilog
	ld.w	$a0, $s0, 300
	beqz	$a0, .LBB22_67
# %bb.61:                               # %if.then76
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $zero
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_GeneralFactoring)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_81
# %bb.62:                               # %if.end.i236
	move	$s6, $a0
	beqz	$s4, .LBB22_68
# %bb.63:                               # %for.cond.i238.preheader
	move	$a1, $s6
	.p2align	4, , 16
.LBB22_64:                              # %for.cond.i238
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_64
# %bb.65:                               # %for.end.i242
	st.d	$s4, $a0, 0
	ld.w	$a0, $s0, 260
	bnez	$a0, .LBB22_69
.LBB22_66:
	move	$s5, $s6
	b	.LBB22_74
.LBB22_67:
	move	$s6, $s4
.LBB22_68:                              # %if.end79
	ld.w	$a0, $s0, 260
	beqz	$a0, .LBB22_66
.LBB22_69:                              # %if.then82
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	move	$a4, $zero
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(inf_GenSuperpositionRight)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_82
# %bb.70:                               # %if.end.i247
	move	$s5, $a0
	beqz	$s6, .LBB22_74
# %bb.71:                               # %for.cond.i249.preheader
	move	$a1, $s5
	.p2align	4, , 16
.LBB22_72:                              # %for.cond.i249
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_72
# %bb.73:                               # %for.end.i253
	st.d	$s6, $a0, 0
	ld.w	$a0, $s0, 268
	bnez	$a0, .LBB22_75
	b	.LBB22_89
.LBB22_74:                              # %if.end85
	ld.w	$a0, $s0, 268
	beqz	$a0, .LBB22_89
.LBB22_75:                              # %if.then88
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(inf_GenSuperpositionLeft)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(inf_GenSuperpositionRight)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	beqz	$s6, .LBB22_83
# %bb.76:                               # %if.end.i.i
	beqz	$s4, .LBB22_80
# %bb.77:                               # %for.cond.i.i.preheader
	move	$a1, $s6
	.p2align	4, , 16
.LBB22_78:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_78
# %bb.79:                               # %for.end.i.i
	st.d	$s4, $a0, 0
.LBB22_80:                              # %if.end.i259
	move	$s4, $s6
	b	.LBB22_84
.LBB22_81:
	move	$s6, $s4
	ld.w	$a0, $s0, 260
	bnez	$a0, .LBB22_69
	b	.LBB22_66
.LBB22_82:
	move	$s5, $s6
	ld.w	$a0, $s0, 268
	bnez	$a0, .LBB22_75
	b	.LBB22_89
.LBB22_83:                              # %inf_Paramodulation.exit
	beqz	$s4, .LBB22_89
.LBB22_84:                              # %if.end.i259
	beqz	$s5, .LBB22_88
# %bb.85:                               # %for.cond.i261.preheader
	move	$a1, $s4
	.p2align	4, , 16
.LBB22_86:                              # %for.cond.i261
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_86
# %bb.87:                               # %for.end.i265
	st.d	$s5, $a0, 0
.LBB22_88:                              # %if.end91
	ld.w	$a0, $s0, 264
	bnez	$a0, .LBB22_90
	b	.LBB22_107
.LBB22_89:
	move	$s4, $s5
	ld.w	$a0, $s0, 264
	beqz	$a0, .LBB22_107
.LBB22_90:                              # %if.then94
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(inf_GenSuperpositionLeft)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(inf_GenSuperpositionRight)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$s6, .LBB22_96
# %bb.91:                               # %if.end.i.i272
	beqz	$s5, .LBB22_95
# %bb.92:                               # %for.cond.i.i274.preheader
	move	$a1, $s6
	.p2align	4, , 16
.LBB22_93:                              # %for.cond.i.i274
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_93
# %bb.94:                               # %for.end.i.i278
	st.d	$s5, $a0, 0
.LBB22_95:                              # %if.end.i281
	move	$s5, $s6
	b	.LBB22_97
.LBB22_96:                              # %inf_OrderedParamodulation.exit
	beqz	$s5, .LBB22_107
.LBB22_97:                              # %if.end.i281
	beqz	$s4, .LBB22_101
# %bb.98:                               # %for.cond.i283.preheader
	move	$a1, $s5
	.p2align	4, , 16
.LBB22_99:                              # %for.cond.i283
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_99
# %bb.100:                              # %for.end.i287
	st.d	$s4, $a0, 0
.LBB22_101:                             # %if.end97
	ld.w	$a0, $s0, 272
	beqz	$a0, .LBB22_108
.LBB22_102:                             # %if.then100
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	move	$a4, $zero
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(inf_GenSuperpositionLeft)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_185
# %bb.103:                              # %if.end.i293
	move	$s4, $a0
	beqz	$s5, .LBB22_109
# %bb.104:                              # %for.cond.i295.preheader
	move	$a1, $s4
	.p2align	4, , 16
.LBB22_105:                             # %for.cond.i295
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_105
# %bb.106:                              # %for.end.i299
	st.d	$s5, $a0, 0
	ld.w	$a0, $s0, 276
	bnez	$a0, .LBB22_110
	b	.LBB22_122
.LBB22_107:
	move	$s5, $s4
	ld.w	$a0, $s0, 272
	bnez	$a0, .LBB22_102
.LBB22_108:
	move	$s4, $s5
.LBB22_109:                             # %if.end103
	ld.w	$a0, $s0, 276
	beqz	$a0, .LBB22_122
.LBB22_110:                             # %if.end103
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB22_116
# %bb.111:                              # %if.end103
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB22_198
# %bb.112:                              # %sw.bb105
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_GeneralResolution)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_122
# %bb.113:                              # %if.end.i304
	beqz	$s4, .LBB22_121
# %bb.114:                              # %for.cond.i306.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB22_115:                             # %for.cond.i306
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB22_115
	b	.LBB22_120
.LBB22_116:                             # %sw.bb108
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_GeneralResolution)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_122
# %bb.117:                              # %if.end.i314
	beqz	$s4, .LBB22_121
# %bb.118:                              # %for.cond.i316.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB22_119:                             # %for.cond.i316
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB22_119
.LBB22_120:                             # %sw.epilog113.sink.split
	st.d	$s4, $a1, 0
.LBB22_121:                             # %sw.epilog113
	move	$s4, $a0
.LBB22_122:                             # %sw.epilog113
	ld.w	$a0, $s0, 280
	beqz	$a0, .LBB22_135
# %bb.123:                              # %sw.epilog113
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB22_129
# %bb.124:                              # %sw.epilog113
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB22_199
# %bb.125:                              # %sw.bb115
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_GeneralResolution)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_135
# %bb.126:                              # %if.end.i325
	beqz	$s4, .LBB22_134
# %bb.127:                              # %for.cond.i327.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB22_128:                             # %for.cond.i327
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB22_128
	b	.LBB22_133
.LBB22_129:                             # %sw.bb118
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $zero
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(inf_GeneralResolution)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_135
# %bb.130:                              # %if.end.i335
	beqz	$s4, .LBB22_134
# %bb.131:                              # %for.cond.i337.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB22_132:                             # %for.cond.i337
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB22_132
.LBB22_133:                             # %sw.epilog123.sink.split
	st.d	$s4, $a1, 0
.LBB22_134:                             # %sw.epilog123
	move	$s4, $a0
.LBB22_135:                             # %sw.epilog123
	ld.w	$a0, $s0, 304
	beqz	$a0, .LBB22_142
# %bb.136:                              # %if.then126
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(inf_UnitResolution)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_186
# %bb.137:                              # %if.end.i346
	move	$s5, $a0
	beqz	$s4, .LBB22_143
# %bb.138:                              # %for.cond.i348.preheader
	move	$a1, $s5
	.p2align	4, , 16
.LBB22_139:                             # %for.cond.i348
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_139
# %bb.140:                              # %for.end.i352
	st.d	$s4, $a0, 0
	ld.w	$a0, $s0, 308
	bnez	$a0, .LBB22_144
.LBB22_141:
	move	$s6, $s5
	b	.LBB22_150
.LBB22_142:
	move	$s5, $s4
.LBB22_143:                             # %if.end129
	ld.w	$a0, $s0, 308
	beqz	$a0, .LBB22_141
.LBB22_144:                             # %if.then132
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(inf_BoundedDepthUnitResolution)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_187
# %bb.145:                              # %if.end.i357
	move	$s6, $a0
	beqz	$s5, .LBB22_150
# %bb.146:                              # %for.cond.i359.preheader
	move	$a1, $s6
	.p2align	4, , 16
.LBB22_147:                             # %for.cond.i359
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_147
# %bb.148:                              # %for.end.i363
	st.d	$s5, $a0, 0
	ld.w	$a0, $s0, 284
	bnez	$a0, .LBB22_151
.LBB22_149:
	move	$s4, $s6
	b	.LBB22_157
.LBB22_150:                             # %if.end135
	ld.w	$a0, $s0, 284
	beqz	$a0, .LBB22_149
.LBB22_151:                             # %if.then138
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(inf_GeneralHyperResolution)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_188
# %bb.152:                              # %if.end.i368
	move	$s4, $a0
	beqz	$s6, .LBB22_157
# %bb.153:                              # %for.cond.i370.preheader
	move	$a1, $s4
	.p2align	4, , 16
.LBB22_154:                             # %for.cond.i370
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_154
# %bb.155:                              # %for.end.i374
	st.d	$s6, $a0, 0
	ld.w	$a0, $s0, 288
	bnez	$a0, .LBB22_158
.LBB22_156:
	move	$s5, $s4
	b	.LBB22_164
.LBB22_157:                             # %if.end141
	ld.w	$a0, $s0, 288
	beqz	$a0, .LBB22_156
.LBB22_158:                             # %if.then144
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(inf_GeneralHyperResolution)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_189
# %bb.159:                              # %if.end.i379
	move	$s5, $a0
	beqz	$s4, .LBB22_164
# %bb.160:                              # %for.cond.i381.preheader
	move	$a1, $s5
	.p2align	4, , 16
.LBB22_161:                             # %for.cond.i381
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_161
# %bb.162:                              # %for.end.i385
	st.d	$s4, $a0, 0
	ld.w	$a0, $s0, 292
	bnez	$a0, .LBB22_165
.LBB22_163:
	move	$s3, $s5
	b	.LBB22_170
.LBB22_164:                             # %if.end147
	ld.w	$a0, $s0, 292
	beqz	$a0, .LBB22_163
.LBB22_165:                             # %if.then150
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(inf_URResolution)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_190
# %bb.166:                              # %if.end.i390
	move	$s3, $a0
	beqz	$s5, .LBB22_170
# %bb.167:                              # %for.cond.i392.preheader
	move	$a1, $s3
	.p2align	4, , 16
.LBB22_168:                             # %for.cond.i392
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_168
# %bb.169:                              # %for.end.i396
	st.d	$s5, $a0, 0
	ld.w	$a0, $s0, 312
	bnez	$a0, .LBB22_171
	b	.LBB22_191
.LBB22_170:                             # %if.end153
	ld.w	$a0, $s0, 312
	beqz	$a0, .LBB22_191
.LBB22_171:                             # %if.then156
	ld.d	$s4, $s2, 0
	beqz	$s4, .LBB22_191
# %bb.172:                              # %for.body.i.preheader
	move	$s2, $zero
	b	.LBB22_176
	.p2align	4, , 16
.LBB22_173:                             # %for.end.i.i407
                                        #   in Loop: Header=BB22_176 Depth=1
	st.d	$s2, $a1, 0
.LBB22_174:                             # %list_Nconc.exit.i
                                        #   in Loop: Header=BB22_176 Depth=1
	move	$s2, $a0
.LBB22_175:                             # %list_Nconc.exit.i
                                        #   in Loop: Header=BB22_176 Depth=1
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB22_180
.LBB22_176:                             # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_179 Depth 2
	ld.d	$a0, $s4, 8
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(def_ApplyDefToClauseOnce)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_175
# %bb.177:                              # %if.end.i.i401
                                        #   in Loop: Header=BB22_176 Depth=1
	beqz	$s2, .LBB22_174
# %bb.178:                              # %for.cond.i.i403.preheader
                                        #   in Loop: Header=BB22_176 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB22_179:                             # %for.cond.i.i403
                                        #   Parent Loop BB22_176 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB22_179
	b	.LBB22_173
.LBB22_180:                             # %inf_ApplyDefinition.exit
	beqz	$s2, .LBB22_191
# %bb.181:                              # %if.end.i412
	beqz	$s3, .LBB22_192
# %bb.182:                              # %for.cond.i414.preheader
	move	$a1, $s2
	.p2align	4, , 16
.LBB22_183:                             # %for.cond.i414
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB22_183
# %bb.184:                              # %for.end.i418
	st.d	$s3, $a0, 0
	b	.LBB22_192
.LBB22_185:
	move	$s4, $s5
	ld.w	$a0, $s0, 276
	bnez	$a0, .LBB22_110
	b	.LBB22_122
.LBB22_186:
	move	$s5, $s4
	ld.w	$a0, $s0, 308
	bnez	$a0, .LBB22_144
	b	.LBB22_141
.LBB22_187:
	move	$s6, $s5
	ld.w	$a0, $s0, 284
	bnez	$a0, .LBB22_151
	b	.LBB22_149
.LBB22_188:
	move	$s4, $s6
	ld.w	$a0, $s0, 288
	bnez	$a0, .LBB22_158
	b	.LBB22_156
.LBB22_189:
	move	$s5, $s4
	ld.w	$a0, $s0, 292
	bnez	$a0, .LBB22_165
	b	.LBB22_163
.LBB22_190:
	move	$s3, $s5
	ld.w	$a0, $s0, 312
	bnez	$a0, .LBB22_171
.LBB22_191:
	move	$s2, $s3
.LBB22_192:                             # %if.end160
	move	$a0, $s2
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
.LBB22_193:
	move	$s4, $s5
	ld.w	$a0, $s0, 244
	bnez	$a0, .LBB22_20
	b	.LBB22_10
.LBB22_194:                             # %if.else
	ld.w	$a0, $s0, 236
	beqz	$a0, .LBB22_196
# %bb.195:                              # %if.then18
	ld.d	$a1, $s4, 0
	move	$a0, $s1
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $fp
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
	pcaddu18i	$t8, %call36(inf_ForwardEmptySort)
	jr	$t8
.LBB22_196:
	move	$s2, $zero
	b	.LBB22_192
.LBB22_197:                             # %sw.default
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.LBB22_198:                             # %sw.default111
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.LBB22_199:                             # %sw.default121
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	inf_DerivableClauses, .Lfunc_end22-inf_DerivableClauses
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
.Lfunc_end23:
	.size	misc_Error, .Lfunc_end23-misc_Error
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function inf_ApplyGenSuperposition
	.type	inf_ApplyGenSuperposition,@function
inf_ApplyGenSuperposition:              # @inf_ApplyGenSuperposition
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
	move	$fp, $a3
	ld.wu	$a3, $a3, 64
	ld.w	$t0, $fp, 68
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	move	$s7, $a5
	move	$s0, $a4
	move	$s6, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$s2, $a0
	ld.w	$a0, $fp, 72
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a1, $a3, -1
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.w	$a2, $a1, $t0
	ld.wu	$s8, $s2, 64
	ld.w	$a3, $s2, 68
	ld.w	$a1, $s2, 72
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	add.w	$a0, $a2, $a0
	addi.w	$s1, $s8, -1
	add.w	$s5, $s1, $a3
	add.w	$a2, $s5, $a1
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	add.d	$a0, $a0, $s8
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a3
	add.w	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(clause_CreateBody)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 64
	ld.w	$a2, $fp, 64
	move	$s3, $a0
	add.d	$a0, $a2, $a1
	st.w	$a0, $s3, 64
	ld.w	$a0, $s2, 68
	ld.w	$a1, $fp, 68
	add.d	$a0, $a1, $a0
	st.w	$a0, $s3, 68
	ld.w	$a0, $s2, 72
	ld.w	$a1, $fp, 72
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s3, 72
	bltz	$s1, .LBB24_5
# %bb.1:                                # %for.body.lr.ph
	move	$s1, $zero
	slli.d	$s4, $s8, 3
	.p2align	4, , 16
.LBB24_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	stx.d	$a0, $a1, $s1
	addi.d	$s1, $s1, 8
	bne	$s4, $s1, .LBB24_2
# %bb.3:
	move	$s1, $s8
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	ld.w	$s4, $fp, 64
	addi.w	$a0, $s1, 0
	bge	$s5, $a0, .LBB24_6
.LBB24_4:                               # %for.end35
	addi.w	$a0, $s1, 0
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB24_9
	b	.LBB24_14
.LBB24_5:
	move	$s1, $zero
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	ld.w	$s4, $fp, 64
	addi.w	$a0, $s1, 0
	blt	$s5, $a0, .LBB24_4
.LBB24_6:                               # %for.body27.lr.ph
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.w	$a1, $s8, $a1
	slli.d	$s6, $s4, 3
	slli.d	$s8, $a0, 3
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	sub.d	$s1, $a1, $s1
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB24_7:                               # %for.body27
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 56
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	add.d	$a1, $a1, $s6
	stx.d	$a0, $a1, $s8
	addi.w	$s1, $s1, -1
	addi.d	$s8, $s8, 8
	bnez	$s1, .LBB24_7
# %bb.8:
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $s1, 0
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB24_14
.LBB24_9:                               # %for.end49
	ld.w	$s1, $s2, 64
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bltz	$a0, .LBB24_19
# %bb.10:                               # %for.body54.lr.ph
	move	$s4, $zero
	slli.d	$s5, $s1, 3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$s6, $a0, 3
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB24_11:                              # %for.body54
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	add.d	$a1, $a1, $s5
	stx.d	$a0, $a1, $s4
	addi.d	$s4, $s4, 8
	bne	$s6, $s4, .LBB24_11
# %bb.12:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $s2, 68
	addi.w	$s4, $a0, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	bge	$a2, $s4, .LBB24_20
.LBB24_13:                              # %for.end84
	ld.d	$s1, $sp, 192
	addi.w	$a0, $a0, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	blt	$a2, $a0, .LBB24_26
	b	.LBB24_33
.LBB24_14:                              # %for.body40.lr.ph
	ld.w	$a0, $fp, 68
	add.d	$s5, $a0, $s4
	bstrpick.d	$s6, $s1, 31, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$s8, $s6, 3
	sub.d	$s4, $a0, $s6
	b	.LBB24_17
	.p2align	4, , 16
.LBB24_15:                              # %if.else
                                        #   in Loop: Header=BB24_17 Depth=1
	addi.d	$s5, $s5, -1
	move	$a0, $s6
.LBB24_16:                              # %for.inc47
                                        #   in Loop: Header=BB24_17 Depth=1
	addi.d	$s6, $s6, 1
	addi.w	$a0, $a0, 0
	addi.d	$s1, $s1, 1
	addi.d	$s8, $s8, 8
	addi.d	$s4, $s4, -1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB24_9
.LBB24_17:                              # %for.body40
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s4, .LBB24_15
# %bb.18:                               # %if.then
                                        #   in Loop: Header=BB24_17 Depth=1
	ld.d	$a0, $s2, 56
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 24
	move	$s7, $s0
	move	$s0, $s2
	move	$s2, $fp
	add.w	$fp, $s1, $s5
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	slli.d	$a2, $fp, 3
	move	$fp, $s2
	move	$s2, $s0
	move	$s0, $s7
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	stx.d	$a0, $a1, $a2
	move	$a0, $s1
	b	.LBB24_16
.LBB24_19:
	move	$a0, $zero
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $s2, 68
	addi.w	$s4, $a0, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	blt	$a2, $s4, .LBB24_13
.LBB24_20:                              # %for.body67.lr.ph
	add.w	$a1, $a1, $s1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	slli.d	$s8, $s4, 3
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	sub.d	$s1, $a2, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s5, $a0, %got_pc_lo12(fol_NOT)
	slli.d	$s6, $a1, 3
	b	.LBB24_23
	.p2align	4, , 16
.LBB24_21:                              # %if.else75
                                        #   in Loop: Header=BB24_23 Depth=1
	ld.w	$s7, $s5, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	st.d	$zero, $a1, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s7, $s0
.LBB24_22:                              # %for.inc82
                                        #   in Loop: Header=BB24_23 Depth=1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	alsl.d	$a1, $s7, $a1, 3
	stx.d	$a0, $a1, $s6
	addi.d	$s4, $s4, 1
	addi.w	$s1, $s1, -1
	addi.d	$s8, $s8, 8
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	beqz	$s1, .LBB24_25
.LBB24_23:                              # %for.body67
                                        # =>This Inner Loop Header: Depth=1
	beq	$s0, $s4, .LBB24_21
# %bb.24:                               # %if.then69
                                        #   in Loop: Header=BB24_23 Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s7, $s4
	b	.LBB24_22
.LBB24_25:                              # %for.end84.loopexit
	ld.w	$a1, $s2, 68
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 192
	addi.w	$a0, $a0, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bge	$a2, $a0, .LBB24_33
.LBB24_26:                              # %for.end103
	ld.d	$a6, $sp, 216
	ld.d	$a5, $sp, 208
	ld.d	$a0, $sp, 200
	beqz	$s1, .LBB24_30
# %bb.27:                               # %for.end103
	beqz	$a0, .LBB24_30
# %bb.28:                               # %if.then105
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB24_38
# %bb.29:                               # %if.then107
	ori	$a0, $zero, 8
	b	.LBB24_39
.LBB24_30:                              # %if.else110
	beqz	$s1, .LBB24_37
# %bb.31:                               # %if.else110
	bnez	$a0, .LBB24_37
# %bb.32:                               # %if.then114
	ori	$a0, $zero, 7
	b	.LBB24_39
.LBB24_33:                              # %for.body89.lr.ph
	ld.w	$a2, $s2, 64
	ld.w	$a3, $s2, 72
	add.d	$a1, $a2, $a1
	add.d	$a1, $a1, $a3
	addi.w	$a1, $a1, -1
	slli.d	$s4, $a0, 3
	slli.d	$s5, $a1, 3
	b	.LBB24_35
	.p2align	4, , 16
.LBB24_34:                              # %for.inc101
                                        #   in Loop: Header=BB24_35 Depth=1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	alsl.d	$a1, $s7, $a1, 3
	stx.d	$a0, $a1, $s5
	addi.d	$a0, $s6, 1
	addi.d	$s4, $s4, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bge	$s6, $a1, .LBB24_26
.LBB24_35:                              # %for.body89
                                        # =>This Inner Loop Header: Depth=1
	move	$s6, $a0
	move	$a0, $s8
	move	$s7, $s0
	beq	$s0, $s6, .LBB24_34
# %bb.36:                               # %if.then91
                                        #   in Loop: Header=BB24_35 Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s7, $s6
	b	.LBB24_34
.LBB24_37:                              # %if.else115
	ori	$a0, $zero, 6
	b	.LBB24_39
.LBB24_38:                              # %if.else108
	ori	$a0, $zero, 9
.LBB24_39:                              # %if.end117
	st.w	$a0, $s3, 76
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s2
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_SetDataFromParents)
	jirl	$ra, $ra, 0
	move	$a0, $s3
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
.Lfunc_end24:
	.size	inf_ApplyGenSuperposition, .Lfunc_end24-inf_ApplyGenSuperposition
                                        # -- End function
	.p2align	5                               # -- Begin function inf_NAllTermsRplac
	.type	inf_NAllTermsRplac,@function
inf_NAllTermsRplac:                     # @inf_NAllTermsRplac
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
	move	$s0, $a3
	move	$fp, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_3
# %bb.1:                                # %if.then
	ld.w	$a0, $fp, 0
	st.w	$a0, $s2, 0
	ld.d	$s0, $s2, 16
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a1, %got_pc_lo12(term_Copy)
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	pcalau12i	$a0, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a0, %got_pc_lo12(term_Delete)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB25_2:                               # %cleanup
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
.LBB25_3:                               # %if.end
	ld.w	$a0, $s2, 0
	blez	$a0, .LBB25_5
# %bb.4:                                # %if.then7
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
.LBB25_5:                               # %if.end9
	ld.d	$a2, $s2, 16
	beqz	$a2, .LBB25_17
# %bb.6:                                # %while.body.preheader
	pcalau12i	$a0, %got_pc_hi20(stack_POINTER)
	ld.d	$s3, $a0, %got_pc_lo12(stack_POINTER)
	ld.wu	$a3, $s3, 0
	addi.w	$a1, $a3, 1
	st.w	$a1, $s3, 0
	slli.d	$a4, $a3, 3
	pcalau12i	$a0, %got_pc_hi20(stack_STACK)
	ld.d	$s4, $a0, %got_pc_lo12(stack_STACK)
	move	$a0, $zero
	stx.d	$a2, $s4, $a4
	addi.w	$s5, $a3, 0
.LBB25_7:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_14 Depth 2
	move	$s6, $a0
	addi.d	$a0, $a1, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s7, $s4, $a0
	ld.d	$a1, $s7, 0
	ld.d	$s2, $s7, 8
	stx.d	$a1, $s4, $a0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_9
# %bb.8:                                # %if.then23
                                        #   in Loop: Header=BB25_7 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.w	$a1, $s3, 0
	bne	$a1, $s5, .LBB25_14
	b	.LBB25_2
.LBB25_9:                               # %if.else
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB25_11
# %bb.10:                               # %if.then27
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.wu	$a1, $s3, 0
	addi.d	$a2, $a1, 1
	st.w	$a2, $s3, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s4, $a1
	b	.LBB25_13
.LBB25_11:                              # %if.else29
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.w	$a0, $s2, 0
	blez	$a0, .LBB25_13
# %bb.12:                               # %if.then32
                                        #   in Loop: Header=BB25_7 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
.LBB25_13:                              # %if.end36
                                        #   in Loop: Header=BB25_7 Depth=1
	move	$a0, $s6
	ld.w	$a1, $s3, 0
	beq	$a1, $s5, .LBB25_2
	.p2align	4, , 16
.LBB25_14:                              # %land.rhs
                                        #   Parent Loop BB25_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $a1, -1
	bstrpick.d	$a3, $a2, 31, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s4, $a3
	bnez	$a3, .LBB25_16
# %bb.15:                               # %while.body43
                                        #   in Loop: Header=BB25_14 Depth=2
	st.w	$a2, $s3, 0
	move	$a1, $a2
	bne	$s5, $a2, .LBB25_14
	b	.LBB25_2
	.p2align	4, , 16
.LBB25_16:                              # %while.end
                                        #   in Loop: Header=BB25_7 Depth=1
	bne	$s5, $a1, .LBB25_7
	b	.LBB25_2
.LBB25_17:
	move	$a0, $zero
	b	.LBB25_2
.Lfunc_end25:
	.size	inf_NAllTermsRplac, .Lfunc_end25-inf_NAllTermsRplac
                                        # -- End function
	.p2align	5                               # -- Begin function clause_SetDataFromParents
	.type	clause_SetDataFromParents,@function
clause_SetDataFromParents:              # @clause_SetDataFromParents
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
	move	$s4, $a6
	move	$s5, $a5
	move	$fp, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s0, $a0
	move	$a1, $a5
	move	$a2, $a6
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 48
	andi	$a0, $a0, 8
	bnez	$a0, .LBB26_2
# %bb.1:                                # %lor.lhs.false.i
	ld.bu	$a0, $s3, 48
	andi	$a0, $a0, 8
	beqz	$a0, .LBB26_3
.LBB26_2:                               # %if.then.i
	ld.w	$a0, $s0, 48
	ori	$a0, $a0, 8
	st.w	$a0, $s0, 48
.LBB26_3:                               # %if.end.i
	ld.w	$a1, $s1, 12
	ld.w	$a0, $s3, 12
	beqz	$a1, .LBB26_5
# %bb.4:                                # %if.end.if.end7_crit_edge.i
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	b	.LBB26_6
.LBB26_5:                               # %land.lhs.true.i
	beqz	$a0, .LBB26_39
.LBB26_6:                               # %if.end7.i
	st.w	$a0, $s0, 12
	ld.w	$a1, $s3, 24
	ld.w	$a2, $s1, 24
	ld.d	$a0, $s0, 16
	bgeu	$a2, $a1, .LBB26_10
# %bb.7:                                # %if.then15.i
	beqz	$a0, .LBB26_19
# %bb.8:                                # %if.then17.i
	ld.w	$a1, $s0, 24
	slli.w	$a1, $a1, 3
	ori	$a2, $zero, 1024
	bgeu	$a1, $a2, .LBB26_13
# %bb.9:                                # %if.else25.i.i
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	ldx.d	$a3, $a2, $a1
	ld.w	$a4, $a3, 32
	pcalau12i	$a5, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a5, $a5, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a6, $a5, 0
	add.d	$a4, $a6, $a4
	st.d	$a4, $a5, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $a1, 0
	b	.LBB26_19
.LBB26_10:                              # %if.else.i
	beqz	$a0, .LBB26_32
# %bb.11:                               # %if.then58.i
	ld.w	$a1, $s0, 24
	slli.w	$a1, $a1, 3
	ori	$a2, $zero, 1024
	bgeu	$a1, $a2, .LBB26_26
# %bb.12:                               # %if.else25.i99.i
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	ldx.d	$a3, $a2, $a1
	ld.w	$a4, $a3, 32
	pcalau12i	$a5, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a5, $a5, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a6, $a5, 0
	add.d	$a4, $a6, $a4
	st.d	$a4, $a5, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $a1, 0
	b	.LBB26_32
.LBB26_13:                              # %if.then.i.i
	pcalau12i	$a2, %got_pc_hi20(memory_ALIGN)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ALIGN)
	ld.w	$a2, $a2, 0
	mod.wu	$a3, $a1, $a2
	sltui	$a4, $a3, 1
	sub.d	$a2, $a2, $a3
	masknez	$a2, $a2, $a4
	add.w	$a1, $a2, $a1
	pcalau12i	$a2, %got_pc_hi20(memory_OFFSET)
	ld.d	$a2, $a2, %got_pc_lo12(memory_OFFSET)
	ld.wu	$a2, $a2, 0
	sub.d	$a2, $a0, $a2
	ld.d	$a4, $a2, -16
	ld.d	$a3, $a2, -8
	beqz	$a4, .LBB26_40
# %bb.14:                               # %if.then3.i.i
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB26_16
.LBB26_15:                              # %if.then9.i.i
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB26_16:                              # %if.end13.i.i
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a2, $a2, 0
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 16
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a3, $a2, 0
	add.d	$a3, $a1, $a3
	st.d	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	ld.d	$a3, $a2, 0
	bltz	$a3, .LBB26_18
# %bb.17:                               # %if.then18.i.i
	add.d	$a1, $a3, $a1
	st.d	$a1, $a2, 0
.LBB26_18:                              # %if.end23.i.i
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB26_19:                              # %if.end21.i
	ld.w	$a0, $s3, 24
	slli.w	$a0, $a0, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	ld.w	$a1, $s3, 24
	st.w	$a1, $s0, 24
	ld.w	$a0, $s1, 24
	beqz	$a0, .LBB26_23
# %bb.20:                               # %for.body.lr.ph.i
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB26_21:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 16
	ld.d	$a3, $s1, 16
	ldx.d	$a0, $a0, $a1
	ldx.d	$a3, $a3, $a1
	ld.d	$a4, $s0, 16
	or	$a0, $a3, $a0
	stx.d	$a0, $a4, $a1
	ld.wu	$a0, $s1, 24
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bltu	$a2, $a0, .LBB26_21
# %bb.22:                               # %for.cond41.preheader.loopexit.i
	ld.w	$a1, $s3, 24
	addi.w	$a2, $a0, 0
	bltu	$a2, $a1, .LBB26_24
	b	.LBB26_39
.LBB26_23:
	move	$a0, $zero
	addi.w	$a2, $a0, 0
	bgeu	$a2, $a1, .LBB26_39
.LBB26_24:                              # %for.body45.lr.ph.i
	slli.d	$a1, $a0, 3
	.p2align	4, , 16
.LBB26_25:                              # %for.body45.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s3, 16
	ldx.d	$a2, $a2, $a1
	ld.d	$a3, $s0, 16
	stx.d	$a2, $a3, $a1
	ld.wu	$a2, $s3, 24
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bltu	$a0, $a2, .LBB26_25
	b	.LBB26_39
.LBB26_26:                              # %if.then.i71.i
	pcalau12i	$a2, %got_pc_hi20(memory_ALIGN)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ALIGN)
	ld.w	$a2, $a2, 0
	mod.wu	$a3, $a1, $a2
	sltui	$a4, $a3, 1
	sub.d	$a2, $a2, $a3
	masknez	$a2, $a2, $a4
	add.w	$a1, $a2, $a1
	pcalau12i	$a2, %got_pc_hi20(memory_OFFSET)
	ld.d	$a2, $a2, %got_pc_lo12(memory_OFFSET)
	ld.wu	$a2, $a2, 0
	sub.d	$a2, $a0, $a2
	ld.d	$a4, $a2, -16
	ld.d	$a3, $a2, -8
	beqz	$a4, .LBB26_41
# %bb.27:                               # %if.then3.i83.i
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB26_29
.LBB26_28:                              # %if.then9.i87.i
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB26_29:                              # %if.end13.i88.i
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a2, $a2, 0
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 16
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a3, $a2, 0
	add.d	$a3, $a1, $a3
	st.d	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	ld.d	$a3, $a2, 0
	bltz	$a3, .LBB26_31
# %bb.30:                               # %if.then18.i96.i
	add.d	$a1, $a3, $a1
	st.d	$a1, $a2, 0
.LBB26_31:                              # %if.end23.i94.i
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB26_32:                              # %if.end64.i
	ld.w	$a0, $s1, 24
	slli.w	$a0, $a0, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	ld.w	$a1, $s1, 24
	st.w	$a1, $s0, 24
	ld.w	$a0, $s3, 24
	beqz	$a0, .LBB26_36
# %bb.33:                               # %for.body77.lr.ph.i
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB26_34:                              # %for.body77.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 16
	ld.d	$a3, $s1, 16
	ldx.d	$a0, $a0, $a1
	ldx.d	$a3, $a3, $a1
	ld.d	$a4, $s0, 16
	or	$a0, $a3, $a0
	stx.d	$a0, $a4, $a1
	ld.wu	$a0, $s3, 24
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bltu	$a2, $a0, .LBB26_34
# %bb.35:                               # %for.cond92.preheader.loopexit.i
	ld.w	$a1, $s1, 24
	addi.w	$a2, $a0, 0
	bltu	$a2, $a1, .LBB26_37
	b	.LBB26_39
.LBB26_36:
	move	$a0, $zero
	addi.w	$a2, $a0, 0
	bgeu	$a2, $a1, .LBB26_39
.LBB26_37:                              # %for.body96.lr.ph.i
	slli.d	$a1, $a0, 3
	.p2align	4, , 16
.LBB26_38:                              # %for.body96.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s1, 16
	ldx.d	$a2, $a2, $a1
	ld.d	$a3, $s0, 16
	stx.d	$a2, $a3, $a1
	ld.wu	$a2, $s1, 24
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bltu	$a0, $a2, .LBB26_38
.LBB26_39:                              # %clause_SetSplitDataFromParents.exit
	ld.w	$a0, $s3, 8
	ld.w	$a1, $s1, 8
	pcaddu18i	$ra, %call36(misc_Max)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 8
	ld.w	$s3, $s3, 0
	ld.d	$s4, $s0, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s4, $a0, 0
	ld.d	$s3, $s0, 40
	st.d	$a0, $s0, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s3, $a0, 0
	st.d	$a0, $s0, 40
	ld.w	$s1, $s1, 0
	ld.d	$s2, $s0, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s2, $a0, 0
	ld.d	$s1, $s0, 40
	st.d	$a0, $s0, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $s0, 40
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
.LBB26_40:                              # %if.else.i.i
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB26_15
	b	.LBB26_16
.LBB26_41:                              # %if.else.i98.i
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB26_28
	b	.LBB26_29
.Lfunc_end26:
	.size	clause_SetDataFromParents, .Lfunc_end26-clause_SetDataFromParents
                                        # -- End function
	.p2align	5                               # -- Begin function inf_GenSPRightEqToGiven
	.type	inf_GenSPRightEqToGiven,@function
inf_GenSPRightEqToGiven:                # @inf_GenSPRightEqToGiven
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
	move	$fp, $a0
	ld.d	$a0, $a0, 56
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s0, $a0, 24
	ld.w	$a0, $s0, 0
	st.d	$a7, $sp, 224                   # 8-byte Folded Spill
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	move	$s4, $a5
	move	$s5, $a4
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $a2, 0
	bne	$a0, $a1, .LBB27_2
# %bb.1:                                # %if.then.i
	ld.d	$a0, $s0, 16
	ld.d	$s0, $a0, 8
.LBB27_2:                               # %clause_LiteralAtom.exit
	pcalau12i	$a0, %got_pc_hi20(stack_POINTER)
	ld.d	$s1, $a0, %got_pc_lo12(stack_POINTER)
	ld.w	$a0, $s1, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 16
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	bnez	$a1, .LBB27_4
# %bb.3:                                # %if.else
	ld.d	$a0, $a0, 0
.LBB27_4:                               # %if.end
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(sharing_PushListOnStack)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB27_7
# %bb.5:
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
.LBB27_6:                               # %while.end
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
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
.LBB27_7:                               # %while.body.lr.ph
	ld.d	$a1, $sp, 384
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(stack_STACK)
	ld.d	$a1, $a1, %got_pc_lo12(stack_STACK)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s6, $a1, %got_pc_lo12(fol_EQUALITY)
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 184                   # 8-byte Folded Spill
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	b	.LBB27_9
	.p2align	4, , 16
.LBB27_8:                               # %if.end171
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB27_6
.LBB27_9:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_13 Depth 2
                                        #       Child Loop BB27_16 Depth 3
                                        #         Child Loop BB27_23 Depth 4
                                        #           Child Loop BB27_24 Depth 5
                                        #           Child Loop BB27_38 Depth 5
	addi.d	$a0, $a0, -1
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s0, $a2, $a1
	st.w	$a0, $s1, 0
	ld.w	$a0, $s0, 0
	bgtz	$a0, .LBB27_8
# %bb.10:                               # %if.then13
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$a3, $s0
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_8
# %bb.11:                               # %for.body.preheader
                                        #   in Loop: Header=BB27_9 Depth=1
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	b	.LBB27_13
	.p2align	4, , 16
.LBB27_12:                              # %for.inc168
                                        #   in Loop: Header=BB27_13 Depth=2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 128
	ld.w	$a1, $a0, 32
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a5, 0
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a6, 0
	ld.d	$a0, $a4, 128
	st.d	$a6, $a0, 0
	move	$a0, $a3
	beqz	$a3, .LBB27_8
.LBB27_13:                              # %for.body
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_16 Depth 3
                                        #         Child Loop BB27_23 Depth 4
                                        #           Child Loop BB27_24 Depth 5
                                        #           Child Loop BB27_38 Depth 5
	ld.d	$a4, $a0, 8
	ld.d	$s3, $a4, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	beqz	$s3, .LBB27_12
# %bb.14:                               # %for.body27.preheader
                                        #   in Loop: Header=BB27_13 Depth=2
	st.d	$a4, $sp, 272                   # 8-byte Folded Spill
	b	.LBB27_16
	.p2align	4, , 16
.LBB27_15:                              # %for.inc165
                                        #   in Loop: Header=BB27_16 Depth=3
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB27_12
.LBB27_16:                              # %for.body27
                                        #   Parent Loop BB27_9 Depth=1
                                        #     Parent Loop BB27_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB27_23 Depth 4
                                        #           Child Loop BB27_24 Depth 5
                                        #           Child Loop BB27_38 Depth 5
	ld.d	$s0, $s3, 8
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s6, 0
	bne	$a0, $a1, .LBB27_15
# %bb.17:                               # %if.then31
                                        #   in Loop: Header=BB27_16 Depth=3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_15
# %bb.18:                               # %for.body37.lr.ph
                                        #   in Loop: Header=BB27_16 Depth=3
	move	$s2, $a0
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB27_23
.LBB27_19:                              #   in Loop: Header=BB27_23 Depth=4
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
.LBB27_20:                              # %if.end161
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
.LBB27_21:                              # %for.inc
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB27_22:                              # %for.inc
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB27_15
.LBB27_23:                              # %for.body37
                                        #   Parent Loop BB27_9 Depth=1
                                        #     Parent Loop BB27_13 Depth=2
                                        #       Parent Loop BB27_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB27_24 Depth 5
                                        #           Child Loop BB27_38 Depth 5
	ld.d	$s1, $s2, 8
	ld.d	$s8, $s1, 16
	ld.d	$a0, $s8, 56
	addi.d	$s7, $zero, -1
	.p2align	4, , 16
.LBB27_24:                              # %while.cond.i
                                        #   Parent Loop BB27_9 Depth=1
                                        #     Parent Loop BB27_13 Depth=2
                                        #       Parent Loop BB27_16 Depth=3
                                        #         Parent Loop BB27_23 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a1, $a0, 0
	addi.w	$s7, $s7, 1
	addi.d	$a0, $a0, 8
	bne	$a1, $s1, .LBB27_24
# %bb.25:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.bu	$a0, $s8, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB27_22
# %bb.26:                               # %land.lhs.true
                                        #   in Loop: Header=BB27_23 Depth=4
	beqz	$s4, .LBB27_28
# %bb.27:                               # %lor.lhs.false
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.bu	$a0, $s1, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB27_22
.LBB27_28:                              # %land.lhs.true46
                                        #   in Loop: Header=BB27_23 Depth=4
	beqz	$s5, .LBB27_31
# %bb.29:                               # %lor.lhs.false48
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 8
	beq	$a4, $a0, .LBB27_31
# %bb.30:                               # %lor.lhs.false50
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.w	$a0, $s1, 8
	bnez	$a0, .LBB27_22
	.p2align	4, , 16
.LBB27_31:                              # %land.lhs.true53
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $s1, 24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a3, 0
	beq	$a0, $a1, .LBB27_22
# %bb.32:                               # %land.lhs.true56
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.w	$a0, $s8, 0
	ld.w	$a1, $fp, 0
	beq	$a0, $a1, .LBB27_22
# %bb.33:                               # %land.lhs.true60
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB27_35
# %bb.34:                               # %lor.lhs.false62
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.w	$a0, $s8, 64
	ld.w	$a1, $s8, 68
	ld.w	$a2, $s8, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB27_22
.LBB27_35:                              # %land.lhs.true65
                                        #   in Loop: Header=BB27_23 Depth=4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_21
# %bb.36:                               # %if.then68
                                        #   in Loop: Header=BB27_23 Depth=4
	move	$s5, $s6
	ld.w	$a1, $s8, 52
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $s6, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $s6, 0
	addi.d	$a1, $sp, 288
	addi.d	$a3, $sp, 280
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	beqz	$a1, .LBB27_39
# %bb.37:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB27_23 Depth=4
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB27_38:                              # %while.body.i
                                        #   Parent Loop BB27_9 Depth=1
                                        #     Parent Loop BB27_13 Depth=2
                                        #       Parent Loop BB27_16 Depth=3
                                        #         Parent Loop BB27_23 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
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
	bnez	$a1, .LBB27_38
.LBB27_39:                              # %cont_Reset.exit
                                        #   in Loop: Header=BB27_23 Depth=4
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ori	$a1, $zero, 2000
	st.w	$a1, $a0, 0
	move	$s6, $s5
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	beqz	$s4, .LBB27_44
# %bb.40:                               # %lor.lhs.false76
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 48
	ld.d	$fp, $sp, 280
	andi	$a0, $a0, 2
	bnez	$a0, .LBB27_42
# %bb.41:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 64
	ld.w	$a1, $a0, 68
	ld.d	$a3, $sp, 288
	add.d	$a1, $a2, $a1
	addi.w	$a2, $a1, -1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	slt	$a4, $a2, $a1
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB27_19
.LBB27_42:                              # %if.end.i
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.bu	$a0, $s8, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB27_44
# %bb.43:                               # %land.lhs.true6.i
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.w	$a0, $s8, 64
	ld.w	$a1, $s8, 68
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	slt	$a4, $a0, $s7
	addi.w	$a2, $zero, -1
	move	$a0, $s8
	move	$a1, $s7
	move	$a3, $fp
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB27_19
.LBB27_44:                              # %if.then79
                                        #   in Loop: Header=BB27_23 Depth=4
	ori	$fp, $zero, 1
	beqz	$s5, .LBB27_46
# %bb.45:                               # %land.lhs.true81
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.w	$a0, $s1, 8
	beqz	$a0, .LBB27_47
.LBB27_46:                              #   in Loop: Header=BB27_23 Depth=4
	move	$a1, $zero
	st.d	$zero, $sp, 264                 # 8-byte Folded Spill
	ori	$s1, $zero, 1
	bnez	$s4, .LBB27_50
	b	.LBB27_52
.LBB27_47:                              # %if.then84
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $s0, 16
	ld.d	$s1, $a0, 8
	bne	$a1, $s1, .LBB27_49
# %bb.48:                               # %if.then87
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $a0, 0
	ld.d	$s1, $a0, 8
.LBB27_49:                              # %if.end91
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$s6, $sp, 280
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	move	$s6, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	addi.d	$a0, $a0, -1
	sltu	$s1, $zero, $a0
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	beqz	$s4, .LBB27_52
.LBB27_50:                              # %if.end99
                                        #   in Loop: Header=BB27_23 Depth=4
	beqz	$s1, .LBB27_52
# %bb.51:                               # %land.lhs.true103
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	beqz	$a0, .LBB27_68
.LBB27_52:                              # %if.end123
                                        #   in Loop: Header=BB27_23 Depth=4
	and	$a0, $s1, $fp
	beqz	$a0, .LBB27_64
.LBB27_53:                              # %if.then127
                                        #   in Loop: Header=BB27_23 Depth=4
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB27_57
# %bb.54:                               # %if.then130
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a1, $s0, 16
	ld.d	$a0, $a1, 8
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB27_56
# %bb.55:                               # %if.then134
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $a1, 0
	ld.d	$a0, $a0, 8
.LBB27_56:                              # %if.end138
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$fp, $sp, 280
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
.LBB27_57:                              # %if.end141
                                        #   in Loop: Header=BB27_23 Depth=4
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 288
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beqz	$a2, .LBB27_59
# %bb.58:                               # %if.then143
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a1, $a1, 8
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	b	.LBB27_60
.LBB27_59:                              # %if.else145
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 8
.LBB27_60:                              # %if.then143
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$s1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_62
# %bb.61:                               # %if.then7.i.i
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB27_63
.LBB27_62:                              # %if.else9.i.i134
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a6, $zero
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
.LBB27_63:                              # %if.end147
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a2, $sp, 280
	ld.d	$a5, $sp, 288
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 24
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	st.d	$s4, $sp, 8
	ori	$a7, $zero, 1
	st.d	$s5, $sp, 0
	move	$a0, $s8
	move	$a1, $s7
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ApplyGenSuperposition)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
.LBB27_64:                              # %if.end150
                                        #   in Loop: Header=BB27_23 Depth=4
	beqz	$a1, .LBB27_66
# %bb.65:                               # %if.then154
                                        #   in Loop: Header=BB27_23 Depth=4
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB27_66:                              # %if.end155
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB27_20
# %bb.67:                               # %if.then159
                                        #   in Loop: Header=BB27_23 Depth=4
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	b	.LBB27_20
.LBB27_68:                              # %if.then106
                                        #   in Loop: Header=BB27_23 Depth=4
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sltui	$a2, $a2, 1
	masknez	$a3, $a0, $a2
	maskeqz	$a4, $a1, $a2
	or	$a3, $a4, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 8
	ld.d	$fp, $sp, 288
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 288
	move	$s6, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$a0, $s6
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	sltu	$fp, $zero, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	and	$a0, $s1, $fp
	bnez	$a0, .LBB27_53
	b	.LBB27_64
.Lfunc_end27:
	.size	inf_GenSPRightEqToGiven, .Lfunc_end27-inf_GenSPRightEqToGiven
                                        # -- End function
	.p2align	5                               # -- Begin function inf_Lit2MParamod
	.type	inf_Lit2MParamod,@function
inf_Lit2MParamod:                       # @inf_Lit2MParamod
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	move	$s7, $a1
	ld.w	$a1, $a1, 64
	ld.w	$t1, $s7, 68
	ld.w	$t0, $s7, 72
	add.w	$t2, $t1, $a1
	add.d	$t3, $t2, $t0
	addi.w	$t3, $t3, -1
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	bge	$t3, $t2, .LBB28_3
# %bb.1:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
.LBB28_2:                               # %for.end
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB28_3:                               # %for.body.lr.ph
	move	$s4, $a3
	ld.d	$a0, $sp, 344
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 336
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	add.d	$s1, $a1, $t1
	add.w	$a2, $t2, $t0
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a3, $a0, %got_pc_lo12(fol_EQUALITY)
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s5, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$s8, $a0, %got_pc_lo12(cont_LASTBINDING)
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	b	.LBB28_6
	.p2align	4, , 16
.LBB28_4:                               # %cont_Reset.exit137
                                        #   in Loop: Header=BB28_6 Depth=1
	st.w	$zero, $s6, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s3, 0
	ori	$a0, $zero, 2000
	st.w	$a0, $fp, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
.LBB28_5:                               # %if.end87
                                        #   in Loop: Header=BB28_6 Depth=1
	addi.d	$s1, $s1, 1
	addi.w	$a0, $s1, 0
	beq	$a2, $a0, .LBB28_2
.LBB28_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_19 Depth 2
                                        #     Child Loop BB28_29 Depth 2
                                        #     Child Loop BB28_41 Depth 2
                                        #     Child Loop BB28_50 Depth 2
	beq	$s1, $s4, .LBB28_5
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$a0, $s7, 56
	slli.d	$a1, $s1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$fp, $a0, 24
	ld.w	$a0, $fp, 0
	ld.w	$a1, $a3, 0
	bne	$a0, $a1, .LBB28_5
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 8
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$fp, $sp, 184                   # 8-byte Folded Spill
	move	$a2, $fp
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	slli.d	$s2, $a1, 3
	beqz	$a0, .LBB28_27
# %bb.9:                                # %if.then16
                                        #   in Loop: Header=BB28_6 Depth=1
	move	$s3, $s0
	ld.d	$a0, $s5, 0
	addi.d	$a1, $sp, 224
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	move	$s6, $s2
	ldx.d	$a0, $a0, $s2
	ld.w	$a0, $a0, 8
	beqz	$a0, .LBB28_11
# %bb.10:                               #   in Loop: Header=BB28_6 Depth=1
	move	$s2, $zero
	move	$s0, $zero
	b	.LBB28_12
.LBB28_11:                              # %if.then21
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$s0, $sp, 224
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 224
	move	$s2, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s2
	move	$a1, $s0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB28_24
.LBB28_12:                              # %land.lhs.true36
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 48
	ld.d	$s5, $sp, 224
	andi	$a0, $a0, 2
	bnez	$a0, .LBB28_14
# %bb.13:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 64
	ld.w	$a1, $a0, 68
	add.d	$a1, $a2, $a1
	addi.w	$a2, $a1, -1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	slt	$a4, $a2, $a1
	move	$a2, $s5
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMaxWith2Subst)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_23
.LBB28_14:                              # %if.end.i
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.bu	$a0, $s7, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB28_16
# %bb.15:                               # %land.lhs.true6.i
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.w	$a0, $s7, 64
	ld.w	$a1, $s7, 68
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	slt	$a4, $a0, $s4
	move	$a0, $s7
	move	$a1, $s4
	move	$a2, $s5
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMaxWith2Subst)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_23
.LBB28_16:                              # %if.then39
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$s5, $sp, 224
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224
	move	$s5, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 40
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	st.d	$s5, $sp, 8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s7
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s1
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ApplyMParamod)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_21
# %bb.17:                               # %if.end.i86
                                        #   in Loop: Header=BB28_6 Depth=1
	move	$s7, $a0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	beqz	$a2, .LBB28_22
# %bb.18:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB28_6 Depth=1
	move	$a1, $s7
	.p2align	4, , 16
.LBB28_19:                              # %for.cond.i
                                        #   Parent Loop BB28_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB28_19
# %bb.20:                               # %for.end.i
                                        #   in Loop: Header=BB28_6 Depth=1
	st.d	$a2, $a0, 0
	b	.LBB28_22
.LBB28_21:                              #   in Loop: Header=BB28_6 Depth=1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
.LBB28_22:                              # %list_Nconc.exit
                                        #   in Loop: Header=BB28_6 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
.LBB28_23:                              # %if.end44
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
.LBB28_24:                              # %if.end44
                                        #   in Loop: Header=BB28_6 Depth=1
	beqz	$s2, .LBB28_26
# %bb.25:                               # %if.then46
                                        #   in Loop: Header=BB28_6 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB28_26:                              # %if.end47
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	move	$s0, $s3
	move	$s2, $s6
.LBB28_27:                              # %if.end48
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$a0, $s8, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	beqz	$a0, .LBB28_30
# %bb.28:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB28_6 Depth=1
	pcalau12i	$a1, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a1, $a1, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a2, $a1, 0
	addi.d	$a2, $a2, -1
	.p2align	4, , 16
.LBB28_29:                              # %while.body.i
                                        #   Parent Loop BB28_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a3, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a3, $a3, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a0, $a3, 0
	ld.d	$a4, $a0, 24
	st.d	$a4, $s8, 0
	st.w	$zero, $a0, 20
	vst	$vr0, $a0, 4
	ld.d	$a3, $a3, 0
	ld.d	$a0, $s8, 0
	st.d	$zero, $a3, 24
	st.w	$a2, $a1, 0
	addi.d	$a2, $a2, -1
	bnez	$a0, .LBB28_29
.LBB28_30:                              # %cont_Reset.exit
                                        #   in Loop: Header=BB28_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$s6, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $s6, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$s3, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a0, $zero, 1
	st.w	$a0, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$fp, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ld.d	$a0, $s5, 0
	ori	$a1, $zero, 2000
	st.w	$a1, $fp, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(unify_UnifyCom)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_48
# %bb.31:                               # %if.then52
                                        #   in Loop: Header=BB28_6 Depth=1
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $s5, 0
	addi.d	$a1, $sp, 224
	pcaddu18i	$ra, %call36(subst_ExtractUnifierCom)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	ldx.d	$a0, $a0, $s2
	ld.w	$a0, $a0, 8
	beqz	$a0, .LBB28_33
# %bb.32:                               #   in Loop: Header=BB28_6 Depth=1
	move	$s2, $zero
	move	$s0, $zero
	b	.LBB28_34
.LBB28_33:                              # %if.then57
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$s0, $sp, 224
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 224
	move	$s2, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s2
	move	$a1, $s0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB28_45
.LBB28_34:                              # %land.lhs.true74
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 48
	ld.d	$s5, $sp, 224
	andi	$a0, $a0, 2
	bnez	$a0, .LBB28_36
# %bb.35:                               # %land.lhs.true.i107
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 64
	ld.w	$a1, $a0, 68
	add.d	$a1, $a2, $a1
	addi.w	$a2, $a1, -1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	slt	$a4, $a2, $a1
	move	$a2, $s5
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMaxWith2Subst)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_45
.LBB28_36:                              # %if.end.i93
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.bu	$a0, $s7, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB28_38
# %bb.37:                               # %land.lhs.true6.i98
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.w	$a0, $s7, 64
	ld.w	$a1, $s7, 68
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	slt	$a4, $a0, $s4
	move	$a0, $s7
	move	$a1, $s4
	move	$a2, $s5
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMaxWith2Subst)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_45
.LBB28_38:                              # %if.then77
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$s5, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224
	move	$s5, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 40
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	st.d	$s5, $sp, 8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s7
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s1
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_ApplyMParamod)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_43
# %bb.39:                               # %if.end.i118
                                        #   in Loop: Header=BB28_6 Depth=1
	move	$s7, $a0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	beqz	$a2, .LBB28_44
# %bb.40:                               # %for.cond.i120.preheader
                                        #   in Loop: Header=BB28_6 Depth=1
	move	$a1, $s7
	.p2align	4, , 16
.LBB28_41:                              # %for.cond.i120
                                        #   Parent Loop BB28_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB28_41
# %bb.42:                               # %for.end.i124
                                        #   in Loop: Header=BB28_6 Depth=1
	st.d	$a2, $a0, 0
	b	.LBB28_44
.LBB28_43:                              #   in Loop: Header=BB28_6 Depth=1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
.LBB28_44:                              # %list_Nconc.exit126
                                        #   in Loop: Header=BB28_6 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
.LBB28_45:                              # %if.end82
                                        #   in Loop: Header=BB28_6 Depth=1
	beqz	$s2, .LBB28_47
# %bb.46:                               # %if.then84
                                        #   in Loop: Header=BB28_6 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB28_47:                              # %if.end85
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
.LBB28_48:                              # %if.end86
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$a0, $s8, 0
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	beqz	$a0, .LBB28_4
# %bb.49:                               # %while.body.preheader.i128
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.w	$a1, $s6, 0
	addi.d	$a1, $a1, -1
	.p2align	4, , 16
.LBB28_50:                              # %while.body.i130
                                        #   Parent Loop BB28_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a2, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$a2, $a2, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$a0, $a2, 0
	ld.d	$a3, $a0, 24
	st.d	$a3, $s8, 0
	st.w	$zero, $a0, 20
	vst	$vr0, $a0, 4
	ld.d	$a2, $a2, 0
	ld.d	$a0, $s8, 0
	st.d	$zero, $a2, 24
	st.w	$a1, $s6, 0
	addi.d	$a1, $a1, -1
	bnez	$a0, .LBB28_50
	b	.LBB28_4
.Lfunc_end28:
	.size	inf_Lit2MParamod, .Lfunc_end28-inf_Lit2MParamod
                                        # -- End function
	.p2align	5                               # -- Begin function inf_ApplyMParamod
	.type	inf_ApplyMParamod,@function
inf_ApplyMParamod:                      # @inf_ApplyMParamod
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
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	move	$s4, $a2
	move	$s2, $a1
	move	$s1, $a0
	ld.d	$s6, $sp, 232
	ld.wu	$a1, $a1, 64
	ld.w	$a2, $s2, 68
	ld.d	$s7, $sp, 224
	ld.w	$a0, $s2, 72
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	addi.w	$a1, $a1, -1
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.w	$a2, $a1, $a2
	ld.wu	$fp, $s1, 64
	ld.w	$s5, $s1, 68
	ld.w	$a1, $s1, 72
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	add.w	$a0, $a2, $a0
	addi.w	$s0, $fp, -1
	add.w	$s8, $s0, $s5
	add.w	$a2, $s8, $a1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	add.d	$a0, $a0, $fp
	add.d	$a0, $a0, $s5
	add.w	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(clause_CreateBody)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 64
	ld.w	$a2, $s2, 64
	move	$s3, $a0
	add.d	$a0, $a2, $a1
	st.w	$a0, $s3, 64
	ld.w	$a0, $s1, 68
	ld.w	$a1, $s2, 68
	add.d	$a0, $a1, $a0
	st.w	$a0, $s3, 68
	ld.w	$a0, $s1, 72
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a1, $s2, 72
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s3, 72
	bltz	$s0, .LBB29_5
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $zero
	slli.d	$s2, $fp, 3
	.p2align	4, , 16
.LBB29_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	stx.d	$a0, $a1, $s0
	addi.d	$s0, $s0, 8
	bne	$s2, $s0, .LBB29_2
# %bb.3:
	move	$s2, $fp
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s0, $a0, 64
	addi.w	$a0, $s2, 0
	bge	$s8, $a0, .LBB29_6
.LBB29_4:                               # %for.end37
	addi.w	$a0, $s2, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB29_9
	b	.LBB29_13
.LBB29_5:
	move	$s2, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s0, $a0, 64
	addi.w	$a0, $s2, 0
	blt	$s8, $a0, .LBB29_4
.LBB29_6:                               # %for.body28.lr.ph
	add.w	$fp, $fp, $s5
	slli.d	$s5, $s0, 3
	slli.d	$s8, $a0, 3
	sub.d	$s2, $fp, $s2
	.p2align	4, , 16
.LBB29_7:                               # %for.body28
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 56
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	add.d	$a1, $a1, $s5
	stx.d	$a0, $a1, $s8
	addi.w	$s2, $s2, -1
	addi.d	$s8, $s8, 8
	bnez	$s2, .LBB29_7
# %bb.8:
	move	$s2, $fp
	addi.w	$a0, $s2, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB29_13
.LBB29_9:                               # %for.end52
	ld.w	$fp, $s1, 64
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bltz	$a0, .LBB29_18
# %bb.10:                               # %for.body57.lr.ph
	move	$s0, $zero
	slli.d	$s2, $fp, 3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	slli.d	$s4, $a0, 3
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB29_11:                              # %for.body57
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	add.d	$a1, $a1, $s2
	stx.d	$a0, $a1, $s0
	addi.d	$s0, $s0, 8
	bne	$s4, $s0, .LBB29_11
# %bb.12:
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	b	.LBB29_19
.LBB29_13:                              # %for.body42.lr.ph
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	add.d	$fp, $a0, $s0
	bstrpick.d	$s5, $s2, 31, 0
	bstrpick.d	$a0, $s4, 31, 0
	slli.d	$s8, $s5, 3
	sub.d	$s0, $a0, $s5
	b	.LBB29_16
	.p2align	4, , 16
.LBB29_14:                              # %if.else
                                        #   in Loop: Header=BB29_16 Depth=1
	addi.d	$fp, $fp, -1
	move	$a0, $s5
.LBB29_15:                              # %for.inc50
                                        #   in Loop: Header=BB29_16 Depth=1
	addi.d	$s5, $s5, 1
	addi.w	$a0, $a0, 0
	addi.d	$s2, $s2, 1
	addi.d	$s8, $s8, 8
	addi.d	$s0, $s0, -1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB29_9
.LBB29_16:                              # %for.body42
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s0, .LBB29_14
# %bb.17:                               # %if.then
                                        #   in Loop: Header=BB29_16 Depth=1
	ld.d	$a0, $s1, 56
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 24
	add.w	$s4, $s2, $fp
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	slli.d	$a2, $s4, 3
	stx.d	$a0, $a1, $a2
	move	$a0, $s2
	b	.LBB29_15
.LBB29_18:
	move	$s5, $zero
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
.LBB29_19:                              # %for.end66
	ld.w	$a1, $s1, 68
	addi.w	$a0, $s5, 0
	add.w	$fp, $a1, $fp
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB29_23
# %bb.20:                               # %for.body71.lr.ph
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$s0, $a1, $a2
	slli.d	$s2, $fp, 3
	slli.d	$s4, $a0, 3
	sub.d	$s5, $s0, $s5
	.p2align	4, , 16
.LBB29_21:                              # %for.body71
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 56
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	add.d	$a1, $a1, $s2
	stx.d	$a0, $a1, $s4
	addi.w	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	bnez	$s5, .LBB29_21
# %bb.22:
	move	$s5, $s0
.LBB29_23:                              # %for.end80
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 248
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 240
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s0, $s1, 72
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s5, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB29_25
.LBB29_24:                              # %for.end125
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 5
	st.w	$a0, $s3, 76
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$fp, $s2, 0
	ld.d	$s0, $s3, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s0, $a0, 0
	ld.d	$fp, $s3, 40
	st.d	$a0, $s3, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	st.d	$a4, $a0, 8
	st.d	$fp, $a0, 0
	st.d	$a0, $s3, 40
	move	$a0, $s3
	move	$a1, $s2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_SetDataFromParents)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
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
.LBB29_25:                              # %for.body88.lr.ph
	ld.d	$a0, $sp, 216
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 208
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s0
	addi.w	$a0, $a0, -1
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	slli.d	$s2, $a1, 3
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB29_28
	.p2align	4, , 16
.LBB29_26:                              # %if.else114
                                        #   in Loop: Header=BB29_28 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	ldx.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
.LBB29_27:                              # %if.end120
                                        #   in Loop: Header=BB29_28 Depth=1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(clause_LiteralCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	stx.d	$a0, $a1, $s2
	addi.d	$a1, $s8, 1
	addi.d	$s2, $s2, 8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bge	$s8, $a0, .LBB29_24
.LBB29_28:                              # %for.body88
                                        # =>This Inner Loop Header: Depth=1
	move	$s8, $a1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB29_31
# %bb.29:                               # %if.then90
                                        #   in Loop: Header=BB29_28 Depth=1
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $fp, .LBB29_33
# %bb.30:                               # %if.else94
                                        #   in Loop: Header=BB29_28 Depth=1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a1, $fp
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_ReplaceSubtermBy)
	jirl	$ra, $ra, 0
	b	.LBB29_34
	.p2align	4, , 16
.LBB29_31:                              # %if.else105
                                        #   in Loop: Header=BB29_28 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bne	$a0, $s8, .LBB29_26
# %bb.32:                               # %if.then107
                                        #   in Loop: Header=BB29_28 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$fp, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s0, $a0, 8
	st.d	$s5, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	b	.LBB29_27
.LBB29_33:                              # %if.then92
                                        #   in Loop: Header=BB29_28 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB29_34:                              # %if.end97
                                        #   in Loop: Header=BB29_28 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$s5, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s7
	move	$a1, $s4
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s0, $a0, 8
	st.d	$fp, $a0, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	b	.LBB29_27
.Lfunc_end29:
	.size	inf_ApplyMParamod, .Lfunc_end29-inf_ApplyMParamod
                                        # -- End function
	.p2align	5                               # -- Begin function inf_LitMaxWith2Subst
	.type	inf_LitMaxWith2Subst,@function
inf_LitMaxWith2Subst:                   # @inf_LitMaxWith2Subst
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
	ld.d	$a0, $a0, 56
	slli.d	$s6, $a1, 3
	ldx.d	$a7, $a0, $s6
	ld.wu	$a0, $a7, 0
	andi	$t0, $a0, 1
	beqz	$t0, .LBB30_3
# %bb.1:                                # %lor.lhs.false
	beqz	$a4, .LBB30_5
# %bb.2:                                # %lor.lhs.false
	andi	$a0, $a0, 2
	bnez	$a0, .LBB30_5
.LBB30_3:
	move	$a0, $zero
.LBB30_4:                               # %cleanup
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
.LBB30_5:                               # %if.end
	ld.w	$a0, $fp, 68
	ld.w	$t0, $fp, 72
	add.w	$t0, $t0, $a0
	ori	$a0, $zero, 1
	beq	$t0, $a0, .LBB30_4
# %bb.6:                                # %lor.lhs.false7
	or	$t1, $a2, $a3
	beqz	$t1, .LBB30_4
# %bb.7:                                # %if.end14
	move	$s2, $a4
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 64
	ld.d	$a0, $a7, 24
	add.d	$a1, $t0, $a1
	addi.w	$s8, $a1, -1
	move	$s3, $a3
	move	$s4, $a2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$s3, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 64
	move	$s4, $a0
	bge	$s8, $a1, .LBB30_10
.LBB30_8:
	ori	$fp, $zero, 1
	move	$s5, $s4
.LBB30_9:                               # %cleanup.sink.split
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB30_4
.LBB30_10:                              # %for.body.preheader
	slli.d	$s0, $a1, 3
	addi.w	$s1, $zero, -1
	sltu	$s7, $zero, $s2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB30_13
.LBB30_11:                              # %if.end47
                                        #   in Loop: Header=BB30_13 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
.LBB30_12:                              # %for.inc
                                        #   in Loop: Header=BB30_13 Depth=1
	addi.d	$a1, $s2, 1
	addi.d	$s0, $s0, 8
	bge	$s2, $s8, .LBB30_8
.LBB30_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a1
	beq	$a0, $a1, .LBB30_12
# %bb.14:                               # %for.body
                                        #   in Loop: Header=BB30_13 Depth=1
	beq	$s2, $s1, .LBB30_12
# %bb.15:                               # %land.lhs.true25
                                        #   in Loop: Header=BB30_13 Depth=1
	ld.d	$a1, $fp, 56
	ldx.d	$a1, $a1, $s0
	ld.bu	$a2, $a1, 0
	andi	$a2, $a2, 1
	beqz	$a2, .LBB30_12
# %bb.16:                               # %if.then29
                                        #   in Loop: Header=BB30_13 Depth=1
	ld.d	$a0, $a1, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	ldx.d	$a2, $a1, $s6
	ldx.d	$a3, $a1, $s0
	ld.w	$a1, $a2, 8
	ld.w	$a3, $a3, 8
	move	$s5, $a0
	ori	$a4, $zero, 1
	move	$a0, $s4
	move	$a2, $s5
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_LiteralCompare)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB30_18
# %bb.17:                               # %if.then29
                                        #   in Loop: Header=BB30_13 Depth=1
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	and	$a0, $s7, $a0
	beqz	$a0, .LBB30_11
.LBB30_18:                              # %if.then46
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB30_9
.Lfunc_end30:
	.size	inf_LitMaxWith2Subst, .Lfunc_end30-inf_LitMaxWith2Subst
                                        # -- End function
	.p2align	5                               # -- Begin function inf_GenSPLeftEqToGiven
	.type	inf_GenSPLeftEqToGiven,@function
inf_GenSPLeftEqToGiven:                 # @inf_GenSPLeftEqToGiven
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
	move	$fp, $a0
	ld.d	$a0, $a0, 56
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s0, $a0, 24
	ld.w	$a0, $s0, 0
	st.d	$a7, $sp, 224                   # 8-byte Folded Spill
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	move	$s4, $a5
	move	$s5, $a4
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $a2, 0
	bne	$a0, $a1, .LBB31_2
# %bb.1:                                # %if.then.i
	ld.d	$a0, $s0, 16
	ld.d	$s0, $a0, 8
.LBB31_2:                               # %clause_LiteralAtom.exit
	pcalau12i	$a0, %got_pc_hi20(stack_POINTER)
	ld.d	$s1, $a0, %got_pc_lo12(stack_POINTER)
	ld.w	$a0, $s1, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 16
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	bnez	$a1, .LBB31_4
# %bb.3:                                # %if.else
	ld.d	$a0, $a0, 0
.LBB31_4:                               # %if.end
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(sharing_PushOnStack)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB31_7
# %bb.5:
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
.LBB31_6:                               # %while.end
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
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
.LBB31_7:                               # %while.body.lr.ph
	ld.d	$a1, $sp, 384
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(stack_STACK)
	ld.d	$a1, $a1, %got_pc_lo12(stack_STACK)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s6, $a1, %got_pc_lo12(fol_EQUALITY)
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$fp, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	st.d	$s6, $sp, 144                   # 8-byte Folded Spill
	b	.LBB31_9
	.p2align	4, , 16
.LBB31_8:                               # %if.end169
                                        #   in Loop: Header=BB31_9 Depth=1
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB31_6
.LBB31_9:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_13 Depth 2
                                        #       Child Loop BB31_16 Depth 3
                                        #         Child Loop BB31_23 Depth 4
                                        #           Child Loop BB31_24 Depth 5
                                        #           Child Loop BB31_38 Depth 5
	addi.d	$a0, $a0, -1
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$s0, $a2, $a1
	st.w	$a0, $s1, 0
	ld.w	$a0, $s0, 0
	bgtz	$a0, .LBB31_8
# %bb.10:                               # %if.then11
                                        #   in Loop: Header=BB31_9 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$a3, $s0
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_8
# %bb.11:                               # %for.body.preheader
                                        #   in Loop: Header=BB31_9 Depth=1
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	b	.LBB31_13
	.p2align	4, , 16
.LBB31_12:                              # %for.inc166
                                        #   in Loop: Header=BB31_13 Depth=2
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 128
	ld.w	$a1, $a0, 32
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a5, 0
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a6, 0
	ld.d	$a0, $a4, 128
	st.d	$a6, $a0, 0
	move	$a0, $a3
	beqz	$a3, .LBB31_8
.LBB31_13:                              # %for.body
                                        #   Parent Loop BB31_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_16 Depth 3
                                        #         Child Loop BB31_23 Depth 4
                                        #           Child Loop BB31_24 Depth 5
                                        #           Child Loop BB31_38 Depth 5
	ld.d	$a4, $a0, 8
	ld.d	$s3, $a4, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	beqz	$s3, .LBB31_12
# %bb.14:                               # %for.body25.preheader
                                        #   in Loop: Header=BB31_13 Depth=2
	st.d	$a4, $sp, 272                   # 8-byte Folded Spill
	b	.LBB31_16
	.p2align	4, , 16
.LBB31_15:                              # %for.inc163
                                        #   in Loop: Header=BB31_16 Depth=3
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB31_12
.LBB31_16:                              # %for.body25
                                        #   Parent Loop BB31_9 Depth=1
                                        #     Parent Loop BB31_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB31_23 Depth 4
                                        #           Child Loop BB31_24 Depth 5
                                        #           Child Loop BB31_38 Depth 5
	ld.d	$s0, $s3, 8
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s6, 0
	bne	$a0, $a1, .LBB31_15
# %bb.17:                               # %if.then29
                                        #   in Loop: Header=BB31_16 Depth=3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_15
# %bb.18:                               # %for.body35.lr.ph
                                        #   in Loop: Header=BB31_16 Depth=3
	move	$s2, $a0
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB31_23
.LBB31_19:                              #   in Loop: Header=BB31_23 Depth=4
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
.LBB31_20:                              # %if.end159
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
.LBB31_21:                              # %for.inc
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB31_22:                              # %for.inc
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB31_15
.LBB31_23:                              # %for.body35
                                        #   Parent Loop BB31_9 Depth=1
                                        #     Parent Loop BB31_13 Depth=2
                                        #       Parent Loop BB31_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB31_24 Depth 5
                                        #           Child Loop BB31_38 Depth 5
	ld.d	$s1, $s2, 8
	ld.d	$s8, $s1, 16
	ld.d	$a0, $s8, 56
	addi.d	$s7, $zero, -1
	.p2align	4, , 16
.LBB31_24:                              # %while.cond.i
                                        #   Parent Loop BB31_9 Depth=1
                                        #     Parent Loop BB31_13 Depth=2
                                        #       Parent Loop BB31_16 Depth=3
                                        #         Parent Loop BB31_23 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a1, $a0, 0
	addi.w	$s7, $s7, 1
	addi.d	$a0, $a0, 8
	bne	$a1, $s1, .LBB31_24
# %bb.25:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.bu	$a0, $s8, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB31_22
# %bb.26:                               # %land.lhs.true
                                        #   in Loop: Header=BB31_23 Depth=4
	beqz	$s4, .LBB31_28
# %bb.27:                               # %lor.lhs.false
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.bu	$a0, $s1, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB31_22
.LBB31_28:                              # %land.lhs.true44
                                        #   in Loop: Header=BB31_23 Depth=4
	beqz	$s5, .LBB31_31
# %bb.29:                               # %lor.lhs.false46
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 8
	beq	$a4, $a0, .LBB31_31
# %bb.30:                               # %lor.lhs.false48
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.w	$a0, $s1, 8
	bnez	$a0, .LBB31_22
	.p2align	4, , 16
.LBB31_31:                              # %land.lhs.true51
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $s1, 24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a3, 0
	beq	$a0, $a1, .LBB31_22
# %bb.32:                               # %land.lhs.true54
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.w	$a0, $s8, 0
	ld.w	$a1, $fp, 0
	beq	$a0, $a1, .LBB31_22
# %bb.33:                               # %land.lhs.true58
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB31_35
# %bb.34:                               # %lor.lhs.false60
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.w	$a0, $s8, 64
	ld.w	$a1, $s8, 68
	ld.w	$a2, $s8, 72
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB31_22
.LBB31_35:                              # %land.lhs.true63
                                        #   in Loop: Header=BB31_23 Depth=4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_21
# %bb.36:                               # %if.then66
                                        #   in Loop: Header=BB31_23 Depth=4
	move	$s5, $s6
	ld.w	$a1, $s8, 52
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $s6, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $s6, 0
	addi.d	$a1, $sp, 288
	addi.d	$a3, $sp, 280
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	beqz	$a1, .LBB31_39
# %bb.37:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB31_23 Depth=4
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB31_38:                              # %while.body.i
                                        #   Parent Loop BB31_9 Depth=1
                                        #     Parent Loop BB31_13 Depth=2
                                        #       Parent Loop BB31_16 Depth=3
                                        #         Parent Loop BB31_23 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
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
	bnez	$a1, .LBB31_38
.LBB31_39:                              # %cont_Reset.exit
                                        #   in Loop: Header=BB31_23 Depth=4
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ori	$a1, $zero, 2000
	st.w	$a1, $a0, 0
	move	$s6, $s5
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	beqz	$s4, .LBB31_44
# %bb.40:                               # %lor.lhs.false74
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 48
	ld.d	$fp, $sp, 280
	andi	$a0, $a0, 2
	bnez	$a0, .LBB31_42
# %bb.41:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 64
	ld.w	$a1, $a0, 68
	ld.d	$a3, $sp, 288
	add.d	$a1, $a2, $a1
	addi.w	$a2, $a1, -1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	slt	$a4, $a2, $a1
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB31_19
.LBB31_42:                              # %if.end.i
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.bu	$a0, $s8, 48
	andi	$a0, $a0, 2
	bnez	$a0, .LBB31_44
# %bb.43:                               # %land.lhs.true6.i
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.w	$a0, $s8, 64
	ld.w	$a1, $s8, 68
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	slt	$a4, $a0, $s7
	addi.w	$a2, $zero, -1
	move	$a0, $s8
	move	$a1, $s7
	move	$a3, $fp
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMax)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB31_19
.LBB31_44:                              # %if.then77
                                        #   in Loop: Header=BB31_23 Depth=4
	ori	$fp, $zero, 1
	beqz	$s5, .LBB31_46
# %bb.45:                               # %land.lhs.true79
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.w	$a0, $s1, 8
	beqz	$a0, .LBB31_47
.LBB31_46:                              #   in Loop: Header=BB31_23 Depth=4
	move	$a1, $zero
	st.d	$zero, $sp, 264                 # 8-byte Folded Spill
	ori	$s1, $zero, 1
	bnez	$s4, .LBB31_50
	b	.LBB31_52
.LBB31_47:                              # %if.then82
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $s0, 16
	ld.d	$s1, $a0, 8
	bne	$a1, $s1, .LBB31_49
# %bb.48:                               # %if.then85
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $a0, 0
	ld.d	$s1, $a0, 8
.LBB31_49:                              # %if.end89
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$s6, $sp, 280
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	move	$s6, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	addi.d	$a0, $a0, -1
	sltu	$s1, $zero, $a0
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	beqz	$s4, .LBB31_52
.LBB31_50:                              # %if.end97
                                        #   in Loop: Header=BB31_23 Depth=4
	beqz	$s1, .LBB31_52
# %bb.51:                               # %land.lhs.true101
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	beqz	$a0, .LBB31_68
.LBB31_52:                              # %if.end121
                                        #   in Loop: Header=BB31_23 Depth=4
	and	$a0, $s1, $fp
	beqz	$a0, .LBB31_64
.LBB31_53:                              # %if.then125
                                        #   in Loop: Header=BB31_23 Depth=4
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB31_57
# %bb.54:                               # %if.then128
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a1, $s0, 16
	ld.d	$a0, $a1, 8
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB31_56
# %bb.55:                               # %if.then132
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $a1, 0
	ld.d	$a0, $a0, 8
.LBB31_56:                              # %if.end136
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$fp, $sp, 280
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
.LBB31_57:                              # %if.end139
                                        #   in Loop: Header=BB31_23 Depth=4
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 288
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beqz	$a2, .LBB31_59
# %bb.58:                               # %if.then141
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a1, $a1, 8
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	b	.LBB31_60
.LBB31_59:                              # %if.else143
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 8
.LBB31_60:                              # %if.then141
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$fp, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_62
# %bb.61:                               # %if.then7.i.i
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $fp
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_NAllTermsRplac)
	jirl	$ra, $ra, 0
	b	.LBB31_63
.LBB31_62:                              # %if.else9.i.i134
                                        #   in Loop: Header=BB31_23 Depth=4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$s1, $zero
.LBB31_63:                              # %if.end145
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 280
	ld.d	$a5, $sp, 288
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 24
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	st.d	$s4, $sp, 8
	st.d	$s5, $sp, 0
	move	$a0, $s8
	move	$a1, $s7
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(inf_ApplyGenSuperposition)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
.LBB31_64:                              # %if.end148
                                        #   in Loop: Header=BB31_23 Depth=4
	beqz	$a1, .LBB31_66
# %bb.65:                               # %if.then152
                                        #   in Loop: Header=BB31_23 Depth=4
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB31_66:                              # %if.end153
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB31_20
# %bb.67:                               # %if.then157
                                        #   in Loop: Header=BB31_23 Depth=4
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	b	.LBB31_20
.LBB31_68:                              # %if.then104
                                        #   in Loop: Header=BB31_23 Depth=4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sltui	$a2, $a2, 1
	masknez	$a3, $a0, $a2
	maskeqz	$a4, $a1, $a2
	or	$a3, $a4, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 8
	ld.d	$fp, $sp, 288
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 288
	move	$s6, $a0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $s6
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ord_Compare)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	sltu	$fp, $zero, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	and	$a0, $s1, $fp
	bnez	$a0, .LBB31_53
	b	.LBB31_64
.Lfunc_end31:
	.size	inf_GenSPLeftEqToGiven, .Lfunc_end31-inf_GenSPLeftEqToGiven
                                        # -- End function
	.p2align	5                               # -- Begin function inf_HyperResolvents
	.type	inf_HyperResolvents,@function
inf_HyperResolvents:                    # @inf_HyperResolvents
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
	ld.d	$t0, $sp, 288
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	move	$s7, $a5
	move	$s4, $a4
	move	$s0, $a1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	beqz	$a2, .LBB32_56
# %bb.1:                                # %if.else
	move	$s6, $a3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(clause_HyperLiteralIsBetter)
	addi.d	$a3, $a1, %pc_lo12(clause_HyperLiteralIsBetter)
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(clause_MoveBestLiteralToFront)
	jirl	$ra, $ra, 0
	ld.d	$a4, $a0, 8
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$s2, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $s2, 128
	ld.w	$a2, $a1, 32
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s1, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a3, $s1, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s1, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s2, 128
	st.d	$a0, $a1, 0
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a4, 24
	ld.w	$a1, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a2, %got_pc_lo12(fol_NOT)
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB32_3
# %bb.2:                                # %if.then.i
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB32_3:                               # %clause_LiteralAtom.exit
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_RIGHTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_RIGHTCONTEXT)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_EQUALITY)
	ld.d	$a0, $a0, %got_pc_lo12(fol_EQUALITY)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB32_4:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_7 Depth 2
                                        #       Child Loop BB32_11 Depth 3
                                        #         Child Loop BB32_12 Depth 4
                                        #     Child Loop BB32_20 Depth 2
                                        #       Child Loop BB32_23 Depth 3
                                        #         Child Loop BB32_24 Depth 4
                                        #     Child Loop BB32_34 Depth 2
                                        #       Child Loop BB32_35 Depth 3
                                        #       Child Loop BB32_43 Depth 3
                                        #       Child Loop BB32_47 Depth 3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	pcaddu18i	$ra, %call36(st_GetUnifier)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_49
# %bb.5:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB32_4 Depth=1
	move	$s3, $a0
	move	$s5, $zero
	bnez	$s7, .LBB32_7
	b	.LBB32_20
	.p2align	4, , 16
.LBB32_6:                               # %for.inc33.i
                                        #   in Loop: Header=BB32_7 Depth=2
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s1, 0
	ld.d	$a3, $s3, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s2, 128
	st.d	$s3, $a0, 0
	move	$s3, $a3
	beqz	$a3, .LBB32_30
.LBB32_7:                               # %for.body.i
                                        #   Parent Loop BB32_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_11 Depth 3
                                        #         Child Loop BB32_12 Depth 4
	ld.d	$a0, $s3, 8
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB32_6
# %bb.8:                                # %if.then.i55
                                        #   in Loop: Header=BB32_7 Depth=2
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_6
# %bb.9:                                # %for.body15.i.preheader
                                        #   in Loop: Header=BB32_7 Depth=2
	move	$fp, $a0
	b	.LBB32_11
	.p2align	4, , 16
.LBB32_10:                              # %for.inc.i
                                        #   in Loop: Header=BB32_11 Depth=3
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB32_6
.LBB32_11:                              # %for.body15.i
                                        #   Parent Loop BB32_4 Depth=1
                                        #     Parent Loop BB32_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB32_12 Depth 4
	ld.d	$s7, $fp, 8
	ld.d	$s0, $s7, 16
	ld.d	$a1, $s0, 56
	addi.d	$a0, $zero, -1
	.p2align	4, , 16
.LBB32_12:                              # %while.cond.i.i.i
                                        #   Parent Loop BB32_4 Depth=1
                                        #     Parent Loop BB32_7 Depth=2
                                        #       Parent Loop BB32_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a1, 0
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a2, $s7, .LBB32_12
# %bb.13:                               # %clause_LiteralIsFromSuccedent.exit.i
                                        #   in Loop: Header=BB32_11 Depth=3
	ld.w	$a1, $s0, 64
	ld.w	$a2, $s0, 68
	add.w	$a1, $a2, $a1
	blt	$a0, $a1, .LBB32_10
# %bb.14:                               # %clause_LiteralIsFromSuccedent.exit.i
                                        #   in Loop: Header=BB32_11 Depth=3
	ld.w	$a2, $s0, 72
	add.d	$a1, $a1, $a2
	addi.w	$a1, $a1, -1
	blt	$a1, $a0, .LBB32_10
# %bb.15:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB32_11 Depth=3
	ld.bu	$a0, $s7, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB32_10
# %bb.16:                               # %land.lhs.true23.i
                                        #   in Loop: Header=BB32_11 Depth=3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_10
# %bb.17:                               # %land.lhs.true26.i
                                        #   in Loop: Header=BB32_11 Depth=3
	ld.w	$a0, $s0, 68
	bnez	$a0, .LBB32_10
# %bb.18:                               # %if.then29.i
                                        #   in Loop: Header=BB32_11 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	st.d	$s5, $a0, 0
	move	$s5, $a0
	b	.LBB32_10
	.p2align	4, , 16
.LBB32_19:                              # %for.inc33.us.i
                                        #   in Loop: Header=BB32_20 Depth=2
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s1, 0
	ld.d	$a3, $s3, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s2, 128
	st.d	$s3, $a0, 0
	move	$s3, $a3
	beqz	$a3, .LBB32_30
.LBB32_20:                              # %for.body.us.i
                                        #   Parent Loop BB32_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_23 Depth 3
                                        #         Child Loop BB32_24 Depth 4
	ld.d	$a0, $s3, 8
	ld.w	$a1, $a0, 0
	bgtz	$a1, .LBB32_19
# %bb.21:                               # %if.then.us.i
                                        #   in Loop: Header=BB32_20 Depth=2
	pcaddu18i	$ra, %call36(sharing_NAtomDataList)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB32_23
	b	.LBB32_19
	.p2align	4, , 16
.LBB32_22:                              # %for.inc.us.us.i
                                        #   in Loop: Header=BB32_23 Depth=3
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB32_19
.LBB32_23:                              # %for.body15.us.us.i
                                        #   Parent Loop BB32_4 Depth=1
                                        #     Parent Loop BB32_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB32_24 Depth 4
	ld.d	$s7, $fp, 8
	ld.d	$s0, $s7, 16
	ld.d	$a1, $s0, 56
	addi.d	$a0, $zero, -1
	.p2align	4, , 16
.LBB32_24:                              # %while.cond.i.i.us.us.i
                                        #   Parent Loop BB32_4 Depth=1
                                        #     Parent Loop BB32_20 Depth=2
                                        #       Parent Loop BB32_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a1, 0
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a2, $s7, .LBB32_24
# %bb.25:                               # %clause_LiteralIsFromSuccedent.exit.us.us.i
                                        #   in Loop: Header=BB32_23 Depth=3
	ld.w	$a1, $s0, 64
	ld.w	$a2, $s0, 68
	add.w	$a1, $a2, $a1
	blt	$a0, $a1, .LBB32_22
# %bb.26:                               # %clause_LiteralIsFromSuccedent.exit.us.us.i
                                        #   in Loop: Header=BB32_23 Depth=3
	ld.w	$a2, $s0, 72
	add.d	$a1, $a1, $a2
	addi.w	$a1, $a1, -1
	blt	$a1, $a0, .LBB32_22
# %bb.27:                               # %land.lhs.true.us.us.i
                                        #   in Loop: Header=BB32_23 Depth=3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_22
# %bb.28:                               # %land.lhs.true26.us.us.i
                                        #   in Loop: Header=BB32_23 Depth=3
	ld.w	$a0, $s0, 68
	bnez	$a0, .LBB32_22
# %bb.29:                               # %if.then29.us.us.i
                                        #   in Loop: Header=BB32_23 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	st.d	$s5, $a0, 0
	move	$s5, $a0
	b	.LBB32_22
	.p2align	4, , 16
.LBB32_30:                              # %inf_GetHyperResolutionPartnerLits.exit
                                        #   in Loop: Header=BB32_4 Depth=1
	bnez	$s5, .LBB32_34
# %bb.31:                               #   in Loop: Header=BB32_4 Depth=1
	move	$fp, $s8
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	b	.LBB32_50
	.p2align	4, , 16
.LBB32_32:                              #   in Loop: Header=BB32_34 Depth=2
	move	$fp, $s8
.LBB32_33:                              # %list_Nconc.exit
                                        #   in Loop: Header=BB32_34 Depth=2
	ld.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s1, 0
	ld.d	$s4, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s2, 128
	st.d	$s0, $a0, 0
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s1, 0
	ld.d	$a3, $s5, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s2, 128
	st.d	$s5, $a0, 0
	move	$s5, $a3
	move	$s8, $fp
	beqz	$a3, .LBB32_50
.LBB32_34:                              # %for.body30
                                        #   Parent Loop BB32_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_35 Depth 3
                                        #       Child Loop BB32_43 Depth 3
                                        #       Child Loop BB32_47 Depth 3
	ld.d	$a1, $s5, 8
	ld.d	$a0, $a1, 16
	ld.d	$a2, $a0, 56
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB32_35:                              # %while.cond.i62
                                        #   Parent Loop BB32_4 Depth=1
                                        #     Parent Loop BB32_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	ori	$a4, $zero, 0
	lu32i.d	$a4, 1
	add.d	$fp, $fp, $a4
	addi.d	$a2, $a2, 8
	bne	$a3, $a1, .LBB32_35
# %bb.36:                               # %clause_LiteralGetIndex.exit67
                                        #   in Loop: Header=BB32_34 Depth=2
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(clause_RenameVarsBiggerThan)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 56
	srai.d	$a1, $fp, 29
	ldx.d	$s7, $a0, $a1
	ld.d	$a0, $s7, 24
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB32_38
# %bb.37:                               # %if.then.i71
                                        #   in Loop: Header=BB32_34 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB32_38:                              # %clause_LiteralAtom.exit74
                                        #   in Loop: Header=BB32_34 Depth=2
	pcaddu18i	$ra, %call36(term_MaxVar)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(cont_Check)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, 24
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a3, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a4, $a2, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	bne	$a1, $a4, .LBB32_40
# %bb.39:                               # %if.then.i80
                                        #   in Loop: Header=BB32_34 Depth=2
	ld.d	$a1, $a3, 16
	ld.d	$a3, $a1, 8
.LBB32_40:                              # %clause_LiteralAtom.exit83
                                        #   in Loop: Header=BB32_34 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unify_UnifyNoOC)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_67
# %bb.41:                               # %if.end49
                                        #   in Loop: Header=BB32_34 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	addi.d	$a1, $sp, 192
	addi.d	$a3, $sp, 184
	pcaddu18i	$ra, %call36(subst_ExtractUnifier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LASTBINDING)
	ld.d	$a1, $a0, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	beqz	$a1, .LBB32_44
# %bb.42:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB32_34 Depth=2
	pcalau12i	$a2, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a2, $a2, %got_pc_lo12(cont_BINDINGS)
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB32_43:                              # %while.body.i
                                        #   Parent Loop BB32_4 Depth=1
                                        #     Parent Loop BB32_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	bnez	$a1, .LBB32_43
.LBB32_44:                              # %cont_Reset.exit
                                        #   in Loop: Header=BB32_34 Depth=2
	slt	$a0, $fp, $s6
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s6, $a0
	or	$fp, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$a0, $a0, %got_pc_lo12(cont_BINDINGS)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cont_INDEXVARSCANNER)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INDEXVARSCANNER)
	ld.d	$s0, $sp, 192
	ori	$a1, $zero, 2000
	st.w	$a1, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(subst_Compose)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192
	move	$a0, $s0
	pcaddu18i	$ra, %call36(subst_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $sp, 160
	st.d	$s7, $sp, 168
	st.d	$a0, $sp, 176
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s4, $a0, 0
	ld.d	$a1, $sp, 192
	addi.d	$a0, $sp, 160
	st.d	$a0, $s0, 8
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s0
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	move	$a5, $s7
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_HyperResolvents)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_32
# %bb.45:                               # %if.end.i
                                        #   in Loop: Header=BB32_34 Depth=2
	move	$fp, $a0
	beqz	$s8, .LBB32_33
# %bb.46:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB32_34 Depth=2
	move	$a1, $fp
	.p2align	4, , 16
.LBB32_47:                              # %for.cond.i
                                        #   Parent Loop BB32_4 Depth=1
                                        #     Parent Loop BB32_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB32_47
# %bb.48:                               # %for.end.i
                                        #   in Loop: Header=BB32_34 Depth=2
	st.d	$s8, $a0, 0
	b	.LBB32_33
	.p2align	4, , 16
.LBB32_49:                              #   in Loop: Header=BB32_4 Depth=1
	move	$fp, $s8
.LBB32_50:                              # %for.end62
                                        #   in Loop: Header=BB32_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB32_53
# %bb.51:                               # %land.lhs.true
                                        #   in Loop: Header=BB32_4 Depth=1
	ld.w	$a0, $a3, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB32_53
# %bb.52:                               # %if.then66
                                        #   in Loop: Header=BB32_4 Depth=1
	ld.d	$a0, $a3, 16
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 8
	ld.d	$a0, $a3, 16
	ld.d	$a0, $a0, 0
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$a2, $a0, 8
	move	$s8, $fp
	b	.LBB32_4
.LBB32_53:                              # %while.end
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	beqz	$a4, .LBB32_55
	.p2align	4, , 16
.LBB32_54:                              # %while.body.i98
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s1, 0
	ld.d	$a5, $a4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $s2, 128
	st.d	$a4, $a0, 0
	move	$a4, $a5
	bnez	$a5, .LBB32_54
.LBB32_55:                              # %list_Delete.exit
	move	$a0, $a3
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	b	.LBB32_65
.LBB32_56:                              # %if.then
	beqz	$s7, .LBB32_63
# %bb.57:                               # %for.cond.preheader
	beqz	$s4, .LBB32_64
# %bb.58:                               # %for.body.preheader
	move	$fp, $s4
	.p2align	4, , 16
.LBB32_59:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_60 Depth 2
	ld.d	$a2, $fp, 8
	ld.d	$a3, $a2, 8
	ld.d	$a0, $a3, 16
	ld.d	$a4, $a0, 56
	addi.d	$a1, $zero, -1
	.p2align	4, , 16
.LBB32_60:                              # %while.cond.i
                                        #   Parent Loop BB32_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	bne	$a5, $a3, .LBB32_60
# %bb.61:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB32_59 Depth=1
	ld.d	$a3, $a2, 16
	ori	$a4, $zero, 1
	move	$a2, $s0
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_LitMaxWith2Subst)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_66
# %bb.62:                               # %for.inc
                                        #   in Loop: Header=BB32_59 Depth=1
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB32_59
	b	.LBB32_64
.LBB32_63:
	move	$s7, $zero
.LBB32_64:                              # %if.end13
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s7
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inf_BuildHyperResolvent)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
.LBB32_65:                              # %cleanup80
	move	$a0, $fp
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
.LBB32_66:
	move	$fp, $zero
	b	.LBB32_65
.LBB32_67:                              # %if.then45
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
	ori	$a3, $zero, 3815
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
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
.Lfunc_end32:
	.size	inf_HyperResolvents, .Lfunc_end32-inf_HyperResolvents
                                        # -- End function
	.p2align	5                               # -- Begin function inf_BuildHyperResolvent
	.type	inf_BuildHyperResolvent,@function
inf_BuildHyperResolvent:                # @inf_BuildHyperResolvent
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
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	move	$s6, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s6, $a0, 8
	st.d	$zero, $a0, 0
	ld.w	$a4, $s6, 64
	blez	$a4, .LBB33_6
# %bb.1:                                # %for.body.lr.ph
	slli.d	$s0, $a4, 3
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s2, $a0, %got_pc_lo12(fol_NOT)
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB33_3
	.p2align	4, , 16
.LBB33_2:                               # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB33_3 Depth=1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	addi.d	$s3, $s3, 8
	st.d	$s4, $a0, 0
	move	$s4, $a0
	beq	$s0, $s3, .LBB33_5
.LBB33_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 0
	bne	$a1, $a2, .LBB33_2
# %bb.4:                                # %if.then.i.i
                                        #   in Loop: Header=BB33_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB33_2
.LBB33_5:                               # %for.end.loopexit
	move	$s1, $a0
	ld.w	$a4, $s6, 64
	b	.LBB33_7
.LBB33_6:
	move	$s1, $zero
.LBB33_7:                               # %for.end
	ld.w	$a3, $s6, 68
	ld.w	$s0, $s6, 72
	add.w	$a1, $a3, $a4
	add.d	$a2, $a1, $s0
	addi.w	$a2, $a2, -1
	bge	$a2, $a1, .LBB33_9
# %bb.8:
	move	$s3, $zero
	b	.LBB33_14
.LBB33_9:                               # %for.body14.lr.ph
	add.d	$a0, $a4, $a3
	slli.d	$s3, $a0, 3
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s4, $a0, %got_pc_lo12(fol_NOT)
	move	$s5, $zero
	b	.LBB33_11
	.p2align	4, , 16
.LBB33_10:                              # %clause_GetLiteralAtom.exit74
                                        #   in Loop: Header=BB33_11 Depth=1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s5, $a0, 0
	addi.w	$s0, $s0, -1
	addi.d	$s3, $s3, 8
	move	$s5, $a0
	beqz	$s0, .LBB33_13
.LBB33_11:                              # %for.body14
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s4, 0
	bne	$a1, $a2, .LBB33_10
# %bb.12:                               # %if.then.i.i71
                                        #   in Loop: Header=BB33_11 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB33_10
.LBB33_13:                              # %for.end21.loopexit
	ld.w	$a4, $s6, 64
	ld.w	$a3, $s6, 68
	move	$s3, $a0
.LBB33_14:                              # %for.end21
	ld.w	$a0, $s6, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	add.d	$a1, $a4, $a3
	addi.w	$a1, $a1, -1
	bge	$a1, $a4, .LBB33_24
# %bb.15:
	move	$s7, $zero
	move	$s5, $zero
.LBB33_16:                              # %for.end62
	move	$a0, $s1
	move	$a1, $zero
	move	$s0, $s3
	move	$a2, $s3
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_Create)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	xori	$a2, $a0, 11
	ld.w	$a1, $s3, 24
	ld.w	$a0, $s3, 12
	st.w	$a2, $s3, 76
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.w	$a2, $s3, 8
	move	$s2, $a1
	move	$a2, $fp
	b	.LBB33_18
	.p2align	4, , 16
.LBB33_17:                              # %if.end.i
                                        #   in Loop: Header=BB33_18 Depth=1
	ld.w	$a4, $a3, 12
	sltu	$a5, $a0, $a4
	masknez	$a0, $a0, $a5
	maskeqz	$a4, $a4, $a5
	or	$a0, $a4, $a0
	st.w	$a0, $s3, 12
	ld.w	$a3, $a3, 24
	ld.d	$a2, $a2, 0
	sltu	$a4, $a3, $s2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $s2, $a4
	or	$s2, $a4, $a3
	beqz	$a2, .LBB33_20
.LBB33_18:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 8
	ld.bu	$a4, $a3, 48
	andi	$a4, $a4, 8
	beqz	$a4, .LBB33_17
# %bb.19:                               # %if.then.i102
                                        #   in Loop: Header=BB33_18 Depth=1
	ld.w	$a4, $s3, 48
	ori	$a4, $a4, 8
	st.w	$a4, $s3, 48
	b	.LBB33_17
.LBB33_20:                              # %while.end.i
	bgeu	$a1, $s2, .LBB33_42
# %bb.21:                               # %if.then16.i
	ld.d	$a0, $s3, 16
	beqz	$a0, .LBB33_49
# %bb.22:                               # %if.then18.i
	slli.w	$a1, $a1, 3
	ori	$a2, $zero, 1024
	bgeu	$a1, $a2, .LBB33_43
# %bb.23:                               # %if.else25.i.i
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	ldx.d	$a3, $a2, $a1
	ld.w	$a4, $a3, 32
	pcalau12i	$a5, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a5, $a5, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a6, $a5, 0
	add.d	$a4, $a6, $a4
	st.d	$a4, $a5, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $a1, 0
	b	.LBB33_49
.LBB33_24:                              # %for.body27.lr.ph
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	move	$s5, $zero
	move	$s7, $zero
	add.w	$a0, $a3, $a4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s6, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu32i.d	$s6, 1
	move	$s2, $fp
	b	.LBB33_26
	.p2align	4, , 16
.LBB33_25:                              # %inf_CopyHyperElectron.exit
                                        #   in Loop: Header=BB33_26 Depth=1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	addi.w	$a0, $a4, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	move	$s2, $fp
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB33_16
.LBB33_26:                              # %for.body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_28 Depth 2
                                        #     Child Loop BB33_32 Depth 2
                                        #     Child Loop BB33_34 Depth 2
                                        #     Child Loop BB33_39 Depth 2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beqz	$a2, .LBB33_66
# %bb.27:                               # %for.body31.preheader
                                        #   in Loop: Header=BB33_26 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	slli.d	$a1, $a4, 3
	ldx.d	$a1, $a0, $a1
	.p2align	4, , 16
.LBB33_28:                              # %for.body31
                                        #   Parent Loop BB33_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 8
	ld.d	$a3, $a0, 0
	beq	$a3, $a1, .LBB33_31
# %bb.29:                               # %for.inc34
                                        #   in Loop: Header=BB33_28 Depth=2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB33_28
# %bb.30:                               # %lor.lhs.false
                                        #   in Loop: Header=BB33_26 Depth=1
	ld.d	$a2, $a0, 0
	bne	$a2, $a1, .LBB33_66
.LBB33_31:                              # %if.end44
                                        #   in Loop: Header=BB33_26 Depth=1
	move	$fp, $a4
	ld.d	$s0, $a0, 8
	ld.d	$s8, $s0, 16
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a1, $s8, 8
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(misc_Max)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s8, $a0, 8
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$s2, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s2, $a0, 8
	st.d	$s7, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $a0, 8
	st.d	$s5, $a0, 0
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	ld.w	$s2, $s8, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s2, $a0, 8
	st.d	$s4, $a0, 0
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 56
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB33_32:                              # %while.cond.i
                                        #   Parent Loop BB33_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	add.d	$a1, $a1, $s6
	addi.d	$a0, $a0, 8
	bne	$a2, $s0, .LBB33_32
# %bb.33:                               # %clause_LiteralGetIndex.exit
                                        #   in Loop: Header=BB33_26 Depth=1
	srai.d	$s2, $a1, 32
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s7, $a0, 0
	ld.d	$a1, $s0, 16
	ld.d	$a1, $a1, 56
	move	$a2, $zero
	.p2align	4, , 16
.LBB33_34:                              # %while.cond.i93
                                        #   Parent Loop BB33_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 0
	move	$a4, $a2
	addi.d	$a1, $a1, 8
	addi.w	$a2, $a2, 1
	bne	$a3, $s0, .LBB33_34
# %bb.35:                               # %clause_LiteralGetIndex.exit98
                                        #   in Loop: Header=BB33_26 Depth=1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 64
	ld.w	$a2, $a0, 68
	ld.w	$a3, $a0, 72
	addi.w	$a0, $a1, -1
	add.w	$a2, $a3, $a2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	add.w	$a3, $a2, $a0
	bltz	$a3, .LBB33_25
# %bb.36:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB33_26 Depth=1
	move	$s0, $zero
	move	$s8, $zero
	add.d	$a1, $a2, $a1
	bstrpick.d	$s2, $a1, 31, 0
	bstrpick.d	$s5, $a4, 31, 0
	b	.LBB33_39
	.p2align	4, , 16
.LBB33_37:                              # %clause_GetLiteralAtom.exit.i
                                        #   in Loop: Header=BB33_39 Depth=2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(subst_Apply)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	slt	$fp, $a0, $s8
	masknez	$a0, $s1, $fp
	maskeqz	$a1, $s3, $fp
	move	$s7, $s3
	move	$s3, $s1
	or	$s1, $a1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s1, $a0, 0
	maskeqz	$a1, $s3, $fp
	masknez	$a2, $a0, $fp
	or	$s1, $a1, $a2
	masknez	$a1, $s7, $fp
	maskeqz	$a0, $a0, $fp
	or	$s3, $a0, $a1
.LBB33_38:                              # %for.inc.i
                                        #   in Loop: Header=BB33_39 Depth=2
	addi.d	$s8, $s8, 1
	addi.d	$s0, $s0, 8
	beq	$s2, $s8, .LBB33_25
.LBB33_39:                              # %for.body.i
                                        #   Parent Loop BB33_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s5, $s8, .LBB33_38
# %bb.40:                               # %if.then.i
                                        #   in Loop: Header=BB33_39 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(fol_NOT)
	ld.d	$a2, $a2, %got_pc_lo12(fol_NOT)
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB33_37
# %bb.41:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB33_39 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB33_37
.LBB33_42:                              # %if.end29.i
	move	$a0, $fp
	bnez	$a1, .LBB33_50
	b	.LBB33_54
.LBB33_43:                              # %if.then.i.i108
	pcalau12i	$a2, %got_pc_hi20(memory_ALIGN)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ALIGN)
	ld.w	$a2, $a2, 0
	mod.wu	$a3, $a1, $a2
	sltui	$a4, $a3, 1
	sub.d	$a2, $a2, $a3
	masknez	$a2, $a2, $a4
	add.w	$a1, $a2, $a1
	pcalau12i	$a2, %got_pc_hi20(memory_OFFSET)
	ld.d	$a2, $a2, %got_pc_lo12(memory_OFFSET)
	ld.wu	$a2, $a2, 0
	sub.d	$a2, $a0, $a2
	ld.d	$a4, $a2, -16
	ld.d	$a3, $a2, -8
	beqz	$a4, .LBB33_65
# %bb.44:                               # %if.then3.i.i
	st.d	$a3, $a4, 8
	beqz	$a3, .LBB33_46
.LBB33_45:                              # %if.then9.i.i
	ld.d	$a2, $a2, -16
	st.d	$a2, $a3, 0
.LBB33_46:                              # %if.end13.i.i
	pcalau12i	$a2, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a2, $a2, 0
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 16
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a3, $a2, 0
	add.d	$a3, $a1, $a3
	st.d	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a2, $a2, %got_pc_lo12(memory_MAXMEM)
	ld.d	$a3, $a2, 0
	bltz	$a3, .LBB33_48
# %bb.47:                               # %if.then18.i.i
	add.d	$a1, $a3, $a1
	st.d	$a1, $a2, 0
.LBB33_48:                              # %if.end23.i.i
	addi.d	$a0, $a0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB33_49:                              # %if.end29.thread.i
	slli.w	$a0, $s2, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 16
	st.w	$s2, $s3, 24
.LBB33_50:                              # %for.body.lr.ph.i103
	move	$a0, $zero
	move	$a1, $zero
	.p2align	4, , 16
.LBB33_51:                              # %for.body.i104
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s3, 16
	stx.d	$zero, $a2, $a0
	ld.wu	$a2, $s3, 24
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 8
	bltu	$a1, $a2, .LBB33_51
# %bb.52:
	move	$a0, $fp
	b	.LBB33_54
	.p2align	4, , 16
.LBB33_53:                              # %while.cond34.loopexit.i
                                        #   in Loop: Header=BB33_54 Depth=1
	beqz	$a0, .LBB33_57
.LBB33_54:                              # %while.body38.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_56 Depth 2
	ld.d	$a1, $a0, 8
	ld.w	$a2, $a1, 24
	ld.d	$a0, $a0, 0
	beqz	$a2, .LBB33_53
# %bb.55:                               # %for.body45.lr.ph.i
                                        #   in Loop: Header=BB33_54 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	.p2align	4, , 16
.LBB33_56:                              # %for.body45.i
                                        #   Parent Loop BB33_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $s3, 16
	ld.d	$a5, $a1, 16
	ldx.d	$a6, $a4, $a2
	ldx.d	$a5, $a5, $a2
	or	$a5, $a5, $a6
	stx.d	$a5, $a4, $a2
	ld.wu	$a4, $a1, 24
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	bltu	$a3, $a4, .LBB33_56
	b	.LBB33_53
.LBB33_57:                              # %clause_SetSplitDataFromList.exit
	move	$a0, $s7
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 40
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB33_58:                              # %while.body.i112
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $fp, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $fp, 0
	ld.d	$a2, $a0, 128
	st.d	$fp, $a2, 0
	move	$fp, $a5
	bnez	$a5, .LBB33_58
# %bb.59:                               # %list_Delete.exit
	beqz	$s1, .LBB33_61
	.p2align	4, , 16
.LBB33_60:                              # %while.body.i116
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
	bnez	$a5, .LBB33_60
.LBB33_61:                              # %list_Delete.exit124
	beqz	$s0, .LBB33_64
# %bb.62:                               # %while.body.i126.preheader
	move	$a6, $s0
	.p2align	4, , 16
.LBB33_63:                              # %while.body.i126
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
	bnez	$a5, .LBB33_63
.LBB33_64:                              # %list_Delete.exit134
	move	$a0, $s3
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
.LBB33_65:                              # %if.else.i.i
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a3, $a4, 0
	bnez	$a3, .LBB33_45
	b	.LBB33_46
.LBB33_66:                              # %if.then40
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
	ori	$a3, $zero, 3637
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
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
.Lfunc_end33:
	.size	inf_BuildHyperResolvent, .Lfunc_end33-inf_BuildHyperResolvent
                                        # -- End function
	.p2align	5                               # -- Begin function clause_HyperLiteralIsBetter
	.type	clause_HyperLiteralIsBetter,@function
clause_HyperLiteralIsBetter:            # @clause_HyperLiteralIsBetter
# %bb.0:                                # %entry
	sltu	$a0, $a3, $a1
	ret
.Lfunc_end34:
	.size	clause_HyperLiteralIsBetter, .Lfunc_end34-clause_HyperLiteralIsBetter
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n\tError in file %s at line %d\n"
	.size	.L.str, 31

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"/home/zhaoqi/llvm-test-suite/MultiSource/Applications/SPASS/rules-inf.c"
	.size	.L.str.1, 72

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n In inf_GeneralResolution: Unification failed."
	.size	.L.str.2, 48

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\n Please report this error via email to spass@mpi-sb.mpg.de including\n the SPASS version, input problem, options, operating system.\n"
	.size	.L.str.3, 133

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n In inf_UnitResolution: Unification failed."
	.size	.L.str.4, 45

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\n In inf_BoundedDepthUnitResolution: Unification failed."
	.size	.L.str.5, 57

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\n Error: Flag \"IOFC\" has invalid value.\n"
	.size	.L.str.6, 41

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\n Error: Flag \"IORE\" has invalid value.\n"
	.size	.L.str.7, 41

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\n Error: Flag \"ISRE\" has invalid value.\n"
	.size	.L.str.8, 41

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\n\n"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\n In inf_HyperResolvents: Unification failed."
	.size	.L.str.10, 46

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\n In inf_BuildHyperResolvent: Map entry not found."
	.size	.L.str.11, 51

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\n In inf_BackwardHyperResolution: Unification failed."
	.size	.L.str.12, 54

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym term_Copy
	.addrsig_sym term_Delete
	.addrsig_sym clause_HyperLiteralIsBetter
