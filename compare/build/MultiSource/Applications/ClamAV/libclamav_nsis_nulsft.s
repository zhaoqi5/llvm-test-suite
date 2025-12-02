	.file	"libclamav_nsis_nulsft.c"
	.text
	.globl	cli_scannulsft                  # -- Begin function cli_scannulsft
	.p2align	5
	.type	cli_scannulsft,@function
cli_scannulsft:                         # @cli_scannulsft
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
	lu12i.w	$a3, 9
	ori	$a3, $a3, 2720
	sub.d	$sp, $sp, $a3
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB0_3
# %bb.1:                                # %land.lhs.true
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_3
# %bb.2:                                # %land.lhs.true3
	ld.w	$a1, $fp, 44
	bgeu	$a1, $a0, .LBB0_6
.LBB0_3:                                # %if.end
	lu12i.w	$a0, 10
	ori	$a2, $a0, 328
	addi.d	$a0, $sp, 72
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$s1, $sp, 72
	st.d	$s0, $sp, 80
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88
	addi.w	$s6, $zero, -118
	beqz	$a0, .LBB0_70
# %bb.4:                                # %if.end9
	move	$s0, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_7
# %bb.5:                                # %if.then13
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_70
.LBB0_6:                                # %if.then
	addi.w	$a1, $a1, 1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s6, $zero, -100
	b	.LBB0_70
.LBB0_7:                                # %if.end16
	lu12i.w	$s1, 9
	ori	$s2, $s1, 3384
	addi.d	$s3, $sp, 72
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s5, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s5, 0
	beqz	$a0, .LBB0_9
# %bb.8:                                # %if.then18
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_9:                                # %if.end20
	ld.w	$a0, $fp, 44
	add.d	$s0, $s3, $s2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 44
	lu12i.w	$a0, 10
	ori	$a0, $a0, 544
	add.d	$s2, $sp, $a0
	ori	$a0, $s1, 3396
	addi.d	$a1, $sp, 72
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$s3, $zero, -123
	addi.w	$s4, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_10:                               # %do.cond
                                        #   in Loop: Header=BB0_12 Depth=1
	move	$a0, $s6
.LBB0_11:                               # %do.cond
                                        #   in Loop: Header=BB0_12 Depth=1
	bnez	$a0, .LBB0_55
.LBB0_12:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_45 Depth 2
	ld.w	$a0, $sp, 104
	beqz	$a0, .LBB0_18
.LBB0_13:                               # %if.end141.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	addi.d	$a0, $sp, 72
	move	$a1, $fp
	pcaddu18i	$ra, %call36(nsis_unpack_next)
	jirl	$ra, $ra, 0
.LBB0_14:                               # %cli_nsis_unpack.exit
                                        #   in Loop: Header=BB0_12 Depth=1
	beqz	$a0, .LBB0_23
# %bb.15:                               # %cli_nsis_unpack.exit
                                        #   in Loop: Header=BB0_12 Depth=1
	addi.w	$a1, $zero, -101
	bne	$a0, $a1, .LBB0_11
# %bb.16:                               # %if.then26
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_71
# %bb.17:                               # %if.else
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.bu	$a1, $s0, 9
	move	$a0, $zero
	move	$s6, $zero
	beqz	$a1, .LBB0_11
	b	.LBB0_58
	.p2align	4, , 16
.LBB0_18:                               # %cond.false.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a0, $sp, 72
	lu12i.w	$a1, 10
	ori	$a1, $a1, 404
	add.d	$a1, $sp, $a1
	st.w	$zero, $a1, 0
	lu12i.w	$a1, 10
	ori	$a1, $a1, 408
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	beq	$a1, $s4, .LBB0_14
# %bb.19:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a0, $sp, 72
	ld.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	beq	$a1, $s4, .LBB0_14
# %bb.20:                               # %lor.lhs.false4.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a0, $sp, 72
	lu12i.w	$a1, 10
	ori	$a1, $a1, 540
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 28
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	ori	$a2, $zero, 28
	bne	$a1, $a2, .LBB0_14
# %bb.21:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	lu12i.w	$a0, 10
	ori	$a0, $a0, 560
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	lu12i.w	$a0, 10
	ori	$a0, $a0, 564
	add.d	$a0, $sp, $a0
	ld.w	$a3, $a0, 0
	lu12i.w	$a0, 10
	ori	$a0, $a0, 540
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	st.w	$a2, $sp, 100
	st.w	$a3, $sp, 96
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 10
	ori	$a0, $a0, 456
	add.d	$a0, $sp, $a0
	ld.d	$s1, $a0, 0
	ld.d	$a0, $sp, 80
	ld.wu	$s7, $sp, 96
	sub.d	$s8, $s1, $a0
	bge	$s8, $s7, .LBB0_28
# %bb.22:                               # %if.then21.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	sub.d	$a0, $s1, $a0
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_23:                               # %if.else32
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a1, $sp, 104
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 104
	ld.w	$a0, $sp, 76
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_25
# %bb.24:                               # %if.then37
                                        #   in Loop: Header=BB0_12 Depth=1
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_scandesc)
	jirl	$ra, $ra, 0
	b	.LBB0_26
.LBB0_25:                               # %if.else40
                                        #   in Loop: Header=BB0_12 Depth=1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
.LBB0_26:                               # %if.end43
                                        #   in Loop: Header=BB0_12 Depth=1
	move	$s6, $a0
	ld.w	$a0, $sp, 76
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 0
	bnez	$a0, .LBB0_10
# %bb.27:                               # %if.then47
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	b	.LBB0_10
.LBB0_28:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	move	$a0, $s7
	beq	$s8, $s7, .LBB0_30
# %bb.29:                               # %if.then34.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 96
.LBB0_30:                               # %if.end36.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	addi.w	$a1, $a0, 0
	addi.d	$a0, $a0, -28
	st.w	$a0, $sp, 96
	ori	$a0, $zero, 32
	bne	$a1, $a0, .LBB0_34
.LBB0_31:                               # %for.end.if.end97_crit_edge.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.bu	$a0, $s0, 9
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 9
	bnez	$a0, .LBB0_33
.LBB0_32:                               # %if.then103.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	lu12i.w	$a0, 10
	ori	$a0, $a0, 405
	add.d	$a0, $sp, $a0
	ld.bu	$s6, $a0, 0
	lu12i.w	$a0, 10
	ori	$a0, $a0, 406
	add.d	$a0, $sp, $a0
	ld.bu	$s7, $a0, 0
	lu12i.w	$a0, 10
	ori	$a0, $a0, 407
	add.d	$a0, $sp, $a0
	ld.bu	$s8, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	sltu	$a0, $s6, $s7
	sltu	$a1, $s7, $s8
	addi.d	$a1, $a1, 2
	sltu	$a2, $s6, $s8
	ori	$a3, $zero, 1
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 3
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	st.b	$a0, $s0, 8
.LBB0_33:                               # %if.end133.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.d	$a1, $sp, 80
	ld.w	$a0, $sp, 72
	addi.d	$a1, $a1, 28
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	bne	$a1, $s4, .LBB0_13
	b	.LBB0_14
.LBB0_34:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a0, $sp, 72
	ori	$a2, $zero, 4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB0_14
# %bb.35:                               # %if.end58.peel.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	lu12i.w	$a0, 10
	ori	$a0, $a0, 544
	add.d	$a0, $sp, $a0
	ld.wu	$a0, $a0, 0
	addi.w	$a1, $a0, 0
	andi	$a2, $a0, 255
	addi.d	$a2, $a2, -49
	sltui	$a2, $a2, 1
	bstrpick.d	$s1, $a0, 30, 0
	addi.d	$a0, $s1, -93
	sltui	$a0, $a0, 1
	xori	$a0, $a0, 3
	ori	$a3, $zero, 1
	maskeqz	$a3, $a3, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a3, $a0
	st.b	$a0, $s0, 8
	ori	$a0, $zero, 4
	bgez	$a1, .LBB0_38
# %bb.36:                               # %if.then60.peel.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a0, $sp, 72
	ori	$a2, $zero, 4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB0_14
# %bb.37:                               # %if.end69.peel.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	lu12i.w	$a0, 10
	ori	$a0, $a0, 544
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	lu12i.w	$a1, 10
	ori	$a1, $a1, 544
	add.d	$a1, $sp, $a1
	ld.wu	$a1, $a1, 0
	addi.d	$a0, $a0, -49
	sltui	$a0, $a0, 1
	bstrpick.d	$a1, $a1, 30, 0
	addi.d	$a1, $a1, -93
	sltui	$a1, $a1, 1
	xori	$a1, $a1, 3
	ori	$a2, $zero, 1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	lu12i.w	$a1, 10
	ori	$a1, $a1, 404
	add.d	$a1, $sp, $a1
	or	$a0, $a1, $a0
	ld.b	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.b	$a1, $a0, 0
	addi.w	$a1, $s1, -4
	ori	$a0, $zero, 8
.LBB0_38:                               # %if.end75.peel.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a2, $sp, 96
	add.w	$s1, $a1, $a0
	bgeu	$a2, $s1, .LBB0_42
# %bb.39:                               #   in Loop: Header=BB0_12 Depth=1
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 9
	bge	$s8, $s7, .LBB0_31
.LBB0_40:                               # %for.end.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	beqz	$a0, .LBB0_31
# %bb.41:                               # %if.then95.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	st.b	$zero, $s0, 9
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 9
	bnez	$a0, .LBB0_33
	b	.LBB0_32
.LBB0_42:                               # %if.end82.peel.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a0, $sp, 72
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	beq	$a1, $s4, .LBB0_14
# %bb.43:                               # %for.inc.peel.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a0, $sp, 96
	addi.w	$a0, $a0, -4
	bgeu	$s1, $a0, .LBB0_31
# %bb.44:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	ori	$s2, $zero, 1
.LBB0_45:                               # %for.body.i.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $sp, 72
	ori	$a2, $zero, 4
	lu12i.w	$a1, 10
	ori	$a1, $a1, 544
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_53
# %bb.46:                               # %if.end58.i.i
                                        #   in Loop: Header=BB0_45 Depth=2
	lu12i.w	$a0, 10
	ori	$a0, $a0, 544
	add.d	$a0, $sp, $a0
	ld.w	$s6, $a0, 0
	bgez	$s6, .LBB0_49
# %bb.47:                               # %if.then60.i.i
                                        #   in Loop: Header=BB0_45 Depth=2
	ld.w	$a0, $sp, 72
	ori	$a2, $zero, 4
	lu12i.w	$a1, 10
	ori	$a1, $a1, 544
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_53
# %bb.48:                               # %if.end69.i.i
                                        #   in Loop: Header=BB0_45 Depth=2
	lu12i.w	$a0, 10
	ori	$a0, $a0, 544
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	lu12i.w	$a1, 10
	ori	$a1, $a1, 544
	add.d	$a1, $sp, $a1
	ld.wu	$a1, $a1, 0
	addi.d	$a0, $a0, -49
	sltui	$a0, $a0, 1
	bstrpick.d	$a1, $a1, 30, 0
	addi.d	$a1, $a1, -93
	sltui	$a1, $a1, 1
	xori	$a1, $a1, 3
	ori	$a2, $zero, 1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	lu12i.w	$a1, 10
	ori	$a1, $a1, 404
	add.d	$a1, $sp, $a1
	or	$a0, $a1, $a0
	ld.b	$a1, $a0, 0
	bstrpick.d	$a2, $s6, 30, 0
	addi.d	$a1, $a1, 1
	st.b	$a1, $a0, 0
	addi.w	$s6, $a2, -4
	addi.d	$s1, $s1, 4
.LBB0_49:                               # %if.end75.i.i
                                        #   in Loop: Header=BB0_45 Depth=2
	ld.w	$a0, $sp, 96
	add.d	$a1, $s1, $s6
	addi.w	$s1, $a1, 4
	bltu	$a0, $s1, .LBB0_54
# %bb.50:                               # %if.end82.i.i
                                        #   in Loop: Header=BB0_45 Depth=2
	ld.w	$a0, $sp, 72
	ori	$a2, $zero, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB0_53
# %bb.51:                               # %for.inc.i.i
                                        #   in Loop: Header=BB0_45 Depth=2
	ld.w	$a0, $sp, 96
	addi.w	$a0, $a0, -4
	addi.w	$s2, $s2, 1
	bltu	$s1, $a0, .LBB0_45
# %bb.52:                               #   in Loop: Header=BB0_12 Depth=1
	ori	$a0, $zero, 1
	lu12i.w	$a1, 10
	ori	$a1, $a1, 544
	add.d	$s2, $sp, $a1
	blt	$s8, $s7, .LBB0_40
	b	.LBB0_31
.LBB0_53:                               #   in Loop: Header=BB0_12 Depth=1
	move	$a0, $s3
	lu12i.w	$a1, 10
	ori	$a1, $a1, 544
	add.d	$s2, $sp, $a1
	b	.LBB0_14
.LBB0_54:                               # %cleanup.i.loopexit.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ori	$a0, $zero, 1
	sltu	$a0, $a0, $s2
	lu12i.w	$a1, 10
	ori	$a1, $a1, 544
	add.d	$s2, $sp, $a1
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 9
	blt	$s8, $s7, .LBB0_40
	b	.LBB0_31
.LBB0_55:                               # %do.cond
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_57
# %bb.56:
	move	$s6, $zero
	ld.bu	$a0, $s0, 10
	bnez	$a0, .LBB0_59
	b	.LBB0_64
.LBB0_57:                               # %do.end.thread.loopexit44
	move	$s6, $a0
.LBB0_58:                               # %do.end.thread
	ld.bu	$a0, $s0, 10
	beqz	$a0, .LBB0_64
.LBB0_59:                               # %if.end.i.i18
	ld.bu	$a0, $s0, 8
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_62
# %bb.60:                               # %if.end.i.i18
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_63
# %bb.61:                               # %sw.bb.i.i
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(nsis_BZ2_bzDecompressEnd)
	jirl	$ra, $ra, 0
	b	.LBB0_63
.LBB0_62:                               # %sw.bb1.i.i
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(lzmaShutdown)
	jirl	$ra, $ra, 0
.LBB0_63:                               # %sw.epilog.i.i
	st.b	$zero, $s0, 10
.LBB0_64:                               # %nsis_shutdown.exit.i
	ld.bu	$a0, $s0, 9
	beqz	$a0, .LBB0_67
# %bb.65:                               # %land.lhs.true.i
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB0_67
# %bb.66:                               # %if.then.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_67:                               # %cli_nsis_free.exit
	ld.bu	$a0, $s5, 0
	bnez	$a0, .LBB0_69
# %bb.68:                               # %if.then58
	ld.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB0_69:                               # %if.end61
	ld.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 44
.LBB0_70:                               # %cleanup
	move	$a0, $s6
	lu12i.w	$a1, 9
	ori	$a1, $a1, 2720
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
.LBB0_71:                               # %do.end.thread28
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	st.d	$a1, $a0, 0
	ori	$s6, $zero, 1
	ld.bu	$a0, $s0, 10
	bnez	$a0, .LBB0_59
	b	.LBB0_64
.Lfunc_end0:
	.size	cli_scannulsft, .Lfunc_end0-cli_scannulsft
                                        # -- End function
	.p2align	5                               # -- Begin function nsis_unpack_next
	.type	nsis_unpack_next,@function
nsis_unpack_next:                       # @nsis_unpack_next
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
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2144
	sub.d	$sp, $sp, $a2
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$a2, $a0, 3352
	add.d	$s2, $fp, $a2
	ld.bu	$a2, $s2, 43
	beqz	$a2, .LBB1_4
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %cleanup388
	ori	$a0, $zero, 2
.LBB1_3:                                # %cleanup388
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	add.d	$sp, $sp, $a1
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
.LBB1_4:                                # %if.end
	ld.d	$a2, $a1, 32
	beqz	$a2, .LBB1_7
# %bb.5:                                # %land.lhs.true
	ld.w	$a2, $a2, 4
	beqz	$a2, .LBB1_7
# %bb.6:                                # %land.lhs.true4
	ld.w	$a3, $fp, 32
	bgeu	$a3, $a2, .LBB1_16
.LBB1_7:                                # %if.end10
	move	$s1, $a1
	ld.w	$a4, $fp, 32
	ld.d	$a3, $fp, 16
	ori	$a0, $a0, 3396
	add.d	$s0, $fp, $a0
	beqz	$a4, .LBB1_9
# %bb.8:                                # %if.then13
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 1023
	move	$a0, $s0
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_10
.LBB1_9:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 1023
	move	$a0, $s0
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %if.end19
	ld.w	$a0, $fp, 32
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 32
	ori	$a1, $zero, 578
	ori	$a2, $zero, 384
	move	$a0, $s0
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.w	$a0, $fp, 4
	beq	$a0, $a1, .LBB1_15
# %bb.11:                               # %if.end28
	ld.bu	$a0, $s2, 41
	beqz	$a0, .LBB1_17
# %bb.12:                               # %if.else200
	ld.d	$a0, $s2, 32
	beqz	$a0, .LBB1_20
# %bb.13:                               # %if.else200.if.end239_crit_edge
	ld.w	$a1, $fp, 40
	ori	$a0, $zero, 4
	bltu	$a0, $a1, .LBB1_40
.LBB1_14:                               # %if.then244
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	b	.LBB1_26
.LBB1_15:                               # %if.then25
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB1_3
.LBB1_16:                               # %if.then7
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $a2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -102
	b	.LBB1_3
.LBB1_17:                               # %if.then30
	ld.w	$a0, $fp, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 12
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 4
	ori	$s0, $zero, 4
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB1_25
# %bb.18:                               # %if.end36
	ld.w	$a0, $fp, 24
	bne	$a0, $s0, .LBB1_27
# %bb.19:                               # %if.then38
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	b	.LBB1_26
.LBB1_20:                               # %if.then202
	ld.bu	$a0, $s2, 40
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB1_35
# %bb.21:                               # %if.then202
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_34
# %bb.22:                               # %if.then202
	ori	$s0, $zero, 1
	bne	$a0, $s0, .LBB1_37
# %bb.23:                               # %sw.bb.i
	addi.d	$a0, $fp, 72
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(nsis_BZ2_bzDecompressInit)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_36
# %bb.24:                               # %if.then206
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -106
	b	.LBB1_3
.LBB1_25:                               # %if.then33
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
.LBB1_26:                               # %cleanup388
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_27:                               # %if.end41
	lu12i.w	$a1, 2
	ori	$a1, $a1, 12
	add.d	$a1, $sp, $a1
	ld.wu	$s2, $a1, 0
	bstrpick.d	$a1, $s2, 30, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 12
	add.d	$a2, $sp, $a2
	st.w	$a1, $a2, 0
	beqz	$a1, .LBB1_103
# %bb.28:                               # %if.end44
	ori	$a2, $zero, 4
	bltu	$a0, $a2, .LBB1_104
# %bb.29:                               # %if.end44
	addi.w	$a0, $a0, -4
	bltu	$a0, $a1, .LBB1_104
# %bb.30:                               # %if.end52
	ld.d	$a2, $s1, 32
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, 24
	beqz	$a2, .LBB1_105
# %bb.31:                               # %land.lhs.true57
	ld.d	$a2, $a2, 24
	beqz	$a2, .LBB1_105
# %bb.32:                               # %land.lhs.true57
	bgeu	$a2, $a1, .LBB1_105
# %bb.33:                               # %if.then65
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 12
	add.d	$a1, $sp, $a1
	ld.wu	$a1, $a1, 0
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	addi.w	$a1, $zero, -101
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -123
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	b	.LBB1_3
.LBB1_34:                               # %sw.bb2.i
	addi.d	$a0, $fp, 152
	pcaddu18i	$ra, %call36(lzmaInit)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	b	.LBB1_36
.LBB1_35:                               # %sw.bb4.i
	move	$s0, $zero
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 360
	st.d	$zero, $fp, 1680
	st.w	$zero, $fp, 1676
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3352
	add.d	$a0, $fp, $a0
	st.d	$a0, $s2, 16
	st.d	$a0, $s2, 8
	st.d	$s2, $s2, 0
.LBB1_36:                               # %return.sink.split.i
	st.b	$s0, $s2, 42
.LBB1_37:                               # %if.end209
	ld.wu	$a0, $fp, 24
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 32
	beqz	$a0, .LBB1_49
# %bb.38:                               # %if.end218
	move	$a1, $a0
	ld.w	$a0, $fp, 0
	ld.w	$a2, $fp, 24
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	bstrpick.d	$a2, $a1, 31, 0
	bne	$a0, $a2, .LBB1_51
# %bb.39:                               # %if.end232
	ld.d	$a0, $s2, 32
	st.d	$a0, $fp, 48
	st.w	$a1, $fp, 40
	ori	$a0, $zero, 4
	bgeu	$a0, $a1, .LBB1_14
.LBB1_40:                               # %if.end247
	addi.d	$s0, $sp, 12
	st.d	$s0, $fp, 64
	st.w	$a0, $fp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_44
.LBB1_41:                               # %if.then276
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB1_42:                               # %cleanup388
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_43:                               # %cleanup388
	ld.w	$a0, $fp, 4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB1_3
.LBB1_44:                               # %while.body257
	ld.d	$a0, $fp, 64
	sub.d	$a0, $a0, $s0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB1_53
.LBB1_45:                               # %if.end279
	ld.wu	$a0, $sp, 12
	ld.d	$a2, $s1, 32
	addi.w	$a1, $a0, 0
	lu12i.w	$a3, 2
	ori	$a3, $a3, 12
	add.d	$a3, $sp, $a3
	st.w	$a0, $a3, 0
	beqz	$a2, .LBB1_94
# %bb.46:                               # %land.lhs.true284
	ld.d	$a2, $a2, 24
	beqz	$a2, .LBB1_94
# %bb.47:                               # %land.lhs.true284
	bgeu	$a2, $a0, .LBB1_94
# %bb.48:                               # %if.then294
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB1_43
.LBB1_49:                               # %if.then215
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
.LBB1_50:                               # %cleanup388
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB1_3
.LBB1_51:                               # %if.then228
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_52:                               # %cleanup.thread
	ld.w	$a0, $fp, 4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB1_3
.LBB1_53:                               # %if.end267
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.54:                               # %while.body257.1
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.55:                               # %if.end267.1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.56:                               # %while.body257.2
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.57:                               # %if.end267.2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.58:                               # %while.body257.3
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.59:                               # %if.end267.3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.60:                               # %while.body257.4
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.61:                               # %if.end267.4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.62:                               # %while.body257.5
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.63:                               # %if.end267.5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.64:                               # %while.body257.6
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.65:                               # %if.end267.6
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.66:                               # %while.body257.7
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.67:                               # %if.end267.7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.68:                               # %while.body257.8
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.69:                               # %if.end267.8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.70:                               # %while.body257.9
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.71:                               # %if.end267.9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.72:                               # %while.body257.10
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.73:                               # %if.end267.10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.74:                               # %while.body257.11
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.75:                               # %if.end267.11
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.76:                               # %while.body257.12
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.77:                               # %if.end267.12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.78:                               # %while.body257.13
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.79:                               # %if.end267.13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.80:                               # %while.body257.14
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.81:                               # %if.end267.14
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.82:                               # %while.body257.15
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.83:                               # %if.end267.15
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.84:                               # %while.body257.16
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.85:                               # %if.end267.16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.86:                               # %while.body257.17
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.87:                               # %if.end267.17
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.88:                               # %while.body257.18
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.89:                               # %if.end267.18
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.90:                               # %while.body257.19
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.91:                               # %if.end267.19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_41
# %bb.92:                               # %while.body257.20
	ld.d	$a0, $fp, 64
	addi.d	$a1, $sp, 12
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
# %bb.93:                               # %if.end267.20
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB1_41
.LBB1_94:                               # %if.end299
	addi.d	$s0, $sp, 12
	st.d	$s0, $fp, 64
	srli.d	$a0, $a1, 13
	sltui	$a0, $a0, 1
	lu12i.w	$s1, 2
	masknez	$a2, $s1, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $fp, 56
	beqz	$a1, .LBB1_110
# %bb.95:                               # %land.rhs.preheader
	move	$s3, $zero
	ori	$s4, $zero, 19
	b	.LBB1_97
.LBB1_96:                               # %cleanup
                                        #   in Loop: Header=BB1_97 Depth=1
	move	$a0, $zero
	beqz	$a1, .LBB1_3
.LBB1_97:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_111
# %bb.98:                               # %while.body312
                                        #   in Loop: Header=BB1_97 Depth=1
	ld.d	$a0, $fp, 64
	sub.d	$s5, $a0, $s0
	addi.w	$a2, $s5, 0
	beqz	$a2, .LBB1_101
# %bb.99:                               # %if.then321
                                        #   in Loop: Header=BB1_97 Depth=1
	ld.w	$a0, $fp, 4
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s5, 31, 0
	bne	$a1, $a0, .LBB1_52
# %bb.100:                              # %if.end332
                                        #   in Loop: Header=BB1_97 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 12
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	sub.w	$a1, $a0, $s5
	lu12i.w	$a0, 2
	ori	$a0, $a0, 12
	add.d	$a0, $sp, $a0
	st.w	$a1, $a0, 0
	st.d	$s0, $fp, 64
	srli.d	$a0, $a1, 13
	sltui	$a0, $a0, 1
	maskeqz	$a2, $a1, $a0
	masknez	$a0, $s1, $a0
	or	$a0, $a2, $a0
	st.w	$a0, $fp, 56
	b	.LBB1_96
.LBB1_101:                              # %if.else345
                                        #   in Loop: Header=BB1_97 Depth=1
	bltu	$s4, $s3, .LBB1_117
# %bb.102:                              # %if.else345.cleanup_crit_edge
                                        #   in Loop: Header=BB1_97 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 12
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	addi.w	$s3, $s3, 1
	b	.LBB1_96
.LBB1_103:                              # %if.then43
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB1_3
.LBB1_104:                              # %if.then49
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB1_26
.LBB1_105:                              # %if.end77
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_113
# %bb.106:                              # %if.end84
	move	$s0, $a0
	ld.w	$a0, $fp, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 12
	add.d	$a1, $sp, $a1
	ld.w	$a2, $a1, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 12
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $a1, 31, 0
	bne	$a0, $a2, .LBB1_114
# %bb.107:                              # %if.end94
	addi.w	$a2, $s2, 0
	bne	$a2, $a1, .LBB1_115
# %bb.108:                              # %if.then97
	ld.w	$a0, $fp, 4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 12
	add.d	$a1, $sp, $a1
	ld.wu	$a1, $a1, 0
	bne	$a0, $a1, .LBB1_120
.LBB1_109:                              # %if.end199
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_110:
	move	$a0, $zero
	b	.LBB1_3
.LBB1_111:                              # %land.rhs
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_118
# %bb.112:                              # %if.then383
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	b	.LBB1_42
.LBB1_113:                              # %if.then81
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	b	.LBB1_50
.LBB1_114:                              # %if.then91
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB1_122
.LBB1_115:                              # %if.else108
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_init)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_123
# %bb.116:                              # %if.then112
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB1_3
.LBB1_117:                              # %while.end352.thread
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_118:                              # %if.then355
	ld.d	$a1, $fp, 64
	ld.w	$a0, $fp, 4
	addi.d	$s0, $sp, 12
	sub.w	$a2, $a1, $s0
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	sub.d	$a1, $a1, $s0
	bne	$a1, $a0, .LBB1_52
# %bb.119:                              # %if.end378
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $s2, 43
	b	.LBB1_3
.LBB1_120:                              # %if.then104
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
.LBB1_121:                              # %cleanup388
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_122:                              # %cleanup388
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB1_52
.LBB1_123:                              # %if.end115
	lu12i.w	$a0, 2
	ori	$a0, $a0, 12
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	move	$a3, $zero
	st.w	$a0, $fp, 40
	st.d	$s0, $fp, 48
	addi.d	$s2, $sp, 12
	st.d	$s2, $fp, 64
	lu12i.w	$s3, 2
	st.w	$s3, $fp, 56
	ori	$s4, $zero, 10
	b	.LBB1_125
.LBB1_124:                              # %if.else163
                                        #   in Loop: Header=BB1_125 Depth=1
	addi.w	$a3, $s5, 1
	bgeu	$s5, $s4, .LBB1_135
.LBB1_125:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	move	$s5, $a3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_decomp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_132
# %bb.126:                              # %while.body
                                        #   in Loop: Header=BB1_125 Depth=1
	ld.d	$a0, $fp, 64
	sub.w	$a2, $a0, $s2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 12
	add.d	$a0, $sp, $a0
	st.w	$a2, $a0, 0
	beqz	$a2, .LBB1_124
# %bb.127:                              # %if.then128
                                        #   in Loop: Header=BB1_125 Depth=1
	ld.w	$a0, $fp, 4
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 12
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $a1, 31, 0
	bne	$a0, $a2, .LBB1_134
# %bb.128:                              # %if.end139
                                        #   in Loop: Header=BB1_125 Depth=1
	ld.d	$a2, $s1, 32
	move	$a3, $zero
	st.d	$s2, $fp, 64
	st.w	$s3, $fp, 56
	beqz	$a2, .LBB1_125
# %bb.129:                              # %land.lhs.true147
                                        #   in Loop: Header=BB1_125 Depth=1
	ld.d	$a2, $a2, 24
	move	$a3, $zero
	beqz	$a2, .LBB1_125
# %bb.130:                              # %land.lhs.true147
                                        #   in Loop: Header=BB1_125 Depth=1
	bgeu	$a2, $a0, .LBB1_125
# %bb.131:                              # %if.then157
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_shutdown)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -101
	b	.LBB1_3
.LBB1_132:                              # %while.cond
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_136
# %bb.133:                              # %if.then172
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB1_43
.LBB1_134:                              # %if.then136
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	b	.LBB1_121
.LBB1_135:                              # %while.end.thread
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_136:                              # %if.end175
	ld.d	$a1, $fp, 64
	ld.w	$a0, $fp, 4
	addi.d	$s1, $sp, 12
	sub.w	$a2, $a1, $s1
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	sub.d	$a1, $a1, $s1
	bne	$a1, $a0, .LBB1_138
# %bb.137:                              # %if.end198
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nsis_shutdown)
	jirl	$ra, $ra, 0
	b	.LBB1_109
.LBB1_138:                              # %if.then195
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	b	.LBB1_121
.Lfunc_end1:
	.size	nsis_unpack_next, .Lfunc_end1-nsis_unpack_next
                                        # -- End function
	.p2align	5                               # -- Begin function nsis_init
	.type	nsis_init,@function
nsis_init:                              # @nsis_init
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a1, 9
	ori	$a1, $a1, 3352
	add.d	$fp, $a0, $a1
	ld.bu	$a1, $fp, 40
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB2_6
# %bb.1:                                # %entry
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB2_5
# %bb.2:                                # %entry
	ori	$s0, $zero, 1
	bne	$a1, $s0, .LBB2_8
# %bb.3:                                # %sw.bb
	addi.d	$a0, $a0, 72
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(nsis_BZ2_bzDecompressInit)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_7
# %bb.4:
	addi.w	$a0, $zero, -106
	b	.LBB2_9
.LBB2_5:                                # %sw.bb2
	addi.d	$a0, $a0, 152
	pcaddu18i	$ra, %call36(lzmaInit)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	b	.LBB2_7
.LBB2_6:                                # %sw.bb4
	move	$s0, $zero
	ori	$a1, $zero, 8
	st.w	$a1, $a0, 360
	st.d	$zero, $a0, 1680
	st.w	$zero, $a0, 1676
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3352
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 16
	st.d	$a0, $fp, 8
	st.d	$fp, $fp, 0
.LBB2_7:                                # %return.sink.split
	move	$a0, $zero
	st.b	$s0, $fp, 42
	b	.LBB2_9
.LBB2_8:
	move	$a0, $zero
.LBB2_9:                                # %return
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	nsis_init, .Lfunc_end2-nsis_init
                                        # -- End function
	.p2align	5                               # -- Begin function nsis_decomp
	.type	nsis_decomp,@function
nsis_decomp:                            # @nsis_decomp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$a0, $a0, 3392
	ldx.bu	$a0, $fp, $a0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB3_5
# %bb.1:                                # %entry
	ori	$s0, $zero, 2
	beq	$a0, $s0, .LBB3_4
# %bb.2:                                # %entry
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_7
# %bb.3:                                # %sw.bb
	ld.w	$a1, $fp, 40
	addi.d	$a0, $fp, 72
	ld.d	$a2, $fp, 48
	ld.w	$a3, $fp, 56
	ld.d	$a4, $fp, 64
	st.w	$a1, $fp, 80
	st.d	$a2, $fp, 72
	st.w	$a3, $fp, 104
	st.d	$a4, $fp, 96
	pcaddu18i	$ra, %call36(nsis_BZ2_bzDecompress)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -4
	sltui	$a1, $a1, 1
	addi.w	$a2, $zero, -124
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 2
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	masknez	$a0, $a1, $a0
	ld.w	$a1, $fp, 80
	ld.d	$a2, $fp, 72
	ld.w	$a3, $fp, 104
	ld.d	$a4, $fp, 96
	b	.LBB3_6
.LBB3_4:                                # %sw.bb30
	ld.w	$a1, $fp, 40
	addi.d	$a0, $fp, 152
	ld.d	$a2, $fp, 48
	ld.w	$a3, $fp, 56
	ld.d	$a4, $fp, 64
	st.w	$a1, $fp, 184
	st.d	$a2, $fp, 176
	st.w	$a3, $fp, 200
	st.d	$a4, $fp, 192
	pcaddu18i	$ra, %call36(lzmaDecode)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -1
	sltui	$a1, $a1, 1
	addi.w	$a2, $zero, -124
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	masknez	$a0, $a1, $a0
	ld.w	$a1, $fp, 184
	ld.d	$a2, $fp, 176
	ld.w	$a3, $fp, 200
	ld.d	$a4, $fp, 192
	b	.LBB3_6
.LBB3_5:                                # %sw.bb67
	ld.w	$a1, $fp, 40
	addi.d	$a0, $fp, 320
	ld.d	$a2, $fp, 48
	ld.w	$a3, $fp, 56
	ld.d	$a4, $fp, 64
	st.w	$a1, $fp, 328
	st.d	$a2, $fp, 320
	st.w	$a3, $fp, 352
	st.d	$a4, $fp, 344
	pcaddu18i	$ra, %call36(nsis_inflate)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -1
	sltui	$a1, $a1, 1
	addi.w	$a2, $zero, -124
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 2
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	masknez	$a0, $a1, $a0
	ld.w	$a1, $fp, 328
	ld.d	$a2, $fp, 320
	ld.w	$a3, $fp, 352
	ld.d	$a4, $fp, 344
.LBB3_6:                                # %sw.epilog104
	st.w	$a1, $fp, 40
	st.d	$a2, $fp, 48
	st.w	$a3, $fp, 56
	st.d	$a4, $fp, 64
	b	.LBB3_8
.LBB3_7:
	addi.w	$a0, $zero, -124
.LBB3_8:                                # %sw.epilog104
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	nsis_decomp, .Lfunc_end3-nsis_decomp
                                        # -- End function
	.p2align	5                               # -- Begin function nsis_shutdown
	.type	nsis_shutdown,@function
nsis_shutdown:                          # @nsis_shutdown
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	lu12i.w	$a1, 9
	ori	$a1, $a1, 3392
	add.d	$fp, $a0, $a1
	ld.bu	$a1, $fp, 2
	beqz	$a1, .LBB4_6
# %bb.1:                                # %if.end
	ld.bu	$a1, $fp, 0
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB4_4
# %bb.2:                                # %if.end
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB4_5
# %bb.3:                                # %sw.bb
	addi.d	$a0, $a0, 72
	pcaddu18i	$ra, %call36(nsis_BZ2_bzDecompressEnd)
	jirl	$ra, $ra, 0
	b	.LBB4_5
.LBB4_4:                                # %sw.bb1
	addi.d	$a0, $a0, 152
	pcaddu18i	$ra, %call36(lzmaShutdown)
	jirl	$ra, $ra, 0
.LBB4_5:                                # %sw.epilog
	st.b	$zero, $fp, 2
.LBB4_6:                                # %return
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	nsis_shutdown, .Lfunc_end4-nsis_shutdown
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in scannulsft()\n"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Archive recursion limit exceeded (arec == %u).\n"
	.size	.L.str.1, 48

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"NSIS: Can't create temporary directory %s\n"
	.size	.L.str.2, 43

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"NSIS: Extracting files to %s\n"
	.size	.L.str.3, 30

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"NSIS.ExceededFileSize"
	.size	.L.str.4, 22

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"NSIS: Successully extracted file #%u\n"
	.size	.L.str.5, 38

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"NSIS: extraction complete\n"
	.size	.L.str.6, 27

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"NSIS: Files limit reached (max: %u)\n"
	.size	.L.str.7, 37

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s/content.%.3u"
	.size	.L.str.8, 16

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s/headers"
	.size	.L.str.9, 11

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"NSIS: unable to create output file %s - aborting."
	.size	.L.str.10, 50

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"NSIS: reached EOF - extraction complete\n"
	.size	.L.str.11, 41

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"NSIS: reached CRC - extraction complete\n"
	.size	.L.str.12, 41

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"NSIS: empty file found\n"
	.size	.L.str.13, 24

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"NSIS: next file is outside the archive\n"
	.size	.L.str.14, 40

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"NSIS: Skipping file due to size limit (%u, max: %lu)\n"
	.size	.L.str.15, 54

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"NSIS: out of memory at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:236\n"
	.size	.L.str.16, 113

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"NSIS: cannot read %u bytes at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:241\n"
	.size	.L.str.17, 120

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"NSIS: cannot write output file at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:248\n"
	.size	.L.str.18, 124

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"NSIS: decompressor init failed at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:255\n"
	.size	.L.str.19, 124

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"NSIS: cannot write output file at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:270\n"
	.size	.L.str.20, 124

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"NSIS: xs looping, breaking out at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:286\n"
	.size	.L.str.21, 124

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"NSIS: bad stream at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:293\n"
	.size	.L.str.22, 110

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"NSIS: cannot write output file at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:300\n"
	.size	.L.str.23, 124

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"NSIS: decompressor init failed\n"
	.size	.L.str.24, 32

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"NSIS: out of memory\n"
	.size	.L.str.25, 21

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"NSIS: cannot read %u bytes at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:324\n"
	.size	.L.str.26, 120

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"NSIS: xs looping, breaking out at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:344\n"
	.size	.L.str.27, 124

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"NSIS: bad stream at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:351\n"
	.size	.L.str.28, 110

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"NSIS: Breaking out due to filesize limit (%u, max: %lu) in solid archive\n"
	.size	.L.str.29, 74

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"NSIS: xs looping, breaking out at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:378\n"
	.size	.L.str.30, 124

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"NSIS: bad stream at /home/zhaoqi/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:391\n"
	.size	.L.str.31, 110

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"NSIS: Header info - Flags=%x, Header size=%x, Archive size=%x\n"
	.size	.L.str.32, 63

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"NSIS: Possibly truncated file\n"
	.size	.L.str.33, 31

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"NSIS: Overlays found\n"
	.size	.L.str.34, 22

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"NSIS: solid compression%s detected\n"
	.size	.L.str.35, 36

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.space	1
	.size	.L.str.36, 1

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	" not"
	.size	.L.str.37, 5

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"NSIS: bzip2 %u - lzma %u - zlib %u\n"
	.size	.L.str.38, 36

	.section	".note.GNU-stack","",@progbits
	.addrsig
