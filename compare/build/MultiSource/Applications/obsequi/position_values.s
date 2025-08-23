	.file	"position_values.c"
	.text
	.globl	set_position_values             # -- Begin function set_position_values
	.p2align	5
	.type	set_position_values,@function
set_position_values:                    # @set_position_values
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(g_first_move)
	ld.d	$fp, $a0, %got_pc_lo12(g_first_move)
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(g_board_size)
	ld.d	$a0, $a0, %got_pc_lo12(g_board_size)
	ld.w	$a1, $a0, 0
	addi.d	$a2, $a1, 3
	bstrpick.d	$a3, $a2, 31, 31
	ld.w	$a0, $a0, 4
	add.w	$a2, $a2, $a3
	ori	$a4, $zero, 3
	srai.d	$a3, $a2, 1
	blt	$a1, $a4, .LBB0_7
# %bb.1:                                # %for.cond25.preheader.lr.ph
	ori	$a2, $zero, 1
	blt	$a2, $a0, .LBB0_3
# %bb.2:                                # %for.inc73.thread281
	addi.d	$a2, $a0, 3
	bstrpick.d	$a4, $a2, 31, 31
	add.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 1
	b	.LBB0_23
.LBB0_3:                                # %for.cond25.preheader.preheader
	bstrpick.d	$a2, $a0, 31, 1
	slli.d	$a7, $a0, 2
	addi.d	$a5, $a7, -4
	addi.w	$a6, $a1, -1
	addi.d	$a7, $a7, 252
	pcalau12i	$t0, %got_pc_hi20(g_first_move)
	ld.d	$t0, $t0, %got_pc_lo12(g_first_move)
	ori	$t1, $zero, 127
	ori	$t2, $zero, 2
	ori	$t3, $zero, 260
	.p2align	4, , 16
.LBB0_4:                                # %for.cond25.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	slli.d	$t5, $a6, 7
	add.d	$t4, $a5, $t5
	addi.d	$t5, $t5, 4
	ori	$t6, $zero, 1
	move	$t7, $t3
	move	$t8, $a7
	.p2align	4, , 16
.LBB0_5:                                # %for.body31
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t1, -1
	stx.w	$t1, $t0, $t7
	stx.w	$t1, $t0, $t5
	stx.w	$t1, $t0, $t4
	stx.w	$t1, $t0, $t8
	addi.d	$t6, $t6, 2
	addi.d	$t4, $t4, -8
	addi.d	$t8, $t8, -8
	addi.d	$t5, $t5, 8
	addi.d	$t7, $t7, 8
	bgeu	$a2, $t6, .LBB0_5
# %bb.6:                                # %for.cond25.for.inc35_crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$t2, $t2, 2
	addi.w	$a6, $a6, -2
	addi.d	$a7, $a7, 256
	addi.d	$t3, $t3, 256
	bltu	$t2, $a3, .LBB0_4
.LBB0_7:                                # %for.inc38
	addi.d	$a2, $a0, 3
	bstrpick.d	$a5, $a2, 31, 31
	add.w	$a2, $a2, $a5
	srai.d	$a2, $a2, 1
	blt	$a0, $a4, .LBB0_13
# %bb.8:                                # %for.cond25.preheader.lr.ph.1
	ori	$a4, $zero, 2
	blt	$a1, $a4, .LBB0_31
# %bb.9:                                # %for.cond25.preheader.preheader.1
	bstrpick.d	$a5, $a1, 31, 1
	lu12i.w	$t4, 1
	ori	$a6, $t4, 252
	alsl.d	$a6, $a1, $a6, 2
	ori	$a7, $zero, 4092
	alsl.d	$a7, $a1, $a7, 2
	addi.w	$t0, $a0, -1
	pcalau12i	$t1, %got_pc_hi20(g_first_move)
	ld.d	$t1, $t1, %got_pc_lo12(g_first_move)
	ori	$t2, $zero, 127
	ori	$t3, $t4, 260
	ori	$t4, $t4, 4
	.p2align	4, , 16
.LBB0_10:                               # %for.cond25.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	slli.d	$t6, $t0, 7
	add.d	$t5, $a7, $t6
	add.d	$t6, $t6, $t4
	ori	$t7, $zero, 1
	move	$t8, $t3
	move	$s0, $a6
	.p2align	4, , 16
.LBB0_11:                               # %for.body31.1
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t2, $t2, -1
	stx.w	$t2, $t1, $t8
	stx.w	$t2, $t1, $t6
	stx.w	$t2, $t1, $t5
	stx.w	$t2, $t1, $s0
	addi.d	$t7, $t7, 2
	addi.d	$s0, $s0, -8
	addi.d	$t5, $t5, -8
	addi.d	$t6, $t6, 8
	addi.d	$t8, $t8, 8
	bgeu	$a5, $t7, .LBB0_11
# %bb.12:                               # %for.cond25.for.inc35_crit_edge.1
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a4, $a4, 2
	addi.d	$a6, $a6, 256
	addi.w	$t0, $t0, -2
	addi.d	$t3, $t3, 256
	bltu	$a4, $a2, .LBB0_10
.LBB0_13:                               # %for.inc38.1
	ori	$a4, $zero, 3
	blt	$a1, $a4, .LBB0_15
# %bb.14:                               # %for.cond51.preheader.lr.ph
	ori	$a5, $zero, 2
	bge	$a0, $a5, .LBB0_73
.LBB0_15:                               # %for.inc73
	blt	$a0, $a4, .LBB0_23
# %bb.16:                               # %for.cond51.preheader.lr.ph.1
	ori	$a4, $zero, 2
	blt	$a1, $a4, .LBB0_31
# %bb.17:                               # %for.cond51.preheader.preheader.1
	slli.d	$a5, $a1, 1
	bstrins.d	$a5, $zero, 1, 0
	slli.d	$a6, $a1, 2
	addi.w	$a7, $a0, -1
	ori	$t0, $zero, 90
	move	$t1, $fp
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               # %for.cond51.for.inc70_crit_edge.1
                                        #   in Loop: Header=BB0_19 Depth=1
	addi.d	$a4, $a4, 2
	addi.d	$t1, $t1, 256
	addi.w	$a7, $a7, -2
	bgeu	$a4, $a2, .LBB0_23
.LBB0_19:                               # %for.cond51.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	move	$t2, $zero
	slli.d	$t3, $a7, 7
	add.d	$t3, $fp, $t3
	move	$t4, $a6
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_20:                               # %for.inc67.1
                                        #   in Loop: Header=BB0_21 Depth=2
	addi.d	$t2, $t2, 4
	addi.d	$t4, $t4, -4
	beq	$a5, $t2, .LBB0_18
.LBB0_21:                               # %for.body58.1
                                        #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $t1, $t2
	ldptr.w	$t6, $t5, 4356
	bnez	$t6, .LBB0_20
# %bb.22:                               # %if.then.1
                                        #   in Loop: Header=BB0_21 Depth=2
	addi.d	$t0, $t0, -1
	stptr.w	$t0, $t5, 4356
	add.d	$t5, $t3, $t2
	stptr.w	$t0, $t5, 4100
	add.d	$t5, $t3, $t4
	stptr.w	$t0, $t5, 4092
	add.d	$t5, $t1, $t4
	stptr.w	$t0, $t5, 4348
	b	.LBB0_20
.LBB0_23:                               # %for.inc73.1
	ori	$a4, $zero, 5
	blt	$a1, $a4, .LBB0_31
# %bb.24:                               # %for.cond86.preheader.lr.ph
	ori	$a4, $zero, 2
	blt	$a0, $a4, .LBB0_40
# %bb.25:                               # %for.cond86.preheader.preheader
	bstrpick.d	$a4, $a0, 31, 1
	ori	$a5, $zero, 4
	slt	$a6, $a5, $a3
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a3, $a6
	or	$a5, $a6, $a5
	pcalau12i	$a6, %got_pc_hi20(g_first_move)
	ld.d	$a6, $a6, %got_pc_lo12(g_first_move)
	addi.w	$a7, $a1, -2
	slli.d	$t0, $a0, 2
	ori	$t1, $zero, 70
	ori	$t2, $zero, 3
	move	$t3, $a6
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %for.cond86.for.inc107_crit_edge
                                        #   in Loop: Header=BB0_27 Depth=1
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 128
	addi.w	$a7, $a7, -1
	beq	$t2, $a5, .LBB0_32
.LBB0_27:                               # %for.cond86.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
	move	$t4, $zero
	slli.d	$t5, $a7, 7
	add.d	$t5, $a6, $t5
	ori	$t6, $zero, 1
	move	$t7, $t0
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               # %for.inc104
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t6, $t6, 2
	addi.d	$t4, $t4, 8
	addi.d	$t7, $t7, -8
	bltu	$a4, $t6, .LBB0_26
.LBB0_29:                               # %for.body93
                                        #   Parent Loop BB0_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t8, $t3, $t4
	ld.w	$fp, $t8, 388
	bnez	$fp, .LBB0_28
# %bb.30:                               # %if.then101
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t1, $t1, -1
	st.w	$t1, $t8, 388
	add.d	$t8, $t5, $t4
	st.w	$t1, $t8, 4
	add.d	$t8, $t5, $t7
	st.w	$t1, $t8, -4
	add.d	$t8, $t3, $t7
	st.w	$t1, $t8, 380
	b	.LBB0_28
.LBB0_31:
	move	$a4, $zero
	ori	$a5, $zero, 5
	bge	$a0, $a5, .LBB0_33
	b	.LBB0_34
.LBB0_32:
	ori	$a4, $zero, 1
	ori	$a5, $zero, 5
	blt	$a0, $a5, .LBB0_34
.LBB0_33:                               # %for.cond86.preheader.lr.ph.1
	ori	$a5, $zero, 2
	bge	$a1, $a5, .LBB0_55
.LBB0_34:                               # %for.inc110.1
	beqz	$a4, .LBB0_36
# %bb.35:                               # %for.cond123.preheader.lr.ph
	ori	$a4, $zero, 2
	bge	$a0, $a4, .LBB0_61
.LBB0_36:                               # %for.inc147
	ori	$a4, $zero, 5
	blt	$a0, $a4, .LBB0_38
# %bb.37:                               # %for.cond123.preheader.lr.ph.1
	ori	$a4, $zero, 2
	bge	$a1, $a4, .LBB0_67
.LBB0_38:                               # %for.inc147.1
	ori	$a4, $zero, 1
	blt	$a1, $a4, .LBB0_40
# %bb.39:                               # %for.cond160.preheader.lr.ph
	ori	$a4, $zero, 2
	bge	$a0, $a4, .LBB0_49
.LBB0_40:                               # %for.inc184
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB0_42
# %bb.41:                               # %for.cond160.preheader.lr.ph.1
	ori	$a3, $zero, 2
	bge	$a1, $a3, .LBB0_43
.LBB0_42:                               # %for.inc184.1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_43:                               # %for.cond160.preheader.preheader.1
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	slli.d	$a3, $a1, 1
	pcalau12i	$a4, %got_pc_hi20(g_first_move)
	ld.d	$a4, $a4, %got_pc_lo12(g_first_move)
	bstrins.d	$a3, $zero, 1, 0
	slli.d	$a1, $a1, 2
	ori	$a5, $zero, 30
	ori	$a6, $zero, 1
	move	$a7, $a4
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_44:                               # %for.cond160.for.inc181_crit_edge.1
                                        #   in Loop: Header=BB0_45 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 128
	addi.w	$a0, $a0, -1
	beq	$a6, $a2, .LBB0_42
.LBB0_45:                               # %for.cond160.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_47 Depth 2
	move	$t0, $zero
	slli.d	$t1, $a0, 7
	add.d	$t1, $a4, $t1
	move	$t2, $a1
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_46:                               # %for.inc178.1
                                        #   in Loop: Header=BB0_47 Depth=2
	addi.d	$t0, $t0, 4
	addi.d	$t2, $t2, -4
	beq	$a3, $t0, .LBB0_44
.LBB0_47:                               # %for.body167.1
                                        #   Parent Loop BB0_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a7, $t0
	ldptr.w	$t4, $t3, 4228
	bnez	$t4, .LBB0_46
# %bb.48:                               # %if.then175.1
                                        #   in Loop: Header=BB0_47 Depth=2
	addi.d	$a5, $a5, -1
	stptr.w	$a5, $t3, 4228
	add.d	$t3, $t1, $t0
	stptr.w	$a5, $t3, 4100
	add.d	$t3, $t1, $t2
	stptr.w	$a5, $t3, 4092
	add.d	$t3, $a7, $t2
	stptr.w	$a5, $t3, 4220
	b	.LBB0_46
.LBB0_49:                               # %for.cond160.preheader.preheader
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	slli.d	$a4, $a0, 2
	pcalau12i	$a5, %got_pc_hi20(g_first_move)
	ld.d	$a5, $a5, %got_pc_lo12(g_first_move)
	slli.d	$a6, $a0, 1
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 30
	ori	$t0, $zero, 1
	move	$t1, $a1
	move	$t2, $a5
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_50:                               # %for.cond160.for.inc181_crit_edge
                                        #   in Loop: Header=BB0_51 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$t2, $t2, 128
	addi.w	$t1, $t1, -1
	beq	$t0, $a3, .LBB0_40
.LBB0_51:                               # %for.cond160.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_53 Depth 2
	move	$t3, $zero
	slli.d	$t4, $t1, 7
	add.d	$t4, $a5, $t4
	move	$t5, $a4
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_52:                               # %for.inc178
                                        #   in Loop: Header=BB0_53 Depth=2
	addi.d	$t3, $t3, 4
	addi.d	$t5, $t5, -4
	beq	$a6, $t3, .LBB0_50
.LBB0_53:                               # %for.body167
                                        #   Parent Loop BB0_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t6, $t2, $t3
	ld.w	$t7, $t6, 132
	bnez	$t7, .LBB0_52
# %bb.54:                               # %if.then175
                                        #   in Loop: Header=BB0_53 Depth=2
	addi.d	$a7, $a7, -1
	st.w	$a7, $t6, 132
	add.d	$t6, $t4, $t3
	st.w	$a7, $t6, 4
	add.d	$t6, $t4, $t5
	st.w	$a7, $t6, -4
	add.d	$t6, $t2, $t5
	st.w	$a7, $t6, 124
	b	.LBB0_52
.LBB0_55:                               # %for.cond86.preheader.preheader.1
	bstrpick.d	$a5, $a1, 31, 1
	ori	$a7, $zero, 4
	slt	$t0, $a7, $a2
	pcalau12i	$a6, %got_pc_hi20(g_first_move)
	ld.d	$a6, $a6, %got_pc_lo12(g_first_move)
	masknez	$a7, $a7, $t0
	maskeqz	$t0, $a2, $t0
	or	$a7, $t0, $a7
	alsl.d	$t0, $a1, $a6, 2
	addi.w	$t1, $a0, -2
	ori	$t2, $zero, 70
	ori	$t3, $zero, 3
	lu12i.w	$t5, 1
	ori	$t4, $t5, 380
	ori	$t5, $t5, 4
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_56:                               # %for.cond86.for.inc107_crit_edge.1
                                        #   in Loop: Header=BB0_57 Depth=1
	addi.d	$t3, $t3, 1
	addi.d	$t4, $t4, 128
	addi.w	$t1, $t1, -1
	beq	$t3, $a7, .LBB0_34
.LBB0_57:                               # %for.cond86.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_59 Depth 2
	slli.d	$t6, $t1, 7
	add.d	$t6, $t6, $t5
	ori	$t7, $zero, 1
	move	$t8, $a6
	move	$fp, $t0
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_58:                               # %for.inc104.1
                                        #   in Loop: Header=BB0_59 Depth=2
	addi.d	$t7, $t7, 2
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, 8
	bltu	$a5, $t7, .LBB0_56
.LBB0_59:                               # %for.body93.1
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s0, $t8, $t4
	ld.w	$s1, $s0, 8
	bnez	$s1, .LBB0_58
# %bb.60:                               # %if.then101.1
                                        #   in Loop: Header=BB0_59 Depth=2
	addi.d	$t2, $t2, -1
	st.w	$t2, $s0, 8
	stx.w	$t2, $t8, $t6
	add.d	$s0, $fp, $t6
	st.w	$t2, $s0, -8
	stx.w	$t2, $fp, $t4
	b	.LBB0_58
.LBB0_61:                               # %for.cond123.preheader.preheader
	ori	$a4, $zero, 4
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a3, $a5
	or	$a4, $a5, $a4
	addi.w	$a5, $a1, -2
	slli.d	$a6, $a0, 2
	pcalau12i	$a7, %got_pc_hi20(g_first_move)
	ld.d	$a7, $a7, %got_pc_lo12(g_first_move)
	slli.d	$t0, $a0, 1
	bstrins.d	$t0, $zero, 1, 0
	ori	$t1, $zero, 50
	ori	$t2, $zero, 3
	move	$t3, $a7
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_62:                               # %for.cond123.for.inc144_crit_edge
                                        #   in Loop: Header=BB0_63 Depth=1
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 128
	addi.w	$a5, $a5, -1
	beq	$t2, $a4, .LBB0_36
.LBB0_63:                               # %for.cond123.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_65 Depth 2
	move	$t4, $zero
	slli.d	$t5, $a5, 7
	add.d	$t5, $a7, $t5
	move	$t6, $a6
	b	.LBB0_65
	.p2align	4, , 16
.LBB0_64:                               # %for.inc141
                                        #   in Loop: Header=BB0_65 Depth=2
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, -4
	beq	$t0, $t4, .LBB0_62
.LBB0_65:                               # %for.body130
                                        #   Parent Loop BB0_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t7, $t3, $t4
	ld.w	$t8, $t7, 388
	bnez	$t8, .LBB0_64
# %bb.66:                               # %if.then138
                                        #   in Loop: Header=BB0_65 Depth=2
	addi.d	$t1, $t1, -1
	st.w	$t1, $t7, 388
	add.d	$t7, $t5, $t4
	st.w	$t1, $t7, 4
	add.d	$t7, $t5, $t6
	st.w	$t1, $t7, -4
	add.d	$t7, $t3, $t6
	st.w	$t1, $t7, 380
	b	.LBB0_64
.LBB0_67:                               # %for.cond123.preheader.preheader.1
	ori	$a4, $zero, 4
	slt	$a5, $a4, $a2
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a2, $a5
	or	$a4, $a5, $a4
	slli.d	$a5, $a1, 1
	bstrins.d	$a5, $zero, 1, 0
	pcalau12i	$a6, %got_pc_hi20(g_first_move)
	ld.d	$a6, $a6, %got_pc_lo12(g_first_move)
	slli.d	$a7, $a1, 2
	addi.w	$t0, $a0, -2
	ori	$t1, $zero, 50
	ori	$t2, $zero, 3
	move	$t3, $a6
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               # %for.cond123.for.inc144_crit_edge.1
                                        #   in Loop: Header=BB0_69 Depth=1
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 128
	addi.w	$t0, $t0, -1
	beq	$t2, $a4, .LBB0_38
.LBB0_69:                               # %for.cond123.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_71 Depth 2
	move	$t4, $zero
	slli.d	$t5, $t0, 7
	add.d	$t5, $a6, $t5
	move	$t6, $a7
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_70:                               # %for.inc141.1
                                        #   in Loop: Header=BB0_71 Depth=2
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, -4
	beq	$a5, $t4, .LBB0_68
.LBB0_71:                               # %for.body130.1
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t7, $t3, $t4
	ldptr.w	$t8, $t7, 4484
	bnez	$t8, .LBB0_70
# %bb.72:                               # %if.then138.1
                                        #   in Loop: Header=BB0_71 Depth=2
	addi.d	$t1, $t1, -1
	stptr.w	$t1, $t7, 4484
	add.d	$t7, $t5, $t4
	stptr.w	$t1, $t7, 4100
	add.d	$t7, $t5, $t6
	stptr.w	$t1, $t7, 4092
	add.d	$t7, $t3, $t6
	stptr.w	$t1, $t7, 4476
	b	.LBB0_70
.LBB0_73:                               # %for.cond51.preheader.preheader
	addi.w	$a6, $a1, -1
	pcalau12i	$a7, %got_pc_hi20(g_first_move)
	ld.d	$a7, $a7, %got_pc_lo12(g_first_move)
	slli.d	$t0, $a0, 2
	slli.d	$t1, $a0, 1
	bstrins.d	$t1, $zero, 1, 0
	ori	$t2, $zero, 90
	move	$t3, $a7
	b	.LBB0_75
	.p2align	4, , 16
.LBB0_74:                               # %for.cond51.for.inc70_crit_edge
                                        #   in Loop: Header=BB0_75 Depth=1
	addi.d	$a5, $a5, 2
	addi.d	$t3, $t3, 256
	addi.w	$a6, $a6, -2
	bgeu	$a5, $a3, .LBB0_15
.LBB0_75:                               # %for.cond51.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_77 Depth 2
	move	$t4, $zero
	slli.d	$t5, $a6, 7
	add.d	$t5, $a7, $t5
	move	$t6, $t0
	b	.LBB0_77
	.p2align	4, , 16
.LBB0_76:                               # %for.inc67
                                        #   in Loop: Header=BB0_77 Depth=2
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, -4
	beq	$t1, $t4, .LBB0_74
.LBB0_77:                               # %for.body58
                                        #   Parent Loop BB0_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t7, $t3, $t4
	ld.w	$t8, $t7, 260
	bnez	$t8, .LBB0_76
# %bb.78:                               # %if.then
                                        #   in Loop: Header=BB0_77 Depth=2
	addi.d	$t2, $t2, -1
	st.w	$t2, $t7, 260
	add.d	$t7, $t5, $t4
	st.w	$t2, $t7, 4
	add.d	$t7, $t5, $t6
	st.w	$t2, $t7, -4
	add.d	$t7, $t3, $t6
	st.w	$t2, $t7, 252
	b	.LBB0_76
.Lfunc_end0:
	.size	set_position_values, .Lfunc_end0-set_position_values
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
