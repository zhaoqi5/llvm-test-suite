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
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
	beqz	$a0, .LBB1_6
# %bb.5:                                # %if.then5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_6:                                # %if.end6
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictH.nocount2)
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
.LBB1_9:                                # %if.end14
	blez	$s4, .LBB1_22
# %bb.10:                               # %for.cond16.preheader.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
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
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictH.nocount2)
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
.LCPI2_2:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI2_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI2_6:
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
.LCPI2_4:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI2_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_7:
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
	fst.d	$fs3, $sp, 424                  # 8-byte Folded Spill
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a5
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	move	$s1, $a2
	move	$s4, $a1
	move	$s5, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$s0, %pc_hi20(H__align.orlgth1)
	ld.w	$s8, $s0, %pc_lo12(H__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mseq1)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mseq2)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bnez	$s8, .LBB2_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(H__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s0, %pc_lo12(H__align.orlgth1)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.mseq2)
.LBB2_2:                                # %if.end
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(H__align.orlgth2)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.w	$s7, $a1, %pc_lo12(H__align.orlgth2)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$s6, $a0, 0
	pcalau12i	$a0, %pc_hi20(H__align.w1)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.w2)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.initverticalw)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(H__align.lastverticalw)
	pcalau12i	$a0, %pc_hi20(H__align.m)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(H__align.mseq)
	pcalau12i	$a0, %pc_hi20(H__align.digf1)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.digf2)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.diaf1)
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.diaf2)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gappat1)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gappat2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gapz1)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gapz2)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gapf1)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.gapf2)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.ogcp1g)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.ogcp2g)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.fgcp1g)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.fgcp2g)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.cpmx1)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.cpmx2)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.floatwork)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.intwork)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s6, $sp, 384                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	blt	$s8, $fp, .LBB2_4
# %bb.3:                                # %if.end
	bge	$s7, $s6, .LBB2_8
.LBB2_4:                                # %if.then12
	pcalau12i	$s6, %pc_hi20(H__align.match)
	pcalau12i	$a0, %pc_hi20(H__align.ogcp1)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(H__align.ogcp2)
	pcalau12i	$s3, %pc_hi20(H__align.fgcp1)
	pcalau12i	$fp, %pc_hi20(H__align.fgcp2)
	blez	$s8, .LBB2_7
# %bb.5:                                # %if.then12
	blez	$s7, .LBB2_7
# %bb.6:                                # %if.then17
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(H__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(H__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(H__align.mseq)
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
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(H__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(H__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(H__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s0, %pc_lo12(H__align.orlgth1)
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(H__align.orlgth2)
.LBB2_7:                                # %if.end18
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s8
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s8, $a1, $a0
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	addi.w	$fp, $s8, 100
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	addi.w	$s3, $s7, 100
	move	$s0, $s4
	addi.w	$s4, $s7, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.w1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.w2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(H__align.match)
	addi.w	$s6, $s8, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(H__align.lastverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.m)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(H__align.mp)
	st.d	$a0, $a1, %pc_lo12(H__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s3, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(H__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.digf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.digf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.diaf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.diaf2)
	ori	$a1, $zero, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gappat1)
	ori	$a1, $zero, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gappat2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapz1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapz2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(H__align.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp1)
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp2g)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.cpmx2)
	slt	$a0, $s3, $fp
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	addi.w	$s4, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.intwork)
	st.w	$s8, $s0, %pc_lo12(H__align.orlgth1)
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(H__align.orlgth2)
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
.LBB2_8:                                # %if.end114
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	blez	$a0, .LBB2_11
# %bb.9:                                # %for.body.lr.ph
	ld.d	$a0, $s5, %pc_lo12(H__align.mseq)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.mseq1)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $fp
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB2_10
.LBB2_11:                               # %for.cond124.preheader
	blez	$s3, .LBB2_14
# %bb.12:                               # %for.body127.lr.ph
	ld.d	$a1, $s5, %pc_lo12(H__align.mseq)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.mseq2)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	.p2align	4, , 16
.LBB2_13:                               # %for.body127
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $s4, 0
	stx.b	$zero, $a4, $s6
	addi.d	$a1, $a1, 8
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, -1
	addi.d	$a0, $a0, 8
	bnez	$s3, .LBB2_13
.LBB2_14:                               # %for.end139
	ld.d	$s4, $sp, 552
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s3, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s3, 0
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	blt	$a0, $s8, .LBB2_17
# %bb.15:                               # %for.end139
	blt	$a1, $s7, .LBB2_17
# %bb.16:                               # %lor.lhs.false142.if.end167_crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB2_21
.LBB2_17:                               # %if.then145
	beqz	$a0, .LBB2_20
# %bb.18:                               # %if.then145
	beqz	$a1, .LBB2_20
# %bb.19:                               # %if.then150
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s0, %pc_lo12(H__align.orlgth1)
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.w	$s7, $a1, %pc_lo12(H__align.orlgth2)
	ld.w	$a1, $s3, 0
.LBB2_20:                               # %if.end151
	slt	$a2, $a0, $s8
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s8, $a2
	or	$s0, $a2, $a0
	slt	$a0, $a1, $s7
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	or	$s5, $a0, $a1
	addi.w	$a0, $s0, 10
	addi.w	$a1, $s5, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s0, $fp, 0
	st.w	$s5, $s3, 0
.LBB2_21:                               # %if.end167
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.cpmx1)
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a2
	pcalau12i	$a2, %pc_hi20(H__align.ijp)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(H__align.ijp)
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	move	$a0, $s5
	move	$a2, $s1
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(H__align.cpmx2)
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s6
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1g)
	bnez	$s4, .LBB2_23
# %bb.22:                               # %if.else
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_getGapPattern)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s6
	pcaddu18i	$ra, %call36(st_getGapPattern)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	b	.LBB2_24
.LBB2_23:                               # %if.then169
	ld.d	$s6, $sp, 576
	ld.d	$s7, $sp, 568
	ld.d	$s8, $sp, 560
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	move	$a5, $s8
	move	$a6, $s7
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	move	$a5, $s4
	move	$a6, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	move	$a5, $s8
	move	$a6, $s6
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s7
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s7
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	move	$a5, $s4
	move	$a6, $s6
	ld.d	$s6, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
.LBB2_24:                               # %if.end170
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf1)
	ffint.s.w	$fa0, $fs0
	xvst	$xr0, $sp, 352                  # 32-byte Folded Spill
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz1)
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz2)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s6
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(H__align.w1)
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w2)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(H__align.initverticalw)
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(H__align.cpmx2)
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.cpmx1)
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(H__align.floatwork)
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(H__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $s2
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	slli.d	$a0, $s7, 32
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	st.d	$s8, $sp, 336                   # 8-byte Folded Spill
	st.d	$fp, $sp, 344                   # 8-byte Folded Spill
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	bnez	$s3, .LBB2_26
# %bb.25:                               # %if.end176.critedge
	ori	$a7, $zero, 1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s5
	move	$a3, $zero
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	xvld	$xr10, $sp, 352                 # 32-byte Folded Reload
	b	.LBB2_36
.LBB2_26:                               # %if.then172
	blez	$s2, .LBB2_29
# %bb.27:                               # %for.body.lr.ph.i
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	move	$a2, $s0
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
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $zero
	move	$a4, $s6
	move	$a5, $s4
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB2_31
# %bb.30:                               # %if.end176.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	xvld	$xr10, $sp, 352                 # 32-byte Folded Reload
	beq	$a0, $fp, .LBB2_37
	b	.LBB2_47
.LBB2_31:                               # %iter.check
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $a0, 0
	bstrpick.d	$a0, $s7, 31, 0
	ori	$a2, $zero, 4
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	xvld	$xr10, $sp, 352                 # 32-byte Folded Reload
	bltu	$a0, $a2, .LBB2_34
# %bb.32:                               # %vector.memcheck
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 3
	alsl.d	$a2, $s7, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a3, $a1, $a2
	bgeu	$s1, $a3, .LBB2_93
# %bb.33:                               # %vector.memcheck
	add.d	$a2, $s1, $a2
	bgeu	$a1, $a2, .LBB2_93
.LBB2_34:
	move	$a2, $a1
	move	$a3, $s7
	move	$a4, $s1
	.p2align	4, , 16
.LBB2_35:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a3, .LBB2_35
.LBB2_36:                               # %if.end176
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_40
.LBB2_37:                               # %for.cond180.preheader
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	bgtz	$t7, .LBB2_61
.LBB2_38:                               # %for.cond229.preheader
	bgtz	$s6, .LBB2_77
# %bb.39:                               # %if.end312.thread
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t2, $a0, %pc_lo12(H__align.m)
	st.w	$zero, $t2, 0
	b	.LBB2_55
.LBB2_40:                               # %for.cond281.preheader
	blez	$s6, .LBB2_47
# %bb.41:                               # %for.body285.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s7, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_45
# %bb.42:                               # %vector.ph909
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a5, %pc_lo12(.LCPI2_1)
	xvreplgr2vr.w	$xr1, $a0
	addi.d	$a5, $s1, 4
	xvldi	$xr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_43:                               # %vector.body912
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr1, $xr0
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
	xvaddi.wu	$xr0, $xr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_43
# %bb.44:                               # %middle.block917
	beq	$a2, $a4, .LBB2_47
.LBB2_45:                               # %for.body285.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s1, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_46:                               # %for.body285
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
	bnez	$a1, .LBB2_46
.LBB2_47:                               # %for.cond296.preheader
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	blez	$t7, .LBB2_54
# %bb.48:                               # %for.body300.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_52
# %bb.49:                               # %vector.ph922
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a5, %pc_lo12(.LCPI2_1)
	xvreplgr2vr.w	$xr1, $a0
	addi.d	$a5, $s0, 4
	xvldi	$xr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_50:                               # %vector.body927
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr1, $xr0
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
	xvaddi.wu	$xr0, $xr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_50
# %bb.51:                               # %middle.block934
	beq	$a2, $a4, .LBB2_54
.LBB2_52:                               # %for.body300.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_53:                               # %for.body300
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
.LBB2_54:                               # %if.end312
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t2, $a0, %pc_lo12(H__align.m)
	st.w	$zero, $t2, 0
	bgtz	$s6, .LBB2_57
.LBB2_55:                               # %for.end330
	ori	$a0, $zero, 1
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	bnez	$s6, .LBB2_105
# %bb.56:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	b	.LBB2_106
.LBB2_57:                               # %iter.check941
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	addi.d	$a1, $s7, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a3, $a1, -1
	ori	$a5, $zero, 1
	ori	$a4, $zero, 4
	lu12i.w	$a2, 287172
	bltu	$a3, $a4, .LBB2_102
# %bb.58:                               # %vector.memcheck937
	sub.d	$a4, $t2, $s1
	addi.d	$a4, $a4, 4
	ori	$a6, $zero, 64
	bltu	$a4, $a6, .LBB2_102
# %bb.59:                               # %vector.main.loop.iter.check943
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB2_95
# %bb.60:
	move	$a4, $zero
	b	.LBB2_99
.LBB2_61:                               # %for.body184.lr.ph
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.gapf2)
	fcvt.d.s	$fa0, $ft2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(H__align.gappat1)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(H__align.gappat2)
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(H__align.diaf2)
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	movgr2fr.w	$fa1, $zero
	vldi	$vr2, -912
	ori	$a7, $zero, 1
	b	.LBB2_64
	.p2align	4, , 16
.LBB2_62:                               # %countnocountx.exit
                                        #   in Loop: Header=BB2_64 Depth=1
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fcvt.s.d	$fa4, $fa4
	fneg.s	$fa5, $fa7
	fmadd.s	$fa4, $fa5, $ft2, $fa4
.LBB2_63:                               # %if.end222
                                        #   in Loop: Header=BB2_64 Depth=1
	alsl.d	$t0, $a7, $s0, 2
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $t0, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	beq	$a7, $a5, .LBB2_38
.LBB2_64:                               # %for.body184
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_68 Depth 2
                                        #     Child Loop BB2_73 Depth 2
                                        #       Child Loop BB2_75 Depth 3
	slli.d	$t0, $a7, 2
	fldx.s	$fa3, $s0, $t0
	fadd.s	$fa3, $fa3, $fa1
	fstx.s	$fa3, $s0, $t0
	fldx.s	$fa4, $a0, $t0
	fld.s	$fa5, $a1, 0
	slli.d	$t0, $a7, 3
	ldx.d	$t2, $a2, $t0
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fld.s	$fa6, $t2, 4
	fsub.d	$fa5, $fa2, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fcmp.ceq.s	$fcc0, $fa6, $fa1
	fcvt.s.d	$fa4, $fa4
	bcnez	$fcc0, .LBB2_63
# %bb.65:                               # %if.then202
                                        #   in Loop: Header=BB2_64 Depth=1
	ld.w	$t0, $t2, 8
	fmov.s	$fa7, $fa1
	beqz	$t0, .LBB2_62
# %bb.66:                               # %for.body.i418.preheader
                                        #   in Loop: Header=BB2_64 Depth=1
	ld.d	$t1, $a3, 0
	fld.s	$ft0, $a4, 0
	addi.d	$t2, $t2, 16
	move	$t3, $t2
	move	$t4, $t0
	fmov.s	$fa7, $fa1
	b	.LBB2_68
	.p2align	4, , 16
.LBB2_67:                               # %for.inc.i
                                        #   in Loop: Header=BB2_68 Depth=2
	ld.w	$t4, $t3, 0
	addi.d	$t3, $t3, 8
	beqz	$t4, .LBB2_70
.LBB2_68:                               # %for.body.i418
                                        #   Parent Loop BB2_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t4, 31, 0
	bne	$a7, $t4, .LBB2_67
# %bb.69:                               # %if.then.i
                                        #   in Loop: Header=BB2_68 Depth=2
	fld.s	$fa7, $t3, -4
	fmul.s	$fa7, $ft0, $fa7
	b	.LBB2_67
	.p2align	4, , 16
.LBB2_70:                               # %for.cond4.preheader.i
                                        #   in Loop: Header=BB2_64 Depth=1
	ld.w	$t4, $t1, 8
	beqz	$t4, .LBB2_62
# %bb.71:                               #   in Loop: Header=BB2_64 Depth=1
	addi.d	$t5, $t1, 8
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_72:                               # %for.cond9.for.cond4.loopexit_crit_edge.i
                                        #   in Loop: Header=BB2_73 Depth=2
	ld.w	$t4, $t1, 8
	addi.d	$t5, $t1, 8
	beqz	$t4, .LBB2_62
.LBB2_73:                               # %for.cond9.preheader.i
                                        #   Parent Loop BB2_64 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_75 Depth 3
	move	$t3, $t1
	move	$t1, $t5
	add.w	$t4, $t4, $a6
	move	$t5, $t2
	move	$t6, $t0
	b	.LBB2_75
	.p2align	4, , 16
.LBB2_74:                               # %for.inc21.i
                                        #   in Loop: Header=BB2_75 Depth=3
	ld.w	$t6, $t5, 0
	addi.d	$t5, $t5, 8
	beqz	$t6, .LBB2_72
.LBB2_75:                               # %for.body12.i
                                        #   Parent Loop BB2_64 Depth=1
                                        #     Parent Loop BB2_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$t4, $t6, .LBB2_74
# %bb.76:                               # %if.then16.i
                                        #   in Loop: Header=BB2_75 Depth=3
	fld.s	$ft0, $t3, 12
	fld.s	$ft1, $t5, -4
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	b	.LBB2_74
.LBB2_77:                               # %for.body233.lr.ph
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.gapf1)
	fcvt.d.s	$fa0, $ft2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(H__align.gappat2)
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(H__align.gappat1)
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(H__align.diaf1)
	addi.d	$a5, $s7, 1
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	movgr2fr.w	$fa1, $zero
	vldi	$vr2, -912
	ori	$a7, $zero, 1
	b	.LBB2_80
	.p2align	4, , 16
.LBB2_78:                               # %countnocountx.exit457
                                        #   in Loop: Header=BB2_80 Depth=1
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fcvt.s.d	$fa4, $fa4
	fneg.s	$fa5, $fa7
	fmadd.s	$fa4, $fa5, $ft2, $fa4
.LBB2_79:                               # %if.end273
                                        #   in Loop: Header=BB2_80 Depth=1
	alsl.d	$t0, $a7, $s1, 2
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $t0, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	beq	$a7, $a5, .LBB2_54
.LBB2_80:                               # %for.body233
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_84 Depth 2
                                        #     Child Loop BB2_89 Depth 2
                                        #       Child Loop BB2_91 Depth 3
	slli.d	$t0, $a7, 2
	fldx.s	$fa3, $s1, $t0
	fadd.s	$fa3, $fa3, $fa1
	fstx.s	$fa3, $s1, $t0
	fldx.s	$fa4, $a0, $t0
	fld.s	$fa5, $a1, 0
	slli.d	$t0, $a7, 3
	ldx.d	$t2, $a2, $t0
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fld.s	$fa6, $t2, 4
	fsub.d	$fa5, $fa2, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fcmp.ceq.s	$fcc0, $fa6, $fa1
	fcvt.s.d	$fa4, $fa4
	bcnez	$fcc0, .LBB2_79
# %bb.81:                               # %if.then252
                                        #   in Loop: Header=BB2_80 Depth=1
	ld.w	$t0, $t2, 8
	fmov.s	$fa7, $fa1
	beqz	$t0, .LBB2_78
# %bb.82:                               # %for.body.i423.preheader
                                        #   in Loop: Header=BB2_80 Depth=1
	ld.d	$t1, $a3, 0
	fld.s	$ft0, $a4, 0
	addi.d	$t2, $t2, 16
	move	$t3, $t2
	move	$t4, $t0
	fmov.s	$fa7, $fa1
	b	.LBB2_84
	.p2align	4, , 16
.LBB2_83:                               # %for.inc.i427
                                        #   in Loop: Header=BB2_84 Depth=2
	ld.w	$t4, $t3, 0
	addi.d	$t3, $t3, 8
	beqz	$t4, .LBB2_86
.LBB2_84:                               # %for.body.i423
                                        #   Parent Loop BB2_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t4, 31, 0
	bne	$a7, $t4, .LBB2_83
# %bb.85:                               # %if.then.i454
                                        #   in Loop: Header=BB2_84 Depth=2
	fld.s	$fa7, $t3, -4
	fmul.s	$fa7, $ft0, $fa7
	b	.LBB2_83
	.p2align	4, , 16
.LBB2_86:                               # %for.cond4.preheader.i431
                                        #   in Loop: Header=BB2_80 Depth=1
	ld.w	$t4, $t1, 8
	beqz	$t4, .LBB2_78
# %bb.87:                               #   in Loop: Header=BB2_80 Depth=1
	addi.d	$t5, $t1, 8
	b	.LBB2_89
	.p2align	4, , 16
.LBB2_88:                               # %for.cond9.for.cond4.loopexit_crit_edge.i448
                                        #   in Loop: Header=BB2_89 Depth=2
	ld.w	$t4, $t1, 8
	addi.d	$t5, $t1, 8
	beqz	$t4, .LBB2_78
.LBB2_89:                               # %for.cond9.preheader.i434
                                        #   Parent Loop BB2_80 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_91 Depth 3
	move	$t3, $t1
	move	$t1, $t5
	add.w	$t4, $t4, $a6
	move	$t5, $t2
	move	$t6, $t0
	b	.LBB2_91
	.p2align	4, , 16
.LBB2_90:                               # %for.inc21.i444
                                        #   in Loop: Header=BB2_91 Depth=3
	ld.w	$t6, $t5, 0
	addi.d	$t5, $t5, 8
	beqz	$t6, .LBB2_88
.LBB2_91:                               # %for.body12.i440
                                        #   Parent Loop BB2_80 Depth=1
                                        #     Parent Loop BB2_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$t4, $t6, .LBB2_90
# %bb.92:                               # %if.then16.i452
                                        #   in Loop: Header=BB2_91 Depth=3
	fld.s	$ft0, $t3, 12
	fld.s	$ft1, $t5, -4
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	b	.LBB2_90
.LBB2_93:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB2_339
# %bb.94:
	move	$a5, $zero
	b	.LBB2_343
.LBB2_95:                               # %vector.ph944
	move	$a6, $zero
	andi	$a5, $a3, 12
	move	$a4, $a3
	bstrins.d	$a4, $zero, 3, 0
	xvreplve0.w	$xr0, $xr10
	addi.d	$a7, $a0, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a2
	move	$t0, $a4
	.p2align	4, , 16
.LBB2_96:                               # %vector.body949
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t1, $s1, $a6
	xvldx	$xr3, $s1, $a6
	xvld	$xr4, $t1, 32
	add.d	$t1, $a7, $a6
	xvst	$xr1, $t1, -32
	xvstx	$xr1, $a7, $a6
	xvfadd.s	$xr3, $xr3, $xr1
	xvfadd.s	$xr4, $xr4, $xr1
	xvfmadd.s	$xr3, $xr0, $xr2, $xr3
	xvfmadd.s	$xr4, $xr0, $xr2, $xr4
	add.d	$t1, $t2, $a6
	xvst	$xr3, $t1, 4
	xvst	$xr4, $t1, 36
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, 64
	bnez	$t0, .LBB2_96
# %bb.97:                               # %middle.block954
	beq	$a3, $a4, .LBB2_104
# %bb.98:                               # %vec.epilog.iter.check958
	beqz	$a5, .LBB2_346
.LBB2_99:                               # %vec.epilog.ph960
	move	$a6, $a3
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a5, $a3
	bstrins.d	$a5, $a7, 1, 0
	vreplvei.w	$vr0, $vr10, 0
	addi.d	$a7, $a0, 4
	slli.d	$t0, $a4, 2
	sub.d	$a4, $a4, $a6
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a2
	.p2align	4, , 16
.LBB2_100:                              # %vec.epilog.vector.body965
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $s1, $t0
	vstx	$vr1, $a7, $t0
	vfadd.s	$vr3, $vr3, $vr1
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$t1, $t2, $t0
	vst	$vr3, $t1, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 16
	bnez	$a4, .LBB2_100
# %bb.101:                              # %vec.epilog.middle.block970
	beq	$a3, $a6, .LBB2_104
.LBB2_102:                              # %for.body318.preheader
	slli.d	$a3, $a5, 2
	addi.d	$a4, $s1, -4
	sub.d	$a1, $a1, $a5
	movgr2fr.w	$fa0, $zero
	movgr2fr.w	$fa1, $a2
	.p2align	4, , 16
.LBB2_103:                              # %for.body318
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa2, $a4, $a3
	stx.w	$zero, $a0, $a3
	fadd.s	$fa2, $fa2, $fa0
	fmadd.s	$fa2, $ft2, $fa1, $fa2
	fstx.s	$fa2, $t2, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB2_103
.LBB2_104:
	move	$a0, $zero
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
.LBB2_105:                              # %if.else335
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $a4, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $s1, $a1
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	move	$a0, $zero
.LBB2_106:                              # %if.end340
	ld.d	$a1, $t8, %pc_lo12(H__align.lastverticalw)
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	fst.s	$fa0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	sltu	$a2, $zero, $a1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.w	$a3, $a2, $a3
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	blt	$a3, $a2, .LBB2_165
# %bb.107:                              # %for.body349.lr.ph
	st.d	$t2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 400                   # 8-byte Folded Spill
	sltui	$a1, $s3, 1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(H__align.ijp)
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.gappat2)
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(H__align.diaf2)
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf1)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	fcvt.d.s	$fs1, $ft2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(H__align.gapf2)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $a4, $a0
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	addi.d	$a0, $s7, 1
	bstrpick.d	$s2, $a0, 31, 0
	addi.w	$a0, $s7, -1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 2
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 1
	andi	$a0, $a1, 12
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 32, 4
	slli.d	$a3, $a0, 4
	slli.d	$a0, $a0, 6
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	sub.d	$a0, $s7, $a3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 32, 2
	slli.d	$a1, $a0, 2
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	sub.d	$a0, $s7, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	movgr2fr.w	$fs2, $zero
	ori	$s4, $zero, 1
	lu12i.w	$a0, 287172
	movgr2fr.w	$fs3, $a0
	fmov.s	$fs0, $fs2
	b	.LBB2_109
	.p2align	4, , 16
.LBB2_108:                              # %for.end568
                                        #   in Loop: Header=BB2_109 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a2, $a0
	addi.d	$s4, $s4, 1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	fstx.s	$fa0, $a0, $a1
	move	$s1, $a2
	ld.d	$s6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB2_166
.LBB2_109:                              # %for.body349
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_158 Depth 2
                                        #     Child Loop BB2_162 Depth 2
                                        #     Child Loop BB2_114 Depth 2
                                        #     Child Loop BB2_118 Depth 2
                                        #       Child Loop BB2_124 Depth 3
                                        #       Child Loop BB2_135 Depth 3
                                        #         Child Loop BB2_137 Depth 4
                                        #       Child Loop BB2_140 Depth 3
                                        #       Child Loop BB2_145 Depth 3
                                        #         Child Loop BB2_147 Depth 4
	addi.d	$a0, $s4, -1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	fst.s	$fa0, $s1, 0
	move	$a0, $s7
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s6
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a3, $s4, 3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_115
# %bb.110:                              # %iter.check983
                                        #   in Loop: Header=BB2_109 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a2, $a0, $a3
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB2_113
# %bb.111:                              # %vector.memcheck974
                                        #   in Loop: Header=BB2_109 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	bgeu	$s7, $a0, .LBB2_155
# %bb.112:                              # %vector.memcheck974
                                        #   in Loop: Header=BB2_109 Depth=1
	add.d	$a0, $s7, $a1
	bgeu	$a2, $a0, .LBB2_155
.LBB2_113:                              #   in Loop: Header=BB2_109 Depth=1
	move	$a0, $a2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s7
	.p2align	4, , 16
.LBB2_114:                              # %while.body.i461
                                        #   Parent Loop BB2_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a1, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	move	$a1, $a4
	bnez	$a2, .LBB2_114
.LBB2_115:                              # %if.end356
                                        #   in Loop: Header=BB2_109 Depth=1
	slli.d	$a1, $s4, 2
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	fldx.s	$fa0, $a0, $a1
	st.d	$s7, $sp, 408                   # 8-byte Folded Spill
	fst.s	$fa0, $s7, 0
	xvld	$xr11, $sp, 352                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	vldi	$vr12, -912
	bnez	$a0, .LBB2_108
# %bb.116:                              # %for.body378.lr.ph
                                        #   in Loop: Header=BB2_109 Depth=1
	ld.d	$t4, $sp, 416                   # 8-byte Folded Reload
	fld.s	$fa0, $t4, 0
	move	$a1, $zero
	fadd.s	$fa0, $fa0, $fs2
	fmadd.s	$fa0, $ft3, $fs3, $fa0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ldx.d	$s6, $a0, $a3
	ldx.d	$a3, $s5, $a3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a0, 2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a5, $s4, $a0, 2
	addi.d	$a6, $s6, 8
	addi.d	$a7, $s6, 16
	ori	$t0, $zero, 1
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 248                   # 8-byte Folded Reload
	b	.LBB2_118
	.p2align	4, , 16
.LBB2_117:                              # %if.end558
                                        #   in Loop: Header=BB2_118 Depth=2
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
	beq	$t0, $s2, .LBB2_108
.LBB2_118:                              # %for.body378
                                        #   Parent Loop BB2_109 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_124 Depth 3
                                        #       Child Loop BB2_135 Depth 3
                                        #         Child Loop BB2_137 Depth 4
                                        #       Child Loop BB2_140 Depth 3
                                        #       Child Loop BB2_145 Depth 3
                                        #         Child Loop BB2_147 Depth 4
	slli.d	$a0, $t0, 3
	ldx.d	$t5, $fp, $a0
	fld.s	$fa4, $t5, 4
	fld.s	$fa1, $t4, 0
	fcmp.ceq.s	$fcc0, $fa4, $fs2
	fmov.s	$fa5, $fa1
	bcnez	$fcc0, .LBB2_120
# %bb.119:                              # %if.then384
                                        #   in Loop: Header=BB2_118 Depth=2
	fld.s	$fa2, $a4, 0
	fmul.s	$fa2, $fa4, $fa2
	fmul.s	$fa2, $fa2, $ft3
	fadd.s	$fa5, $fa1, $fa2
.LBB2_120:                              # %if.end394
                                        #   in Loop: Header=BB2_118 Depth=2
	addi.d	$a3, $a3, 4
	slli.d	$t6, $t0, 2
	fldx.s	$fa2, $s0, $t6
	fld.s	$fa6, $a5, 0
	fld.s	$fa3, $s6, 4
	st.w	$zero, $a3, 0
	fcvt.d.s	$ft0, $fa2
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa7, $ft4, $fa6
	fmul.d	$fa6, $fa7, $ft0
	fmul.d	$fa6, $fa6, $fs1
	fcvt.s.d	$fa6, $fa6
	bcnez	$fcc0, .LBB2_128
# %bb.121:                              # %if.then460
                                        #   in Loop: Header=BB2_118 Depth=2
	ld.w	$s7, $t5, 8
	fmov.s	$ft0, $fs2
	beqz	$s7, .LBB2_127
# %bb.122:                              # %for.body.i473.preheader
                                        #   in Loop: Header=BB2_118 Depth=2
	fld.s	$ft1, $a4, 0
	nor	$a0, $a1, $zero
	addi.d	$s8, $t5, 16
	add.w	$s1, $t0, $a0
	move	$a0, $s8
	move	$a2, $s7
	fmov.s	$ft0, $fs2
	b	.LBB2_124
	.p2align	4, , 16
.LBB2_123:                              # %for.inc.i477
                                        #   in Loop: Header=BB2_124 Depth=3
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 8
	beqz	$a2, .LBB2_126
.LBB2_124:                              # %for.body.i473
                                        #   Parent Loop BB2_109 Depth=1
                                        #     Parent Loop BB2_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$a2, $s1, .LBB2_123
# %bb.125:                              # %if.then.i504
                                        #   in Loop: Header=BB2_124 Depth=3
	fld.s	$ft0, $a0, -4
	fmul.s	$ft0, $ft1, $ft0
	b	.LBB2_123
	.p2align	4, , 16
.LBB2_126:                              # %for.cond4.preheader.i481
                                        #   in Loop: Header=BB2_118 Depth=2
	ld.w	$a0, $a6, 0
	move	$t8, $a6
	move	$a2, $s6
	bnez	$a0, .LBB2_135
.LBB2_127:                              # %countnocountx.exit507
                                        #   in Loop: Header=BB2_118 Depth=2
	fcvt.d.s	$ft1, $fa4
	fmul.d	$fa7, $fa7, $ft1
	fcvt.d.s	$fa6, $fa6
	fmadd.d	$fa6, $fa7, $fs1, $fa6
	fcvt.s.d	$fa6, $fa6
	fneg.s	$fa7, $ft0
	fmadd.s	$fa6, $fa7, $ft3, $fa6
.LBB2_128:                              # %if.end473
                                        #   in Loop: Header=BB2_118 Depth=2
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
	bcnez	$fcc0, .LBB2_130
# %bb.129:                              # %if.then477
                                        #   in Loop: Header=BB2_118 Depth=2
	sub.d	$a0, $a1, $t0
	st.w	$a0, $a3, 0
	fmov.s	$fs0, $fa4
.LBB2_130:                              # %if.end480
                                        #   in Loop: Header=BB2_118 Depth=2
	fld.s	$fa4, $a4, 0
	fldx.s	$fa5, $s3, $t6
	addi.d	$t3, $t3, 4
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa5, $ft4, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fs1
	fcmp.ceq.s	$fcc0, $fa3, $fs2
	fcvt.s.d	$fa4, $fa4
	bcnez	$fcc0, .LBB2_151
# %bb.131:                              # %if.then507
                                        #   in Loop: Header=BB2_118 Depth=2
	ld.w	$a0, $t3, 0
	slli.d	$a2, $a0, 3
	ldx.d	$a2, $s5, $a2
	fcvt.d.s	$fa3, $fa3
	alsl.d	$a2, $t0, $a2, 2
	ld.w	$a2, $a2, -4
	fmul.d	$fa3, $fa5, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa3, $fs1, $fa4
	fcvt.s.d	$fa4, $fa3
	bnez	$a2, .LBB2_151
# %bb.132:                              # %if.then529
                                        #   in Loop: Header=BB2_118 Depth=2
	ld.w	$t6, $a6, 0
	beqz	$t6, .LBB2_149
# %bb.133:                              # %for.body.i510.preheader
                                        #   in Loop: Header=BB2_118 Depth=2
	nor	$a0, $a0, $zero
	add.w	$t7, $s4, $a0
	movgr2fr.w	$fa3, $zero
	move	$a0, $a7
	move	$a2, $t6
	b	.LBB2_140
	.p2align	4, , 16
.LBB2_134:                              # %for.cond9.for.cond4.loopexit_crit_edge.i498
                                        #   in Loop: Header=BB2_135 Depth=3
	ld.w	$a0, $a2, 8
	addi.d	$t8, $a2, 8
	beqz	$a0, .LBB2_127
.LBB2_135:                              # %for.cond9.preheader.i484
                                        #   Parent Loop BB2_109 Depth=1
                                        #     Parent Loop BB2_118 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_137 Depth 4
	move	$ra, $a2
	move	$a2, $t8
	add.w	$a0, $a0, $s1
	move	$t8, $s8
	move	$t7, $s7
	b	.LBB2_137
	.p2align	4, , 16
.LBB2_136:                              # %for.inc21.i494
                                        #   in Loop: Header=BB2_137 Depth=4
	ld.w	$t7, $t8, 0
	addi.d	$t8, $t8, 8
	beqz	$t7, .LBB2_134
.LBB2_137:                              # %for.body12.i490
                                        #   Parent Loop BB2_109 Depth=1
                                        #     Parent Loop BB2_118 Depth=2
                                        #       Parent Loop BB2_135 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$a0, $t7, .LBB2_136
# %bb.138:                              # %if.then16.i502
                                        #   in Loop: Header=BB2_137 Depth=4
	fld.s	$ft1, $ra, 12
	fld.s	$ft2, $t8, -4
	fmadd.s	$ft0, $ft1, $ft2, $ft0
	b	.LBB2_136
	.p2align	4, , 16
.LBB2_139:                              # %for.inc.i514
                                        #   in Loop: Header=BB2_140 Depth=3
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 8
	beqz	$a2, .LBB2_142
.LBB2_140:                              # %for.body.i510
                                        #   Parent Loop BB2_109 Depth=1
                                        #     Parent Loop BB2_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$a2, $t7, .LBB2_139
# %bb.141:                              # %if.then.i541
                                        #   in Loop: Header=BB2_140 Depth=3
	fld.s	$fa3, $a0, -4
	fmul.s	$fa3, $fa2, $fa3
	b	.LBB2_139
.LBB2_142:                              # %for.cond4.preheader.i518
                                        #   in Loop: Header=BB2_118 Depth=2
	ld.w	$a0, $t5, 8
	beqz	$a0, .LBB2_150
# %bb.143:                              #   in Loop: Header=BB2_118 Depth=2
	addi.d	$t8, $t5, 8
	b	.LBB2_145
	.p2align	4, , 16
.LBB2_144:                              # %for.cond9.for.cond4.loopexit_crit_edge.i535
                                        #   in Loop: Header=BB2_145 Depth=3
	ld.w	$a0, $t5, 8
	addi.d	$t8, $t5, 8
	beqz	$a0, .LBB2_150
.LBB2_145:                              # %for.cond9.preheader.i521
                                        #   Parent Loop BB2_109 Depth=1
                                        #     Parent Loop BB2_118 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_147 Depth 4
	move	$a2, $t5
	move	$t5, $t8
	add.w	$a0, $a0, $t7
	move	$t8, $a7
	move	$s1, $t6
	b	.LBB2_147
	.p2align	4, , 16
.LBB2_146:                              # %for.inc21.i531
                                        #   in Loop: Header=BB2_147 Depth=4
	ld.w	$s1, $t8, 0
	addi.d	$t8, $t8, 8
	beqz	$s1, .LBB2_144
.LBB2_147:                              # %for.body12.i527
                                        #   Parent Loop BB2_109 Depth=1
                                        #     Parent Loop BB2_118 Depth=2
                                        #       Parent Loop BB2_145 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$a0, $s1, .LBB2_146
# %bb.148:                              # %if.then16.i539
                                        #   in Loop: Header=BB2_147 Depth=4
	fld.s	$fa2, $a2, 12
	fld.s	$fa5, $t8, -4
	fmadd.s	$fa3, $fa2, $fa5, $fa3
	b	.LBB2_146
.LBB2_149:                              #   in Loop: Header=BB2_118 Depth=2
	movgr2fr.w	$fa3, $zero
.LBB2_150:                              # %countnocountx.exit544
                                        #   in Loop: Header=BB2_118 Depth=2
	fneg.s	$fa2, $fa3
	fmadd.s	$fa4, $fa2, $ft3, $fa4
.LBB2_151:                              # %if.end542
                                        #   in Loop: Header=BB2_118 Depth=2
	addi.d	$t2, $t2, 4
	fld.s	$fa2, $t2, 0
	fadd.s	$fa3, $fa4, $fa2
	fcmp.cule.s	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB2_153
# %bb.152:                              # %if.then546
                                        #   in Loop: Header=BB2_118 Depth=2
	ld.w	$a0, $t3, 0
	sub.d	$a0, $s4, $a0
	st.w	$a0, $a3, 0
	fmov.s	$fs0, $fa3
.LBB2_153:                              # %if.end548
                                        #   in Loop: Header=BB2_118 Depth=2
	fcmp.cult.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB2_117
# %bb.154:                              # %if.then551
                                        #   in Loop: Header=BB2_118 Depth=2
	fst.s	$fa1, $t2, 0
	addi.d	$a0, $s4, -1
	st.w	$a0, $t3, 0
	b	.LBB2_117
.LBB2_155:                              # %vector.main.loop.iter.check985
                                        #   in Loop: Header=BB2_109 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ori	$a1, $zero, 15
	bgeu	$a0, $a1, .LBB2_157
# %bb.156:                              #   in Loop: Header=BB2_109 Depth=1
	move	$a5, $zero
	b	.LBB2_161
.LBB2_157:                              # %vector.body989.preheader
                                        #   in Loop: Header=BB2_109 Depth=1
	addi.d	$a0, $s7, 32
	addi.d	$a1, $a2, 32
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_158:                              # %vector.body989
                                        #   Parent Loop BB2_109 Depth=1
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
	bnez	$a4, .LBB2_158
# %bb.159:                              # %middle.block998
                                        #   in Loop: Header=BB2_109 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_115
# %bb.160:                              # %vec.epilog.iter.check1002
                                        #   in Loop: Header=BB2_109 Depth=1
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_164
.LBB2_161:                              # %vec.epilog.ph1004
                                        #   in Loop: Header=BB2_109 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $s7, $a1
	alsl.d	$a4, $a5, $s7, 2
	alsl.d	$a2, $a5, $a2, 2
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	.p2align	4, , 16
.LBB2_162:                              # %vec.epilog.vector.body1008
                                        #   Parent Loop BB2_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vld	$vr1, $a4, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, 16
	bnez	$a5, .LBB2_162
# %bb.163:                              # %vec.epilog.middle.block1017
                                        #   in Loop: Header=BB2_109 Depth=1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	bne	$a4, $a5, .LBB2_114
	b	.LBB2_115
.LBB2_164:                              #   in Loop: Header=BB2_109 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $s7, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	b	.LBB2_114
.LBB2_165:
	movgr2fr.w	$fs0, $zero
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	beqz	$a1, .LBB2_167
	b	.LBB2_181
.LBB2_166:                              # %for.end576.loopexit
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	move	$s1, $a2
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_181
.LBB2_167:                              # %for.cond579.preheader
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_174
# %bb.168:                              # %for.body583.lr.ph
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s7, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_172
# %bb.169:                              # %vector.ph1028
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_2)
	xvld	$xr1, $a5, %pc_lo12(.LCPI2_2)
	pcalau12i	$a5, %pc_hi20(.LCPI2_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI2_3)
	xvreplgr2vr.d	$xr3, $s7
	addi.d	$a5, $s1, 4
	xvldi	$xr4, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_170:                              # %vector.body1035
                                        # =>This Inner Loop Header: Depth=1
	xvsub.d	$xr5, $xr3, $xr1
	xvsub.d	$xr6, $xr3, $xr2
	xvpermi.q	$xr7, $xr6, 1
	vpickev.w	$vr6, $vr7, $vr6
	xvpermi.q	$xr7, $xr5, 1
	vpickev.w	$vr5, $vr7, $vr5
	xvpermi.q	$xr6, $xr5, 2
	xvmul.w	$xr5, $xr0, $xr6
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
	xvaddi.du	$xr2, $xr2, 8
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_170
# %bb.171:                              # %middle.block1042
	beq	$a2, $a4, .LBB2_174
.LBB2_172:                              # %for.body583.preheader
	sub.w	$a2, $s7, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s1, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_173:                              # %for.body583
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
	bnez	$a1, .LBB2_173
.LBB2_174:                              # %for.cond596.preheader
	blez	$t7, .LBB2_181
# %bb.175:                              # %for.body600.lr.ph
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a2, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $t8, %pc_lo12(H__align.lastverticalw)
	fneg.d	$fa1, $fa1
	addi.d	$a0, $a2, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a3, $a4, .LBB2_179
# %bb.176:                              # %vector.ph1047
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	pcalau12i	$a5, %pc_hi20(.LCPI2_4)
	vld	$vr3, $a5, %pc_lo12(.LCPI2_4)
	xvreplve0.d	$xr4, $xr1
	addi.d	$a5, $a1, 4
	xvldi	$xr5, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_177:                              # %vector.body1054
                                        # =>This Inner Loop Header: Depth=1
	vext2xv.du.wu	$xr6, $xr3
	vld	$vr7, $a5, 0
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
	xvfmadd.d	$xr6, $xr4, $xr6, $xr7
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
	vaddi.wu	$vr3, $vr3, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB2_177
# %bb.178:                              # %middle.block1061
	beq	$a3, $a4, .LBB2_181
.LBB2_179:                              # %for.body600.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB2_180:                              # %for.body600
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
	bnez	$a2, .LBB2_180
.LBB2_181:                              # %if.end615
	ld.d	$fp, $t8, %pc_lo12(H__align.lastverticalw)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(H__align.mseq1)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(H__align.mseq2)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ijp)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	add.w	$s5, $a0, $s6
	addi.w	$s8, $s5, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	addi.w	$a1, $s6, 0
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	addi.w	$a1, $s4, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	bnez	$s3, .LBB2_188
# %bb.182:                              # %if.else618
	ld.d	$s3, $sp, 408                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_199
# %bb.183:                              # %if.else.i568
	fld.s	$fa0, $fp, 0
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	blez	$a2, .LBB2_194
# %bb.184:                              # %for.body.lr.ph.i684
	slli.d	$a2, $s6, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s4, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s6, 30, 0
	move	$a5, $s6
	b	.LBB2_186
	.p2align	4, , 16
.LBB2_185:                              # %for.inc.i694
                                        #   in Loop: Header=BB2_186 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$fp, $fp, 4
	beqz	$a4, .LBB2_194
.LBB2_186:                              # %for.body.i687
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_185
# %bb.187:                              # %if.then16.i692
                                        #   in Loop: Header=BB2_186 Depth=1
	ldx.d	$a6, $s3, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_185
.LBB2_188:                              # %if.then617
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_207
# %bb.189:                              # %if.else.i
	fld.s	$fa0, $fp, 0
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	blez	$a2, .LBB2_202
# %bb.190:                              # %for.body.lr.ph.i551
	slli.d	$a2, $s6, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s4, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s6, 30, 0
	move	$a5, $s6
	b	.LBB2_192
	.p2align	4, , 16
.LBB2_191:                              # %for.inc.i556
                                        #   in Loop: Header=BB2_192 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$fp, $fp, 4
	beqz	$a4, .LBB2_202
.LBB2_192:                              # %for.body.i553
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_191
# %bb.193:                              # %if.then16.i555
                                        #   in Loop: Header=BB2_192 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_191
.LBB2_194:                              # %for.cond24.preheader.i570
	blez	$a1, .LBB2_199
# %bb.195:                              # %for.body27.lr.ph.i669
	slli.d	$a2, $s6, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s4, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s4, 30, 0
	sub.d	$a5, $zero, $s4
	b	.LBB2_197
	.p2align	4, , 16
.LBB2_196:                              # %for.inc43.i680
                                        #   in Loop: Header=BB2_197 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s1, $s1, 4
	beqz	$a4, .LBB2_199
.LBB2_197:                              # %for.body27.i673
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_196
# %bb.198:                              # %if.then32.i678
                                        #   in Loop: Header=BB2_197 Depth=1
	ldx.d	$a6, $s3, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_196
.LBB2_199:                              # %if.end46.i573
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_215
# %bb.200:                              # %for.body51.preheader.i575
	addi.d	$a3, $s6, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_210
# %bb.201:
	move	$a3, $zero
	b	.LBB2_213
.LBB2_202:                              # %for.cond24.preheader.i
	blez	$a1, .LBB2_207
# %bb.203:                              # %for.body27.lr.ph.i
	slli.d	$a2, $s6, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s4, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s4, 30, 0
	sub.d	$a5, $zero, $s4
	b	.LBB2_205
	.p2align	4, , 16
.LBB2_204:                              # %for.inc43.i
                                        #   in Loop: Header=BB2_205 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s1, $s1, 4
	beqz	$a4, .LBB2_207
.LBB2_205:                              # %for.body27.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_204
# %bb.206:                              # %if.then32.i
                                        #   in Loop: Header=BB2_205 Depth=1
	ldx.d	$a6, $ra, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_204
.LBB2_207:                              # %if.end46.i
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_223
# %bb.208:                              # %for.body51.preheader.i
	addi.d	$a3, $s6, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB2_218
# %bb.209:
	move	$a3, $zero
	b	.LBB2_221
.LBB2_210:                              # %vector.ph1160
	pcalau12i	$a4, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s3, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_211:                              # %vector.body1163
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
	bnez	$a5, .LBB2_211
# %bb.212:                              # %middle.block1171
	beq	$a2, $a3, .LBB2_215
.LBB2_213:                              # %for.body51.i577.preheader
	alsl.d	$a4, $a3, $s3, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_214:                              # %for.body51.i577
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_214
.LBB2_215:                              # %for.cond59.preheader.i582
	bltz	$a1, .LBB2_239
# %bb.216:                              # %iter.check1177
	ld.d	$a2, $s3, 0
	addi.d	$a5, $s4, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a3, $a4, .LBB2_226
# %bb.217:
	move	$a4, $zero
	b	.LBB2_237
.LBB2_218:                              # %vector.ph1066
	pcalau12i	$a4, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_219:                              # %vector.body1069
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
	bnez	$a5, .LBB2_219
# %bb.220:                              # %middle.block1076
	beq	$a2, $a3, .LBB2_223
.LBB2_221:                              # %for.body51.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_222:                              # %for.body51.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB2_222
.LBB2_223:                              # %for.cond59.preheader.i
	ld.d	$a2, $sp, 544
	bltz	$a1, .LBB2_284
# %bb.224:                              # %iter.check1082
	ld.d	$a3, $ra, 0
	addi.d	$a6, $s4, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 4
	bgeu	$a4, $a5, .LBB2_228
# %bb.225:
	move	$a5, $zero
	b	.LBB2_282
.LBB2_226:                              # %vector.main.loop.iter.check1179
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB2_230
# %bb.227:
	move	$a4, $zero
	b	.LBB2_234
.LBB2_228:                              # %vector.main.loop.iter.check1084
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB2_275
# %bb.229:
	move	$a5, $zero
	b	.LBB2_279
.LBB2_230:                              # %vector.ph1180
	andi	$a6, $a5, 12
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a7, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a7, %pc_lo12(.LCPI2_6)
	addi.d	$a7, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a4
	.p2align	4, , 16
.LBB2_231:                              # %vector.body1183
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB2_231
# %bb.232:                              # %middle.block1189
	beq	$a3, $a4, .LBB2_239
# %bb.233:                              # %vec.epilog.iter.check1193
	beqz	$a6, .LBB2_237
.LBB2_234:                              # %vec.epilog.ph1195
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_7)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB2_235:                              # %vec.epilog.vector.body1201
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB2_235
# %bb.236:                              # %vec.epilog.middle.block1206
	beq	$a3, $a4, .LBB2_239
.LBB2_237:                              # %for.body63.i586.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB2_238:                              # %for.body63.i586
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB2_238
.LBB2_239:                              # %for.end71.i592
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	add.d	$s8, $a2, $a1
	stx.b	$zero, $a2, $a1
	add.d	$a0, $a0, $a3
	add.d	$s1, $a0, $a1
	stx.b	$zero, $a0, $a1
	bltz	$s5, .LBB2_268
# %bb.240:                              # %for.body82.i600.preheader
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	ori	$a1, $zero, 111
	ori	$a2, $zero, 45
	ori	$a3, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a4, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	.p2align	4, , 16
.LBB2_241:                              # %for.body82.i600
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_260 Depth 2
                                        #     Child Loop BB2_263 Depth 2
                                        #     Child Loop BB2_249 Depth 2
                                        #     Child Loop BB2_253 Depth 2
	addi.w	$a7, $s6, 0
	slli.d	$a6, $a7, 3
	ldx.d	$a6, $s3, $a6
	addi.w	$t0, $s4, 0
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a6, $t1
	bltz	$t1, .LBB2_244
# %bb.242:                              # %if.else96.i611
                                        #   in Loop: Header=BB2_241 Depth=1
	beqz	$t1, .LBB2_255
# %bb.243:                              # %if.then103.i613
                                        #   in Loop: Header=BB2_241 Depth=1
	sub.d	$a6, $s6, $t1
	b	.LBB2_256
	.p2align	4, , 16
.LBB2_244:                              # %if.then89.i667
                                        #   in Loop: Header=BB2_241 Depth=1
	addi.d	$a6, $s6, -1
	nor	$t2, $a6, $zero
	add.w	$t3, $s6, $t2
	bnez	$t3, .LBB2_257
	.p2align	4, , 16
.LBB2_245:                              # %while.end.i630
                                        #   in Loop: Header=BB2_241 Depth=1
	beq	$t1, $a0, .LBB2_265
.LBB2_246:                              # %while.body122.preheader.i635
                                        #   in Loop: Header=BB2_241 Depth=1
	addi.w	$t2, $zero, -17
	nor	$t5, $t1, $zero
	bltu	$t2, $t1, .LBB2_251
# %bb.247:                              # %while.body122.preheader.i635
                                        #   in Loop: Header=BB2_241 Depth=1
	sub.d	$t2, $s8, $s1
	bltu	$t2, $a3, .LBB2_251
# %bb.248:                              # %vector.ph1215
                                        #   in Loop: Header=BB2_241 Depth=1
	bstrpick.d	$t2, $t5, 30, 4
	slli.d	$t6, $t2, 4
	sub.d	$t4, $t5, $t6
	sub.d	$t2, $s1, $t6
	sub.d	$t3, $s8, $t6
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $a5, 0
	addi.d	$a5, $s8, -8
	addi.d	$t7, $s1, -8
	move	$t8, $t6
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB2_249:                              # %vector.body1219
                                        #   Parent Loop BB2_241 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a5, -8
	vst	$vr2, $t7, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$t8, $t8, -16
	addi.d	$a5, $a5, -16
	addi.d	$t7, $t7, -16
	bnez	$t8, .LBB2_249
# %bb.250:                              # %middle.block1228
                                        #   in Loop: Header=BB2_241 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvhaddw.d.w	$xr5, $xr5, $xr5
	xvhaddw.q.d	$xr5, $xr5, $xr5
	xvpermi.d	$xr6, $xr5, 2
	xvadd.d	$xr5, $xr6, $xr5
	xvpickve2gr.d	$a5, $xr5, 0
	bne	$t6, $t5, .LBB2_252
	b	.LBB2_254
	.p2align	4, , 16
.LBB2_251:                              #   in Loop: Header=BB2_241 Depth=1
	move	$t4, $t5
	move	$t2, $s1
	move	$t3, $s8
.LBB2_252:                              # %while.body122.i637.preheader
                                        #   in Loop: Header=BB2_241 Depth=1
	add.d	$a5, $a5, $t4
	.p2align	4, , 16
.LBB2_253:                              # %while.body122.i637
                                        #   Parent Loop BB2_241 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a2, $t3, -1
	addi.d	$t3, $t3, -1
	st.b	$a1, $t2, -1
	addi.w	$t4, $t4, -1
	addi.d	$t2, $t2, -1
	bnez	$t4, .LBB2_253
.LBB2_254:                              # %while.end126.i647
                                        #   in Loop: Header=BB2_241 Depth=1
	bgtz	$a7, .LBB2_266
	b	.LBB2_269
	.p2align	4, , 16
.LBB2_255:                              # %if.else110.i665
                                        #   in Loop: Header=BB2_241 Depth=1
	addi.d	$a6, $s6, -1
.LBB2_256:                              # %if.end114.i615
                                        #   in Loop: Header=BB2_241 Depth=1
	move	$t1, $a0
	nor	$t2, $a6, $zero
	add.w	$t3, $s6, $t2
	beqz	$t3, .LBB2_245
.LBB2_257:                              # %while.body.i621.preheader
                                        #   in Loop: Header=BB2_241 Depth=1
	bltu	$t3, $a4, .LBB2_262
# %bb.258:                              # %while.body.i621.preheader
                                        #   in Loop: Header=BB2_241 Depth=1
	sub.d	$t4, $s8, $s1
	bltu	$t4, $a4, .LBB2_262
# %bb.259:                              # %vector.ph1241
                                        #   in Loop: Header=BB2_241 Depth=1
	bstrpick.d	$t6, $t3, 31, 0
	bstrpick.d	$t4, $t6, 31, 5
	slli.d	$t7, $t4, 5
	sub.d	$t3, $t3, $t7
	sub.d	$t4, $s1, $t7
	sub.d	$t5, $s8, $t7
	addi.d	$t8, $s8, -32
	addi.d	$fp, $s1, -32
	move	$s0, $t7
	.p2align	4, , 16
.LBB2_260:                              # %vector.body1245
                                        #   Parent Loop BB2_241 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $t8, 0
	xvst	$xr4, $fp, 0
	addi.d	$s0, $s0, -32
	addi.d	$t8, $t8, -32
	addi.d	$fp, $fp, -32
	bnez	$s0, .LBB2_260
# %bb.261:                              # %middle.block1252
                                        #   in Loop: Header=BB2_241 Depth=1
	bne	$t7, $t6, .LBB2_263
	b	.LBB2_264
	.p2align	4, , 16
.LBB2_262:                              #   in Loop: Header=BB2_241 Depth=1
	move	$t4, $s1
	move	$t5, $s8
	.p2align	4, , 16
.LBB2_263:                              # %while.body.i621
                                        #   Parent Loop BB2_241 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a1, $t5, -1
	addi.d	$t5, $t5, -1
	st.b	$a2, $t4, -1
	addi.w	$t3, $t3, -1
	addi.d	$t4, $t4, -1
	bnez	$t3, .LBB2_263
.LBB2_264:                              # %while.end.loopexit.i629
                                        #   in Loop: Header=BB2_241 Depth=1
	add.d	$a5, $s6, $a5
	add.d	$a5, $t2, $a5
	move	$s8, $t5
	move	$s1, $t4
	bne	$t1, $a0, .LBB2_246
.LBB2_265:                              #   in Loop: Header=BB2_241 Depth=1
	move	$t3, $s8
	move	$t2, $s1
	blez	$a7, .LBB2_269
.LBB2_266:                              # %while.end126.i647
                                        #   in Loop: Header=BB2_241 Depth=1
	blez	$t0, .LBB2_269
# %bb.267:                              # %if.end132.i
                                        #   in Loop: Header=BB2_241 Depth=1
	add.d	$s4, $t1, $s4
	addi.d	$s8, $t3, -1
	st.b	$a1, $t3, -1
	addi.d	$s1, $t2, -1
	addi.w	$a5, $a5, 2
	st.b	$a1, $t2, -1
	move	$s6, $a6
	bge	$s5, $a5, .LBB2_241
.LBB2_268:                              # %for.end138.i
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	bgtz	$s5, .LBB2_270
	b	.LBB2_272
.LBB2_269:
	move	$s8, $t3
	move	$s1, $t2
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	blez	$s5, .LBB2_272
.LBB2_270:                              # %for.body142.preheader.i
	move	$fp, $s6
	move	$s0, $s5
	.p2align	4, , 16
.LBB2_271:                              # %for.body142.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB2_271
.LBB2_272:                              # %for.cond150.preheader.i
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 384                   # 8-byte Folded Reload
	blez	$s2, .LBB2_323
# %bb.273:                              # %for.body153.preheader.i
	move	$fp, $s3
	move	$s0, $s2
	.p2align	4, , 16
.LBB2_274:                              # %for.body153.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s7, $s7, 8
	bnez	$s0, .LBB2_274
	b	.LBB2_323
.LBB2_275:                              # %vector.ph1085
	andi	$a7, $a6, 12
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$t0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $t0, %pc_lo12(.LCPI2_6)
	addi.d	$t0, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t1, $a5
	.p2align	4, , 16
.LBB2_276:                              # %vector.body1088
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $t0, -32
	xvst	$xr4, $t0, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB2_276
# %bb.277:                              # %middle.block1094
	beq	$a4, $a5, .LBB2_284
# %bb.278:                              # %vec.epilog.iter.check1098
	beqz	$a7, .LBB2_282
.LBB2_279:                              # %vec.epilog.ph1100
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a5, %pc_lo12(.LCPI2_7)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB2_280:                              # %vec.epilog.vector.body1105
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB2_280
# %bb.281:                              # %vec.epilog.middle.block1110
	beq	$a4, $a5, .LBB2_284
.LBB2_282:                              # %for.body63.i.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB2_283:                              # %for.body63.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB2_283
.LBB2_284:                              # %for.end71.i
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	add.d	$s8, $a3, $a1
	stx.b	$zero, $a3, $a1
	add.d	$a3, $a0, $a4
	add.d	$s1, $a3, $a1
	stx.b	$zero, $a3, $a1
	st.w	$zero, $a2, 0
	bltz	$s5, .LBB2_316
# %bb.285:                              # %for.body82.i.preheader
	move	$t0, $zero
	addi.w	$a1, $zero, -1
	ori	$a3, $zero, 111
	ori	$a4, $zero, 45
	ori	$a5, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a6, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	move	$a7, $s4
	move	$a0, $s5
	.p2align	4, , 16
.LBB2_286:                              # %for.body82.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_305 Depth 2
                                        #     Child Loop BB2_308 Depth 2
                                        #     Child Loop BB2_294 Depth 2
                                        #     Child Loop BB2_298 Depth 2
	addi.w	$t2, $s6, 0
	slli.d	$t5, $t2, 3
	ldx.d	$t1, $ra, $t5
	addi.w	$t3, $a7, 0
	slli.d	$t6, $t3, 2
	ldx.w	$t4, $t1, $t6
	bltz	$t4, .LBB2_289
# %bb.287:                              # %if.else96.i
                                        #   in Loop: Header=BB2_286 Depth=1
	beqz	$t4, .LBB2_300
# %bb.288:                              # %if.then103.i
                                        #   in Loop: Header=BB2_286 Depth=1
	sub.d	$t1, $s6, $t4
	b	.LBB2_301
	.p2align	4, , 16
.LBB2_289:                              # %if.then89.i
                                        #   in Loop: Header=BB2_286 Depth=1
	addi.d	$t1, $s6, -1
	nor	$t7, $t1, $zero
	add.w	$t8, $s6, $t7
	bnez	$t8, .LBB2_302
	.p2align	4, , 16
.LBB2_290:                              # %while.end.i
                                        #   in Loop: Header=BB2_286 Depth=1
	beq	$t4, $a1, .LBB2_310
.LBB2_291:                              # %while.body122.preheader.i
                                        #   in Loop: Header=BB2_286 Depth=1
	addi.w	$t7, $zero, -17
	nor	$s0, $t4, $zero
	bltu	$t7, $t4, .LBB2_296
# %bb.292:                              # %while.body122.preheader.i
                                        #   in Loop: Header=BB2_286 Depth=1
	sub.d	$t7, $s8, $s1
	bltu	$t7, $a5, .LBB2_296
# %bb.293:                              # %vector.ph1119
                                        #   in Loop: Header=BB2_286 Depth=1
	bstrpick.d	$t7, $s0, 30, 4
	slli.d	$s3, $t7, 4
	sub.d	$fp, $s0, $s3
	sub.d	$t7, $s1, $s3
	sub.d	$t8, $s8, $s3
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $t0, 0
	addi.d	$t0, $s8, -8
	addi.d	$s1, $s1, -8
	move	$s5, $s3
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB2_294:                              # %vector.body1123
                                        #   Parent Loop BB2_286 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t0, -8
	vst	$vr2, $s1, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s5, $s5, -16
	addi.d	$t0, $t0, -16
	addi.d	$s1, $s1, -16
	bnez	$s5, .LBB2_294
# %bb.295:                              # %middle.block1131
                                        #   in Loop: Header=BB2_286 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvhaddw.d.w	$xr5, $xr5, $xr5
	xvhaddw.q.d	$xr5, $xr5, $xr5
	xvpermi.d	$xr6, $xr5, 2
	xvadd.d	$xr5, $xr6, $xr5
	xvpickve2gr.d	$t0, $xr5, 0
	move	$s5, $a0
	bne	$s3, $s0, .LBB2_297
	b	.LBB2_299
	.p2align	4, , 16
.LBB2_296:                              #   in Loop: Header=BB2_286 Depth=1
	move	$fp, $s0
	move	$t7, $s1
	move	$t8, $s8
.LBB2_297:                              # %while.body122.i.preheader
                                        #   in Loop: Header=BB2_286 Depth=1
	add.d	$t0, $t0, $fp
	.p2align	4, , 16
.LBB2_298:                              # %while.body122.i
                                        #   Parent Loop BB2_286 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a3, $t7, -1
	addi.w	$fp, $fp, -1
	addi.d	$t7, $t7, -1
	bnez	$fp, .LBB2_298
.LBB2_299:                              # %while.end126.i
                                        #   in Loop: Header=BB2_286 Depth=1
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	bne	$t2, $fp, .LBB2_311
	b	.LBB2_313
	.p2align	4, , 16
.LBB2_300:                              # %if.else110.i
                                        #   in Loop: Header=BB2_286 Depth=1
	addi.d	$t1, $s6, -1
.LBB2_301:                              # %if.end114.i
                                        #   in Loop: Header=BB2_286 Depth=1
	move	$t4, $a1
	nor	$t7, $t1, $zero
	add.w	$t8, $s6, $t7
	beqz	$t8, .LBB2_290
.LBB2_302:                              # %while.body.i547.preheader
                                        #   in Loop: Header=BB2_286 Depth=1
	bltu	$t8, $a6, .LBB2_307
# %bb.303:                              # %while.body.i547.preheader
                                        #   in Loop: Header=BB2_286 Depth=1
	sub.d	$fp, $s8, $s1
	bltu	$fp, $a6, .LBB2_307
# %bb.304:                              # %vector.ph1142
                                        #   in Loop: Header=BB2_286 Depth=1
	bstrpick.d	$s3, $t8, 31, 0
	bstrpick.d	$fp, $s3, 31, 5
	slli.d	$s5, $fp, 5
	sub.d	$t8, $t8, $s5
	sub.d	$fp, $s1, $s5
	sub.d	$s0, $s8, $s5
	addi.d	$s8, $s8, -32
	addi.d	$s1, $s1, -32
	move	$ra, $s5
	.p2align	4, , 16
.LBB2_305:                              # %vector.body1146
                                        #   Parent Loop BB2_286 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s8, 0
	xvst	$xr4, $s1, 0
	addi.d	$ra, $ra, -32
	addi.d	$s8, $s8, -32
	addi.d	$s1, $s1, -32
	bnez	$ra, .LBB2_305
# %bb.306:                              # %middle.block1153
                                        #   in Loop: Header=BB2_286 Depth=1
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	bne	$s5, $s3, .LBB2_308
	b	.LBB2_309
	.p2align	4, , 16
.LBB2_307:                              #   in Loop: Header=BB2_286 Depth=1
	move	$fp, $s1
	move	$s0, $s8
	.p2align	4, , 16
.LBB2_308:                              # %while.body.i547
                                        #   Parent Loop BB2_286 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $s0, -1
	addi.d	$s0, $s0, -1
	st.b	$a4, $fp, -1
	addi.w	$t8, $t8, -1
	addi.d	$fp, $fp, -1
	bnez	$t8, .LBB2_308
.LBB2_309:                              # %while.end.loopexit.i
                                        #   in Loop: Header=BB2_286 Depth=1
	add.d	$t0, $s6, $t0
	add.d	$t0, $t7, $t0
	move	$s8, $s0
	move	$s1, $fp
	move	$s5, $a0
	bne	$t4, $a1, .LBB2_291
.LBB2_310:                              #   in Loop: Header=BB2_286 Depth=1
	move	$t8, $s8
	move	$t7, $s1
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	beq	$t2, $fp, .LBB2_313
.LBB2_311:                              # %while.end126.i
                                        #   in Loop: Header=BB2_286 Depth=1
	addi.w	$fp, $s4, 0
	beq	$t3, $fp, .LBB2_313
# %bb.312:                              # %if.else132.i
                                        #   in Loop: Header=BB2_286 Depth=1
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $fp, %pc_lo12(impmtx)
	ldx.d	$t5, $fp, $t5
	fldx.s	$fa5, $t5, $t6
	fld.s	$fa6, $a2, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a2, 0
.LBB2_313:                              # %if.end135.i
                                        #   in Loop: Header=BB2_286 Depth=1
	blez	$t2, .LBB2_317
# %bb.314:                              # %if.end135.i
                                        #   in Loop: Header=BB2_286 Depth=1
	blez	$t3, .LBB2_317
# %bb.315:                              # %if.end142.i
                                        #   in Loop: Header=BB2_286 Depth=1
	add.d	$a7, $t4, $a7
	addi.d	$s8, $t8, -1
	st.b	$a3, $t8, -1
	addi.d	$s1, $t7, -1
	addi.w	$t0, $t0, 2
	st.b	$a3, $t7, -1
	move	$s6, $t1
	bge	$s5, $t0, .LBB2_286
.LBB2_316:                              # %for.end148.i
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	bgtz	$s5, .LBB2_318
	b	.LBB2_320
.LBB2_317:
	move	$s8, $t8
	move	$s1, $t7
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	blez	$s5, .LBB2_320
.LBB2_318:                              # %for.body152.preheader.i
	move	$fp, $s6
	move	$s0, $s5
	.p2align	4, , 16
.LBB2_319:                              # %for.body152.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB2_319
.LBB2_320:                              # %for.cond160.preheader.i
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 384                   # 8-byte Folded Reload
	blez	$s2, .LBB2_323
# %bb.321:                              # %for.body163.preheader.i
	move	$fp, $s3
	move	$s0, $s2
	.p2align	4, , 16
.LBB2_322:                              # %for.body163.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s7, $s7, 8
	bnez	$s0, .LBB2_322
.LBB2_323:                              # %if.end620
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_325
# %bb.324:                              # %if.end620
	ori	$a0, $a4, 2881
	blt	$a3, $a0, .LBB2_326
.LBB2_325:                              # %if.then629
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
.LBB2_326:                              # %if.end631
	blez	$s5, .LBB2_329
# %bb.327:                              # %for.body635.lr.ph
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.mseq1)
	.p2align	4, , 16
.LBB2_328:                              # %for.body635
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 8
	bnez	$s5, .LBB2_328
.LBB2_329:                              # %for.cond644.preheader
	blez	$s2, .LBB2_332
# %bb.330:                              # %for.body647.lr.ph
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.mseq2)
	.p2align	4, , 16
.LBB2_331:                              # %for.body647
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB2_331
.LBB2_332:                              # %for.end655
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bltz	$a0, .LBB2_335
# %bb.333:                              # %for.body662.lr.ph
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(H__align.gappat1)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bstrpick.d	$s0, $a0, 31, 0
	.p2align	4, , 16
.LBB2_334:                              # %for.body662
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB2_334
.LBB2_335:                              # %for.cond670.preheader
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bltz	$s4, .LBB2_338
# %bb.336:                              # %for.body674.lr.ph
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a1, %pc_lo12(H__align.gappat2)
	addi.d	$a0, $a0, 1
	bstrpick.d	$s0, $a0, 31, 0
	.p2align	4, , 16
.LBB2_337:                              # %for.body674
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB2_337
.LBB2_338:                              # %for.end681
	fmov.s	$fa0, $fs0
	fld.d	$fs3, $sp, 424                  # 8-byte Folded Reload
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
.LBB2_339:                              # %vector.ph
	andi	$a2, $s7, 12
	bstrpick.d	$a3, $s7, 31, 4
	slli.d	$a5, $a3, 4
	addi.d	$a3, $s1, 32
	addi.d	$a4, $a1, 32
	move	$a6, $a5
	.p2align	4, , 16
.LBB2_340:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a3, $a3, 64
	addi.d	$a6, $a6, -16
	addi.d	$a4, $a4, 64
	bnez	$a6, .LBB2_340
# %bb.341:                              # %middle.block
	beq	$a0, $a5, .LBB2_36
# %bb.342:                              # %vec.epilog.iter.check
	beqz	$a2, .LBB2_347
.LBB2_343:                              # %vec.epilog.ph
	bstrpick.d	$a4, $s7, 31, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a2, $a4, $a1, 4
	andi	$a3, $s7, 3
	alsl.d	$a4, $a4, $s1, 4
	alsl.d	$a7, $a5, $s1, 2
	alsl.d	$a1, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB2_344:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a7, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB2_344
# %bb.345:                              # %vec.epilog.middle.block
	bne	$a0, $a6, .LBB2_35
	b	.LBB2_36
.LBB2_346:
	addi.d	$a5, $a4, 1
	b	.LBB2_102
.LBB2_347:
	alsl.d	$a2, $a5, $a1, 2
	sub.d	$a3, $s7, $a5
	alsl.d	$a4, $a5, $s1, 2
	b	.LBB2_35
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
