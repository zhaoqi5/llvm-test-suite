	.file	"libclamav_autoit.c"
	.text
	.globl	cli_scanautoit                  # -- Begin function cli_scanautoit
	.p2align	5
	.type	cli_scanautoit,@function
cli_scanautoit:                         # @cli_scanautoit
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1920
	st.d	$ra, $sp, 1912                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1904                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1896                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1888                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1880                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1872                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1864                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1856                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1848                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1840                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1832                  # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $a2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 207
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_4
# %bb.1:                                # %if.end
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
# %bb.2:                                # %if.end4
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
# %bb.3:                                # %if.then7
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -118
	b	.LBB0_361
.LBB0_4:
	addi.w	$a0, $zero, -123
	b	.LBB0_362
.LBB0_5:
	addi.w	$a0, $zero, -118
	b	.LBB0_362
.LBB0_6:                                # %if.end8
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s6, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s6, 0
	beqz	$a0, .LBB0_8
# %bb.7:                                # %if.then10
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_8:                                # %if.end11
	ld.bu	$a0, $sp, 207
	ori	$a1, $zero, 54
	beq	$a0, $a1, .LBB0_12
# %bb.9:                                # %if.end11
	ori	$a1, $zero, 53
	bne	$a0, $a1, .LBB0_356
# %bb.10:                               # %sw.bb
	addi.d	$s5, $sp, 1232
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 16
	ori	$s2, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_358
# %bb.11:                               # %for.body.preheader.i
	move	$s7, $zero
	ld.bu	$a0, $sp, 1232
	ld.bu	$a1, $sp, 1233
	ld.bu	$a2, $sp, 1234
	ld.bu	$a3, $sp, 1235
	ld.bu	$a4, $sp, 1236
	ld.bu	$a5, $sp, 1237
	ld.bu	$a6, $sp, 1238
	ld.bu	$a7, $sp, 1239
	ld.bu	$t0, $sp, 1240
	ld.bu	$t1, $sp, 1241
	ld.bu	$t2, $sp, 1242
	ld.bu	$t3, $sp, 1243
	ld.bu	$t4, $sp, 1244
	ld.bu	$t5, $sp, 1245
	ld.bu	$t6, $sp, 1246
	ld.bu	$t7, $sp, 1247
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a7
	add.d	$a0, $a0, $t0
	add.d	$a0, $a0, $t1
	add.d	$a0, $a0, $t2
	add.d	$a0, $a0, $t3
	add.d	$a0, $a0, $t4
	add.d	$a0, $a0, $t5
	add.d	$a0, $a0, $t6
	add.d	$a0, $a0, $t7
	lu12i.w	$a1, 2
	ori	$a2, $a1, 687
	add.w	$a0, $a0, $a2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$s8, $zero, 8
	lu12i.w	$a0, -201978
	ori	$a0, $a0, 3583
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ori	$a0, $a1, 2492
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cli_debug_flag)
	ld.d	$s2, $a0, %got_pc_lo12(cli_debug_flag)
	lu12i.w	$a0, 10
	ori	$a0, $a0, 606
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $a1, 2476
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 606
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a0, 4
	ori	$s4, $a0, 1450
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a0, 12
	ori	$a0, $a0, 978
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a0, 217860
	ori	$a0, $a0, 325
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s2, $sp, 160                   # 8-byte Folded Spill
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	b	.LBB0_364
.LBB0_12:                               # %sw.bb13
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	addi.d	$s2, $sp, 1232
	lu12i.w	$a0, 339108
	ori	$a0, $a0, 875
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	lu12i.w	$a1, 10
	ori	$a0, $a1, 3516
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$s8, $zero, 299
	lu12i.w	$a0, -5
	ori	$a0, $a0, 831
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $a1, 3503
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 2080
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	lu12i.w	$a0, 8
	ori	$s5, $a0, 1980
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1143
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a0, 221956
	ori	$a0, $a0, 325
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
.LBB0_13:                               # %while.cond.outer.i18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_235 Depth 3
                                        #       Child Loop BB0_166 Depth 3
                                        #       Child Loop BB0_171 Depth 3
                                        #     Child Loop BB0_276 Depth 2
                                        #       Child Loop BB0_295 Depth 3
                                        #       Child Loop BB0_303 Depth 3
                                        #       Child Loop BB0_307 Depth 3
	st.d	$s7, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_15
.LBB0_14:                               # %lor.lhs.false.i22
                                        #   in Loop: Header=BB0_13 Depth=1
	ld.w	$a1, $a0, 4
	addi.w	$a0, $a1, -1
	bltu	$a0, $s7, .LBB0_618
.LBB0_15:                               # %while.body.i24
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_54 Depth 3
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB0_358
# %bb.16:                               # %if.end.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $sp, 1232
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_617
# %bb.17:                               # %if.end10.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$s4, $sp, 1236
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	xor	$s5, $s4, $a0
	slli.w	$s3, $s5, 1
	bltz	$s3, .LBB0_358
# %bb.18:                               # %if.end14.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$s8, $s5, .LBB0_26
# %bb.19:                               # %if.then16.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1232
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_358
# %bb.20:                               # %if.end22.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $s5, $a0
	bstrpick.d	$a2, $a0, 15, 0
	addi.d	$a0, $sp, 1232
	move	$a1, $s3
	pcaddu18i	$ra, %call36(LAME_decrypt)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	beqz	$s3, .LBB0_34
# %bb.21:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 5
	bltu	$s3, $a0, .LBB0_27
# %bb.22:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1232
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB0_27
# %bb.23:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1233
	ori	$a1, $zero, 254
	bne	$a0, $a1, .LBB0_27
# %bb.24:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1234
	beqz	$a0, .LBB0_27
# %bb.25:                               # %if.then12.i.i73
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$s3, $s3, -2
	addi.d	$a0, $sp, 1234
	b	.LBB0_32
.LBB0_26:                               # %if.else.i28
                                        #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_36
.LBB0_27:                               # %for.body.preheader.i.i85
                                        #   in Loop: Header=BB0_15 Depth=2
	move	$a2, $zero
	move	$a0, $zero
	sltui	$a1, $s3, 20
	ori	$a3, $zero, 20
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a3
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               #   in Loop: Header=BB0_29 Depth=3
	move	$a3, $zero
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bgeu	$a2, $a1, .LBB0_31
.LBB0_29:                               # %for.body.i.i86
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a3, $a2, $s2
	beqz	$a3, .LBB0_28
# %bb.30:                               # %land.rhs.i.i91
                                        #   in Loop: Header=BB0_29 Depth=3
	add.d	$a3, $s2, $a2
	ld.bu	$a3, $a3, 1
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bltu	$a2, $a1, .LBB0_29
.LBB0_31:                               # %for.end.i.i99
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.w	$a2, $a0, 2
	addi.d	$a0, $sp, 1232
	bltu	$a2, $a1, .LBB0_34
.LBB0_32:                               # %for.body36.preheader.i.i75
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 2
	sltu	$a1, $a2, $s3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, -1
	srli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $sp, 1232
	.p2align	4, , 16
.LBB0_33:                               # %for.body36.i.i78
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a3, $a0, 0
	st.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2
	bnez	$a1, .LBB0_33
.LBB0_34:                               # %u2a.exit.i84
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1232
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bne	$s4, $a0, .LBB0_36
# %bb.35:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 19
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
.LBB0_36:                               # %if.end35.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_358
# %bb.37:                               # %if.end40.i29
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $sp, 1232
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	xor	$s4, $a0, $a1
	slli.w	$s3, $s4, 1
	bltz	$s3, .LBB0_358
# %bb.38:                               # %if.end47.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$s8, $s4, .LBB0_47
# %bb.39:                               # %if.end47.i
                                        #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %got_pc_hi20(cli_debug_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_debug_flag)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB0_47
# %bb.40:                               # %if.then53.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1232
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_358
# %bb.41:                               # %if.end60.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a0, $s4, -2048
	addi.d	$a0, $a0, -903
	bstrpick.d	$a2, $a0, 15, 0
	addi.d	$a0, $sp, 1232
	move	$a1, $s3
	pcaddu18i	$ra, %call36(LAME_decrypt)
	jirl	$ra, $ra, 0
	stx.h	$zero, $s3, $s2
	beqz	$s3, .LBB0_55
# %bb.42:                               # %if.end.i187.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 5
	bltu	$s3, $a0, .LBB0_48
# %bb.43:                               # %if.end.i187.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1232
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB0_48
# %bb.44:                               # %if.end.i187.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1233
	ori	$a1, $zero, 254
	bne	$a0, $a1, .LBB0_48
# %bb.45:                               # %if.end.i187.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1234
	beqz	$a0, .LBB0_48
# %bb.46:                               # %if.then12.i227.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$s3, $s3, -2
	addi.d	$a0, $sp, 1234
	b	.LBB0_53
.LBB0_47:                               # %if.else71.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB0_56
.LBB0_48:                               # %for.body.preheader.i189.i
                                        #   in Loop: Header=BB0_15 Depth=2
	move	$a2, $zero
	move	$a0, $zero
	sltui	$a1, $s3, 20
	ori	$a3, $zero, 20
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a3
	b	.LBB0_50
	.p2align	4, , 16
.LBB0_49:                               #   in Loop: Header=BB0_50 Depth=3
	move	$a3, $zero
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bgeu	$a2, $a1, .LBB0_52
.LBB0_50:                               # %for.body.i191.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a3, $a2, $s2
	beqz	$a3, .LBB0_49
# %bb.51:                               # %land.rhs.i196.i
                                        #   in Loop: Header=BB0_50 Depth=3
	add.d	$a3, $s2, $a2
	ld.bu	$a3, $a3, 1
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bltu	$a2, $a1, .LBB0_50
.LBB0_52:                               # %for.end.i204.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.w	$a2, $a0, 2
	addi.d	$a0, $sp, 1232
	bltu	$a2, $a1, .LBB0_55
.LBB0_53:                               # %for.body36.preheader.i207.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 2
	sltu	$a1, $a2, $s3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, -1
	srli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $sp, 1232
	.p2align	4, , 16
.LBB0_54:                               # %for.body36.i211.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a3, $a0, 0
	st.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2
	bnez	$a1, .LBB0_54
.LBB0_55:                               # %u2a.exit229.i
                                        #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	addi.d	$a1, $sp, 1232
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_56:                               # %if.end75.i32
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB0_358
# %bb.57:                               # %if.end80.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$s4, $sp, 1233
	addi.w	$s8, $zero, -1
	bge	$s8, $s4, .LBB0_616
# %bb.58:                               # %if.end88.i33
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$s3, $sp, 1232
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bne	$s4, $s5, .LBB0_60
# %bb.59:                               # %if.then92.i
                                        #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 299
	ld.d	$a0, $s0, 32
	bnez	$a0, .LBB0_14
	b	.LBB0_15
.LBB0_60:                               # %if.end93.i
                                        #   in Loop: Header=BB0_15 Depth=2
	xor	$s7, $s4, $s5
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1237
	xor	$a1, $a0, $s5
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1241
	lu12i.w	$a1, 10
	ori	$a1, $a1, 1669
	xor	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_64
# %bb.61:                               # %land.lhs.true103.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_64
# %bb.62:                               # %land.lhs.true106.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bgeu	$a2, $s7, .LBB0_64
# %bb.63:                               # %if.then113.i
                                        #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ori	$s8, $zero, 299
	ld.d	$a0, $s0, 32
	bnez	$a0, .LBB0_14
	b	.LBB0_15
.LBB0_64:                               # %if.end120.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.w	$a0, $zero, -114
	beqz	$s4, .LBB0_359
# %bb.65:                               # %if.end126.i
                                        #   in Loop: Header=BB0_13 Depth=1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_623
# %bb.66:                               # %if.end133.i
                                        #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s4
	move	$a1, $s7
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LAME_decrypt)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB0_260
# %bb.67:                               # %if.then138.i40
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_263
# %bb.68:                               # %if.end143.i
                                        #   in Loop: Header=BB0_13 Depth=1
	ld.w	$a0, $s4, 4
	revb.2w	$a1, $a0
	sltui	$a2, $a0, 1
	ld.d	$a3, $s0, 32
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$s3, $a2, $a1
	bstrpick.d	$a0, $s3, 31, 0
	beqz	$a3, .LBB0_71
# %bb.69:                               # %land.lhs.true160.i
                                        #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a1, $a3, 24
	beqz	$a1, .LBB0_71
# %bb.70:                               # %land.lhs.true160.i
                                        #   in Loop: Header=BB0_13 Depth=1
	bltu	$a1, $a0, .LBB0_264
.LBB0_71:                               # %if.end172.i
                                        #   in Loop: Header=BB0_13 Depth=1
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_633
# %bb.72:                               # %if.end178.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$s6, $a0
	addi.w	$s4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	beqz	$s4, .LBB0_266
# %bb.73:                               # %while.body187.i.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $zero
	move	$t4, $zero
	move	$t3, $zero
	ori	$a4, $zero, 8
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
.LBB0_74:                               # %while.body187.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_235 Depth 3
                                        #       Child Loop BB0_166 Depth 3
                                        #       Child Loop BB0_171 Depth 3
	bstrpick.d	$s5, $t3, 15, 0
	bnez	$t4, .LBB0_81
# %bb.75:                               # %while.body187.i
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB0_81
# %bb.76:                               # %if.then190.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s3, $zero
.LBB0_77:                               # %if.then.i271.i
                                        #   in Loop: Header=BB0_74 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$t2, $zero
	ori	$a0, $zero, 1
	ori	$t1, $zero, 1
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$s5, $s5, 15, 0
	ori	$a1, $zero, 1
	bltu	$a1, $s3, .LBB0_148
.LBB0_78:                               # %getbits.exit273.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$a0, .LBB0_148
# %bb.79:                               #   in Loop: Header=BB0_74 Depth=2
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.d	$t2, $sp, 48                    # 8-byte Folded Spill
	move	$a7, $zero
.LBB0_80:                               # %if.end217.sink.split.i
                                        #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$s5, $a7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a7, $s5
	move	$a0, $zero
	ori	$t1, $zero, 1
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_157
.LBB0_81:                               # %while.body.i.preheader.i44
                                        #   in Loop: Header=BB0_74 Depth=2
	bnez	$t4, .LBB0_83
# %bb.82:                               # %if.then7.i.i57
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	addi.w	$a4, $a4, 2
	or	$a0, $a1, $a0
	or	$s5, $a0, $s5
	ori	$t4, $zero, 16
.LBB0_83:                               # %if.end24.i.i45
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $s5, 1
	bstrpick.d	$a1, $s5, 31, 15
	addi.w	$s3, $t4, -1
	bnez	$a1, .LBB0_87
# %bb.84:                               # %if.then190.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a1, $zero, 15
	bltu	$a1, $t4, .LBB0_90
# %bb.85:                               # %if.then190.i
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a1, $s7, $a4
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB0_90
# %bb.86:                               #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	move	$s5, $a0
	b	.LBB0_77
.LBB0_87:                               # %if.else324.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a3, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $t4, .LBB0_93
# %bb.88:                               # %if.else324.i
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB0_93
# %bb.89:                               # %if.then.i505.i
                                        #   in Loop: Header=BB0_74 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	move	$s5, $a4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a4, $s5
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $zero
	ori	$t1, $zero, 1
	b	.LBB0_193
.LBB0_90:                               # %while.body.i242.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s3, .LBB0_96
# %bb.91:                               # %if.end24.i245.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$t4, $a0, .LBB0_104
# %bb.92:                               # %if.then7.i252.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $s5, 2
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_97
.LBB0_93:                               # %while.body.i476.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s3, .LBB0_100
# %bb.94:                               # %if.end24.i479.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$t4, $a0, .LBB0_107
# %bb.95:                               # %if.then7.i486.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $a3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_101
.LBB0_96:                               # %if.end24.i245.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_97:                               # %if.end24.i245.2.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_125
.LBB0_98:                               # %if.end24.i245.3.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_110
# %bb.99:                               # %if.end24.i245.4.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_126
.LBB0_100:                              # %if.end24.i479.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a3
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_101:                              # %if.end24.i479.2.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_188
.LBB0_102:                              # %if.end24.i479.3.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_111
# %bb.103:                              # %if.end24.i479.4.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_189
.LBB0_104:                              # %if.end24.i245.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 4
	beq	$t4, $a0, .LBB0_112
# %bb.105:                              # %if.end24.i245.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $s5, 3
	ori	$a1, $zero, 3
	bne	$t4, $a1, .LBB0_124
# %bb.106:                              # %if.end24.i245.2.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_113
.LBB0_107:                              # %if.end24.i479.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 4
	beq	$t4, $a0, .LBB0_120
# %bb.108:                              # %if.end24.i479.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a3, 2
	ori	$a1, $zero, 3
	bne	$t4, $a1, .LBB0_187
# %bb.109:                              # %if.end24.i479.2.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_121
.LBB0_110:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	b	.LBB0_114
.LBB0_111:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -2
	b	.LBB0_122
.LBB0_112:                              # %if.then7.i252.3.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $s5, 4
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_113:                              # %if.end24.i245.4.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_114:                              # %if.end24.i245.5.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_117
# %bb.115:                              # %if.end24.i245.5.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_119
# %bb.116:                              # %if.end24.i245.6.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_118
.LBB0_117:                              # %if.then7.i252.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_118:                              # %if.end24.i245.8.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_133
.LBB0_119:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	b	.LBB0_127
.LBB0_120:                              # %if.then7.i486.3.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $a3, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_121:                              # %if.end24.i479.4.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_122:                              # %if.end24.i479.5.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_190
# %bb.123:                              # %if.end24.i479.6.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_192
.LBB0_124:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $t4, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_98
.LBB0_125:                              # %if.then7.i252.5.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_126:                              # %if.end24.i245.6.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_127:                              # %if.end24.i245.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_130
# %bb.128:                              # %if.end24.i245.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_132
# %bb.129:                              # %if.end24.i245.8.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_131
.LBB0_130:                              # %if.then7.i252.9.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_131:                              # %if.end24.i245.10.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_139
.LBB0_132:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_133:                              # %if.end24.i245.9.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_136
# %bb.134:                              # %if.end24.i245.9.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_138
# %bb.135:                              # %if.end24.i245.10.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_137
.LBB0_136:                              # %if.then7.i252.11.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_137:                              # %if.end24.i245.12.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_145
.LBB0_138:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_139:                              # %if.end24.i245.11.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_142
# %bb.140:                              # %if.end24.i245.11.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_144
# %bb.141:                              # %if.end24.i245.12.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_143
.LBB0_142:                              # %if.then7.i252.13.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_143:                              # %if.end24.i245.13.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_147
.LBB0_144:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -2
.LBB0_145:                              # %if.end24.i245.13.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_147
# %bb.146:                              # %if.then7.i252.14.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_147:                              # %if.end24.i245.14.i
                                        #   in Loop: Header=BB0_74 Depth=2
	move	$t1, $zero
	slli.d	$s5, $a0, 1
	addi.w	$s3, $a1, -1
	bstrpick.d	$t2, $a0, 31, 15
	sub.w	$a0, $s7, $a4
	sltui	$a0, $a0, 2
	bstrpick.d	$s5, $s5, 15, 0
	ori	$a1, $zero, 1
	bgeu	$a1, $s3, .LBB0_78
.LBB0_148:                              # %while.body.i281.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s3, .LBB0_151
# %bb.149:                              # %if.end24.i284.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $s3, -1
	slli.d	$a0, $s5, 1
	bnez	$a1, .LBB0_152
# %bb.150:                              # %if.then7.i291.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_152
.LBB0_151:                              # %if.end24.i284.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	addi.w	$a4, $a4, 2
	or	$a0, $a1, $a0
	or	$a0, $a0, $s5
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
.LBB0_152:                              # %if.end24.i284.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$t3, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$s3, $a1, -1
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_156
# %bb.153:                              # %if.then195.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $t3, 15, 1
	ori	$a7, $zero, 3
	slli.d	$s5, $a0, 1
	bltu	$a7, $a1, .LBB0_172
# %bb.154:                              # %if.then195.i
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_172
# %bb.155:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.d	$t2, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_80
.LBB0_156:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	move	$a7, $zero
.LBB0_157:                              # %if.end217.i
                                        #   in Loop: Header=BB0_74 Depth=2
	add.d	$a1, $a7, $a0
	addi.w	$a0, $a1, 2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bgeu	$a0, $a2, .LBB0_265
# %bb.158:                              # %land.lhs.true230.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, 3
	bstrpick.d	$a2, $s4, 31, 0
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a3, $a5, $a2
	bltu	$t0, $a3, .LBB0_265
# %bb.159:                              # %land.lhs.true279.i
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a4, $s4, $t2
	bstrpick.d	$a3, $a4, 31, 0
	add.d	$a5, $a5, $a3
	bltu	$t0, $a5, .LBB0_265
# %bb.160:                              # %while.body309.i.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a5, $zero, 64
	bgeu	$a1, $a5, .LBB0_162
# %bb.161:                              #   in Loop: Header=BB0_74 Depth=2
	move	$a0, $a1
	move	$a2, $s4
	move	$t4, $s3
	b	.LBB0_170
.LBB0_162:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_74 Depth=2
	nor	$a5, $s4, $zero
	addi.w	$a5, $a5, 0
	move	$t4, $s3
	bltu	$a5, $a0, .LBB0_169
# %bb.163:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_74 Depth=2
	nor	$a4, $a4, $zero
	bltu	$a4, $a0, .LBB0_169
# %bb.164:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.d	$a0, $a2, $a3
	ori	$a2, $zero, 64
	bltu	$a0, $a2, .LBB0_169
# %bb.165:                              # %vector.ph
                                        #   in Loop: Header=BB0_74 Depth=2
	move	$a3, $a1
	bstrins.d	$a3, $zero, 5, 0
	andi	$a0, $a1, 63
	add.w	$a2, $s4, $a3
	sub.w	$a4, $zero, $t2
	move	$a5, $a3
.LBB0_166:                              # %vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a4, $s4
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a7, $s6, $a6
	xvldx	$xr0, $s6, $a6
	xvld	$xr1, $a7, 32
	bstrpick.d	$a6, $s4, 31, 0
	add.d	$a7, $s6, $a6
	xvstx	$xr0, $s6, $a6
	xvst	$xr1, $a7, 32
	addi.w	$a5, $a5, -64
	addi.w	$s4, $s4, 64
	bnez	$a5, .LBB0_166
# %bb.167:                              # %middle.block
                                        #   in Loop: Header=BB0_74 Depth=2
	bne	$a1, $a3, .LBB0_170
# %bb.168:                              #   in Loop: Header=BB0_74 Depth=2
	move	$s4, $a2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_194
.LBB0_169:                              #   in Loop: Header=BB0_74 Depth=2
	move	$a0, $a1
	move	$a2, $s4
.LBB0_170:                              # %while.body309.i.preheader598
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a1, $zero, $t2
	move	$s4, $a2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
.LBB0_171:                              # %while.body309.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a1, $s4
	bstrpick.d	$a2, $a2, 31, 0
	ldx.b	$a2, $s6, $a2
	addi.w	$a0, $a0, -1
	bstrpick.d	$a3, $s4, 31, 0
	stx.b	$a2, $s6, $a3
	addi.w	$s4, $s4, 1
	bnez	$a0, .LBB0_171
	b	.LBB0_194
.LBB0_172:                              # %while.body.i320.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s3, .LBB0_175
# %bb.173:                              # %if.end24.i323.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_177
# %bb.174:                              # %if.then7.i330.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $s5, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_176
.LBB0_175:                              # %if.end24.i323.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s5
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_176:                              # %if.end24.i323.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_179
.LBB0_177:                              # %if.end24.i323.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -3
	slli.d	$a0, $s5, 2
	bnez	$a1, .LBB0_179
# %bb.178:                              # %if.then7.i330.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_179:                              # %if.end24.i323.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$t3, $a0, 1
	addi.w	$s3, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a7, $zero, 3
	ori	$a2, $zero, 7
	bne	$a0, $a2, .LBB0_183
# %bb.180:                              # %if.then199.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $t3, 15, 1
	slli.d	$s5, $a0, 1
	ori	$a0, $zero, 5
	st.d	$t2, $sp, 48                    # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB0_184
# %bb.181:                              # %if.then199.i
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a7, $zero, 10
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_184
# %bb.182:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_80
.LBB0_183:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	b	.LBB0_157
.LBB0_184:                              # %while.body.i359.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	move	$a3, $s5
	move	$a5, $t1
	beqz	$s3, .LBB0_196
# %bb.185:                              # %if.end24.i362.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_199
# %bb.186:                              # %if.then7.i369.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $a3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_197
.LBB0_187:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $t4, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_102
.LBB0_188:                              # %if.then7.i486.5.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_189:                              # %if.end24.i479.5.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_190:                              # %if.end24.i479.6.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_192
# %bb.191:                              # %if.then7.i486.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_192:                              # %if.end24.i479.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	move	$t1, $zero
	slli.d	$t3, $a0, 1
	addi.w	$s3, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
.LBB0_193:                              # %getbits.exit507.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a1, $s4, 31, 0
	stx.b	$a0, $s6, $a1
	addi.w	$s4, $s4, 1
	move	$t4, $s3
.LBB0_194:                              # %if.end333.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bnez	$t1, .LBB0_267
# %bb.195:                              # %if.end333.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bltu	$s4, $a0, .LBB0_74
	b	.LBB0_267
.LBB0_196:                              # %if.end24.i362.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a3
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_197:                              # %if.end24.i362.2.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_205
.LBB0_198:                              # %if.then7.i369.4.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_205
.LBB0_199:                              # %if.end24.i362.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_202
# %bb.200:                              # %if.end24.i362.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a3, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_204
# %bb.201:                              # %if.end24.i362.2.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_203
.LBB0_202:                              # %if.then7.i369.3.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $a3, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_203:                              # %if.end24.i362.3.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	b	.LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	beqz	$a1, .LBB0_198
.LBB0_205:                              # %if.end24.i362.4.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$t3, $a0, 1
	addi.w	$s3, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a7, $zero, 10
	ori	$a2, $zero, 31
	bne	$a0, $a2, .LBB0_259
# %bb.206:                              # %if.then203.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $t3, 15, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 8
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_209
# %bb.207:                              # %if.then203.i
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_209
# %bb.208:                              #   in Loop: Header=BB0_74 Depth=2
	ori	$a7, $zero, 41
	b	.LBB0_80
.LBB0_209:                              # %while.body.i398.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s3, .LBB0_212
# %bb.210:                              # %if.end24.i401.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_216
# %bb.211:                              # %if.then7.i408.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_213
.LBB0_212:                              # %if.end24.i401.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_213:                              # %if.end24.i401.2.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_225
.LBB0_214:                              # %if.end24.i401.3.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_219
# %bb.215:                              # %if.end24.i401.4.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_226
.LBB0_216:                              # %if.end24.i401.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_220
# %bb.217:                              # %if.end24.i401.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_224
# %bb.218:                              # %if.end24.i401.2.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_221
.LBB0_219:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -2
	b	.LBB0_222
.LBB0_220:                              # %if.then7.i408.3.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_221:                              # %if.end24.i401.4.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_222:                              # %if.end24.i401.5.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_227
# %bb.223:                              # %if.end24.i401.6.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_229
.LBB0_224:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_214
.LBB0_225:                              # %if.then7.i408.5.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_226:                              # %if.end24.i401.5.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_227:                              # %if.end24.i401.6.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_229
# %bb.228:                              # %if.then7.i408.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_229:                              # %if.end24.i401.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$t3, $a0, 1
	addi.w	$s3, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_233
# %bb.230:                              # %while.cond208.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $t3, 15, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_234
# %bb.231:                              # %while.cond208.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sub.w	$a0, $s7, $a0
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB0_234
# %bb.232:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ori	$a7, $zero, 296
	b	.LBB0_80
.LBB0_233:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	move	$t1, $a5
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	ori	$a7, $zero, 41
	b	.LBB0_157
.LBB0_234:                              # %while.body.i437.preheader.i.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a7, $zero, 296
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
.LBB0_235:                              # %while.body.i437.preheader.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 1
	beq	$s3, $a0, .LBB0_238
# %bb.236:                              # %while.body.i437.preheader.i
                                        #   in Loop: Header=BB0_235 Depth=3
	bnez	$s3, .LBB0_242
# %bb.237:                              # %if.end24.i440.thread.i
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_239
.LBB0_238:                              # %if.then7.i447.1.i
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_239:                              # %if.end24.i440.2.i.thread
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_251
.LBB0_240:                              # %if.end24.i440.3.i
                                        #   in Loop: Header=BB0_235 Depth=3
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_245
# %bb.241:                              # %if.end24.i440.4.thread.i
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_252
.LBB0_242:                              # %if.end24.i440.1.i
                                        #   in Loop: Header=BB0_235 Depth=3
	ori	$a0, $zero, 3
	beq	$s3, $a0, .LBB0_246
# %bb.243:                              # %if.end24.i440.1.i
                                        #   in Loop: Header=BB0_235 Depth=3
	move	$a2, $s3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ori	$a1, $zero, 2
	bne	$s3, $a1, .LBB0_250
# %bb.244:                              # %if.end24.i440.2.thread.i
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_247
.LBB0_245:                              #   in Loop: Header=BB0_235 Depth=3
	addi.d	$a1, $a1, -2
	b	.LBB0_248
.LBB0_246:                              # %if.then7.i447.3.i
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_247:                              # %if.end24.i440.4.i.thread
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_248:                              # %if.end24.i440.5.i
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_253
# %bb.249:                              # %if.end24.i440.6.thread.i
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_255
.LBB0_250:                              #   in Loop: Header=BB0_235 Depth=3
	addi.w	$a1, $a2, -2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_240
.LBB0_251:                              # %if.then7.i447.5.i
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_252:                              # %if.end24.i440.5.thread.i
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_253:                              # %if.end24.i440.6.i
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_255
# %bb.254:                              # %if.then7.i447.7.i
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_255:                              # %if.end24.i440.7.i
                                        #   in Loop: Header=BB0_235 Depth=3
	slli.d	$t3, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$s3, $a1, -1
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_258
# %bb.256:                              # %while.body212.i
                                        #   in Loop: Header=BB0_235 Depth=3
	addi.d	$a7, $a7, 255
	bstrpick.d	$a0, $t3, 15, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_235
# %bb.257:                              # %while.body212.i
                                        #   in Loop: Header=BB0_235 Depth=3
	sub.w	$a0, $s7, $a4
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB0_235
	b	.LBB0_80
.LBB0_258:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
.LBB0_259:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	move	$t1, $a5
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_157
.LBB0_260:                              #   in Loop: Header=BB0_13 Depth=1
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$s6, $s4
	move	$s4, $s7
.LBB0_261:                              # %if.end343.sink.split.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a1, $s4, 0
	ori	$a0, $zero, 3
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB0_270
.LBB0_262:                              # %if.then347.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ori	$s8, $zero, 299
	b	.LBB0_13
.LBB0_263:                              # %if.then142.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_264:                              # %if.then171.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ori	$s8, $zero, 299
	b	.LBB0_13
.LBB0_265:                              # %while.end334.thread.i
                                        #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_268
.LBB0_266:                              # %if.end343.thread.i
                                        #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_262
.LBB0_267:                              # %while.end334.i
                                        #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$s3, $t1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	b	.LBB0_261
.LBB0_269:                              #   in Loop: Header=BB0_13 Depth=1
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a1, $s4, 0
	ori	$a0, $zero, 3
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB0_262
.LBB0_270:                              # %if.end349.i
                                        #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_344
# %bb.271:                              # %if.then351.i
                                        #   in Loop: Header=BB0_13 Depth=1
	bstrpick.d	$a0, $s4, 31, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_634
# %bb.272:                              # %if.end360.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$s7, $a0
	ld.w	$s3, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	beqz	$s3, .LBB0_336
# %bb.273:                              # %land.rhs374.lr.ph.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$t1, $zero
	addi.w	$a0, $s4, -4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a0, $s4, -8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s3, $zero, 4
	move	$a2, $s7
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	move	$a3, $s4
	b	.LBB0_276
.LBB0_274:                              #   in Loop: Header=BB0_276 Depth=2
	move	$a5, $t1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
.LBB0_275:                              # %sw.epilog.i
                                        #   in Loop: Header=BB0_276 Depth=2
	move	$a2, $a4
	move	$t1, $a5
	move	$s3, $s7
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_343
.LBB0_276:                              # %land.rhs374.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_295 Depth 3
                                        #       Child Loop BB0_303 Depth 3
                                        #       Child Loop BB0_307 Depth 3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bgeu	$s3, $a0, .LBB0_337
# %bb.277:                              # %while.body380.i
                                        #   in Loop: Header=BB0_276 Depth=2
	bstrpick.d	$a0, $s3, 31, 0
	ldx.bu	$s5, $s6, $a0
	addi.d	$a0, $s5, -5
	ori	$a1, $zero, 122
	bltu	$a1, $a0, .LBB0_352
# %bb.278:                              # %while.body380.i
                                        #   in Loop: Header=BB0_276 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	addi.w	$s4, $s3, 1
	jr	$a0
.LBB0_279:                              # %sw.bb682.i
                                        #   in Loop: Header=BB0_276 Depth=2
	addi.w	$a0, $t1, 4
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_281
# %bb.280:                              #   in Loop: Header=BB0_276 Depth=2
	move	$s7, $a3
	move	$a4, $a2
	b	.LBB0_282
.LBB0_281:                              # %if.then688.i
                                        #   in Loop: Header=BB0_276 Depth=2
	addi.w	$a3, $a3, 512
	move	$s7, $a3
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s3, $t1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s3
	move	$a4, $a0
	beqz	$a0, .LBB0_342
.LBB0_282:                              # %if.end702.i
                                        #   in Loop: Header=BB0_276 Depth=2
	pcalau12i	$a0, %pc_hi20(.L__const.ea06.opers)
	addi.d	$a0, $a0, %pc_lo12(.L__const.ea06.opers)
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a3, $a0, -512
	bstrpick.d	$a0, $t1, 31, 0
	add.d	$a0, $a4, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a2, $a1, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 4
	move	$s3, $t1
	move	$s5, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	move	$a4, $s5
	add.w	$a5, $a0, $s3
.LBB0_283:                              # %sw.epilog.i
                                        #   in Loop: Header=BB0_276 Depth=2
	move	$a3, $s7
	move	$s7, $s4
	b	.LBB0_275
.LBB0_284:                              # %sw.bb543.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB0_338
# %bb.285:                              # %if.end552.i
                                        #   in Loop: Header=BB0_276 Depth=2
	bstrpick.d	$a0, $s4, 31, 0
	ldx.wu	$s4, $s6, $a0
	slli.d	$t3, $s4, 1
	addi.w	$t4, $t3, 0
	addi.w	$s7, $s3, 5
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bltu	$a0, $t4, .LBB0_340
# %bb.286:                              # %if.end552.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a0, $a0, $t3
	bgeu	$s7, $a0, .LBB0_340
# %bb.287:                              # %if.end576.i
                                        #   in Loop: Header=BB0_276 Depth=2
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	add.d	$a0, $t1, $s4
	addi.w	$a0, $a0, 3
	addi.w	$a1, $a3, 0
	st.d	$t3, $sp, 56                    # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB0_289
# %bb.288:                              #   in Loop: Header=BB0_276 Depth=2
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	move	$a0, $a2
	b	.LBB0_290
.LBB0_289:                              # %if.then583.i
                                        #   in Loop: Header=BB0_276 Depth=2
	add.d	$a0, $a3, $s4
	addi.w	$a0, $a0, 512
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $a2
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$s7, $t4
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t4, $s7
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_342
.LBB0_290:                              # %if.end598.i
                                        #   in Loop: Header=BB0_276 Depth=2
	addi.d	$a2, $s5, -48
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a2
	andi	$a1, $a1, 19
	bnez	$a1, .LBB0_292
# %bb.291:                              # %if.then604.i
                                        #   in Loop: Header=BB0_276 Depth=2
	pcalau12i	$a1, %pc_hi20(.L__const.ea06.prefixes)
	addi.d	$a1, $a1, %pc_lo12(.L__const.ea06.prefixes)
	ldx.b	$a3, $a1, $a2
	bstrpick.d	$a1, $t1, 31, 0
	addi.w	$t1, $t1, 1
	stx.b	$a3, $a0, $a1
.LBB0_292:                              # %if.end613.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	beqz	$s4, .LBB0_310
# %bb.293:                              # %for.cond.preheader.i
                                        #   in Loop: Header=BB0_276 Depth=2
	bstrpick.d	$a1, $s7, 31, 0
	beqz	$t4, .LBB0_308
# %bb.294:                              # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_276 Depth=2
	move	$a2, $zero
	srli.d	$a3, $s4, 8
	bstrpick.d	$t2, $t3, 31, 0
	addi.w	$a4, $s3, 6
.LBB0_295:                              # %for.body.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_276 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a5, $a4, -1
	bstrpick.d	$a5, $a5, 31, 0
	ldx.b	$a6, $s6, $a5
	bstrpick.d	$a7, $a4, 31, 0
	ldx.b	$t0, $s6, $a7
	xor	$a6, $a6, $s4
	stx.b	$a6, $s6, $a5
	xor	$a5, $t0, $a3
	stx.b	$a5, $s6, $a7
	addi.d	$a2, $a2, 2
	addi.w	$a4, $a4, 2
	bltu	$a2, $t2, .LBB0_295
# %bb.296:                              # %if.end.i509.i
                                        #   in Loop: Header=BB0_276 Depth=2
	add.d	$a1, $s6, $a1
	ori	$a2, $zero, 5
	bltu	$t4, $a2, .LBB0_301
# %bb.297:                              # %land.lhs.true.i541.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ld.bu	$a2, $a1, 0
	ori	$a3, $zero, 255
	bne	$a2, $a3, .LBB0_301
# %bb.298:                              # %land.lhs.true4.i543.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 254
	bne	$a2, $a3, .LBB0_301
# %bb.299:                              # %land.lhs.true9.i546.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ld.bu	$a2, $a1, 2
	beqz	$a2, .LBB0_301
# %bb.300:                              # %if.then12.i549.i
                                        #   in Loop: Header=BB0_276 Depth=2
	addi.d	$a2, $a1, 2
	addi.d	$a3, $t3, -2
	bstrpick.d	$t2, $a3, 31, 0
	b	.LBB0_306
.LBB0_301:                              # %for.body.preheader.i511.i
                                        #   in Loop: Header=BB0_276 Depth=2
	move	$a3, $zero
	move	$a2, $zero
	sltui	$a4, $t4, 20
	ori	$a5, $zero, 20
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $t4, $a4
	or	$a4, $a4, $a5
	b	.LBB0_303
.LBB0_302:                              #   in Loop: Header=BB0_303 Depth=3
	move	$a5, $zero
	addi.d	$a3, $a3, 2
	add.d	$a2, $a5, $a2
	bgeu	$a3, $a4, .LBB0_305
.LBB0_303:                              # %for.body.i513.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_276 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a5, $a1, $a3
	beqz	$a5, .LBB0_302
# %bb.304:                              # %land.rhs.i518.i
                                        #   in Loop: Header=BB0_303 Depth=3
	add.d	$a5, $a1, $a3
	ld.bu	$a5, $a5, 1
	sltui	$a5, $a5, 1
	addi.d	$a3, $a3, 2
	add.d	$a2, $a5, $a2
	bltu	$a3, $a4, .LBB0_303
.LBB0_305:                              # %for.end.i526.i
                                        #   in Loop: Header=BB0_276 Depth=2
	slli.w	$a3, $a2, 2
	move	$a2, $a1
	bltu	$a3, $a4, .LBB0_309
.LBB0_306:                              # %for.body36.preheader.i529.i
                                        #   in Loop: Header=BB0_276 Depth=2
	move	$a3, $zero
	move	$a4, $a1
.LBB0_307:                              # %for.body36.i533.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_276 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a5, $a2, $a3
	addi.d	$a6, $a4, 1
	addi.d	$a3, $a3, 2
	st.b	$a5, $a4, 0
	move	$a4, $a6
	bltu	$a3, $t2, .LBB0_307
	b	.LBB0_309
.LBB0_308:                              # %for.end.thread.i
                                        #   in Loop: Header=BB0_276 Depth=2
	add.d	$a1, $s6, $a1
.LBB0_309:                              # %u2a.exit551.i
                                        #   in Loop: Header=BB0_276 Depth=2
	bstrpick.d	$a2, $t1, 31, 0
	add.d	$a0, $a0, $a2
	move	$a2, $s4
	move	$s3, $t1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.w	$t1, $s3, $s4
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.w	$s7, $a0, $s7
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
.LBB0_310:                              # %if.end658.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ori	$a0, $zero, 52
	beq	$s5, $a0, .LBB0_274
# %bb.311:                              # %if.end658.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ori	$a0, $zero, 54
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	bne	$s5, $a0, .LBB0_313
# %bb.312:                              # %if.then662.i
                                        #   in Loop: Header=BB0_276 Depth=2
	bstrpick.d	$a0, $t1, 31, 0
	addi.w	$t1, $t1, 1
	ori	$a2, $zero, 34
	stx.b	$a2, $a4, $a0
.LBB0_313:                              # %if.then671.i
                                        #   in Loop: Header=BB0_276 Depth=2
	addi.w	$a5, $t1, 1
	bstrpick.d	$a0, $t1, 31, 0
	ori	$a1, $zero, 32
	stx.b	$a1, $a4, $a0
	b	.LBB0_275
.LBB0_314:                              # %sw.bb484.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_354
# %bb.315:                              # %sw.bb484.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB0_354
# %bb.316:                              # %if.end496.i
                                        #   in Loop: Header=BB0_276 Depth=2
	move	$s5, $s4
	addi.w	$a0, $t1, 40
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_329
# %bb.317:                              #   in Loop: Header=BB0_276 Depth=2
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	move	$a4, $a2
	b	.LBB0_330
.LBB0_318:                              # %sw.bb427.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_353
# %bb.319:                              # %sw.bb427.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB0_353
# %bb.320:                              # %if.end439.i
                                        #   in Loop: Header=BB0_276 Depth=2
	move	$s5, $s4
	addi.w	$a0, $t1, 20
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_331
# %bb.321:                              #   in Loop: Header=BB0_276 Depth=2
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	move	$a4, $a2
	b	.LBB0_332
.LBB0_322:                              # %sw.bb.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB0_355
# %bb.323:                              # %if.end394.i39
                                        #   in Loop: Header=BB0_276 Depth=2
	move	$s5, $s4
	addi.w	$a0, $t1, 12
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_334
# %bb.324:                              #   in Loop: Header=BB0_276 Depth=2
	move	$s7, $a3
	move	$a4, $a2
	b	.LBB0_335
.LBB0_325:                              # %sw.bb713.i
                                        #   in Loop: Header=BB0_276 Depth=2
	addi.w	$a5, $t1, 1
	addi.w	$a0, $a3, 0
	bgeu	$a5, $a0, .LBB0_327
# %bb.326:                              #   in Loop: Header=BB0_276 Depth=2
	move	$s7, $a3
	move	$a4, $a2
	b	.LBB0_328
.LBB0_327:                              # %if.then721.i
                                        #   in Loop: Header=BB0_276 Depth=2
	addi.w	$a3, $a3, 512
	move	$s7, $a3
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s3, $t1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$s5, $a5
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$a5, $s5
	move	$t1, $s3
	move	$a4, $a0
	beqz	$a0, .LBB0_342
.LBB0_328:                              # %if.end735.i
                                        #   in Loop: Header=BB0_276 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bstrpick.d	$a0, $t1, 31, 0
	ori	$a1, $zero, 10
	stx.b	$a1, $a4, $a0
	b	.LBB0_283
.LBB0_329:                              # %if.then502.i
                                        #   in Loop: Header=BB0_276 Depth=2
	addi.w	$a3, $a3, 512
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s4, $t1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s4
	move	$a4, $a0
	beqz	$a0, .LBB0_342
.LBB0_330:                              # %if.end516.i
                                        #   in Loop: Header=BB0_276 Depth=2
	bstrpick.d	$a0, $s5, 31, 0
	ldx.d	$a3, $s6, $a0
	bstrpick.d	$a0, $t1, 31, 0
	add.d	$s4, $a4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a2, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 39
	move	$a0, $s4
	move	$s5, $t1
	move	$s7, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 38
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 32
	stx.b	$a1, $s7, $a0
	addi.d	$a0, $s5, 39
	bstrpick.d	$a0, $a0, 31, 0
	stx.b	$zero, $s7, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a4, $s7
	add.w	$a5, $s5, $a0
	b	.LBB0_333
.LBB0_331:                              # %if.then445.i
                                        #   in Loop: Header=BB0_276 Depth=2
	addi.w	$a3, $a3, 512
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s4, $t1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s4
	move	$a4, $a0
	beqz	$a0, .LBB0_342
.LBB0_332:                              # %if.end459.i
                                        #   in Loop: Header=BB0_276 Depth=2
	addi.d	$a0, $s3, 5
	bstrpick.d	$a0, $a0, 31, 0
	ldx.w	$a0, $s6, $a0
	bstrpick.d	$a1, $s5, 31, 0
	ldx.w	$a1, $s6, $a1
	slli.d	$a0, $a0, 32
	add.d	$a3, $a0, $a1
	bstrpick.d	$a0, $t1, 31, 0
	add.d	$a0, $a4, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a2, $a1, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 20
	move	$s4, $t1
	move	$s5, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	move	$a4, $s5
	addi.w	$a5, $s4, 19
.LBB0_333:                              # %sw.epilog.i
                                        #   in Loop: Header=BB0_276 Depth=2
	addi.w	$s7, $s3, 9
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_275
.LBB0_334:                              # %if.then400.i
                                        #   in Loop: Header=BB0_276 Depth=2
	addi.w	$a3, $a3, 512
	move	$s7, $a3
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s4, $t1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s4
	move	$a4, $a0
	beqz	$a0, .LBB0_342
.LBB0_335:                              # %if.end413.i
                                        #   in Loop: Header=BB0_276 Depth=2
	bstrpick.d	$a0, $s5, 31, 0
	ldx.w	$a3, $s6, $a0
	bstrpick.d	$a0, $t1, 31, 0
	add.d	$a0, $a4, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a2, $a1, %pc_lo12(.L.str.55)
	ori	$a1, $zero, 12
	move	$s4, $t1
	move	$s5, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	move	$a4, $s5
	addi.w	$a5, $s4, 11
	addi.w	$a0, $s3, 5
	move	$a3, $s7
	move	$s7, $a0
	b	.LBB0_275
.LBB0_336:                              #   in Loop: Header=BB0_13 Depth=1
	move	$a5, $zero
	move	$a4, $s7
	b	.LBB0_343
.LBB0_337:                              #   in Loop: Header=BB0_13 Depth=1
	move	$a5, $t1
	move	$a4, $a2
	b	.LBB0_343
.LBB0_338:                              # %if.then550.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
.LBB0_339:                              # %if.then745.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$s3, $t1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_341
.LBB0_340:                              # %if.then570.i
                                        #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a3, $a0, $s7
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	move	$a1, $t4
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	move	$s3, $t1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_341:                              # %if.then745.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$t1, $s3
.LBB0_342:                              # %if.then745.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	move	$s4, $t1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a5, $s4
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
.LBB0_343:                              # %if.end746.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s6
	move	$s6, $a4
	move	$s4, $a5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
.LBB0_344:                              # %if.end752.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 208
	ori	$a1, $zero, 1023
	move	$a3, $fp
	move	$a4, $s7
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 1231
	addi.d	$a0, $sp, 208
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bge	$s8, $a0, .LBB0_626
# %bb.345:                              # %if.end762.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$s3, $a0
	addi.w	$s4, $s4, 0
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_627
# %bb.346:                              # %if.end771.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a3
	pcalau12i	$a2, %pc_hi20(.L.str.67)
	addi.d	$a2, $a2, %pc_lo12(.L.str.67)
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	ori	$s8, $zero, 299
	beqz	$a0, .LBB0_348
# %bb.347:                              # %if.then773.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	addi.d	$a2, $sp, 208
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_349
.LBB0_348:                              # %if.else777.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_349:                              # %if.end781.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 0
	ori	$a1, $zero, 1
	beq	$s4, $a1, .LBB0_624
# %bb.350:                              # %if.end794.i
                                        #   in Loop: Header=BB0_13 Depth=1
	bnez	$a0, .LBB0_13
# %bb.351:                              # %if.then797.i
                                        #   in Loop: Header=BB0_13 Depth=1
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	b	.LBB0_13
.LBB0_352:                              # %sw.default.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	move	$a1, $s5
	move	$s3, $t1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_341
.LBB0_353:                              # %if.then437.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	b	.LBB0_339
.LBB0_354:                              # %if.then494.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	b	.LBB0_339
.LBB0_355:                              # %if.then392.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	b	.LBB0_339
.LBB0_356:                              # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
.LBB0_357:                              # %sw.epilog
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_358:                              # %sw.epilog
	move	$a0, $zero
.LBB0_359:                              # %sw.epilog
	move	$s0, $a0
	ld.bu	$a0, $s6, 0
	bnez	$a0, .LBB0_361
# %bb.360:                              # %if.then16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB0_361:                              # %cleanup.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB0_362:                              # %cleanup
	ld.d	$s8, $sp, 1832                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1840                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1848                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1856                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1864                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1872                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1880                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1888                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1896                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1904                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1912                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1920
	ret
.LBB0_363:                              # %if.then87.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
.LBB0_364:                              # %while.cond.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_406 Depth 2
                                        #       Child Loop BB0_561 Depth 3
                                        #       Child Loop BB0_507 Depth 3
                                        #       Child Loop BB0_501 Depth 3
                                        #     Child Loop BB0_600 Depth 2
                                        #     Child Loop BB0_605 Depth 2
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_366
# %bb.365:                              # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.w	$a1, $a0, 4
	addi.w	$a0, $a1, -1
	bltu	$a0, $s7, .LBB0_620
.LBB0_366:                              # %while.body.i
                                        #   in Loop: Header=BB0_364 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_358
# %bb.367:                              # %if.end13.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.w	$a0, $sp, 1232
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_619
# %bb.368:                              # %if.end18.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.w	$a0, $sp, 1236
	bltz	$a0, .LBB0_358
# %bb.369:                              # %if.end23.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	xor	$s3, $a0, $a1
	ori	$a0, $zero, 299
	bltu	$a0, $s3, .LBB0_373
# %bb.370:                              # %if.end23.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB0_373
# %bb.371:                              # %if.then29.i
                                        #   in Loop: Header=BB0_364 Depth=1
	addi.d	$a1, $sp, 1232
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_358
# %bb.372:                              # %if.end34.i
                                        #   in Loop: Header=BB0_364 Depth=1
	stx.b	$zero, $s3, $s5
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.w	$a2, $s3, $a0
	addi.d	$a0, $sp, 1232
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MT_decrypt)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 1232
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_374
.LBB0_373:                              # %if.else.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB0_374:                              # %if.end40.i
                                        #   in Loop: Header=BB0_364 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_358
# %bb.375:                              # %if.end45.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.w	$a0, $sp, 1232
	bltz	$a0, .LBB0_358
# %bb.376:                              # %if.end51.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	xor	$s3, $a0, $a1
	ori	$a0, $zero, 299
	bltu	$a0, $s3, .LBB0_380
# %bb.377:                              # %if.end51.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB0_380
# %bb.378:                              # %if.then58.i
                                        #   in Loop: Header=BB0_364 Depth=1
	addi.d	$a1, $sp, 1232
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_358
# %bb.379:                              # %if.end63.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.w	$a2, $s3, $a0
	addi.d	$a0, $sp, 1232
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MT_decrypt)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s3, $s5
	addi.d	$a1, $sp, 1232
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_381
.LBB0_380:                              # %if.else67.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB0_381:                              # %if.end70.i
                                        #   in Loop: Header=BB0_364 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB0_358
# %bb.382:                              # %if.end75.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.w	$s3, $sp, 1233
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bge	$a0, $s3, .LBB0_616
# %bb.383:                              # %if.end83.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.bu	$s2, $sp, 1232
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$s3, $s4, .LBB0_363
# %bb.384:                              # %if.end88.i
                                        #   in Loop: Header=BB0_364 Depth=1
	xor	$s8, $s3, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1237
	xor	$a1, $a0, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1241
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	xor	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_388
# %bb.385:                              # %land.lhs.true98.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_388
# %bb.386:                              # %land.lhs.true101.i
                                        #   in Loop: Header=BB0_364 Depth=1
	bgeu	$a2, $s8, .LBB0_388
# %bb.387:                              # %if.then108.i
                                        #   in Loop: Header=BB0_364 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB0_397
.LBB0_388:                              # %if.end115.i
                                        #   in Loop: Header=BB0_364 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.w	$a0, $zero, -114
	beqz	$s7, .LBB0_359
# %bb.389:                              # %if.end121.i
                                        #   in Loop: Header=BB0_364 Depth=1
	move	$s5, $a0
	move	$a0, $s1
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_622
# %bb.390:                              # %if.end128.i
                                        #   in Loop: Header=BB0_364 Depth=1
	move	$a0, $s7
	move	$a1, $s8
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MT_decrypt)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB0_398
# %bb.391:                              # %if.then134.i
                                        #   in Loop: Header=BB0_364 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_396
# %bb.392:                              # %if.end139.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.w	$a0, $s7, 4
	revb.2w	$a1, $a0
	sltui	$a2, $a0, 1
	ld.d	$a3, $s0, 32
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s8, $a2
	or	$a1, $a2, $a1
	bstrpick.d	$a0, $a1, 31, 0
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	beqz	$a3, .LBB0_399
# %bb.393:                              # %land.lhs.true156.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.d	$a2, $a3, 24
	beqz	$a2, .LBB0_399
# %bb.394:                              # %land.lhs.true156.i
                                        #   in Loop: Header=BB0_364 Depth=1
	bgeu	$a2, $a0, .LBB0_399
# %bb.395:                              # %if.then167.i
                                        #   in Loop: Header=BB0_364 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s5, $sp, 1232
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	ori	$s8, $zero, 8
	b	.LBB0_364
.LBB0_396:                              # %if.then138.i
                                        #   in Loop: Header=BB0_364 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s5, $sp, 1232
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
.LBB0_397:                              # %while.cond.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ori	$s8, $zero, 8
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_364
.LBB0_398:                              #   in Loop: Header=BB0_364 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s3, $s7
	b	.LBB0_591
.LBB0_399:                              # %if.end171.i
                                        #   in Loop: Header=BB0_364 Depth=1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_636
# %bb.400:                              # %if.end177.i
                                        #   in Loop: Header=BB0_364 Depth=1
	move	$s3, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.w	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	beqz	$s2, .LBB0_586
# %bb.401:                              # %while.body186.i.preheader
                                        #   in Loop: Header=BB0_364 Depth=1
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$s2, $zero
	move	$a0, $zero
	ori	$a4, $zero, 8
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_406
.LBB0_402:                              # %if.else323.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	move	$s5, $s2
	move	$s2, $a4
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s4, $zero
.LBB0_403:                              # %if.then.i384.i
                                        #   in Loop: Header=BB0_406 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$t0, $zero, 1
	move	$a4, $s2
	move	$s2, $s5
	move	$a2, $s4
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
.LBB0_404:                              # %getbits.exit386.i
                                        #   in Loop: Header=BB0_406 Depth=2
	bstrpick.d	$a1, $s6, 31, 0
	stx.b	$a0, $s3, $a1
	addi.w	$s6, $s6, 1
	move	$a0, $a2
	bnez	$t0, .LBB0_587
.LBB0_405:                              # %if.end332.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bgeu	$s6, $a1, .LBB0_587
.LBB0_406:                              # %while.body186.i
                                        #   Parent Loop BB0_364 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_561 Depth 3
                                        #       Child Loop BB0_507 Depth 3
                                        #       Child Loop BB0_501 Depth 3
	bstrpick.d	$s2, $s2, 15, 0
	bnez	$a0, .LBB0_408
# %bb.407:                              # %while.body186.i
                                        #   in Loop: Header=BB0_406 Depth=2
	sub.w	$a1, $s8, $a4
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB0_402
.LBB0_408:                              # %while.body.i.preheader.i
                                        #   in Loop: Header=BB0_406 Depth=2
	bnez	$a0, .LBB0_410
# %bb.409:                              # %if.then7.i.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	addi.w	$a4, $a4, 2
	or	$a0, $a1, $a0
	or	$s2, $a0, $s2
	ori	$a0, $zero, 16
.LBB0_410:                              # %if.end24.i.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$s5, $s2, 1
	bstrpick.d	$a2, $s2, 31, 15
	addi.w	$s4, $a0, -1
	bnez	$a2, .LBB0_414
# %bb.411:                              # %if.else323.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a2, $zero, 8
	bltu	$a2, $a0, .LBB0_417
# %bb.412:                              # %if.else323.i
                                        #   in Loop: Header=BB0_406 Depth=2
	sub.w	$a2, $s8, $a4
	ori	$a3, $zero, 2
	bgeu	$a2, $a3, .LBB0_417
# %bb.413:                              #   in Loop: Header=BB0_406 Depth=2
	move	$s2, $a4
	b	.LBB0_403
.LBB0_414:                              # %if.then189.i
                                        #   in Loop: Header=BB0_406 Depth=2
	bstrpick.d	$a1, $s5, 15, 1
	slli.d	$a3, $a1, 1
	ori	$a1, $zero, 15
	bltu	$a1, $a0, .LBB0_420
# %bb.415:                              # %if.then189.i
                                        #   in Loop: Header=BB0_406 Depth=2
	sub.w	$a1, $s8, $a4
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB0_420
# %bb.416:                              # %if.then.i150.i
                                        #   in Loop: Header=BB0_406 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$s2, $a4
	move	$s5, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a3, $s4
	move	$a2, $s5
	move	$a4, $s2
	move	$t3, $zero
	ori	$a0, $zero, 1
	ori	$t0, $zero, 1
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_481
.LBB0_417:                              # %while.body.i355.preheader.i
                                        #   in Loop: Header=BB0_406 Depth=2
	beqz	$s4, .LBB0_423
# %bb.418:                              # %if.end24.i358.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_431
# %bb.419:                              # %if.then7.i365.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s2, 2
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a1, $a0, $a1
	ori	$a0, $zero, 15
	b	.LBB0_424
.LBB0_420:                              # %while.body.i121.preheader.i
                                        #   in Loop: Header=BB0_406 Depth=2
	beqz	$s4, .LBB0_427
# %bb.421:                              # %if.end24.i124.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_434
# %bb.422:                              # %if.then7.i131.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $a3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a2, $zero, 15
	b	.LBB0_428
.LBB0_423:                              # %if.end24.i358.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $a2, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $s5
	slli.d	$a1, $a0, 1
	ori	$a0, $zero, 14
.LBB0_424:                              # %if.end24.i358.2.i.thread
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a4, $a4, 2
	slli.d	$a1, $a1, 1
	ori	$a2, $zero, 3
	beq	$a0, $a2, .LBB0_452
.LBB0_425:                              # %if.end24.i358.3.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$a1, $a1, 2
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_437
# %bb.426:                              # %if.end24.i358.4.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $a2, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 14
	b	.LBB0_453
.LBB0_427:                              # %if.end24.i124.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a3
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 14
.LBB0_428:                              # %if.end24.i124.2.i.thread
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a4, $a4, 2
	slli.d	$a1, $a0, 1
	ori	$a0, $zero, 3
	beq	$a2, $a0, .LBB0_458
.LBB0_429:                              # %if.end24.i124.3.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$a0, $a1, 2
	ori	$a1, $zero, 2
	bne	$a2, $a1, .LBB0_438
# %bb.430:                              # %if.end24.i124.4.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_459
.LBB0_431:                              # %if.end24.i358.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a1, $zero, 4
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_439
# %bb.432:                              # %if.end24.i358.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$a1, $s2, 3
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_451
# %bb.433:                              # %if.end24.i358.2.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $a2, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $a0, 1
	ori	$a0, $zero, 14
	b	.LBB0_440
.LBB0_434:                              # %if.end24.i124.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a1, $zero, 4
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_443
# %bb.435:                              # %if.end24.i124.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$a1, $a3, 2
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_457
# %bb.436:                              # %if.end24.i124.2.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $a2, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_444
.LBB0_437:                              #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a0, -2
	b	.LBB0_441
.LBB0_438:                              #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a1, $a2, -2
	b	.LBB0_445
.LBB0_439:                              # %if.then7.i365.3.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s2, 4
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a1, $a0, $a1
	ori	$a0, $zero, 15
.LBB0_440:                              # %if.end24.i358.4.i.thread
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a1, $a1, 1
.LBB0_441:                              # %if.end24.i358.5.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a2, $a0, -2
	slli.d	$a0, $a1, 2
	bnez	$a2, .LBB0_454
# %bb.442:                              # %if.end24.i358.6.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_456
.LBB0_443:                              # %if.then7.i131.3.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $a3, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_444:                              # %if.end24.i124.4.i.thread
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_445:                              # %if.end24.i124.5.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_448
# %bb.446:                              # %if.end24.i124.5.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_450
# %bb.447:                              # %if.end24.i124.6.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_449
.LBB0_448:                              # %if.then7.i131.7.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_449:                              # %if.end24.i124.8.i.thread
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_466
.LBB0_450:                              #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a1, $a1, -2
	b	.LBB0_460
.LBB0_451:                              #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a0, $a0, -3
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_425
.LBB0_452:                              # %if.then7.i365.5.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ori	$a2, $zero, 15
.LBB0_453:                              # %if.end24.i358.5.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_454:                              # %if.end24.i358.6.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a1, $a2, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_456
# %bb.455:                              # %if.then7.i365.7.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_456:                              # %if.end24.i358.7.i
                                        #   in Loop: Header=BB0_406 Depth=2
	move	$t0, $zero
	slli.d	$s2, $a0, 1
	addi.w	$a2, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	b	.LBB0_404
.LBB0_457:                              #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a2, $a0, -3
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB0_429
.LBB0_458:                              # %if.then7.i131.5.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_459:                              # %if.end24.i124.6.i.thread
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_460:                              # %if.end24.i124.7.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_463
# %bb.461:                              # %if.end24.i124.7.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_465
# %bb.462:                              # %if.end24.i124.8.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_464
.LBB0_463:                              # %if.then7.i131.9.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_464:                              # %if.end24.i124.10.i.thread
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_472
.LBB0_465:                              #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_466:                              # %if.end24.i124.9.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_469
# %bb.467:                              # %if.end24.i124.9.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_471
# %bb.468:                              # %if.end24.i124.10.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_470
.LBB0_469:                              # %if.then7.i131.11.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_470:                              # %if.end24.i124.12.i.thread
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_478
.LBB0_471:                              #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_472:                              # %if.end24.i124.11.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_475
# %bb.473:                              # %if.end24.i124.11.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_477
# %bb.474:                              # %if.end24.i124.12.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_476
.LBB0_475:                              # %if.then7.i131.13.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_476:                              # %if.end24.i124.13.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_480
.LBB0_477:                              #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a1, -2
.LBB0_478:                              # %if.end24.i124.13.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_480
# %bb.479:                              # %if.then7.i131.14.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_480:                              # %if.end24.i124.14.i
                                        #   in Loop: Header=BB0_406 Depth=2
	move	$t0, $zero
	slli.d	$a2, $a0, 1
	addi.w	$a3, $a1, -1
	bstrpick.d	$t3, $a0, 31, 15
	bstrpick.d	$a0, $a2, 15, 1
	slli.d	$a2, $a0, 1
	sub.w	$a0, $s8, $a4
	sltui	$a0, $a0, 2
.LBB0_481:                              # %getbits.exit152.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a1, $zero, 1
	bltu	$a1, $a3, .LBB0_486
# %bb.482:                              # %getbits.exit152.i
                                        #   in Loop: Header=BB0_406 Depth=2
	beqz	$a0, .LBB0_486
# %bb.483:                              #   in Loop: Header=BB0_406 Depth=2
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $a3
	move	$s2, $a2
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
.LBB0_484:                              # %if.end216.sink.split.i
                                        #   in Loop: Header=BB0_406 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$t0, $zero, 1
.LBB0_485:                              # %if.end216.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	b	.LBB0_495
.LBB0_486:                              # %while.body.i160.preheader.i
                                        #   in Loop: Header=BB0_406 Depth=2
	beqz	$a3, .LBB0_489
# %bb.487:                              # %if.end24.i163.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a1, $a3, -1
	slli.d	$a0, $a2, 1
	bnez	$a1, .LBB0_490
# %bb.488:                              # %if.then7.i170.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_490
.LBB0_489:                              # %if.end24.i163.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	addi.w	$a4, $a4, 2
	or	$a0, $a1, $a0
	or	$a0, $a0, $a2
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
.LBB0_490:                              # %if.end24.i163.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$s2, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$s5, $a1, -1
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_494
# %bb.491:                              # %if.then194.i
                                        #   in Loop: Header=BB0_406 Depth=2
	bstrpick.d	$a0, $s2, 15, 1
	ori	$a2, $zero, 3
	slli.d	$s2, $a0, 1
	bltu	$a2, $a1, .LBB0_510
# %bb.492:                              # %if.then194.i
                                        #   in Loop: Header=BB0_406 Depth=2
	sub.w	$a0, $s8, $a4
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_510
# %bb.493:                              #   in Loop: Header=BB0_406 Depth=2
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_484
.LBB0_494:                              #   in Loop: Header=BB0_406 Depth=2
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	move	$a3, $zero
.LBB0_495:                              # %if.end216.i
                                        #   in Loop: Header=BB0_406 Depth=2
	add.d	$a1, $a0, $a3
	addi.w	$a0, $a1, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	bgeu	$a0, $a2, .LBB0_589
# %bb.496:                              # %land.lhs.true229.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a1, $a1, 3
	bstrpick.d	$a2, $s6, 31, 0
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a3, $a5, $a2
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_589
# %bb.497:                              # %land.lhs.true278.i
                                        #   in Loop: Header=BB0_406 Depth=2
	sub.w	$a4, $s6, $t3
	bstrpick.d	$a3, $a4, 31, 0
	add.d	$a5, $a5, $a3
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	bltu	$a6, $a5, .LBB0_589
# %bb.498:                              # %while.body308.i.preheader
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a5, $zero, 64
	bgeu	$a1, $a5, .LBB0_503
.LBB0_499:                              #   in Loop: Header=BB0_406 Depth=2
	move	$a0, $a1
	move	$a2, $s6
.LBB0_500:                              # %while.body308.i.preheader574
                                        #   in Loop: Header=BB0_406 Depth=2
	sub.w	$a1, $zero, $t3
	move	$s6, $a2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
.LBB0_501:                              # %while.body308.i
                                        #   Parent Loop BB0_364 Depth=1
                                        #     Parent Loop BB0_406 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a1, $s6
	bstrpick.d	$a2, $a2, 31, 0
	ldx.b	$a2, $s3, $a2
	addi.w	$a0, $a0, -1
	bstrpick.d	$a3, $s6, 31, 0
	stx.b	$a2, $s3, $a3
	addi.w	$s6, $s6, 1
	bnez	$a0, .LBB0_501
# %bb.502:                              #   in Loop: Header=BB0_406 Depth=2
	move	$a0, $s5
	beqz	$t0, .LBB0_405
	b	.LBB0_587
.LBB0_503:                              # %vector.scevcheck555
                                        #   in Loop: Header=BB0_406 Depth=2
	nor	$a5, $s6, $zero
	addi.w	$a5, $a5, 0
	bltu	$a5, $a0, .LBB0_499
# %bb.504:                              # %vector.scevcheck555
                                        #   in Loop: Header=BB0_406 Depth=2
	nor	$a4, $a4, $zero
	bltu	$a4, $a0, .LBB0_499
# %bb.505:                              # %vector.scevcheck555
                                        #   in Loop: Header=BB0_406 Depth=2
	sub.d	$a0, $a2, $a3
	ori	$a2, $zero, 64
	bltu	$a0, $a2, .LBB0_499
# %bb.506:                              # %vector.ph560
                                        #   in Loop: Header=BB0_406 Depth=2
	move	$a3, $a1
	bstrins.d	$a3, $zero, 5, 0
	andi	$a0, $a1, 63
	add.w	$a2, $s6, $a3
	sub.w	$a4, $zero, $t3
	move	$a5, $a3
.LBB0_507:                              # %vector.body563
                                        #   Parent Loop BB0_364 Depth=1
                                        #     Parent Loop BB0_406 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a4, $s6
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a7, $s3, $a6
	xvldx	$xr0, $s3, $a6
	xvld	$xr1, $a7, 32
	bstrpick.d	$a6, $s6, 31, 0
	add.d	$a7, $s3, $a6
	xvstx	$xr0, $s3, $a6
	xvst	$xr1, $a7, 32
	addi.w	$a5, $a5, -64
	addi.w	$s6, $s6, 64
	bnez	$a5, .LBB0_507
# %bb.508:                              # %middle.block569
                                        #   in Loop: Header=BB0_406 Depth=2
	bne	$a1, $a3, .LBB0_500
# %bb.509:                              #   in Loop: Header=BB0_406 Depth=2
	move	$a0, $s5
	move	$s6, $a2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	beqz	$t0, .LBB0_405
	b	.LBB0_587
.LBB0_510:                              # %while.body.i199.preheader.i
                                        #   in Loop: Header=BB0_406 Depth=2
	beqz	$s5, .LBB0_513
# %bb.511:                              # %if.end24.i202.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_515
# %bb.512:                              # %if.then7.i209.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s2, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_514
.LBB0_513:                              # %if.end24.i202.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s2
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_514:                              # %if.end24.i202.1.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_517
.LBB0_515:                              # %if.end24.i202.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a1, $a1, -3
	slli.d	$a0, $s2, 2
	bnez	$a1, .LBB0_517
# %bb.516:                              # %if.then7.i209.2.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_517:                              # %if.end24.i202.2.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$s2, $a0, 1
	addi.w	$s5, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a3, $zero, 3
	ori	$a2, $zero, 7
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	bne	$a0, $a2, .LBB0_495
# %bb.518:                              # %if.then198.i
                                        #   in Loop: Header=BB0_406 Depth=2
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	move	$a5, $t0
	bstrpick.d	$a0, $s2, 15, 1
	slli.d	$s2, $a0, 1
	ori	$a0, $zero, 5
	bltu	$a0, $a1, .LBB0_520
# %bb.519:                              # %if.then198.i
                                        #   in Loop: Header=BB0_406 Depth=2
	sub.w	$a0, $s8, $a4
	ori	$a2, $zero, 10
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bltu	$a0, $a2, .LBB0_484
.LBB0_520:                              # %while.body.i238.preheader.i
                                        #   in Loop: Header=BB0_406 Depth=2
	move	$a6, $s4
	beqz	$s5, .LBB0_523
# %bb.521:                              # %if.end24.i241.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_526
# %bb.522:                              # %if.then7.i248.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s2, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_524
.LBB0_523:                              # %if.end24.i241.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s2
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_524:                              # %if.end24.i241.2.i.thread
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_532
.LBB0_525:                              # %if.then7.i248.4.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_532
.LBB0_526:                              # %if.end24.i241.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_529
# %bb.527:                              # %if.end24.i241.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$a0, $s2, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_531
# %bb.528:                              # %if.end24.i241.2.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_530
.LBB0_529:                              # %if.then7.i248.3.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s2, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_530:                              # %if.end24.i241.3.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	b	.LBB0_532
.LBB0_531:                              #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a1, -3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	beqz	$a1, .LBB0_525
.LBB0_532:                              # %if.end24.i241.4.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$s2, $a0, 1
	addi.w	$s5, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a2, $zero, 31
	bne	$a0, $a2, .LBB0_536
# %bb.533:                              # %if.then202.i
                                        #   in Loop: Header=BB0_406 Depth=2
	bstrpick.d	$a0, $s2, 15, 1
	slli.d	$s2, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_537
# %bb.534:                              # %if.then202.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	ori	$a2, $zero, 41
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_537
.LBB0_535:                              #   in Loop: Header=BB0_406 Depth=2
	move	$s4, $a6
	b	.LBB0_484
.LBB0_536:                              #   in Loop: Header=BB0_406 Depth=2
	move	$t0, $a5
	move	$s4, $a6
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	ori	$a3, $zero, 10
	b	.LBB0_495
.LBB0_537:                              # %while.body.i277.preheader.i
                                        #   in Loop: Header=BB0_406 Depth=2
	beqz	$s5, .LBB0_540
# %bb.538:                              # %if.end24.i280.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_544
# %bb.539:                              # %if.then7.i287.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s2, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_541
.LBB0_540:                              # %if.end24.i280.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s2
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_541:                              # %if.end24.i280.2.i.thread
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_553
.LBB0_542:                              # %if.end24.i280.3.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_547
# %bb.543:                              # %if.end24.i280.4.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_554
.LBB0_544:                              # %if.end24.i280.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_548
# %bb.545:                              # %if.end24.i280.1.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$a0, $s2, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_552
# %bb.546:                              # %if.end24.i280.2.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_549
.LBB0_547:                              #   in Loop: Header=BB0_406 Depth=2
	addi.d	$a1, $a1, -2
	b	.LBB0_550
.LBB0_548:                              # %if.then7.i287.3.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s2, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_549:                              # %if.end24.i280.4.i.thread
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_550:                              # %if.end24.i280.5.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_555
# %bb.551:                              # %if.end24.i280.6.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_557
.LBB0_552:                              #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a1, $a1, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_542
.LBB0_553:                              # %if.then7.i287.5.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_554:                              # %if.end24.i280.5.thread.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_555:                              # %if.end24.i280.6.i
                                        #   in Loop: Header=BB0_406 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_557
# %bb.556:                              # %if.then7.i287.7.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_557:                              # %if.end24.i280.7.i
                                        #   in Loop: Header=BB0_406 Depth=2
	slli.d	$s2, $a0, 1
	addi.w	$s5, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_584
# %bb.558:                              # %while.cond207.preheader.i
                                        #   in Loop: Header=BB0_406 Depth=2
	bstrpick.d	$a0, $s2, 15, 1
	slli.d	$s2, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_560
# %bb.559:                              # %while.cond207.preheader.i
                                        #   in Loop: Header=BB0_406 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	ori	$a1, $zero, 296
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB0_535
.LBB0_560:                              # %while.body.i316.preheader.i.preheader
                                        #   in Loop: Header=BB0_406 Depth=2
	ori	$a0, $zero, 296
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.LBB0_561:                              # %while.body.i316.preheader.i
                                        #   Parent Loop BB0_364 Depth=1
                                        #     Parent Loop BB0_406 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 1
	beq	$s5, $a0, .LBB0_564
# %bb.562:                              # %while.body.i316.preheader.i
                                        #   in Loop: Header=BB0_561 Depth=3
	bnez	$s5, .LBB0_568
# %bb.563:                              # %if.end24.i319.thread.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s2
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_565
.LBB0_564:                              # %if.then7.i326.1.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s2, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_565:                              # %if.end24.i319.2.i.thread
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_577
.LBB0_566:                              # %if.end24.i319.3.i
                                        #   in Loop: Header=BB0_561 Depth=3
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_571
# %bb.567:                              # %if.end24.i319.4.thread.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_578
.LBB0_568:                              # %if.end24.i319.1.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ori	$a0, $zero, 3
	beq	$s5, $a0, .LBB0_572
# %bb.569:                              # %if.end24.i319.1.i
                                        #   in Loop: Header=BB0_561 Depth=3
	slli.d	$a0, $s2, 2
	ori	$a1, $zero, 2
	bne	$s5, $a1, .LBB0_576
# %bb.570:                              # %if.end24.i319.2.thread.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_573
.LBB0_571:                              #   in Loop: Header=BB0_561 Depth=3
	addi.d	$a1, $a1, -2
	b	.LBB0_574
.LBB0_572:                              # %if.then7.i326.3.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s2, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_573:                              # %if.end24.i319.4.i.thread
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_574:                              # %if.end24.i319.5.i
                                        #   in Loop: Header=BB0_561 Depth=3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_579
# %bb.575:                              # %if.end24.i319.6.thread.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_581
.LBB0_576:                              #   in Loop: Header=BB0_561 Depth=3
	addi.w	$a1, $s5, -2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_566
.LBB0_577:                              # %if.then7.i326.5.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_578:                              # %if.end24.i319.5.thread.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_579:                              # %if.end24.i319.6.i
                                        #   in Loop: Header=BB0_561 Depth=3
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_581
# %bb.580:                              # %if.then7.i326.7.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_581:                              # %if.end24.i319.7.i
                                        #   in Loop: Header=BB0_561 Depth=3
	slli.d	$s2, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$s5, $a1, -1
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_585
# %bb.582:                              # %while.body211.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 255
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s2, 15, 1
	slli.d	$s2, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_561
# %bb.583:                              # %while.body211.i
                                        #   in Loop: Header=BB0_561 Depth=3
	move	$s4, $a6
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB0_561
	b	.LBB0_484
.LBB0_584:                              #   in Loop: Header=BB0_406 Depth=2
	move	$t0, $a5
	move	$s4, $a6
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	ori	$a3, $zero, 41
	b	.LBB0_495
.LBB0_585:                              #   in Loop: Header=BB0_406 Depth=2
	move	$t0, $a5
	move	$s4, $a6
	b	.LBB0_485
.LBB0_586:                              # %if.end342.thread.i
                                        #   in Loop: Header=BB0_364 Depth=1
	move	$s2, $s6
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_607
.LBB0_587:                              # %while.end333.i
                                        #   in Loop: Header=BB0_364 Depth=1
	move	$a0, $s7
	move	$s2, $t0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB0_590
# %bb.588:                              #   in Loop: Header=BB0_364 Depth=1
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_592
.LBB0_589:                              # %while.end333.thread.i
                                        #   in Loop: Header=BB0_364 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_590:                              #   in Loop: Header=BB0_364 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
.LBB0_591:                              # %if.end342.sink.split.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_592:                              # %if.end342.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a6, 0
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB0_603
# %bb.593:                              # %if.end.i388.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ori	$a0, $zero, 5
	bltu	$a2, $a0, .LBB0_598
# %bb.594:                              # %land.lhs.true.i390.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB0_598
# %bb.595:                              # %land.lhs.true4.i.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.bu	$a0, $s3, 1
	ori	$a1, $zero, 254
	bne	$a0, $a1, .LBB0_598
# %bb.596:                              # %land.lhs.true9.i.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.bu	$a0, $s3, 2
	beqz	$a0, .LBB0_598
# %bb.597:                              # %if.then12.i.i
                                        #   in Loop: Header=BB0_364 Depth=1
	addi.d	$a0, $s3, 2
	addi.w	$a6, $a6, -2
	b	.LBB0_604
.LBB0_598:                              # %for.body.preheader.i.i
                                        #   in Loop: Header=BB0_364 Depth=1
	move	$a1, $zero
	move	$a0, $zero
	sltui	$a3, $a2, 20
	ori	$a4, $zero, 20
	masknez	$a4, $a4, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	andi	$a2, $a2, 30
	b	.LBB0_600
.LBB0_599:                              #   in Loop: Header=BB0_600 Depth=2
	move	$a3, $zero
	addi.d	$a1, $a1, 2
	add.d	$a0, $a3, $a0
	bgeu	$a1, $a2, .LBB0_602
.LBB0_600:                              # %for.body.i.i
                                        #   Parent Loop BB0_364 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a3, $s3, $a1
	beqz	$a3, .LBB0_599
# %bb.601:                              # %land.rhs.i.i
                                        #   in Loop: Header=BB0_600 Depth=2
	add.d	$a3, $s3, $a1
	ld.bu	$a3, $a3, 1
	sltui	$a3, $a3, 1
	addi.d	$a1, $a1, 2
	add.d	$a0, $a3, $a0
	bltu	$a1, $a2, .LBB0_600
.LBB0_602:                              # %for.end.i.i
                                        #   in Loop: Header=BB0_364 Depth=1
	slli.w	$a1, $a0, 2
	move	$a0, $s3
	bgeu	$a1, $a2, .LBB0_604
.LBB0_603:                              #   in Loop: Header=BB0_364 Depth=1
	move	$s2, $s6
	b	.LBB0_607
.LBB0_604:                              # %for.body36.preheader.i.i
                                        #   in Loop: Header=BB0_364 Depth=1
	move	$a1, $zero
	bstrpick.d	$a2, $a6, 31, 0
	move	$a3, $s3
.LBB0_605:                              # %for.body36.i.i
                                        #   Parent Loop BB0_364 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a4, $a0, $a1
	addi.d	$a5, $a3, 1
	addi.d	$a1, $a1, 2
	st.b	$a4, $a3, 0
	move	$a3, $a5
	bltu	$a1, $a2, .LBB0_605
# %bb.606:                              # %u2a.exit.loopexit.i
                                        #   in Loop: Header=BB0_364 Depth=1
	move	$s2, $s6
	bstrpick.d	$a6, $a6, 31, 1
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
.LBB0_607:                              # %u2a.exit.i
                                        #   in Loop: Header=BB0_364 Depth=1
	addi.w	$s5, $s5, 1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 208
	ori	$a1, $zero, 1023
	move	$a3, $fp
	move	$s8, $s5
	move	$a4, $s5
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 1231
	addi.d	$a0, $sp, 208
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bge	$a0, $s6, .LBB0_629
# %bb.608:                              # %if.end358.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.w	$s7, $a0, 0
	move	$a0, $s6
	move	$a1, $s3
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_630
# %bb.609:                              # %if.end369.i
                                        #   in Loop: Header=BB0_364 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB0_611
# %bb.610:                              # %if.then372.i
                                        #   in Loop: Header=BB0_364 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	addi.d	$a1, $sp, 208
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_612
.LBB0_611:                              # %if.else374.i
                                        #   in Loop: Header=BB0_364 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_612:                              # %if.end375.i
                                        #   in Loop: Header=BB0_364 Depth=1
	addi.d	$s5, $sp, 1232
	move	$s7, $s8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$s6, $s2
	ld.bu	$a0, $s2, 0
	ori	$s8, $zero, 8
	ori	$a1, $zero, 1
	beq	$s3, $a1, .LBB0_624
# %bb.613:                              # %if.end388.i
                                        #   in Loop: Header=BB0_364 Depth=1
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_615
# %bb.614:                              # %if.then391.i
                                        #   in Loop: Header=BB0_364 Depth=1
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_615:                              # %while.cond.outer.i
                                        #   in Loop: Header=BB0_364 Depth=1
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	b	.LBB0_364
.LBB0_616:                              # %if.then82.i
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB0_357
.LBB0_617:                              # %if.then9.i
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	b	.LBB0_357
.LBB0_618:                              # %while.end801.i
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	b	.LBB0_621
.LBB0_619:                              # %if.then17.i
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_357
.LBB0_620:                              # %while.end395.i
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
.LBB0_621:                              # %sw.epilog
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -102
	b	.LBB0_359
.LBB0_622:                              # %if.then127.i
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_358
.LBB0_623:                              # %if.then132.i
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_358
.LBB0_624:                              # %if.then787.i
	beqz	$a0, .LBB0_632
# %bb.625:
	ori	$a0, $zero, 1
	b	.LBB0_359
.LBB0_626:                              # %if.then760.i
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	addi.d	$a1, $sp, 208
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_628
.LBB0_627:                              # %if.then768.i
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB0_628:                              # %ea06.exit
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	b	.LBB0_359
.LBB0_629:                              # %if.then355.i
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	addi.d	$a1, $sp, 208
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_631
.LBB0_630:                              # %if.then365.i
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB0_631:                              # %ea05.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	move	$s6, $s2
	b	.LBB0_359
.LBB0_632:                              # %if.then384.i
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_359
.LBB0_633:                              # %if.then177.i
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_635
.LBB0_634:                              # %if.then358.i
	move	$a0, $s6
.LBB0_635:                              # %ea06.exit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	b	.LBB0_359
.LBB0_636:                              # %if.then176.i
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	b	.LBB0_359
.Lfunc_end0:
	.size	cli_scanautoit, .Lfunc_end0-cli_scanautoit
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_322-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_318-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_314-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_279-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_352-.LJTI0_0
	.word	.LBB0_325-.LJTI0_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function MT_decrypt
	.type	MT_decrypt,@function
MT_decrypt:                             # @MT_decrypt
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$fp, $sp, 2024                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2016                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -512
	st.w	$a2, $sp, 16
	ori	$a3, $zero, 1
	lu12i.w	$a4, -1
	ori	$a4, $a4, 1604
	lu12i.w	$a5, 442488
	ori	$a5, $a5, 2405
	addi.d	$a6, $sp, 16
	move	$t0, $a2
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t1, $t0, 31, 30
	xor	$t0, $t1, $t0
	mul.d	$t1, $t0, $a5
	add.w	$t0, $t1, $a7
	add.d	$t1, $a3, $t1
	add.d	$t2, $a6, $a4
	stptr.w	$t1, $t2, 2496
	addi.d	$a7, $a7, 1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 1
	bnez	$a4, .LBB1_1
# %bb.2:                                # %for.end
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2512
	add.d	$a4, $sp, $a4
	stptr.w	$a3, $a4, 0
	beqz	$a1, .LBB1_12
# %bb.3:                                # %while.body.lr.ph
	ori	$a3, $zero, 2520
	add.d	$a3, $sp, $a3
	ldptr.d	$t7, $a3, 0
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 2496
	ori	$a5, $zero, 624
	lu12i.w	$a6, 524287
	ori	$t4, $a6, 4094
	xvreplgr2vr.w	$xr0, $t4
	lu12i.w	$a6, -524288
	xvreplgr2vr.w	$xr1, $a6
	xvrepli.w	$xr2, 1
	xvrepli.b	$xr3, -1
	lu12i.w	$a7, -421749
	ori	$a7, $a7, 223
	xvreplgr2vr.w	$xr4, $a7
	ori	$t0, $zero, 896
	ori	$t1, $zero, 2484
	ori	$t2, $zero, 2488
	ori	$t3, $zero, 2492
	vreplgr2vr.w	$vr5, $t4
	vreplgr2vr.w	$vr6, $a6
	lu32i.d	$a6, 0
	vrepli.w	$vr7, 1
	vrepli.b	$vr8, -1
	vreplgr2vr.w	$vr9, $a7
	lu32i.d	$a7, 0
	ori	$t4, $zero, 1584
	lu12i.w	$t5, -404795
	ori	$t5, $t5, 1664
	lu12i.w	$t6, 31744
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_4:                                # %entry.if.end_crit_edge.i
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.w	$t8, $t7, 0
.LBB1_5:                                # %MT_getnext.exit
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a1, $a1, -1
	bstrpick.d	$fp, $t8, 31, 11
	xor	$t8, $fp, $t8
	slli.d	$fp, $t8, 7
	and	$fp, $fp, $t5
	xor	$t8, $fp, $t8
	slli.d	$fp, $t8, 15
	and	$fp, $fp, $t6
	xor	$fp, $fp, $t8
	ld.b	$s0, $a0, 0
	srli.d	$fp, $fp, 19
	srli.d	$t8, $t8, 1
	xor	$t8, $fp, $t8
	xor	$t8, $s0, $t8
	st.b	$t8, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$t7, $t7, 4
	beqz	$a1, .LBB1_12
.LBB1_6:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #     Child Loop BB1_10 Depth 2
	ldx.w	$t8, $a4, $a3
	addi.w	$t8, $t8, -1
	ori	$fp, $zero, 2512
	add.d	$fp, $sp, $fp
	stptr.w	$t8, $fp, 0
	bnez	$t8, .LBB1_4
# %bb.7:                                # %if.then.i
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$t7, $zero
	ori	$t8, $zero, 2512
	add.d	$t8, $sp, $t8
	stptr.w	$a5, $t8, 0
	xvinsgr2vr.w	$xr10, $a2, 7
	.p2align	4, , 16
.LBB1_8:                                # %vector.body21
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvori.b	$xr11, $xr10, 0
	add.d	$a2, $a3, $t7
	xvld	$xr10, $a2, 4
	xvpickve.w	$xr11, $xr11, 7
	xvinsve0.w	$xr11, $xr11, 0
	xvinsve0.w	$xr11, $xr10, 1
	xvpickve.w	$xr12, $xr10, 1
	xvinsve0.w	$xr11, $xr12, 2
	xvpickve.w	$xr12, $xr10, 2
	xvinsve0.w	$xr11, $xr12, 3
	xvpickve.w	$xr12, $xr10, 3
	xvinsve0.w	$xr11, $xr12, 4
	xvpickve.w	$xr12, $xr10, 4
	xvinsve0.w	$xr11, $xr12, 5
	xvpickve.w	$xr12, $xr10, 5
	xvinsve0.w	$xr11, $xr12, 6
	xvpickve.w	$xr12, $xr10, 6
	xvinsve0.w	$xr11, $xr12, 7
	xvand.v	$xr12, $xr10, $xr0
	xvand.v	$xr11, $xr11, $xr1
	xvor.v	$xr11, $xr12, $xr11
	xvsrli.w	$xr11, $xr11, 1
	xvand.v	$xr12, $xr10, $xr2
	xvld	$xr13, $a2, 1588
	xvseqi.w	$xr12, $xr12, 0
	xvxor.v	$xr12, $xr12, $xr3
	xvand.v	$xr12, $xr12, $xr4
	xvxor.v	$xr12, $xr12, $xr13
	xvxor.v	$xr11, $xr12, $xr11
	xvstx	$xr11, $t7, $a3
	addi.d	$t7, $t7, 32
	bne	$t7, $t0, .LBB1_8
# %bb.9:                                # %for.body.i
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.wu	$t7, $sp, 916
	move	$a2, $zero
	xvpickve2gr.w	$t8, $xr10, 7
	and	$t8, $t8, $a6
	srli.d	$fp, $t7, 1
	bstrins.d	$t8, $fp, 30, 1
	srli.d	$t8, $t8, 1
	ldx.w	$fp, $t1, $a3
	andi	$s0, $t7, 1
	sub.d	$s0, $zero, $s0
	and	$s0, $s0, $a7
	xor	$fp, $s0, $fp
	ld.wu	$s0, $sp, 920
	xor	$t8, $fp, $t8
	st.w	$t8, $sp, 912
	and	$t7, $t7, $a6
	srli.d	$t8, $s0, 1
	bstrins.d	$t7, $t8, 30, 1
	srli.d	$t7, $t7, 1
	ldx.w	$t8, $t2, $a3
	andi	$fp, $s0, 1
	sub.d	$fp, $zero, $fp
	and	$fp, $fp, $a7
	xor	$t8, $fp, $t8
	ld.wu	$fp, $sp, 924
	xor	$t7, $t8, $t7
	st.w	$t7, $sp, 916
	and	$t7, $s0, $a6
	srli.d	$t8, $fp, 1
	bstrins.d	$t7, $t8, 30, 1
	ldx.w	$t8, $t3, $a3
	andi	$s0, $fp, 1
	sub.d	$s0, $zero, $s0
	and	$s0, $s0, $a7
	xor	$t8, $s0, $t8
	srli.d	$t7, $t7, 1
	xor	$t7, $t8, $t7
	st.w	$t7, $sp, 920
	vinsgr2vr.w	$vr10, $fp, 3
	.p2align	4, , 16
.LBB1_10:                               # %vector.body
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t7, $a3, $a2
	vld	$vr11, $t7, 912
	vbsrl.v	$vr10, $vr10, 12
	vbsll.v	$vr12, $vr11, 4
	vor.v	$vr10, $vr12, $vr10
	vand.v	$vr12, $vr11, $vr5
	vand.v	$vr10, $vr10, $vr6
	vor.v	$vr10, $vr12, $vr10
	vsrli.w	$vr10, $vr10, 1
	vand.v	$vr12, $vr11, $vr7
	vldx	$vr13, $a2, $a3
	vseqi.w	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr8
	vand.v	$vr12, $vr12, $vr9
	vxor.v	$vr12, $vr12, $vr13
	vxor.v	$vr10, $vr12, $vr10
	addi.d	$a2, $a2, 16
	vst	$vr10, $t7, 908
	vori.b	$vr10, $vr11, 0
	bne	$a2, $t4, .LBB1_10
# %bb.11:                               # %for.end49.i
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.d	$t7, $sp, 16
	ldx.wu	$t8, $t3, $t7
	ld.wu	$a2, $sp, 16
	and	$t8, $t8, $a6
	srli.d	$fp, $a2, 1
	bstrins.d	$t8, $fp, 30, 1
	srli.d	$t8, $t8, 1
	ld.w	$fp, $sp, 1600
	andi	$s0, $a2, 1
	sub.d	$s0, $zero, $s0
	and	$s0, $s0, $a7
	xor	$fp, $s0, $fp
	xor	$t8, $fp, $t8
	ori	$fp, $zero, 2508
	add.d	$fp, $sp, $fp
	stptr.w	$t8, $fp, 0
	move	$t8, $a2
	b	.LBB1_5
.LBB1_12:                               # %while.end
	addi.d	$sp, $sp, 512
	ld.d	$s0, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	MT_decrypt, .Lfunc_end1-MT_decrypt
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function LAME_decrypt
.LCPI2_0:
	.dword	0x4070000000000000              # double 256
	.text
	.p2align	5
	.type	LAME_decrypt,@function
LAME_decrypt:                           # @LAME_decrypt
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a3, -342684
	ori	$a3, $a3, 2821
	mul.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 1
	mul.d	$a4, $a2, $a3
	addi.d	$a4, $a4, 1
	st.w	$a4, $sp, 32
	mul.d	$a4, $a4, $a3
	rotri.w	$a5, $a2, 23
	addi.d	$a2, $a4, 1
	st.w	$a2, $sp, 36
	mul.d	$a4, $a2, $a3
	addi.d	$a4, $a4, 1
	st.w	$a4, $sp, 40
	mul.d	$a6, $a4, $a3
	addi.d	$a6, $a6, 1
	st.w	$a6, $sp, 44
	mul.d	$a7, $a6, $a3
	addi.d	$a7, $a7, 1
	st.w	$a7, $sp, 48
	mul.d	$t0, $a7, $a3
	addi.d	$t0, $t0, 1
	st.w	$t0, $sp, 52
	mul.d	$t1, $t0, $a3
	addi.d	$t1, $t1, 1
	st.w	$t1, $sp, 56
	mul.d	$t2, $t1, $a3
	addi.d	$t2, $t2, 1
	st.w	$t2, $sp, 60
	mul.d	$t3, $t2, $a3
	addi.d	$t3, $t3, 1
	mul.d	$t4, $t3, $a3
	addi.d	$t4, $t4, 1
	mul.d	$t5, $t4, $a3
	addi.d	$t5, $t5, 1
	mul.d	$t6, $t5, $a3
	addi.d	$t6, $t6, 1
	mul.d	$t7, $t6, $a3
	addi.d	$t7, $t7, 1
	mul.d	$t8, $t7, $a3
	addi.d	$t8, $t8, 1
	mul.d	$fp, $t8, $a3
	addi.d	$fp, $fp, 1
	mul.d	$a3, $fp, $a3
	addi.d	$a3, $a3, 1
	rotri.w	$s0, $t4, 19
	add.d	$a5, $s0, $a5
	st.w	$a5, $sp, 28
	xvinsgr2vr.w	$xr0, $t3, 0
	xvinsgr2vr.w	$xr0, $t4, 1
	xvinsgr2vr.w	$xr0, $t5, 2
	xvinsgr2vr.w	$xr0, $t6, 3
	xvinsgr2vr.w	$xr0, $t7, 4
	xvinsgr2vr.w	$xr0, $t8, 5
	xvinsgr2vr.w	$xr0, $fp, 6
	xvinsgr2vr.w	$xr0, $a3, 7
	xvsrli.w	$xr1, $xr0, 23
	xvslli.w	$xr0, $xr0, 9
	xvor.v	$xr0, $xr0, $xr1
	xvinsgr2vr.w	$xr1, $a2, 0
	xvinsgr2vr.w	$xr1, $a4, 1
	xvinsgr2vr.w	$xr1, $a6, 2
	xvinsgr2vr.w	$xr1, $a7, 3
	xvinsgr2vr.w	$xr1, $t0, 4
	xvinsgr2vr.w	$xr1, $t1, 5
	xvinsgr2vr.w	$xr1, $t2, 6
	xvinsgr2vr.w	$xr1, $t3, 7
	xvsrli.w	$xr2, $xr1, 19
	xvslli.w	$xr1, $xr1, 13
	xvor.v	$xr1, $xr1, $xr2
	xvadd.w	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 64
	beqz	$a1, .LBB2_3
# %bb.1:                                # %while.body.preheader
	addi.d	$a2, $sp, 28
	ori	$a3, $zero, 8
	lu32i.d	$a3, 1
	vreplgr2vr.d	$vr4, $a3
	vrepli.b	$vr0, -1
	vrepli.w	$vr1, 16
	lu12i.w	$a3, -1
	lu32i.d	$a3, 0
	pcalau12i	$a4, %pc_hi20(.LCPI2_0)
	fld.d	$fa2, $a4, %pc_lo12(.LCPI2_0)
	lu52i.d	$a4, $zero, 1023
	vldi	$vr3, -784
	addi.d	$a5, $zero, -1
	.p2align	4, , 16
.LBB2_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	vpickve2gr.w	$a6, $vr4, 0
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a7, $a2, $a6
	vpickve2gr.w	$t0, $vr4, 1
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	rotri.w	$a7, $a7, 23
	rotri.w	$t0, $t0, 19
	add.d	$a7, $t0, $a7
	stx.w	$a7, $a2, $a6
	vadd.w	$vr5, $vr4, $vr0
	vseqi.w	$vr4, $vr4, 0
	vbitsel.v	$vr4, $vr5, $vr1, $vr4
	vpickve2gr.w	$a6, $vr4, 0
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a7, $a2, $a6
	vpickve2gr.w	$t0, $vr4, 1
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	addi.w	$a1, $a1, -1
	rotri.w	$a7, $a7, 23
	rotri.w	$t0, $t0, 19
	add.d	$a7, $t0, $a7
	and	$t0, $a7, $a3
	stx.w	$a7, $a2, $a6
	slli.d	$a6, $t0, 20
	bstrins.d	$a6, $a7, 31, 20
	or	$a6, $a6, $a4
	movgr2fr.d	$fa5, $a6
	fadd.d	$fa5, $fa5, $fa3
	fmul.d	$fa5, $fa5, $fa2
	ftintrz.w.d	$fa6, $fa5
	movfr2gr.s	$a6, $fa6
	vadd.w	$vr6, $vr4, $vr0
	vseqi.w	$vr4, $vr4, 0
	slti	$a6, $a6, 256
	ftintrz.l.d	$fa5, $fa5
	movfr2gr.d	$a7, $fa5
	ld.b	$t0, $a0, 0
	maskeqz	$a7, $a7, $a6
	masknez	$a6, $a5, $a6
	or	$a6, $a7, $a6
	xor	$a6, $a6, $t0
	st.b	$a6, $a0, 0
	addi.d	$a0, $a0, 1
	vbitsel.v	$vr4, $vr6, $vr1, $vr4
	bnez	$a1, .LBB2_2
.LBB2_3:                                # %while.end
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end2:
	.size	LAME_decrypt, .Lfunc_end2-LAME_decrypt
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in scanautoit()\n"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"autoit: Can't create temporary directory %s\n"
	.size	.L.str.1, 45

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"autoit: Extracting files to %s\n"
	.size	.L.str.2, 32

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"autoit: unknown method\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"autoit: no FILE magic found, extraction complete\n"
	.size	.L.str.4, 50

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"autoit: magic string '%s'\n"
	.size	.L.str.5, 27

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"autoit: original filename '%s'\n"
	.size	.L.str.6, 32

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"autoit: bad file size - giving up\n"
	.size	.L.str.7, 35

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"autoit: skipping empty file\n"
	.size	.L.str.8, 29

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"autoit: compressed size: %x\n"
	.size	.L.str.9, 29

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"autoit: advertised uncompressed size %x\n"
	.size	.L.str.10, 41

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"autoit: ref chksum: %x\n"
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"autoit: skipping file due to size limit (%u, max: %lu)\n"
	.size	.L.str.12, 56

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"autoit: failed to read compressed stream. broken/truncated file?\n"
	.size	.L.str.13, 66

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"autoit: file is compressed\n"
	.size	.L.str.14, 28

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"autoit: bad magic or unsupported version\n"
	.size	.L.str.15, 42

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"autoit: uncompressed size again: %x\n"
	.size	.L.str.16, 37

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"autoit: decompression error - partial file may exist\n"
	.size	.L.str.17, 54

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"autoit: file is not compressed\n"
	.size	.L.str.18, 32

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%s/autoit.%.3u"
	.size	.L.str.19, 15

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"autoit: Can't create file %s\n"
	.size	.L.str.20, 30

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"autoit: cannot write %d bytes\n"
	.size	.L.str.21, 31

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"autoit: file extracted to %s\n"
	.size	.L.str.22, 30

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"autoit: file successfully extracted\n"
	.size	.L.str.23, 37

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"autoit: files limit reached (max: %u)\n"
	.size	.L.str.24, 39

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"autoit: getbits() - not enough bits available\n"
	.size	.L.str.25, 47

	.type	.L__const.ea06.prefixes,@object # @__const.ea06.prefixes
	.section	.rodata.cst8,"aM",@progbits,8
.L__const.ea06.prefixes:
	.ascii	"\000\000@$\000.\"#"
	.size	.L__const.ea06.prefixes, 8

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	","
	.size	.L.str.26, 2

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"="
	.size	.L.str.27, 2

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	">"
	.size	.L.str.28, 2

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"<"
	.size	.L.str.29, 2

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"<>"
	.size	.L.str.30, 3

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	">="
	.size	.L.str.31, 3

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"<="
	.size	.L.str.32, 3

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"("
	.size	.L.str.33, 2

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	")"
	.size	.L.str.34, 2

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"+"
	.size	.L.str.35, 2

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"-"
	.size	.L.str.36, 2

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"/"
	.size	.L.str.37, 2

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"*"
	.size	.L.str.38, 2

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"&"
	.size	.L.str.39, 2

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"["
	.size	.L.str.40, 2

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"]"
	.size	.L.str.41, 2

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"=="
	.size	.L.str.42, 3

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"^"
	.size	.L.str.43, 2

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"+="
	.size	.L.str.44, 3

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"-="
	.size	.L.str.45, 3

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"/="
	.size	.L.str.46, 3

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"*="
	.size	.L.str.47, 3

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"&="
	.size	.L.str.48, 3

	.type	.L__const.ea06.opers,@object    # @__const.ea06.opers
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L__const.ea06.opers:
	.dword	.L.str.26
	.dword	.L.str.27
	.dword	.L.str.28
	.dword	.L.str.29
	.dword	.L.str.30
	.dword	.L.str.31
	.dword	.L.str.32
	.dword	.L.str.33
	.dword	.L.str.34
	.dword	.L.str.35
	.dword	.L.str.36
	.dword	.L.str.37
	.dword	.L.str.38
	.dword	.L.str.39
	.dword	.L.str.40
	.dword	.L.str.41
	.dword	.L.str.42
	.dword	.L.str.43
	.dword	.L.str.44
	.dword	.L.str.45
	.dword	.L.str.46
	.dword	.L.str.47
	.dword	.L.str.48
	.size	.L__const.ea06.opers, 184

	.type	.L.str.49,@object               # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"autoit: no FILE magic found, giving up\n"
	.size	.L.str.49, 40

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	">>>AUTOIT SCRIPT<<<"
	.size	.L.str.50, 20

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"autoit: magic string too long to print\n"
	.size	.L.str.51, 40

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"autoit: file is too short\n"
	.size	.L.str.52, 27

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"autoit: script has got %u lines\n"
	.size	.L.str.53, 33

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"autoit: not enough space for an int\n"
	.size	.L.str.54, 37

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"0x%08x "
	.size	.L.str.55, 8

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"autoit: not enough space for an int64\n"
	.size	.L.str.56, 39

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"0x%016lx "
	.size	.L.str.57, 10

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"autoit: not enough space for a double\n"
	.size	.L.str.58, 39

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"%g "
	.size	.L.str.59, 4

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"autoit: not enough space for size\n"
	.size	.L.str.60, 35

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"autoit: size too big - needed %d, total %d, avail %d\n"
	.size	.L.str.61, 54

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"%s "
	.size	.L.str.62, 4

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"autoit: found unknown op (%x)\n"
	.size	.L.str.63, 31

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"autoit: decompilation aborted - partial script may exist\n"
	.size	.L.str.64, 58

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"autoit: %s extracted to %s\n"
	.size	.L.str.65, 28

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"script"
	.size	.L.str.66, 7

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"file"
	.size	.L.str.67, 5

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"autoit: %s successfully extracted\n"
	.size	.L.str.68, 35

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"autoit: Files limit reached (max: %u)\n"
	.size	.L.str.69, 39

	.section	".note.GNU-stack","",@progbits
	.addrsig
