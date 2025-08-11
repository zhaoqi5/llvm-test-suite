	.file	"libclamav_rtf.c"
	.text
	.globl	cli_scanrtf                     # -- Begin function cli_scanrtf
	.p2align	5
	.type	cli_scanrtf,@function
cli_scanrtf:                            # @cli_scanrtf
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -624
	st.d	$ra, $sp, 616                   # 8-byte Folded Spill
	st.d	$fp, $sp, 608                   # 8-byte Folded Spill
	st.d	$s0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s1, $sp, 592                   # 8-byte Folded Spill
	st.d	$s2, $sp, 584                   # 8-byte Folded Spill
	st.d	$s3, $sp, 576                   # 8-byte Folded Spill
	st.d	$s4, $sp, 568                   # 8-byte Folded Spill
	st.d	$s5, $sp, 560                   # 8-byte Folded Spill
	st.d	$s6, $sp, 552                   # 8-byte Folded Spill
	st.d	$s7, $sp, 544                   # 8-byte Folded Spill
	st.d	$s8, $sp, 536                   # 8-byte Folded Spill
	move	$s3, $a1
	move	$s8, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 259
	st.b	$a0, $sp, 261
	st.b	$a0, $sp, 228
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 416
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vst	$vr0, $sp, 400
	st.w	$zero, $sp, 424
	ori	$a0, $zero, 1664
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392
	addi.w	$s5, $zero, -114
	beqz	$a0, .LBB0_4
# %bb.1:                                # %if.end
	move	$s1, $a0
	lu12i.w	$a0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
# %bb.2:                                # %if.end9
	move	$s4, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
# %bb.3:                                # %if.then13
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$s6, $zero, -118
	b	.LBB0_126
.LBB0_4:
	move	$s6, $s5
	b	.LBB0_126
.LBB0_5:                                # %if.then7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s6, $s5
	b	.LBB0_126
.LBB0_6:                                # %if.end15
	pcaddu18i	$ra, %call36(tableCreate)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	addi.w	$s6, $zero, -1
	beq	$a0, $s6, .LBB0_79
# %bb.7:                                # %load_actions.exit
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB0_79
# %bb.8:                                # %if.end25
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(base_state)
	addi.d	$a1, $a0, %pc_lo12(base_state)
	addi.d	$a0, $sp, 432
	ori	$a2, $zero, 104
	ori	$s5, $zero, 104
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 456
	st.d	$zero, $sp, 440
	lu12i.w	$a2, 2
	move	$a0, $s8
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	blt	$a0, $fp, .LBB0_82
# %bb.9:                                # %while.body.lr.ph
	addi.d	$s7, $sp, 468
	ori	$s0, $zero, 5
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$s3, $a1, %pc_lo12(.LJTI0_0)
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 36
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	addi.d	$fp, $sp, 136
	ori	$a1, $zero, 4
	lu32i.d	$a1, -1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %while.cond.loopexit
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s4
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_82
.LBB0_11:                               # %while.body31.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_57 Depth 3
	add.d	$s8, $s4, $a0
	move	$s1, $s4
	b	.LBB0_15
.LBB0_12:                               # %sw.bb168
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$s1, $s1, 1
.LBB0_13:                               # %if.end292
                                        #   in Loop: Header=BB0_15 Depth=2
	st.w	$zero, $sp, 456
.LBB0_14:                               # %sw.epilog295
                                        #   in Loop: Header=BB0_15 Depth=2
	bgeu	$s1, $s8, .LBB0_10
.LBB0_15:                               # %while.body31
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
	ld.w	$a0, $sp, 456
	bltu	$s0, $a0, .LBB0_14
# %bb.16:                               # %while.body31
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s3, $a0
	add.d	$a0, $s3, $a0
	jr	$a0
.LBB0_17:                               # %sw.bb
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $s1, 0
	addi.d	$s4, $s1, 1
	ori	$a1, $zero, 92
	beq	$a0, $a1, .LBB0_54
# %bb.18:                               # %sw.bb
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a1, $zero, 125
	beq	$a0, $a1, .LBB0_49
# %bb.19:                               # %sw.bb
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a1, $zero, 123
	bne	$a0, $a1, .LBB0_55
# %bb.20:                               # %sw.bb33
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 400
	ld.d	$a1, $sp, 448
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 400
	bnez	$a1, .LBB0_62
# %bb.21:                               # %sw.bb33
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $sp, 464
	bnez	$a0, .LBB0_62
# %bb.22:                               # %land.lhs.true7.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 33
	move	$a0, $s7
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_62
# %bb.23:                               # %land.lhs.true7.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	xvld	$xr0, $sp, 504
	xvseqi.d	$xr0, $xr0, 0
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvxor.v	$xr0, $xr0, $xr1
	xvmskltz.d	$xr0, $xr0
	xvpickve2gr.wu	$a0, $xr0, 0
	xvpickve2gr.wu	$a1, $xr0, 4
	bstrins.d	$a0, $a1, 3, 2
	andi	$a0, $a0, 15
	bnez	$a0, .LBB0_62
# %bb.24:                               # %if.then.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 432
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 432
	move	$s1, $s4
	bltu	$s4, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_25:                               # %sw.bb233
                                        #   in Loop: Header=BB0_15 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a0, $a0, $a2
	andi	$a2, $a0, 2048
	bnez	$a2, .LBB0_40
# %bb.26:                               # %if.else247
                                        #   in Loop: Header=BB0_15 Depth=2
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB0_47
# %bb.27:                               # %if.else257
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $sp, 460
	bge	$s6, $a0, .LBB0_66
# %bb.28:                               # %if.end265
                                        #   in Loop: Header=BB0_15 Depth=2
	st.w	$s0, $sp, 456
	bltu	$s1, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_29:                               # %sw.bb171
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$s4, $sp, 440
	ori	$a0, $zero, 32
	bne	$s4, $a0, .LBB0_41
# %bb.30:                               # %if.then175
                                        #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_13
.LBB0_31:                               # %sw.bb157
                                        #   in Loop: Header=BB0_15 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB0_46
# %bb.32:                               # %if.else
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 456
	bltu	$s1, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_33:                               # %sw.bb269
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 440
	stx.b	$zero, $s7, $a0
	move	$a0, $s2
	move	$a1, $s7
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB0_13
# %bb.34:                               # %if.then278
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 528
	beqz	$a1, .LBB0_37
# %bb.35:                               # %if.then278
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 520
	beqz	$a2, .LBB0_37
# %bb.36:                               # %if.then284
                                        #   in Loop: Header=BB0_15 Depth=2
	move	$s4, $a0
	addi.d	$a0, $sp, 432
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	move	$a0, $s4
	st.d	$zero, $sp, 504
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	addi.d	$a1, $sp, 520
	vst	$vr0, $a1, 0
.LBB0_37:                               # %if.end290
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_60
# %bb.38:                               # %if.end290
                                        #   in Loop: Header=BB0_15 Depth=2
	bnez	$a0, .LBB0_13
# %bb.39:                               # %sw.bb.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $sp, 464
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 464
	b	.LBB0_13
.LBB0_40:                               # %if.then241
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 448
	slli.d	$a2, $a0, 3
	alsl.d	$a0, $a0, $a2, 1
	addi.d	$s1, $s1, 1
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, -48
	st.d	$a0, $sp, 448
	bltu	$s1, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_41:                               # %if.else178
                                        #   in Loop: Header=BB0_15 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a0, $a0, $a2
	andi	$a2, $a0, 1024
	bnez	$a2, .LBB0_48
# %bb.42:                               # %if.else192
                                        #   in Loop: Header=BB0_15 Depth=2
	lu12i.w	$a2, 2
	and	$a2, $a0, $a2
	bnez	$a2, .LBB0_65
# %bb.43:                               # %if.else207
                                        #   in Loop: Header=BB0_15 Depth=2
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB0_74
# %bb.44:                               # %if.else217
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 45
	bne	$a1, $a0, .LBB0_78
# %bb.45:                               # %if.then221
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$s1, $s1, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $sp, 456
	st.d	$zero, $sp, 448
	bltu	$s1, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_46:                               # %if.then164
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 456
	st.d	$zero, $sp, 440
	bltu	$s1, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_47:                               # %if.then255
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$s1, $s1, 1
	bltu	$s1, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_48:                               # %if.then186
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$s1, $s1, 1
	addi.d	$a0, $s4, 1
	st.d	$a0, $sp, 440
	stx.b	$a1, $s7, $s4
	bltu	$s1, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_49:                               # %sw.bb49
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 528
	beqz	$a0, .LBB0_52
# %bb.50:                               # %sw.bb49
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 520
	beqz	$a2, .LBB0_52
# %bb.51:                               # %if.then55
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a0, $sp, 432
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB0_103
.LBB0_52:                               # %if.end75
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 400
	ld.d	$a0, $sp, 432
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 400
	beqz	$a0, .LBB0_67
# %bb.53:                               # %if.then.i103
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$s1, $sp, 464
	addi.d	$s5, $a0, -1
	addi.d	$a0, $sp, 432
	ori	$a2, $zero, 104
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 432
	ori	$s5, $zero, 104
	st.w	$s1, $sp, 464
	move	$s1, $s4
	bltu	$s4, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_54:                               # %sw.bb94
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 456
	move	$s1, $s4
	bltu	$s4, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_55:                               # %sw.default
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$s5, $s8, $s1
	ori	$a0, $zero, 2
	bltu	$s5, $a0, .LBB0_59
# %bb.56:                               # %for.body.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB0_57:                               # %for.body
                                        #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a1, $s1, $a0
	ldx.bu	$a1, $a1, $fp
	bnez	$a1, .LBB0_69
# %bb.58:                               # %for.inc
                                        #   in Loop: Header=BB0_57 Depth=3
	addi.d	$a0, $a0, 1
	bne	$s5, $a0, .LBB0_57
.LBB0_59:                               # %for.end
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a3, $sp, 504
	bnez	$a3, .LBB0_70
	b	.LBB0_73
.LBB0_60:                               # %sw.bb1.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 464
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_13
# %bb.61:                               # %if.then.i139
                                        #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(rtf_object_begin)
	addi.d	$a0, $a0, %pc_lo12(rtf_object_begin)
	st.d	$a0, $sp, 504
	pcalau12i	$a0, %pc_hi20(rtf_object_process)
	addi.d	$a0, $a0, %pc_lo12(rtf_object_process)
	st.d	$a0, $sp, 512
	pcalau12i	$a0, %pc_hi20(rtf_object_end)
	addi.d	$a0, $a0, %pc_lo12(rtf_object_end)
	st.d	$a0, $sp, 520
	b	.LBB0_13
.LBB0_62:                               # %if.end.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$s1, $sp, 408
	ld.d	$a1, $sp, 416
	ld.d	$a0, $sp, 392
	bltu	$s1, $a1, .LBB0_64
# %bb.63:                               # %if.then2.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a1, 128
	st.d	$a1, $sp, 416
	mul.d	$a1, $a1, $s5
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392
	beqz	$a0, .LBB0_107
.LBB0_64:                               # %if.end11.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $s1, 1
	st.d	$a1, $sp, 408
	mul.d	$a1, $s1, $s5
	add.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 432
	ori	$a2, $zero, 104
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 464
	ld.d	$s5, $sp, 432
	addi.d	$a0, $sp, 432
	ori	$a2, $zero, 104
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.w	$s1, $sp, 464
	st.d	$s5, $sp, 432
	ori	$s5, $zero, 104
	move	$s1, $s4
	bltu	$s4, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_65:                               # %if.then200
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$s1, $s1, 1
	addi.d	$a0, $s4, 1
	st.d	$a0, $sp, 440
	stx.b	$a1, $s7, $s4
	st.w	$s0, $sp, 456
	bltu	$s1, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_66:                               # %if.then261
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 448
	sub.d	$a0, $zero, $a0
	st.d	$a0, $sp, 448
	st.w	$s0, $sp, 456
	bltu	$s1, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_67:                               # %if.end.i105
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 408
	beqz	$a0, .LBB0_75
# %bb.68:                               # %if.end11.i107
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 392
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 408
	mul.d	$a0, $a0, $s5
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 432
	ori	$a2, $zero, 104
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$s1, $s4
	bltu	$s4, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_69:                               #   in Loop: Header=BB0_15 Depth=2
	move	$s5, $a0
	ld.d	$a3, $sp, 504
	beqz	$a3, .LBB0_73
.LBB0_70:                               # %if.then105
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 528
	bnez	$a0, .LBB0_72
# %bb.71:                               # %if.then108
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a0, $sp, 432
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB0_111
.LBB0_72:                               # %if.end128
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a3, $sp, 512
	addi.d	$a0, $sp, 432
	move	$a1, $s1
	move	$a2, $s5
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB0_88
.LBB0_73:                               # %cleanup
                                        #   in Loop: Header=BB0_15 Depth=2
	add.d	$s1, $s1, $s5
	ori	$s5, $zero, 104
	bltu	$s1, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_74:                               # %if.then215
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 4
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 456
	st.d	$zero, $sp, 448
	bltu	$s1, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_75:                               # %if.then6.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $sp, 424
	bnez	$a0, .LBB0_77
# %bb.76:                               # %if.then8.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 424
.LBB0_77:                               # %if.end10.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a0, $sp, 432
	ori	$a2, $zero, 104
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$s1, $s4
	bltu	$s4, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_78:                               # %if.else226
                                        #   in Loop: Header=BB0_15 Depth=2
	st.w	$s0, $sp, 456
	bltu	$s1, $s8, .LBB0_15
	b	.LBB0_10
.LBB0_79:                               # %if.then19
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB0_81
# %bb.80:                               # %if.then22
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB0_81:                               # %if.end24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(tableDestroy)
	jirl	$ra, $ra, 0
	b	.LBB0_126
.LBB0_82:                               # %while.end296
	ld.d	$a0, $sp, 528
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_85
# %bb.83:                               # %while.end296
	ld.d	$a2, $sp, 520
	beqz	$a2, .LBB0_85
# %bb.84:                               # %if.then302
	addi.d	$a0, $sp, 432
	move	$a1, $fp
	jirl	$ra, $a2, 0
.LBB0_85:                               # %if.end305
	move	$a0, $s2
	pcaddu18i	$ra, %call36(tableDestroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 432
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cleanup_stack)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_87
# %bb.86:                               # %if.then307
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB0_87:                               # %if.end309
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s6, $zero
	b	.LBB0_126
.LBB0_88:                               # %if.then131
	move	$s4, $a0
	ld.d	$a2, $sp, 520
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_92
# %bb.89:                               # %if.end137
	addi.d	$a0, $sp, 432
	move	$a1, $s6
	jirl	$ra, $a2, 0
	ld.d	$a0, $sp, 528
	beqz	$a0, .LBB0_92
# %bb.90:                               # %if.end137
	ld.d	$a2, $sp, 520
	beqz	$a2, .LBB0_92
# %bb.91:                               # %if.then143
	addi.d	$a0, $sp, 432
	move	$a1, $s6
	jirl	$ra, $a2, 0
.LBB0_92:                               # %if.end146
	move	$a0, $s2
	pcaddu18i	$ra, %call36(tableDestroy)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 408
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	beqz	$fp, .LBB0_100
# %bb.93:                               # %while.body.lr.ph.i117
	ld.d	$s0, $sp, 392
	ori	$s2, $zero, 104
	pcalau12i	$a0, %pc_hi20(base_state)
	addi.d	$s1, $a0, %pc_lo12(base_state)
	b	.LBB0_96
.LBB0_94:                               # %pop_state.exit.thread.i125
                                        #   in Loop: Header=BB0_96 Depth=1
	ld.w	$s3, $sp, 464
	addi.d	$s5, $a0, -1
	addi.d	$a0, $sp, 432
	ori	$a2, $zero, 104
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 432
	st.w	$s3, $sp, 464
.LBB0_95:                               # %if.end.i127
                                        #   in Loop: Header=BB0_96 Depth=1
	beqz	$fp, .LBB0_100
.LBB0_96:                               # %while.body.i122
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 432
	bnez	$a0, .LBB0_94
# %bb.97:                               # %pop_state.exit.i129
                                        #   in Loop: Header=BB0_96 Depth=1
	addi.d	$fp, $fp, -1
	mul.d	$a0, $fp, $s2
	add.d	$a1, $s0, $a0
	addi.d	$a0, $sp, 432
	ori	$a2, $zero, 104
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 528
	beqz	$a0, .LBB0_95
# %bb.98:                               # %land.lhs.true.i133
                                        #   in Loop: Header=BB0_96 Depth=1
	ld.d	$a2, $sp, 520
	beqz	$a2, .LBB0_95
# %bb.99:                               # %if.then.i135
                                        #   in Loop: Header=BB0_96 Depth=1
	addi.d	$a0, $sp, 432
	move	$a1, $s6
	jirl	$ra, $a2, 0
	b	.LBB0_95
.LBB0_100:                              # %cleanup_stack.exit137
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_102
# %bb.101:                              # %if.then148
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB0_102:                              # %if.end150
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s6, $s4
	b	.LBB0_126
.LBB0_103:                              # %if.then59
	move	$s6, $a0
	ld.d	$a0, $sp, 528
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_106
# %bb.104:                              # %if.then59
	ld.d	$a2, $sp, 520
	beqz	$a2, .LBB0_106
# %bb.105:                              # %if.then65
	addi.d	$a0, $sp, 432
	move	$a1, $fp
	jirl	$ra, $a2, 0
.LBB0_106:                              # %if.end68
	move	$a0, $s2
	pcaddu18i	$ra, %call36(tableDestroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 432
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cleanup_stack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_123
.LBB0_107:                              # %if.then36
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 528
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_110
# %bb.108:                              # %if.then36
	ld.d	$a2, $sp, 520
	beqz	$a2, .LBB0_110
# %bb.109:                              # %if.then39
	addi.d	$a0, $sp, 432
	move	$a1, $fp
	jirl	$ra, $a2, 0
.LBB0_110:                              # %if.end42
	move	$a0, $s2
	pcaddu18i	$ra, %call36(tableDestroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 432
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cleanup_stack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_125
	b	.LBB0_124
.LBB0_111:                              # %if.then112
	move	$s6, $a0
	ld.d	$a0, $sp, 528
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_114
# %bb.112:                              # %if.then112
	ld.d	$a2, $sp, 520
	beqz	$a2, .LBB0_114
# %bb.113:                              # %if.then118
	addi.d	$a0, $sp, 432
	move	$a1, $s5
	jirl	$ra, $a2, 0
.LBB0_114:                              # %if.end121
	move	$a0, $s2
	pcaddu18i	$ra, %call36(tableDestroy)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 408
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	beqz	$fp, .LBB0_122
# %bb.115:                              # %while.body.lr.ph.i
	ld.d	$s0, $sp, 392
	ori	$s2, $zero, 104
	pcalau12i	$a0, %pc_hi20(base_state)
	addi.d	$s1, $a0, %pc_lo12(base_state)
	b	.LBB0_118
.LBB0_116:                              # %pop_state.exit.thread.i
                                        #   in Loop: Header=BB0_118 Depth=1
	ld.w	$s3, $sp, 464
	addi.d	$s4, $a0, -1
	addi.d	$a0, $sp, 432
	ori	$a2, $zero, 104
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 432
	st.w	$s3, $sp, 464
.LBB0_117:                              # %if.end.i111
                                        #   in Loop: Header=BB0_118 Depth=1
	beqz	$fp, .LBB0_122
.LBB0_118:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 432
	bnez	$a0, .LBB0_116
# %bb.119:                              # %pop_state.exit.i
                                        #   in Loop: Header=BB0_118 Depth=1
	addi.d	$fp, $fp, -1
	mul.d	$a0, $fp, $s2
	add.d	$a1, $s0, $a0
	addi.d	$a0, $sp, 432
	ori	$a2, $zero, 104
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 528
	beqz	$a0, .LBB0_117
# %bb.120:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB0_118 Depth=1
	ld.d	$a2, $sp, 520
	beqz	$a2, .LBB0_117
# %bb.121:                              # %if.then.i113
                                        #   in Loop: Header=BB0_118 Depth=1
	addi.d	$a0, $sp, 432
	move	$a1, $s5
	jirl	$ra, $a2, 0
	b	.LBB0_117
.LBB0_122:                              # %cleanup_stack.exit
	move	$a0, $s7
.LBB0_123:                              # %cleanup_stack.exit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_125
.LBB0_124:                              # %if.then44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB0_125:                              # %if.end46
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_126:                              # %cleanup311
	move	$a0, $s6
	ld.d	$s8, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 600                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 608                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 616                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 624
	ret
.Lfunc_end0:
	.size	cli_scanrtf, .Lfunc_end0-cli_scanrtf
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_17-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_12-.LJTI0_0
	.word	.LBB0_25-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function cleanup_stack
	.type	cleanup_stack,@function
cleanup_stack:                          # @cleanup_stack
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
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB1_8
# %bb.1:                                # %while.body.lr.ph
	move	$s0, $a2
	move	$s1, $a1
	ori	$s3, $zero, 104
	pcalau12i	$a1, %pc_hi20(base_state)
	addi.d	$s2, $a1, %pc_lo12(base_state)
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                # %pop_state.exit.thread
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.w	$s4, $s1, 32
	addi.d	$s5, $a1, -1
	ori	$a2, $zero, 104
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s5, $s1, 0
	st.w	$s4, $s1, 32
.LBB1_3:                                # %if.end
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB1_8
.LBB1_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 8
	ld.d	$a1, $s1, 0
	addi.d	$a2, $a2, -1
	st.d	$a2, $fp, 8
	bnez	$a1, .LBB1_2
# %bb.5:                                # %pop_state.exit
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a1, $fp, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 16
	mul.d	$a0, $a0, $s3
	add.d	$a1, $a1, $a0
	ori	$a2, $zero, 104
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 96
	beqz	$a0, .LBB1_3
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a2, $s1, 88
	beqz	$a2, .LBB1_3
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	jirl	$ra, $a2, 0
	b	.LBB1_3
.LBB1_8:                                # %while.end
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
	.size	cleanup_stack, .Lfunc_end1-cleanup_stack
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function rtf_object_begin
.LCPI2_0:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.p2align	5
	.type	rtf_object_begin,@function
rtf_object_begin:                       # @rtf_object_begin
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.end
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_0)
	move	$a1, $zero
	st.d	$zero, $a0, 56
	vst	$vr0, $a0, 8
	st.d	$s1, $a0, 32
	st.d	$s0, $a0, 40
	st.d	$zero, $a0, 0
	st.d	$zero, $a0, 24
	st.d	$a0, $fp, 96
	b	.LBB2_3
.LBB2_2:
	addi.w	$a1, $zero, -114
.LBB2_3:                                # %cleanup
	move	$a0, $a1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	rtf_object_begin, .Lfunc_end2-rtf_object_begin
                                        # -- End function
	.p2align	5                               # -- Begin function rtf_object_process
	.type	rtf_object_process,@function
rtf_object_process:                     # @rtf_object_process
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2192
	sub.d	$sp, $sp, $a3
	move	$s1, $a1
	move	$a1, $a0
	move	$a0, $zero
	beqz	$a2, .LBB3_83
# %bb.1:                                # %entry
	ld.d	$fp, $a1, 96
	beqz	$fp, .LBB3_83
# %bb.2:                                # %if.end
	move	$s0, $a2
	ld.w	$a0, $fp, 16
	beqz	$a0, .LBB3_6
# %bb.3:                                # %for.cond.preheader
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB3_4:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $s1, $a0
	slli.d	$a3, $a3, 1
	ldx.hu	$a4, $a1, $a3
	and	$a4, $a4, $a2
	bnez	$a4, .LBB3_7
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, 1
	bne	$s0, $a0, .LBB3_4
	b	.LBB3_82
.LBB3_6:
	move	$s2, $zero
	move	$s5, $zero
	bltu	$s2, $s0, .LBB3_8
	b	.LBB3_17
.LBB3_7:                                # %if.then9
	ld.w	$a1, $fp, 12
	pcalau12i	$a2, %pc_hi20(hextable)
	addi.d	$a2, $a2, %pc_lo12(hextable)
	ldx.h	$a2, $a2, $a3
	addi.d	$s2, $a0, 1
	or	$a0, $a1, $a2
	st.b	$a0, $sp, 40
	st.w	$zero, $fp, 16
	ori	$s5, $zero, 1
	bgeu	$s2, $s0, .LBB3_17
.LBB3_8:                                # %for.body25.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s1, 1
	lu12i.w	$a2, 1
	pcalau12i	$a3, %pc_hi20(hextable)
	addi.d	$a3, $a3, %pc_lo12(hextable)
	addi.d	$a4, $sp, 40
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                #   in Loop: Header=BB3_10 Depth=1
	move	$a7, $s2
	addi.d	$s2, $a7, 1
	bgeu	$s2, $s0, .LBB3_17
.LBB3_10:                               # %for.body25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
	ldx.bu	$a5, $s1, $s2
	ld.d	$a6, $a0, 0
	slli.d	$a5, $a5, 1
	ldx.hu	$a7, $a6, $a5
	and	$a7, $a7, $a2
	beqz	$a7, .LBB3_9
# %bb.11:                               # %if.then34
                                        #   in Loop: Header=BB3_10 Depth=1
	ldx.b	$a5, $a3, $a5
	slli.d	$a5, $a5, 4
	addi.d	$a7, $s2, 1
	sltu	$t0, $a7, $s0
	masknez	$a7, $a7, $t0
	maskeqz	$t0, $s0, $t0
	or	$t0, $t0, $a7
	addi.d	$t1, $t0, -1
	.p2align	4, , 16
.LBB3_12:                               # %while.cond
                                        #   Parent Loop BB3_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$t1, $s2, .LBB3_15
# %bb.13:                               # %land.rhs43
                                        #   in Loop: Header=BB3_12 Depth=2
	ldx.bu	$a7, $a1, $s2
	slli.d	$a7, $a7, 1
	ldx.hu	$t2, $a6, $a7
	addi.d	$a7, $s2, 1
	and	$t2, $t2, $a2
	move	$s2, $a7
	beqz	$t2, .LBB3_12
# %bb.14:                               # %while.end
                                        #   in Loop: Header=BB3_10 Depth=1
	bne	$a7, $s0, .LBB3_16
	b	.LBB3_77
	.p2align	4, , 16
.LBB3_15:                               #   in Loop: Header=BB3_10 Depth=1
	move	$a7, $t0
	beq	$a7, $s0, .LBB3_77
.LBB3_16:                               # %cleanup.thread
                                        #   in Loop: Header=BB3_10 Depth=1
	ldx.bu	$a6, $s1, $a7
	slli.d	$a6, $a6, 1
	ldx.b	$a6, $a3, $a6
	or	$a5, $a5, $a6
	addi.d	$a6, $s5, 1
	stx.b	$a5, $s5, $a4
	move	$s5, $a6
	addi.d	$s2, $a7, 1
	bltu	$s2, $s0, .LBB3_10
.LBB3_17:                               # %for.end74
	beqz	$s5, .LBB3_82
.LBB3_18:                               # %while.body80.lr.ph
	addi.d	$a0, $fp, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s1, $sp, 40
	pcalau12i	$a0, %pc_hi20(.LJTI3_0)
	addi.d	$s6, $a0, %pc_lo12(.LJTI3_0)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s7, $zero, 7
	pcalau12i	$a0, %pc_hi20(rtf_data_magic)
	addi.d	$s8, $a0, %pc_lo12(rtf_data_magic)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s3, $a0, %pc_lo12(.L.str.12)
	ori	$s4, $zero, 8
	ori	$s2, $zero, 4
	ori	$s0, $zero, 63
	b	.LBB3_21
	.p2align	4, , 16
.LBB3_19:                               #   in Loop: Header=BB3_21 Depth=1
	ori	$s4, $zero, 8
.LBB3_20:                               # %sw.epilog
                                        #   in Loop: Header=BB3_21 Depth=1
	beqz	$s5, .LBB3_82
.LBB3_21:                               # %while.body80
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_31 Depth 2
                                        #     Child Loop BB3_35 Depth 2
                                        #     Child Loop BB3_49 Depth 2
                                        #     Child Loop BB3_25 Depth 2
	ld.w	$a0, $fp, 20
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB3_82
# %bb.22:                               # %while.body80
                                        #   in Loop: Header=BB3_21 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s6, $a0
	add.d	$a0, $s6, $a0
	jr	$a0
.LBB3_23:                               # %sw.bb
                                        #   in Loop: Header=BB3_21 Depth=1
	ori	$s2, $zero, 8
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 56
	move	$s4, $zero
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_24:                               # %for.inc103
                                        #   in Loop: Header=BB3_25 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$a3, $a3, 1
	st.d	$a3, $fp, 56
	beq	$s5, $s4, .LBB3_64
.LBB3_25:                               # %land.rhs84
                                        #   Parent Loop BB3_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s7, $a3, .LBB3_65
# %bb.26:                               # %for.body88
                                        #   in Loop: Header=BB3_25 Depth=2
	ldx.bu	$a0, $s8, $a3
	ldx.bu	$a2, $s1, $s4
	beq	$a0, $a2, .LBB3_24
# %bb.27:                               # %if.then96
                                        #   in Loop: Header=BB3_25 Depth=2
	ldx.bu	$a1, $s8, $s4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 56
	b	.LBB3_24
.LBB3_28:                               # %sw.bb254
                                        #   in Loop: Header=BB3_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	bnez	$a0, .LBB3_30
# %bb.29:                               # %if.then258
                                        #   in Loop: Header=BB3_21 Depth=1
	st.d	$zero, $fp, 48
.LBB3_30:                               # %if.end260
                                        #   in Loop: Header=BB3_21 Depth=1
	move	$a1, $zero
	sub.d	$a2, $s2, $a0
	sltu	$a3, $s2, $a2
	masknez	$s4, $a2, $a3
	slli.d	$a2, $a0, 3
	.p2align	4, , 16
.LBB3_31:                               # %land.rhs264
                                        #   Parent Loop BB3_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s4, $a1, .LBB3_56
# %bb.32:                               # %for.body269
                                        #   in Loop: Header=BB3_31 Depth=2
	ldx.bu	$a3, $s1, $a1
	ld.d	$a4, $fp, 48
	sll.d	$a3, $a3, $a2
	or	$a3, $a3, $a4
	st.d	$a3, $fp, 48
	addi.d	$a3, $a1, 1
	add.d	$a1, $a0, $a1
	addi.d	$a1, $a1, 1
	st.d	$a1, $fp, 56
	addi.d	$a2, $a2, 8
	move	$a1, $a3
	bne	$s5, $a3, .LBB3_31
# %bb.33:                               # %for.end281split
                                        #   in Loop: Header=BB3_21 Depth=1
	add.d	$a0, $a0, $a3
	move	$s4, $s5
	sub.d	$s5, $s5, $s4
	bne	$a0, $s2, .LBB3_19
	b	.LBB3_57
.LBB3_34:                               # %sw.bb166
                                        #   in Loop: Header=BB3_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	move	$a0, $zero
	.p2align	4, , 16
.LBB3_35:                               # %land.lhs.true
                                        #   Parent Loop BB3_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $fp, 48
	bltu	$s0, $a1, .LBB3_39
# %bb.36:                               # %land.lhs.true
                                        #   in Loop: Header=BB3_35 Depth=2
	bgeu	$a1, $a2, .LBB3_39
# %bb.37:                               # %for.body179
                                        #   in Loop: Header=BB3_35 Depth=2
	ldx.b	$a2, $s1, $a0
	ld.d	$a3, $fp, 24
	stx.b	$a2, $a3, $a1
	ld.d	$a1, $fp, 56
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	st.d	$a1, $fp, 56
	bne	$s5, $a0, .LBB3_35
# %bb.38:                               # %for.body179.for.end188_crit_edge
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a2, $fp, 48
	move	$a0, $s5
.LBB3_39:                               # %for.end188
                                        #   in Loop: Header=BB3_21 Depth=1
	bltu	$s0, $a1, .LBB3_41
# %bb.40:                               # %for.end188
                                        #   in Loop: Header=BB3_21 Depth=1
	bltu	$a1, $a2, .LBB3_79
.LBB3_41:                               # %if.end200
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a2, $fp, 24
	stx.b	$zero, $a2, $a1
	ld.d	$a1, $fp, 48
	ld.d	$a3, $fp, 56
	sub.d	$a4, $s5, $a0
	sub.d	$a2, $a1, $a3
	bltu	$a4, $a2, .LBB3_80
# %bb.42:                               # %if.end212
                                        #   in Loop: Header=BB3_21 Depth=1
	add.d	$s1, $s1, $a0
	sub.d	$s5, $a4, $a2
	bltu	$a3, $a1, .LBB3_20
# %bb.43:                               # %if.then221
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a1, $fp, 24
	add.d	$s1, $s1, $a2
	st.d	$zero, $fp, 56
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 24
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 20
	b	.LBB3_20
.LBB3_44:                               # %sw.bb232
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a0, $fp, 56
	sub.d	$a1, $s4, $a0
	bgeu	$s5, $a1, .LBB3_62
# %bb.45:                               # %if.end245
                                        #   in Loop: Header=BB3_21 Depth=1
	move	$s5, $zero
	beq	$a0, $s4, .LBB3_63
	b	.LBB3_82
.LBB3_46:                               # %sw.bb115
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a0, $fp, 56
	bnez	$a0, .LBB3_48
# %bb.47:                               # %if.then119
                                        #   in Loop: Header=BB3_21 Depth=1
	st.d	$zero, $fp, 48
.LBB3_48:                               # %if.end120
                                        #   in Loop: Header=BB3_21 Depth=1
	move	$a1, $zero
	sub.d	$a2, $s2, $a0
	sltu	$a3, $s2, $a2
	masknez	$s4, $a2, $a3
	slli.d	$a2, $a0, 3
	.p2align	4, , 16
.LBB3_49:                               # %land.rhs124
                                        #   Parent Loop BB3_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s4, $a1, .LBB3_59
# %bb.50:                               # %for.body129
                                        #   in Loop: Header=BB3_49 Depth=2
	ldx.bu	$a3, $s1, $a1
	ld.d	$a4, $fp, 48
	sll.d	$a3, $a3, $a2
	or	$a3, $a3, $a4
	st.d	$a3, $fp, 48
	addi.d	$a3, $a1, 1
	add.d	$a1, $a0, $a1
	addi.d	$a1, $a1, 1
	st.d	$a1, $fp, 56
	addi.d	$a2, $a2, 8
	move	$a1, $a3
	bne	$s5, $a3, .LBB3_49
# %bb.51:                               # %for.end140split
                                        #   in Loop: Header=BB3_21 Depth=1
	add.d	$a0, $a0, $a3
	move	$s4, $s5
	sub.d	$s5, $s5, $s4
	beq	$a0, $s2, .LBB3_60
	b	.LBB3_19
.LBB3_52:                               # %sw.bb296
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$s4, $fp, 48
	ld.d	$a0, $fp, 56
	move	$a1, $s4
	bnez	$a0, .LBB3_70
# %bb.53:                               # %if.then303
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 208
	bne	$a0, $a1, .LBB3_68
# %bb.54:                               # %lor.lhs.false308
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.bu	$a0, $s1, 1
	ori	$a1, $zero, 207
	bne	$a0, $a1, .LBB3_68
# %bb.55:                               # %if.else328
                                        #   in Loop: Header=BB3_21 Depth=1
	ori	$a0, $zero, 2
	st.d	$a0, $fp, 56
	move	$a1, $s4
	b	.LBB3_70
.LBB3_56:                               # %land.rhs264.for.end281_crit_edge
                                        #   in Loop: Header=BB3_21 Depth=1
	add.d	$a0, $a0, $a1
	sub.d	$s5, $s5, $s4
	bne	$a0, $s2, .LBB3_19
.LBB3_57:                               # %if.then286
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a1, $fp, 48
	st.d	$zero, $fp, 56
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	move	$a1, $fp
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_gentempfd)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_83
# %bb.58:                               # %if.end293
                                        #   in Loop: Header=BB3_21 Depth=1
	add.d	$s1, $s1, $s4
	ori	$a0, $zero, 5
	st.w	$a0, $fp, 20
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 8
	b	.LBB3_20
.LBB3_59:                               # %land.rhs124.for.end140_crit_edge
                                        #   in Loop: Header=BB3_21 Depth=1
	add.d	$a0, $a0, $a1
	sub.d	$s5, $s5, $s4
	bne	$a0, $s2, .LBB3_19
.LBB3_60:                               # %if.then145
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a1, $fp, 48
	st.d	$zero, $fp, 56
	ori	$a0, $zero, 65
	bltu	$a1, $a0, .LBB3_74
# %bb.61:                               # %if.then151
                                        #   in Loop: Header=BB3_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 65
	b	.LBB3_75
.LBB3_62:                               # %if.end245.thread
                                        #   in Loop: Header=BB3_21 Depth=1
	sub.d	$s5, $s5, $a1
.LBB3_63:                               # %if.then249
                                        #   in Loop: Header=BB3_21 Depth=1
	addi.d	$s1, $s1, 8
	st.d	$zero, $fp, 56
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.w	$s2, $fp, 20
	b	.LBB3_20
.LBB3_64:                               #   in Loop: Header=BB3_21 Depth=1
	move	$s4, $s5
.LBB3_65:                               # %for.end107
                                        #   in Loop: Header=BB3_21 Depth=1
	sub.d	$s5, $s5, $s4
	bne	$a3, $s2, .LBB3_67
# %bb.66:                               # %if.then111
                                        #   in Loop: Header=BB3_21 Depth=1
	add.d	$s1, $s1, $s4
	st.d	$zero, $fp, 56
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 20
.LBB3_67:                               #   in Loop: Header=BB3_21 Depth=1
	ori	$s4, $zero, 8
	ori	$s2, $zero, 4
	b	.LBB3_20
.LBB3_68:                               # %if.then313
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.w	$a0, $fp, 8
	ori	$a1, $zero, 1
	st.d	$a1, $fp, 56
	st.w	$s4, $sp, 36
	addi.d	$a1, $sp, 36
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB3_78
# %bb.69:                               # %if.then313.if.end331_crit_edge
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a1, $fp, 48
.LBB3_70:                               # %if.end331
                                        #   in Loop: Header=BB3_21 Depth=1
	sltu	$a0, $s5, $s4
	masknez	$a2, $s4, $a0
	maskeqz	$a3, $s5, $a0
	ld.w	$a0, $fp, 8
	or	$s4, $a3, $a2
	sub.d	$a1, $a1, $s4
	st.d	$a1, $fp, 48
	addi.w	$a2, $s4, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$s4, $a0, .LBB3_78
# %bb.71:                               # %if.end341
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a0, $fp, 48
	add.d	$s1, $s1, $s4
	sub.d	$s5, $s5, $s4
	bnez	$a0, .LBB3_19
# %bb.72:                               # %if.then346
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a1, $fp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(decode_and_scan)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 8
	bnez	$a0, .LBB3_83
# %bb.73:                               # %if.end350
                                        #   in Loop: Header=BB3_21 Depth=1
	st.d	$zero, $fp, 56
	st.w	$zero, $fp, 20
	b	.LBB3_20
.LBB3_74:                               # %if.else154
                                        #   in Loop: Header=BB3_21 Depth=1
	addi.d	$a0, $a1, 1
.LBB3_75:                               # %if.end158
                                        #   in Loop: Header=BB3_21 Depth=1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	beqz	$a0, .LBB3_84
# %bb.76:                               # %if.end162
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a1, $fp, 48
	add.d	$s1, $s1, $s4
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 20
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 8
	b	.LBB3_20
.LBB3_77:                               # %cleanup
	andi	$a0, $a5, 255
	st.w	$a0, $fp, 12
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 16
	bnez	$s5, .LBB3_18
	b	.LBB3_82
.LBB3_78:
	addi.w	$a0, $zero, -123
	b	.LBB3_83
.LBB3_79:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	b	.LBB3_81
.LBB3_80:                               # %if.then209
	sub.d	$a0, $a1, $a4
	st.d	$a0, $fp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
.LBB3_81:                               # %cleanup361
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB3_82:                               # %cleanup361
	move	$a0, $zero
.LBB3_83:                               # %cleanup361
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2192
	add.d	$sp, $sp, $a1
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB3_84:
	addi.w	$a0, $zero, -114
	b	.LBB3_83
.Lfunc_end3:
	.size	rtf_object_process, .Lfunc_end3-rtf_object_process
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_23-.LJTI3_0
	.word	.LBB3_46-.LJTI3_0
	.word	.LBB3_34-.LJTI3_0
	.word	.LBB3_44-.LJTI3_0
	.word	.LBB3_28-.LJTI3_0
	.word	.LBB3_52-.LJTI3_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function rtf_object_end
	.type	rtf_object_end,@function
rtf_object_end:                         # @rtf_object_end
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s0, $a0, 96
	beqz	$s0, .LBB4_7
# %bb.1:                                # %if.end
	move	$fp, $a0
	ld.w	$a0, $s0, 8
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB4_9
# %bb.2:                                # %if.then1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(decode_and_scan)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_4
.LBB4_3:                                # %if.then4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_4:                                # %if.end6
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB4_6
# %bb.5:                                # %if.then8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_6:                                # %if.end10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 96
	b	.LBB4_8
.LBB4_7:
	move	$s1, $zero
.LBB4_8:                                # %cleanup
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_9:
	move	$s1, $zero
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB4_3
	b	.LBB4_4
.Lfunc_end4:
	.size	rtf_object_end, .Lfunc_end4-rtf_object_end
                                        # -- End function
	.p2align	5                               # -- Begin function decode_and_scan
	.type	decode_and_scan,@function
decode_and_scan:                        # @decode_and_scan
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a2, $a0, 0
	move	$s0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	move	$a1, $a2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 56
	ld.w	$a0, $fp, 8
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB5_4
# %bb.1:                                # %land.lhs.true
	blt	$a0, $a1, .LBB5_6
# %bb.2:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ld.d	$a1, $fp, 32
	pcaddu18i	$ra, %call36(cli_decode_ole_object)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB5_6
# %bb.3:                                # %if.then6
	move	$s1, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB5_7
	b	.LBB5_8
.LBB5_4:                                # %if.else
	blt	$a0, $a1, .LBB5_6
# %bb.5:                                # %if.then11
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$a0, $fp, 8
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB5_7
	b	.LBB5_8
.LBB5_6:
	move	$s0, $zero
	ld.w	$a0, $fp, 8
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_8
.LBB5_7:                                # %if.then18
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB5_8:                                # %if.end21
	ld.d	$a0, $fp, 0
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 8
	beqz	$a0, .LBB5_12
# %bb.9:                                # %if.then24
	pcalau12i	$a1, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a1, $a1, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a1, $a1, 0
	bnez	$a1, .LBB5_11
# %bb.10:                               # %if.then26
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.LBB5_11:                               # %if.end29
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
.LBB5_12:                               # %if.end32
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	decode_and_scan, .Lfunc_end5-decode_and_scan
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in cli_scanrtf()\n"
	.size	.L.str, 18

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"ScanRTF -> Can't create temporary directory %s\n"
	.size	.L.str.1, 48

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"RTF: Unable to load rtf action table\n"
	.size	.L.str.2, 38

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"RTF:Push failure!\n"
	.size	.L.str.3, 19

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Invalid control word: maximum size exceeded:%s\n"
	.size	.L.str.5, 48

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"object"
	.size	.L.str.6, 7

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"objdata "
	.size	.L.str.7, 9

	.type	base_state,@object              # @base_state
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
base_state:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.asciz	"                              \000\000"
	.space	3
	.dword	0
	.dword	0
	.dword	0
	.dword	0
	.size	base_state, 104

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Warning: attempt to pop from empty stack!\n"
	.size	.L.str.10, 43

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"RTF: waiting for magic\n"
	.size	.L.str.11, 24

	.type	rtf_data_magic,@object          # @rtf_data_magic
	.section	.rodata.cst8,"aM",@progbits,8
rtf_data_magic:
	.asciz	"\001\005\000\000\002\000\000"
	.size	rtf_data_magic, 8

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"Warning: rtf objdata magic number not matched, expected:%d, got: %d, at pos:%lu\n"
	.size	.L.str.12, 81

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Description length too big (%lu), showing only 64 bytes of it\n"
	.size	.L.str.13, 63

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"RTF: description length:%lu\n"
	.size	.L.str.14, 29

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"RTF: in WAIT_DESC\n"
	.size	.L.str.15, 19

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"RTF: waiting for more data(1)\n"
	.size	.L.str.16, 31

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"RTF: waiting for more data(2)\n"
	.size	.L.str.17, 31

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Preparing to dump rtf embedded object, description:%s\n"
	.size	.L.str.18, 55

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"RTF: next state: wait_data_size\n"
	.size	.L.str.19, 33

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"RTF: in WAIT_DATA_SIZE\n"
	.size	.L.str.20, 24

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Dumping rtf embedded object of size:%lu\n"
	.size	.L.str.21, 41

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"RTF: next state: DUMP_DATA\n"
	.size	.L.str.22, 28

	.type	hextable,@object                # @hextable
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
hextable:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
	.space	306
	.size	hextable, 512

	.type	.L.str.24,@object               # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"RTF:Scanning embedded object:%s\n"
	.size	.L.str.24, 33

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Decoding ole object\n"
	.size	.L.str.25, 21

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rtf_object_begin
	.addrsig_sym rtf_object_process
	.addrsig_sym rtf_object_end
	.addrsig_sym base_state
