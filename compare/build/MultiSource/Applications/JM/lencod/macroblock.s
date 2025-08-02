	.file	"macroblock.c"
	.text
	.globl	set_MB_parameters               # -- Begin function set_MB_parameters
	.p2align	5
	.type	set_MB_parameters,@function
set_MB_parameters:                      # @set_MB_parameters
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s0, $a1, %got_pc_lo12(img)
	ld.d	$a2, $s0, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(get_mb_block_pos)
	ld.d	$a3, $a0, %pc_lo12(get_mb_block_pos)
	st.w	$fp, $a2, 12
	addi.d	$a1, $a2, 160
	addi.d	$a2, $a2, 164
	move	$a0, $fp
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 160
	ld.w	$a5, $a0, 164
	slli.d	$a2, $a1, 2
	st.w	$a2, $a0, 168
	slli.d	$a2, $a5, 2
	st.w	$a2, $a0, 172
	slli.d	$a1, $a1, 4
	ldptr.w	$a3, $a0, 15268
	st.w	$a1, $a0, 176
	slli.d	$a2, $a5, 4
	st.w	$a2, $a0, 180
	st.w	$a1, $a0, 192
	beqz	$a3, .LBB0_3
# %bb.1:                                # %if.then
	ldptr.d	$a3, $a0, 14224
	ori	$a4, $zero, 536
	mul.d	$a6, $fp, $a4
	add.d	$a6, $a3, $a6
	ld.w	$a6, $a6, 424
	beqz	$a6, .LBB0_4
# %bb.2:                                # %if.then10
	andi	$a6, $fp, 1
	sltui	$a6, $a6, 1
	pcalau12i	$a7, %pc_hi20(imgY_org_bot)
	addi.d	$a7, $a7, %pc_lo12(imgY_org_bot)
	pcalau12i	$t0, %pc_hi20(imgY_org_top)
	addi.d	$t0, $t0, %pc_lo12(imgY_org_top)
	masknez	$a7, $a7, $a6
	maskeqz	$t0, $t0, $a6
	or	$a7, $t0, $a7
	ld.d	$a7, $a7, 0
	pcalau12i	$t0, %pc_hi20(imgY_org)
	st.d	$a7, $t0, %pc_lo12(imgY_org)
	pcalau12i	$a7, %pc_hi20(imgUV_org_bot)
	addi.d	$a7, $a7, %pc_lo12(imgUV_org_bot)
	pcalau12i	$t0, %pc_hi20(imgUV_org_top)
	addi.d	$t0, $t0, %pc_lo12(imgUV_org_top)
	masknez	$a7, $a7, $a6
	maskeqz	$t0, $t0, $a6
	or	$a7, $t0, $a7
	ld.d	$a7, $a7, 0
	pcalau12i	$t0, %pc_hi20(imgUV_org)
	st.d	$a7, $t0, %pc_lo12(imgUV_org)
	slli.d	$a5, $a5, 3
	bstrins.d	$a5, $zero, 3, 0
	st.w	$a5, $a0, 196
	ori	$a7, $zero, 4
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 2
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	mul.d	$a4, $fp, $a4
	add.d	$a3, $a3, $a4
	st.w	$a6, $a3, 432
	ldptr.w	$a3, $a0, 15536
	bnez	$a3, .LBB0_6
	b	.LBB0_7
.LBB0_3:                                # %if.else33
	ldptr.d	$a3, $a0, 14224
	st.w	$a2, $a0, 196
	ori	$a4, $zero, 536
	b	.LBB0_5
.LBB0_4:                                # %if.else
	pcalau12i	$a5, %pc_hi20(imgY_org_frm)
	ld.d	$a5, $a5, %pc_lo12(imgY_org_frm)
	pcalau12i	$a6, %pc_hi20(imgUV_org_frm)
	ld.d	$a6, $a6, %pc_lo12(imgUV_org_frm)
	pcalau12i	$a7, %pc_hi20(imgY_org)
	st.d	$a5, $a7, %pc_lo12(imgY_org)
	pcalau12i	$a5, %pc_hi20(imgUV_org)
	st.d	$a6, $a5, %pc_lo12(imgUV_org)
	st.w	$a2, $a0, 196
.LBB0_5:                                # %if.end41
	mul.d	$a4, $fp, $a4
	add.d	$a3, $a3, $a4
	st.w	$zero, $a3, 432
	move	$a5, $a2
	ldptr.w	$a3, $a0, 15536
	beqz	$a3, .LBB0_7
.LBB0_6:                                # %if.then42
	lu12i.w	$a3, 3
	ori	$a4, $a3, 3256
	ldx.w	$a4, $a0, $a4
	ori	$a3, $a3, 3260
	ldx.w	$a3, $a0, $a3
	mul.w	$a1, $a4, $a1
	srai.d	$a1, $a1, 4
	st.w	$a1, $a0, 184
	mul.w	$a2, $a3, $a2
	srli.d	$a2, $a2, 4
	st.w	$a2, $a0, 188
	st.w	$a1, $a0, 200
	mul.w	$a1, $a5, $a3
	srli.d	$a1, $a1, 4
	st.w	$a1, $a0, 204
.LBB0_7:                                # %if.end56
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	set_MB_parameters, .Lfunc_end0-set_MB_parameters
                                        # -- End function
	.globl	proceed2nextMacroblock          # -- Begin function proceed2nextMacroblock
	.p2align	5
	.type	proceed2nextMacroblock,@function
proceed2nextMacroblock:                 # @proceed2nextMacroblock
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$fp, $a2, $a1
	ld.w	$a1, $fp, 28
	ldptr.w	$a2, $a0, 15464
	bge	$a2, $a1, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
.LBB1_2:                                # %if.end
	pcalau12i	$a1, %got_pc_hi20(stats)
	ld.d	$a1, $a1, %got_pc_lo12(stats)
	ld.d	$a1, $a1, 0
	ld.w	$a4, $a0, 20
	ld.w	$a2, $fp, 32
	alsl.d	$a3, $a4, $a1, 3
	ld.d	$a5, $a3, 2000
	add.d	$a2, $a5, $a2
	ld.w	$a5, $fp, 44
	ldptr.d	$a6, $a3, 2120
	ld.w	$a7, $fp, 40
	ldptr.d	$t0, $a3, 2080
	st.d	$a2, $a3, 2000
	add.d	$a2, $a6, $a5
	stptr.d	$a2, $a3, 2120
	add.d	$a2, $t0, $a7
	ld.w	$a5, $fp, 48
	ldptr.d	$a6, $a3, 2160
	stptr.d	$a2, $a3, 2080
	ld.w	$a7, $fp, 52
	ldptr.d	$t0, $a3, 2200
	add.d	$a5, $a6, $a5
	ld.w	$a2, $fp, 72
	stptr.d	$a5, $a3, 2160
	add.d	$a5, $t0, $a7
	ori	$a6, $zero, 14
	stptr.d	$a5, $a3, 2200
	bltu	$a6, $a2, .LBB1_7
# %bb.3:                                # %if.end
	ori	$a3, $zero, 1
	sll.d	$a3, $a3, $a2
	lu12i.w	$a5, 6
	ori	$a5, $a5, 1536
	and	$a3, $a3, $a5
	beqz	$a3, .LBB1_7
# %bb.4:                                # %if.then44
	ld.w	$a2, $fp, 416
	alsl.d	$a2, $a2, $a1, 2
	ld.w	$a3, $a2, 684
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 684
	ld.bu	$a2, $fp, 364
	andi	$a2, $a2, 15
	beqz	$a2, .LBB1_6
# %bb.5:                                # %if.then49
	ld.w	$a2, $fp, 472
	sltui	$a2, $a2, 1
	ld.w	$a3, $a0, 20
	ld.w	$a4, $fp, 72
	ori	$a5, $zero, 84
	masknez	$a5, $a5, $a2
	ori	$a6, $zero, 384
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a5
	add.d	$a2, $a1, $a2
	ori	$a5, $zero, 60
	mul.d	$a3, $a3, $a5
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a4, 2
	ldx.w	$a4, $a2, $a3
	addi.d	$a4, $a4, 1
	stx.w	$a4, $a2, $a3
.LBB1_6:                                # %if.end67thread-pre-split
	ld.w	$a2, $fp, 72
	ld.w	$a4, $a0, 20
.LBB1_7:                                # %if.end67
	addi.d	$a3, $a1, 760
	ori	$a5, $zero, 120
	mul.d	$a6, $a4, $a5
	add.d	$a5, $a3, $a6
	slli.d	$a7, $a2, 3
	ldx.d	$t0, $a5, $a7
	ld.w	$t1, $fp, 36
	add.d	$a6, $a1, $a6
	alsl.d	$a6, $a2, $a6, 3
	ld.d	$t2, $a6, 1360
	addi.d	$t0, $t0, 1
	stx.d	$t0, $a5, $a7
	add.d	$a7, $t2, $t1
	ori	$t0, $zero, 2
	st.d	$a7, $a6, 1360
	bne	$a4, $t0, .LBB1_12
.LBB1_8:                                # %if.end187
	ld.w	$a0, $a0, 20
	ori	$a2, $zero, 3
	beq	$a0, $a2, .LBB1_10
# %bb.9:                                # %if.end187
	bnez	$a0, .LBB1_11
.LBB1_10:                               # %if.then195
	ld.w	$a0, $a1, 0
	ld.w	$a2, $fp, 8
	ld.w	$a3, $a1, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	add.d	$a0, $a3, $a2
	st.w	$a0, $a1, 4
.LBB1_11:                               # %if.end198
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_12:                               # %if.then87
	ori	$a6, $zero, 8
	bne	$a2, $a6, .LBB1_21
# %bb.13:                               # %for.cond.preheader
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.w	$a7, $fp, 376
	ld.d	$a2, $a2, 0
	ori	$t0, $zero, 1
	addi.d	$a6, $a1, 44
	blt	$a7, $t0, .LBB1_25
# %bb.14:                               # %if.then98
	slli.d	$a4, $a7, 3
	ldx.d	$t0, $a5, $a4
	addi.d	$t0, $t0, 1
	stx.d	$t0, $a5, $a4
	addi.d	$a5, $a1, 400
	ori	$t0, $zero, 4
	addi.d	$a4, $a1, 100
	beq	$a7, $t0, .LBB1_26
.LBB1_15:                               # %for.inc
	ld.w	$a7, $fp, 380
	ld.w	$t0, $a0, 20
	blez	$a7, .LBB1_31
.LBB1_16:                               # %if.then98.1
	ori	$t1, $zero, 120
	mul.d	$t0, $t0, $t1
	add.d	$t0, $a3, $t0
	slli.d	$t1, $a7, 3
	ldx.d	$t2, $t0, $t1
	addi.d	$t2, $t2, 1
	stx.d	$t2, $t0, $t1
	ori	$t0, $zero, 4
	beq	$a7, $t0, .LBB1_32
.LBB1_17:                               # %for.inc.1
	ld.w	$a7, $fp, 384
	ld.w	$t0, $a0, 20
	blez	$a7, .LBB1_37
.LBB1_18:                               # %if.then98.2
	ori	$t1, $zero, 120
	mul.d	$t0, $t0, $t1
	add.d	$t0, $a3, $t0
	slli.d	$t1, $a7, 3
	ldx.d	$t2, $t0, $t1
	addi.d	$t2, $t2, 1
	stx.d	$t2, $t0, $t1
	ori	$t0, $zero, 4
	beq	$a7, $t0, .LBB1_38
.LBB1_19:                               # %for.inc.2
	ld.w	$a7, $fp, 388
	ld.w	$t0, $a0, 20
	blez	$a7, .LBB1_43
.LBB1_20:                               # %if.then98.3
	ori	$a6, $zero, 120
	mul.d	$a6, $t0, $a6
	add.d	$a3, $a3, $a6
	slli.d	$a6, $a7, 3
	ldx.d	$t0, $a3, $a6
	addi.d	$t0, $t0, 1
	stx.d	$t0, $a3, $a6
	ori	$a3, $zero, 4
	bne	$a7, $a3, .LBB1_8
	b	.LBB1_44
.LBB1_21:                               # %if.else150
	ori	$a3, $zero, 3
	bltu	$a3, $a2, .LBB1_8
# %bb.22:                               # %land.lhs.true158
	ld.bu	$a3, $fp, 364
	andi	$a3, $a3, 15
	beqz	$a3, .LBB1_8
# %bb.23:                               # %if.then163
	ld.w	$a3, $fp, 472
	beqz	$a3, .LBB1_50
# %bb.24:                               # %if.then166
	ori	$a3, $zero, 60
	mul.d	$a3, $a4, $a3
	add.d	$a3, $a1, $a3
	alsl.d	$a2, $a2, $a3, 2
	ld.w	$a3, $a2, 84
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 84
	b	.LBB1_8
.LBB1_25:                               # %if.else109
	ld.w	$a5, $fp, 472
	alsl.d	$a4, $a4, $a6, 3
	slli.d	$a5, $a5, 2
	ldx.w	$a7, $a4, $a5
	addi.d	$a7, $a7, 1
	stx.w	$a7, $a4, $a5
	ld.w	$a7, $fp, 376
	addi.d	$a5, $a1, 400
	ori	$t0, $zero, 4
	addi.d	$a4, $a1, 100
	bne	$a7, $t0, .LBB1_15
.LBB1_26:                               # %if.then123
	ld.w	$a7, $fp, 472
	beqz	$a7, .LBB1_28
# %bb.27:                               # %land.lhs.true
	ld.bu	$t0, $fp, 364
	ld.w	$a7, $a0, 20
	andi	$t1, $t0, 15
	move	$t0, $a4
	bnez	$t1, .LBB1_30
	b	.LBB1_29
.LBB1_28:                               # %if.then123.lor.lhs.false130_crit_edge
	ld.w	$a7, $a0, 20
.LBB1_29:                               # %lor.lhs.false130
	ldptr.w	$t0, $a2, 5100
	addi.d	$t0, $t0, -2
	sltui	$t0, $t0, 1
	masknez	$t1, $a5, $t0
	maskeqz	$t0, $a4, $t0
	or	$t0, $t0, $t1
.LBB1_30:                               # %for.inc.sink.split
	ori	$t1, $zero, 60
	mul.d	$a7, $a7, $t1
	ldx.w	$t1, $t0, $a7
	addi.d	$t1, $t1, 1
	stx.w	$t1, $t0, $a7
	ld.w	$a7, $fp, 380
	ld.w	$t0, $a0, 20
	bgtz	$a7, .LBB1_16
.LBB1_31:                               # %if.else109.1
	ld.w	$a7, $fp, 472
	alsl.d	$t0, $t0, $a6, 3
	slli.d	$a7, $a7, 2
	ldx.w	$t1, $t0, $a7
	addi.d	$t1, $t1, 1
	stx.w	$t1, $t0, $a7
	ld.w	$a7, $fp, 380
	ori	$t0, $zero, 4
	bne	$a7, $t0, .LBB1_17
.LBB1_32:                               # %if.then123.1
	ld.w	$a7, $fp, 472
	beqz	$a7, .LBB1_34
# %bb.33:                               # %land.lhs.true.1
	ld.bu	$t0, $fp, 364
	ld.w	$a7, $a0, 20
	andi	$t1, $t0, 15
	move	$t0, $a4
	bnez	$t1, .LBB1_36
	b	.LBB1_35
.LBB1_34:                               # %if.then123.1.lor.lhs.false130.1_crit_edge
	ld.w	$a7, $a0, 20
.LBB1_35:                               # %lor.lhs.false130.1
	ldptr.w	$t0, $a2, 5100
	addi.d	$t0, $t0, -2
	sltui	$t0, $t0, 1
	masknez	$t1, $a5, $t0
	maskeqz	$t0, $a4, $t0
	or	$t0, $t0, $t1
.LBB1_36:                               # %for.inc.1.sink.split
	ori	$t1, $zero, 60
	mul.d	$a7, $a7, $t1
	ldx.w	$t1, $t0, $a7
	addi.d	$t1, $t1, 1
	stx.w	$t1, $t0, $a7
	ld.w	$a7, $fp, 384
	ld.w	$t0, $a0, 20
	bgtz	$a7, .LBB1_18
.LBB1_37:                               # %if.else109.2
	ld.w	$a7, $fp, 472
	alsl.d	$t0, $t0, $a6, 3
	slli.d	$a7, $a7, 2
	ldx.w	$t1, $t0, $a7
	addi.d	$t1, $t1, 1
	stx.w	$t1, $t0, $a7
	ld.w	$a7, $fp, 384
	ori	$t0, $zero, 4
	bne	$a7, $t0, .LBB1_19
.LBB1_38:                               # %if.then123.2
	ld.w	$a7, $fp, 472
	beqz	$a7, .LBB1_40
# %bb.39:                               # %land.lhs.true.2
	ld.bu	$t0, $fp, 364
	ld.w	$a7, $a0, 20
	andi	$t1, $t0, 15
	move	$t0, $a4
	bnez	$t1, .LBB1_42
	b	.LBB1_41
.LBB1_40:                               # %if.then123.2.lor.lhs.false130.2_crit_edge
	ld.w	$a7, $a0, 20
.LBB1_41:                               # %lor.lhs.false130.2
	ldptr.w	$t0, $a2, 5100
	addi.d	$t0, $t0, -2
	sltui	$t0, $t0, 1
	masknez	$t1, $a5, $t0
	maskeqz	$t0, $a4, $t0
	or	$t0, $t0, $t1
.LBB1_42:                               # %for.inc.2.sink.split
	ori	$t1, $zero, 60
	mul.d	$a7, $a7, $t1
	ldx.w	$t1, $t0, $a7
	addi.d	$t1, $t1, 1
	stx.w	$t1, $t0, $a7
	ld.w	$a7, $fp, 388
	ld.w	$t0, $a0, 20
	bgtz	$a7, .LBB1_20
.LBB1_43:                               # %if.else109.3
	ld.w	$a3, $fp, 472
	alsl.d	$a6, $t0, $a6, 3
	slli.d	$a3, $a3, 2
	ldx.w	$a7, $a6, $a3
	addi.d	$a7, $a7, 1
	stx.w	$a7, $a6, $a3
	ld.w	$a7, $fp, 388
	ori	$a3, $zero, 4
	bne	$a7, $a3, .LBB1_8
.LBB1_44:                               # %if.then123.3
	ld.w	$a3, $fp, 472
	beqz	$a3, .LBB1_48
# %bb.45:                               # %land.lhs.true.3
	ld.bu	$a6, $fp, 364
	ld.w	$a3, $a0, 20
	andi	$a6, $a6, 15
	bnez	$a6, .LBB1_47
# %bb.46:                               # %lor.lhs.false130.3
	ldptr.w	$a2, $a2, 5100
	ori	$a6, $zero, 2
	bne	$a2, $a6, .LBB1_49
.LBB1_47:                               # %if.then133.3
	ori	$a2, $zero, 60
	mul.d	$a2, $a3, $a2
	ldx.w	$a3, $a4, $a2
	addi.d	$a3, $a3, 1
	stx.w	$a3, $a4, $a2
	b	.LBB1_8
.LBB1_48:                               # %if.then123.3.lor.lhs.false130.3_crit_edge
	ld.w	$a3, $a0, 20
	ldptr.w	$a2, $a2, 5100
	ori	$a6, $zero, 2
	beq	$a2, $a6, .LBB1_47
.LBB1_49:                               # %if.else140.3
	ori	$a2, $zero, 60
	mul.d	$a2, $a3, $a2
	ldx.w	$a3, $a5, $a2
	addi.d	$a3, $a3, 1
	stx.w	$a3, $a5, $a2
	b	.LBB1_8
.LBB1_50:                               # %if.else175
	ori	$a3, $zero, 60
	mul.d	$a3, $a4, $a3
	add.d	$a3, $a1, $a3
	alsl.d	$a2, $a2, $a3, 2
	ld.w	$a3, $a2, 384
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 384
	b	.LBB1_8
.Lfunc_end1:
	.size	proceed2nextMacroblock, .Lfunc_end1-proceed2nextMacroblock
                                        # -- End function
	.globl	set_chroma_qp                   # -- Begin function set_chroma_qp
	.p2align	5
	.type	set_chroma_qp,@function
set_chroma_qp:                          # @set_chroma_qp
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a0, 8
	lu12i.w	$a3, 3
	ori	$a4, $a3, 3168
	ldx.w	$a5, $a2, $a4
	ori	$a6, $a3, 3288
	ldx.w	$a6, $a2, $a6
	sub.w	$a5, $zero, $a5
	add.w	$a6, $a6, $a1
	slt	$a7, $a5, $a6
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a7, $a6, $a5
	slti	$a6, $a7, 51
	maskeqz	$t0, $a7, $a6
	ori	$a5, $zero, 51
	masknez	$a6, $a5, $a6
	or	$a6, $t0, $a6
	bltz	$a7, .LBB2_2
# %bb.1:                                # %cond.false
	pcalau12i	$a7, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a7, $a7, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a6, $a7, $a6
.LBB2_2:                                # %cond.end
	st.w	$a6, $a0, 12
	ldx.w	$a4, $a2, $a4
	ori	$a3, $a3, 3292
	ldx.w	$a2, $a2, $a3
	sub.w	$a3, $zero, $a4
	add.w	$a1, $a2, $a1
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a2, $a1, $a3
	slti	$a1, $a2, 51
	maskeqz	$a3, $a2, $a1
	masknez	$a1, $a5, $a1
	or	$a1, $a3, $a1
	bltz	$a2, .LBB2_4
# %bb.3:                                # %cond.false.1
	pcalau12i	$a2, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a2, $a2, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a1, $a2, $a1
.LBB2_4:                                # %cond.end.1
	st.w	$a1, $a0, 16
	ret
.Lfunc_end2:
	.size	set_chroma_qp, .Lfunc_end2-set_chroma_qp
                                        # -- End function
	.globl	start_macroblock                # -- Begin function start_macroblock
	.p2align	5
	.type	start_macroblock,@function
start_macroblock:                       # @start_macroblock
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
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$s3, $a2, %got_pc_lo12(input)
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s1, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s3, 0
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$s4, $a3, %got_pc_lo12(enc_picture)
	ld.d	$a3, $s1, 0
	move	$s0, $a0
	ld.w	$fp, $a2, 264
	ld.d	$a0, $s4, 0
	ldptr.d	$a2, $a3, 14224
	ori	$a4, $zero, 536
	mul.d	$a4, $s0, $a4
	ldptr.d	$a0, $a0, 6480
	add.d	$s2, $a2, $a4
	ldptr.d	$s5, $a3, 14216
	st.w	$a1, $s2, 424
	stx.b	$a1, $a0, $s0
	ld.d	$a1, $s1, 0
	ldptr.w	$a2, $a1, 15312
	ori	$a0, $zero, 1
	bnez	$a2, .LBB3_4
# %bb.1:                                # %lor.rhs7
	ldptr.w	$a0, $a1, 15268
	beqz	$a0, .LBB3_3
# %bb.2:                                # %land.rhs
	ld.w	$a0, $s2, 424
	sltu	$a0, $zero, $a0
	b	.LBB3_4
.LBB3_3:
	move	$a0, $zero
.LBB3_4:                                # %lor.end11
	st.w	$a0, $s2, 428
	move	$a0, $s0
	pcaddu18i	$ra, %call36(set_MB_parameters)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 12
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $fp, 31, 1
	ld.d	$a2, $s3, 0
	slli.w	$a1, $a1, 1
	ori	$a3, $zero, 2
	move	$fp, $a0
	bne	$a1, $a3, .LBB3_8
# %bb.5:                                # %if.then
	andi	$a0, $s0, 1
	beqz	$a0, .LBB3_7
# %bb.6:                                # %if.then
	lu12i.w	$a0, 1
	ori	$a0, $a0, 612
	ldx.w	$a0, $a2, $a0
	bnez	$a0, .LBB3_8
.LBB3_7:                                # %if.then17
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 144
	beqz	$a0, .LBB3_59
.LBB3_8:                                # %if.end29
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 16
	ld.w	$a3, $a1, 40
	ldptr.w	$a4, $a2, 5116
	st.w	$a0, $s2, 0
	st.w	$a3, $s2, 20
	lu12i.w	$s0, 3
	beqz	$a4, .LBB3_16
# %bb.9:                                # %if.then32
	bltz	$fp, .LBB3_19
# %bb.10:                               # %if.then35
	ldptr.w	$a3, $a2, 4708
	ori	$a4, $zero, 2
	bne	$a3, $a4, .LBB3_14
# %bb.11:                               # %land.lhs.true
	ldptr.w	$a3, $a1, 15412
	bnez	$a3, .LBB3_14
# %bb.12:                               # %land.lhs.true40
	ld.w	$a3, $s2, 424
	beqz	$a3, .LBB3_14
# %bb.13:                               # %if.then43
	ldptr.d	$a3, $a1, 14224
	ori	$a4, $zero, 536
	mul.d	$a4, $fp, $a4
	add.d	$a3, $a3, $a4
	ld.w	$a3, $a3, 8
	st.w	$a3, $a1, 36
	st.w	$a3, $s2, 8
.LBB3_14:                               # %if.end49
	ldptr.d	$a4, $a1, 14224
	ori	$a3, $zero, 536
	mul.d	$a5, $fp, $a3
	add.d	$a3, $a4, $a5
	ld.w	$a6, $a3, 8
	ldx.w	$a4, $a4, $a5
	st.w	$a6, $s2, 496
	bne	$a4, $a0, .LBB3_20
# %bb.15:                               # %if.then61
	ld.w	$a0, $a3, 4
	ldptr.w	$a3, $a2, 5128
	ldptr.w	$a4, $a1, 15352
	st.w	$a0, $s2, 500
	bne	$a3, $a4, .LBB3_21
	b	.LBB3_24
.LBB3_16:                               # %if.else356
	ldptr.d	$a3, $a1, 14216
	bltz	$fp, .LBB3_25
# %bb.17:                               # %if.then360
	ldptr.d	$a5, $a1, 14224
	ori	$a2, $zero, 536
	mul.d	$a6, $fp, $a2
	add.d	$a4, $a5, $a6
	ld.w	$a2, $a4, 8
	ldx.w	$a5, $a5, $a6
	st.w	$a2, $s2, 496
	bne	$a5, $a0, .LBB3_26
# %bb.18:                               # %cond.true
	ld.w	$a4, $a4, 4
	b	.LBB3_27
.LBB3_19:                               # %if.else67
	ld.w	$a3, $s5, 4
	move	$a0, $zero
	st.w	$a3, $s2, 496
	ldptr.w	$a3, $a2, 5128
	ldptr.w	$a4, $a1, 15352
	st.w	$a0, $s2, 500
	bne	$a3, $a4, .LBB3_21
	b	.LBB3_24
.LBB3_20:
	move	$a0, $zero
	ldptr.w	$a3, $a2, 5128
	ldptr.w	$a4, $a1, 15352
	st.w	$a0, $s2, 500
	beq	$a3, $a4, .LBB3_24
.LBB3_21:                               # %if.else78
	ld.w	$a0, $a1, 20
	addi.w	$a4, $a0, -1
	ori	$a3, $zero, 1
	bltu	$a3, $a4, .LBB3_23
# %bb.22:                               # %land.lhs.true85
	ldptr.w	$a4, $a2, 5136
	bne	$a4, $a3, .LBB3_24
.LBB3_23:                               # %lor.lhs.false88
	pcalau12i	$a3, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a3, $a3, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a4, $a1, 0
	ld.w	$a3, $a3, 0
	bne	$a4, $a3, .LBB3_50
.LBB3_24:                               # %if.then74
	ld.w	$a0, $a1, 36
	st.w	$zero, $s2, 4
	st.w	$a0, $s2, 8
	b	.LBB3_29
.LBB3_25:                               # %if.else378
	ld.w	$a2, $a3, 4
	st.w	$a2, $s2, 496
	st.w	$zero, $s2, 500
	move	$a0, $a2
	b	.LBB3_28
.LBB3_26:
	move	$a4, $zero
.LBB3_27:                               # %cond.end
	ld.w	$a0, $a3, 4
	st.w	$a4, $s2, 500
.LBB3_28:                               # %if.end382
	st.w	$a0, $s2, 8
	sub.d	$a0, $a0, $a2
	st.w	$a0, $s2, 4
	ld.w	$a2, $s2, 424
	ldptr.w	$a3, $a1, 15412
	pcalau12i	$a4, %pc_hi20(delta_qp_mbaff)
	addi.d	$a4, $a4, %pc_lo12(delta_qp_mbaff)
	alsl.d	$a2, $a2, $a4, 3
	slli.d	$a3, $a3, 2
	stx.w	$a0, $a2, $a3
	ld.w	$a0, $s2, 8
	ld.w	$a2, $s2, 424
	ldptr.w	$a3, $a1, 15412
	pcalau12i	$a4, %pc_hi20(qp_mbaff)
	addi.d	$a4, $a4, %pc_lo12(qp_mbaff)
	alsl.d	$a2, $a2, $a4, 3
	slli.d	$a3, $a3, 2
	stx.w	$a0, $a2, $a3
.LBB3_29:                               # %if.end403
	ld.w	$a3, $a1, 36
	ori	$a2, $s0, 3164
	ldx.w	$a4, $a1, $a2
	ori	$a2, $s0, 3168
	ldx.w	$a5, $a1, $a2
	ori	$a6, $s0, 3288
	ldx.w	$a6, $a1, $a6
	add.d	$a3, $a4, $a3
	st.w	$a3, $a1, 44
	sub.w	$a3, $zero, $a5
	add.w	$a4, $a6, $a0
	slt	$a5, $a3, $a4
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a5, $a4, $a3
	slti	$a4, $a5, 51
	maskeqz	$a6, $a5, $a4
	ori	$a3, $zero, 51
	masknez	$a4, $a3, $a4
	or	$a4, $a6, $a4
	bltz	$a5, .LBB3_31
# %bb.30:                               # %cond.false.i161
	pcalau12i	$a5, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a5, $a5, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a4, $a5, $a4
.LBB3_31:                               # %cond.end.i165
	st.w	$a4, $s2, 12
	ldx.w	$a2, $a1, $a2
	ori	$a4, $s0, 3292
	ldx.w	$a4, $a1, $a4
	sub.w	$a2, $zero, $a2
	add.w	$a0, $a4, $a0
	slt	$a4, $a2, $a0
	masknez	$a2, $a2, $a4
	maskeqz	$a0, $a0, $a4
	or	$a2, $a0, $a2
	slti	$a0, $a2, 51
	maskeqz	$a4, $a2, $a0
	masknez	$a0, $a3, $a0
	or	$a0, $a4, $a0
	bltz	$a2, .LBB3_33
# %bb.32:                               # %cond.false.1.i173
	pcalau12i	$a2, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a2, $a2, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a0, $a2, $a0
.LBB3_33:                               # %set_chroma_qp.exit179
	pcalau12i	$a2, %pc_hi20(active_pps)
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	st.w	$a0, $s2, 16
	ld.w	$a0, $a2, 220
	beqz	$a0, .LBB3_35
# %bb.34:                               # %if.then407
	ori	$a0, $s0, 2152
	ldx.w	$a0, $a1, $a0
	ori	$a2, $s0, 2156
	ldx.w	$a2, $a1, $a2
	ori	$a3, $s0, 2160
	ldx.w	$a1, $a1, $a3
	b	.LBB3_36
.LBB3_35:
	move	$a0, $zero
	move	$a2, $zero
	move	$a1, $zero
.LBB3_36:                               # %if.end415
	st.w	$a0, $s2, 516
	st.w	$a2, $s2, 520
	st.w	$a1, $s2, 524
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighbors)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_38
# %bb.37:                               # %if.then419
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighborsCABAC)
	jirl	$ra, $ra, 0
.LBB3_38:                               # %for.body430.lr.ph
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 172
	ld.d	$a4, $s4, 0
	ld.w	$a5, $a0, 168
	addi.d	$a2, $a1, -1
	addi.w	$a0, $zero, -1
	slli.d	$a3, $a1, 3
	move	$a1, $a0
	lu32i.d	$a1, 0
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB3_39:                               # %for.body430
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a4, $a4, 6488
	ld.d	$a4, $a4, 0
	ldx.d	$a4, $a4, $a3
	stx.w	$a1, $a4, $a5
	ld.d	$a4, $s4, 0
	ldptr.d	$a4, $a4, 6512
	ld.d	$a5, $s1, 0
	ld.d	$a4, $a4, 0
	ld.w	$a5, $a5, 168
	ldx.d	$a4, $a4, $a3
	slli.d	$a5, $a5, 3
	ldx.d	$a4, $a4, $a5
	vst	$vr0, $a4, 0
	ld.d	$a4, $s4, 0
	ldptr.d	$a5, $a4, 6496
	ld.d	$a6, $s1, 0
	ld.d	$a7, $a5, 0
	ld.w	$a5, $a6, 168
	ldx.d	$a7, $a7, $a3
	slli.d	$t0, $a5, 3
	alsl.d	$t1, $a5, $a7, 3
	stx.d	$a0, $a7, $t0
	st.d	$a0, $t1, 24
	st.d	$a0, $t1, 16
	st.d	$a0, $t1, 8
	ld.w	$a6, $a6, 172
	addi.w	$a6, $a6, 3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	blt	$a2, $a6, .LBB3_39
# %bb.40:                               # %for.body430.lr.ph.1
	ld.d	$a2, $s1, 0
	ld.w	$a3, $a2, 172
	ld.d	$a4, $s4, 0
	ld.w	$a5, $a2, 168
	addi.d	$a2, $a3, -1
	slli.d	$a3, $a3, 3
	.p2align	4, , 16
.LBB3_41:                               # %for.body430.1
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a4, $a4, 6488
	ld.d	$a4, $a4, 8
	ldx.d	$a4, $a4, $a3
	stx.w	$a1, $a4, $a5
	ld.d	$a4, $s4, 0
	ldptr.d	$a4, $a4, 6512
	ld.d	$a5, $s1, 0
	ld.d	$a4, $a4, 8
	ld.w	$a5, $a5, 168
	ldx.d	$a4, $a4, $a3
	slli.d	$a5, $a5, 3
	ldx.d	$a4, $a4, $a5
	vst	$vr0, $a4, 0
	ld.d	$a4, $s4, 0
	ldptr.d	$a5, $a4, 6496
	ld.d	$a6, $s1, 0
	ld.d	$a7, $a5, 8
	ld.w	$a5, $a6, 168
	ldx.d	$a7, $a7, $a3
	slli.d	$t0, $a5, 3
	alsl.d	$t1, $a5, $a7, 3
	stx.d	$a0, $a7, $t0
	st.d	$a0, $t1, 24
	st.d	$a0, $t1, 16
	st.d	$a0, $t1, 8
	ld.w	$a6, $a6, 172
	addi.w	$a6, $a6, 3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	blt	$a2, $a6, .LBB3_41
# %bb.42:                               # %for.inc463.1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.d	$a0, $s2, 72
	st.d	$zero, $s2, 368
	st.w	$zero, $s2, 364
	st.d	$zero, $s2, 408
	st.w	$zero, $s2, 416
	ori	$a2, $zero, 260
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 8224
	ori	$a0, $a0, 514
	bstrins.d	$a0, $a0, 57, 32
	st.d	$a0, $s2, 332
	st.d	$a0, $s2, 340
	st.d	$a0, $s2, 348
	st.d	$a0, $s2, 356
	ld.d	$a0, $s3, 0
	ld.w	$a1, $a0, 272
	beqz	$a1, .LBB3_44
# %bb.43:                               # %if.then469
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a1, 12
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 1
	stx.w	$a3, $a1, $a2
.LBB3_44:                               # %if.end473
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bltz	$fp, .LBB3_46
# %bb.45:                               # %if.else478
	ld.d	$a1, $s1, 0
	ldptr.d	$a1, $a1, 14224
	ld.w	$a2, $s2, 0
	ori	$a3, $zero, 536
	mul.d	$a3, $fp, $a3
	ldx.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB3_47
.LBB3_46:                               # %if.end490.sink.split
	st.w	$zero, $s2, 24
.LBB3_47:                               # %if.end490
	st.d	$zero, $s2, 48
	vst	$vr0, $s2, 32
	ldptr.w	$a0, $a0, 5244
	beqz	$a0, .LBB3_49
# %bb.48:                               # %if.end506
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
.LBB3_49:                               # %if.then505
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(ResetFastFullIntegerSearch)
	jr	$t8
.LBB3_50:                               # %if.else94
	beqz	$a0, .LBB3_52
# %bb.51:                               # %lor.lhs.false98
	ldptr.w	$a0, $a2, 5136
	ori	$a3, $zero, 1
	bne	$a0, $a3, .LBB3_65
.LBB3_52:                               # %if.then102
	ldptr.w	$a0, $a1, 15408
	beqz	$a0, .LBB3_66
# %bb.53:                               # %if.else177
	ldptr.w	$a0, $a1, 15412
	beqz	$a0, .LBB3_73
# %bb.54:                               # %if.else225
	ld.w	$a0, $a1, 36
	st.w	$zero, $s2, 4
	st.w	$a0, $s2, 8
	ori	$a3, $s0, 3168
	ldx.w	$a4, $a1, $a3
	ori	$a5, $s0, 3288
	ldx.w	$a5, $a1, $a5
	sub.w	$a4, $zero, $a4
	add.w	$a5, $a5, $a0
	slt	$a6, $a4, $a5
	masknez	$a4, $a4, $a6
	maskeqz	$a5, $a5, $a6
	or	$a6, $a5, $a4
	slti	$a5, $a6, 51
	maskeqz	$a7, $a6, $a5
	ori	$a4, $zero, 51
	masknez	$a5, $a4, $a5
	or	$a5, $a7, $a5
	bltz	$a6, .LBB3_56
# %bb.55:                               # %cond.false.i
	pcalau12i	$a6, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a6, $a6, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a5, $a6, $a5
.LBB3_56:                               # %cond.end.i
	st.w	$a5, $s2, 12
	ldx.w	$a3, $a1, $a3
	ori	$a5, $s0, 3292
	ldx.w	$a5, $a1, $a5
	sub.w	$a3, $zero, $a3
	add.w	$a5, $a5, $a0
	slt	$a6, $a3, $a5
	masknez	$a3, $a3, $a6
	maskeqz	$a5, $a5, $a6
	or	$a5, $a5, $a3
	slti	$a3, $a5, 51
	maskeqz	$a6, $a5, $a3
	masknez	$a3, $a4, $a3
	or	$a3, $a6, $a3
	bltz	$a5, .LBB3_58
# %bb.57:                               # %cond.false.1.i
	pcalau12i	$a4, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a4, $a4, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a3, $a4, $a3
.LBB3_58:                               # %set_chroma_qp.exit
	st.w	$a3, $s2, 16
	b	.LBB3_84
.LBB3_59:                               # %for.cond.preheader
	ld.w	$a0, $s5, 16
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_8
# %bb.60:                               # %for.body.lr.ph
	ldptr.w	$a3, $a2, 4008
	bne	$a3, $a1, .LBB3_70
# %bb.61:                               # %for.body.preheader
	pcalau12i	$a1, %got_pc_hi20(stats)
	ld.d	$a1, $a1, %got_pc_lo12(stats)
	ld.d	$a4, $a1, 0
	move	$a3, $zero
	move	$a5, $zero
	ori	$a6, $zero, 1
	b	.LBB3_63
	.p2align	4, , 16
.LBB3_62:                               # %for.inc
                                        #   in Loop: Header=BB3_63 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a3, 104
	bge	$a5, $a0, .LBB3_8
.LBB3_63:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $s5, 24
	ldx.d	$t0, $a7, $a3
	ld.d	$t1, $t0, 0
	st.d	$t1, $t0, 12
	ld.b	$t1, $t0, 8
	ld.w	$t2, $a4, 32
	ldptr.w	$t3, $a2, 4008
	st.b	$t1, $t0, 20
	st.w	$t2, $a4, 36
	bne	$t3, $a6, .LBB3_62
# %bb.64:                               # %if.then26
                                        #   in Loop: Header=BB3_63 Depth=1
	add.d	$a0, $a7, $a3
	vld	$vr0, $a0, 40
	xvld	$xr1, $a0, 8
	vst	$vr0, $a0, 88
	xvst	$xr1, $a0, 56
	ld.d	$a4, $a1, 0
	ld.d	$a2, $s3, 0
	ld.w	$a0, $s5, 16
	b	.LBB3_62
.LBB3_65:                               # %lor.lhs.false98.if.end403_crit_edge
	ld.w	$a0, $s2, 8
	b	.LBB3_29
.LBB3_66:                               # %if.then104
	addi.w	$a0, $zero, -1
	bge	$a0, $fp, .LBB3_77
# %bb.67:                               # %if.else125
	ldptr.w	$a0, $a2, 4708
	beqz	$a0, .LBB3_75
# %bb.68:                               # %land.lhs.true128
	ldptr.w	$a0, $a1, 15412
	beqz	$a0, .LBB3_75
# %bb.69:                               # %if.else171
	ld.w	$a0, $a1, 36
	st.w	$zero, $s2, 4
	st.w	$a0, $s2, 8
	b	.LBB3_84
.LBB3_70:                               # %for.body.lr.ph.split.us
	pcalau12i	$a1, %got_pc_hi20(stats)
	ld.d	$a1, $a1, %got_pc_lo12(stats)
	ld.d	$a1, $a1, 0
	ld.d	$a4, $s5, 24
	ld.w	$a3, $a1, 32
	.p2align	4, , 16
.LBB3_71:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a5, 0
	ld.b	$a7, $a5, 8
	st.d	$a6, $a5, 12
	st.b	$a7, $a5, 20
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 104
	bnez	$a0, .LBB3_71
# %bb.72:                               # %for.cond.if.end29.loopexit_crit_edge.split.us
	st.w	$a3, $a1, 36
	b	.LBB3_8
.LBB3_73:                               # %if.then180
	ldptr.w	$a0, $a1, 15416
	beqz	$a0, .LBB3_78
# %bb.74:                               # %if.then182
	pcalau12i	$a0, %pc_hi20(delta_qp_mbaff)
	ld.w	$a0, $a0, %pc_lo12(delta_qp_mbaff)
	st.w	$a0, $s2, 4
	pcalau12i	$a0, %pc_hi20(qp_mbaff)
	ld.w	$a0, $a0, %pc_lo12(qp_mbaff)
	b	.LBB3_80
.LBB3_75:                               # %if.then131
	ldptr.d	$a0, $a1, 14224
	ori	$a3, $zero, 536
	mul.d	$a4, $fp, $a3
	add.d	$a4, $a0, $a4
	ld.w	$a5, $a4, 504
	ori	$a6, $zero, 1
	bne	$a5, $a6, .LBB3_81
# %bb.76:                               # %if.then137
	ld.w	$a3, $a1, 36
	move	$a0, $zero
	st.w	$a3, $s2, 8
	b	.LBB3_82
.LBB3_77:                               # %if.then107
	ld.w	$a0, $a1, 36
	st.w	$zero, $s2, 4
	st.w	$a0, $s2, 8
	ld.w	$a0, $s2, 424
	ldptr.w	$a3, $a1, 15412
	pcalau12i	$a4, %pc_hi20(delta_qp_mbaff)
	addi.d	$a4, $a4, %pc_lo12(delta_qp_mbaff)
	alsl.d	$a0, $a0, $a4, 3
	slli.d	$a3, $a3, 2
	stx.w	$zero, $a0, $a3
	b	.LBB3_83
.LBB3_78:                               # %if.else192
	addi.w	$a0, $zero, -1
	bge	$a0, $fp, .LBB3_103
# %bb.79:                               # %if.else213
	pcalau12i	$a0, %pc_hi20(delta_qp_mbaff+8)
	ld.w	$a0, $a0, %pc_lo12(delta_qp_mbaff+8)
	st.w	$a0, $s2, 4
	pcalau12i	$a0, %pc_hi20(qp_mbaff+8)
	ld.w	$a0, $a0, %pc_lo12(qp_mbaff+8)
.LBB3_80:                               # %if.end230
	st.w	$a0, $s2, 8
	st.w	$a0, $a1, 36
	b	.LBB3_84
.LBB3_81:                               # %if.else141
	ld.w	$a4, $a4, 496
	st.w	$a4, $s2, 8
	mul.d	$a3, $fp, $a3
	add.d	$a0, $a0, $a3
	ld.w	$a0, $a0, 8
	sub.d	$a0, $a4, $a0
	st.w	$a4, $a1, 36
.LBB3_82:                               # %if.end156
	st.w	$a0, $s2, 4
	ld.w	$a3, $s2, 424
	ldptr.w	$a4, $a1, 15412
	pcalau12i	$a5, %pc_hi20(delta_qp_mbaff)
	addi.d	$a5, $a5, %pc_lo12(delta_qp_mbaff)
	alsl.d	$a3, $a3, $a5, 3
	slli.d	$a4, $a4, 2
	stx.w	$a0, $a3, $a4
.LBB3_83:                               # %if.end230
	ld.w	$a0, $s2, 8
	ld.w	$a3, $s2, 424
	ldptr.w	$a4, $a1, 15412
	pcalau12i	$a5, %pc_hi20(qp_mbaff)
	addi.d	$a5, $a5, %pc_lo12(qp_mbaff)
	alsl.d	$a3, $a3, $a5, 3
	slli.d	$a4, $a4, 2
	stx.w	$a0, $a3, $a4
.LBB3_84:                               # %if.end230
	ldptr.w	$a3, $a1, 15408
	bnez	$a3, .LBB3_29
# %bb.85:                               # %if.then233
	ldptr.w	$a3, $a2, 4708
	beqz	$a3, .LBB3_88
# %bb.86:                               # %land.lhs.true236
	ldptr.w	$a4, $a1, 15412
	beqz	$a4, .LBB3_88
# %bb.87:                               # %if.else348
	ld.w	$a2, $a1, 36
	st.w	$a2, $s2, 496
	b	.LBB3_29
.LBB3_88:                               # %if.then239
	ldptr.w	$a0, $a1, 15388
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB3_92
# %bb.89:                               # %land.lhs.true242
	ldptr.w	$a4, $a1, 15404
	mod.wu	$a0, $a0, $a4
	bnez	$a0, .LBB3_92
# %bb.90:                               # %if.then246
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1148
	beqz	$a0, .LBB3_104
.LBB3_91:                               # %if.end273.sink.split
	pcalau12i	$s5, %pc_hi20(quadratic_RC)
	ld.d	$a0, $s5, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(updateRCModel)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(generic_RC)
	ld.d	$a1, $a0, %pc_lo12(generic_RC)
	pcalau12i	$a0, %pc_hi20(updateQP)
	ld.d	$a2, $a0, %pc_lo12(updateQP)
	ld.d	$a0, $s5, %pc_lo12(quadratic_RC)
	ld.w	$a1, $a1, 0
	jirl	$ra, $a2, 0
	ld.d	$a1, $s1, 0
	stptr.w	$a0, $a1, 15392
.LBB3_92:                               # %if.end273
	ld.w	$a0, $a1, 12
	beqz	$a0, .LBB3_94
# %bb.93:                               # %if.end273.if.end280_crit_edge
	ori	$a0, $s0, 3104
	ldx.w	$a0, $a1, $a0
	b	.LBB3_95
.LBB3_94:                               # %if.then277
	ld.w	$a0, $a1, 36
	stptr.w	$a0, $a1, 15392
.LBB3_95:                               # %if.end280
	ld.w	$a2, $s2, 8
	ori	$a3, $s0, 3184
	ldx.w	$a4, $a1, $a3
	ldptr.w	$a3, $a1, 15468
	sub.w	$a5, $a2, $a4
	add.w	$a6, $a3, $a2
	slt	$a7, $a5, $a0
	masknez	$a5, $a5, $a7
	maskeqz	$a0, $a0, $a7
	or	$a0, $a0, $a5
	slt	$a5, $a0, $a6
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $a6, $a5
	ld.w	$a6, $s2, 4
	or	$a0, $a0, $a5
	st.w	$a0, $s2, 508
	sub.d	$a0, $a0, $a2
	add.w	$a0, $a0, $a6
	pcalau12i	$a5, %pc_hi20(dq)
	st.w	$a0, $a5, %pc_lo12(dq)
	sub.w	$a4, $zero, $a4
	pcalau12i	$a2, %pc_hi20(predict_error)
	bge	$a0, $a4, .LBB3_97
# %bb.96:                               # %if.then295
	st.w	$a4, $a5, %pc_lo12(dq)
	ld.w	$a0, $s2, 4
	ld.w	$a3, $a1, 36
	sub.d	$a0, $a4, $a0
	st.w	$a0, $a2, %pc_lo12(predict_error)
	add.d	$a0, $a3, $a0
	st.w	$a0, $a1, 36
	st.w	$a4, $s2, 4
	b	.LBB3_100
.LBB3_97:                               # %if.else306
	bge	$a3, $a0, .LBB3_99
# %bb.98:                               # %if.then310
	st.w	$a3, $a5, %pc_lo12(dq)
	ld.w	$a0, $s2, 4
	ld.w	$a4, $a1, 36
	sub.d	$a0, $a3, $a0
	st.w	$a0, $a2, %pc_lo12(predict_error)
	add.d	$a0, $a4, $a0
	st.w	$a0, $a1, 36
	st.w	$a3, $s2, 4
	b	.LBB3_100
.LBB3_99:                               # %if.else319
	ld.w	$a3, $s2, 508
	ld.w	$a4, $s2, 8
	st.w	$a0, $s2, 4
	sub.d	$a0, $a3, $a4
	st.w	$a0, $a2, %pc_lo12(predict_error)
	ld.w	$a0, $s2, 508
	st.w	$a0, $a1, 36
.LBB3_100:                              # %if.end327
	ld.d	$a3, $s3, 0
	ldptr.w	$a3, $a3, 4708
	st.w	$a0, $s2, 8
	beqz	$a3, .LBB3_102
# %bb.101:                              # %if.then332
	ld.w	$a0, $s2, 4
	ld.w	$a3, $s2, 424
	ldptr.w	$a4, $a1, 15412
	pcalau12i	$a5, %pc_hi20(delta_qp_mbaff)
	addi.d	$a5, $a5, %pc_lo12(delta_qp_mbaff)
	alsl.d	$a3, $a3, $a5, 3
	slli.d	$a4, $a4, 2
	stx.w	$a0, $a3, $a4
	ld.w	$a0, $s2, 8
	ld.w	$a3, $s2, 424
	ldptr.w	$a4, $a1, 15412
	pcalau12i	$a5, %pc_hi20(qp_mbaff)
	addi.d	$a5, $a5, %pc_lo12(qp_mbaff)
	alsl.d	$a3, $a3, $a5, 3
	slli.d	$a4, $a4, 2
	stx.w	$a0, $a3, $a4
.LBB3_102:                              # %if.end347
	ld.w	$a2, $a2, %pc_lo12(predict_error)
	st.w	$a2, $s2, 512
	b	.LBB3_29
.LBB3_103:                              # %if.then195
	ld.w	$a0, $a1, 36
	ld.w	$a3, $s2, 424
	st.w	$zero, $s2, 4
	st.w	$a0, $s2, 8
	slli.d	$a0, $a3, 3
	pcalau12i	$a3, %pc_hi20(delta_qp_mbaff)
	addi.d	$a3, $a3, %pc_lo12(delta_qp_mbaff)
	stx.w	$zero, $a3, $a0
	b	.LBB3_83
.LBB3_104:                              # %if.else250
	ldptr.w	$a0, $a2, 4704
	beqz	$a0, .LBB3_107
# %bb.105:                              # %land.lhs.true253
	bnez	$a3, .LBB3_91
# %bb.106:                              # %land.lhs.true256
	pcalau12i	$a0, %pc_hi20(generic_RC)
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	ld.w	$a0, $a0, 12
	bnez	$a0, .LBB3_92
	b	.LBB3_91
.LBB3_107:                              # %if.else263
	bnez	$a3, .LBB3_91
	b	.LBB3_92
.Lfunc_end3:
	.size	start_macroblock, .Lfunc_end3-start_macroblock
                                        # -- End function
	.globl	terminate_macroblock            # -- Begin function terminate_macroblock
	.p2align	5
	.type	terminate_macroblock,@function
terminate_macroblock:                   # @terminate_macroblock
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
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s3, $a2, %got_pc_lo12(img)
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$s8, $a2, %got_pc_lo12(input)
	ld.d	$a2, $s3, 0
	ld.d	$a3, $s8, 0
	ldptr.d	$s5, $a2, 14216
	ldptr.w	$a4, $a3, 4016
	pcalau12i	$a5, %got_pc_hi20(assignSE2partition)
	ld.d	$a5, $a5, %got_pc_lo12(assignSE2partition)
	ldptr.d	$a6, $a2, 14224
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s1, $a2, 12
	slli.d	$a2, $a4, 3
	ldx.d	$a2, $a5, $a2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s7, $a3, 264
	move	$s0, $a1
	move	$s4, $a0
	ori	$s2, $zero, 1
	beqz	$s1, .LBB4_3
# %bb.1:                                # %lor.lhs.false
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_3
# %bb.2:                                # %if.else
	ld.d	$a0, $s3, 0
	ldptr.d	$fp, $a0, 14224
	ld.w	$a0, $a0, 12
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a2, $zero, 536
	mul.d	$a0, $a0, $a2
	ldx.w	$a0, $fp, $a0
	ld.w	$a1, $a1, 16
	xor	$a0, $a0, $a1
	sltui	$s6, $a0, 1
	sltu	$s2, $zero, $a0
	b	.LBB4_4
.LBB4_3:
	move	$s6, $zero
.LBB4_4:                                # %if.end16
	ld.d	$a0, $s8, 0
	st.w	$zero, $s0, 0
	ld.w	$a3, $a0, 264
	ori	$a0, $zero, 3
	bltu	$a0, $a3, .LBB4_17
# %bb.5:                                # %if.end16
	slli.d	$a0, $a3, 2
	pcalau12i	$a1, %pc_hi20(.LJTI4_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI4_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB4_6:                                # %sw.bb
	ld.w	$a0, $s5, 20
	addi.d	$a1, $a0, 1
	ld.d	$a0, $s3, 0
	st.w	$a1, $s5, 20
	st.w	$zero, $s0, 0
	ld.w	$a1, $s5, 20
	ldptr.w	$a2, $a0, 15348
	bne	$a1, $a2, .LBB4_18
# %bb.7:                                # %if.then20
	ori	$fp, $zero, 1
	st.w	$fp, $s4, 0
	b	.LBB4_19
.LBB4_8:                                # %sw.bb40
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $s3, 0
	ld.w	$a0, $a0, 144
	beqz	$a0, .LBB4_22
# %bb.9:                                # %if.then41
	st.w	$a0, $sp, 52
	st.w	$zero, $sp, 56
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	ld.d	$fp, $s5, 24
	st.w	$a0, $sp, 48
	ori	$a0, $zero, 104
	mul.d	$s2, $a1, $a0
	add.d	$a1, $fp, $s2
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(writeSE_UVLC)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $fp, $s2
	ld.w	$s4, $sp, 60
	ld.d	$a1, $a0, 0
	ld.b	$a2, $a0, 8
	ld.d	$a3, $a0, 12
	ld.b	$a4, $a0, 20
	st.d	$a1, $a0, 24
	st.b	$a2, $a0, 21
	st.d	$a3, $a0, 0
	st.b	$a4, $a0, 8
	pcalau12i	$a0, %pc_hi20(terminate_macroblock.skip)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(terminate_macroblock.skip)
	bnez	$s6, .LBB4_23
	b	.LBB4_37
.LBB4_10:                               # %sw.bb93
	ld.d	$a0, $s3, 0
	ld.w	$a0, $a0, 12
	slti	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB4_13
# %bb.11:                               # %if.then99
	ld.d	$a1, $s5, 112
	move	$a0, $zero
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_13
# %bb.12:                               # %if.then102
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 0
	st.w	$a0, $s4, 0
.LBB4_13:                               # %if.end104
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB4_57
# %bb.14:                               # %land.lhs.true107
	ld.d	$a0, $s3, 0
	ld.w	$s2, $a0, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FmoMB2SliceGroup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoGetLastCodedMBOfSliceGroup)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB4_20
# %bb.15:                               # %if.then114
	ori	$a0, $zero, 1
	st.w	$a0, $s4, 0
	ld.w	$a0, $s0, 0
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB4_58
	b	.LBB4_21
.LBB4_16:                               # %sw.bb27
	ld.w	$a0, $s5, 20
	ld.d	$a1, $s3, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 20
	st.w	$zero, $s0, 0
	ld.w	$s2, $a1, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FmoMB2SliceGroup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoGetLastCodedMBOfSliceGroup)
	jirl	$ra, $ra, 0
	xor	$a0, $s2, $a0
	ld.d	$a1, $s8, 0
	sltui	$a0, $a0, 1
	st.w	$a0, $s4, 0
	ld.w	$a2, $s5, 20
	ld.w	$a1, $a1, 268
	slt	$a1, $a2, $a1
	xori	$a1, $a1, 1
	or	$a0, $a0, $a1
	st.w	$a0, $s4, 0
	ld.w	$a0, $s0, 0
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB4_58
	b	.LBB4_21
.LBB4_17:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$s2, $a0, %pc_lo12(errortext)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 300
	move	$a0, $s2
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 600
	move	$a0, $s2
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB4_58
	b	.LBB4_21
.LBB4_18:                               # %sw.bb.if.end21_crit_edge
	ld.w	$fp, $s4, 0
.LBB4_19:                               # %if.end21
	ld.w	$s2, $a0, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FmoMB2SliceGroup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoGetLastCodedMBOfSliceGroup)
	jirl	$ra, $ra, 0
	xor	$a0, $s2, $a0
	sltui	$a0, $a0, 1
	or	$a0, $fp, $a0
	st.w	$a0, $s4, 0
.LBB4_20:                               # %sw.epilogthread-pre-split
	ld.w	$a0, $s0, 0
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB4_58
.LBB4_21:                               # %sw.epilog.if.end138_crit_edge
	ld.d	$a0, $s8, 0
	b	.LBB4_67
.LBB4_22:
	move	$s4, $zero
	beqz	$s6, .LBB4_37
.LBB4_23:                               # %if.then53
	ld.d	$a3, $s8, 0
	ld.d	$a0, $s3, 0
	ldptr.w	$a1, $a3, 4008
	ldptr.d	$s2, $a0, 14216
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB4_29
# %bb.24:                               # %if.then53
	bnez	$a1, .LBB4_35
# %bb.25:                               # %for.cond.preheader.i
	ld.w	$a1, $s2, 16
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB4_35
# %bb.26:                               # %for.body.lr.ph.i
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a2, $s2, 24
	ld.w	$a3, $a3, 268
	.p2align	4, , 16
.LBB4_27:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 4
	ld.w	$a4, $a4, 0
	slti	$a6, $a5, 8
	add.d	$a4, $a4, $a6
	slt	$a5, $a5, $s4
	add.w	$a4, $a4, $a5
	blt	$a3, $a4, .LBB4_41
# %bb.28:                               # %for.cond.i
                                        #   in Loop: Header=BB4_27 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 104
	bnez	$a1, .LBB4_27
	b	.LBB4_34
.LBB4_29:                               # %for.cond17.preheader.i
	ld.w	$a1, $s2, 16
	blt	$a1, $a2, .LBB4_35
# %bb.30:                               # %for.body20.i.preheader
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $zero
	ori	$fp, $zero, 8
	.p2align	4, , 16
.LBB4_31:                               # %for.body20.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 24
	add.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(arienco_bits_written)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ld.w	$a1, $a1, 268
	slli.w	$a1, $a1, 3
	blt	$a1, $a0, .LBB4_41
# %bb.32:                               # %for.cond17.i
                                        #   in Loop: Header=BB4_31 Depth=1
	ld.w	$a0, $s2, 16
	addi.d	$s7, $s7, 1
	addi.d	$fp, $fp, 104
	blt	$s7, $a0, .LBB4_31
# %bb.33:                               # %if.else57.loopexit134
	ld.d	$a0, $s3, 0
.LBB4_34:                               # %if.else57
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
.LBB4_35:                               # %if.else57
	ld.w	$a0, $a0, 144
	bnez	$a0, .LBB4_37
# %bb.36:                               # %if.then60
	pcalau12i	$a0, %pc_hi20(terminate_macroblock.skip)
	st.b	$zero, $a0, %pc_lo12(terminate_macroblock.skip)
.LBB4_37:                               # %if.end63
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB4_42
.LBB4_38:                               # %land.lhs.true
	ld.d	$a0, $s3, 0
	ld.w	$s2, $a0, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FmoMB2SliceGroup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoGetLastCodedMBOfSliceGroup)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB4_42
# %bb.39:                               # %if.then72
	ld.d	$a0, $s3, 0
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	ld.w	$a0, $a0, 144
	bnez	$a0, .LBB4_42
# %bb.40:                               # %if.then75
	pcalau12i	$a0, %pc_hi20(terminate_macroblock.skip)
	st.b	$zero, $a0, %pc_lo12(terminate_macroblock.skip)
	b	.LBB4_42
.LBB4_41:                               # %if.then56
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB4_38
.LBB4_42:                               # %if.end77
	bnez	$s6, .LBB4_56
# %bb.43:                               # %land.lhs.true79
	ld.d	$a3, $s8, 0
	ld.d	$a0, $s3, 0
	ldptr.w	$a1, $a3, 4008
	ldptr.d	$s2, $a0, 14216
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB4_49
# %bb.44:                               # %land.lhs.true79
	bnez	$a1, .LBB4_56
# %bb.45:                               # %for.cond.preheader.i98
	ld.w	$a1, $s2, 16
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB4_56
# %bb.46:                               # %for.body.lr.ph.i101
	ld.d	$a2, $s2, 24
	ld.w	$a3, $a3, 268
	.p2align	4, , 16
.LBB4_47:                               # %for.body.i105
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 4
	ld.w	$a4, $a4, 0
	slti	$a6, $a5, 8
	add.d	$a4, $a4, $a6
	slt	$a5, $a5, $s4
	add.w	$a4, $a4, $a5
	blt	$a3, $a4, .LBB4_54
# %bb.48:                               # %for.cond.i116
                                        #   in Loop: Header=BB4_47 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 104
	bnez	$a1, .LBB4_47
	b	.LBB4_56
.LBB4_49:                               # %for.cond17.preheader.i83
	ld.w	$a0, $s2, 16
	blt	$a0, $a2, .LBB4_56
# %bb.50:                               # %for.body20.i88.preheader
	move	$s4, $zero
	ori	$fp, $zero, 8
	.p2align	4, , 16
.LBB4_51:                               # %for.body20.i88
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 24
	add.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(arienco_bits_written)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ld.w	$a1, $a1, 268
	slli.w	$a1, $a1, 3
	blt	$a1, $a0, .LBB4_53
# %bb.52:                               # %for.cond17.i95
                                        #   in Loop: Header=BB4_51 Depth=1
	ld.w	$a0, $s2, 16
	addi.d	$s4, $s4, 1
	addi.d	$fp, $fp, 104
	blt	$s4, $a0, .LBB4_51
	b	.LBB4_56
.LBB4_53:                               # %if.then82.loopexit131
	ld.d	$a0, $s3, 0
.LBB4_54:                               # %if.then82
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	ld.w	$a0, $a0, 144
	bnez	$a0, .LBB4_56
# %bb.55:                               # %if.then85
	pcalau12i	$a0, %pc_hi20(terminate_macroblock.skip)
	st.b	$zero, $a0, %pc_lo12(terminate_macroblock.skip)
.LBB4_56:                               # %if.end87
	ld.w	$a0, $s0, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_81
.LBB4_57:                               # %sw.epilog
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB4_21
.LBB4_58:                               # %for.cond.preheader
	ld.w	$a1, $s5, 16
	ld.d	$a0, $s8, 0
	blt	$a1, $a2, .LBB4_67
# %bb.59:                               # %for.body.lr.ph
	ldptr.w	$a3, $a0, 4008
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB4_64
# %bb.60:                               # %for.body.preheader
	pcalau12i	$a3, %got_pc_hi20(stats)
	ld.d	$a3, $a3, %got_pc_lo12(stats)
	ld.d	$a6, $a3, 0
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB4_62
	.p2align	4, , 16
.LBB4_61:                               # %for.inc
                                        #   in Loop: Header=BB4_62 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 104
	bge	$a5, $a1, .LBB4_67
.LBB4_62:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $s5, 24
	ldx.d	$t0, $a7, $a4
	ld.d	$t1, $t0, 12
	st.d	$t1, $t0, 0
	ld.b	$t1, $t0, 20
	ld.w	$t2, $a6, 36
	ldptr.w	$t3, $a0, 4008
	st.b	$t1, $t0, 8
	st.w	$t2, $a6, 32
	bne	$t3, $a2, .LBB4_61
# %bb.63:                               # %if.then135
                                        #   in Loop: Header=BB4_62 Depth=1
	add.d	$a0, $a7, $a4
	vld	$vr0, $a0, 88
	xvld	$xr1, $a0, 56
	vst	$vr0, $a0, 40
	xvst	$xr1, $a0, 8
	ld.d	$a6, $a3, 0
	ld.d	$a0, $s8, 0
	ld.w	$a1, $s5, 16
	b	.LBB4_61
.LBB4_64:                               # %for.body.lr.ph.split.us
	pcalau12i	$a2, %got_pc_hi20(stats)
	ld.d	$a2, $a2, %got_pc_lo12(stats)
	ld.d	$a2, $a2, 0
	ld.d	$a4, $s5, 24
	ld.w	$a3, $a2, 36
	.p2align	4, , 16
.LBB4_65:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a5, 12
	ld.b	$a7, $a5, 20
	st.d	$a6, $a5, 0
	st.b	$a7, $a5, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 104
	bnez	$a1, .LBB4_65
# %bb.66:                               # %for.cond.if.end138.loopexit_crit_edge.split.us
	st.w	$a3, $a2, 32
.LBB4_67:                               # %if.end138
	ldptr.w	$a0, $a0, 4008
	bnez	$a0, .LBB4_80
# %bb.68:                               # %if.then142
	ori	$a0, $zero, 536
	mul.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$s2, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	ld.d	$a2, $s5, 24
	move	$fp, $s4
	ld.w	$a1, $s4, 0
	ori	$a3, $zero, 104
	mul.d	$a0, $a0, $a3
	ori	$s4, $zero, 1
	add.d	$s1, $a2, $a0
	bne	$a1, $s4, .LBB4_76
# %bb.69:                               # %if.then142
	pcalau12i	$a0, %pc_hi20(terminate_macroblock.skip)
	ld.b	$a2, $a0, %pc_lo12(terminate_macroblock.skip)
	andi	$a2, $a2, 1
	beqz	$a2, .LBB4_76
# %bb.70:                               # %if.then152
	ld.d	$a1, $s3, 0
	ld.w	$a2, $a1, 144
	beqz	$a2, .LBB4_74
# %bb.71:                               # %land.lhs.true155
	ld.w	$a3, $s0, 0
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB4_74
# %bb.72:                               # %if.then158
	addi.w	$a0, $a2, -1
	st.w	$a0, $a1, 144
	beqz	$a0, .LBB4_75
# %bb.73:                               # %if.then162
	st.w	$a0, $sp, 52
	st.w	$zero, $sp, 56
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 48
	addi.d	$a0, $sp, 48
	move	$a1, $s1
	pcaddu18i	$ra, %call36(writeSE_UVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 60
	ld.w	$a1, $s2, 32
	ld.d	$a2, $s3, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $s2, 32
	st.w	$zero, $a2, 144
	b	.LBB4_75
.LBB4_74:                               # %if.else171
	ld.d	$a2, $s1, 0
	ld.d	$a3, $a2, 24
	ld.b	$a4, $a2, 21
	st.d	$a3, $a2, 0
	st.b	$a4, $a2, 8
	st.w	$zero, $a1, 144
	st.b	$zero, $a0, %pc_lo12(terminate_macroblock.skip)
.LBB4_75:                               # %if.end181thread-pre-split
	ld.w	$a1, $fp, 0
.LBB4_76:                               # %if.end181
	bne	$a1, $s4, .LBB4_80
# %bb.77:                               # %land.lhs.true184
	bstrins.d	$s7, $zero, 0, 0
	addi.w	$a0, $s7, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB4_80
# %bb.78:                               # %land.lhs.true184
	ld.d	$a0, $s3, 0
	ld.w	$a0, $a0, 144
	beqz	$a0, .LBB4_80
# %bb.79:                               # %if.then189
	st.w	$a0, $sp, 52
	st.w	$zero, $sp, 56
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 48
	addi.d	$a0, $sp, 48
	move	$a1, $s1
	pcaddu18i	$ra, %call36(writeSE_UVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 60
	ld.w	$a1, $s2, 32
	ld.d	$a2, $s3, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $s2, 32
	st.w	$zero, $a2, 144
.LBB4_80:                               # %if.end200
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
.LBB4_81:                               # %if.then89
	ld.w	$a0, $s5, 20
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 20
	ld.w	$a0, $s0, 0
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB4_58
	b	.LBB4_21
.Lfunc_end4:
	.size	terminate_macroblock, .Lfunc_end4-terminate_macroblock
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_16-.LJTI4_0
	.word	.LBB4_8-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
                                        # -- End function
	.text
	.globl	OneComponentLumaPrediction4x4   # -- Begin function OneComponentLumaPrediction4x4
	.p2align	5
	.type	OneComponentLumaPrediction4x4,@function
OneComponentLumaPrediction4x4:          # @OneComponentLumaPrediction4x4
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a5, $a4
	lu12i.w	$a5, 1
	ori	$a6, $a5, 2312
	ldx.w	$a6, $a4, $a6
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(width_pad)
	st.w	$a6, $a0, %pc_lo12(width_pad)
	ori	$a0, $a5, 2316
	ldx.w	$a5, $a4, $a0
	pcalau12i	$a6, %pc_hi20(height_pad)
	ld.h	$a7, $a3, 2
	ld.h	$t0, $a3, 0
	ldptr.d	$a0, $a4, 6448
	st.w	$a5, $a6, %pc_lo12(height_pad)
	add.w	$a3, $a2, $a7
	add.w	$a2, $a1, $t0
	move	$a1, $a3
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	st.d	$a1, $fp, 0
	pcalau12i	$a1, %pc_hi20(img_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_padded_size_x)
	slli.d	$a2, $a1, 1
	ldx.d	$a3, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a3, $fp, 8
	ldx.d	$a3, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a3, $fp, 16
	ldx.d	$a0, $a0, $a2
	st.d	$a0, $fp, 24
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	OneComponentLumaPrediction4x4, .Lfunc_end5-OneComponentLumaPrediction4x4
                                        # -- End function
	.globl	LumaPrediction4x4               # -- Begin function LumaPrediction4x4
	.p2align	5
	.type	LumaPrediction4x4,@function
LumaPrediction4x4:                      # @LumaPrediction4x4
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
	pcalau12i	$a7, %got_pc_hi20(img)
	ld.d	$s2, $a7, %got_pc_lo12(img)
	ld.d	$a7, $s2, 0
	ld.w	$t0, $a7, 192
	ld.w	$t1, $a7, 196
	move	$s6, $a6
	move	$s7, $a5
	move	$s3, $a2
	add.d	$t8, $t0, $a0
	ori	$t7, $zero, 80
	add.d	$a2, $t1, $a1
	pcalau12i	$a5, %pc_hi20(active_pps)
	ld.d	$t0, $a5, %pc_lo12(active_pps)
	ld.w	$a5, $a7, 12
	ldptr.d	$a6, $a7, 14224
	ori	$t1, $zero, 536
	ld.w	$t2, $t0, 192
	mul.d	$t1, $a5, $t1
	srai.d	$a5, $a0, 2
	add.d	$s4, $a6, $t1
	srai.d	$a6, $a1, 2
	beqz	$t2, .LBB6_3
# %bb.1:                                # %land.lhs.true
	ld.w	$t1, $a7, 20
	ori	$s8, $zero, 1
	beqz	$t1, .LBB6_6
# %bb.2:                                # %land.lhs.true
	ori	$t2, $zero, 3
	beq	$t1, $t2, .LBB6_6
.LBB6_3:                                # %lor.rhs
	ld.w	$t0, $t0, 196
	beqz	$t0, .LBB6_5
# %bb.4:                                # %land.rhs
	ld.w	$t0, $a7, 20
	addi.d	$t0, $t0, -1
	sltui	$s8, $t0, 1
	b	.LBB6_6
.LBB6_5:
	move	$s8, $zero
.LBB6_6:                                # %lor.end
	ld.hu	$t0, $s4, 480
	sltu	$t1, $zero, $t0
	or	$t2, $s6, $s7
	sltui	$t2, $t2, 1
	addi.d	$t3, $a3, -1
	sltui	$t3, $t3, 1
	addi.d	$t4, $a4, -1
	sltui	$t4, $t4, 1
	addi.d	$t0, $t0, -1
	sltui	$t0, $t0, 1
	lu12i.w	$fp, 3
	ori	$t5, $fp, 2112
	masknez	$t5, $t5, $t0
	ori	$t6, $fp, 2104
	maskeqz	$t0, $t6, $t0
	or	$t0, $t0, $t5
	maskeqz	$t0, $t0, $t1
	ori	$t5, $fp, 2096
	masknez	$t1, $t5, $t1
	or	$t0, $t0, $t1
	maskeqz	$t0, $t0, $t2
	masknez	$t1, $t5, $t2
	or	$t0, $t0, $t1
	maskeqz	$t0, $t0, $t3
	masknez	$t1, $t5, $t3
	or	$t0, $t0, $t1
	maskeqz	$t0, $t0, $t4
	masknez	$t1, $t5, $t4
	or	$t0, $t0, $t1
	addi.d	$t1, $s3, -2
	sltui	$t1, $t1, 1
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $t5, $t1
	or	$t0, $t0, $t1
	ldx.d	$a7, $a7, $t0
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a7, $a6
	addi.w	$a7, $a0, 4
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	addi.w	$s1, $a1, 4
	slli.d	$a5, $a5, 3
	ldx.d	$s0, $a6, $a5
	alsl.w	$s5, $t8, $t7, 2
	ori	$a1, $zero, 2
	alsl.w	$fp, $a2, $t7, 2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	beq	$s3, $a1, .LBB6_11
# %bb.7:                                # %lor.end
	ori	$a1, $zero, 1
	beq	$s3, $a1, .LBB6_10
# %bb.8:                                # %lor.end
	bnez	$s3, .LBB6_14
# %bb.9:                                # %sw.bb
	ld.w	$a0, $s4, 432
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $s0, 0
	slli.d	$a2, $s7, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	lu12i.w	$a2, 1
	ori	$a4, $a2, 2312
	ldx.w	$a4, $a0, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	pcalau12i	$a3, %pc_hi20(width_pad)
	st.w	$a4, $a3, %pc_lo12(width_pad)
	ori	$a2, $a2, 2316
	ldx.w	$a2, $a0, $a2
	pcalau12i	$a3, %pc_hi20(height_pad)
	ld.h	$a4, $a1, 2
	ld.h	$a5, $a1, 0
	ldptr.d	$a0, $a0, 6448
	st.w	$a2, $a3, %pc_lo12(height_pad)
	add.w	$a1, $fp, $a4
	add.w	$a2, $s5, $a5
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	ld.w	$a2, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$a3, %pc_hi20(LumaPrediction4x4.l0_pred)
	addi.d	$a3, $a3, %pc_lo12(LumaPrediction4x4.l0_pred)
	b	.LBB6_13
.LBB6_10:                               # %sw.bb55
	ld.w	$a0, $s4, 432
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s0, 8
	slli.d	$a2, $s6, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	lu12i.w	$a2, 1
	ori	$a3, $a2, 2312
	ldx.w	$a3, $a0, $a3
	slli.d	$a4, $a4, 3
	ldx.d	$a1, $a1, $a4
	pcalau12i	$a4, %pc_hi20(width_pad)
	st.w	$a3, $a4, %pc_lo12(width_pad)
	ori	$a2, $a2, 2316
	ldx.w	$a2, $a0, $a2
	pcalau12i	$a3, %pc_hi20(height_pad)
	ld.h	$a4, $a1, 2
	ld.h	$a5, $a1, 0
	ldptr.d	$a0, $a0, 6448
	st.w	$a2, $a3, %pc_lo12(height_pad)
	add.w	$a1, $fp, $a4
	add.w	$a2, $s5, $a5
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	ld.w	$a2, $a2, %pc_lo12(img_padded_size_x)
	b	.LBB6_12
.LBB6_11:                               # %sw.bb65
	ld.w	$a0, $s4, 432
	pcalau12i	$a1, %got_pc_hi20(listX)
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s6, $a1, %got_pc_lo12(listX)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s6, $a0
	ld.d	$a1, $s0, 0
	slli.d	$a2, $s7, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	lu12i.w	$a2, 1
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ori	$s8, $a2, 2312
	ldx.w	$a5, $a0, $s8
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(width_pad)
	st.w	$a5, $s2, %pc_lo12(width_pad)
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	ori	$s1, $a2, 2316
	ldx.w	$a2, $a0, $s1
	pcalau12i	$a6, %pc_hi20(height_pad)
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	ld.h	$a3, $a1, 2
	ld.h	$a5, $a1, 0
	ldptr.d	$a0, $a0, 6448
	st.w	$a2, $a6, %pc_lo12(height_pad)
	add.w	$a1, $fp, $a3
	add.w	$a2, $s5, $a5
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(img_padded_size_x)
	ld.w	$a2, $s7, %pc_lo12(img_padded_size_x)
	pcalau12i	$a3, %pc_hi20(LumaPrediction4x4.l0_pred)
	addi.d	$a3, $a3, %pc_lo12(LumaPrediction4x4.l0_pred)
	st.d	$a1, $a3, 0
	slli.d	$a1, $a2, 1
	ldx.d	$a4, $a0, $a1
	alsl.d	$a0, $a2, $a0, 1
	st.d	$a4, $a3, 8
	ldx.d	$a4, $a0, $a1
	alsl.d	$a0, $a2, $a0, 1
	st.d	$a4, $a3, 16
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $a3, 24
	ld.w	$a0, $s4, 432
	alsl.d	$a0, $a0, $s6, 3
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s0, 8
	slli.d	$a2, $s6, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	ldx.w	$a2, $a0, $s8
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	st.w	$a2, $s2, %pc_lo12(width_pad)
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a2, $a0, $s1
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.h	$a3, $a1, 2
	ld.h	$a4, $a1, 0
	ldptr.d	$a0, $a0, 6448
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a1, %pc_lo12(height_pad)
	add.w	$a1, $fp, $a3
	add.w	$a2, $s5, $a4
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.w	$a2, $s7, %pc_lo12(img_padded_size_x)
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
.LBB6_12:                               # %sw.epilog
	pcalau12i	$a3, %pc_hi20(LumaPrediction4x4.l1_pred)
	addi.d	$a3, $a3, %pc_lo12(LumaPrediction4x4.l1_pred)
.LBB6_13:                               # %sw.epilog
	st.d	$a1, $a3, 0
	slli.d	$a1, $a2, 1
	ldx.d	$a4, $a0, $a1
	alsl.d	$a0, $a2, $a0, 1
	st.d	$a4, $a3, 8
	ldx.d	$a4, $a0, $a1
	alsl.d	$a0, $a2, $a0, 1
	st.d	$a4, $a3, 16
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $a3, 24
.LBB6_14:                               # %sw.epilog
	ori	$a0, $zero, 2
	beqz	$s8, .LBB6_18
# %bb.15:                               # %if.then85
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	bne	$s3, $a0, .LBB6_21
# %bb.16:                               # %if.then88
	pcalau12i	$a0, %pc_hi20(wbp_weight)
	ld.d	$a0, $a0, %pc_lo12(wbp_weight)
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(wp_offset)
	ld.d	$a2, $a2, %pc_lo12(wp_offset)
	slli.d	$a3, $s7, 3
	ldx.d	$a1, $a1, $a3
	ld.d	$a0, $a0, 8
	ld.d	$a4, $a2, 0
	ld.d	$a2, $a2, 8
	slli.d	$a5, $s6, 3
	ldx.d	$a0, $a0, $a3
	ldx.d	$a3, $a4, $a3
	ldx.d	$a2, $a2, $a5
	ldx.d	$a1, $a1, $a5
	ldx.d	$a4, $a0, $a5
	ld.w	$a3, $a3, 0
	ld.w	$a2, $a2, 0
	ld.w	$a0, $a1, 0
	ld.w	$a1, $a4, 0
	add.d	$a2, $a3, $a2
	addi.w	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(wp_luma_round)
	ld.w	$a6, $a3, %pc_lo12(wp_luma_round)
	pcalau12i	$a3, %pc_hi20(luma_log_weight_denom)
	ld.w	$a4, $a3, %pc_lo12(luma_log_weight_denom)
	ld.d	$a7, $s2, 0
	srai.d	$a3, $a2, 1
	slli.d	$a5, $a6, 1
	addi.d	$a4, $a4, 1
	ldptr.w	$a2, $a7, 15520
	lu12i.w	$t0, 3
	ori	$t0, $t0, 336
	add.d	$t0, $a7, $t0
	pcalau12i	$a7, %pc_hi20(LumaPrediction4x4.l0_pred)
	addi.d	$t1, $a7, %pc_lo12(LumaPrediction4x4.l0_pred)
	ld.hu	$a7, $t1, 0
	pcalau12i	$t2, %pc_hi20(LumaPrediction4x4.l1_pred)
	addi.d	$t2, $t2, %pc_lo12(LumaPrediction4x4.l1_pred)
	ld.hu	$t4, $t2, 0
	slli.d	$t3, $fp, 5
	add.d	$t3, $t0, $t3
	mul.d	$a7, $a0, $a7
	mul.d	$t4, $a1, $t4
	alsl.d	$a6, $a6, $a7, 1
	add.d	$a6, $a6, $t4
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a3
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a2, $a7
	or	$a6, $a6, $a7
	slli.d	$a7, $t7, 1
	stx.h	$a6, $t3, $a7
	addi.d	$a7, $t7, 1
	slli.d	$a6, $a7, 1
	ld.d	$t8, $sp, 64                    # 8-byte Folded Reload
	bge	$a7, $t8, .LBB6_25
# %bb.17:                               # %for.body118.1
	ld.hu	$t4, $t1, 2
	ld.hu	$t5, $t2, 2
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	stx.h	$t4, $t3, $a6
	ld.hu	$t4, $t1, 4
	ld.hu	$t5, $t2, 4
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	alsl.d	$t3, $t7, $t3, 1
	st.h	$t4, $t3, 4
	ld.hu	$t4, $t1, 6
	ld.hu	$t5, $t2, 6
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	st.h	$t4, $t3, 6
	addi.d	$t3, $t2, 8
	addi.d	$t2, $t1, 8
	addi.d	$t1, $fp, 1
	blt	$t1, $s1, .LBB6_26
	b	.LBB6_57
.LBB6_18:                               # %if.else217
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	bne	$s3, $a0, .LBB6_23
# %bb.19:                               # %for.cond221.preheader
	ld.d	$a0, $s2, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 336
	pcalau12i	$a2, %pc_hi20(LumaPrediction4x4.l0_pred)
	addi.d	$a3, $a2, %pc_lo12(LumaPrediction4x4.l0_pred)
	ld.hu	$a6, $a3, 0
	pcalau12i	$a2, %pc_hi20(LumaPrediction4x4.l1_pred)
	addi.d	$a4, $a2, %pc_lo12(LumaPrediction4x4.l1_pred)
	ld.hu	$a7, $a4, 0
	add.d	$a2, $a0, $a1
	slli.d	$a0, $t3, 5
	add.d	$a5, $a2, $a0
	add.d	$a0, $a6, $a7
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$a1, $t1, 1
	stx.h	$a0, $a5, $a1
	addi.d	$a1, $t1, 1
	slli.d	$a0, $a1, 1
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	bge	$a1, $t2, .LBB6_28
# %bb.20:                               # %for.body228.1
	ld.hu	$a6, $a3, 2
	ld.hu	$a7, $a4, 2
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $a5, $a0
	ld.hu	$a6, $a3, 4
	ld.hu	$a7, $a4, 4
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	alsl.d	$a5, $t1, $a5, 1
	st.h	$a6, $a5, 4
	ld.hu	$a6, $a3, 6
	ld.hu	$a7, $a4, 6
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	st.h	$a6, $a5, 6
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a3, 8
	addi.d	$a3, $t3, 1
	blt	$a3, $s1, .LBB6_29
	b	.LBB6_57
.LBB6_21:                               # %if.else
	pcalau12i	$a0, %pc_hi20(wp_weight)
	ld.d	$a0, $a0, %pc_lo12(wp_weight)
	pcalau12i	$a1, %pc_hi20(wp_offset)
	beqz	$s3, .LBB6_31
# %bb.22:                               # %if.else176
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	slli.d	$a2, $s6, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	ld.d	$a5, $s2, 0
	ld.w	$a2, $a0, 0
	ld.w	$a1, $a1, 0
	ldptr.w	$a0, $a5, 15520
	pcalau12i	$a3, %pc_hi20(wp_luma_round)
	ld.w	$a3, $a3, %pc_lo12(wp_luma_round)
	pcalau12i	$a4, %pc_hi20(luma_log_weight_denom)
	ld.wu	$a4, $a4, %pc_lo12(luma_log_weight_denom)
	lu12i.w	$a6, 3
	ori	$a6, $a6, 336
	pcalau12i	$a7, %pc_hi20(LumaPrediction4x4.l1_pred)
	addi.d	$t0, $a7, %pc_lo12(LumaPrediction4x4.l1_pred)
	b	.LBB6_32
.LBB6_23:                               # %if.else248
	ld.d	$a0, $s2, 0
	slli.d	$a1, $t3, 5
	add.d	$a0, $a0, $a1
	alsl.d	$a0, $t1, $a0, 1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 336
	add.d	$a2, $a0, $a1
	addi.d	$a0, $t3, 1
	beqz	$s3, .LBB6_37
# %bb.24:                               # %for.cond265.preheader
	pcalau12i	$a1, %pc_hi20(LumaPrediction4x4.l1_pred)
	addi.d	$a1, $a1, %pc_lo12(LumaPrediction4x4.l1_pred)
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	blt	$a0, $s1, .LBB6_38
	b	.LBB6_57
.LBB6_25:
	addi.d	$t3, $t2, 2
	addi.d	$t2, $t1, 2
	addi.d	$t1, $fp, 1
	bge	$t1, $s1, .LBB6_57
.LBB6_26:                               # %for.cond115.preheader.1
	ld.hu	$t5, $t2, 0
	ld.hu	$t6, $t3, 0
	slli.d	$t1, $t1, 5
	add.d	$t4, $t0, $t1
	mul.d	$t1, $a0, $t5
	mul.d	$t5, $a1, $t6
	add.d	$t1, $t1, $a5
	add.d	$t1, $t1, $t5
	sra.w	$t1, $t1, $a4
	add.w	$t1, $t1, $a3
	srai.d	$t5, $t1, 63
	andn	$t1, $t1, $t5
	slt	$t5, $t1, $a2
	maskeqz	$t1, $t1, $t5
	masknez	$t5, $a2, $t5
	or	$t5, $t1, $t5
	slli.d	$t1, $t7, 1
	stx.h	$t5, $t4, $t1
	bge	$a7, $t8, .LBB6_39
# %bb.27:                               # %for.body118.1.1
	ld.hu	$t5, $t2, 2
	ld.hu	$t6, $t3, 2
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $a6
	ld.hu	$t5, $t2, 4
	ld.hu	$t6, $t3, 4
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	alsl.d	$t4, $t7, $t4, 1
	st.h	$t5, $t4, 4
	ld.hu	$t5, $t2, 6
	ld.hu	$t6, $t3, 6
	addi.d	$t2, $t2, 8
	mul.d	$t5, $a0, $t5
	addi.d	$t3, $t3, 8
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	st.h	$t5, $t4, 6
	b	.LBB6_40
.LBB6_28:
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a3, 2
	addi.d	$a3, $t3, 1
	bge	$a3, $s1, .LBB6_57
.LBB6_29:                               # %for.cond225.preheader.1
	ld.hu	$a7, $a5, 0
	ld.hu	$t0, $a4, 0
	slli.d	$a3, $a3, 5
	add.d	$a6, $a2, $a3
	add.d	$a3, $a7, $t0
	addi.d	$a3, $a3, 1
	srli.d	$a7, $a3, 1
	slli.d	$a3, $t1, 1
	stx.h	$a7, $a6, $a3
	bge	$a1, $t2, .LBB6_42
# %bb.30:                               # %for.body228.1.1
	ld.hu	$a7, $a5, 2
	ld.hu	$t0, $a4, 2
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a0
	ld.hu	$a7, $a5, 4
	ld.hu	$t0, $a4, 4
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	alsl.d	$a6, $t1, $a6, 1
	st.h	$a7, $a6, 4
	ld.hu	$a7, $a5, 6
	ld.hu	$t0, $a4, 6
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	st.h	$a7, $a6, 6
	b	.LBB6_43
.LBB6_31:                               # %if.then138
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s7, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	ld.d	$a5, $s2, 0
	ld.w	$a2, $a0, 0
	ld.w	$a1, $a1, 0
	ldptr.w	$a0, $a5, 15520
	pcalau12i	$a3, %pc_hi20(wp_luma_round)
	ld.w	$a3, $a3, %pc_lo12(wp_luma_round)
	pcalau12i	$a4, %pc_hi20(luma_log_weight_denom)
	ld.wu	$a4, $a4, %pc_lo12(luma_log_weight_denom)
	lu12i.w	$a6, 3
	ori	$a6, $a6, 336
	pcalau12i	$a7, %pc_hi20(LumaPrediction4x4.l0_pred)
	addi.d	$t0, $a7, %pc_lo12(LumaPrediction4x4.l0_pred)
.LBB6_32:                               # %if.else176
	ld.hu	$t2, $t0, 0
	add.d	$a7, $a5, $a6
	slli.d	$a5, $fp, 5
	add.d	$t1, $a7, $a5
	mul.d	$a5, $a2, $t2
	add.d	$a5, $a5, $a3
	sra.w	$a5, $a5, $a4
	add.w	$a5, $a5, $a1
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slt	$a6, $a5, $a0
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a0, $a6
	or	$a5, $a5, $a6
	slli.d	$a6, $t7, 1
	stx.h	$a5, $t1, $a6
	addi.d	$a6, $t7, 1
	slli.d	$a5, $a6, 1
	ld.d	$t5, $sp, 64                    # 8-byte Folded Reload
	bge	$a6, $t5, .LBB6_34
# %bb.33:                               # %for.body194.1
	ld.hu	$t2, $t0, 2
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a1
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	or	$t2, $t2, $t3
	stx.h	$t2, $t1, $a5
	ld.hu	$t2, $t0, 4
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a1
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	or	$t2, $t2, $t3
	alsl.d	$t1, $t7, $t1, 1
	st.h	$t2, $t1, 4
	ld.hu	$t2, $t0, 6
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a1
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	or	$t2, $t2, $t3
	st.h	$t2, $t1, 6
	addi.d	$t1, $t0, 8
	addi.d	$t0, $fp, 1
	blt	$t0, $s1, .LBB6_35
	b	.LBB6_57
.LBB6_34:
	addi.d	$t1, $t0, 2
	addi.d	$t0, $fp, 1
	bge	$t0, $s1, .LBB6_57
.LBB6_35:                               # %for.cond191.preheader.1
	ld.hu	$t3, $t1, 0
	slli.d	$t0, $t0, 5
	add.d	$t2, $a7, $t0
	mul.d	$t0, $a2, $t3
	add.d	$t0, $t0, $a3
	sra.w	$t0, $t0, $a4
	add.w	$t0, $t0, $a1
	srai.d	$t3, $t0, 63
	andn	$t0, $t0, $t3
	slt	$t3, $t0, $a0
	maskeqz	$t0, $t0, $t3
	masknez	$t3, $a0, $t3
	or	$t3, $t0, $t3
	slli.d	$t0, $t7, 1
	stx.h	$t3, $t2, $t0
	bge	$a6, $t5, .LBB6_45
# %bb.36:                               # %for.body194.1.1
	ld.hu	$t3, $t1, 2
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a5
	ld.hu	$t3, $t1, 4
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	alsl.d	$t2, $t7, $t2, 1
	st.h	$t3, $t2, 4
	ld.hu	$t3, $t1, 6
	addi.d	$t1, $t1, 8
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	st.h	$t3, $t2, 6
	b	.LBB6_46
.LBB6_37:                               # %for.cond252.preheader
	pcalau12i	$a1, %pc_hi20(LumaPrediction4x4.l0_pred)
	addi.d	$a1, $a1, %pc_lo12(LumaPrediction4x4.l0_pred)
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	bge	$a0, $s1, .LBB6_57
.LBB6_38:                               # %for.body268.1
	ld.d	$a2, $s2, 0
	ld.d	$a3, $a1, 8
	slli.d	$a0, $a0, 5
	add.d	$a0, $a2, $a0
	alsl.d	$a0, $t1, $a0, 1
	stptr.d	$a3, $a0, 12624
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a1, 16
	slli.d	$a3, $t3, 5
	add.d	$a0, $a3, $a0
	alsl.d	$a0, $t1, $a0, 1
	stptr.d	$a2, $a0, 12688
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a1, 24
	add.d	$a0, $a3, $a0
	alsl.d	$a0, $t1, $a0, 1
	stptr.d	$a1, $a0, 12720
	b	.LBB6_57
.LBB6_39:
	addi.d	$t2, $t2, 2
	addi.d	$t3, $t3, 2
.LBB6_40:                               # %for.inc133.1
	slli.d	$t4, $fp, 5
	ld.hu	$t5, $t2, 0
	ld.hu	$t6, $t3, 0
	add.d	$t0, $t4, $t0
	addi.d	$t4, $t0, 64
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $t1
	bge	$a7, $t8, .LBB6_48
# %bb.41:                               # %for.body118.1.2
	ld.hu	$t5, $t2, 2
	ld.hu	$t6, $t3, 2
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $a6
	ld.hu	$t5, $t2, 4
	ld.hu	$t6, $t3, 4
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	alsl.d	$t4, $t7, $t4, 1
	st.h	$t5, $t4, 4
	ld.hu	$t5, $t2, 6
	ld.hu	$t6, $t3, 6
	addi.d	$t2, $t2, 8
	mul.d	$t5, $a0, $t5
	addi.d	$t3, $t3, 8
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	st.h	$t5, $t4, 6
	b	.LBB6_49
.LBB6_42:
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 2
.LBB6_43:                               # %for.inc245.1
	ld.hu	$a7, $a5, 0
	ld.hu	$t0, $a4, 0
	slli.d	$a6, $t3, 5
	add.d	$a2, $a6, $a2
	addi.d	$a6, $a2, 64
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a3
	bge	$a1, $t2, .LBB6_51
# %bb.44:                               # %for.body228.1.2
	ld.hu	$a7, $a5, 2
	ld.hu	$t0, $a4, 2
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a0
	ld.hu	$a7, $a5, 4
	ld.hu	$t0, $a4, 4
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	alsl.d	$a6, $t1, $a6, 1
	st.h	$a7, $a6, 4
	ld.hu	$a7, $a5, 6
	ld.hu	$t0, $a4, 6
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	st.h	$a7, $a6, 6
	b	.LBB6_52
.LBB6_45:
	addi.d	$t1, $t1, 2
.LBB6_46:                               # %for.inc212.1
	ld.hu	$t3, $t1, 0
	slli.d	$t2, $fp, 5
	add.d	$a7, $t2, $a7
	addi.d	$t2, $a7, 64
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	bge	$a6, $t5, .LBB6_54
# %bb.47:                               # %for.body155.1.2
	ld.hu	$t3, $t1, 2
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a5
	ld.hu	$t3, $t1, 4
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	alsl.d	$t2, $t7, $t2, 1
	st.h	$t3, $t2, 4
	ld.hu	$t3, $t1, 6
	addi.d	$t1, $t1, 8
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	st.h	$t3, $t2, 6
	b	.LBB6_55
.LBB6_48:
	addi.d	$t2, $t2, 2
	addi.d	$t3, $t3, 2
.LBB6_49:                               # %for.inc133.2
	ld.hu	$t4, $t2, 0
	ld.hu	$t5, $t3, 0
	addi.d	$t0, $t0, 96
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	stx.h	$t4, $t0, $t1
	bge	$a7, $t8, .LBB6_57
# %bb.50:                               # %for.body118.1.3
	ld.hu	$a7, $t2, 2
	ld.hu	$t1, $t3, 2
	mul.d	$a7, $a0, $a7
	mul.d	$t1, $a1, $t1
	add.d	$a7, $a7, $a5
	add.d	$a7, $a7, $t1
	sra.w	$a7, $a7, $a4
	add.w	$a7, $a7, $a3
	srai.d	$t1, $a7, 63
	andn	$a7, $a7, $t1
	slt	$t1, $a7, $a2
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $a2, $t1
	or	$a7, $a7, $t1
	stx.h	$a7, $t0, $a6
	ld.hu	$a6, $t2, 4
	ld.hu	$a7, $t3, 4
	mul.d	$a6, $a0, $a6
	mul.d	$a7, $a1, $a7
	add.d	$a6, $a6, $a5
	add.d	$a6, $a6, $a7
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a3
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a2, $a7
	or	$a6, $a6, $a7
	alsl.d	$a7, $t7, $t0, 1
	st.h	$a6, $a7, 4
	ld.hu	$a6, $t2, 6
	ld.hu	$t0, $t3, 6
	mul.d	$a0, $a0, $a6
	mul.d	$a1, $a1, $t0
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.h	$a0, $a7, 6
	b	.LBB6_57
.LBB6_51:
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 2
.LBB6_52:                               # %for.inc245.2
	ld.hu	$a6, $a5, 0
	ld.hu	$a7, $a4, 0
	addi.d	$a2, $a2, 96
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $a2, $a3
	bge	$a1, $t2, .LBB6_57
# %bb.53:                               # %for.body228.1.3
	ld.hu	$a1, $a5, 2
	ld.hu	$a3, $a4, 2
	add.d	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	srli.d	$a1, $a1, 1
	stx.h	$a1, $a2, $a0
	ld.hu	$a0, $a5, 4
	ld.hu	$a1, $a4, 4
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	alsl.d	$a1, $t1, $a2, 1
	st.h	$a0, $a1, 4
	ld.hu	$a0, $a5, 6
	ld.hu	$a2, $a4, 6
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $a1, 6
	b	.LBB6_57
.LBB6_54:
	addi.d	$t1, $t1, 2
.LBB6_55:                               # %for.inc173.2
	ld.hu	$t2, $t1, 0
	addi.d	$a7, $a7, 96
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a1
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	or	$t2, $t2, $t3
	stx.h	$t2, $a7, $t0
	bge	$a6, $t5, .LBB6_57
# %bb.56:                               # %for.body155.1.3
	ld.hu	$a6, $t1, 2
	mul.d	$a6, $a2, $a6
	add.d	$a6, $a6, $a3
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a1
	srai.d	$t0, $a6, 63
	andn	$a6, $a6, $t0
	slt	$t0, $a6, $a0
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $a0, $t0
	or	$a6, $a6, $t0
	stx.h	$a6, $a7, $a5
	ld.hu	$a5, $t1, 4
	mul.d	$a5, $a2, $a5
	add.d	$a5, $a5, $a3
	sra.w	$a5, $a5, $a4
	add.w	$a5, $a5, $a1
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slt	$a6, $a5, $a0
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a0, $a6
	or	$a5, $a5, $a6
	alsl.d	$a6, $t7, $a7, 1
	st.h	$a5, $a6, 4
	ld.hu	$a5, $t1, 6
	mul.d	$a2, $a2, $a5
	add.d	$a2, $a2, $a3
	sra.w	$a2, $a2, $a4
	add.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	st.h	$a0, $a6, 6
.LBB6_57:                               # %if.end280
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
	.size	LumaPrediction4x4, .Lfunc_end6-LumaPrediction4x4
                                        # -- End function
	.globl	LumaPrediction4x4Bi             # -- Begin function LumaPrediction4x4Bi
	.p2align	5
	.type	LumaPrediction4x4Bi,@function
LumaPrediction4x4Bi:                    # @LumaPrediction4x4Bi
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
	pcalau12i	$a7, %got_pc_hi20(img)
	ld.d	$a7, $a7, %got_pc_lo12(img)
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a7, $a7, 0
	ld.w	$t0, $a7, 192
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	addi.w	$t3, $a0, 4
	addi.w	$a3, $a1, 4
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	add.d	$t0, $t0, $a0
	ori	$a3, $zero, 80
	ld.w	$t1, $a7, 196
	pcalau12i	$a5, %pc_hi20(active_pps)
	ld.d	$a5, $a5, %pc_lo12(active_pps)
	alsl.w	$t6, $t0, $a3, 2
	add.d	$t1, $t1, $a1
	ldptr.d	$t2, $a7, 14224
	ld.w	$t0, $a5, 192
	ld.w	$t4, $a7, 12
	alsl.w	$s8, $t1, $a3, 2
	srai.d	$a3, $a0, 2
	srai.d	$t5, $a1, 2
	beqz	$t0, .LBB7_3
# %bb.1:                                # %land.lhs.true
	ld.w	$t0, $a7, 20
	ori	$t8, $zero, 1
	beqz	$t0, .LBB7_6
# %bb.2:                                # %land.lhs.true
	ori	$t1, $zero, 3
	beq	$t0, $t1, .LBB7_6
.LBB7_3:                                # %lor.rhs
	ld.w	$a5, $a5, 196
	beqz	$a5, .LBB7_5
# %bb.4:                                # %land.rhs
	ld.w	$a5, $a7, 20
	addi.d	$a5, $a5, -1
	sltui	$t8, $a5, 1
	b	.LBB7_6
.LBB7_5:
	move	$t8, $zero
.LBB7_6:                                # %lor.end
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$t3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	sltui	$a5, $a6, 1
	lu12i.w	$a0, 3
	ori	$a6, $a0, 2104
	masknez	$a6, $a6, $a5
	ori	$t0, $a0, 2112
	maskeqz	$a5, $t0, $a5
	or	$a5, $a5, $a6
	ldx.d	$a5, $a7, $a5
	slli.d	$a0, $t5, 3
	ldx.d	$a6, $a5, $a0
	slli.d	$a3, $a3, 3
	ori	$a5, $zero, 536
	mul.d	$a1, $t4, $a5
	add.d	$fp, $t2, $a1
	ld.w	$a0, $fp, 432
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$s2, $a1, %got_pc_lo12(listX)
	ldx.d	$s1, $a6, $a3
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s2, $a0
	ld.d	$a1, $s1, 0
	slli.d	$a3, $a4, 3
	ldx.d	$a0, $a0, $a3
	ldx.d	$a1, $a1, $a3
	lu12i.w	$a3, 1
	ori	$s3, $a3, 2312
	ldx.w	$a5, $a0, $s3
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	pcalau12i	$s0, %pc_hi20(width_pad)
	st.w	$a5, $s0, %pc_lo12(width_pad)
	ori	$s4, $a3, 2316
	ldx.w	$a2, $a0, $s4
	pcalau12i	$s7, %pc_hi20(height_pad)
	ld.h	$a3, $a1, 2
	ld.h	$a5, $a1, 0
	ldptr.d	$a0, $a0, 6448
	st.w	$a2, $s7, %pc_lo12(height_pad)
	add.w	$a1, $s8, $a3
	add.w	$a2, $t6, $a5
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	st.d	$t6, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$s5, %pc_hi20(img_padded_size_x)
	ld.w	$a2, $s5, %pc_lo12(img_padded_size_x)
	pcalau12i	$a3, %pc_hi20(LumaPrediction4x4Bi.l0_pred)
	addi.d	$s6, $a3, %pc_lo12(LumaPrediction4x4Bi.l0_pred)
	st.d	$a1, $s6, 0
	slli.d	$a1, $a2, 1
	ldx.d	$a3, $a0, $a1
	alsl.d	$a0, $a2, $a0, 1
	st.d	$a3, $s6, 8
	ldx.d	$a3, $a0, $a1
	alsl.d	$a0, $a2, $a0, 1
	st.d	$a3, $s6, 16
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $s6, 24
	ld.w	$a0, $fp, 432
	alsl.d	$a0, $a0, $s2, 3
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s1, 8
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a2, $fp, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	ldx.w	$a2, $a0, $s3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	st.w	$a2, $s0, %pc_lo12(width_pad)
	ldx.w	$a2, $a0, $s4
	ld.h	$a3, $a1, 2
	ld.h	$a4, $a1, 0
	ldptr.d	$a0, $a0, 6448
	st.w	$a2, $s7, %pc_lo12(height_pad)
	add.w	$a1, $s8, $a3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a4
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a6, $a0, 0
	ld.w	$a1, $s5, %pc_lo12(img_padded_size_x)
	pcalau12i	$a2, %pc_hi20(LumaPrediction4x4Bi.l1_pred)
	addi.d	$t1, $a2, %pc_lo12(LumaPrediction4x4Bi.l1_pred)
	st.d	$a6, $t1, 0
	slli.d	$a2, $a1, 1
	ldx.d	$a3, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a3, $t1, 8
	ldx.d	$a3, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a3, $t1, 16
	ldx.d	$a0, $a0, $a2
	st.d	$a0, $t1, 24
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB7_9
# %bb.7:                                # %if.then
	pcalau12i	$a0, %pc_hi20(wbp_weight)
	ld.d	$a0, $a0, %pc_lo12(wbp_weight)
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(wp_offset)
	ld.d	$a2, $a2, %pc_lo12(wp_offset)
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.d	$a0, $a0, 8
	ld.d	$a4, $a2, 0
	ld.d	$a2, $a2, 8
	slli.d	$a5, $fp, 3
	ldx.d	$a0, $a0, $a3
	ldx.d	$a3, $a4, $a3
	ldx.d	$a2, $a2, $a5
	ldx.d	$a1, $a1, $a5
	ldx.d	$a4, $a0, $a5
	ld.w	$a3, $a3, 0
	ld.w	$a2, $a2, 0
	ld.w	$a0, $a1, 0
	ld.w	$a1, $a4, 0
	add.d	$a2, $a3, $a2
	addi.w	$a2, $a2, 1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a7, $a3, 0
	pcalau12i	$a3, %pc_hi20(wp_luma_round)
	ld.w	$t3, $a3, %pc_lo12(wp_luma_round)
	pcalau12i	$a3, %pc_hi20(luma_log_weight_denom)
	ld.w	$a5, $a3, %pc_lo12(luma_log_weight_denom)
	srai.d	$a3, $a2, 1
	ldptr.w	$a2, $a7, 15520
	slli.d	$a4, $t3, 1
	addi.d	$a5, $a5, 1
	lu12i.w	$t0, 3
	ori	$t0, $t0, 336
	ld.hu	$t4, $s6, 0
	add.d	$t0, $a7, $t0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a7, $fp, 5
	add.d	$t2, $t0, $a7
	mul.d	$a7, $a0, $t4
	bstrpick.d	$a6, $a6, 15, 0
	mul.d	$a6, $a1, $a6
	add.d	$a6, $a6, $a7
	alsl.w	$a6, $t3, $a6, 1
	sra.w	$a6, $a6, $a5
	add.w	$a6, $a6, $a3
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a2, $a7
	or	$a6, $a6, $a7
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a7, $t7, 1
	stx.h	$a6, $t2, $a7
	addi.d	$a7, $t7, 1
	slli.d	$a6, $a7, 1
	ld.d	$t8, $sp, 72                    # 8-byte Folded Reload
	bge	$a7, $t8, .LBB7_11
# %bb.8:                                # %for.body66.1
	ld.hu	$t3, $s6, 2
	ld.hu	$t4, $t1, 2
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t4, $t3
	add.d	$t3, $t3, $a4
	sra.w	$t3, $t3, $a5
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a6
	ld.hu	$t3, $s6, 4
	ld.hu	$t4, $t1, 4
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t4, $t3
	add.d	$t3, $t3, $a4
	sra.w	$t3, $t3, $a5
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	alsl.d	$t2, $t7, $t2, 1
	st.h	$t3, $t2, 4
	ld.hu	$t3, $s6, 6
	ld.hu	$t4, $t1, 6
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t4, $t3
	add.d	$t3, $t3, $a4
	sra.w	$t3, $t3, $a5
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	st.h	$t3, $t2, 6
	addi.d	$t3, $t1, 8
	addi.d	$t2, $s6, 8
	addi.d	$t1, $fp, 1
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	blt	$t1, $t4, .LBB7_12
	b	.LBB7_29
.LBB7_9:                                # %for.cond84.preheader
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 336
	add.d	$a2, $a0, $a1
	ld.hu	$a0, $s6, 0
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a1, $t4, 5
	add.d	$a3, $a2, $a1
	bstrpick.d	$a1, $a6, 15, 0
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a1, $t2, 1
	stx.h	$a0, $a3, $a1
	addi.d	$a1, $t2, 1
	slli.d	$a0, $a1, 1
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	bge	$a1, $t3, .LBB7_14
# %bb.10:                               # %for.body91.1
	ld.hu	$a4, $s6, 2
	ld.hu	$a5, $t1, 2
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	srli.d	$a4, $a4, 1
	stx.h	$a4, $a3, $a0
	ld.hu	$a4, $s6, 4
	ld.hu	$a5, $t1, 4
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	srli.d	$a4, $a4, 1
	alsl.d	$a3, $t2, $a3, 1
	st.h	$a4, $a3, 4
	ld.hu	$a4, $s6, 6
	ld.hu	$a5, $t1, 6
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	srli.d	$a4, $a4, 1
	st.h	$a4, $a3, 6
	addi.d	$a4, $t1, 8
	addi.d	$a5, $s6, 8
	addi.d	$a3, $t4, 1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	blt	$a3, $a6, .LBB7_15
	b	.LBB7_29
.LBB7_11:
	addi.d	$t3, $t1, 2
	addi.d	$t2, $s6, 2
	addi.d	$t1, $fp, 1
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	bge	$t1, $t4, .LBB7_29
.LBB7_12:                               # %for.cond64.preheader.1
	ld.hu	$t5, $t2, 0
	ld.hu	$t6, $t3, 0
	slli.d	$t1, $t1, 5
	add.d	$t4, $t0, $t1
	mul.d	$t1, $a0, $t5
	mul.d	$t5, $a1, $t6
	add.d	$t1, $t5, $t1
	add.d	$t1, $t1, $a4
	sra.w	$t1, $t1, $a5
	add.w	$t1, $t1, $a3
	srai.d	$t5, $t1, 63
	andn	$t1, $t1, $t5
	slt	$t5, $t1, $a2
	maskeqz	$t1, $t1, $t5
	masknez	$t5, $a2, $t5
	or	$t5, $t1, $t5
	slli.d	$t1, $t7, 1
	stx.h	$t5, $t4, $t1
	bge	$a7, $t8, .LBB7_17
# %bb.13:                               # %for.body66.1.1
	ld.hu	$t5, $t2, 2
	ld.hu	$t6, $t3, 2
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $a6
	ld.hu	$t5, $t2, 4
	ld.hu	$t6, $t3, 4
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	alsl.d	$t4, $t7, $t4, 1
	st.h	$t5, $t4, 4
	ld.hu	$t5, $t2, 6
	ld.hu	$t6, $t3, 6
	addi.d	$t2, $t2, 8
	mul.d	$t5, $a0, $t5
	addi.d	$t3, $t3, 8
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	st.h	$t5, $t4, 6
	b	.LBB7_18
.LBB7_14:
	addi.d	$a4, $t1, 2
	addi.d	$a5, $s6, 2
	addi.d	$a3, $t4, 1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	bge	$a3, $a6, .LBB7_29
.LBB7_15:                               # %for.cond88.preheader.1
	ld.hu	$a7, $a5, 0
	ld.hu	$t0, $a4, 0
	slli.d	$a3, $a3, 5
	add.d	$a6, $a2, $a3
	add.d	$a3, $a7, $t0
	addi.d	$a3, $a3, 1
	srli.d	$a7, $a3, 1
	slli.d	$a3, $t2, 1
	stx.h	$a7, $a6, $a3
	bge	$a1, $t3, .LBB7_20
# %bb.16:                               # %for.body91.1.1
	ld.hu	$a7, $a5, 2
	ld.hu	$t0, $a4, 2
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a0
	ld.hu	$a7, $a5, 4
	ld.hu	$t0, $a4, 4
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	alsl.d	$a6, $t2, $a6, 1
	st.h	$a7, $a6, 4
	ld.hu	$a7, $a5, 6
	ld.hu	$t0, $a4, 6
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	st.h	$a7, $a6, 6
	b	.LBB7_21
.LBB7_17:
	addi.d	$t2, $t2, 2
	addi.d	$t3, $t3, 2
.LBB7_18:                               # %for.inc81.1
	slli.d	$t4, $fp, 5
	ld.hu	$t5, $t2, 0
	ld.hu	$t6, $t3, 0
	add.d	$t0, $t4, $t0
	addi.d	$t4, $t0, 64
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $t1
	bge	$a7, $t8, .LBB7_23
# %bb.19:                               # %for.body66.1.2
	ld.hu	$t5, $t2, 2
	ld.hu	$t6, $t3, 2
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $a6
	ld.hu	$t5, $t2, 4
	ld.hu	$t6, $t3, 4
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	alsl.d	$t4, $t7, $t4, 1
	st.h	$t5, $t4, 4
	ld.hu	$t5, $t2, 6
	ld.hu	$t6, $t3, 6
	addi.d	$t2, $t2, 8
	mul.d	$t5, $a0, $t5
	addi.d	$t3, $t3, 8
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	st.h	$t5, $t4, 6
	b	.LBB7_24
.LBB7_20:
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 2
.LBB7_21:                               # %for.inc108.1
	ld.hu	$a7, $a5, 0
	ld.hu	$t0, $a4, 0
	slli.d	$a6, $t4, 5
	add.d	$a2, $a6, $a2
	addi.d	$a6, $a2, 64
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a3
	bge	$a1, $t3, .LBB7_26
# %bb.22:                               # %for.body91.1.2
	ld.hu	$a7, $a5, 2
	ld.hu	$t0, $a4, 2
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a0
	ld.hu	$a7, $a5, 4
	ld.hu	$t0, $a4, 4
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	alsl.d	$a6, $t2, $a6, 1
	st.h	$a7, $a6, 4
	ld.hu	$a7, $a5, 6
	ld.hu	$t0, $a4, 6
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	st.h	$a7, $a6, 6
	b	.LBB7_27
.LBB7_23:
	addi.d	$t2, $t2, 2
	addi.d	$t3, $t3, 2
.LBB7_24:                               # %for.inc81.2
	ld.hu	$t4, $t2, 0
	ld.hu	$t5, $t3, 0
	addi.d	$t0, $t0, 96
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a4
	sra.w	$t4, $t4, $a5
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	stx.h	$t4, $t0, $t1
	bge	$a7, $t8, .LBB7_29
# %bb.25:                               # %for.body66.1.3
	ld.hu	$a7, $t2, 2
	ld.hu	$t1, $t3, 2
	mul.d	$a7, $a0, $a7
	mul.d	$t1, $a1, $t1
	add.d	$a7, $t1, $a7
	add.d	$a7, $a7, $a4
	sra.w	$a7, $a7, $a5
	add.w	$a7, $a7, $a3
	srai.d	$t1, $a7, 63
	andn	$a7, $a7, $t1
	slt	$t1, $a7, $a2
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $a2, $t1
	or	$a7, $a7, $t1
	stx.h	$a7, $t0, $a6
	ld.hu	$a6, $t2, 4
	ld.hu	$a7, $t3, 4
	mul.d	$a6, $a0, $a6
	mul.d	$a7, $a1, $a7
	add.d	$a6, $a7, $a6
	add.d	$a6, $a6, $a4
	sra.w	$a6, $a6, $a5
	add.w	$a6, $a6, $a3
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a2, $a7
	or	$a6, $a6, $a7
	alsl.d	$a7, $t7, $t0, 1
	st.h	$a6, $a7, 4
	ld.hu	$a6, $t2, 6
	ld.hu	$t0, $t3, 6
	mul.d	$a0, $a0, $a6
	mul.d	$a1, $a1, $t0
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a4
	sra.w	$a0, $a0, $a5
	add.w	$a0, $a0, $a3
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.h	$a0, $a7, 6
	b	.LBB7_29
.LBB7_26:
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 2
.LBB7_27:                               # %for.inc108.2
	ld.hu	$a6, $a5, 0
	ld.hu	$a7, $a4, 0
	addi.d	$a2, $a2, 96
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $a2, $a3
	bge	$a1, $t3, .LBB7_29
# %bb.28:                               # %for.body91.1.3
	ld.hu	$a1, $a5, 2
	ld.hu	$a3, $a4, 2
	add.d	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	srli.d	$a1, $a1, 1
	stx.h	$a1, $a2, $a0
	ld.hu	$a0, $a5, 4
	ld.hu	$a1, $a4, 4
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	alsl.d	$a1, $t2, $a2, 1
	st.h	$a0, $a1, 4
	ld.hu	$a0, $a5, 6
	ld.hu	$a2, $a4, 6
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $a1, 6
.LBB7_29:                               # %if.end
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
.Lfunc_end7:
	.size	LumaPrediction4x4Bi, .Lfunc_end7-LumaPrediction4x4Bi
                                        # -- End function
	.globl	LumaResidualCoding8x8           # -- Begin function LumaResidualCoding8x8
	.p2align	5
	.type	LumaResidualCoding8x8,@function
LumaResidualCoding8x8:                  # @LumaResidualCoding8x8
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
	move	$s0, $a7
	move	$s8, $a5
	move	$t1, $a2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	st.w	$zero, $sp, 212
	slli.d	$a5, $a2, 2
	bstrpick.d	$a1, $a5, 31, 3
	ld.d	$a0, $s2, 0
	slli.w	$t0, $a1, 3
	or	$a2, $s8, $a4
	ori	$a1, $zero, 1
	bnez	$a2, .LBB8_2
# %bb.1:                                # %land.rhs
	ld.w	$a2, $a0, 20
	addi.d	$a2, $a2, -1
	sltu	$a2, $zero, $a2
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
.LBB8_2:                                # %land.end
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	andi	$a3, $t1, 1
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	sll.w	$a1, $a1, $t1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $a2, 0
	ld.w	$a2, $a0, 12
	ldptr.d	$a0, $a0, 14224
	ori	$a3, $zero, 536
	ldptr.w	$a1, $a1, 5772
	mul.d	$a2, $a2, $a3
	add.d	$a0, $a0, $a2
	ld.w	$a4, $a0, 472
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(OneComponentChromaPrediction4x4_retrieve)
	addi.d	$a2, $a2, %pc_lo12(OneComponentChromaPrediction4x4_retrieve)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(OneComponentChromaPrediction4x4_regenerate)
	addi.d	$a3, $a3, %pc_lo12(OneComponentChromaPrediction4x4_regenerate)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(OneComponentChromaPrediction4x4)
	st.d	$a1, $a2, %pc_lo12(OneComponentChromaPrediction4x4)
	slli.d	$a1, $t1, 3
	andi	$a0, $a1, 8
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ori	$a1, $a5, 4
	addi.w	$a1, $a1, 0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 4
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a1, $t0, 5
	lu12i.w	$a2, 3
	pcalau12i	$a6, %pc_hi20(imgY_org)
	vrepli.b	$vr2, 0
	pcalau12i	$a3, %pc_hi20(si_frame_indicator)
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(sp2_frame_indicator)
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	vst	$vr2, $sp, 192                  # 16-byte Folded Spill
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	beqz	$a4, .LBB8_19
# %bb.3:                                # %for.body88.preheader
	move	$a3, $a1
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	bstrins.d	$a3, $t1, 4, 4
	ori	$a1, $a2, 440
	add.d	$s3, $a3, $a1
	ori	$s4, $a2, 1056
	move	$s1, $t0
	move	$a3, $t0
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB8_4:                                # %for.body88
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $s2, 0
	ld.w	$a2, $a1, 196
	ld.w	$a1, $a1, 192
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	add.d	$s5, $a3, $a2
	add.d	$s0, $a0, $a1
	move	$a1, $s1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	move	$a3, $s8
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	move	$a4, $s6
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	move	$a5, $s7
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	move	$a6, $fp
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(imgY_org)
	slli.d	$a1, $s5, 3
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $s2, 0
	alsl.d	$a0, $s5, $a0, 3
	slli.d	$a3, $s0, 1
	ldx.d	$a1, $a1, $a3
	add.d	$a4, $a2, $s3
	ld.d	$a5, $a0, 8
	ld.d	$a6, $a4, -104
	vinsgr2vr.d	$vr0, $a1, 0
	vld	$vr1, $sp, 192                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr1, $vr0
	ldx.d	$a1, $a5, $a3
	vinsgr2vr.d	$vr1, $a6, 0
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a1, $a4, -72
	ld.d	$a5, $a0, 16
	add.d	$a2, $a2, $s4
	vst	$vr0, $a2, -208
	vinsgr2vr.d	$vr0, $a1, 0
	ldx.d	$a1, $a5, $a3
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	vilvl.h	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vsub.w	$vr0, $vr1, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a1, $a4, -40
	vst	$vr0, $a2, -144
	ld.d	$a0, $a0, 24
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr0, $vr1
	vinsgr2vr.d	$vr1, $a1, 0
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	vilvl.h	$vr1, $vr2, $vr1
	ldx.d	$a0, $a0, $a3
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a4, -8
	vst	$vr0, $a2, -80
	vinsgr2vr.d	$vr0, $a0, 0
	vld	$vr1, $sp, 192                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr1, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a0, $s2, 0
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a2, -16
	ld.w	$a1, $a0, 192
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$s0, $a0, $a1
	move	$a1, $s1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $s6
	move	$a5, $s7
	move	$a6, $fp
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(imgY_org)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a0
	ld.d	$a7, $s2, 0
	alsl.d	$a1, $s5, $a1, 3
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a3, $s0, 1
	ldx.d	$a2, $a2, $a3
	add.d	$a4, $a7, $s3
	add.d	$a5, $a7, $s4
	ld.d	$a6, $a4, -96
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a6, 0
	vilvl.h	$vr1, $vr2, $vr1
	ldx.d	$a2, $a2, $a3
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a6, $a4, -64
	vst	$vr0, $a5, -192
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 16
	vinsgr2vr.d	$vr1, $a6, 0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.h	$vr1, $vr2, $vr1
	ldx.d	$a2, $a2, $a3
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a5, -128
	ld.d	$a4, $a4, -32
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a1, $a1, 24
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	vilvl.h	$vr1, $vr2, $vr1
	ldx.d	$a1, $a1, $a3
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a2, $a7, $s3
	vst	$vr0, $a5, -64
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $a7, $s4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a3, $a1, 4
	addi.w	$s1, $s1, 4
	addi.d	$s3, $s3, 128
	addi.d	$s4, $s4, 256
	blt	$a1, $s5, .LBB8_4
# %bb.5:                                # %for.end145
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ldptr.w	$a1, $a0, 15256
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	andi	$a1, $a1, 1
	bnez	$a1, .LBB8_9
# %bb.6:                                # %if.then151
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB8_9
# %bb.7:                                # %if.then155
	addi.d	$a1, $sp, 212
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(dct_luma8x8)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_9
# %bb.8:                                # %if.then159
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a4, 0
	ori	$a2, $zero, 51
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a3, $a5, 0
	sll.w	$a0, $a2, $a0
	or	$a0, $a1, $a0
	st.d	$a0, $a4, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a3, $a0
	st.w	$a0, $a5, 0
.LBB8_9:                                # %if.end169
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $s2, 0
	ldptr.w	$a0, $a1, 15256
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	or	$a0, $a0, $a2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB8_40
# %bb.10:                               # %if.end169
	ld.w	$a0, $sp, 212
	ori	$a2, $zero, 4
	blt	$a2, $a0, .LBB8_40
# %bb.11:                               # %land.lhs.true178
	ld.w	$a0, $a1, 44
	beqz	$a0, .LBB8_39
.LBB8_12:                               # %land.lhs.true186
	ld.w	$a0, $a1, 20
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB8_15
# %bb.13:                               # %land.lhs.true190
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(si_frame_indicator)
	ori	$a0, $zero, 1
	beq	$a2, $a0, .LBB8_40
# %bb.14:                               # %land.lhs.true190
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(sp2_frame_indicator)
	beq	$a2, $a0, .LBB8_40
.LBB8_15:                               # %if.then196
	ori	$a0, $zero, 63
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a3, 0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a4
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	slli.d	$fp, $a4, 3
	st.w	$zero, $sp, 212
	and	$a0, $a2, $a0
	st.w	$a0, $a3, 0
	slli.d	$a2, $a4, 1
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a2, $a3, $a2
	ori	$a3, $zero, 51
	sll.w	$a2, $a3, $a2
	ld.d	$a3, $a0, 0
	nor	$a2, $a2, $zero
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $a6, 0
	addi.w	$a2, $a2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a1, 180
	and	$a2, $a4, $a2
	st.d	$a2, $a6, 0
	addi.w	$a4, $s0, 8
	alsl.d	$a2, $a5, $a3, 3
	slli.d	$a3, $s0, 3
	ldx.d	$a3, $a2, $a3
	ld.w	$a2, $a1, 176
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	add.d	$a1, $a1, $a5
	alsl.d	$a5, $fp, $a1, 1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 336
	vldx	$vr0, $a5, $a1
	add.w	$a2, $a2, $fp
	slli.d	$a5, $a2, 1
	addi.d	$a2, $s0, 1
	vstx	$vr0, $a3, $a5
	bge	$a2, $a4, .LBB8_17
# %bb.16:                               # %for.body210.1
	ld.d	$a3, $a0, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a2, $a3, 3
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $a4, 176
	slli.d	$a2, $a2, 5
	add.d	$a2, $a4, $a2
	alsl.d	$a2, $fp, $a2, 1
	vldx	$vr0, $a2, $a1
	add.w	$a2, $a5, $fp
	slli.d	$a2, $a2, 1
	vstx	$vr0, $a3, $a2
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a2, $a2, 6440
	ld.w	$a4, $a3, 180
	addi.d	$a5, $s0, 2
	alsl.d	$a2, $a5, $a2, 3
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $a3, 176
	slli.d	$a5, $a5, 5
	add.d	$a3, $a3, $a5
	alsl.d	$a3, $fp, $a3, 1
	vldx	$vr0, $a3, $a1
	add.w	$a3, $a4, $fp
	slli.d	$a3, $a3, 1
	vstx	$vr0, $a2, $a3
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a2, $a2, 6440
	ld.w	$a4, $a3, 180
	addi.d	$a5, $s0, 3
	alsl.d	$a2, $a5, $a2, 3
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $a3, 176
	slli.d	$a5, $a5, 5
	add.d	$a3, $a3, $a5
	alsl.d	$a3, $fp, $a3, 1
	vldx	$vr0, $a3, $a1
	add.w	$a3, $a4, $fp
	slli.d	$a3, $a3, 1
	vstx	$vr0, $a2, $a3
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a2, $a2, 6440
	ld.w	$a4, $a3, 180
	addi.d	$a5, $s0, 4
	alsl.d	$a2, $a5, $a2, 3
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $a3, 176
	slli.d	$a5, $a5, 5
	add.d	$a3, $a3, $a5
	alsl.d	$a3, $fp, $a3, 1
	vldx	$vr0, $a3, $a1
	add.w	$a3, $a4, $fp
	slli.d	$a3, $a3, 1
	vstx	$vr0, $a2, $a3
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a2, $a2, 6440
	ld.w	$a4, $a3, 180
	addi.d	$a5, $s0, 5
	alsl.d	$a2, $a5, $a2, 3
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $a3, 176
	slli.d	$a5, $a5, 5
	add.d	$a3, $a3, $a5
	alsl.d	$a3, $fp, $a3, 1
	vldx	$vr0, $a3, $a1
	add.w	$a3, $a4, $fp
	slli.d	$a3, $a3, 1
	vstx	$vr0, $a2, $a3
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a2, $a2, 6440
	ld.w	$a4, $a3, 180
	addi.d	$a5, $s0, 6
	alsl.d	$a2, $a5, $a2, 3
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $a3, 176
	slli.d	$a5, $a5, 5
	add.d	$a3, $a3, $a5
	alsl.d	$a3, $fp, $a3, 1
	vldx	$vr0, $a3, $a1
	add.w	$a3, $a4, $fp
	slli.d	$a3, $a3, 1
	vstx	$vr0, $a2, $a3
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a3, $a2, 180
	addi.d	$a4, $s0, 7
	alsl.d	$a0, $a4, $a0, 3
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $a2, 176
	slli.d	$a4, $a4, 5
	add.d	$a2, $a2, $a4
	alsl.d	$a2, $fp, $a2, 1
	vldx	$vr0, $a2, $a1
	add.w	$a1, $a3, $fp
	slli.d	$a1, $a1, 1
	vstx	$vr0, $a0, $a1
.LBB8_17:                               # %for.end225
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB8_40
# %bb.18:                               # %for.inc243.1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$fp, $fp, 4
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	b	.LBB8_40
.LBB8_19:                               # %for.body.preheader
	srli.d	$a3, $a0, 2
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	addi.d	$s3, $t0, -4
	move	$a3, $a1
	bstrins.d	$a3, $t1, 4, 4
	ori	$a1, $a2, 440
	add.d	$s4, $a3, $a1
	ori	$a1, $a2, 848
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ori	$a1, $a2, 912
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ori	$a1, $a2, 976
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ori	$a1, $a2, 1040
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	move	$s1, $t0
	b	.LBB8_22
	.p2align	4, , 16
.LBB8_20:                               # %lor.lhs.false.1
                                        #   in Loop: Header=BB8_22 Depth=1
	move	$a6, $fp
	ld.w	$a0, $a1, 44
	beqz	$a0, .LBB8_35
.LBB8_21:                               # %for.inc75.1
                                        #   in Loop: Header=BB8_22 Depth=1
	addi.d	$s3, $s3, 4
	addi.w	$s1, $s1, 4
	addi.d	$s4, $s4, 128
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bge	$s3, $s5, .LBB8_9
.LBB8_22:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s2, 0
	ld.w	$a1, $a2, 196
	ld.w	$a2, $a2, 192
	add.d	$a1, $s3, $a1
	addi.d	$s7, $a1, 4
	add.d	$s6, $a0, $a2
	move	$a1, $s1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	move	$a4, $s8
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	move	$s5, $a6
	move	$a6, $s0
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	move	$fp, $s5
	ld.d	$a1, $s5, %pc_lo12(imgY_org)
	slli.d	$s5, $s7, 3
	ldx.d	$a2, $a1, $s5
	ld.d	$a0, $s2, 0
	slli.d	$a3, $s6, 1
	ldx.d	$a2, $a2, $a3
	alsl.d	$a1, $s7, $a1, 3
	add.d	$a4, $a0, $s4
	ld.d	$a5, $a4, -104
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr2, $vr1
	ldx.d	$a2, $a2, $a3
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a5, $a4, -72
	ld.d	$a6, $a1, 16
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	vstx	$vr0, $a0, $a2
	vinsgr2vr.d	$vr0, $a5, 0
	ldx.d	$a2, $a6, $a3
	vilvl.h	$vr1, $vr2, $vr1
	vilvl.h	$vr0, $vr2, $vr0
	vsub.w	$vr0, $vr1, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a2, $a4, -40
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	vstx	$vr0, $a0, $a5
	ld.d	$a1, $a1, 24
	vilvl.h	$vr0, $vr2, $vr1
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ldx.d	$a1, $a1, $a3
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a4, -8
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	vstx	$vr0, $a0, $a3
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a1, $s2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	vstx	$vr0, $a0, $a2
	ldptr.w	$a0, $a1, 15256
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	or	$a0, $a0, $a2
	andi	$a0, $a0, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a2, $a2, $s3
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	beqz	$a0, .LBB8_25
# %bb.23:                               # %lor.lhs.false
                                        #   in Loop: Header=BB8_22 Depth=1
	ld.w	$a0, $a1, 44
	bnez	$a0, .LBB8_30
# %bb.24:                               # %land.lhs.true51
                                        #   in Loop: Header=BB8_22 Depth=1
	ldptr.w	$a0, $a1, 15540
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB8_30
	.p2align	4, , 16
.LBB8_25:                               # %if.then54
                                        #   in Loop: Header=BB8_22 Depth=1
	ld.w	$a0, $a1, 20
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB8_28
# %bb.26:                               # %if.else59
                                        #   in Loop: Header=BB8_22 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(si_frame_indicator)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(sp2_frame_indicator)
	or	$a1, $a0, $a1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 212
	beqz	$a1, .LBB8_36
# %bb.27:                               # %if.else65
                                        #   in Loop: Header=BB8_22 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dct_luma_sp2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_29
	b	.LBB8_30
	.p2align	4, , 16
.LBB8_28:                               # %if.then58
                                        #   in Loop: Header=BB8_22 Depth=1
	addi.d	$a2, $sp, 212
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(dct_luma)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_30
.LBB8_29:                               # %if.then70
                                        #   in Loop: Header=BB8_22 Depth=1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a4, 0
	ori	$a5, $zero, 1
	sll.d	$a1, $a5, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $a3, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a2, $a0
	st.w	$a0, $a4, 0
.LBB8_30:                               # %for.inc75
                                        #   in Loop: Header=BB8_22 Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 192
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$s6, $a0, $a1
	move	$a1, $s1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	move	$a4, $s8
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	move	$a6, $s0
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(imgY_org)
	ldx.d	$a2, $a1, $s5
	ld.d	$a0, $s2, 0
	slli.d	$a3, $s6, 1
	ldx.d	$a2, $a2, $a3
	alsl.d	$a1, $s7, $a1, 3
	add.d	$a4, $a0, $s4
	ld.d	$a5, $a4, -96
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr2, $vr1
	ldx.d	$a2, $a2, $a3
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a5, $a4, -64
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	vstx	$vr0, $a0, $a7
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 16
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.h	$vr1, $vr2, $vr1
	ldx.d	$a2, $a2, $a3
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	vstx	$vr0, $a0, $a5
	ld.d	$a4, $a4, -32
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a1, $a1, 24
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	vilvl.h	$vr1, $vr2, $vr1
	ldx.d	$a1, $a1, $a3
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a2, $a0, $s4
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	vstx	$vr0, $a0, $a3
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a1, $s2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	vstx	$vr0, $a0, $a2
	ldptr.w	$a0, $a1, 15256
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	or	$a0, $a0, $a2
	andi	$a0, $a0, 1
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	bnez	$a0, .LBB8_20
.LBB8_31:                               # %if.then54.1
                                        #   in Loop: Header=BB8_22 Depth=1
	ld.w	$a0, $a1, 20
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB8_34
# %bb.32:                               # %if.else59.1
                                        #   in Loop: Header=BB8_22 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(si_frame_indicator)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(sp2_frame_indicator)
	or	$a1, $a0, $a1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 212
	beqz	$a1, .LBB8_37
# %bb.33:                               # %if.else65.1
                                        #   in Loop: Header=BB8_22 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dct_luma_sp2)
	jirl	$ra, $ra, 0
	move	$a6, $fp
	bnez	$a0, .LBB8_38
	b	.LBB8_21
	.p2align	4, , 16
.LBB8_34:                               # %if.then58.1
                                        #   in Loop: Header=BB8_22 Depth=1
	addi.d	$a2, $sp, 212
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(dct_luma)
	jirl	$ra, $ra, 0
	move	$a6, $fp
	bnez	$a0, .LBB8_38
	b	.LBB8_21
.LBB8_35:                               # %land.lhs.true51.1
                                        #   in Loop: Header=BB8_22 Depth=1
	ldptr.w	$a0, $a1, 15540
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB8_21
	b	.LBB8_31
.LBB8_36:                               # %if.then63
                                        #   in Loop: Header=BB8_22 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dct_luma_sp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_29
	b	.LBB8_30
.LBB8_37:                               # %if.then63.1
                                        #   in Loop: Header=BB8_22 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dct_luma_sp)
	jirl	$ra, $ra, 0
	move	$a6, $fp
	beqz	$a0, .LBB8_21
.LBB8_38:                               # %if.then70.1
                                        #   in Loop: Header=BB8_22 Depth=1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 5
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a4, 0
	ori	$a5, $zero, 1
	sll.d	$a1, $a5, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $a3, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a2, $a0
	st.w	$a0, $a4, 0
	b	.LBB8_21
.LBB8_39:                               # %lor.lhs.false182
	ldptr.w	$a0, $a1, 15540
	beqz	$a0, .LBB8_12
.LBB8_40:                               # %if.end247
	ld.w	$a0, $sp, 212
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
.Lfunc_end8:
	.size	LumaResidualCoding8x8, .Lfunc_end8-LumaResidualCoding8x8
                                        # -- End function
	.p2align	5                               # -- Begin function OneComponentChromaPrediction4x4_retrieve
	.type	OneComponentChromaPrediction4x4_retrieve,@function
OneComponentChromaPrediction4x4_retrieve: # @OneComponentChromaPrediction4x4_retrieve
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
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	st.d	$t0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$t0, $t0, 0
	ld.w	$t1, $t0, 12
	ldptr.d	$t2, $t0, 14224
	move	$s1, $a3
	move	$s3, $a2
	move	$fp, $a0
	ori	$a0, $zero, 536
	mul.d	$a0, $t1, $a0
	add.d	$a0, $t2, $a0
	ld.w	$a0, $a0, 432
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a2, $a2, %got_pc_lo12(listX)
	pcalau12i	$a3, %pc_hi20(chroma_shift_x)
	add.w	$a0, $a0, $a4
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.w	$a3, $a3, %pc_lo12(chroma_shift_x)
	pcalau12i	$t1, %pc_hi20(chroma_shift_y)
	slli.d	$a2, $a5, 3
	move	$s8, $a2
	ldx.d	$a2, $a0, $a2
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a0, $t1, %pc_lo12(chroma_shift_y)
	pcalau12i	$a5, %pc_hi20(active_sps)
	ld.d	$a5, $a5, %pc_lo12(active_sps)
	ldptr.d	$t2, $a2, 6464
	ld.w	$t1, $t0, 200
	slli.d	$a7, $a7, 3
	ld.w	$t3, $a5, 32
	ldx.d	$s0, $t2, $a7
	ori	$t7, $zero, 80
	ori	$a7, $zero, 1
	lu12i.w	$a5, 1
	bne	$t3, $a7, .LBB9_2
# %bb.1:                                # %cond.true
	ori	$a7, $a5, 2328
	ldx.w	$a7, $a2, $a7
	addi.d	$t7, $a7, 80
.LBB9_2:                                # %for.end
	st.d	$t7, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a7, $a1, 2
	add.d	$t2, $t1, $a7
	sll.w	$t2, $t2, $a3
	add.d	$t1, $t1, $a1
	ori	$t3, $a5, 2320
	ldx.w	$t3, $a2, $t3
	ori	$t4, $zero, 4
	sub.d	$t8, $t4, $a0
	st.d	$t8, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$t5, %pc_hi20(width_pad_cr)
	st.w	$t3, $t5, %pc_lo12(width_pad_cr)
	sra.w	$t3, $s3, $t8
	slli.d	$s2, $t3, 3
	ldx.d	$t3, $s1, $s2
	sub.d	$t4, $t4, $a3
	sra.w	$a1, $a1, $t4
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ldx.d	$a1, $t3, $a1
	sll.w	$a3, $t1, $a3
	sra.w	$a7, $a7, $t4
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	slli.d	$s5, $a4, 3
	ldx.d	$a1, $a1, $s5
	addi.d	$s4, $t2, 80
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a7, $a3, 80
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	ori	$a3, $a5, 2324
	ldx.d	$a1, $a1, $s8
	ldx.w	$a2, $a2, $a3
	ld.w	$a3, $t0, 204
	slli.d	$s6, $a6, 3
	ldx.d	$a1, $a1, $s6
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(height_pad_cr)
	st.w	$a2, $a4, %pc_lo12(height_pad_cr)
	add.d	$a2, $a3, $s3
	ld.h	$a3, $a1, 0
	ld.h	$a1, $a1, 2
	sll.w	$a0, $a2, $a0
	add.d	$s7, $a0, $t7
	add.w	$a2, $a7, $a3
	add.w	$a1, $s7, $a1
	move	$a0, $s0
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s1, $s2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ldx.d	$a1, $a1, $a2
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	ldx.d	$a1, $a1, $s5
	ld.h	$a2, $a0, 0
	ldx.d	$a1, $a1, $s8
	st.h	$a2, $fp, 0
	ld.h	$a0, $a0, 2
	ldx.d	$a1, $a1, $s6
	st.h	$a0, $fp, 2
	ld.h	$a0, $a1, 0
	ld.h	$a1, $a1, 2
	add.w	$a2, $s4, $a0
	add.w	$a1, $s7, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s3, 1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	sra.w	$a2, $a1, $s2
	slli.d	$s3, $a2, 3
	ldx.d	$a2, $s1, $s3
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $s6
	ld.h	$a3, $a0, 0
	ldx.d	$a2, $a2, $s5
	st.h	$a3, $fp, 4
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ldx.d	$a2, $a2, $s8
	ld.h	$a0, $a0, 2
	ld.w	$a3, $a3, 204
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $s5
	st.h	$a0, $fp, 6
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, %pc_lo12(chroma_shift_y)
	add.d	$a1, $a3, $a1
	ld.h	$a3, $a2, 0
	ld.h	$a4, $a2, 2
	sll.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$s7, $a0, $a1
	move	$s4, $s0
	move	$s0, $s8
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	add.w	$a2, $s8, $a3
	add.w	$a1, $s7, $a4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s1, $s3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s3
	ld.h	$a2, $a0, 0
	ldx.d	$a1, $a1, $s0
	st.h	$a2, $fp, 8
	ld.h	$a0, $a0, 2
	ldx.d	$a1, $a1, $s5
	st.h	$a0, $fp, 10
	ld.h	$a0, $a1, 0
	ld.h	$a1, $a1, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a0
	add.w	$a1, $s7, $a1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 2
	sra.w	$a2, $a1, $s2
	slli.d	$s5, $a2, 3
	ldx.d	$a2, $s1, $s5
	ldx.d	$a2, $a2, $s6
	ld.h	$a3, $a0, 0
	ldx.d	$a2, $a2, $s3
	st.h	$a3, $fp, 12
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ldx.d	$a2, $a2, $s0
	move	$s2, $s0
	ld.h	$a0, $a0, 2
	ld.w	$a3, $a3, 204
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $s0
	st.h	$a0, $fp, 14
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, %pc_lo12(chroma_shift_y)
	add.d	$a1, $a3, $a1
	ld.h	$a3, $a2, 0
	ld.h	$a4, $a2, 2
	sll.w	$a0, $a1, $a0
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	add.d	$s7, $a0, $s6
	add.w	$a2, $s8, $a3
	add.w	$a1, $s7, $a4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s1, $s5
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s8
	ldx.d	$a1, $a1, $s3
	ld.h	$a2, $a0, 0
	ldx.d	$a1, $a1, $s2
	st.h	$a2, $fp, 16
	ld.h	$a0, $a0, 2
	ldx.d	$a1, $a1, $s0
	st.h	$a0, $fp, 18
	ld.h	$a0, $a1, 0
	ld.h	$a1, $a1, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a0
	add.w	$a1, $s7, $a1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	sra.w	$a2, $a1, $a2
	slli.d	$s5, $a2, 3
	ldx.d	$a2, $s1, $s5
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a3
	ld.h	$a3, $a0, 0
	ldx.d	$a2, $a2, $s3
	st.h	$a3, $fp, 20
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ldx.d	$a2, $a2, $s2
	ld.h	$a0, $a0, 2
	ld.w	$a3, $a3, 204
	ldx.d	$a2, $a2, $s0
	st.h	$a0, $fp, 22
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, %pc_lo12(chroma_shift_y)
	add.d	$a1, $a3, $a1
	ld.h	$a3, $a2, 0
	ld.h	$a4, $a2, 2
	sll.w	$a0, $a1, $a0
	add.d	$s6, $a0, $s6
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.w	$a2, $a0, $a3
	add.w	$a1, $s6, $a4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s1, $s5
	ldx.d	$a1, $a1, $s8
	ldx.d	$a1, $a1, $s3
	ld.h	$a2, $a0, 0
	ldx.d	$a1, $a1, $s2
	st.h	$a2, $fp, 24
	ld.h	$a0, $a0, 2
	ldx.d	$a1, $a1, $s0
	st.h	$a0, $fp, 26
	ld.h	$a0, $a1, 0
	ld.h	$a1, $a1, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a0
	add.w	$a1, $s6, $a1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ld.h	$a1, $a0, 0
	st.h	$a1, $fp, 28
	ld.h	$a0, $a0, 2
	st.h	$a0, $fp, 30
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
.Lfunc_end9:
	.size	OneComponentChromaPrediction4x4_retrieve, .Lfunc_end9-OneComponentChromaPrediction4x4_retrieve
                                        # -- End function
	.p2align	5                               # -- Begin function OneComponentChromaPrediction4x4_regenerate
	.type	OneComponentChromaPrediction4x4_regenerate,@function
OneComponentChromaPrediction4x4_regenerate: # @OneComponentChromaPrediction4x4_regenerate
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
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	ld.d	$fp, $t0, 0
	ldptr.w	$s0, $fp, 15544
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	move	$s7, $a0
	ldptr.w	$a0, $fp, 15548
	ori	$a3, $zero, 64
	div.w	$t0, $a3, $s0
	addi.d	$t1, $t0, -1
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	div.w	$t2, $a3, $a0
	ld.w	$a3, $fp, 12
	ldptr.d	$t4, $fp, 14224
	addi.d	$t3, $t2, -1
	ori	$t5, $zero, 536
	mul.d	$a3, $a3, $t5
	add.d	$a3, $t4, $a3
	ld.w	$a3, $a3, 432
	mul.w	$t1, $t2, $t0
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	srai.d	$t1, $t1, 1
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	ld.w	$t6, $fp, 80
	sltu	$t7, $zero, $a3
	pcalau12i	$t8, %got_pc_hi20(listX)
	ld.d	$t8, $t8, %got_pc_lo12(listX)
	sra.w	$t6, $t6, $t7
	add.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $t8, $a3
	ld.w	$t8, $fp, 64
	addi.w	$t6, $t6, -1
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	addi.w	$t8, $t8, -1
	srai.d	$a0, $a0, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	srai.d	$s0, $s0, 2
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ldptr.d	$a0, $a3, 6472
	slli.d	$a3, $a7, 3
	pcalau12i	$a7, %pc_hi20(active_sps)
	ld.d	$s1, $a7, %pc_lo12(active_sps)
	ldx.d	$a7, $a0, $a3
	ld.w	$a0, $fp, 204
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 200
	ld.w	$s2, $s1, 32
	addi.w	$s3, $a1, 3
	addi.w	$a3, $a2, 3
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	mul.d	$s5, $t0, $a0
	addi.d	$a0, $a0, 1
	mul.d	$a0, $t0, $a0
	addi.d	$s6, $a0, -1
	slli.d	$a4, $a4, 3
	slli.d	$a6, $a6, 3
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2328
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB10_2
	.p2align	4, , 16
.LBB10_1:                               # %for.inc96
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a1, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB10_6
.LBB10_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_4 Depth 2
	move	$a1, $a2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	div.w	$a0, $a2, $a0
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	mul.d	$a3, $a0, $t2
	move	$a0, $s7
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_3:                               # %if.end
                                        #   in Loop: Header=BB10_4 Depth=2
	ld.h	$s4, $s4, 0
	add.d	$ra, $s5, $fp
	add.w	$ra, $ra, $s4
	div.w	$t7, $ra, $t0
	srai.d	$s7, $t7, 63
	andn	$t7, $t7, $s7
	slt	$s7, $t7, $t8
	maskeqz	$t7, $t7, $s7
	masknez	$s7, $t8, $s7
	or	$t7, $t7, $s7
	div.w	$s7, $a1, $t2
	srai.d	$s8, $s7, 63
	andn	$s7, $s7, $s8
	slt	$s8, $s7, $t6
	maskeqz	$s7, $s7, $s8
	masknez	$s8, $t6, $s8
	or	$s7, $s7, $s8
	add.d	$s8, $s6, $fp
	add.w	$s4, $s8, $s4
	div.w	$s4, $s4, $t0
	srai.d	$s8, $s4, 63
	andn	$s4, $s4, $s8
	slt	$s8, $s4, $t8
	maskeqz	$s4, $s4, $s8
	masknez	$s8, $t8, $s8
	or	$s4, $s4, $s8
	add.w	$s8, $a1, $t3
	div.w	$s8, $s8, $t2
	srai.d	$t1, $s8, 63
	andn	$t1, $s8, $t1
	slt	$s8, $t1, $t6
	maskeqz	$t1, $t1, $s8
	masknez	$s8, $t6, $s8
	or	$t1, $t1, $s8
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	and	$s8, $ra, $t4
	sub.d	$ra, $t0, $s8
	and	$a1, $a1, $t3
	sub.d	$t4, $t2, $a1
	slli.d	$s7, $s7, 3
	ldx.d	$s7, $a7, $s7
	slli.d	$t7, $t7, 1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a7, $t1
	ldx.hu	$t5, $s7, $t7
	slli.d	$s4, $s4, 1
	ldx.hu	$s7, $s7, $s4
	ldx.hu	$t7, $t1, $t7
	ldx.hu	$t1, $t1, $s4
	mul.d	$t5, $ra, $t5
	mul.d	$s4, $s8, $s7
	mul.d	$t7, $ra, $t7
	mul.d	$t1, $s8, $t1
	add.d	$t1, $t1, $t7
	mul.d	$a1, $t1, $a1
	add.d	$t1, $s4, $t5
	mul.d	$t1, $t1, $t4
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	add.d	$t1, $t1, $t4
	add.w	$a1, $t1, $a1
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	div.w	$t1, $a1, $t1
	addi.d	$s7, $a0, 2
	st.h	$t1, $a0, 0
	addi.w	$s4, $s1, 1
	add.d	$fp, $fp, $t0
	move	$a0, $s7
	bge	$s1, $s3, .LBB10_1
.LBB10_4:                               # %for.body26
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s1, $s4
	div.w	$a1, $s4, $s0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldx.d	$a1, $a1, $a4
	ldx.d	$a1, $a1, $a5
	ldx.d	$s4, $a1, $a6
	ld.h	$a1, $s4, 2
	add.w	$a1, $a3, $a1
	ori	$t1, $zero, 1
	bne	$s2, $t1, .LBB10_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB10_4 Depth=2
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$ra, $t1, $t4
	add.w	$a1, $ra, $a1
	b	.LBB10_3
.LBB10_6:                               # %for.end98
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
.Lfunc_end10:
	.size	OneComponentChromaPrediction4x4_regenerate, .Lfunc_end10-OneComponentChromaPrediction4x4_regenerate
                                        # -- End function
	.globl	SetModesAndRefframe             # -- Begin function SetModesAndRefframe
	.p2align	5
	.type	SetModesAndRefframe,@function
SetModesAndRefframe:                    # @SetModesAndRefframe
# %bb.0:                                # %entry
	pcalau12i	$a6, %got_pc_hi20(img)
	ld.d	$a6, $a6, %got_pc_lo12(img)
	ld.d	$a7, $a6, 0
	ld.w	$a6, $a7, 12
	ldptr.d	$t0, $a7, 14224
	ori	$t1, $zero, 536
	mul.d	$a6, $a6, $t1
	add.d	$a6, $t0, $a6
	slli.d	$t4, $a0, 1
	alsl.d	$a6, $a0, $a6, 2
	move	$t0, $a0
	bstrins.d	$t0, $zero, 0, 0
	lu12i.w	$a0, 15
	addi.w	$t2, $zero, -1
	ori	$t1, $a0, 4095
	move	$a0, $t2
	lu32i.d	$a0, 0
	st.w	$a0, $a3, 0
	st.w	$a0, $a2, 0
	ld.w	$t3, $a6, 392
	st.h	$t1, $a5, 0
	ld.w	$t5, $a7, 20
	st.h	$t1, $a4, 0
	st.h	$t3, $a1, 0
	ori	$a1, $zero, 1
	andi	$a0, $t4, 2
	bne	$t5, $a1, .LBB11_5
# %bb.1:                                # %if.else
	beq	$t3, $a1, .LBB11_6
# %bb.2:                                # %if.else
	beqz	$t3, .LBB11_5
# %bb.3:                                # %if.else
	bne	$t3, $t2, .LBB11_7
# %bb.4:                                # %if.then19
	st.h	$t1, $a4, 0
	st.h	$t1, $a5, 0
	st.w	$zero, $a2, 0
	st.w	$zero, $a3, 0
	ret
.LBB11_5:                               # %if.then
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ldptr.d	$a1, $a1, 6488
	ld.w	$t1, $a7, 172
	ld.d	$a1, $a1, 0
	add.w	$t0, $t1, $t0
	slli.d	$t0, $t0, 3
	ld.w	$a7, $a7, 168
	ldx.d	$a1, $a1, $t0
	add.w	$a0, $a7, $a0
	ldx.b	$a1, $a1, $a0
	ld.w	$a6, $a6, 376
	st.h	$a1, $a4, 0
	st.h	$zero, $a5, 0
	st.w	$a6, $a2, 0
	st.w	$zero, $a3, 0
	ret
.LBB11_6:                               # %if.then47
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ldptr.d	$a1, $a1, 6488
	ld.w	$t1, $a7, 172
	ld.d	$a1, $a1, 8
	add.w	$t0, $t1, $t0
	slli.d	$t0, $t0, 3
	ld.w	$a7, $a7, 168
	ldx.d	$a1, $a1, $t0
	st.h	$zero, $a4, 0
	add.w	$a0, $a7, $a0
	ldx.b	$a1, $a1, $a0
	st.w	$zero, $a2, 0
	ld.w	$a0, $a6, 376
	st.h	$a1, $a5, 0
	st.w	$a0, $a3, 0
	ret
.LBB11_7:                               # %if.else62
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ldptr.d	$a1, $a1, 6488
	ld.w	$t1, $a7, 172
	ld.d	$t2, $a1, 0
	add.w	$t0, $t1, $t0
	slli.d	$t0, $t0, 3
	ld.w	$a7, $a7, 168
	ldx.d	$t1, $t2, $t0
	ld.d	$a1, $a1, 8
	add.w	$a0, $a7, $a0
	ldx.b	$a7, $t1, $a0
	ldx.d	$a1, $a1, $t0
	st.h	$a7, $a4, 0
	ldx.b	$a1, $a1, $a0
	ld.w	$a0, $a6, 376
	st.h	$a1, $a5, 0
	st.w	$a0, $a2, 0
	st.w	$a0, $a3, 0
	ret
.Lfunc_end11:
	.size	SetModesAndRefframe, .Lfunc_end11-SetModesAndRefframe
                                        # -- End function
	.globl	LumaResidualCoding              # -- Begin function LumaResidualCoding
	.p2align	5
	.type	LumaResidualCoding,@function
LumaResidualCoding:                     # @LumaResidualCoding
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a0, $a0, 14224
	ori	$a2, $zero, 536
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	addi.d	$s0, $a0, 364
	st.w	$zero, $a0, 364
	addi.d	$fp, $a0, 368
	st.d	$zero, $a0, 368
	addi.d	$a1, $sp, 14
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	addi.d	$a5, $sp, 10
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SetModesAndRefframe)
	jirl	$ra, $ra, 0
	ld.h	$a3, $sp, 14
	ld.w	$a4, $sp, 20
	ld.w	$a5, $sp, 16
	ld.h	$a6, $sp, 12
	ld.h	$a7, $sp, 10
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(LumaResidualCoding8x8)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 14
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	addi.d	$a5, $sp, 10
	pcaddu18i	$ra, %call36(SetModesAndRefframe)
	jirl	$ra, $ra, 0
	ld.h	$a3, $sp, 14
	ld.w	$a4, $sp, 20
	ld.w	$a5, $sp, 16
	ld.h	$a6, $sp, 12
	ld.h	$a7, $sp, 10
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(LumaResidualCoding8x8)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 14
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	addi.d	$a5, $sp, 10
	pcaddu18i	$ra, %call36(SetModesAndRefframe)
	jirl	$ra, $ra, 0
	ld.h	$a3, $sp, 14
	ld.w	$a4, $sp, 20
	ld.w	$a5, $sp, 16
	ld.h	$a6, $sp, 12
	ld.h	$a7, $sp, 10
	ori	$a2, $zero, 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(LumaResidualCoding8x8)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a0, $zero, 3
	addi.d	$a1, $sp, 14
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	addi.d	$a5, $sp, 10
	pcaddu18i	$ra, %call36(SetModesAndRefframe)
	jirl	$ra, $ra, 0
	ld.h	$a3, $sp, 14
	ld.w	$a4, $sp, 20
	ld.w	$a5, $sp, 16
	ld.h	$a6, $sp, 12
	ld.h	$a7, $sp, 10
	ori	$a2, $zero, 3
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(LumaResidualCoding8x8)
	jirl	$ra, $ra, 0
	add.w	$a0, $a0, $s1
	ori	$a1, $zero, 5
	blt	$a1, $a0, .LBB12_8
# %bb.1:                                # %land.lhs.true
	ld.d	$a3, $s2, 0
	ld.w	$a0, $a3, 44
	beqz	$a0, .LBB12_7
.LBB12_2:                               # %land.lhs.true6
	ld.w	$a1, $a3, 20
	ori	$a0, $zero, 3
	bne	$a1, $a0, .LBB12_5
# %bb.3:                                # %land.lhs.true8
	pcalau12i	$a1, %pc_hi20(si_frame_indicator)
	ld.w	$a2, $a1, %pc_lo12(si_frame_indicator)
	ori	$a1, $zero, 1
	beq	$a2, $a1, .LBB12_8
# %bb.4:                                # %land.lhs.true8
	pcalau12i	$a2, %pc_hi20(sp2_frame_indicator)
	ld.w	$a2, $a2, %pc_lo12(sp2_frame_indicator)
	beq	$a2, $a1, .LBB12_8
.LBB12_5:                               # %if.then
	ld.wu	$a2, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	bstrpick.d	$a2, $a2, 23, 4
	slli.d	$a2, $a2, 4
	ld.d	$a4, $a1, 0
	ld.bu	$a5, $fp, 2
	st.w	$a2, $s0, 0
	ld.w	$a2, $a3, 180
	ldptr.d	$a4, $a4, 6440
	slli.d	$a5, $a5, 16
	st.d	$a5, $fp, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a4, $a2
	ld.w	$a5, $a3, 176
	lu12i.w	$a2, 3
	ori	$a6, $a2, 336
	xvldx	$xr0, $a3, $a6
	slli.d	$a3, $a5, 1
	xvstx	$xr0, $a4, $a3
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 8
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 368
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 16
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 400
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 24
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 432
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 32
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 464
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 40
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 496
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 48
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 528
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 56
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 560
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 64
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 592
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 72
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 624
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 80
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 656
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 88
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 688
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 96
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 720
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 104
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 752
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 112
	ld.w	$a5, $a4, 176
	ori	$a6, $a2, 784
	xvldx	$xr0, $a4, $a6
	slli.d	$a4, $a5, 1
	xvstx	$xr0, $a3, $a4
	ld.d	$a1, $a1, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a1, $a1, 6440
	ld.w	$a4, $a3, 180
	alsl.d	$a1, $a4, $a1, 3
	ld.d	$a1, $a1, 120
	ld.w	$a4, $a3, 176
	ori	$a2, $a2, 816
	xvldx	$xr0, $a3, $a2
	slli.d	$a2, $a4, 1
	xvstx	$xr0, $a1, $a2
	ld.d	$a1, $s2, 0
	ld.w	$a1, $a1, 20
	bne	$a1, $a0, .LBB12_8
# %bb.6:                                # %for.body33.preheader
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$a0, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 12
	move	$a1, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 12
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	move	$a0, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 12
	move	$a0, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 12
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 12
	ori	$a1, $zero, 12
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(copyblock_sp)
	jr	$t8
.LBB12_7:                               # %lor.lhs.false
	ldptr.w	$a0, $a3, 15540
	beqz	$a0, .LBB12_2
.LBB12_8:                               # %if.end54
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end12:
	.size	LumaResidualCoding, .Lfunc_end12-LumaResidualCoding
                                        # -- End function
	.globl	TransformDecision               # -- Begin function TransformDecision
	.p2align	5
	.type	TransformDecision,@function
TransformDecision:                      # @TransformDecision
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
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a2, $a2, 1
	srli.d	$a3, $a2, 32
	masknez	$s4, $a0, $a3
	masknez	$a0, $a2, $a3
	ori	$a2, $zero, 4
	maskeqz	$a2, $a2, $a3
	or	$a0, $a2, $a0
	addi.w	$a0, $a0, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bge	$s4, $a0, .LBB13_5
# %bb.1:                                # %for.body.preheader
	move	$s8, $zero
	move	$a4, $zero
	slli.d	$s5, $s4, 3
	slli.d	$s1, $s4, 2
	lu12i.w	$a0, 3
	ori	$a0, $a0, 440
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s7, $a0, %got_pc_lo12(img)
	pcalau12i	$s6, %pc_hi20(imgY_org)
	pcalau12i	$a0, %pc_hi20(diff64)
	addi.d	$fp, $a0, %pc_lo12(diff64)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB13_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	bstrins.d	$s1, $zero, 2, 0
	addi.w	$s3, $s1, 0
	slli.d	$a0, $s3, 5
	bstrpick.d	$a1, $s5, 62, 3
	bstrins.d	$a0, $a1, 4, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	andi	$a0, $s5, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 206
	addi.d	$a2, $sp, 212
	addi.d	$a3, $sp, 208
	addi.d	$a4, $sp, 204
	addi.d	$a5, $sp, 202
	move	$a0, $s4
	pcaddu18i	$ra, %call36(SetModesAndRefframe)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	slli.w	$a0, $s4, 2
	ld.h	$a1, $sp, 206
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.w	$a1, $sp, 212
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.w	$a1, $sp, 208
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.h	$a1, $sp, 204
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.h	$a1, $sp, 202
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $a0, 4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	srli.d	$a0, $s5, 3
	ori	$a1, $zero, 4
	bstrins.d	$a1, $a0, 3, 3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB13_3:                               # %for.body6
                                        #   Parent Loop BB13_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	ld.w	$a1, $a0, 196
	ld.w	$a2, $a0, 192
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	add.d	$s5, $s3, $a1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$s3, $a0, $a2
	addi.w	$a1, $s1, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(imgY_org)
	ld.d	$a1, $s7, 0
	alsl.d	$a3, $s5, $a0, 3
	slli.d	$a2, $s5, 3
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ldx.d	$a0, $a0, $a2
	slli.d	$a4, $s0, 32
	slli.d	$a2, $s3, 1
	add.d	$a1, $a1, $s2
	ldx.d	$a5, $a0, $a2
	alsl.d	$a0, $s0, $fp, 2
	ld.d	$a6, $a1, -104
	slli.d	$a7, $s0, 2
	vinsgr2vr.d	$vr0, $a5, 0
	vld	$vr2, $sp, 128                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a6, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a5, $a3, 8
	vstx	$vr0, $fp, $a7
	ori	$s6, $zero, 0
	lu32i.d	$s6, 4
	ldx.d	$a5, $a5, $a2
	add.d	$a6, $a4, $s6
	srai.d	$a6, $a6, 30
	ld.d	$a7, $a1, -72
	vinsgr2vr.d	$vr0, $a5, 0
	vilvl.h	$vr0, $vr2, $vr0
	ld.d	$a5, $a3, 16
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a5, $a5, $a2
	vstx	$vr0, $fp, $a6
	ori	$s3, $zero, 0
	lu32i.d	$s3, 8
	vinsgr2vr.d	$vr0, $a5, 0
	ld.d	$a5, $a1, -40
	add.d	$a6, $a4, $s3
	srai.d	$a6, $a6, 30
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $fp, $a6
	ld.d	$a3, $a3, 24
	ori	$s0, $zero, 0
	lu32i.d	$s0, 12
	add.d	$a4, $a4, $s0
	ldx.d	$a2, $a3, $a2
	srai.d	$a3, $a4, 32
	ld.d	$a1, $a1, -8
	srai.d	$a4, $a4, 30
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $fp, $a4
	addi.w	$s4, $a3, 4
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	ld.w	$a1, $a1, 192
	add.d	$a0, $a0, $s8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$s8, $a0, $a1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(imgY_org)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a3, $a0, $a1
	ld.d	$a1, $s7, 0
	slli.d	$a2, $s8, 1
	ldx.d	$a3, $a3, $a2
	alsl.d	$a4, $s5, $a0, 3
	slli.d	$a5, $s4, 32
	add.d	$a6, $a1, $s2
	vinsgr2vr.d	$vr0, $a3, 0
	ld.d	$a3, $a6, -96
	alsl.d	$a0, $s4, $fp, 2
	slli.d	$a7, $s4, 2
	vld	$vr2, $sp, 128                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a3, 0
	ld.d	$a3, $a4, 8
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $fp, $a7
	ldx.d	$a3, $a3, $a2
	add.d	$a7, $a5, $s6
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t0, $a6, -64
	srai.d	$a7, $a7, 30
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $t0, 0
	ld.d	$a3, $a4, 16
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $fp, $a7
	ldx.d	$a3, $a3, $a2
	add.d	$a7, $a5, $s3
	ld.d	$a6, $a6, -32
	srai.d	$a7, $a7, 30
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a6, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a3, $a4, 24
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $fp, $a7
	add.d	$a4, $a5, $s0
	ldx.d	$a2, $a3, $a2
	srai.d	$a3, $a4, 32
	ldx.d	$a1, $a1, $s2
	srai.d	$a4, $a4, 30
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $fp, $a4
	addi.w	$s0, $a3, 4
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.w	$s8, $a0, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s3, $a1, 4
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 128
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB13_3
# %bb.4:                                # %for.end47
                                        #   in Loop: Header=BB13_2 Depth=1
	pcalau12i	$a0, %pc_hi20(diff64)
	addi.d	$a0, $a0, %pc_lo12(diff64)
	pcaddu18i	$ra, %call36(distortion8x8)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	add.w	$a4, $a0, $a4
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	addi.w	$s4, $s4, 1
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	addi.w	$s5, $s5, 8
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	addi.w	$s1, $s1, 4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bne	$s4, $a0, .LBB13_2
	b	.LBB13_6
.LBB13_5:
	move	$a4, $zero
	move	$s8, $zero
.LBB13_6:                               # %for.end52
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 5100
	ori	$a2, $zero, 2
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB13_9
# %bb.7:                                # %for.end52
	blt	$a4, $s8, .LBB13_9
# %bb.8:                                # %if.else60
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a3, 0
	move	$a0, $zero
	sub.d	$a2, $s8, $a4
	add.d	$a1, $a2, $a1
	st.w	$a1, $a3, 0
.LBB13_9:                               # %cleanup
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
.Lfunc_end13:
	.size	TransformDecision, .Lfunc_end13-TransformDecision
                                        # -- End function
	.globl	IntraChromaPrediction4x4        # -- Begin function IntraChromaPrediction4x4
	.p2align	5
	.type	IntraChromaPrediction4x4,@function
IntraChromaPrediction4x4:               # @IntraChromaPrediction4x4
# %bb.0:                                # %entry
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a4, $a3, 0
	ld.w	$a5, $a4, 12
	ldptr.d	$a6, $a4, 14224
	ori	$a7, $zero, 536
	mul.d	$a5, $a5, $a7
	add.d	$a5, $a6, $a5
	ld.w	$a5, $a5, 416
	slli.d	$a2, $a2, 5
	slli.d	$a0, $a0, 11
	add.d	$a6, $a4, $a0
	slli.d	$a5, $a5, 9
	add.d	$a6, $a6, $a5
	add.d	$a6, $a6, $a2
	alsl.d	$a6, $a1, $a6, 1
	ldptr.d	$a6, $a6, 8528
	add.d	$a4, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	stptr.d	$a6, $a4, 12624
	ld.d	$a4, $a3, 0
	addi.d	$a6, $a2, 32
	add.d	$a7, $a4, $a0
	add.d	$a7, $a7, $a5
	add.d	$a7, $a7, $a6
	alsl.d	$a7, $a1, $a7, 1
	ldptr.d	$a7, $a7, 8528
	add.d	$a4, $a4, $a6
	alsl.d	$a4, $a1, $a4, 1
	stptr.d	$a7, $a4, 12624
	ld.d	$a4, $a3, 0
	addi.d	$a6, $a2, 64
	add.d	$a7, $a4, $a0
	add.d	$a7, $a7, $a5
	add.d	$a7, $a7, $a6
	alsl.d	$a7, $a1, $a7, 1
	ldptr.d	$a7, $a7, 8528
	add.d	$a4, $a4, $a6
	alsl.d	$a4, $a1, $a4, 1
	stptr.d	$a7, $a4, 12624
	ld.d	$a3, $a3, 0
	addi.d	$a2, $a2, 96
	add.d	$a0, $a3, $a0
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	ldptr.d	$a0, $a0, 8528
	add.d	$a2, $a3, $a2
	alsl.d	$a1, $a1, $a2, 1
	stptr.d	$a0, $a1, 12624
	ret
.Lfunc_end14:
	.size	IntraChromaPrediction4x4, .Lfunc_end14-IntraChromaPrediction4x4
                                        # -- End function
	.globl	ChromaPrediction4x4             # -- Begin function ChromaPrediction4x4
	.p2align	5
	.type	ChromaPrediction4x4,@function
ChromaPrediction4x4:                    # @ChromaPrediction4x4
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
	pcalau12i	$t0, %got_pc_hi20(img)
	pcalau12i	$t1, %pc_hi20(active_pps)
	ld.d	$t1, $t1, %pc_lo12(active_pps)
	ld.d	$t3, $t0, %got_pc_lo12(img)
	ld.w	$t2, $t1, 192
	ld.d	$t0, $t3, 0
	move	$s3, $a6
	move	$s5, $a5
	move	$a6, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$t6, $a1
	move	$s1, $a0
	beqz	$t2, .LBB15_3
# %bb.1:                                # %land.lhs.true
	ld.w	$a0, $t0, 20
	ori	$s8, $zero, 1
	beqz	$a0, .LBB15_6
# %bb.2:                                # %land.lhs.true
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB15_6
.LBB15_3:                               # %lor.rhs
	ld.w	$a0, $t1, 196
	beqz	$a0, .LBB15_5
# %bb.4:                                # %land.rhs
	ld.w	$a0, $t0, 20
	addi.d	$a0, $a0, -1
	sltui	$s8, $a0, 1
	b	.LBB15_6
.LBB15_5:
	move	$s8, $zero
.LBB15_6:                               # %lor.end
	ldptr.d	$a0, $t0, 14224
	ld.w	$a1, $t0, 12
	ldptr.d	$s6, $t0, 14384
	ori	$a2, $zero, 2
	pcalau12i	$s0, %pc_hi20(OneComponentChromaPrediction4x4)
	bne	$s4, $a2, .LBB15_12
# %bb.7:                                # %lor.end
	ori	$a2, $zero, 1
	bne	$s5, $a2, .LBB15_12
# %bb.8:                                # %lor.end
	bne	$a6, $a2, .LBB15_12
# %bb.9:                                # %lor.end
	or	$a2, $a7, $s3
	bnez	$a2, .LBB15_12
# %bb.10:                               # %lor.end
	ori	$a2, $zero, 536
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a0, $a2
	ld.hu	$a2, $a2, 480
	beqz	$a2, .LBB15_12
# %bb.11:                               # %if.end32.thread
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a2, -1
	sltui	$a0, $a0, 1
	lu12i.w	$a1, 3
	ori	$a2, $a1, 2112
	masknez	$a2, $a2, $a0
	ori	$a1, $a1, 2104
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ldx.d	$s6, $t0, $a0
	move	$fp, $zero
	b	.LBB15_14
.LBB15_12:                              # %if.end
	addi.w	$a2, $zero, -1
	beq	$s4, $a2, .LBB15_28
# %bb.13:                               # %if.end32
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s4
	bstrins.d	$a0, $zero, 1, 1
	sltui	$fp, $s4, 1
	bnez	$a0, .LBB15_15
.LBB15_14:                              # %if.then38
	ld.d	$t0, $s0, %pc_lo12(OneComponentChromaPrediction4x4)
	pcalau12i	$a0, %pc_hi20(ChromaPrediction4x4.l0_pred)
	addi.d	$a0, $a0, %pc_lo12(ChromaPrediction4x4.l0_pred)
	move	$a1, $t6
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $zero
	move	$a5, $s3
	move	$a7, $s1
	move	$s7, $t6
	jirl	$ra, $t0, 0
	move	$t6, $s7
.LBB15_15:                              # %if.end39
	addi.w	$s7, $t6, 4
	addi.w	$a0, $s4, -1
	ori	$a1, $zero, 1
	addi.w	$t5, $s2, 4
	bltu	$a1, $a0, .LBB15_17
# %bb.16:                               # %if.then45
	ld.d	$t0, $s0, %pc_lo12(OneComponentChromaPrediction4x4)
	pcalau12i	$a0, %pc_hi20(ChromaPrediction4x4.l1_pred)
	addi.d	$a0, $a0, %pc_lo12(ChromaPrediction4x4.l1_pred)
	ori	$a4, $zero, 1
	move	$a1, $t6
	move	$a2, $s2
	move	$a3, $s6
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	move	$a6, $s5
	move	$a7, $s1
	move	$s0, $t6
	move	$s5, $t5
	jirl	$ra, $t0, 0
	move	$t5, $s5
	move	$t6, $s0
.LBB15_17:                              # %if.end46
	ori	$a0, $zero, 2
	beqz	$s8, .LBB15_21
# %bb.18:                               # %if.then48
	bne	$s4, $a0, .LBB15_24
# %bb.19:                               # %if.then51
	pcalau12i	$a0, %pc_hi20(wbp_weight)
	ld.d	$a0, $a0, %pc_lo12(wbp_weight)
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s3, 3
	ldx.d	$a1, $a1, $a2
	pcalau12i	$a3, %pc_hi20(wp_offset)
	ld.d	$a3, $a3, %pc_lo12(wp_offset)
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a4, $a4, 3
	ldx.d	$a1, $a1, $a4
	ld.d	$a0, $a0, 8
	ld.d	$a5, $a3, 0
	ld.d	$a3, $a3, 8
	slli.d	$a6, $s1, 2
	ldx.d	$a0, $a0, $a2
	ldx.d	$a2, $a5, $a2
	ldx.d	$a3, $a3, $a4
	addi.d	$a5, $a6, 4
	ldx.d	$a4, $a0, $a4
	ldx.w	$a2, $a2, $a5
	ldx.w	$a3, $a3, $a5
	ldx.w	$a0, $a1, $a5
	ldx.w	$a1, $a4, $a5
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(wp_chroma_round)
	ld.w	$a6, $a3, %pc_lo12(wp_chroma_round)
	pcalau12i	$a3, %pc_hi20(luma_log_weight_denom)
	ld.w	$a4, $a3, %pc_lo12(luma_log_weight_denom)
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a7, $a3, 0
	srai.d	$a3, $a2, 1
	slli.d	$a5, $a6, 1
	addi.d	$a4, $a4, 1
	ldptr.w	$a2, $a7, 15524
	lu12i.w	$t0, 3
	ori	$t0, $t0, 336
	add.d	$a7, $a7, $t0
	pcalau12i	$t0, %pc_hi20(ChromaPrediction4x4.l0_pred)
	addi.d	$t0, $t0, %pc_lo12(ChromaPrediction4x4.l0_pred)
	ld.hu	$t3, $t0, 0
	pcalau12i	$t1, %pc_hi20(ChromaPrediction4x4.l1_pred)
	addi.d	$t1, $t1, %pc_lo12(ChromaPrediction4x4.l1_pred)
	ld.hu	$t4, $t1, 0
	slli.d	$t2, $s2, 5
	add.d	$t2, $a7, $t2
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	alsl.d	$a6, $a6, $t3, 1
	add.d	$a6, $a6, $t4
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a3
	srai.d	$t3, $a6, 63
	andn	$a6, $a6, $t3
	slt	$t3, $a6, $a2
	maskeqz	$a6, $a6, $t3
	masknez	$t3, $a2, $t3
	or	$t3, $a6, $t3
	slli.d	$t4, $t6, 1
	addi.d	$a6, $t6, 1
	stx.h	$t3, $t2, $t4
	bge	$a6, $s7, .LBB15_29
# %bb.20:                               # %for.body88.1
	ld.hu	$t3, $t0, 2
	ld.hu	$t4, $t1, 2
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t3, $a5
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	slli.d	$t4, $a6, 1
	stx.h	$t3, $t2, $t4
	ld.hu	$t3, $t0, 4
	ld.hu	$t4, $t1, 4
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t3, $a5
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	alsl.d	$t2, $t6, $t2, 1
	st.h	$t3, $t2, 4
	ld.hu	$t3, $t0, 6
	ld.hu	$t4, $t1, 6
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t3, $a5
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	st.h	$t3, $t2, 6
	addi.d	$t2, $t1, 8
	addi.d	$t1, $t0, 8
	addi.d	$t0, $s2, 1
	blt	$t0, $t5, .LBB15_30
	b	.LBB15_61
.LBB15_21:                              # %if.else195
	bne	$s4, $a0, .LBB15_26
# %bb.22:                               # %for.cond199.preheader
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 336
	pcalau12i	$a2, %pc_hi20(ChromaPrediction4x4.l0_pred)
	addi.d	$a2, $a2, %pc_lo12(ChromaPrediction4x4.l0_pred)
	ld.hu	$a5, $a2, 0
	pcalau12i	$a3, %pc_hi20(ChromaPrediction4x4.l1_pred)
	addi.d	$a3, $a3, %pc_lo12(ChromaPrediction4x4.l1_pred)
	ld.hu	$a6, $a3, 0
	add.d	$a1, $a0, $a1
	slli.d	$a0, $s2, 5
	add.d	$a4, $a1, $a0
	add.d	$a0, $a5, $a6
	addi.d	$a0, $a0, 1
	srli.d	$a5, $a0, 1
	slli.d	$a6, $t6, 1
	addi.d	$a0, $t6, 1
	stx.h	$a5, $a4, $a6
	bge	$a0, $s7, .LBB15_32
# %bb.23:                               # %for.body206.1
	ld.hu	$a5, $a2, 2
	ld.hu	$a6, $a3, 2
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	slli.d	$a6, $a0, 1
	stx.h	$a5, $a4, $a6
	ld.hu	$a5, $a2, 4
	ld.hu	$a6, $a3, 4
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	alsl.d	$a4, $t6, $a4, 1
	st.h	$a5, $a4, 4
	ld.hu	$a5, $a2, 6
	ld.hu	$a6, $a3, 6
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	st.h	$a5, $a4, 6
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a2, 8
	addi.d	$a2, $s2, 1
	blt	$a2, $t5, .LBB15_33
	b	.LBB15_61
.LBB15_24:                              # %if.else
	pcalau12i	$a0, %pc_hi20(wp_weight)
	ld.d	$a0, $a0, %pc_lo12(wp_weight)
	pcalau12i	$a1, %pc_hi20(wp_offset)
	beqz	$fp, .LBB15_35
# %bb.25:                               # %if.then108
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s3, 3
	ldx.d	$a0, $a0, $a2
	slli.d	$a3, $s1, 2
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $a2, 0
	addi.d	$a3, $a3, 4
	ldx.w	$a2, $a0, $a3
	ldx.w	$a1, $a1, $a3
	ldptr.w	$a0, $a5, 15524
	pcalau12i	$a3, %pc_hi20(wp_chroma_round)
	ld.w	$a3, $a3, %pc_lo12(wp_chroma_round)
	pcalau12i	$a4, %pc_hi20(chroma_log_weight_denom)
	ld.wu	$a4, $a4, %pc_lo12(chroma_log_weight_denom)
	lu12i.w	$a6, 3
	ori	$a7, $a6, 336
	pcalau12i	$a6, %pc_hi20(ChromaPrediction4x4.l0_pred)
	addi.d	$a6, $a6, %pc_lo12(ChromaPrediction4x4.l0_pred)
	b	.LBB15_36
.LBB15_26:                              # %if.else226
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 0
	slli.d	$a1, $s2, 5
	add.d	$a0, $a0, $a1
	alsl.d	$a0, $t6, $a0, 1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 336
	add.d	$a2, $a0, $a1
	addi.d	$a0, $s2, 1
	beqz	$fp, .LBB15_38
# %bb.27:                               # %for.cond230.preheader
	pcalau12i	$a1, %pc_hi20(ChromaPrediction4x4.l0_pred)
	addi.d	$a1, $a1, %pc_lo12(ChromaPrediction4x4.l0_pred)
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	blt	$a0, $t5, .LBB15_39
	b	.LBB15_61
.LBB15_28:                              # %if.then31
	ori	$a2, $zero, 536
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	ld.w	$a0, $a0, 416
	slli.d	$a1, $s2, 5
	slli.d	$a2, $s1, 11
	add.d	$a3, $t0, $a2
	slli.d	$a0, $a0, 9
	add.d	$a3, $a3, $a0
	add.d	$a3, $a3, $a1
	alsl.d	$a3, $t6, $a3, 1
	ldptr.d	$a3, $a3, 8528
	add.d	$a4, $t0, $a1
	alsl.d	$a4, $t6, $a4, 1
	stptr.d	$a3, $a4, 12624
	ld.d	$a3, $t3, 0
	addi.d	$a4, $a1, 32
	add.d	$a5, $a3, $a2
	add.d	$a5, $a5, $a0
	add.d	$a5, $a5, $a4
	alsl.d	$a5, $t6, $a5, 1
	ldptr.d	$a5, $a5, 8528
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $t6, $a3, 1
	stptr.d	$a5, $a3, 12624
	ld.d	$a3, $t3, 0
	addi.d	$a4, $a1, 64
	add.d	$a5, $a3, $a2
	add.d	$a5, $a5, $a0
	add.d	$a5, $a5, $a4
	alsl.d	$a5, $t6, $a5, 1
	ldptr.d	$a5, $a5, 8528
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $t6, $a3, 1
	stptr.d	$a5, $a3, 12624
	ld.d	$a3, $t3, 0
	addi.d	$a1, $a1, 96
	add.d	$a2, $a3, $a2
	add.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a1
	alsl.d	$a0, $t6, $a0, 1
	ldptr.d	$a0, $a0, 8528
	add.d	$a1, $a3, $a1
	alsl.d	$a1, $t6, $a1, 1
	stptr.d	$a0, $a1, 12624
	b	.LBB15_61
.LBB15_29:
	addi.d	$t2, $t1, 2
	addi.d	$t1, $t0, 2
	addi.d	$t0, $s2, 1
	bge	$t0, $t5, .LBB15_61
.LBB15_30:                              # %for.cond85.preheader.1
	ld.hu	$t4, $t1, 0
	ld.hu	$t5, $t2, 0
	slli.d	$t0, $t0, 5
	add.d	$t3, $a7, $t0
	mul.d	$t0, $a0, $t4
	mul.d	$t4, $a1, $t5
	add.d	$t0, $t0, $a5
	add.d	$t0, $t0, $t4
	sra.w	$t0, $t0, $a4
	add.w	$t0, $t0, $a3
	srai.d	$t4, $t0, 63
	andn	$t0, $t0, $t4
	slt	$t4, $t0, $a2
	maskeqz	$t0, $t0, $t4
	masknez	$t4, $a2, $t4
	or	$t4, $t0, $t4
	slli.d	$t0, $t6, 1
	stx.h	$t4, $t3, $t0
	bge	$a6, $s7, .LBB15_43
# %bb.31:                               # %for.body88.1.1
	ld.hu	$t4, $t1, 2
	ld.hu	$t5, $t2, 2
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	slli.d	$t5, $a6, 1
	stx.h	$t4, $t3, $t5
	ld.hu	$t4, $t1, 4
	ld.hu	$t5, $t2, 4
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	alsl.d	$t3, $t6, $t3, 1
	st.h	$t4, $t3, 4
	ld.hu	$t4, $t1, 6
	ld.hu	$t5, $t2, 6
	addi.d	$t1, $t1, 8
	mul.d	$t4, $a0, $t4
	addi.d	$t2, $t2, 8
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	st.h	$t4, $t3, 6
	b	.LBB15_44
.LBB15_32:
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a2, 2
	addi.d	$a2, $s2, 1
	bge	$a2, $t5, .LBB15_61
.LBB15_33:                              # %for.cond203.preheader.1
	ld.hu	$a6, $a4, 0
	ld.hu	$a7, $a3, 0
	slli.d	$a2, $a2, 5
	add.d	$a5, $a1, $a2
	add.d	$a2, $a6, $a7
	addi.d	$a2, $a2, 1
	srli.d	$a6, $a2, 1
	slli.d	$a2, $t6, 1
	stx.h	$a6, $a5, $a2
	bge	$a0, $s7, .LBB15_46
# %bb.34:                               # %for.body206.1.1
	ld.hu	$a6, $a4, 2
	ld.hu	$a7, $a3, 2
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	slli.d	$a7, $a0, 1
	stx.h	$a6, $a5, $a7
	ld.hu	$a6, $a4, 4
	ld.hu	$a7, $a3, 4
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	alsl.d	$a5, $t6, $a5, 1
	st.h	$a6, $a5, 4
	ld.hu	$a6, $a4, 6
	ld.hu	$a7, $a3, 6
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	st.h	$a6, $a5, 6
	b	.LBB15_47
.LBB15_35:                              # %if.else150
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	slli.d	$a3, $s1, 2
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $a2, 0
	addi.d	$a3, $a3, 4
	ldx.w	$a2, $a0, $a3
	ldx.w	$a1, $a1, $a3
	ldptr.w	$a0, $a5, 15524
	pcalau12i	$a3, %pc_hi20(wp_chroma_round)
	ld.w	$a3, $a3, %pc_lo12(wp_chroma_round)
	pcalau12i	$a4, %pc_hi20(chroma_log_weight_denom)
	ld.wu	$a4, $a4, %pc_lo12(chroma_log_weight_denom)
	lu12i.w	$a6, 3
	ori	$a7, $a6, 336
	pcalau12i	$a6, %pc_hi20(ChromaPrediction4x4.l1_pred)
	addi.d	$a6, $a6, %pc_lo12(ChromaPrediction4x4.l1_pred)
.LBB15_36:                              # %if.then108
	ld.hu	$t1, $a6, 0
	add.d	$a7, $a5, $a7
	slli.d	$a5, $s2, 5
	add.d	$t0, $a7, $a5
	mul.d	$a5, $a2, $t1
	add.d	$a5, $a5, $a3
	sra.w	$a5, $a5, $a4
	add.w	$a5, $a5, $a1
	srai.d	$t1, $a5, 63
	andn	$a5, $a5, $t1
	slt	$t1, $a5, $a0
	maskeqz	$a5, $a5, $t1
	masknez	$t1, $a0, $t1
	or	$t1, $a5, $t1
	slli.d	$t2, $t6, 1
	addi.d	$a5, $t6, 1
	stx.h	$t1, $t0, $t2
	bge	$a5, $s7, .LBB15_40
# %bb.37:                               # %for.body129.1
	ld.hu	$t1, $a6, 2
	mul.d	$t1, $a2, $t1
	add.d	$t1, $t1, $a3
	sra.w	$t1, $t1, $a4
	add.w	$t1, $t1, $a1
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a0
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a0, $t2
	or	$t1, $t1, $t2
	slli.d	$t2, $a5, 1
	stx.h	$t1, $t0, $t2
	ld.hu	$t1, $a6, 4
	mul.d	$t1, $a2, $t1
	add.d	$t1, $t1, $a3
	sra.w	$t1, $t1, $a4
	add.w	$t1, $t1, $a1
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a0
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a0, $t2
	or	$t1, $t1, $t2
	alsl.d	$t0, $t6, $t0, 1
	st.h	$t1, $t0, 4
	ld.hu	$t1, $a6, 6
	mul.d	$t1, $a2, $t1
	add.d	$t1, $t1, $a3
	sra.w	$t1, $t1, $a4
	add.w	$t1, $t1, $a1
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a0
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a0, $t2
	or	$t1, $t1, $t2
	st.h	$t1, $t0, 6
	addi.d	$t1, $a6, 8
	addi.d	$a6, $s2, 1
	blt	$a6, $t5, .LBB15_41
	b	.LBB15_61
.LBB15_38:                              # %for.cond243.preheader
	pcalau12i	$a1, %pc_hi20(ChromaPrediction4x4.l1_pred)
	addi.d	$a1, $a1, %pc_lo12(ChromaPrediction4x4.l1_pred)
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	bge	$a0, $t5, .LBB15_61
.LBB15_39:                              # %for.body246.1
	ld.d	$a2, $a4, 0
	ld.d	$a3, $a1, 8
	slli.d	$a0, $a0, 5
	add.d	$a0, $a2, $a0
	alsl.d	$a0, $t6, $a0, 1
	stptr.d	$a3, $a0, 12624
	ld.d	$a0, $a4, 0
	ld.d	$a2, $a1, 16
	slli.d	$a3, $s2, 5
	add.d	$a0, $a3, $a0
	alsl.d	$a0, $t6, $a0, 1
	stptr.d	$a2, $a0, 12688
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a1, 24
	add.d	$a0, $a3, $a0
	alsl.d	$a0, $t6, $a0, 1
	stptr.d	$a1, $a0, 12720
	b	.LBB15_61
.LBB15_40:
	addi.d	$t1, $a6, 2
	addi.d	$a6, $s2, 1
	bge	$a6, $t5, .LBB15_61
.LBB15_41:                              # %for.cond126.preheader.1
	ld.hu	$t0, $t1, 0
	slli.d	$a6, $a6, 5
	add.d	$t2, $a7, $a6
	mul.d	$a6, $a2, $t0
	add.d	$a6, $a6, $a3
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a1
	srai.d	$t0, $a6, 63
	andn	$a6, $a6, $t0
	slt	$t0, $a6, $a0
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $a0, $t0
	or	$a6, $a6, $t0
	slli.d	$t0, $t6, 1
	stx.h	$a6, $t2, $t0
	slli.d	$a6, $a5, 1
	bge	$a5, $s7, .LBB15_49
# %bb.42:                               # %for.body129.1.1
	ld.hu	$t3, $t1, 2
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a6
	ld.hu	$t3, $t1, 4
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	alsl.d	$t2, $t6, $t2, 1
	st.h	$t3, $t2, 4
	ld.hu	$t3, $t1, 6
	addi.d	$t1, $t1, 8
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	st.h	$t3, $t2, 6
	b	.LBB15_50
.LBB15_43:
	addi.d	$t1, $t1, 2
	addi.d	$t2, $t2, 2
.LBB15_44:                              # %for.inc103.1
	slli.d	$t3, $s2, 5
	ld.hu	$t4, $t1, 0
	ld.hu	$t5, $t2, 0
	add.d	$a7, $t3, $a7
	addi.d	$t3, $a7, 64
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	stx.h	$t4, $t3, $t0
	bge	$a6, $s7, .LBB15_52
# %bb.45:                               # %for.body88.1.2
	ld.hu	$t4, $t1, 2
	ld.hu	$t5, $t2, 2
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	slli.d	$t5, $a6, 1
	stx.h	$t4, $t3, $t5
	ld.hu	$t4, $t1, 4
	ld.hu	$t5, $t2, 4
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	alsl.d	$t3, $t6, $t3, 1
	st.h	$t4, $t3, 4
	ld.hu	$t4, $t1, 6
	ld.hu	$t5, $t2, 6
	addi.d	$t1, $t1, 8
	mul.d	$t4, $a0, $t4
	addi.d	$t2, $t2, 8
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	st.h	$t4, $t3, 6
	b	.LBB15_53
.LBB15_46:
	addi.d	$a4, $a4, 2
	addi.d	$a3, $a3, 2
.LBB15_47:                              # %for.inc223.1
	ld.hu	$a6, $a4, 0
	ld.hu	$a7, $a3, 0
	slli.d	$a5, $s2, 5
	add.d	$a1, $a5, $a1
	addi.d	$a5, $a1, 64
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $a5, $a2
	bge	$a0, $s7, .LBB15_55
# %bb.48:                               # %for.body206.1.2
	ld.hu	$a6, $a4, 2
	ld.hu	$a7, $a3, 2
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	slli.d	$a7, $a0, 1
	stx.h	$a6, $a5, $a7
	ld.hu	$a6, $a4, 4
	ld.hu	$a7, $a3, 4
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	alsl.d	$a5, $t6, $a5, 1
	st.h	$a6, $a5, 4
	ld.hu	$a6, $a4, 6
	ld.hu	$a7, $a3, 6
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	st.h	$a6, $a5, 6
	b	.LBB15_56
.LBB15_49:
	addi.d	$t1, $t1, 2
.LBB15_50:                              # %for.inc147.1
	ld.hu	$t3, $t1, 0
	slli.d	$t2, $s2, 5
	add.d	$a7, $t2, $a7
	addi.d	$t2, $a7, 64
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	bge	$a5, $s7, .LBB15_58
# %bb.51:                               # %for.body129.1.2
	ld.hu	$t3, $t1, 2
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a6
	ld.hu	$t3, $t1, 4
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	alsl.d	$t2, $t6, $t2, 1
	st.h	$t3, $t2, 4
	ld.hu	$t3, $t1, 6
	addi.d	$t1, $t1, 8
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	st.h	$t3, $t2, 6
	b	.LBB15_59
.LBB15_52:
	addi.d	$t1, $t1, 2
	addi.d	$t2, $t2, 2
.LBB15_53:                              # %for.inc103.2
	ld.hu	$t3, $t1, 0
	ld.hu	$t4, $t2, 0
	addi.d	$a7, $a7, 96
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t3, $a5
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $a7, $t0
	bge	$a6, $s7, .LBB15_61
# %bb.54:                               # %for.body88.1.3
	ld.hu	$t0, $t1, 2
	ld.hu	$t3, $t2, 2
	mul.d	$t0, $a0, $t0
	mul.d	$t3, $a1, $t3
	add.d	$t0, $t0, $a5
	add.d	$t0, $t0, $t3
	sra.w	$t0, $t0, $a4
	add.w	$t0, $t0, $a3
	srai.d	$t3, $t0, 63
	andn	$t0, $t0, $t3
	slt	$t3, $t0, $a2
	maskeqz	$t0, $t0, $t3
	masknez	$t3, $a2, $t3
	or	$t0, $t0, $t3
	slli.d	$a6, $a6, 1
	stx.h	$t0, $a7, $a6
	ld.hu	$a6, $t1, 4
	ld.hu	$t0, $t2, 4
	mul.d	$a6, $a0, $a6
	mul.d	$t0, $a1, $t0
	add.d	$a6, $a6, $a5
	add.d	$a6, $a6, $t0
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a3
	srai.d	$t0, $a6, 63
	andn	$a6, $a6, $t0
	slt	$t0, $a6, $a2
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $a2, $t0
	or	$a6, $a6, $t0
	alsl.d	$a7, $t6, $a7, 1
	st.h	$a6, $a7, 4
	ld.hu	$a6, $t1, 6
	ld.hu	$t0, $t2, 6
	mul.d	$a0, $a0, $a6
	mul.d	$a1, $a1, $t0
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.h	$a0, $a7, 6
	b	.LBB15_61
.LBB15_55:
	addi.d	$a4, $a4, 2
	addi.d	$a3, $a3, 2
.LBB15_56:                              # %for.inc223.2
	ld.hu	$a5, $a4, 0
	ld.hu	$a6, $a3, 0
	addi.d	$a1, $a1, 96
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	stx.h	$a5, $a1, $a2
	bge	$a0, $s7, .LBB15_61
# %bb.57:                               # %for.body206.1.3
	ld.hu	$a2, $a4, 2
	ld.hu	$a5, $a3, 2
	add.d	$a2, $a2, $a5
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	slli.d	$a0, $a0, 1
	stx.h	$a2, $a1, $a0
	ld.hu	$a0, $a4, 4
	ld.hu	$a2, $a3, 4
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	alsl.d	$a1, $t6, $a1, 1
	st.h	$a0, $a1, 4
	ld.hu	$a0, $a4, 6
	ld.hu	$a2, $a3, 6
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $a1, 6
	b	.LBB15_61
.LBB15_58:
	addi.d	$t1, $t1, 2
.LBB15_59:                              # %for.inc147.2
	ld.hu	$t2, $t1, 0
	addi.d	$a7, $a7, 96
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a1
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	or	$t2, $t2, $t3
	stx.h	$t2, $a7, $t0
	bge	$a5, $s7, .LBB15_61
# %bb.60:                               # %for.body129.1.3
	ld.hu	$a5, $t1, 2
	mul.d	$a5, $a2, $a5
	add.d	$a5, $a5, $a3
	sra.w	$a5, $a5, $a4
	add.w	$a5, $a5, $a1
	srai.d	$t0, $a5, 63
	andn	$a5, $a5, $t0
	slt	$t0, $a5, $a0
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $a0, $t0
	or	$a5, $a5, $t0
	stx.h	$a5, $a7, $a6
	ld.hu	$a5, $t1, 4
	mul.d	$a5, $a2, $a5
	add.d	$a5, $a5, $a3
	sra.w	$a5, $a5, $a4
	add.w	$a5, $a5, $a1
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slt	$a6, $a5, $a0
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a0, $a6
	or	$a5, $a5, $a6
	alsl.d	$a6, $t6, $a7, 1
	st.h	$a5, $a6, 4
	ld.hu	$a5, $t1, 6
	mul.d	$a2, $a2, $a5
	add.d	$a2, $a2, $a3
	sra.w	$a2, $a2, $a4
	add.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	st.h	$a0, $a6, 6
.LBB15_61:                              # %cleanup
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
.Lfunc_end15:
	.size	ChromaPrediction4x4, .Lfunc_end15-ChromaPrediction4x4
                                        # -- End function
	.globl	ChromaResidualCoding            # -- Begin function ChromaResidualCoding
	.p2align	5
	.type	ChromaResidualCoding,@function
ChromaResidualCoding:                   # @ChromaResidualCoding
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
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s3, $a1, %got_pc_lo12(img)
	ld.d	$a1, $s3, 0
	ld.w	$a2, $a1, 12
	ldptr.d	$a3, $a1, 14224
	ori	$s4, $zero, 536
	mul.d	$a2, $a2, $s4
	add.d	$a2, $a3, $a2
	ld.w	$a2, $a2, 72
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	beqz	$a2, .LBB16_2
# %bb.1:
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	b	.LBB16_3
.LBB16_2:                               # %land.rhs
	ld.w	$a0, $a1, 20
	sltui	$a2, $a0, 1
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
	or	$a0, $a2, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
.LBB16_3:                               # %land.end
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3248
	ldx.w	$a1, $a1, $a2
	ldptr.w	$a0, $a0, 5772
	move	$s0, $zero
	addi.w	$a1, $a1, -1
	sltui	$a0, $a0, 1
	pcalau12i	$a2, %pc_hi20(OneComponentChromaPrediction4x4_retrieve)
	addi.d	$a2, $a2, %pc_lo12(OneComponentChromaPrediction4x4_retrieve)
	masknez	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(OneComponentChromaPrediction4x4_regenerate)
	addi.d	$a3, $a3, %pc_lo12(OneComponentChromaPrediction4x4_regenerate)
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(OneComponentChromaPrediction4x4)
	st.d	$a0, $a2, %pc_lo12(OneComponentChromaPrediction4x4)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	slli.d	$a0, $a1, 6
	pcalau12i	$a1, %pc_hi20(ChromaResidualCoding.block8x8_idx)
	addi.d	$a1, $a1, %pc_lo12(ChromaResidualCoding.block8x8_idx)
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$fp, $zero, -1
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$s5, $a0, %got_pc_lo12(enc_picture)
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	ori	$a2, $zero, 1
	b	.LBB16_7
.LBB16_4:                               # %if.else163
                                        #   in Loop: Header=BB16_7 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(dct_chroma_sp)
	jirl	$ra, $ra, 0
.LBB16_5:                               # %for.inc169.sink.split
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB16_6:                               # %for.inc169
                                        #   in Loop: Header=BB16_7 Depth=1
	andi	$a0, $s7, 1
	ori	$s0, $zero, 1
	move	$a2, $zero
	beqz	$a0, .LBB16_49
.LBB16_7:                               # %for.cond5.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_11 Depth 2
                                        #       Child Loop BB16_15 Depth 3
                                        #     Child Loop BB16_25 Depth 2
                                        #     Child Loop BB16_38 Depth 2
                                        #       Child Loop BB16_40 Depth 3
                                        #     Child Loop BB16_48 Depth 2
	ld.d	$a1, $s3, 0
	ldptr.w	$a0, $a1, 15548
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	blt	$a0, $s8, .LBB16_22
# %bb.8:                                # %for.cond8.preheader.lr.ph
                                        #   in Loop: Header=BB16_7 Depth=1
	ldptr.w	$a2, $a1, 15544
	blt	$a2, $s8, .LBB16_22
# %bb.9:                                # %for.cond8.preheader.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	move	$s1, $zero
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	b	.LBB16_11
	.p2align	4, , 16
.LBB16_10:                              # %for.inc18
                                        #   in Loop: Header=BB16_11 Depth=2
	ldptr.w	$a0, $a1, 15548
	addi.d	$s1, $s1, 4
	addi.w	$a2, $s1, 0
	addi.d	$s7, $s7, 16
	bge	$a2, $a0, .LBB16_22
.LBB16_11:                              # %for.cond8.preheader
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_15 Depth 3
	ldptr.w	$a0, $a1, 15544
	blt	$a0, $s8, .LBB16_10
# %bb.12:                               # %for.body10.lr.ph
                                        #   in Loop: Header=BB16_11 Depth=2
	move	$s2, $zero
	move	$s6, $s7
	b	.LBB16_15
	.p2align	4, , 16
.LBB16_13:                              # %if.then.i
                                        #   in Loop: Header=BB16_15 Depth=3
	ld.d	$a5, $s5, 0
	ldptr.d	$a5, $a5, 6488
	ld.w	$a6, $a1, 172
	ld.d	$a5, $a5, 0
	add.w	$a4, $a6, $a4
	slli.d	$a4, $a4, 3
	ld.w	$a1, $a1, 168
	ldx.d	$a4, $a5, $a4
	add.w	$a1, $a1, $a3
	ldx.b	$a1, $a4, $a1
	ld.w	$a4, $a2, 376
	move	$a7, $zero
	move	$a5, $zero
.LBB16_14:                              # %SetModesAndRefframe.exit
                                        #   in Loop: Header=BB16_15 Depth=3
	ext.w.h	$a3, $a0
	ext.w.h	$a6, $a1
	ext.w.h	$a7, $a7
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(ChromaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ldptr.w	$a0, $a1, 15544
	addi.w	$s2, $s2, 4
	addi.d	$s6, $s6, 4
	bge	$s2, $a0, .LBB16_10
.LBB16_15:                              # %for.body10
                                        #   Parent Loop BB16_7 Depth=1
                                        #     Parent Loop BB16_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $a1, 12
	ldptr.d	$a2, $a1, 14224
	ld.w	$a4, $s6, 0
	mul.d	$a0, $a0, $s4
	add.d	$a0, $a2, $a0
	alsl.d	$a2, $a4, $a0, 2
	ld.w	$a5, $a1, 20
	ld.w	$a0, $a2, 392
	slli.d	$a3, $a4, 1
	bstrins.d	$a4, $zero, 0, 0
	andi	$a3, $a3, 2
	bne	$a5, $s8, .LBB16_13
# %bb.16:                               # %if.else.i
                                        #   in Loop: Header=BB16_15 Depth=3
	beq	$a0, $fp, .LBB16_21
# %bb.17:                               # %if.else.i
                                        #   in Loop: Header=BB16_15 Depth=3
	beq	$a0, $s8, .LBB16_20
# %bb.18:                               # %if.else.i
                                        #   in Loop: Header=BB16_15 Depth=3
	beqz	$a0, .LBB16_13
# %bb.19:                               # %if.else62.i
                                        #   in Loop: Header=BB16_15 Depth=3
	ld.d	$a5, $s5, 0
	ldptr.d	$a5, $a5, 6488
	ld.w	$a6, $a1, 172
	ld.d	$a7, $a5, 0
	add.w	$a4, $a6, $a4
	slli.d	$a4, $a4, 3
	ld.d	$a5, $a5, 8
	ld.w	$a1, $a1, 168
	ldx.d	$a6, $a7, $a4
	ldx.d	$a5, $a5, $a4
	add.w	$a3, $a1, $a3
	ldx.b	$a1, $a6, $a3
	ld.w	$a4, $a2, 376
	ldx.b	$a7, $a5, $a3
	move	$a5, $a4
	b	.LBB16_14
.LBB16_20:                              # %if.then47.i
                                        #   in Loop: Header=BB16_15 Depth=3
	ld.d	$a5, $s5, 0
	ldptr.d	$a5, $a5, 6488
	ld.w	$a6, $a1, 172
	ld.d	$a5, $a5, 8
	add.w	$a4, $a6, $a4
	slli.d	$a4, $a4, 3
	ld.w	$a1, $a1, 168
	ldx.d	$a4, $a5, $a4
	add.w	$a1, $a1, $a3
	ldx.b	$a7, $a4, $a1
	ld.w	$a5, $a2, 376
	move	$a4, $zero
	move	$a1, $zero
	b	.LBB16_14
.LBB16_21:                              #   in Loop: Header=BB16_15 Depth=3
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $a7
	b	.LBB16_14
	.p2align	4, , 16
.LBB16_22:                              # %for.end20
                                        #   in Loop: Header=BB16_7 Depth=1
	ldptr.w	$a2, $a1, 15256
	slli.d	$s1, $s0, 3
	beqz	$a2, .LBB16_26
# %bb.23:                               # %for.cond23.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	lu12i.w	$a2, 3
	blt	$a0, $s8, .LBB16_29
# %bb.24:                               # %for.body27.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	move	$s2, $zero
	ori	$s6, $a2, 336
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_25:                              # %for.body27
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 6472
	ld.w	$a2, $a1, 188
	ldx.d	$a0, $a0, $s1
	add.d	$a2, $s2, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a2, $a1, 184
	ldptr.w	$a3, $a1, 15544
	alsl.d	$a0, $a2, $a0, 1
	add.d	$a1, $a1, $s6
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ldptr.w	$a0, $a1, 15548
	addi.d	$s2, $s2, 1
	addi.d	$s6, $s6, 32
	blt	$s2, $a0, .LBB16_25
	b	.LBB16_30
	.p2align	4, , 16
.LBB16_26:                              # %if.else41
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	lu12i.w	$t4, 3
	beqz	$a2, .LBB16_34
# %bb.27:                               # %land.lhs.true
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.w	$a2, $a1, 20
	ori	$a3, $zero, 3
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	bne	$a2, $a3, .LBB16_46
# %bb.28:                               # %for.body50.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	ori	$a0, $t4, 848
	xvld	$xr0, $sp, 16                   # 32-byte Folded Reload
	xvstx	$xr0, $a1, $a0
	ori	$a0, $t4, 912
	xvstx	$xr0, $a1, $a0
	ori	$a0, $t4, 976
	xvstx	$xr0, $a1, $a0
	ori	$a0, $t4, 1040
	xvstx	$xr0, $a1, $a0
	ori	$a0, $t4, 1104
	xvstx	$xr0, $a1, $a0
	ori	$a0, $t4, 1168
	xvstx	$xr0, $a1, $a0
	ori	$a0, $t4, 1232
	xvstx	$xr0, $a1, $a0
	ori	$a0, $t4, 1296
	xvstx	$xr0, $a1, $a0
	b	.LBB16_31
	.p2align	4, , 16
.LBB16_29:                              #   in Loop: Header=BB16_7 Depth=1
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
.LBB16_30:                              # %if.end125
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB16_42
.LBB16_31:                              # %land.lhs.true127
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.w	$a0, $a1, 20
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB16_6
.LBB16_32:                              # %if.then131
                                        #   in Loop: Header=BB16_7 Depth=1
	pcalau12i	$a0, %pc_hi20(si_frame_indicator)
	ld.w	$a0, $a0, %pc_lo12(si_frame_indicator)
	pcalau12i	$a1, %pc_hi20(sp2_frame_indicator)
	ld.w	$a2, $a1, %pc_lo12(sp2_frame_indicator)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	or	$a0, $a0, $a2
	beqz	$a0, .LBB16_4
# %bb.33:                               # %if.then134
                                        #   in Loop: Header=BB16_7 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(dct_chroma_sp2)
	jirl	$ra, $ra, 0
	b	.LBB16_5
.LBB16_34:                              # %for.cond86.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	blt	$a0, $s8, .LBB16_42
# %bb.35:                               # %for.cond91.preheader.lr.ph
                                        #   in Loop: Header=BB16_7 Depth=1
	ldptr.w	$a6, $a1, 15544
	blt	$a6, $s8, .LBB16_42
# %bb.36:                               # %for.cond91.preheader.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	pcalau12i	$a2, %pc_hi20(imgUV_org)
	ld.d	$a3, $a2, %pc_lo12(imgUV_org)
	move	$a2, $zero
	alsl.d	$a3, $s0, $a3, 3
	ori	$a4, $t4, 336
	add.d	$a4, $a1, $a4
	ori	$a5, $t4, 848
	add.d	$a5, $a1, $a5
	b	.LBB16_38
	.p2align	4, , 16
.LBB16_37:                              # %for.inc120
                                        #   in Loop: Header=BB16_38 Depth=2
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a5, 64
	addi.d	$a4, $a4, 32
	bge	$a2, $a0, .LBB16_30
.LBB16_38:                              # %for.cond91.preheader
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_40 Depth 3
	blt	$a6, $s8, .LBB16_37
# %bb.39:                               # %for.body95.lr.ph
                                        #   in Loop: Header=BB16_38 Depth=2
	ld.w	$a6, $a1, 204
	ld.d	$a7, $a3, 0
	ld.w	$a0, $a1, 200
	add.w	$a6, $a6, $a2
	slli.d	$a6, $a6, 3
	ldx.d	$a7, $a7, $a6
	move	$t0, $zero
	move	$t1, $a4
	move	$t2, $a5
	.p2align	4, , 16
.LBB16_40:                              # %for.body95
                                        #   Parent Loop BB16_7 Depth=1
                                        #     Parent Loop BB16_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a6, $a0, 1
	ldx.hu	$a6, $a7, $a6
	ld.hu	$t3, $t1, 0
	sub.d	$a6, $a6, $t3
	st.w	$a6, $t2, 0
	ldptr.w	$a6, $a1, 15544
	addi.d	$t0, $t0, 1
	addi.w	$a0, $a0, 1
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 2
	blt	$t0, $a6, .LBB16_40
# %bb.41:                               # %for.inc120.loopexit
                                        #   in Loop: Header=BB16_38 Depth=2
	ori	$a0, $t4, 3260
	ldx.w	$a0, $a1, $a0
	b	.LBB16_37
	.p2align	4, , 16
.LBB16_42:                              # %if.else138
                                        #   in Loop: Header=BB16_7 Depth=1
	ldptr.w	$a0, $a1, 15256
	bnez	$a0, .LBB16_6
# %bb.43:                               # %if.then143
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.w	$a0, $a1, 20
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB16_45
# %bb.44:                               # %lor.lhs.false147
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.w	$a0, $a1, 12
	ldptr.d	$a1, $a1, 14224
	mul.d	$a0, $a0, $s4
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 72
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB16_32
.LBB16_45:                              # %if.then155
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(dct_chroma)
	jirl	$ra, $ra, 0
	b	.LBB16_5
.LBB16_46:                              # %for.cond60.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	blt	$a0, $s8, .LBB16_31
# %bb.47:                               # %for.body64.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	move	$s2, $zero
	ori	$s6, $t4, 336
	.p2align	4, , 16
.LBB16_48:                              # %for.body64
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 6472
	ld.w	$a2, $a1, 188
	ldx.d	$a0, $a0, $s1
	add.d	$a2, $s2, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a2, $a1, 184
	ldptr.w	$a3, $a1, 15544
	alsl.d	$a0, $a2, $a0, 1
	add.d	$a1, $a1, $s6
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ldptr.w	$a0, $a1, 15548
	addi.d	$s2, $s2, 1
	addi.d	$s6, $s6, 32
	blt	$s2, $a0, .LBB16_48
	b	.LBB16_31
.LBB16_49:                              # %for.end171
	ld.d	$a0, $s3, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a0, $a0, 14224
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 364
	alsl.d	$a1, $a2, $a1, 4
	st.w	$a1, $a0, 364
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
.Lfunc_end16:
	.size	ChromaResidualCoding, .Lfunc_end16-ChromaResidualCoding
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function IntraChromaPrediction
.LCPI17_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI17_2:
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
.LCPI17_1:
	.half	3                               # 0x3
	.half	9                               # 0x9
	.half	2                               # 0x2
	.half	11                              # 0xb
	.half	1                               # 0x1
	.half	13                              # 0xd
	.half	0                               # 0x0
	.half	15                              # 0xf
	.text
	.globl	IntraChromaPrediction
	.p2align	5
	.type	IntraChromaPrediction,@function
IntraChromaPrediction:                  # @IntraChromaPrediction
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1072
	st.d	$ra, $sp, 1064                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1016                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1008                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1000                  # 8-byte Folded Spill
	st.d	$s7, $sp, 992                   # 8-byte Folded Spill
	st.d	$s8, $sp, 984                   # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$s7, $a3, %got_pc_lo12(img)
	ld.d	$a3, $s7, 0
	ldptr.d	$a4, $a3, 14224
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s0, $a3, 12
	lu12i.w	$a5, 3
	ori	$a4, $a5, 3256
	ldx.wu	$s8, $a3, $a4
	ori	$a4, $a5, 3260
	ldx.wu	$a6, $a3, $a4
	ori	$a4, $a5, 3248
	ldx.w	$a3, $a3, $a4
	st.d	$a3, $sp, 448                   # 8-byte Folded Spill
	st.d	$a2, $sp, 480                   # 8-byte Folded Spill
	move	$s6, $a1
	move	$s2, $a0
	st.d	$a6, $sp, 344                   # 8-byte Folded Spill
	addi.w	$a0, $a6, 0
	pcalau12i	$fp, %pc_hi20(getNeighbour)
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	bltz	$a0, .LBB17_3
# %bb.1:                                # %for.body.preheader
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bstrpick.d	$s1, $a0, 31, 0
	addi.w	$s3, $zero, -1
	addi.d	$s4, $sp, 488
	move	$s5, $s3
	.p2align	4, , 16
.LBB17_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	ori	$a3, $zero, 1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s5
	move	$a4, $s4
	jirl	$ra, $a5, 0
	addi.w	$s5, $s5, 1
	addi.d	$s1, $s1, -1
	addi.d	$s4, $s4, 24
	bnez	$s1, .LBB17_2
.LBB17_3:                               # %for.end
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 896
	move	$a0, $s0
	move	$a1, $zero
	jirl	$ra, $a5, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.w	$a2, $sp, 896
	ld.w	$a1, $a0, 272
	ld.w	$a0, $sp, 488
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	beqz	$a1, .LBB17_6
# %bb.4:                                # %if.then
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	srai.d	$a1, $s4, 1
	beqz	$a2, .LBB17_7
# %bb.5:                                # %cond.true
	ld.d	$a2, $s7, 0
	ld.w	$a3, $sp, 900
	ldptr.d	$a2, $a2, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a2, $a2, $a3
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	b	.LBB17_8
.LBB17_6:
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	ld.w	$s3, $sp, 512
	move	$s5, $s3
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	move	$t0, $s8
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	bnez	$s2, .LBB17_20
	b	.LBB17_21
.LBB17_7:
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
.LBB17_8:                               # %cond.end
	move	$t0, $s8
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	ori	$s3, $zero, 1
	ori	$s5, $zero, 1
	blt	$a1, $s3, .LBB17_13
# %bb.9:                                # %for.body18.lr.ph
	ld.d	$a2, $s7, 0
	ori	$s5, $zero, 1
	addi.d	$a3, $sp, 516
	move	$a4, $a1
	b	.LBB17_11
	.p2align	4, , 16
.LBB17_10:                              # %cond.true24
                                        #   in Loop: Header=BB17_11 Depth=1
	ld.w	$a5, $a3, 0
	ldptr.d	$a6, $a2, 14240
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a6, $a5
	and	$s5, $a5, $s5
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 24
	beqz	$a4, .LBB17_13
.LBB17_11:                              # %for.body18
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -4
	bnez	$a5, .LBB17_10
# %bb.12:                               #   in Loop: Header=BB17_11 Depth=1
	move	$a5, $zero
	and	$s5, $a5, $s5
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 24
	bnez	$a4, .LBB17_11
.LBB17_13:                              # %for.cond41.preheader
	blt	$s4, $s3, .LBB17_18
# %bb.14:                               # %for.body43.lr.ph
	ld.d	$a2, $s7, 0
	bstrpick.d	$a3, $a1, 31, 0
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 3
	addi.d	$a4, $sp, 488
	add.d	$a3, $a3, $a4
	addi.d	$a3, $a3, 28
	ori	$s3, $zero, 1
	b	.LBB17_16
	.p2align	4, , 16
.LBB17_15:                              #   in Loop: Header=BB17_16 Depth=1
	move	$a4, $zero
	and	$s3, $a4, $s3
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, 24
	bge	$a1, $s4, .LBB17_18
.LBB17_16:                              # %for.body43
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, -4
	beqz	$a4, .LBB17_15
# %bb.17:                               # %cond.true49
                                        #   in Loop: Header=BB17_16 Depth=1
	ld.w	$a4, $a3, 0
	ldptr.d	$a5, $a2, 14240
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a5, $a4
	and	$s3, $a4, $s3
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, 24
	blt	$a1, $s4, .LBB17_16
.LBB17_18:                              # %for.end64
	beqz	$a0, .LBB17_210
# %bb.19:                               # %cond.true68
	ld.d	$a0, $s7, 0
	ld.w	$a1, $sp, 492
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	beqz	$s2, .LBB17_21
.LBB17_20:                              # %if.then78
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a1, $s2, 0
.LBB17_21:                              # %if.end79
	addi.w	$a1, $a2, -1
	beqz	$s6, .LBB17_23
# %bb.22:                               # %if.then81
	sltu	$a2, $zero, $s5
	sltu	$a3, $zero, $s3
	and	$a2, $a2, $a3
	st.w	$a2, $s6, 0
.LBB17_23:                              # %if.end86
	addi.w	$ra, $t0, 0
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	beqz	$a4, .LBB17_25
# %bb.24:                               # %if.then88
	st.w	$a0, $a4, 0
.LBB17_25:                              # %if.end89
	move	$t7, $zero
	sltu	$a2, $zero, $s5
	sltu	$a3, $zero, $s3
	and	$a2, $a2, $a3
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	sltu	$t2, $zero, $a0
	srai.d	$t3, $ra, 1
	addi.d	$t4, $sp, 952
	alsl.d	$a0, $ra, $t4, 1
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a0, $t3, -1
	srai.d	$t5, $s4, 1
	addi.d	$t6, $sp, 920
	alsl.d	$a2, $s4, $t6, 1
	addi.d	$a2, $a2, -2
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a2, $t5, -1
	addi.d	$a3, $ra, -8
	sltui	$a3, $a3, 1
	ori	$a4, $zero, 5
	masknez	$a5, $a4, $a3
	ori	$a6, $zero, 17
	maskeqz	$a7, $a6, $a3
	or	$a5, $a7, $a5
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	ori	$a5, $zero, 6
	sub.d	$a3, $a5, $a3
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a3, $s4, -8
	sltui	$a3, $a3, 1
	masknez	$a4, $a4, $a3
	maskeqz	$a6, $a6, $a3
	or	$a4, $a6, $a4
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	sub.d	$a3, $a5, $a3
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$a3, $a0, 31, 0
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	bstrpick.d	$a3, $a2, 31, 0
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	bstrpick.d	$a3, $t1, 31, 1
	slli.d	$a3, $a3, 1
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	bstrpick.d	$a3, $t1, 31, 4
	slli.d	$a4, $a3, 4
	addi.w	$a3, $zero, -8
	lu32i.d	$a3, 0
	and	$a5, $t1, $a3
	and	$a0, $a0, $a3
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	and	$a0, $a2, $a3
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	bstrpick.d	$a0, $t0, 30, 3
	slli.d	$a3, $a0, 3
	xvreplgr2vr.w	$xr9, $t3
	slli.d	$a0, $a1, 5
	addi.d	$a0, $a0, 3
	pcalau12i	$a2, %pc_hi20(subblk_offset_y)
	addi.d	$a2, $a2, %pc_lo12(subblk_offset_y)
	add.d	$a2, $a2, $a0
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(subblk_offset_x)
	addi.d	$a2, $a2, %pc_lo12(subblk_offset_x)
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 6
	pcalau12i	$a1, %pc_hi20(IntraChromaPrediction.block_pos)
	addi.d	$a1, $a1, %pc_lo12(IntraChromaPrediction.block_pos)
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -2
	and	$a1, $ra, $a0
	add.d	$a1, $a1, $t4
	addi.d	$a2, $a1, -18
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a2, $a1, 8
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -4
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	and	$a0, $s4, $a0
	add.d	$a0, $a0, $t6
	addi.d	$a1, $a0, -18
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	vrepli.b	$vr10, 0
	sltu	$a0, $zero, $s2
	slli.d	$s0, $ra, 1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	and	$a0, $a0, $t2
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	slli.d	$a0, $s4, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	alsl.w	$a0, $t5, $t5, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	andi	$a0, $t1, 8
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $a5
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$t5, $sp, 416                   # 8-byte Folded Spill
	sub.d	$a1, $a0, $t5
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$t3, $sp, 216                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $t3
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3228
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 336
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ori	$s6, $zero, 3
	addi.d	$s1, $sp, 488
	ori	$a1, $zero, 1
	st.d	$ra, $sp, 480                   # 8-byte Folded Spill
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	st.d	$a5, $sp, 368                   # 8-byte Folded Spill
	st.d	$a3, $sp, 360                   # 8-byte Folded Spill
	xvst	$xr9, $sp, 304                  # 32-byte Folded Spill
	vst	$vr10, $sp, 256                 # 16-byte Folded Spill
	b	.LBB17_27
	.p2align	4, , 16
.LBB17_26:                              # %for.inc632
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$t7, $zero, 1
	move	$a1, $zero
	beqz	$a0, .LBB17_178
.LBB17_27:                              # %for.body92
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_35 Depth 2
                                        #     Child Loop BB17_117 Depth 2
                                        #     Child Loop BB17_128 Depth 2
                                        #     Child Loop BB17_131 Depth 2
                                        #     Child Loop BB17_135 Depth 2
                                        #       Child Loop BB17_143 Depth 3
                                        #       Child Loop BB17_140 Depth 3
                                        #       Child Loop BB17_147 Depth 3
                                        #     Child Loop BB17_154 Depth 2
                                        #     Child Loop BB17_157 Depth 2
                                        #     Child Loop BB17_164 Depth 2
                                        #     Child Loop BB17_167 Depth 2
                                        #     Child Loop BB17_171 Depth 2
                                        #       Child Loop BB17_174 Depth 3
                                        #       Child Loop BB17_177 Depth 3
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s7, 0
	ldptr.d	$a0, $a0, 6472
	ldptr.w	$a1, $a2, 15528
	st.d	$t7, $sp, 424                   # 8-byte Folded Spill
	slli.d	$a3, $t7, 3
	ldx.d	$fp, $a0, $a3
	srai.d	$a0, $a1, 1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB17_114
# %bb.28:                               # %for.cond99.preheader.lr.ph
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 11
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	b	.LBB17_35
	.p2align	4, , 16
.LBB17_29:                              # %sw.bb242.3
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s3, .LBB17_45
.LBB17_30:                              # %if.then290.3
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$a6, $t0, 4
	alsl.d	$a6, $t0, $a6, 3
	add.d	$a6, $a6, $s1
	ld.w	$a7, $a6, 44
	ld.w	$t2, $a6, 40
	ld.w	$t3, $a6, 68
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $fp, $a7
	slli.d	$t2, $t2, 1
	slli.d	$t3, $t3, 3
	ld.w	$t4, $a6, 64
	ldx.d	$t3, $fp, $t3
	ldx.hu	$a7, $a7, $t2
	ld.w	$t2, $a6, 92
	slli.d	$t4, $t4, 1
	ldx.hu	$t3, $t3, $t4
	ld.w	$t4, $a6, 116
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $fp, $t2
	ld.w	$t5, $a6, 88
	slli.d	$t4, $t4, 3
	ld.w	$a6, $a6, 112
	ldx.d	$t4, $fp, $t4
	slli.d	$t5, $t5, 1
	ldx.hu	$t2, $t2, $t5
	slli.d	$a6, $a6, 1
	ldx.hu	$a6, $t4, $a6
	add.d	$a7, $a7, $t3
	add.d	$a7, $a7, $t2
.LBB17_31:                              # %sw.epilog.3
                                        #   in Loop: Header=BB17_35 Depth=2
	add.d	$a6, $a7, $a6
.LBB17_32:                              # %sw.epilog.3
                                        #   in Loop: Header=BB17_35 Depth=2
	addi.d	$a6, $a6, 2
.LBB17_33:                              # %sw.epilog.3
                                        #   in Loop: Header=BB17_35 Depth=2
	srli.d	$t2, $a6, 2
.LBB17_34:                              # %sw.epilog.3
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$a6, $t0, 5
	add.d	$a6, $a2, $a6
	slli.d	$a7, $t1, 1
	stx.h	$t2, $a6, $a7
	addi.d	$t0, $a7, 2
	stx.h	$t2, $a6, $t0
	addi.d	$t1, $a7, 4
	stx.h	$t2, $a6, $t1
	addi.d	$t3, $a7, 6
	stx.h	$t2, $a6, $t3
	addi.d	$t4, $a6, 32
	stx.h	$t2, $t4, $a7
	stx.h	$t2, $t4, $t0
	stx.h	$t2, $t4, $t1
	stx.h	$t2, $t4, $t3
	addi.d	$t4, $a6, 64
	stx.h	$t2, $t4, $a7
	stx.h	$t2, $t4, $t0
	stx.h	$t2, $t4, $t1
	stx.h	$t2, $t4, $t3
	addi.d	$a6, $a6, 96
	stx.h	$t2, $a6, $a7
	stx.h	$t2, $a6, $t0
	stx.h	$t2, $a6, $t1
	stx.h	$t2, $a6, $t3
	addi.d	$a0, $a0, -1
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 16
	beqz	$a0, .LBB17_114
.LBB17_35:                              # %for.cond99.preheader
                                        #   Parent Loop BB17_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $sp, 916
	ld.w	$a6, $sp, 912
	ld.bu	$t0, $a5, -3
	ld.w	$t3, $a3, -8
	ld.bu	$t1, $a4, -3
	alsl.d	$a7, $a7, $fp, 3
	move	$t2, $a1
	bltu	$s6, $t3, .LBB17_57
# %bb.36:                               # %for.cond99.preheader
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t2, $t3, 2
	pcalau12i	$t3, %pc_hi20(.LJTI17_0)
	addi.d	$t3, $t3, %pc_lo12(.LJTI17_0)
	ldx.w	$t2, $t3, $t2
	add.d	$t2, $t3, $t2
	jr	$t2
.LBB17_37:                              # %sw.bb
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s2, .LBB17_47
# %bb.38:                               # %for.cond124.preheader
                                        #   in Loop: Header=BB17_35 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	bnez	$s5, .LBB17_49
	b	.LBB17_55
	.p2align	4, , 16
.LBB17_39:                              # %sw.bb242
                                        #   in Loop: Header=BB17_35 Depth=2
	bnez	$s3, .LBB17_53
# %bb.40:                               # %if.else266
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	bnez	$s2, .LBB17_44
	b	.LBB17_57
	.p2align	4, , 16
.LBB17_41:                              # %sw.bb300
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s2, .LBB17_46
# %bb.42:                               # %for.cond303.preheader
                                        #   in Loop: Header=BB17_35 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	bnez	$s3, .LBB17_49
	b	.LBB17_55
.LBB17_43:                              # %sw.bb184
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s2, .LBB17_52
.LBB17_44:                              # %if.then231
                                        #   in Loop: Header=BB17_35 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	b	.LBB17_54
.LBB17_45:                              # %if.else266.3
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	bnez	$s2, .LBB17_106
	b	.LBB17_34
.LBB17_46:                              # %if.end320.thread
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	bnez	$s3, .LBB17_48
	b	.LBB17_57
.LBB17_47:                              # %if.end139.thread
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_57
.LBB17_48:                              #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $zero
.LBB17_49:                              # %for.cond143.preheader
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t3, $t0, 4
	alsl.d	$t3, $t0, $t3, 3
	add.d	$t3, $t3, $s1
	ld.w	$t4, $t3, 44
	ld.w	$t5, $t3, 40
	ld.w	$t6, $t3, 68
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $fp, $t4
	slli.d	$t5, $t5, 1
	slli.d	$t6, $t6, 3
	ld.w	$t7, $t3, 64
	ldx.d	$t6, $fp, $t6
	ldx.hu	$t4, $t4, $t5
	ld.w	$t5, $t3, 92
	slli.d	$t7, $t7, 1
	ldx.hu	$t6, $t6, $t7
	ld.w	$t7, $t3, 116
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $fp, $t5
	ld.w	$t8, $t3, 88
	slli.d	$t7, $t7, 3
	ld.w	$t3, $t3, 112
	ldx.d	$t7, $fp, $t7
	slli.d	$t8, $t8, 1
	ldx.hu	$t5, $t5, $t8
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $t7, $t3
	add.d	$t4, $t4, $t6
	add.d	$t4, $t4, $t5
	add.d	$t3, $t4, $t3
	beqz	$s2, .LBB17_51
# %bb.50:                               # %if.then167
                                        #   in Loop: Header=BB17_35 Depth=2
	add.d	$t2, $t2, $t3
	addi.d	$t2, $t2, 4
	srli.d	$t2, $t2, 3
	b	.LBB17_57
.LBB17_51:                              # %if.then361
                                        #   in Loop: Header=BB17_35 Depth=2
	addi.d	$t2, $t3, 2
	b	.LBB17_56
.LBB17_52:                              # %if.else204
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_57
.LBB17_53:                              # %if.then237
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t2, $t0, 4
	alsl.d	$t2, $t0, $t2, 3
	add.d	$t2, $t2, $s1
	ld.w	$t3, $t2, 44
	ld.w	$t4, $t2, 40
	ld.w	$t5, $t2, 68
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $fp, $t3
	slli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 3
	ld.w	$t6, $t2, 64
	ldx.d	$t5, $fp, $t5
	ldx.hu	$t3, $t3, $t4
	ld.w	$t4, $t2, 92
	slli.d	$t6, $t6, 1
	ldx.hu	$t5, $t5, $t6
	ld.w	$t6, $t2, 116
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $fp, $t4
	ld.w	$t7, $t2, 88
	slli.d	$t6, $t6, 3
	ld.w	$t2, $t2, 112
	ldx.d	$t6, $fp, $t6
	slli.d	$t7, $t7, 1
	ldx.hu	$t4, $t4, $t7
	slli.d	$t2, $t2, 1
	ldx.hu	$t2, $t6, $t2
	add.d	$t3, $t3, $t5
	add.d	$t3, $t3, $t4
.LBB17_54:                              # %sw.epilog
                                        #   in Loop: Header=BB17_35 Depth=2
	add.d	$t2, $t3, $t2
.LBB17_55:                              # %sw.epilog
                                        #   in Loop: Header=BB17_35 Depth=2
	addi.d	$t2, $t2, 2
.LBB17_56:                              # %sw.epilog
                                        #   in Loop: Header=BB17_35 Depth=2
	srli.d	$t2, $t2, 2
.LBB17_57:                              # %sw.epilog
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t0, $t0, 5
	add.d	$t0, $a2, $t0
	slli.d	$t1, $t1, 1
	stx.h	$t2, $t0, $t1
	addi.d	$t3, $t1, 2
	stx.h	$t2, $t0, $t3
	addi.d	$t4, $t1, 4
	stx.h	$t2, $t0, $t4
	addi.d	$t5, $t1, 6
	stx.h	$t2, $t0, $t5
	addi.d	$t6, $t0, 32
	stx.h	$t2, $t6, $t1
	stx.h	$t2, $t6, $t3
	stx.h	$t2, $t6, $t4
	stx.h	$t2, $t6, $t5
	addi.d	$t6, $t0, 64
	stx.h	$t2, $t6, $t1
	stx.h	$t2, $t6, $t3
	stx.h	$t2, $t6, $t4
	stx.h	$t2, $t6, $t5
	addi.d	$t0, $t0, 96
	stx.h	$t2, $t0, $t1
	stx.h	$t2, $t0, $t3
	stx.h	$t2, $t0, $t4
	stx.h	$t2, $t0, $t5
	ld.bu	$t0, $a5, -2
	ld.w	$t3, $a3, -4
	ld.bu	$t1, $a4, -2
	move	$t2, $a1
	bltu	$s6, $t3, .LBB17_78
# %bb.58:                               # %sw.epilog
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t2, $t3, 2
	pcalau12i	$t3, %pc_hi20(.LJTI17_1)
	addi.d	$t3, $t3, %pc_lo12(.LJTI17_1)
	ldx.w	$t2, $t3, $t2
	add.d	$t2, $t3, $t2
	jr	$t2
.LBB17_59:                              # %sw.bb.1
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s2, .LBB17_68
# %bb.60:                               # %for.cond124.preheader.1
                                        #   in Loop: Header=BB17_35 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	bnez	$s5, .LBB17_70
	b	.LBB17_76
	.p2align	4, , 16
.LBB17_61:                              # %sw.bb242.1
                                        #   in Loop: Header=BB17_35 Depth=2
	bnez	$s3, .LBB17_74
# %bb.62:                               # %if.else266.1
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	bnez	$s2, .LBB17_66
	b	.LBB17_78
	.p2align	4, , 16
.LBB17_63:                              # %sw.bb300.1
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s2, .LBB17_67
# %bb.64:                               # %for.cond303.preheader.1
                                        #   in Loop: Header=BB17_35 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	bnez	$s3, .LBB17_70
	b	.LBB17_76
.LBB17_65:                              # %sw.bb184.1
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s2, .LBB17_73
.LBB17_66:                              # %if.then295.1
                                        #   in Loop: Header=BB17_35 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	b	.LBB17_75
.LBB17_67:                              # %if.end320.thread.1
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	bnez	$s3, .LBB17_69
	b	.LBB17_78
.LBB17_68:                              # %if.end139.thread.1
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_78
.LBB17_69:                              #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $zero
.LBB17_70:                              # %for.cond324.preheader.1
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t3, $t0, 4
	alsl.d	$t3, $t0, $t3, 3
	add.d	$t3, $t3, $s1
	ld.w	$t4, $t3, 44
	ld.w	$t5, $t3, 40
	ld.w	$t6, $t3, 68
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $fp, $t4
	slli.d	$t5, $t5, 1
	slli.d	$t6, $t6, 3
	ld.w	$t7, $t3, 64
	ldx.d	$t6, $fp, $t6
	ldx.hu	$t4, $t4, $t5
	ld.w	$t5, $t3, 92
	slli.d	$t7, $t7, 1
	ldx.hu	$t6, $t6, $t7
	ld.w	$t7, $t3, 116
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $fp, $t5
	ld.w	$t8, $t3, 88
	slli.d	$t7, $t7, 3
	ld.w	$t3, $t3, 112
	ldx.d	$t7, $fp, $t7
	slli.d	$t8, $t8, 1
	ldx.hu	$t5, $t5, $t8
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $t7, $t3
	add.d	$t4, $t4, $t6
	add.d	$t4, $t4, $t5
	add.d	$t3, $t4, $t3
	beqz	$s2, .LBB17_72
# %bb.71:                               # %if.then349.1
                                        #   in Loop: Header=BB17_35 Depth=2
	add.d	$t2, $t2, $t3
	addi.d	$t2, $t2, 4
	srli.d	$t2, $t2, 3
	b	.LBB17_78
.LBB17_72:                              # %if.then178.1
                                        #   in Loop: Header=BB17_35 Depth=2
	addi.d	$t2, $t3, 2
	b	.LBB17_77
.LBB17_73:                              # %if.else204.1
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_78
.LBB17_74:                              # %if.then290.1
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t2, $t0, 4
	alsl.d	$t2, $t0, $t2, 3
	add.d	$t2, $t2, $s1
	ld.w	$t3, $t2, 44
	ld.w	$t4, $t2, 40
	ld.w	$t5, $t2, 68
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $fp, $t3
	slli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 3
	ld.w	$t6, $t2, 64
	ldx.d	$t5, $fp, $t5
	ldx.hu	$t3, $t3, $t4
	ld.w	$t4, $t2, 92
	slli.d	$t6, $t6, 1
	ldx.hu	$t5, $t5, $t6
	ld.w	$t6, $t2, 116
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $fp, $t4
	ld.w	$t7, $t2, 88
	slli.d	$t6, $t6, 3
	ld.w	$t2, $t2, 112
	ldx.d	$t6, $fp, $t6
	slli.d	$t7, $t7, 1
	ldx.hu	$t4, $t4, $t7
	slli.d	$t2, $t2, 1
	ldx.hu	$t2, $t6, $t2
	add.d	$t3, $t3, $t5
	add.d	$t3, $t3, $t4
.LBB17_75:                              # %sw.epilog.1
                                        #   in Loop: Header=BB17_35 Depth=2
	add.d	$t2, $t3, $t2
.LBB17_76:                              # %sw.epilog.1
                                        #   in Loop: Header=BB17_35 Depth=2
	addi.d	$t2, $t2, 2
.LBB17_77:                              # %sw.epilog.1
                                        #   in Loop: Header=BB17_35 Depth=2
	srli.d	$t2, $t2, 2
.LBB17_78:                              # %sw.epilog.1
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t0, $t0, 5
	add.d	$t0, $a2, $t0
	slli.d	$t1, $t1, 1
	stx.h	$t2, $t0, $t1
	addi.d	$t3, $t1, 2
	stx.h	$t2, $t0, $t3
	addi.d	$t4, $t1, 4
	stx.h	$t2, $t0, $t4
	addi.d	$t5, $t1, 6
	stx.h	$t2, $t0, $t5
	addi.d	$t6, $t0, 32
	stx.h	$t2, $t6, $t1
	stx.h	$t2, $t6, $t3
	stx.h	$t2, $t6, $t4
	stx.h	$t2, $t6, $t5
	addi.d	$t6, $t0, 64
	stx.h	$t2, $t6, $t1
	stx.h	$t2, $t6, $t3
	stx.h	$t2, $t6, $t4
	stx.h	$t2, $t6, $t5
	addi.d	$t0, $t0, 96
	stx.h	$t2, $t0, $t1
	stx.h	$t2, $t0, $t3
	stx.h	$t2, $t0, $t4
	stx.h	$t2, $t0, $t5
	ld.bu	$t0, $a5, -1
	ld.w	$t3, $a3, 0
	ld.bu	$t1, $a4, -1
	move	$t2, $a1
	bltu	$s6, $t3, .LBB17_99
# %bb.79:                               # %sw.epilog.1
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t2, $t3, 2
	pcalau12i	$t3, %pc_hi20(.LJTI17_2)
	addi.d	$t3, $t3, %pc_lo12(.LJTI17_2)
	ldx.w	$t2, $t3, $t2
	add.d	$t2, $t3, $t2
	jr	$t2
.LBB17_80:                              # %sw.bb.2
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s2, .LBB17_89
# %bb.81:                               # %for.cond124.preheader.2
                                        #   in Loop: Header=BB17_35 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	bnez	$s5, .LBB17_91
	b	.LBB17_97
	.p2align	4, , 16
.LBB17_82:                              # %sw.bb242.2
                                        #   in Loop: Header=BB17_35 Depth=2
	bnez	$s3, .LBB17_95
# %bb.83:                               # %if.else266.2
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	bnez	$s2, .LBB17_87
	b	.LBB17_99
	.p2align	4, , 16
.LBB17_84:                              # %sw.bb300.2
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s2, .LBB17_88
# %bb.85:                               # %for.cond303.preheader.2
                                        #   in Loop: Header=BB17_35 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	bnez	$s3, .LBB17_91
	b	.LBB17_97
.LBB17_86:                              # %sw.bb184.2
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s2, .LBB17_94
.LBB17_87:                              # %if.then295.2
                                        #   in Loop: Header=BB17_35 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	b	.LBB17_96
.LBB17_88:                              # %if.end320.thread.2
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	bnez	$s3, .LBB17_90
	b	.LBB17_99
.LBB17_89:                              # %if.end139.thread.2
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_99
.LBB17_90:                              #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $zero
.LBB17_91:                              # %for.cond324.preheader.2
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t3, $t0, 4
	alsl.d	$t3, $t0, $t3, 3
	add.d	$t3, $t3, $s1
	ld.w	$t4, $t3, 44
	ld.w	$t5, $t3, 40
	ld.w	$t6, $t3, 68
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $fp, $t4
	slli.d	$t5, $t5, 1
	slli.d	$t6, $t6, 3
	ld.w	$t7, $t3, 64
	ldx.d	$t6, $fp, $t6
	ldx.hu	$t4, $t4, $t5
	ld.w	$t5, $t3, 92
	slli.d	$t7, $t7, 1
	ldx.hu	$t6, $t6, $t7
	ld.w	$t7, $t3, 116
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $fp, $t5
	ld.w	$t8, $t3, 88
	slli.d	$t7, $t7, 3
	ld.w	$t3, $t3, 112
	ldx.d	$t7, $fp, $t7
	slli.d	$t8, $t8, 1
	ldx.hu	$t5, $t5, $t8
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $t7, $t3
	add.d	$t4, $t4, $t6
	add.d	$t4, $t4, $t5
	add.d	$t3, $t4, $t3
	beqz	$s2, .LBB17_93
# %bb.92:                               # %if.then349.2
                                        #   in Loop: Header=BB17_35 Depth=2
	add.d	$t2, $t2, $t3
	addi.d	$t2, $t2, 4
	srli.d	$t2, $t2, 3
	b	.LBB17_99
.LBB17_93:                              # %if.then178.2
                                        #   in Loop: Header=BB17_35 Depth=2
	addi.d	$t2, $t3, 2
	b	.LBB17_98
.LBB17_94:                              # %if.else204.2
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_99
.LBB17_95:                              # %if.then290.2
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t2, $t0, 4
	alsl.d	$t2, $t0, $t2, 3
	add.d	$t2, $t2, $s1
	ld.w	$t3, $t2, 44
	ld.w	$t4, $t2, 40
	ld.w	$t5, $t2, 68
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $fp, $t3
	slli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 3
	ld.w	$t6, $t2, 64
	ldx.d	$t5, $fp, $t5
	ldx.hu	$t3, $t3, $t4
	ld.w	$t4, $t2, 92
	slli.d	$t6, $t6, 1
	ldx.hu	$t5, $t5, $t6
	ld.w	$t6, $t2, 116
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $fp, $t4
	ld.w	$t7, $t2, 88
	slli.d	$t6, $t6, 3
	ld.w	$t2, $t2, 112
	ldx.d	$t6, $fp, $t6
	slli.d	$t7, $t7, 1
	ldx.hu	$t4, $t4, $t7
	slli.d	$t2, $t2, 1
	ldx.hu	$t2, $t6, $t2
	add.d	$t3, $t3, $t5
	add.d	$t3, $t3, $t4
.LBB17_96:                              # %sw.epilog.2
                                        #   in Loop: Header=BB17_35 Depth=2
	add.d	$t2, $t3, $t2
.LBB17_97:                              # %sw.epilog.2
                                        #   in Loop: Header=BB17_35 Depth=2
	addi.d	$t2, $t2, 2
.LBB17_98:                              # %sw.epilog.2
                                        #   in Loop: Header=BB17_35 Depth=2
	srli.d	$t2, $t2, 2
.LBB17_99:                              # %sw.epilog.2
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t0, $t0, 5
	add.d	$t0, $a2, $t0
	slli.d	$t1, $t1, 1
	stx.h	$t2, $t0, $t1
	addi.d	$t3, $t1, 2
	stx.h	$t2, $t0, $t3
	addi.d	$t4, $t1, 4
	stx.h	$t2, $t0, $t4
	addi.d	$t5, $t1, 6
	stx.h	$t2, $t0, $t5
	addi.d	$t6, $t0, 32
	stx.h	$t2, $t6, $t1
	stx.h	$t2, $t6, $t3
	stx.h	$t2, $t6, $t4
	stx.h	$t2, $t6, $t5
	addi.d	$t6, $t0, 64
	stx.h	$t2, $t6, $t1
	stx.h	$t2, $t6, $t3
	stx.h	$t2, $t6, $t4
	stx.h	$t2, $t6, $t5
	addi.d	$t0, $t0, 96
	stx.h	$t2, $t0, $t1
	stx.h	$t2, $t0, $t3
	stx.h	$t2, $t0, $t4
	stx.h	$t2, $t0, $t5
	ld.bu	$t0, $a5, 0
	ld.w	$t3, $a3, 4
	ld.bu	$t1, $a4, 0
	move	$t2, $a1
	bltu	$s6, $t3, .LBB17_34
# %bb.100:                              # %sw.epilog.2
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$t2, $t3, 2
	pcalau12i	$t3, %pc_hi20(.LJTI17_3)
	addi.d	$t3, $t3, %pc_lo12(.LJTI17_3)
	ldx.w	$t2, $t3, $t2
	add.d	$t2, $t3, $t2
	jr	$t2
.LBB17_101:                             # %sw.bb.3
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s2, .LBB17_108
# %bb.102:                              # %for.cond124.preheader.3
                                        #   in Loop: Header=BB17_35 Depth=2
	ld.d	$a7, $a7, 0
	alsl.d	$t2, $a6, $a7, 1
	slli.d	$t3, $t1, 1
	ldx.hu	$t2, $t2, $t3
	alsl.d	$a7, $t1, $a7, 1
	alsl.d	$a6, $a6, $a7, 1
	ld.hu	$a7, $a6, 2
	ld.hu	$t3, $a6, 4
	ld.hu	$a6, $a6, 6
	add.d	$a7, $t2, $a7
	add.d	$a7, $a7, $t3
	add.d	$a6, $a7, $a6
	bnez	$s5, .LBB17_110
	b	.LBB17_32
	.p2align	4, , 16
.LBB17_103:                             # %sw.bb300.3
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s2, .LBB17_107
# %bb.104:                              # %for.cond303.preheader.3
                                        #   in Loop: Header=BB17_35 Depth=2
	ld.d	$a7, $a7, 0
	alsl.d	$t2, $a6, $a7, 1
	slli.d	$t3, $t1, 1
	ldx.hu	$t2, $t2, $t3
	alsl.d	$a7, $t1, $a7, 1
	alsl.d	$a6, $a6, $a7, 1
	ld.hu	$a7, $a6, 2
	ld.hu	$t3, $a6, 4
	ld.hu	$a6, $a6, 6
	add.d	$a7, $t2, $a7
	add.d	$a7, $a7, $t3
	add.d	$a6, $a7, $a6
	bnez	$s3, .LBB17_110
	b	.LBB17_32
.LBB17_105:                             # %sw.bb184.3
                                        #   in Loop: Header=BB17_35 Depth=2
	beqz	$s2, .LBB17_113
.LBB17_106:                             # %if.then295.3
                                        #   in Loop: Header=BB17_35 Depth=2
	ld.d	$a7, $a7, 0
	alsl.d	$t2, $a6, $a7, 1
	slli.d	$t3, $t1, 1
	ldx.hu	$t2, $t2, $t3
	alsl.d	$a7, $t1, $a7, 1
	alsl.d	$a6, $a6, $a7, 1
	ld.hu	$a7, $a6, 2
	ld.hu	$t3, $a6, 4
	ld.hu	$a6, $a6, 6
	add.d	$a7, $t2, $a7
	add.d	$a7, $a7, $t3
	b	.LBB17_31
.LBB17_107:                             # %if.end320.thread.3
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	bnez	$s3, .LBB17_109
	b	.LBB17_34
.LBB17_108:                             # %if.end139.thread.3
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_34
.LBB17_109:                             #   in Loop: Header=BB17_35 Depth=2
	move	$a6, $zero
.LBB17_110:                             # %for.cond324.preheader.3
                                        #   in Loop: Header=BB17_35 Depth=2
	slli.d	$a7, $t0, 4
	alsl.d	$a7, $t0, $a7, 3
	add.d	$a7, $a7, $s1
	ld.w	$t2, $a7, 44
	ld.w	$t3, $a7, 40
	ld.w	$t4, $a7, 68
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $fp, $t2
	slli.d	$t3, $t3, 1
	slli.d	$t4, $t4, 3
	ld.w	$t5, $a7, 64
	ldx.d	$t4, $fp, $t4
	ldx.hu	$t2, $t2, $t3
	ld.w	$t3, $a7, 92
	slli.d	$t5, $t5, 1
	ldx.hu	$t4, $t4, $t5
	ld.w	$t5, $a7, 116
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $fp, $t3
	ld.w	$t6, $a7, 88
	slli.d	$t5, $t5, 3
	ld.w	$a7, $a7, 112
	ldx.d	$t5, $fp, $t5
	slli.d	$t6, $t6, 1
	ldx.hu	$t3, $t3, $t6
	slli.d	$a7, $a7, 1
	ldx.hu	$a7, $t5, $a7
	add.d	$t2, $t2, $t4
	add.d	$t2, $t2, $t3
	add.d	$a7, $t2, $a7
	beqz	$s2, .LBB17_112
# %bb.111:                              # %if.then349.3
                                        #   in Loop: Header=BB17_35 Depth=2
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 4
	srli.d	$t2, $a6, 3
	b	.LBB17_34
.LBB17_112:                             # %if.then178.3
                                        #   in Loop: Header=BB17_35 Depth=2
	addi.d	$a6, $a7, 2
	b	.LBB17_33
.LBB17_113:                             # %if.else204.3
                                        #   in Loop: Header=BB17_35 Depth=2
	move	$t2, $a1
	bnez	$s5, .LBB17_30
	b	.LBB17_34
	.p2align	4, , 16
.LBB17_114:                             # %for.end396
                                        #   in Loop: Header=BB17_27 Depth=1
	beqz	$s2, .LBB17_119
# %bb.115:                              # %if.then398
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.w	$a0, $sp, 916
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	ld.w	$a1, $sp, 912
	alsl.d	$a1, $a1, $a0, 1
	addi.d	$a0, $sp, 952
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB17_123
# %bb.116:                              # %for.body409.lr.ph
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 11
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1360
	add.d	$s2, $a0, $a1
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_117:                             # %for.body409
                                        #   Parent Loop BB17_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	add.d	$a0, $a0, $s2
	addi.d	$a1, $sp, 952
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 32
	bnez	$s4, .LBB17_117
# %bb.118:                              # %if.end423.thread732
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	addi.d	$t3, $sp, 920
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 360                   # 8-byte Folded Reload
	xvld	$xr9, $sp, 304                  # 32-byte Folded Reload
	vld	$vr10, $sp, 256                 # 16-byte Folded Reload
	beqz	$a0, .LBB17_26
	b	.LBB17_121
	.p2align	4, , 16
.LBB17_119:                             # %if.end423
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	addi.d	$t3, $sp, 920
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 360                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_26
# %bb.120:                              # %for.cond430.preheader
                                        #   in Loop: Header=BB17_27 Depth=1
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB17_124
.LBB17_121:                             # %for.body433.preheader
                                        #   in Loop: Header=BB17_27 Depth=1
	ori	$a0, $zero, 2
	bgeu	$s4, $a0, .LBB17_127
# %bb.122:                              #   in Loop: Header=BB17_27 Depth=1
	move	$a2, $zero
	move	$t1, $s8
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	b	.LBB17_130
	.p2align	4, , 16
.LBB17_123:                             # %if.end423.thread
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	addi.d	$t3, $sp, 920
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 360                   # 8-byte Folded Reload
	xvld	$xr9, $sp, 304                  # 32-byte Folded Reload
	vld	$vr10, $sp, 256                 # 16-byte Folded Reload
	beqz	$a0, .LBB17_26
.LBB17_124:                             # %for.cond451.preheader
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	blez	$ra, .LBB17_148
# %bb.125:                              # %for.cond455.preheader.lr.ph
                                        #   in Loop: Header=BB17_27 Depth=1
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB17_148
# %bb.126:                              #   in Loop: Header=BB17_27 Depth=1
	move	$t1, $s8
	b	.LBB17_133
.LBB17_127:                             # %vector.body819.preheader
                                        #   in Loop: Header=BB17_27 Depth=1
	addi.d	$a0, $sp, 556
	addi.d	$a1, $sp, 922
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_128:                             # %vector.body819
                                        #   Parent Loop BB17_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, -24
	ld.w	$a4, $a0, 0
	slli.d	$a3, $a3, 3
	slli.d	$a4, $a4, 3
	ld.w	$a5, $a0, -28
	ld.w	$a6, $a0, -4
	ldx.d	$a3, $fp, $a3
	ldx.d	$a4, $fp, $a4
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 1
	ldx.h	$a3, $a3, $a5
	ldx.h	$a4, $a4, $a6
	st.h	$a3, $a1, -2
	st.h	$a4, $a1, 0
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 48
	bnez	$a2, .LBB17_128
# %bb.129:                              # %middle.block822
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a0
	move	$t1, $s8
	beq	$a0, $t2, .LBB17_132
.LBB17_130:                             # %for.body433.preheader827
                                        #   in Loop: Header=BB17_27 Depth=1
	alsl.d	$a0, $a2, $t3, 1
	sub.d	$a1, $t2, $a2
	slli.d	$a3, $a2, 4
	alsl.d	$a2, $a2, $a3, 3
	addi.d	$a3, $sp, 532
	add.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB17_131:                             # %for.body433
                                        #   Parent Loop BB17_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	slli.d	$a3, $a3, 3
	ld.w	$a4, $a2, -4
	ldx.d	$a3, $fp, $a3
	slli.d	$a4, $a4, 1
	ldx.h	$a3, $a3, $a4
	st.h	$a3, $a0, 0
	addi.d	$a0, $a0, 2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 24
	bnez	$a1, .LBB17_131
.LBB17_132:                             # %for.cond451.preheader.thread
                                        #   in Loop: Header=BB17_27 Depth=1
	ori	$a0, $zero, 1
	blt	$ra, $a0, .LBB17_148
.LBB17_133:                             # %for.cond455.preheader.us.preheader
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 11
	add.d	$a0, $a0, $a1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 848
	add.d	$a0, $a0, $a1
	move	$a1, $zero
	addi.d	$a2, $a0, 256
	addi.d	$a3, $a0, 224
	b	.LBB17_135
	.p2align	4, , 16
.LBB17_134:                             # %for.cond455.for.inc472_crit_edge.us
                                        #   in Loop: Header=BB17_135 Depth=2
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, 2
	addi.d	$a0, $a0, 2
	beq	$a1, $t1, .LBB17_148
.LBB17_135:                             # %iter.check
                                        #   Parent Loop BB17_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_143 Depth 3
                                        #       Child Loop BB17_140 Depth 3
                                        #       Child Loop BB17_147 Depth 3
	ori	$a4, $zero, 8
	bgeu	$s4, $a4, .LBB17_137
# %bb.136:                              #   in Loop: Header=BB17_135 Depth=2
	move	$a6, $zero
	b	.LBB17_146
	.p2align	4, , 16
.LBB17_137:                             # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB17_135 Depth=2
	ori	$a4, $zero, 16
	bgeu	$s4, $a4, .LBB17_142
# %bb.138:                              #   in Loop: Header=BB17_135 Depth=2
	move	$a7, $zero
.LBB17_139:                             # %vec.epilog.ph
                                        #   in Loop: Header=BB17_135 Depth=2
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	add.d	$a4, $a4, $a7
	alsl.d	$a5, $a7, $t3, 1
	slli.d	$a6, $a7, 5
	move	$a7, $a3
	.p2align	4, , 16
.LBB17_140:                             # %vec.epilog.vector.body
                                        #   Parent Loop BB17_27 Depth=1
                                        #     Parent Loop BB17_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a5, 0
	add.d	$t0, $a7, $a6
	vstelm.h	$vr0, $t0, -224, 0
	vstelm.h	$vr0, $t0, -192, 1
	vstelm.h	$vr0, $t0, -160, 2
	vstelm.h	$vr0, $t0, -128, 3
	vstelm.h	$vr0, $t0, -96, 4
	vstelm.h	$vr0, $t0, -64, 5
	vstelm.h	$vr0, $t0, -32, 6
	vstelm.h	$vr0, $t0, 0, 7
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 16
	addi.d	$a7, $a7, 256
	bnez	$a4, .LBB17_140
# %bb.141:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB17_135 Depth=2
	move	$a6, $t5
	beq	$t5, $t2, .LBB17_134
	b	.LBB17_146
	.p2align	4, , 16
.LBB17_142:                             # %vector.body801.preheader
                                        #   in Loop: Header=BB17_135 Depth=2
	addi.d	$a4, $sp, 920
	move	$a5, $a2
	move	$a6, $t4
	.p2align	4, , 16
.LBB17_143:                             # %vector.body801
                                        #   Parent Loop BB17_27 Depth=1
                                        #     Parent Loop BB17_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a4, 0
	xvstelm.h	$xr0, $a5, -256, 0
	xvstelm.h	$xr0, $a5, -224, 1
	xvstelm.h	$xr0, $a5, -192, 2
	xvstelm.h	$xr0, $a5, -160, 3
	xvstelm.h	$xr0, $a5, -128, 4
	xvstelm.h	$xr0, $a5, -96, 5
	xvstelm.h	$xr0, $a5, -64, 6
	xvstelm.h	$xr0, $a5, -32, 7
	xvstelm.h	$xr0, $a5, 0, 8
	xvstelm.h	$xr0, $a5, 32, 9
	xvstelm.h	$xr0, $a5, 64, 10
	xvstelm.h	$xr0, $a5, 96, 11
	xvstelm.h	$xr0, $a5, 128, 12
	xvstelm.h	$xr0, $a5, 160, 13
	xvstelm.h	$xr0, $a5, 192, 14
	xvstelm.h	$xr0, $a5, 224, 15
	addi.d	$a6, $a6, -16
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 512
	bnez	$a6, .LBB17_143
# %bb.144:                              # %middle.block805
                                        #   in Loop: Header=BB17_135 Depth=2
	beq	$t4, $t2, .LBB17_134
# %bb.145:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB17_135 Depth=2
	move	$a7, $t4
	move	$a6, $t4
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	bnez	$a4, .LBB17_139
	.p2align	4, , 16
.LBB17_146:                             # %for.body458.us.preheader
                                        #   in Loop: Header=BB17_135 Depth=2
	alsl.d	$a4, $a6, $t3, 1
	slli.d	$a5, $a6, 5
	add.d	$a5, $a0, $a5
	sub.d	$a6, $t2, $a6
	.p2align	4, , 16
.LBB17_147:                             # %for.body458.us
                                        #   Parent Loop BB17_27 Depth=1
                                        #     Parent Loop BB17_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a7, $a4, 0
	st.h	$a7, $a5, 0
	addi.d	$a4, $a4, 2
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB17_147
	b	.LBB17_134
	.p2align	4, , 16
.LBB17_148:                             # %if.end475
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_26
# %bb.149:                              # %if.then485
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.w	$a0, $sp, 508
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 504
	ldx.d	$a2, $fp, $a0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a4, $a2, $a1
	sub.d	$a1, $a0, $a4
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $t0
	pcalau12i	$a2, %pc_hi20(.LCPI17_1)
	ori	$a3, $zero, 2
	blt	$t0, $a3, .LBB17_152
# %bb.150:                              # %for.body507.preheader
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	ori	$a3, $zero, 9
	bgeu	$t0, $a3, .LBB17_153
# %bb.151:                              #   in Loop: Header=BB17_27 Depth=1
	move	$a7, $zero
	b	.LBB17_156
.LBB17_152:                             #   in Loop: Header=BB17_27 Depth=1
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	b	.LBB17_158
.LBB17_153:                             # %vector.ph772
                                        #   in Loop: Header=BB17_27 Depth=1
	pcalau12i	$a3, %pc_hi20(.LCPI17_0)
	xvld	$xr1, $a3, %pc_lo12(.LCPI17_0)
	vori.b	$vr0, $vr10, 0
	vinsgr2vr.w	$vr0, $a1, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	vori.b	$vr2, $vr10, 0
	.p2align	4, , 16
.LBB17_154:                             # %vector.body775
                                        #   Parent Loop BB17_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a1, -8
	ld.d	$a7, $a1, 0
	vinsgr2vr.d	$vr3, $a6, 0
	ld.d	$a6, $a3, 8
	vinsgr2vr.d	$vr4, $a7, 0
	ld.d	$a7, $a3, 0
	vld	$vr5, $a2, %pc_lo12(.LCPI17_1)
	vinsgr2vr.d	$vr6, $a6, 0
	vilvl.h	$vr3, $vr10, $vr3
	vilvl.h	$vr4, $vr10, $vr4
	vinsgr2vr.d	$vr7, $a7, 0
	vori.b	$vr8, $vr5, 0
	vshuf.h	$vr8, $vr10, $vr6
	vshuf.h	$vr5, $vr10, $vr7
	vsub.w	$vr3, $vr3, $vr8
	vsub.w	$vr4, $vr4, $vr5
	xvpickve2gr.d	$a6, $xr1, 0
	vinsgr2vr.w	$vr5, $a6, 0
	xvpickve2gr.d	$a6, $xr1, 1
	vinsgr2vr.w	$vr5, $a6, 1
	xvpickve2gr.d	$a6, $xr1, 2
	vinsgr2vr.w	$vr5, $a6, 2
	xvpickve2gr.d	$a6, $xr1, 3
	vinsgr2vr.w	$vr5, $a6, 3
	vaddi.wu	$vr6, $vr5, 1
	vaddi.wu	$vr5, $vr5, 5
	vmadd.w	$vr0, $vr3, $vr6
	vmadd.w	$vr2, $vr4, $vr5
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB17_154
# %bb.155:                              # %middle.block789
                                        #   in Loop: Header=BB17_27 Depth=1
	vadd.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	move	$a7, $a5
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	beq	$a5, $a3, .LBB17_158
.LBB17_156:                             # %for.body507.preheader826
                                        #   in Loop: Header=BB17_27 Depth=1
	slli.d	$a3, $a7, 1
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a3, $a5, $a3
	add.d	$a5, $t0, $a7
	addi.d	$a6, $sp, 952
	alsl.d	$a5, $a5, $a6, 1
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a6, $a6, $a7
	addi.d	$a7, $a7, 1
	.p2align	4, , 16
.LBB17_157:                             # %for.body507
                                        #   Parent Loop BB17_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t0, $a5, 0
	ld.hu	$t1, $a3, 0
	sub.d	$t0, $t0, $t1
	mul.d	$t0, $t0, $a7
	add.d	$a1, $t0, $a1
	addi.d	$a3, $a3, -2
	addi.d	$a5, $a5, 2
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	bnez	$a6, .LBB17_157
.LBB17_158:                             # %for.end525
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.hu	$a3, $a3, 0
	sub.d	$a4, $a3, $a4
	ori	$a5, $zero, 2
	blt	$t2, $a5, .LBB17_161
# %bb.159:                              # %for.body547.preheader
                                        #   in Loop: Header=BB17_27 Depth=1
	mul.d	$a4, $a4, $t2
	ori	$a5, $zero, 9
	bgeu	$t2, $a5, .LBB17_163
# %bb.160:                              #   in Loop: Header=BB17_27 Depth=1
	move	$a7, $zero
	b	.LBB17_166
.LBB17_161:                             # %for.end565
                                        #   in Loop: Header=BB17_27 Depth=1
	ori	$a2, $zero, 1
	blt	$s4, $a2, .LBB17_26
# %bb.162:                              #   in Loop: Header=BB17_27 Depth=1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	mul.d	$a2, $a4, $a2
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 6
	ori	$a4, $zero, 1
	bge	$ra, $a4, .LBB17_169
	b	.LBB17_26
.LBB17_163:                             # %vector.ph754
                                        #   in Loop: Header=BB17_27 Depth=1
	pcalau12i	$a5, %pc_hi20(.LCPI17_0)
	xvld	$xr1, $a5, %pc_lo12(.LCPI17_0)
	vori.b	$vr0, $vr10, 0
	vinsgr2vr.w	$vr0, $a4, 0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	vori.b	$vr2, $vr10, 0
	.p2align	4, , 16
.LBB17_164:                             # %vector.body757
                                        #   Parent Loop BB17_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a4, -8
	ld.d	$t0, $a4, 0
	vinsgr2vr.d	$vr3, $a7, 0
	ld.d	$a7, $a5, 8
	vinsgr2vr.d	$vr4, $t0, 0
	ld.d	$t0, $a5, 0
	vld	$vr5, $a2, %pc_lo12(.LCPI17_1)
	vinsgr2vr.d	$vr6, $a7, 0
	vilvl.h	$vr3, $vr10, $vr3
	vilvl.h	$vr4, $vr10, $vr4
	vinsgr2vr.d	$vr7, $t0, 0
	vori.b	$vr8, $vr5, 0
	vshuf.h	$vr8, $vr10, $vr6
	vshuf.h	$vr5, $vr10, $vr7
	vsub.w	$vr3, $vr3, $vr8
	vsub.w	$vr4, $vr4, $vr5
	xvpickve2gr.d	$a7, $xr1, 0
	vinsgr2vr.w	$vr5, $a7, 0
	xvpickve2gr.d	$a7, $xr1, 1
	vinsgr2vr.w	$vr5, $a7, 1
	xvpickve2gr.d	$a7, $xr1, 2
	vinsgr2vr.w	$vr5, $a7, 2
	xvpickve2gr.d	$a7, $xr1, 3
	vinsgr2vr.w	$vr5, $a7, 3
	vaddi.wu	$vr6, $vr5, 1
	vaddi.wu	$vr5, $vr5, 5
	vmadd.w	$vr0, $vr3, $vr6
	vmadd.w	$vr2, $vr4, $vr5
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 16
	bnez	$a6, .LBB17_164
# %bb.165:                              # %middle.block767
                                        #   in Loop: Header=BB17_27 Depth=1
	vadd.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	move	$a7, $a5
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	beq	$a5, $a2, .LBB17_168
.LBB17_166:                             # %for.body547.preheader825
                                        #   in Loop: Header=BB17_27 Depth=1
	slli.d	$a2, $a7, 1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a2, $a5, $a2
	add.d	$a5, $t2, $a7
	alsl.d	$a5, $a5, $t3, 1
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a6, $a6, $a7
	addi.d	$a7, $a7, 1
	.p2align	4, , 16
.LBB17_167:                             # %for.body547
                                        #   Parent Loop BB17_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t0, $a5, 0
	ld.hu	$t1, $a2, 0
	sub.d	$t0, $t0, $t1
	mul.d	$t0, $t0, $a7
	add.d	$a4, $t0, $a4
	addi.d	$a2, $a2, -2
	addi.d	$a5, $a5, 2
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	bnez	$a6, .LBB17_167
.LBB17_168:                             # %for.end565.thread
                                        #   in Loop: Header=BB17_27 Depth=1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a2, $a4, $a2
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a4
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	sra.w	$a2, $a2, $a4
	ori	$a4, $zero, 1
	blt	$ra, $a4, .LBB17_26
.LBB17_169:                             # %for.cond600.preheader.lr.ph.split.us
                                        #   in Loop: Header=BB17_27 Depth=1
	move	$a4, $zero
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a5
	add.d	$a1, $a1, $s0
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	sra.w	$a1, $a1, $a5
	ld.d	$a5, $s7, 0
	add.d	$a0, $a3, $a0
	slli.d	$a6, $a0, 4
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 11
	add.d	$a0, $a5, $a0
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1872
	add.d	$a0, $a0, $a3
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3236
	ldx.w	$a3, $a5, $a3
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a5, $a5, $a2
	add.d	$a7, $a5, $a6
	addi.d	$a5, $a6, 16
	xvreplgr2vr.w	$xr0, $a1
	xvreplgr2vr.w	$xr1, $a3
	addi.d	$a6, $a7, 16
	b	.LBB17_171
	.p2align	4, , 16
.LBB17_170:                             # %for.cond600.for.inc628_crit_edge.us
                                        #   in Loop: Header=BB17_171 Depth=2
	addi.d	$a4, $a4, 1
	addi.d	$a0, $a0, 32
	add.d	$a6, $a6, $a2
	beq	$a4, $s4, .LBB17_26
.LBB17_171:                             # %for.cond600.preheader.us
                                        #   Parent Loop BB17_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_174 Depth 3
                                        #       Child Loop BB17_177 Depth 3
	ori	$a7, $zero, 8
	bgeu	$ra, $a7, .LBB17_173
# %bb.172:                              #   in Loop: Header=BB17_171 Depth=2
	move	$t1, $zero
	b	.LBB17_176
	.p2align	4, , 16
.LBB17_173:                             # %vector.ph
                                        #   in Loop: Header=BB17_171 Depth=2
	ld.d	$a7, $sp, 416                   # 8-byte Folded Reload
	sub.d	$a7, $a4, $a7
	addi.d	$a7, $a7, 1
	pcalau12i	$t0, %pc_hi20(.LCPI17_2)
	xvld	$xr2, $t0, %pc_lo12(.LCPI17_2)
	mul.d	$a7, $a7, $a2
	add.d	$a7, $a5, $a7
	xvreplgr2vr.w	$xr3, $a7
	move	$a7, $a0
	move	$t0, $t6
	move	$t2, $s8
	.p2align	4, , 16
.LBB17_174:                             # %vector.body
                                        #   Parent Loop BB17_27 Depth=1
                                        #     Parent Loop BB17_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvsub.w	$xr4, $xr2, $xr9
	xvaddi.wu	$xr4, $xr4, 1
	xvori.b	$xr5, $xr3, 0
	xvmadd.w	$xr5, $xr4, $xr0
	xvsrai.w	$xr4, $xr5, 5
	xvmaxi.w	$xr4, $xr4, 0
	xvmin.w	$xr4, $xr4, $xr1
	xvpickve2gr.w	$t1, $xr4, 0
	vinsgr2vr.h	$vr5, $t1, 0
	xvpickve2gr.w	$t1, $xr4, 1
	vinsgr2vr.h	$vr5, $t1, 1
	xvpickve2gr.w	$t1, $xr4, 2
	vinsgr2vr.h	$vr5, $t1, 2
	xvpickve2gr.w	$t1, $xr4, 3
	vinsgr2vr.h	$vr5, $t1, 3
	xvpickve2gr.w	$t1, $xr4, 4
	vinsgr2vr.h	$vr5, $t1, 4
	xvpickve2gr.w	$t1, $xr4, 5
	vinsgr2vr.h	$vr5, $t1, 5
	xvpickve2gr.w	$t1, $xr4, 6
	vinsgr2vr.h	$vr5, $t1, 6
	xvpickve2gr.w	$t1, $xr4, 7
	vinsgr2vr.h	$vr5, $t1, 7
	vst	$vr5, $a7, 0
	xvaddi.wu	$xr2, $xr2, 8
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB17_174
# %bb.175:                              # %middle.block
                                        #   in Loop: Header=BB17_171 Depth=2
	move	$t1, $t6
	beq	$t6, $t2, .LBB17_170
.LBB17_176:                             # %for.body603.us.preheader
                                        #   in Loop: Header=BB17_171 Depth=2
	ld.d	$a7, $sp, 448                   # 8-byte Folded Reload
	add.d	$a7, $a7, $t1
	mul.d	$a7, $a1, $a7
	add.w	$a7, $a6, $a7
	slli.d	$t0, $t1, 1
	sub.d	$t1, $s8, $t1
	.p2align	4, , 16
.LBB17_177:                             # %for.body603.us
                                        #   Parent Loop BB17_27 Depth=1
                                        #     Parent Loop BB17_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srai.d	$t2, $a7, 5
	srai.d	$t3, $a7, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a3
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a3, $t3
	or	$t2, $t2, $t3
	stx.h	$t2, $a0, $t0
	add.w	$a7, $a7, $a1
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 2
	bnez	$t1, .LBB17_177
	b	.LBB17_170
.LBB17_178:                             # %for.end634
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 4168
	bnez	$a0, .LBB17_209
# %bb.179:                              # %for.cond637.preheader
	ori	$s6, $zero, 1
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	blt	$s4, $s6, .LBB17_182
# %bb.180:                              # %for.body640.preheader
	move	$s0, $zero
	addi.d	$s1, $sp, 488
	move	$fp, $s4
	.p2align	4, , 16
.LBB17_181:                             # %for.body640
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	ori	$a3, $zero, 1
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $s0
	move	$a4, $s1
	jirl	$ra, $a5, 0
	addi.w	$s0, $s0, 1
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 24
	bnez	$fp, .LBB17_181
.LBB17_182:                             # %for.cond646.preheader
	move	$a4, $zero
	move	$a2, $zero
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$a6, $a0, 4095
	lu12i.w	$a0, 2
	ori	$a5, $a0, 2384
	ori	$a7, $zero, 2
	pcalau12i	$a0, %pc_hi20(imgUV_org)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	vrepli.b	$vr2, 0
	ori	$t0, $zero, 4
	st.d	$s7, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	vst	$vr2, $sp, 448                  # 16-byte Folded Spill
	b	.LBB17_186
.LBB17_183:                             #   in Loop: Header=BB17_186 Depth=1
	move	$s5, $zero
.LBB17_184:                             # %for.end755
                                        #   in Loop: Header=BB17_186 Depth=1
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	slt	$a0, $s5, $a5
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	maskeqz	$a2, $a4, $a0
	or	$a2, $a2, $a1
	masknez	$a1, $a5, $a0
	maskeqz	$a0, $s5, $a0
	or	$a6, $a0, $a1
	ld.d	$s7, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	ori	$s6, $zero, 1
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	ori	$a7, $zero, 2
	ori	$t0, $zero, 4
.LBB17_185:                             # %for.inc760
                                        #   in Loop: Header=BB17_186 Depth=1
	addi.d	$a4, $a4, 1
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 512
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	addi.d	$a5, $a5, 512
	beq	$a4, $t0, .LBB17_208
.LBB17_186:                             # %for.body649
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_199 Depth 2
                                        #       Child Loop BB17_200 Depth 3
                                        #     Child Loop BB17_205 Depth 2
                                        #       Child Loop BB17_206 Depth 3
	ld.d	$a0, $s7, 0
	ld.w	$a1, $a0, 20
	ld.d	$a0, $s2, 0
	bne	$a1, $a7, .LBB17_190
# %bb.187:                              # %lor.lhs.false
                                        #   in Loop: Header=BB17_186 Depth=1
	ldptr.w	$a1, $a0, 4048
	beqz	$a1, .LBB17_190
# %bb.188:                              # %if.end660
                                        #   in Loop: Header=BB17_186 Depth=1
	bne	$a4, $a7, .LBB17_192
# %bb.189:                              # %if.end660
                                        #   in Loop: Header=BB17_186 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_185
	b	.LBB17_192
	.p2align	4, , 16
.LBB17_190:                             # %land.lhs.true653
                                        #   in Loop: Header=BB17_186 Depth=1
	ldptr.w	$a0, $a0, 4072
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	sltu	$a1, $zero, $a4
	and	$a0, $a1, $a0
	bnez	$a0, .LBB17_185
# %bb.191:                              # %land.lhs.true653
                                        #   in Loop: Header=BB17_186 Depth=1
	addi.d	$a0, $a4, -2
	sltu	$a0, $zero, $a0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	beqz	$a0, .LBB17_185
.LBB17_192:                             # %lor.lhs.false665
                                        #   in Loop: Header=BB17_186 Depth=1
	ori	$a0, $zero, 3
	beq	$a4, $a0, .LBB17_195
# %bb.193:                              # %lor.lhs.false665
                                        #   in Loop: Header=BB17_186 Depth=1
	bne	$a4, $s6, .LBB17_196
# %bb.194:                              # %land.lhs.true668
                                        #   in Loop: Header=BB17_186 Depth=1
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_185
	b	.LBB17_196
.LBB17_195:                             # %land.lhs.true677
                                        #   in Loop: Header=BB17_186 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_185
.LBB17_196:                             # %if.end688
                                        #   in Loop: Header=BB17_186 Depth=1
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	st.d	$a4, $sp, 384                   # 8-byte Folded Spill
	st.d	$a5, $sp, 416                   # 8-byte Folded Spill
	st.d	$a6, $sp, 376                   # 8-byte Folded Spill
	blt	$s4, $s6, .LBB17_183
# %bb.197:                              # %for.body692.us
                                        #   in Loop: Header=BB17_186 Depth=1
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$s0, $a0, %pc_lo12(diff)
	blt	$a3, $s6, .LBB17_203
# %bb.198:                              # %for.cond699.preheader.us.us.preheader
                                        #   in Loop: Header=BB17_186 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(imgUV_org)
	ld.d	$s6, $a0, 0
	move	$a4, $zero
	move	$s5, $zero
	move	$a0, $zero
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_199:                             # %for.cond699.preheader.us.us
                                        #   Parent Loop BB17_186 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_200 Depth 3
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	move	$s1, $zero
	move	$s4, $zero
	ori	$a1, $zero, 24
	mul.d	$a0, $a4, $a1
	addi.d	$a2, $sp, 488
	add.d	$s2, $a2, $a0
	addi.d	$a0, $a4, 1
	mul.d	$a0, $a0, $a1
	add.d	$s7, $a2, $a0
	addi.d	$a0, $a4, 2
	mul.d	$a0, $a0, $a1
	add.d	$s3, $a2, $a0
	st.d	$a4, $sp, 432                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 3
	mul.d	$a0, $a0, $a1
	add.d	$s8, $a2, $a0
	.p2align	4, , 16
.LBB17_200:                             # %for.cond703.preheader.us.us
                                        #   Parent Loop BB17_186 Depth=1
                                        #     Parent Loop BB17_199 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s2, 20
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s6, $a0
	ld.w	$a1, $s2, 16
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	alsl.d	$a0, $a1, $a0, 1
	ldx.d	$a0, $a0, $s1
	add.d	$a1, $a2, $fp
	ld.w	$a2, $s7, 20
	add.d	$a3, $a1, $s1
	vinsgr2vr.d	$vr0, $a0, 0
	ldx.d	$a0, $a1, $s1
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s6, $a1
	ld.w	$a2, $s7, 16
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr2, $vr1
	alsl.d	$a0, $a2, $a1, 1
	ldx.d	$a0, $a0, $s1
	vsub.w	$vr0, $vr0, $vr1
	ld.w	$a1, $s3, 20
	vst	$vr0, $s0, 0
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $a3, 32
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s6, $a1
	ld.w	$a2, $s3, 16
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr2, $vr1
	alsl.d	$a0, $a2, $a1, 1
	ldx.d	$a0, $a0, $s1
	vsub.w	$vr0, $vr0, $vr1
	ld.w	$a1, $s8, 20
	vst	$vr0, $s0, 16
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $a3, 64
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s6, $a1
	ld.w	$a2, $s8, 16
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.h	$vr1, $vr2, $vr1
	alsl.d	$a0, $a2, $a1, 1
	ldx.d	$a0, $a0, $s1
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a3, 96
	vst	$vr0, $s0, 32
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s0, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	vld	$vr2, $sp, 448                  # 16-byte Folded Reload
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	add.w	$s5, $a0, $s5
	addi.w	$s4, $s4, 4
	addi.d	$s1, $s1, 8
	blt	$s4, $a3, .LBB17_200
# %bb.201:                              # %for.cond699.for.inc750_crit_edge.us.us
                                        #   in Loop: Header=BB17_199 Depth=2
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 4
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 4
	addi.d	$fp, $fp, 128
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB17_199
# %bb.202:                              # %for.cond695.for.inc753_crit_edge.us
                                        #   in Loop: Header=BB17_186 Depth=1
	ori	$a0, $zero, 1
	bge	$a3, $a0, .LBB17_204
	b	.LBB17_184
.LBB17_203:                             #   in Loop: Header=BB17_186 Depth=1
	move	$s5, $zero
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB17_184
.LBB17_204:                             # %for.cond699.preheader.us.us.1.preheader
                                        #   in Loop: Header=BB17_186 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(imgUV_org)
	ld.d	$s6, $a0, 8
	move	$a4, $zero
	move	$a0, $zero
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_205:                             # %for.cond699.preheader.us.us.1
                                        #   Parent Loop BB17_186 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_206 Depth 3
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	move	$s1, $zero
	move	$s4, $zero
	ori	$a1, $zero, 24
	mul.d	$a0, $a4, $a1
	addi.d	$a2, $sp, 488
	add.d	$s2, $a2, $a0
	addi.d	$a0, $a4, 1
	mul.d	$a0, $a0, $a1
	add.d	$s7, $a2, $a0
	addi.d	$a0, $a4, 2
	mul.d	$a0, $a0, $a1
	add.d	$s3, $a2, $a0
	st.d	$a4, $sp, 432                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 3
	mul.d	$a0, $a0, $a1
	add.d	$s8, $a2, $a0
	.p2align	4, , 16
.LBB17_206:                             # %for.cond703.preheader.us.us.1
                                        #   Parent Loop BB17_186 Depth=1
                                        #     Parent Loop BB17_205 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s2, 20
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s6, $a0
	ld.w	$a1, $s2, 16
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	alsl.d	$a0, $a1, $a0, 1
	ldx.d	$a0, $a0, $s1
	add.d	$a1, $a2, $fp
	ld.w	$a2, $s7, 20
	add.d	$a3, $a1, $s1
	vinsgr2vr.d	$vr0, $a0, 0
	ldx.d	$a0, $a1, $s1
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s6, $a1
	ld.w	$a2, $s7, 16
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr2, $vr1
	alsl.d	$a0, $a2, $a1, 1
	ldx.d	$a0, $a0, $s1
	vsub.w	$vr0, $vr0, $vr1
	ld.w	$a1, $s3, 20
	vst	$vr0, $s0, 0
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $a3, 32
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s6, $a1
	ld.w	$a2, $s3, 16
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr2, $vr1
	alsl.d	$a0, $a2, $a1, 1
	ldx.d	$a0, $a0, $s1
	vsub.w	$vr0, $vr0, $vr1
	ld.w	$a1, $s8, 20
	vst	$vr0, $s0, 16
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $a3, 64
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s6, $a1
	ld.w	$a2, $s8, 16
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.h	$vr1, $vr2, $vr1
	alsl.d	$a0, $a2, $a1, 1
	ldx.d	$a0, $a0, $s1
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a3, 96
	vst	$vr0, $s0, 32
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s0, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	vld	$vr2, $sp, 448                  # 16-byte Folded Reload
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	add.w	$s5, $a0, $s5
	addi.w	$s4, $s4, 4
	addi.d	$s1, $s1, 8
	blt	$s4, $a3, .LBB17_206
# %bb.207:                              # %for.cond699.for.inc750_crit_edge.us.us.1
                                        #   in Loop: Header=BB17_205 Depth=2
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 4
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 4
	addi.d	$fp, $fp, 128
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB17_205
	b	.LBB17_184
.LBB17_208:                             # %for.end762
	ori	$a0, $zero, 536
	mul.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 416
.LBB17_209:                             # %if.end763
	ld.d	$s8, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 992                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1064                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1072
	ret
.LBB17_210:
	move	$a0, $zero
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	bnez	$s2, .LBB17_20
	b	.LBB17_21
.Lfunc_end17:
	.size	IntraChromaPrediction, .Lfunc_end17-IntraChromaPrediction
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI17_0:
	.word	.LBB17_37-.LJTI17_0
	.word	.LBB17_43-.LJTI17_0
	.word	.LBB17_39-.LJTI17_0
	.word	.LBB17_41-.LJTI17_0
.LJTI17_1:
	.word	.LBB17_59-.LJTI17_1
	.word	.LBB17_65-.LJTI17_1
	.word	.LBB17_61-.LJTI17_1
	.word	.LBB17_63-.LJTI17_1
.LJTI17_2:
	.word	.LBB17_80-.LJTI17_2
	.word	.LBB17_86-.LJTI17_2
	.word	.LBB17_82-.LJTI17_2
	.word	.LBB17_84-.LJTI17_2
.LJTI17_3:
	.word	.LBB17_101-.LJTI17_3
	.word	.LBB17_105-.LJTI17_3
	.word	.LBB17_29-.LJTI17_3
	.word	.LBB17_103-.LJTI17_3
                                        # -- End function
	.text
	.globl	IntraChromaRDDecision           # -- Begin function IntraChromaRDDecision
	.p2align	5
	.type	IntraChromaRDDecision,@function
IntraChromaRDDecision:                  # @IntraChromaRDDecision
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -688
	st.d	$ra, $sp, 680                   # 8-byte Folded Spill
	st.d	$fp, $sp, 672                   # 8-byte Folded Spill
	st.d	$s0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s1, $sp, 656                   # 8-byte Folded Spill
	st.d	$s2, $sp, 648                   # 8-byte Folded Spill
	st.d	$s3, $sp, 640                   # 8-byte Folded Spill
	st.d	$s4, $sp, 632                   # 8-byte Folded Spill
	st.d	$s5, $sp, 624                   # 8-byte Folded Spill
	st.d	$s6, $sp, 616                   # 8-byte Folded Spill
	st.d	$s7, $sp, 608                   # 8-byte Folded Spill
	st.d	$s8, $sp, 600                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ldptr.d	$a2, $a1, 14224
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s5, $a1, 12
	ldptr.w	$s6, $a1, 15548
	ldptr.w	$a1, $a1, 15544
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(getNeighbour)
	bltz	$s6, .LBB18_3
# %bb.1:                                # %for.body.preheader
	addi.d	$a0, $s6, 1
	bstrpick.d	$s0, $a0, 31, 0
	addi.w	$s1, $zero, -1
	addi.d	$s2, $sp, 168
	move	$s3, $s1
	.p2align	4, , 16
.LBB18_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	ori	$a3, $zero, 1
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s3
	move	$a4, $s2
	jirl	$ra, $a5, 0
	addi.w	$s3, $s3, 1
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 24
	bnez	$s0, .LBB18_2
.LBB18_3:                               # %for.end
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 576
	ori	$s1, $zero, 1
	move	$a0, $s5
	move	$a1, $zero
	jirl	$ra, $a5, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.w	$s7, $sp, 576
	ld.w	$a0, $a0, 272
	ld.w	$s8, $sp, 168
	beqz	$a0, .LBB18_6
# %bb.4:                                # %if.then
	beqz	$s7, .LBB18_7
# %bb.5:                                # %cond.true
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a6, 0
	ld.w	$a1, $sp, 580
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$s7, $a0, $a1
	srai.d	$a0, $s6, 1
	ori	$s4, $zero, 1
	ori	$s0, $zero, 1
	bge	$a0, $s4, .LBB18_8
	b	.LBB18_13
.LBB18_6:
	ld.w	$s4, $sp, 192
	move	$s0, $s4
	bge	$s6, $s1, .LBB18_21
	b	.LBB18_23
.LBB18_7:
	move	$s7, $zero
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	srai.d	$a0, $s6, 1
	ori	$s4, $zero, 1
	ori	$s0, $zero, 1
	blt	$a0, $s4, .LBB18_13
.LBB18_8:                               # %for.body17.lr.ph
	ld.d	$a1, $a6, 0
	ori	$s0, $zero, 1
	addi.d	$a2, $sp, 196
	move	$a3, $a0
	b	.LBB18_11
	.p2align	4, , 16
.LBB18_9:                               # %cond.true23
                                        #   in Loop: Header=BB18_11 Depth=1
	ld.w	$a4, $a2, 0
	ldptr.d	$a5, $a1, 14240
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a5, $a4
.LBB18_10:                              # %cond.end32
                                        #   in Loop: Header=BB18_11 Depth=1
	and	$s0, $a4, $s0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 24
	beqz	$a3, .LBB18_13
.LBB18_11:                              # %for.body17
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -4
	bnez	$a4, .LBB18_9
# %bb.12:                               #   in Loop: Header=BB18_11 Depth=1
	move	$a4, $zero
	b	.LBB18_10
.LBB18_13:                              # %for.cond40.preheader
	blt	$s6, $s4, .LBB18_18
# %bb.14:                               # %for.body42.lr.ph
	ld.d	$a1, $a6, 0
	bstrpick.d	$a2, $a0, 31, 0
	slli.d	$a3, $a2, 4
	alsl.d	$a2, $a2, $a3, 3
	addi.d	$a3, $sp, 168
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 28
	ori	$s4, $zero, 1
	b	.LBB18_16
	.p2align	4, , 16
.LBB18_15:                              # %cond.true48
                                        #   in Loop: Header=BB18_16 Depth=1
	ld.w	$a3, $a2, 0
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	and	$s4, $a3, $s4
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 24
	bge	$a0, $s6, .LBB18_18
.LBB18_16:                              # %for.body42
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, -4
	bnez	$a3, .LBB18_15
# %bb.17:                               #   in Loop: Header=BB18_16 Depth=1
	move	$a3, $zero
	and	$s4, $a3, $s4
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 24
	blt	$a0, $s6, .LBB18_16
.LBB18_18:                              # %for.end63
	beqz	$s8, .LBB18_20
# %bb.19:                               # %cond.true67
	ld.d	$a0, $a6, 0
	ld.w	$a1, $sp, 172
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$s8, $a0, $a1
	bge	$s6, $s1, .LBB18_21
	b	.LBB18_23
.LBB18_20:
	move	$s8, $zero
	blt	$s6, $s1, .LBB18_23
.LBB18_21:                              # %for.body78.preheader
	move	$s1, $zero
	addi.d	$s2, $sp, 168
	move	$s3, $s6
	.p2align	4, , 16
.LBB18_22:                              # %for.body78
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	ori	$a3, $zero, 1
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $s1
	move	$a4, $s2
	jirl	$ra, $a5, 0
	addi.w	$s1, $s1, 1
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 24
	bnez	$s3, .LBB18_22
.LBB18_23:                              # %for.end83
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $t3, 0
	ldptr.w	$a1, $a0, 15268
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB18_33
# %bb.24:                               # %land.lhs.true
	ldptr.w	$a0, $a0, 14464
	beqz	$a0, .LBB18_33
# %bb.25:                               # %land.lhs.true
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB18_33
# %bb.26:                               # %for.body89.preheader
	ori	$a0, $zero, 8
	bgeu	$s6, $a0, .LBB18_28
# %bb.27:
	move	$a0, $zero
	b	.LBB18_31
.LBB18_28:                              # %vector.ph
	bstrpick.d	$a0, $s6, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 284
	move	$a2, $a0
	.p2align	4, , 16
.LBB18_29:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, -96
	ld.w	$a4, $a1, -72
	ld.w	$a5, $a1, -48
	ld.w	$a6, $a1, -24
	ld.w	$a7, $a1, 0
	ld.w	$t0, $a1, 24
	ld.w	$t1, $a1, 48
	ld.w	$t2, $a1, 72
	xvinsgr2vr.w	$xr0, $a3, 0
	xvinsgr2vr.w	$xr0, $a4, 1
	xvinsgr2vr.w	$xr0, $a5, 2
	xvinsgr2vr.w	$xr0, $a6, 3
	xvinsgr2vr.w	$xr0, $a7, 4
	xvinsgr2vr.w	$xr0, $t0, 5
	xvinsgr2vr.w	$xr0, $t1, 6
	xvinsgr2vr.w	$xr0, $t2, 7
	xvsrai.w	$xr0, $xr0, 1
	xvstelm.w	$xr0, $a1, -96, 0
	xvstelm.w	$xr0, $a1, -72, 1
	xvstelm.w	$xr0, $a1, -48, 2
	xvstelm.w	$xr0, $a1, -24, 3
	xvstelm.w	$xr0, $a1, 0, 4
	xvstelm.w	$xr0, $a1, 24, 5
	xvstelm.w	$xr0, $a1, 48, 6
	xvstelm.w	$xr0, $a1, 72, 7
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 192
	bnez	$a2, .LBB18_29
# %bb.30:                               # %middle.block
	beq	$a0, $s6, .LBB18_33
.LBB18_31:                              # %for.body89.preheader178
	slli.d	$a1, $a0, 4
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a2, $sp, 168
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 20
	sub.d	$a0, $s6, $a0
	.p2align	4, , 16
.LBB18_32:                              # %for.body89
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	srli.d	$a2, $a2, 1
	st.w	$a2, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 24
	bnez	$a0, .LBB18_32
.LBB18_33:                              # %if.end99
	move	$a4, $zero
	move	$a3, $zero
	sltu	$a0, $zero, $s7
	sltu	$a1, $zero, $s0
	sltu	$a2, $zero, $s4
	and	$a1, $a1, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	and	$a0, $a1, $a0
	sltu	$a1, $zero, $s8
	and	$a0, $a0, $a1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 336
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	pcalau12i	$a0, %pc_hi20(imgUV_org)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	vrepli.b	$vr2, 0
	ori	$a2, $zero, 4
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	vst	$vr2, $sp, 128                  # 16-byte Folded Spill
	b	.LBB18_37
.LBB18_34:                              #   in Loop: Header=BB18_37 Depth=1
	move	$s3, $zero
.LBB18_35:                              # %for.end192
                                        #   in Loop: Header=BB18_37 Depth=1
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$a0, $a0, %got_pc_lo12(mvbits)
	ld.d	$a0, $a0, 0
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a1, $a4, 2
	ldx.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, 24
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	add.w	$a0, $s3, $a0
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	slt	$a1, $a0, $a5
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a1
	maskeqz	$a3, $a4, $a1
	or	$a3, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	ori	$a2, $zero, 4
.LBB18_36:                              # %for.inc203
                                        #   in Loop: Header=BB18_37 Depth=1
	addi.d	$a4, $a4, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 512
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	beq	$a4, $a2, .LBB18_52
.LBB18_37:                              # %for.body102
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_46 Depth 2
                                        #       Child Loop BB18_48 Depth 3
                                        #         Child Loop BB18_49 Depth 4
	bne	$a4, $a1, .LBB18_39
# %bb.38:                               # %for.body102
                                        #   in Loop: Header=BB18_37 Depth=1
	beqz	$s7, .LBB18_36
.LBB18_39:                              # %lor.lhs.false
                                        #   in Loop: Header=BB18_37 Depth=1
	ori	$a0, $zero, 3
	beq	$a4, $a0, .LBB18_42
# %bb.40:                               # %lor.lhs.false
                                        #   in Loop: Header=BB18_37 Depth=1
	ori	$a0, $zero, 1
	bne	$a4, $a0, .LBB18_43
# %bb.41:                               # %land.lhs.true107
                                        #   in Loop: Header=BB18_37 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB18_36
	b	.LBB18_43
.LBB18_42:                              # %land.lhs.true115
                                        #   in Loop: Header=BB18_37 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB18_36
.LBB18_43:                              # %if.end126
                                        #   in Loop: Header=BB18_37 Depth=1
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB18_34
# %bb.44:                               # %for.body129.us.preheader
                                        #   in Loop: Header=BB18_37 Depth=1
	move	$a0, $zero
	move	$s3, $zero
	ori	$a2, $zero, 1
	b	.LBB18_46
	.p2align	4, , 16
.LBB18_45:                              # %for.end185.us
                                        #   in Loop: Header=BB18_46 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slt	$a0, $a0, $s3
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	and	$a1, $a0, $a1
	ori	$a0, $zero, 1
	move	$a2, $zero
	beqz	$a1, .LBB18_35
.LBB18_46:                              # %for.body129.us
                                        #   Parent Loop BB18_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_48 Depth 3
                                        #         Child Loop BB18_49 Depth 4
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	blt	$t4, $a1, .LBB18_45
# %bb.47:                               # %for.cond135.preheader.us.us.preheader
                                        #   in Loop: Header=BB18_46 Depth=2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(imgUV_org)
	slli.d	$a2, $a0, 3
	ldx.d	$s2, $a1, $a2
	move	$s8, $zero
	move	$a2, $zero
	slli.d	$a0, $a0, 11
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$s6, $a1, $a0
	.p2align	4, , 16
.LBB18_48:                              # %for.cond135.preheader.us.us
                                        #   Parent Loop BB18_37 Depth=1
                                        #     Parent Loop BB18_46 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_49 Depth 4
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	move	$s0, $zero
	move	$fp, $zero
	ori	$a1, $zero, 24
	mul.d	$a0, $s8, $a1
	addi.d	$a2, $sp, 168
	add.d	$s1, $a2, $a0
	addi.d	$a0, $s8, 1
	mul.d	$a0, $a0, $a1
	add.d	$s4, $a2, $a0
	addi.d	$a0, $s8, 2
	mul.d	$a0, $a0, $a1
	add.d	$s5, $a2, $a0
	addi.d	$a0, $s8, 3
	mul.d	$a0, $a0, $a1
	add.d	$s7, $a2, $a0
	.p2align	4, , 16
.LBB18_49:                              # %for.cond138.preheader.us.us
                                        #   Parent Loop BB18_37 Depth=1
                                        #     Parent Loop BB18_46 Depth=2
                                        #       Parent Loop BB18_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $s1, 20
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s2, $a0
	ld.w	$a1, $s1, 16
	ld.d	$a2, $t3, 0
	alsl.d	$a0, $a1, $a0, 1
	add.d	$a2, $a2, $s6
	ldx.d	$a0, $a0, $s0
	add.d	$a1, $a2, $s0
	ldx.d	$a2, $a2, $s0
	ld.w	$a3, $s4, 20
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	slli.d	$a0, $a3, 3
	ldx.d	$a0, $s2, $a0
	ld.w	$a2, $s4, 16
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	pcalau12i	$a3, %pc_hi20(diff)
	alsl.d	$a0, $a2, $a0, 1
	ldx.d	$a2, $a0, $s0
	addi.d	$a0, $a3, %pc_lo12(diff)
	ld.w	$a3, $s5, 20
	vst	$vr0, $a0, 0
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 32
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s2, $a3
	ld.w	$a4, $s5, 16
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	alsl.d	$a2, $a4, $a3, 1
	ldx.d	$a2, $a2, $s0
	vsub.w	$vr0, $vr0, $vr1
	ld.w	$a3, $s7, 20
	vst	$vr0, $a0, 16
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 64
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s2, $a3
	ld.w	$a4, $s7, 16
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.h	$vr1, $vr2, $vr1
	alsl.d	$a2, $a4, $a3, 1
	ldx.d	$a2, $a2, $s0
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a1, 96
	vst	$vr0, $a0, 32
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 48
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	vld	$vr2, $sp, 128                  # 16-byte Folded Reload
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	add.w	$s3, $a0, $s3
	addi.w	$fp, $fp, 4
	addi.d	$s0, $s0, 8
	blt	$fp, $t4, .LBB18_49
# %bb.50:                               # %for.cond135.for.end178_crit_edge.us.us
                                        #   in Loop: Header=BB18_48 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB18_45
# %bb.51:                               # %for.cond135.for.end178_crit_edge.us.us
                                        #   in Loop: Header=BB18_48 Depth=3
	addi.w	$a2, $a1, 4
	addi.d	$s8, $s8, 4
	addi.d	$s6, $s6, 128
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blt	$a2, $a0, .LBB18_48
	b	.LBB18_45
.LBB18_52:                              # %for.end205
	ori	$a0, $zero, 536
	mul.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.w	$a3, $a0, 416
	ld.d	$s8, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 664                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 672                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 688
	ret
.Lfunc_end18:
	.size	IntraChromaRDDecision, .Lfunc_end18-IntraChromaRDDecision
                                        # -- End function
	.globl	ZeroRef                         # -- Begin function ZeroRef
	.p2align	5
	.type	ZeroRef,@function
ZeroRef:                                # @ZeroRef
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ldptr.d	$a2, $a0, 6488
	ld.w	$a0, $a1, 168
	ld.w	$a5, $a1, 172
	ld.d	$a1, $a2, 0
	addi.w	$a2, $a0, 3
	addi.w	$a3, $a5, 3
.LBB19_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_2 Depth 2
	move	$a4, $a5
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a1, $a5
	move	$a6, $a0
	.p2align	4, , 16
.LBB19_2:                               # %for.body6
                                        #   Parent Loop BB19_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a7, $a6
	ldx.bu	$a6, $a5, $a6
	bnez	$a6, .LBB19_6
# %bb.3:                                # %for.cond2
                                        #   in Loop: Header=BB19_2 Depth=2
	addi.d	$a6, $a7, 1
	blt	$a7, $a2, .LBB19_2
# %bb.4:                                # %for.inc12
                                        #   in Loop: Header=BB19_1 Depth=1
	addi.d	$a5, $a4, 1
	blt	$a4, $a3, .LBB19_1
# %bb.5:
	ori	$a0, $zero, 1
	ret
.LBB19_6:
	move	$a0, $zero
	ret
.Lfunc_end19:
	.size	ZeroRef, .Lfunc_end19-ZeroRef
                                        # -- End function
	.globl	MBType2Value                    # -- Begin function MBType2Value
	.p2align	5
	.type	MBType2Value,@function
MBType2Value:                           # @MBType2Value
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a1, 20
	ld.w	$a2, $a0, 72
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB20_6
# %bb.1:                                # %if.else29
	beqz	$a2, .LBB20_9
# %bb.2:                                # %if.else35
	move	$a3, $a0
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 2
	ori	$a5, $zero, 9
	ori	$a0, $zero, 23
	beq	$a4, $a5, .LBB20_21
# %bb.3:                                # %if.else40
	ld.w	$a4, $a3, 392
	ld.w	$a3, $a3, 404
	addi.d	$a0, $a2, -1
	ori	$a2, $zero, 13
	bltu	$a2, $a0, .LBB20_20
# %bb.4:                                # %if.else40
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI20_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI20_1)
	ldx.w	$a0, $a2, $a0
	add.d	$a2, $a2, $a0
	ori	$a0, $zero, 48
	jr	$a2
.LBB20_5:                               # %if.then53
	slli.d	$a0, $a4, 2
	pcalau12i	$a1, %pc_hi20(MBType2Value.dir1offset)
	addi.d	$a1, $a1, %pc_lo12(MBType2Value.dir1offset)
	ldx.w	$a0, $a1, $a0
	ret
.LBB20_6:                               # %if.then
	addi.d	$a0, $a2, -8
	ori	$a4, $zero, 6
	bltu	$a4, $a0, .LBB20_14
# %bb.7:                                # %if.then
	slli.d	$a0, $a0, 2
	pcalau12i	$a4, %pc_hi20(.LJTI20_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI20_0)
	ldx.w	$a0, $a4, $a0
	add.d	$a4, $a4, $a0
	move	$a0, $a2
	jr	$a4
.LBB20_8:                               # %if.then4
	addi.d	$a0, $a3, -2
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 6
	masknez	$a0, $a1, $a0
	ret
.LBB20_9:
	move	$a0, $zero
	ret
.LBB20_10:                              # %if.then23
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB20_15
.LBB20_11:
	ori	$a0, $zero, 4
	ret
.LBB20_12:                              # %if.then9
	addi.d	$a0, $a3, -2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 2956
	ldx.w	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 6
	masknez	$a0, $a2, $a0
	add.w	$a0, $a1, $a0
	ret
.LBB20_13:                              # %if.then16
	addi.d	$a0, $a3, -2
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 31
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 25
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ret
.LBB20_14:
	move	$a0, $a2
	ret
.LBB20_15:                              # %land.lhs.true
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$a2, $a1, 168
	ld.w	$a6, $a1, 172
	ld.d	$a1, $a0, 0
	addi.w	$a0, $a2, 3
	addi.w	$a3, $a6, 3
	slt	$a4, $a0, $a2
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $a2, $a4
	or	$a0, $a4, $a0
	slt	$a4, $a3, $a6
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a6, $a4
	or	$a3, $a4, $a3
	sub.d	$a0, $a0, $a2
	addi.d	$a4, $a0, 1
.LBB20_16:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_17 Depth 2
	move	$a5, $a6
	slli.d	$a0, $a6, 3
	ldx.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a2
	move	$a6, $a4
	.p2align	4, , 16
.LBB20_17:                              # %for.body6.i
                                        #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $a0, 0
	bnez	$a7, .LBB20_11
# %bb.18:                               # %for.cond2.i
                                        #   in Loop: Header=BB20_17 Depth=2
	addi.d	$a6, $a6, -1
	addi.d	$a0, $a0, 1
	bnez	$a6, .LBB20_17
# %bb.19:                               # %for.inc12.i
                                        #   in Loop: Header=BB20_16 Depth=1
	addi.d	$a6, $a5, 1
	ori	$a0, $zero, 5
	bne	$a5, $a3, .LBB20_16
	b	.LBB20_21
.LBB20_20:                              # %if.else63
	slli.d	$a0, $a4, 3
	alsl.d	$a0, $a4, $a0, 2
	pcalau12i	$a1, %pc_hi20(MBType2Value.dir2offset)
	addi.d	$a1, $a1, %pc_lo12(MBType2Value.dir2offset)
	add.d	$a0, $a1, $a0
	slli.d	$a1, $a3, 2
	ldx.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 5
.LBB20_21:                              # %cleanup
	ret
.LBB20_22:                              # %if.then57
	slli.d	$a0, $a4, 3
	alsl.d	$a0, $a4, $a0, 2
	pcalau12i	$a1, %pc_hi20(MBType2Value.dir2offset)
	addi.d	$a1, $a1, %pc_lo12(MBType2Value.dir2offset)
	add.d	$a0, $a1, $a0
	slli.d	$a1, $a3, 2
	ldx.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 4
	ret
.LBB20_23:                              # %if.then50
	ori	$a0, $zero, 22
	ret
.LBB20_24:                              # %if.then42
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2956
	ldx.w	$a0, $a1, $a0
	addi.w	$a0, $a0, 23
	ret
.Lfunc_end20:
	.size	MBType2Value, .Lfunc_end20-MBType2Value
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI20_0:
	.word	.LBB20_10-.LJTI20_0
	.word	.LBB20_8-.LJTI20_0
	.word	.LBB20_12-.LJTI20_0
	.word	.LBB20_21-.LJTI20_0
	.word	.LBB20_21-.LJTI20_0
	.word	.LBB20_8-.LJTI20_0
	.word	.LBB20_13-.LJTI20_0
.LJTI20_1:
	.word	.LBB20_5-.LJTI20_1
	.word	.LBB20_22-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_23-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_24-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_21-.LJTI20_1
                                        # -- End function
	.text
	.globl	writeIntra4x4Modes              # -- Begin function writeIntra4x4Modes
	.p2align	5
	.type	writeIntra4x4Modes,@function
writeIntra4x4Modes:                     # @writeIntra4x4Modes
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ldptr.w	$a0, $a0, 4016
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	ldptr.d	$a3, $a1, 14224
	ld.w	$a4, $a1, 12
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ldptr.d	$a1, $a1, 14216
	ori	$a2, $zero, 536
	mul.d	$a2, $a4, $a2
	ld.w	$a0, $a0, 16
	ld.d	$a1, $a1, 24
	add.d	$s0, $a3, $a2
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$fp, $a1, $a0
	st.w	$zero, $sp, 32
	ld.b	$a0, $s0, 332
	pcalau12i	$a1, %got_pc_hi20(writeIntraPredMode)
	ld.d	$s1, $a1, %got_pc_lo12(writeIntraPredMode)
	ori	$s3, $zero, 1
	st.w	$s3, $s0, 420
	st.w	$a0, $sp, 12
	ld.d	$a2, $s1, 0
	st.w	$zero, $sp, 16
	ori	$s2, $zero, 4
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	st.w	$s3, $sp, 32
	ld.b	$a0, $s0, 333
	ld.w	$s3, $sp, 20
	ld.d	$a2, $s1, 0
	st.w	$a0, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 334
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 3
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 335
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	st.w	$s2, $sp, 32
	ld.b	$a1, $s0, 336
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 5
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 337
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 6
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 338
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 7
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 339
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 8
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 340
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 9
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 341
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 10
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 342
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 11
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 343
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 12
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 344
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 13
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 345
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 14
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 346
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 15
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 347
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	add.w	$a0, $a0, $s3
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end21:
	.size	writeIntra4x4Modes, .Lfunc_end21-writeIntra4x4Modes
                                        # -- End function
	.globl	writeIntra8x8Modes              # -- Begin function writeIntra8x8Modes
	.p2align	5
	.type	writeIntra8x8Modes,@function
writeIntra8x8Modes:                     # @writeIntra8x8Modes
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ldptr.w	$a0, $a0, 4016
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	ldptr.d	$a3, $a1, 14224
	ld.w	$a4, $a1, 12
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ldptr.d	$a1, $a1, 14216
	ori	$a2, $zero, 536
	mul.d	$a2, $a4, $a2
	ld.w	$a0, $a0, 16
	ld.d	$a1, $a1, 24
	add.d	$s0, $a3, $a2
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$fp, $a1, $a0
	st.w	$zero, $sp, 32
	ld.b	$a0, $s0, 348
	pcalau12i	$a1, %got_pc_hi20(writeIntraPredMode)
	ld.d	$s1, $a1, %got_pc_lo12(writeIntraPredMode)
	ori	$a1, $zero, 1
	st.w	$a1, $s0, 420
	st.w	$a0, $sp, 12
	ld.d	$a2, $s1, 0
	st.w	$zero, $sp, 16
	ori	$s2, $zero, 4
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$s3, $sp, 20
	ld.w	$a0, $s0, 44
	add.d	$a0, $a0, $s3
	st.w	$a0, $s0, 44
	st.w	$s2, $sp, 32
	ld.b	$a0, $s0, 352
	ld.d	$a2, $s1, 0
	st.w	$a0, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s0, 44
	ori	$a1, $zero, 8
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 356
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s0, 44
	ori	$a1, $zero, 12
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 360
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a1, $a1, $a0
	add.w	$a0, $a0, $s3
	st.w	$a1, $s0, 44
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end22:
	.size	writeIntra8x8Modes, .Lfunc_end22-writeIntra8x8Modes
                                        # -- End function
	.globl	writeIntraModes                 # -- Begin function writeIntraModes
	.p2align	5
	.type	writeIntraModes,@function
writeIntraModes:                        # @writeIntraModes
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$s0, $a2, $a1
	ld.w	$a1, $s0, 72
	ori	$a2, $zero, 13
	beq	$a1, $a2, .LBB23_3
# %bb.1:                                # %entry
	ori	$a0, $zero, 9
	bne	$a1, $a0, .LBB23_4
# %bb.2:                                # %sw.bb
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(writeIntra4x4Modes)
	jr	$t8
.LBB23_3:                               # %sw.bb1
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.d	$a0, $a0, 14216
	ld.w	$a1, $a1, 16
	ld.d	$a0, $a0, 24
	ori	$a2, $zero, 104
	mul.d	$a1, $a1, $a2
	add.d	$fp, $a0, $a1
	st.w	$zero, $sp, 32
	ld.b	$a0, $s0, 348
	pcalau12i	$a1, %got_pc_hi20(writeIntraPredMode)
	ld.d	$s1, $a1, %got_pc_lo12(writeIntraPredMode)
	ori	$a1, $zero, 1
	st.w	$a1, $s0, 420
	st.w	$a0, $sp, 12
	ld.d	$a2, $s1, 0
	st.w	$zero, $sp, 16
	ori	$s2, $zero, 4
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$s3, $sp, 20
	ld.w	$a0, $s0, 44
	add.d	$a0, $a0, $s3
	st.w	$a0, $s0, 44
	st.w	$s2, $sp, 32
	ld.b	$a0, $s0, 352
	ld.d	$a2, $s1, 0
	st.w	$a0, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s0, 44
	ori	$a1, $zero, 8
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 356
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s0, 44
	ori	$a1, $zero, 12
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 360
	add.d	$s3, $s3, $a0
	ld.d	$a2, $s1, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s2, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s0, 44
	add.w	$a0, $s3, $a0
	b	.LBB23_5
.LBB23_4:
	move	$a0, $zero
.LBB23_5:                               # %return
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end23:
	.size	writeIntraModes, .Lfunc_end23-writeIntraModes
                                        # -- End function
	.globl	B8Mode2Value                    # -- Begin function B8Mode2Value
	.p2align	5
	.type	B8Mode2Value,@function
B8Mode2Value:                           # @B8Mode2Value
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ld.w	$a2, $a2, 20
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB24_2
# %bb.1:                                # %if.else
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(B8Mode2Value.b8start)
	addi.d	$a2, $a2, %pc_lo12(B8Mode2Value.b8start)
	pcalau12i	$a3, %pc_hi20(B8Mode2Value.b8inc)
	addi.d	$a3, $a3, %pc_lo12(B8Mode2Value.b8inc)
	ldx.w	$a3, $a3, $a0
	ldx.w	$a0, $a2, $a0
	mul.d	$a1, $a3, $a1
	add.w	$a0, $a1, $a0
	ret
.LBB24_2:                               # %if.then
	addi.w	$a0, $a0, -4
	ret
.Lfunc_end24:
	.size	B8Mode2Value, .Lfunc_end24-B8Mode2Value
                                        # -- End function
	.globl	writeMBLayer                    # -- Begin function writeMBLayer
	.p2align	5
	.type	writeMBLayer,@function
writeMBLayer:                           # @writeMBLayer
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
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s8, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s8, 0
	ld.w	$s0, $a2, 12
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ldptr.d	$a5, $a1, 14224
	ori	$a7, $zero, 536
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a3, $a2, 0
	mul.d	$a2, $s0, $a7
	add.d	$s1, $a5, $a2
	ld.w	$a2, $s1, 72
	ldptr.w	$a6, $a3, 4016
	beqz	$a2, .LBB25_2
# %bb.1:
	move	$s5, $zero
	b	.LBB25_4
.LBB25_2:                               # %cond.false9
	ld.w	$a4, $a1, 20
	ori	$s5, $zero, 1
	bne	$a4, $s5, .LBB25_4
# %bb.3:                                # %cond.true10
	ld.w	$a4, $s1, 364
	sltui	$s5, $a4, 1
.LBB25_4:                               # %cond.end15
	pcalau12i	$t0, %got_pc_hi20(assignSE2partition)
	ldptr.w	$a4, $a1, 15268
	ld.d	$s7, $t0, %got_pc_lo12(assignSE2partition)
	slli.d	$a6, $a6, 3
	beqz	$a4, .LBB25_7
# %bb.5:                                # %if.then
	andi	$t0, $s0, 1
	bnez	$t0, .LBB25_8
# %bb.6:
	move	$a0, $zero
	ori	$s0, $zero, 1
	ldptr.d	$fp, $a1, 14216
	ldx.d	$s6, $s7, $a6
	ori	$a5, $zero, 13
	bgeu	$a5, $a2, .LBB25_13
	b	.LBB25_14
.LBB25_7:
	move	$a0, $zero
	move	$s0, $zero
	ldptr.d	$fp, $a1, 14216
	ldx.d	$s6, $s7, $a6
	ori	$a5, $zero, 13
	bgeu	$a5, $a2, .LBB25_13
	b	.LBB25_14
.LBB25_8:                               # %if.else
	mul.d	$a7, $a0, $a7
	add.d	$a7, $a5, $a7
	ld.w	$t0, $a7, 72
	beqz	$t0, .LBB25_10
.LBB25_9:
	move	$s0, $zero
	b	.LBB25_12
.LBB25_10:                              # %cond.false24
	ld.w	$t0, $a1, 20
	ori	$s0, $zero, 1
	bne	$t0, $s0, .LBB25_12
# %bb.11:                               # %cond.true27
	ld.w	$a7, $a7, 364
	bnez	$a7, .LBB25_9
.LBB25_12:                              # %if.end
	ori	$a7, $zero, 536
	mul.d	$a0, $a0, $a7
	add.d	$a0, $a5, $a0
	ld.w	$a0, $a0, 528
	sltu	$a0, $zero, $a0
	ldptr.d	$fp, $a1, 14216
	ldx.d	$s6, $s7, $a6
	ori	$a5, $zero, 13
	bltu	$a5, $a2, .LBB25_14
.LBB25_13:                              # %if.end36
	ori	$a5, $zero, 1
	sll.d	$a5, $a5, $a2
	lu12i.w	$a6, 2
	ori	$a6, $a6, 1536
	and	$a6, $a5, $a6
	ori	$a5, $zero, 1
	bnez	$a6, .LBB25_15
.LBB25_14:                              # %lor.rhs
	addi.d	$a5, $a2, -14
	sltui	$a5, $a5, 1
.LBB25_15:                              # %lor.end
	st.w	$a5, $s1, 420
	ld.w	$a6, $s6, 8
	ld.d	$a7, $fp, 24
	ld.w	$a5, $a1, 20
	ori	$t0, $zero, 104
	mul.d	$a6, $a6, $t0
	ori	$t0, $zero, 2
	add.d	$s2, $a7, $a6
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	bne	$a5, $t0, .LBB25_18
# %bb.16:                               # %if.then51
	beqz	$s0, .LBB25_24
# %bb.17:                               # %if.then53
	ld.w	$a0, $s1, 424
	pcalau12i	$a1, %got_pc_hi20(writeFieldModeInfo)
	ld.d	$a1, $a1, %got_pc_lo12(writeFieldModeInfo)
	st.w	$a0, $sp, 124
	ld.d	$a2, $a1, 0
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$s0, $sp, 132
	b	.LBB25_25
.LBB25_18:                              # %if.else68
	ldptr.w	$a3, $a3, 4008
	ori	$a6, $zero, 1
	bne	$a3, $a6, .LBB25_26
# %bb.19:                               # %if.then70
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	beqz	$a4, .LBB25_22
# %bb.20:                               # %land.lhs.true
	ld.bu	$a1, $a1, 12
	andi	$a1, $a1, 1
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB25_22
# %bb.21:                               # %if.then78
	ld.w	$s4, $s1, 424
	pcaddu18i	$ra, %call36(field_flag_inference)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 424
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighborsCABAC)
	jirl	$ra, $ra, 0
	st.w	$s4, $s1, 424
.LBB25_22:                              # %if.end83
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MBType2Value)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.w	$a0, $sp, 124
	ld.w	$a0, $s1, 364
	st.w	$a0, $sp, 128
	ori	$s7, $zero, 2
	st.w	$s7, $sp, 120
	addi.d	$a0, $sp, 120
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeMB_skip_flagInfo_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$s3, $sp, 132
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighborsCABAC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ldptr.w	$a0, $a0, 15268
	sltu	$a0, $zero, $a0
	xori	$a1, $s5, 1
	and	$a0, $a0, $a1
	and	$a0, $s0, $a0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_32
# %bb.23:                               # %if.then100
	pcalau12i	$a0, %got_pc_hi20(writeFieldModeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeFieldModeInfo)
	ld.w	$a1, $s1, 424
	ld.d	$a2, $a0, 0
	st.w	$a1, $sp, 124
	st.w	$zero, $sp, 128
	st.w	$s7, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a0, $sp, 132
	add.d	$s0, $a0, $s3
	ld.w	$a0, $s1, 72
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	bnez	$a0, .LBB25_35
	b	.LBB25_33
.LBB25_24:
	move	$s0, $zero
.LBB25_25:                              # %if.end58
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MBType2Value)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(writeMB_typeInfo)
	ld.d	$a1, $a1, %got_pc_lo12(writeMB_typeInfo)
	st.w	$a0, $sp, 124
	ld.d	$a2, $a1, 0
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a0, $sp, 132
	add.d	$s0, $a0, $s0
	ld.w	$a1, $s1, 72
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	bnez	$a1, .LBB25_44
	b	.LBB25_103
.LBB25_26:                              # %if.else130
	beqz	$a2, .LBB25_36
.LBB25_27:                              # %if.then139
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a0, $a1, 144
	st.w	$a0, $sp, 124
	st.w	$zero, $sp, 128
	ori	$s3, $zero, 2
	st.w	$s3, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeSE_UVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.d	$s7, $s8, 0
	ldptr.w	$a0, $s7, 15268
	ld.w	$s4, $sp, 132
	sltu	$a0, $zero, $a0
	xori	$a1, $s5, 1
	and	$a0, $a0, $a1
	and	$a0, $s0, $a0
	ori	$s0, $zero, 1
	st.w	$zero, $s7, 144
	bne	$a0, $s0, .LBB25_29
# %bb.28:                               # %if.then155
	ld.w	$a0, $s1, 424
	st.w	$a0, $sp, 124
	st.w	$s3, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeSE_Flag)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a0, $sp, 132
	ld.d	$s7, $s8, 0
	add.d	$s4, $a0, $s4
.LBB25_29:                              # %if.end165
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MBType2Value)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 20
	st.w	$a0, $sp, 124
	beq	$a1, $s0, .LBB25_31
# %bb.30:                               # %if.then170
	addi.d	$a0, $a0, -1
	st.w	$a0, $sp, 124
.LBB25_31:                              # %if.end172
	pcalau12i	$a0, %got_pc_hi20(writeMB_typeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeMB_typeInfo)
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	st.w	$zero, $sp, 128
	addi.d	$a0, $sp, 120
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a0, $sp, 132
	add.d	$s0, $a0, $s4
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $s1, 72
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	bnez	$a1, .LBB25_44
	b	.LBB25_103
.LBB25_32:
	move	$s0, $s3
	ld.w	$a0, $s1, 72
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	bnez	$a0, .LBB25_35
.LBB25_33:                              # %lor.lhs.false114
	ld.d	$a0, $s8, 0
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_43
# %bb.34:                               # %land.lhs.true117
	ld.w	$a0, $s1, 364
	beqz	$a0, .LBB25_43
.LBB25_35:                              # %if.then120
	pcalau12i	$a0, %got_pc_hi20(writeMB_typeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeMB_typeInfo)
	st.w	$s4, $sp, 124
	ld.d	$a2, $a0, 0
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a0, $sp, 132
	add.d	$s0, $a0, $s0
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $s1, 72
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	bnez	$a1, .LBB25_44
	b	.LBB25_103
.LBB25_36:                              # %lor.lhs.false133
	ori	$a0, $zero, 1
	bne	$a5, $a0, .LBB25_38
# %bb.37:                               # %land.lhs.true136
	ld.w	$a2, $s1, 364
	bnez	$a2, .LBB25_27
.LBB25_38:                              # %if.else180
	ld.w	$a2, $a1, 144
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 144
	st.w	$a0, $s1, 528
	ldptr.w	$a0, $a1, 15528
	addi.w	$a2, $zero, -3
	addi.w	$s0, $zero, -1
	blt	$a0, $a2, .LBB25_41
# %bb.39:                               # %for.cond185.preheader.lr.ph
	ld.d	$a0, $a1, 152
	move	$a2, $zero
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3240
	move	$a4, $s0
	.p2align	4, , 16
.LBB25_40:                              # %for.cond185.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 12
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	ld.d	$a5, $a5, 0
	stx.w	$zero, $a5, $a2
	ld.w	$a5, $a1, 12
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	ld.d	$a5, $a5, 8
	stx.w	$zero, $a5, $a2
	ld.w	$a5, $a1, 12
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	ld.d	$a5, $a5, 16
	stx.w	$zero, $a5, $a2
	ld.w	$a5, $a1, 12
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	ld.d	$a5, $a5, 24
	stx.w	$zero, $a5, $a2
	ldx.w	$a5, $a1, $a3
	addi.w	$a5, $a5, 3
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	blt	$a4, $a5, .LBB25_40
.LBB25_41:                              # %for.end198
	ld.w	$a0, $a1, 12
	pcaddu18i	$ra, %call36(FmoGetNextMBNr)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB25_101
.LBB25_42:
	move	$s0, $zero
	ld.w	$a1, $s1, 72
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	bnez	$a1, .LBB25_44
	b	.LBB25_103
.LBB25_43:
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $s1, 72
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	beqz	$a1, .LBB25_103
.LBB25_44:                              # %land.end
	ori	$a0, $zero, 1
	ori	$a2, $zero, 8
	st.w	$a0, $s1, 476
	beq	$a1, $a2, .LBB25_50
# %bb.45:                               # %land.end
	ori	$a0, $zero, 14
	bne	$a1, $a0, .LBB25_89
# %bb.46:                               # %if.then231
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_48
# %bb.47:                               # %if.then234
	addi.d	$fp, $s2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(arienco_bits_written)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(arienco_done_encoding)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(arienco_bits_written)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 0
	ld.d	$a1, $a2, 32
	sub.d	$a3, $s0, $s3
	add.d	$s0, $a3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(arienco_start_encoding)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(reset_pic_bin_count)
	jirl	$ra, $ra, 0
.LBB25_48:                              # %if.end240
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 4
	ori	$a1, $zero, 7
	blt	$a1, $a0, .LBB25_52
# %bb.49:                               # %if.then243
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 120
	st.w	$a0, $sp, 132
	ld.w	$a1, $s1, 44
	add.d	$s0, $a0, $s0
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 44
	st.w	$zero, $sp, 140
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeSE_Fix)
	jirl	$ra, $ra, 0
	b	.LBB25_53
.LBB25_50:                              # %if.then330
	ld.d	$a1, $s8, 0
	ld.d	$a2, $fp, 24
	ld.w	$a3, $s6, 8
	ld.w	$a4, $a1, 20
	ld.w	$a1, $s1, 376
	ori	$a5, $zero, 104
	mul.d	$a3, $a3, $a5
	add.d	$s2, $a2, $a3
	bne	$a4, $a0, .LBB25_66
# %bb.51:                               # %if.else.i
	ld.w	$a0, $s1, 392
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(B8Mode2Value.b8start)
	addi.d	$a2, $a2, %pc_lo12(B8Mode2Value.b8start)
	pcalau12i	$a3, %pc_hi20(B8Mode2Value.b8inc)
	addi.d	$a3, $a3, %pc_lo12(B8Mode2Value.b8inc)
	ldx.w	$a3, $a3, $a1
	ldx.w	$a1, $a2, $a1
	mul.d	$a0, $a3, $a0
	add.d	$a0, $a0, $a1
	b	.LBB25_67
.LBB25_52:
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
.LBB25_53:                              # %if.end253
	move	$a2, $zero
	lu12i.w	$a1, 3
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$fp, $a0, %got_pc_lo12(enc_picture)
	ori	$s4, $a1, 3156
	ori	$s5, $zero, 2
	.p2align	4, , 16
.LBB25_54:                              # %for.body256
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_55 Depth 2
	ld.d	$a0, $s8, 0
	ld.w	$a0, $a0, 180
	move	$s0, $zero
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	add.w	$a0, $a0, $a2
	slli.d	$s7, $a0, 3
	move	$s6, $s8
	ori	$s8, $zero, 16
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB25_55:                              # %for.body260
                                        #   Parent Loop BB25_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	ldx.w	$a2, $a0, $s4
	ldptr.d	$a1, $a1, 6440
	st.w	$a2, $sp, 132
	ld.w	$a0, $a0, 176
	st.w	$s5, $sp, 120
	ldx.d	$a1, $a1, $s7
	add.d	$a0, $s0, $a0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	st.w	$a0, $sp, 140
	st.w	$a0, $sp, 124
	ld.w	$a0, $s3, 44
	add.w	$s2, $a2, $s2
	add.d	$a0, $a0, $a2
	st.w	$a0, $s3, 44
	addi.d	$a0, $sp, 120
	move	$a1, $s1
	pcaddu18i	$ra, %call36(writeSE_Fix)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, -1
	addi.d	$s0, $s0, 1
	bnez	$s8, .LBB25_55
# %bb.56:                               # %for.inc279
                                        #   in Loop: Header=BB25_54 Depth=1
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	move	$s8, $s6
	ori	$a0, $zero, 16
	bne	$a2, $a0, .LBB25_54
# %bb.57:                               # %for.end281
	ld.d	$a0, $s8, 0
	ldptr.w	$a1, $a0, 15536
	beqz	$a1, .LBB25_251
# %bb.58:                               # %for.cond285.preheader
	ldptr.w	$a2, $a0, 15548
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB25_251
# %bb.59:                               # %for.body292.lr.ph
	ldptr.w	$a2, $a0, 15544
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	blt	$a2, $a1, .LBB25_94
# %bb.60:                               # %for.body292.preheader
	move	$a2, $zero
	lu12i.w	$a1, 3
	ori	$s5, $a1, 3160
	ori	$s6, $zero, 2
	b	.LBB25_63
	.p2align	4, , 16
.LBB25_61:                              #   in Loop: Header=BB25_63 Depth=1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
.LBB25_62:                              # %for.inc319
                                        #   in Loop: Header=BB25_63 Depth=1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	ldptr.w	$a1, $a0, 15548
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	bge	$a2, $a1, .LBB25_93
.LBB25_63:                              # %for.body292
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_65 Depth 2
	ldptr.w	$a1, $a0, 15544
	ori	$a3, $zero, 1
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	blt	$a1, $a3, .LBB25_61
# %bb.64:                               # %for.body297.lr.ph
                                        #   in Loop: Header=BB25_63 Depth=1
	ld.w	$a1, $a0, 188
	move	$s7, $zero
	move	$s8, $zero
	add.w	$a1, $a1, $a2
	slli.d	$s0, $a1, 3
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB25_65:                              # %for.body297
                                        #   Parent Loop BB25_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 0
	ldx.w	$a2, $a0, $s5
	ldptr.d	$a1, $a1, 6472
	st.w	$a2, $sp, 132
	st.w	$s6, $sp, 120
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 184
	ldx.d	$a1, $a1, $s0
	add.d	$a0, $s7, $a0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	st.w	$a0, $sp, 140
	st.w	$a0, $sp, 124
	ld.w	$a0, $s1, 48
	add.w	$s3, $a2, $s3
	add.d	$a0, $a0, $a2
	st.w	$a0, $s1, 48
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeSE_Fix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ldptr.w	$a1, $a0, 15544
	addi.w	$s8, $s8, 1
	addi.d	$s7, $s7, 1
	blt	$s8, $a1, .LBB25_65
	b	.LBB25_62
.LBB25_66:                              # %if.then.i
	addi.d	$a0, $a1, -4
.LBB25_67:                              # %B8Mode2Value.exit
	pcalau12i	$a1, %got_pc_hi20(writeB8_typeInfo)
	ld.d	$fp, $a1, %got_pc_lo12(writeB8_typeInfo)
	st.w	$a0, $sp, 124
	ld.d	$a2, $fp, 0
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a1, $sp, 132
	ld.w	$a0, $s1, 376
	add.d	$s0, $a1, $s0
	beqz	$a0, .LBB25_69
.LBB25_68:                              # %lor.rhs360
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB25_70
.LBB25_69:                              # %land.lhs.true357
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a2, $a1, 1156
	ori	$a1, $zero, 1
	beqz	$a2, .LBB25_68
.LBB25_70:                              # %lor.end366
	ld.wu	$a0, $s1, 476
	and	$a0, $a0, $a1
	st.w	$a0, $s1, 476
	ld.d	$a0, $s8, 0
	ld.w	$a1, $a0, 20
	ld.w	$a0, $s1, 380
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_72
# %bb.71:                               # %if.else.i.1
	ld.w	$a1, $s1, 396
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(B8Mode2Value.b8start)
	addi.d	$a2, $a2, %pc_lo12(B8Mode2Value.b8start)
	pcalau12i	$a3, %pc_hi20(B8Mode2Value.b8inc)
	addi.d	$a3, $a3, %pc_lo12(B8Mode2Value.b8inc)
	ldx.w	$a3, $a3, $a0
	ldx.w	$a0, $a2, $a0
	mul.d	$a1, $a3, $a1
	add.d	$a0, $a1, $a0
	b	.LBB25_73
.LBB25_72:                              # %if.then.i.1
	addi.d	$a0, $a0, -4
.LBB25_73:                              # %B8Mode2Value.exit.1
	st.w	$a0, $sp, 124
	ld.d	$a2, $fp, 0
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a1, $sp, 132
	ld.w	$a0, $s1, 380
	add.d	$s0, $a1, $s0
	beqz	$a0, .LBB25_75
.LBB25_74:                              # %lor.rhs360.1
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB25_76
.LBB25_75:                              # %land.lhs.true357.1
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a2, $a1, 1156
	ori	$a1, $zero, 1
	beqz	$a2, .LBB25_74
.LBB25_76:                              # %lor.end366.1
	ld.wu	$a0, $s1, 476
	and	$a0, $a0, $a1
	st.w	$a0, $s1, 476
	ld.d	$a0, $s8, 0
	ld.w	$a1, $a0, 20
	ld.w	$a0, $s1, 384
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_78
# %bb.77:                               # %if.else.i.2
	ld.w	$a1, $s1, 400
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(B8Mode2Value.b8start)
	addi.d	$a2, $a2, %pc_lo12(B8Mode2Value.b8start)
	pcalau12i	$a3, %pc_hi20(B8Mode2Value.b8inc)
	addi.d	$a3, $a3, %pc_lo12(B8Mode2Value.b8inc)
	ldx.w	$a3, $a3, $a0
	ldx.w	$a0, $a2, $a0
	mul.d	$a1, $a3, $a1
	add.d	$a0, $a1, $a0
	b	.LBB25_79
.LBB25_78:                              # %if.then.i.2
	addi.d	$a0, $a0, -4
.LBB25_79:                              # %B8Mode2Value.exit.2
	st.w	$a0, $sp, 124
	ld.d	$a2, $fp, 0
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a1, $sp, 132
	ld.w	$a0, $s1, 384
	add.d	$s0, $a1, $s0
	beqz	$a0, .LBB25_81
.LBB25_80:                              # %lor.rhs360.2
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB25_82
.LBB25_81:                              # %land.lhs.true357.2
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a2, $a1, 1156
	ori	$a1, $zero, 1
	beqz	$a2, .LBB25_80
.LBB25_82:                              # %lor.end366.2
	ld.wu	$a0, $s1, 476
	and	$a0, $a0, $a1
	st.w	$a0, $s1, 476
	ld.d	$a0, $s8, 0
	ld.w	$a1, $a0, 20
	ld.w	$a0, $s1, 388
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_84
# %bb.83:                               # %if.else.i.3
	ld.w	$a1, $s1, 404
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(B8Mode2Value.b8start)
	addi.d	$a2, $a2, %pc_lo12(B8Mode2Value.b8start)
	pcalau12i	$a3, %pc_hi20(B8Mode2Value.b8inc)
	addi.d	$a3, $a3, %pc_lo12(B8Mode2Value.b8inc)
	ldx.w	$a3, $a3, $a0
	ldx.w	$a0, $a2, $a0
	mul.d	$a1, $a3, $a1
	add.d	$a0, $a1, $a0
	b	.LBB25_85
.LBB25_84:                              # %if.then.i.3
	addi.d	$a0, $a0, -4
.LBB25_85:                              # %B8Mode2Value.exit.3
	st.w	$a0, $sp, 124
	ld.d	$a2, $fp, 0
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a1, $sp, 132
	ld.w	$a0, $s1, 388
	add.d	$fp, $a1, $s0
	beqz	$a0, .LBB25_87
.LBB25_86:                              # %lor.rhs360.3
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB25_88
.LBB25_87:                              # %land.lhs.true357.3
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a2, $a1, 1156
	ori	$a1, $zero, 1
	beqz	$a2, .LBB25_86
.LBB25_88:                              # %lor.end366.3
	ld.wu	$a0, $s1, 476
	and	$a0, $a0, $a1
	st.w	$a0, $s1, 476
	pcaddu18i	$ra, %call36(writeMotionInfo2NAL)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 72
	add.d	$s0, $a0, $fp
.LBB25_89:                              # %if.end375
	ori	$a0, $a1, 4
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB25_92
# %bb.90:                               # %land.lhs.true383
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5100
	beqz	$a0, .LBB25_92
# %bb.91:                               # %if.then385
	pcalau12i	$a0, %got_pc_hi20(writeMB_transform_size)
	ld.d	$a0, $a0, %got_pc_lo12(writeMB_transform_size)
	ld.w	$a1, $s1, 472
	ld.d	$a2, $a0, 0
	st.w	$a1, $sp, 124
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a0, $sp, 132
	add.d	$s0, $a0, $s0
.LBB25_92:                              # %if.end393
	pcaddu18i	$ra, %call36(writeIntraModes)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 420
	add.w	$s0, $a0, $s0
	bnez	$a1, .LBB25_106
	b	.LBB25_109
.LBB25_93:                              # %for.inc322
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB25_251
.LBB25_94:                              # %for.body292.lr.ph.1
	ldptr.w	$a1, $a0, 15544
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB25_251
# %bb.95:                               # %for.body292.1.preheader
	move	$a3, $zero
	lu12i.w	$a1, 3
	ori	$s0, $a1, 3160
	ori	$s5, $zero, 2
	b	.LBB25_98
	.p2align	4, , 16
.LBB25_96:                              #   in Loop: Header=BB25_98 Depth=1
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
.LBB25_97:                              # %for.inc319.1
                                        #   in Loop: Header=BB25_98 Depth=1
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	ldptr.w	$a1, $a0, 15548
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	bge	$a3, $a1, .LBB25_251
.LBB25_98:                              # %for.body292.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_100 Depth 2
	ldptr.w	$a1, $a0, 15544
	ori	$a2, $zero, 1
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	blt	$a1, $a2, .LBB25_96
# %bb.99:                               # %for.body297.lr.ph.1
                                        #   in Loop: Header=BB25_98 Depth=1
	ld.w	$a1, $a0, 188
	move	$s6, $zero
	move	$s7, $zero
	add.w	$a1, $a1, $a3
	slli.d	$s8, $a1, 3
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB25_100:                             # %for.body297.1
                                        #   Parent Loop BB25_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 0
	ldx.w	$a2, $a0, $s0
	ldptr.d	$a1, $a1, 6472
	st.w	$a2, $sp, 132
	ld.d	$a1, $a1, 8
	ld.w	$a0, $a0, 184
	st.w	$s5, $sp, 120
	ldx.d	$a1, $a1, $s8
	add.d	$a0, $s6, $a0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	st.w	$a0, $sp, 140
	st.w	$a0, $sp, 124
	ld.w	$a0, $s1, 48
	add.w	$s4, $a2, $s4
	add.d	$a0, $a0, $a2
	st.w	$a0, $s1, 48
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeSE_Fix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.w	$a1, $a0, 15544
	addi.w	$s7, $s7, 1
	addi.d	$s6, $s6, 1
	blt	$s7, $a1, .LBB25_100
	b	.LBB25_97
.LBB25_101:                             # %land.lhs.true202
	ld.d	$a0, $s8, 0
	ld.w	$a0, $a0, 144
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB25_42
# %bb.102:                              # %if.then205
	st.w	$a0, $sp, 124
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeSE_UVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.d	$a0, $s8, 0
	ld.w	$s0, $sp, 132
	st.w	$zero, $a0, 144
	ld.w	$a1, $s1, 72
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	bnez	$a1, .LBB25_44
.LBB25_103:                             # %land.lhs.true222
	ld.d	$a0, $s8, 0
	ld.w	$a1, $a0, 20
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB25_105
# %bb.104:                              # %land.rhs
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1156
	sltu	$a0, $zero, $a0
.LBB25_105:                             # %if.end375.thread
	st.w	$a0, $s1, 476
	pcaddu18i	$ra, %call36(writeIntraModes)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 420
	add.w	$s0, $a0, $s0
	beqz	$a1, .LBB25_109
.LBB25_106:                             # %land.lhs.true398
	ld.d	$a0, $s8, 0
	ldptr.w	$a1, $a0, 15536
	beqz	$a1, .LBB25_109
# %bb.107:                              # %if.then402
	ld.w	$a1, $a0, 12
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ldptr.d	$a3, $a0, 14224
	ori	$a4, $zero, 536
	mul.d	$a1, $a1, $a4
	ldptr.w	$a2, $a2, 4016
	add.d	$fp, $a3, $a1
	ld.w	$a1, $fp, 416
	ldptr.d	$a0, $a0, 14216
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s7, $a2
	st.w	$a1, $sp, 164
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 160
	pcalau12i	$a1, %got_pc_hi20(writeCIPredMode)
	ld.d	$a1, $a1, %got_pc_lo12(writeCIPredMode)
	ld.w	$a2, $a2, 16
	ld.d	$a0, $a0, 24
	ori	$a3, $zero, 104
	ld.d	$a4, $a1, 0
	mul.d	$a1, $a2, $a3
	st.w	$zero, $sp, 168
	add.d	$a1, $a0, $a1
	addi.d	$a0, $sp, 160
	jirl	$ra, $a4, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $fp, 48
	add.d	$a1, $a1, $a0
	st.w	$a1, $fp, 48
	add.w	$s0, $a0, $s0
	ld.w	$a1, $s1, 72
	move	$a0, $a1
	bstrins.d	$a0, $zero, 3, 3
	beqz	$a0, .LBB25_111
.LBB25_108:                             # %if.then417
	pcaddu18i	$ra, %call36(writeMotionInfo2NAL)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 72
	add.w	$s0, $a0, $s0
	ld.d	$a0, $s8, 0
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	bnez	$a1, .LBB25_112
	b	.LBB25_114
.LBB25_109:                             # %if.else405
	beqz	$s3, .LBB25_135
# %bb.110:                              # %if.end409
	ld.w	$a1, $s1, 72
	move	$a0, $a1
	bstrins.d	$a0, $zero, 3, 3
	bnez	$a0, .LBB25_108
.LBB25_111:                             # %if.end420
	ld.d	$a0, $s8, 0
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB25_114
.LBB25_112:                             # %if.then432
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ori	$a4, $zero, 536
	mul.d	$a1, $a1, $a4
	ldptr.d	$a4, $a0, 14168
	ldptr.w	$a3, $a3, 4016
	add.d	$s2, $a2, $a1
	ldptr.d	$s4, $a0, 14216
	ld.d	$a0, $a4, 0
	slli.d	$a1, $a3, 3
	ldx.d	$s8, $s7, $a1
	ld.w	$s6, $s2, 364
	ld.d	$s0, $a0, 0
	ld.w	$a1, $s2, 72
	ld.d	$s5, $a0, 8
	ori	$a0, $zero, 10
	bne	$a1, $a0, .LBB25_116
# %bb.113:
	move	$s3, $zero
	b	.LBB25_122
.LBB25_114:                             # %lor.lhs.false424
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_251
# %bb.115:                              # %land.lhs.true428
	ld.w	$a1, $s1, 364
	bnez	$a1, .LBB25_112
	b	.LBB25_251
.LBB25_116:                             # %if.then.i156
	st.w	$s6, $sp, 164
	ori	$a0, $zero, 6
	pcalau12i	$a1, %got_pc_hi20(writeCBP)
	ld.d	$a1, $a1, %got_pc_lo12(writeCBP)
	st.w	$a0, $sp, 160
	ld.w	$a0, $s8, 24
	ld.d	$a2, $s4, 24
	ld.d	$a3, $a1, 0
	ori	$a1, $zero, 104
	mul.d	$a0, $a0, $a1
	add.d	$s1, $a2, $a0
	addi.d	$a0, $sp, 160
	move	$a1, $s1
	jirl	$ra, $a3, 0
	ld.w	$s3, $sp, 172
	ld.w	$a1, $s2, 40
	ld.w	$a0, $s2, 72
	add.d	$a1, $a1, $s3
	addi.w	$a2, $a0, -1
	ori	$a3, $zero, 3
	st.w	$a1, $s2, 40
	bltu	$a2, $a3, .LBB25_121
# %bb.117:                              # %lor.lhs.false.i
	bnez	$a0, .LBB25_120
# %bb.118:                              # %land.lhs.true23.i
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$a1, $a1, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_120
# %bb.119:                              # %land.lhs.true26.i
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a1, $a1, 1156
	bnez	$a1, .LBB25_180
.LBB25_120:                             # %lor.lhs.false27.i
	ld.w	$a1, $s2, 476
	beqz	$a1, .LBB25_122
.LBB25_121:                             # %land.lhs.true29.i
	ori	$a0, $a0, 4
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB25_180
.LBB25_122:                             # %if.end48.i
	bnez	$s6, .LBB25_124
# %bb.123:                              # %lor.lhs.false50.i
	ld.w	$a0, $s2, 72
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB25_140
.LBB25_124:                             # %if.then53.i
	ld.w	$a0, $s2, 4
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $fp, 0
	st.w	$a0, $sp, 164
	ori	$a0, $zero, 15
	ldptr.d	$a1, $a1, 14216
	pcalau12i	$a2, %got_pc_hi20(writeDquant)
	ld.d	$a2, $a2, %got_pc_lo12(writeDquant)
	st.w	$a0, $sp, 160
	ld.w	$a0, $s8, 60
	ld.d	$a1, $a1, 24
	ld.d	$a2, $a2, 0
	ori	$a3, $zero, 104
	mul.d	$a0, $a0, $a3
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 52
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 52
	add.d	$s3, $a0, $s3
.LBB25_125:                             # %if.end68.i
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 8
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 16
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 24
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 72
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB25_131
# %bb.126:                              # %if.else.i162
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB25_141
# %bb.127:                              # %if.else100.i
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s1, $zero
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 104
	ori	$s7, $zero, 104
	ori	$fp, $zero, 15
	.p2align	4, , 16
.LBB25_128:                             # %for.body109.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s6, $s0, 0
	st.w	$s6, $sp, 164
	ld.w	$a0, $s5, 0
	st.w	$zero, $sp, 184
	ld.w	$a1, $s8, 28
	ld.d	$a2, $s4, 24
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 160
	mul.d	$a0, $a1, $s7
	add.d	$a1, $a2, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 44
	add.d	$s3, $a0, $s3
	bltu	$fp, $s1, .LBB25_130
# %bb.129:                              # %for.body109.i
                                        #   in Loop: Header=BB25_128 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s5, $s5, 4
	addi.d	$s0, $s0, 4
	bnez	$s6, .LBB25_128
.LBB25_130:                             # %if.end130.i
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	andi	$a0, $a0, 15
	bnez	$a0, .LBB25_142
	b	.LBB25_166
.LBB25_131:                             # %for.cond80.preheader.i
	andi	$a0, $s6, 1
	bnez	$a0, .LBB25_136
# %bb.132:                              # %for.inc92.i
	andi	$a0, $s6, 2
	bnez	$a0, .LBB25_137
.LBB25_133:                             # %for.inc92.1.i
	andi	$a0, $s6, 4
	bnez	$a0, .LBB25_138
.LBB25_134:                             # %for.inc92.2.i
	andi	$a0, $s6, 8
	bnez	$a0, .LBB25_139
	b	.LBB25_166
.LBB25_135:                             # %if.then407
	st.w	$zero, $s1, 416
	ld.w	$a1, $s1, 72
	move	$a0, $a1
	bstrins.d	$a0, $zero, 3, 3
	beqz	$a0, .LBB25_111
	b	.LBB25_108
.LBB25_136:                             # %if.then86.i
	ld.w	$a1, $s2, 376
	ld.w	$a2, $s2, 472
	move	$a0, $zero
	pcaddu18i	$ra, %call36(writeLumaCoeff8x8)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	andi	$a0, $s6, 2
	beqz	$a0, .LBB25_133
.LBB25_137:                             # %if.then86.1.i
	ld.w	$a1, $s2, 380
	ld.w	$a2, $s2, 472
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(writeLumaCoeff8x8)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	andi	$a0, $s6, 4
	beqz	$a0, .LBB25_134
.LBB25_138:                             # %if.then86.2.i
	ld.w	$a1, $s2, 384
	ld.w	$a2, $s2, 472
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(writeLumaCoeff8x8)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	andi	$a0, $s6, 8
	beqz	$a0, .LBB25_166
.LBB25_139:                             # %if.then86.3.i
	ld.w	$a1, $s2, 388
	ld.w	$a2, $s2, 472
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(writeLumaCoeff8x8)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	b	.LBB25_166
.LBB25_140:
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	b	.LBB25_125
.LBB25_141:                             # %if.then97.i
	ori	$a0, $zero, 1
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	andi	$a0, $a0, 15
	beqz	$a0, .LBB25_166
.LBB25_142:                             # %for.cond134.preheader.i
	move	$a2, $zero
	ori	$s6, $zero, 1
	ori	$s0, $zero, 14
	ori	$a1, $zero, 1
	b	.LBB25_144
	.p2align	4, , 16
.LBB25_143:                             # %for.inc219.i
                                        #   in Loop: Header=BB25_144 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	addi.d	$a2, $a2, 2
	move	$a1, $zero
	beqz	$a0, .LBB25_166
.LBB25_144:                             # %for.cond138.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_147 Depth 2
                                        #       Child Loop BB25_149 Depth 3
                                        #       Child Loop BB25_154 Depth 3
                                        #       Child Loop BB25_158 Depth 3
                                        #       Child Loop BB25_164 Depth 3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$a3, $zero
	addi.d	$a0, $a2, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	b	.LBB25_147
	.p2align	4, , 16
.LBB25_145:                             # %if.then162.1.1.i
                                        #   in Loop: Header=BB25_147 Depth=2
	ori	$a0, $zero, 2
	ori	$a2, $zero, 3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
.LBB25_146:                             # %for.inc210.1.1.i
                                        #   in Loop: Header=BB25_147 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 2
	move	$a1, $zero
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB25_143
.LBB25_147:                             # %for.cond142.preheader.i
                                        #   Parent Loop BB25_144 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_149 Depth 3
                                        #       Child Loop BB25_154 Depth 3
                                        #       Child Loop BB25_158 Depth 3
                                        #       Child Loop BB25_164 Depth 3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	srli.d	$a1, $a3, 1
	add.d	$a1, $a1, $a2
	slli.d	$a4, $a1, 3
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	beqz	$a0, .LBB25_151
# %bb.148:                              # %if.else165.i
                                        #   in Loop: Header=BB25_147 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 14160
	ldx.d	$a1, $a1, $a4
	ld.d	$a1, $a1, 0
	move	$s1, $zero
	ld.d	$fp, $a1, 0
	ld.d	$s7, $a1, 8
	st.w	$a2, $a0, 100
	st.w	$a3, $a0, 96
	st.w	$s6, $a0, 104
	.p2align	4, , 16
.LBB25_149:                             # %for.body186.i
                                        #   Parent Loop BB25_144 Depth=1
                                        #     Parent Loop BB25_147 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s5, $fp, 0
	st.w	$s5, $sp, 164
	ld.w	$a0, $s7, 0
	st.w	$s6, $sp, 184
	ld.w	$a1, $s8, 36
	ld.d	$a2, $s4, 24
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 9
	st.w	$a0, $sp, 160
	ori	$a0, $zero, 104
	mul.d	$a0, $a1, $a0
	add.d	$a1, $a2, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 44
	add.d	$s3, $a0, $s3
	bltu	$s0, $s1, .LBB25_152
# %bb.150:                              # %for.body186.i
                                        #   in Loop: Header=BB25_149 Depth=3
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	addi.d	$fp, $fp, 4
	bnez	$s5, .LBB25_149
	b	.LBB25_152
	.p2align	4, , 16
.LBB25_151:                             # %if.then162.i
                                        #   in Loop: Header=BB25_147 Depth=2
	ori	$a0, $zero, 2
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
.LBB25_152:                             # %for.inc210.i
                                        #   in Loop: Header=BB25_147 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a3, $a1, 1
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB25_161
# %bb.153:                              # %if.else165.1.i
                                        #   in Loop: Header=BB25_147 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 14160
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 8
	move	$s1, $zero
	ld.d	$fp, $a1, 0
	ld.d	$s7, $a1, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a1, $a0, 100
	st.w	$a3, $a0, 96
	st.w	$s6, $a0, 104
	.p2align	4, , 16
.LBB25_154:                             # %for.body186.1.i
                                        #   Parent Loop BB25_144 Depth=1
                                        #     Parent Loop BB25_147 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s5, $fp, 0
	st.w	$s5, $sp, 164
	ld.w	$a0, $s7, 0
	st.w	$s6, $sp, 184
	ld.w	$a1, $s8, 36
	ld.d	$a2, $s4, 24
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 9
	st.w	$a0, $sp, 160
	ori	$a0, $zero, 104
	mul.d	$a0, $a1, $a0
	add.d	$a1, $a2, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 44
	add.d	$s3, $a0, $s3
	bltu	$s0, $s1, .LBB25_156
# %bb.155:                              # %for.body186.1.i
                                        #   in Loop: Header=BB25_154 Depth=3
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	addi.d	$fp, $fp, 4
	bnez	$s5, .LBB25_154
.LBB25_156:                             # %for.inc210.1.i
                                        #   in Loop: Header=BB25_147 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB25_162
.LBB25_157:                             # %if.else165.1122.i
                                        #   in Loop: Header=BB25_147 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 14160
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 16
	move	$s1, $zero
	ld.d	$fp, $a1, 0
	ld.d	$s7, $a1, 8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a0, 100
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a1, $a0, 96
	st.w	$s6, $a0, 104
	.p2align	4, , 16
.LBB25_158:                             # %for.body186.1134.i
                                        #   Parent Loop BB25_144 Depth=1
                                        #     Parent Loop BB25_147 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s5, $fp, 0
	st.w	$s5, $sp, 164
	ld.w	$a0, $s7, 0
	st.w	$s6, $sp, 184
	ld.w	$a1, $s8, 36
	ld.d	$a2, $s4, 24
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 9
	st.w	$a0, $sp, 160
	ori	$a0, $zero, 104
	mul.d	$a0, $a1, $a0
	add.d	$a1, $a2, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 44
	add.d	$s3, $a0, $s3
	bltu	$s0, $s1, .LBB25_160
# %bb.159:                              # %for.body186.1134.i
                                        #   in Loop: Header=BB25_158 Depth=3
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	addi.d	$fp, $fp, 4
	bnez	$s5, .LBB25_158
.LBB25_160:                             # %for.inc210.1141.i
                                        #   in Loop: Header=BB25_147 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	bnez	$a0, .LBB25_163
	b	.LBB25_145
	.p2align	4, , 16
.LBB25_161:                             # %if.then162.1.i
                                        #   in Loop: Header=BB25_147 Depth=2
	ori	$a0, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	bnez	$a0, .LBB25_157
.LBB25_162:                             # %if.then162.1139.i
                                        #   in Loop: Header=BB25_147 Depth=2
	ori	$a0, $zero, 2
	ori	$a2, $zero, 2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB25_145
.LBB25_163:                             # %if.else165.1.1.i
                                        #   in Loop: Header=BB25_147 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 14160
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 24
	move	$s1, $zero
	ld.d	$fp, $a1, 0
	ld.d	$s7, $a1, 8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a0, 100
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a1, $a0, 96
	st.w	$s6, $a0, 104
	.p2align	4, , 16
.LBB25_164:                             # %for.body186.1.1.i
                                        #   Parent Loop BB25_144 Depth=1
                                        #     Parent Loop BB25_147 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s5, $fp, 0
	st.w	$s5, $sp, 164
	ld.w	$a0, $s7, 0
	st.w	$s6, $sp, 184
	ld.w	$a1, $s8, 36
	ld.d	$a2, $s4, 24
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 9
	st.w	$a0, $sp, 160
	ori	$a0, $zero, 104
	mul.d	$a0, $a1, $a0
	add.d	$a1, $a2, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 44
	add.d	$s3, $a0, $s3
	bltu	$s0, $s1, .LBB25_146
# %bb.165:                              # %for.body186.1.1.i
                                        #   in Loop: Header=BB25_164 Depth=3
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	addi.d	$fp, $fp, 4
	bnez	$s5, .LBB25_164
	b	.LBB25_146
.LBB25_166:                             # %writeCBPandLumaCoeff.exit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$s3, $a0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 15536
	beqz	$a1, .LBB25_250
# %bb.167:                              # %if.then437
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a0, 12
	ldptr.d	$a4, $a0, 14224
	ori	$a5, $zero, 536
	ldptr.w	$a6, $a2, 4016
	mul.d	$a3, $a3, $a5
	add.d	$s3, $a4, $a3
	ldptr.d	$a3, $a0, 14216
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a3, $a6, 3
	ld.w	$a5, $s3, 364
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a3, $a4, $a3
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ori	$a3, $zero, 16
	addi.w	$a4, $a1, -1
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	blt	$a5, $a3, .LBB25_179
# %bb.168:                              # %for.cond.preheader.i
	ldptr.w	$a1, $a2, 4008
	pcalau12i	$a2, %pc_hi20(writeChromaCoeff.chroma_dc_context)
	addi.d	$a2, $a2, %pc_lo12(writeChromaCoeff.chroma_dc_context)
	alsl.d	$a2, $a4, $a2, 2
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	beqz	$a1, .LBB25_183
# %bb.169:                              # %if.else.i193
	ldptr.w	$a1, $a0, 15532
	bltz	$a1, .LBB25_195
# %bb.170:                              # %for.body19.lr.ph.i
	ldptr.d	$a1, $a0, 14168
	ld.d	$a1, $a1, 8
	move	$s4, $zero
	move	$s1, $zero
	ld.d	$s5, $a1, 0
	ld.d	$s6, $a1, 8
	ld.w	$s8, $a2, 0
	ori	$fp, $zero, 13
	ori	$s7, $zero, 1
	lu12i.w	$a1, 2
	ori	$s0, $a1, 1536
	.p2align	4, , 16
.LBB25_171:                             # %for.body19.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s2, $s5, 0
	st.w	$s2, $sp, 164
	ld.w	$a1, $s6, 0
	st.w	$a1, $sp, 168
	st.w	$s8, $sp, 184
	ld.wu	$a1, $s3, 72
	bltu	$fp, $a1, .LBB25_178
# %bb.172:                              # %for.body19.i
                                        #   in Loop: Header=BB25_171 Depth=1
	sll.d	$a2, $s7, $a1
	and	$a3, $a2, $s0
	ori	$a2, $zero, 8
	beqz	$a3, .LBB25_178
# %bb.173:                              # %lor.end.i
                                        #   in Loop: Header=BB25_171 Depth=1
	st.w	$a2, $sp, 160
	bltu	$fp, $a1, .LBB25_175
.LBB25_174:                             # %lor.end.i
                                        #   in Loop: Header=BB25_171 Depth=1
	sll.d	$a3, $s7, $a1
	and	$a4, $a3, $s0
	ori	$a3, $zero, 1
	bnez	$a4, .LBB25_176
.LBB25_175:                             # %lor.rhs42.i
                                        #   in Loop: Header=BB25_171 Depth=1
	addi.d	$a1, $a1, -14
	sltui	$a3, $a1, 1
.LBB25_176:                             # %lor.end45.i
                                        #   in Loop: Header=BB25_171 Depth=1
	st.w	$a3, $a0, 104
	st.w	$zero, $a0, 108
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 172
	ld.w	$a0, $s3, 48
	add.d	$a0, $a0, $a1
	st.w	$a0, $s3, 48
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a2, $a0, 15532
	add.d	$s1, $a1, $s1
	bge	$s4, $a2, .LBB25_184
# %bb.177:                              # %lor.end45.i
                                        #   in Loop: Header=BB25_171 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s2, .LBB25_171
	b	.LBB25_184
	.p2align	4, , 16
.LBB25_178:                             # %lor.rhs.i
                                        #   in Loop: Header=BB25_171 Depth=1
	addi.d	$a2, $a1, -14
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 12
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 8
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.w	$a2, $sp, 160
	bgeu	$fp, $a1, .LBB25_174
	b	.LBB25_175
.LBB25_179:
	move	$s1, $zero
	b	.LBB25_197
.LBB25_180:                             # %land.lhs.true35.i
	ld.bu	$a0, $s2, 364
	andi	$a0, $a0, 15
	beqz	$a0, .LBB25_122
# %bb.181:                              # %land.rhs.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5100
	beqz	$a0, .LBB25_122
# %bb.182:                              # %if.then40.i
	pcalau12i	$a0, %got_pc_hi20(writeMB_transform_size)
	ld.d	$a0, $a0, %got_pc_lo12(writeMB_transform_size)
	ld.w	$a1, $s2, 472
	ld.d	$a2, $a0, 0
	st.w	$a1, $sp, 164
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 160
	addi.d	$a0, $sp, 160
	move	$a1, $s1
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 32
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 32
	add.d	$s3, $a0, $s3
	b	.LBB25_122
.LBB25_183:                             # %if.then6.i
	ori	$a0, $zero, 6
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB25_184:                             # %for.inc55.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB25_196
.LBB25_185:                             # %if.else.1.i
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 15532
	bltz	$a1, .LBB25_197
# %bb.186:                              # %for.body19.lr.ph.1.i
	ldptr.d	$a1, $a0, 14168
	ld.d	$a1, $a1, 16
	move	$s4, $zero
	ld.d	$s5, $a1, 0
	ld.d	$s6, $a1, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$s2, $a1, 0
	ori	$s8, $zero, 13
	ori	$fp, $zero, 1
	lu12i.w	$a1, 2
	ori	$s0, $a1, 1536
	.p2align	4, , 16
.LBB25_187:                             # %for.body19.1.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s7, $s5, 0
	st.w	$s7, $sp, 164
	ld.w	$a1, $s6, 0
	st.w	$a1, $sp, 168
	st.w	$s2, $sp, 184
	ld.wu	$a1, $s3, 72
	bltu	$s8, $a1, .LBB25_194
# %bb.188:                              # %for.body19.1.i
                                        #   in Loop: Header=BB25_187 Depth=1
	sll.d	$a2, $fp, $a1
	and	$a3, $a2, $s0
	ori	$a2, $zero, 8
	beqz	$a3, .LBB25_194
# %bb.189:                              # %lor.end.1.i
                                        #   in Loop: Header=BB25_187 Depth=1
	st.w	$a2, $sp, 160
	bltu	$s8, $a1, .LBB25_191
.LBB25_190:                             # %lor.end.1.i
                                        #   in Loop: Header=BB25_187 Depth=1
	sll.d	$a3, $fp, $a1
	and	$a4, $a3, $s0
	ori	$a3, $zero, 1
	bnez	$a4, .LBB25_192
.LBB25_191:                             # %lor.rhs42.1.i
                                        #   in Loop: Header=BB25_187 Depth=1
	addi.d	$a1, $a1, -14
	sltui	$a3, $a1, 1
.LBB25_192:                             # %lor.end45.1.i
                                        #   in Loop: Header=BB25_187 Depth=1
	st.w	$a3, $a0, 104
	st.w	$fp, $a0, 108
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 172
	ld.w	$a0, $s3, 48
	add.d	$a0, $a0, $a1
	st.w	$a0, $s3, 48
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a2, $a0, 15532
	add.d	$s1, $a1, $s1
	bge	$s4, $a2, .LBB25_197
# %bb.193:                              # %lor.end45.1.i
                                        #   in Loop: Header=BB25_187 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s7, .LBB25_187
	b	.LBB25_197
	.p2align	4, , 16
.LBB25_194:                             # %lor.rhs.1.i
                                        #   in Loop: Header=BB25_187 Depth=1
	addi.d	$a2, $a1, -14
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 12
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 8
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.w	$a2, $sp, 160
	bgeu	$s8, $a1, .LBB25_190
	b	.LBB25_191
.LBB25_195:
	move	$s1, $zero
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	bnez	$a0, .LBB25_185
.LBB25_196:                             # %if.then6.1.i
	ori	$a0, $zero, 6
	ori	$a3, $zero, 1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
.LBB25_197:                             # %if.end58.i
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bstrins.d	$a1, $zero, 3, 0
	ori	$a0, $zero, 32
	bne	$a1, $a0, .LBB25_249
# %bb.198:                              # %for.cond61.preheader.i
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ldptr.w	$a1, $a0, 15528
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB25_249
# %bb.199:                              # %for.cond65.preheader.lr.ph.i
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	pcalau12i	$a2, %pc_hi20(subblk_offset_y)
	addi.d	$a2, $a2, %pc_lo12(subblk_offset_y)
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(subblk_offset_x)
	addi.d	$a2, $a2, %pc_lo12(subblk_offset_x)
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(writeChromaCoeff.chroma_ac_param)
	addi.d	$a2, $a2, %pc_lo12(writeChromaCoeff.chroma_ac_param)
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $zero, -1
	ori	$a1, $zero, 4
	lu12i.w	$a2, 3
	ori	$s2, $a2, 3240
	ori	$s6, $zero, 13
	lu12i.w	$a2, 2
	ori	$s4, $a2, 1536
	b	.LBB25_202
	.p2align	4, , 16
.LBB25_200:                             #   in Loop: Header=BB25_202 Depth=1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
.LBB25_201:                             # %for.inc182.i.3
                                        #   in Loop: Header=BB25_202 Depth=1
	ld.d	$a0, $s0, 0
	ldx.w	$a1, $a0, $s2
	addi.w	$a2, $a1, 3
	addi.d	$a1, $s5, 1
	bge	$s5, $a2, .LBB25_249
.LBB25_202:                             # %for.cond65.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_204 Depth 2
                                        #     Child Loop BB25_216 Depth 2
                                        #     Child Loop BB25_228 Depth 2
                                        #     Child Loop BB25_240 Depth 2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$s5, $a1
	slli.d	$a1, $a1, 2
	addi.d	$a1, $a1, -16
	ldptr.w	$a2, $a2, 4008
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	add.d	$s8, $a3, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	add.d	$s7, $a3, $a1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	slli.d	$a3, $s5, 3
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	beqz	$a2, .LBB25_213
# %bb.203:                              # %if.else80.i
                                        #   in Loop: Header=BB25_202 Depth=1
	ldptr.d	$a1, $a0, 14160
	ldx.d	$a1, $a1, $a3
	ld.d	$a1, $a1, 0
	ld.bu	$a2, $s8, 0
	ld.d	$s0, $a1, 0
	ld.d	$s5, $a1, 8
	srli.d	$a1, $a2, 2
	st.w	$a1, $a0, 100
	ld.bu	$a1, $s7, 0
	move	$s7, $zero
	addi.w	$fp, $fp, 1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 96
	.p2align	4, , 16
.LBB25_204:                             # %for.body118.i
                                        #   Parent Loop BB25_202 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s8, $s0, 0
	st.w	$s8, $sp, 164
	ld.w	$a0, $s5, 0
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 184
	ld.wu	$a1, $s3, 72
	bltu	$s6, $a1, .LBB25_211
# %bb.205:                              # %for.body118.i
                                        #   in Loop: Header=BB25_204 Depth=2
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	and	$a2, $a0, $s4
	ori	$a0, $zero, 10
	beqz	$a2, .LBB25_211
# %bb.206:                              # %lor.end141.i
                                        #   in Loop: Header=BB25_204 Depth=2
	st.w	$a0, $sp, 160
	bltu	$s6, $a1, .LBB25_208
.LBB25_207:                             # %lor.end141.i
                                        #   in Loop: Header=BB25_204 Depth=2
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a1
	and	$a3, $a2, $s4
	ori	$a2, $zero, 1
	bnez	$a3, .LBB25_209
.LBB25_208:                             # %lor.rhs156.i
                                        #   in Loop: Header=BB25_204 Depth=2
	addi.d	$a1, $a1, -14
	sltui	$a2, $a1, 1
.LBB25_209:                             # %lor.end160.i
                                        #   in Loop: Header=BB25_204 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.w	$a3, $a1, $s2
	st.w	$a2, $a1, 104
	slli.w	$a2, $a3, 1
	slt	$a2, $fp, $a2
	xori	$a2, $a2, 1
	st.w	$a2, $a1, 108
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s3, 48
	add.d	$a1, $a1, $a0
	st.w	$a1, $s3, 48
	add.d	$s1, $a0, $s1
	ori	$a0, $zero, 14
	bltu	$a0, $s7, .LBB25_212
# %bb.210:                              # %lor.end160.i
                                        #   in Loop: Header=BB25_204 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s5, $s5, 4
	addi.d	$s0, $s0, 4
	bnez	$s8, .LBB25_204
	b	.LBB25_212
	.p2align	4, , 16
.LBB25_211:                             # %lor.rhs137.i
                                        #   in Loop: Header=BB25_204 Depth=2
	addi.d	$a0, $a1, -14
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 14
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 10
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $sp, 160
	bgeu	$s6, $a1, .LBB25_207
	b	.LBB25_208
	.p2align	4, , 16
.LBB25_212:                             #   in Loop: Header=BB25_202 Depth=1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	b	.LBB25_214
	.p2align	4, , 16
.LBB25_213:                             # %if.then70.i
                                        #   in Loop: Header=BB25_202 Depth=1
	ld.bu	$a3, $a1, 0
	ori	$a0, $zero, 7
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
.LBB25_214:                             # %for.inc182.i
                                        #   in Loop: Header=BB25_202 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB25_225
# %bb.215:                              # %if.else80.i.1
                                        #   in Loop: Header=BB25_202 Depth=1
	ld.d	$a0, $s0, 0
	ldptr.d	$a1, $a0, 14160
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 8
	ld.bu	$a2, $s8, 1
	ld.d	$s0, $a1, 0
	ld.d	$s5, $a1, 8
	srli.d	$a1, $a2, 2
	st.w	$a1, $a0, 100
	ld.bu	$a1, $s7, 1
	move	$s7, $zero
	addi.w	$fp, $fp, 1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 96
	.p2align	4, , 16
.LBB25_216:                             # %for.body118.i.1
                                        #   Parent Loop BB25_202 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s8, $s0, 0
	st.w	$s8, $sp, 164
	ld.w	$a0, $s5, 0
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 184
	ld.wu	$a1, $s3, 72
	bltu	$s6, $a1, .LBB25_223
# %bb.217:                              # %for.body118.i.1
                                        #   in Loop: Header=BB25_216 Depth=2
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	and	$a2, $a0, $s4
	ori	$a0, $zero, 10
	beqz	$a2, .LBB25_223
# %bb.218:                              # %lor.end141.i.1
                                        #   in Loop: Header=BB25_216 Depth=2
	st.w	$a0, $sp, 160
	bltu	$s6, $a1, .LBB25_220
.LBB25_219:                             # %lor.end141.i.1
                                        #   in Loop: Header=BB25_216 Depth=2
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a1
	and	$a3, $a2, $s4
	ori	$a2, $zero, 1
	bnez	$a3, .LBB25_221
.LBB25_220:                             # %lor.rhs156.i.1
                                        #   in Loop: Header=BB25_216 Depth=2
	addi.d	$a1, $a1, -14
	sltui	$a2, $a1, 1
.LBB25_221:                             # %lor.end160.i.1
                                        #   in Loop: Header=BB25_216 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.w	$a3, $a1, $s2
	st.w	$a2, $a1, 104
	slli.w	$a2, $a3, 1
	slt	$a2, $fp, $a2
	xori	$a2, $a2, 1
	st.w	$a2, $a1, 108
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s3, 48
	add.d	$a1, $a1, $a0
	st.w	$a1, $s3, 48
	add.d	$s1, $a0, $s1
	ori	$a0, $zero, 14
	bltu	$a0, $s7, .LBB25_224
# %bb.222:                              # %lor.end160.i.1
                                        #   in Loop: Header=BB25_216 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s5, $s5, 4
	addi.d	$s0, $s0, 4
	bnez	$s8, .LBB25_216
	b	.LBB25_224
	.p2align	4, , 16
.LBB25_223:                             # %lor.rhs137.i.1
                                        #   in Loop: Header=BB25_216 Depth=2
	addi.d	$a0, $a1, -14
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 14
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 10
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $sp, 160
	bgeu	$s6, $a1, .LBB25_219
	b	.LBB25_220
	.p2align	4, , 16
.LBB25_224:                             #   in Loop: Header=BB25_202 Depth=1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	b	.LBB25_226
	.p2align	4, , 16
.LBB25_225:                             # %if.then70.i.1
                                        #   in Loop: Header=BB25_202 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.bu	$a3, $a0, 1
	ori	$a0, $zero, 7
	ori	$a2, $zero, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
.LBB25_226:                             # %for.inc182.i.1
                                        #   in Loop: Header=BB25_202 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB25_237
# %bb.227:                              # %if.else80.i.2
                                        #   in Loop: Header=BB25_202 Depth=1
	ld.d	$a0, $s0, 0
	ldptr.d	$a1, $a0, 14160
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $s8, 2
	ld.d	$s0, $a1, 0
	ld.d	$s5, $a1, 8
	srli.d	$a1, $a2, 2
	st.w	$a1, $a0, 100
	ld.bu	$a1, $s7, 2
	move	$s7, $zero
	addi.w	$fp, $fp, 1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 96
	.p2align	4, , 16
.LBB25_228:                             # %for.body118.i.2
                                        #   Parent Loop BB25_202 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s8, $s0, 0
	st.w	$s8, $sp, 164
	ld.w	$a0, $s5, 0
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 184
	ld.wu	$a1, $s3, 72
	bltu	$s6, $a1, .LBB25_235
# %bb.229:                              # %for.body118.i.2
                                        #   in Loop: Header=BB25_228 Depth=2
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	and	$a2, $a0, $s4
	ori	$a0, $zero, 10
	beqz	$a2, .LBB25_235
# %bb.230:                              # %lor.end141.i.2
                                        #   in Loop: Header=BB25_228 Depth=2
	st.w	$a0, $sp, 160
	bltu	$s6, $a1, .LBB25_232
.LBB25_231:                             # %lor.end141.i.2
                                        #   in Loop: Header=BB25_228 Depth=2
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a1
	and	$a3, $a2, $s4
	ori	$a2, $zero, 1
	bnez	$a3, .LBB25_233
.LBB25_232:                             # %lor.rhs156.i.2
                                        #   in Loop: Header=BB25_228 Depth=2
	addi.d	$a1, $a1, -14
	sltui	$a2, $a1, 1
.LBB25_233:                             # %lor.end160.i.2
                                        #   in Loop: Header=BB25_228 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.w	$a3, $a1, $s2
	st.w	$a2, $a1, 104
	slli.w	$a2, $a3, 1
	slt	$a2, $fp, $a2
	xori	$a2, $a2, 1
	st.w	$a2, $a1, 108
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s3, 48
	add.d	$a1, $a1, $a0
	st.w	$a1, $s3, 48
	add.d	$s1, $a0, $s1
	ori	$a0, $zero, 14
	bltu	$a0, $s7, .LBB25_236
# %bb.234:                              # %lor.end160.i.2
                                        #   in Loop: Header=BB25_228 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s5, $s5, 4
	addi.d	$s0, $s0, 4
	bnez	$s8, .LBB25_228
	b	.LBB25_236
	.p2align	4, , 16
.LBB25_235:                             # %lor.rhs137.i.2
                                        #   in Loop: Header=BB25_228 Depth=2
	addi.d	$a0, $a1, -14
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 14
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 10
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $sp, 160
	bgeu	$s6, $a1, .LBB25_231
	b	.LBB25_232
	.p2align	4, , 16
.LBB25_236:                             #   in Loop: Header=BB25_202 Depth=1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	b	.LBB25_238
	.p2align	4, , 16
.LBB25_237:                             # %if.then70.i.2
                                        #   in Loop: Header=BB25_202 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.bu	$a3, $a0, 2
	ori	$a0, $zero, 7
	ori	$a2, $zero, 2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
.LBB25_238:                             # %for.inc182.i.2
                                        #   in Loop: Header=BB25_202 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB25_248
# %bb.239:                              # %if.else80.i.3
                                        #   in Loop: Header=BB25_202 Depth=1
	ld.d	$a0, $s0, 0
	ldptr.d	$a1, $a0, 14160
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 24
	ld.bu	$a2, $s8, 3
	ld.d	$s0, $a1, 0
	ld.d	$s5, $a1, 8
	srli.d	$a1, $a2, 2
	st.w	$a1, $a0, 100
	ld.bu	$a1, $s7, 3
	move	$s7, $zero
	addi.w	$fp, $fp, 1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 96
	.p2align	4, , 16
.LBB25_240:                             # %for.body118.i.3
                                        #   Parent Loop BB25_202 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s8, $s0, 0
	st.w	$s8, $sp, 164
	ld.w	$a0, $s5, 0
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 184
	ld.wu	$a1, $s3, 72
	bltu	$s6, $a1, .LBB25_247
# %bb.241:                              # %for.body118.i.3
                                        #   in Loop: Header=BB25_240 Depth=2
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	and	$a2, $a0, $s4
	ori	$a0, $zero, 10
	beqz	$a2, .LBB25_247
# %bb.242:                              # %lor.end141.i.3
                                        #   in Loop: Header=BB25_240 Depth=2
	st.w	$a0, $sp, 160
	bltu	$s6, $a1, .LBB25_244
.LBB25_243:                             # %lor.end141.i.3
                                        #   in Loop: Header=BB25_240 Depth=2
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a1
	and	$a3, $a2, $s4
	ori	$a2, $zero, 1
	bnez	$a3, .LBB25_245
.LBB25_244:                             # %lor.rhs156.i.3
                                        #   in Loop: Header=BB25_240 Depth=2
	addi.d	$a1, $a1, -14
	sltui	$a2, $a1, 1
.LBB25_245:                             # %lor.end160.i.3
                                        #   in Loop: Header=BB25_240 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.w	$a3, $a1, $s2
	st.w	$a2, $a1, 104
	slli.w	$a2, $a3, 1
	slt	$a2, $fp, $a2
	xori	$a2, $a2, 1
	st.w	$a2, $a1, 108
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s3, 48
	add.d	$a1, $a1, $a0
	st.w	$a1, $s3, 48
	add.d	$s1, $a0, $s1
	ori	$a0, $zero, 14
	bltu	$a0, $s7, .LBB25_200
# %bb.246:                              # %lor.end160.i.3
                                        #   in Loop: Header=BB25_240 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s5, $s5, 4
	addi.d	$s0, $s0, 4
	bnez	$s8, .LBB25_240
	b	.LBB25_200
	.p2align	4, , 16
.LBB25_247:                             # %lor.rhs137.i.3
                                        #   in Loop: Header=BB25_240 Depth=2
	addi.d	$a0, $a1, -14
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 14
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 10
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $sp, 160
	bgeu	$s6, $a1, .LBB25_243
	b	.LBB25_244
	.p2align	4, , 16
.LBB25_248:                             # %if.then70.i.3
                                        #   in Loop: Header=BB25_202 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.bu	$a3, $a0, 3
	ori	$a0, $zero, 7
	ori	$a2, $zero, 3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	b	.LBB25_201
.LBB25_249:                             # %writeChromaCoeff.exit
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	add.d	$s3, $a0, $s1
	st.w	$s3, $a1, 0
.LBB25_250:                             # %if.end440
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.w	$a0, $s3, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
.LBB25_251:                             # %cleanup
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
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
.Lfunc_end25:
	.size	writeMBLayer, .Lfunc_end25-writeMBLayer
                                        # -- End function
	.p2align	5                               # -- Begin function writeMotionInfo2NAL
	.type	writeMotionInfo2NAL,@function
writeMotionInfo2NAL:                    # @writeMotionInfo2NAL
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a2, $a0, 0
	ldptr.d	$a0, $a2, 14224
	ld.w	$a1, $a2, 12
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$s8, $a3, %got_pc_lo12(input)
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$t1, $a0, $a1
	ld.d	$a0, $s8, 0
	ld.w	$a1, $t1, 72
	addi.d	$a3, $a0, 72
	addi.d	$a4, $a1, -8
	sltui	$a4, $a4, 1
	masknez	$a5, $a1, $a4
	ori	$t3, $zero, 4
	maskeqz	$a6, $t3, $a4
	or	$a5, $a6, $a5
	slli.d	$a5, $a5, 3
	ldx.w	$a5, $a3, $a5
	slli.d	$a6, $a1, 3
	addi.d	$a6, $a6, 4
	masknez	$a6, $a6, $a4
	ori	$a7, $zero, 36
	maskeqz	$a4, $a7, $a4
	or	$a4, $a4, $a6
	ldx.w	$a3, $a3, $a4
	ld.w	$t2, $a2, 20
	srai.d	$s4, $a5, 2
	srai.d	$a3, $a3, 2
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ori	$a3, $zero, 13
	lu12i.w	$a5, 2
	bltu	$a3, $a1, .LBB26_12
# %bb.1:                                # %entry
	ori	$a3, $zero, 1
	sll.d	$a3, $a3, $a1
	ori	$a4, $a5, 1537
	and	$a3, $a3, $a4
	beqz	$a3, .LBB26_3
# %bb.2:
	move	$fp, $zero
	ori	$a0, $zero, 13
	bgeu	$a0, $a1, .LBB26_27
	b	.LBB26_31
.LBB26_3:                               # %entry
	ori	$a3, $zero, 8
	bne	$a1, $a3, .LBB26_12
# %bb.4:                                # %lor.lhs.false
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ldptr.d	$a3, $a1, 6488
	ld.w	$a1, $a2, 168
	ld.w	$a6, $a2, 172
	ld.d	$a2, $a3, 0
	addi.w	$a3, $a1, 3
	addi.w	$a4, $a6, 3
	slt	$a5, $a3, $a1
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $a3
	slt	$a3, $a4, $a6
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	sub.d	$a4, $a5, $a1
	addi.d	$a4, $a4, 1
.LBB26_5:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_6 Depth 2
	move	$a5, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a2, $a6
	add.d	$a6, $a6, $a1
	move	$a7, $a4
	.p2align	4, , 16
.LBB26_6:                               # %for.body6.i
                                        #   Parent Loop BB26_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t0, $a6, 0
	bnez	$t0, .LBB26_12
# %bb.7:                                # %for.cond2.i
                                        #   in Loop: Header=BB26_6 Depth=2
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 1
	bnez	$a7, .LBB26_6
# %bb.8:                                # %for.inc12.i
                                        #   in Loop: Header=BB26_5 Depth=1
	addi.d	$a6, $a5, 1
	bne	$a5, $a3, .LBB26_5
# %bb.9:                                # %lor.lhs.false37
	ldptr.w	$a1, $a0, 4008
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB26_12
# %bb.10:                               # %lor.lhs.false37
	beq	$t2, $a0, .LBB26_12
# %bb.11:
	move	$fp, $zero
	b	.LBB26_31
.LBB26_12:                              # %if.then42
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $zero
	move	$fp, $zero
	addi.d	$s1, $t1, 392
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(assignSE2partition)
	ld.d	$a0, $a0, %got_pc_lo12(assignSE2partition)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(writeRefFrame)
	ld.d	$a0, $a0, %got_pc_lo12(writeRefFrame)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s6, $t1, 376
	b	.LBB26_14
	.p2align	4, , 16
.LBB26_13:                              # %for.inc80
                                        #   in Loop: Header=BB26_14 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.w	$s3, $s3, $a0
	bge	$s3, $t3, .LBB26_19
.LBB26_14:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_16 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 172
	move	$s0, $zero
	move	$s5, $zero
	add.w	$a0, $a0, $s3
	slli.d	$s2, $a0, 3
	b	.LBB26_16
	.p2align	4, , 16
.LBB26_15:                              # %for.inc
                                        #   in Loop: Header=BB26_16 Depth=2
	add.w	$s5, $s5, $s4
	add.d	$s0, $s0, $s4
	bge	$s5, $t3, .LBB26_13
.LBB26_16:                              # %for.body48
                                        #   Parent Loop BB26_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a0, $s5, 1
	add.w	$a0, $a0, $s3
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s1, $a0
	bstrins.d	$a1, $zero, 1, 1
	bnez	$a1, .LBB26_15
# %bb.17:                               # %land.lhs.true61
                                        #   in Loop: Header=BB26_16 Depth=2
	ldx.w	$a0, $s6, $a0
	beqz	$a0, .LBB26_15
# %bb.18:                               # %if.then66
                                        #   in Loop: Header=BB26_16 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $s8, 0
	ld.w	$a3, $a2, 168
	ldptr.w	$a1, $a1, 4016
	add.d	$a0, $a0, $a3
	ldx.b	$a0, $a0, $s0
	ld.w	$a3, $a2, 12
	slli.d	$a1, $a1, 3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a1, $a4, $a1
	ldptr.d	$a4, $a2, 14216
	ldptr.d	$a5, $a2, 14224
	ori	$a6, $zero, 536
	mul.d	$a3, $a3, $a6
	ld.w	$a1, $a1, 12
	ld.d	$a4, $a4, 24
	add.d	$s7, $a5, $a3
	ld.w	$a3, $s7, 432
	ori	$a5, $zero, 104
	mul.d	$a1, $a1, $a5
	add.d	$a1, $a4, $a1
	st.w	$s5, $a2, 96
	st.w	$s3, $a2, 100
	slli.d	$a2, $a3, 3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a3, $a2
	st.w	$a0, $sp, 84
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 80
	st.w	$zero, $sp, 88
	addi.d	$a0, $sp, 80
	jirl	$ra, $a2, 0
	ori	$t3, $zero, 4
	ld.w	$a0, $sp, 92
	ld.w	$a1, $s7, 36
	add.d	$a1, $a1, $a0
	st.w	$a1, $s7, 36
	add.w	$fp, $a0, $fp
	b	.LBB26_15
.LBB26_19:                              # %for.cond83.preheader
	move	$s3, $zero
	ori	$s5, $zero, 1
	ori	$a2, $zero, 4
	b	.LBB26_21
	.p2align	4, , 16
.LBB26_20:                              # %for.inc131
                                        #   in Loop: Header=BB26_21 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.w	$s3, $s3, $a0
	bge	$s3, $a2, .LBB26_26
.LBB26_21:                              # %for.body86
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_23 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 172
	move	$s2, $zero
	move	$s7, $zero
	add.w	$a0, $a0, $s3
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB26_23
	.p2align	4, , 16
.LBB26_22:                              # %for.inc128
                                        #   in Loop: Header=BB26_23 Depth=2
	add.w	$s7, $s7, $s4
	add.d	$s2, $s2, $s4
	bge	$s7, $a2, .LBB26_20
.LBB26_23:                              # %for.body92
                                        #   Parent Loop BB26_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a0, $s7, 1
	add.w	$a0, $a0, $s3
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s1, $a0
	addi.w	$a1, $a1, -1
	bltu	$s5, $a1, .LBB26_22
# %bb.24:                               # %land.lhs.true106
                                        #   in Loop: Header=BB26_23 Depth=2
	ldx.w	$a0, $s6, $a0
	beqz	$a0, .LBB26_22
# %bb.25:                               # %if.then112
                                        #   in Loop: Header=BB26_23 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $s8, 0
	ld.w	$a3, $a2, 168
	ldptr.w	$a1, $a1, 4016
	add.d	$a0, $a0, $a3
	ldx.b	$a0, $a0, $s2
	ld.w	$a3, $a2, 12
	slli.d	$a1, $a1, 3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a1, $a4, $a1
	ldptr.d	$a4, $a2, 14216
	ldptr.d	$a5, $a2, 14224
	ori	$a6, $zero, 536
	mul.d	$a3, $a3, $a6
	ld.w	$a1, $a1, 12
	ld.d	$a4, $a4, 24
	move	$s0, $s8
	add.d	$s8, $a5, $a3
	ld.w	$a3, $s8, 432
	ori	$a5, $zero, 104
	mul.d	$a1, $a1, $a5
	add.d	$a1, $a4, $a1
	st.w	$s7, $a2, 96
	st.w	$s3, $a2, 100
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 8
	st.w	$a0, $sp, 84
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 80
	st.w	$s5, $sp, 88
	addi.d	$a0, $sp, 80
	jirl	$ra, $a2, 0
	ori	$a2, $zero, 4
	ld.w	$a0, $sp, 92
	ld.w	$a1, $s8, 36
	add.d	$a1, $a1, $a0
	st.w	$a1, $s8, 36
	move	$s8, $s0
	add.w	$fp, $a0, $fp
	b	.LBB26_22
.LBB26_26:                              # %if.end135.loopexit
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $t1, 72
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $zero, 13
	bltu	$a0, $a1, .LBB26_31
.LBB26_27:                              # %if.end135
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $a5, 1537
	and	$a0, $a0, $a2
	beqz	$a0, .LBB26_31
# %bb.28:                               # %if.end205
	ori	$a0, $zero, 13
	bltu	$a0, $a1, .LBB26_39
.LBB26_29:                              # %if.end205
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $a5, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB26_39
.LBB26_30:                              # %if.end277
	move	$a0, $fp
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
.LBB26_31:                              # %for.cond152.preheader
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $zero
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s5, $t1, 392
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s6, $t1, 376
	ori	$s7, $zero, 4
	b	.LBB26_33
	.p2align	4, , 16
.LBB26_32:                              # %for.inc202
                                        #   in Loop: Header=BB26_33 Depth=1
	move	$s0, $s1
	bge	$s1, $s7, .LBB26_38
.LBB26_33:                              # %for.body155
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_35 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 172
	move	$s8, $zero
	move	$s2, $zero
	add.w	$a0, $a0, $s0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.w	$s1, $s0, $a1
	slli.d	$s3, $a0, 3
	b	.LBB26_35
	.p2align	4, , 16
.LBB26_34:                              # %for.inc199
                                        #   in Loop: Header=BB26_35 Depth=2
	add.w	$s2, $s2, $s4
	add.d	$s8, $s8, $s4
	bge	$s2, $s7, .LBB26_32
.LBB26_35:                              # %for.body161
                                        #   Parent Loop BB26_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a0, $s2, 1
	add.w	$a0, $a0, $s0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s5, $a0
	bstrins.d	$a1, $zero, 1, 1
	bnez	$a1, .LBB26_34
# %bb.36:                               # %land.lhs.true175
                                        #   in Loop: Header=BB26_35 Depth=2
	ldx.w	$a6, $s6, $a0
	beqz	$a6, .LBB26_34
# %bb.37:                               # %if.then181
                                        #   in Loop: Header=BB26_35 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a0, $s3
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	ldx.b	$a4, $a0, $s8
	add.w	$a2, $s4, $s2
	move	$a0, $s2
	move	$a1, $s0
	move	$a3, $s1
	move	$a5, $zero
	pcaddu18i	$ra, %call36(writeMotionVector8x8)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
	b	.LBB26_34
.LBB26_38:                              # %if.end205thread-pre-split
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $t1, 72
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $zero, 13
	bgeu	$a0, $a1, .LBB26_29
.LBB26_39:                              # %land.lhs.true217
	beqz	$a1, .LBB26_30
# %bb.40:                               # %land.lhs.true217
	ori	$s3, $zero, 1
	bne	$t2, $s3, .LBB26_30
# %bb.41:                               # %for.cond224.preheader
	move	$s0, $zero
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$s6, $t1, 392
	addi.d	$s7, $t1, 376
	ori	$s8, $zero, 4
	b	.LBB26_43
	.p2align	4, , 16
.LBB26_42:                              # %for.inc274
                                        #   in Loop: Header=BB26_43 Depth=1
	move	$s0, $s1
	bge	$s1, $s8, .LBB26_30
.LBB26_43:                              # %for.body227
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_45 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 172
	move	$s5, $zero
	move	$s2, $zero
	add.w	$a0, $a0, $s0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.w	$s1, $s0, $a1
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB26_45
	.p2align	4, , 16
.LBB26_44:                              # %for.inc271
                                        #   in Loop: Header=BB26_45 Depth=2
	add.w	$s2, $s2, $s4
	add.d	$s5, $s5, $s4
	bge	$s2, $s8, .LBB26_42
.LBB26_45:                              # %for.body233
                                        #   Parent Loop BB26_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a0, $s2, 1
	add.w	$a0, $a0, $s0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s6, $a0
	addi.w	$a1, $a1, -1
	bltu	$s3, $a1, .LBB26_44
# %bb.46:                               # %land.lhs.true247
                                        #   in Loop: Header=BB26_45 Depth=2
	ldx.w	$a6, $s7, $a0
	beqz	$a6, .LBB26_44
# %bb.47:                               # %if.then253
                                        #   in Loop: Header=BB26_45 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	ldx.b	$a4, $a0, $s5
	add.w	$a2, $s4, $s2
	ori	$a5, $zero, 1
	move	$a0, $s2
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(writeMotionVector8x8)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
	b	.LBB26_44
.Lfunc_end26:
	.size	writeMotionInfo2NAL, .Lfunc_end26-writeMotionInfo2NAL
                                        # -- End function
	.globl	write_terminating_bit           # -- Begin function write_terminating_bit
	.p2align	5
	.type	write_terminating_bit,@function
write_terminating_bit:                  # @write_terminating_bit
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ldptr.w	$a1, $a1, 4016
	pcalau12i	$a3, %got_pc_hi20(assignSE2partition)
	ld.d	$a3, $a3, %got_pc_lo12(assignSE2partition)
	ld.d	$a2, $a2, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	ldptr.d	$a2, $a2, 14216
	ld.w	$a3, $a1, 8
	ld.d	$a2, $a2, 24
	move	$a1, $a0
	ori	$a0, $zero, 104
	mul.d	$a0, $a3, $a0
	ldx.d	$a3, $a2, $a0
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 1
	addi.d	$a0, $a0, 8
	st.w	$a2, $a3, 40
	pcaddu18i	$t8, %call36(biari_encode_symbol_final)
	jr	$t8
.Lfunc_end27:
	.size	write_terminating_bit, .Lfunc_end27-write_terminating_bit
                                        # -- End function
	.globl	set_last_dquant                 # -- Begin function set_last_dquant
	.p2align	5
	.type	set_last_dquant,@function
set_last_dquant:                        # @set_last_dquant
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a1, 12
	ldptr.d	$a2, $a1, 14224
	ori	$a3, $zero, 536
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a2, $a0
	ld.w	$a2, $a0, 72
	beqz	$a2, .LBB28_2
.LBB28_1:                               # %if.then
	ld.w	$a0, $a0, 4
	pcalau12i	$a1, %got_pc_hi20(last_dquant)
	ld.d	$a1, $a1, %got_pc_lo12(last_dquant)
	st.w	$a0, $a1, 0
	ret
.LBB28_2:                               # %lor.lhs.false20
	ld.w	$a1, $a1, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB28_4
# %bb.3:                                # %land.lhs.true22
	ld.w	$a1, $a0, 364
	bnez	$a1, .LBB28_1
.LBB28_4:
	move	$a0, $zero
	pcalau12i	$a1, %got_pc_hi20(last_dquant)
	ld.d	$a1, $a1, %got_pc_lo12(last_dquant)
	st.w	$a0, $a1, 0
	ret
.Lfunc_end28:
	.size	set_last_dquant, .Lfunc_end28-set_last_dquant
                                        # -- End function
	.globl	write_one_macroblock            # -- Begin function write_one_macroblock
	.p2align	5
	.type	write_one_macroblock,@function
write_one_macroblock:                   # @write_one_macroblock
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s2, $a1, %got_pc_lo12(img)
	ld.d	$a1, $s2, 0
	ldptr.d	$a3, $a1, 14224
	ld.w	$a2, $a1, 12
	ori	$a4, $zero, 536
	pcalau12i	$a5, %got_pc_hi20(input)
	ld.d	$s1, $a5, %got_pc_lo12(input)
	mul.d	$a4, $a2, $a4
	add.d	$fp, $a3, $a4
	ld.w	$a4, $fp, 8
	ld.d	$a3, $s1, 0
	lu12i.w	$s0, 3
	ori	$a5, $s0, 3320
	ldx.w	$a5, $a1, $a5
	ld.w	$a6, $a3, 272
	add.d	$a4, $a5, $a4
	stptr.w	$a4, $a1, 15608
	beqz	$a6, .LBB29_6
# %bb.1:                                # %land.lhs.true
	ld.w	$a5, $a1, 20
	ori	$a4, $zero, 1
	bltu	$a4, $a5, .LBB29_6
# %bb.2:                                # %if.then
	ld.w	$a5, $fp, 72
	ori	$a6, $zero, 13
	bltu	$a6, $a5, .LBB29_4
# %bb.3:                                # %if.then
	ori	$a6, $zero, 1
	sll.d	$a6, $a6, $a5
	lu12i.w	$a7, 2
	ori	$a7, $a7, 1536
	and	$a6, $a6, $a7
	bnez	$a6, .LBB29_5
.LBB29_4:                               # %lor.rhs
	addi.d	$a4, $a5, -14
	sltui	$a4, $a4, 1
.LBB29_5:                               # %lor.end
	ldptr.d	$a5, $a1, 14240
	slli.d	$a2, $a2, 2
	stx.w	$a4, $a5, $a2
	ld.w	$a2, $a1, 12
.LBB29_6:                               # %if.end
	pcalau12i	$a4, %pc_hi20(intras)
	bnez	$a2, .LBB29_8
# %bb.7:                                # %if.then17
	st.w	$zero, $a4, %pc_lo12(intras)
.LBB29_8:                               # %if.end18
	ld.w	$a5, $fp, 72
	ori	$a6, $zero, 14
	bltu	$a6, $a5, .LBB29_11
# %bb.9:                                # %if.end18
	ori	$a6, $zero, 1
	sll.d	$a5, $a6, $a5
	lu12i.w	$a6, 6
	ori	$a6, $a6, 1536
	and	$a5, $a5, $a6
	beqz	$a5, .LBB29_11
# %bb.10:                               # %if.then30
	ld.w	$a5, $a4, %pc_lo12(intras)
	addi.d	$a5, $a5, 1
	st.w	$a5, $a4, %pc_lo12(intras)
.LBB29_11:                              # %if.end31
	ldptr.w	$a4, $a3, 4008
	ori	$s4, $zero, 1
	bne	$a4, $s4, .LBB29_15
# %bb.12:                               # %land.lhs.true33
	beqz	$a0, .LBB29_15
# %bb.13:                               # %land.lhs.true33
	ldptr.d	$a0, $a1, 14216
	ld.w	$a1, $a0, 12
	beq	$a2, $a1, .LBB29_15
# %bb.14:                               # %if.then38
	ldptr.w	$a1, $a3, 4016
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 8
	ld.d	$a0, $a0, 24
	ori	$a2, $zero, 104
	mul.d	$a1, $a1, $a2
	ldx.d	$a2, $a0, $a1
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	st.w	$a1, $a2, 40
	addi.d	$a0, $a0, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(biari_encode_symbol_final)
	jirl	$ra, $ra, 0
.LBB29_15:                              # %if.end39
	pcalau12i	$a0, %got_pc_hi20(cabac_encoding)
	ld.d	$s3, $a0, %got_pc_lo12(cabac_encoding)
	st.w	$s4, $s3, 0
	addi.d	$a1, $sp, 20
	move	$a0, $zero
	pcaddu18i	$ra, %call36(writeMBLayer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 72
	ld.d	$a0, $s2, 0
	bnez	$a1, .LBB29_19
# %bb.16:                               # %lor.lhs.false42
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB29_18
# %bb.17:                               # %land.lhs.true45
	ld.w	$a1, $fp, 364
	bnez	$a1, .LBB29_19
.LBB29_18:                              # %if.then47
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 8
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 16
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 24
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
.LBB29_19:                              # %if.end56
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a2, $a1
	ld.w	$a2, $a1, 72
	beqz	$a2, .LBB29_21
.LBB29_20:                              # %if.then.i
	ld.w	$a1, $a1, 4
	b	.LBB29_24
.LBB29_21:                              # %lor.lhs.false20.i
	ld.w	$a2, $a0, 20
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB29_23
# %bb.22:                               # %land.lhs.true22.i
	ld.w	$a2, $a1, 364
	bnez	$a2, .LBB29_20
.LBB29_23:
	move	$a1, $zero
.LBB29_24:                              # %set_last_dquant.exit
	pcalau12i	$a2, %got_pc_hi20(last_dquant)
	ld.d	$a2, $a2, %got_pc_lo12(last_dquant)
	st.w	$a1, $a2, 0
	ld.w	$a3, $fp, 32
	ld.w	$a4, $fp, 44
	ld.w	$a5, $fp, 36
	ld.w	$a1, $fp, 40
	ld.w	$a2, $fp, 52
	ld.w	$a6, $fp, 48
	add.d	$a3, $a5, $a3
	add.d	$a4, $a3, $a4
	add.d	$a4, $a4, $a1
	ld.d	$a5, $s1, 0
	add.d	$a4, $a4, $a2
	add.d	$a4, $a4, $a6
	st.w	$a4, $fp, 28
	ldptr.w	$a4, $a5, 5116
	beqz	$a4, .LBB29_27
# %bb.25:                               # %if.then70
	add.d	$a1, $a3, $a1
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	stptr.w	$a1, $a0, 15400
	ld.w	$a3, $fp, 44
	ld.w	$a4, $fp, 48
	ld.w	$a5, $a2, 20
	add.d	$a3, $a4, $a3
	add.d	$a4, $a5, $a3
	ld.w	$a5, $a2, 16
	ldptr.w	$a6, $a0, 15404
	ldptr.w	$a7, $a0, 15352
	st.w	$a4, $a2, 20
	add.d	$a4, $a5, $a1
	st.w	$a4, $a2, 16
	stptr.w	$a3, $a0, 15396
	bgeu	$a6, $a7, .LBB29_27
# %bb.26:                               # %if.then87
	ld.w	$a4, $a2, 24
	ld.w	$a5, $a2, 28
	add.d	$a1, $a4, $a1
	st.w	$a1, $a2, 24
	add.d	$a1, $a5, $a3
	st.w	$a1, $a2, 28
.LBB29_27:                              # %if.end93
	ori	$a1, $s0, 3100
	pcalau12i	$a2, %got_pc_hi20(stats)
	ld.d	$a2, $a2, %got_pc_lo12(stats)
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $a2, 0
	addi.d	$a1, $a1, 1
	stptr.w	$a1, $a0, 15388
	ld.w	$a0, $fp, 28
	ld.w	$a1, $a2, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $a2, 32
	st.w	$zero, $s3, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end29:
	.size	write_one_macroblock, .Lfunc_end29-write_one_macroblock
                                        # -- End function
	.globl	writeReferenceFrame             # -- Begin function writeReferenceFrame
	.p2align	5
	.type	writeReferenceFrame,@function
writeReferenceFrame:                    # @writeReferenceFrame
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	pcalau12i	$a5, %got_pc_hi20(input)
	ld.d	$a5, $a5, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.d	$a5, $a5, 0
	ldptr.d	$a6, $a0, 14224
	ld.w	$a7, $a0, 12
	ori	$t0, $zero, 536
	ldptr.w	$a5, $a5, 4016
	pcalau12i	$t1, %got_pc_hi20(assignSE2partition)
	ld.d	$t1, $t1, %got_pc_lo12(assignSE2partition)
	mul.d	$a7, $a7, $t0
	ldptr.d	$t0, $a0, 14216
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $t1, $a5
	add.d	$fp, $a6, $a7
	ld.w	$a6, $fp, 432
	ld.d	$a7, $t0, 24
	ld.w	$a5, $a5, 12
	sltui	$t0, $a3, 1
	add.w	$a6, $a6, $t0
	ori	$a3, $zero, 104
	mul.d	$a3, $a5, $a3
	add.d	$a3, $a7, $a3
	st.w	$a4, $sp, 12
	pcalau12i	$a4, %got_pc_hi20(writeRefFrame)
	ld.d	$a4, $a4, %got_pc_lo12(writeRefFrame)
	ori	$a5, $zero, 3
	st.w	$a5, $sp, 8
	slli.d	$a5, $a6, 3
	ldx.d	$a4, $a4, $a5
	st.w	$t0, $sp, 16
	st.w	$a1, $a0, 96
	st.w	$a2, $a0, 100
	addi.d	$a0, $sp, 8
	move	$a1, $a3
	jirl	$ra, $a4, 0
	ld.w	$a1, $fp, 36
	ld.w	$a0, $sp, 20
	add.d	$a1, $a1, $a0
	st.w	$a1, $fp, 36
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end30:
	.size	writeReferenceFrame, .Lfunc_end30-writeReferenceFrame
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function writeMotionVector8x8
.LCPI31_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI31_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	writeMotionVector8x8
	.p2align	5
	.type	writeMotionVector8x8,@function
writeMotionVector8x8:                   # @writeMotionVector8x8
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
	pcalau12i	$a7, %got_pc_hi20(img)
	ld.d	$a7, $a7, %got_pc_lo12(img)
	st.d	$a7, $sp, 232                   # 8-byte Folded Spill
	ld.d	$t1, $a7, 0
	ld.w	$t0, $t1, 12
	ldptr.d	$a7, $t1, 14224
	ori	$t2, $zero, 536
	mul.d	$t2, $t0, $t2
	add.d	$t2, $a7, $t2
	st.d	$t2, $sp, 200                   # 8-byte Folded Spill
	ld.hu	$t2, $t2, 480
	ldptr.d	$t3, $t1, 14384
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	move	$s4, $a1
	move	$s6, $a0
	beqz	$t2, .LBB31_5
# %bb.1:                                # %land.lhs.true
	bnez	$a4, .LBB31_5
# %bb.2:                                # %land.lhs.true
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB31_5
# %bb.3:                                # %land.lhs.true
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 392
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB31_5
# %bb.4:                                # %if.then
	addi.d	$a0, $t2, -1
	sltui	$a0, $a0, 1
	lu12i.w	$a1, 3
	ori	$a2, $a1, 2112
	masknez	$a2, $a2, $a0
	ori	$a1, $a1, 2104
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ldx.d	$a0, $t1, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
.LBB31_5:                               # %if.end
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bge	$s4, $a0, .LBB31_32
# %bb.6:                                # %for.cond26.preheader.lr.ph
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bge	$s6, $a0, .LBB31_32
# %bb.7:                                # %for.cond26.preheader.us.preheader
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	move	$a5, $zero
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a0, 3
	ldptr.w	$a0, $a0, 4016
	ld.w	$s1, $a1, 136
	ld.w	$fp, $a1, 140
	pcalau12i	$a1, %got_pc_hi20(assignSE2partition)
	ld.d	$a1, $a1, %got_pc_lo12(assignSE2partition)
	slli.d	$a0, $a0, 3
	bstrpick.d	$s2, $s1, 31, 0
	ldptr.d	$a2, $t1, 14216
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ldx.d	$a0, $a1, $a0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ldptr.d	$a0, $t1, 14376
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a0, $a2, 7
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 76
	addi.d	$a1, $a2, 2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s2, 30, 3
	slli.d	$s5, $a0, 3
	slli.d	$a0, $s6, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $zero, 536
	mul.d	$a0, $t0, $a0
	slli.d	$a1, $a2, 7
	add.d	$a0, $a0, $a1
	slli.d	$a1, $s4, 5
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a7
	addi.d	$a1, $a0, 76
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a1, $fp, 5
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $a0, 80
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s3, $zero, 8
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	b	.LBB31_9
	.p2align	4, , 16
.LBB31_8:                               # %for.cond26.for.inc94_crit_edge.us
                                        #   in Loop: Header=BB31_9 Depth=1
	add.d	$s4, $s4, $fp
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	bge	$s4, $a0, .LBB31_33
.LBB31_9:                               # %for.cond26.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_10 Depth 2
                                        #     Child Loop BB31_12 Depth 2
                                        #       Child Loop BB31_15 Depth 3
                                        #         Child Loop BB31_18 Depth 4
                                        #         Child Loop BB31_21 Depth 4
                                        #       Child Loop BB31_25 Depth 3
                                        #         Child Loop BB31_28 Depth 4
                                        #         Child Loop BB31_31 Depth 4
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $s4, $a0, 3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a2, $s4, $a0, 3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	slli.d	$s7, $a0, 3
	slli.d	$a4, $a4, 3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a6, $a0, 3
	move	$s0, $s6
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	move	$a7, $s6
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	st.d	$a6, $sp, 256                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	bgtz	$fp, .LBB31_12
	.p2align	4, , 16
.LBB31_10:                              # %for.cond30.preheader.us63
                                        #   Parent Loop BB31_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	st.d	$a7, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ldx.d	$a0, $a0, $s8
	ldx.d	$a1, $a1, $s8
	ldx.d	$a0, $a0, $s7
	ldx.d	$a1, $a1, $s7
	ldx.d	$a0, $a0, $a4
	ldx.d	$a1, $a1, $a4
	ldx.d	$a0, $a0, $a6
	ldx.d	$a1, $a1, $a6
	ld.h	$a0, $a0, 0
	ld.h	$a1, $a1, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 20
	sub.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a3, $zero, 104
	mul.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(writeMVD)
	ld.d	$a4, $a4, %got_pc_lo12(writeMVD)
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a2
	st.w	$s0, $a3, 96
	st.w	$s4, $a3, 100
	ld.d	$a2, $a4, 0
	st.w	$a0, $sp, 276
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $sp, 280
	ori	$a0, $zero, 5
	st.w	$a0, $sp, 272
	addi.d	$a0, $sp, 272
	jirl	$ra, $a2, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a0, $s8
	ldx.d	$a1, $a1, $s8
	ldx.d	$a0, $a0, $s7
	ldx.d	$a1, $a1, $s7
	ld.w	$a2, $sp, 284
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a3, $s6, 36
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a4
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a4
	add.d	$a3, $a3, $a2
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a4
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a4
	st.w	$a3, $s6, 36
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.h	$a0, $a0, 2
	ld.h	$a1, $a1, 2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 20
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 24
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 104
	mul.d	$a1, $a2, $a1
	add.d	$a1, $a3, $a1
	st.w	$s0, $a4, 96
	st.w	$s4, $a4, 100
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.w	$a0, $sp, 276
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $sp, 280
	ori	$a0, $zero, 5
	st.w	$a0, $sp, 272
	addi.d	$a0, $sp, 272
	jirl	$ra, $a2, 0
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 284
	ld.w	$a1, $s6, 36
	add.d	$a1, $a1, $a0
	st.w	$a1, $s6, 36
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.w	$a5, $a0, $a3
	add.d	$a7, $a7, $s1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$s8, $s8, $a0
	add.d	$s0, $s0, $s1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	blt	$a7, $a0, .LBB31_10
	b	.LBB31_8
	.p2align	4, , 16
.LBB31_11:                              # %for.cond60.for.end79_crit_edge.us.us.us.1
                                        #   in Loop: Header=BB31_12 Depth=2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 20
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 24
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	add.d	$s0, $a1, $a5
	ori	$a1, $zero, 104
	mul.d	$a1, $a2, $a1
	add.d	$a1, $a3, $a1
	st.w	$s6, $a4, 96
	st.w	$s4, $a4, 100
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.w	$a0, $sp, 276
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $sp, 280
	ori	$a0, $zero, 5
	st.w	$a0, $sp, 272
	addi.d	$a0, $sp, 272
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 284
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 36
	add.d	$a1, $a1, $a0
	st.w	$a1, $a2, 36
	add.d	$s6, $s6, $s1
	add.w	$a5, $a0, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	bge	$s6, $a0, .LBB31_8
.LBB31_12:                              # %for.cond30.preheader.us.us
                                        #   Parent Loop BB31_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_15 Depth 3
                                        #         Child Loop BB31_18 Depth 4
                                        #         Child Loop BB31_21 Depth 4
                                        #       Child Loop BB31_25 Depth 3
                                        #         Child Loop BB31_28 Depth 4
                                        #         Child Loop BB31_31 Depth 4
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	slli.d	$a2, $s6, 3
	ldx.d	$a0, $a0, $a2
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ldx.d	$a1, $a1, $a2
	ldx.d	$a0, $a0, $s7
	ldx.d	$a1, $a1, $s7
	ldx.d	$a0, $a0, $a4
	ldx.d	$a1, $a1, $a4
	ldx.d	$a0, $a0, $a6
	ldx.d	$a1, $a1, $a6
	ld.h	$a0, $a0, 0
	ld.h	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	xvreplgr2vr.d	$xr4, $s6
	pcalau12i	$s8, %pc_hi20(.LCPI31_0)
	pcalau12i	$s0, %pc_hi20(.LCPI31_1)
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$s1, $a1, .LBB31_22
# %bb.13:                               # %for.cond64.preheader.us.us.us.us.preheader
                                        #   in Loop: Header=BB31_12 Depth=2
	move	$a1, $zero
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB31_15
	.p2align	4, , 16
.LBB31_14:                              # %for.cond64.for.inc77_crit_edge.us.us.us.us
                                        #   in Loop: Header=BB31_15 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 32
	beq	$a1, $fp, .LBB31_22
.LBB31_15:                              # %for.cond64.preheader.us.us.us.us
                                        #   Parent Loop BB31_9 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB31_18 Depth 4
                                        #         Child Loop BB31_21 Depth 4
	bgeu	$s1, $s3, .LBB31_17
# %bb.16:                               #   in Loop: Header=BB31_15 Depth=3
	move	$a4, $zero
	b	.LBB31_20
	.p2align	4, , 16
.LBB31_17:                              # %vector.body100.preheader
                                        #   in Loop: Header=BB31_15 Depth=3
	xvld	$xr0, $s8, %pc_lo12(.LCPI31_0)
	xvld	$xr1, $s0, %pc_lo12(.LCPI31_1)
	add.d	$a3, $a1, $s4
	slli.d	$a3, $a3, 5
	add.d	$a3, $t5, $a3
	move	$a4, $s5
	.p2align	4, , 16
.LBB31_18:                              # %vector.body100
                                        #   Parent Loop BB31_9 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        #       Parent Loop BB31_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvadd.d	$xr2, $xr0, $xr4
	xvadd.d	$xr3, $xr1, $xr4
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 3
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 3
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 3
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 3
	xvpickve2gr.d	$t1, $xr2, 0
	slli.d	$t1, $t1, 3
	xvpickve2gr.d	$t2, $xr2, 1
	slli.d	$t2, $t2, 3
	xvpickve2gr.d	$t3, $xr2, 2
	slli.d	$t3, $t3, 3
	xvpickve2gr.d	$t4, $xr2, 3
	slli.d	$t4, $t4, 3
	stx.w	$a0, $a3, $a5
	stx.w	$a0, $a3, $a6
	stx.w	$a0, $a3, $a7
	stx.w	$a0, $a3, $t0
	stx.w	$a0, $a3, $t1
	stx.w	$a0, $a3, $t2
	stx.w	$a0, $a3, $t3
	stx.w	$a0, $a3, $t4
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a4, $a4, -8
	xvaddi.du	$xr0, $xr0, 8
	bnez	$a4, .LBB31_18
# %bb.19:                               # %middle.block105
                                        #   in Loop: Header=BB31_15 Depth=3
	move	$a4, $s5
	beq	$s5, $s2, .LBB31_14
.LBB31_20:                              # %for.body67.us.us.us.us.preheader
                                        #   in Loop: Header=BB31_15 Depth=3
	add.d	$a3, $s6, $a4
	alsl.d	$a3, $a3, $a2, 3
	sub.d	$a4, $s2, $a4
	.p2align	4, , 16
.LBB31_21:                              # %for.body67.us.us.us.us
                                        #   Parent Loop BB31_9 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        #       Parent Loop BB31_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a0, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB31_21
	b	.LBB31_14
	.p2align	4, , 16
.LBB31_22:                              # %for.cond60.for.end79_crit_edge.us.us.us
                                        #   in Loop: Header=BB31_12 Depth=2
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 20
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 24
	ori	$a3, $zero, 104
	mul.d	$a1, $a1, $a3
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(writeMVD)
	ld.d	$a4, $a4, %got_pc_lo12(writeMVD)
	add.d	$a1, $a2, $a1
	st.w	$s6, $a3, 96
	st.w	$s4, $a3, 100
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $a4, 0
	st.w	$a0, $sp, 276
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $sp, 280
	ori	$a0, $zero, 5
	st.w	$a0, $sp, 272
	addi.d	$a0, $sp, 272
	xvst	$xr4, $sp, 160                  # 32-byte Folded Spill
	jirl	$ra, $a2, 0
	xvld	$xr4, $sp, 160                  # 32-byte Folded Reload
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s7
	ldx.d	$a1, $a1, $s7
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	ldx.d	$a2, $a1, $a2
	ld.w	$a1, $sp, 284
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a3, $a4, 36
	ld.h	$a0, $a0, 2
	ld.h	$a2, $a2, 2
	add.d	$a3, $a3, $a1
	st.w	$a3, $a4, 36
	sub.d	$a0, $a0, $a2
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$s1, $a2, .LBB31_11
# %bb.23:                               # %for.cond64.preheader.us.us.us.us.1.preheader
                                        #   in Loop: Header=BB31_12 Depth=2
	move	$a2, $zero
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	b	.LBB31_25
	.p2align	4, , 16
.LBB31_24:                              # %for.cond64.for.inc77_crit_edge.us.us.us.us.1
                                        #   in Loop: Header=BB31_25 Depth=3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 32
	beq	$a2, $fp, .LBB31_11
.LBB31_25:                              # %for.cond64.preheader.us.us.us.us.1
                                        #   Parent Loop BB31_9 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB31_28 Depth 4
                                        #         Child Loop BB31_31 Depth 4
	bgeu	$s1, $s3, .LBB31_27
# %bb.26:                               #   in Loop: Header=BB31_25 Depth=3
	move	$a5, $zero
	b	.LBB31_30
	.p2align	4, , 16
.LBB31_27:                              # %vector.body.preheader
                                        #   in Loop: Header=BB31_25 Depth=3
	xvld	$xr0, $s8, %pc_lo12(.LCPI31_0)
	xvld	$xr1, $s0, %pc_lo12(.LCPI31_1)
	add.d	$a4, $a2, $s4
	slli.d	$a4, $a4, 5
	add.d	$a4, $t6, $a4
	move	$a5, $s5
	.p2align	4, , 16
.LBB31_28:                              # %vector.body
                                        #   Parent Loop BB31_9 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        #       Parent Loop BB31_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvadd.d	$xr2, $xr0, $xr4
	xvadd.d	$xr3, $xr1, $xr4
	xvpickve2gr.d	$a6, $xr3, 0
	slli.d	$a6, $a6, 3
	xvpickve2gr.d	$a7, $xr3, 1
	slli.d	$a7, $a7, 3
	xvpickve2gr.d	$t0, $xr3, 2
	slli.d	$t0, $t0, 3
	xvpickve2gr.d	$t1, $xr3, 3
	slli.d	$t1, $t1, 3
	xvpickve2gr.d	$t2, $xr2, 0
	slli.d	$t2, $t2, 3
	xvpickve2gr.d	$t3, $xr2, 1
	slli.d	$t3, $t3, 3
	xvpickve2gr.d	$t4, $xr2, 2
	slli.d	$t4, $t4, 3
	xvpickve2gr.d	$t5, $xr2, 3
	slli.d	$t5, $t5, 3
	stx.w	$a0, $a4, $a6
	stx.w	$a0, $a4, $a7
	stx.w	$a0, $a4, $t0
	stx.w	$a0, $a4, $t1
	stx.w	$a0, $a4, $t2
	stx.w	$a0, $a4, $t3
	stx.w	$a0, $a4, $t4
	stx.w	$a0, $a4, $t5
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a5, $a5, -8
	xvaddi.du	$xr0, $xr0, 8
	bnez	$a5, .LBB31_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB31_25 Depth=3
	move	$a5, $s5
	beq	$s5, $s2, .LBB31_24
.LBB31_30:                              # %for.body67.us.us.us.us.1.preheader
                                        #   in Loop: Header=BB31_25 Depth=3
	sub.d	$a4, $s2, $a5
	add.d	$a5, $s6, $a5
	alsl.d	$a5, $a5, $a3, 3
	.p2align	4, , 16
.LBB31_31:                              # %for.body67.us.us.us.us.1
                                        #   Parent Loop BB31_9 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        #       Parent Loop BB31_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a0, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB31_31
	b	.LBB31_24
.LBB31_32:
	move	$a5, $zero
.LBB31_33:                              # %for.end96
	move	$a0, $a5
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
.Lfunc_end31:
	.size	writeMotionVector8x8, .Lfunc_end31-writeMotionVector8x8
                                        # -- End function
	.globl	writeLumaCoeff4x4_CABAC         # -- Begin function writeLumaCoeff4x4_CABAC
	.p2align	5
	.type	writeLumaCoeff4x4_CABAC,@function
writeLumaCoeff4x4_CABAC:                # @writeLumaCoeff4x4_CABAC
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
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a5, $a3, %got_pc_lo12(img)
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a4, $a3, %got_pc_lo12(input)
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a3, $a5, 0
	ld.d	$a4, $a4, 0
	ldptr.d	$a5, $a3, 14160
	ldptr.d	$t0, $a3, 14224
	ldptr.w	$a4, $a4, 4016
	slli.d	$a6, $a0, 3
	ldx.d	$a5, $a5, $a6
	pcalau12i	$a6, %got_pc_hi20(assignSE2partition)
	ld.d	$a6, $a6, %got_pc_lo12(assignSE2partition)
	slli.d	$a7, $a1, 3
	ldx.d	$a5, $a5, $a7
	ld.w	$a7, $a3, 12
	slli.d	$a4, $a4, 3
	ldx.d	$s8, $a6, $a4
	ld.d	$s7, $a5, 0
	ld.d	$s6, $a5, 8
	andi	$a4, $a0, 1
	ori	$s2, $zero, 1
	slt	$a5, $s2, $a1
	slti	$a6, $a1, 2
	bstrins.d	$a1, $a4, 63, 1
	st.w	$a1, $a3, 96
	slti	$a0, $a0, 2
	xori	$a1, $a6, 3
	maskeqz	$a4, $a5, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a4, $a0
	st.w	$a0, $a3, 100
	sltui	$s5, $a2, 1
	ori	$a0, $zero, 7
	masknez	$a0, $a0, $s5
	ld.w	$s4, $s7, 0
	ori	$a1, $zero, 11
	maskeqz	$a1, $a1, $s5
	or	$a0, $a1, $a0
	st.w	$s4, $sp, 20
	ld.w	$a1, $s6, 0
	ori	$a4, $zero, 536
	mul.d	$a4, $a7, $a4
	ldptr.d	$s3, $a3, 14216
	st.w	$a1, $sp, 24
	ori	$a1, $zero, 5
	st.w	$a1, $sp, 40
	st.w	$a0, $sp, 16
	move	$s1, $a2
	st.w	$a2, $a3, 104
	ori	$a0, $zero, 28
	masknez	$a0, $a0, $s5
	ori	$a1, $zero, 44
	maskeqz	$a1, $a1, $s5
	or	$a0, $a1, $a0
	ldx.w	$a0, $s8, $a0
	ld.d	$a1, $s3, 24
	add.d	$fp, $t0, $a4
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$s0, $sp, 28
	ld.w	$a0, $fp, 44
	add.d	$a0, $a0, $s0
	st.w	$a0, $fp, 44
	beqz	$s4, .LBB32_4
# %bb.1:                                # %for.body.peel.next
	ori	$a0, $zero, 9
	masknez	$a0, $a0, $s5
	ori	$a1, $zero, 13
	maskeqz	$a1, $a1, $s5
	or	$s5, $a1, $a0
	move	$a0, $s6
	addi.d	$s6, $fp, 44
	alsl.d	$s8, $s5, $s8, 2
	addi.d	$s4, $a0, 4
	addi.d	$s7, $s7, 4
	.p2align	4, , 16
.LBB32_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$fp, $s7, 0
	st.w	$fp, $sp, 20
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.w	$a0, $sp, 24
	ori	$a0, $zero, 5
	st.w	$a0, $sp, 40
	st.w	$s5, $sp, 16
	st.w	$s1, $a1, 104
	ld.w	$a0, $s8, 0
	ld.d	$a1, $s3, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	ld.w	$a1, $s6, 0
	add.d	$a1, $a1, $a0
	st.w	$a1, $s6, 0
	add.w	$s0, $a0, $s0
	ori	$a0, $zero, 15
	bltu	$a0, $s2, .LBB32_4
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB32_2 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 4
	addi.d	$s7, $s7, 4
	bnez	$fp, .LBB32_2
.LBB32_4:                               # %for.end
	move	$a0, $s0
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
.Lfunc_end32:
	.size	writeLumaCoeff4x4_CABAC, .Lfunc_end32-writeLumaCoeff4x4_CABAC
                                        # -- End function
	.globl	writeLumaCoeff8x8_CABAC         # -- Begin function writeLumaCoeff8x8_CABAC
	.p2align	5
	.type	writeLumaCoeff8x8_CABAC,@function
writeLumaCoeff8x8_CABAC:                # @writeLumaCoeff8x8_CABAC
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
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	move	$fp, $a1
	ori	$s2, $zero, 1
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a3, $a1, %got_pc_lo12(input)
	slt	$a4, $s2, $a0
	ldptr.d	$a1, $a2, 14224
	ldptr.d	$a5, $a2, 14160
	ld.d	$a3, $a3, 0
	ld.w	$a6, $a2, 12
	slli.d	$a7, $a0, 3
	ldx.d	$a5, $a5, $a7
	ldptr.w	$a3, $a3, 4016
	pcalau12i	$a7, %got_pc_hi20(assignSE2partition)
	ld.d	$a7, $a7, %got_pc_lo12(assignSE2partition)
	ld.d	$a5, $a5, 0
	ldptr.d	$s3, $a2, 14216
	slli.d	$a3, $a3, 3
	ldx.d	$s4, $a7, $a3
	ld.d	$s7, $a5, 0
	ld.d	$s8, $a5, 8
	slli.d	$a0, $a0, 1
	andi	$a0, $a0, 2
	st.w	$a0, $a2, 96
	slli.d	$a0, $a4, 1
	st.w	$a0, $a2, 100
	sltui	$s5, $fp, 1
	ori	$a0, $zero, 7
	ld.w	$s6, $s7, 0
	masknez	$a0, $a0, $s5
	ori	$a3, $zero, 11
	maskeqz	$a3, $a3, $s5
	st.w	$s6, $sp, 20
	ld.w	$a4, $s8, 0
	or	$a0, $a3, $a0
	ori	$a3, $zero, 536
	mul.d	$a3, $a6, $a3
	st.w	$a4, $sp, 24
	ori	$a5, $zero, 2
	ld.w	$a4, $a2, 20
	st.w	$a5, $sp, 40
	st.w	$a0, $sp, 16
	st.w	$fp, $a2, 104
	addi.d	$a2, $a4, -1
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	ori	$a4, $zero, 16
	maskeqz	$a2, $a4, $a2
	or	$a0, $a2, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	ld.d	$a2, $s3, 24
	add.d	$s1, $a1, $a3
	ori	$a1, $zero, 104
	mul.d	$a0, $a0, $a1
	add.d	$a1, $a2, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$s0, $sp, 28
	ld.w	$a0, $s1, 44
	add.d	$a0, $a0, $s0
	st.w	$a0, $s1, 44
	beqz	$s6, .LBB33_4
# %bb.1:                                # %for.body.preheader
	ori	$a0, $zero, 9
	masknez	$a0, $a0, $s5
	ori	$a1, $zero, 13
	maskeqz	$a1, $a1, $s5
	move	$a2, $s8
	or	$s8, $a1, $a0
	addi.d	$s5, $s1, 44
	addi.d	$s6, $a2, 4
	addi.d	$s7, $s7, 4
	.p2align	4, , 16
.LBB33_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s1, $s7, 0
	st.w	$s1, $sp, 20
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.w	$a0, $sp, 24
	ld.w	$a0, $a1, 20
	ori	$a2, $zero, 2
	st.w	$a2, $sp, 40
	st.w	$s8, $sp, 16
	st.w	$fp, $a1, 104
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	masknez	$a1, $s8, $a0
	ori	$a2, $zero, 16
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	ld.d	$a1, $s3, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	ld.w	$a1, $s5, 0
	add.d	$a1, $a1, $a0
	st.w	$a1, $s5, 0
	add.w	$s0, $a0, $s0
	ori	$a0, $zero, 63
	bltu	$a0, $s2, .LBB33_4
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB33_2 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s6, $s6, 4
	addi.d	$s7, $s7, 4
	bnez	$s1, .LBB33_2
.LBB33_4:                               # %for.end
	move	$a0, $s0
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
.Lfunc_end33:
	.size	writeLumaCoeff8x8_CABAC, .Lfunc_end33-writeLumaCoeff8x8_CABAC
                                        # -- End function
	.globl	writeLumaCoeff8x8               # -- Begin function writeLumaCoeff8x8
	.p2align	5
	.type	writeLumaCoeff8x8,@function
writeLumaCoeff8x8:                      # @writeLumaCoeff8x8
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a3, $a3, %got_pc_lo12(input)
	ld.d	$a3, $a3, 0
	ori	$a4, $zero, 4008
	ldx.w	$a3, $a3, $a4
	addi.d	$a4, $a1, -11
	sltui	$fp, $a4, 1
	beqz	$a2, .LBB34_3
# %bb.1:                                # %lor.lhs.false
	beqz	$a3, .LBB34_5
# %bb.2:                                # %if.else25
	addi.d	$a1, $a1, -13
	sltui	$a1, $a1, 1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(writeLumaCoeff8x8_CABAC)
	jr	$t8
.LBB34_3:                               # %if.then5
	beqz	$a3, .LBB34_5
# %bb.4:                                # %for.body18.preheader
	move	$s0, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(writeLumaCoeff4x4_CABAC)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 1
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(writeLumaCoeff4x4_CABAC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a1, $zero, 2
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(writeLumaCoeff4x4_CABAC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a1, $zero, 3
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(writeLumaCoeff4x4_CABAC)
	jirl	$ra, $ra, 0
	b	.LBB34_6
.LBB34_5:                               # %for.cond.preheader
	sltui	$a2, $a2, 1
	addi.d	$a1, $a1, -13
	sltui	$a1, $a1, 1
	maskeqz	$a3, $fp, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a3, $a1
	move	$s0, $a0
	move	$a0, $zero
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a2, $zero, 1
	move	$a0, $zero
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a2, $zero, 2
	move	$a0, $zero
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a2, $zero, 3
	move	$a0, $zero
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
.LBB34_6:                               # %if.end30
	add.w	$a0, $a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end34:
	.size	writeLumaCoeff8x8, .Lfunc_end34-writeLumaCoeff8x8
                                        # -- End function
	.globl	writeCoeff4x4_CAVLC             # -- Begin function writeCoeff4x4_CAVLC
	.p2align	5
	.type	writeCoeff4x4_CAVLC,@function
writeCoeff4x4_CAVLC:                    # @writeCoeff4x4_CAVLC
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
	ori	$a4, $zero, 7
	bltu	$a4, $a0, .LBB35_73
# %bb.1:                                # %entry
	pcalau12i	$a4, %got_pc_hi20(img)
	pcalau12i	$a5, %got_pc_hi20(input)
	ld.d	$a5, $a5, %got_pc_lo12(input)
	ld.d	$t4, $a4, %got_pc_lo12(img)
	ld.d	$a4, $a5, 0
	ld.d	$a5, $t4, 0
	ldptr.w	$a4, $a4, 4016
	ldptr.d	$a6, $a5, 14224
	ld.w	$a7, $a5, 12
	ori	$t0, $zero, 536
	slli.d	$a4, $a4, 3
	pcalau12i	$t1, %got_pc_hi20(assignSE2partition)
	ld.d	$t1, $t1, %got_pc_lo12(assignSE2partition)
	slli.d	$a0, $a0, 2
	pcalau12i	$t2, %pc_hi20(.LJTI35_0)
	addi.d	$t2, $t2, %pc_lo12(.LJTI35_0)
	ldx.w	$t3, $t2, $a0
	ldx.d	$a4, $t1, $a4
	ldptr.d	$a0, $a5, 14216
	mul.d	$a7, $a7, $t0
	add.d	$t0, $t2, $t3
	add.d	$s0, $a6, $a7
	jr	$t0
.LBB35_2:                               # %sw.bb
	ldptr.d	$a5, $a5, 14160
	slli.d	$a6, $a1, 3
	ldx.d	$a5, $a5, $a6
	slli.d	$a6, $a2, 3
	ldx.d	$a5, $a5, $a6
	vld	$vr0, $a5, 0
	ld.w	$a6, $s0, 72
	ori	$a5, $zero, 1
	ori	$a7, $zero, 16
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	ori	$a7, $zero, 14
	st.d	$t4, $sp, 72                    # 8-byte Folded Spill
	bltu	$a7, $a6, .LBB35_67
# %bb.3:                                # %sw.bb
	ori	$a7, $zero, 1
	sll.d	$a6, $a7, $a6
	lu12i.w	$a7, 6
	ori	$a7, $a7, 1536
	and	$a6, $a6, $a7
	ori	$s1, $zero, 9
	beqz	$a6, .LBB35_67
# %bb.4:
	ori	$a6, $zero, 5
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	b	.LBB35_16
.LBB35_5:                               # %sw.bb46
	ldptr.d	$a1, $a5, 14168
	alsl.d	$a1, $a3, $a1, 3
	ld.d	$a2, $a1, 8
	lu12i.w	$a1, 3
	ld.w	$a3, $s0, 72
	ori	$a1, $a1, 3244
	ld.d	$fp, $a2, 0
	ld.d	$s1, $a2, 8
	addi.w	$a2, $a3, -9
	addi.w	$a3, $zero, -6
	and	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 12
	masknez	$a3, $a3, $a2
	ori	$a6, $zero, 8
	maskeqz	$a6, $a6, $a2
	or	$s2, $a6, $a3
	ori	$a3, $zero, 48
	masknez	$a3, $a3, $a2
	ori	$a6, $zero, 32
	maskeqz	$a2, $a6, $a2
	ld.d	$a6, $t4, 0
	or	$a2, $a2, $a3
	ldx.w	$a2, $a4, $a2
	ld.d	$a3, $a0, 24
	ldptr.w	$a0, $a6, 15532
	ori	$a4, $zero, 104
	mul.d	$a2, $a2, $a4
	addi.w	$a4, $zero, -1
	add.d	$a2, $a3, $a2
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	bge	$a4, $a0, .LBB35_66
# %bb.6:                                # %for.body.preheader
	ld.w	$a2, $fp, 0
	beqz	$a2, .LBB35_66
# %bb.7:                                # %for.inc.preheader
	move	$s5, $zero
	move	$s3, $zero
	move	$a3, $zero
	addi.d	$a4, $fp, 4
	ori	$t0, $zero, 1
	ori	$a6, $zero, 2
	move	$a7, $s1
	.p2align	4, , 16
.LBB35_8:                               # %for.inc
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a7, 0
	move	$s4, $t0
	add.w	$s3, $t1, $s3
	srai.d	$t0, $a2, 31
	xor	$a2, $a2, $t0
	sub.w	$a2, $a2, $t0
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	slti	$t0, $s5, 2
	masknez	$t1, $a6, $t0
	maskeqz	$t0, $s5, $t0
	or	$t0, $t0, $t1
	addi.w	$t0, $t0, 1
	maskeqz	$s5, $t0, $a2
	bgeu	$a3, $a0, .LBB35_69
# %bb.9:                                # %for.body
                                        #   in Loop: Header=BB35_8 Depth=1
	ld.w	$a2, $a4, 0
	addi.d	$a3, $a3, 1
	addi.w	$t0, $s4, 1
	addi.d	$a4, $a4, 4
	addi.d	$a7, $a7, 4
	bnez	$a2, .LBB35_8
# %bb.10:                               # %if.end179.thread.loopexit
	addi.w	$a0, $t0, -2
	b	.LBB35_70
.LBB35_11:                              # %sw.bb23
	st.d	$t4, $sp, 72                    # 8-byte Folded Spill
	ldptr.d	$a5, $a5, 14168
	ld.d	$a5, $a5, 0
	vld	$vr0, $a5, 0
	ori	$a5, $zero, 1
	ori	$a6, $zero, 16
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	ori	$a6, $zero, 5
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	ori	$s1, $zero, 7
	b	.LBB35_16
.LBB35_12:                              # %sw.bb31
	st.d	$t4, $sp, 72                    # 8-byte Folded Spill
	ldptr.d	$a5, $a5, 14160
	slli.d	$a6, $a1, 3
	ldx.d	$a5, $a5, $a6
	slli.d	$a6, $a2, 3
	ldx.d	$a5, $a5, $a6
	vld	$vr0, $a5, 0
	ori	$a5, $zero, 1
	ori	$a6, $zero, 15
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	ori	$a6, $zero, 5
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	ori	$s1, $zero, 9
	b	.LBB35_16
.LBB35_13:                              # %sw.bb72
	ldptr.d	$a5, $a5, 14160
	slli.d	$a6, $a1, 3
	ldx.d	$a5, $a5, $a6
	slli.d	$a6, $a2, 3
	ldx.d	$a6, $a5, $a6
	ld.w	$a5, $s0, 72
	vld	$vr0, $a6, 0
	ori	$a6, $zero, 15
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	ori	$s1, $zero, 14
	st.d	$t4, $sp, 72                    # 8-byte Folded Spill
	bltu	$s1, $a5, .LBB35_68
# %bb.14:                               # %sw.bb72
	ori	$a6, $zero, 1
	sll.d	$a5, $a6, $a5
	lu12i.w	$a6, 6
	ori	$a6, $a6, 1536
	and	$a5, $a5, $a6
	beqz	$a5, .LBB35_68
# %bb.15:
	ori	$a5, $zero, 6
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	move	$a5, $zero
	ori	$s1, $zero, 10
.LBB35_16:                              # %for.body.us.preheader
	slli.d	$a6, $s1, 2
	vpickve2gr.d	$s8, $vr0, 0
	ld.w	$a7, $s8, 0
	ldx.w	$a4, $a4, $a6
	ori	$a6, $zero, 104
	beqz	$a7, .LBB35_21
# %bb.17:                               # %for.inc.us.preheader
	move	$s5, $zero
	move	$s3, $zero
	move	$t0, $zero
	vpickve2gr.d	$t1, $vr0, 1
	addi.d	$t2, $s8, 4
	ori	$t5, $zero, 1
	ori	$t3, $zero, 2
	ori	$t4, $zero, 16
	.p2align	4, , 16
.LBB35_18:                              # %for.inc.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $t1, 0
	move	$s4, $t5
	add.w	$s3, $t6, $s3
	srai.d	$t5, $a7, 31
	xor	$a7, $a7, $t5
	sub.w	$a7, $a7, $t5
	addi.d	$a7, $a7, -1
	sltui	$a7, $a7, 1
	slti	$t5, $s5, 2
	masknez	$t6, $t3, $t5
	maskeqz	$t5, $s5, $t5
	or	$t5, $t5, $t6
	addi.w	$t5, $t5, 1
	maskeqz	$s5, $t5, $a7
	bgeu	$t0, $t4, .LBB35_23
# %bb.19:                               # %for.body.us
                                        #   in Loop: Header=BB35_18 Depth=1
	ld.w	$a7, $t2, 0
	addi.d	$t0, $t0, 1
	addi.w	$t5, $s4, 1
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	bnez	$a7, .LBB35_18
# %bb.20:                               # %if.then131.loopexit
	move	$s7, $s0
	addi.w	$a7, $t5, -2
	b	.LBB35_24
.LBB35_21:
	move	$s7, $s0
	move	$s3, $zero
	move	$s5, $zero
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	move	$s4, $zero
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ld.d	$s2, $a0, 24
	mul.d	$s6, $a4, $a6
	bnez	$a5, .LBB35_25
.LBB35_22:                              # %if.else155
	srai.d	$fp, $a3, 4
	andi	$s0, $a3, 15
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(predict_nnz_chroma)
	jirl	$ra, $ra, 0
	b	.LBB35_26
.LBB35_23:                              # %for.inc.us.if.then131_crit_edge
	move	$s7, $s0
	addi.w	$a7, $s4, -1
.LBB35_24:                              # %if.then131
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ld.d	$s2, $a0, 24
	mul.d	$s6, $a4, $a6
	beqz	$a5, .LBB35_22
.LBB35_25:                              # %if.then133
	andi	$a0, $a1, 1
	move	$fp, $a2
	bstrins.d	$fp, $a0, 63, 1
	slti	$a0, $a1, 2
	ori	$a1, $zero, 1
	slt	$a1, $a1, $a2
	slti	$a2, $a2, 2
	xori	$a2, $a2, 3
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$s0, $a1, $a0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(predict_nnz)
	jirl	$ra, $ra, 0
.LBB35_26:                              # %if.end158
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 12
	ld.d	$a1, $a1, 152
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	addi.w	$a2, $fp, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	add.d	$a2, $s2, $s6
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a2, $s0, 2
	ori	$a3, $zero, 2
	stx.w	$s4, $a1, $a2
	bge	$a0, $a3, .LBB35_28
# %bb.27:
	move	$a1, $zero
	move	$fp, $s8
	move	$s0, $s7
	move	$s2, $s1
	b	.LBB35_30
.LBB35_28:                              # %if.else168
	ori	$a2, $zero, 4
	ori	$a1, $zero, 1
	move	$fp, $s8
	move	$s0, $s7
	move	$s2, $s1
	bltu	$a0, $a2, .LBB35_30
# %bb.29:                               # %if.else171
	sltui	$a0, $a0, 8
	xori	$a1, $a0, 3
.LBB35_30:                              # %if.end179
	st.w	$s2, $sp, 80
	st.w	$s4, $sp, 84
	st.w	$s5, $sp, 88
	st.w	$a1, $sp, 92
	addi.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_NumCoeffTrailingOnes)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vpickve2gr.d	$s1, $vr0, 1
	ori	$s7, $zero, 1
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
.LBB35_31:                              # %if.end186
	addi.d	$a0, $s0, 24
	ld.w	$s0, $sp, 92
	slli.d	$a1, $t0, 2
	ldx.w	$a2, $a0, $a1
	add.d	$a2, $a2, $s0
	stx.w	$a2, $a0, $a1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	beqz	$s4, .LBB35_65
# %bb.32:                               # %for.cond198.preheader
	ori	$a1, $zero, 1
	sub.w	$s6, $a2, $s5
	blt	$s5, $a1, .LBB35_44
# %bb.33:                               # %for.body200.preheader
	move	$a1, $zero
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a3, $a2, $fp, 2
	ori	$a4, $zero, 2
	.p2align	4, , 16
.LBB35_34:                              # %for.body200
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	srai.d	$a6, $a5, 31
	xor	$a7, $a5, $a6
	sub.w	$a6, $a7, $a6
	bgeu	$a6, $a4, .LBB35_72
# %bb.35:                               # %if.end207
                                        #   in Loop: Header=BB35_34 Depth=1
	bstrpick.d	$a5, $a5, 31, 31
	slli.d	$a1, $a1, 1
	or	$a1, $a1, $a5
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	blt	$s6, $a2, .LBB35_34
# %bb.36:                               # %for.end212
	alsl.d	$s8, $t0, $a0, 2
	beqz	$s5, .LBB35_38
.LBB35_37:                              # %if.then214
	st.w	$s2, $sp, 80
	st.w	$s5, $sp, 88
	st.w	$a1, $sp, 84
	addi.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_VLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 92
	ld.w	$a1, $s8, 0
	add.d	$a1, $a1, $a0
	st.w	$a1, $s8, 0
	add.w	$s0, $a0, $s0
.LBB35_38:                              # %if.end225
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	bltz	$s6, .LBB35_47
# %bb.39:                               # %for.body239.preheader
	ori	$a0, $zero, 10
	slli.d	$a1, $s6, 2
	ldx.w	$s1, $fp, $a1
	slt	$a0, $a0, $s4
	slti	$a1, $s5, 3
	and	$a4, $a0, $a1
	st.w	$s1, $sp, 84
	ori	$a0, $zero, 4
	st.w	$s2, $sp, 80
	blt	$s4, $a0, .LBB35_41
# %bb.40:                               # %for.body239.preheader
	ori	$a0, $zero, 3
	beq	$s5, $a0, .LBB35_42
.LBB35_41:                              # %if.then245.peel
	slt	$a0, $zero, $s1
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	add.d	$a0, $a0, $s1
	st.w	$a0, $sp, 84
.LBB35_42:                              # %if.end255.peel
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(active_sps)
	ld.d	$a0, $s7, %pc_lo12(active_sps)
	ld.w	$a3, $a0, 4
	addi.d	$a0, $sp, 80
	beqz	$a4, .LBB35_45
# %bb.43:                               # %if.else259.peel
	move	$a1, $a4
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$fp, $a4
	pcaddu18i	$ra, %call36(writeSyntaxElement_Level_VLCN)
	jirl	$ra, $ra, 0
	b	.LBB35_46
.LBB35_44:
	move	$a1, $zero
	alsl.d	$s8, $t0, $a0, 2
	bnez	$s5, .LBB35_37
	b	.LBB35_38
.LBB35_45:                              # %if.then257.peel
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $a3
	move	$fp, $a4
	pcaddu18i	$ra, %call36(writeSyntaxElement_Level_VLC1)
	jirl	$ra, $ra, 0
.LBB35_46:                              # %if.end262.peel
	slli.d	$a0, $fp, 2
	ld.w	$a1, $sp, 92
	ld.w	$a2, $s8, 0
	pcalau12i	$a3, %pc_hi20(writeCoeff4x4_CAVLC.incVlc)
	addi.d	$s2, $a3, %pc_lo12(writeCoeff4x4_CAVLC.incVlc)
	ldx.w	$a0, $s2, $a0
	add.d	$a2, $a2, $a1
	st.w	$a2, $s8, 0
	add.w	$s0, $a1, $s0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bne	$a1, $s5, .LBB35_51
.LBB35_47:                              # %for.end284
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bge	$s4, $a0, .LBB35_50
# %bb.48:                               # %if.then286
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	st.w	$s7, $sp, 80
	st.w	$s3, $sp, 84
	addi.d	$a0, $s4, -1
	st.w	$a0, $sp, 92
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB35_56
# %bb.49:                               # %if.then292
	addi.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_TotalZeros)
	jirl	$ra, $ra, 0
	b	.LBB35_57
.LBB35_50:
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bgez	$a0, .LBB35_58
	b	.LBB35_65
.LBB35_51:                              # %for.body239.peel.next
	srai.d	$a1, $s1, 31
	xor	$a2, $s1, $a1
	sub.w	$a1, $a2, $a1
	ori	$a2, $zero, 3
	sltu	$a2, $a2, $a1
	slt	$a0, $a0, $a1
	add.w	$a0, $fp, $a0
	masknez	$a0, $a0, $a2
	ori	$a1, $zero, 2
	maskeqz	$a1, $a1, $a2
	or	$s1, $a1, $a0
	addi.d	$s5, $s6, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $s6, $a0, 2
	addi.d	$s6, $a0, -4
	b	.LBB35_54
	.p2align	4, , 16
.LBB35_52:                              # %if.else259
                                        #   in Loop: Header=BB35_54 Depth=1
	move	$a1, $s1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_Level_VLCN)
	jirl	$ra, $ra, 0
.LBB35_53:                              # %if.end262
                                        #   in Loop: Header=BB35_54 Depth=1
	srai.d	$a0, $fp, 31
	xor	$a1, $fp, $a0
	slli.d	$a2, $s1, 2
	ldx.w	$a2, $s2, $a2
	ld.w	$a3, $sp, 92
	ld.w	$a4, $s8, 0
	sub.w	$a0, $a1, $a0
	slt	$a0, $a2, $a0
	add.w	$s1, $s1, $a0
	add.d	$a0, $a4, $a3
	st.w	$a0, $s8, 0
	add.w	$s0, $a3, $s0
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, -4
	ori	$a0, $zero, 1
	bgeu	$a0, $s5, .LBB35_47
.LBB35_54:                              # %if.end255
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, %pc_lo12(active_sps)
	ld.w	$fp, $s6, 0
	ld.w	$a3, $a0, 4
	st.w	$fp, $sp, 84
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $sp, 80
	addi.d	$a0, $sp, 80
	bnez	$s1, .LBB35_52
# %bb.55:                               # %if.then257
                                        #   in Loop: Header=BB35_54 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $a3
	pcaddu18i	$ra, %call36(writeSyntaxElement_Level_VLC1)
	jirl	$ra, $ra, 0
	b	.LBB35_53
.LBB35_56:                              # %if.else294
	addi.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_TotalZerosChromaDC)
	jirl	$ra, $ra, 0
.LBB35_57:                              # %if.end296
	ld.w	$a0, $sp, 92
	ld.w	$a1, $s8, 0
	add.d	$a1, $a1, $a0
	st.w	$a1, $s8, 0
	add.w	$s0, $a0, $s0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bltz	$a0, .LBB35_65
.LBB35_58:                              # %for.body306.lr.ph
	ori	$s1, $zero, 2
	blt	$s4, $s1, .LBB35_64
# %bb.59:                               # %for.body306.preheader
	addi.d	$s2, $a0, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$s5, $a0, $a1, 2
	ori	$s6, $zero, 7
	b	.LBB35_61
	.p2align	4, , 16
.LBB35_60:                              # %for.inc335
                                        #   in Loop: Header=BB35_61 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s5, $s5, -4
	blez	$s2, .LBB35_65
.LBB35_61:                              # %for.body306
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$fp, $s5, 0
	st.w	$fp, $sp, 84
	st.w	$s7, $sp, 80
	beqz	$s3, .LBB35_65
# %bb.62:                               # %if.end315
                                        #   in Loop: Header=BB35_61 Depth=1
	blt	$s4, $s1, .LBB35_60
# %bb.63:                               # %if.then319
                                        #   in Loop: Header=BB35_61 Depth=1
	slti	$a0, $s3, 7
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	st.w	$a0, $sp, 92
	addi.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_Run)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 92
	ld.w	$a1, $s8, 0
	add.d	$a1, $a1, $a0
	st.w	$a1, $s8, 0
	add.w	$s0, $a0, $s0
	sub.w	$s3, $s3, $fp
	addi.w	$s4, $s4, -1
	b	.LBB35_60
.LBB35_64:                              # %for.body306.us
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	st.w	$a0, $sp, 84
.LBB35_65:                              # %cleanup
	move	$a0, $s0
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
.LBB35_66:
	move	$s4, $zero
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	move	$s5, $zero
	move	$s3, $zero
	b	.LBB35_71
.LBB35_67:                              # %if.else
	ori	$a6, $zero, 5
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	ori	$s1, $zero, 13
	b	.LBB35_16
.LBB35_68:                              # %if.else99
	ori	$a5, $zero, 6
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	move	$a5, $zero
	b	.LBB35_16
.LBB35_69:                              # %for.inc.if.end179.thread.loopexit_crit_edge
	addi.w	$a0, $s4, -1
.LBB35_70:                              # %if.end179.thread
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
.LBB35_71:                              # %if.end179.thread
	ldx.w	$a0, $a5, $a1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.w	$s2, $sp, 80
	st.w	$s4, $sp, 84
	st.w	$s5, $sp, 88
	st.w	$zero, $sp, 92
	addi.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_NumCoeffTrailingOnesChromaDC)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	ori	$t0, $zero, 6
	b	.LBB35_31
.LBB35_72:                              # %if.then205
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB35_73:                              # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 600
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	writeCoeff4x4_CAVLC, .Lfunc_end35-writeCoeff4x4_CAVLC
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI35_0:
	.word	.LBB35_2-.LJTI35_0
	.word	.LBB35_11-.LJTI35_0
	.word	.LBB35_12-.LJTI35_0
	.word	.LBB35_73-.LJTI35_0
	.word	.LBB35_73-.LJTI35_0
	.word	.LBB35_73-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_13-.LJTI35_0
                                        # -- End function
	.text
	.globl	predict_nnz                     # -- Begin function predict_nnz
	.p2align	5
	.type	predict_nnz,@function
predict_nnz:                            # @predict_nnz
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
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s2, 0
	ld.w	$fp, $a2, 12
	ldptr.d	$s3, $a2, 14224
	slli.w	$s0, $a0, 2
	addi.d	$a2, $zero, -1
	alsl.w	$a2, $a0, $a2, 2
	slli.w	$s1, $a1, 2
	addi.d	$a3, $sp, 8
	move	$a0, $fp
	move	$a1, $a2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 536
	mul.d	$a0, $fp, $a0
	add.d	$a0, $s3, $a0
	ld.w	$a1, $a0, 72
	addi.d	$s7, $a0, 72
	ori	$a0, $zero, 13
	lu12i.w	$s5, 2
	pcalau12i	$s4, %pc_hi20(active_pps)
	bltu	$a0, $a1, .LBB36_4
# %bb.1:                                # %entry
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s5, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB36_4
# %bb.2:                                # %land.lhs.true
	ld.w	$a0, $sp, 8
	bnez	$a0, .LBB36_6
# %bb.3:
	move	$s3, $zero
	b	.LBB36_13
.LBB36_4:                               # %lor.lhs.false7
	ld.w	$a0, $sp, 8
	ori	$a2, $zero, 14
	move	$s3, $zero
	bne	$a1, $a2, .LBB36_11
# %bb.5:                                # %lor.lhs.false7
	beqz	$a0, .LBB36_11
.LBB36_6:                               # %land.lhs.true10
	ld.d	$a1, $s4, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 224
	beqz	$a1, .LBB36_9
# %bb.7:                                # %land.lhs.true12
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	beqz	$a1, .LBB36_9
# %bb.8:                                # %land.lhs.true14
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14208
	ld.w	$a2, $a2, 4
	beqz	$a2, .LBB36_10
.LBB36_9:
	move	$s3, $zero
	b	.LBB36_12
.LBB36_10:                              # %if.then
	ld.w	$a2, $sp, 12
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 8
	sltui	$s3, $a0, 1
.LBB36_11:                              # %if.end22
	beqz	$a0, .LBB36_13
.LBB36_12:                              # %if.then25
	ld.d	$a0, $s2, 0
	ld.w	$a1, $sp, 12
	ld.d	$a0, $a0, 152
	ld.w	$a2, $sp, 16
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ld.w	$a2, $sp, 20
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 2
	ldx.w	$s6, $a0, $a1
	addi.d	$s3, $s3, 1
	b	.LBB36_14
.LBB36_13:
	move	$s6, $zero
.LBB36_14:                              # %if.end34
	addi.w	$a2, $s1, -1
	addi.d	$a3, $sp, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	ori	$a0, $zero, 13
	bltu	$a0, $a1, .LBB36_17
# %bb.15:                               # %if.end34
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s5, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB36_17
# %bb.16:                               # %land.lhs.true49
	ld.w	$a0, $sp, 8
	bnez	$a0, .LBB36_19
	b	.LBB36_25
.LBB36_17:                              # %lor.lhs.false46
	ld.w	$a0, $sp, 8
	ori	$a2, $zero, 14
	bne	$a1, $a2, .LBB36_23
# %bb.18:                               # %lor.lhs.false46
	beqz	$a0, .LBB36_23
.LBB36_19:                              # %land.lhs.true52
	ld.d	$a1, $s4, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 224
	beqz	$a1, .LBB36_24
# %bb.20:                               # %land.lhs.true55
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	beqz	$a1, .LBB36_24
# %bb.21:                               # %land.lhs.true58
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14208
	ld.w	$a2, $a2, 4
	bnez	$a2, .LBB36_24
# %bb.22:                               # %if.then62
	ld.w	$a2, $sp, 12
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 8
	sltui	$a1, $a0, 1
	add.d	$s3, $s3, $a1
.LBB36_23:                              # %if.end74
	beqz	$a0, .LBB36_25
.LBB36_24:                              # %if.then77
	ld.d	$a0, $s2, 0
	ld.w	$a1, $sp, 12
	ld.d	$a0, $a0, 152
	ld.w	$a2, $sp, 16
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ld.w	$a2, $sp, 20
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 2
	ldx.w	$a0, $a0, $a1
	add.d	$s6, $a0, $s6
	addi.d	$s3, $s3, 1
.LBB36_25:                              # %if.end89
	addi.d	$a0, $s3, -2
	sltui	$a0, $a0, 1
	addi.w	$a1, $s6, 1
	srli.d	$a1, $a1, 1
	masknez	$a2, $s6, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	addi.w	$a0, $a0, 0
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
.Lfunc_end36:
	.size	predict_nnz, .Lfunc_end36-predict_nnz
                                        # -- End function
	.globl	predict_nnz_chroma              # -- Begin function predict_nnz_chroma
	.p2align	5
	.type	predict_nnz_chroma,@function
predict_nnz_chroma:                     # @predict_nnz_chroma
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
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s2, 0
	move	$s1, $a0
	ld.w	$fp, $a2, 12
	slli.d	$s6, $a1, 2
	ldptr.d	$a0, $a2, 14224
	ori	$a3, $zero, 536
	ldptr.w	$a2, $a2, 15536
	mul.d	$a3, $fp, $a3
	add.d	$s4, $a0, $a3
	ori	$a0, $zero, 3
	slli.w	$s0, $s1, 2
	bne	$a2, $a0, .LBB37_5
# %bb.1:                                # %if.else
	pcalau12i	$a0, %pc_hi20(predict_nnz_chroma.j_off_tab)
	addi.d	$a0, $a0, %pc_lo12(predict_nnz_chroma.j_off_tab)
	ldx.w	$s6, $a0, $s6
	addi.w	$a2, $s0, -1
	sub.d	$a0, $a1, $s6
	slli.w	$s1, $a0, 2
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	move	$a1, $a2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 72
	ori	$a0, $zero, 13
	bltu	$a0, $a1, .LBB37_9
# %bb.2:                                # %if.else
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB37_9
# %bb.3:                                # %land.lhs.true119
	ld.w	$a0, $sp, 16
	bnez	$a0, .LBB37_11
# %bb.4:
	move	$s3, $zero
	b	.LBB37_24
.LBB37_5:                               # %if.then
	andi	$s0, $s0, 4
	addi.d	$a4, $s0, -1
	addi.d	$a0, $zero, -16
	alsl.w	$a2, $a1, $a0, 2
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	move	$a1, $a4
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 72
	ori	$a0, $zero, 13
	lu12i.w	$s8, 2
	bstrpick.d	$s1, $s1, 31, 1
	pcalau12i	$s7, %pc_hi20(active_pps)
	bltu	$a0, $a1, .LBB37_15
# %bb.6:                                # %if.then
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s8, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB37_15
# %bb.7:                                # %land.lhs.true
	ld.w	$a0, $sp, 16
	bnez	$a0, .LBB37_17
# %bb.8:
	move	$s3, $zero
	b	.LBB37_39
.LBB37_9:                               # %lor.lhs.false116
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 14
	move	$s3, $zero
	bne	$a1, $a2, .LBB37_22
# %bb.10:                               # %lor.lhs.false116
	beqz	$a0, .LBB37_22
.LBB37_11:                              # %land.lhs.true122
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 224
	beqz	$a1, .LBB37_14
# %bb.12:                               # %land.lhs.true125
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	beqz	$a1, .LBB37_14
# %bb.13:                               # %land.lhs.true128
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14208
	ld.w	$a2, $a2, 4
	beqz	$a2, .LBB37_21
.LBB37_14:
	move	$s3, $zero
	b	.LBB37_23
.LBB37_15:                              # %lor.lhs.false11
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 14
	move	$s3, $zero
	bne	$a1, $a2, .LBB37_37
# %bb.16:                               # %lor.lhs.false11
	beqz	$a0, .LBB37_37
.LBB37_17:                              # %land.lhs.true14
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 224
	beqz	$a1, .LBB37_20
# %bb.18:                               # %land.lhs.true16
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	beqz	$a1, .LBB37_20
# %bb.19:                               # %land.lhs.true18
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14208
	ld.w	$a2, $a2, 4
	beqz	$a2, .LBB37_36
.LBB37_20:
	move	$s3, $zero
	b	.LBB37_38
.LBB37_21:                              # %if.then132
	ld.w	$a2, $sp, 20
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	addi.w	$s3, $zero, -1
.LBB37_22:                              # %if.end139
	beqz	$a0, .LBB37_24
.LBB37_23:                              # %if.then142
	ld.d	$a0, $s2, 0
	ld.w	$a1, $sp, 20
	ld.d	$a0, $a0, 152
	slli.d	$a1, $a1, 3
	ld.w	$a2, $sp, 24
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 28
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	add.w	$a1, $a1, $s6
	slli.d	$a1, $a1, 2
	ldx.w	$s5, $a0, $a1
	addi.d	$s3, $s3, 1
	b	.LBB37_25
.LBB37_24:
	move	$s5, $zero
.LBB37_25:                              # %if.end155
	addi.w	$a2, $s1, -1
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 72
	ori	$a0, $zero, 13
	bltu	$a0, $a1, .LBB37_28
# %bb.26:                               # %if.end155
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB37_28
# %bb.27:                               # %land.lhs.true171
	ld.w	$a0, $sp, 16
	bnez	$a0, .LBB37_30
	b	.LBB37_52
.LBB37_28:                              # %lor.lhs.false168
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 14
	bne	$a1, $a2, .LBB37_34
# %bb.29:                               # %lor.lhs.false168
	beqz	$a0, .LBB37_34
.LBB37_30:                              # %land.lhs.true174
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 224
	beqz	$a1, .LBB37_35
# %bb.31:                               # %land.lhs.true177
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	beqz	$a1, .LBB37_35
# %bb.32:                               # %land.lhs.true180
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14208
	ld.w	$a2, $a2, 4
	bnez	$a2, .LBB37_35
# %bb.33:                               # %if.then184
	ld.w	$a2, $sp, 20
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	addi.d	$s3, $s3, -1
.LBB37_34:                              # %if.end192
	beqz	$a0, .LBB37_52
.LBB37_35:                              # %if.then195
	ld.d	$a0, $s2, 0
	ld.w	$a1, $sp, 20
	ld.d	$a0, $a0, 152
	slli.d	$a1, $a1, 3
	ld.w	$a2, $sp, 24
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 28
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	add.w	$a1, $a1, $s6
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	b	.LBB37_51
.LBB37_36:                              # %if.then20
	ld.w	$a2, $sp, 20
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	sltui	$s3, $a0, 1
.LBB37_37:                              # %if.end28
	beqz	$a0, .LBB37_39
.LBB37_38:                              # %if.then31
	ld.d	$a0, $s2, 0
	ld.w	$a1, $sp, 20
	ld.d	$a0, $a0, 152
	ld.w	$a2, $sp, 24
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	alsl.w	$a1, $s1, $a2, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 28
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$s5, $a0, 16
	addi.d	$s3, $s3, 1
	b	.LBB37_40
.LBB37_39:
	move	$s5, $zero
.LBB37_40:                              # %if.end41
	addi.w	$a2, $s6, -17
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 72
	ori	$a0, $zero, 13
	bltu	$a0, $a1, .LBB37_43
# %bb.41:                               # %if.end41
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s8, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB37_43
# %bb.42:                               # %land.lhs.true58
	ld.w	$a0, $sp, 16
	bnez	$a0, .LBB37_45
	b	.LBB37_52
.LBB37_43:                              # %lor.lhs.false55
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 14
	bne	$a1, $a2, .LBB37_49
# %bb.44:                               # %lor.lhs.false55
	beqz	$a0, .LBB37_49
.LBB37_45:                              # %land.lhs.true61
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 224
	beqz	$a1, .LBB37_50
# %bb.46:                               # %land.lhs.true64
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	beqz	$a1, .LBB37_50
# %bb.47:                               # %land.lhs.true67
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14208
	ld.w	$a2, $a2, 4
	bnez	$a2, .LBB37_50
# %bb.48:                               # %if.then71
	ld.w	$a2, $sp, 20
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	sltui	$a1, $a0, 1
	add.d	$s3, $s3, $a1
.LBB37_49:                              # %if.end83
	beqz	$a0, .LBB37_52
.LBB37_50:                              # %if.then86
	ld.d	$a0, $s2, 0
	ld.w	$a1, $sp, 20
	ld.d	$a0, $a0, 152
	ld.w	$a2, $sp, 24
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	alsl.w	$a1, $s1, $a2, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 28
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$a0, $a0, 16
.LBB37_51:                              # %if.end210
	add.d	$s5, $a0, $s5
	addi.d	$s3, $s3, 1
.LBB37_52:                              # %if.end210
	addi.d	$a0, $s3, -2
	sltui	$a0, $a0, 1
	addi.w	$a1, $s5, 1
	srli.d	$a1, $a1, 1
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	addi.w	$a0, $a0, 0
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
.Lfunc_end37:
	.size	predict_nnz_chroma, .Lfunc_end37-predict_nnz_chroma
                                        # -- End function
	.globl	find_sad_16x16                  # -- Begin function find_sad_16x16
	.p2align	5
	.type	find_sad_16x16,@function
find_sad_16x16:                         # @find_sad_16x16
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1648
	st.d	$ra, $sp, 1640                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1592                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1584                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1576                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1568                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1560                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1552                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1544                 # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$fp, $a1, %got_pc_lo12(img)
	ld.d	$a1, $fp, 0
	ld.w	$s0, $a1, 12
	pcalau12i	$s2, %pc_hi20(getNeighbour)
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s1, $zero, -1
	addi.d	$a4, $sp, 88
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 112
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 136
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 160
	ori	$a2, $zero, 2
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 184
	ori	$a2, $zero, 3
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 208
	ori	$a2, $zero, 4
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 232
	ori	$a2, $zero, 5
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 256
	ori	$a2, $zero, 6
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 280
	ori	$a2, $zero, 7
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 304
	ori	$a2, $zero, 8
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 328
	ori	$a2, $zero, 9
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 352
	ori	$a2, $zero, 10
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 376
	ori	$a2, $zero, 11
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 400
	ori	$a2, $zero, 12
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 424
	ori	$a2, $zero, 13
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 448
	ori	$a2, $zero, 14
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 472
	ori	$a2, $zero, 15
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 496
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a4, $a0, 0
	ld.w	$a0, $a4, 272
	ld.w	$a5, $sp, 496
	beqz	$a0, .LBB38_20
# %bb.1:                                # %if.else
	ld.d	$a2, $fp, 0
	beqz	$a5, .LBB38_21
# %bb.2:                                # %cond.true
	ld.w	$a0, $sp, 500
	ldptr.d	$a1, $a2, 14240
	slli.d	$a0, $a0, 2
	ldx.w	$a5, $a1, $a0
	ld.w	$a0, $sp, 112
	beqz	$a0, .LBB38_22
.LBB38_3:                               # %cond.true16
	ld.w	$a0, $sp, 116
	ldptr.d	$a1, $a2, 14240
	slli.d	$a0, $a0, 2
	ldx.wu	$a0, $a1, $a0
	andi	$a0, $a0, 1
	ld.w	$a1, $sp, 136
	beqz	$a1, .LBB38_23
.LBB38_4:                               # %cond.true16.1
	ld.w	$a1, $sp, 140
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 160
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_24
.LBB38_5:                               # %cond.true16.2
	ld.w	$a1, $sp, 164
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 184
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_25
.LBB38_6:                               # %cond.true16.3
	ld.w	$a1, $sp, 188
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 208
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_26
.LBB38_7:                               # %cond.true16.4
	ld.w	$a1, $sp, 212
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 232
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_27
.LBB38_8:                               # %cond.true16.5
	ld.w	$a1, $sp, 236
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 256
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_28
.LBB38_9:                               # %cond.true16.6
	ld.w	$a1, $sp, 260
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 280
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_29
.LBB38_10:                              # %cond.true16.7
	ld.w	$a1, $sp, 284
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 304
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_30
.LBB38_11:                              # %cond.true16.8
	ld.w	$a1, $sp, 308
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 328
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_31
.LBB38_12:                              # %cond.true16.9
	ld.w	$a1, $sp, 332
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 352
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_32
.LBB38_13:                              # %cond.true16.10
	ld.w	$a1, $sp, 356
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 376
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_33
.LBB38_14:                              # %cond.true16.11
	ld.w	$a1, $sp, 380
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 400
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_34
.LBB38_15:                              # %cond.true16.12
	ld.w	$a1, $sp, 404
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 424
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_35
.LBB38_16:                              # %cond.true16.13
	ld.w	$a1, $sp, 428
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 448
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_36
.LBB38_17:                              # %cond.true16.14
	ld.w	$a1, $sp, 452
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 472
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_37
.LBB38_18:                              # %cond.true16.15
	ld.w	$a1, $sp, 476
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 88
	and	$a6, $a1, $a0
	beqz	$a3, .LBB38_38
.LBB38_19:                              # %cond.true32
	ld.w	$a0, $sp, 92
	ldptr.d	$a1, $a2, 14240
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	b	.LBB38_39
.LBB38_20:                              # %if.then
	ld.w	$a6, $sp, 112
	ld.w	$a0, $sp, 88
	b	.LBB38_39
.LBB38_21:
	move	$a5, $zero
	ld.w	$a0, $sp, 112
	bnez	$a0, .LBB38_3
.LBB38_22:
	move	$a0, $zero
	ld.w	$a1, $sp, 136
	bnez	$a1, .LBB38_4
.LBB38_23:
	move	$a1, $zero
	ld.w	$a3, $sp, 160
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_5
.LBB38_24:
	move	$a1, $zero
	ld.w	$a3, $sp, 184
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_6
.LBB38_25:
	move	$a1, $zero
	ld.w	$a3, $sp, 208
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_7
.LBB38_26:
	move	$a1, $zero
	ld.w	$a3, $sp, 232
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_8
.LBB38_27:
	move	$a1, $zero
	ld.w	$a3, $sp, 256
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_9
.LBB38_28:
	move	$a1, $zero
	ld.w	$a3, $sp, 280
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_10
.LBB38_29:
	move	$a1, $zero
	ld.w	$a3, $sp, 304
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_11
.LBB38_30:
	move	$a1, $zero
	ld.w	$a3, $sp, 328
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_12
.LBB38_31:
	move	$a1, $zero
	ld.w	$a3, $sp, 352
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_13
.LBB38_32:
	move	$a1, $zero
	ld.w	$a3, $sp, 376
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_14
.LBB38_33:
	move	$a1, $zero
	ld.w	$a3, $sp, 400
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_15
.LBB38_34:
	move	$a1, $zero
	ld.w	$a3, $sp, 424
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_16
.LBB38_35:
	move	$a1, $zero
	ld.w	$a3, $sp, 448
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_17
.LBB38_36:
	move	$a1, $zero
	ld.w	$a3, $sp, 472
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_18
.LBB38_37:
	move	$a1, $zero
	ld.w	$a3, $sp, 88
	and	$a6, $a1, $a0
	bnez	$a3, .LBB38_19
.LBB38_38:
	move	$a0, $zero
.LBB38_39:                              # %if.end
	move	$a3, $zero
	ori	$t0, $zero, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$t0, $a1, 0
	ld.d	$t1, $fp, 0
	sltu	$a1, $zero, $a5
	sltu	$a2, $zero, $a6
	and	$a1, $a2, $a1
	sltu	$a0, $zero, $a0
	and	$a0, $a1, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(imgY_org)
	ld.d	$a0, $a0, %pc_lo12(imgY_org)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$t3, $sp, 1288
	addi.d	$t4, $sp, 776
	addi.d	$t5, $sp, 1032
	addi.d	$t6, $sp, 584
	addi.d	$t7, $sp, 840
	addi.d	$t8, $sp, 1096
	addi.d	$s0, $sp, 1352
	addi.d	$s1, $sp, 648
	addi.d	$s2, $sp, 904
	addi.d	$s3, $sp, 1160
	addi.d	$s4, $sp, 1416
	addi.d	$s5, $sp, 712
	addi.d	$ra, $sp, 968
	addi.d	$t2, $sp, 1224
	addi.d	$a1, $sp, 1480
	lu12i.w	$a0, 1
	ori	$a0, $a0, 750
	add.d	$s7, $t1, $a0
	lu12i.w	$a0, 244
	ori	$a0, $a0, 575
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a7, $zero, 4
	ori	$s6, $zero, 1
	addi.d	$fp, $sp, 520
	vrepli.b	$vr0, 0
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB38_41
	.p2align	4, , 16
.LBB38_40:                              # %for.inc545
                                        #   in Loop: Header=BB38_41 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$s7, $s7, 512
	beq	$a3, $a7, .LBB38_58
.LBB38_41:                              # %for.body43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_53 Depth 2
                                        #     Child Loop BB38_55 Depth 2
	ldptr.w	$a0, $a4, 4048
	beqz	$a0, .LBB38_45
# %bb.42:                               # %lor.lhs.false
                                        #   in Loop: Header=BB38_41 Depth=1
	ld.w	$a0, $t1, 20
	bne	$a0, $t0, .LBB38_45
# %bb.43:                               # %if.end58
                                        #   in Loop: Header=BB38_41 Depth=1
	bnez	$a3, .LBB38_49
# %bb.44:                               # %if.end58
                                        #   in Loop: Header=BB38_41 Depth=1
	beqz	$a5, .LBB38_40
	b	.LBB38_49
	.p2align	4, , 16
.LBB38_45:                              # %if.then46
                                        #   in Loop: Header=BB38_41 Depth=1
	ldptr.w	$a0, $a4, 4064
	beqz	$a0, .LBB38_47
# %bb.46:                               # %if.then46
                                        #   in Loop: Header=BB38_41 Depth=1
	bltu	$a3, $t0, .LBB38_40
.LBB38_47:                              # %if.end52
                                        #   in Loop: Header=BB38_41 Depth=1
	ldptr.w	$a0, $a4, 4068
	sltu	$a0, $zero, $a0
	addi.d	$a2, $a3, -3
	sltui	$a2, $a2, 1
	and	$a0, $a2, $a0
	bnez	$a0, .LBB38_40
# %bb.48:                               # %if.end52
                                        #   in Loop: Header=BB38_41 Depth=1
	or	$a0, $a3, $a5
	sltu	$a0, $zero, $a0
	beqz	$a0, .LBB38_40
.LBB38_49:                              # %lor.lhs.false62
                                        #   in Loop: Header=BB38_41 Depth=1
	bne	$a3, $s6, .LBB38_51
# %bb.50:                               # %lor.lhs.false62
                                        #   in Loop: Header=BB38_41 Depth=1
	beqz	$a6, .LBB38_40
.LBB38_51:                              # %lor.lhs.false66
                                        #   in Loop: Header=BB38_41 Depth=1
	addi.d	$a0, $a3, -3
	sltu	$a0, $zero, $a0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	or	$a0, $a0, $a2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB38_58
# %bb.52:                               # %if.else75
                                        #   in Loop: Header=BB38_41 Depth=1
	ld.w	$a0, $t1, 196
	ld.w	$a2, $t1, 192
	move	$a6, $zero
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$s6, $a0, $a4, 3
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB38_53:                              # %for.cond79.preheader
                                        #   Parent Loop BB38_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 0
	slli.d	$a4, $a2, 1
	ldx.hu	$a5, $a0, $a4
	ld.hu	$t0, $s7, -30
	alsl.d	$a4, $a2, $a0, 1
	sub.d	$a0, $a5, $t0
	slli.d	$a5, $a6, 4
	andi	$s8, $a5, 48
	add.d	$t0, $fp, $s8
	ld.hu	$t1, $a4, 2
	move	$a7, $t2
	ld.hu	$t2, $s7, -28
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	stx.w	$a0, $t0, $a5
	sub.d	$a0, $t1, $t2
	add.d	$t0, $t4, $s8
	ld.hu	$t1, $a4, 4
	ld.hu	$t2, $s7, -26
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 6
	ld.hu	$t0, $s7, -24
	sub.d	$t1, $t1, $t2
	add.d	$t2, $t5, $s8
	stx.w	$t1, $t2, $a5
	sub.d	$a0, $a0, $t0
	add.d	$t0, $t3, $s8
	ld.hu	$t1, $a4, 8
	ld.hu	$t2, $s7, -22
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 10
	ld.hu	$t0, $s7, -20
	sub.d	$t1, $t1, $t2
	add.d	$t2, $t6, $s8
	stx.w	$t1, $t2, $a5
	sub.d	$a0, $a0, $t0
	add.d	$t0, $t7, $s8
	ld.hu	$t1, $a4, 12
	ld.hu	$t2, $s7, -18
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 14
	ld.hu	$t0, $s7, -16
	sub.d	$t1, $t1, $t2
	add.d	$t2, $t8, $s8
	stx.w	$t1, $t2, $a5
	sub.d	$a0, $a0, $t0
	add.d	$t0, $s0, $s8
	ld.hu	$t1, $a4, 16
	ld.hu	$t2, $s7, -14
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 18
	ld.hu	$t0, $s7, -12
	sub.d	$t1, $t1, $t2
	add.d	$t2, $s1, $s8
	stx.w	$t1, $t2, $a5
	sub.d	$a0, $a0, $t0
	add.d	$t0, $s2, $s8
	ld.hu	$t1, $a4, 20
	ld.hu	$t2, $s7, -10
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 22
	ld.hu	$t0, $s7, -8
	sub.d	$t1, $t1, $t2
	add.d	$t2, $s3, $s8
	stx.w	$t1, $t2, $a5
	sub.d	$a0, $a0, $t0
	add.d	$t0, $s4, $s8
	ld.hu	$t1, $a4, 24
	ld.hu	$t2, $s7, -6
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 26
	ld.hu	$t0, $s7, -4
	sub.d	$t1, $t1, $t2
	add.d	$t2, $s5, $s8
	stx.w	$t1, $t2, $a5
	sub.d	$a0, $a0, $t0
	add.d	$t0, $ra, $s8
	ld.hu	$t1, $a4, 28
	ld.hu	$t2, $s7, -2
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 30
	ld.hu	$a4, $s7, 0
	sub.d	$t0, $t1, $t2
	move	$t2, $a7
	add.d	$t1, $a7, $s8
	stx.w	$t0, $t1, $a5
	sub.d	$a0, $a0, $a4
	add.d	$a4, $a1, $s8
	ori	$t0, $zero, 16
	stx.w	$a0, $a4, $a5
	addi.d	$a6, $a6, 1
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 32
	bne	$a6, $t0, .LBB38_53
# %bb.54:                               # %for.cond124.preheader.preheader
                                        #   in Loop: Header=BB38_41 Depth=1
	move	$s6, $zero
	ori	$a6, $zero, 1008
	ori	$a1, $zero, 1024
	.p2align	4, , 16
.LBB38_55:                              # %for.cond124.preheader
                                        #   Parent Loop BB38_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $fp, $a6
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $s6, 0
	ld.w	$a0, $a2, -1008
	ld.w	$a4, $a2, -944
	ld.w	$a5, $a2, -880
	ld.w	$t0, $a2, -816
	vinsgr2vr.w	$vr2, $a0, 0
	vinsgr2vr.w	$vr2, $a4, 1
	vinsgr2vr.w	$vr2, $a5, 2
	vinsgr2vr.w	$vr2, $t0, 3
	ld.w	$a0, $a2, -240
	ld.w	$a4, $a2, -176
	ld.w	$a5, $a2, -112
	ld.w	$t0, $a2, -48
	vinsgr2vr.w	$vr3, $a0, 0
	vinsgr2vr.w	$vr3, $a4, 1
	vinsgr2vr.w	$vr3, $a5, 2
	vinsgr2vr.w	$vr3, $t0, 3
	vadd.w	$vr4, $vr3, $vr2
	ld.w	$a0, $a2, -752
	ld.w	$a4, $a2, -688
	ld.w	$a5, $a2, -624
	ld.w	$t0, $a2, -560
	vinsgr2vr.w	$vr5, $a0, 0
	vinsgr2vr.w	$vr5, $a4, 1
	vinsgr2vr.w	$vr5, $a5, 2
	vinsgr2vr.w	$vr5, $t0, 3
	ld.w	$a0, $a2, -496
	ld.w	$a4, $a2, -432
	ld.w	$a5, $a2, -368
	ld.w	$t0, $a2, -304
	vinsgr2vr.w	$vr6, $a0, 0
	vinsgr2vr.w	$vr6, $a4, 1
	vinsgr2vr.w	$vr6, $a5, 2
	vinsgr2vr.w	$vr6, $t0, 3
	vadd.w	$vr8, $vr6, $vr5
	vsub.w	$vr6, $vr5, $vr6
	vsub.w	$vr2, $vr2, $vr3
	vadd.w	$vr7, $vr8, $vr4
	vsub.w	$vr3, $vr4, $vr8
	vadd.w	$vr5, $vr6, $vr2
	vsub.w	$vr2, $vr2, $vr6
	ld.w	$a0, $a2, -992
	ld.w	$a4, $a2, -928
	ld.w	$a5, $a2, -864
	ld.w	$t0, $a2, -800
	vinsgr2vr.w	$vr4, $a0, 0
	vinsgr2vr.w	$vr4, $a4, 1
	vinsgr2vr.w	$vr4, $a5, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ld.w	$a0, $a2, -224
	ld.w	$a4, $a2, -160
	ld.w	$a5, $a2, -96
	ld.w	$t0, $a2, -32
	vinsgr2vr.w	$vr6, $a0, 0
	vinsgr2vr.w	$vr6, $a4, 1
	vinsgr2vr.w	$vr6, $a5, 2
	vinsgr2vr.w	$vr6, $t0, 3
	vadd.w	$vr8, $vr6, $vr4
	ld.w	$a0, $a2, -736
	ld.w	$a4, $a2, -672
	ld.w	$a5, $a2, -608
	ld.w	$t0, $a2, -544
	vinsgr2vr.w	$vr9, $a0, 0
	vinsgr2vr.w	$vr9, $a4, 1
	vinsgr2vr.w	$vr9, $a5, 2
	vinsgr2vr.w	$vr9, $t0, 3
	ld.w	$a0, $a2, -480
	ld.w	$a4, $a2, -416
	ld.w	$a5, $a2, -352
	ld.w	$t0, $a2, -288
	vinsgr2vr.w	$vr10, $a0, 0
	vinsgr2vr.w	$vr10, $a4, 1
	vinsgr2vr.w	$vr10, $a5, 2
	vinsgr2vr.w	$vr10, $t0, 3
	vadd.w	$vr11, $vr10, $vr9
	vsub.w	$vr10, $vr9, $vr10
	vsub.w	$vr4, $vr4, $vr6
	vadd.w	$vr12, $vr11, $vr8
	vsub.w	$vr6, $vr8, $vr11
	vadd.w	$vr9, $vr10, $vr4
	vsub.w	$vr4, $vr4, $vr10
	ld.w	$a0, $a2, -976
	ld.w	$a4, $a2, -912
	ld.w	$a5, $a2, -848
	ld.w	$t0, $a2, -784
	vinsgr2vr.w	$vr8, $a0, 0
	vinsgr2vr.w	$vr8, $a4, 1
	vinsgr2vr.w	$vr8, $a5, 2
	vinsgr2vr.w	$vr8, $t0, 3
	ld.w	$a0, $a2, -208
	ld.w	$a4, $a2, -144
	ld.w	$a5, $a2, -80
	ld.w	$t0, $a2, -16
	vinsgr2vr.w	$vr10, $a0, 0
	vinsgr2vr.w	$vr10, $a4, 1
	vinsgr2vr.w	$vr10, $a5, 2
	vinsgr2vr.w	$vr10, $t0, 3
	vadd.w	$vr11, $vr10, $vr8
	ld.w	$a0, $a2, -720
	ld.w	$a4, $a2, -656
	ld.w	$a5, $a2, -592
	ld.w	$t0, $a2, -528
	vinsgr2vr.w	$vr13, $a0, 0
	vinsgr2vr.w	$vr13, $a4, 1
	vinsgr2vr.w	$vr13, $a5, 2
	vinsgr2vr.w	$vr13, $t0, 3
	ld.w	$a0, $a2, -464
	ld.w	$a4, $a2, -400
	ld.w	$a5, $a2, -336
	ld.w	$t0, $a2, -272
	vinsgr2vr.w	$vr14, $a0, 0
	vinsgr2vr.w	$vr14, $a4, 1
	vinsgr2vr.w	$vr14, $a5, 2
	vinsgr2vr.w	$vr14, $t0, 3
	vadd.w	$vr15, $vr14, $vr13
	vsub.w	$vr14, $vr13, $vr14
	vsub.w	$vr8, $vr8, $vr10
	vadd.w	$vr16, $vr15, $vr11
	vsub.w	$vr13, $vr11, $vr15
	vadd.w	$vr18, $vr14, $vr8
	vsub.w	$vr8, $vr8, $vr14
	ld.w	$a0, $a2, -960
	ld.w	$a4, $a2, -896
	ld.w	$a5, $a2, -832
	ld.w	$t0, $a2, -768
	vinsgr2vr.w	$vr10, $a0, 0
	vinsgr2vr.w	$vr10, $a4, 1
	vinsgr2vr.w	$vr10, $a5, 2
	vinsgr2vr.w	$vr10, $t0, 3
	ld.w	$a0, $a2, -192
	ld.w	$a4, $a2, -128
	ld.w	$a5, $a2, -64
	ldx.w	$t0, $a6, $fp
	vinsgr2vr.w	$vr11, $a0, 0
	vinsgr2vr.w	$vr11, $a4, 1
	vinsgr2vr.w	$vr11, $a5, 2
	vinsgr2vr.w	$vr11, $t0, 3
	vadd.w	$vr14, $vr11, $vr10
	ld.w	$a0, $a2, -704
	ld.w	$a4, $a2, -640
	ld.w	$a5, $a2, -576
	ld.w	$t0, $a2, -512
	vinsgr2vr.w	$vr15, $a0, 0
	vinsgr2vr.w	$vr15, $a4, 1
	vinsgr2vr.w	$vr15, $a5, 2
	vinsgr2vr.w	$vr15, $t0, 3
	ld.w	$a0, $a2, -448
	ld.w	$a4, $a2, -384
	ld.w	$a5, $a2, -320
	ld.w	$t0, $a2, -256
	vinsgr2vr.w	$vr17, $a0, 0
	vinsgr2vr.w	$vr17, $a4, 1
	vinsgr2vr.w	$vr17, $a5, 2
	vinsgr2vr.w	$vr17, $t0, 3
	vadd.w	$vr19, $vr17, $vr15
	vsub.w	$vr15, $vr15, $vr17
	vsub.w	$vr10, $vr10, $vr11
	vadd.w	$vr17, $vr19, $vr14
	vsub.w	$vr19, $vr14, $vr19
	vadd.w	$vr20, $vr15, $vr10
	vsub.w	$vr15, $vr10, $vr15
	vadd.w	$vr10, $vr17, $vr7
	vadd.w	$vr11, $vr16, $vr12
	vsub.w	$vr12, $vr12, $vr16
	vsub.w	$vr7, $vr7, $vr17
	vadd.w	$vr14, $vr11, $vr10
	vpickve2gr.w	$a0, $vr14, 0
	st.w	$a0, $a2, -1008
	vpickve2gr.w	$a0, $vr14, 1
	st.w	$a0, $a2, -944
	vpickve2gr.w	$a0, $vr14, 2
	st.w	$a0, $a2, -880
	vpickve2gr.w	$a0, $vr14, 3
	st.w	$a0, $a2, -816
	vsub.w	$vr14, $vr10, $vr11
	vpickve2gr.w	$a0, $vr14, 0
	st.w	$a0, $a2, -976
	vpickve2gr.w	$a0, $vr14, 1
	st.w	$a0, $a2, -912
	vpickve2gr.w	$a0, $vr14, 2
	st.w	$a0, $a2, -848
	vpickve2gr.w	$a0, $vr14, 3
	st.w	$a0, $a2, -784
	vadd.w	$vr14, $vr12, $vr7
	vpickve2gr.w	$a0, $vr14, 0
	st.w	$a0, $a2, -992
	vpickve2gr.w	$a0, $vr14, 1
	st.w	$a0, $a2, -928
	vpickve2gr.w	$a0, $vr14, 2
	st.w	$a0, $a2, -864
	vpickve2gr.w	$a0, $vr14, 3
	st.w	$a0, $a2, -800
	vsub.w	$vr16, $vr7, $vr12
	vpickve2gr.w	$a0, $vr16, 0
	st.w	$a0, $a2, -960
	vpickve2gr.w	$a0, $vr16, 1
	st.w	$a0, $a2, -896
	vpickve2gr.w	$a0, $vr16, 2
	st.w	$a0, $a2, -832
	vpickve2gr.w	$a0, $vr16, 3
	st.w	$a0, $a2, -768
	vadd.w	$vr16, $vr20, $vr5
	vadd.w	$vr17, $vr18, $vr9
	vsub.w	$vr9, $vr9, $vr18
	vsub.w	$vr18, $vr5, $vr20
	vadd.w	$vr5, $vr17, $vr16
	vpickve2gr.w	$a0, $vr5, 0
	st.w	$a0, $a2, -752
	vpickve2gr.w	$a0, $vr5, 1
	st.w	$a0, $a2, -688
	vpickve2gr.w	$a0, $vr5, 2
	st.w	$a0, $a2, -624
	vpickve2gr.w	$a0, $vr5, 3
	st.w	$a0, $a2, -560
	vsub.w	$vr20, $vr16, $vr17
	vpickve2gr.w	$a0, $vr20, 0
	st.w	$a0, $a2, -720
	vpickve2gr.w	$a0, $vr20, 1
	st.w	$a0, $a2, -656
	vpickve2gr.w	$a0, $vr20, 2
	st.w	$a0, $a2, -592
	vpickve2gr.w	$a0, $vr20, 3
	st.w	$a0, $a2, -528
	vadd.w	$vr20, $vr9, $vr18
	vpickve2gr.w	$a0, $vr20, 0
	st.w	$a0, $a2, -736
	vpickve2gr.w	$a0, $vr20, 1
	st.w	$a0, $a2, -672
	vpickve2gr.w	$a0, $vr20, 2
	st.w	$a0, $a2, -608
	vpickve2gr.w	$a0, $vr20, 3
	st.w	$a0, $a2, -544
	vsub.w	$vr21, $vr18, $vr9
	vpickve2gr.w	$a0, $vr21, 0
	st.w	$a0, $a2, -704
	vpickve2gr.w	$a0, $vr21, 1
	st.w	$a0, $a2, -640
	vpickve2gr.w	$a0, $vr21, 2
	st.w	$a0, $a2, -576
	vstelm.w	$vr21, $a2, -512, 3
	vadd.w	$vr21, $vr19, $vr3
	vadd.w	$vr22, $vr13, $vr6
	vsub.w	$vr6, $vr6, $vr13
	vsub.w	$vr3, $vr3, $vr19
	vadd.w	$vr13, $vr22, $vr21
	vstelm.w	$vr13, $a2, -496, 0
	vstelm.w	$vr13, $a2, -432, 1
	vstelm.w	$vr13, $a2, -368, 2
	vstelm.w	$vr13, $a2, -304, 3
	vsub.w	$vr19, $vr21, $vr22
	vstelm.w	$vr19, $a2, -464, 0
	vstelm.w	$vr19, $a2, -400, 1
	vstelm.w	$vr19, $a2, -336, 2
	vstelm.w	$vr19, $a2, -272, 3
	vadd.w	$vr19, $vr6, $vr3
	vstelm.w	$vr19, $a2, -480, 0
	vstelm.w	$vr19, $a2, -416, 1
	vstelm.w	$vr19, $a2, -352, 2
	vstelm.w	$vr19, $a2, -288, 3
	vsub.w	$vr23, $vr3, $vr6
	vstelm.w	$vr23, $a2, -448, 0
	vstelm.w	$vr23, $a2, -384, 1
	vstelm.w	$vr23, $a2, -320, 2
	vstelm.w	$vr23, $a2, -256, 3
	vadd.w	$vr23, $vr15, $vr2
	vadd.w	$vr24, $vr8, $vr4
	vsub.w	$vr4, $vr4, $vr8
	vsub.w	$vr2, $vr2, $vr15
	vadd.w	$vr8, $vr24, $vr23
	vstelm.w	$vr8, $a2, -240, 0
	vstelm.w	$vr8, $a2, -176, 1
	vstelm.w	$vr8, $a2, -112, 2
	vstelm.w	$vr8, $a2, -48, 3
	vsub.w	$vr15, $vr23, $vr24
	vstelm.w	$vr15, $a2, -208, 0
	vstelm.w	$vr15, $a2, -144, 1
	vstelm.w	$vr15, $a2, -80, 2
	vstelm.w	$vr15, $a2, -16, 3
	vadd.w	$vr15, $vr4, $vr2
	vstelm.w	$vr15, $a2, -224, 0
	vstelm.w	$vr15, $a2, -160, 1
	vstelm.w	$vr15, $a2, -96, 2
	vstelm.w	$vr15, $a2, -32, 3
	vsub.w	$vr25, $vr2, $vr4
	vstelm.w	$vr25, $a2, -192, 0
	vstelm.w	$vr25, $a2, -128, 1
	vstelm.w	$vr25, $a2, -64, 2
	vstelm.w	$vr25, $a2, 0, 3
	vabsd.w	$vr2, $vr2, $vr4
	vabsd.w	$vr4, $vr23, $vr24
	vneg.w	$vr23, $vr15
	vmax.w	$vr15, $vr15, $vr23
	vneg.w	$vr23, $vr8
	vmax.w	$vr8, $vr8, $vr23
	vabsd.w	$vr3, $vr3, $vr6
	vabsd.w	$vr6, $vr21, $vr22
	vneg.w	$vr21, $vr19
	vmax.w	$vr19, $vr19, $vr21
	vneg.w	$vr21, $vr13
	vmax.w	$vr13, $vr13, $vr21
	vabsd.w	$vr9, $vr18, $vr9
	vabsd.w	$vr16, $vr16, $vr17
	vneg.w	$vr17, $vr20
	vmax.w	$vr17, $vr20, $vr17
	vneg.w	$vr18, $vr5
	vmax.w	$vr5, $vr5, $vr18
	vabsd.w	$vr7, $vr7, $vr12
	vabsd.w	$vr10, $vr10, $vr11
	vneg.w	$vr11, $vr14
	vmax.w	$vr11, $vr14, $vr11
	vadd.w	$vr1, $vr11, $vr1
	vadd.w	$vr1, $vr10, $vr1
	vadd.w	$vr1, $vr7, $vr1
	vadd.w	$vr1, $vr5, $vr1
	vadd.w	$vr1, $vr17, $vr1
	vadd.w	$vr1, $vr16, $vr1
	vadd.w	$vr1, $vr9, $vr1
	vadd.w	$vr1, $vr13, $vr1
	vadd.w	$vr1, $vr19, $vr1
	vadd.w	$vr1, $vr6, $vr1
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr1, $vr8, $vr1
	vadd.w	$vr1, $vr15, $vr1
	vadd.w	$vr1, $vr4, $vr1
	vadd.w	$vr1, $vr2, $vr1
	vshuf4i.w	$vr2, $vr1, 14
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	addi.d	$a6, $a6, 4
	vpickve2gr.w	$s6, $vr1, 0
	bne	$a6, $a1, .LBB38_55
# %bb.56:                               # %for.cond377.preheader
                                        #   in Loop: Header=BB38_41 Depth=1
	ld.w	$a0, $sp, 520
	ld.w	$a4, $sp, 584
	bstrpick.d	$a2, $a0, 62, 61
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 2
	bstrpick.d	$a0, $a4, 62, 61
	ld.w	$a5, $sp, 648
	add.w	$a0, $a4, $a0
	srai.d	$a4, $a0, 2
	ld.w	$a0, $sp, 712
	bstrpick.d	$a6, $a5, 62, 61
	add.w	$a5, $a5, $a6
	srai.d	$a5, $a5, 2
	bstrpick.d	$a6, $a0, 62, 61
	ld.w	$t0, $sp, 524
	add.w	$a0, $a0, $a6
	srai.d	$s7, $a0, 2
	ld.w	$a0, $sp, 588
	bstrpick.d	$a6, $t0, 62, 61
	add.w	$a6, $t0, $a6
	srai.d	$a6, $a6, 2
	bstrpick.d	$t0, $a0, 62, 61
	ld.w	$t1, $sp, 652
	add.w	$a0, $a0, $t0
	srai.d	$s8, $a0, 2
	ld.w	$t0, $sp, 716
	bstrpick.d	$a0, $t1, 62, 61
	add.w	$a0, $t1, $a0
	srai.d	$a0, $a0, 2
	bstrpick.d	$t1, $t0, 62, 61
	ld.w	$t2, $sp, 528
	add.w	$t0, $t0, $t1
	srai.d	$t1, $t0, 2
	ld.w	$t3, $sp, 592
	bstrpick.d	$t0, $t2, 62, 61
	add.w	$t0, $t2, $t0
	srai.d	$t0, $t0, 2
	bstrpick.d	$t2, $t3, 62, 61
	ld.w	$t4, $sp, 656
	add.w	$t2, $t3, $t2
	srai.d	$t2, $t2, 2
	ld.w	$t3, $sp, 720
	bstrpick.d	$t5, $t4, 62, 61
	add.w	$t4, $t4, $t5
	srai.d	$t4, $t4, 2
	bstrpick.d	$t5, $t3, 62, 61
	ld.w	$t6, $sp, 532
	add.w	$t3, $t3, $t5
	srai.d	$t3, $t3, 2
	ld.w	$t5, $sp, 596
	bstrpick.d	$t7, $t6, 62, 61
	add.w	$t6, $t6, $t7
	srai.d	$t6, $t6, 2
	bstrpick.d	$t7, $t5, 62, 61
	ld.w	$t8, $sp, 660
	add.w	$t5, $t5, $t7
	srai.d	$t5, $t5, 2
	ld.w	$t7, $sp, 724
	bstrpick.d	$s0, $t8, 62, 61
	add.w	$t8, $t8, $s0
	srai.d	$t8, $t8, 2
	bstrpick.d	$s0, $t7, 62, 61
	add.w	$t7, $t7, $s0
	srai.d	$t7, $t7, 2
	add.d	$s0, $s7, $a2
	add.d	$s1, $a5, $a4
	sub.d	$a4, $a4, $a5
	sub.d	$a2, $a2, $s7
	add.d	$s2, $s1, $s0
	sub.d	$s7, $s0, $s1
	add.d	$s0, $a4, $a2
	sub.d	$a2, $a2, $a4
	add.d	$a4, $t1, $a6
	add.d	$a5, $a0, $s8
	sub.d	$a0, $s8, $a0
	sub.d	$a6, $a6, $t1
	add.d	$t1, $a5, $a4
	sub.d	$s8, $a4, $a5
	add.d	$s1, $a0, $a6
	sub.d	$a4, $a6, $a0
	add.d	$a0, $t3, $t0
	add.d	$a5, $t4, $t2
	sub.d	$a6, $t2, $t4
	sub.d	$t0, $t0, $t3
	add.d	$t2, $a5, $a0
	sub.d	$a0, $a0, $a5
	add.d	$t3, $a6, $t0
	sub.d	$a5, $t0, $a6
	add.d	$a6, $t7, $t6
	add.d	$t0, $t8, $t5
	sub.d	$t4, $t5, $t8
	sub.d	$t5, $t6, $t7
	add.d	$t6, $t0, $a6
	sub.d	$t0, $a6, $t0
	add.d	$t7, $t4, $t5
	sub.d	$a6, $t5, $t4
	add.d	$t4, $t6, $s2
	add.d	$t5, $t2, $t1
	sub.d	$t1, $t1, $t2
	sub.d	$t2, $s2, $t6
	add.w	$t6, $t5, $t4
	sub.w	$t4, $t4, $t5
	add.w	$t5, $t1, $t2
	sub.w	$t1, $t2, $t1
	srai.d	$t2, $t6, 31
	xor	$t6, $t6, $t2
	sub.d	$t2, $t6, $t2
	add.d	$t2, $t2, $s6
	srai.d	$t6, $t5, 31
	xor	$t5, $t5, $t6
	sub.d	$t5, $t5, $t6
	add.d	$t2, $t5, $t2
	srai.d	$t5, $t4, 31
	xor	$t4, $t4, $t5
	sub.d	$t4, $t4, $t5
	add.d	$t2, $t4, $t2
	srai.d	$t4, $t1, 31
	xor	$t1, $t1, $t4
	sub.d	$t1, $t1, $t4
	add.d	$t1, $t1, $t2
	add.d	$t2, $t7, $s0
	add.d	$t4, $t3, $s1
	sub.d	$t3, $s1, $t3
	sub.d	$t5, $s0, $t7
	add.w	$t6, $t4, $t2
	sub.w	$t2, $t2, $t4
	add.w	$t4, $t3, $t5
	sub.w	$t3, $t5, $t3
	srai.d	$t5, $t6, 31
	xor	$t6, $t6, $t5
	sub.d	$t5, $t6, $t5
	add.d	$t1, $t5, $t1
	srai.d	$t5, $t4, 31
	xor	$t4, $t4, $t5
	sub.d	$t4, $t4, $t5
	add.d	$t1, $t4, $t1
	srai.d	$t4, $t2, 31
	xor	$t2, $t2, $t4
	sub.d	$t2, $t2, $t4
	add.d	$t1, $t2, $t1
	srai.d	$t2, $t3, 31
	xor	$t3, $t3, $t2
	sub.d	$t2, $t3, $t2
	add.d	$t1, $t2, $t1
	add.d	$t2, $t0, $s7
	add.d	$t3, $a0, $s8
	sub.d	$a0, $s8, $a0
	sub.d	$t0, $s7, $t0
	add.w	$t4, $t3, $t2
	sub.w	$t2, $t2, $t3
	add.w	$t3, $a0, $t0
	sub.w	$a0, $t0, $a0
	srai.d	$t0, $t4, 31
	xor	$t4, $t4, $t0
	sub.d	$t0, $t4, $t0
	add.d	$t0, $t0, $t1
	srai.d	$t1, $t3, 31
	xor	$t3, $t3, $t1
	sub.d	$t1, $t3, $t1
	add.d	$t0, $t1, $t0
	srai.d	$t1, $t2, 31
	xor	$t2, $t2, $t1
	sub.d	$t1, $t2, $t1
	add.d	$t0, $t1, $t0
	srai.d	$t1, $a0, 31
	xor	$a0, $a0, $t1
	sub.d	$a0, $a0, $t1
	add.d	$a0, $a0, $t0
	add.d	$t0, $a6, $a2
	add.d	$t1, $a5, $a4
	sub.d	$a4, $a4, $a5
	sub.d	$a2, $a2, $a6
	add.w	$a5, $t1, $t0
	sub.w	$a6, $t0, $t1
	add.w	$t0, $a4, $a2
	sub.w	$a2, $a2, $a4
	srai.d	$a4, $a5, 31
	xor	$a5, $a5, $a4
	sub.d	$a4, $a5, $a4
	add.d	$a0, $a4, $a0
	srai.d	$a4, $t0, 31
	xor	$a5, $t0, $a4
	sub.d	$a4, $a5, $a4
	add.d	$a0, $a4, $a0
	srai.d	$a4, $a6, 31
	xor	$a5, $a6, $a4
	sub.d	$a4, $a5, $a4
	add.d	$a0, $a4, $a0
	srai.d	$a4, $a2, 31
	xor	$a2, $a2, $a4
	sub.d	$a2, $a2, $a4
	add.w	$a0, $a2, $a0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ori	$t0, $zero, 2
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$t3, $sp, 1288
	addi.d	$t4, $sp, 776
	addi.d	$t5, $sp, 1032
	addi.d	$t6, $sp, 584
	addi.d	$t7, $sp, 840
	addi.d	$t8, $sp, 1096
	addi.d	$s0, $sp, 1352
	addi.d	$s1, $sp, 648
	addi.d	$s2, $sp, 904
	addi.d	$s3, $sp, 1160
	addi.d	$s4, $sp, 1416
	addi.d	$s5, $sp, 712
	addi.d	$ra, $sp, 968
	move	$t2, $a7
	addi.d	$a1, $sp, 1480
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ori	$a7, $zero, 4
	ori	$s6, $zero, 1
	bge	$a0, $a2, .LBB38_40
# %bb.57:                               # %if.then542
                                        #   in Loop: Header=BB38_41 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.w	$a3, $a2, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB38_40
.LBB38_58:                              # %for.end547
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 1
	fld.d	$fs1, $sp, 1544                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1552                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1560                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1568                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1640                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1648
	ret
.Lfunc_end38:
	.size	find_sad_16x16, .Lfunc_end38-find_sad_16x16
                                        # -- End function
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Warning!!! Number of bits (%d) of macroblock_layer() data seems to exceed defined limit (%d).\n"
	.size	.L.str, 95

	.type	delta_qp_mbaff,@object          # @delta_qp_mbaff
	.comm	delta_qp_mbaff,16,4
	.type	qp_mbaff,@object                # @qp_mbaff
	.comm	qp_mbaff,16,4
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	quadratic_RC,@object            # @quadratic_RC
	.comm	quadratic_RC,8,8
	.type	updateQP,@object                # @updateQP
	.comm	updateQP,8,8
	.type	generic_RC,@object              # @generic_RC
	.comm	generic_RC,8,8
	.type	dq,@object                      # @dq
	.comm	dq,4,4
	.type	predict_error,@object           # @predict_error
	.comm	predict_error,4,4
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	terminate_macroblock.skip,@object # @terminate_macroblock.skip
	.local	terminate_macroblock.skip
	.comm	terminate_macroblock.skip,1,4
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Slice Mode %d not supported"
	.size	.L.str.1, 28

	.type	width_pad,@object               # @width_pad
	.comm	width_pad,4,4
	.type	height_pad,@object              # @height_pad
	.comm	height_pad,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	LumaPrediction4x4.l0_pred,@object # @LumaPrediction4x4.l0_pred
	.local	LumaPrediction4x4.l0_pred
	.comm	LumaPrediction4x4.l0_pred,32,8
	.type	LumaPrediction4x4.l1_pred,@object # @LumaPrediction4x4.l1_pred
	.local	LumaPrediction4x4.l1_pred
	.comm	LumaPrediction4x4.l1_pred,32,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	LumaPrediction4x4Bi.l0_pred,@object # @LumaPrediction4x4Bi.l0_pred
	.local	LumaPrediction4x4Bi.l0_pred
	.comm	LumaPrediction4x4Bi.l0_pred,32,8
	.type	LumaPrediction4x4Bi.l1_pred,@object # @LumaPrediction4x4Bi.l1_pred
	.local	LumaPrediction4x4Bi.l1_pred
	.comm	LumaPrediction4x4Bi.l1_pred,32,8
	.type	OneComponentChromaPrediction4x4,@object # @OneComponentChromaPrediction4x4
	.local	OneComponentChromaPrediction4x4
	.comm	OneComponentChromaPrediction4x4,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	diff64,@object                  # @diff64
	.local	diff64
	.comm	diff64,256,4
	.type	ChromaPrediction4x4.l0_pred,@object # @ChromaPrediction4x4.l0_pred
	.local	ChromaPrediction4x4.l0_pred
	.comm	ChromaPrediction4x4.l0_pred,32,8
	.type	ChromaPrediction4x4.l1_pred,@object # @ChromaPrediction4x4.l1_pred
	.local	ChromaPrediction4x4.l1_pred
	.comm	ChromaPrediction4x4.l1_pred,32,8
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	ChromaResidualCoding.block8x8_idx,@object # @ChromaResidualCoding.block8x8_idx
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
ChromaResidualCoding.block8x8_idx:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.size	ChromaResidualCoding.block8x8_idx, 192

	.type	IntraChromaPrediction.block_pos,@object # @IntraChromaPrediction.block_pos
	.p2align	2, 0x0
IntraChromaPrediction.block_pos:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	16
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.size	IntraChromaPrediction.block_pos, 192

	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	subblk_offset_y,@object         # @subblk_offset_y
subblk_offset_y:
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.size	subblk_offset_y, 96

	.type	subblk_offset_x,@object         # @subblk_offset_x
subblk_offset_x:
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.size	subblk_offset_x, 96

	.type	diff,@object                    # @diff
	.local	diff
	.comm	diff,64,16
	.type	MBType2Value.dir1offset,@object # @MBType2Value.dir1offset
	.p2align	2, 0x0
MBType2Value.dir1offset:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.size	MBType2Value.dir1offset, 12

	.type	MBType2Value.dir2offset,@object # @MBType2Value.dir2offset
	.p2align	2, 0x0
MBType2Value.dir2offset:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	6                               # 0x6
	.word	2                               # 0x2
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	14                              # 0xe
	.word	16                              # 0x10
	.size	MBType2Value.dir2offset, 36

	.type	B8Mode2Value.b8start,@object    # @B8Mode2Value.b8start
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
B8Mode2Value.b8start:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	10                              # 0xa
	.size	B8Mode2Value.b8start, 32

	.type	B8Mode2Value.b8inc,@object      # @B8Mode2Value.b8inc
	.p2align	2, 0x0
B8Mode2Value.b8inc:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	B8Mode2Value.b8inc, 32

	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	predict_nnz_chroma.j_off_tab,@object # @predict_nnz_chroma.j_off_tab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
predict_nnz_chroma.j_off_tab:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.size	predict_nnz_chroma.j_off_tab, 48

	.type	writeCoeff4x4_CAVLC.incVlc,@object # @writeCoeff4x4_CAVLC.incVlc
	.p2align	2, 0x0
writeCoeff4x4_CAVLC.incVlc:
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	24                              # 0x18
	.word	48                              # 0x30
	.word	32768                           # 0x8000
	.size	writeCoeff4x4_CAVLC.incVlc, 28

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"writeCoeff4x4_CAVLC: Invalid block type"
	.size	.L.str.8, 40

	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	height_pad_cr,@object           # @height_pad_cr
	.comm	height_pad_cr,4,4
	.type	width_pad_cr,@object            # @width_pad_cr
	.comm	width_pad_cr,4,4
	.type	diffy,@object                   # @diffy
	.comm	diffy,1024,4
	.type	generic_RC_init,@object         # @generic_RC_init
	.comm	generic_RC_init,8,8
	.type	generic_RC_best,@object         # @generic_RC_best
	.comm	generic_RC_best,8,8
	.type	quadratic_RC_init,@object       # @quadratic_RC_init
	.comm	quadratic_RC_init,8,8
	.type	quadratic_RC_best,@object       # @quadratic_RC_best
	.comm	quadratic_RC_best,8,8
	.type	writeChromaCoeff.chroma_dc_context,@object # @writeChromaCoeff.chroma_dc_context
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
writeChromaCoeff.chroma_dc_context:
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	9                               # 0x9
	.size	writeChromaCoeff.chroma_dc_context, 12

	.type	writeChromaCoeff.chroma_ac_param,@object # @writeChromaCoeff.chroma_ac_param
writeChromaCoeff.chroma_ac_param:
	.ascii	"\004\024\005\025"
	.ascii	"$4%5"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\004\024\005\025"
	.ascii	"\006\026\007\027"
	.ascii	"$4%5"
	.ascii	"&6'7"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\004\024\005\025"
	.ascii	"$4%5"
	.ascii	"\006\026\007\027"
	.ascii	"&6'7"
	.ascii	"\b\030\t\031"
	.ascii	"(8)9"
	.ascii	"\n\032\013\033"
	.ascii	"*:+;"
	.size	writeChromaCoeff.chroma_ac_param, 96

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"ERROR: level > 1"
	.size	.Lstr, 17

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym OneComponentChromaPrediction4x4_retrieve
	.addrsig_sym OneComponentChromaPrediction4x4_regenerate
	.addrsig_sym errortext
	.addrsig_sym diff64
	.addrsig_sym ChromaPrediction4x4.l0_pred
	.addrsig_sym ChromaPrediction4x4.l1_pred
	.addrsig_sym diff
