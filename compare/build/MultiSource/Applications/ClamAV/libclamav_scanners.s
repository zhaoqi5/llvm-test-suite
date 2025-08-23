	.file	"libclamav_scanners.c"
	.text
	.globl	cli_scandir                     # -- Begin function cli_scandir
	.p2align	5
	.type	cli_scandir,@function
cli_scandir:                            # @cli_scandir
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(opendir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_19
# %bb.1:                                # %while.cond.preheader
	move	$fp, $a0
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_18
# %bb.2:                                # %while.body.lr.ph
	ori	$s6, $zero, 46
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$s2, $a1, %pc_lo12(.L.str.2)
	addi.w	$s7, $zero, -1
	lu12i.w	$s8, 8
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                # %if.end48
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_4:                                # %if.end50
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_18
.LBB0_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_4
# %bb.6:                                # %if.then3
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a1, $a0, 19
	bne	$a1, $s6, .LBB0_10
# %bb.7:                                # %if.then3.tail
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a1, $a0, 20
	beqz	$a1, .LBB0_4
# %bb.8:                                # %sub_123
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a1, $a0, 20
	bne	$a1, $s6, .LBB0_10
# %bb.9:                                # %land.lhs.true.tail
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a1, $a0, 21
	beqz	$a1, .LBB0_4
	.p2align	4, , 16
.LBB0_10:                               # %if.then10
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$s4, $a0, 19
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $a0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_20
# %bb.11:                               # %if.end
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s3, $a0
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(lstat)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB0_3
# %bb.12:                               # %if.then25
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.wu	$a0, $sp, 24
	lu12i.w	$a1, 15
	and	$a0, $a0, $a1
	beq	$a0, $s8, .LBB0_15
# %bb.13:                               # %if.then25
                                        #   in Loop: Header=BB0_5 Depth=1
	lu12i.w	$a1, 4
	bne	$a0, $a1, .LBB0_3
# %bb.14:                               # %if.then31
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_3
	b	.LBB0_17
.LBB0_15:                               # %if.then40
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB0_3
# %bb.16:                               # %cli_scanfile.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s4, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s5, $a0, .LBB0_3
.LBB0_17:                               # %if.then34
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_21
.LBB0_18:                               # %if.end52
	move	$a0, $fp
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_21
.LBB0_19:                               # %if.else51
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -115
	b	.LBB0_21
.LBB0_20:                               # %if.then18
	move	$a0, $fp
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
.LBB0_21:                               # %cleanup
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end0:
	.size	cli_scandir, .Lfunc_end0-cli_scandir
                                        # -- End function
	.globl	cli_magic_scandesc              # -- Begin function cli_magic_scandesc
	.p2align	5
	.type	cli_magic_scandesc,@function
cli_magic_scandesc:                     # @cli_magic_scandesc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB1_5
# %bb.1:                                # %if.end
	ld.d	$s3, $sp, 192
	ori	$a0, $zero, 5
	blt	$a0, $s3, .LBB1_6
# %bb.2:                                # %if.then2
	addi.w	$a1, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
.LBB1_3:                                # %cleanup
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %cleanup
	move	$a0, $zero
	b	.LBB1_47
.LBB1_5:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB1_47
.LBB1_6:                                # %if.end4
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB1_14
# %bb.7:                                # %if.end6
	ld.w	$a0, $s0, 40
	beqz	$a0, .LBB1_26
# %bb.8:                                # %if.end14
	andi	$a1, $a0, 1
	beqz	$a1, .LBB1_15
# %bb.9:                                # %land.lhs.true
	ld.d	$a1, $s0, 32
	beqz	$a1, .LBB1_15
# %bb.10:                               # %land.lhs.true18
	ld.w	$a2, $a1, 0
	beqz	$a2, .LBB1_15
# %bb.11:                               # %if.then21
	ld.w	$a1, $s0, 44
	bgeu	$a2, $a1, .LBB1_15
# %bb.12:                               # %if.then26
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_4
# %bb.13:                               # %if.then31
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 1
	b	.LBB1_47
.LBB1_14:                               # %if.then5
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -116
	b	.LBB1_47
.LBB1_15:                               # %if.end35
	andi	$a0, $a0, 2
	beqz	$a0, .LBB1_18
# %bb.16:                               # %if.then39
	ld.w	$a1, $s0, 48
	ori	$a0, $zero, 16
	bltu	$a1, $a0, .LBB1_18
# %bb.17:                               # %if.then42
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	b	.LBB1_3
.LBB1_18:                               # %if.end45
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_filetype2)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 504
	bne	$s1, $s2, .LBB1_28
# %bb.19:                               # %cond.end.thread170
	ld.w	$a0, $s0, 44
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 44
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_21
# %bb.20:                               # %land.lhs.true347
	ld.wu	$a0, $sp, 32
	lu12i.w	$a1, 15
	and	$a0, $a0, $a1
	lu12i.w	$a1, 8
	ld.d	$a2, $sp, 64
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	lu12i.w	$a1, 16
	slt	$a1, $a2, $a1
	ori	$a2, $zero, 504
	masknez	$a3, $a2, $a1
	ori	$a4, $zero, 501
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$s2, $a1, $a0
.LBB1_21:                               # %if.end356
	move	$s1, $s2
.LBB1_22:                               # %sw.bb357
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_check_mydoom_log)
	jirl	$ra, $ra, 0
.LBB1_23:                               # %cond.end367.thread200
	move	$s2, $a0
.LBB1_24:                               # %cond.end367.thread200
	ld.w	$a0, $s0, 44
	addi.d	$a0, $a0, -1
.LBB1_25:                               # %cond.end367.thread194
	st.w	$a0, $s0, 44
	ori	$a3, $zero, 1
	b	.LBB1_37
.LBB1_26:                               # %if.then8
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_scandesc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_47
# %bb.27:                               # %if.then12
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB1_47
.LBB1_28:                               # %land.lhs.true52
	ld.d	$a0, $s0, 24
	ld.hu	$a0, $a0, 4
	beqz	$a0, .LBB1_31
# %bb.29:                               # %if.then56
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_scanraw)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 1
	beq	$s2, $a0, .LBB1_47
# %bb.30:                               # %if.end61
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB1_32
.LBB1_31:
	move	$s2, $zero
.LBB1_32:                               # %if.end63
	ori	$a0, $zero, 529
	bne	$s1, $a0, .LBB1_48
# %bb.33:                               # %cond.end.thread
	ld.w	$a0, $s0, 48
	ld.bu	$a1, $s0, 40
	addi.d	$a2, $a0, 1
	andi	$a1, $a1, 2
	st.w	$a2, $s0, 48
	beqz	$a1, .LBB1_36
# %bb.34:                               # %land.lhs.true169
	ld.d	$a1, $s0, 56
	ld.bu	$a1, $a1, 16
	andi	$a1, $a1, 1
	beqz	$a1, .LBB1_36
# %bb.35:                               # %if.then173
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanmail)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 48
	move	$s2, $a0
	addi.d	$a0, $a1, -1
.LBB1_36:                               # %cond.end367.thread
	st.w	$a0, $s0, 48
	ori	$a3, $zero, 1
	ori	$s1, $zero, 529
.LBB1_37:                               # %if.end386
	ori	$a0, $zero, 504
	beq	$s1, $a0, .LBB1_41
# %bb.38:                               # %if.end386
	ori	$a0, $zero, 1
	beq	$s2, $a0, .LBB1_41
# %bb.39:                               # %land.lhs.true392
	ld.d	$a0, $s0, 24
	ld.hu	$a0, $a0, 4
	bnez	$a0, .LBB1_41
# %bb.40:                               # %if.then396
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_scanraw)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB1_47
.LBB1_41:                               # %if.end402
	ld.w	$a0, $s0, 44
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 44
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 502
	bne	$s1, $a0, .LBB1_45
# %bb.42:                               # %sw.bb406
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 32
	beqz	$a0, .LBB1_45
# %bb.43:                               # %land.lhs.true410
	ld.d	$a0, $s0, 56
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_45
# %bb.44:                               # %if.then413
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanpe)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB1_45:                               # %sw.epilog417
	ld.w	$a0, $s0, 44
	addi.d	$a0, $a0, -1
	addi.w	$a1, $zero, -124
	st.w	$a0, $s0, 44
	move	$a0, $s2
	bne	$s2, $a1, .LBB1_47
# %bb.46:                               # %if.then422
	addi.w	$a0, $zero, -124
	pcaddu18i	$ra, %call36(cl_strerror)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB1_4
.LBB1_47:                               # %cleanup
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB1_48:                               # %cond.end
	ld.w	$a0, $s0, 44
	addi.d	$a2, $a0, 1
	addi.d	$a1, $s1, -501
	ori	$a3, $zero, 35
	st.w	$a2, $s0, 44
	bltu	$a3, $a1, .LBB1_25
# %bb.49:                               # %cond.end
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI1_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI1_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB1_50:                               # %sw.bb321
	ld.bu	$a0, $s0, 41
	andi	$a0, $a0, 32
	ori	$s1, $zero, 503
	beqz	$a0, .LBB1_24
# %bb.51:                               # %land.lhs.true325
	ld.d	$a0, $s0, 56
	ld.w	$a0, $a0, 4
	beqz	$a0, .LBB1_24
# %bb.52:                               # %if.then328
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanelf)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_53:                               # %sw.bb301
	ld.bu	$a0, $s0, 41
	andi	$a0, $a0, 64
	ori	$s1, $zero, 523
	beqz	$a0, .LBB1_24
# %bb.54:                               # %land.lhs.true305
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 12
	andi	$a0, $a0, 4
	beqz	$a0, .LBB1_24
# %bb.55:                               # %if.then310
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanpdf)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_56:                               # %sw.bb145
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 16
	ori	$s1, $zero, 526
	beqz	$a0, .LBB1_24
# %bb.57:                               # %land.lhs.true149
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 12
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_24
# %bb.58:                               # %if.then154
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanhtml_utf16)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_59:                               # %sw.bb288
	ld.bu	$a0, $s0, 41
	andi	$a0, $a0, 2
	ori	$s1, $zero, 518
	beqz	$a0, .LBB1_24
# %bb.60:                               # %land.lhs.true292
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 20
	andi	$a0, $a0, 8
	beqz	$a0, .LBB1_24
# %bb.61:                               # %if.then297
	ld.d	$s3, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_check_jpeg_exploit)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	bne	$a0, $s2, .LBB1_123
# %bb.62:                               # %if.then.i163
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a0, $a0, %pc_lo12(.L.str.124)
	st.d	$a0, $s3, 0
	b	.LBB1_24
.LBB1_63:                               # %sw.bb110
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 1
	ori	$s1, $zero, 536
	beqz	$a0, .LBB1_24
# %bb.64:                               # %land.lhs.true114
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 9
	andi	$a0, $a0, 32
	beqz	$a0, .LBB1_24
# %bb.65:                               # %if.then119
	ori	$a2, $zero, 23
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanautoit)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_66:                               # %sw.bb134
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 16
	ori	$s1, $zero, 528
	beqz	$a0, .LBB1_24
# %bb.67:                               # %land.lhs.true138
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 12
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_24
# %bb.68:                               # %if.then142
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanhtml)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_69:                               # %sw.bb207
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 1
	ori	$s1, $zero, 515
	beqz	$a0, .LBB1_24
# %bb.70:                               # %land.lhs.true211
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 8
	andi	$a0, $a0, 64
	beqz	$a0, .LBB1_24
# %bb.71:                               # %if.then216
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanmschm)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_72:                               # %sw.bb231
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 1
	ori	$s1, $zero, 505
	beqz	$a0, .LBB1_24
# %bb.73:                               # %land.lhs.true235
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 9
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_24
# %bb.74:                               # %if.then240
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	b	.LBB1_93
.LBB1_75:                               # %sw.bb79
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 1
	ori	$s1, $zero, 507
	beqz	$a0, .LBB1_24
# %bb.76:                               # %land.lhs.true83
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 8
	andi	$a0, $a0, 4
	beqz	$a0, .LBB1_24
# %bb.77:                               # %if.then88
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scangzip)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_78:                               # %sw.bb157
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 12
	andi	$a0, $a0, 2
	ori	$s1, $zero, 527
	beqz	$a0, .LBB1_24
# %bb.79:                               # %if.then162
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanrtf)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_80:                               # %sw.bb267
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 20
	andi	$a0, $a0, 2
	ori	$s1, $zero, 517
	beqz	$a0, .LBB1_24
# %bb.81:                               # %if.then272
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanscrenc)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_82:                               # %sw.bb188
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 20
	andi	$a0, $a0, 1
	ori	$s1, $zero, 524
	beqz	$a0, .LBB1_24
# %bb.83:                               # %if.then192
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanuuencoded)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_84:                               # %sw.bb69
	ld.bu	$a1, $s0, 40
	andi	$a1, $a1, 1
	bnez	$a1, .LBB1_121
# %bb.85:                               # %land.lhs.true371.thread
	st.w	$a0, $s0, 44
.LBB1_86:
	ori	$a3, $zero, 1
	ori	$s1, $zero, 508
	b	.LBB1_37
.LBB1_87:                               # %sw.bb331
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 1
	ori	$s1, $zero, 516
	beqz	$a0, .LBB1_24
# %bb.88:                               # %land.lhs.true335
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 9
	andi	$a0, $a0, 4
	beqz	$a0, .LBB1_24
# %bb.89:                               # %if.then340
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scansis)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_90:                               # %sw.bb243
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 1
	ori	$s1, $zero, 506
	beqz	$a0, .LBB1_24
# %bb.91:                               # %land.lhs.true247
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 9
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_24
# %bb.92:                               # %if.then252
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
.LBB1_93:                               # %cond.end367.thread200
	pcaddu18i	$ra, %call36(cli_scantar)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_94:                               # %sw.bb103
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 1
	ori	$s1, $zero, 535
	beqz	$a0, .LBB1_24
# %bb.95:                               # %if.then107
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_scannulsft)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_96:                               # %sw.bb
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 510
	b	.LBB1_24
.LBB1_97:                               # %sw.bb91
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 1
	ori	$s1, $zero, 511
	beqz	$a0, .LBB1_24
# %bb.98:                               # %land.lhs.true95
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 9
	andi	$a0, $a0, 16
	beqz	$a0, .LBB1_24
# %bb.99:                               # %if.then100
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_scanarj)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_100:                              # %sw.bb275
	ld.bu	$a0, $s0, 41
	andi	$a0, $a0, 2
	ori	$s1, $zero, 519
	beqz	$a0, .LBB1_24
# %bb.101:                              # %land.lhs.true279
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 20
	andi	$a0, $a0, 4
	beqz	$a0, .LBB1_24
# %bb.102:                              # %if.then284
	ld.d	$s2, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_check_riff_exploit)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_123
# %bb.103:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a0, $a0, %pc_lo12(.L.str.123)
	st.d	$a0, $s2, 0
	ori	$s2, $zero, 1
	b	.LBB1_24
.LBB1_104:                              # %sw.bb255
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 1
	ori	$s1, $zero, 520
	beqz	$a0, .LBB1_24
# %bb.105:                              # %land.lhs.true259
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 9
	andi	$a0, $a0, 2
	beqz	$a0, .LBB1_24
# %bb.106:                              # %if.then264
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanbinhex)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_107:                              # %sw.bb122
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 1
	ori	$s1, $zero, 514
	beqz	$a0, .LBB1_24
# %bb.108:                              # %land.lhs.true126
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 8
	andi	$a0, $a0, 32
	beqz	$a0, .LBB1_24
# %bb.109:                              # %if.then131
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_scanmscab)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_110:                              # %sw.bb219
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 4
	ori	$s1, $zero, 513
	beqz	$a0, .LBB1_24
# %bb.111:                              # %land.lhs.true223
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 8
	andi	$a0, $a0, 128
	beqz	$a0, .LBB1_24
# %bb.112:                              # %if.then228
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanole2)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_113:                              # %sw.bb313
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 20
	andi	$a0, $a0, 16
	ori	$s1, $zero, 522
	beqz	$a0, .LBB1_24
# %bb.114:                              # %if.then318
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scancryptff)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_115:                              # %sw.bb176
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 2
	ori	$s1, $zero, 521
	beqz	$a0, .LBB1_24
# %bb.116:                              # %land.lhs.true180
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 16
	andi	$a0, $a0, 2
	beqz	$a0, .LBB1_24
# %bb.117:                              # %if.then185
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scantnef)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_118:                              # %sw.bb195
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 2
	ori	$s1, $zero, 525
	beqz	$a0, .LBB1_24
# %bb.119:                              # %land.lhs.true199
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 16
	andi	$a0, $a0, 4
	beqz	$a0, .LBB1_24
# %bb.120:                              # %if.then204
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanpst)
	jirl	$ra, $ra, 0
	b	.LBB1_23
.LBB1_121:                              # %land.lhs.true73
	ld.d	$a1, $s0, 56
	ld.bu	$a1, $a1, 8
	andi	$a1, $a1, 2
	bnez	$a1, .LBB1_124
# %bb.122:                              # %land.lhs.true371.thread217
	st.w	$a0, $s0, 44
	b	.LBB1_125
.LBB1_123:
	move	$s2, $zero
	b	.LBB1_24
.LBB1_124:                              # %land.lhs.true371
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_scanzip)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s0, 40
	ld.w	$a2, $s0, 44
	move	$s2, $a0
	andi	$a0, $a1, 1
	addi.d	$a1, $a2, -1
	st.w	$a1, $s0, 44
	beqz	$a0, .LBB1_86
.LBB1_125:                              # %land.lhs.true375
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 8
	andi	$a0, $a0, 2
	ori	$a3, $zero, 1
	ori	$s1, $zero, 508
	beqz	$a0, .LBB1_37
# %bb.126:                              # %land.lhs.true375
	lu12i.w	$a0, 256
	ori	$a0, $a0, 1
	bltu	$s3, $a0, .LBB1_37
# %bb.127:                              # %if.then384
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a3, $zero
	b	.LBB1_37
.Lfunc_end1:
	.size	cli_magic_scandesc, .Lfunc_end1-cli_magic_scandesc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_22-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_50-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_72-.LJTI1_0
	.word	.LBB1_90-.LJTI1_0
	.word	.LBB1_75-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_96-.LJTI1_0
	.word	.LBB1_97-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_110-.LJTI1_0
	.word	.LBB1_107-.LJTI1_0
	.word	.LBB1_69-.LJTI1_0
	.word	.LBB1_87-.LJTI1_0
	.word	.LBB1_80-.LJTI1_0
	.word	.LBB1_59-.LJTI1_0
	.word	.LBB1_100-.LJTI1_0
	.word	.LBB1_104-.LJTI1_0
	.word	.LBB1_115-.LJTI1_0
	.word	.LBB1_113-.LJTI1_0
	.word	.LBB1_53-.LJTI1_0
	.word	.LBB1_82-.LJTI1_0
	.word	.LBB1_118-.LJTI1_0
	.word	.LBB1_56-.LJTI1_0
	.word	.LBB1_78-.LJTI1_0
	.word	.LBB1_66-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_94-.LJTI1_0
	.word	.LBB1_63-.LJTI1_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function cli_scanraw
	.type	cli_scanraw,@function
cli_scanraw:                            # @cli_scanraw
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
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	st.d	$zero, $sp, 112
	beqz	$a3, .LBB2_3
# %bb.1:                                # %if.then
	addi.d	$a0, $s1, -500
	ori	$a1, $zero, 8
	bltu	$a1, $a0, .LBB2_3
# %bb.2:                                # %if.then
	ori	$a1, $zero, 1
	sll.d	$a0, $a1, $a0
	andi	$a0, $a0, 261
	ori	$s2, $zero, 1
	bnez	$a0, .LBB2_4
.LBB2_3:                                # %sw.default
	move	$s2, $zero
.LBB2_4:                                # %if.end
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB2_11
# %bb.5:                                # %if.end2
	addi.d	$a5, $sp, 112
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s1
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cli_scandesc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 500
	move	$s2, $a0
	blt	$a0, $a1, .LBB2_68
# %bb.6:                                # %if.then5
	bne	$s1, $a1, .LBB2_12
# %bb.7:                                # %if.then7
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ori	$a4, $zero, 1
	ori	$s4, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $s2
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_scandesc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bne	$a0, $s4, .LBB2_47
# %bb.8:                                # %if.end151.thread
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a2, $fp
	move	$a3, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB2_9:                                # %if.end151.thread157
	ori	$a0, $zero, 529
	bne	$s2, $a0, .LBB2_55
# %bb.10:                               # %cond.end.thread162
	ld.w	$a0, $s0, 48
	b	.LBB2_49
.LBB2_11:                               # %if.then1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s2, $zero, -123
	b	.LBB2_71
.LBB2_12:                               # %land.lhs.true
	ori	$a0, $zero, 508
	beq	$s1, $a0, .LBB2_14
# %bb.13:                               # %land.lhs.true
	ori	$a0, $zero, 502
	bne	$s1, $a0, .LBB2_46
.LBB2_14:                               # %if.then17
	ld.d	$s5, $sp, 112
	lu12i.w	$a0, -136485
	ori	$a0, $a0, 3823
	lu32i.d	$a0, 0
	st.w	$a0, $sp, 108
	move	$s3, $zero
	beqz	$s5, .LBB2_47
# %bb.15:                               # %while.body.lr.ph
	ori	$s7, $zero, 34
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s4, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.LJTI2_0)
	addi.d	$s8, $a0, %pc_lo12(.LJTI2_0)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ori	$s6, $zero, 502
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB2_18
.LBB2_16:                               # %sw.default141
                                        #   in Loop: Header=BB2_18 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB2_17:                               # %while.cond
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$s5, $s5, 24
	beqz	$s5, .LBB2_47
.LBB2_18:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s5, 0
	addi.d	$a0, $a1, -502
	bltu	$s7, $a0, .LBB2_16
# %bb.19:                               # %while.body
                                        #   in Loop: Header=BB2_18 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s8, $a0
	add.d	$a0, $s8, $a0
	jr	$a0
.LBB2_20:                               # %sw.bb111
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 32
	beqz	$a0, .LBB2_17
# %bb.21:                               # %land.lhs.true115
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $s0, 56
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_17
# %bb.22:                               # %land.lhs.true118
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $s5, 8
	beqz	$a0, .LBB2_17
# %bb.23:                               # %if.then121
                                        #   in Loop: Header=BB2_18 Depth=1
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 96
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	ld.d	$a1, $s5, 8
	st.d	$a1, $sp, 88
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_peheader)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_17
	b	.LBB2_56
.LBB2_24:                               # %sw.bb70
                                        #   in Loop: Header=BB2_18 Depth=1
	bne	$s1, $s6, .LBB2_17
# %bb.25:                               # %sw.bb70
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.wu	$a0, $s0, 40
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_17
# %bb.26:                               # %land.lhs.true77
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 9
	andi	$a0, $a0, 8
	beqz	$a0, .LBB2_17
# %bb.27:                               # %land.lhs.true82
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $s5, 8
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB2_17
# %bb.28:                               # %if.then86
                                        #   in Loop: Header=BB2_18 Depth=1
	addi.w	$a1, $a0, -4
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
	addi.d	$a2, $a0, -4
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scannulsft)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB2_17
	b	.LBB2_9
.LBB2_29:                               # %sw.bb93
                                        #   in Loop: Header=BB2_18 Depth=1
	bne	$s1, $s6, .LBB2_17
# %bb.30:                               # %sw.bb93
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.wu	$a0, $s0, 40
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_17
# %bb.31:                               # %land.lhs.true100
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 9
	andi	$a0, $a0, 32
	beqz	$a0, .LBB2_17
# %bb.32:                               # %if.then105
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.w	$a1, $s5, 8
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
	addi.d	$a2, $a0, 23
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanautoit)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB2_17
	b	.LBB2_9
.LBB2_33:                               # %sw.bb20
                                        #   in Loop: Header=BB2_18 Depth=1
	bne	$s1, $s6, .LBB2_17
# %bb.34:                               # %sw.bb20
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.wu	$a0, $s0, 40
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_17
# %bb.35:                               # %land.lhs.true24
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 8
	andi	$a0, $a0, 2
	beqz	$a0, .LBB2_17
# %bb.36:                               # %land.lhs.true27
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $s5, 8
	beqz	$a0, .LBB2_17
# %bb.37:                               # %if.then29
                                        #   in Loop: Header=BB2_18 Depth=1
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 8
	addi.d	$a3, $sp, 108
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanzip)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB2_17
	b	.LBB2_9
.LBB2_38:                               # %sw.bb34
                                        #   in Loop: Header=BB2_18 Depth=1
	bne	$s1, $s6, .LBB2_17
# %bb.39:                               # %sw.bb34
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.wu	$a0, $s0, 40
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_17
# %bb.40:                               # %land.lhs.true41
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 8
	andi	$a0, $a0, 32
	beqz	$a0, .LBB2_17
# %bb.41:                               # %if.then46
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.w	$a1, $s5, 8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanmscab)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB2_17
	b	.LBB2_9
.LBB2_42:                               # %sw.bb52
                                        #   in Loop: Header=BB2_18 Depth=1
	bne	$s1, $s6, .LBB2_17
# %bb.43:                               # %sw.bb52
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.wu	$a0, $s0, 40
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_17
# %bb.44:                               # %land.lhs.true59
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $s0, 56
	ld.bu	$a0, $a0, 9
	andi	$a0, $a0, 16
	beqz	$a0, .LBB2_17
# %bb.45:                               # %if.then64
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.w	$a1, $s5, 8
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanarj)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB2_17
	b	.LBB2_9
.LBB2_46:
	move	$s3, $zero
.LBB2_47:                               # %if.end151
	ori	$a0, $zero, 529
	bne	$s2, $a0, .LBB2_59
.LBB2_48:                               # %cond.end
	ld.w	$a0, $s0, 48
	addi.d	$a1, $a0, 1
	ori	$a2, $zero, 1
	st.w	$a1, $s0, 48
	bne	$s3, $a2, .LBB2_51
.LBB2_49:
	ori	$s3, $zero, 1
.LBB2_50:                               # %cond.true191
	st.w	$a0, $s0, 48
	move	$s2, $s3
	b	.LBB2_68
.LBB2_51:                               # %sw.bb172
	ori	$a1, $zero, 500
	bne	$s1, $a1, .LBB2_50
# %bb.52:                               # %sw.bb172
	ld.wu	$a1, $s0, 40
	andi	$a1, $a1, 2
	beqz	$a1, .LBB2_50
# %bb.53:                               # %land.lhs.true179
	ld.d	$a1, $s0, 56
	ld.bu	$a1, $a1, 16
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_50
# %bb.54:                               # %if.then183
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanmail)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 48
	move	$s3, $a0
	addi.d	$a0, $a1, -1
	b	.LBB2_50
.LBB2_55:                               # %cond.end.thread.thread167
	ld.w	$a0, $s0, 44
	b	.LBB2_60
.LBB2_56:                               # %if.then131
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beqz	$a0, .LBB2_58
# %bb.57:                               # %if.then133
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_58:                               # %sw.epilog143.thread
	ld.d	$a1, $s5, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanembpe)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 529
	beq	$s2, $a0, .LBB2_48
.LBB2_59:                               # %cond.end.thread
	ld.w	$a0, $s0, 44
	addi.d	$a1, $a0, 1
	ori	$a2, $zero, 1
	st.w	$a1, $s0, 44
	bne	$s3, $a2, .LBB2_61
.LBB2_60:                               # %cond.false193
	ori	$s2, $zero, 1
	st.w	$a0, $s0, 44
	b	.LBB2_68
.LBB2_61:                               # %if.then157
	ori	$a1, $zero, 528
	bne	$s2, $a1, .LBB2_66
# %bb.62:                               # %sw.bb158
	ori	$a1, $zero, 500
	bne	$s1, $a1, .LBB2_66
# %bb.63:                               # %sw.bb158
	ld.wu	$a1, $s0, 40
	andi	$a1, $a1, 16
	beqz	$a1, .LBB2_66
# %bb.64:                               # %land.lhs.true165
	ld.d	$a1, $s0, 56
	ld.bu	$a1, $a1, 12
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_66
# %bb.65:                               # %if.then169
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scanhtml)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 44
	move	$s3, $a0
	addi.d	$a0, $a1, -1
.LBB2_66:                               # %cond.false193
	st.w	$a0, $s0, 44
	move	$s2, $s3
	b	.LBB2_68
	.p2align	4, , 16
.LBB2_67:                               # %while.body201
                                        #   in Loop: Header=BB2_68 Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_68:                               # %while.body201
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 112
	bnez	$a0, .LBB2_67
# %bb.69:                               # %while.end203
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB2_71
# %bb.70:                               # %if.then206
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
.LBB2_71:                               # %cleanup
	move	$a0, $s2
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
.Lfunc_end2:
	.size	cli_scanraw, .Lfunc_end2-cli_scanraw
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_20-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_33-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_42-.LJTI2_0
	.word	.LBB2_24-.LJTI2_0
	.word	.LBB2_29-.LJTI2_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function cli_scanzip
	.type	cli_scanzip,@function
cli_scanzip:                            # @cli_scanzip
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	move	$s5, $a3
	move	$fp, $a2
	move	$s3, $a1
	move	$s2, $a0
	addi.w	$s0, $zero, -1
	st.d	$zero, $sp, 288
	move	$s4, $s0
	lu32i.d	$s4, 0
	st.w	$s4, $sp, 284
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 148
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(zip_dir_open)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_73
# %bb.1:                                # %if.end
	move	$s1, $a0
	addi.d	$a1, $sp, 152
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	lu12i.w	$s6, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_74
# %bb.2:                                # %while.cond.preheader
	move	$fp, $a0
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	move	$s7, $zero
	ori	$a0, $s6, 65
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s0, $zero, -125
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
.LBB3_3:                                # %while.cond.outer.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
                                        #       Child Loop BB3_7 Depth 3
                                        #         Child Loop BB3_21 Depth 4
                                        #       Child Loop BB3_53 Depth 3
                                        #         Child Loop BB3_54 Depth 4
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
.LBB3_4:                                # %while.cond.outer
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_7 Depth 3
                                        #         Child Loop BB3_21 Depth 4
                                        #       Child Loop BB3_53 Depth 3
                                        #         Child Loop BB3_54 Depth 4
	addi.d	$a1, $sp, 296
	move	$a0, $s1
	pcaddu18i	$ra, %call36(zip_dir_read)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_7
	b	.LBB3_75
	.p2align	4, , 16
.LBB3_5:                                # %if.then36
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.w	$a0, $sp, 320
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_77
.LBB3_6:                                # %while.cond.backedge
                                        #   in Loop: Header=BB3_7 Depth=3
	addi.d	$a1, $sp, 296
	move	$a0, $s1
	pcaddu18i	$ra, %call36(zip_dir_read)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_75
.LBB3_7:                                # %while.body
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_21 Depth 4
	beqz	$s5, .LBB3_11
# %bb.8:                                # %while.body
                                        #   in Loop: Header=BB3_7 Depth=3
	bnez	$s7, .LBB3_11
# %bb.9:                                # %if.then10
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.w	$a1, $s5, 0
	ld.w	$a0, $sp, 320
	beq	$a1, $a0, .LBB3_75
# %bb.10:                               # %if.else
                                        #   in Loop: Header=BB3_7 Depth=3
	st.w	$a0, $s5, 0
.LBB3_11:                               # %if.end15
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.d	$a1, $sp, 312
	beqz	$a1, .LBB3_76
# %bb.12:                               # %if.end18
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.w	$a5, $sp, 300
	ld.w	$a6, $sp, 304
	beqz	$a5, .LBB3_15
# %bb.13:                               # %cond.true
                                        #   in Loop: Header=BB3_7 Depth=3
	div.wu	$a0, $a6, $a5
	ld.d	$a2, $s3, 32
	beqz	$a2, .LBB3_16
.LBB3_14:                               # %cond.true29
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.w	$a4, $a2, 12
	b	.LBB3_17
	.p2align	4, , 16
.LBB3_15:                               #   in Loop: Header=BB3_7 Depth=3
	move	$a0, $zero
	ld.d	$a2, $s3, 32
	bnez	$a2, .LBB3_14
.LBB3_16:                               #   in Loop: Header=BB3_7 Depth=3
	move	$a4, $zero
.LBB3_17:                               # %cond.end32
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.hu	$t0, $sp, 308
	ld.w	$a2, $sp, 320
	ld.w	$a3, $sp, 324
	ld.hu	$a7, $sp, 296
	addi.w	$s7, $s7, 1
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	and	$s4, $t0, $t1
	sltu	$s6, $zero, $s4
	st.d	$a4, $sp, 8
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.wu	$s0, $sp, 304
	addi.w	$s8, $s0, 0
	beqz	$s8, .LBB3_5
# %bb.18:                               # %if.end42
                                        #   in Loop: Header=BB3_7 Depth=3
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	move	$s2, $s3
	ld.d	$a0, $s3, 24
	ld.d	$fp, $a0, 40
	ld.d	$s7, $sp, 312
	ori	$a2, $zero, 1
	beqz	$fp, .LBB3_36
# %bb.19:                               # %do.body.preheader
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.w	$s5, $sp, 320
	ld.w	$s3, $sp, 300
	ld.hu	$a3, $sp, 296
	b	.LBB3_21
	.p2align	4, , 16
.LBB3_20:                               # %do.cond
                                        #   in Loop: Header=BB3_21 Depth=4
	ld.d	$fp, $fp, 48
	beqz	$fp, .LBB3_36
.LBB3_21:                               # %do.body
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $fp, 20
	bne	$a0, $s6, .LBB3_20
# %bb.22:                               # %if.end49
                                        #   in Loop: Header=BB3_21 Depth=4
	ld.w	$a0, $fp, 12
	beqz	$a0, .LBB3_24
# %bb.23:                               # %if.end49
                                        #   in Loop: Header=BB3_21 Depth=4
	bne	$a0, $s5, .LBB3_20
.LBB3_24:                               # %if.end57
                                        #   in Loop: Header=BB3_21 Depth=4
	ld.w	$a0, $fp, 0
	blt	$a0, $a2, .LBB3_26
# %bb.25:                               # %if.end57
                                        #   in Loop: Header=BB3_21 Depth=4
	bne	$a0, $s3, .LBB3_20
.LBB3_26:                               # %if.end66
                                        #   in Loop: Header=BB3_21 Depth=4
	ld.w	$a0, $fp, 4
	bltz	$a0, .LBB3_28
# %bb.27:                               # %if.end66
                                        #   in Loop: Header=BB3_21 Depth=4
	bne	$a0, $s8, .LBB3_20
.LBB3_28:                               # %if.end76
                                        #   in Loop: Header=BB3_21 Depth=4
	ld.w	$a0, $fp, 8
	bltz	$a0, .LBB3_30
# %bb.29:                               # %if.end76
                                        #   in Loop: Header=BB3_21 Depth=4
	bstrpick.d	$a0, $a0, 15, 0
	bne	$a3, $a0, .LBB3_20
.LBB3_30:                               # %if.end88
                                        #   in Loop: Header=BB3_21 Depth=4
	ld.w	$a0, $fp, 16
	beqz	$a0, .LBB3_32
# %bb.31:                               # %if.end88
                                        #   in Loop: Header=BB3_21 Depth=4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB3_20
.LBB3_32:                               # %if.end95
                                        #   in Loop: Header=BB3_21 Depth=4
	ld.w	$a0, $fp, 24
	beqz	$a0, .LBB3_34
# %bb.33:                               # %land.lhs.true97
                                        #   in Loop: Header=BB3_21 Depth=4
	ld.w	$a1, $s2, 44
	bltu	$a0, $a1, .LBB3_20
.LBB3_34:                               # %if.end102
                                        #   in Loop: Header=BB3_21 Depth=4
	ld.d	$a1, $fp, 32
	beqz	$a1, .LBB3_87
# %bb.35:                               # %land.lhs.true104
                                        #   in Loop: Header=BB3_21 Depth=4
	move	$a0, $s7
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bnez	$a0, .LBB3_20
	b	.LBB3_87
	.p2align	4, , 16
.LBB3_36:                               # %if.end117
                                        #   in Loop: Header=BB3_7 Depth=3
	ori	$s5, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s7, $a0
	ld.bu	$a0, $a0, -1
	ori	$a1, $zero, 47
	bne	$a0, $a1, .LBB3_38
# %bb.37:                               # %if.then124
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	move	$s3, $s2
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_38:                               # %if.end125
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.w	$a1, $sp, 300
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	move	$s3, $s2
	beqz	$a1, .LBB3_78
# %bb.39:                               # %if.end130
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.d	$a0, $s3, 32
	beqz	$a0, .LBB3_46
# %bb.40:                               # %land.lhs.true133
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.w	$a2, $a0, 12
	lu12i.w	$s2, 2
	beqz	$a2, .LBB3_42
# %bb.41:                               # %land.lhs.true138
                                        #   in Loop: Header=BB3_7 Depth=3
	div.wu	$a1, $s8, $a1
	bgeu	$a1, $a2, .LBB3_91
.LBB3_42:                               # %if.end148
                                        #   in Loop: Header=BB3_7 Depth=3
	bnez	$s4, .LBB3_47
# %bb.43:                               # %if.then170
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.d	$a3, $a0, 24
	beqz	$a3, .LBB3_48
# %bb.44:                               # %if.then170
                                        #   in Loop: Header=BB3_7 Depth=3
	bgeu	$a3, $s0, .LBB3_48
# %bb.45:                               # %if.then180
                                        #   in Loop: Header=BB3_7 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 41
	andi	$a0, $a0, 1
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_6
	b	.LBB3_92
.LBB3_46:                               # %if.end148.thread
                                        #   in Loop: Header=BB3_7 Depth=3
	lu12i.w	$s2, 2
	beqz	$s4, .LBB3_50
.LBB3_47:                               # %if.then150
                                        #   in Loop: Header=BB3_7 Depth=3
	ld.bu	$a0, $s3, 40
	andi	$a0, $a0, 8
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_6
	b	.LBB3_88
.LBB3_48:                               # %if.end191
                                        #   in Loop: Header=BB3_4 Depth=2
	ld.w	$a1, $a0, 4
	beqz	$a1, .LBB3_50
# %bb.49:                               # %if.end191
                                        #   in Loop: Header=BB3_4 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB3_98
.LBB3_50:                               # %if.end209
                                        #   in Loop: Header=BB3_4 Depth=2
	ld.w	$a2, $sp, 324
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(zip_file_open)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_70
# %bb.51:                               # %while.cond225.preheader
                                        #   in Loop: Header=BB3_4 Depth=2
	move	$s7, $a0
	addi.d	$a1, $sp, 288
	addi.d	$a2, $sp, 284
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentempfd)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_96
# %bb.52:                               # %while.cond231.preheader.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=2
	move	$s4, $zero
	move	$s0, $zero
.LBB3_53:                               # %while.cond231.preheader
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_54 Depth 4
	move	$s6, $zero
	.p2align	4, , 16
.LBB3_54:                               # %while.cond231
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_53 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $s7
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(zip_file_read)
	jirl	$ra, $ra, 0
	addi.w	$s8, $a0, 0
	blt	$s8, $s5, .LBB3_58
# %bb.55:                               # %while.body236
                                        #   in Loop: Header=BB3_54 Depth=4
	ld.w	$a1, $sp, 284
	bstrpick.d	$a0, $a0, 30, 0
	add.d	$s6, $a0, $s6
	move	$a0, $a1
	move	$a1, $fp
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	beq	$a0, $s8, .LBB3_54
# %bb.56:                               # %if.then241
                                        #   in Loop: Header=BB3_53 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s8, $zero, -123
	ld.wu	$a2, $sp, 304
	beq	$s6, $a2, .LBB3_59
.LBB3_57:                               # %if.then249
                                        #   in Loop: Header=BB3_53 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 16
	ld.hu	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB3_61
	b	.LBB3_66
.LBB3_58:                               #   in Loop: Header=BB3_53 Depth=3
	move	$s8, $zero
	ld.wu	$a2, $sp, 304
	bne	$s6, $a2, .LBB3_57
.LBB3_59:                               # %if.then263
                                        #   in Loop: Header=BB3_53 Depth=3
	ld.d	$a1, $sp, 288
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 284
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_93
# %bb.60:                               # %if.end268
                                        #   in Loop: Header=BB3_53 Depth=3
	ld.w	$a0, $sp, 284
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 284
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 1
	move	$s8, $a0
	beq	$a0, $s4, .LBB3_94
.LBB3_61:                               # %if.end276
                                        #   in Loop: Header=BB3_53 Depth=3
	ld.w	$a0, $sp, 284
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB3_63
# %bb.62:                               # %if.then279
                                        #   in Loop: Header=BB3_53 Depth=3
	ld.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB3_63:                               # %if.end281
                                        #   in Loop: Header=BB3_53 Depth=3
	ld.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 16
	bstrpick.d	$a1, $s0, 31, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $sp, 284
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_67
# %bb.64:                               # %if.end288
                                        #   in Loop: Header=BB3_53 Depth=3
	st.h	$a1, $s7, 8
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	addi.d	$a1, $sp, 288
	addi.d	$a2, $sp, 284
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentempfd)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_53
# %bb.65:                               #   in Loop: Header=BB3_4 Depth=2
	move	$s8, $a0
	b	.LBB3_67
.LBB3_66:                               #   in Loop: Header=BB3_4 Depth=2
	addi.w	$s8, $zero, -104
.LBB3_67:                               # %while.end296
                                        #   in Loop: Header=BB3_4 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(zip_file_close)
	jirl	$ra, $ra, 0
	bnez	$s8, .LBB3_69
# %bb.68:                               # %while.end296
                                        #   in Loop: Header=BB3_4 Depth=2
	beqz	$s4, .LBB3_97
.LBB3_69:                               # %if.end304
                                        #   in Loop: Header=BB3_4 Depth=2
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	beqz	$s8, .LBB3_4
	b	.LBB3_81
.LBB3_70:                               # %if.then215
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a0, $s1, 4
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $s0, .LBB3_100
# %bb.71:                               # %if.then218
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	move	$a1, $zero
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_3
# %bb.72:                               # %if.then220
                                        #   in Loop: Header=BB3_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB3_3
.LBB3_73:                               # %if.then
	ld.w	$a1, $sp, 148
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s8, $zero
	b	.LBB3_86
.LBB3_74:                               # %if.then3
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	lu12i.w	$a1, 2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(zip_dir_close)
	jirl	$ra, $ra, 0
	addi.w	$s8, $zero, -114
	b	.LBB3_86
.LBB3_75:
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	b	.LBB3_81
.LBB3_76:                               # %if.then17
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	b	.LBB3_79
.LBB3_77:                               # %if.then39
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	b	.LBB3_80
.LBB3_78:                               # %if.then128
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
.LBB3_79:                               # %while.end308
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
.LBB3_80:                               # %while.end308
	st.d	$a1, $a0, 0
	ori	$s8, $zero, 1
.LBB3_81:                               # %while.end308
	move	$a0, $s1
	pcaddu18i	$ra, %call36(zip_dir_close)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 284
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_85
# %bb.82:                               # %if.then312
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB3_84
# %bb.83:                               # %if.then315
	ld.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB3_84:                               # %if.end317
	ld.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_85:                               # %if.end318
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_86:                               # %cleanup
	move	$a0, $s8
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB3_87:                               # %if.then114
	ld.d	$a0, $fp, 40
	ld.d	$a1, $s2, 0
	st.d	$a0, $a1, 0
	ori	$s8, $zero, 1
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	b	.LBB3_81
.LBB3_88:                               # %if.then153
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_scandesc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	bltz	$a0, .LBB3_81
# %bb.89:                               # %if.then153
	ori	$a0, $zero, 1
	beq	$s8, $a0, .LBB3_81
# %bb.90:                               # %if.then162
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	b	.LBB3_80
.LBB3_91:                               # %if.then146
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	b	.LBB3_80
.LBB3_92:                               # %if.then188
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a1, $a1, %pc_lo12(.L.str.44)
	b	.LBB3_80
.LBB3_93:                               # %if.then267
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s8, $zero, -113
	b	.LBB3_95
.LBB3_94:                               # %if.then273
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 1
.LBB3_95:                               # %if.end304.thread255
	move	$a0, $s7
	pcaddu18i	$ra, %call36(zip_file_close)
	jirl	$ra, $ra, 0
	b	.LBB3_81
.LBB3_96:
	move	$s8, $a0
	b	.LBB3_95
.LBB3_97:                               # %if.end304.thread
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s8, $zero, -104
	b	.LBB3_81
.LBB3_98:                               # %if.then199
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 41
	andi	$a0, $a0, 1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_81
# %bb.99:                               # %if.then205
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	b	.LBB3_80
.LBB3_100:                              # %if.else222
	ld.d	$a1, $sp, 312
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s8, $zero, -104
	b	.LBB3_81
.Lfunc_end3:
	.size	cli_scanzip, .Lfunc_end3-cli_scanzip
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scangzip
	.type	cli_scangzip,@function
cli_scangzip:                           # @cli_scangzip
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
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(dup)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	pcaddu18i	$ra, %call36(gzdopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_3
# %bb.1:                                # %if.end
	move	$fp, $a0
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 28
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentempfd)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_6
# %bb.2:                                # %if.then3
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gzclose)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB4_5
.LBB4_3:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB4_4:                                # %cleanup
	addi.w	$a0, $zero, -105
.LBB4_5:                                # %cleanup
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
.LBB4_6:                                # %if.end5
	lu12i.w	$s2, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_17
# %bb.7:                                # %while.cond.preheader
	move	$s1, $a0
	move	$s3, $zero
	ori	$s5, $zero, 1
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_8:                                # %if.end34
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.w	$a0, $sp, 28
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB4_20
.LBB4_9:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(gzread)
	jirl	$ra, $ra, 0
	blt	$a0, $s5, .LBB4_14
# %bb.10:                               # %while.body
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$s4, $a0
	ld.d	$a0, $s0, 32
	add.d	$s3, $s3, $s4
	beqz	$a0, .LBB4_8
# %bb.11:                               # %if.then19
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB4_8
# %bb.12:                               # %if.then19
                                        #   in Loop: Header=BB4_9 Depth=1
	add.d	$a0, $s3, $s2
	bgeu	$a2, $a0, .LBB4_8
# %bb.13:                               # %if.then27
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 41
	andi	$a0, $a0, 1
	bnez	$a0, .LBB4_29
.LBB4_14:                               # %while.end
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gzclose)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 28
	addi.w	$a2, $zero, -1
	beq	$a0, $a2, .LBB4_23
# %bb.15:                               # %if.end65
	move	$a0, $a1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_26
# %bb.16:                               # %if.then70
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB4_30
.LBB4_17:                               # %if.then8
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	lu12i.w	$a1, 2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gzclose)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB4_19
# %bb.18:                               # %if.then12
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB4_19:                               # %if.end14
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB4_5
.LBB4_20:                               # %if.then38
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB4_22
# %bb.21:                               # %if.then41
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB4_22:                               # %if.end43
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gzclose)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB4_4
.LBB4_23:                               # %if.then59
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB4_25
# %bb.24:                               # %if.then62
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %if.end64
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -113
	b	.LBB4_5
.LBB4_26:                               # %if.end77
	move	$fp, $a0
	ld.w	$a0, $sp, 28
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB4_28
# %bb.27:                               # %if.then80
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB4_28:                               # %if.end82
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB4_5
.LBB4_29:                               # %if.then31
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	st.d	$a1, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gzclose)
	jirl	$ra, $ra, 0
.LBB4_30:                               # %if.then31
	ld.w	$a0, $sp, 28
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB4_32
# %bb.31:                               # %if.then52
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB4_32:                               # %if.end54
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB4_5
.Lfunc_end4:
	.size	cli_scangzip, .Lfunc_end4-cli_scangzip
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanarj
	.type	cli_scanarj,@function
cli_scanarj:                            # @cli_scanarj
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
	move	$s2, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -118
	b	.LBB5_34
.LBB5_2:                                # %if.end
	beqz	$s2, .LBB5_4
# %bb.3:                                # %if.then3
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB5_4:                                # %if.end5
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_unarj_open)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_8
# %bb.5:                                # %if.then7
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB5_7
# %bb.6:                                # %if.then9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB5_7:                                # %if.end11
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cl_strerror)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB5_34
.LBB5_8:                                # %if.end13
	st.d	$zero, $sp, 24
	ori	$s7, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$s2, $a0, %pc_lo12(.L.str.74)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s3, $a0, %pc_lo12(.L.str.75)
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$s8, $a0, %pc_lo12(.L.str.72)
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$s4, $a0, %pc_lo12(.L.str.71)
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_9:                                # %do.cond
                                        #   in Loop: Header=BB5_10 Depth=1
	bnez	$s5, .LBB5_29
.LBB5_10:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_unarj_prepare_file)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_27
# %bb.11:                               # %if.end17
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB5_23
# %bb.12:                               # %if.then.i
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.d	$a3, $a0, 24
	beqz	$a3, .LBB5_15
# %bb.13:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.wu	$a2, $sp, 12
	bgeu	$a3, $a2, .LBB5_15
# %bb.14:                               # %if.then6.i
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.d	$a0, $sp, 24
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$a1, $a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB5_23
	b	.LBB5_35
	.p2align	4, , 16
.LBB5_15:                               # %if.end15.i
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.w	$a2, $a0, 12
	beqz	$a2, .LBB5_23
# %bb.16:                               # %land.lhs.true18.i
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.w	$a0, $sp, 12
	beqz	$a0, .LBB5_23
# %bb.17:                               # %land.lhs.true21.i
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.w	$a1, $sp, 8
	beqz	$a1, .LBB5_23
# %bb.18:                               # %if.then23.i
                                        #   in Loop: Header=BB5_10 Depth=1
	div.wu	$a1, $a0, $a1
	bltu	$a1, $a2, .LBB5_23
# %bb.19:                               # %if.then30.i
                                        #   in Loop: Header=BB5_10 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB5_22
# %bb.20:                               # %if.then30.i
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.wu	$a1, $sp, 12
	bltu	$a0, $a1, .LBB5_22
# %bb.21:                               # %if.then46.i
                                        #   in Loop: Header=BB5_10 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB5_23
.LBB5_22:                               # %if.else.i
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.bu	$a0, $s0, 41
	andi	$a0, $a0, 1
	bnez	$a0, .LBB5_37
	.p2align	4, , 16
.LBB5_23:                               # %if.end21
                                        #   in Loop: Header=BB5_10 Depth=1
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_unarj_extract_file)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 36
	move	$s5, $a0
	bltz	$a1, .LBB5_25
# %bb.24:                               # %if.then24
                                        #   in Loop: Header=BB5_10 Depth=1
	move	$a0, $a1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 36
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 36
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	beq	$s6, $s7, .LBB5_28
.LBB5_25:                               # %if.end34
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB5_9
# %bb.26:                               # %if.then37
                                        #   in Loop: Header=BB5_10 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 24
	b	.LBB5_9
.LBB5_27:
	move	$s5, $a0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB5_31
	b	.LBB5_30
.LBB5_28:                               # %if.then32
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
.LBB5_29:                               # %do.end
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB5_31
.LBB5_30:                               # %if.then43
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB5_31:                               # %if.end45
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB5_33
# %bb.32:                               # %if.then48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_33:                               # %if.end50
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, -2
	sltui	$a0, $a0, 1
	masknez	$a0, $s5, $a0
.LBB5_34:                               # %cleanup
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
.LBB5_35:                               # %if.then14.i
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
.LBB5_36:                               # %do.end
	st.d	$a1, $a0, 0
	ori	$s5, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB5_31
	b	.LBB5_30
.LBB5_37:                               # %if.then50.i
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	b	.LBB5_36
.Lfunc_end5:
	.size	cli_scanarj, .Lfunc_end5-cli_scanarj
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanmscab
	.type	cli_scanmscab,@function
cli_scanmscab:                          # @cli_scanmscab
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
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 24
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cab_open)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_19
# %bb.1:                                # %if.end
	ld.d	$s0, $sp, 48
	beqz	$s0, .LBB6_17
# %bb.2:                                # %for.body.lr.ph
	move	$s4, $zero
	ori	$s7, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$s1, $a0, %pc_lo12(.L.str.84)
	addi.w	$s8, $zero, -115
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s3, $a0, %got_pc_lo12(cli_leavetemps_flag)
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$s2, $a0, %pc_lo12(.L.str.85)
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_3:                                # %if.end50
                                        #   in Loop: Header=BB6_5 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	beq	$s4, $a0, .LBB6_18
.LBB6_4:                                # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$s0, $s0, 48
	addi.w	$s7, $s7, 1
	move	$a0, $s4
	beqz	$s0, .LBB6_18
.LBB6_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB6_11
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a3, $a0, 24
	beqz	$a3, .LBB6_9
# %bb.7:                                # %land.lhs.true6
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.wu	$a2, $s0, 0
	bgeu	$a3, $a2, .LBB6_9
# %bb.8:                                # %if.then10
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a1, $s0, 16
	addi.w	$a2, $a2, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB6_4
	b	.LBB6_23
	.p2align	4, , 16
.LBB6_9:                                # %land.lhs.true20
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.w	$a1, $a0, 4
	beqz	$a1, .LBB6_11
# %bb.10:                               # %land.lhs.true20
                                        #   in Loop: Header=BB6_5 Depth=1
	bltu	$a1, $s7, .LBB6_20
.LBB6_11:                               # %if.end37
                                        #   in Loop: Header=BB6_5 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	ld.w	$a3, $s0, 0
	move	$s5, $a0
	move	$a0, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cab_extract)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_13
# %bb.12:                               # %if.then43
                                        #   in Loop: Header=BB6_5 Depth=1
	move	$s4, $a0
	pcaddu18i	$ra, %call36(cl_strerror)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_13:                               # %if.else
                                        #   in Loop: Header=BB6_5 Depth=1
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s4, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB6_15
# %bb.14:                               # %if.end.i
                                        #   in Loop: Header=BB6_5 Depth=1
	move	$s6, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB6_15:                               # %if.end46
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.bu	$a0, $s3, 0
	bnez	$a0, .LBB6_3
# %bb.16:                               # %if.then48
                                        #   in Loop: Header=BB6_5 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	b	.LBB6_3
.LBB6_17:
	move	$a0, $zero
.LBB6_18:                               # %for.end
	move	$fp, $a0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(cab_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB6_19:                               # %cleanup
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
.LBB6_20:                               # %if.then28
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(cab_free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	bnez	$a0, .LBB6_22
# %bb.21:
	move	$a0, $zero
	b	.LBB6_19
.LBB6_22:                               # %if.then34
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.83)
	addi.d	$a1, $a1, %pc_lo12(.L.str.83)
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 1
	b	.LBB6_19
.LBB6_23:                               # %if.then15
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.81)
	addi.d	$a1, $a1, %pc_lo12(.L.str.81)
	st.d	$a1, $a0, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(cab_free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB6_19
.Lfunc_end6:
	.size	cli_scanmscab, .Lfunc_end6-cli_scanmscab
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanhtml
	.type	cli_scanhtml,@function
cli_scanhtml:                           # @cli_scanhtml
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1200
	st.d	$ra, $sp, 1192                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1160                  # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB7_3
# %bb.1:                                # %if.end
	ld.d	$a0, $sp, 56
	lu12i.w	$a1, 2560
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB7_4
# %bb.2:                                # %if.then2
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_24
.LBB7_3:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB7_24
.LBB7_4:                                # %if.end3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_6
# %bb.5:                                # %if.then6
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -118
	b	.LBB7_24
.LBB7_6:                                # %if.end7
	ld.d	$a3, $s0, 56
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(html_normalise_fd)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a2, $a0, %pc_lo12(.L.str.90)
	addi.d	$a0, $sp, 136
	ori	$a1, $zero, 1024
	move	$a3, $fp
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_10
# %bb.7:                                # %if.end16
	ori	$a3, $zero, 528
	move	$s1, $a0
	move	$a1, $s0
	move	$a2, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_scandesc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	bltz	$s2, .LBB7_21
# %bb.8:                                # %if.end16
	ori	$a1, $zero, 1
	beq	$s2, $a1, .LBB7_21
# %bb.9:                                # %if.end24
	bnez	$s2, .LBB7_12
.LBB7_10:                               # %if.then26
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a2, $a0, %pc_lo12(.L.str.91)
	addi.d	$a0, $sp, 136
	ori	$a1, $zero, 1024
	move	$a3, $fp
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_15
# %bb.11:                               # %if.then32
	ori	$a3, $zero, 528
	move	$s1, $a0
	move	$a1, $s0
	move	$a2, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_scandesc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB7_12:                               # %if.end36
	bltz	$s2, .LBB7_21
# %bb.13:                               # %if.end36
	ori	$a1, $zero, 1
	beq	$s2, $a1, .LBB7_21
# %bb.14:                               # %if.end45
	bnez	$s2, .LBB7_17
.LBB7_15:                               # %if.then47
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a2, $a0, %pc_lo12(.L.str.92)
	addi.d	$a0, $sp, 136
	ori	$a1, $zero, 1024
	move	$a3, $fp
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_20
# %bb.16:                               # %if.then53
	ori	$a3, $zero, 528
	move	$s1, $a0
	move	$a1, $s0
	move	$a2, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_scandesc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB7_17:                               # %if.end57
	bltz	$s2, .LBB7_21
# %bb.18:                               # %if.end57
	ori	$a1, $zero, 1
	beq	$s2, $a1, .LBB7_21
# %bb.19:                               # %if.end66
	bnez	$s2, .LBB7_21
.LBB7_20:                               # %if.then68
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a2, $a0, %pc_lo12(.L.str.93)
	addi.d	$a0, $sp, 136
	ori	$a1, $zero, 1024
	move	$a3, $fp
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB7_21:                               # %if.end73
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB7_23
# %bb.22:                               # %if.then75
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB7_23:                               # %if.end77
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB7_24:                               # %cleanup
	ld.d	$s2, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1192                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1200
	ret
.Lfunc_end7:
	.size	cli_scanhtml, .Lfunc_end7-cli_scanhtml
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanhtml_utf16
	.type	cli_scanhtml_utf16,@function
cli_scanhtml_utf16:                     # @cli_scanhtml_utf16
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	st.d	$s4, $sp, 520                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB8_9
# %bb.1:                                # %while.cond.preheader
	move	$s0, $a0
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 512
	move	$a0, $s2
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB8_7
# %bb.2:                                # %while.body.preheader
	addi.w	$s4, $zero, -1
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_3:                                # %if.end16
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 512
	move	$a0, $s2
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB8_7
.LBB8_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $a0, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(cli_utf16toascii)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_3
# %bb.5:                                # %if.then7
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$s3, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB8_12
# %bb.6:                                # %if.end15
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB8_3
.LBB8_7:                                # %while.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_scanhtml)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB8_10
# %bb.8:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB8_11
.LBB8_9:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB8_13
.LBB8_10:                               # %if.then22
	move	$a0, $fp
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB8_11:                               # %if.end24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB8_14
.LBB8_12:                               # %if.then12
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB8_13:                               # %cleanup
	addi.w	$a0, $zero, -123
.LBB8_14:                               # %cleanup
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.Lfunc_end8:
	.size	cli_scanhtml_utf16, .Lfunc_end8-cli_scanhtml_utf16
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanmail
	.type	cli_scanmail,@function
cli_scanmail:                           # @cli_scanmail
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a1, $a1, 48
	ld.w	$a2, $s0, 44
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_3
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -118
.LBB9_2:                                # %cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_3:                                # %if.end
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_mbox)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_5
# %bb.4:                                # %if.then4
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB9_2
	b	.LBB9_6
.LBB9_5:                                # %if.end9
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a1, $a1, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a1, $a1, 0
	move	$s1, $a0
	bnez	$a1, .LBB9_2
.LBB9_6:                                # %if.then12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
	b	.LBB9_2
.Lfunc_end9:
	.size	cli_scanmail, .Lfunc_end9-cli_scanmail
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scantnef
	.type	cli_scantnef,@function
cli_scantnef:                           # @cli_scantnef
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -118
	b	.LBB10_4
.LBB10_2:                               # %if.end
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_tnef)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB10_5
# %bb.3:                                # %if.end5
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB10_6
.LBB10_4:                               # %cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB10_5:                               # %if.then3
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB10_4
.LBB10_6:                               # %if.then7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
	b	.LBB10_4
.Lfunc_end10:
	.size	cli_scantnef, .Lfunc_end10-cli_scantnef
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanuuencoded
	.type	cli_scanuuencoded,@function
cli_scanuuencoded:                      # @cli_scanuuencoded
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -118
	b	.LBB11_4
.LBB11_2:                               # %if.end
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_uuencode)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB11_5
# %bb.3:                                # %if.end5
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB11_6
.LBB11_4:                               # %cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB11_5:                               # %if.then3
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB11_4
.LBB11_6:                               # %if.then7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
	b	.LBB11_4
.Lfunc_end11:
	.size	cli_scanuuencoded, .Lfunc_end11-cli_scanuuencoded
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanpst
	.type	cli_scanpst,@function
cli_scanpst:                            # @cli_scanpst
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -118
	b	.LBB12_4
.LBB12_2:                               # %if.end
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_pst)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB12_5
# %bb.3:                                # %if.end5
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB12_6
.LBB12_4:                               # %cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB12_5:                               # %if.then3
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB12_4
.LBB12_6:                               # %if.then7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
	b	.LBB12_4
.Lfunc_end12:
	.size	cli_scanpst, .Lfunc_end12-cli_scanpst
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanmschm
	.type	cli_scanmschm,@function
cli_scanmschm:                          # @cli_scanmschm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -118
	b	.LBB13_5
.LBB13_2:                               # %if.end
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(chm_unpack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_6
# %bb.3:                                # %if.then4
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB13_5
.LBB13_4:                               # %if.then8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB13_5:                               # %cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB13_6:
	move	$s0, $zero
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB13_5
	b	.LBB13_4
.Lfunc_end13:
	.size	cli_scanmschm, .Lfunc_end13-cli_scanmschm
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanole2
	.type	cli_scanole2,@function
cli_scanole2:                           # @cli_scanole2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -118
	b	.LBB14_8
.LBB14_2:                               # %if.end
	ld.d	$a2, $s1, 32
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_ole2_extract)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_4
# %bb.3:                                # %if.then4
	move	$s0, $a0
	pcaddu18i	$ra, %call36(cl_strerror)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB14_6
.LBB14_4:                               # %if.end10
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_vba_scandir)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	beq	$a0, $s0, .LBB14_6
# %bb.5:                                # %if.then12
	move	$s2, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	masknez	$a1, $s2, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
.LBB14_6:                               # %if.end17
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB14_8
# %bb.7:                                # %if.then19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB14_8:                               # %cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	cli_scanole2, .Lfunc_end14-cli_scanole2
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scantar
	.type	cli_scantar,@function
cli_scantar:                            # @cli_scantar
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a0, $a0, %pc_lo12(.L.str.116)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a0, $a0, %pc_lo12(.L.str.117)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -118
	b	.LBB15_5
.LBB15_2:                               # %if.end
	ld.d	$a3, $s1, 32
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_untar)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_6
# %bb.3:                                # %if.then4
	move	$s0, $a0
	pcaddu18i	$ra, %call36(cl_strerror)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB15_5
.LBB15_4:                               # %if.then9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB15_5:                               # %cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB15_6:                               # %if.else
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB15_5
	b	.LBB15_4
.Lfunc_end15:
	.size	cli_scantar, .Lfunc_end15-cli_scantar
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanbinhex
	.type	cli_scanbinhex,@function
cli_scanbinhex:                         # @cli_scanbinhex
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -118
	b	.LBB16_5
.LBB16_2:                               # %if.end
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_binhex)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_6
# %bb.3:                                # %if.then4
	move	$s0, $a0
	pcaddu18i	$ra, %call36(cl_strerror)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a0, $a0, %pc_lo12(.L.str.121)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB16_5
.LBB16_4:                               # %if.then9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB16_5:                               # %cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB16_6:                               # %if.else
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB16_5
	b	.LBB16_4
.Lfunc_end16:
	.size	cli_scanbinhex, .Lfunc_end16-cli_scanbinhex
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanscrenc
	.type	cli_scanscrenc,@function
cli_scanscrenc:                         # @cli_scanscrenc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -118
	b	.LBB17_5
.LBB17_2:                               # %if.end
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(html_screnc_decode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_6
# %bb.3:                                # %if.then4
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB17_5
.LBB17_4:                               # %if.then8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB17_5:                               # %cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB17_6:
	move	$s0, $zero
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB17_5
	b	.LBB17_4
.Lfunc_end17:
	.size	cli_scanscrenc, .Lfunc_end17-cli_scanscrenc
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanpdf
	.type	cli_scanpdf,@function
cli_scanpdf:                            # @cli_scanpdf
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a0, $a0, %pc_lo12(.L.str.125)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -118
	b	.LBB18_4
.LBB18_2:                               # %if.end
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_pdf)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB18_5
# %bb.3:                                # %if.end5
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB18_6
.LBB18_4:                               # %cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB18_5:                               # %if.then3
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB18_4
.LBB18_6:                               # %if.then7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
	b	.LBB18_4
.Lfunc_end18:
	.size	cli_scanpdf, .Lfunc_end18-cli_scanpdf
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scancryptff
	.type	cli_scancryptff,@function
cli_scancryptff:                        # @cli_scancryptff
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
	move	$fp, $a1
	move	$s3, $a0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	addi.w	$s4, $zero, -1
	beq	$a0, $s4, .LBB19_10
# %bb.1:                                # %if.end
	ori	$a1, $zero, 16
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bge	$s4, $a0, .LBB19_11
# %bb.2:                                # %if.end4
	ld.w	$a0, $sp, 64
	addi.w	$s5, $a0, -16
	bstrpick.d	$s1, $s5, 31, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_12
# %bb.3:                                # %if.end10
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_13
# %bb.4:                                # %if.end16
	move	$s2, $a0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	bne	$s5, $a0, .LBB19_14
# %bb.5:                                # %for.cond.preheader
	beqz	$s5, .LBB19_24
# %bb.6:                                # %iter.check
	ori	$a1, $zero, 16
	move	$a0, $zero
	bltu	$s5, $a1, .LBB19_22
# %bb.7:                                # %iter.check
	sub.d	$a1, $s0, $s2
	ori	$a2, $zero, 63
	bgeu	$a2, $a1, .LBB19_22
# %bb.8:                                # %vector.main.loop.iter.check
	ori	$a0, $zero, 64
	bgeu	$s5, $a0, .LBB19_15
# %bb.9:
	move	$a0, $zero
	b	.LBB19_19
.LBB19_10:                              # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a0, $a0, %pc_lo12(.L.str.126)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB19_37
.LBB19_11:                              # %if.then3
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB19_38
.LBB19_12:                              # %if.then9
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB19_38
.LBB19_13:                              # %if.then15
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB19_38
.LBB19_14:                              # %if.then22
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB19_32
.LBB19_15:                              # %vector.ph
	bstrpick.d	$a0, $s1, 31, 6
	slli.d	$a0, $a0, 6
	addi.d	$a1, $s0, 32
	addi.d	$a2, $s2, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB19_16:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvxori.b	$xr0, $xr0, 255
	xvxori.b	$xr1, $xr1, 255
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a3, $a3, -64
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB19_16
# %bb.17:                               # %middle.block
	beq	$a0, $s1, .LBB19_24
# %bb.18:                               # %vec.epilog.iter.check
	andi	$a1, $s1, 48
	beqz	$a1, .LBB19_22
.LBB19_19:                              # %vec.epilog.ph
	move	$a3, $a0
	bstrpick.d	$a0, $s1, 31, 4
	slli.d	$a0, $a0, 4
	sub.d	$a1, $a3, $a0
	add.d	$a2, $s0, $a3
	add.d	$a3, $s2, $a3
	.p2align	4, , 16
.LBB19_20:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vxori.b	$vr0, $vr0, 255
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB19_20
# %bb.21:                               # %vec.epilog.middle.block
	beq	$a0, $s1, .LBB19_24
.LBB19_22:                              # %for.body.preheader
	add.d	$a1, $s2, $a0
	add.d	$a2, $s0, $a0
	sub.d	$a0, $s1, $a0
	.p2align	4, , 16
.LBB19_23:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a1, 0
	nor	$a3, $a3, $zero
	st.b	$a3, $a2, 0
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB19_23
.LBB19_24:                              # %for.end
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bge	$s4, $a0, .LBB19_31
# %bb.25:                               # %if.end35
	move	$s3, $a0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB19_33
# %bb.26:                               # %if.end42
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB19_34
# %bb.27:                               # %if.end48
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a0, $a0, %pc_lo12(.L.str.133)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s0, $a0
	bne	$a0, $a1, .LBB19_29
# %bb.28:                               # %if.then53
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB19_29:                              # %if.end54
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB19_39
# %bb.30:                               # %if.then56
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB19_40
.LBB19_31:                              # %if.then34
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a0, $a0, %pc_lo12(.L.str.130)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB19_32:                              # %cleanup
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB19_36
.LBB19_33:                              # %if.then40
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB19_35
.LBB19_34:                              # %if.then46
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a0, $a0, %pc_lo12(.L.str.132)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB19_35:                              # %cleanup
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB19_36:                              # %cleanup
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_37:                              # %cleanup
	addi.w	$a0, $zero, -123
.LBB19_38:                              # %cleanup
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
.LBB19_39:                              # %if.else
	move	$a0, $s2
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB19_40:                              # %if.end58
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB19_38
.Lfunc_end19:
	.size	cli_scancryptff, .Lfunc_end19-cli_scancryptff
                                        # -- End function
	.globl	cl_scandesc                     # -- Begin function cl_scandesc
	.p2align	5
	.type	cl_scandesc,@function
cl_scandesc:                            # @cl_scandesc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48
	st.d	$zero, $sp, 24
	st.d	$a3, $sp, 32
	st.d	$a1, $sp, 8
	ld.d	$a1, $a3, 80
	st.d	$a4, $sp, 40
	st.d	$a2, $sp, 16
	st.w	$a5, $sp, 48
	st.d	$a1, $sp, 64
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 60
	sltui	$a2, $a0, 1
	sltu	$a1, $zero, $a1
	masknez	$a3, $a0, $a2
	masknez	$a0, $a0, $a1
	ori	$a4, $zero, 1
	maskeqz	$a1, $a4, $a1
	or	$a0, $a1, $a0
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a3
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end20:
	.size	cl_scandesc, .Lfunc_end20-cl_scandesc
                                        # -- End function
	.globl	cl_scanfile                     # -- Begin function cl_scanfile
	.p2align	5
	.type	cl_scanfile,@function
cl_scanfile:                            # @cl_scanfile
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	move	$fp, $a5
	move	$s0, $a4
	move	$s2, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB21_2
# %bb.1:                                # %if.end
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 56
	st.d	$zero, $sp, 32
	st.d	$s2, $sp, 40
	st.d	$s3, $sp, 16
	ld.d	$a1, $s2, 80
	st.d	$s0, $sp, 48
	st.d	$s1, $sp, 24
	st.w	$fp, $sp, 56
	st.d	$a1, $sp, 72
	addi.d	$a1, $sp, 16
	move	$s0, $a0
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	sltui	$a2, $a0, 1
	sltu	$a1, $zero, $a1
	masknez	$a3, $a0, $a2
	masknez	$a0, $a0, $a1
	ori	$a4, $zero, 1
	maskeqz	$a1, $a4, $a1
	or	$a0, $a1, $a0
	maskeqz	$a0, $a0, $a2
	or	$fp, $a0, $a3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	b	.LBB21_3
.LBB21_2:
	addi.w	$fp, $zero, -115
.LBB21_3:                               # %cleanup
	move	$a0, $fp
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end21:
	.size	cl_scanfile, .Lfunc_end21-cl_scanfile
                                        # -- End function
	.p2align	5                               # -- Begin function cli_scanembpe
	.type	cli_scanembpe,@function
cli_scanembpe:                          # @cli_scanembpe
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$s2, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_14
# %bb.1:                                # %if.end
	move	$fp, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB22_15
# %bb.2:                                # %while.cond.preheader
	move	$s0, $a0
	move	$s3, $zero
	ori	$s5, $zero, 1
	b	.LBB22_4
	.p2align	4, , 16
.LBB22_3:                               # %if.end20
                                        #   in Loop: Header=BB22_4 Depth=1
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB22_16
.LBB22_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 512
	move	$a0, $s2
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	addi.w	$s4, $a0, 0
	blt	$s4, $s5, .LBB22_9
# %bb.5:                                # %while.body
                                        #   in Loop: Header=BB22_4 Depth=1
	ld.d	$a1, $s1, 32
	bstrpick.d	$a0, $a0, 30, 0
	add.d	$s3, $a0, $s3
	beqz	$a1, .LBB22_3
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB22_4 Depth=1
	ld.d	$a2, $a1, 24
	beqz	$a2, .LBB22_3
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB22_4 Depth=1
	addi.d	$a0, $s3, 512
	bgeu	$a2, $a0, .LBB22_3
# %bb.8:                                # %if.then17
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB22_9:                               # %while.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB22_20
# %bb.10:                               # %if.end41
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB22_23
# %bb.11:                               # %if.then46
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB22_13
# %bb.12:                               # %if.then49
	move	$a0, $fp
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB22_13:                              # %if.end51
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB22_19
.LBB22_14:
	addi.w	$a0, $zero, -114
	b	.LBB22_19
.LBB22_15:                              # %if.then2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB22_18
.LBB22_16:                              # %if.then25
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB22_18
# %bb.17:                               # %if.then28
	move	$a0, $fp
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB22_18:                              # %if.end30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
.LBB22_19:                              # %cleanup
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.LBB22_20:                              # %if.then35
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB22_22
# %bb.21:                               # %if.then38
	move	$a0, $fp
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB22_22:                              # %if.end40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -113
	b	.LBB22_19
.LBB22_23:                              # %if.end52
	move	$a0, $s0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB22_25
# %bb.24:                               # %if.then55
	move	$a0, $fp
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB22_25:                              # %if.end57
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB22_19
.Lfunc_end22:
	.size	cli_scanembpe, .Lfunc_end22-cli_scanembpe
                                        # -- End function
	.p2align	5                               # -- Begin function cli_vba_scandir
	.type	cli_vba_scandir,@function
cli_vba_scandir:                        # @cli_vba_scandir
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$s8, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(vba56_dir_read)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_12
# %bb.1:                                # %for.cond.preheader
	move	$s2, $a0
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB23_16
# %bb.2:                                # %for.body.lr.ph
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s1, $zero
	move	$fp, $zero
	addi.w	$a0, $zero, -114
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s3, $a0, %pc_lo12(.L.str.2)
	addi.w	$s0, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$s4, $a0, %pc_lo12(.L.str.110)
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$s5, $a0, %pc_lo12(.L.str.111)
	b	.LBB23_5
	.p2align	4, , 16
.LBB23_3:                               # %if.then24
                                        #   in Loop: Header=BB23_5 Depth=1
	ld.d	$a0, $s2, 8
	ldx.d	$a1, $a0, $s1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB23_4:                               # %for.inc
                                        #   in Loop: Header=BB23_5 Depth=1
	ld.w	$a0, $s2, 0
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 8
	addi.d	$s8, $s8, 4
	bge	$fp, $a0, .LBB23_34
.LBB23_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 40
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 8
	ldx.d	$a1, $a1, $s1
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s6, $a0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_31
# %bb.6:                                # %if.end
                                        #   in Loop: Header=BB23_5 Depth=1
	move	$s6, $a0
	ld.d	$a0, $s2, 8
	ld.d	$a2, $s2, 40
	ldx.d	$a3, $a0, $s1
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB23_32
# %bb.7:                                # %if.end15
                                        #   in Loop: Header=BB23_5 Depth=1
	move	$s7, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	ldx.d	$a1, $a0, $s1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	ldx.w	$a1, $a0, $s8
	addi.d	$a2, $sp, 180
	move	$a0, $s7
	pcaddu18i	$ra, %call36(vba_decompress)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB23_3
# %bb.8:                                # %if.else
                                        #   in Loop: Header=BB23_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.w	$a1, $sp, 180
	beqz	$a0, .LBB23_10
# %bb.9:                                # %if.then29
                                        #   in Loop: Header=BB23_5 Depth=1
	ld.d	$a2, $a0, 0
	bstrpick.d	$a3, $a1, 62, 51
	add.w	$a3, $a1, $a3
	srai.d	$a3, $a3, 12
	add.d	$a2, $a2, $a3
	st.d	$a2, $a0, 0
.LBB23_10:                              # %if.end32
                                        #   in Loop: Header=BB23_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a0, 24
	ori	$a4, $zero, 513
	move	$a0, $s6
	pcaddu18i	$ra, %call36(cli_scanbuff)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 1
	beq	$a0, $s7, .LBB23_33
# %bb.11:                               # %if.end37
                                        #   in Loop: Header=BB23_5 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB23_4
.LBB23_12:                              # %if.else53
	move	$a0, $s8
	pcaddu18i	$ra, %call36(ppt_vba_read)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_17
# %bb.13:                               # %if.then56
	move	$s2, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_scandir)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$a1, $a1, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a1, $a1, 0
	addi.d	$fp, $a0, -1
	bnez	$a1, .LBB23_15
# %bb.14:                               # %if.then63
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB23_15:                              # %if.end65
	sltui	$s1, $fp, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB23_63
	b	.LBB23_39
.LBB23_16:
	move	$s1, $zero
	b	.LBB23_37
.LBB23_17:                              # %if.else66
	move	$a0, $s8
	pcaddu18i	$ra, %call36(wm_dir_read)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_39
# %bb.18:                               # %for.cond70.preheader
	move	$s2, $a0
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB23_64
# %bb.19:                               # %for.body74.lr.ph
	move	$s6, $zero
	move	$s3, $zero
	move	$s5, $zero
	move	$s4, $zero
	addi.w	$s1, $zero, -114
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a0, $a0, %pc_lo12(.L.str.113)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	b	.LBB23_23
.LBB23_20:                              # %if.end121.thread
                                        #   in Loop: Header=BB23_23 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB23_21:                              # %if.then124
                                        #   in Loop: Header=BB23_23 Depth=1
	ld.d	$a0, $s2, 8
	ldx.d	$a1, $a0, $s6
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s8, $s0
.LBB23_22:                              # %for.inc151
                                        #   in Loop: Header=BB23_23 Depth=1
	ld.w	$a0, $s2, 0
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 4
	addi.w	$s3, $s3, 1
	addi.d	$s6, $s6, 8
	bge	$s4, $a0, .LBB23_69
.LBB23_23:                              # %for.body74
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 40
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 8
	ldx.d	$a1, $a1, $s6
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s7, $a0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_68
# %bb.24:                               # %if.end86
                                        #   in Loop: Header=BB23_23 Depth=1
	move	$s7, $a0
	move	$s0, $s8
	ld.d	$a0, $s2, 8
	ld.d	$a2, $s2, 40
	ldx.d	$a3, $a0, $s6
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB23_66
# %bb.25:                               # %if.end96
                                        #   in Loop: Header=BB23_23 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	ld.d	$a2, $s2, 32
	ld.d	$a4, $s2, 24
	ldx.d	$a1, $a0, $s6
	ldx.bu	$a3, $a2, $s4
	ldx.w	$a4, $a4, $s5
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	ldx.w	$a2, $a0, $s5
	beqz	$a2, .LBB23_20
# %bb.26:                               # %if.end121
                                        #   in Loop: Header=BB23_23 Depth=1
	ld.d	$a0, $s2, 16
	ld.d	$a3, $s2, 32
	ldx.w	$a1, $a0, $s5
	ldx.bu	$a3, $a3, $s4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(wm_decrypt_macro)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB23_21
# %bb.27:                               # %if.else128
                                        #   in Loop: Header=BB23_23 Depth=1
	ld.d	$a1, $s2, 24
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ldx.w	$a1, $a1, $s5
	move	$s8, $s0
	beqz	$a0, .LBB23_29
# %bb.28:                               # %if.then131
                                        #   in Loop: Header=BB23_23 Depth=1
	ld.d	$a2, $a0, 0
	bstrpick.d	$a3, $a1, 31, 12
	add.d	$a2, $a2, $a3
	st.d	$a2, $a0, 0
.LBB23_29:                              # %if.end139
                                        #   in Loop: Header=BB23_23 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a0, 24
	ori	$a4, $zero, 513
	move	$a0, $s7
	pcaddu18i	$ra, %call36(cli_scanbuff)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	beq	$a0, $fp, .LBB23_67
# %bb.30:                               # %if.end149
                                        #   in Loop: Header=BB23_23 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	b	.LBB23_22
.LBB23_31:
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $s2, 0
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB23_35
	b	.LBB23_37
.LBB23_32:                              # %if.then14
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s7, $zero, -115
.LBB23_33:                              # %for.endthread-pre-split.sink.split
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s1, $s7
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $s2, 0
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB23_35
	b	.LBB23_37
.LBB23_34:
	move	$s1, $zero
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB23_37
.LBB23_35:                              # %for.body43.lr.ph
	move	$fp, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB23_36:                              # %for.body43
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	ldx.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	blt	$s0, $a0, .LBB23_36
.LBB23_37:                              # %for.end49
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
.LBB23_38:                              # %if.end172
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB23_63
.LBB23_39:                              # %if.end176
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_58
# %bb.40:                               # %if.end182
	pcalau12i	$a1, %pc_hi20(.L.str.114)
	addi.d	$a1, $a1, %pc_lo12(.L.str.114)
	move	$s1, $a0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bltz	$s2, .LBB23_43
# %bb.41:                               # %if.then187
	move	$a0, $s2
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_decode_ole_object)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB23_61
# %bb.42:                               # %if.end194
	move	$s3, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_scandesc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB23_63
.LBB23_43:                              # %if.end200
	move	$a0, $s8
	pcaddu18i	$ra, %call36(opendir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_62
.LBB23_44:                              # %while.cond.preheader
	move	$s2, $a0
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_59
# %bb.45:                               # %while.body.lr.ph
	ori	$fp, $zero, 46
	addi.w	$a1, $zero, -114
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$s3, $a1, %pc_lo12(.L.str.2)
	addi.w	$s0, $zero, -1
	lu12i.w	$s1, 15
	lu12i.w	$s6, 4
	ori	$s7, $zero, 1
	b	.LBB23_48
	.p2align	4, , 16
.LBB23_46:                              # %if.end247
                                        #   in Loop: Header=BB23_48 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB23_47:                              # %if.end249
                                        #   in Loop: Header=BB23_48 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_59
.LBB23_48:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB23_47
# %bb.49:                               # %if.then208
                                        #   in Loop: Header=BB23_48 Depth=1
	ld.bu	$a1, $a0, 19
	bne	$a1, $fp, .LBB23_53
# %bb.50:                               # %if.then208.tail
                                        #   in Loop: Header=BB23_48 Depth=1
	ld.bu	$a1, $a0, 20
	beqz	$a1, .LBB23_47
# %bb.51:                               # %sub_1146
                                        #   in Loop: Header=BB23_48 Depth=1
	ld.bu	$a1, $a0, 20
	bne	$a1, $fp, .LBB23_53
# %bb.52:                               # %land.lhs.true.tail
                                        #   in Loop: Header=BB23_48 Depth=1
	ld.bu	$a1, $a0, 21
	beqz	$a1, .LBB23_47
	.p2align	4, , 16
.LBB23_53:                              # %if.then215
                                        #   in Loop: Header=BB23_48 Depth=1
	addi.d	$s5, $a0, 19
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_65
# %bb.54:                               # %if.end225
                                        #   in Loop: Header=BB23_48 Depth=1
	move	$s4, $a0
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 48
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lstat)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB23_46
# %bb.55:                               # %if.then232
                                        #   in Loop: Header=BB23_48 Depth=1
	ld.wu	$a0, $sp, 64
	and	$a0, $a0, $s1
	bne	$a0, $s6, .LBB23_46
# %bb.56:                               # %if.then240
                                        #   in Loop: Header=BB23_48 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_vba_scandir)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB23_46
# %bb.57:                               # %if.then244
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB23_60
.LBB23_58:
	addi.w	$s1, $zero, -114
	b	.LBB23_63
.LBB23_59:
	move	$s1, $zero
.LBB23_60:                              # %if.end251
	move	$a0, $s2
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	b	.LBB23_63
.LBB23_61:                              # %if.end194.thread
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(opendir)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB23_44
.LBB23_62:                              # %if.else250
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a0, $a0, %pc_lo12(.L.str.115)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -115
.LBB23_63:                              # %cleanup
	move	$a0, $s1
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB23_64:
	move	$s1, $zero
	b	.LBB23_72
.LBB23_65:
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB23_60
.LBB23_66:                              # %if.then95
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$fp, $zero, -115
	move	$s8, $s0
.LBB23_67:                              # %for.end153thread-pre-split.sink.split
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s1, $fp
.LBB23_68:                              # %for.end153thread-pre-split
	ld.w	$a0, $s2, 0
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB23_70
	b	.LBB23_72
.LBB23_69:
	move	$s1, $zero
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB23_72
.LBB23_70:                              # %for.body158.lr.ph
	move	$fp, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB23_71:                              # %for.body158
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	ldx.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	blt	$s0, $a0, .LBB23_71
.LBB23_72:                              # %for.end164
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 40
	b	.LBB23_38
.Lfunc_end23:
	.size	cli_vba_scandir, .Lfunc_end23-cli_vba_scandir
                                        # -- End function
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%s/%s"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"ScanDir: Can't open directory %s.\n"
	.size	.L.str.3, 35

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Can't fstat descriptor %d\n"
	.size	.L.str.4, 27

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Small data (%u bytes)\n"
	.size	.L.str.5, 23

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"CRITICAL: engine == NULL\n"
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Raw mode: No support for special files\n"
	.size	.L.str.7, 40

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s found in descriptor %d\n"
	.size	.L.str.8, 27

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Archive recursion limit exceeded (arec == %u).\n"
	.size	.L.str.9, 48

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Archive.ExceededRecursionLimit"
	.size	.L.str.10, 31

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Mail recursion level exceeded (mrec == %u).\n"
	.size	.L.str.11, 45

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"RAR code not compiled-in\n"
	.size	.L.str.12, 26

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"cli_magic_scandesc: Not checking for embedded PEs (zip file > 1 MB)\n"
	.size	.L.str.13, 69

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Descriptor[%d]: %s\n"
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"cli_scanraw: lseek() failed\n"
	.size	.L.str.15, 29

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s found in descriptor %d when scanning file type %u\n"
	.size	.L.str.16, 54

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"ZIP-SFX signature found at %u\n"
	.size	.L.str.17, 31

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"CAB-SFX signature found at %u\n"
	.size	.L.str.18, 31

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"ARJ-SFX signature found at %u\n"
	.size	.L.str.19, 31

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"NSIS signature found at %u\n"
	.size	.L.str.20, 28

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"AUTOIT signature found at %u\n"
	.size	.L.str.21, 30

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"PE signature found at %u\n"
	.size	.L.str.22, 26

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"*** Detected embedded PE file ***\n"
	.size	.L.str.23, 35

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"cli_scanraw: Type %u not handled in fpt loop\n"
	.size	.L.str.24, 46

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"cli_scanembpe: Can't create file %s\n"
	.size	.L.str.25, 37

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"cli_scanembpe: Size exceeded (stopped at %lu, max: %lu)\n"
	.size	.L.str.26, 57

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"cli_scanembpe: Can't write to temporary file\n"
	.size	.L.str.27, 46

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"cli_scanembpe: Can't synchronise descriptor %d\n"
	.size	.L.str.28, 48

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"cli_scanembpe: Infected with %s\n"
	.size	.L.str.29, 33

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"in scanzip()\n"
	.size	.L.str.30, 14

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Zip: zip_dir_open() return code: %d\n"
	.size	.L.str.31, 37

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Zip: unable to malloc(%u)\n"
	.size	.L.str.32, 27

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Zip: zdirent.d_name == NULL\n"
	.size	.L.str.33, 29

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Suspect.Zip"
	.size	.L.str.34, 12

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Zip: %s, crc32: 0x%x, offset: %u, encrypted: %u, compressed: %u, normal: %u, method: %u, ratio: %u (max: %u)\n"
	.size	.L.str.35, 110

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Zip: Broken file or modified information in local header part of archive\n"
	.size	.L.str.36, 74

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Exploit.Zip.ModifiedHeaders"
	.size	.L.str.37, 28

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Zip: Directory entry with st_size != 0\n"
	.size	.L.str.38, 40

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Zip: Malformed file (d_csize == 0 but st_size != 0)\n"
	.size	.L.str.39, 53

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Oversized.Zip"
	.size	.L.str.40, 14

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"Zip: Encrypted files found in archive.\n"
	.size	.L.str.41, 40

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Encrypted.Zip"
	.size	.L.str.42, 14

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Zip: %s: Size exceeded (%u, max: %lu)\n"
	.size	.L.str.43, 39

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Zip.ExceededFileSize"
	.size	.L.str.44, 21

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Zip: Files limit reached (max: %u)\n"
	.size	.L.str.45, 36

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Zip.ExceededFilesLimit"
	.size	.L.str.46, 23

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Not supported compression method in one or more files\n"
	.size	.L.str.47, 55

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Zip: Can't open file %s\n"
	.size	.L.str.48, 25

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Zip: Can't write to file.\n"
	.size	.L.str.49, 27

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Zip: Incorrectly decompressed (%lu != %lu)\n"
	.size	.L.str.50, 44

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"Zip: File decompressed to %s\n"
	.size	.L.str.51, 30

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"Zip: fsync() failed\n"
	.size	.L.str.52, 21

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"Zip: Infected with %s\n"
	.size	.L.str.53, 23

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"Zip: Brute force mode - checking compression method %u\n"
	.size	.L.str.54, 56

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"Zip: All attempts to decompress file failed\n"
	.size	.L.str.55, 45

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"in cli_scangzip()\n"
	.size	.L.str.56, 19

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"rb"
	.size	.L.str.57, 3

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"GZip: Can't open descriptor %d\n"
	.size	.L.str.58, 32

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"GZip: Can't generate temporary file.\n"
	.size	.L.str.59, 38

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"GZip: Unable to malloc %u bytes.\n"
	.size	.L.str.60, 34

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"GZip: Size exceeded (stopped at %ld, max: %ld)\n"
	.size	.L.str.61, 48

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"GZip.ExceededFileSize"
	.size	.L.str.62, 22

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"GZip: Can't write to file.\n"
	.size	.L.str.63, 28

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"GZip: Can't synchronise descriptor %d\n"
	.size	.L.str.64, 39

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"GZip: Infected with %s\n"
	.size	.L.str.65, 24

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"in cli_scanarj()\n"
	.size	.L.str.66, 18

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"RAR: Can't create temporary directory %s\n"
	.size	.L.str.67, 42

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"ARJ: Error: %s\n"
	.size	.L.str.68, 16

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"ARJ: infected with %s\n"
	.size	.L.str.69, 23

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"ARJ: Exit code: %d\n"
	.size	.L.str.70, 20

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"ARJ: %s: Size exceeded (%lu, max: %lu)\n"
	.size	.L.str.71, 40

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"(none)"
	.size	.L.str.72, 7

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"ARJ.ExceededFileSize"
	.size	.L.str.73, 21

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"ARJ: Max ratio reached (%u, max: %u)\n"
	.size	.L.str.74, 38

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"ARJ: Ignoring ratio limit (file size doesn't hit limits)\n"
	.size	.L.str.75, 58

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"Oversized.ARJ"
	.size	.L.str.76, 14

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"in cli_scanmscab()\n"
	.size	.L.str.79, 20

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"CAB: %s: Size exceeded (%u, max: %lu)\n"
	.size	.L.str.80, 39

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"CAB.ExceededFileSize"
	.size	.L.str.81, 21

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"CAB: Files limit reached (max: %u)\n"
	.size	.L.str.82, 36

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"CAB.ExceededFilesLimit"
	.size	.L.str.83, 23

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"CAB: Extracting file %s to %s, size %u\n"
	.size	.L.str.84, 40

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"CAB: Failed to extract file: %s\n"
	.size	.L.str.85, 33

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"in cli_scanhtml()\n"
	.size	.L.str.86, 19

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"cli_scanhtml: fstat() failed for descriptor %d\n"
	.size	.L.str.87, 48

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"cli_scanhtml: exiting (file larger than 10 MB)\n"
	.size	.L.str.88, 48

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"cli_scanhtml: Can't create temporary directory %s\n"
	.size	.L.str.89, 51

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"%s/comment.html"
	.size	.L.str.90, 16

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"%s/nocomment.html"
	.size	.L.str.91, 18

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"%s/script.html"
	.size	.L.str.92, 15

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"%s/rfc2397"
	.size	.L.str.93, 11

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"in cli_scanhtml_utf16()\n"
	.size	.L.str.94, 25

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"cli_scanhtml_utf16: Can't create file %s\n"
	.size	.L.str.95, 42

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"cli_scanhtml_utf16: Can't write to file %s\n"
	.size	.L.str.96, 44

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"cli_scanhtml_utf16: Decoded HTML data saved in %s\n"
	.size	.L.str.97, 51

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"Starting cli_scanmail(), mrec == %u, arec == %u\n"
	.size	.L.str.98, 49

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"Mail: Can't create temporary directory %s\n"
	.size	.L.str.99, 43

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"Can't create temporary directory for tnef file %s\n"
	.size	.L.str.100, 51

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"Can't create temporary directory for uuencoded file %s\n"
	.size	.L.str.101, 56

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"Can't create temporary directory for PST file %s\n"
	.size	.L.str.102, 50

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"in cli_scanmschm()\n"
	.size	.L.str.103, 20

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"CHM: Can't create temporary directory %s\n"
	.size	.L.str.104, 42

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"in cli_scanole2()\n"
	.size	.L.str.105, 19

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"OLE2: Can't create temporary directory %s\n"
	.size	.L.str.106, 43

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"OLE2: %s\n"
	.size	.L.str.107, 10

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"VBADir: %s\n"
	.size	.L.str.108, 12

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"VBADir: Can't open file %s\n"
	.size	.L.str.109, 28

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"VBADir: Decompress VBA project '%s'\n"
	.size	.L.str.110, 37

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"VBADir: WARNING: VBA project '%s' decompressed to NULL\n"
	.size	.L.str.111, 56

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"VBADir: Decompress WM project '%s' macro:%d key:%d length:%d\n"
	.size	.L.str.112, 62

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"VBADir: WARNING: WM project '%s' macro %d decrypted to NULL\n"
	.size	.L.str.113, 61

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"%s/_1_Ole10Native"
	.size	.L.str.114, 18

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"VBADir: Can't open directory %s.\n"
	.size	.L.str.115, 34

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"in cli_scantar()\n"
	.size	.L.str.116, 18

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"Tar: Can't create temporary directory %s\n"
	.size	.L.str.117, 42

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"Tar: %s\n"
	.size	.L.str.118, 9

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"in cli_scanbinhex()\n"
	.size	.L.str.119, 21

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"Binhex: Can't create temporary directory %s\n"
	.size	.L.str.120, 45

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"Binhex: %s\n"
	.size	.L.str.121, 12

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"in cli_scanscrenc()\n"
	.size	.L.str.122, 21

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"Exploit.W32.MS05-002"
	.size	.L.str.123, 21

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"Exploit.W32.MS04-028"
	.size	.L.str.124, 21

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"Can't create temporary directory for PDF file %s\n"
	.size	.L.str.125, 50

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"CryptFF: Can't fstat descriptor %d\n"
	.size	.L.str.126, 36

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"CryptFF: Can't lseek descriptor %d\n"
	.size	.L.str.127, 36

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"CryptFF: Can't allocate memory\n"
	.size	.L.str.128, 32

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"CryptFF: Can't read from descriptor %d\n"
	.size	.L.str.129, 40

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"CryptFF: Can't create file %s\n"
	.size	.L.str.130, 31

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"CryptFF: Can't write to descriptor %d\n"
	.size	.L.str.131, 39

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"CryptFF: Can't fsync descriptor %d\n"
	.size	.L.str.132, 36

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"CryptFF: Scanning decrypted data\n"
	.size	.L.str.133, 34

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"CryptFF: Infected with %s\n"
	.size	.L.str.134, 27

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"CryptFF: Decompressed data saved in %s\n"
	.size	.L.str.135, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
