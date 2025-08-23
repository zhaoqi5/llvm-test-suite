	.file	"does_x_win.c"
	.text
	.globl	does_next_player_win            # -- Begin function does_next_player_win
	.p2align	5
	.type	does_next_player_win,@function
does_next_player_win:                   # @does_next_player_win
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s2, $a0
	addi.d	$a0, $sp, 24
	ori	$a2, $zero, 128
	addi.d	$s1, $sp, 24
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(g_info_totals)
	pcalau12i	$a1, %got_pc_hi20(g_board_size)
	ld.d	$a1, $a1, %got_pc_lo12(g_board_size)
	ld.d	$a0, $a0, %got_pc_lo12(g_info_totals)
	pcalau12i	$a2, %got_pc_hi20(g_empty_squares)
	slli.d	$a3, $s2, 2
	ldx.w	$a3, $a1, $a3
	ld.d	$a1, $a2, %got_pc_lo12(g_empty_squares)
	slli.d	$a2, $s2, 3
	ori	$a4, $zero, 1
	alsl.d	$a2, $s2, $a2, 2
	blt	$a3, $a4, .LBB0_7
# %bb.1:                                # %for.body.lr.ph.i
	pcalau12i	$a4, %got_pc_hi20(g_board)
	ld.d	$a4, $a4, %got_pc_lo12(g_board)
	slli.d	$a5, $s2, 7
	add.d	$a4, $a4, $a5
	ld.w	$a5, $a4, 4
	ld.w	$a6, $a4, 8
	move	$t0, $zero
	move	$a7, $zero
	move	$t4, $zero
	move	$t2, $zero
	move	$s0, $zero
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %while.cond.for.cond.loopexit_crit_edge.i
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$a7, $t5, 0
	st.w	$t1, $t3, 8
.LBB0_3:                                # %for.cond.loopexit.i
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$t4, $a7
	move	$a7, $t1
	beq	$t2, $a3, .LBB0_8
.LBB0_4:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	move	$t3, $t2
	move	$t1, $t0
	or	$t2, $t4, $a5
	move	$a5, $a6
	slli.d	$a6, $t3, 2
	addi.d	$t4, $a6, 12
	ldx.w	$t0, $t4, $s1
	or	$t2, $t2, $a5
	or	$t2, $t2, $t1
	or	$t2, $t2, $a7
	or	$t2, $t2, $t0
	ldx.wu	$t5, $a4, $a6
	bstrpick.d	$t6, $t2, 31, 1
	ldx.wu	$a6, $a4, $t4
	or	$t2, $t6, $t2
	srli.d	$t4, $t5, 1
	and	$t4, $t4, $t5
	srli.d	$t5, $a6, 1
	and	$t5, $t5, $a6
	or	$t4, $t5, $t4
	andn	$t4, $t4, $t2
	addi.d	$t2, $t3, 1
	beqz	$t4, .LBB0_3
# %bb.5:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$t5, $t2, $s1, 2
	alsl.d	$t3, $t3, $s1, 2
	ld.w	$a7, $t5, 0
	ld.w	$t1, $t3, 8
	.p2align	4, , 16
.LBB0_6:                                # %while.body.i
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.w	$t6, $zero, $t4
	and	$t6, $t4, $t6
	slli.d	$t7, $t6, 1
	or	$t6, $t7, $t6
	andn	$t4, $t4, $t6
	addi.w	$t7, $t4, 0
	or	$a7, $t6, $a7
	or	$t1, $t6, $t1
	addi.w	$s0, $s0, 1
	bnez	$t7, .LBB0_6
	b	.LBB0_2
.LBB0_7:
	move	$s0, $zero
.LBB0_8:                                # %pack_prot.exit
	ldx.w	$s1, $a0, $a2
	ld.w	$s3, $a1, 0
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 180
	addi.d	$a3, $sp, 176
	addi.d	$a4, $sp, 172
	addi.d	$a5, $sp, 168
	addi.d	$a6, $sp, 164
	move	$a1, $s2
	pcaddu18i	$ra, %call36(pack_vuln)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 156
	addi.d	$a4, $sp, 152
	move	$a1, $s2
	pcaddu18i	$ra, %call36(pack_safe)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB0_22
.LBB0_9:                                # %if.end
	ori	$a1, $zero, 1
	ori	$a0, $zero, 1
	bstrins.d	$a0, $a0, 32, 31
	and	$a0, $s0, $a0
	addi.w	$a2, $a0, 0
	lu12i.w	$a0, 349525
	bne	$a2, $a1, .LBB0_11
# %bb.10:                               # %if.then9
	ld.w	$a2, $sp, 180
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 2
	b	.LBB0_28
.LBB0_11:                               # %if.else
	ld.w	$a1, $sp, 180
	lu12i.w	$a2, -349526
	ori	$a2, $a2, 2731
	mul.d	$a2, $a1, $a2
	lu12i.w	$a3, 174762
	ori	$a3, $a3, 2730
	add.w	$a2, $a2, $a3
	ori	$a3, $a0, 1365
	bltu	$a2, $a3, .LBB0_14
.LBB0_12:                               # %if.then12
	ld.w	$a3, $sp, 176
	addi.w	$a2, $a1, -1
	addi.d	$s1, $s1, 1
	blt	$a3, $a1, .LBB0_28
# %bb.13:                               # %if.then16
	addi.d	$a1, $a3, -1
	st.w	$a1, $sp, 176
	b	.LBB0_28
.LBB0_14:                               # %if.else19
	ld.w	$a2, $sp, 172
	andi	$a3, $a2, 1
	bnez	$a3, .LBB0_20
# %bb.15:                               # %if.else29
	ld.wu	$a3, $sp, 160
	andi	$a4, $a3, 1
	bnez	$a4, .LBB0_23
# %bb.16:                               # %if.else35
	ld.wu	$a3, $sp, 156
	andi	$a4, $a3, 1
	bnez	$a4, .LBB0_24
# %bb.17:                               # %if.else41
	ld.wu	$a3, $sp, 152
	andi	$a4, $a3, 1
	bnez	$a4, .LBB0_25
# %bb.18:                               # %if.else47
	ori	$a3, $zero, 1
	bge	$a1, $a3, .LBB0_12
# %bb.19:                               # %if.else56
	blt	$a2, $a3, .LBB0_45
.LBB0_20:                               # %if.then22
	ld.w	$a3, $sp, 168
	addi.d	$a4, $a2, -1
	st.w	$a4, $sp, 172
	addi.d	$s1, $s1, 1
	blt	$a3, $a2, .LBB0_27
# %bb.21:                               # %if.then26
	addi.d	$a2, $a3, -1
	st.w	$a2, $sp, 168
	b	.LBB0_27
.LBB0_22:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s4, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$a3, $sp, 180
	ld.w	$a4, $sp, 176
	ld.w	$a5, $sp, 172
	ld.w	$a6, $sp, 168
	ld.w	$a2, $sp, 164
	st.d	$s3, $sp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	st.d	$a2, $sp, 0
	move	$a2, $s0
	move	$a7, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$a2, $sp, 160
	ld.w	$a3, $sp, 156
	ld.w	$a4, $sp, 152
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_9
.LBB0_23:                               # %if.then32
	ld.w	$a2, $sp, 164
	addi.d	$a3, $a3, -1
	st.w	$a3, $sp, 160
	addi.d	$a2, $a2, 3
	b	.LBB0_26
.LBB0_24:                               # %if.then38
	ld.w	$a2, $sp, 164
	addi.d	$a3, $a3, -1
	st.w	$a3, $sp, 156
	addi.d	$a2, $a2, 2
	b	.LBB0_26
.LBB0_25:                               # %if.then44
	ld.w	$a2, $sp, 164
	addi.d	$a3, $a3, -1
	st.w	$a3, $sp, 152
	addi.d	$a2, $a2, 1
.LBB0_26:                               # %if.end79
	st.w	$a2, $sp, 164
.LBB0_27:                               # %if.end79
	move	$a2, $a1
.LBB0_28:                               # %if.end79
	ori	$a1, $zero, 1
	bstrins.d	$a1, $a1, 32, 31
	and	$a1, $s0, $a1
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	addi.w	$a3, $a2, 2
	masknez	$a2, $a2, $a1
	maskeqz	$a3, $a3, $a1
	or	$a4, $a3, $a2
	sub.d	$a1, $s0, $a1
	ori	$a5, $a0, 1366
	mul.d	$a3, $a4, $a5
	ld.wu	$a2, $sp, 172
	srli.d	$a6, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a6, $a3, $a6
	srli.d	$a3, $a2, 31
	add.w	$a3, $a2, $a3
	srli.d	$a3, $a3, 1
	add.d	$a1, $a1, $s1
	add.d	$a1, $a1, $a6
	add.w	$a1, $a1, $a3
	alsl.d	$a6, $a6, $a6, 1
	sub.w	$a7, $a4, $a6
	andi	$t0, $a2, 1
	beqz	$a7, .LBB0_31
# %bb.29:                               # %if.end79
	beqz	$t0, .LBB0_31
# %bb.30:                               # %if.end105.thread
	ld.w	$a7, $sp, 164
	ld.w	$a6, $sp, 160
	addi.w	$a1, $a1, 1
	addi.d	$a7, $a7, -1
	st.w	$a7, $sp, 164
	b	.LBB0_32
.LBB0_31:                               # %if.else97
	ld.w	$a6, $sp, 160
	or	$a7, $a7, $t0
	bnez	$a7, .LBB0_38
.LBB0_32:                               # %if.then107
	ori	$a7, $zero, 1
	bstrins.d	$a7, $a7, 32, 31
	and	$a7, $a6, $a7
	ld.w	$t0, $sp, 156
	addi.w	$a7, $a7, 0
	addi.d	$a7, $a7, -1
	sltui	$t1, $a7, 1
	add.w	$a7, $t0, $t1
	ld.w	$t0, $sp, 152
	ori	$t2, $zero, 1
	move	$t3, $a7
	bstrins.d	$t3, $zero, 30, 1
	sub.w	$a6, $a6, $t1
	bne	$t3, $t2, .LBB0_34
.LBB0_33:                               # %if.then116
	addi.w	$a7, $a7, -1
	addi.w	$t0, $t0, 1
.LBB0_34:                               # %if.end144
	ld.w	$t1, $sp, 176
	ori	$a0, $a0, 1365
	mul.d	$a0, $a4, $a0
	srli.d	$a0, $a0, 32
	sub.w	$a0, $a0, $a4
	bstrpick.d	$t2, $a0, 31, 31
	srli.d	$a0, $a0, 1
	add.d	$a0, $a0, $t2
	sub.w	$a4, $a4, $t1
	mul.d	$a4, $a4, $a5
	srli.d	$a5, $a4, 63
	srli.d	$a4, $a4, 32
	ld.w	$t2, $sp, 164
	add.d	$a4, $a4, $a5
	ld.w	$a5, $sp, 168
	add.d	$a0, $t1, $a0
	add.d	$a0, $a0, $t2
	add.w	$a0, $a0, $a4
	sub.d	$a2, $a2, $a5
	bstrpick.d	$a4, $a2, 31, 31
	add.w	$a2, $a2, $a4
	srli.d	$a2, $a2, 1
	sub.d	$a3, $a5, $a3
	add.w	$a2, $a3, $a2
	add.d	$a0, $a2, $a0
	bstrpick.d	$a2, $a6, 31, 31
	add.w	$a2, $a6, $a2
	srai.d	$a3, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$a2, $a2, $a3
	add.d	$a0, $a0, $a2
	bstrpick.d	$a2, $a7, 31, 31
	add.d	$a2, $a7, $a2
	bstrpick.d	$a2, $a2, 31, 1
	alsl.d	$a0, $a2, $a0, 1
	bstrpick.d	$a2, $t0, 31, 31
	add.w	$a2, $t0, $a2
	srli.d	$a2, $a2, 1
	add.d	$a0, $a0, $a2
	alsl.w	$a0, $a1, $a0, 1
	sub.d	$a0, $s3, $a0
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 1
	sub.w	$s0, $a1, $a2
	beqz	$fp, .LBB0_37
# %bb.35:                               # %if.then170
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bltz	$s0, .LBB0_37
# %bb.36:                               # %if.then174
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_37:                               # %cleanup
	move	$a0, $s0
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB0_38:                               # %if.else120
	ori	$t1, $zero, 1
	ori	$t2, $zero, 1
	bstrins.d	$t2, $t2, 32, 31
	and	$a7, $a6, $t2
	addi.w	$a7, $a7, 0
	bne	$a7, $t1, .LBB0_40
# %bb.39:                               # %if.then123
	ld.w	$t0, $sp, 164
	ld.wu	$a7, $sp, 156
	addi.d	$t3, $t0, 3
	ld.w	$t0, $sp, 152
	and	$t2, $a7, $t2
	addi.w	$t2, $t2, 0
	st.w	$t3, $sp, 164
	beq	$t2, $t1, .LBB0_33
	b	.LBB0_34
.LBB0_40:                               # %if.else131
	ld.wu	$a7, $sp, 156
	and	$t0, $a7, $t2
	addi.w	$t0, $t0, 0
	bne	$t0, $t1, .LBB0_42
# %bb.41:                               # %if.then134
	ld.w	$t1, $sp, 164
	ld.w	$t0, $sp, 152
	addi.d	$t1, $t1, 2
	b	.LBB0_44
.LBB0_42:                               # %if.else136
	ld.wu	$t0, $sp, 152
	ori	$t1, $zero, 1
	ori	$t2, $zero, 1
	bstrins.d	$t2, $t2, 32, 31
	and	$t2, $t0, $t2
	addi.w	$t2, $t2, 0
	bne	$t2, $t1, .LBB0_34
# %bb.43:                               # %if.then139
	ld.w	$t1, $sp, 164
	addi.d	$t1, $t1, 1
.LBB0_44:                               # %if.end144
	st.w	$t1, $sp, 164
	b	.LBB0_34
.LBB0_45:                               # %if.else65
	ori	$a2, $zero, 1
	blt	$s0, $a2, .LBB0_47
# %bb.46:                               # %if.then67
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 2
	b	.LBB0_27
.LBB0_47:
	addi.w	$s0, $zero, -1
	b	.LBB0_37
.Lfunc_end0:
	.size	does_next_player_win, .Lfunc_end0-does_next_player_win
                                        # -- End function
	.p2align	5                               # -- Begin function pack_vuln
	.type	pack_vuln,@function
pack_vuln:                              # @pack_vuln
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
	pcalau12i	$a7, %got_pc_hi20(g_board_size)
	ld.d	$t7, $a7, %got_pc_lo12(g_board_size)
	slli.d	$a7, $a1, 2
	ldx.w	$t0, $t7, $a7
	ori	$a7, $zero, 1
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	blt	$t0, $a7, .LBB1_38
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a6, %got_pc_hi20(g_board)
	ld.d	$t8, $a6, %got_pc_lo12(g_board)
	move	$t5, $zero
	move	$t6, $zero
	move	$t0, $zero
	move	$t1, $zero
	move	$t2, $zero
	move	$t3, $zero
	move	$t4, $zero
	move	$s7, $zero
	alsl.d	$a5, $a1, $t7, 2
	slli.d	$a1, $a1, 7
	add.d	$a1, $t8, $a1
	ld.w	$s3, $a0, 0
	addi.w	$t7, $zero, -1
	ori	$t8, $zero, 3
	ori	$fp, $zero, 4
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	move	$s1, $s7
.LBB1_3:                                # %for.inc
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a6, $a5, 0
	move	$s3, $s0
	move	$s7, $s1
	bge	$t5, $a6, .LBB1_39
.LBB1_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
	move	$s1, $t5
	addi.d	$t5, $t5, 1
	slli.d	$s0, $t5, 2
	ldx.w	$s2, $a1, $s0
	ldx.w	$s0, $a0, $s0
	or	$s2, $s0, $s2
	beq	$s2, $t7, .LBB1_2
# %bb.5:                                # %while.body.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$s4, $s1, $a1, 2
	ld.wu	$s5, $s4, 8
	move	$s8, $zero
	slli.d	$s4, $s5, 1
	srli.d	$s6, $s5, 1
	and	$s4, $s4, $s6
	slli.d	$s1, $s1, 2
	ldx.wu	$s1, $a1, $s1
	or	$s4, $s4, $s5
	orn	$s4, $s3, $s4
	alsl.d	$s3, $t5, $a0, 2
	and	$s5, $s1, $s5
	nor	$s6, $s2, $zero
	b	.LBB1_9
.LBB1_6:                                # %if.then85
                                        #   in Loop: Header=BB1_9 Depth=2
	ori	$s8, $zero, 3
	.p2align	4, , 16
.LBB1_7:                                # %if.end168.fold.split
                                        #   in Loop: Header=BB1_9 Depth=2
	move	$t6, $s6
.LBB1_8:                                # %if.end168
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.w	$a6, $s1, 0
	addi.w	$s2, $s7, 0
	xor	$s6, $s7, $s1
	beq	$s2, $a6, .LBB1_32
.LBB1_9:                                # %while.body
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s2, $s7
	move	$s1, $s6
	sub.w	$s6, $zero, $s6
	and	$s7, $s1, $s6
	bstrpick.d	$ra, $s7, 31, 1
	and	$a6, $ra, $s2
	move	$s6, $t6
	beqz	$a6, .LBB1_18
.LBB1_10:                               # %if.end74
                                        #   in Loop: Header=BB1_9 Depth=2
	and	$a6, $s5, $s7
	beqz	$a6, .LBB1_14
# %bb.11:                               # %if.then77
                                        #   in Loop: Header=BB1_9 Depth=2
	bltu	$t8, $s8, .LBB1_25
# %bb.12:                               # %if.then77
                                        #   in Loop: Header=BB1_9 Depth=2
	slli.d	$a6, $s8, 2
	pcalau12i	$t6, %pc_hi20(.LJTI1_0)
	addi.d	$t6, $t6, %pc_lo12(.LJTI1_0)
	ldx.w	$a6, $t6, $a6
	add.d	$a6, $t6, $a6
	ori	$s8, $zero, 1
	move	$t6, $s6
	jr	$a6
.LBB1_13:                               # %if.then82
                                        #   in Loop: Header=BB1_9 Depth=2
	move	$s8, $zero
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_14:                               # %if.else97
                                        #   in Loop: Header=BB1_9 Depth=2
	bltu	$fp, $s8, .LBB1_7
# %bb.15:                               # %if.else97
                                        #   in Loop: Header=BB1_9 Depth=2
	slli.d	$a6, $s8, 2
	pcalau12i	$t6, %pc_hi20(.LJTI1_1)
	addi.d	$t6, $t6, %pc_lo12(.LJTI1_1)
	ldx.w	$a6, $t6, $a6
	add.d	$a6, $t6, $a6
	ori	$s8, $zero, 2
	move	$t6, $s7
	jr	$a6
.LBB1_16:                               # %if.then102
                                        #   in Loop: Header=BB1_9 Depth=2
	or	$a6, $s7, $s0
	or	$s0, $a6, $ra
	or	$a6, $ra, $s7
	and	$a6, $a6, $s4
	addi.w	$a6, $a6, 0
	st.w	$s0, $s3, 0
	move	$s8, $zero
	beqz	$a6, .LBB1_31
# %bb.17:                               # %if.then115
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.d	$t3, $t3, 1
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_18:                               # %if.then
                                        #   in Loop: Header=BB1_9 Depth=2
	beq	$s8, $t8, .LBB1_22
# %bb.19:                               # %if.then
                                        #   in Loop: Header=BB1_9 Depth=2
	bne	$s8, $a7, .LBB1_24
# %bb.20:                               # %if.then50
                                        #   in Loop: Header=BB1_9 Depth=2
	move	$s8, $zero
	addi.d	$t0, $t0, 1
	or	$s0, $s0, $s2
	st.w	$s0, $s3, 0
	b	.LBB1_10
.LBB1_21:                               # %if.then88
                                        #   in Loop: Header=BB1_9 Depth=2
	ori	$s8, $zero, 4
	b	.LBB1_7
.LBB1_22:                               # %if.then56
                                        #   in Loop: Header=BB1_9 Depth=2
	slli.d	$a6, $s6, 1
	or	$a6, $s6, $a6
	or	$s0, $a6, $s0
	and	$a6, $a6, $s4
	addi.w	$a6, $a6, 0
	st.w	$s0, $s3, 0
	move	$s8, $zero
	bnez	$a6, .LBB1_27
# %bb.23:                               # %if.else70
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.d	$t1, $t1, 1
	b	.LBB1_10
.LBB1_24:                               #   in Loop: Header=BB1_9 Depth=2
	move	$s8, $zero
	b	.LBB1_10
.LBB1_25:                               # %if.else89
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.d	$a6, $s8, -4
	sltui	$a6, $a6, 1
	masknez	$t6, $s8, $a6
	maskeqz	$a6, $t8, $a6
	or	$s8, $a6, $t6
	b	.LBB1_7
.LBB1_26:                               # %if.then142
                                        #   in Loop: Header=BB1_9 Depth=2
	slli.d	$a6, $s6, 1
	or	$a6, $s6, $a6
	or	$s0, $a6, $s0
	st.w	$s0, $s3, 0
	and	$a6, $a6, $s4
	addi.w	$a6, $a6, 0
	sltui	$t6, $a6, 1
	sltu	$a6, $zero, $a6
	add.d	$t3, $t3, $a6
	add.d	$t1, $t1, $t6
	move	$t6, $s7
	b	.LBB1_8
.LBB1_27:                               # %if.then68
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.d	$t3, $t3, 1
	b	.LBB1_10
.LBB1_28:                               # %if.then122
                                        #   in Loop: Header=BB1_9 Depth=2
	slli.d	$a6, $s6, 1
	or	$a6, $s6, $a6
	or	$s0, $a6, $s0
	and	$a6, $a6, $s4
	addi.w	$a6, $a6, 0
	st.w	$s0, $s3, 0
	move	$s8, $zero
	bnez	$a6, .LBB1_30
# %bb.29:                               # %if.else137
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.d	$t2, $t2, 1
	b	.LBB1_7
.LBB1_30:                               # %if.then135
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.d	$t4, $t4, 1
	b	.LBB1_7
.LBB1_31:                               # %if.else117
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.d	$t1, $t1, 1
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_32:                               # %while.end
                                        #   in Loop: Header=BB1_4 Depth=1
	beq	$s8, $t8, .LBB1_35
# %bb.33:                               # %while.end
                                        #   in Loop: Header=BB1_4 Depth=1
	bne	$s8, $a7, .LBB1_3
# %bb.34:                               # %if.then170
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$t0, $t0, 1
	or	$s0, $s0, $s1
	st.w	$s0, $s3, 0
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_35:                               # %if.then178
                                        #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a6, $t6, 1
	or	$a6, $t6, $a6
	or	$s0, $a6, $s0
	and	$a6, $a6, $s4
	addi.w	$a6, $a6, 0
	st.w	$s0, $s3, 0
	bnez	$a6, .LBB1_37
# %bb.36:                               # %if.else193
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$t1, $t1, 1
	b	.LBB1_3
.LBB1_37:                               # %if.then191
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$t3, $t3, 1
	b	.LBB1_3
.LBB1_38:
	move	$t4, $zero
	move	$t3, $zero
	move	$t2, $zero
	move	$t1, $zero
	move	$t0, $zero
.LBB1_39:                               # %for.end
	add.d	$a0, $t3, $t4
	st.w	$a0, $a2, 0
	st.w	$t3, $a3, 0
	add.d	$a0, $t1, $t2
	st.w	$a0, $a4, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$t1, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$t0, $a0, 0
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
	.size	pack_vuln, .Lfunc_end1-pack_vuln
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
.LJTI1_1:
	.word	.LBB1_8-.LJTI1_1
	.word	.LBB1_16-.LJTI1_1
	.word	.LBB1_28-.LJTI1_1
	.word	.LBB1_26-.LJTI1_1
	.word	.LBB1_8-.LJTI1_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function pack_safe
	.type	pack_safe,@function
pack_safe:                              # @pack_safe
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(g_board_size)
	ld.d	$t3, $a5, %got_pc_lo12(g_board_size)
	slli.d	$a5, $a1, 2
	ldx.w	$t6, $t3, $a5
	ori	$a5, $zero, 1
	blt	$t6, $a5, .LBB2_21
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a5, %got_pc_hi20(g_board)
	ld.d	$a5, $a5, %got_pc_lo12(g_board)
	slli.d	$a6, $a1, 7
	add.d	$a6, $a5, $a6
	ld.w	$t2, $a6, 4
	move	$t1, $zero
	move	$a5, $zero
	move	$a7, $zero
	move	$t0, $zero
	alsl.d	$a1, $a1, $t3, 2
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                # %for.cond.loopexit.loopexit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$t6, $a1, 0
.LBB2_3:                                # %for.cond.loopexit
                                        #   in Loop: Header=BB2_4 Depth=1
	bge	$t1, $t6, .LBB2_22
.LBB2_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
	move	$t7, $t1
	move	$t4, $t2
	slli.d	$t8, $t1, 2
	ldx.w	$t5, $a6, $t8
	addi.d	$s0, $t1, 2
	slli.d	$fp, $s0, 2
	addi.d	$t1, $t1, 1
	slli.d	$t2, $t1, 2
	ldx.w	$t3, $a0, $t2
	ldx.w	$t2, $a6, $fp
	or	$t4, $t3, $t4
	and	$t5, $t2, $t5
	bstrpick.d	$s1, $t4, 31, 1
	or	$s1, $s1, $t4
	bstrpick.d	$s2, $t5, 31, 1
	andn	$s1, $s2, $s1
	and	$t5, $s1, $t5
	beqz	$t5, .LBB2_3
# %bb.5:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	alsl.d	$t6, $t7, $a6, 2
	alsl.d	$t7, $s0, $a6, 2
	ldx.w	$t8, $a0, $t8
	ldx.w	$fp, $a0, $fp
	alsl.d	$s0, $t1, $a0, 2
	addi.d	$s1, $t6, -4
	addi.d	$s2, $t6, 12
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_6:                                # %if.then
                                        #   in Loop: Header=BB2_10 Depth=2
	or	$t3, $t3, $s4
	st.w	$t3, $s0, 0
	ld.w	$t2, $t6, 0
	and	$t2, $t2, $s4
	addi.w	$t2, $t2, 0
	or	$t4, $t4, $s4
	beqz	$t2, .LBB2_16
.LBB2_7:                                # %if.else163
                                        #   in Loop: Header=BB2_10 Depth=2
	ld.w	$t2, $t7, 0
	and	$s5, $t2, $s4
	addi.w	$s5, $s5, 0
	beqz	$s5, .LBB2_15
.LBB2_8:                                # %if.else183
                                        #   in Loop: Header=BB2_10 Depth=2
	addi.d	$a5, $a5, 1
.LBB2_9:                                # %if.end188
                                        #   in Loop: Header=BB2_10 Depth=2
	andn	$t5, $t5, $s3
	addi.w	$s3, $t5, 0
	beqz	$s3, .LBB2_2
.LBB2_10:                               # %while.body
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.w	$s3, $zero, $t5
	and	$s5, $t5, $s3
	slli.d	$s3, $s5, 1
	or	$s3, $s3, $s5
	or	$t4, $s3, $t4
	or	$s6, $t8, $t4
	or	$s7, $s6, $fp
	bstrpick.d	$s4, $s5, 31, 1
	and	$s7, $s7, $s4
	beqz	$s7, .LBB2_6
# %bb.11:                               # %if.else104
                                        #   in Loop: Header=BB2_10 Depth=2
	or	$s4, $s6, $t5
	or	$s6, $s4, $fp
	slli.d	$s4, $s5, 2
	and	$s5, $s6, $s4
	addi.w	$s5, $s5, 0
	bnez	$s5, .LBB2_9
# %bb.12:                               # %if.then116
                                        #   in Loop: Header=BB2_10 Depth=2
	or	$t3, $t3, $s4
	st.w	$t3, $s0, 0
	ld.w	$t2, $t6, 0
	and	$t2, $t2, $s4
	addi.w	$t2, $t2, 0
	or	$t4, $t4, $s4
	bnez	$t2, .LBB2_7
# %bb.13:                               # %land.lhs.true131
                                        #   in Loop: Header=BB2_10 Depth=2
	ld.w	$t2, $s1, 0
	and	$t2, $t2, $s4
	addi.w	$t2, $t2, 0
	beqz	$t2, .LBB2_7
# %bb.14:                               # %if.then140
                                        #   in Loop: Header=BB2_10 Depth=2
	ld.w	$t2, $t7, 0
	and	$s5, $t2, $s4
	addi.w	$s5, $s5, 0
	bnez	$s5, .LBB2_20
	b	.LBB2_18
.LBB2_15:                               # %land.lhs.true172
                                        #   in Loop: Header=BB2_10 Depth=2
	ld.w	$s5, $s2, 0
	and	$s4, $s5, $s4
	addi.w	$s4, $s4, 0
	bnez	$s4, .LBB2_20
	b	.LBB2_8
.LBB2_16:                               # %land.lhs.true
                                        #   in Loop: Header=BB2_10 Depth=2
	ld.w	$t2, $s1, 0
	and	$t2, $t2, $s4
	addi.w	$t2, $t2, 0
	beqz	$t2, .LBB2_7
# %bb.17:                               # %if.then60
                                        #   in Loop: Header=BB2_10 Depth=2
	ld.w	$t2, $t7, 0
	and	$s5, $t2, $s4
	addi.w	$s5, $s5, 0
	bnez	$s5, .LBB2_20
.LBB2_18:                               # %land.lhs.true69
                                        #   in Loop: Header=BB2_10 Depth=2
	ld.w	$s5, $s2, 0
	and	$s4, $s5, $s4
	addi.w	$s4, $s4, 0
	beqz	$s4, .LBB2_20
# %bb.19:                               # %if.then78
                                        #   in Loop: Header=BB2_10 Depth=2
	addi.d	$t0, $t0, 1
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_20:                               # %if.else
                                        #   in Loop: Header=BB2_10 Depth=2
	addi.d	$a7, $a7, 1
	b	.LBB2_9
.LBB2_21:
	move	$t0, $zero
	move	$a7, $zero
	move	$a5, $zero
.LBB2_22:                               # %for.end
	st.w	$t0, $a2, 0
	st.w	$a7, $a3, 0
	st.w	$a5, $a4, 0
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	pack_safe, .Lfunc_end2-pack_safe
                                        # -- End function
	.globl	does_who_just_moved_win         # -- Begin function does_who_just_moved_win
	.p2align	5
	.type	does_who_just_moved_win,@function
does_who_just_moved_win:                # @does_who_just_moved_win
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	addi.d	$a0, $sp, 24
	ori	$a2, $zero, 128
	addi.d	$s2, $sp, 24
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(g_info_totals)
	pcalau12i	$a1, %got_pc_hi20(g_board_size)
	ld.d	$a1, $a1, %got_pc_lo12(g_board_size)
	ld.d	$a0, $a0, %got_pc_lo12(g_info_totals)
	pcalau12i	$a2, %got_pc_hi20(g_empty_squares)
	slli.d	$a3, $s1, 2
	ldx.w	$a3, $a1, $a3
	ld.d	$a1, $a2, %got_pc_lo12(g_empty_squares)
	slli.d	$a2, $s1, 3
	ori	$a4, $zero, 1
	alsl.d	$a2, $s1, $a2, 2
	blt	$a3, $a4, .LBB3_7
# %bb.1:                                # %for.body.lr.ph.i
	pcalau12i	$a4, %got_pc_hi20(g_board)
	ld.d	$a4, $a4, %got_pc_lo12(g_board)
	slli.d	$a5, $s1, 7
	add.d	$a4, $a4, $a5
	ld.w	$a5, $a4, 4
	ld.w	$a6, $a4, 8
	move	$t0, $zero
	move	$a7, $zero
	move	$t4, $zero
	move	$t2, $zero
	move	$s0, $zero
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_2:                                # %while.cond.for.cond.loopexit_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.w	$a7, $t5, 0
	st.w	$t1, $t3, 8
.LBB3_3:                                # %for.cond.loopexit.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t4, $a7
	move	$a7, $t1
	beq	$t2, $a3, .LBB3_8
.LBB3_4:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	move	$t3, $t2
	move	$t1, $t0
	or	$t2, $t4, $a5
	move	$a5, $a6
	slli.d	$a6, $t3, 2
	addi.d	$t4, $a6, 12
	ldx.w	$t0, $t4, $s2
	or	$t2, $t2, $a5
	or	$t2, $t2, $t1
	or	$t2, $t2, $a7
	or	$t2, $t2, $t0
	ldx.wu	$t5, $a4, $a6
	bstrpick.d	$t6, $t2, 31, 1
	ldx.wu	$a6, $a4, $t4
	or	$t2, $t6, $t2
	srli.d	$t4, $t5, 1
	and	$t4, $t4, $t5
	srli.d	$t5, $a6, 1
	and	$t5, $t5, $a6
	or	$t4, $t5, $t4
	andn	$t4, $t4, $t2
	addi.d	$t2, $t3, 1
	beqz	$t4, .LBB3_3
# %bb.5:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	alsl.d	$t5, $t2, $s2, 2
	alsl.d	$t3, $t3, $s2, 2
	ld.w	$a7, $t5, 0
	ld.w	$t1, $t3, 8
	.p2align	4, , 16
.LBB3_6:                                # %while.body.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.w	$t6, $zero, $t4
	and	$t6, $t4, $t6
	slli.d	$t7, $t6, 1
	or	$t6, $t7, $t6
	andn	$t4, $t4, $t6
	addi.w	$t7, $t4, 0
	or	$a7, $t6, $a7
	or	$t1, $t6, $t1
	addi.w	$s0, $s0, 1
	bnez	$t7, .LBB3_6
	b	.LBB3_2
.LBB3_7:
	move	$s0, $zero
.LBB3_8:                                # %pack_prot.exit
	ldx.w	$s2, $a0, $a2
	ld.w	$s3, $a1, 0
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 180
	addi.d	$a3, $sp, 176
	addi.d	$a4, $sp, 172
	addi.d	$a5, $sp, 168
	addi.d	$a6, $sp, 164
	move	$a1, $s1
	pcaddu18i	$ra, %call36(pack_vuln)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 156
	addi.d	$a4, $sp, 152
	move	$a1, $s1
	pcaddu18i	$ra, %call36(pack_safe)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB3_27
# %bb.9:                                # %pack_prot.exit.if.end_crit_edge
	ld.w	$s1, $sp, 180
.LBB3_10:                               # %if.end
	ori	$a0, $zero, 1
	bstrins.d	$a0, $a0, 32, 31
	and	$a0, $s0, $a0
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	addi.w	$a1, $s1, 2
	masknez	$a2, $s1, $a0
	maskeqz	$a1, $a1, $a0
	or	$a3, $a1, $a2
	sub.d	$a1, $s0, $a0
	lu12i.w	$a5, 349525
	ori	$a4, $a5, 1366
	mul.d	$a2, $a3, $a4
	ld.wu	$a0, $sp, 172
	srli.d	$a6, $a2, 63
	srli.d	$a2, $a2, 32
	add.d	$a6, $a2, $a6
	srli.d	$a2, $a0, 31
	add.w	$a2, $a0, $a2
	srli.d	$a2, $a2, 1
	add.d	$a1, $a1, $s2
	add.d	$a1, $a1, $a6
	add.w	$a1, $a1, $a2
	alsl.d	$a6, $a6, $a6, 1
	sub.w	$a7, $a3, $a6
	andi	$t0, $a0, 1
	beqz	$a7, .LBB3_13
# %bb.11:                               # %if.end
	beqz	$t0, .LBB3_13
# %bb.12:                               # %if.end29.thread
	ld.w	$a7, $sp, 164
	ld.w	$a6, $sp, 160
	addi.w	$a1, $a1, 1
	addi.d	$a7, $a7, -1
	st.w	$a7, $sp, 164
	b	.LBB3_14
.LBB3_13:                               # %if.else
	ld.w	$a6, $sp, 160
	or	$a7, $a7, $t0
	bnez	$a7, .LBB3_20
.LBB3_14:                               # %if.then31
	ori	$a7, $zero, 1
	bstrins.d	$a7, $a7, 32, 31
	and	$a7, $a6, $a7
	ld.w	$t0, $sp, 156
	addi.w	$a7, $a7, 0
	addi.d	$a7, $a7, -1
	sltui	$t1, $a7, 1
	add.w	$a7, $t0, $t1
	ld.w	$t0, $sp, 152
	ori	$t2, $zero, 1
	move	$t3, $a7
	bstrins.d	$t3, $zero, 30, 1
	sub.w	$a6, $a6, $t1
	bne	$t3, $t2, .LBB3_16
.LBB3_15:                               # %if.then40
	addi.w	$a7, $a7, -1
	addi.w	$t0, $t0, 1
.LBB3_16:                               # %if.end68
	ld.w	$t1, $sp, 176
	ori	$a5, $a5, 1365
	mul.d	$a5, $a3, $a5
	srli.d	$a5, $a5, 32
	sub.w	$a5, $a5, $a3
	bstrpick.d	$t2, $a5, 31, 31
	srli.d	$a5, $a5, 1
	add.d	$a5, $a5, $t2
	sub.w	$a3, $a3, $t1
	mul.d	$a3, $a3, $a4
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	ld.w	$t2, $sp, 164
	add.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 168
	add.d	$a5, $t1, $a5
	add.d	$a5, $a5, $t2
	add.w	$a3, $a5, $a3
	sub.d	$a0, $a0, $a4
	bstrpick.d	$a5, $a0, 31, 31
	add.w	$a0, $a0, $a5
	srli.d	$a0, $a0, 1
	sub.d	$a2, $a4, $a2
	add.w	$a0, $a2, $a0
	add.d	$a0, $a0, $a3
	bstrpick.d	$a2, $a6, 31, 31
	add.w	$a2, $a6, $a2
	srai.d	$a3, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$a2, $a2, $a3
	add.d	$a0, $a0, $a2
	bstrpick.d	$a2, $a7, 31, 31
	add.d	$a2, $a7, $a2
	bstrpick.d	$a2, $a2, 31, 1
	alsl.d	$a0, $a2, $a0, 1
	bstrpick.d	$a2, $t0, 31, 31
	add.w	$a2, $t0, $a2
	srli.d	$a2, $a2, 1
	add.d	$a0, $a0, $a2
	alsl.w	$a0, $a1, $a0, 1
	sub.d	$a0, $s3, $a0
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 1
	sub.w	$s0, $a1, $a2
	beqz	$fp, .LBB3_19
# %bb.17:                               # %if.then94
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bltz	$s0, .LBB3_19
# %bb.18:                               # %if.then98
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB3_19:                               # %if.end101
	move	$a0, $s0
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB3_20:                               # %if.else44
	ori	$t1, $zero, 1
	ori	$t2, $zero, 1
	bstrins.d	$t2, $t2, 32, 31
	and	$a7, $a6, $t2
	addi.w	$a7, $a7, 0
	bne	$a7, $t1, .LBB3_22
# %bb.21:                               # %if.then47
	ld.w	$t0, $sp, 164
	ld.wu	$a7, $sp, 156
	addi.d	$t3, $t0, 3
	ld.w	$t0, $sp, 152
	and	$t2, $a7, $t2
	addi.w	$t2, $t2, 0
	st.w	$t3, $sp, 164
	beq	$t2, $t1, .LBB3_15
	b	.LBB3_16
.LBB3_22:                               # %if.else55
	ld.wu	$a7, $sp, 156
	and	$t0, $a7, $t2
	addi.w	$t0, $t0, 0
	bne	$t0, $t1, .LBB3_24
# %bb.23:                               # %if.then58
	ld.w	$t1, $sp, 164
	ld.w	$t0, $sp, 152
	addi.d	$t1, $t1, 2
	b	.LBB3_26
.LBB3_24:                               # %if.else60
	ld.wu	$t0, $sp, 152
	ori	$t1, $zero, 1
	ori	$t2, $zero, 1
	bstrins.d	$t2, $t2, 32, 31
	and	$t2, $t0, $t2
	addi.w	$t2, $t2, 0
	bne	$t2, $t1, .LBB3_16
# %bb.25:                               # %if.then63
	ld.w	$t1, $sp, 164
	addi.d	$t1, $t1, 1
.LBB3_26:                               # %if.end68
	st.w	$t1, $sp, 164
	b	.LBB3_16
.LBB3_27:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s4, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$s1, $sp, 180
	ld.w	$a4, $sp, 176
	ld.w	$a5, $sp, 172
	ld.w	$a6, $sp, 168
	ld.w	$a2, $sp, 164
	st.d	$s3, $sp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	st.d	$a2, $sp, 0
	move	$a2, $s0
	move	$a3, $s1
	move	$a7, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$a2, $sp, 160
	ld.w	$a3, $sp, 156
	ld.w	$a4, $sp, 152
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB3_10
.Lfunc_end3:
	.size	does_who_just_moved_win, .Lfunc_end3-does_who_just_moved_win
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d moves next, do they win?\n"
	.size	.L.str, 29

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"prot %d, vuln2 %d(%d), vuln1 %d(%d), safe %d, unused %d, empty %d.\n"
	.size	.L.str.1, 68

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"safe_op2 %d, safe_op1 %d, safe_op0 %d.\n"
	.size	.L.str.2, 40

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"moves:%d, opp:%d.\n"
	.size	.L.str.3, 19

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%d just moved, do they win?\n"
	.size	.L.str.5, 29

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"H WINS"
	.size	.Lstr.1, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
