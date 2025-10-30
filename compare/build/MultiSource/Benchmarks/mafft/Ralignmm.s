	.file	"Ralignmm.c"
	.text
	.globl	imp_match_out_scR               # -- Begin function imp_match_out_scR
	.p2align	5
	.type	imp_match_out_scR,@function
imp_match_out_scR:                      # @imp_match_out_scR
# %bb.0:                                # %entry
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	imp_match_out_scR, .Lfunc_end0-imp_match_out_scR
                                        # -- End function
	.globl	imp_match_init_strictR          # -- Begin function imp_match_init_strictR
	.p2align	5
	.type	imp_match_init_strictR,@function
imp_match_init_strictR:                 # @imp_match_init_strictR
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
	pcalau12i	$s6, %pc_hi20(imp_match_init_strictR.impalloclen)
	ld.w	$a0, $s6, %pc_lo12(imp_match_init_strictR.impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strictR.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strictR.nocount2)
	blt	$a0, $a1, .LBB1_2
# %bb.1:                                # %entry
	addi.w	$a1, $s5, 2
	bge	$a0, $a1, .LBB1_9
.LBB1_2:                                # %if.then
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	beqz	$a0, .LBB1_4
# %bb.3:                                # %if.then3
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %if.end
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictR.nocount1)
	beqz	$a0, .LBB1_6
# %bb.5:                                # %if.then5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_6:                                # %if.end6
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictR.nocount2)
	beqz	$a0, .LBB1_8
# %bb.7:                                # %if.then8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_8:                                # %if.end9
	slt	$a0, $s5, $s4
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	st.w	$a0, $s6, %pc_lo12(imp_match_init_strictR.impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(imp_match_init_strictR.impalloclen)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(imp_match_init_strictR.impalloclen)
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strictR.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(imp_match_init_strictR.nocount2)
.LBB1_9:                                # %if.end14
	blez	$s4, .LBB1_22
# %bb.10:                               # %for.cond16.preheader.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictR.nocount1)
	blez	$s3, .LBB1_18
# %bb.11:                               # %for.cond16.preheader.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_12:                               # %if.else.us
                                        #   in Loop: Header=BB1_14 Depth=1
	move	$a4, $zero
.LBB1_13:                               # %for.inc33.us
                                        #   in Loop: Header=BB1_14 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB1_22
.LBB1_14:                               # %for.cond16.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	move	$a4, $s3
	move	$a5, $s1
	move	$a3, $s3
	.p2align	4, , 16
.LBB1_15:                               # %for.body18.us
                                        #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB1_17
# %bb.16:                               # %for.inc.us
                                        #   in Loop: Header=BB1_15 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB1_15
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_17:                               # %for.end.us
                                        #   in Loop: Header=BB1_14 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB1_13
	b	.LBB1_12
.LBB1_18:                               # %for.cond16.preheader.lr.ph.split
	beqz	$s3, .LBB1_20
# %bb.19:                               # %for.cond16.preheader.preheader
	ori	$a1, $zero, 1
	b	.LBB1_21
.LBB1_20:                               # %for.cond16.preheader.us131.preheader
	move	$a1, $zero
.LBB1_21:                               # %for.cond36.preheader
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_22:                               # %for.cond36.preheader.thread
	blez	$s5, .LBB1_38
# %bb.23:                               # %for.cond40.preheader.lr.ph
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictR.nocount2)
	blez	$s2, .LBB1_31
# %bb.24:                               # %for.cond40.preheader.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_25:                               # %if.else61.us
                                        #   in Loop: Header=BB1_27 Depth=1
	move	$a4, $zero
.LBB1_26:                               # %for.inc65.us
                                        #   in Loop: Header=BB1_27 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s5, .LBB1_35
.LBB1_27:                               # %for.cond40.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_28 Depth 2
	move	$a4, $s2
	move	$a5, $s0
	move	$a3, $s2
	.p2align	4, , 16
.LBB1_28:                               # %for.body43.us
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB1_30
# %bb.29:                               # %for.inc53.us
                                        #   in Loop: Header=BB1_28 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB1_28
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_30:                               # %for.end55.us
                                        #   in Loop: Header=BB1_27 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB1_26
	b	.LBB1_25
.LBB1_31:                               # %for.cond40.preheader.lr.ph.split
	beqz	$s2, .LBB1_33
# %bb.32:                               # %for.cond40.preheader.preheader
	ori	$a1, $zero, 1
	b	.LBB1_34
.LBB1_33:                               # %for.cond40.preheader.us145.preheader
	move	$a1, $zero
.LBB1_34:                               # %for.cond68.preheader
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_35:                               # %for.cond68.preheader
	blez	$s4, .LBB1_38
# %bb.36:                               # %for.cond72.preheader.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(impmtx)
	slli.d	$s5, $s5, 2
	.p2align	4, , 16
.LBB1_37:                               # %for.cond72.preheader.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	bnez	$s4, .LBB1_37
.LBB1_38:                               # %for.end85
	blez	$s3, .LBB1_76
# %bb.39:                               # %for.cond90.preheader.lr.ph
	blez	$s2, .LBB1_76
# %bb.40:                               # %for.cond90.preheader.us.preheader
	ld.d	$a0, $sp, 120
	ld.d	$a1, $sp, 112
	pcalau12i	$a2, %got_pc_hi20(fastathreshold)
	ld.d	$a2, $a2, %got_pc_lo12(fastathreshold)
	fld.d	$fa0, $a2, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	move	$a3, $zero
	ori	$a4, $zero, 45
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_41:                               # %for.cond90.for.inc302_crit_edge.us
                                        #   in Loop: Header=BB1_42 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s3, .LBB1_76
.LBB1_42:                               # %for.cond90.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_44 Depth 2
                                        #       Child Loop BB1_47 Depth 3
                                        #         Child Loop BB1_48 Depth 4
                                        #         Child Loop BB1_52 Depth 4
                                        #         Child Loop BB1_56 Depth 4
                                        #         Child Loop BB1_60 Depth 4
                                        #         Child Loop BB1_64 Depth 4
	slli.d	$a5, $a3, 3
	fldx.d	$fa1, $fp, $a5
	ldx.d	$a5, $a0, $a5
	move	$a6, $zero
	alsl.d	$a7, $a3, $s1, 3
	b	.LBB1_44
	.p2align	4, , 16
.LBB1_43:                               # %for.inc299.us
                                        #   in Loop: Header=BB1_44 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB1_41
.LBB1_44:                               # %for.body93.us
                                        #   Parent Loop BB1_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_47 Depth 3
                                        #         Child Loop BB1_48 Depth 4
                                        #         Child Loop BB1_52 Depth 4
                                        #         Child Loop BB1_56 Depth 4
                                        #         Child Loop BB1_60 Depth 4
                                        #         Child Loop BB1_64 Depth 4
	slli.d	$t2, $a6, 3
	ldx.d	$t0, $a5, $t2
	beqz	$t0, .LBB1_43
# %bb.45:                               # %while.body.lr.ph.us
                                        #   in Loop: Header=BB1_44 Depth=2
	fldx.d	$fa2, $a1, $t2
	fmul.d	$fa2, $fa1, $fa2
	ld.d	$t1, $a7, 0
	ldx.d	$t2, $s0, $t2
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	nor	$t3, $t1, $zero
	nor	$t4, $t2, $zero
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_46:                               # %while.end297.us
                                        #   in Loop: Header=BB1_47 Depth=3
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB1_43
.LBB1_47:                               # %while.body.us
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_48 Depth 4
                                        #         Child Loop BB1_52 Depth 4
                                        #         Child Loop BB1_56 Depth 4
                                        #         Child Loop BB1_60 Depth 4
                                        #         Child Loop BB1_64 Depth 4
	ld.w	$s4, $t0, 24
	addi.d	$t8, $zero, -1
	move	$t7, $t1
	.p2align	4, , 16
.LBB1_48:                               # %while.cond107.us
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        #       Parent Loop BB1_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t5, $t7, 0
	beqz	$t5, .LBB1_51
# %bb.49:                               # %while.body111.us
                                        #   in Loop: Header=BB1_48 Depth=4
	addi.d	$t5, $t5, -45
	sltu	$t5, $zero, $t5
	add.w	$t8, $t8, $t5
	addi.d	$t7, $t7, 1
	bne	$t8, $s4, .LBB1_48
# %bb.50:                               #   in Loop: Header=BB1_47 Depth=3
	move	$t8, $s4
.LBB1_51:                               # %while.end.us
                                        #   in Loop: Header=BB1_47 Depth=3
	ld.w	$s5, $t0, 28
	add.w	$t5, $t7, $t3
	move	$t6, $t5
	beq	$s4, $s5, .LBB1_55
	.p2align	4, , 16
.LBB1_52:                               # %while.cond132.us
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        #       Parent Loop BB1_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t6, $t7, 0
	beqz	$t6, .LBB1_54
# %bb.53:                               # %while.body136.us
                                        #   in Loop: Header=BB1_52 Depth=4
	addi.d	$t6, $t6, -45
	sltu	$t6, $zero, $t6
	add.w	$t8, $t8, $t6
	addi.d	$t7, $t7, 1
	bne	$t8, $s5, .LBB1_52
.LBB1_54:                               # %while.end149.us
                                        #   in Loop: Header=BB1_47 Depth=3
	add.w	$t6, $t7, $t3
.LBB1_55:                               # %if.end157.us
                                        #   in Loop: Header=BB1_47 Depth=3
	ld.w	$s6, $t0, 32
	addi.d	$s5, $zero, -1
	move	$s4, $t2
	.p2align	4, , 16
.LBB1_56:                               # %while.cond160.us
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        #       Parent Loop BB1_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $s4, 0
	beqz	$t7, .LBB1_59
# %bb.57:                               # %while.body164.us
                                        #   in Loop: Header=BB1_56 Depth=4
	addi.d	$t7, $t7, -45
	sltu	$t7, $zero, $t7
	add.w	$s5, $s5, $t7
	addi.d	$s4, $s4, 1
	bne	$s5, $s6, .LBB1_56
# %bb.58:                               #   in Loop: Header=BB1_47 Depth=3
	move	$s5, $s6
.LBB1_59:                               # %while.end177.us
                                        #   in Loop: Header=BB1_47 Depth=3
	ld.w	$s7, $t0, 36
	add.w	$t7, $s4, $t4
	move	$t8, $t7
	beq	$s6, $s7, .LBB1_63
	.p2align	4, , 16
.LBB1_60:                               # %while.cond191.us
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        #       Parent Loop BB1_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t8, $s4, 0
	beqz	$t8, .LBB1_62
# %bb.61:                               # %while.body195.us
                                        #   in Loop: Header=BB1_60 Depth=4
	addi.d	$t8, $t8, -45
	sltu	$t8, $zero, $t8
	add.w	$s5, $s5, $t8
	addi.d	$s4, $s4, 1
	bne	$s5, $s7, .LBB1_60
.LBB1_62:                               # %while.end208.us
                                        #   in Loop: Header=BB1_47 Depth=3
	add.w	$t8, $s4, $t4
.LBB1_63:                               # %if.end216.us
                                        #   in Loop: Header=BB1_47 Depth=3
	add.d	$s4, $t1, $t5
	add.d	$s5, $t2, $t7
	.p2align	4, , 16
.LBB1_64:                               # %while.cond229.us
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        #       Parent Loop BB1_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s7, $s4, 0
	beqz	$s7, .LBB1_46
# %bb.65:                               # %land.rhs.us
                                        #   in Loop: Header=BB1_64 Depth=4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB1_46
# %bb.66:                               # %while.body234.us
                                        #   in Loop: Header=BB1_64 Depth=4
	beq	$s7, $a4, .LBB1_69
# %bb.67:                               # %while.body234.us
                                        #   in Loop: Header=BB1_64 Depth=4
	beq	$s6, $a4, .LBB1_69
# %bb.68:                               # %if.then241.us
                                        #   in Loop: Header=BB1_64 Depth=4
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
	b	.LBB1_73
	.p2align	4, , 16
.LBB1_69:                               # %if.else251.us
                                        #   in Loop: Header=BB1_64 Depth=4
	bne	$s7, $a4, .LBB1_71
# %bb.70:                               # %land.lhs.true266.us
                                        #   in Loop: Header=BB1_64 Depth=4
	addi.w	$t5, $t5, 1
	addi.d	$s4, $s4, 1
.LBB1_71:                               # %land.lhs.true255.us
                                        #   in Loop: Header=BB1_64 Depth=4
	bne	$s6, $a4, .LBB1_74
# %bb.72:                               # %if.then281.us
                                        #   in Loop: Header=BB1_64 Depth=4
	addi.w	$t7, $t7, 1
.LBB1_73:                               # %if.end289.us
                                        #   in Loop: Header=BB1_64 Depth=4
	addi.d	$s5, $s5, 1
.LBB1_74:                               # %if.end289.us
                                        #   in Loop: Header=BB1_64 Depth=4
	blt	$t6, $t5, .LBB1_46
# %bb.75:                               # %if.end289.us
                                        #   in Loop: Header=BB1_64 Depth=4
	bge	$t8, $t7, .LBB1_64
	b	.LBB1_46
.LBB1_76:                               # %for.end304
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
	.size	imp_match_init_strictR, .Lfunc_end1-imp_match_init_strictR
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function R__align
.LCPI2_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI2_2:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI2_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI2_4:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	R__align
	.p2align	5
	.type	R__align,@function
R__align:                               # @R__align
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
	fst.d	$fs1, $sp, 440                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 432                  # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	move	$s7, $a5
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	move	$s4, $a2
	move	$s6, $a1
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$s8, %pc_hi20(R__align.orlgth1)
	ld.w	$s2, $s8, %pc_lo12(R__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.mseq1)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.mseq2)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bnez	$s2, .LBB2_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(R__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s8, %pc_lo12(R__align.orlgth1)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.mseq2)
.LBB2_2:                                # %if.end
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$s5, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(R__align.orlgth2)
	ld.w	$fp, $s0, %pc_lo12(R__align.orlgth2)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(R__align.w1)
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.w2)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.initverticalw)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.lastverticalw)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.m)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.mp)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(R__align.mseq)
	pcalau12i	$a0, %pc_hi20(R__align.digf1)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.digf2)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.diaf1)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.diaf2)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapz1)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapz2)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapf1)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapf2)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.ogcp1g)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.ogcp2g)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.fgcp1g)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.fgcp2g)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.cpmx1)
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.cpmx2)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.floatwork)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.intwork)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	blt	$s2, $s5, .LBB2_4
# %bb.3:                                # %if.end
	bge	$fp, $a1, .LBB2_9
.LBB2_4:                                # %if.then12
	pcalau12i	$s6, %pc_hi20(R__align.match)
	pcalau12i	$a0, %pc_hi20(R__align.ogcp1)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.ogcp2)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(R__align.fgcp1)
	pcalau12i	$s3, %pc_hi20(R__align.fgcp2)
	blez	$s2, .LBB2_7
# %bb.5:                                # %if.then12
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	blez	$fp, .LBB2_8
# %bb.6:                                # %if.then17
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(R__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(R__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(R__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(R__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s8, %pc_lo12(R__align.orlgth1)
	ld.w	$fp, $s0, %pc_lo12(R__align.orlgth2)
	b	.LBB2_8
.LBB2_7:
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
.LBB2_8:                                # %if.end18
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$s2, $a1, $a0
	st.d	$s8, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	move	$s0, $s3
	addi.w	$s3, $s2, 100
	movgr2fr.w	$fa1, $s5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
	move	$s8, $s7
	addi.w	$s7, $fp, 100
	addi.w	$s5, $fp, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(R__align.match)
	addi.w	$s6, $s2, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s7, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(R__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.digf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.digf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.diaf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.diaf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapz1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapz2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(R__align.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(R__align.fgcp2)
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp1g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.fgcp1g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.fgcp2g)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.cpmx2)
	slt	$a0, $s7, $s3
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.w	$s3, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.intwork)
	st.w	$s2, $s8, %pc_lo12(R__align.orlgth1)
	st.w	$fp, $s0, %pc_lo12(R__align.orlgth2)
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
.LBB2_9:                                # %if.end108
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blez	$a0, .LBB2_12
# %bb.10:                               # %for.body.lr.ph
	ld.d	$a0, $s1, %pc_lo12(R__align.mseq)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.mseq1)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $s3, 0
	stx.b	$zero, $a4, $s5
	addi.d	$s3, $s3, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB2_11
.LBB2_12:                               # %for.cond118.preheader
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	blez	$s7, .LBB2_15
# %bb.13:                               # %for.body121.lr.ph
	ld.d	$a1, $s1, %pc_lo12(R__align.mseq)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mseq2)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	move	$a2, $s7
	move	$a3, $s6
	.p2align	4, , 16
.LBB2_14:                               # %for.body121
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a5
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB2_14
.LBB2_15:                               # %for.end133
	ld.d	$s5, $sp, 552
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a0
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s3, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s3, 0
	blt	$a0, $s2, .LBB2_18
# %bb.16:                               # %for.end133
	blt	$a1, $fp, .LBB2_18
# %bb.17:                               # %lor.lhs.false136.if.end161_crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB2_22
.LBB2_18:                               # %if.then139
	beqz	$a0, .LBB2_21
# %bb.19:                               # %if.then139
	beqz	$a1, .LBB2_21
# %bb.20:                               # %if.then144
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s8, %pc_lo12(R__align.orlgth1)
	ld.w	$a0, $s1, 0
	ld.w	$fp, $s0, %pc_lo12(R__align.orlgth2)
	ld.w	$a1, $s3, 0
.LBB2_21:                               # %if.end145
	slt	$a2, $a0, $s2
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s2, $a2
	or	$s0, $a2, $a0
	slt	$a0, $a1, $fp
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	addi.w	$a0, $s0, 10
	addi.w	$a1, $fp, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s0, $s1, 0
	st.w	$fp, $s3, 0
.LBB2_22:                               # %if.end161
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.cpmx1)
	ffint.s.w	$fa0, $fs0
	vst	$vr0, $sp, 400                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(R__align.ijp)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(R__align.ijp)
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a2, $s4
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(R__align.cpmx2)
	move	$a0, $s6
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s7
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1g)
	bnez	$s5, .LBB2_24
# %bb.23:                               # %if.else
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp2g)
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf2)
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf2)
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf2)
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz2)
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	b	.LBB2_25
.LBB2_24:                               # %if.then163
	ld.d	$s6, $sp, 576
	ld.d	$s3, $sp, 568
	ld.d	$s8, $sp, 560
	move	$a1, $fp
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s1
	move	$a5, $s5
	move	$a6, $s3
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	move	$a1, $s7
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $s8
	move	$a6, $s6
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	move	$a1, $fp
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s1
	move	$a5, $s5
	move	$a6, $s3
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp2g)
	move	$a1, $s7
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $s8
	move	$a6, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	move	$a1, $fp
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s1
	move	$a5, $s5
	move	$a6, $s3
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf2)
	move	$a1, $s7
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $s8
	move	$a6, $s6
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	move	$a1, $fp
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s1
	move	$a5, $s5
	move	$a6, $s3
	st.d	$s5, $sp, 280                   # 8-byte Folded Spill
	move	$s5, $s4
	ld.d	$s4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf2)
	move	$a1, $s7
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s4
	move	$a5, $s8
	move	$a6, $s6
	move	$s3, $s2
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s5
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf2)
	move	$a1, $s7
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s5
	move	$a4, $s1
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	move	$a5, $fp
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz2)
	move	$a1, $s7
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
.LBB2_25:                               # %if.end164
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(R__align.w1)
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.w2)
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.initverticalw)
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $a1, %pc_lo12(R__align.cpmx2)
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $a1, %pc_lo12(R__align.cpmx1)
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s5, $a1, %pc_lo12(R__align.floatwork)
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(R__align.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	move	$a1, $s2
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $s1
	move	$a5, $s5
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	slli.d	$s3, $s6, 32
	addi.d	$a0, $s6, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$s0, 287172
	vld	$vr0, $sp, 400                  # 16-byte Folded Reload
	fcvt.d.s	$fs1, $fa0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$s7, $a0
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	bnez	$a0, .LBB2_27
# %bb.26:                               # %if.end170.critedge
	ori	$a7, $zero, 1
	move	$a0, $s8
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $zero
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	move	$a4, $fp
	move	$a5, $s5
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t2, $s0
	ld.d	$t7, $sp, 392                   # 8-byte Folded Reload
	move	$s1, $s5
	move	$s0, $s7
	move	$s5, $s2
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	move	$t1, $fp
	move	$t6, $s8
	b	.LBB2_41
.LBB2_27:                               # %if.then166
	move	$a6, $s4
	move	$s4, $s5
	blez	$s1, .LBB2_30
# %bb.28:                               # %for.body.lr.ph.i
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_29:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB2_29
.LBB2_30:                               # %imp_match_out_vead_tateR.exit
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	move	$s5, $s2
	move	$a2, $s2
	move	$a3, $zero
	ld.d	$s2, $sp, 416                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$s1, $s4
	move	$a5, $s4
	move	$s4, $a6
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB2_32
# %bb.31:                               # %if.end170.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ld.d	$t7, $sp, 392                   # 8-byte Folded Reload
	move	$t2, $s0
	move	$s0, $s7
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	move	$t6, $s8
	beq	$a0, $fp, .LBB2_42
	b	.LBB2_54
.LBB2_32:                               # %while.body.preheader.i
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a5, $a0, 0
	bstrpick.d	$a3, $s6, 31, 0
	ori	$a0, $zero, 8
	ld.d	$t7, $sp, 392                   # 8-byte Folded Reload
	move	$t2, $s0
	bgeu	$a3, $a0, .LBB2_34
# %bb.33:
	move	$a1, $a5
	move	$a0, $s6
	move	$t6, $s8
	move	$a2, $s8
	move	$s0, $s7
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	b	.LBB2_40
.LBB2_34:                               # %vector.memcheck
	addi.w	$a0, $zero, -4
	lu32i.d	$a0, 3
	alsl.d	$a0, $s6, $a0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 4
	add.d	$a1, $a5, $a0
	move	$s0, $s7
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	move	$t6, $s8
	bgeu	$s8, $a1, .LBB2_37
# %bb.35:                               # %vector.memcheck
	add.d	$a0, $t6, $a0
	bgeu	$a5, $a0, .LBB2_37
# %bb.36:
	move	$a1, $a5
	move	$a0, $s6
	move	$a2, $t6
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	b	.LBB2_40
.LBB2_37:                               # %vector.ph
	bstrpick.d	$a0, $s6, 31, 3
	slli.d	$a4, $a0, 3
	slli.d	$a2, $a0, 5
	add.d	$a1, $a5, $a2
	andi	$a0, $s6, 7
	add.d	$a2, $t6, $a2
	addi.d	$a6, $t6, 16
	addi.d	$a5, $a5, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_38:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB2_38
# %bb.39:                               # %middle.block
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	beq	$a3, $a4, .LBB2_41
	.p2align	4, , 16
.LBB2_40:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a3
	bnez	$a0, .LBB2_40
.LBB2_41:                               # %if.end170
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_47
.LBB2_42:                               # %if.then173
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(R__align.ogcp1g)
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, 0
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	vldi	$vr2, -912
	fsub.d	$fa3, $fa2, $fa1
	fmul.d	$fa3, $fa3, $fa0
	fmul.d	$fa3, $fa3, $fs1
	vldi	$vr4, -928
	movgr2fr.d	$fa5, $zero
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fcvt.s.d	$fa3, $fa3
	fsub.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fa1
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(R__align.fgcp1g)
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.fgcp2g)
	fmul.d	$fa0, $fa0, $fs1
	fcvt.d.s	$fa1, $fa3
	fld.s	$fa3, $a3, 0
	fld.s	$fa5, $a1, 0
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa1, $fa3
	fcvt.d.s	$fa3, $fa5
	fsub.d	$fa5, $fa2, $fa3
	fmul.d	$fa5, $fa5, $fa1
	fmul.d	$fa5, $fa5, $fs1
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa5, $fa4, $fa0
	fcvt.s.d	$fa0, $fa0
	fsub.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fa1, $fa1, $fs1
	fld.s	$fa2, $t7, 0
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fa1, $fa2, $fa0
	fst.s	$fa1, $t7, 0
	fld.s	$fa1, $t6, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $t6, 0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	vld	$vr9, $sp, 400                  # 16-byte Folded Reload
	blez	$a4, .LBB2_45
# %bb.43:                               # %for.body226.lr.ph
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(R__align.gapz2)
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(R__align.digf1)
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(R__align.diaf1)
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, -1
	movgr2fr.w	$fa1, $zero
	ori	$t0, $zero, 4
	vldi	$vr0, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB2_44:                               # %for.body226
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a4, 0
	fld.s	$fa4, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa5, $fa0, $fa3
	fld.s	$fa6, $a5, 0
	fcvt.d.s	$fa4, $fa4
	fld.s	$fa7, $a6, 0
	fsub.d	$fa4, $fa0, $fa4
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa0, $fa6
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa6, $fa6, $fa7
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa3, $fa5, $fa4, $fa3
	fldx.s	$fa4, $t7, $t0
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fs1
	fcvt.s.d	$fa3, $fa3
	fadd.s	$fa3, $fa4, $fa3
	fstx.s	$fa3, $t7, $t0
	fld.s	$fa4, $a4, 4
	fldx.s	$fa5, $a3, $t0
	fldx.s	$fa6, $a2, $t0
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa5, $fa0, $fa5
	fcvt.d.s	$fa6, $fa6
	fldx.s	$fa7, $a5, $t0
	fadd.d	$fa5, $fa5, $fa6
	fldx.s	$fa6, $a6, $t0
	fsub.d	$ft0, $fa0, $fa4
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa7, $fa0, $fa7
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa7, $fa6
	fmul.d	$fa4, $fa6, $fa4
	fmadd.d	$fa4, $ft0, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fs1
	fcvt.s.d	$fa4, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fstx.s	$fa3, $t7, $t0
	fldx.s	$fa4, $a2, $t0
	fldx.s	$fa5, $a3, $t0
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa4, $fa4, $ft1
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa1, $fa1
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa4, $fa1
	fmul.s	$fa5, $fa5, $ft1
	fcvt.d.s	$fa5, $fa5
	fneg.d	$fa5, $fa5
	fmadd.d	$fa4, $fa5, $fa2, $fa4
	fcvt.d.s	$fa3, $fa3
	fadd.d	$fa3, $fa4, $fa3
	fcvt.s.d	$fa3, $fa3
	fstx.s	$fa3, $t7, $t0
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	bnez	$a7, .LBB2_44
.LBB2_45:                               # %for.cond306.preheader
	bgtz	$t1, .LBB2_64
# %bb.46:                               # %if.end425.thread
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t5, $a0, %pc_lo12(R__align.m)
	st.w	$zero, $t5, 0
	b	.LBB2_62
.LBB2_47:                               # %for.cond394.preheader
	blez	$t1, .LBB2_54
# %bb.48:                               # %for.body398.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s6, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_52
# %bb.49:                               # %vector.ph747
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a5, %pc_lo12(.LCPI2_1)
	vreplgr2vr.w	$vr1, $a0
	addi.d	$a5, $t6, 4
	vldi	$vr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_50:                               # %vector.body750
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr1, $vr0
	vpickve2gr.w	$a7, $vr3, 3
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 2
	movgr2fr.w	$fa5, $a7
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vpickve2gr.w	$a7, $vr3, 1
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 0
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	vld	$vr6, $a5, 0
	vextrins.d	$vr3, $vr4, 16
	vfmul.d	$vr3, $vr3, $vr2
	vfmul.d	$vr4, $vr5, $vr2
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr7, $vr6, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vreplvei.w	$vr5, $vr6, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfadd.d	$vr4, $vr6, $vr4
	vfadd.d	$vr3, $vr7, $vr3
	vreplvei.d	$vr5, $vr3, 1
	fcvt.s.d	$fa5, $fa5
	vreplvei.d	$vr3, $vr3, 0
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr3, $vr5, 16
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr3, $vr5, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr3, $vr4, 48
	vst	$vr3, $a5, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB2_50
# %bb.51:                               # %middle.block755
	beq	$a2, $a4, .LBB2_54
.LBB2_52:                               # %for.body398.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $t6, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_53:                               # %for.body398
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
	bnez	$a1, .LBB2_53
.LBB2_54:                               # %for.cond409.preheader
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blez	$a0, .LBB2_61
# %bb.55:                               # %for.body413.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_59
# %bb.56:                               # %vector.ph760
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a5, %pc_lo12(.LCPI2_1)
	vreplgr2vr.w	$vr1, $a0
	addi.d	$a5, $t7, 4
	vldi	$vr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_57:                               # %vector.body765
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr1, $vr0
	vpickve2gr.w	$a7, $vr3, 3
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 2
	movgr2fr.w	$fa5, $a7
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vpickve2gr.w	$a7, $vr3, 1
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 0
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	vld	$vr6, $a5, 0
	vextrins.d	$vr3, $vr4, 16
	vfmul.d	$vr3, $vr3, $vr2
	vfmul.d	$vr4, $vr5, $vr2
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr7, $vr6, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vreplvei.w	$vr5, $vr6, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfadd.d	$vr4, $vr6, $vr4
	vfadd.d	$vr3, $vr7, $vr3
	vreplvei.d	$vr5, $vr3, 1
	fcvt.s.d	$fa5, $fa5
	vreplvei.d	$vr3, $vr3, 0
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr3, $vr5, 16
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr3, $vr5, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr3, $vr4, 48
	vst	$vr3, $a5, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB2_57
# %bb.58:                               # %middle.block772
	beq	$a2, $a4, .LBB2_61
.LBB2_59:                               # %for.body413.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $t7, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_60:                               # %for.body413
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
	bnez	$a1, .LBB2_60
.LBB2_61:                               # %if.end425
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t5, $a0, %pc_lo12(R__align.m)
	st.w	$zero, $t5, 0
	vld	$vr9, $sp, 400                  # 16-byte Folded Reload
	bgtz	$t1, .LBB2_67
.LBB2_62:                               # %for.end442
	ori	$a0, $zero, 1
	bnez	$t1, .LBB2_75
# %bb.63:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	b	.LBB2_76
.LBB2_64:                               # %for.body310.lr.ph
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(R__align.gapz1)
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(R__align.digf2)
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(R__align.diaf2)
	addi.d	$a5, $s6, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, -1
	movgr2fr.w	$fa1, $zero
	ori	$a6, $zero, 4
	vldi	$vr0, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB2_65:                               # %for.body310
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a2, 0
	fld.s	$fa4, $a0, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa5, $fa0, $fa3
	fldx.s	$fa6, $a3, $a6
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa7, $a4, $a6
	fsub.d	$fa4, $fa0, $fa4
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa0, $fa6
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa6, $fa6, $fa7
	fmul.d	$fa3, $fa6, $fa3
	fmadd.d	$fa3, $fa5, $fa4, $fa3
	fldx.s	$fa4, $t6, $a6
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fs1
	fcvt.s.d	$fa3, $fa3
	fadd.s	$fa3, $fa4, $fa3
	fstx.s	$fa3, $t6, $a6
	fld.s	$fa4, $a2, 4
	fldx.s	$fa5, $a1, $a6
	fldx.s	$fa6, $a0, $a6
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa5, $fa0, $fa5
	fcvt.d.s	$fa6, $fa6
	fldx.s	$fa7, $a3, $a6
	fadd.d	$fa5, $fa5, $fa6
	fldx.s	$fa6, $a4, $a6
	fsub.d	$ft0, $fa0, $fa4
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa7, $fa0, $fa7
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa7, $fa6
	fmul.d	$fa4, $fa6, $fa4
	fmadd.d	$fa4, $ft0, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fs1
	fcvt.s.d	$fa4, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fstx.s	$fa3, $t6, $a6
	fldx.s	$fa4, $a0, $a6
	fldx.s	$fa5, $a1, $a6
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa4, $fa4, $ft1
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa1, $fa1
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa4, $fa1
	fmul.s	$fa5, $fa5, $ft1
	fcvt.d.s	$fa5, $fa5
	fneg.d	$fa5, $fa5
	fmadd.d	$fa4, $fa5, $fa2, $fa4
	fcvt.d.s	$fa3, $fa3
	fadd.d	$fa3, $fa4, $fa3
	fcvt.s.d	$fa3, $fa3
	fstx.s	$fa3, $t6, $a6
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 4
	bnez	$a5, .LBB2_65
# %bb.66:                               # %if.end425.thread725
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t5, $a0, %pc_lo12(R__align.m)
	st.w	$zero, $t5, 0
.LBB2_67:                               # %for.body431.lr.ph
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mp)
	addi.d	$a1, $s6, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_72
# %bb.68:                               # %vector.memcheck775
	sub.d	$a4, $t5, $t6
	addi.d	$a4, $a4, 4
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB2_72
# %bb.69:                               # %vector.ph778
	move	$a5, $zero
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a6, 2, 0
	vreplvei.w	$vr0, $vr9, 0
	addi.d	$a6, $a0, 20
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $t2
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_70:                               # %vector.body783
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a6, $a5
	add.d	$t1, $t6, $a5
	vldx	$vr3, $t6, $a5
	vld	$vr4, $t1, 16
	vst	$vr1, $t0, -16
	vstx	$vr1, $a6, $a5
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	vfmadd.s	$vr4, $vr0, $vr2, $vr4
	add.d	$t0, $t5, $a5
	vst	$vr3, $t0, 4
	vst	$vr4, $t0, 20
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB2_70
# %bb.71:                               # %middle.block789
	beq	$a2, $a4, .LBB2_74
.LBB2_72:                               # %for.body431.preheader
	slli.d	$a2, $a3, 2
	addi.d	$a4, $t6, -4
	sub.d	$a1, $a1, $a3
	movgr2fr.w	$fa0, $t2
	.p2align	4, , 16
.LBB2_73:                               # %for.body431
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a4, $a2
	stx.w	$zero, $a0, $a2
	fmadd.s	$fa1, $ft1, $fa0, $fa1
	fstx.s	$fa1, $t5, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB2_73
.LBB2_74:
	move	$a0, $zero
.LBB2_75:                               # %if.else447
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $s3, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $t6, $a1
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	move	$a0, $zero
.LBB2_76:                               # %if.end452
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.lastverticalw)
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	fst.s	$fa0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	sltu	$a2, $zero, $a1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.w	$a3, $a2, $a3
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 360                   # 8-byte Folded Spill
	blt	$a3, $a2, .LBB2_110
# %bb.77:                               # %for.body461.lr.ph
	st.d	$s4, $sp, 336                   # 8-byte Folded Spill
	st.d	$s1, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	sltui	$a1, $s0, 1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ijp)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(R__align.mp)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1g)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(R__align.ogcp2g)
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(R__align.fgcp2g)
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(R__align.digf2)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $a0, %pc_lo12(R__align.diaf2)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t0, $a0, %pc_lo12(R__align.gapz2)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $s3, $a0
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	addi.d	$a0, $s6, 1
	bstrpick.d	$a0, $a0, 31, 0
	bstrpick.d	$a1, $s6, 30, 0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	addi.w	$a1, $s6, -1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 2
	addi.d	$a2, $a2, 4
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 32, 3
	slli.d	$a2, $a1, 3
	slli.d	$a1, $a1, 5
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	sub.d	$a1, $s6, $a2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$t5, $sp, 296                   # 8-byte Folded Spill
	addi.d	$fp, $t5, 8
	st.d	$a7, $sp, 232                   # 8-byte Folded Spill
	addi.d	$s0, $a7, 8
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	addi.d	$s1, $a6, 8
	st.d	$a5, $sp, 256                   # 8-byte Folded Spill
	addi.d	$s2, $a5, 8
	movgr2fr.w	$fs2, $t2
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	addi.d	$s6, $a4, 8
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	addi.d	$s7, $t0, 12
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	addi.d	$s8, $a3, 8
	ori	$s5, $zero, 1
	b	.LBB2_79
	.p2align	4, , 16
.LBB2_78:                               # %for.end730
                                        #   in Loop: Header=BB2_79 Depth=1
	st.d	$s3, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	fldx.s	$fa0, $s4, $a1
	addi.d	$s5, $s5, 1
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$t6, $s4
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB2_111
.LBB2_79:                               # %for.body461
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_108 Depth 2
                                        #     Child Loop BB2_84 Depth 2
                                        #     Child Loop BB2_98 Depth 2
	addi.d	$a0, $s5, -1
	slli.d	$a0, $a0, 2
	fldx.s	$fa0, $t7, $a0
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	move	$s3, $t6
	fst.s	$fa0, $t6, 0
	move	$a0, $s4
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	move	$a3, $s5
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	vld	$vr17, $sp, 400                 # 16-byte Folded Reload
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_85
# %bb.80:                               # %while.body.preheader.i421
                                        #   in Loop: Header=BB2_79 Depth=1
	slli.d	$a0, $s5, 3
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ori	$a1, $zero, 7
	bltu	$a0, $a1, .LBB2_83
# %bb.81:                               # %vector.memcheck792
                                        #   in Loop: Header=BB2_79 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a3, $a1
	bgeu	$s4, $a0, .LBB2_107
# %bb.82:                               # %vector.memcheck792
                                        #   in Loop: Header=BB2_79 Depth=1
	add.d	$a0, $s4, $a1
	bgeu	$a3, $a0, .LBB2_107
.LBB2_83:                               #   in Loop: Header=BB2_79 Depth=1
	move	$a0, $a3
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s4
	.p2align	4, , 16
.LBB2_84:                               # %while.body.i423
                                        #   Parent Loop BB2_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a1, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	move	$a1, $a3
	bnez	$a2, .LBB2_84
.LBB2_85:                               # %if.end468
                                        #   in Loop: Header=BB2_79 Depth=1
	slli.d	$a0, $s5, 2
	ld.d	$t7, $sp, 392                   # 8-byte Folded Reload
	fldx.s	$fa0, $t7, $a0
	fst.s	$fa0, $s4, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	vldi	$vr18, -912
	vldi	$vr19, -928
	ori	$t8, $zero, 1
	addi.d	$ra, $s5, -1
	bnez	$a1, .LBB2_78
# %bb.86:                               # %for.body489.lr.ph
                                        #   in Loop: Header=BB2_79 Depth=1
	fld.s	$fa1, $s3, 0
	fmadd.s	$fa0, $ft9, $fs2, $fa1
	slli.d	$a1, $s5, 3
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	fldx.s	$fa4, $a2, $a0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	fld.s	$fa2, $a2, 4
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ldx.d	$t1, $a2, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a1, $s5, $a1, 2
	fcvt.d.s	$ft2, $fa4
	fcvt.d.s	$fa5, $fa2
	fsub.d	$fa2, $ft10, $fa5
	fmul.d	$fa3, $fa2, $ft2
	fmul.d	$fa3, $fa3, $fs1
	fmul.d	$fa3, $fa3, $ft11
	fcvt.s.d	$fa3, $fa3
	fadd.s	$fa3, $fa1, $fa3
	fsub.d	$fa7, $ft10, $ft2
	fmul.d	$fa6, $fa7, $fa5
	fmul.d	$fa6, $fa6, $fs1
	fmul.d	$ft0, $fa6, $ft11
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	fldx.s	$fa6, $a2, $a0
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	fld.s	$ft3, $a2, 4
	fcvt.s.d	$ft0, $ft0
	fadd.s	$ft0, $fa3, $ft0
	fcvt.d.s	$ft1, $fa6
	fcvt.d.s	$fa3, $ft3
	fsub.d	$ft4, $ft10, $fa3
	fmul.d	$ft3, $ft4, $ft1
	fmul.d	$ft3, $ft3, $fs1
	fmul.d	$ft3, $ft3, $ft11
	fcvt.s.d	$ft3, $ft3
	fadd.s	$ft0, $ft0, $ft3
	fsub.d	$ft3, $ft10, $ft1
	fmul.d	$ft5, $ft3, $fa3
	fmul.d	$ft5, $ft5, $fs1
	fld.s	$ft6, $a1, 4
	fmul.d	$ft5, $ft5, $ft11
	fcvt.s.d	$ft5, $ft5
	fadd.s	$fs0, $ft0, $ft5
	fcvt.d.s	$ft0, $ft6
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	fld.s	$ft5, $a2, 4
	fadd.d	$ft4, $ft4, $fa5
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	fld.s	$fa5, $a2, 4
	fsub.d	$ft6, $ft10, $ft0
	fcvt.d.s	$ft5, $ft5
	fsub.d	$ft5, $ft10, $ft5
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa5, $ft5, $fa5
	fmul.d	$ft0, $fa5, $ft0
	fmadd.d	$ft0, $ft6, $ft4, $ft0
	fmul.d	$ft0, $ft0, $ft11
	fmul.d	$ft0, $ft0, $fs1
	fcvt.s.d	$ft0, $ft0
	fadd.s	$ft0, $fa0, $ft0
	fcmp.cule.s	$fcc0, $ft0, $fs0
	st.w	$zero, $t1, 4
	bcnez	$fcc0, .LBB2_88
# %bb.87:                               # %if.then576.peel
                                        #   in Loop: Header=BB2_79 Depth=1
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	st.w	$a2, $t1, 4
	fmov.s	$fs0, $ft0
.LBB2_88:                               # %if.end579.peel
                                        #   in Loop: Header=BB2_79 Depth=1
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	fld.s	$ft4, $a6, 8
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a2, $s5, $a2, 2
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a3, $s5, $a3, 2
	fld.s	$ft0, $a1, 0
	fcvt.d.s	$ft4, $ft4
	fld.s	$ft5, $a2, 0
	fadd.d	$ft2, $ft3, $ft2
	fld.s	$ft3, $a3, 0
	fsub.d	$ft6, $ft10, $ft4
	fcvt.d.s	$ft5, $ft5
	fsub.d	$ft5, $ft10, $ft5
	fcvt.d.s	$ft3, $ft3
	fsub.d	$ft3, $ft5, $ft3
	fmul.d	$ft4, $ft3, $ft4
	fmadd.d	$ft4, $ft6, $ft2, $ft4
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	fld.s	$ft2, $a5, 4
	fmul.d	$ft4, $ft4, $ft11
	fmul.d	$ft4, $ft4, $fs1
	fcvt.s.d	$ft4, $ft4
	fadd.s	$ft4, $ft2, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB2_90
# %bb.89:                               # %if.then665.peel
                                        #   in Loop: Header=BB2_79 Depth=1
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 4
	sub.d	$a4, $s5, $a4
	st.w	$a4, $t1, 4
	fmov.s	$fs0, $ft4
.LBB2_90:                               # %if.end667.peel
                                        #   in Loop: Header=BB2_79 Depth=1
	fld.s	$ft4, $a6, 4
	fcvt.d.s	$ft4, $ft4
	fsub.d	$ft5, $ft10, $ft4
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft3, $ft4
	fmadd.d	$fa7, $ft5, $fa7, $ft1
	fmul.d	$fa7, $fa7, $ft11
	fmul.d	$fa7, $fa7, $fs1
	fcvt.s.d	$fa7, $fa7
	fadd.s	$fa7, $fa1, $fa7
	fcmp.cult.s	$fcc0, $fa7, $ft2
	bceqz	$fcc0, .LBB2_93
# %bb.91:                               # %if.else702.peel
                                        #   in Loop: Header=BB2_79 Depth=1
	beq	$s5, $t8, .LBB2_94
# %bb.92:                               # %if.then705.peel
                                        #   in Loop: Header=BB2_79 Depth=1
	fadd.s	$fa4, $fa4, $fa6
	fmul.s	$fa4, $fa4, $ft9
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa6, $ft2
	fmadd.d	$fa4, $fa4, $ft11, $fa6
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa4, $a5, 4
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_93:                               # %if.then700.peel
                                        #   in Loop: Header=BB2_79 Depth=1
	fst.s	$fa7, $a5, 4
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	st.w	$ra, $a4, 4
.LBB2_94:                               # %if.end720.peel
                                        #   in Loop: Header=BB2_79 Depth=1
	fld.s	$fa4, $s4, 4
	fadd.s	$fa4, $fs0, $fa4
	fst.s	$fa4, $s4, 4
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	beq	$a4, $t8, .LBB2_78
# %bb.95:                               # %for.body489.peel.next
                                        #   in Loop: Header=BB2_79 Depth=1
	move	$a4, $zero
	move	$t5, $zero
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a5, $s5, $a5, 2
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a6, $s5, $a6, 2
	fcvt.d.s	$fa4, $ft0
	fsub.d	$fa6, $ft10, $fa4
	fadd.d	$fa2, $fa2, $fa3
	fmul.d	$fa3, $fa5, $fa4
	fmadd.d	$fa2, $fa6, $fa2, $fa3
	fmul.d	$fa2, $fa2, $ft11
	fmul.d	$fa2, $fa2, $fs1
	fcvt.s.d	$fa2, $fa2
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cle.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$a7, $s3, 4
	addi.d	$t0, $s4, 8
	addi.d	$t1, $t1, 8
	ori	$t2, $zero, 1
	addi.d	$t3, $zero, -2
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	b	.LBB2_98
	.p2align	4, , 16
.LBB2_96:                               # %if.then700
                                        #   in Loop: Header=BB2_98 Depth=2
	fstx.s	$fa2, $fp, $a4
	stx.w	$ra, $s8, $a4
.LBB2_97:                               # %if.end720
                                        #   in Loop: Header=BB2_98 Depth=2
	fldx.s	$fa1, $t0, $a4
	fadd.s	$fa1, $fs0, $fa1
	fstx.s	$fa1, $t0, $a4
	addi.d	$t2, $t2, 1
	addi.d	$a4, $a4, 4
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, -1
	beqz	$t4, .LBB2_78
.LBB2_98:                               # %for.body489
                                        #   Parent Loop BB2_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a5, 0
	fldx.s	$fa7, $s6, $a4
	fldx.s	$fa2, $a7, $a4
	fcvt.d.s	$fa6, $fa1
	fcvt.d.s	$ft4, $fa7
	fsub.d	$ft1, $ft10, $ft4
	fmul.d	$fa3, $ft1, $fa6
	fmul.d	$fa3, $fa3, $fs1
	fmul.d	$fa3, $fa3, $ft11
	fcvt.s.d	$fa3, $fa3
	fadd.s	$fa5, $fa2, $fa3
	fsub.d	$fa4, $ft10, $fa6
	fmul.d	$fa3, $fa4, $ft4
	fmul.d	$fa3, $fa3, $fs1
	fmul.d	$ft0, $fa3, $ft11
	fld.s	$fa3, $a6, 0
	fldx.s	$ft2, $s2, $a4
	fcvt.s.d	$ft0, $ft0
	fadd.s	$ft0, $fa5, $ft0
	fcvt.d.s	$fa5, $fa3
	fcvt.d.s	$ft3, $ft2
	fsub.d	$ft5, $ft10, $ft3
	fmul.d	$ft6, $ft5, $fa5
	fmul.d	$ft6, $ft6, $fs1
	fmul.d	$ft6, $ft6, $ft11
	fcvt.s.d	$ft6, $ft6
	fadd.s	$ft6, $ft0, $ft6
	fsub.d	$ft0, $ft10, $fa5
	fmul.d	$ft7, $ft0, $ft3
	fmul.d	$ft7, $ft7, $fs1
	fld.s	$ft8, $a1, 4
	fmul.d	$ft7, $ft7, $ft11
	fcvt.s.d	$ft7, $ft7
	fadd.s	$fs0, $ft6, $ft7
	fcvt.d.s	$ft6, $ft8
	fldx.s	$ft7, $s1, $a4
	fadd.d	$ft5, $ft5, $ft4
	fldx.s	$ft4, $s0, $a4
	fsub.d	$ft8, $ft10, $ft6
	fcvt.d.s	$ft7, $ft7
	fsub.d	$ft7, $ft10, $ft7
	fcvt.d.s	$ft4, $ft4
	fsub.d	$ft4, $ft7, $ft4
	fmul.d	$ft6, $ft4, $ft6
	fmadd.d	$ft5, $ft8, $ft5, $ft6
	fmul.d	$ft5, $ft5, $ft11
	fmul.d	$ft5, $ft5, $fs1
	fcvt.s.d	$ft5, $ft5
	fadd.s	$ft5, $fa0, $ft5
	fcmp.cule.s	$fcc0, $ft5, $fs0
	stx.w	$zero, $t1, $a4
	bcnez	$fcc0, .LBB2_100
# %bb.99:                               # %if.then576
                                        #   in Loop: Header=BB2_98 Depth=2
	add.d	$t6, $t5, $t3
	stx.w	$t6, $t1, $a4
	fmov.s	$fs0, $ft5
.LBB2_100:                              # %if.end579
                                        #   in Loop: Header=BB2_98 Depth=2
	fld.s	$ft5, $a1, 0
	fcvt.d.s	$ft5, $ft5
	fsub.d	$ft6, $ft10, $ft5
	fadd.d	$ft1, $ft1, $ft3
	fmul.d	$ft3, $ft4, $ft5
	fmadd.d	$ft1, $ft6, $ft1, $ft3
	fmul.d	$ft1, $ft1, $ft11
	fmul.d	$ft1, $ft1, $fs1
	fcvt.s.d	$ft1, $ft1
	fadd.s	$ft1, $fa2, $ft1
	fcmp.cle.s	$fcc0, $fa0, $ft1
	move	$t6, $t2
	bcnez	$fcc0, .LBB2_102
# %bb.101:                              # %if.then617
                                        #   in Loop: Header=BB2_98 Depth=2
	fadd.s	$fa7, $fa7, $ft2
	fmul.s	$fa7, $fa7, $ft9
	fcvt.d.s	$fa7, $fa7
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa7, $ft11, $fa0
	fcvt.s.d	$ft1, $fa0
	move	$t6, $t5
.LBB2_102:                              # %if.end630
                                        #   in Loop: Header=BB2_98 Depth=2
	fldx.s	$fa0, $s7, $a4
	fcvt.d.s	$fa0, $fa0
	fld.s	$fa7, $a2, 0
	fadd.d	$ft0, $ft0, $fa6
	fld.s	$fa6, $a3, 0
	fsub.d	$ft2, $ft10, $fa0
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa7, $ft10, $fa7
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa7, $fa6
	fmul.d	$fa0, $fa6, $fa0
	fmadd.d	$fa0, $ft2, $ft0, $fa0
	fldx.s	$fa7, $fp, $a4
	fmul.d	$fa0, $fa0, $ft11
	fmul.d	$fa0, $fa0, $fs1
	fcvt.s.d	$fa0, $fa0
	fadd.s	$ft0, $fa7, $fa0
	fcmp.cule.s	$fcc0, $ft0, $fs0
	fmov.s	$fa0, $ft1
	move	$t5, $t6
	bcnez	$fcc0, .LBB2_104
# %bb.103:                              # %if.then665
                                        #   in Loop: Header=BB2_98 Depth=2
	ldx.w	$t6, $s8, $a4
	sub.d	$t6, $s5, $t6
	stx.w	$t6, $t1, $a4
	fmov.s	$fs0, $ft0
.LBB2_104:                              # %if.end667
                                        #   in Loop: Header=BB2_98 Depth=2
	add.d	$t6, $s7, $a4
	fld.s	$ft0, $t6, -4
	fcvt.d.s	$ft0, $ft0
	fsub.d	$ft1, $ft10, $ft0
	fadd.d	$fa4, $fa4, $fa5
	fmul.d	$fa5, $fa6, $ft0
	fmadd.d	$fa4, $ft1, $fa4, $fa5
	fmul.d	$fa4, $fa4, $ft11
	fmul.d	$fa4, $fa4, $fs1
	fcvt.s.d	$fa4, $fa4
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa7
	bceqz	$fcc0, .LBB2_96
# %bb.105:                              # %if.else702
                                        #   in Loop: Header=BB2_98 Depth=2
	beq	$s5, $t8, .LBB2_97
# %bb.106:                              # %if.then705
                                        #   in Loop: Header=BB2_98 Depth=2
	fldx.s	$fa2, $fp, $a4
	fadd.s	$fa1, $fa1, $fa3
	fmul.s	$fa1, $fa1, $ft9
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa1, $fa1, $ft11, $fa2
	fcvt.s.d	$fa1, $fa1
	fstx.s	$fa1, $fp, $a4
	b	.LBB2_97
.LBB2_107:                              # %vector.ph800
                                        #   in Loop: Header=BB2_79 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a3, $a1
	add.d	$a1, $s4, $a1
	addi.d	$a2, $s4, 16
	addi.d	$a3, $a3, 16
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_108:                              # %vector.body804
                                        #   Parent Loop BB2_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vld	$vr2, $a2, -16
	vld	$vr3, $a2, 0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB2_108
# %bb.109:                              # %middle.block815
                                        #   in Loop: Header=BB2_79 Depth=1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	bne	$a3, $a4, .LBB2_84
	b	.LBB2_85
.LBB2_110:
	movgr2fr.w	$fs0, $zero
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB2_112
	b	.LBB2_126
.LBB2_111:                              # %for.end738.loopexit
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $s1, 0
	move	$t6, $s4
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	bnez	$a1, .LBB2_126
.LBB2_112:                              # %for.cond741.preheader
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_119
# %bb.113:                              # %for.body745.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_117
# %bb.114:                              # %vector.ph822
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_2)
	vld	$vr1, $a5, %pc_lo12(.LCPI2_2)
	pcalau12i	$a5, %pc_hi20(.LCPI2_3)
	vld	$vr2, $a5, %pc_lo12(.LCPI2_3)
	vreplgr2vr.d	$vr3, $s6
	addi.d	$a5, $t6, 4
	vldi	$vr4, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_115:                              # %vector.body829
                                        # =>This Inner Loop Header: Depth=1
	vsub.d	$vr5, $vr3, $vr2
	vsub.d	$vr6, $vr3, $vr1
	vpickev.w	$vr5, $vr6, $vr5
	vmul.w	$vr5, $vr0, $vr5
	vpickve2gr.w	$a7, $vr5, 3
	movgr2fr.w	$fa6, $a7
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$a7, $vr5, 2
	movgr2fr.w	$fa7, $a7
	ffint.d.w	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vpickve2gr.w	$a7, $vr5, 1
	movgr2fr.w	$fa6, $a7
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$a7, $vr5, 0
	movgr2fr.w	$fa5, $a7
	ffint.d.w	$fa5, $fa5
	vld	$vr8, $a5, 0
	vextrins.d	$vr5, $vr6, 16
	vfmul.d	$vr5, $vr5, $vr4
	vfmul.d	$vr6, $vr7, $vr4
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr9, $vr8, 0
	fcvt.d.s	$ft1, $ft1
	vextrins.d	$vr9, $vr7, 16
	vreplvei.w	$vr7, $vr8, 3
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr8, 2
	fcvt.d.s	$ft0, $ft0
	vextrins.d	$vr8, $vr7, 16
	vfadd.d	$vr6, $vr8, $vr6
	vfadd.d	$vr5, $vr9, $vr5
	vreplvei.d	$vr7, $vr5, 1
	fcvt.s.d	$fa7, $fa7
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr7, 16
	vreplvei.d	$vr7, $vr6, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr5, $vr7, 32
	vreplvei.d	$vr6, $vr6, 1
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 48
	vst	$vr5, $a5, 0
	vaddi.du	$vr2, $vr2, 4
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB2_115
# %bb.116:                              # %middle.block836
	beq	$a2, $a4, .LBB2_119
.LBB2_117:                              # %for.body745.preheader
	sub.w	$a2, $s6, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t6, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_118:                              # %for.body745
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
	bnez	$a1, .LBB2_118
.LBB2_119:                              # %for.cond758.preheader
	blez	$t0, .LBB2_126
# %bb.120:                              # %for.body762.lr.ph
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a2, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(R__align.lastverticalw)
	fneg.d	$fa1, $fa1
	addi.d	$a0, $a2, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 2
	ori	$a0, $zero, 1
	bltu	$a3, $a4, .LBB2_124
# %bb.121:                              # %vector.ph841
	move	$a5, $a3
	bstrins.d	$a5, $zero, 0, 0
	ori	$a0, $a3, 1
	addi.d	$a6, $a1, 8
	vldi	$vr2, -928
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_122:                              # %vector.body844
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t0, $a4, 31, 0
	addi.d	$t1, $a4, -1
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa3, $t1
	ffint.d.l	$fa3, $fa3
	movgr2fr.d	$fa4, $t0
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa4, $fa4, $fa2
	fld.s	$fa5, $a6, -4
	fld.s	$fa6, $a6, 0
	fsub.d	$fa3, $fa0, $fa3
	fsub.d	$fa4, $fa0, $fa4
	fcvt.d.s	$fa5, $fa5
	fcvt.d.s	$fa6, $fa6
	fmadd.d	$fa3, $fa1, $fa3, $fa5
	fmadd.d	$fa4, $fa1, $fa4, $fa6
	fcvt.s.d	$fa3, $fa3
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa3, $a6, -4
	fst.s	$fa4, $a6, 0
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -2
	addi.w	$a4, $a4, 2
	bnez	$a7, .LBB2_122
# %bb.123:                              # %middle.block849
	beq	$a3, $a5, .LBB2_126
.LBB2_124:                              # %for.body762.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB2_125:                              # %for.body762
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
	bnez	$a2, .LBB2_125
.LBB2_126:                              # %if.end777
	move	$s8, $t6
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(R__align.lastverticalw)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(R__align.mseq1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(R__align.mseq2)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ijp)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	add.w	$s2, $a0, $s7
	addi.w	$s4, $s2, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 0
	addi.w	$a1, $s7, 0
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	addi.w	$a1, $s6, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	bnez	$s0, .LBB2_133
# %bb.127:                              # %if.else780
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_144
# %bb.128:                              # %if.else.i453
	move	$a7, $s8
	fld.s	$fa0, $fp, 0
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	blez	$a2, .LBB2_139
# %bb.129:                              # %for.body.lr.ph.i569
	slli.d	$a2, $s7, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s6, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB2_131
	.p2align	4, , 16
.LBB2_130:                              # %for.inc.i579
                                        #   in Loop: Header=BB2_131 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$fp, $fp, 4
	beqz	$a4, .LBB2_139
.LBB2_131:                              # %for.body.i572
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_130
# %bb.132:                              # %if.then16.i577
                                        #   in Loop: Header=BB2_131 Depth=1
	ldx.d	$a6, $s1, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_130
.LBB2_133:                              # %if.then779
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_152
# %bb.134:                              # %if.else.i
	move	$a7, $s8
	fld.s	$fa0, $fp, 0
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	blez	$a2, .LBB2_147
# %bb.135:                              # %for.body.lr.ph.i438
	slli.d	$a2, $s7, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s6, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB2_137
	.p2align	4, , 16
.LBB2_136:                              # %for.inc.i
                                        #   in Loop: Header=BB2_137 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$fp, $fp, 4
	beqz	$a4, .LBB2_147
.LBB2_137:                              # %for.body.i440
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_136
# %bb.138:                              # %if.then16.i
                                        #   in Loop: Header=BB2_137 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_136
.LBB2_139:                              # %for.cond24.preheader.i455
	blez	$a1, .LBB2_144
# %bb.140:                              # %for.body27.lr.ph.i554
	slli.d	$a2, $s7, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s6, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s6, 30, 0
	sub.d	$a5, $zero, $s6
	b	.LBB2_142
	.p2align	4, , 16
.LBB2_141:                              # %for.inc43.i565
                                        #   in Loop: Header=BB2_142 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 4
	beqz	$a4, .LBB2_144
.LBB2_142:                              # %for.body27.i558
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_141
# %bb.143:                              # %if.then32.i563
                                        #   in Loop: Header=BB2_142 Depth=1
	ldx.d	$a6, $s1, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_141
.LBB2_144:                              # %if.end46.i458
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_160
# %bb.145:                              # %for.body51.preheader.i460
	addi.d	$a3, $s7, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_155
# %bb.146:
	move	$a3, $zero
	b	.LBB2_158
.LBB2_147:                              # %for.cond24.preheader.i
	blez	$a1, .LBB2_152
# %bb.148:                              # %for.body27.lr.ph.i
	slli.d	$a2, $s7, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s6, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s6, 30, 0
	sub.d	$a5, $zero, $s6
	b	.LBB2_150
	.p2align	4, , 16
.LBB2_149:                              # %for.inc43.i
                                        #   in Loop: Header=BB2_150 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 4
	beqz	$a4, .LBB2_152
.LBB2_150:                              # %for.body27.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_149
# %bb.151:                              # %if.then32.i
                                        #   in Loop: Header=BB2_150 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_149
.LBB2_152:                              # %if.end46.i
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_168
# %bb.153:                              # %for.body51.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_163
# %bb.154:
	move	$a3, $zero
	b	.LBB2_166
.LBB2_155:                              # %vector.ph928
	pcalau12i	$a4, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_4)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s1, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_156:                              # %vector.body931
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, -16
	ld.d	$a7, $a4, -8
	ld.d	$t0, $a4, 0
	ld.d	$t1, $a4, 8
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vstelm.w	$vr2, $a6, 0, 0
	vstelm.w	$vr2, $a7, 0, 1
	vstelm.w	$vr1, $t0, 0, 0
	vstelm.w	$vr1, $t1, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB2_156
# %bb.157:                              # %middle.block939
	beq	$a2, $a3, .LBB2_160
.LBB2_158:                              # %for.body51.i462.preheader
	alsl.d	$a4, $a3, $s1, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_159:                              # %for.body51.i462
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_159
.LBB2_160:                              # %for.cond59.preheader.i467
	bltz	$a1, .LBB2_176
# %bb.161:                              # %for.body63.lr.ph.i469
	ld.d	$a2, $s1, 0
	addi.d	$a4, $s6, 1
	bstrpick.d	$a3, $a4, 31, 0
	ori	$a5, $zero, 8
	bgeu	$a3, $a5, .LBB2_171
# %bb.162:
	move	$a4, $zero
	b	.LBB2_174
.LBB2_163:                              # %vector.ph854
	pcalau12i	$a4, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_4)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_164:                              # %vector.body857
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, -16
	ld.d	$a7, $a4, -8
	ld.d	$t0, $a4, 0
	ld.d	$t1, $a4, 8
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vstelm.w	$vr2, $a6, 0, 0
	vstelm.w	$vr2, $a7, 0, 1
	vstelm.w	$vr1, $t0, 0, 0
	vstelm.w	$vr1, $t1, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB2_164
# %bb.165:                              # %middle.block864
	beq	$a2, $a3, .LBB2_168
.LBB2_166:                              # %for.body51.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_167:                              # %for.body51.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_167
.LBB2_168:                              # %for.cond59.preheader.i
	ld.d	$a2, $sp, 544
	bltz	$a1, .LBB2_218
# %bb.169:                              # %for.body63.lr.ph.i
	ld.d	$a3, $ra, 0
	addi.d	$a5, $s6, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 8
	bgeu	$a4, $a6, .LBB2_213
# %bb.170:
	move	$a5, $zero
	b	.LBB2_216
.LBB2_171:                              # %vector.ph944
	bstrpick.d	$a4, $a4, 31, 3
	slli.d	$a4, $a4, 3
	pcalau12i	$a5, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a5, %pc_lo12(.LCPI2_5)
	addi.d	$a5, $a2, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_172:                              # %vector.body947
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a5, -16
	vst	$vr4, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_172
# %bb.173:                              # %middle.block953
	beq	$a3, $a4, .LBB2_176
.LBB2_174:                              # %for.body63.i471.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB2_175:                              # %for.body63.i471
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB2_175
.LBB2_176:                              # %for.end71.i477
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	add.d	$s8, $a2, $a1
	stx.b	$zero, $a2, $a1
	add.d	$a0, $a0, $a3
	add.d	$s4, $a0, $a1
	stx.b	$zero, $a0, $a1
	bltz	$s2, .LBB2_206
# %bb.177:                              # %for.body82.i485.preheader
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	ori	$a1, $zero, 111
	ori	$a2, $zero, 45
	ori	$a3, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a4, $zero, 16
	.p2align	4, , 16
.LBB2_178:                              # %for.body82.i485
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_197 Depth 2
                                        #     Child Loop BB2_201 Depth 2
                                        #     Child Loop BB2_186 Depth 2
                                        #     Child Loop BB2_190 Depth 2
	addi.w	$a7, $s7, 0
	slli.d	$a6, $a7, 3
	ldx.d	$a6, $s1, $a6
	addi.w	$t0, $s6, 0
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a6, $t1
	bltz	$t1, .LBB2_181
# %bb.179:                              # %if.else96.i496
                                        #   in Loop: Header=BB2_178 Depth=1
	beqz	$t1, .LBB2_192
# %bb.180:                              # %if.then103.i498
                                        #   in Loop: Header=BB2_178 Depth=1
	sub.d	$a6, $s7, $t1
	b	.LBB2_193
	.p2align	4, , 16
.LBB2_181:                              # %if.then89.i552
                                        #   in Loop: Header=BB2_178 Depth=1
	addi.d	$a6, $s7, -1
	nor	$t2, $a6, $zero
	add.w	$t3, $s7, $t2
	bnez	$t3, .LBB2_194
	.p2align	4, , 16
.LBB2_182:                              # %while.end.i515
                                        #   in Loop: Header=BB2_178 Depth=1
	beq	$t1, $a0, .LBB2_203
.LBB2_183:                              # %while.body122.preheader.i520
                                        #   in Loop: Header=BB2_178 Depth=1
	addi.w	$t2, $zero, -9
	nor	$t5, $t1, $zero
	bltu	$t2, $t1, .LBB2_188
# %bb.184:                              # %while.body122.preheader.i520
                                        #   in Loop: Header=BB2_178 Depth=1
	sub.d	$t2, $s8, $s4
	bltu	$t2, $a3, .LBB2_188
# %bb.185:                              # %vector.ph962
                                        #   in Loop: Header=BB2_178 Depth=1
	bstrpick.d	$t2, $t5, 30, 3
	slli.d	$t6, $t2, 3
	sub.d	$t4, $t5, $t6
	sub.d	$t2, $s4, $t6
	sub.d	$t3, $s8, $t6
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.w	$vr3, $a5, 0
	addi.d	$a5, $s8, -4
	addi.d	$t7, $s4, -4
	move	$t8, $t6
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB2_186:                              # %vector.body966
                                        #   Parent Loop BB2_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.w	$vr1, $a5, 0, 0
	vstelm.w	$vr1, $a5, -4, 0
	vstelm.w	$vr2, $t7, 0, 0
	vstelm.w	$vr2, $t7, -4, 0
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$t8, $t8, -8
	addi.d	$a5, $a5, -8
	addi.d	$t7, $t7, -8
	bnez	$t8, .LBB2_186
# %bb.187:                              # %middle.block975
                                        #   in Loop: Header=BB2_178 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vhaddw.d.w	$vr3, $vr3, $vr3
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$a5, $vr3, 0
	bne	$t6, $t5, .LBB2_189
	b	.LBB2_191
	.p2align	4, , 16
.LBB2_188:                              #   in Loop: Header=BB2_178 Depth=1
	move	$t4, $t5
	move	$t2, $s4
	move	$t3, $s8
.LBB2_189:                              # %while.body122.i522.preheader
                                        #   in Loop: Header=BB2_178 Depth=1
	add.d	$a5, $a5, $t4
	.p2align	4, , 16
.LBB2_190:                              # %while.body122.i522
                                        #   Parent Loop BB2_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a2, $t3, -1
	addi.d	$t3, $t3, -1
	st.b	$a1, $t2, -1
	addi.w	$t4, $t4, -1
	addi.d	$t2, $t2, -1
	bnez	$t4, .LBB2_190
.LBB2_191:                              # %while.end126.i532
                                        #   in Loop: Header=BB2_178 Depth=1
	bgtz	$a7, .LBB2_204
	b	.LBB2_207
	.p2align	4, , 16
.LBB2_192:                              # %if.else110.i550
                                        #   in Loop: Header=BB2_178 Depth=1
	addi.d	$a6, $s7, -1
.LBB2_193:                              # %if.end114.i500
                                        #   in Loop: Header=BB2_178 Depth=1
	move	$t1, $a0
	nor	$t2, $a6, $zero
	add.w	$t3, $s7, $t2
	beqz	$t3, .LBB2_182
.LBB2_194:                              # %while.body.i506.preheader
                                        #   in Loop: Header=BB2_178 Depth=1
	bltu	$t3, $a4, .LBB2_199
# %bb.195:                              # %while.body.i506.preheader
                                        #   in Loop: Header=BB2_178 Depth=1
	sub.d	$t4, $s8, $s4
	bltu	$t4, $a4, .LBB2_199
# %bb.196:                              # %vector.ph988
                                        #   in Loop: Header=BB2_178 Depth=1
	bstrpick.d	$t6, $t3, 31, 0
	bstrpick.d	$t4, $t6, 31, 4
	slli.d	$t7, $t4, 4
	sub.d	$t3, $t3, $t7
	sub.d	$t4, $s4, $t7
	sub.d	$t5, $s8, $t7
	addi.d	$t8, $s8, -16
	addi.d	$fp, $s4, -16
	move	$s0, $t7
	.p2align	4, , 16
.LBB2_197:                              # %vector.body992
                                        #   Parent Loop BB2_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $t8, 0
	vst	$vr1, $fp, 0
	addi.d	$s0, $s0, -16
	addi.d	$t8, $t8, -16
	addi.d	$fp, $fp, -16
	bnez	$s0, .LBB2_197
# %bb.198:                              # %middle.block999
                                        #   in Loop: Header=BB2_178 Depth=1
	bne	$t7, $t6, .LBB2_200
	b	.LBB2_202
	.p2align	4, , 16
.LBB2_199:                              #   in Loop: Header=BB2_178 Depth=1
	move	$t4, $s4
	move	$t5, $s8
.LBB2_200:                              # %while.body.i506.preheader1009
                                        #   in Loop: Header=BB2_178 Depth=1
	move	$t6, $t4
	move	$t7, $t5
	.p2align	4, , 16
.LBB2_201:                              # %while.body.i506
                                        #   Parent Loop BB2_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t5, $t7, -1
	st.b	$a1, $t7, -1
	addi.d	$t4, $t6, -1
	addi.w	$t3, $t3, -1
	st.b	$a2, $t6, -1
	move	$t6, $t4
	move	$t7, $t5
	bnez	$t3, .LBB2_201
.LBB2_202:                              # %while.end.loopexit.i514
                                        #   in Loop: Header=BB2_178 Depth=1
	add.d	$a5, $s7, $a5
	add.d	$a5, $t2, $a5
	move	$s8, $t5
	move	$s4, $t4
	bne	$t1, $a0, .LBB2_183
.LBB2_203:                              #   in Loop: Header=BB2_178 Depth=1
	move	$t3, $s8
	move	$t2, $s4
	blez	$a7, .LBB2_207
.LBB2_204:                              # %while.end126.i532
                                        #   in Loop: Header=BB2_178 Depth=1
	blez	$t0, .LBB2_207
# %bb.205:                              # %if.end132.i
                                        #   in Loop: Header=BB2_178 Depth=1
	add.d	$s6, $t1, $s6
	addi.d	$s8, $t3, -1
	st.b	$a1, $t3, -1
	addi.d	$s4, $t2, -1
	addi.w	$a5, $a5, 2
	st.b	$a1, $t2, -1
	move	$s7, $a6
	bge	$s2, $a5, .LBB2_178
.LBB2_206:                              # %for.end138.i
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	bgtz	$s6, .LBB2_208
	b	.LBB2_210
.LBB2_207:
	move	$s8, $t3
	move	$s4, $t2
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	blez	$s6, .LBB2_210
.LBB2_208:                              # %for.body142.preheader.i
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	move	$s0, $s6
	.p2align	4, , 16
.LBB2_209:                              # %for.body142.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s5, $s5, 8
	bnez	$s0, .LBB2_209
.LBB2_210:                              # %for.cond150.preheader.i
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	blez	$s1, .LBB2_258
# %bb.211:                              # %for.body153.preheader.i
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB2_212:                              # %for.body153.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB2_212
	b	.LBB2_258
.LBB2_213:                              # %vector.ph869
	bstrpick.d	$a5, $a5, 31, 3
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a6, %pc_lo12(.LCPI2_5)
	addi.d	$a6, $a3, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_214:                              # %vector.body872
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a6, -16
	vst	$vr4, $a6, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB2_214
# %bb.215:                              # %middle.block878
	beq	$a4, $a5, .LBB2_218
.LBB2_216:                              # %for.body63.i.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB2_217:                              # %for.body63.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB2_217
.LBB2_218:                              # %for.end71.i
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	add.d	$s8, $a3, $a1
	stx.b	$zero, $a3, $a1
	add.d	$a3, $a0, $a4
	add.d	$s4, $a3, $a1
	stx.b	$zero, $a3, $a1
	st.w	$zero, $a2, 0
	bltz	$s2, .LBB2_251
# %bb.219:                              # %for.body82.i.preheader
	move	$t0, $zero
	addi.w	$a1, $zero, -1
	ori	$a3, $zero, 111
	ori	$a4, $zero, 45
	ori	$a5, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a6, $zero, 16
	move	$a7, $s6
	move	$a0, $s2
	.p2align	4, , 16
.LBB2_220:                              # %for.body82.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_239 Depth 2
                                        #     Child Loop BB2_243 Depth 2
                                        #     Child Loop BB2_228 Depth 2
                                        #     Child Loop BB2_232 Depth 2
	addi.w	$t2, $s7, 0
	slli.d	$t5, $t2, 3
	ldx.d	$t1, $ra, $t5
	addi.w	$t3, $a7, 0
	slli.d	$t6, $t3, 2
	ldx.w	$t4, $t1, $t6
	bltz	$t4, .LBB2_223
# %bb.221:                              # %if.else96.i
                                        #   in Loop: Header=BB2_220 Depth=1
	beqz	$t4, .LBB2_234
# %bb.222:                              # %if.then103.i
                                        #   in Loop: Header=BB2_220 Depth=1
	sub.d	$t1, $s7, $t4
	b	.LBB2_235
	.p2align	4, , 16
.LBB2_223:                              # %if.then89.i
                                        #   in Loop: Header=BB2_220 Depth=1
	addi.d	$t1, $s7, -1
	nor	$t7, $t1, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB2_236
	.p2align	4, , 16
.LBB2_224:                              # %while.end.i
                                        #   in Loop: Header=BB2_220 Depth=1
	beq	$t4, $a1, .LBB2_245
.LBB2_225:                              # %while.body122.preheader.i
                                        #   in Loop: Header=BB2_220 Depth=1
	addi.w	$t7, $zero, -9
	nor	$s0, $t4, $zero
	bltu	$t7, $t4, .LBB2_230
# %bb.226:                              # %while.body122.preheader.i
                                        #   in Loop: Header=BB2_220 Depth=1
	sub.d	$t7, $s8, $s4
	bltu	$t7, $a5, .LBB2_230
# %bb.227:                              # %vector.ph887
                                        #   in Loop: Header=BB2_220 Depth=1
	bstrpick.d	$t7, $s0, 30, 3
	slli.d	$s1, $t7, 3
	sub.d	$fp, $s0, $s1
	sub.d	$t7, $s4, $s1
	sub.d	$t8, $s8, $s1
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.w	$vr3, $t0, 0
	addi.d	$t0, $s8, -4
	addi.d	$s2, $s4, -4
	move	$s4, $s1
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB2_228:                              # %vector.body891
                                        #   Parent Loop BB2_220 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.w	$vr1, $t0, 0, 0
	vstelm.w	$vr1, $t0, -4, 0
	vstelm.w	$vr2, $s2, 0, 0
	vstelm.w	$vr2, $s2, -4, 0
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$s4, $s4, -8
	addi.d	$t0, $t0, -8
	addi.d	$s2, $s2, -8
	bnez	$s4, .LBB2_228
# %bb.229:                              # %middle.block899
                                        #   in Loop: Header=BB2_220 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vhaddw.d.w	$vr3, $vr3, $vr3
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$t0, $vr3, 0
	move	$s2, $a0
	bne	$s1, $s0, .LBB2_231
	b	.LBB2_233
	.p2align	4, , 16
.LBB2_230:                              #   in Loop: Header=BB2_220 Depth=1
	move	$fp, $s0
	move	$t7, $s4
	move	$t8, $s8
.LBB2_231:                              # %while.body122.i.preheader
                                        #   in Loop: Header=BB2_220 Depth=1
	add.d	$t0, $t0, $fp
	.p2align	4, , 16
.LBB2_232:                              # %while.body122.i
                                        #   Parent Loop BB2_220 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a3, $t7, -1
	addi.w	$fp, $fp, -1
	addi.d	$t7, $t7, -1
	bnez	$fp, .LBB2_232
.LBB2_233:                              # %while.end126.i
                                        #   in Loop: Header=BB2_220 Depth=1
	ld.d	$fp, $sp, 424                   # 8-byte Folded Reload
	bne	$t2, $fp, .LBB2_246
	b	.LBB2_248
	.p2align	4, , 16
.LBB2_234:                              # %if.else110.i
                                        #   in Loop: Header=BB2_220 Depth=1
	addi.d	$t1, $s7, -1
.LBB2_235:                              # %if.end114.i
                                        #   in Loop: Header=BB2_220 Depth=1
	move	$t4, $a1
	nor	$t7, $t1, $zero
	add.w	$t8, $s7, $t7
	beqz	$t8, .LBB2_224
.LBB2_236:                              # %while.body.i434.preheader
                                        #   in Loop: Header=BB2_220 Depth=1
	bltu	$t8, $a6, .LBB2_241
# %bb.237:                              # %while.body.i434.preheader
                                        #   in Loop: Header=BB2_220 Depth=1
	sub.d	$fp, $s8, $s4
	bltu	$fp, $a6, .LBB2_241
# %bb.238:                              # %vector.ph910
                                        #   in Loop: Header=BB2_220 Depth=1
	bstrpick.d	$s1, $t8, 31, 0
	bstrpick.d	$fp, $s1, 31, 4
	slli.d	$s2, $fp, 4
	sub.d	$t8, $t8, $s2
	sub.d	$fp, $s4, $s2
	sub.d	$s0, $s8, $s2
	addi.d	$s8, $s8, -16
	addi.d	$s4, $s4, -16
	move	$ra, $s2
	.p2align	4, , 16
.LBB2_239:                              # %vector.body914
                                        #   Parent Loop BB2_220 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $s8, 0
	vst	$vr1, $s4, 0
	addi.d	$ra, $ra, -16
	addi.d	$s8, $s8, -16
	addi.d	$s4, $s4, -16
	bnez	$ra, .LBB2_239
# %bb.240:                              # %middle.block921
                                        #   in Loop: Header=BB2_220 Depth=1
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB2_242
	b	.LBB2_244
	.p2align	4, , 16
.LBB2_241:                              #   in Loop: Header=BB2_220 Depth=1
	move	$fp, $s4
	move	$s0, $s8
.LBB2_242:                              # %while.body.i434.preheader1014
                                        #   in Loop: Header=BB2_220 Depth=1
	move	$s1, $fp
	move	$s2, $s0
	.p2align	4, , 16
.LBB2_243:                              # %while.body.i434
                                        #   Parent Loop BB2_220 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s0, $s2, -1
	st.b	$a3, $s2, -1
	addi.d	$fp, $s1, -1
	addi.w	$t8, $t8, -1
	st.b	$a4, $s1, -1
	move	$s1, $fp
	move	$s2, $s0
	bnez	$t8, .LBB2_243
.LBB2_244:                              # %while.end.loopexit.i
                                        #   in Loop: Header=BB2_220 Depth=1
	add.d	$t0, $s7, $t0
	add.d	$t0, $t7, $t0
	move	$s8, $s0
	move	$s4, $fp
	move	$s2, $a0
	bne	$t4, $a1, .LBB2_225
.LBB2_245:                              #   in Loop: Header=BB2_220 Depth=1
	move	$t8, $s8
	move	$t7, $s4
	ld.d	$fp, $sp, 424                   # 8-byte Folded Reload
	beq	$t2, $fp, .LBB2_248
.LBB2_246:                              # %while.end126.i
                                        #   in Loop: Header=BB2_220 Depth=1
	addi.w	$fp, $s6, 0
	beq	$t3, $fp, .LBB2_248
# %bb.247:                              # %if.else132.i
                                        #   in Loop: Header=BB2_220 Depth=1
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $fp, %pc_lo12(impmtx)
	ldx.d	$t5, $fp, $t5
	fldx.s	$fa3, $t5, $t6
	fld.s	$fa4, $a2, 0
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $a2, 0
.LBB2_248:                              # %if.end135.i
                                        #   in Loop: Header=BB2_220 Depth=1
	blez	$t2, .LBB2_252
# %bb.249:                              # %if.end135.i
                                        #   in Loop: Header=BB2_220 Depth=1
	blez	$t3, .LBB2_252
# %bb.250:                              # %if.end142.i
                                        #   in Loop: Header=BB2_220 Depth=1
	add.d	$a7, $t4, $a7
	addi.d	$s8, $t8, -1
	st.b	$a3, $t8, -1
	addi.d	$s4, $t7, -1
	addi.w	$t0, $t0, 2
	st.b	$a3, $t7, -1
	move	$s7, $t1
	bge	$s2, $t0, .LBB2_220
.LBB2_251:                              # %for.end148.i
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	bgtz	$s6, .LBB2_253
	b	.LBB2_255
.LBB2_252:
	move	$s8, $t8
	move	$s4, $t7
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	blez	$s6, .LBB2_255
.LBB2_253:                              # %for.body152.preheader.i
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	move	$s0, $s6
	.p2align	4, , 16
.LBB2_254:                              # %for.body152.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s5, $s5, 8
	bnez	$s0, .LBB2_254
.LBB2_255:                              # %for.cond160.preheader.i
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	blez	$s1, .LBB2_258
# %bb.256:                              # %for.body163.preheader.i
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB2_257:                              # %for.body163.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB2_257
.LBB2_258:                              # %if.end782
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_260
# %bb.259:                              # %if.end782
	ori	$a0, $a4, 2881
	blt	$a3, $a0, .LBB2_261
.LBB2_260:                              # %if.then791
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
.LBB2_261:                              # %if.end793
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	blez	$s6, .LBB2_264
# %bb.262:                              # %for.body797.lr.ph
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(R__align.mseq1)
	.p2align	4, , 16
.LBB2_263:                              # %for.body797
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, -1
	addi.d	$s0, $s0, 8
	bnez	$s6, .LBB2_263
.LBB2_264:                              # %for.cond806.preheader
	blez	$s1, .LBB2_267
# %bb.265:                              # %for.body809.lr.ph
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(R__align.mseq2)
	.p2align	4, , 16
.LBB2_266:                              # %for.body809
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB2_266
.LBB2_267:                              # %for.end817
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs2, $sp, 432                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 440                  # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	R__align, .Lfunc_end2-R__align
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
	blez	$a4, .LBB3_8
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
	slli.d	$a2, $a3, 2
	fldx.s	$fa0, $a7, $a2
	fldx.s	$fa1, $t0, $a2
	ld.d	$a3, $a1, 16
	ld.d	$a7, $a1, 24
	ld.d	$t0, $a1, 32
	ld.d	$t1, $a1, 40
	fldx.s	$fa2, $a3, $a2
	fldx.s	$fa3, $a7, $a2
	fldx.s	$fa4, $t0, $a2
	fldx.s	$fa5, $t1, $a2
	ld.d	$a3, $a1, 48
	ld.d	$a7, $a1, 56
	ld.d	$t0, $a1, 64
	ld.d	$t1, $a1, 72
	fldx.s	$fa7, $a3, $a2
	fldx.s	$ft0, $a7, $a2
	fldx.s	$ft1, $t0, $a2
	fldx.s	$ft2, $t1, $a2
	ld.d	$a3, $a1, 80
	ld.d	$a7, $a1, 88
	ld.d	$t0, $a1, 96
	ld.d	$t1, $a1, 104
	fldx.s	$ft3, $a3, $a2
	fldx.s	$ft4, $a7, $a2
	fldx.s	$ft5, $t0, $a2
	fldx.s	$ft6, $t1, $a2
	ld.d	$a3, $a1, 112
	ld.d	$a7, $a1, 120
	ld.d	$t0, $a1, 128
	ld.d	$t1, $a1, 136
	fldx.s	$ft7, $a3, $a2
	fldx.s	$ft8, $a7, $a2
	fldx.s	$ft9, $t0, $a2
	fldx.s	$ft10, $t1, $a2
	ld.d	$a3, $a1, 144
	ld.d	$a7, $a1, 152
	ld.d	$t0, $a1, 160
	ld.d	$t1, $a1, 168
	fldx.s	$ft11, $a3, $a2
	fldx.s	$ft12, $a7, $a2
	fldx.s	$ft13, $t0, $a2
	fldx.s	$ft14, $t1, $a2
	ld.d	$a3, $a1, 176
	ld.d	$a7, $a1, 184
	ld.d	$t0, $a1, 192
	ld.d	$a1, $a1, 200
	fldx.s	$ft15, $a3, $a2
	fldx.s	$fs0, $a7, $a2
	fldx.s	$fs1, $t0, $a2
	fldx.s	$fs2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(n_dis)
	ld.d	$a1, $a1, %got_pc_lo12(n_dis)
	move	$a2, $zero
	movgr2fr.w	$fa6, $zero
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
	fmadd.s	$fs3, $fs3, $fa0, $fa6
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 208
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa1, $fs3
	ld.w	$t2, $t0, 312
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa2, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 416
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa3, $fs3
	ld.w	$t2, $t0, 520
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa4, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 624
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa5, $fs3
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
	ld.d	$a3, $a6, 0
	ld.wu	$a2, $a3, 0
	addi.w	$a7, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a7, .LBB3_12
# %bb.14:                               # %while.body58.lr.ph
                                        #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a7, $a5, 0
	addi.d	$a3, $a3, 4
	fmov.s	$fa0, $fa6
	.p2align	4, , 16
.LBB3_15:                               # %while.body58
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $a2, 2
	fldx.s	$fa1, $a2, $a1
	fld.s	$fa2, $a7, 0
	ld.wu	$a2, $a3, 0
	addi.d	$a7, $a7, 4
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fst.s	$fa0, $a0, 0
	addi.w	$t0, $a2, 0
	addi.d	$a3, $a3, 4
	bgez	$t0, .LBB3_15
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
	.type	imp_match_init_strictR.impalloclen,@object # @imp_match_init_strictR.impalloclen
	.local	imp_match_init_strictR.impalloclen
	.comm	imp_match_init_strictR.impalloclen,4,4
	.type	imp_match_init_strictR.nocount1,@object # @imp_match_init_strictR.nocount1
	.local	imp_match_init_strictR.nocount1
	.comm	imp_match_init_strictR.nocount1,8,8
	.type	imp_match_init_strictR.nocount2,@object # @imp_match_init_strictR.nocount2
	.local	imp_match_init_strictR.nocount2
	.comm	imp_match_init_strictR.nocount2,8,8
	.type	R__align.m,@object              # @R__align.m
	.local	R__align.m
	.comm	R__align.m,8,8
	.type	R__align.ijp,@object            # @R__align.ijp
	.local	R__align.ijp
	.comm	R__align.ijp,8,8
	.type	R__align.mp,@object             # @R__align.mp
	.local	R__align.mp
	.comm	R__align.mp,8,8
	.type	R__align.w1,@object             # @R__align.w1
	.local	R__align.w1
	.comm	R__align.w1,8,8
	.type	R__align.w2,@object             # @R__align.w2
	.local	R__align.w2
	.comm	R__align.w2,8,8
	.type	R__align.match,@object          # @R__align.match
	.local	R__align.match
	.comm	R__align.match,8,8
	.type	R__align.initverticalw,@object  # @R__align.initverticalw
	.local	R__align.initverticalw
	.comm	R__align.initverticalw,8,8
	.type	R__align.lastverticalw,@object  # @R__align.lastverticalw
	.local	R__align.lastverticalw
	.comm	R__align.lastverticalw,8,8
	.type	R__align.mseq1,@object          # @R__align.mseq1
	.local	R__align.mseq1
	.comm	R__align.mseq1,8,8
	.type	R__align.mseq2,@object          # @R__align.mseq2
	.local	R__align.mseq2
	.comm	R__align.mseq2,8,8
	.type	R__align.mseq,@object           # @R__align.mseq
	.local	R__align.mseq
	.comm	R__align.mseq,8,8
	.type	R__align.digf1,@object          # @R__align.digf1
	.local	R__align.digf1
	.comm	R__align.digf1,8,8
	.type	R__align.digf2,@object          # @R__align.digf2
	.local	R__align.digf2
	.comm	R__align.digf2,8,8
	.type	R__align.diaf1,@object          # @R__align.diaf1
	.local	R__align.diaf1
	.comm	R__align.diaf1,8,8
	.type	R__align.diaf2,@object          # @R__align.diaf2
	.local	R__align.diaf2
	.comm	R__align.diaf2,8,8
	.type	R__align.gapz1,@object          # @R__align.gapz1
	.local	R__align.gapz1
	.comm	R__align.gapz1,8,8
	.type	R__align.gapz2,@object          # @R__align.gapz2
	.local	R__align.gapz2
	.comm	R__align.gapz2,8,8
	.type	R__align.gapf1,@object          # @R__align.gapf1
	.local	R__align.gapf1
	.comm	R__align.gapf1,8,8
	.type	R__align.gapf2,@object          # @R__align.gapf2
	.local	R__align.gapf2
	.comm	R__align.gapf2,8,8
	.type	R__align.ogcp1g,@object         # @R__align.ogcp1g
	.local	R__align.ogcp1g
	.comm	R__align.ogcp1g,8,8
	.type	R__align.ogcp2g,@object         # @R__align.ogcp2g
	.local	R__align.ogcp2g
	.comm	R__align.ogcp2g,8,8
	.type	R__align.fgcp1g,@object         # @R__align.fgcp1g
	.local	R__align.fgcp1g
	.comm	R__align.fgcp1g,8,8
	.type	R__align.fgcp2g,@object         # @R__align.fgcp2g
	.local	R__align.fgcp2g
	.comm	R__align.fgcp2g,8,8
	.type	R__align.ogcp1,@object          # @R__align.ogcp1
	.local	R__align.ogcp1
	.comm	R__align.ogcp1,8,8
	.type	R__align.ogcp2,@object          # @R__align.ogcp2
	.local	R__align.ogcp2
	.comm	R__align.ogcp2,8,8
	.type	R__align.fgcp1,@object          # @R__align.fgcp1
	.local	R__align.fgcp1
	.comm	R__align.fgcp1,8,8
	.type	R__align.fgcp2,@object          # @R__align.fgcp2
	.local	R__align.fgcp2
	.comm	R__align.fgcp2,8,8
	.type	R__align.cpmx1,@object          # @R__align.cpmx1
	.local	R__align.cpmx1
	.comm	R__align.cpmx1,8,8
	.type	R__align.cpmx2,@object          # @R__align.cpmx2
	.local	R__align.cpmx2
	.comm	R__align.cpmx2,8,8
	.type	R__align.intwork,@object        # @R__align.intwork
	.local	R__align.intwork
	.comm	R__align.intwork,8,8
	.type	R__align.floatwork,@object      # @R__align.floatwork
	.local	R__align.floatwork
	.comm	R__align.floatwork,8,8
	.type	R__align.orlgth1,@object        # @R__align.orlgth1
	.local	R__align.orlgth1
	.comm	R__align.orlgth1,4,4
	.type	R__align.orlgth2,@object        # @R__align.orlgth2
	.local	R__align.orlgth2
	.comm	R__align.orlgth2,4,4
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
