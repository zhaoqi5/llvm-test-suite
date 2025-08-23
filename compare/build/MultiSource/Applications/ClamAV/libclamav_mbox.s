	.file	"libclamav_mbox.c"
	.text
	.globl	cli_mbox                        # -- Begin function cli_mbox
	.p2align	5
	.type	cli_mbox,@function
cli_mbox:                               # @cli_mbox
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -128
	beqz	$a0, .LBB0_16
# %bb.1:                                # %if.end
	move	$s4, $a2
	move	$s2, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(dup)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fdopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_17
# %bb.2:                                # %if.end.i
	move	$s0, $a0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 116
	ori	$a1, $zero, 1000
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_18
# %bb.3:                                # %if.end7.i
	pcalau12i	$a0, %pc_hi20(cli_parse_mbox.rfc821)
	addi.d	$s5, $a0, %pc_lo12(cli_parse_mbox.rfc821)
	ld.d	$a0, $s5, 0
	beqz	$a0, .LBB0_19
.LBB0_4:                                # %if.end15.i
	pcalau12i	$a1, %pc_hi20(cli_parse_mbox.subtype)
	ld.d	$a1, $a1, %pc_lo12(cli_parse_mbox.subtype)
	st.d	$s1, $sp, 72
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
	st.d	$s4, $sp, 104
	st.w	$zero, $sp, 80
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 116
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_42
# %bb.5:                                # %if.else93.i
	ld.w	$a0, $sp, 116
	lu12i.w	$a1, 132242
	ori	$a1, $a1, 80
	bne	$a0, $a1, .LBB0_10
# %bb.6:                                # %while.cond.i.preheader
	ori	$fp, $zero, 1
	lu12i.w	$a0, 2
	ori	$s2, $a0, 1025
	ori	$s3, $zero, 15
	.p2align	4, , 16
.LBB0_7:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 116
	ori	$a1, $zero, 1000
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_10
# %bb.8:                                # %land.rhs.i
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.bu	$a0, $sp, 116
	bltu	$s3, $a0, .LBB0_7
# %bb.9:                                # %land.rhs.i
                                        #   in Loop: Header=BB0_7 Depth=1
	sll.d	$a0, $fp, $a0
	and	$a0, $a0, $s2
	beqz	$a0, .LBB0_7
.LBB0_10:                               # %while.cond109.i.preheader
	ori	$fp, $zero, 1
	lu12i.w	$a0, 2
	ori	$s2, $a0, 1025
	ori	$s3, $zero, 15
	.p2align	4, , 16
.LBB0_11:                               # %while.cond109.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $sp, 116
	bltu	$s3, $a0, .LBB0_14
# %bb.12:                               # %while.cond109.i
                                        #   in Loop: Header=BB0_11 Depth=1
	sll.d	$a0, $fp, $a0
	and	$a0, $a0, $s2
	beqz	$a0, .LBB0_14
# %bb.13:                               # %land.rhs114.i
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.d	$a0, $sp, 116
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getline_from_mbox)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_11
.LBB0_14:                               # %while.end121.i
	ld.d	$a0, $s5, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.b	$zero, $sp, 1116
	pcalau12i	$a0, %pc_hi20(.L.str.246)
	addi.d	$a0, $a0, %pc_lo12(.L.str.246)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(messageCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_58
# %bb.15:                               # %if.end.i.i
	move	$s2, $a0
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 116
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$s6, $zero
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	move	$s8, $zero
	move	$s5, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	addi.d	$a0, $zero, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.247)
	addi.d	$a0, $a0, %pc_lo12(.L.str.247)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.248)
	addi.d	$a0, $a0, %pc_lo12(.L.str.248)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	ori	$fp, $zero, 1
	b	.LBB0_64
.LBB0_16:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -111
	b	.LBB0_168
.LBB0_17:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -115
	b	.LBB0_168
.LBB0_18:                               # %if.then5.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_168
.LBB0_19:                               # %if.then9.i
	pcaddu18i	$ra, %call36(tableCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	move	$s2, $s5
	bltz	$a0, .LBB0_162
# %bb.20:                               # %for.cond.i.i
	pcalau12i	$a0, %pc_hi20(cli_parse_mbox.rfc821)
	addi.d	$s2, $a0, %pc_lo12(cli_parse_mbox.rfc821)
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_162
# %bb.21:                               # %for.cond.1.i.i
	pcalau12i	$a0, %pc_hi20(cli_parse_mbox.rfc821)
	addi.d	$s2, $a0, %pc_lo12(cli_parse_mbox.rfc821)
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_162
# %bb.22:                               # %for.cond.2.i.i
	pcaddu18i	$ra, %call36(tableCreate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(cli_parse_mbox.subtype)
	addi.d	$s2, $a1, %pc_lo12(cli_parse_mbox.subtype)
	st.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.23:                               # %for.cond4.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.24:                               # %for.cond4.1.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.25:                               # %for.cond4.2.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.26:                               # %for.cond4.3.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.27:                               # %for.cond4.4.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.28:                               # %for.cond4.5.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.29:                               # %for.cond4.6.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.30:                               # %for.cond4.7.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.31:                               # %for.cond4.8.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.32:                               # %for.cond4.9.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 11
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.33:                               # %for.cond4.10.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.34:                               # %for.cond4.11.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.35:                               # %for.cond4.12.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.36:                               # %for.cond4.13.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.37:                               # %for.cond4.14.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.38:                               # %for.cond4.15.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.39:                               # %for.cond4.16.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.40:                               # %for.cond4.17.i.i
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_161
# %bb.41:                               # %for.cond4.17.i.if.end15_crit_edge.i
	pcalau12i	$a0, %pc_hi20(cli_parse_mbox.rfc821)
	ld.d	$a0, $a0, %pc_lo12(cli_parse_mbox.rfc821)
	b	.LBB0_4
.LBB0_42:                               # %if.then21.i
	pcaddu18i	$ra, %call36(messageCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_163
# %bb.43:                               # %if.end26.i
	move	$s7, $a0
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $s4
	pcaddu18i	$ra, %call36(messageSetCTX)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	ori	$s8, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s3, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$fp, $zero, -1
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_44:                               # %if.else67.i
                                        #   in Loop: Header=BB0_46 Depth=1
	addi.d	$a1, $sp, 116
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageAddStr)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_59
.LBB0_45:                               # %do.cond.i
                                        #   in Loop: Header=BB0_46 Depth=1
	addi.d	$a0, $sp, 116
	ori	$a1, $zero, 1000
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$s8, $s6
	move	$s7, $s2
	beqz	$a0, .LBB0_59
.LBB0_46:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 116
	pcaddu18i	$ra, %call36(cli_chomp)
	jirl	$ra, $ra, 0
	andi	$a0, $s4, 1
	beqz	$a0, .LBB0_48
# %bb.47:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_46 Depth=1
	addi.d	$a0, $sp, 116
	ori	$a2, $zero, 5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_50
.LBB0_48:                               # %if.else47.i
                                        #   in Loop: Header=BB0_46 Depth=1
	ld.bu	$a0, $sp, 116
	sltui	$s4, $a0, 1
	move	$s6, $s8
	move	$s2, $s7
	addi.d	$a0, $sp, 116
	pcaddu18i	$ra, %call36(isuuencodebegin)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_44
.LBB0_49:                               # %if.then54.i
                                        #   in Loop: Header=BB0_46 Depth=1
	addi.d	$a1, $sp, 116
	move	$a0, $s2
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(uudecodeFile)
	jirl	$ra, $ra, 0
	blt	$fp, $a0, .LBB0_45
	b	.LBB0_44
.LBB0_50:                               # %if.then32.i
                                        #   in Loop: Header=BB0_46 Depth=1
	addi.w	$s6, $s8, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(parseEmailHeaders)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_55
# %bb.51:                               # %if.end36.i
                                        #   in Loop: Header=BB0_46 Depth=1
	move	$s2, $a0
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(messageSetCTX)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageGetBody)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_54
# %bb.52:                               # %if.then38.i
                                        #   in Loop: Header=BB0_46 Depth=1
	addi.d	$a2, $sp, 72
	move	$a0, $s2
	move	$a1, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(parseEmailBody)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_56
# %bb.53:                               # %if.then38.i
                                        #   in Loop: Header=BB0_46 Depth=1
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_169
.LBB0_54:                               # %if.end46.i
                                        #   in Loop: Header=BB0_46 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageReset)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(messageSetCTX)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 1
	addi.d	$a0, $sp, 116
	pcaddu18i	$ra, %call36(isuuencodebegin)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_49
	b	.LBB0_44
.LBB0_55:                               #   in Loop: Header=BB0_46 Depth=1
	move	$s2, $s7
	b	.LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_46 Depth=1
	move	$s7, $s2
.LBB0_57:                               # %do.cond.sink.split.i
                                        #   in Loop: Header=BB0_46 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(messageReset)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 1
	b	.LBB0_45
.LBB0_58:                               # %if.end126.thread.thread.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB0_157
.LBB0_59:                               # %if.end126.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(parseEmailHeaders)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	move	$s2, $s0
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	bnez	$s0, .LBB0_152
	b	.LBB0_157
.LBB0_60:                               # %if.then86.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	or	$a1, $a0, $a1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
.LBB0_61:                               # %cleanup110.thread.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$s3, $zero
.LBB0_62:                               #   in Loop: Header=BB0_64 Depth=1
	move	$s8, $zero
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB0_63:                               # %do.cond.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getline_from_mbox)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_142
.LBB0_64:                               # %do.body.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_86 Depth 2
                                        #     Child Loop BB0_129 Depth 2
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(cli_chomp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	ld.bu	$s4, $a0, 0
	andi	$a0, $s3, 1
	beqz	$a0, .LBB0_67
# %bb.65:                               # %if.then9.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(boundaryStart)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_67
# %bb.66:                               # %if.then12.i72.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_67:                               # %if.end14.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	andi	$a0, $fp, 1
	beqz	$a0, .LBB0_71
# %bb.68:                               # %if.then16.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 3119
	add.d	$a1, $sp, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB0_95
# %bb.69:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a1, $zero, 3119
	add.d	$a1, $sp, $a1
	ld.bu	$fp, $a1, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a1, $a0, $a1
	lu12i.w	$a2, 2
	and	$a1, $a1, $a2
	bnez	$a1, .LBB0_84
# %bb.70:                               # %if.end54.thread.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	bnez	$s8, .LBB0_101
	b	.LBB0_117
	.p2align	4, , 16
.LBB0_71:                               # %if.else169.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	beqz	$s4, .LBB0_77
# %bb.72:                               # %land.lhs.true171.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(isuuencodebegin)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_80
# %bb.73:                               # %if.then174.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 3119
	add.d	$a1, $sp, $a0
	move	$a0, $s2
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(uudecodeFile)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB0_75
# %bb.74:                               # %if.then178.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 3119
	add.d	$a1, $sp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageAddStr)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_142
.LBB0_75:                               #   in Loop: Header=BB0_64 Depth=1
	move	$s7, $zero
.LBB0_76:                               #   in Loop: Header=BB0_64 Depth=1
	move	$s3, $zero
	move	$fp, $zero
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_77:                               # %if.then188.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	andi	$a0, $s6, 1
	beqz	$a0, .LBB0_79
# %bb.78:                               # %land.lhs.true191.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageGetMimeType)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB0_107
.LBB0_79:                               #   in Loop: Header=BB0_64 Depth=1
	move	$s3, $s7
	b	.LBB0_104
.LBB0_80:                               # %if.else197.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	andi	$a0, $s7, 1
	beqz	$a0, .LBB0_103
# %bb.81:                               # %if.then199.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	ori	$a1, $zero, 3119
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 1
	beqz	$a0, .LBB0_76
# %bb.82:                               # %newline_in_header.exit.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	bnez	$a0, .LBB0_104
# %bb.83:                               #   in Loop: Header=BB0_64 Depth=1
	move	$fp, $s3
	b	.LBB0_63
.LBB0_84:                               # %if.then28.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 2118
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3119
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2118
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	ori	$a5, $zero, 1
	ori	$a6, $zero, 13
	ori	$a7, $zero, 10
	bltz	$a1, .LBB0_92
# %bb.85:                               # %if.end5.i.i.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	bstrpick.d	$a1, $a0, 30, 0
	ori	$a2, $zero, 2118
	add.d	$a3, $sp, $a2
	ldx.bu	$a2, $a1, $a3
	add.d	$a1, $a3, $a1
	.p2align	4, , 16
.LBB0_86:                               # %do.body.i.i.i.i
                                        #   Parent Loop BB0_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a2, $a2, 255
	beqz	$a2, .LBB0_88
# %bb.87:                               # %if.then6.i.i.i.i
                                        #   in Loop: Header=BB0_86 Depth=2
	st.b	$zero, $a1, 0
.LBB0_88:                               # %do.cond.i.i.i.i
                                        #   in Loop: Header=BB0_86 Depth=2
	addi.w	$a2, $a0, 0
	blt	$a2, $a5, .LBB0_92
# %bb.89:                               # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB0_86 Depth=2
	ld.b	$a2, $a1, -1
	ld.d	$a3, $s3, 0
	slli.d	$a4, $a2, 1
	ldx.h	$a3, $a3, $a4
	bltz	$a3, .LBB0_92
# %bb.90:                               # %switch.early.test.i.i.i.i
                                        #   in Loop: Header=BB0_86 Depth=2
	andi	$a2, $a2, 255
	beq	$a2, $a6, .LBB0_92
# %bb.91:                               # %switch.early.test.i.i.i.i
                                        #   in Loop: Header=BB0_86 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, -1
	bne	$a2, $a7, .LBB0_86
.LBB0_92:                               # %strstrip.exit.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 2118
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB0_109
# %bb.93:                               #   in Loop: Header=BB0_64 Depth=1
	move	$a0, $s5
.LBB0_94:                               # %cleanup.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$s5, $a0
.LBB0_95:                               # %if.end54.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	bnez	$s4, .LBB0_99
# %bb.96:                               # %if.end54.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	bnez	$s8, .LBB0_99
# %bb.97:                               # %if.then60.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_108
# %bb.98:                               # %if.end63.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$fp, $zero
	move	$s8, $zero
	ori	$s7, $zero, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_63
.LBB0_99:                               # %if.else64.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	beqz	$s8, .LBB0_116
# %bb.100:                              # %if.else114.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	beqz	$s4, .LBB0_122
.LBB0_101:                              # %if.then117.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	add.d	$fp, $a0, $fp
	move	$a0, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_115
# %bb.102:                              # %if.end124.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a1, $zero, 3119
	add.d	$a1, $sp, $a1
	move	$s8, $a0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	b	.LBB0_123
.LBB0_103:                              #   in Loop: Header=BB0_64 Depth=1
	move	$s3, $zero
.LBB0_104:                              # %if.end204.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	sltui	$s6, $s4, 1
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	masknez	$a1, $a0, $s6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageAddStr)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_142
# %bb.105:                              #   in Loop: Header=BB0_64 Depth=1
	move	$fp, $zero
	move	$s7, $s3
.LBB0_106:                              # %do.cond.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$s3, $zero
	b	.LBB0_63
.LBB0_107:                              # %if.then195.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.249)
	addi.d	$a0, $a0, %pc_lo12(.L.str.249)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$fp, $zero
	ori	$s6, $zero, 1
	b	.LBB0_63
.LBB0_108:                              #   in Loop: Header=BB0_64 Depth=1
	move	$s3, $zero
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	b	.LBB0_62
.LBB0_109:                              # %if.then38.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	beqz	$s8, .LBB0_112
# %bb.110:                              # %if.then40.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$a0, $s2
	move	$a1, $s8
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(parseEmailHeader)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_135
# %bb.111:                              # %if.end45.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_112:                              # %if.end46.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$s3, $zero, 1
	bnez	$s5, .LBB0_62
# %bb.113:                              # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$s8, $zero
	move	$a0, $zero
	beqz	$s5, .LBB0_94
# %bb.114:                              # %cleanup.thread.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$fp, $zero, 1
	b	.LBB0_63
.LBB0_115:                              #   in Loop: Header=BB0_64 Depth=1
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_135
.LBB0_116:                              # %if.else64.if.then67_crit_edge.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	ld.bu	$fp, $a0, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
.LBB0_117:                              # %if.then67.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ext.w.b	$a1, $fp
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_61
# %bb.118:                              # %if.end77.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_60
# %bb.119:                              # %lor.lhs.false81.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a2, $a0, %pc_lo12(.L.str.42)
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2118
	add.d	$a3, $sp, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_strtokbuf)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_60
# %bb.120:                              # %if.end92.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 2118
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 1117
	pcaddu18i	$ra, %call36(rfc822comments)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 2118
	add.d	$a2, $sp, $a2
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 3
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB0_136
# %bb.121:                              # %cleanup110.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ori	$a0, $zero, 3119
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$fp, $a0, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_64 Depth=1
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
.LBB0_123:                              # %if.end127.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	beq	$a0, $a1, .LBB0_125
# %bb.124:                              # %if.then131.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$s3, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_135
.LBB0_125:                              # %if.end141.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	add.d	$a0, $s8, $fp
	ld.bu	$a0, $a0, -2
	ori	$fp, $zero, 1
	ori	$a1, $zero, 59
	beq	$a0, $a1, .LBB0_106
# %bb.126:                              # %if.end147.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	beqz	$s4, .LBB0_131
# %bb.127:                              # %land.lhs.true149.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ld.bu	$a0, $s8, 0
	beqz	$a0, .LBB0_131
# %bb.128:                              # %while.body.i.i.i.preheader
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$a1, $zero
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB0_129:                              # %while.body.i.i.i
                                        #   Parent Loop BB0_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a3, $a0, -34
	ldx.bu	$a0, $s8, $a2
	sltui	$a3, $a3, 1
	add.d	$a1, $a1, $a3
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB0_129
# %bb.130:                              # %count_quotes.exit.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	andi	$a0, $a1, 1
	bnez	$a0, .LBB0_135
.LBB0_131:                              # %if.end154.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(rfc822comments)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_133
# %bb.132:                              # %if.then157.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$s3, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s8, $s3
.LBB0_133:                              # %if.end158.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$a0, $s2
	move	$a1, $s8
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(parseEmailHeader)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_106
# %bb.134:                              # %cleanup164.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$s8, $zero
	b	.LBB0_63
.LBB0_135:                              #   in Loop: Header=BB0_64 Depth=1
	move	$s3, $zero
	ori	$fp, $zero, 1
	b	.LBB0_63
.LBB0_136:                              # %sw.default.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_140
# %bb.137:                              # %sw.default.i.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a0, $zero, 2118
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_140
# %bb.138:                              # %if.end.i.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	ori	$a0, $zero, 2118
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_140
# %bb.139:                              # %if.end4.i.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	ori	$a0, $zero, 2118
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	b	.LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_64 Depth=1
	ori	$a0, $zero, 1
.LBB0_141:                              # %cleanup110.thread.i.i
                                        #   in Loop: Header=BB0_64 Depth=1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_61
.LBB0_142:                              # %do.end.i.i
	beqz	$s5, .LBB0_144
# %bb.143:                              # %if.then220.i.i
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_144:                              # %if.end221.i.i
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	beqz	$s8, .LBB0_149
# %bb.145:                              # %if.then223.i.i
	ld.bu	$a0, $s8, 0
	beqz	$a0, .LBB0_148
# %bb.146:                              # %if.then223.i.i
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB0_148
# %bb.147:                              # %sw.bb226.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.250)
	addi.d	$a0, $a0, %pc_lo12(.L.str.250)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_148:                              # %if.end228.i.i
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_149:                              # %if.end229.i.i
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_151
# %bb.150:
	pcalau12i	$a0, %pc_hi20(.L.str.252)
	addi.d	$a0, $a0, %pc_lo12(.L.str.252)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB0_152
	b	.LBB0_157
.LBB0_151:                              # %if.then231.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.251)
	addi.d	$a0, $a0, %pc_lo12(.L.str.251)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB0_157
.LBB0_152:                              # %land.lhs.true131.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageGetBody)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_156
# %bb.153:                              # %if.then134.i
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(messageSetCTX)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 72
	move	$a0, $s2
	move	$a1, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(parseEmailBody)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB0_156
# %bb.154:                              # %if.then134.i
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	addi.w	$fp, $zero, -124
	jr	$a0
.LBB0_155:                              # %sw.bb138.i
	ori	$fp, $zero, 1
	b	.LBB0_166
.LBB0_156:                              # %if.end140.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
.LBB0_157:                              # %land.lhs.true143.i
	ld.w	$a0, $s4, 52
	beqz	$a0, .LBB0_159
# %bb.158:                              # %land.lhs.true145.i
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_160
.LBB0_159:
	move	$fp, $zero
	b	.LBB0_167
.LBB0_160:                              # %if.then148.i
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	st.d	$a1, $a0, 0
	st.w	$zero, $s4, 52
	ori	$fp, $zero, 1
	b	.LBB0_167
.LBB0_161:                              # %if.then12.i.i
	pcalau12i	$a0, %pc_hi20(cli_parse_mbox.rfc821)
	ld.d	$a0, $a0, %pc_lo12(cli_parse_mbox.rfc821)
	pcaddu18i	$ra, %call36(tableDestroy)
	jirl	$ra, $ra, 0
.LBB0_162:                              # %if.then12.i
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(tableDestroy)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, 0
	st.d	$zero, $s5, 0
	pcalau12i	$a0, %pc_hi20(cli_parse_mbox.subtype)
	st.d	$zero, $a0, %pc_lo12(cli_parse_mbox.subtype)
.LBB0_163:                              # %cleanup88.thread.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_168
.LBB0_164:                              # %sw.bb136.i
	addi.w	$fp, $zero, -100
	b	.LBB0_166
.LBB0_165:                              # %sw.bb137.i
	addi.w	$fp, $zero, -102
.LBB0_166:                              # %if.end140.thread124.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
.LBB0_167:                              # %if.end151.i
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB0_168:                              # %return
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 144
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
.LBB0_169:                              # %if.then128.i
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB0_155
.Lfunc_end0:
	.size	cli_mbox, .Lfunc_end0-cli_mbox
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_166-.LJTI0_0
	.word	.LBB0_156-.LJTI0_0
	.word	.LBB0_156-.LJTI0_0
	.word	.LBB0_155-.LJTI0_0
	.word	.LBB0_164-.LJTI0_0
	.word	.LBB0_165-.LJTI0_0
                                        # -- End function
	.text
	.globl	strstrip                        # -- Begin function strstrip
	.p2align	5
	.type	strstrip,@function
strstrip:                               # @strstrip
# %bb.0:                                # %entry
	beqz	$a0, .LBB1_9
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	bltz	$a1, .LBB1_10
# %bb.2:                                # %if.end5.i
	bstrpick.d	$a1, $a0, 30, 0
	add.d	$s0, $fp, $a1
	ldx.bu	$a1, $fp, $a1
	ori	$fp, $zero, 1
	ori	$s1, $zero, 13
	ori	$s2, $zero, 10
	.p2align	4, , 16
.LBB1_3:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	andi	$a1, $a1, 255
	move	$s3, $a0
	beqz	$a1, .LBB1_5
# %bb.4:                                # %if.then6.i
                                        #   in Loop: Header=BB1_3 Depth=1
	st.b	$zero, $s0, 0
.LBB1_5:                                # %do.cond.i
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.w	$a0, $s3, 0
	blt	$a0, $fp, .LBB1_11
# %bb.6:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB1_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, -1
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	slli.d	$a2, $a2, 1
	ldx.h	$a0, $a0, $a2
	bltz	$a0, .LBB1_12
# %bb.7:                                # %switch.early.test.i
                                        #   in Loop: Header=BB1_3 Depth=1
	beq	$a1, $s1, .LBB1_12
# %bb.8:                                # %switch.early.test.i
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$a0, $s3, -1
	bne	$a1, $s2, .LBB1_3
	b	.LBB1_12
.LBB1_9:
	move	$a0, $zero
	ret
.LBB1_10:
	move	$a0, $zero
	b	.LBB1_13
.LBB1_11:
	move	$s3, $zero
.LBB1_12:                               # %do.end.i
	addi.w	$a0, $s3, 0
.LBB1_13:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	strstrip, .Lfunc_end1-strstrip
                                        # -- End function
	.p2align	5                               # -- Begin function parseEmailHeaders
	.type	parseEmailHeaders,@function
parseEmailHeaders:                      # @parseEmailHeaders
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1136
	st.d	$ra, $sp, 1128                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1048                  # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB2_41
# %bb.1:                                # %if.end
	pcaddu18i	$ra, %call36(messageCreate)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetBody)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_50
# %bb.2:                                # %for.body.preheader
	move	$s2, $a0
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s7, $zero
	move	$s1, $zero
	move	$s0, $zero
	ori	$s8, $zero, 1
	addi.d	$a0, $zero, -1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$s4, $a0, %pc_lo12(.L.str.38)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$s5, $a0, %pc_lo12(.L.str.39)
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$s6, $a0, %pc_lo12(.L.str.40)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_3:                                #   in Loop: Header=BB2_5 Depth=1
	move	$s8, $zero
.LBB2_4:                                # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$s2, $s2, 8
	beqz	$s2, .LBB2_43
.LBB2_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	ld.d	$a0, $s2, 0
	andi	$s8, $s8, 1
	beqz	$a0, .LBB2_19
# %bb.6:                                # %if.end6
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$s8, .LBB2_23
# %bb.7:                                # %if.then7
                                        #   in Loop: Header=BB2_5 Depth=1
	sltui	$a0, $s3, 1
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s5, $a0
	or	$a1, $a0, $a1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB2_21
# %bb.8:                                # %if.else14
                                        #   in Loop: Header=BB2_5 Depth=1
	beqz	$s1, .LBB2_26
# %bb.9:                                # %if.then57
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s7, $a0, $s7
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_40
# %bb.10:                               # %if.end64
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$s8, $a0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$s1, $s8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(next_is_folded_header)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 1
	bnez	$a0, .LBB2_4
.LBB2_11:                               # %if.end70
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(lineUnlink)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, 0
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB2_15
# %bb.12:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a1, $zero
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB2_13:                               # %while.body.i
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a3, $a0, -34
	ldx.bu	$a0, $s1, $a2
	sltui	$a3, $a3, 1
	add.d	$a1, $a1, $a3
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB2_13
# %bb.14:                               # %count_quotes.exit
                                        #   in Loop: Header=BB2_5 Depth=1
	andi	$a0, $a1, 1
	bnez	$a0, .LBB2_40
.LBB2_15:                               # %if.end78
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(rfc822comments)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.16:                               # %if.then81
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s1, $s3
.LBB2_17:                               # %if.end82
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(parseEmailHeader)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_4
# %bb.18:                               # %if.end87
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_19:                               # %if.end6.thread
                                        #   in Loop: Header=BB2_5 Depth=1
	beqz	$s8, .LBB2_3
# %bb.20:                               # %if.then7.thread
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB2_21:                               # %if.then10
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	andi	$a0, $s0, 1
	beqz	$a0, .LBB2_42
# %bb.22:                               #   in Loop: Header=BB2_5 Depth=1
	move	$s8, $zero
	ori	$s0, $zero, 1
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_23:                               # %if.then94
                                        #   in Loop: Header=BB2_5 Depth=1
	beqz	$s3, .LBB2_3
# %bb.24:                               # %if.end98
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 12
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_3
# %bb.25:                               # %newline_in_header.exit
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 6
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_3
	b	.LBB2_53
.LBB2_26:                               # %if.then16
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1
	bnez	$a0, .LBB2_39
# %bb.27:                               # %if.end22
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a1, $zero, 58
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_33
# %bb.28:                               # %lor.lhs.false
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a2, $a0, %pc_lo12(.L.str.42)
	addi.d	$a3, $sp, 47
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_strtokbuf)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_33
# %bb.29:                               # %if.end35
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $sp, 47
	move	$a1, $zero
	pcaddu18i	$ra, %call36(rfc822comments)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	addi.d	$a2, $sp, 47
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beqz	$s1, .LBB2_31
# %bb.30:                               # %if.then46
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_31:                               # %if.end47
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$a0, $s8, -1
	ori	$a1, $zero, 3
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB2_34
# %bb.32:                               # %cleanup
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$s7, $a0, 1
	ori	$s0, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(next_is_folded_header)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 1
	bnez	$a0, .LBB2_4
	b	.LBB2_11
.LBB2_33:                               # %if.then29
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a2, $zero, 5
	move	$a0, $s3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	or	$s0, $a0, $s0
	b	.LBB2_39
.LBB2_34:                               # %sw.default
                                        #   in Loop: Header=BB2_5 Depth=1
	andi	$a0, $s0, 1
	bnez	$a0, .LBB2_38
# %bb.35:                               # %sw.default.i
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	addi.d	$a0, $sp, 47
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_38
# %bb.36:                               # %if.end.i
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 47
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_38
# %bb.37:                               # %if.end4.i
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	addi.d	$a0, $sp, 47
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	sltui	$s0, $a0, 1
	b	.LBB2_39
.LBB2_38:                               #   in Loop: Header=BB2_5 Depth=1
	ori	$s0, $zero, 1
.LBB2_39:                               # %cleanup.thread
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$s1, $zero
.LBB2_40:                               #   in Loop: Header=BB2_5 Depth=1
	ori	$s8, $zero, 1
	b	.LBB2_4
.LBB2_41:
	move	$fp, $zero
	b	.LBB2_52
.LBB2_42:                               # %if.then12
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s0, $zero
.LBB2_43:                               # %for.end
	beqz	$s1, .LBB2_48
.LBB2_44:                               # %if.then109
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB2_47
# %bb.45:                               # %if.then109
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB2_47
# %bb.46:                               # %sw.bb112
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB2_47:                               # %if.end114
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_48:                               # %if.end114
	andi	$a0, $s0, 1
	beqz	$a0, .LBB2_50
# %bb.49:
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	b	.LBB2_51
.LBB2_50:                               # %if.then117
	move	$a0, $fp
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
.LBB2_51:                               # %cleanup119.sink.split
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB2_52:                               # %cleanup119
	move	$a0, $fp
	ld.d	$s8, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1128                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1136
	ret
.LBB2_53:                               # %if.end102
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageMoveText)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB2_44
	b	.LBB2_48
.Lfunc_end2:
	.size	parseEmailHeaders, .Lfunc_end2-parseEmailHeaders
                                        # -- End function
	.p2align	5                               # -- Begin function parseEmailBody
	.type	parseEmailBody,@function
parseEmailBody:                         # @parseEmailBody
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1200
	st.d	$ra, $sp, 1192                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1160                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1152                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1144                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1128                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1112                  # 8-byte Folded Spill
	move	$s6, $a2
	ld.d	$a2, $a2, 32
	ld.d	$a4, $a2, 24
	ld.bu	$a4, $a4, 8
	move	$s2, $a3
	move	$s1, $a1
	move	$s0, $a0
	andi	$a0, $a4, 8
	st.d	$a1, $sp, 96
	bnez	$a0, .LBB3_2
# %bb.1:
	move	$s8, $zero
	b	.LBB3_3
.LBB3_2:                                # %land.rhs
	ld.d	$a0, $a2, 56
	ld.bu	$a0, $a0, 24
	andi	$s8, $a0, 1
.LBB3_3:                                # %land.end
	ld.d	$fp, $a2, 32
	ld.w	$a1, $s6, 8
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_11
# %bb.4:                                # %if.then
	ld.w	$a0, $fp, 8
	beqz	$a0, .LBB3_9
# %bb.5:                                # %if.then8
	bgeu	$a0, $s2, .LBB3_9
# %bb.6:                                # %if.then12
	ld.d	$fp, $s6, 32
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	ori	$s5, $zero, 4
	beqz	$a0, .LBB3_197
# %bb.7:                                # %if.then15
	ld.d	$a0, $fp, 0
	ori	$s5, $zero, 3
	beqz	$a0, .LBB3_197
# %bb.8:                                # %if.then17
	pcalau12i	$a1, %pc_hi20(.L.str.78)
	addi.d	$a1, $a1, %pc_lo12(.L.str.78)
	st.d	$a1, $a0, 0
	b	.LBB3_197
.LBB3_9:                                # %if.end20
	ld.w	$a1, $fp, 4
	beqz	$a1, .LBB3_11
# %bb.10:                               # %land.lhs.true
	ld.w	$a0, $s6, 8
	bgeu	$a0, $a1, .LBB3_20
.LBB3_11:                               # %if.end28
	ori	$s3, $zero, 1
	st.w	$s3, $sp, 104
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	beqz	$s0, .LBB3_121
# %bb.12:                               # %land.lhs.true30
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetBody)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_121
# %bb.13:                               # %if.then32
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetMimeType)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetMimeSubtype)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	move	$s7, $a0
	move	$a0, $a1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	move	$s5, $a0
	bne	$s4, $a1, .LBB3_21
# %bb.14:                               # %if.then32
	ori	$a0, $zero, 1
	bne	$s5, $a0, .LBB3_21
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
.LBB3_16:                               # %sw.bb.sink.split
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageSetMimeSubtype)
	jirl	$ra, $ra, 0
.LBB3_17:                               # %sw.bb
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(textAddMessage)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $sp, 96
	beqz	$s8, .LBB3_32
.LBB3_18:                               # %sw.bb53
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 32
	ld.bu	$a0, $a0, 40
	srli.d	$a0, $a0, 7
	addi.d	$a2, $s5, -3
	sltui	$a2, $a2, 1
	and	$a0, $a0, $a2
	or	$a0, $a0, $s8
	andi	$a0, $a0, 1
	beqz	$a0, .LBB3_32
# %bb.19:                               # %if.then61
	addi.d	$a0, $s5, -3
	sltui	$a3, $a0, 1
	addi.d	$a2, $sp, 104
	move	$a0, $s0
	pcaddu18i	$ra, %call36(checkURLs)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 104
	addi.d	$a0, $s3, -3
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB3_123
.LBB3_20:                               # %if.then25
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 5
	b	.LBB3_197
.LBB3_21:                               # %if.else40
	ori	$a0, $zero, 4
	bne	$s4, $a0, .LBB3_33
# %bb.22:                               # %land.lhs.true42
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_43
# %bb.23:                               # %if.end48.thread460
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	ori	$a1, $zero, 4
	ori	$fp, $zero, 4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetEncoding)
	jirl	$ra, $ra, 0
	bltu	$fp, $a0, .LBB3_25
# %bb.24:                               # %if.end48.thread460
	ori	$a1, $zero, 1
	sll.d	$a0, $a1, $a0
	andi	$a0, $a0, 25
	bnez	$a0, .LBB3_26
.LBB3_25:                               # %sw.default546
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB3_26:                               # %sw.epilog547
	st.w	$zero, $sp, 104
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a1, $a0, %pc_lo12(.L.str.120)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_40
# %bb.27:                               # %lor.lhs.false551
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a1, $a0, %pc_lo12(.L.str.121)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_40
# %bb.28:                               # %if.else577
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a1, $a0, %pc_lo12(.L.str.123)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_118
# %bb.29:                               # %if.else582
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a1, $a0, %pc_lo12(.L.str.124)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_199
# %bb.30:                               # %if.else593
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a1, $a0, %pc_lo12(.L.str.125)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_201
# %bb.31:                               # %if.else598
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	b	.LBB3_197
.LBB3_32:
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	b	.LBB3_123
.LBB3_33:                               # %if.end48
	move	$fp, $s7
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 7
	bltu	$a0, $s4, .LBB3_113
# %bb.34:                               # %if.end48
	slli.d	$a0, $s4, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	move	$s7, $s1
	jr	$a0
.LBB3_35:                               # %sw.bb68
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_200
# %bb.36:                               # %if.end73
	move	$s5, $a0
	ld.bu	$a0, $fp, 0
	bnez	$a0, .LBB3_38
# %bb.37:                               # %if.then77
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$fp, $a0, %pc_lo12(.L.str.22)
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(messageSetMimeSubtype)
	jirl	$ra, $ra, 0
.LBB3_38:                               # %if.end78
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetBody)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_202
# %bb.39:
	move	$s7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$s4, $a0, %pc_lo12(.L.str.91)
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	b	.LBB3_46
.LBB3_40:                               # %if.then555
	ld.d	$a1, $s6, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(parseEmailHeaders)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_112
# %bb.41:                               # %if.then560
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageSetCTX)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageReset)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageGetBody)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_119
# %bb.42:                               # %if.then571
	addi.w	$a3, $s2, 1
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $s6
	pcaddu18i	$ra, %call36(parseEmailBody)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.w	$a0, $sp, 104
	b	.LBB3_120
.LBB3_43:
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	b	.LBB3_16
.LBB3_44:                               # %if.then96
                                        #   in Loop: Header=BB3_46 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(exportBinhexMessage)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_210
.LBB3_45:                               # %do.cond
                                        #   in Loop: Header=BB3_46 Depth=1
	ld.d	$s7, $s7, 8
	beqz	$s7, .LBB3_203
.LBB3_46:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB3_45
# %bb.47:                               # %if.then86
                                        #   in Loop: Header=BB3_46 Depth=1
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(boundaryStart)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_52
# %bb.48:                               # %if.end92
                                        #   in Loop: Header=BB3_46 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(binhexBegin)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB3_44
# %bb.49:                               # %if.else100
                                        #   in Loop: Header=BB3_46 Depth=1
	ld.d	$a0, $s7, 8
	beqz	$a0, .LBB3_45
# %bb.50:                               # %land.lhs.true102
                                        #   in Loop: Header=BB3_46 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(encodingLine)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 8
	bne	$a0, $a1, .LBB3_45
# %bb.51:                               # %if.then107
                                        #   in Loop: Header=BB3_46 Depth=1
	ld.d	$a0, $a1, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetEncoding)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_45
.LBB3_52:                               # %for.body.lr.ph
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $zero
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 11
	ori	$a0, $a0, 449
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s5, $zero, 1
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
.LBB3_53:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_58 Depth 2
                                        #     Child Loop BB3_64 Depth 2
                                        #       Child Loop BB3_70 Depth 3
	slli.d	$fp, $s8, 3
	addi.d	$a1, $fp, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_211
# %bb.54:                               # %if.end137
                                        #   in Loop: Header=BB3_53 Depth=1
	move	$s6, $a0
	pcaddu18i	$ra, %call36(messageCreate)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s6, $fp
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB3_100
# %bb.55:                               # %if.end143
                                        #   in Loop: Header=BB3_53 Depth=1
	move	$s4, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageSetCTX)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s7, 8
	beqz	$s7, .LBB3_205
# %bb.56:                               # %while.body.preheader
                                        #   in Loop: Header=BB3_53 Depth=1
	alsl.d	$a0, $s8, $s6, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB3_58
.LBB3_57:                               # %if.end157
                                        #   in Loop: Header=BB3_58 Depth=2
	ld.d	$s7, $s7, 8
	beqz	$s7, .LBB3_205
.LBB3_58:                               # %while.body
                                        #   Parent Loop BB3_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB3_57
# %bb.59:                               # %land.lhs.true150
                                        #   in Loop: Header=BB3_58 Depth=2
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_57
# %bb.60:                               # %do.body170.preheader
                                        #   in Loop: Header=BB3_53 Depth=1
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	move	$s6, $s3
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	b	.LBB3_64
.LBB3_61:                               #   in Loop: Header=BB3_64 Depth=2
	move	$s8, $fp
.LBB3_62:                               # %while.end288
                                        #   in Loop: Header=BB3_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	move	$a1, $s8
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 16
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(parseEmailHeader)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_63:                               # %do.cond317
                                        #   in Loop: Header=BB3_64 Depth=2
	ld.d	$s7, $s7, 8
	beqz	$s7, .LBB3_101
.LBB3_64:                               # %do.body170
                                        #   Parent Loop BB3_53 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_70 Depth 3
	move	$fp, $s8
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beqz	$s6, .LBB3_75
# %bb.65:                               # %if.then197
                                        #   in Loop: Header=BB3_64 Depth=2
	beqz	$s8, .LBB3_84
# %bb.66:                               # %if.end235
                                        #   in Loop: Header=BB3_64 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	lu12i.w	$a1, 2
	and	$a0, $a0, $a1
	bnez	$a0, .LBB3_90
# %bb.67:                               # %if.end250
                                        #   in Loop: Header=BB3_64 Depth=2
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(rfc822comments)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$a0, .LBB3_69
# %bb.68:                               # %if.then254
                                        #   in Loop: Header=BB3_64 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB3_69:                               # %if.end256
                                        #   in Loop: Header=BB3_64 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(next_is_folded_header)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	beqz	$a0, .LBB3_61
.LBB3_70:                               # %while.body264
                                        #   Parent Loop BB3_53 Depth=1
                                        #     Parent Loop BB3_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s7, $s7, 8
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.bu	$a0, $a0, 1
	beqz	$a0, .LBB3_98
# %bb.71:                               # %if.end274
                                        #   in Loop: Header=BB3_70 Depth=3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	addi.d	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_74
# %bb.72:                               # %cleanup285
                                        #   in Loop: Header=BB3_70 Depth=3
	move	$s4, $a0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(next_is_folded_header)
	jirl	$ra, $ra, 0
	move	$s3, $s4
	bnez	$a0, .LBB3_70
# %bb.73:                               #   in Loop: Header=BB3_64 Depth=2
	move	$s3, $s4
.LBB3_74:                               # %while.end288
                                        #   in Loop: Header=BB3_64 Depth=2
	move	$s8, $fp
	b	.LBB3_99
.LBB3_75:                               # %if.else295
                                        #   in Loop: Header=BB3_64 Depth=2
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	beqz	$s8, .LBB3_82
# %bb.76:                               # %if.end.i
                                        #   in Loop: Header=BB3_64 Depth=2
	ld.bu	$a0, $s8, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB3_82
# %bb.77:                               # %if.end4.i
                                        #   in Loop: Header=BB3_64 Depth=2
	ld.bu	$a0, $s8, 1
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB3_82
# %bb.78:                               # %if.end10.i
                                        #   in Loop: Header=BB3_64 Depth=2
	addi.d	$s6, $s8, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s6
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_82
# %bb.79:                               # %if.end15.i
                                        #   in Loop: Header=BB3_64 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s4, 2
	bltu	$a0, $a1, .LBB3_82
# %bb.80:                               # %if.end20.i
                                        #   in Loop: Header=BB3_64 Depth=2
	ldx.bu	$a0, $s6, $s4
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB3_82
# %bb.81:                               # %if.end26.i
                                        #   in Loop: Header=BB3_64 Depth=2
	add.d	$a0, $s6, $s4
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 45
	beq	$a1, $a2, .LBB3_111
.LBB3_82:                               # %if.else299
                                        #   in Loop: Header=BB3_64 Depth=2
	move	$a0, $s8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(boundaryStart)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_102
# %bb.83:                               # %cleanup314
                                        #   in Loop: Header=BB3_64 Depth=2
	ld.d	$a1, $s7, 0
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageAddLine)
	jirl	$ra, $ra, 0
	move	$s6, $zero
	move	$s3, $zero
	nor	$a1, $a0, $zero
	bstrpick.d	$a1, $a1, 31, 31
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$s8, $fp
	bgez	$a0, .LBB3_63
	b	.LBB3_104
.LBB3_84:                               # %if.then200
                                        #   in Loop: Header=BB3_64 Depth=2
	ld.d	$a0, $s7, 8
	move	$s8, $fp
	beqz	$a0, .LBB3_94
# %bb.85:                               # %land.lhs.true203
                                        #   in Loop: Header=BB3_64 Depth=2
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB3_94
# %bb.86:                               # %if.then206
                                        #   in Loop: Header=BB3_64 Depth=2
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageGetEncoding)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_92
# %bb.87:                               # %land.lhs.true212
                                        #   in Loop: Header=BB3_64 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageGetMimeType)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_92
# %bb.88:                               # %land.lhs.true216
                                        #   in Loop: Header=BB3_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a1, $a0, %pc_lo12(.L.str.59)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_92
# %bb.89:                               # %if.then219
                                        #   in Loop: Header=BB3_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a1, $a0, %pc_lo12(.L.str.59)
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageSetEncoding)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	b	.LBB3_63
.LBB3_90:                               # %if.then243
                                        #   in Loop: Header=BB3_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageGetMimeType)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	beqz	$a0, .LBB3_95
# %bb.91:                               #   in Loop: Header=BB3_64 Depth=2
	move	$s8, $fp
	b	.LBB3_63
.LBB3_92:                               # %if.end220
                                        #   in Loop: Header=BB3_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a1, $a0, %pc_lo12(.L.str.97)
	ori	$a2, $zero, 7
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_96
# %bb.93:                               # %lor.lhs.false224
                                        #   in Loop: Header=BB3_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a1, $a0, %pc_lo12(.L.str.98)
	ori	$a2, $zero, 9
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_96
.LBB3_94:                               # %if.end233
                                        #   in Loop: Header=BB3_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s6, $zero
	b	.LBB3_97
.LBB3_95:                               # %if.then247
                                        #   in Loop: Header=BB3_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a1, $a0, %pc_lo12(.L.str.66)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageSetMimeType)
	jirl	$ra, $ra, 0
	move	$s8, $fp
	b	.LBB3_63
.LBB3_96:                               # %if.then228
                                        #   in Loop: Header=BB3_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
.LBB3_97:                               # %do.cond317
                                        #   in Loop: Header=BB3_64 Depth=2
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	b	.LBB3_63
.LBB3_98:                               # %if.then273
                                        #   in Loop: Header=BB3_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	move	$s8, $fp
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s6, $zero
.LBB3_99:                               # %while.end288
                                        #   in Loop: Header=BB3_64 Depth=2
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	b	.LBB3_62
.LBB3_100:                              # %if.then142
                                        #   in Loop: Header=BB3_53 Depth=1
	move	$s6, $zero
	addi.d	$s8, $s8, -1
	b	.LBB3_109
.LBB3_101:                              #   in Loop: Header=BB3_53 Depth=1
	move	$s7, $zero
	move	$s3, $s6
	b	.LBB3_104
.LBB3_102:                              #   in Loop: Header=BB3_53 Depth=1
	ori	$s3, $zero, 1
.LBB3_103:                              # %do.end321
                                        #   in Loop: Header=BB3_53 Depth=1
	move	$s8, $fp
.LBB3_104:                              # %do.end321
                                        #   in Loop: Header=BB3_53 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	move	$a1, $s8
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a3, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	move	$s6, $zero
	ori	$a1, $zero, 15
	bltu	$a1, $a0, .LBB3_109
# %bb.105:                              # %do.end321
                                        #   in Loop: Header=BB3_53 Depth=1
	ori	$fp, $zero, 1
	sll.d	$a0, $fp, $a0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	and	$a0, $a0, $a1
	beqz	$a0, .LBB3_109
# %bb.106:                              # %sw.bb322
                                        #   in Loop: Header=BB3_53 Depth=1
	addi.d	$a3, $sp, 104
	addi.d	$a6, $sp, 96
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	move	$a2, $s8
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	move	$a5, $s0
	move	$a7, $s2
	pcaddu18i	$ra, %call36(do_multipart)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 104
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $a1, -2
	sltui	$a0, $a0, 1
	addi.d	$a2, $s5, -1
	sltui	$a2, $a2, 1
	masknez	$a3, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a3, $a0, $a3
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	maskeqz	$a3, $a3, $a2
	masknez	$a1, $a1, $a2
	or	$s5, $a3, $a1
	st.w	$s5, $sp, 104
	beqz	$a0, .LBB3_108
# %bb.107:                              # %if.then334
                                        #   in Loop: Header=BB3_53 Depth=1
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
.LBB3_108:                              # %if.end339
                                        #   in Loop: Header=BB3_53 Depth=1
	addi.d	$s8, $s8, -1
	addi.d	$a0, $s5, -3
	sltui	$s6, $a0, 1
.LBB3_109:                              # %for.inc
                                        #   in Loop: Header=BB3_53 Depth=1
	addi.w	$s8, $s8, 1
	beqz	$s7, .LBB3_212
# %bb.110:                              # %for.inc
                                        #   in Loop: Header=BB3_53 Depth=1
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	beqz	$s6, .LBB3_53
	b	.LBB3_212
.LBB3_111:                              # %boundaryEnd.exit
                                        #   in Loop: Header=BB3_53 Depth=1
	addi.d	$a2, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.194)
	addi.d	$a0, $a0, %pc_lo12(.L.str.194)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	b	.LBB3_103
.LBB3_112:
	move	$s3, $zero
	b	.LBB3_121
.LBB3_113:                              # %sw.default612
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB3_114:                              # %sw.bb613
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageToFileblob)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_121
# %bb.115:                              # %if.then617
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fileblobScanAndDestroy)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	bne	$a0, $s3, .LBB3_117
# %bb.116:                              # %if.then621
	ori	$s3, $zero, 3
	st.w	$s3, $sp, 104
.LBB3_117:                              # %if.end622
	ld.w	$a0, $fp, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageReset)
	jirl	$ra, $ra, 0
	b	.LBB3_121
.LBB3_118:                              # %if.then581
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	ori	$s3, $zero, 1
	st.w	$s3, $sp, 104
	b	.LBB3_122
.LBB3_119:
	move	$s3, $zero
.LBB3_120:                              # %if.end574
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
.LBB3_121:                              # %if.end651
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
.LBB3_122:                              # %if.end651
	move	$s7, $s1
.LBB3_123:                              # %if.end651
	bnez	$s1, .LBB3_166
# %bb.124:                              # %if.end651
	beqz	$s7, .LBB3_166
# %bb.125:                              # %for.cond657.preheader
	ori	$s1, $zero, 3
	bne	$s3, $s1, .LBB3_127
.LBB3_126:                              # %for.end817.loopexit
	st.w	$s1, $sp, 104
	b	.LBB3_165
.LBB3_127:                              # %for.body664.preheader
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$s2, $a0, %pc_lo12(.L.str.131)
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$s5, $a0, %pc_lo12(.L.str.132)
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a0, $a0, %pc_lo12(.L.str.136)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s6, $s7
	move	$s1, $s3
	ori	$s3, $zero, 3
	b	.LBB3_130
	.p2align	4, , 16
.LBB3_128:                              #   in Loop: Header=BB3_130 Depth=1
	move	$s4, $s6
	ld.d	$s6, $s4, 8
	beqz	$s6, .LBB3_126
.LBB3_129:                              # %for.inc815
                                        #   in Loop: Header=BB3_130 Depth=1
	beq	$s1, $s3, .LBB3_126
.LBB3_130:                              # %for.body664
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_136 Depth 2
                                        #     Child Loop BB3_144 Depth 2
                                        #     Child Loop BB3_153 Depth 2
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB3_128
# %bb.131:                              # %if.end669
                                        #   in Loop: Header=BB3_130 Depth=1
	andi	$a1, $fp, 1
	bnez	$a1, .LBB3_133
# %bb.132:                              # %if.else672
                                        #   in Loop: Header=BB3_130 Depth=1
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(isBounceStart)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_151
.LBB3_133:                              # %if.end677
                                        #   in Loop: Header=BB3_130 Depth=1
	ld.d	$s4, $s6, 8
	beqz	$s4, .LBB3_126
# %bb.134:                              # %if.then680
                                        #   in Loop: Header=BB3_130 Depth=1
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(isBounceStart)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	beqz	$a0, .LBB3_136
	b	.LBB3_128
	.p2align	4, , 16
.LBB3_135:                              # %for.inc714
                                        #   in Loop: Header=BB3_136 Depth=2
	ld.d	$s4, $s4, 8
	beqz	$s4, .LBB3_164
.LBB3_136:                              # %for.body690
                                        #   Parent Loop BB3_130 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB3_142
# %bb.137:                              # %if.end695
                                        #   in Loop: Header=BB3_136 Depth=2
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a2, $zero, 13
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_135
# %bb.138:                              # %if.then700
                                        #   in Loop: Header=BB3_136 Depth=2
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_135
# %bb.139:                              # %if.end705
                                        #   in Loop: Header=BB3_136 Depth=2
	bnez	$s8, .LBB3_141
# %bb.140:                              # %land.lhs.true707
                                        #   in Loop: Header=BB3_136 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a1, $a0, %pc_lo12(.L.str.133)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_135
.LBB3_141:                              # %land.lhs.true718
                                        #   in Loop: Header=BB3_130 Depth=1
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB3_144
.LBB3_142:                              # %if.then722
                                        #   in Loop: Header=BB3_130 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	ori	$s3, $zero, 3
	ld.d	$s6, $s4, 8
	bnez	$s6, .LBB3_129
	b	.LBB3_126
	.p2align	4, , 16
.LBB3_143:                              # %for.inc749
                                        #   in Loop: Header=BB3_144 Depth=2
	ld.d	$s4, $s4, 8
	beqz	$s4, .LBB3_164
.LBB3_144:                              # %for.body726
                                        #   Parent Loop BB3_130 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB3_143
# %bb.145:                              # %if.then729
                                        #   in Loop: Header=BB3_144 Depth=2
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a2, $zero, 13
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_143
# %bb.146:                              # %land.lhs.true734
                                        #   in Loop: Header=BB3_144 Depth=2
	move	$a0, $s3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_143
# %bb.147:                              # %land.lhs.true738
                                        #   in Loop: Header=BB3_144 Depth=2
	move	$a0, $s3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_143
# %bb.148:                              # %land.lhs.true742
                                        #   in Loop: Header=BB3_144 Depth=2
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_143
# %bb.149:                              # %if.end755
                                        #   in Loop: Header=BB3_130 Depth=1
	pcaddu18i	$ra, %call36(fileblobCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_126
# %bb.150:                              # %if.end760
                                        #   in Loop: Header=BB3_130 Depth=1
	move	$s3, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $fp, 0
	move	$a0, $s3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fileblobSetFilename)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 28
	move	$a0, $s3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fileblobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 32
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fileblobSetCTX)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	ori	$fp, $zero, 1
	b	.LBB3_153
.LBB3_151:                              #   in Loop: Header=BB3_130 Depth=1
	move	$fp, $zero
	move	$s4, $s6
	ld.d	$s6, $s4, 8
	bnez	$s6, .LBB3_129
	b	.LBB3_126
.LBB3_152:                              # %do.cond793
                                        #   in Loop: Header=BB3_153 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fileblobInfected)
	jirl	$ra, $ra, 0
	move	$s6, $s4
	bnez	$a0, .LBB3_161
.LBB3_153:                              # %do.body764
                                        #   Parent Loop BB3_130 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB3_155
# %bb.154:                              # %if.else772
                                        #   in Loop: Header=BB3_153 Depth=2
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fileblobAddData)
	jirl	$ra, $ra, 0
	b	.LBB3_156
.LBB3_155:                              # %if.then768
                                        #   in Loop: Header=BB3_153 Depth=2
	andi	$a0, $fp, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $zero
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
.LBB3_156:                              # %if.end776
                                        #   in Loop: Header=BB3_153 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a1, $a0, %pc_lo12(.L.str.141)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fileblobAddData)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s6, 8
	beqz	$s4, .LBB3_160
# %bb.157:                              # %if.end782
                                        #   in Loop: Header=BB3_153 Depth=2
	ld.d	$a0, $s4, 0
	sltui	$a1, $a0, 1
	or	$a1, $fp, $a1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB3_152
# %bb.158:                              # %if.then787
                                        #   in Loop: Header=BB3_153 Depth=2
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(isBounceStart)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_152
# %bb.159:                              # %if.then790
                                        #   in Loop: Header=BB3_130 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	b	.LBB3_162
.LBB3_160:                              #   in Loop: Header=BB3_130 Depth=1
	move	$fp, $zero
	b	.LBB3_163
.LBB3_161:                              #   in Loop: Header=BB3_130 Depth=1
	move	$fp, $zero
.LBB3_162:                              # %do.end797
                                        #   in Loop: Header=BB3_130 Depth=1
	move	$s6, $s4
.LBB3_163:                              # %do.end797
                                        #   in Loop: Header=BB3_130 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fileblobScanAndDestroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a3, 8
	masknez	$a2, $s1, $a0
	ori	$s3, $zero, 3
	maskeqz	$a0, $s3, $a0
	or	$s1, $a0, $a2
	addi.d	$a0, $a1, 1
	st.w	$a0, $a3, 8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sltui	$a0, $a1, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$s4, $a0, $a1
	ld.d	$s6, $s4, 8
	bnez	$s6, .LBB3_129
	b	.LBB3_126
.LBB3_164:                              # %if.then754
	st.w	$s1, $sp, 104
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB3_165:                              # %for.end817
	move	$a0, $s7
	pcaddu18i	$ra, %call36(textDestroy)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 96
	move	$s3, $s1
.LBB3_166:                              # %if.end818
	beqz	$s0, .LBB3_196
# %bb.167:                              # %if.end818
	ori	$a0, $zero, 3
	beq	$s3, $a0, .LBB3_196
# %bb.168:                              # %if.then823
	move	$a0, $s0
	pcaddu18i	$ra, %call36(encodingLine)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_183
# %bb.169:                              # %land.lhs.true828
	move	$a0, $s0
	pcaddu18i	$ra, %call36(bounceBegin)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_183
# %bb.170:                              # %if.then832
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$s0, $a0, %pc_lo12(.L.str.42)
	ori	$s7, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.236)
	addi.d	$s2, $a0, %pc_lo12(.L.str.236)
	pcalau12i	$a0, %pc_hi20(.L.str.237)
	addi.d	$a0, $a0, %pc_lo12(.L.str.237)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	ori	$s3, $zero, 3
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$s4, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$s5, $a0, %pc_lo12(.L.str.50)
	move	$s1, $fp
	b	.LBB3_173
.LBB3_171:                              # %if.else.i
                                        #   in Loop: Header=BB3_173 Depth=1
	addi.d	$a0, $sp, 111
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s1, $a0
	or	$fp, $a0, $a1
	.p2align	4, , 16
.LBB3_172:                              # %for.inc.i
                                        #   in Loop: Header=BB3_173 Depth=1
	ld.d	$s1, $s1, 8
	beqz	$s1, .LBB3_195
.LBB3_173:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_180
# %bb.174:                              # %if.end.i450
                                        #   in Loop: Header=BB3_173 Depth=1
	move	$s6, $a0
	addi.d	$a3, $sp, 111
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_strtokbuf)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_180
# %bb.175:                              # %if.end4.i451
                                        #   in Loop: Header=BB3_173 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	addi.d	$a1, $sp, 111
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB3_179
# %bb.176:                              # %if.end4.i451
                                        #   in Loop: Header=BB3_173 Depth=1
	beq	$a0, $s8, .LBB3_191
# %bb.177:                              # %if.end4.i451
                                        #   in Loop: Header=BB3_173 Depth=1
	beq	$a0, $s3, .LBB3_192
# %bb.178:                              # %sw.default.i
                                        #   in Loop: Header=BB3_173 Depth=1
	addi.d	$a0, $sp, 111
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bnez	$a0, .LBB3_171
	b	.LBB3_181
.LBB3_179:                              # %sw.bb.i
                                        #   in Loop: Header=BB3_173 Depth=1
	move	$a0, $s6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_182
	.p2align	4, , 16
.LBB3_180:                              #   in Loop: Header=BB3_173 Depth=1
	move	$a1, $fp
.LBB3_181:                              # %cleanup.thread.i
                                        #   in Loop: Header=BB3_173 Depth=1
	move	$fp, $a1
	b	.LBB3_172
.LBB3_182:                              # %cleanup.i
                                        #   in Loop: Header=BB3_173 Depth=1
	move	$a0, $s6
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_172
	b	.LBB3_192
.LBB3_183:                              # %if.else836
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetMimeType)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(encodingLine)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$s1, $a1, .LBB3_185
# %bb.184:                              # %if.then840
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_188
	b	.LBB3_196
.LBB3_185:                              # %if.else844
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_188
# %bb.186:                              # %if.then848
	move	$s1, $a0
	pcaddu18i	$ra, %call36(fileblobCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_196
# %bb.187:                              # %if.then852
	move	$s0, $a0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a2, $a0, %pc_lo12(.L.str.139)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fileblobSetFilename)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a1, $a0, %pc_lo12(.L.str.140)
	ori	$a2, $zero, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fileblobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fileblobSetCTX)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(textToFileblob)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(fileblobScanAndDestroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	ld.w	$a2, $fp, 8
	ori	$a3, $zero, 3
	maskeqz	$a0, $a3, $a0
	or	$s3, $a0, $a1
	addi.d	$a0, $a2, 1
	st.w	$a0, $fp, 8
	b	.LBB3_196
.LBB3_188:                              # %if.then871
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$a0, $a0, %pc_lo12(.L.str.144)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.241)
	addi.d	$a1, $a0, %pc_lo12(.L.str.241)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageToFileblob)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_190
# %bb.189:                              # %saveTextPart.exit
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.242)
	addi.d	$a0, $a0, %pc_lo12(.L.str.242)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fileblobScanAndDestroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	ori	$a2, $zero, 3
	maskeqz	$a0, $a2, $a0
	or	$s3, $a0, $a1
.LBB3_190:                              # %if.else880
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageReset)
	jirl	$ra, $ra, 0
	b	.LBB3_196
.LBB3_191:                              # %sw.bb13.i
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a1, $a0, %pc_lo12(.L.str.132)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_195
.LBB3_192:                              # %land.lhs.true30.i
	pcaddu18i	$ra, %call36(fileblobCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_195
# %bb.193:                              # %if.then33.i
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.238)
	addi.d	$a0, $a0, %pc_lo12(.L.str.238)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a2, $a0, %pc_lo12(.L.str.139)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fileblobSetFilename)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fileblobSetCTX)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(textToFileblob)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_198
# %bb.194:                              # %exportBounceMessage.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fileblobScanAndDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	addi.d	$a1, $a1, 1
	st.w	$a1, $s1, 8
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	ori	$a2, $zero, 3
	maskeqz	$a0, $a2, $a0
	or	$s3, $a0, $a1
	b	.LBB3_196
.LBB3_195:                              # %exportBounceMessage.exit.thread
	pcalau12i	$a0, %pc_hi20(.L.str.240)
	addi.d	$a0, $a0, %pc_lo12(.L.str.240)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
.LBB3_196:                              # %if.end890
	sltu	$a0, $zero, $s3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	andi	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	ori	$a3, $zero, 3
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s3, $a0
	or	$s5, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a0, $a0, %pc_lo12(.L.str.145)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB3_197:                              # %cleanup898
	move	$a0, $s5
	ld.d	$s8, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1192                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1200
	ret
.LBB3_198:                              # %exportBounceMessage.exit.thread517
	pcalau12i	$a0, %pc_hi20(.L.str.239)
	addi.d	$a0, $a0, %pc_lo12(.L.str.239)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fileblobDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 8
	b	.LBB3_196
.LBB3_199:                              # %if.then586
	ld.d	$a1, $s6, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(rfc1341)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	slt	$s5, $a1, $a0
	b	.LBB3_197
.LBB3_200:                              # %if.then72
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_121
.LBB3_201:                              # %if.then597
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a0, $a0, %pc_lo12(.L.str.126)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	b	.LBB3_197
.LBB3_202:                              # %if.then82
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_204
.LBB3_203:                              # %if.then124
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB3_204:                              # %if.end651
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB3_121
.LBB3_205:                              # %if.then160
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_208
# %bb.206:                              # %land.lhs.true162
	pcaddu18i	$ra, %call36(binhexBegin)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_209
# %bb.207:                              # %if.then166
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, -1
	b	.LBB3_209
.LBB3_208:
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
.LBB3_209:                              # %for.inc.thread
	move	$s6, $zero
	addi.w	$s8, $s8, 1
	b	.LBB3_213
.LBB3_210:                              # %if.end125
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s7, 24
	ori	$s5, $zero, 3
	st.w	$s5, $sp, 104
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s8, $zero
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	ori	$s6, $zero, 1
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB3_213
.LBB3_211:
	move	$s6, $zero
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
.LBB3_212:
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
.LBB3_213:                              # %for.end
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a1, $s3, .LBB3_216
# %bb.214:                              # %for.end
	ori	$a0, $zero, 14
	bne	$a1, $a0, .LBB3_218
# %bb.215:                              # %sw.bb351
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_217
.LBB3_216:                              # %sw.bb352
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB3_217:                              # %sw.epilog353
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
.LBB3_218:                              # %sw.epilog353
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_221
# %bb.219:                              # %land.lhs.true355
	beq	$a0, $s0, .LBB3_222
# %bb.220:                              # %if.then358
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
.LBB3_221:                              # %if.end359
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
.LBB3_222:                              # %if.end359
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB3_229
# %bb.223:                              # %if.then368
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	beqz	$s0, .LBB3_233
# %bb.224:                              # %for.cond371.preheader
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB3_232
# %bb.225:                              # %for.body374.preheader
	move	$fp, $s0
	b	.LBB3_227
.LBB3_226:                              # %for.inc382
                                        #   in Loop: Header=BB3_227 Depth=1
	addi.d	$s8, $s8, -1
	addi.d	$fp, $fp, 8
	beqz	$s8, .LBB3_232
.LBB3_227:                              # %for.body374
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB3_226
# %bb.228:                              # %if.then378
                                        #   in Loop: Header=BB3_227 Depth=1
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	b	.LBB3_226
.LBB3_229:                              # %lor.lhs.false362
	ld.d	$s4, $sp, 96
	bnez	$s8, .LBB3_237
# %bb.230:                              # %lor.lhs.false362
	bnez	$s4, .LBB3_237
# %bb.231:                              # %if.then368.thread
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	beqz	$s0, .LBB3_233
.LBB3_232:                              # %for.end384
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_233:                              # %if.end385
	bnez	$s1, .LBB3_236
# %bb.234:                              # %if.end385
	ld.d	$a0, $sp, 96
	beqz	$a0, .LBB3_236
# %bb.235:                              # %if.then390
	pcaddu18i	$ra, %call36(textDestroy)
	jirl	$ra, $ra, 0
.LBB3_236:                              # %if.end391
	addi.d	$a0, $s5, -4
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 2
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 4
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $s5, -3
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 3
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
	b	.LBB3_197
.LBB3_237:                              # %if.end394
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 24
	move	$a1, $fp
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -5
	ori	$a1, $zero, 8
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB3_253
# %bb.238:                              # %if.end394
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_239:                              # %sw.bb450
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB3_240:                              # %sw.bb451
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$s4, .LBB3_244
# %bb.241:                              # %if.then453
	move	$s3, $zero
	beqz	$a0, .LBB3_245
# %bb.242:                              # %if.then453
	beq	$a0, $s0, .LBB3_245
# %bb.243:                              # %if.then458
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	b	.LBB3_245
.LBB3_244:
	move	$s3, $a0
.LBB3_245:                              # %if.end460
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB3_251
# %bb.246:                              # %for.body464.lr.ph
	move	$s4, $zero
	addi.w	$s2, $s2, 1
	ori	$fp, $zero, 3
	ori	$s6, $zero, 4
	move	$a0, $s3
.LBB3_247:                              # %for.body464
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $sp, 104
	addi.d	$a6, $sp, 96
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	move	$a2, $s4
	move	$a4, $s7
	move	$a5, $s0
	move	$a7, $s2
	pcaddu18i	$ra, %call36(do_multipart)
	jirl	$ra, $ra, 0
	ld.w	$s5, $sp, 104
	beq	$s5, $fp, .LBB3_254
# %bb.248:                              # %for.body464
                                        #   in Loop: Header=BB3_247 Depth=1
	beq	$s5, $s6, .LBB3_250
# %bb.249:                              # %for.inc475
                                        #   in Loop: Header=BB3_247 Depth=1
	addi.w	$s4, $s4, 1
	bne	$s8, $s4, .LBB3_247
.LBB3_250:
	move	$fp, $zero
	b	.LBB3_255
.LBB3_251:
	move	$fp, $zero
	move	$a0, $s3
	bnez	$a0, .LBB3_272
	b	.LBB3_274
.LBB3_252:                              # %sw.bb478
	move	$a0, $s6
	move	$a1, $s8
	pcaddu18i	$ra, %call36(getTextPart)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s6, $a0
	addi.w	$a3, $s2, 1
	move	$a1, $s4
	move	$a2, $s7
	pcaddu18i	$ra, %call36(parseEmailBody)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.LBB3_253:
	move	$fp, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_272
	b	.LBB3_274
.LBB3_254:                              # %sw.epilog502.loopexit
	ori	$fp, $zero, 1
.LBB3_255:                              # %sw.epilog502
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_272
	b	.LBB3_274
.LBB3_256:                              # %sw.bb397
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$a1, $s8
	pcaddu18i	$ra, %call36(getTextPart)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bge	$s3, $a0, .LBB3_262
# %bb.257:                              # %if.then402
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(messageGetBody)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_267
# %bb.258:                              # %if.then407
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a1, $a0, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(textAddMessage)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$s7, $zero
	st.d	$a0, $sp, 96
	b	.LBB3_288
.LBB3_259:                              # %sw.bb489
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a1, $a0, %pc_lo12(.L.str.112)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_268
# %bb.260:                              # %if.then492
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_269
# %bb.261:                              # %if.else497
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a0, $a0, %pc_lo12(.L.str.115)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	b	.LBB3_270
.LBB3_262:                              # %for.cond413.preheader
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB3_266
# %bb.263:                              # %for.body416.preheader
	move	$fp, $zero
	ori	$s7, $zero, 5
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
.LBB3_264:                              # %for.body416
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(messageGetMimeType)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB3_287
# %bb.265:                              # %for.inc426
                                        #   in Loop: Header=BB3_264 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$s6, $s6, -1
	addi.d	$s8, $s8, 8
	bnez	$s6, .LBB3_264
.LBB3_266:                              # %if.end429
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $s3, .LBB3_293
.LBB3_267:
	move	$s7, $zero
	b	.LBB3_288
.LBB3_268:                              # %if.else499
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a0, $a0, %pc_lo12(.L.str.116)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	b	.LBB3_271
.LBB3_269:                              # %if.then496
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 2
.LBB3_270:                              # %if.end498
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_271:                              # %sw.epilog502
	move	$fp, $zero
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_274
.LBB3_272:                              # %sw.epilog502
	beq	$a0, $s0, .LBB3_274
# %bb.273:                              # %if.then507
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
.LBB3_274:                              # %if.end508
	bnez	$s1, .LBB3_280
# %bb.275:                              # %if.end508
	ld.d	$s0, $sp, 96
	beqz	$s0, .LBB3_280
# %bb.276:                              # %if.then513
	bnez	$fp, .LBB3_279
# %bb.277:                              # %land.lhs.true515
	pcaddu18i	$ra, %call36(fileblobCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_279
# %bb.278:                              # %if.then519
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a0, $a0, %pc_lo12(.L.str.117)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a2, $a0, %pc_lo12(.L.str.118)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fileblobSetFilename)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fileblobSetCTX)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(textToFileblob)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fileblobDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s7, 8
.LBB3_279:                              # %if.end524
	move	$a0, $s0
	pcaddu18i	$ra, %call36(textDestroy)
	jirl	$ra, $ra, 0
.LBB3_280:                              # %if.end525
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB3_285
# %bb.281:                              # %for.body529.preheader
	move	$fp, $s6
	b	.LBB3_283
.LBB3_282:                              # %for.inc537
                                        #   in Loop: Header=BB3_283 Depth=1
	addi.d	$s8, $s8, -1
	addi.d	$fp, $fp, 8
	beqz	$s8, .LBB3_286
.LBB3_283:                              # %for.body529
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB3_282
# %bb.284:                              # %if.then533
                                        #   in Loop: Header=BB3_283 Depth=1
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	b	.LBB3_282
.LBB3_285:                              # %for.end539
	beqz	$s6, .LBB3_197
.LBB3_286:                              # %if.then541
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB3_197
.LBB3_287:                              # %if.then422
	ld.d	$s7, $s8, 0
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
.LBB3_288:                              # %if.else433
	addi.w	$a3, $s2, 1
	move	$a0, $s7
	move	$a1, $s4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(parseEmailBody)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.w	$a0, $sp, 104
	beqz	$s7, .LBB3_291
# %bb.289:                              # %if.else433
	ori	$a0, $zero, 1
	bne	$s5, $a0, .LBB3_291
# %bb.290:                              # %if.then440
	move	$a0, $s7
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	stx.d	$zero, $s6, $a0
	ori	$s5, $zero, 1
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	b	.LBB3_239
.LBB3_291:                              # %if.else443
	ori	$a0, $zero, 3
	ori	$fp, $zero, 1
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	bne	$s5, $a0, .LBB3_239
# %bb.292:
	ori	$s5, $zero, 3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_272
	b	.LBB3_274
.LBB3_293:                              # %if.then432
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	b	.LBB3_239
.Lfunc_end3:
	.size	parseEmailBody, .Lfunc_end3-parseEmailBody
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_17-.LJTI3_0
	.word	.LBB3_114-.LJTI3_0
	.word	.LBB3_123-.LJTI3_0
	.word	.LBB3_123-.LJTI3_0
	.word	.LBB3_113-.LJTI3_0
	.word	.LBB3_35-.LJTI3_0
	.word	.LBB3_18-.LJTI3_0
	.word	.LBB3_123-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_240-.LJTI3_1
	.word	.LBB3_239-.LJTI3_1
	.word	.LBB3_239-.LJTI3_1
	.word	.LBB3_252-.LJTI3_1
	.word	.LBB3_252-.LJTI3_1
	.word	.LBB3_256-.LJTI3_1
	.word	.LBB3_240-.LJTI3_1
	.word	.LBB3_240-.LJTI3_1
	.word	.LBB3_259-.LJTI3_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function getline_from_mbox
	.type	getline_from_mbox,@function
getline_from_mbox:                      # @getline_from_mbox
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_2
.LBB4_1:
	move	$fp, $zero
	b	.LBB4_15
.LBB4_2:                                # %do.body.preheader
	ori	$s2, $zero, 1000
	addi.w	$s4, $zero, -1
	ori	$s5, $zero, 13
	ori	$s6, $zero, 10
	ori	$s7, $zero, 1
	move	$s3, $fp
	.p2align	4, , 16
.LBB4_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ferror)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_1
# %bb.4:                                # %if.end8
                                        #   in Loop: Header=BB4_3 Depth=1
	beq	$s1, $s4, .LBB4_14
# %bb.5:                                # %if.end8
                                        #   in Loop: Header=BB4_3 Depth=1
	beq	$s1, $s5, .LBB4_10
# %bb.6:                                # %if.end8
                                        #   in Loop: Header=BB4_3 Depth=1
	beq	$s1, $s6, .LBB4_9
# %bb.7:                                # %do.cond
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $s3, 1
	addi.d	$s2, $s2, -1
	st.b	$s1, $s3, 0
	move	$s3, $a0
	bltu	$s7, $s2, .LBB4_3
# %bb.8:                                # %if.then36
	st.b	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.245)
	addi.d	$a0, $a0, %pc_lo12(.L.str.245)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB4_15
.LBB4_9:                                # %sw.bb
	addi.d	$s2, $s3, 1
	ori	$a0, $zero, 10
	st.b	$a0, $s3, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB4_11
	b	.LBB4_13
.LBB4_10:                               # %sw.bb17
	addi.d	$s2, $s3, 1
	ori	$s1, $zero, 10
	st.b	$s1, $s3, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB4_13
.LBB4_11:                               # %land.lhs.true22
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_13
# %bb.12:                               # %if.end33.sink.split
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
.LBB4_13:                               # %if.end33
	move	$s3, $s2
.LBB4_14:                               # %if.end33
	st.b	$zero, $s3, 0
.LBB4_15:                               # %cleanup38
	move	$a0, $fp
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
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
.Lfunc_end4:
	.size	getline_from_mbox, .Lfunc_end4-getline_from_mbox
                                        # -- End function
	.p2align	5                               # -- Begin function rfc822comments
	.type	rfc822comments,@function
rfc822comments:                         # @rfc822comments
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB5_25
# %bb.1:                                # %if.end
	move	$fp, $a1
	move	$s0, $a0
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_25
# %bb.2:                                # %if.end3
	bnez	$fp, .LBB5_4
# %bb.3:                                # %if.then5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$a0, .LBB5_25
.LBB5_4:                                # %if.end11
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$t2, $s0, 0
	move	$a0, $fp
	beqz	$t2, .LBB5_28
# %bb.5:                                # %for.body.preheader
	move	$a6, $zero
	move	$a7, $zero
	move	$t0, $zero
	addi.d	$a1, $s0, 1
	ori	$a2, $zero, 40
	ori	$a3, $zero, 34
	ori	$a4, $zero, 41
	ori	$a5, $zero, 92
	move	$a0, $fp
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_6:                                # %if.then38
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$t0, $zero
	move	$a6, $zero
	addi.d	$t3, $a0, 1
	st.b	$t2, $a0, 0
	move	$a0, $t3
.LBB5_7:                                # %for.inc
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.bu	$t2, $a1, 0
	addi.d	$a1, $a1, 1
	beqz	$t2, .LBB5_26
.LBB5_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bnez	$t0, .LBB5_17
# %bb.9:                                # %if.else
                                        #   in Loop: Header=BB5_8 Depth=1
	blt	$a2, $t2, .LBB5_14
# %bb.10:                               # %if.else
                                        #   in Loop: Header=BB5_8 Depth=1
	beq	$t2, $a3, .LBB5_19
# %bb.11:                               # %if.else
                                        #   in Loop: Header=BB5_8 Depth=1
	bne	$t2, $a2, .LBB5_17
# %bb.12:                               # %sw.bb20
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$t0, $zero
	beqz	$a7, .LBB5_23
# %bb.13:                               # %if.then22
                                        #   in Loop: Header=BB5_8 Depth=1
	st.b	$a2, $a0, 0
	b	.LBB5_22
	.p2align	4, , 16
.LBB5_14:                               # %if.else
                                        #   in Loop: Header=BB5_8 Depth=1
	beq	$t2, $a4, .LBB5_20
# %bb.15:                               # %if.else
                                        #   in Loop: Header=BB5_8 Depth=1
	bne	$t2, $a5, .LBB5_17
# %bb.16:                               #   in Loop: Header=BB5_8 Depth=1
	move	$t1, $zero
	ori	$t0, $zero, 1
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_17:                               # %if.then13
                                        #   in Loop: Header=BB5_8 Depth=1
	ori	$t1, $zero, 1
	beqz	$a6, .LBB5_6
# %bb.18:                               #   in Loop: Header=BB5_8 Depth=1
	move	$t0, $zero
	b	.LBB5_7
.LBB5_19:                               # %sw.bb17
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$t0, $zero
	st.b	$a3, $a0, 0
	addi.d	$a0, $a0, 1
	sltui	$a7, $a7, 1
	ori	$t1, $zero, 1
	b	.LBB5_7
.LBB5_20:                               # %sw.bb26
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$t0, $zero
	beqz	$a7, .LBB5_24
# %bb.21:                               # %if.then28
                                        #   in Loop: Header=BB5_8 Depth=1
	st.b	$a4, $a0, 0
.LBB5_22:                               # %for.inc
                                        #   in Loop: Header=BB5_8 Depth=1
	addi.d	$a0, $a0, 1
	ori	$t1, $zero, 1
	ori	$a7, $zero, 1
	b	.LBB5_7
.LBB5_23:                               # %if.else24
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$a7, $zero
	addi.w	$a6, $a6, 1
	ori	$t1, $zero, 1
	b	.LBB5_7
.LBB5_24:                               # %if.else30
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$a7, $zero
	slt	$t1, $zero, $a6
	sub.w	$a6, $a6, $t1
	ori	$t1, $zero, 1
	b	.LBB5_7
.LBB5_25:
	move	$fp, $zero
	b	.LBB5_29
.LBB5_26:                               # %for.end
	bnez	$t1, .LBB5_28
# %bb.27:                               # %if.then44
	addi.d	$a1, $a0, 1
	ori	$a2, $zero, 92
	st.b	$a2, $a0, 0
	move	$a0, $a1
.LBB5_28:                               # %if.end46
	st.b	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB5_29:                               # %cleanup
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	rfc822comments, .Lfunc_end5-rfc822comments
                                        # -- End function
	.p2align	5                               # -- Begin function next_is_folded_header
	.type	next_is_folded_header,@function
next_is_folded_header:                  # @next_is_folded_header
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB6_11
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB6_9
# %bb.2:                                # %if.end3
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a1, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a1, .LBB6_10
# %bb.3:                                # %if.end9
	ori	$a1, $zero, 61
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_9
# %bb.4:                                # %if.end14
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB6_9
# %bb.5:                                # %while.body.preheader
	add.d	$a0, $fp, $a0
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 59
	ori	$a2, $zero, 1
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1536
	lu32i.d	$a3, 1
	.p2align	4, , 16
.LBB6_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a0, 0
	bltu	$a1, $a4, .LBB6_9
# %bb.7:                                # %while.body
                                        #   in Loop: Header=BB6_6 Depth=1
	sll.d	$a5, $a2, $a4
	and	$a5, $a5, $a3
	beqz	$a5, .LBB6_12
# %bb.8:                                # %sw.bb21
                                        #   in Loop: Header=BB6_6 Depth=1
	addi.d	$a0, $a0, -1
	bltu	$fp, $a0, .LBB6_6
.LBB6_9:
	move	$a0, $zero
.LBB6_10:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_11:
	move	$a0, $zero
	ret
.LBB6_12:                               # %while.body
	ori	$a1, $zero, 59
	move	$a0, $zero
	bne	$a4, $a1, .LBB6_10
# %bb.13:                               # %cleanup.loopexit
	ori	$a0, $zero, 1
	b	.LBB6_10
.Lfunc_end6:
	.size	next_is_folded_header, .Lfunc_end6-next_is_folded_header
                                        # -- End function
	.p2align	5                               # -- Begin function parseEmailHeader
	.type	parseEmailHeader,@function
parseEmailHeader:                       # @parseEmailHeader
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
	move	$s1, $a2
	move	$s2, $a1
	move	$s8, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 58
	ori	$s0, $zero, 58
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_3
# %bb.1:                                # %for.cond
	ori	$a1, $zero, 61
	ori	$s0, $zero, 61
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_3
# %bb.2:                                # %for.cond.1
	ori	$a1, $zero, 32
	ori	$s0, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_30
.LBB7_3:                                # %if.end6
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a1, $a0, %pc_lo12(.L.str.54)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_8
# %bb.4:                                # %lor.lhs.false.i
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_8
# %bb.5:                                # %if.end.i
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_9
# %bb.6:                                # %while.cond.preheader.i
	move	$fp, $a0
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	ld.bu	$a0, $s2, 0
	move	$s4, $fp
	beqz	$a0, .LBB7_32
# %bb.7:                                # %while.cond9.i.preheader
	ori	$s3, $zero, 63
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a1, $a1, %pc_lo12(.L.str.55)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 61
	move	$s4, $fp
	move	$s8, $s2
	b	.LBB7_11
.LBB7_8:                                # %rfc2047.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB7_33
.LBB7_9:                                # %if.then10
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_10:                               # %if.end18.i
                                        #   in Loop: Header=BB7_11 Depth=1
	st.b	$a0, $s4, 0
	ld.bu	$a0, $s8, 1
	addi.d	$s8, $s8, 1
	addi.d	$s4, $s4, 1
.LBB7_11:                               # %while.cond9.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	beqz	$a0, .LBB7_15
# %bb.12:                               # %while.cond9.i
                                        #   in Loop: Header=BB7_11 Depth=1
	bne	$a0, $a2, .LBB7_10
# %bb.13:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.bu	$a1, $s8, 1
	bne	$a1, $s3, .LBB7_10
# %bb.14:                               # %if.then17.i
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$s8, $s8, 2
.LBB7_15:                               # %while.cond20.i.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$s6, $s8, 3
	ld.bu	$a0, $s6, -3
	beqz	$a0, .LBB7_32
	.p2align	4, , 16
.LBB7_16:                               # %while.cond20.i
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB7_18
# %bb.17:                               # %while.body26.i
                                        #   in Loop: Header=BB7_16 Depth=2
	addi.d	$s6, $s6, 1
	ld.bu	$a0, $s6, -3
	bnez	$a0, .LBB7_16
	b	.LBB7_32
.LBB7_18:                               # %if.end33.i
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.b	$s5, $s6, -2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ldx.w	$a1, $a0, $a1
	slli.w	$a0, $a1, 24
	ext.w.b	$s7, $a1
	lu12i.w	$a1, 401408
	beq	$a0, $a1, .LBB7_20
# %bb.19:                               # %if.end33.i
                                        #   in Loop: Header=BB7_11 Depth=1
	lu12i.w	$a1, 462848
	bne	$a0, $a1, .LBB7_102
.LBB7_20:                               # %if.end48.i
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.bu	$a0, $s6, -1
	bne	$a0, $s3, .LBB7_32
# %bb.21:                               # %if.end54.i
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.bu	$a0, $s6, 0
	beqz	$a0, .LBB7_32
# %bb.22:                               # %if.end60.i
                                        #   in Loop: Header=BB7_11 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_103
# %bb.23:                               # %if.end65.i
                                        #   in Loop: Header=BB7_11 Depth=1
	move	$s5, $a0
	move	$a0, $s6
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_31
# %bb.24:                               # %if.end70.i
                                        #   in Loop: Header=BB7_11 Depth=1
	move	$s8, $a0
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	st.b	$zero, $a0, 0
	pcaddu18i	$ra, %call36(messageCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_32
# %bb.25:                               # %if.end77.i
                                        #   in Loop: Header=BB7_11 Depth=1
	move	$s6, $a0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(messageAddStr)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ori	$a0, $zero, 113
	beq	$s7, $a0, .LBB7_28
# %bb.26:                               # %if.end77.i
                                        #   in Loop: Header=BB7_11 Depth=1
	ori	$a0, $zero, 98
	bne	$s7, $a0, .LBB7_29
# %bb.27:                               # %sw.bb80.i
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
.LBB7_28:                               # %cleanup.sink.split.i
                                        #   in Loop: Header=BB7_11 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(messageSetEncoding)
	jirl	$ra, $ra, 0
.LBB7_29:                               # %cleanup.i
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$s8, $s8, 2
	ori	$a1, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(messageToBlob)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(blobGetData)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	addi.w	$a1, $s7, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(blobGetData)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	add.d	$a1, $s4, $s7
	ld.bu	$a0, $a1, -1
	addi.d	$a2, $a1, -1
	addi.d	$a3, $a0, -10
	ld.bu	$a0, $s8, 0
	sltui	$a3, $a3, 1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$s4, $a2, $a1
	ori	$a2, $zero, 61
	bnez	$a0, .LBB7_11
	b	.LBB7_32
.LBB7_30:
	addi.w	$s3, $zero, -1
	b	.LBB7_101
.LBB7_31:                               # %if.then69.i
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_32:                               # %rfc2047.exit.thread34
	st.b	$zero, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
.LBB7_33:                               # %if.end12
	st.b	$s0, $sp, 54
	st.b	$zero, $sp, 55
	addi.d	$a1, $sp, 54
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
	beqz	$a0, .LBB7_100
# %bb.34:                               # %if.end.i14
	move	$s2, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB7_100
# %bb.35:                               # %if.end5.i.i
	bstrpick.d	$a0, $s4, 30, 0
	add.d	$s0, $s2, $a0
	ldx.bu	$a1, $s2, $a0
	ori	$s5, $zero, 1
	ori	$s6, $zero, 13
	ori	$s7, $zero, 10
	.p2align	4, , 16
.LBB7_36:                               # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	andi	$a0, $a1, 255
	beqz	$a0, .LBB7_38
# %bb.37:                               # %if.then6.i.i
                                        #   in Loop: Header=BB7_36 Depth=1
	st.b	$zero, $s0, 0
.LBB7_38:                               # %do.cond.i.i
                                        #   in Loop: Header=BB7_36 Depth=1
	addi.w	$a0, $s4, 0
	blt	$a0, $s5, .LBB7_100
# %bb.39:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB7_36 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, -1
	ld.d	$a2, $a0, 0
	ext.w.b	$a3, $a1
	slli.d	$a3, $a3, 1
	ldx.h	$a2, $a2, $a3
	bltz	$a2, .LBB7_42
# %bb.40:                               # %switch.early.test.i.i
                                        #   in Loop: Header=BB7_36 Depth=1
	beq	$a1, $s6, .LBB7_42
# %bb.41:                               # %switch.early.test.i.i
                                        #   in Loop: Header=BB7_36 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s4, $s4, -1
	bne	$a1, $s7, .LBB7_36
.LBB7_42:                               # %strstrip.exit
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_100
# %bb.43:                               # %if.then22
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(rfc822comments)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_45
# %bb.44:                               # %if.then.i19
	move	$s3, $a0
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB7_46
.LBB7_45:                               # %if.else.i
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.LBB7_46:                               # %if.end.i21
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(rfc822comments)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s4, $a0
	ori	$a2, $zero, 3
	or	$s3, $a0, $a1
	beq	$s5, $a2, .LBB7_54
# %bb.47:                               # %if.end.i21
	ori	$a0, $zero, 2
	beq	$s5, $a0, .LBB7_53
# %bb.48:                               # %if.end.i21
	ori	$a0, $zero, 1
	move	$s2, $zero
	bne	$s5, $a0, .LBB7_96
# %bb.49:                               # %if.else9.i
	ori	$a1, $zero, 47
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_61
# %bb.50:                               # %if.else13.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_60
# %bb.51:                               # %if.end21.i
	move	$s2, $a0
	ld.bu	$a0, $s4, 0
	ori	$a1, $zero, 47
	bne	$a0, $a1, .LBB7_62
# %bb.52:                               # %if.then24.i
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a1, $a0, %pc_lo12(.L.str.66)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(messageSetMimeType)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a1, $a0, %pc_lo12(.L.str.67)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(messageSetMimeSubtype)
	jirl	$ra, $ra, 0
	b	.LBB7_93
.LBB7_53:                               # %sw.bb128.i
	move	$a0, $s8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(messageSetEncoding)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	b	.LBB7_96
.LBB7_54:                               # %sw.bb129.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_60
# %bb.55:                               # %if.end139.i
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a2, $a0, %pc_lo12(.L.str.68)
	move	$a0, $s3
	move	$a1, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(cli_strtokbuf)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_58
# %bb.56:                               # %if.then142.i
	move	$a1, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB7_58
# %bb.57:                               # %if.then144.i
	move	$a0, $s8
	pcaddu18i	$ra, %call36(messageSetDispositionType)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a2, $a0, %pc_lo12(.L.str.68)
	ori	$a1, $zero, 1
	move	$a0, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(cli_strtokbuf)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
.LBB7_58:                               # %if.end147.i
	move	$a0, $s8
	pcaddu18i	$ra, %call36(messageHasFilename)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_96
# %bb.59:                               # %if.then150.i
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
	b	.LBB7_96
.LBB7_60:                               # %if.then17.i31
	addi.w	$s3, $zero, -1
	move	$s2, $s1
	bnez	$s1, .LBB7_99
	b	.LBB7_100
.LBB7_61:                               # %if.then12.i
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	b	.LBB7_96
.LBB7_62:                               # %while.cond.preheader.i24
	ld.d	$a1, $s6, 0
	addi.d	$a0, $s3, -1
	lu12i.w	$s0, 2
	.p2align	4, , 16
.LBB7_63:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a2, $a0, 1
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a1, $a3
	and	$a3, $a3, $s0
	addi.d	$a0, $a0, 1
	bnez	$a3, .LBB7_63
# %bb.64:                               # %while.end.i28
	andi	$a1, $a2, 255
	addi.d	$a1, $a1, -34
	sltui	$a1, $a1, 1
	ldx.bu	$a2, $a0, $a1
	ori	$a3, $zero, 47
	add.d	$s3, $a0, $a1
	beq	$a2, $a3, .LBB7_93
# %bb.65:                               # %if.then42.i
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a2, $a0, %pc_lo12(.L.str.68)
	move	$a0, $s3
	move	$a1, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(cli_strtokbuf)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_93
# %bb.66:                               # %land.lhs.true.i29
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB7_93
# %bb.67:                               # %if.then47.i
	move	$s7, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_104
# %bb.68:
	move	$s4, $a0
	move	$s5, $s8
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s7
.LBB7_69:                               # %for.cond.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_73 Depth 2
                                        #     Child Loop BB7_89 Depth 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(messageSetMimeType)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $zero
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_92
# %bb.70:                               # %if.end62.i
                                        #   in Loop: Header=BB7_69 Depth=1
	move	$s8, $a0
	move	$a2, $s6
	beqz	$s7, .LBB7_87
# %bb.71:                               # %if.end.i.i
                                        #   in Loop: Header=BB7_69 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $s6
	addi.w	$a3, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ori	$a6, $zero, 1
	ori	$a7, $zero, 13
	ori	$t0, $zero, 10
	bltz	$a3, .LBB7_81
# %bb.72:                               # %if.end5.i.i.i
                                        #   in Loop: Header=BB7_69 Depth=1
	bstrpick.d	$a1, $a0, 30, 0
	ldx.bu	$a4, $s8, $a1
	add.d	$a1, $s8, $a1
.LBB7_73:                               # %do.body.i.i.i
                                        #   Parent Loop BB7_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a4, $a4, 255
	move	$a3, $a0
	beqz	$a4, .LBB7_75
# %bb.74:                               # %if.then6.i.i.i
                                        #   in Loop: Header=BB7_73 Depth=2
	st.b	$zero, $a1, 0
.LBB7_75:                               # %do.cond.i.i.i
                                        #   in Loop: Header=BB7_73 Depth=2
	addi.w	$a0, $a3, 0
	blt	$a0, $a6, .LBB7_79
# %bb.76:                               # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB7_73 Depth=2
	ld.b	$a0, $a1, -1
	ld.d	$a4, $a2, 0
	slli.d	$a5, $a0, 1
	ldx.h	$a4, $a4, $a5
	bltz	$a4, .LBB7_80
# %bb.77:                               # %switch.early.test.i.i.i
                                        #   in Loop: Header=BB7_73 Depth=2
	andi	$a4, $a0, 255
	beq	$a4, $a7, .LBB7_80
# %bb.78:                               # %switch.early.test.i.i.i
                                        #   in Loop: Header=BB7_73 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a3, -1
	bne	$a4, $t0, .LBB7_73
	b	.LBB7_80
.LBB7_79:                               #   in Loop: Header=BB7_69 Depth=1
	move	$a3, $zero
.LBB7_80:                               # %do.end.i.i.i
                                        #   in Loop: Header=BB7_69 Depth=1
	addi.w	$a0, $a3, 0
	addi.d	$a1, $a0, -1
.LBB7_81:                               # %strstrip.exit.i
                                        #   in Loop: Header=BB7_69 Depth=1
	ldx.bu	$a0, $s8, $a1
	ori	$a3, $zero, 34
	bne	$a0, $a3, .LBB7_83
# %bb.82:                               # %if.then70.i
                                        #   in Loop: Header=BB7_69 Depth=1
	stx.b	$zero, $s8, $a1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strstrip)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a2, $s6
.LBB7_83:                               # %if.end73.i
                                        #   in Loop: Header=BB7_69 Depth=1
	beqz	$a1, .LBB7_87
# %bb.84:                               # %if.then75.i
                                        #   in Loop: Header=BB7_69 Depth=1
	ori	$a1, $zero, 32
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	move	$a1, $s8
	beqz	$a0, .LBB7_86
# %bb.85:                               # %if.then78.i
                                        #   in Loop: Header=BB7_69 Depth=1
	move	$a0, $s8
	move	$a1, $zero
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s4
	pcaddu18i	$ra, %call36(cli_strtokbuf)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB7_86:                               # %if.end83.sink.split.i
                                        #   in Loop: Header=BB7_69 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(messageSetMimeSubtype)
	jirl	$ra, $ra, 0
	move	$a2, $s6
.LBB7_87:                               # %if.end83.i
                                        #   in Loop: Header=BB7_69 Depth=1
	ld.bu	$a1, $s8, 0
	beqz	$a1, .LBB7_92
# %bb.88:                               # %land.rhs.lr.ph.i
                                        #   in Loop: Header=BB7_69 Depth=1
	ld.d	$a2, $a2, 0
	addi.d	$a0, $s8, 1
.LBB7_89:                               # %land.rhs.i
                                        #   Parent Loop BB7_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a1, $a1
	slli.d	$a1, $a1, 1
	ldx.hu	$a3, $a2, $a1
	ld.bu	$a1, $a0, 0
	and	$a3, $a3, $s0
	bnez	$a3, .LBB7_91
# %bb.90:                               # %while.body94.i
                                        #   in Loop: Header=BB7_89 Depth=2
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB7_89
	b	.LBB7_92
.LBB7_91:                               # %if.end102.i
                                        #   in Loop: Header=BB7_69 Depth=1
	bnez	$a1, .LBB7_69
.LBB7_92:                               # %cleanup108.i
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s8, $s5
.LBB7_93:                               # %if.end116.i
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a2, $a0, %pc_lo12(.L.str.68)
	ori	$a1, $zero, 1
	move	$a0, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(cli_strtokbuf)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_96
# %bb.94:                               # %while.body121.i.preheader
	ori	$s4, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$s5, $a0, %pc_lo12(.L.str.71)
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$s6, $a0, %pc_lo12(.L.str.68)
	.p2align	4, , 16
.LBB7_95:                               # %while.body121.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(messageAddArguments)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(cli_strtokbuf)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 1
	bnez	$a0, .LBB7_95
.LBB7_96:                               # %sw.epilog.i
	beqz	$s1, .LBB7_98
# %bb.97:                               # %if.then153.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_98:                               # %if.end154.i
	move	$s3, $zero
	beqz	$s2, .LBB7_100
.LBB7_99:                               # %cleanup158.sink.split.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_100:                              # %if.end25
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_101:                              # %cleanup
	move	$a0, $s3
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
.LBB7_102:                              # %if.then46.i
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB7_103:                              # %if.then10.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	b	.LBB7_9
.LBB7_104:                              # %if.then51.i
	addi.w	$s3, $zero, -1
	beqz	$s1, .LBB7_99
# %bb.105:                              # %if.then53.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB7_99
.Lfunc_end7:
	.size	parseEmailHeader, .Lfunc_end7-parseEmailHeader
                                        # -- End function
	.p2align	5                               # -- Begin function checkURLs
	.type	checkURLs,@function
checkURLs:                              # @checkURLs
# %bb.0:                                # %entry
	ld.w	$a4, $a2, 0
	ori	$a5, $zero, 3
	beq	$a4, $a5, .LBB8_40
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a1, 32
	ld.d	$a4, $a0, 24
	ld.bu	$a4, $a4, 8
	andi	$a4, $a4, 8
	move	$s3, $a1
	move	$s4, $a3
	move	$s2, $a2
	bnez	$a4, .LBB8_3
# %bb.2:
	move	$a0, $zero
	b	.LBB8_4
.LBB8_3:                                # %land.rhs
	ld.d	$a0, $a0, 56
	ld.wu	$a0, $a0, 24
	andi	$a0, $a0, 1
.LBB8_4:                                # %land.end
	st.w	$a0, $sp, 52
	st.w	$zero, $sp, 48
	st.d	$zero, $sp, 56
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 64
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(messageToBlob)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_39
# %bb.5:                                # %if.end.i
	move	$fp, $a0
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_38
# %bb.6:                                # %if.end4.i
	lu12i.w	$a1, 25
	ori	$a1, $a1, 1
	bltu	$a0, $a1, .LBB8_8
# %bb.7:                                # %if.then6.i
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$a0, $a0, %pc_lo12(.L.str.147)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB8_38
.LBB8_8:                                # %if.end7.i
	addi.d	$a1, $sp, 56
	st.w	$zero, $sp, 48
	st.d	$zero, $a1, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $a1, 8
	pcalau12i	$a1, %pc_hi20(.L.str.148)
	addi.d	$a1, $a1, %pc_lo12(.L.str.148)
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(blobGetData)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 72
	ld.d	$a4, $a1, 56
	addi.d	$a3, $sp, 48
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(html_normalise_mem)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_38
# %bb.9:                                # %if.then5
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$a0, $a0, %pc_lo12(.L.str.149)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 52
	beqz	$a0, .LBB8_12
# %bb.10:                               # %if.then8
	ld.d	$a1, $s3, 0
	ld.d	$a2, $s3, 32
	addi.d	$a3, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(phishingScan)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_12
# %bb.11:                               # %if.then12
	ld.b	$a0, $s0, 88
	ori	$a0, $a0, 1
	st.b	$a0, $s0, 88
	ori	$a0, $zero, 3
	st.w	$a0, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB8_12:                               # %if.end14
	beqz	$s4, .LBB8_38
# %bb.13:                               # %land.lhs.true
	ld.d	$a0, $s3, 32
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 128
	beqz	$a0, .LBB8_38
# %bb.14:                               # %land.lhs.true19
	ld.w	$a0, $s2, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB8_38
# %bb.15:                               # %if.then21
	ld.d	$a0, $s3, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(tableCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_38
# %bb.16:                               # %for.cond.preheader.i
	move	$s0, $a0
	ld.w	$s7, $sp, 48
	ori	$s5, $zero, 6
	blt	$s7, $s5, .LBB8_24
# %bb.17:                               # %for.body.lr.ph.i
	move	$s6, $zero
	ori	$s8, $zero, 40
	ld.d	$s3, $sp, 64
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$s1, $a0, %pc_lo12(.L.str.150)
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s2, $zero, 5
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
.LBB8_18:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$s4, $s3, $s8
	ori	$a2, $zero, 7
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_21
.LBB8_19:                               # %cleanup.i
                                        #   in Loop: Header=BB8_18 Depth=1
	bge	$s5, $s7, .LBB8_24
# %bb.20:                               # %cleanup.i
                                        #   in Loop: Header=BB8_18 Depth=1
	addi.d	$s8, $s8, 8
	addi.d	$s5, $s5, 1
	blt	$s6, $s2, .LBB8_18
	b	.LBB8_24
.LBB8_21:                               # %if.end6.i
                                        #   in Loop: Header=BB8_18 Depth=1
	ori	$a1, $zero, 46
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_19
# %bb.22:                               # %if.end10.i
                                        #   in Loop: Header=BB8_18 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_19
# %bb.23:                               # %if.then13.i
                                        #   in Loop: Header=BB8_18 Depth=1
	slli.d	$s0, $s6, 3
	ldx.d	$a1, $s3, $s0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 64
	ldx.d	$a0, $s3, $s0
	ld.w	$s7, $sp, 48
	addi.w	$s6, $s6, 1
	stx.d	$s4, $s3, $s0
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	stx.d	$a0, $s3, $s8
	b	.LBB8_19
.LBB8_24:                               # %for.cond32.preheader.i
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB8_37
# %bb.25:                               # %for.body35.lr.ph.i
	move	$s4, $zero
	move	$s6, $zero
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$s1, $a0, %pc_lo12(.L.str.150)
	pcalau12i	$a0, %pc_hi20(.L.str.153)
	addi.d	$s2, $a0, %pc_lo12(.L.str.153)
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$s3, $a0, %pc_lo12(.L.str.156)
	pcalau12i	$a0, %pc_hi20(.L.str.154)
	addi.d	$a0, $a0, %pc_lo12(.L.str.154)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB8_29
.LBB8_26:                               # %cleanup71.i
                                        #   in Loop: Header=BB8_29 Depth=1
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB8_27:                               # %for.inc74.sink.split.i
                                        #   in Loop: Header=BB8_29 Depth=1
	ld.w	$s7, $sp, 48
.LBB8_28:                               # %for.inc74.i
                                        #   in Loop: Header=BB8_29 Depth=1
	addi.d	$s6, $s6, 1
	addi.d	$s4, $s4, 8
	bge	$s6, $s7, .LBB8_37
.LBB8_29:                               # %for.body35.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 64
	ldx.d	$s5, $a0, $s4
	ori	$a2, $zero, 7
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_28
# %bb.30:                               # %if.then42.i
                                        #   in Loop: Header=BB8_29 Depth=1
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB8_26
# %bb.31:                               # %if.end46.i
                                        #   in Loop: Header=BB8_29 Depth=1
	ori	$a1, $zero, 37
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_34
# %bb.32:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB8_29 Depth=1
	ori	$a1, $zero, 64
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_34
# %bb.33:                               # %if.then50.i
                                        #   in Loop: Header=BB8_29 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB8_34:                               # %if.end51.i
                                        #   in Loop: Header=BB8_29 Depth=1
	ori	$a0, $zero, 5
	beq	$s8, $a0, .LBB8_36
# %bb.35:                               #   in Loop: Header=BB8_29 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 87
	ori	$a2, $zero, 256
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 343
	addi.d	$a0, $sp, 87
	pcaddu18i	$ra, %call36(sanitiseName)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 352
	addi.d	$a0, $sp, 87
	st.d	$a0, $sp, 360
	st.w	$zero, $sp, 368
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(getURL)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, 1
	b	.LBB8_27
.LBB8_36:                               # %cleanup71.thread48.i
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a0, $a0, %pc_lo12(.L.str.155)
	ori	$a2, $zero, 5
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB8_37:                               # %for.end76.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tableDestroy)
	jirl	$ra, $ra, 0
.LBB8_38:                               # %if.then.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
.LBB8_39:                               # %hrefs_done.exit
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
.LBB8_40:                               # %cleanup
	ret
.Lfunc_end8:
	.size	checkURLs, .Lfunc_end8-checkURLs
                                        # -- End function
	.p2align	5                               # -- Begin function boundaryStart
	.type	boundaryStart,@function
boundaryStart:                          # @boundaryStart
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1072
	st.d	$ra, $sp, 1064                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1016                  # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $zero
	beqz	$fp, .LBB9_25
# %bb.1:                                # %entry
	move	$s0, $a1
	beqz	$a1, .LBB9_25
# %bb.2:                                # %if.end3
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB9_4
# %bb.3:                                # %if.end3
	ori	$a1, $zero, 40
	bne	$a0, $a1, .LBB9_24
.LBB9_4:                                # %if.end10
	ori	$a1, $zero, 45
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_24
# %bb.5:                                # %if.end14
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1001
	bltu	$a1, $a0, .LBB9_7
# %bb.6:                                # %if.then18
	addi.d	$a1, $sp, 15
	move	$a0, $fp
	pcaddu18i	$ra, %call36(rfc822comments)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	b	.LBB9_8
.LBB9_7:                                # %if.else
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(rfc822comments)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB9_8:                                # %if.end21
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a0, $a1, $a0
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 45
	bne	$a1, $a2, .LBB9_18
# %bb.9:                                # %lor.lhs.false
	ld.bu	$s4, $a0, 1
	beqz	$s4, .LBB9_18
# %bb.10:                               # %if.end35
	addi.d	$s2, $a0, 2
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_12
# %bb.11:                               # %lor.lhs.false39
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_27
.LBB9_12:                               # %do.body.preheader
	ori	$s3, $zero, 45
	.p2align	4, , 16
.LBB9_13:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_20
# %bb.14:                               # %do.cond
                                        #   in Loop: Header=BB9_13 Depth=1
	ld.bu	$a0, $s2, 0
	addi.d	$s2, $s2, 1
	beq	$a0, $s3, .LBB9_13
# %bb.15:                               # %if.then55
	addi.d	$s2, $fp, 2
	ori	$s4, $zero, 45
	.p2align	4, , 16
.LBB9_16:                               # %do.body57
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltu	$s3, $zero, $a0
	beqz	$a0, .LBB9_21
# %bb.17:                               # %do.cond64
                                        #   in Loop: Header=BB9_16 Depth=1
	ld.bu	$a0, $s2, 0
	addi.d	$s2, $s2, 1
	beq	$a0, $s4, .LBB9_16
	b	.LBB9_21
.LBB9_18:                               # %if.then32
	beqz	$s1, .LBB9_24
# %bb.19:                               # %if.then33
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB9_25
.LBB9_20:
	move	$s3, $zero
.LBB9_21:                               # %if.end81
	beqz	$s1, .LBB9_23
# %bb.22:                               # %if.then83
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_23:                               # %if.end84
	beqz	$s3, .LBB9_26
.LBB9_24:
	move	$a0, $zero
.LBB9_25:                               # %cleanup
	ld.d	$s4, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1064                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1072
	ret
.LBB9_26:                               # %if.then87
	pcalau12i	$a0, %pc_hi20(.L.str.190)
	addi.d	$a0, $a0, %pc_lo12(.L.str.190)
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB9_25
.LBB9_27:                               # %if.else70
	ori	$a0, $zero, 45
	ori	$s3, $zero, 1
	bne	$s4, $a0, .LBB9_21
# %bb.28:                               # %if.else76
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	sltu	$s3, $zero, $a0
	b	.LBB9_21
.Lfunc_end9:
	.size	boundaryStart, .Lfunc_end9-boundaryStart
                                        # -- End function
	.p2align	5                               # -- Begin function exportBinhexMessage
	.type	exportBinhexMessage,@function
exportBinhexMessage:                    # @exportBinhexMessage
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(messageGetEncoding)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.191)
	addi.d	$a1, $a0, %pc_lo12(.L.str.191)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageSetEncoding)
	jirl	$ra, $ra, 0
.LBB10_2:                               # %if.end
	ld.d	$a1, $fp, 0
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(messageToFileblob)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_4
# %bb.3:                                # %if.then2
	move	$s0, $a0
	pcaddu18i	$ra, %call36(fileblobGetFilename)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.192)
	addi.d	$a0, $a0, %pc_lo12(.L.str.192)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fileblobScanAndDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 8
	b	.LBB10_5
.LBB10_4:                               # %if.else
	ld.d	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.193)
	addi.d	$a0, $a0, %pc_lo12(.L.str.193)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB10_5:                               # %if.end9
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	exportBinhexMessage, .Lfunc_end10-exportBinhexMessage
                                        # -- End function
	.p2align	5                               # -- Begin function do_multipart
	.type	do_multipart,@function
do_multipart:                           # @do_multipart
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
	ld.d	$t0, $a4, 32
	ld.d	$t1, $t0, 24
	ld.bu	$t1, $t1, 8
	slli.d	$t2, $a2, 3
	ldx.d	$s0, $a1, $t2
	andi	$t1, $t1, 8
	move	$fp, $a3
	bnez	$t1, .LBB11_2
# %bb.1:
	move	$s7, $zero
	bnez	$s0, .LBB11_3
	b	.LBB11_55
.LBB11_2:                               # %land.rhs
	ld.d	$a3, $t0, 56
	ld.bu	$a3, $a3, 24
	andi	$s7, $a3, 1
	beqz	$s0, .LBB11_55
.LBB11_3:                               # %if.end
	ld.w	$a3, $fp, 0
	ori	$t0, $zero, 1
	bne	$a3, $t0, .LBB11_55
# %bb.4:                                # %if.end6
	move	$s6, $a7
	move	$s8, $a5
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a0
	move	$s1, $a4
	alsl.d	$s5, $a2, $a1, 3
	move	$a0, $s0
	move	$s4, $a2
	pcaddu18i	$ra, %call36(messageGetMimeType)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.195)
	addi.d	$a0, $a0, %pc_lo12(.L.str.195)
	move	$s3, $s4
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetMimeType)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 7
	bltu	$a1, $a0, .LBB11_24
# %bb.5:                                # %if.end6
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI11_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI11_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	move	$s4, $zero
	jr	$a0
.LBB11_6:                               # %sw.bb8
	pcalau12i	$a0, %pc_hi20(.L.str.196)
	addi.d	$a0, $a0, %pc_lo12(.L.str.196)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(binhexBegin)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	beqz	$s2, .LBB11_35
# %bb.7:                                # %if.then10
	move	$a0, $s2
	beqz	$a1, .LBB11_10
# %bb.8:                                # %if.then13
	pcalau12i	$a0, %pc_hi20(.L.str.197)
	addi.d	$a0, $a0, %pc_lo12(.L.str.197)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(exportBinhexMessage)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	beqz	$a1, .LBB11_10
# %bb.9:                                # %if.then15
	ori	$a1, $zero, 3
	st.w	$a1, $fp, 0
.LBB11_10:                              # %if.end17
	beq	$a0, $s8, .LBB11_39
# %bb.11:                               # %if.then19
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	b	.LBB11_39
.LBB11_12:                              # %sw.bb38
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetDispositionType)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.200)
	addi.d	$a0, $a0, %pc_lo12(.L.str.200)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.201)
	addi.d	$a1, $a0, %pc_lo12(.L.str.201)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_25
# %bb.13:                               # %if.end43
	ld.bu	$a0, $s3, 0
	beqz	$a0, .LBB11_26
# %bb.14:                               # %lor.lhs.false
	pcalau12i	$a0, %pc_hi20(.L.str.202)
	addi.d	$a1, $a0, %pc_lo12(.L.str.202)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_26
# %bb.15:                               # %if.end86
	pcalau12i	$a0, %pc_hi20(.L.str.207)
	addi.d	$a0, $a0, %pc_lo12(.L.str.207)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB11_54
.LBB11_16:                              # %sw.bb87
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetEncoding)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.208)
	addi.d	$a0, $a0, %pc_lo12(.L.str.208)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetEncoding)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bltu	$a1, $a0, .LBB11_19
# %bb.17:                               # %sw.bb87
	ori	$a1, $zero, 1
	sll.d	$a0, $a1, $a0
	andi	$a0, $a0, 25
	beqz	$a0, .LBB11_19
# %bb.18:                               # %sw.bb90
	move	$a0, $s0
	pcaddu18i	$ra, %call36(encodingLine)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_56
.LBB11_19:                              # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.210)
	addi.d	$a0, $a0, %pc_lo12(.L.str.210)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.241)
	addi.d	$a1, $a0, %pc_lo12(.L.str.241)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageToFileblob)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_22
# %bb.20:                               # %saveTextPart.exit
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.242)
	addi.d	$a0, $a0, %pc_lo12(.L.str.242)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fileblobScanAndDestroy)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB11_22
# %bb.21:                               # %if.then103
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
.LBB11_22:                              # %if.end104
	ld.d	$a0, $s5, 0
	b	.LBB11_53
.LBB11_23:                              # %sw.bb109
	pcalau12i	$a0, %pc_hi20(.L.str.211)
	addi.d	$a0, $a0, %pc_lo12(.L.str.211)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.w	$a3, $s6, 1
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(parseEmailBody)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.w	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.212)
	addi.d	$a0, $a0, %pc_lo12(.L.str.212)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	b	.LBB11_53
.LBB11_24:                              # %sw.default127
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetMimeType)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.213)
	addi.d	$a0, $a0, %pc_lo12(.L.str.213)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB11_25:                              # %sw.epilog129
	move	$s4, $zero
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB11_43
	b	.LBB11_52
.LBB11_26:                              # %if.then49
	beqz	$s2, .LBB11_29
# %bb.27:                               # %if.then49
	beq	$s2, $s8, .LBB11_29
# %bb.28:                               # %if.then53
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
.LBB11_29:                              # %if.end54
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetMimeSubtype)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.203)
	addi.d	$a0, $a0, %pc_lo12(.L.str.203)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	move	$a1, $s2
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_31
# %bb.30:                               # %land.lhs.true59
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetEncoding)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_57
.LBB11_31:                              # %if.else69
	ld.d	$a0, $s1, 24
	move	$a1, $s2
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 32
	ld.bu	$a1, $a1, 40
	addi.d	$a0, $a0, -3
	sltui	$a3, $a0, 1
	srli.d	$a0, $a1, 7
	and	$a0, $a0, $a3
	or	$a0, $a0, $s7
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_33
# %bb.32:                               # %if.end84.sink.split
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(checkURLs)
	jirl	$ra, $ra, 0
.LBB11_33:                              # %if.end84
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a1, $a0, %pc_lo12(.L.str.206)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
.LBB11_34:                              # %sw.epilog129
	move	$s4, $zero
	move	$s2, $zero
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB11_43
	b	.LBB11_52
.LBB11_35:                              # %if.then22
	beqz	$a1, .LBB11_39
# %bb.36:                               # %if.then25
	pcalau12i	$a0, %pc_hi20(.L.str.198)
	addi.d	$a0, $a0, %pc_lo12(.L.str.198)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(exportBinhexMessage)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_38
# %bb.37:                               # %if.then27
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
.LBB11_38:                              # %if.end28
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(messageReset)
	jirl	$ra, $ra, 0
.LBB11_39:                              # %if.end33
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetBody)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 1
	beqz	$a0, .LBB11_41
# %bb.40:
	move	$s2, $zero
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB11_43
	b	.LBB11_52
.LBB11_41:                              # %if.then36
	pcalau12i	$a0, %pc_hi20(.L.str.199)
	addi.d	$a0, $a0, %pc_lo12(.L.str.199)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s2, $zero
.LBB11_42:                              # %sw.epilog129
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB11_52
.LBB11_43:                              # %if.then132
	beqz	$s4, .LBB11_46
# %bb.44:                               # %if.then133
	pcalau12i	$a0, %pc_hi20(.L.str.214)
	addi.d	$a0, $a0, %pc_lo12(.L.str.214)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetBody)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_50
# %bb.45:                               # %if.then136
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $s3, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageGetBody)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(textMove)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	b	.LBB11_50
.LBB11_46:                              # %if.else140
	ld.d	$a1, $s1, 0
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageToFileblob)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_50
# %bb.47:                               # %if.then143
	pcaddu18i	$ra, %call36(fileblobScanAndDestroy)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB11_49
# %bb.48:                               # %if.then147
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
.LBB11_49:                              # %if.end148
	ld.w	$a0, $s1, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 8
.LBB11_50:                              # %if.end150
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageContainsVirus)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_52
# %bb.51:                               # %if.then153
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
.LBB11_52:                              # %if.end155
	move	$a0, $s0
.LBB11_53:                              # %cleanup
	pcaddu18i	$ra, %call36(messageDestroy)
	jirl	$ra, $ra, 0
	st.d	$zero, $s5, 0
.LBB11_54:                              # %cleanup
	move	$a0, $s2
.LBB11_55:                              # %cleanup
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
.LBB11_56:                              # %if.then94
	pcalau12i	$a0, %pc_hi20(.L.str.209)
	addi.d	$a0, $a0, %pc_lo12(.L.str.209)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	b	.LBB11_53
.LBB11_57:                              # %if.then63
	move	$a0, $s0
	pcaddu18i	$ra, %call36(messageHasFilename)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_59
# %bb.58:                               # %if.else67
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB11_34
.LBB11_59:                              # %if.then66
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a0, $a0, %pc_lo12(.L.str.204)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	ori	$s4, $zero, 1
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB11_43
	b	.LBB11_52
.Lfunc_end11:
	.size	do_multipart, .Lfunc_end11-do_multipart
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI11_0:
	.word	.LBB11_6-.LJTI11_0
	.word	.LBB11_42-.LJTI11_0
	.word	.LBB11_42-.LJTI11_0
	.word	.LBB11_42-.LJTI11_0
	.word	.LBB11_16-.LJTI11_0
	.word	.LBB11_23-.LJTI11_0
	.word	.LBB11_12-.LJTI11_0
	.word	.LBB11_42-.LJTI11_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function getTextPart
	.type	getTextPart,@function
getTextPart:                            # @getTextPart
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	beqz	$a1, .LBB12_7
# %bb.1:                                # %for.body.preheader
	move	$fp, $a1
	move	$s0, $a0
	move	$s3, $zero
	addi.w	$s2, $zero, -1
	ori	$s4, $zero, 6
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$s1, $a0, %pc_lo12(.L.str.19)
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	beqz	$fp, .LBB12_8
.LBB12_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB12_2
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB12_3 Depth=1
	pcaddu18i	$ra, %call36(messageGetMimeType)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB12_2
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(messageGetMimeSubtype)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	move	$s2, $s3
	bnez	$a0, .LBB12_2
# %bb.6:
	move	$s2, $s3
	b	.LBB12_8
.LBB12_7:
	addi.w	$s2, $zero, -1
.LBB12_8:                               # %cleanup
	move	$a0, $s2
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end12:
	.size	getTextPart, .Lfunc_end12-getTextPart
                                        # -- End function
	.p2align	5                               # -- Begin function rfc1341
	.type	rfc1341,@function
rfc1341:                                # @rfc1341
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
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3408
	sub.d	$sp, $sp, $a2
	move	$s3, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.215)
	addi.d	$a1, $a0, %pc_lo12(.L.str.215)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_6
# %bb.1:                                # %if.end
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.216)
	addi.d	$a0, $a0, %pc_lo12(.L.str.216)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB13_3
# %bb.2:                                # %if.then3
	pcalau12i	$a0, %pc_hi20(.L.str.217)
	addi.d	$a0, $a0, %pc_lo12(.L.str.217)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_27
.LBB13_3:
	move	$a3, $a0
.LBB13_4:                               # %if.end12
	pcalau12i	$a0, %pc_hi20(.L.str.220)
	addi.d	$a2, $a0, %pc_lo12(.L.str.220)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 999
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 256
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 999
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 17
	addi.w	$s6, $zero, -1
	bge	$s6, $s1, .LBB13_7
# %bb.5:                                # %if.else
	beq	$a1, $a2, .LBB13_8
	b	.LBB13_11
.LBB13_6:
	addi.w	$s6, $zero, -1
	b	.LBB13_55
.LBB13_7:                               # %land.lhs.true
	bne	$a1, $a2, .LBB13_23
.LBB13_8:                               # %if.then23
	move	$s0, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 999
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 464
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_24
# %bb.9:                                # %if.end31
	ld.wu	$a0, $sp, 480
	andi	$a1, $a0, 63
	beqz	$a1, .LBB13_11
# %bb.10:                               # %if.then32
	andi	$a2, $a0, 511
	pcalau12i	$a0, %pc_hi20(.L.str.223)
	addi.d	$a0, $a0, %pc_lo12(.L.str.223)
	lu12i.w	$a1, 2
	ori	$a1, $a1, 999
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB13_11:                              # %if.end38
	pcalau12i	$a0, %pc_hi20(.L.str.224)
	addi.d	$a1, $a0, %pc_lo12(.L.str.224)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_25
# %bb.12:                               # %if.end42
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageGetFilename)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s5, $a0
	addi.d	$a0, $a0, 10
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_14
# %bb.13:                               # %if.then49
	pcalau12i	$a1, %pc_hi20(.L.str.225)
	addi.d	$a1, $a1, %pc_lo12(.L.str.225)
	move	$s5, $a0
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB13_14:                              # %if.end51
	beqz	$s4, .LBB13_16
# %bb.15:                               # %if.then53
	pcalau12i	$a0, %pc_hi20(.L.str.226)
	addi.d	$a0, $a0, %pc_lo12(.L.str.226)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB13_16:                              # %if.end54
	lu12i.w	$a0, 2
	ori	$a0, $a0, 999
	add.d	$a1, $sp, $a0
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(messageToFileblob)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_26
# %bb.17:                               # %if.end59
	pcaddu18i	$ra, %call36(fileblobDestroy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.227)
	addi.d	$a1, $a0, %pc_lo12(.L.str.227)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s2, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.229)
	addi.d	$a2, $a2, %pc_lo12(.L.str.229)
	maskeqz	$a0, $a2, $a0
	or	$a3, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.228)
	addi.d	$a0, $a0, %pc_lo12(.L.str.228)
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB13_54
# %bb.18:                               # %if.then63
	ori	$a2, $zero, 10
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	addi.w	$s4, $a0, 0
	ori	$a2, $zero, 10
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	addi.w	$s0, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	bne	$s4, $s0, .LBB13_54
# %bb.19:                               # %land.lhs.true67
	lu12i.w	$a0, 2
	ori	$a0, $a0, 999
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(opendir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_54
# %bb.20:                               # %if.then71
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sanitiseName)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a2, $a0, %pc_lo12(.L.str.158)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 742
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 256
	move	$a3, $s3
	move	$a4, $fp
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.230)
	addi.d	$a0, $a0, %pc_lo12(.L.str.230)
	lu12i.w	$a1, 2
	ori	$a1, $a1, 742
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a1, $a0, %pc_lo12(.L.str.159)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 742
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_56
# %bb.21:                               # %if.end81
	move	$s3, $a0
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 728
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	blt	$s0, $s8, .LBB13_53
# %bb.22:                               # %for.body.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str.232)
	addi.d	$a0, $a0, %pc_lo12(.L.str.232)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$s5, $a0, %pc_lo12(.L.str.158)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$s7, $a0, 4095
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s1, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ori	$s6, $zero, 10
	lu12i.w	$a0, 147
	ori	$a0, $a0, 2689
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.233)
	addi.d	$a0, $a0, %pc_lo12(.L.str.233)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	b	.LBB13_31
.LBB13_23:                              # %if.then19
	pcalau12i	$a0, %pc_hi20(.L.str.221)
	addi.d	$a0, $a0, %pc_lo12(.L.str.221)
	lu12i.w	$a1, 2
	ori	$a1, $a1, 999
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB13_25
.LBB13_24:                              # %cleanup
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.222)
	addi.d	$a0, $a0, %pc_lo12(.L.str.222)
	lu12i.w	$a1, 2
	ori	$a1, $a1, 999
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB13_25:                              # %if.then41
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB13_55
.LBB13_26:                              # %if.then58
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB13_55
.LBB13_27:                              # %if.then6
	pcalau12i	$a0, %pc_hi20(.L.str.218)
	addi.d	$a0, $a0, %pc_lo12(.L.str.218)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.219)
	addi.d	$a2, $a2, %pc_lo12(.L.str.219)
	maskeqz	$a1, $a2, $a1
	or	$a3, $a1, $a0
	b	.LBB13_4
.LBB13_28:                              # %while.end
                                        #   in Loop: Header=BB13_31 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB13_52
.LBB13_29:                              # %cleanup156.thread
                                        #   in Loop: Header=BB13_31 Depth=1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
.LBB13_30:                              # %while.end162
                                        #   in Loop: Header=BB13_31 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(rewinddir)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a0, $a1, 1
	beq	$a1, $s0, .LBB13_53
.LBB13_31:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_32 Depth 2
                                        #     Child Loop BB13_45 Depth 2
                                        #       Child Loop BB13_48 Depth 3
	move	$a4, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 471
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 257
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $fp
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB13_32:                              # %for.body
                                        #   Parent Loop BB13_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_30
# %bb.33:                               # %while.body
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB13_32
# %bb.34:                               # %if.end91
                                        #   in Loop: Header=BB13_32 Depth=2
	addi.d	$s4, $a0, 19
	addi.d	$a0, $sp, 207
	ori	$a1, $zero, 256
	lu12i.w	$a2, 2
	ori	$a2, $a2, 999
	add.d	$a3, $sp, $a2
	move	$a2, $s5
	move	$a4, $s4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 471
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 471
	add.d	$a0, $sp, $a0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_40
# %bb.35:                               # %if.then103
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB13_32
# %bb.36:                               # %if.end106
                                        #   in Loop: Header=BB13_32 Depth=2
	addi.d	$a0, $sp, 207
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_32
# %bb.37:                               # %if.end111
                                        #   in Loop: Header=BB13_32 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 728
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 160
	sub.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB13_32
# %bb.38:                               # %if.then113
                                        #   in Loop: Header=BB13_32 Depth=2
	addi.d	$a0, $sp, 207
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_32
# %bb.39:                               # %if.then117
                                        #   in Loop: Header=BB13_32 Depth=2
	addi.d	$a1, $sp, 207
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB13_32
.LBB13_40:                              # %if.end121
                                        #   in Loop: Header=BB13_31 Depth=1
	addi.d	$a0, $sp, 207
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_57
# %bb.41:                               # %while.cond132.preheader
                                        #   in Loop: Header=BB13_31 Depth=1
	move	$s4, $a0
	addi.d	$a0, $sp, 464
	move	$a1, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_28
# %bb.42:                               # %while.body136.preheader
                                        #   in Loop: Header=BB13_31 Depth=1
	move	$s0, $zero
	b	.LBB13_45
	.p2align	4, , 16
.LBB13_43:                              # %if.then139
                                        #   in Loop: Header=BB13_45 Depth=2
	addi.w	$s0, $s0, 1
.LBB13_44:                              # %if.end149
                                        #   in Loop: Header=BB13_45 Depth=2
	addi.d	$a0, $sp, 464
	move	$a1, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_28
.LBB13_45:                              # %while.body136
                                        #   Parent Loop BB13_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_48 Depth 3
	ld.bu	$a0, $sp, 464
	beq	$a0, $s6, .LBB13_43
# %bb.46:                               # %if.else140
                                        #   in Loop: Header=BB13_45 Depth=2
	beqz	$s0, .LBB13_50
# %bb.47:                               # %do.body.preheader
                                        #   in Loop: Header=BB13_45 Depth=2
	addi.d	$s6, $s0, 1
	.p2align	4, , 16
.LBB13_48:                              # %do.body
                                        #   Parent Loop BB13_31 Depth=1
                                        #     Parent Loop BB13_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 10
	move	$a1, $s3
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s6, -1
	blt	$s8, $s6, .LBB13_48
# %bb.49:                               # %if.end146.loopexit
                                        #   in Loop: Header=BB13_45 Depth=2
	slti	$a0, $s0, 1
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.w	$s0, $a0, -1
	ori	$s6, $zero, 10
	b	.LBB13_51
.LBB13_50:                              #   in Loop: Header=BB13_45 Depth=2
	move	$s0, $zero
.LBB13_51:                              # %if.end146
                                        #   in Loop: Header=BB13_45 Depth=2
	addi.d	$a0, $sp, 464
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	b	.LBB13_44
.LBB13_52:                              # %if.then152
                                        #   in Loop: Header=BB13_31 Depth=1
	addi.d	$a0, $sp, 207
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	b	.LBB13_29
.LBB13_53:                              # %for.end
	move	$a0, $s2
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
.LBB13_54:                              # %if.end181
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s6, $zero
.LBB13_55:                              # %cleanup182
	move	$a0, $s6
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3408
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
.LBB13_56:                              # %if.then78
	pcalau12i	$a0, %pc_hi20(.L.str.231)
	addi.d	$a0, $a0, %pc_lo12(.L.str.231)
	lu12i.w	$a1, 2
	ori	$a1, $a1, 742
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	b	.LBB13_55
.LBB13_57:                              # %cleanup170.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.234)
	addi.d	$a0, $a0, %pc_lo12(.L.str.234)
	addi.d	$a1, $sp, 207
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 742
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	b	.LBB13_55
.Lfunc_end13:
	.size	rfc1341, .Lfunc_end13-rfc1341
                                        # -- End function
	.p2align	5                               # -- Begin function isBounceStart
	.type	isBounceStart,@function
isBounceStart:                          # @isBounceStart
# %bb.0:                                # %entry
	beqz	$a0, .LBB14_4
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB14_3
# %bb.2:                                # %if.end4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -72
	addi.w	$a2, $zero, -66
	bgeu	$a1, $a2, .LBB14_5
.LBB14_3:
	move	$a0, $zero
	b	.LBB14_13
.LBB14_4:
	move	$a0, $zero
	ret
.LBB14_5:                               # %if.end10
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_8
# %bb.6:                                # %lor.lhs.false14
	pcalau12i	$a0, %pc_hi20(.L.str.235)
	addi.d	$a1, $a0, %pc_lo12(.L.str.235)
	ori	$a2, $zero, 6
	move	$a0, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_8
# %bb.7:                                # %if.end43
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_filetype)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -529
	sltui	$a0, $a0, 1
	b	.LBB14_13
.LBB14_8:                               # %if.then18
	ld.bu	$s3, $fp, 4
	move	$s1, $zero
	move	$s0, $zero
	addi.d	$fp, $fp, 5
	ori	$s2, $zero, 32
	b	.LBB14_10
	.p2align	4, , 16
.LBB14_9:                               # %if.else
                                        #   in Loop: Header=BB14_10 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 11, 11
	add.w	$s0, $s0, $a0
	ld.bu	$s3, $fp, 0
	addi.d	$fp, $fp, 1
	beqz	$s3, .LBB14_12
.LBB14_10:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	bne	$s3, $s2, .LBB14_9
# %bb.11:                               # %if.then22
                                        #   in Loop: Header=BB14_10 Depth=1
	addi.w	$s1, $s1, 1
	ld.bu	$s3, $fp, 0
	addi.d	$fp, $fp, 1
	bnez	$s3, .LBB14_10
.LBB14_12:                              # %do.end
	ori	$a0, $zero, 5
	slt	$a0, $a0, $s1
	ori	$a1, $zero, 10
	slt	$a1, $a1, $s0
	and	$a0, $a0, $a1
.LBB14_13:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	isBounceStart, .Lfunc_end14-isBounceStart
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function getURL
.LCPI15_0:
	.dword	30                              # 0x1e
	.dword	0                               # 0x0
	.text
	.p2align	5
	.type	getURL,@function
getURL:                                 # @getURL
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
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2704
	sub.d	$sp, $sp, $a1
	move	$s0, $a0
	ld.d	$s1, $a0, 0
	ld.d	$fp, $a0, 8
	ld.d	$s2, $a0, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	srli.d	$a0, $a0, 13
	beqz	$a0, .LBB15_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$a0, $a0, %pc_lo12(.L.str.157)
	move	$a1, $s1
	lu12i.w	$a2, 3
	ori	$a2, $a2, 2704
	add.d	$sp, $sp, $a2
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
	pcaddu18i	$t8, %call36(cli_dbgmsg)
	jr	$t8
.LBB15_2:                               # %if.end
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a2, $a0, %pc_lo12(.L.str.158)
	addi.d	$a0, $sp, 231
	ori	$a1, $zero, 256
	move	$a3, $fp
	move	$a4, $s2
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a1, $a0, %pc_lo12(.L.str.159)
	addi.d	$a0, $sp, 231
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_6
# %bb.3:                                # %if.end10
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a0, $a0, %pc_lo12(.L.str.161)
	addi.d	$a2, $sp, 231
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(getURL.tcp)
	ld.w	$a0, $s4, %pc_lo12(getURL.tcp)
	beqz	$a0, .LBB15_7
# %bb.4:                                # %if.end19
	pcalau12i	$s2, %pc_hi20(getURL.default_port)
	ld.hu	$s3, $s2, %pc_lo12(getURL.default_port)
	beqz	$s3, .LBB15_9
.LBB15_5:                               # %if.end28
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_14
	b	.LBB15_17
.LBB15_6:                               # %if.then8
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a0, $a0, %pc_lo12(.L.str.160)
	addi.d	$a1, $sp, 231
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB15_111
.LBB15_7:                               # %if.then13
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a0, $a0, %pc_lo12(.L.str.162)
	pcaddu18i	$ra, %call36(getprotobyname)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_11
# %bb.8:                                # %cleanup
	ld.w	$a0, $a0, 16
	st.w	$a0, $s4, %pc_lo12(getURL.tcp)
	pcaddu18i	$ra, %call36(endprotoent)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(getURL.default_port)
	ld.hu	$s3, $s2, %pc_lo12(getURL.default_port)
	bnez	$s3, .LBB15_5
.LBB15_9:                               # %if.then22
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	pcalau12i	$a1, %pc_hi20(.L.str.162)
	addi.d	$a1, $a1, %pc_lo12(.L.str.162)
	pcaddu18i	$ra, %call36(getservbyname)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_12
# %bb.10:                               # %if.then24
	ld.h	$a0, $a0, 16
	revb.2h	$a0, $a0
	b	.LBB15_13
.LBB15_11:                              # %cleanup.thread
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB15_110
.LBB15_12:
	ori	$a0, $zero, 80
.LBB15_13:                              # %if.end27
	st.h	$a0, $s2, %pc_lo12(getURL.default_port)
	pcaddu18i	$ra, %call36(endservent)
	jirl	$ra, $ra, 0
	ld.hu	$s3, $s2, %pc_lo12(getURL.default_port)
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_17
.LBB15_14:                              # %land.end
	move	$s2, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB15_17
# %bb.15:                               # %if.then35
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a1, $a0, %pc_lo12(.L.str.150)
	ori	$a2, $zero, 7
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_28
# %bb.16:                               # %if.then39
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a0, $a0, %pc_lo12(.L.str.166)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB15_110
.LBB15_17:                              # %if.else71
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a1, $a0, %pc_lo12(.L.str.150)
	ori	$a2, $zero, 7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_19
# %bb.18:                               # %if.then75
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a0, $a0, %pc_lo12(.L.str.169)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB15_110
.LBB15_19:                              # %if.end77
	addi.d	$s1, $s1, 7
	addi.d	$s2, $sp, 488
	ori	$s5, $zero, 58
	ori	$s6, $zero, 47
.LBB15_20:                              # %while.cond79.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_21 Depth 2
                                        #       Child Loop BB15_24 Depth 3
	ld.bu	$a1, $s1, 0
	.p2align	4, , 16
.LBB15_21:                              # %while.cond79
                                        #   Parent Loop BB15_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_24 Depth 3
	andi	$a0, $a1, 255
	bne	$a0, $s5, .LBB15_25
# %bb.22:                               # %while.cond88.preheader
                                        #   in Loop: Header=BB15_21 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 1
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	slli.d	$a2, $a2, 1
	ldx.hu	$a3, $a0, $a2
	addi.d	$a2, $s1, 1
	andi	$a3, $a3, 2048
	move	$s3, $zero
	move	$s1, $a2
	beqz	$a3, .LBB15_21
# %bb.23:                               # %while.body97.preheader
                                        #   in Loop: Header=BB15_21 Depth=2
	move	$s3, $zero
	.p2align	4, , 16
.LBB15_24:                              # %while.body97
                                        #   Parent Loop BB15_20 Depth=1
                                        #     Parent Loop BB15_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a3, $a2, 1
	ext.w.b	$a1, $a1
	slli.d	$a4, $s3, 3
	alsl.d	$a4, $s3, $a4, 1
	slli.d	$a5, $a3, 1
	ldx.hu	$a5, $a0, $a5
	add.d	$a1, $a4, $a1
	addi.d	$s3, $a1, -48
	addi.d	$s1, $a2, 1
	andi	$a4, $a5, 2048
	andi	$a1, $a3, 255
	move	$a2, $s1
	bnez	$a4, .LBB15_24
	b	.LBB15_21
.LBB15_25:                              # %while.cond79
                                        #   in Loop: Header=BB15_20 Depth=1
	beqz	$a0, .LBB15_39
# %bb.26:                               # %while.cond79
                                        #   in Loop: Header=BB15_20 Depth=1
	beq	$a0, $s6, .LBB15_38
# %bb.27:                               # %if.end115
                                        #   in Loop: Header=BB15_20 Depth=1
	st.b	$a1, $s2, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 1
	b	.LBB15_20
.LBB15_28:                              # %if.end41
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s2, 7
	addi.d	$s2, $sp, 488
	ori	$s5, $zero, 58
	ori	$s6, $zero, 47
.LBB15_29:                              # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_30 Depth 2
                                        #       Child Loop BB15_33 Depth 3
	ld.bu	$a1, $s7, 0
	.p2align	4, , 16
.LBB15_30:                              # %while.cond
                                        #   Parent Loop BB15_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_33 Depth 3
	andi	$a0, $a1, 255
	bne	$a0, $s5, .LBB15_34
# %bb.31:                               # %while.cond48.preheader
                                        #   in Loop: Header=BB15_30 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s7, 1
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	slli.d	$a2, $a2, 1
	ldx.hu	$a3, $a0, $a2
	addi.d	$a2, $s7, 1
	andi	$a3, $a3, 2048
	move	$s3, $zero
	move	$s7, $a2
	beqz	$a3, .LBB15_30
# %bb.32:                               # %while.body53.preheader
                                        #   in Loop: Header=BB15_30 Depth=2
	move	$s3, $zero
	.p2align	4, , 16
.LBB15_33:                              # %while.body53
                                        #   Parent Loop BB15_29 Depth=1
                                        #     Parent Loop BB15_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a3, $a2, 1
	ext.w.b	$a1, $a1
	slli.d	$a4, $s3, 3
	alsl.d	$a4, $s3, $a4, 1
	slli.d	$a5, $a3, 1
	ldx.hu	$a5, $a0, $a5
	add.d	$a1, $a4, $a1
	addi.d	$s3, $a1, -48
	addi.d	$s7, $a2, 1
	andi	$a4, $a5, 2048
	andi	$a1, $a3, 255
	move	$a2, $s7
	bnez	$a4, .LBB15_33
	b	.LBB15_30
.LBB15_34:                              # %while.cond
                                        #   in Loop: Header=BB15_29 Depth=1
	beqz	$a0, .LBB15_37
# %bb.35:                               # %while.cond
                                        #   in Loop: Header=BB15_29 Depth=1
	beq	$a0, $s6, .LBB15_37
# %bb.36:                               # %if.end67
                                        #   in Loop: Header=BB15_29 Depth=1
	st.b	$a1, $s2, 0
	addi.d	$s2, $s2, 1
	addi.d	$s7, $s7, 1
	b	.LBB15_29
.LBB15_37:                              # %if.end119.loopexit45
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$s7, $a0, %pc_lo12(.L.str.174)
	b	.LBB15_40
.LBB15_38:                              # %if.then113
	addi.d	$s1, $s1, 1
.LBB15_39:                              # %if.end119.loopexit
	pcalau12i	$a0, %pc_hi20(.L.str.176)
	addi.d	$s7, $a0, %pc_lo12(.L.str.176)
.LBB15_40:                              # %if.end119
	st.b	$zero, $s2, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 508
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 500
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 2
	lu12i.w	$a1, 4
	ori	$a1, $a1, 496
	add.d	$a1, $sp, $a1
	st.h	$a0, $a1, 0
	revb.2h	$a0, $s3
	lu12i.w	$a1, 4
	ori	$a1, $a1, 498
	add.d	$a1, $sp, $a1
	st.h	$a0, $a1, 0
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(inet_addr)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
	move	$s5, $a0
	beq	$a0, $s3, .LBB15_45
.LBB15_41:                              # %if.end147
	ld.w	$a2, $s4, %pc_lo12(getURL.tcp)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(socket)
	jirl	$ra, $ra, 0
	bge	$s3, $a0, .LBB15_110
# %bb.42:                               # %if.end153
	move	$s2, $a0
	ori	$a1, $zero, 3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fcntl)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	beq	$a0, $s3, .LBB15_50
# %bb.43:                               # %if.else161
	ori	$a2, $s4, 2048
	ori	$a1, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fcntl)
	jirl	$ra, $ra, 0
	blt	$s3, $a0, .LBB15_52
# %bb.44:
	pcalau12i	$a0, %pc_hi20(.L.str.172)
	addi.d	$s6, $a0, %pc_lo12(.L.str.172)
	b	.LBB15_51
.LBB15_45:                              # %if.then125
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(gethostbyname)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_49
# %bb.46:                               # %my_r_gethostbyname.exit
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB15_49
# %bb.47:                               # %lor.lhs.false133
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB15_49
# %bb.48:                               # %cleanup144.thread
	ld.w	$s5, $a0, 0
	b	.LBB15_41
.LBB15_49:                              # %cleanup144
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$a0, $a0, %pc_lo12(.L.str.170)
	addi.d	$a1, $sp, 488
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB15_110
.LBB15_50:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$s6, $a0, %pc_lo12(.L.str.171)
.LBB15_51:                              # %if.end169.sink.split
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB15_52:                              # %if.end169
	lu12i.w	$a0, 4
	ori	$a0, $a0, 500
	add.d	$a0, $sp, $a0
	st.w	$s5, $a0, 0
	addi.d	$a0, $sp, 96
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 496
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(connect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_61
# %bb.53:                               # %if.then.i
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ld.w	$a0, $a0, 0
	addi.d	$a1, $a0, -114
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB15_63
# %bb.54:                               # %sw.bb.i
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.184)
	addi.d	$a0, $a0, %pc_lo12(.L.str.184)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	addi.d	$s6, $a0, 5
	lu12i.w	$a0, 4
	ori	$a0, $a0, 528
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 528
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 4
	ori	$a1, $a1, 536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a5, $sp, 104
	xor	$a2, $s6, $a0
	sltui	$a2, $a2, 1
	slt	$a3, $a5, $a1
	slt	$a4, $s6, $a0
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bnez	$a2, .LBB15_69
# %bb.55:                               # %if.end21.lr.ph.i
	addi.w	$s8, $s2, 1
	bstrpick.d	$a2, $s2, 31, 6
	ori	$a3, $zero, 1
	sll.d	$s4, $a3, $s2
	slli.d	$a2, $a2, 3
	bstrpick.d	$a2, $a2, 60, 3
	lu12i.w	$a3, 2
	ori	$a3, $a3, 488
	add.d	$a3, $sp, $a3
	alsl.d	$s5, $a2, $a3, 3
	sub.d	$a2, $s6, $a0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 512
	add.d	$a0, $sp, $a0
	st.d	$a2, $a0, 0
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	sub.d	$a0, $a5, $a1
	lu12i.w	$a1, 4
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	blt	$s3, $a0, .LBB15_57
# %bb.56:                               # %if.then32.peel.i
	addi.d	$a1, $a2, -1
	lu12i.w	$a2, 4
	ori	$a2, $a2, 512
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	add.d	$a0, $a0, $a1
	lu12i.w	$a1, 4
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.LBB15_57:                              # %do.body.peel.i
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	or	$a0, $a0, $s4
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $s5, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a2, $sp, $a0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 512
	add.d	$a4, $sp, $a0
	move	$a0, $s8
	move	$a1, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(select)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB15_66
# %bb.58:                               # %if.end55.peel.i
	move	$s7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.187)
	addi.d	$a0, $a0, %pc_lo12(.L.str.187)
	move	$a1, $s1
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB15_67
.LBB15_59:                              # %if.then57.i
	ori	$a0, $zero, 4
	lu12i.w	$a1, 4
	ori	$a1, $a1, 544
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	lu12i.w	$a0, 4
	ori	$a0, $a0, 548
	add.d	$a3, $sp, $a0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 544
	add.d	$a4, $sp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getsockopt)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 548
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB15_81
# %bb.60:                               # %if.then.i24.i
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.189)
	addi.d	$a0, $a0, %pc_lo12(.L.str.189)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB15_82
.LBB15_61:                              # %if.else.i
	ori	$a0, $zero, 4
	lu12i.w	$a1, 4
	ori	$a1, $a1, 528
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a3, $sp, $a0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 528
	add.d	$a4, $sp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getsockopt)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB15_65
# %bb.62:                               # %if.then.i.i
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.189)
	addi.d	$a0, $a0, %pc_lo12(.L.str.189)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
	b	.LBB15_83
.LBB15_63:                              # %if.then.i
	ori	$a1, $zero, 106
	beq	$a0, $a1, .LBB15_84
# %bb.64:                               # %sw.default.i
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.184)
	addi.d	$a0, $a0, %pc_lo12(.L.str.184)
	b	.LBB15_70
.LBB15_65:
	move	$s3, $zero
	b	.LBB15_83
.LBB15_66:                              # %if.then47.peel.i
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.186)
	addi.d	$a0, $a0, %pc_lo12(.L.str.186)
	ori	$a2, $zero, 3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	b	.LBB15_68
.LBB15_67:
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 2
.LBB15_68:                              # %cleanup.peel.i
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 4
	ori	$a0, $a0, 528
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 528
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 4
	ori	$a1, $a1, 536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	xor	$a2, $a0, $s6
	sltui	$a2, $a2, 1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	slt	$a3, $a5, $a1
	slt	$a4, $s6, $a0
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	beqz	$a2, .LBB15_71
.LBB15_69:                              # %if.then20.i
	pcalau12i	$a0, %pc_hi20(.L.str.185)
	addi.d	$a0, $a0, %pc_lo12(.L.str.185)
	ori	$a2, $zero, 5
.LBB15_70:                              # %if.then173
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB15_109
.LBB15_71:
	addi.w	$s7, $zero, -1
	lu12i.w	$a2, 244
	ori	$a2, $a2, 576
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.186)
	addi.d	$a2, $a2, %pc_lo12(.L.str.186)
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.187)
	addi.d	$a2, $a2, %pc_lo12(.L.str.187)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	b	.LBB15_75
.LBB15_72:                              # %if.then47.i
                                        #   in Loop: Header=BB15_75 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $s1
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	blez	$s8, .LBB15_109
# %bb.73:                               #   in Loop: Header=BB15_75 Depth=1
	addi.w	$s8, $s8, -1
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
.LBB15_74:                              # %cleanup.i
                                        #   in Loop: Header=BB15_75 Depth=1
	lu12i.w	$a0, 4
	ori	$a0, $a0, 528
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 528
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 4
	ori	$a1, $a1, 536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	xor	$a2, $a0, $s6
	sltui	$a2, $a2, 1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	slt	$a3, $a5, $a1
	slt	$a4, $s6, $a0
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	move	$s8, $s4
	move	$s4, $s5
	bnez	$a2, .LBB15_69
.LBB15_75:                              # %if.end21.i
                                        # =>This Inner Loop Header: Depth=1
	sub.d	$a0, $s6, $a0
	lu12i.w	$a2, 4
	ori	$a2, $a2, 512
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	sub.d	$a1, $a5, $a1
	lu12i.w	$a2, 4
	ori	$a2, $a2, 520
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	blt	$s7, $a1, .LBB15_77
# %bb.76:                               # %if.then32.i
                                        #   in Loop: Header=BB15_75 Depth=1
	addi.d	$a0, $a0, -1
	lu12i.w	$a2, 4
	ori	$a2, $a2, 512
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	lu12i.w	$a1, 4
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.LBB15_77:                              # %do.body.i
                                        #   in Loop: Header=BB15_75 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	move	$s5, $s4
	or	$a0, $a0, $s4
	st.d	$a0, $a1, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a2, $sp, $a0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 512
	add.d	$a4, $sp, $a0
	move	$s4, $s8
	move	$a0, $s8
	move	$a1, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(select)
	jirl	$ra, $ra, 0
	bge	$s7, $a0, .LBB15_72
# %bb.78:                               # %if.end55.i
                                        #   in Loop: Header=BB15_75 Depth=1
	move	$s8, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bnez	$s8, .LBB15_59
# %bb.79:                               # %if.end59.i
                                        #   in Loop: Header=BB15_75 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB15_108
# %bb.80:                               #   in Loop: Header=BB15_75 Depth=1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB15_74
.LBB15_81:
	move	$s3, $zero
.LBB15_82:                              # %cleanup.thread32.i
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
.LBB15_83:                              # %nonblock_connect.exit
	addi.w	$a0, $zero, -1
	bge	$a0, $s3, .LBB15_109
.LBB15_84:                              # %if.end176
	addi.w	$s3, $zero, -1
	beq	$s4, $s3, .LBB15_87
# %bb.85:                               # %if.then179
	ori	$a1, $zero, 4
	move	$a0, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fcntl)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_87
# %bb.86:                               # %if.then182
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$a0, $a0, %pc_lo12(.L.str.173)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB15_87:                              # %if.end186
	pcalau12i	$a0, %pc_hi20(.L.str.175)
	addi.d	$a4, $a0, %pc_lo12(.L.str.175)
	lu12i.w	$a1, 2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
	move	$a2, $s7
	move	$a3, $s1
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a1, $sp, $a0
	move	$a0, $s2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(send)
	jirl	$ra, $ra, 0
	bge	$s3, $a0, .LBB15_109
# %bb.88:                               # %if.end206
	ori	$a1, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(shutdown)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s2, 31, 6
	sll.d	$s4, $s1, $s2
	slli.d	$a0, $a0, 3
	bstrpick.d	$a0, $a0, 60, 3
	addi.d	$a1, $sp, 96
	alsl.d	$s5, $a0, $a1, 3
	addi.w	$s1, $s2, 1
	pcalau12i	$a0, %pc_hi20(.LCPI15_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI15_0)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.181)
	addi.d	$a0, $a0, %pc_lo12(.L.str.181)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.182)
	addi.d	$a0, $a0, %pc_lo12(.L.str.182)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.177)
	addi.d	$a0, $a0, %pc_lo12(.L.str.177)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.178)
	addi.d	$a0, $a0, %pc_lo12(.L.str.178)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s6, $zero, 1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$s7, $sp, $a0
	b	.LBB15_90
.LBB15_89:                              # %if.then222
                                        #   in Loop: Header=BB15_90 Depth=1
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB15_109
.LBB15_90:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 96
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	or	$a0, $a0, $s4
	st.d	$a0, $s5, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	lu12i.w	$a0, 4
	ori	$a0, $a0, 528
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	addi.d	$a1, $sp, 96
	lu12i.w	$a0, 4
	ori	$a0, $a0, 528
	add.d	$a4, $sp, $a0
	move	$a0, $s1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(select)
	jirl	$ra, $ra, 0
	bge	$s3, $a0, .LBB15_89
# %bb.91:                               # %if.end230
                                        #   in Loop: Header=BB15_90 Depth=1
	ld.d	$a0, $s5, 0
	and	$a0, $a0, $s4
	beqz	$a0, .LBB15_107
# %bb.92:                               # %if.end244
                                        #   in Loop: Header=BB15_90 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a1, $sp, $a0
	move	$a0, $s2
	lu12i.w	$a2, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(recv)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	addi.w	$a0, $a0, 0
	bge	$s3, $a0, .LBB15_107
# %bb.93:                               # %if.end253
                                        #   in Loop: Header=BB15_90 Depth=1
	beqz	$a0, .LBB15_107
# %bb.94:                               # %if.end257
                                        #   in Loop: Header=BB15_90 Depth=1
	beqz	$s6, .LBB15_103
# %bb.95:                               # %if.then259
                                        #   in Loop: Header=BB15_90 Depth=1
	bstrpick.d	$a0, $s8, 30, 0
	stx.b	$zero, $a0, $s7
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_98
# %bb.96:                               # %if.then265
                                        #   in Loop: Header=BB15_90 Depth=1
	ori	$a2, $zero, 10
	move	$s6, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s7, -301
	lu12i.w	$a1, 2
	ori	$a1, $a1, 488
	add.d	$s7, $sp, $a1
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB15_98
# %bb.97:                               # %if.then272
                                        #   in Loop: Header=BB15_90 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_112
.LBB15_98:                              # %if.end315
                                        #   in Loop: Header=BB15_90 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_100
# %bb.99:                               # %if.then320
                                        #   in Loop: Header=BB15_90 Depth=1
	addi.d	$a0, $a0, 4
	sub.d	$a1, $s7, $a0
	add.w	$s8, $a1, $s8
	bnez	$s8, .LBB15_104
	b	.LBB15_102
.LBB15_100:                             # %if.else325
                                        #   in Loop: Header=BB15_90 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_103
# %bb.101:                              # %if.then330
                                        #   in Loop: Header=BB15_90 Depth=1
	addi.d	$a0, $a0, 2
	sub.d	$a1, $s7, $a0
	add.w	$s8, $a1, $s8
	bnez	$s8, .LBB15_104
.LBB15_102:                             #   in Loop: Header=BB15_90 Depth=1
	move	$s6, $zero
	b	.LBB15_90
.LBB15_103:                             #   in Loop: Header=BB15_90 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
.LBB15_104:                             # %land.lhs.true349
                                        #   in Loop: Header=BB15_90 Depth=1
	addi.w	$s6, $s8, 0
	ori	$a2, $zero, 1
	move	$a1, $s6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB15_106
# %bb.105:                              #   in Loop: Header=BB15_90 Depth=1
	move	$s6, $zero
	b	.LBB15_90
.LBB15_106:                             # %if.then354
	pcalau12i	$a0, %pc_hi20(.L.str.183)
	addi.d	$a0, $a0, %pc_lo12(.L.str.183)
	addi.d	$a2, $sp, 231
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB15_107:                             # %for.end362
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	b	.LBB15_111
.LBB15_108:                             # %if.then63.i
	pcalau12i	$a0, %pc_hi20(.L.str.188)
	addi.d	$a0, $a0, %pc_lo12(.L.str.188)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB15_109:                             # %if.then173
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB15_110:                             # %if.then151
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB15_111:                             # %cleanup365
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2704
	add.d	$sp, $sp, $a0
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
.LBB15_112:                             # %if.then276
	move	$s6, $a0
	addi.d	$a0, $sp, 231
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 24
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB15_114
# %bb.113:                              # %if.then281
	ld.d	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.179)
	addi.d	$a0, $a0, %pc_lo12(.L.str.179)
	ori	$a3, $zero, 5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB15_107
.LBB15_114:                             # %if.end283
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	addi.d	$fp, $s6, 11
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 10
	move	$a0, $fp
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB15_117
.LBB15_115:                             # %while.cond288
                                        # =>This Inner Loop Header: Depth=1
	beq	$a2, $a1, .LBB15_117
# %bb.116:                              # %while.body297
                                        #   in Loop: Header=BB15_115 Depth=1
	addi.d	$a0, $a0, 1
	ld.bu	$a2, $a0, 0
	bnez	$a2, .LBB15_115
.LBB15_117:                             # %while.end299
	st.b	$zero, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 24
	move	$a1, $a0
	st.d	$a0, $s0, 0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s0, 24
	pcalau12i	$a0, %pc_hi20(.L.str.180)
	addi.d	$a0, $a0, %pc_lo12(.L.str.180)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getURL)
	jirl	$ra, $ra, 0
	b	.LBB15_111
.Lfunc_end15:
	.size	getURL, .Lfunc_end15-getURL
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cli_mbox called with NULL dir\n"
	.size	.L.str, 31

	.type	cli_parse_mbox.rfc821,@object   # @cli_parse_mbox.rfc821
	.local	cli_parse_mbox.rfc821
	.comm	cli_parse_mbox.rfc821,8,8
	.type	cli_parse_mbox.subtype,@object  # @cli_parse_mbox.subtype
	.local	cli_parse_mbox.subtype
	.comm	cli_parse_mbox.subtype,8,8
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"in mbox()\n"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"rb"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Can't open descriptor %d\n"
	.size	.L.str.3, 26

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"From "
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Deal with message number %d\n"
	.size	.L.str.5, 29

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Message number %d is infected\n"
	.size	.L.str.6, 31

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Finished processing message\n"
	.size	.L.str.7, 29

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Extract attachments from email %d\n"
	.size	.L.str.8, 35

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"P I "
	.size	.L.str.9, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Phishing.Heuristics.Email"
	.size	.L.str.11, 26

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"cli_mbox returning %d\n"
	.size	.L.str.12, 23

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Content-Type"
	.size	.L.str.13, 13

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Content-Transfer-Encoding"
	.size	.L.str.14, 26

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Content-Disposition"
	.size	.L.str.15, 20

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"plain"
	.size	.L.str.17, 6

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"enriched"
	.size	.L.str.18, 9

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"html"
	.size	.L.str.19, 5

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"richtext"
	.size	.L.str.20, 9

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"mixed"
	.size	.L.str.21, 6

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"alternative"
	.size	.L.str.22, 12

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"digest"
	.size	.L.str.23, 7

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"signed"
	.size	.L.str.24, 7

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"parallel"
	.size	.L.str.25, 9

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"related"
	.size	.L.str.26, 8

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"report"
	.size	.L.str.27, 7

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"appledouble"
	.size	.L.str.28, 12

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"fax-message"
	.size	.L.str.29, 12

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"encrypted"
	.size	.L.str.30, 10

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"x-bfile"
	.size	.L.str.31, 8

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"knowbot"
	.size	.L.str.32, 8

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"knowbot-metadata"
	.size	.L.str.33, 17

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"knowbot-code"
	.size	.L.str.34, 13

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"knowbot-state"
	.size	.L.str.35, 14

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"parseEmailHeaders\n"
	.size	.L.str.37, 19

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"parseEmailHeaders: check '%s'\n"
	.size	.L.str.38, 31

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.space	1
	.size	.L.str.39, 1

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"End of header information\n"
	.size	.L.str.40, 27

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"Nothing interesting in the header\n"
	.size	.L.str.41, 35

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	":"
	.size	.L.str.42, 2

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"parseEmailHeaders: inished with headers, moving body\n"
	.size	.L.str.43, 54

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"parseEmailHeaders: Fullline unparsed '%s'\n"
	.size	.L.str.44, 43

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"parseEmailHeaders: no headers found, assuming it isn't an email\n"
	.size	.L.str.45, 65

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"parseEmailHeaders: return\n"
	.size	.L.str.46, 27

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"rfc822comments: contains a comment\n"
	.size	.L.str.47, 36

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"rfc822comments '%s'=>'%s'\n"
	.size	.L.str.48, 27

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"From"
	.size	.L.str.49, 5

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Received"
	.size	.L.str.50, 9

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"De"
	.size	.L.str.51, 3

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"parseEmailHeader '%s'\n"
	.size	.L.str.52, 23

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"=?"
	.size	.L.str.54, 3

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"?="
	.size	.L.str.55, 3

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"rfc2047 '%s'\n"
	.size	.L.str.56, 14

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"Unsupported RFC2047 encoding type '%c' - if you believe this file contains a virus, submit it to www.clamav.net\n"
	.size	.L.str.57, 113

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"quoted-printable"
	.size	.L.str.58, 17

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"base64"
	.size	.L.str.59, 7

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"Decoded as '%*.*s'\n"
	.size	.L.str.60, 20

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"rfc2047 returns '%s'\n"
	.size	.L.str.61, 22

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"parseMimeHeader: cmd='%s', arg='%s'\n"
	.size	.L.str.62, 37

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"Invalid content-type '%s' received, no subtype specified, assuming text/plain; charset=us-ascii\n"
	.size	.L.str.64, 97

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"Content-type '/' received, assuming application/octet-stream\n"
	.size	.L.str.65, 62

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"application"
	.size	.L.str.66, 12

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"octet-stream"
	.size	.L.str.67, 13

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	";"
	.size	.L.str.68, 2

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"/"
	.size	.L.str.69, 2

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	" "
	.size	.L.str.70, 2

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"mimeArgs = '%s'\n"
	.size	.L.str.71, 17

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"filename=unknown"
	.size	.L.str.72, 17

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"newline_in_header, check \"%s\"\n"
	.size	.L.str.73, 31

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"Message-Id: "
	.size	.L.str.74, 13

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"Date: "
	.size	.L.str.75, 7

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"in parseEmailBody, %u files saved so far\n"
	.size	.L.str.76, 42

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"parseEmailBody: hit maximum recursion level (%u)\n"
	.size	.L.str.77, 50

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"MIME.RecursionLimit"
	.size	.L.str.78, 20

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"parseEmailBody: number of files exceeded %u\n"
	.size	.L.str.79, 45

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"Parsing mail file\n"
	.size	.L.str.80, 19

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"text/plain: Assume no attachements\n"
	.size	.L.str.81, 36

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"rfc822-headers"
	.size	.L.str.82, 15

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"Changing message/rfc822-headers to text/rfc822-headers\n"
	.size	.L.str.83, 56

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"mimeType = %d\n"
	.size	.L.str.84, 15

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"Not a mime encoded message\n"
	.size	.L.str.85, 28

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"Content-type 'multipart' handler\n"
	.size	.L.str.86, 34

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"boundary"
	.size	.L.str.87, 9

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"Multipart/%s MIME message contains no boundary header\n"
	.size	.L.str.88, 55

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"Multipart has no subtype assuming alternative\n"
	.size	.L.str.89, 47

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"Multipart MIME message has no body\n"
	.size	.L.str.90, 36

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"Found MIME attachment before the first MIME section \"%s\"\n"
	.size	.L.str.91, 58

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"Multipart MIME message contains no boundary lines (%s)\n"
	.size	.L.str.92, 56

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"Now read in part %d\n"
	.size	.L.str.93, 21

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"Empty part\n"
	.size	.L.str.94, 12

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"Ignoring fake end of headers\n"
	.size	.L.str.96, 30

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"Content"
	.size	.L.str.97, 8

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"filename="
	.size	.L.str.98, 10

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"Multipart %d: End of header information\n"
	.size	.L.str.99, 41

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"Part %d starts with a continuation line\n"
	.size	.L.str.100, 41

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"Multipart %d: headers not terminated by blank line\n"
	.size	.L.str.101, 52

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"Multipart %d: About to parse folded header '%s'\n"
	.size	.L.str.102, 49

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"Part %d has %d lines, rc = %d\n"
	.size	.L.str.103, 31

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"multipart/knowbot parsed as multipart/mixed for now\n"
	.size	.L.str.104, 53

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"Unsupported multipart format `%s', parsed as mixed\n"
	.size	.L.str.105, 52

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"The message has %d parts\n"
	.size	.L.str.106, 26

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"Find out the multipart type (%s)\n"
	.size	.L.str.107, 34

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"Multipart related handler\n"
	.size	.L.str.108, 27

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"No HTML code found to be scanned\n"
	.size	.L.str.109, 34

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"Multipart alternative handler\n"
	.size	.L.str.110, 31

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"Mixed message with %d parts\n"
	.size	.L.str.111, 29

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"protocol"
	.size	.L.str.112, 9

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"application/pgp-encrypted"
	.size	.L.str.113, 26

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"PGP encoded attachment not scanned\n"
	.size	.L.str.114, 36

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"Unknown encryption protocol '%s' - if you believe this file contains a virus, submit it to www.clamav.net\n"
	.size	.L.str.115, 107

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"Encryption method missing protocol name\n"
	.size	.L.str.116, 41

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"Save non mime and/or text/plain part\n"
	.size	.L.str.117, 38

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"textpart"
	.size	.L.str.118, 9

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"MIME type 'message' cannot be decoded\n"
	.size	.L.str.119, 39

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"rfc822"
	.size	.L.str.120, 7

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"delivery-status"
	.size	.L.str.121, 16

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"Decode rfc822\n"
	.size	.L.str.122, 15

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"disposition-notification"
	.size	.L.str.123, 25

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"partial"
	.size	.L.str.124, 8

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"external-body"
	.size	.L.str.125, 14

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"Attempt to send Content-type message/external-body trapped"
	.size	.L.str.126, 59

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"Unsupported message format `%s' - if you believe this file contains a virus, submit it to www.clamav.net\n"
	.size	.L.str.127, 106

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"Message received with unknown mime encoding - assume application"
	.size	.L.str.128, 65

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"Saving main message as attachment\n"
	.size	.L.str.129, 35

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"Content-Type:"
	.size	.L.str.131, 14

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"text/plain"
	.size	.L.str.132, 11

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"text/html"
	.size	.L.str.133, 10

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"Non mime part bounce message is not mime encoded, so it will not be scanned\n"
	.size	.L.str.134, 77

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"multipart/"
	.size	.L.str.135, 11

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"message/rfc822"
	.size	.L.str.136, 15

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"cli_mbox: I believe it's plain text which must be clean\n"
	.size	.L.str.137, 57

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"Save non mime part bounce message\n"
	.size	.L.str.138, 35

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"bounce"
	.size	.L.str.139, 7

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"Received: by clamd (bounce)\n"
	.size	.L.str.140, 29

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"\n"
	.size	.L.str.141, 2

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"Found the start of another bounce candidate (%s)\n"
	.size	.L.str.142, 50

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"Found a bounce message with no header at '%s'\n"
	.size	.L.str.143, 47

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"Saving text part to scan, rc = %d\n"
	.size	.L.str.144, 35

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"parseEmailBody() returning %d\n"
	.size	.L.str.145, 31

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"PH:Phishing found\n"
	.size	.L.str.146, 19

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"Viruses pointed to by URLs not scanned in large message\n"
	.size	.L.str.147, 57

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"getHrefs: calling html_normalise_mem\n"
	.size	.L.str.148, 38

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"getHrefs: html_normalise_mem returned\n"
	.size	.L.str.149, 39

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"http://"
	.size	.L.str.150, 8

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	".exe"
	.size	.L.str.151, 5

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"swap %s %s\n"
	.size	.L.str.152, 12

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"URL %s already downloaded\n"
	.size	.L.str.153, 27

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"Possible URL spoofing attempt noticed, but not yet handled (%s)\n"
	.size	.L.str.154, 65

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"URL %s will not be scanned (FOLLOWURLS limit %d was reached)\n"
	.size	.L.str.155, 62

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"Downloading URL %s to be scanned\n"
	.size	.L.str.156, 34

	.type	getURL.default_port,@object     # @getURL.default_port
	.local	getURL.default_port
	.comm	getURL.default_port,2,2
	.type	getURL.tcp,@object              # @getURL.tcp
	.local	getURL.tcp
	.comm	getURL.tcp,4,4
	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"Ignoring long URL \"%s\"\n"
	.size	.L.str.157, 24

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"%s/%s"
	.size	.L.str.158, 6

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"wb"
	.size	.L.str.159, 3

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"Can't open '%s' for writing\n"
	.size	.L.str.160, 29

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"Saving %s to %s\n"
	.size	.L.str.161, 17

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"tcp"
	.size	.L.str.162, 4

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"Unknown prototol tcp, check /etc/protocols\n"
	.size	.L.str.163, 44

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"http"
	.size	.L.str.164, 5

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"http_proxy"
	.size	.L.str.165, 11

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"Unsupported proxy protocol (proxy = %s)\n"
	.size	.L.str.166, 41

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"Getting %s via %s\n"
	.size	.L.str.167, 19

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"Getting %s\n"
	.size	.L.str.168, 12

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"Unsupported protocol\n"
	.size	.L.str.169, 22

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"Unknown host %s\n"
	.size	.L.str.170, 17

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"getfl: %s\n"
	.size	.L.str.171, 11

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"setfl: %s\n"
	.size	.L.str.172, 11

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"f_setfl: %s\n"
	.size	.L.str.173, 13

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"GET %s HTTP/1.0\r\nUser-Agent: ClamAV %s\r\n\r\n"
	.size	.L.str.174, 43

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"devel-20071218"
	.size	.L.str.175, 15

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"GET /%s HTTP/1.0\r\nUser-Agent: ClamAV %s\r\n\r\n"
	.size	.L.str.176, 44

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"HTTP status %d\n"
	.size	.L.str.177, 16

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"\nLocation: "
	.size	.L.str.178, 12

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"URL %s will not be followed to %s (FOLLOWURLS limit %d was reached)\n"
	.size	.L.str.179, 69

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"Redirecting to %s\n"
	.size	.L.str.180, 19

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"\r\n\r\n"
	.size	.L.str.181, 5

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"\n\n"
	.size	.L.str.182, 3

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"Error writing %d bytes to %s\n"
	.size	.L.str.183, 30

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"%s: connect: %s\n"
	.size	.L.str.184, 17

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"%s: connect timeout (%d secs)\n"
	.size	.L.str.185, 31

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"%s: select attempt %d %s\n"
	.size	.L.str.186, 26

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"%s: select = %d\n"
	.size	.L.str.187, 17

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"timeout connecting to %s\n"
	.size	.L.str.188, 26

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"%s: %s\n"
	.size	.L.str.189, 8

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"boundaryStart: found %s in %s\n"
	.size	.L.str.190, 31

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"x-binhex"
	.size	.L.str.191, 9

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"Binhex file decoded to %s\n"
	.size	.L.str.192, 27

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"Couldn't decode binhex file to %s\n"
	.size	.L.str.193, 35

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"boundaryEnd: found %s in %s\n"
	.size	.L.str.194, 29

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"Mixed message part %d is of type %d\n"
	.size	.L.str.195, 37

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"No mime headers found in multipart part %d\n"
	.size	.L.str.196, 44

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"Found binhex message in multipart/mixed mainMessage\n"
	.size	.L.str.197, 53

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"Found binhex message in multipart/mixed non mime part\n"
	.size	.L.str.198, 55

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"No plain text alternative\n"
	.size	.L.str.199, 27

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"Mixed message text part disposition \"%s\"\n"
	.size	.L.str.200, 42

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"attachment"
	.size	.L.str.201, 11

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	"inline"
	.size	.L.str.202, 7

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"Mime subtype \"%s\"\n"
	.size	.L.str.203, 19

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	"Adding part to main message\n"
	.size	.L.str.204, 29

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"Treating inline as attachment\n"
	.size	.L.str.205, 31

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	"filename=mixedtextportion"
	.size	.L.str.206, 26

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	"Text type %s is not supported\n"
	.size	.L.str.207, 31

	.type	.L.str.208,@object              # @.str.208
.L.str.208:
	.asciz	"Found message inside multipart (encoding type %d)\n"
	.size	.L.str.208, 51

	.type	.L.str.209,@object              # @.str.209
.L.str.209:
	.asciz	"Unencoded multipart/message will not be scanned\n"
	.size	.L.str.209, 49

	.type	.L.str.210,@object              # @.str.210
.L.str.210:
	.asciz	"Encoded multipart/message will be scanned\n"
	.size	.L.str.210, 43

	.type	.L.str.211,@object              # @.str.211
.L.str.211:
	.asciz	"Found multipart inside multipart\n"
	.size	.L.str.211, 34

	.type	.L.str.212,@object              # @.str.212
.L.str.212:
	.asciz	"Finished recursion, rc = %d\n"
	.size	.L.str.212, 29

	.type	.L.str.213,@object              # @.str.213
.L.str.213:
	.asciz	"Only text and application attachments are fully supported, type = %d\n"
	.size	.L.str.213, 70

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"Adding to non mime-part\n"
	.size	.L.str.214, 25

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"id"
	.size	.L.str.215, 3

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	"TMPDIR"
	.size	.L.str.216, 7

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	"TMP"
	.size	.L.str.217, 4

	.type	.L.str.218,@object              # @.str.218
.L.str.218:
	.asciz	"TEMP"
	.size	.L.str.218, 5

	.type	.L.str.219,@object              # @.str.219
.L.str.219:
	.asciz	"/tmp"
	.size	.L.str.219, 5

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	"%s/clamav-partial"
	.size	.L.str.220, 18

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	"Can't create the directory '%s'\n"
	.size	.L.str.221, 33

	.type	.L.str.222,@object              # @.str.222
.L.str.222:
	.asciz	"Partial directory %s: %s\n"
	.size	.L.str.222, 26

	.type	.L.str.223,@object              # @.str.223
.L.str.223:
	.asciz	"Insecure partial directory %s (mode 0%o)\n"
	.size	.L.str.223, 42

	.type	.L.str.224,@object              # @.str.224
.L.str.224:
	.asciz	"number"
	.size	.L.str.224, 7

	.type	.L.str.225,@object              # @.str.225
.L.str.225:
	.asciz	"filename=%s%s"
	.size	.L.str.225, 14

	.type	.L.str.226,@object              # @.str.226
.L.str.226:
	.asciz	"Must reset to %s\n"
	.size	.L.str.226, 18

	.type	.L.str.227,@object              # @.str.227
.L.str.227:
	.asciz	"total"
	.size	.L.str.227, 6

	.type	.L.str.228,@object              # @.str.228
.L.str.228:
	.asciz	"rfc1341: %s, %s of %s\n"
	.size	.L.str.228, 23

	.type	.L.str.229,@object              # @.str.229
.L.str.229:
	.asciz	"?"
	.size	.L.str.229, 2

	.type	.L.str.230,@object              # @.str.230
.L.str.230:
	.asciz	"outname: %s\n"
	.size	.L.str.230, 13

	.type	.L.str.231,@object              # @.str.231
.L.str.231:
	.asciz	"Can't open '%s' for writing"
	.size	.L.str.231, 28

	.type	.L.str.232,@object              # @.str.232
.L.str.232:
	.asciz	"%s%d"
	.size	.L.str.232, 5

	.type	.L.str.233,@object              # @.str.233
.L.str.233:
	.asciz	"removed old RFC1341 file %s\n"
	.size	.L.str.233, 29

	.type	.L.str.234,@object              # @.str.234
.L.str.234:
	.asciz	"Can't open '%s' for reading"
	.size	.L.str.234, 28

	.type	.L.str.235,@object              # @.str.235
.L.str.235:
	.asciz	">From "
	.size	.L.str.235, 7

	.type	.L.str.236,@object              # @.str.236
.L.str.236:
	.asciz	"7bit"
	.size	.L.str.236, 5

	.type	.L.str.237,@object              # @.str.237
.L.str.237:
	.asciz	"8bit"
	.size	.L.str.237, 5

	.type	.L.str.238,@object              # @.str.238
.L.str.238:
	.asciz	"Found a bounce message\n"
	.size	.L.str.238, 24

	.type	.L.str.239,@object              # @.str.239
.L.str.239:
	.asciz	"Nothing new to save in the bounce message\n"
	.size	.L.str.239, 43

	.type	.L.str.240,@object              # @.str.240
.L.str.240:
	.asciz	"Not found a bounce message\n"
	.size	.L.str.240, 28

	.type	.L.str.241,@object              # @.str.241
.L.str.241:
	.asciz	"filename=textportion"
	.size	.L.str.241, 21

	.type	.L.str.242,@object              # @.str.242
.L.str.242:
	.asciz	"Saving main message\n"
	.size	.L.str.242, 21

	.type	.L.str.245,@object              # @.str.245
.L.str.245:
	.asciz	"getline_from_mbox: buffer overflow stopped, line recovered\n"
	.size	.L.str.245, 60

	.type	.L.str.246,@object              # @.str.246
.L.str.246:
	.asciz	"parseEmailFile\n"
	.size	.L.str.246, 16

	.type	.L.str.247,@object              # @.str.247
.L.str.247:
	.asciz	"Found a header line with space that should be blank\n"
	.size	.L.str.247, 53

	.type	.L.str.248,@object              # @.str.248
.L.str.248:
	.asciz	"parseEmailFile: check '%s' fullline %p\n"
	.size	.L.str.248, 40

	.type	.L.str.249,@object              # @.str.249
.L.str.249:
	.asciz	"Ignoring consecutive blank lines in the body\n"
	.size	.L.str.249, 46

	.type	.L.str.250,@object              # @.str.250
.L.str.250:
	.asciz	"parseEmailFile: Fullline unparsed '%s'\n"
	.size	.L.str.250, 40

	.type	.L.str.251,@object              # @.str.251
.L.str.251:
	.asciz	"parseEmailFile: no headers found, assuming it isn't an email\n"
	.size	.L.str.251, 62

	.type	.L.str.252,@object              # @.str.252
.L.str.252:
	.asciz	"parseEmailFile: return\n"
	.size	.L.str.252, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
