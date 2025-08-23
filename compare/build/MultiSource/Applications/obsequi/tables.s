	.file	"tables.c"
	.text
	.globl	init_static_tables              # -- Begin function init_static_tables
	.p2align	5
	.type	init_static_tables,@function
init_static_tables:                     # @init_static_tables
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(countbits16)
	addi.d	$a2, $a0, %pc_lo12(countbits16)
	st.w	$zero, $a2, 0
	addi.d	$a3, $a2, 4
	ori	$a4, $zero, 1
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	.p2align	4, , 16
.LBB0_1:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a1, 1
	slli.d	$a5, $a1, 1
	bstrpick.d	$a5, $a5, 32, 2
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a2, $a5
	andi	$a6, $a4, 1
	add.d	$a5, $a6, $a5
	st.w	$a5, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 1
	bne	$a1, $a0, .LBB0_1
# %bb.2:                                # %for.body.i1.preheader
	pcalau12i	$a1, %pc_hi20(lastbit16)
	addi.d	$a1, $a1, %pc_lo12(lastbit16)
	addi.d	$a2, $a1, 4
	ori	$a3, $zero, 1
	lu12i.w	$a4, 1
	lu12i.w	$a5, 2
	lu12i.w	$a6, 4
	ori	$a7, $zero, 15
	ori	$t0, $zero, 14
	ori	$t1, $zero, 13
	ori	$t2, $zero, 12
	ori	$t3, $zero, 11
	ori	$t4, $zero, 10
	ori	$t5, $zero, 9
	ori	$t6, $zero, 8
	ori	$t7, $zero, 7
	ori	$t8, $zero, 6
	ori	$fp, $zero, 5
	ori	$s0, $zero, 4
	ori	$s1, $zero, 3
	ori	$s2, $zero, 2
	ori	$s3, $zero, 1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                # %if.then.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$zero, $a2, 0
.LBB0_4:                                # %for.inc.i
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.w	$s3, $s3, 1
	beqz	$a0, .LBB0_35
.LBB0_5:                                # %for.body.i1
                                        # =>This Inner Loop Header: Depth=1
	andi	$s4, $s3, 1
	bnez	$s4, .LBB0_3
# %bb.6:                                # %if.end.i
                                        #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 2
	bnez	$s4, .LBB0_21
# %bb.7:                                # %if.end6.i
                                        #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 4
	bnez	$s4, .LBB0_22
# %bb.8:                                # %if.end12.i
                                        #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 8
	bnez	$s4, .LBB0_23
# %bb.9:                                # %if.end18.i
                                        #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 16
	bnez	$s4, .LBB0_24
# %bb.10:                               # %if.end24.i
                                        #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 32
	bnez	$s4, .LBB0_25
# %bb.11:                               # %if.end30.i
                                        #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 64
	bnez	$s4, .LBB0_26
# %bb.12:                               # %if.end36.i
                                        #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 128
	bnez	$s4, .LBB0_27
# %bb.13:                               # %if.end42.i
                                        #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 256
	bnez	$s4, .LBB0_28
# %bb.14:                               # %if.end48.i
                                        #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 512
	bnez	$s4, .LBB0_29
# %bb.15:                               # %if.end54.i
                                        #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 1024
	bnez	$s4, .LBB0_30
# %bb.16:                               # %if.end60.i
                                        #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 2048
	bnez	$s4, .LBB0_31
# %bb.17:                               # %if.end66.i
                                        #   in Loop: Header=BB0_5 Depth=1
	and	$s4, $s3, $a4
	bnez	$s4, .LBB0_32
# %bb.18:                               # %if.end72.i
                                        #   in Loop: Header=BB0_5 Depth=1
	and	$s4, $s3, $a5
	bnez	$s4, .LBB0_33
# %bb.19:                               # %if.end78.i
                                        #   in Loop: Header=BB0_5 Depth=1
	and	$s4, $s3, $a6
	bnez	$s4, .LBB0_34
# %bb.20:                               # %if.then87.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$a7, $a2, 0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_21:                               # %if.then3.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$a3, $a2, 0
	b	.LBB0_4
.LBB0_22:                               # %if.then9.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$s2, $a2, 0
	b	.LBB0_4
.LBB0_23:                               # %if.then15.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$s1, $a2, 0
	b	.LBB0_4
.LBB0_24:                               # %if.then21.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$s0, $a2, 0
	b	.LBB0_4
.LBB0_25:                               # %if.then27.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$fp, $a2, 0
	b	.LBB0_4
.LBB0_26:                               # %if.then33.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$t8, $a2, 0
	b	.LBB0_4
.LBB0_27:                               # %if.then39.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$t7, $a2, 0
	b	.LBB0_4
.LBB0_28:                               # %if.then45.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$t6, $a2, 0
	b	.LBB0_4
.LBB0_29:                               # %if.then51.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$t5, $a2, 0
	b	.LBB0_4
.LBB0_30:                               # %if.then57.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$t4, $a2, 0
	b	.LBB0_4
.LBB0_31:                               # %if.then63.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$t3, $a2, 0
	b	.LBB0_4
.LBB0_32:                               # %if.then69.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$t2, $a2, 0
	b	.LBB0_4
.LBB0_33:                               # %if.then75.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$t1, $a2, 0
	b	.LBB0_4
.LBB0_34:                               # %if.then81.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$t0, $a2, 0
	b	.LBB0_4
.LBB0_35:                               # %init_lastbit.exit
	move	$a0, $zero
	move	$a5, $zero
	ori	$a2, $zero, 100
	st.w	$a2, $a1, 0
	lu12i.w	$a1, 8
	lu12i.w	$a2, -65536
	lu32i.d	$a2, 0
	pcalau12i	$a3, %pc_hi20(move_table16)
	addi.d	$a3, $a3, %pc_lo12(move_table16)
	lu12i.w	$a4, 16
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               # %while.end.i
                                        #   in Loop: Header=BB0_37 Depth=1
	and	$a7, $a5, $a1
	sltui	$a7, $a7, 1
	or	$t0, $a6, $a2
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	slli.d	$a7, $a0, 2
	addi.d	$a0, $a0, 1
	stx.w	$a6, $a3, $a7
	beq	$a0, $a4, .LBB0_40
.LBB0_37:                               # %while.cond1.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
	move	$a6, $zero
	beqz	$a0, .LBB0_36
# %bb.38:                               # %while.body2.preheader.i
                                        #   in Loop: Header=BB0_37 Depth=1
	move	$a7, $a0
	.p2align	4, , 16
.LBB0_39:                               # %while.body2.i
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.w	$t0, $zero, $a7
	and	$a5, $a7, $t0
	slli.d	$t1, $a5, 1
	or	$t0, $t1, $t0
	andn	$a7, $a7, $t0
	addi.w	$t0, $a7, 0
	addi.d	$a6, $a6, 1
	bnez	$t0, .LBB0_39
	b	.LBB0_36
.LBB0_40:                               # %init_movetable.exit
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	init_static_tables, .Lfunc_end0-init_static_tables
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function init_less_static_tables
.LCPI1_0:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.text
	.globl	init_less_static_tables
	.p2align	5
	.type	init_less_static_tables,@function
init_less_static_tables:                # @init_less_static_tables
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(g_board_size)
	ld.d	$a1, $a0, %got_pc_lo12(g_board_size)
	move	$a3, $zero
	ld.w	$a0, $a1, 0
	ld.w	$a1, $a1, 4
	pcalau12i	$a2, %pc_hi20(g_keyinfo)
	addi.d	$a5, $a2, %pc_lo12(g_keyinfo)
	lu12i.w	$a4, 12
	addi.w	$a2, $zero, -1
	ori	$a6, $a4, 48
	move	$a7, $a2
	lu32i.d	$a7, 0
	ori	$t0, $zero, 1536
	ori	$t1, $zero, 32
	.p2align	4, , 16
.LBB1_1:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	move	$t2, $zero
	add.d	$t3, $a5, $a6
	.p2align	4, , 16
.LBB1_2:                                # %vector.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $a5, $t2
	st.d	$a7, $t4, 4
	stx.w	$a7, $a5, $t2
	st.d	$a2, $t4, 48
	st.w	$zero, $t4, 56
	add.d	$t4, $t3, $t2
	st.w	$a7, $t4, -44
	st.w	$a7, $t4, 4
	st.w	$a7, $t4, -48
	stx.w	$a7, $t3, $t2
	st.w	$zero, $t4, -40
	addi.d	$t2, $t2, 96
	st.w	$zero, $t4, 8
	bne	$t2, $t0, .LBB1_2
# %bb.3:                                # %for.inc14
                                        #   in Loop: Header=BB1_1 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a5, 1536
	bne	$a3, $t1, .LBB1_1
# %bb.4:                                # %for.cond17.preheader
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB1_17
# %bb.5:                                # %for.cond17.preheader
	blez	$a1, .LBB1_17
# %bb.6:                                # %for.cond20.preheader.us.preheader
	move	$a3, $zero
	move	$a7, $zero
	pcalau12i	$a5, %pc_hi20(g_keyinfo)
	addi.d	$a5, $a5, %pc_lo12(g_keyinfo)
	ori	$a4, $a4, 1588
	add.d	$a4, $a5, $a4
	addi.d	$a5, $a5, 1588
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %for.cond20.for.inc70_crit_edge.us
                                        #   in Loop: Header=BB1_8 Depth=1
	add.d	$a3, $a3, $a1
	addi.d	$a5, $a5, 1536
	addi.d	$a4, $a4, 48
	move	$a7, $a6
	beq	$a6, $a0, .LBB1_17
.LBB1_8:                                # %for.cond20.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
                                        #     Child Loop BB1_11 Depth 2
	addi.d	$a6, $a7, 1
	bgeu	$a6, $a0, .LBB1_13
# %bb.9:                                # %for.body22.us.us.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$t4, $zero
	mul.d	$a7, $a7, $a1
	move	$t0, $a4
	move	$t1, $a5
	move	$t2, $a3
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               # %if.end.us.us
                                        #   in Loop: Header=BB1_11 Depth=2
	st.w	$t6, $t0, -4
	add.d	$t2, $a1, $t2
	st.w	$t2, $t0, 0
	addi.d	$t1, $t1, 48
	addi.d	$t0, $t0, 1536
	move	$t2, $t5
	move	$t4, $t3
	beq	$a1, $t3, .LBB1_7
.LBB1_11:                               # %for.body22.us.us
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t3, $t4, 1
	addi.d	$t5, $t2, 1
	move	$t6, $t2
	bgeu	$t3, $a1, .LBB1_10
# %bb.12:                               # %if.then.us.us
                                        #   in Loop: Header=BB1_11 Depth=2
	add.d	$t6, $t4, $a7
	st.w	$t2, $t1, -4
	st.w	$t5, $t1, 0
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_13:                               # %for.body22.us58.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$a7, $zero
	move	$t0, $a5
	move	$t1, $a3
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_14:                               # %if.end.us68
                                        #   in Loop: Header=BB1_15 Depth=2
	addi.d	$t0, $t0, 48
	move	$t1, $t2
	beq	$a1, $a7, .LBB1_7
.LBB1_15:                               # %for.body22.us58
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a7, 1
	addi.d	$t2, $t1, 1
	bgeu	$a7, $a1, .LBB1_14
# %bb.16:                               # %if.then.us62
                                        #   in Loop: Header=BB1_15 Depth=2
	st.w	$t1, $t0, -4
	st.w	$t2, $t0, 0
	b	.LBB1_14
.LBB1_17:                               # %for.cond76.preheader.preheader
	move	$a3, $zero
	pcalau12i	$a4, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a4, %pc_lo12(.LCPI1_0)
	pcalau12i	$a4, %got_pc_hi20(g_zobrist)
	ld.d	$a4, $a4, %got_pc_lo12(g_zobrist)
	pcalau12i	$a5, %pc_hi20(g_keyinfo)
	addi.d	$a5, $a5, %pc_lo12(g_keyinfo)
	ori	$a6, $zero, 32
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_18:                               # %for.inc94
                                        #   in Loop: Header=BB1_19 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a6, .LBB1_26
.LBB1_19:                               # %for.cond76.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
                                        #       Child Loop BB1_24 Depth 3
	move	$a7, $zero
	alsl.d	$t0, $a3, $a3, 1
	slli.d	$t0, $t0, 9
	add.d	$t0, $a5, $t0
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_20:                               # %for.inc91
                                        #   in Loop: Header=BB1_21 Depth=2
	addi.d	$a7, $a7, 1
	beq	$a7, $a6, .LBB1_18
.LBB1_21:                               # %for.cond79.preheader
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_24 Depth 3
	move	$t3, $zero
	slli.d	$t1, $a7, 5
	alsl.d	$t1, $a7, $t1, 4
	add.d	$t1, $t0, $t1
	ori	$t2, $zero, 1
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_22:                               # %if.else.i
                                        #   in Loop: Header=BB1_24 Depth=3
	ld.w	$t5, $t3, 4
	div.w	$t6, $t4, $a1
	mul.d	$t7, $t6, $a1
	sub.w	$t8, $t4, $t7
	div.w	$fp, $t5, $a1
	mul.d	$t4, $fp, $a1
	sub.w	$t5, $t5, $t4
	nor	$s0, $t8, $zero
	add.d	$s0, $a1, $s0
	add.w	$t7, $s0, $t7
	st.w	$t7, $t3, 12
	nor	$s1, $t5, $zero
	add.d	$s1, $a1, $s1
	add.w	$s2, $s1, $t4
	st.w	$s2, $t3, 16
	nor	$t4, $t6, $zero
	add.d	$t4, $a0, $t4
	mul.d	$t4, $t4, $a1
	add.w	$s3, $t4, $t8
	st.w	$s3, $t3, 24
	nor	$s4, $fp, $zero
	add.d	$s4, $a0, $s4
	mul.d	$s4, $s4, $a1
	add.w	$s5, $s4, $t5
	st.w	$s5, $t3, 28
	add.w	$t4, $t4, $s0
	slli.d	$t6, $t6, 7
	add.d	$t6, $t6, $a4
	alsl.d	$t6, $t8, $t6, 2
	ld.w	$t6, $t6, 132
	slli.d	$t8, $fp, 7
	add.d	$t8, $t8, $a4
	alsl.d	$t5, $t5, $t8, 2
	ld.w	$t8, $t5, 132
	div.w	$t5, $t7, $a1
	mul.d	$fp, $t5, $a1
	sub.w	$t7, $t7, $fp
	slli.d	$t5, $t5, 7
	add.d	$t5, $t5, $a4
	alsl.d	$t5, $t7, $t5, 2
	ld.w	$t7, $t5, 132
	div.w	$t5, $s2, $a1
	mul.d	$fp, $t5, $a1
	sub.w	$fp, $s2, $fp
	slli.d	$t5, $t5, 7
	add.d	$t5, $t5, $a4
	alsl.d	$t5, $fp, $t5, 2
	ld.w	$fp, $t5, 132
	add.w	$t5, $s4, $s1
	xor	$t6, $t8, $t6
	st.w	$t6, $t3, 8
	xor	$t6, $fp, $t7
	div.w	$t7, $s3, $a1
	mul.d	$t8, $t7, $a1
	sub.w	$t8, $s3, $t8
	slli.d	$t7, $t7, 7
	add.d	$t7, $t7, $a4
	alsl.d	$t7, $t8, $t7, 2
	ld.w	$t7, $t7, 132
	div.w	$t8, $s5, $a1
	mul.d	$fp, $t8, $a1
	sub.w	$fp, $s5, $fp
	slli.d	$t8, $t8, 7
	add.d	$t8, $t8, $a4
	alsl.d	$t8, $fp, $t8, 2
	ld.w	$t8, $t8, 132
	div.w	$fp, $t4, $a1
	mul.d	$s0, $fp, $a1
	sub.w	$s0, $t4, $s0
	slli.d	$fp, $fp, 7
	add.d	$fp, $fp, $a4
	alsl.d	$fp, $s0, $fp, 2
	ld.w	$fp, $fp, 132
	div.w	$s0, $t5, $a1
	mul.d	$s1, $s0, $a1
	sub.w	$s1, $t5, $s1
	slli.d	$s0, $s0, 7
	add.d	$s0, $s0, $a4
	alsl.d	$s0, $s1, $s0, 2
	ld.w	$s0, $s0, 132
	st.w	$t6, $t3, 20
	xor	$t6, $t8, $t7
	st.w	$t6, $t3, 32
	xor	$t6, $s0, $fp
.LBB1_23:                               # %fill_in_key_entry.exit
                                        #   in Loop: Header=BB1_24 Depth=3
	st.w	$t5, $t3, 40
	st.w	$t4, $t3, 36
	st.w	$t6, $t3, 44
	andi	$t4, $t2, 1
	ori	$t3, $zero, 1
	move	$t2, $zero
	beqz	$t4, .LBB1_20
.LBB1_24:                               # %for.body81
                                        #   Parent Loop BB1_19 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	alsl.d	$t3, $t3, $t3, 1
	slli.d	$t3, $t3, 14
	ldx.w	$t4, $t1, $t3
	add.d	$t3, $t1, $t3
	bne	$t4, $a2, .LBB1_22
# %bb.25:                               # %if.then.i
                                        #   in Loop: Header=BB1_24 Depth=3
	move	$t6, $zero
	xvst	$xr0, $t3, 4
	move	$t5, $a2
	move	$t4, $a2
	b	.LBB1_23
.LBB1_26:                               # %for.end96
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	init_less_static_tables, .Lfunc_end1-init_less_static_tables
                                        # -- End function
	.type	g_keyinfo,@object               # @g_keyinfo
	.bss
	.globl	g_keyinfo
	.p2align	2, 0x0
g_keyinfo:
	.space	98304
	.size	g_keyinfo, 98304

	.type	countbits16,@object             # @countbits16
	.globl	countbits16
	.p2align	2, 0x0
countbits16:
	.space	262144
	.size	countbits16, 262144

	.type	lastbit16,@object               # @lastbit16
	.globl	lastbit16
	.p2align	2, 0x0
lastbit16:
	.space	262144
	.size	lastbit16, 262144

	.type	move_table16,@object            # @move_table16
	.globl	move_table16
	.p2align	2, 0x0
move_table16:
	.space	262144
	.size	move_table16, 262144

	.section	".note.GNU-stack","",@progbits
	.addrsig
