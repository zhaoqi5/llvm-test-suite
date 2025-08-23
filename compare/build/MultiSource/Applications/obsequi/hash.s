	.file	"hash.c"
	.text
	.globl	hashstore                       # -- Begin function hashstore
	.p2align	5
	.type	hashstore,@function
hashstore:                              # @hashstore
# %bb.0:                                # %entry
	pcalau12i	$a6, %got_pc_hi20(g_norm_hashkey)
	ld.d	$t4, $a6, %got_pc_lo12(g_norm_hashkey)
	pcalau12i	$a6, %got_pc_hi20(g_trans_table)
	ld.d	$a6, $a6, %got_pc_lo12(g_trans_table)
	ld.w	$t0, $t4, 16
	ld.d	$t1, $a6, 0
	slli.d	$t2, $t0, 4
	alsl.d	$t2, $t0, $t2, 3
	ldx.w	$t6, $t1, $t2
	ld.w	$t5, $t4, 0
	srli.d	$t0, $a5, 32
	add.d	$t3, $t1, $t2
	bne	$t6, $t5, .LBB0_4
# %bb.1:                                # %land.lhs.true
	ld.w	$t6, $t3, 4
	ld.w	$t7, $t4, 4
	bne	$t6, $t7, .LBB0_4
# %bb.2:                                # %land.lhs.true7
	ld.w	$t6, $t3, 8
	ld.w	$t7, $t4, 8
	bne	$t6, $t7, .LBB0_4
# %bb.3:                                # %land.lhs.true13
	ld.w	$t6, $t3, 12
	ld.w	$t7, $t4, 12
	beq	$t6, $t7, .LBB0_21
.LBB0_4:                                # %lor.lhs.false
	ld.w	$t6, $t3, 16
	bgeu	$a3, $t6, .LBB0_21
# %bb.5:                                # %if.end91
	pcalau12i	$t2, %got_pc_hi20(g_flipV_hashkey)
	ld.d	$t4, $t2, %got_pc_lo12(g_flipV_hashkey)
	ld.w	$t2, $t4, 16
	slli.d	$t3, $t2, 4
	alsl.d	$t2, $t2, $t3, 3
	ldx.w	$t6, $t1, $t2
	ld.w	$t5, $t4, 0
	add.d	$t3, $t1, $t2
	bne	$t6, $t5, .LBB0_9
# %bb.6:                                # %land.lhs.true98
	ld.w	$t6, $t3, 4
	ld.w	$t7, $t4, 4
	bne	$t6, $t7, .LBB0_9
# %bb.7:                                # %land.lhs.true105
	ld.w	$t6, $t3, 8
	ld.w	$t7, $t4, 8
	bne	$t6, $t7, .LBB0_9
# %bb.8:                                # %land.lhs.true112
	ld.w	$t6, $t3, 12
	ld.w	$t7, $t4, 12
	beq	$t6, $t7, .LBB0_21
.LBB0_9:                                # %lor.lhs.false119
	ld.w	$t6, $t3, 16
	bgeu	$a3, $t6, .LBB0_21
# %bb.10:                               # %if.end212
	pcalau12i	$t2, %got_pc_hi20(g_flipH_hashkey)
	ld.d	$t4, $t2, %got_pc_lo12(g_flipH_hashkey)
	ld.w	$t2, $t4, 16
	slli.d	$t3, $t2, 4
	alsl.d	$t2, $t2, $t3, 3
	ldx.w	$t6, $t1, $t2
	ld.w	$t5, $t4, 0
	add.d	$t3, $t1, $t2
	bne	$t6, $t5, .LBB0_14
# %bb.11:                               # %land.lhs.true219
	ld.w	$t6, $t3, 4
	ld.w	$t7, $t4, 4
	bne	$t6, $t7, .LBB0_14
# %bb.12:                               # %land.lhs.true226
	ld.w	$t6, $t3, 8
	ld.w	$t7, $t4, 8
	bne	$t6, $t7, .LBB0_14
# %bb.13:                               # %land.lhs.true233
	ld.w	$t6, $t3, 12
	ld.w	$t7, $t4, 12
	beq	$t6, $t7, .LBB0_21
.LBB0_14:                               # %lor.lhs.false240
	ld.w	$t6, $t3, 16
	bgeu	$a3, $t6, .LBB0_21
# %bb.15:                               # %if.end333
	pcalau12i	$t2, %got_pc_hi20(g_flipVH_hashkey)
	ld.d	$t3, $t2, %got_pc_lo12(g_flipVH_hashkey)
	ld.w	$t2, $t3, 16
	slli.d	$t4, $t2, 4
	alsl.d	$t2, $t2, $t4, 3
	ldx.w	$t5, $t1, $t2
	ld.w	$t4, $t3, 0
	add.d	$t1, $t1, $t2
	bne	$t5, $t4, .LBB0_19
# %bb.16:                               # %land.lhs.true340
	ld.w	$t5, $t1, 4
	ld.w	$t6, $t3, 4
	bne	$t5, $t6, .LBB0_19
# %bb.17:                               # %land.lhs.true347
	ld.w	$t5, $t1, 8
	ld.w	$t6, $t3, 8
	bne	$t5, $t6, .LBB0_19
# %bb.18:                               # %land.lhs.true354
	ld.w	$t5, $t1, 12
	ld.w	$t6, $t3, 12
	beq	$t5, $t6, .LBB0_20
.LBB0_19:                               # %lor.lhs.false361
	ld.w	$t5, $t1, 16
	bltu	$a3, $t5, .LBB0_28
.LBB0_20:                               # %if.then367
	st.w	$t4, $t1, 0
	ld.w	$t4, $t3, 4
	st.w	$t4, $t1, 4
	ld.w	$t4, $t3, 8
	st.w	$t4, $t1, 8
	ld.w	$t3, $t3, 12
	pcalau12i	$t4, %got_pc_hi20(g_board_size)
	ld.d	$t4, $t4, %got_pc_lo12(g_board_size)
	st.w	$t3, $t1, 12
	st.w	$a3, $t1, 16
	slli.d	$a3, $a7, 2
	ldx.w	$a3, $t4, $a3
	ld.bu	$t3, $t1, 21
	addi.d	$t0, $t0, -1
	mul.d	$a3, $a3, $t0
	srli.d	$t0, $t3, 7
	bstrins.d	$a4, $t0, 63, 7
	st.b	$a4, $t1, 21
	ld.d	$a4, $a6, 0
	add.d	$a3, $a5, $a3
	addi.d	$a3, $a3, -1
	st.b	$a3, $t1, 20
	b	.LBB0_22
.LBB0_21:                               # %if.then
	st.w	$t5, $t3, 0
	ld.w	$t1, $t4, 4
	st.w	$t1, $t3, 4
	ld.w	$t1, $t4, 8
	st.w	$t1, $t3, 8
	ld.w	$t1, $t4, 12
	pcalau12i	$t4, %got_pc_hi20(g_board_size)
	ld.d	$t4, $t4, %got_pc_lo12(g_board_size)
	st.w	$t1, $t3, 12
	st.w	$a3, $t3, 16
	slli.d	$a3, $a7, 2
	ldx.w	$a3, $t4, $a3
	ld.bu	$t1, $t3, 21
	addi.d	$t0, $t0, -1
	mul.d	$a3, $a3, $t0
	srli.d	$t0, $t1, 7
	bstrins.d	$a4, $t0, 63, 7
	st.b	$a4, $t3, 21
	ld.d	$a4, $a6, 0
	add.d	$a3, $a5, $a3
	addi.d	$a3, $a3, -1
	st.b	$a3, $t3, 20
.LBB0_22:                               # %if.then
	add.d	$a3, $a4, $t2
	ld.bu	$a4, $a3, 21
	bstrins.d	$a4, $a7, 63, 7
	st.b	$a4, $a3, 21
	ld.d	$a3, $a6, 0
	add.d	$a3, $a3, $t2
	ld.hu	$a4, $a3, 22
	srli.d	$a4, $a4, 14
	move	$a5, $a0
	bstrins.d	$a5, $a4, 63, 14
	st.h	$a5, $a3, 22
	bge	$a0, $a2, .LBB0_25
# %bb.23:                               # %if.else
	ld.d	$a2, $a6, 0
	add.d	$a2, $a2, $t2
	ld.hu	$a3, $a2, 22
	addi.d	$a2, $a2, 22
	bstrpick.d	$a3, $a3, 13, 0
	bge	$a1, $a0, .LBB0_26
# %bb.24:                               # %if.then76
	lu12i.w	$a0, 4
	b	.LBB0_27
.LBB0_25:                               # %if.then68
	ld.d	$a0, $a6, 0
	add.d	$a0, $a0, $t2
	ld.hu	$a1, $a0, 22
	bstrpick.d	$a1, $a1, 13, 0
	st.h	$a1, $a0, 22
	ret
.LBB0_26:                               # %if.else445
	lu12i.w	$a0, 8
.LBB0_27:                               # %cleanup
	or	$a0, $a3, $a0
	st.h	$a0, $a2, 0
.LBB0_28:                               # %cleanup
	ret
.Lfunc_end0:
	.size	hashstore, .Lfunc_end0-hashstore
                                        # -- End function
	.globl	hashlookup                      # -- Begin function hashlookup
	.p2align	5
	.type	hashlookup,@function
hashlookup:                             # @hashlookup
# %bb.0:                                # %entry
	pcalau12i	$a6, %got_pc_hi20(g_norm_hashkey)
	ld.d	$t0, $a6, %got_pc_lo12(g_norm_hashkey)
	pcalau12i	$a6, %got_pc_hi20(g_trans_table)
	ld.d	$a6, $a6, %got_pc_lo12(g_trans_table)
	ld.w	$a7, $t0, 16
	ld.d	$a6, $a6, 0
	slli.d	$t1, $a7, 4
	alsl.d	$a7, $a7, $t1, 3
	ldx.w	$t1, $a6, $a7
	ld.w	$t2, $t0, 0
	bne	$t1, $t2, .LBB1_6
# %bb.1:                                # %land.lhs.true
	add.d	$a7, $a6, $a7
	ld.w	$t1, $a7, 4
	ld.w	$t2, $t0, 4
	bne	$t1, $t2, .LBB1_6
# %bb.2:                                # %land.lhs.true7
	ld.w	$t1, $a7, 8
	ld.w	$t2, $t0, 8
	bne	$t1, $t2, .LBB1_6
# %bb.3:                                # %land.lhs.true13
	ld.w	$t1, $a7, 12
	ld.w	$t0, $t0, 12
	bne	$t1, $t0, .LBB1_6
# %bb.4:                                # %land.lhs.true19
	ld.bu	$t0, $a7, 21
	srli.d	$t0, $t0, 7
	bne	$a5, $t0, .LBB1_6
# %bb.5:                                # %if.then
	pcalau12i	$t0, %got_pc_hi20(g_board_size)
	ld.d	$t0, $t0, %got_pc_lo12(g_board_size)
	ld.bu	$t1, $a7, 20
	slli.d	$t2, $a5, 2
	ldx.w	$t3, $t0, $t2
	div.w	$t3, $t1, $t3
	addi.d	$t3, $t3, 1
	st.w	$t3, $a4, 4
	ldx.w	$t0, $t0, $t2
	mod.w	$t0, $t1, $t0
	addi.d	$t0, $t0, 1
	st.w	$t0, $a4, 0
	ld.bu	$t0, $a7, 21
	andi	$t0, $t0, 127
	bge	$t0, $a3, .LBB1_26
.LBB1_6:                                # %if.end149
	pcalau12i	$a7, %got_pc_hi20(g_flipV_hashkey)
	ld.d	$t0, $a7, %got_pc_lo12(g_flipV_hashkey)
	ld.w	$a7, $t0, 16
	slli.d	$t1, $a7, 4
	alsl.d	$a7, $a7, $t1, 3
	ldx.w	$t1, $a6, $a7
	ld.w	$t2, $t0, 0
	bne	$t1, $t2, .LBB1_12
# %bb.7:                                # %land.lhs.true156
	add.d	$a7, $a6, $a7
	ld.w	$t1, $a7, 4
	ld.w	$t2, $t0, 4
	bne	$t1, $t2, .LBB1_12
# %bb.8:                                # %land.lhs.true163
	ld.w	$t1, $a7, 8
	ld.w	$t2, $t0, 8
	bne	$t1, $t2, .LBB1_12
# %bb.9:                                # %land.lhs.true170
	ld.w	$t1, $a7, 12
	ld.w	$t0, $t0, 12
	bne	$t1, $t0, .LBB1_12
# %bb.10:                               # %land.lhs.true177
	ld.bu	$t0, $a7, 21
	srli.d	$t0, $t0, 7
	bne	$a5, $t0, .LBB1_12
# %bb.11:                               # %if.then186
	pcalau12i	$t0, %got_pc_hi20(g_board_size)
	ld.d	$t0, $t0, %got_pc_lo12(g_board_size)
	ld.bu	$t1, $a7, 20
	slli.d	$t2, $a5, 2
	ldx.w	$t3, $t0, $t2
	div.w	$t3, $t1, $t3
	addi.d	$t3, $t3, 1
	st.w	$t3, $a4, 4
	ldx.w	$t0, $t0, $t2
	mod.w	$t0, $t1, $t0
	addi.d	$t0, $t0, 1
	st.w	$t0, $a4, 0
	ld.bu	$t0, $a7, 21
	andi	$t0, $t0, 127
	bge	$t0, $a3, .LBB1_29
.LBB1_12:                               # %if.end324
	pcalau12i	$a7, %got_pc_hi20(g_flipH_hashkey)
	ld.d	$t0, $a7, %got_pc_lo12(g_flipH_hashkey)
	ld.w	$a7, $t0, 16
	slli.d	$t1, $a7, 4
	alsl.d	$a7, $a7, $t1, 3
	ldx.w	$t1, $a6, $a7
	ld.w	$t2, $t0, 0
	bne	$t1, $t2, .LBB1_18
# %bb.13:                               # %land.lhs.true331
	add.d	$a7, $a6, $a7
	ld.w	$t1, $a7, 4
	ld.w	$t2, $t0, 4
	bne	$t1, $t2, .LBB1_18
# %bb.14:                               # %land.lhs.true338
	ld.w	$t1, $a7, 8
	ld.w	$t2, $t0, 8
	bne	$t1, $t2, .LBB1_18
# %bb.15:                               # %land.lhs.true345
	ld.w	$t1, $a7, 12
	ld.w	$t0, $t0, 12
	bne	$t1, $t0, .LBB1_18
# %bb.16:                               # %land.lhs.true352
	ld.bu	$t0, $a7, 21
	srli.d	$t0, $t0, 7
	bne	$a5, $t0, .LBB1_18
# %bb.17:                               # %if.then361
	pcalau12i	$t0, %got_pc_hi20(g_board_size)
	ld.d	$t0, $t0, %got_pc_lo12(g_board_size)
	ld.bu	$t1, $a7, 20
	slli.d	$t2, $a5, 2
	ldx.w	$t3, $t0, $t2
	div.w	$t3, $t1, $t3
	addi.d	$t3, $t3, 1
	st.w	$t3, $a4, 4
	ldx.w	$t0, $t0, $t2
	mod.w	$t0, $t1, $t0
	addi.d	$t0, $t0, 1
	st.w	$t0, $a4, 0
	ld.bu	$t0, $a7, 21
	andi	$t0, $t0, 127
	bge	$t0, $a3, .LBB1_32
.LBB1_18:                               # %if.end499
	pcalau12i	$a7, %got_pc_hi20(g_flipVH_hashkey)
	ld.d	$a7, $a7, %got_pc_lo12(g_flipVH_hashkey)
	ld.w	$t0, $a7, 16
	slli.d	$t1, $t0, 4
	alsl.d	$t0, $t0, $t1, 3
	ldx.w	$t1, $a6, $t0
	ld.w	$t2, $a7, 0
	bne	$t1, $t2, .LBB1_48
# %bb.19:                               # %land.lhs.true506
	add.d	$a6, $a6, $t0
	ld.w	$t0, $a6, 4
	ld.w	$t1, $a7, 4
	bne	$t0, $t1, .LBB1_48
# %bb.20:                               # %land.lhs.true513
	ld.w	$t0, $a6, 8
	ld.w	$t1, $a7, 8
	bne	$t0, $t1, .LBB1_48
# %bb.21:                               # %land.lhs.true520
	ld.w	$t0, $a6, 12
	ld.w	$a7, $a7, 12
	bne	$t0, $a7, .LBB1_48
# %bb.22:                               # %land.lhs.true527
	ld.bu	$a7, $a6, 21
	srli.d	$a7, $a7, 7
	bne	$a5, $a7, .LBB1_48
# %bb.23:                               # %if.then536
	pcalau12i	$a7, %got_pc_hi20(g_board_size)
	ld.d	$a7, $a7, %got_pc_lo12(g_board_size)
	ld.bu	$t0, $a6, 20
	slli.d	$a5, $a5, 2
	ldx.w	$t1, $a7, $a5
	div.w	$t1, $t0, $t1
	addi.d	$t1, $t1, 1
	st.w	$t1, $a4, 4
	ldx.w	$a5, $a7, $a5
	mod.w	$a5, $t0, $a5
	addi.d	$a5, $a5, 1
	st.w	$a5, $a4, 0
	ld.bu	$a4, $a6, 21
	andi	$a4, $a4, 127
	blt	$a4, $a3, .LBB1_48
# %bb.24:                               # %if.then563
	ld.hu	$a3, $a6, 22
	srli.d	$a4, $a3, 14
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB1_39
# %bb.25:                               # %if.then572
	slli.d	$a1, $a3, 50
	srai.d	$a1, $a1, 50
	st.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	ret
.LBB1_26:                               # %if.then42
	ld.hu	$a7, $a7, 22
	srli.d	$t0, $a7, 14
	ori	$t1, $zero, 1
	beq	$t0, $t1, .LBB1_33
# %bb.27:                               # %if.end
	beqz	$t0, .LBB1_36
# %bb.28:                               # %if.end101
	ori	$t1, $zero, 2
	bne	$t0, $t1, .LBB1_6
	b	.LBB1_43
.LBB1_29:                               # %if.then213
	ld.hu	$a7, $a7, 22
	srli.d	$t0, $a7, 14
	ori	$t1, $zero, 1
	beq	$t0, $t1, .LBB1_33
# %bb.30:                               # %if.end230
	beqz	$t0, .LBB1_36
# %bb.31:                               # %if.end276
	ori	$t1, $zero, 2
	bne	$t0, $t1, .LBB1_12
	b	.LBB1_43
.LBB1_32:                               # %if.then388
	ld.hu	$a7, $a7, 22
	srli.d	$t0, $a7, 14
	ori	$t1, $zero, 1
	bne	$t0, $t1, .LBB1_35
.LBB1_33:                               # %if.then50
	slli.d	$a1, $a7, 50
	srai.d	$a1, $a1, 50
.LBB1_34:                               # %if.then120
	st.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	ret
.LBB1_35:                               # %if.end405
	bnez	$t0, .LBB1_42
.LBB1_36:                               # %if.then64
	ld.w	$a3, $a2, 0
	slli.d	$a2, $a7, 50
	srai.d	$a2, $a2, 50
	bge	$a2, $a3, .LBB1_41
.LBB1_37:                               # %if.end82
	ld.w	$a0, $a1, 0
	bge	$a0, $a2, .LBB1_48
# %bb.38:                               # %if.then92
	move	$a0, $zero
	st.w	$a2, $a1, 0
	ret
.LBB1_39:                               # %if.end580
	bnez	$a4, .LBB1_44
# %bb.40:                               # %if.then589
	ld.w	$a4, $a2, 0
	slli.d	$a2, $a3, 50
	srai.d	$a2, $a2, 50
	blt	$a2, $a4, .LBB1_37
.LBB1_41:                               # %if.then74
	st.w	$a2, $a0, 0
	ori	$a0, $zero, 1
	ret
.LBB1_42:                               # %if.end451
	ori	$t1, $zero, 2
	bne	$t0, $t1, .LBB1_18
.LBB1_43:                               # %if.then110
	ld.w	$a3, $a1, 0
	slli.d	$a1, $a7, 50
	srai.d	$a1, $a1, 50
	bge	$a3, $a1, .LBB1_34
	b	.LBB1_46
.LBB1_44:                               # %if.end626
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB1_48
# %bb.45:                               # %if.then635
	ld.w	$a4, $a1, 0
	slli.d	$a1, $a3, 50
	srai.d	$a1, $a1, 50
	bge	$a4, $a1, .LBB1_34
.LBB1_46:                               # %if.end128
	ld.w	$a0, $a2, 0
	bge	$a1, $a0, .LBB1_48
# %bb.47:                               # %if.then663
	move	$a0, $zero
	st.w	$a1, $a2, 0
	ret
.LBB1_48:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	hashlookup, .Lfunc_end1-hashlookup
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
