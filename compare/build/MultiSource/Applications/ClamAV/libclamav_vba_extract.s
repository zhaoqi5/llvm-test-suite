	.file	"libclamav_vba_extract.c"
	.text
	.globl	vba56_dir_read                  # -- Begin function vba56_dir_read
	.p2align	5
	.type	vba56_dir_read,@function
vba56_dir_read:                         # @vba56_dir_read
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 73
	ori	$a1, $zero, 256
	move	$a3, $s1
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 73
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB0_20
# %bb.1:                                # %if.end
	move	$fp, $a0
	addi.d	$a1, $sp, 330
	ori	$a2, $zero, 34
	ori	$s0, $zero, 34
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_103
# %bb.2:                                # %if.end9
	ld.hu	$a0, $sp, 330
	lu12i.w	$a1, 6
	ori	$a1, $a1, 460
	bne	$a0, $a1, .LBB0_103
# %bb.3:                                # %for.cond.preheader
	ld.w	$a0, $sp, 332
	lu12i.w	$a1, 4096
	ori	$a2, $a1, 94
	beq	$a0, $a2, .LBB0_21
# %bb.4:                                # %for.inc
	addi.d	$a0, $sp, 332
	ld.w	$a2, $a0, 0
	ori	$a3, $a1, 95
	beq	$a2, $a3, .LBB0_22
# %bb.5:                                # %for.inc.1
	ld.w	$a2, $a0, 0
	ori	$a3, $a1, 101
	beq	$a2, $a3, .LBB0_23
# %bb.6:                                # %for.inc.2
	ld.w	$a2, $a0, 0
	ori	$a3, $a1, 107
	beq	$a2, $a3, .LBB0_24
# %bb.7:                                # %for.inc.3
	ld.w	$a2, $a0, 0
	ori	$a3, $a1, 109
	beq	$a2, $a3, .LBB0_25
# %bb.8:                                # %for.inc.4
	ld.w	$a2, $a0, 0
	ori	$a3, $a1, 111
	beq	$a2, $a3, .LBB0_26
# %bb.9:                                # %for.inc.5
	ld.w	$a2, $a0, 0
	ori	$a3, $a1, 112
	beq	$a2, $a3, .LBB0_27
# %bb.10:                               # %for.inc.6
	ld.w	$a2, $a0, 0
	ori	$a3, $a1, 115
	beq	$a2, $a3, .LBB0_28
# %bb.11:                               # %for.inc.7
	ld.w	$a2, $a0, 0
	ori	$a3, $a1, 118
	beq	$a2, $a3, .LBB0_29
# %bb.12:                               # %for.inc.8
	ld.w	$a2, $a0, 0
	ori	$a1, $a1, 121
	beq	$a2, $a1, .LBB0_30
# %bb.13:                               # %for.inc.9
	ld.w	$a2, $a0, 0
	lu12i.w	$a1, 57344
	ori	$a3, $a1, 96
	beq	$a2, $a3, .LBB0_31
# %bb.14:                               # %for.inc.10
	ld.w	$a2, $a0, 0
	ori	$a3, $a1, 98
	beq	$a2, $a3, .LBB0_32
# %bb.15:                               # %for.inc.11
	ld.w	$a2, $a0, 0
	ori	$a3, $a1, 99
	beq	$a2, $a3, .LBB0_33
# %bb.16:                               # %for.inc.12
	ld.w	$a0, $a0, 0
	ori	$a1, $a1, 100
	beq	$a0, $a1, .LBB0_34
# %bb.17:                               # %if.then29
	ld.bu	$a1, $sp, 332
	ld.bu	$a2, $sp, 333
	ld.bu	$a3, $sp, 334
	ld.bu	$a4, $sp, 335
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 335
	ori	$a1, $zero, 14
	beq	$a0, $a1, .LBB0_99
# %bb.18:                               # %if.then29
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_100
# %bb.19:                               # %sw.bb
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	b	.LBB0_37
.LBB0_20:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	addi.d	$a1, $sp, 73
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_104
.LBB0_21:
	move	$a0, $zero
	b	.LBB0_35
.LBB0_22:
	ori	$a0, $zero, 1
	b	.LBB0_35
.LBB0_23:
	ori	$a0, $zero, 2
	b	.LBB0_35
.LBB0_24:
	ori	$a0, $zero, 3
	b	.LBB0_35
.LBB0_25:
	ori	$a0, $zero, 4
	b	.LBB0_35
.LBB0_26:
	ori	$a0, $zero, 5
	b	.LBB0_35
.LBB0_27:
	ori	$a0, $zero, 6
	b	.LBB0_35
.LBB0_28:
	ori	$a0, $zero, 7
	b	.LBB0_35
.LBB0_29:
	ori	$a0, $zero, 8
	b	.LBB0_35
.LBB0_30:
	ori	$a0, $zero, 9
	b	.LBB0_35
.LBB0_31:
	ori	$a0, $zero, 10
	b	.LBB0_35
.LBB0_32:
	ori	$a0, $zero, 11
	b	.LBB0_35
.LBB0_33:
	ori	$a0, $zero, 12
	b	.LBB0_35
.LBB0_34:
	ori	$a0, $zero, 13
.LBB0_35:                               # %if.else
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(vba_version)
	addi.d	$a1, $a1, %pc_lo12(vba_version)
	add.d	$s0, $a1, $a0
	ld.d	$a1, $s0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 16
.LBB0_36:                               # %if.end52
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
.LBB0_37:                               # %if.end52
	addi.d	$a1, $sp, 370
	ori	$a2, $zero, 2
	ori	$s5, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB0_103
# %bb.38:                               # %if.end.lr.ph.i
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sltui	$s0, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$s3, $a0, %pc_lo12(.L.str.40)
	lu12i.w	$a0, 5
	ori	$s2, $a0, 3114
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$s4, $a0, %pc_lo12(.L.str.43)
	lu12i.w	$a0, 15
	ori	$s6, $a0, 4093
	addi.w	$a0, $zero, -2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(vba56_test_middle.middle1_str)
	addi.d	$a0, $a0, %pc_lo12(vba56_test_middle.middle1_str)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(vba56_test_middle.middle2_str)
	addi.d	$a0, $a0, %pc_lo12(vba56_test_middle.middle2_str)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -20
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB0_41
.LBB0_39:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_41 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_40:                               # %cleanup.i
                                        #   in Loop: Header=BB0_41 Depth=1
	addi.d	$a1, $sp, 370
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB0_103
.LBB0_41:                               # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $sp, 370
	revb.2h	$a1, $a0
	masknez	$a1, $a1, $s0
	maskeqz	$a0, $a0, $s0
	or	$a1, $a0, $a1
	bstrpick.d	$a0, $a1, 15, 0
	st.h	$a1, $sp, 370
	ori	$a1, $zero, 5
	bgeu	$a1, $a0, .LBB0_56
# %bb.42:                               # %if.end6.i
                                        #   in Loop: Header=BB0_41 Depth=1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_57
# %bb.43:                               # %if.end10.i
                                        #   in Loop: Header=BB0_41 Depth=1
	move	$s7, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.hu	$a2, $sp, 370
	move	$s8, $a0
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.hu	$a2, $sp, 370
	bne	$a0, $a2, .LBB0_58
# %bb.44:                               # %if.end21.i
                                        #   in Loop: Header=BB0_41 Depth=1
	move	$a1, $a0
	move	$a0, $s7
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(get_unicode_name)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 370
	beqz	$a0, .LBB0_59
# %bb.45:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_41 Depth=1
	move	$s8, $a0
	move	$a0, $s3
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s8, 0
	bne	$a0, $s2, .LBB0_55
# %bb.46:                               # %lor.lhs.false34.i
                                        #   in Loop: Header=BB0_41 Depth=1
	ld.b	$a1, $s8, 2
	ori	$a2, $zero, 5
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_55
# %bb.47:                               # %if.end46.i
                                        #   in Loop: Header=BB0_41 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 370
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB0_103
# %bb.48:                               # %if.end51.i
                                        #   in Loop: Header=BB0_41 Depth=1
	ld.h	$a0, $sp, 370
	revb.2h	$a1, $a0
	masknez	$a1, $a1, $s0
	maskeqz	$a0, $a0, $s0
	or	$a0, $a0, $a1
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 15, 0
	st.h	$a0, $sp, 370
	bltu	$s6, $a1, .LBB0_51
# %bb.49:                               # %if.then59.i
                                        #   in Loop: Header=BB0_41 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
.LBB0_50:                               # %cleanup.i
                                        #   in Loop: Header=BB0_41 Depth=1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB0_40
.LBB0_51:                               # %if.end61.i
                                        #   in Loop: Header=BB0_41 Depth=1
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 372
	ori	$a2, $zero, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 20
	bne	$a0, $a1, .LBB0_40
# %bb.52:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_41 Depth=1
	addi.d	$a0, $sp, 372
	ori	$a2, $zero, 20
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_39
# %bb.53:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB0_41 Depth=1
	addi.d	$a0, $sp, 372
	ori	$a2, $zero, 20
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_39
# %bb.54:                               # %if.then6.i.i
                                        #   in Loop: Header=BB0_41 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	b	.LBB0_50
.LBB0_55:                               # %if.then44.i
	ld.hu	$a0, $sp, 370
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_61
.LBB0_56:                               # %if.then4.i
	addi.w	$a1, $zero, -2
	b	.LBB0_60
.LBB0_57:                               # %if.then9.i
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_103
.LBB0_58:                               # %if.then18.i
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s8, 31, 0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_61
.LBB0_59:                               # %if.then39.i
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 370
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
.LBB0_60:                               # %do.body
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB0_61:                               # %do.body
	lu12i.w	$s3, 15
	.p2align	4, , 16
.LBB0_62:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 366
	ori	$a2, $zero, 2
	ori	$s2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_103
# %bb.63:                               # %do.cond
                                        #   in Loop: Header=BB0_62 Depth=1
	ld.hu	$a0, $sp, 366
	ori	$s4, $s3, 4095
	bne	$a0, $s4, .LBB0_62
# %bb.64:                               # %do.end
	addi.w	$a1, $zero, -3
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 366
	ori	$a2, $zero, 2
	ori	$s2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_103
# %bb.65:                               # %if.end72
	ld.hu	$a0, $sp, 366
	beq	$a0, $s4, .LBB0_67
# %bb.66:                               # %if.then76
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB0_67:                               # %if.end78
	addi.d	$a1, $sp, 366
	ori	$a2, $zero, 2
	ori	$s2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_103
# %bb.68:                               # %if.end84
	ld.hu	$a0, $sp, 366
	beq	$a0, $s4, .LBB0_70
# %bb.69:                               # %if.then88
	revb.2h	$a1, $a0
	masknez	$a1, $a1, $s0
	maskeqz	$a0, $a0, $s0
	or	$a0, $a0, $a1
	st.h	$a0, $sp, 366
	bstrpick.d	$a1, $a0, 15, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB0_70:                               # %if.end92
	addi.d	$a1, $sp, 366
	ori	$a2, $zero, 2
	ori	$s2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_103
# %bb.71:                               # %if.end98
	ld.hu	$a0, $sp, 366
	beq	$a0, $s4, .LBB0_73
# %bb.72:                               # %if.then102
	revb.2h	$a1, $a0
	masknez	$a1, $a1, $s0
	maskeqz	$a0, $a0, $s0
	or	$a0, $a0, $a1
	st.h	$a0, $sp, 366
	bstrpick.d	$a1, $a0, 15, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB0_73:                               # %if.end106
	ori	$a1, $zero, 100
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 370
	ori	$a2, $zero, 2
	ori	$s2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_103
# %bb.74:                               # %if.end113
	ld.h	$a0, $sp, 370
	revb.2h	$a1, $a0
	masknez	$a1, $a1, $s0
	maskeqz	$a0, $a0, $s0
	or	$a0, $a0, $a1
	st.h	$a0, $sp, 370
	bstrpick.d	$a1, $a0, 15, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 370
	beqz	$a0, .LBB0_103
# %bb.75:                               # %if.end121
	ori	$a1, $zero, 1001
	bltu	$a0, $a1, .LBB0_77
# %bb.76:                               # %if.then125
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_103
.LBB0_77:                               # %if.end127
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_103
# %bb.78:                               # %if.end132
	ld.hu	$a1, $sp, 370
	slli.d	$a1, $a1, 3
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 8
	beqz	$a0, .LBB0_98
# %bb.79:                               # %if.end140
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 370
	st.d	$a0, $s2, 40
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	st.d	$a0, $s2, 16
	beqz	$a0, .LBB0_101
# %bb.80:                               # %if.end153
	ld.hu	$a0, $sp, 370
	st.w	$a0, $a1, 0
	beqz	$a0, .LBB0_106
# %bb.81:                               # %for.body159.preheader
	move	$s8, $zero
	move	$s7, $zero
	move	$s1, $zero
	move	$s6, $zero
	ori	$s3, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
.LBB0_82:                               # %for.body159
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_112
# %bb.83:                               # %if.end164
                                        #   in Loop: Header=BB0_82 Depth=1
	ld.h	$a0, $sp, 368
	revb.2h	$a1, $a0
	masknez	$a1, $a1, $s0
	maskeqz	$a0, $a0, $s0
	or	$a1, $a0, $a1
	bstrpick.d	$a0, $a1, 15, 0
	st.h	$a1, $sp, 368
	beqz	$a0, .LBB0_108
# %bb.84:                               # %if.end170
                                        #   in Loop: Header=BB0_82 Depth=1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_109
# %bb.85:                               # %if.end175
                                        #   in Loop: Header=BB0_82 Depth=1
	move	$s3, $a0
	ld.hu	$a2, $sp, 368
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.hu	$a2, $sp, 368
	bne	$a0, $a2, .LBB0_110
# %bb.86:                               # %if.end182
                                        #   in Loop: Header=BB0_82 Depth=1
	move	$a1, $a0
	move	$a0, $s3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(get_unicode_name)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 8
	stx.d	$a0, $a1, $s7
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	ldx.d	$a1, $a0, $s7
	ori	$s3, $zero, 2
	bnez	$a1, .LBB0_89
# %bb.87:                               # %if.then192
                                        #   in Loop: Header=BB0_82 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 372
	ori	$a0, $zero, 18
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 8
	stx.d	$a0, $a1, $s7
	beqz	$a0, .LBB0_112
# %bb.88:                               # %if.end205
                                        #   in Loop: Header=BB0_82 Depth=1
	ld.w	$a3, $sp, 372
	ori	$a1, $zero, 18
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	ldx.d	$a1, $a0, $s7
.LBB0_89:                               # %if.end210
                                        #   in Loop: Header=BB0_82 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_107
# %bb.90:                               # %if.end221
                                        #   in Loop: Header=BB0_82 Depth=1
	ld.h	$a0, $sp, 368
	revb.2h	$a1, $a0
	masknez	$a1, $a1, $s0
	maskeqz	$a0, $a0, $s0
	or	$a0, $a0, $a1
	st.h	$a0, $sp, 368
	bstrpick.d	$a1, $a0, 15, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 366
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_107
# %bb.91:                               # %if.end232
                                        #   in Loop: Header=BB0_82 Depth=1
	ld.h	$a0, $sp, 366
	revb.2h	$a1, $a0
	masknez	$a1, $a1, $s0
	maskeqz	$a0, $a0, $s0
	or	$a1, $a0, $a1
	bstrpick.d	$a0, $a1, 15, 0
	st.h	$a1, $sp, 366
	beq	$a0, $s4, .LBB0_93
# %bb.92:                               # %if.else250
                                        #   in Loop: Header=BB0_82 Depth=1
	addi.d	$a1, $a0, 2
	b	.LBB0_95
.LBB0_93:                               # %if.then237
                                        #   in Loop: Header=BB0_82 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 366
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_107
# %bb.94:                               # %if.end246
                                        #   in Loop: Header=BB0_82 Depth=1
	ld.h	$a0, $sp, 366
	revb.2h	$a1, $a0
	masknez	$a1, $a1, $s0
	maskeqz	$a0, $a0, $s0
	or	$a0, $a0, $a1
	st.h	$a0, $sp, 366
	bstrpick.d	$a1, $a0, 15, 0
.LBB0_95:                               # %if.end254
                                        #   in Loop: Header=BB0_82 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 364
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_107
# %bb.96:                               # %if.end263
                                        #   in Loop: Header=BB0_82 Depth=1
	ld.h	$a0, $sp, 364
	revb.2h	$a1, $a0
	masknez	$a1, $a1, $s0
	maskeqz	$a0, $a0, $s0
	or	$a0, $a0, $a1
	st.h	$a0, $sp, 364
	ori	$a1, $zero, 5
	bstrins.d	$a1, $a0, 18, 3
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 372
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_107
# %bb.97:                               # %if.end277
                                        #   in Loop: Header=BB0_82 Depth=1
	ld.w	$a0, $sp, 372
	revb.2w	$a1, $a0
	masknez	$a1, $a1, $s0
	ld.d	$a2, $s2, 16
	maskeqz	$a0, $a0, $s0
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 372
	stx.w	$a0, $a2, $s8
	ld.w	$a1, $sp, 372
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 370
	addi.d	$s1, $s1, 1
	addi.w	$s6, $s6, 1
	addi.d	$s7, $s7, 8
	addi.d	$s8, $s8, 4
	bltu	$s1, $a0, .LBB0_82
	b	.LBB0_112
.LBB0_98:                               # %if.then138
	move	$a0, $s2
	b	.LBB0_102
.LBB0_99:                               # %sw.bb45
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_36
.LBB0_100:                              # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_103
.LBB0_101:                              # %if.then149
	ld.d	$a0, $a1, 40
	move	$s0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB0_102:                              # %if.then7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_103:                              # %if.then7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB0_104:                              # %cleanup
	move	$a0, $zero
.LBB0_105:                              # %cleanup
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.LBB0_106:
	move	$s6, $zero
	b	.LBB0_112
.LBB0_107:                              # %if.then217
	ld.d	$a0, $s2, 8
	ldx.d	$a0, $a0, $s7
	b	.LBB0_111
.LBB0_108:                              # %if.then169
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_112
.LBB0_109:                              # %if.then174
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_112
.LBB0_110:                              # %if.then181
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB0_111:                              # %for.end285
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_112:                              # %for.end285
	move	$a0, $fp
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 370
	bgeu	$s6, $a0, .LBB0_117
# %bb.113:                              # %while.cond.preheader
	beqz	$s6, .LBB0_116
# %bb.114:                              # %while.body.preheader
	bstrpick.d	$a0, $s6, 31, 0
	addi.d	$fp, $a0, 1
	slli.d	$a0, $a0, 3
	addi.d	$s0, $a0, -8
	ori	$s1, $zero, 1
.LBB0_115:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, -8
	bltu	$s1, $fp, .LBB0_115
.LBB0_116:                              # %while.end
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_104
.LBB0_117:
	move	$a0, $s2
	b	.LBB0_105
.Lfunc_end0:
	.size	vba56_dir_read, .Lfunc_end0-vba56_dir_read
                                        # -- End function
	.p2align	5                               # -- Begin function get_unicode_name
	.type	get_unicode_name,@function
get_unicode_name:                       # @get_unicode_name
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	move	$a0, $zero
	beqz	$a1, .LBB1_15
# %bb.1:                                # %entry
	move	$fp, $a1
	ld.bu	$a1, $s0, 0
	beqz	$a1, .LBB1_15
# %bb.2:                                # %if.end
	move	$s1, $a2
	slli.d	$a0, $fp, 3
	sub.w	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_14
# %bb.3:                                # %if.end10
	ori	$s2, $zero, 1
	bnez	$s1, .LBB1_6
# %bb.4:                                # %land.lhs.true
	andi	$a1, $fp, 1
	ori	$s2, $zero, 2
	beqz	$a1, .LBB1_6
# %bb.5:                                # %if.end13
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a1, $a1, %pc_lo12(.L.str.47)
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	addi.w	$fp, $fp, -1
	move	$a3, $s1
	beqz	$fp, .LBB1_13
.LBB1_6:                                # %for.body.lr.ph
	move	$s1, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	move	$a2, $zero
	lu12i.w	$a4, 4
	ori	$a5, $zero, 9
	ori	$a6, $zero, 95
	move	$a3, $s1
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %if.then24
                                        #   in Loop: Header=BB1_8 Depth=1
	st.b	$t0, $a3, 0
	add.d	$a2, $a2, $s2
	addi.d	$a3, $a3, 1
	bgeu	$a2, $fp, .LBB1_13
.LBB1_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a7, $s0, $a2
	ld.d	$t0, $a1, 0
	slli.d	$t1, $a7, 1
	ldx.hu	$t0, $t0, $t1
	and	$t1, $t0, $a4
	andi	$t0, $a7, 255
	bnez	$t1, .LBB1_7
# %bb.9:                                # %if.else
                                        #   in Loop: Header=BB1_8 Depth=1
	bltu	$a5, $t0, .LBB1_11
# %bb.10:                               # %if.then38
                                        #   in Loop: Header=BB1_8 Depth=1
	st.b	$a6, $a3, 0
	ldx.b	$a7, $s0, $a2
	addi.d	$a7, $a7, 48
	addi.d	$t0, $a3, 2
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_11:                               # %if.else45
                                        #   in Loop: Header=BB1_8 Depth=1
	add.d	$a7, $s0, $a2
	ld.bu	$t1, $a7, 1
	ext.w.b	$t2, $t1
	st.b	$a6, $a3, 0
	andi	$a7, $t1, 15
	addi.d	$a7, $a7, 97
	srli.d	$t1, $t1, 4
	addi.d	$t1, $t1, 97
	st.b	$t1, $a3, 2
	srli.d	$t1, $t2, 7
	or	$t0, $t1, $t0
	andi	$t0, $t0, 15
	addi.d	$t1, $t0, 97
	addi.d	$t0, $a3, 4
	st.b	$t1, $a3, 3
.LBB1_12:                               # %if.end71
                                        #   in Loop: Header=BB1_8 Depth=1
	st.b	$a7, $a3, 1
	st.b	$a6, $t0, 0
	move	$a3, $t0
	add.d	$a2, $a2, $s2
	addi.d	$a3, $a3, 1
	bltu	$a2, $fp, .LBB1_8
.LBB1_13:                               # %for.end
	st.b	$zero, $a3, 0
	b	.LBB1_15
.LBB1_14:
	move	$a0, $zero
.LBB1_15:                               # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	get_unicode_name, .Lfunc_end1-get_unicode_name
                                        # -- End function
	.globl	vba_decompress                  # -- Begin function vba_decompress
	.p2align	5
	.type	vba_decompress,@function
vba_decompress:                         # @vba_decompress
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
	addi.d	$sp, $sp, -144
	move	$s0, $a2
	move	$s2, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_47
# %bb.1:                                # %if.end
	move	$s3, $a0
	addi.d	$a0, $s2, 3
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 39
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_38
# %bb.2:                                # %for.cond.preheader.preheader
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $zero
	addi.d	$s5, $sp, 36
	ori	$s6, $zero, 2
	ori	$s7, $zero, 128
	addi.w	$s4, $zero, -1
	ori	$s2, $zero, 61
	ori	$s3, $zero, 4095
	ori	$fp, $zero, 1
	b	.LBB2_6
.LBB2_3:                                # %if.then73
                                        #   in Loop: Header=BB2_6 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 36
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB2_34
# %bb.4:                                # %if.end81
                                        #   in Loop: Header=BB2_6 Depth=1
	addi.d	$a1, $sp, 36
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	lu12i.w	$a2, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	.p2align	4, , 16
.LBB2_5:                                # %for.end95
                                        #   in Loop: Header=BB2_6 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 39
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_36
.LBB2_6:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
                                        #       Child Loop BB2_32 Depth 3
                                        #       Child Loop BB2_26 Depth 3
	sltu	$fp, $zero, $fp
	ori	$s8, $zero, 1
	b	.LBB2_10
.LBB2_7:                                #   in Loop: Header=BB2_10 Depth=2
	move	$a0, $zero
.LBB2_8:                                # %if.end83
                                        #   in Loop: Header=BB2_10 Depth=2
	add.d	$a1, $s5, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	add.w	$s0, $s0, $a0
.LBB2_9:                                # %for.inc93
                                        #   in Loop: Header=BB2_10 Depth=2
	addi.w	$a0, $s8, 0
	slli.d	$s8, $s8, 1
	ori	$fp, $zero, 1
	bgeu	$a0, $s7, .LBB2_5
.LBB2_10:                               # %for.body
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_32 Depth 3
                                        #       Child Loop BB2_26 Depth 3
	lu12i.w	$a0, 1
	ori	$a0, $a0, 39
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	and	$a0, $s8, $a0
	beqz	$a0, .LBB2_15
# %bb.11:                               # %if.then8
                                        #   in Loop: Header=BB2_10 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 36
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB2_34
# %bb.12:                               # %if.end16
                                        #   in Loop: Header=BB2_10 Depth=2
	andi	$a3, $s0, 4095
	bltu	$s7, $a3, .LBB2_17
# %bb.13:                               # %if.then20
                                        #   in Loop: Header=BB2_10 Depth=2
	ori	$a0, $zero, 32
	bltu	$a0, $a3, .LBB2_19
# %bb.14:                               # %if.then23
                                        #   in Loop: Header=BB2_10 Depth=2
	sltui	$a0, $a3, 17
	addi.d	$a0, $a0, 11
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_15:                               # %if.else65
                                        #   in Loop: Header=BB2_10 Depth=2
	beqz	$s0, .LBB2_7
# %bb.16:                               # %land.lhs.true
                                        #   in Loop: Header=BB2_10 Depth=2
	andi	$a0, $s0, 4095
	sltu	$a1, $zero, $a0
	orn	$a1, $a1, $fp
	andi	$a1, $a1, 1
	bnez	$a1, .LBB2_8
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_17:                               # %if.else30
                                        #   in Loop: Header=BB2_10 Depth=2
	ori	$a0, $zero, 512
	bltu	$a0, $a3, .LBB2_20
# %bb.18:                               # %if.then33
                                        #   in Loop: Header=BB2_10 Depth=2
	sltui	$a0, $a3, 257
	addi.d	$a0, $a0, 7
	b	.LBB2_22
.LBB2_19:                               # %if.else
                                        #   in Loop: Header=BB2_10 Depth=2
	sltui	$a0, $a3, 65
	addi.d	$a0, $a0, 9
	b	.LBB2_22
.LBB2_20:                               # %if.else37
                                        #   in Loop: Header=BB2_10 Depth=2
	ori	$a0, $zero, 4
	ori	$a1, $zero, 2048
	bltu	$a1, $a3, .LBB2_22
# %bb.21:                               # %if.then40
                                        #   in Loop: Header=BB2_10 Depth=2
	sltui	$a0, $a3, 1025
	addi.d	$a0, $a0, 5
	.p2align	4, , 16
.LBB2_22:                               # %if.end47
                                        #   in Loop: Header=BB2_10 Depth=2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 36
	add.d	$a1, $sp, $a1
	ld.hu	$a2, $a1, 0
	sll.w	$a1, $s4, $a0
	andn	$a1, $a2, $a1
	srl.w	$a4, $a2, $a0
	nor	$a0, $a4, $zero
	bgeu	$a1, $s2, .LBB2_27
.LBB2_23:                               #   in Loop: Header=BB2_10 Depth=2
	move	$a2, $zero
.LBB2_24:                               # %for.body57.preheader
                                        #   in Loop: Header=BB2_10 Depth=2
	move	$a3, $s0
.LBB2_25:                               # %for.body57.preheader
                                        #   in Loop: Header=BB2_10 Depth=2
	sub.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB2_26:                               # %for.body57
                                        #   Parent Loop BB2_6 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a0, $a3
	andi	$a2, $a2, 4095
	ldx.b	$a2, $a2, $s5
	addi.w	$s0, $a3, 1
	andi	$a3, $a3, 4095
	addi.w	$a1, $a1, -1
	stx.b	$a2, $a3, $s5
	move	$a3, $s0
	bnez	$a1, .LBB2_26
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_27:                               # %vector.scevcheck
                                        #   in Loop: Header=BB2_10 Depth=2
	addi.d	$a2, $a1, 2
	andi	$a5, $a2, 4095
	andn	$a6, $s3, $s0
	move	$a2, $zero
	bltu	$a6, $a5, .LBB2_24
# %bb.28:                               # %vector.scevcheck
                                        #   in Loop: Header=BB2_10 Depth=2
	sub.d	$a4, $a4, $s0
	andi	$a6, $a4, 4095
	bltu	$a6, $a5, .LBB2_24
# %bb.29:                               # %vector.scevcheck
                                        #   in Loop: Header=BB2_10 Depth=2
	srli.d	$a5, $a1, 1
	ori	$a6, $zero, 2046
	bltu	$a6, $a5, .LBB2_24
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_10 Depth=2
	andn	$a2, $s3, $a4
	sub.d	$a2, $a3, $a2
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB2_23
# %bb.31:                               # %vector.ph
                                        #   in Loop: Header=BB2_10 Depth=2
	addi.d	$a2, $a1, 3
	bstrpick.d	$a4, $a2, 15, 0
	bstrpick.d	$a2, $a4, 12, 6
	slli.w	$a2, $a2, 6
	add.w	$a3, $s0, $a2
	move	$a5, $a2
	.p2align	4, , 16
.LBB2_32:                               # %vector.body
                                        #   Parent Loop BB2_6 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a0, $s0
	andi	$a6, $a6, 4095
	add.d	$a7, $s5, $a6
	xvldx	$xr0, $a6, $s5
	xvld	$xr1, $a7, 32
	andi	$a6, $s0, 4095
	add.d	$a7, $s5, $a6
	xvstx	$xr0, $a6, $s5
	xvst	$xr1, $a7, 32
	addi.w	$a5, $a5, -64
	addi.d	$s0, $s0, 64
	bnez	$a5, .LBB2_32
# %bb.33:                               # %middle.block
                                        #   in Loop: Header=BB2_10 Depth=2
	move	$s0, $a3
	beq	$a2, $a4, .LBB2_9
	b	.LBB2_25
.LBB2_34:                               # %if.then12
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB2_47
# %bb.35:                               # %if.then14
	move	$a0, $zero
	st.w	$zero, $a1, 0
	b	.LBB2_48
.LBB2_36:                               # %while.end
	andi	$a2, $s0, 4095
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	beqz	$a2, .LBB2_38
# %bb.37:                               # %if.then98
	addi.d	$a1, $sp, 36
	move	$a0, $s3
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	bge	$s4, $a0, .LBB2_44
.LBB2_38:                               # %if.end110
	move	$a0, $s3
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_42
# %bb.39:                               # %if.end119
	move	$fp, $a0
	beqz	$s0, .LBB2_41
# %bb.40:                               # %if.then121
	st.w	$s1, $s0, 0
.LBB2_41:                               # %if.end123
	move	$a0, $s3
	pcaddu18i	$ra, %call36(blobGetData)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB2_48
.LBB2_42:                               # %if.then115
	move	$a0, $s3
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	beqz	$s0, .LBB2_48
# %bb.43:                               # %if.then117
	st.w	$zero, $s0, 0
	b	.LBB2_48
.LBB2_44:                               # %if.then105
	beqz	$s0, .LBB2_46
# %bb.45:                               # %if.then107
	st.w	$zero, $s0, 0
.LBB2_46:                               # %if.end108
	move	$a0, $s3
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
.LBB2_47:
	move	$a0, $zero
.LBB2_48:                               # %cleanup
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 160
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
.Lfunc_end2:
	.size	vba_decompress, .Lfunc_end2-vba_decompress
                                        # -- End function
	.globl	cli_decode_ole_object           # -- Begin function cli_decode_ole_object
	.p2align	5
	.type	cli_decode_ole_object,@function
cli_decode_ole_object:                  # @cli_decode_ole_object
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2528
	sub.d	$sp, $sp, $a2
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$a1, $sp, 288
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	addi.w	$s2, $zero, -1
	beq	$a0, $s2, .LBB3_20
# %bb.1:                                # %if.end
	addi.d	$a1, $sp, 280
	ori	$a2, $zero, 4
	ori	$s0, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB3_20
# %bb.2:                                # %if.end4
	ld.wu	$a0, $sp, 280
	ld.d	$a1, $sp, 336
	sub.d	$a0, $a1, $a0
	blt	$a0, $s0, .LBB3_13
# %bb.3:                                # %if.then8
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	beq	$a0, $s0, .LBB3_21
	.p2align	4, , 16
.LBB3_4:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 287
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB3_21
# %bb.5:                                # %do.cond
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a0, $sp, 287
	bnez	$a0, .LBB3_4
# %bb.6:                                # %do.body19.preheader
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB3_7:                                # %do.body19
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 287
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB3_21
# %bb.8:                                # %do.cond25
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.bu	$a0, $sp, 287
	bnez	$a0, .LBB3_7
# %bb.9:                                # %do.end27
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	beq	$a0, $s0, .LBB3_21
	.p2align	4, , 16
.LBB3_10:                               # %do.body33
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 287
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB3_21
# %bb.11:                               # %do.cond39
                                        #   in Loop: Header=BB3_10 Depth=1
	ld.bu	$a0, $sp, 287
	bnez	$a0, .LBB3_10
# %bb.12:                               # %do.end41
	addi.d	$a1, $sp, 280
	ori	$a2, $zero, 4
	ori	$s3, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB3_21
.LBB3_13:                               # %if.end48
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 23
	ori	$a1, $zero, 256
	move	$a3, $s1
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 23
	ori	$a1, $zero, 578
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s0, $s2
	bltz	$a0, .LBB3_21
# %bb.14:                               # %if.end55
	ld.w	$s2, $sp, 280
	move	$s0, $a0
	beqz	$s2, .LBB3_19
# %bb.15:                               # %while.body.i.preheader
	lu12i.w	$s3, 2
	.p2align	4, , 16
.LBB3_16:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a0, $s2, 13
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s2, $a0
	or	$s1, $a0, $a1
	addi.d	$a1, $sp, 416
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB3_19
# %bb.17:                               # %if.end.i
                                        #   in Loop: Header=BB3_16 Depth=1
	addi.d	$a1, $sp, 416
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	sub.w	$s2, $s2, $s1
	beqz	$s2, .LBB3_19
# %bb.18:                               # %if.end.i
                                        #   in Loop: Header=BB3_16 Depth=1
	beq	$a0, $s1, .LBB3_16
.LBB3_19:                               # %ole_copy_file_data.exit
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB3_21
.LBB3_20:
	move	$s0, $s2
.LBB3_21:                               # %cleanup
	move	$a0, $s0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2528
	add.d	$sp, $sp, $a1
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end3:
	.size	cli_decode_ole_object, .Lfunc_end3-cli_decode_ole_object
                                        # -- End function
	.globl	ppt_vba_read                    # -- Begin function ppt_vba_read
	.p2align	5
	.type	ppt_vba_read,@function
ppt_vba_read:                           # @ppt_vba_read
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
	ori	$a1, $a1, 2928
	sub.d	$sp, $sp, $a1
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 119
	ori	$a1, $zero, 256
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 119
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$s4, $zero, -1
	beq	$a0, $s4, .LBB4_4
# %bb.1:                                # %if.end
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_5
# %bb.2:                                # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB4_3:                                # %ppt_stream_iter.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	b	.LBB4_29
.LBB4_4:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	b	.LBB4_30
.LBB4_5:                                # %while.cond.preheader.i
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376
	addi.d	$s8, $sp, 384
	ori	$a2, $zero, 2
	ori	$s2, $zero, 2
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB4_28
# %bb.6:                                # %if.end.i.lr.ph.i
	addi.d	$s5, $sp, 390
	addi.d	$s7, $sp, 392
	ori	$s6, $zero, 4
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 17
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	lu12i.w	$s3, 2
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
.LBB4_7:                                # %if.end.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $sp, 384
	andi	$a1, $a0, 15
	st.b	$a1, $sp, 386
	srli.d	$a0, $a0, 4
	st.h	$a0, $sp, 388
	ori	$a2, $zero, 2
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB4_28
# %bb.8:                                # %if.end15.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ori	$a2, $zero, 4
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB4_28
# %bb.9:                                # %while.body.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 386
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 388
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 390
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 392
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 392
	beqz	$a0, .LBB4_34
# %bb.10:                               # %if.end6.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.hu	$a0, $sp, 390
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB4_26
# %bb.11:                               # %if.then9.i
                                        #   in Loop: Header=BB4_7 Depth=1
	addi.d	$a1, $sp, 400
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB4_35
# %bb.12:                               # %if.end15.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.w	$a0, $sp, 392
	ld.w	$a1, $sp, 400
	addi.w	$a2, $a0, -4
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 392
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	addi.d	$a0, $sp, 407
	ori	$a1, $zero, 256
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 407
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB4_36
# %bb.13:                               # %if.end.i25.i
                                        #   in Loop: Header=BB4_7 Depth=1
	move	$s2, $a0
	move	$s6, $s7
	move	$s7, $s5
	move	$s5, $s8
	addi.w	$s8, $s1, -4
	addi.d	$a0, $sp, 728
	st.d	$zero, $a0, 16
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 776
	add.d	$a0, $sp, $a0
	st.d	$a0, $sp, 664
	srli.d	$a0, $s8, 13
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s8, $a0
	or	$s1, $a0, $a1
	st.w	$s1, $sp, 672
	lu12i.w	$a0, 2
	ori	$a0, $a0, 776
	add.d	$a1, $sp, $a0
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB4_37
# %bb.14:                               # %if.end18.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	addi.d	$a0, $sp, 664
	ori	$a2, $zero, 112
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inflateInit_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_16
# %bb.15:                               # %if.then23.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	move	$a1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB4_16:                               # %if.end24.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	sub.w	$s8, $s8, $s1
	addi.d	$a0, $sp, 776
	st.d	$a0, $sp, 688
	st.w	$s3, $sp, 696
	move	$a0, $s3
	bnez	$a0, .LBB4_22
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_17:                               # %do.bodythread-pre-split.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.w	$a0, $sp, 696
	bnez	$a0, .LBB4_22
.LBB4_18:                               # %if.then29.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	addi.d	$a1, $sp, 776
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB4_31
# %bb.19:                               # %if.end37.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	addi.d	$a0, $sp, 776
	st.d	$a0, $sp, 688
	st.w	$s3, $sp, 696
	ld.w	$a0, $sp, 672
	bnez	$a0, .LBB4_23
.LBB4_20:                               # %if.then45.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 776
	add.d	$a0, $sp, $a0
	st.d	$a0, $sp, 664
	srli.d	$a0, $s8, 13
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s8, $a0
	or	$s1, $a0, $a1
	st.w	$s1, $sp, 672
	lu12i.w	$a0, 2
	ori	$a0, $a0, 776
	add.d	$a1, $sp, $a0
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $sp, 672
	bne	$a0, $a1, .LBB4_31
# %bb.21:                               # %if.end66.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	sub.w	$s8, $s8, $a1
	addi.d	$a0, $sp, 664
	move	$a1, $zero
	pcaddu18i	$ra, %call36(inflate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_17
	b	.LBB4_24
	.p2align	4, , 16
.LBB4_22:                               # %if.end41.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.w	$a0, $sp, 672
	beqz	$a0, .LBB4_20
.LBB4_23:                               # %if.end69.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	addi.d	$a0, $sp, 664
	move	$a1, $zero
	pcaddu18i	$ra, %call36(inflate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_17
.LBB4_24:                               # %do.end.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	addi.d	$a1, $sp, 776
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB4_31
# %bb.25:                               # %ppt_unlzw.exit.i
                                        #   in Loop: Header=BB4_7 Depth=1
	addi.d	$a0, $sp, 664
	pcaddu18i	$ra, %call36(inflateEnd)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$s8, $s5
	ori	$s2, $zero, 2
	move	$s5, $s7
	move	$s7, $s6
	ori	$s6, $zero, 4
	bnez	$a0, .LBB4_27
	b	.LBB4_32
.LBB4_26:                               # %if.else.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $sp, 392
	add.d	$s1, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB4_29
.LBB4_27:                               # %if.end40.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376
	ori	$a2, $zero, 2
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB4_7
.LBB4_28:                               # %ppt_read_atom_header.exit.thread.i
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB4_29:                               # %ppt_stream_iter.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB4_30:                               # %cleanup
	move	$a0, $s0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2928
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
.LBB4_31:                               # %if.then34.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 664
	pcaddu18i	$ra, %call36(inflateEnd)
	jirl	$ra, $ra, 0
.LBB4_32:                               # %if.then22.i
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
.LBB4_33:                               # %if.then4.i
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB4_34:                               # %if.then4.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
	b	.LBB4_3
.LBB4_35:                               # %if.then13.i
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	b	.LBB4_33
.LBB4_36:                               # %if.then.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB4_32
.LBB4_37:                               # %if.then14.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 407
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	b	.LBB4_32
.Lfunc_end4:
	.size	ppt_vba_read, .Lfunc_end4-ppt_vba_read
                                        # -- End function
	.globl	wm_dir_read                     # -- Begin function wm_dir_read
	.p2align	5
	.type	wm_dir_read,@function
wm_dir_read:                            # @wm_dir_read
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 79
	ori	$a1, $zero, 256
	move	$a3, $fp
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 79
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$s6, $zero, -1
	beq	$a0, $s6, .LBB5_73
# %bb.1:                                # %if.end
	move	$s0, $a0
	ori	$a1, $zero, 280
	ori	$s1, $zero, 280
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB5_74
# %bb.2:                                # %if.end.i
	addi.d	$a1, $sp, 348
	ori	$a2, $zero, 4
	ori	$s1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	bne	$a1, $s1, .LBB5_75
# %bb.3:                                # %if.end4.i
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 4
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	bne	$a1, $s1, .LBB5_75
# %bb.4:                                # %if.end6
	ld.w	$a0, $sp, 352
	beqz	$a0, .LBB5_79
# %bb.5:                                # %if.end10
	ld.w	$a1, $sp, 348
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 352
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 348
	addi.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 348
	addi.d	$a2, $a1, 1
	bstrpick.d	$a2, $a2, 31, 0
	bne	$a0, $a2, .LBB5_80
# %bb.6:                                # %if.end19
	ld.w	$a0, $sp, 352
	add.d	$a0, $a0, $a1
	bstrpick.d	$s7, $a0, 31, 0
	ori	$a2, $zero, 1
	ori	$s8, $zero, 1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bge	$a0, $s7, .LBB5_76
# %bb.7:                                # %while.body.preheader
	move	$s1, $zero
	ori	$s4, $zero, 63
	pcalau12i	$a0, %pc_hi20(.LJTI5_0)
	addi.d	$s2, $a0, %pc_lo12(.LJTI5_0)
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
.LBB5_8:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_55 Depth 2
                                        #     Child Loop BB5_38 Depth 2
                                        #     Child Loop BB5_41 Depth 2
                                        #     Child Loop BB5_18 Depth 2
	addi.d	$a1, $sp, 356
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB5_82
# %bb.9:                                # %if.end33
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.bu	$a1, $sp, 356
	addi.d	$a0, $a1, -1
	bltu	$s4, $a0, .LBB5_104
# %bb.10:                               # %if.end33
                                        #   in Loop: Header=BB5_8 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s2, $a0
	add.d	$a0, $s2, $a0
	jr	$a0
.LBB5_11:                               # %sw.bb
                                        #   in Loop: Header=BB5_8 Depth=1
	beqz	$s1, .LBB5_13
# %bb.12:                               # %if.then36
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_13:                               # %if.end37
                                        #   in Loop: Header=BB5_8 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_69
# %bb.14:                               # %if.end.i74
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$s1, $a0
	ori	$a2, $zero, 2
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_64
# %bb.15:                               # %if.end3.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.hu	$a1, $s1, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s1, 0
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	beqz	$a0, .LBB5_68
# %bb.16:                               # %for.cond.preheader.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.hu	$a0, $s1, 0
	beqz	$a0, .LBB5_70
# %bb.17:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$s3, $zero
	ori	$s4, $zero, 20
.LBB5_18:                               # %for.body.i
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 8
	add.d	$s5, $a0, $s4
	addi.d	$a1, $s5, -20
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB5_67
# %bb.19:                               # %if.end.i.i
                                        #   in Loop: Header=BB5_18 Depth=2
	addi.d	$a1, $s5, -19
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB5_67
# %bb.20:                               # %if.end4.i.i
                                        #   in Loop: Header=BB5_18 Depth=2
	addi.d	$a1, $s5, -18
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_67
# %bb.21:                               # %if.end8.i.i
                                        #   in Loop: Header=BB5_18 Depth=2
	addi.d	$a1, $s5, -16
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_67
# %bb.22:                               # %if.end12.i.i
                                        #   in Loop: Header=BB5_18 Depth=2
	addi.d	$a1, $s5, -14
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_67
# %bb.23:                               # %if.end16.i.i
                                        #   in Loop: Header=BB5_18 Depth=2
	addi.d	$a1, $s5, -12
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB5_67
# %bb.24:                               # %if.end20.i.i
                                        #   in Loop: Header=BB5_18 Depth=2
	addi.d	$a1, $s5, -8
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB5_67
# %bb.25:                               # %if.end24.i.i
                                        #   in Loop: Header=BB5_18 Depth=2
	addi.d	$a1, $s5, -4
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB5_67
# %bb.26:                               # %if.end28.i.i
                                        #   in Loop: Header=BB5_18 Depth=2
	ori	$a2, $zero, 4
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB5_67
# %bb.27:                               # %for.cond.i
                                        #   in Loop: Header=BB5_18 Depth=2
	ld.hu	$a0, $s1, 0
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 24
	bltu	$s3, $a0, .LBB5_18
# %bb.28:                               #   in Loop: Header=BB5_8 Depth=1
	ori	$s4, $zero, 63
	b	.LBB5_70
.LBB5_29:                               # %sw.bb48
                                        #   in Loop: Header=BB5_8 Depth=1
	addi.d	$a1, $sp, 358
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_107
# %bb.30:                               # %if.end.i90
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.hu	$a1, $sp, 358
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 358
	beqz	$a0, .LBB5_66
# %bb.31:                               # %if.then4.i
                                        #   in Loop: Header=BB5_8 Depth=1
	slli.d	$a1, $a0, 3
	alsl.d	$a1, $a0, $a1, 2
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB5_66
	b	.LBB5_86
.LBB5_32:                               # %sw.bb53
                                        #   in Loop: Header=BB5_8 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.d	$a1, $sp, 358
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_103
# %bb.33:                               # %if.end.i98
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.hu	$s4, $sp, 358
	move	$a0, $s4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bne	$s4, $a1, .LBB5_36
# %bb.34:                               # %if.then7.i
                                        #   in Loop: Header=BB5_8 Depth=1
	addi.d	$a1, $sp, 358
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_103
# %bb.35:                               # %if.then7.if.end15_crit_edge.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.hu	$a0, $sp, 358
.LBB5_36:                               # %if.end15.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ext.w.h	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.h	$a0, $sp, 358
	add.d	$s3, $s5, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bge	$a0, $s3, .LBB5_44
# %bb.37:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB5_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$s5, $a0, %pc_lo12(.L.str.77)
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB5_41
.LBB5_38:                               # %while.body.i
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a1, $sp, 357
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB5_84
# %bb.39:                               # %if.end25.i
                                        #   in Loop: Header=BB5_38 Depth=2
	ld.bu	$a0, $sp, 357
	addi.d	$a1, $a0, 2
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB5_83
# %bb.40:                               # %cleanup.i
                                        #   in Loop: Header=BB5_38 Depth=2
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	blt	$a0, $s3, .LBB5_38
	b	.LBB5_44
.LBB5_41:                               # %while.body.us.i
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a1, $sp, 357
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB5_84
# %bb.42:                               # %if.end25.us.i
                                        #   in Loop: Header=BB5_41 Depth=2
	ld.bu	$a0, $sp, 357
	slli.d	$a0, $a0, 1
	addi.d	$a1, $a0, 3
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB5_83
# %bb.43:                               # %cleanup.us.i
                                        #   in Loop: Header=BB5_41 Depth=2
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	blt	$a0, $s3, .LBB5_41
.LBB5_44:                               # %wm_skip_macro_extnames.exit
                                        #   in Loop: Header=BB5_8 Depth=1
	ori	$s3, $zero, 1
	ori	$s4, $zero, 63
	b	.LBB5_71
.LBB5_45:                               # %sw.bb43
                                        #   in Loop: Header=BB5_8 Depth=1
	addi.d	$a1, $sp, 358
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB5_105
# %bb.46:                               # %if.end.i82
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.bu	$a0, $sp, 358
	ori	$a1, $zero, 14
	mul.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB5_108
# %bb.47:                               # %if.end6.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.bu	$a1, $sp, 358
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 358
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB5_109
# %bb.48:                               # %if.end12.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.bu	$a0, $sp, 358
	beqz	$a0, .LBB5_59
.LBB5_49:                               # %if.then37.i
                                        #   in Loop: Header=BB5_8 Depth=1
	slli.d	$a0, $a0, 2
	addi.d	$a1, $a0, 1
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB5_110
# %bb.50:                               # %if.then37.if.end46_crit_edge.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.bu	$a1, $sp, 358
.LBB5_51:                               # %if.end46.i
                                        #   in Loop: Header=BB5_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB5_66
.LBB5_52:                               # %sw.bb58
                                        #   in Loop: Header=BB5_8 Depth=1
	addi.d	$a1, $sp, 358
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_106
# %bb.53:                               # %if.end.i108
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.hu	$a1, $sp, 358
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 358
	beqz	$a0, .LBB5_66
# %bb.54:                               # %for.body.i110.preheader
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$s3, $zero
.LBB5_55:                               # %for.body.i110
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB5_81
# %bb.56:                               # %if.end12.i112
                                        #   in Loop: Header=BB5_55 Depth=2
	addi.d	$a1, $sp, 357
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB5_81
# %bb.57:                               # %if.end18.i
                                        #   in Loop: Header=BB5_55 Depth=2
	ld.bu	$a0, $sp, 357
	addi.d	$a1, $a0, 1
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB5_81
# %bb.58:                               # %cleanup.i115
                                        #   in Loop: Header=BB5_55 Depth=2
	ld.hu	$a0, $sp, 358
	addi.d	$s3, $s3, 1
	bltu	$s3, $a0, .LBB5_55
	b	.LBB5_66
.LBB5_59:                               # %if.then16.i
                                        #   in Loop: Header=BB5_8 Depth=1
	addi.d	$a1, $sp, 358
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.72)
	addi.d	$s5, $a1, %pc_lo12(.L.str.72)
	bne	$a0, $s8, .LBB5_84
# %bb.60:                               # %if.end21.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.bu	$a0, $sp, 358
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_65
# %bb.61:                               # %if.end27.i
                                        #   in Loop: Header=BB5_8 Depth=1
	addi.d	$a1, $sp, 358
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB5_84
# %bb.62:                               # %if.end33.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.bu	$a0, $sp, 358
	bnez	$a0, .LBB5_49
# %bb.63:                               #   in Loop: Header=BB5_8 Depth=1
	move	$a1, $zero
	b	.LBB5_51
.LBB5_64:                               # %if.then2.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB5_68
.LBB5_65:                               # %if.then25.i
                                        #   in Loop: Header=BB5_8 Depth=1
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB5_66:                               # %wm_skip_macro_intnames.exit
                                        #   in Loop: Header=BB5_8 Depth=1
	ori	$s3, $zero, 1
	b	.LBB5_71
.LBB5_67:                               # %if.then22.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 63
.LBB5_68:                               # %cleanup.sink.split.i
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_69:                               # %wm_read_macro_info.exit
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$s1, $zero
.LBB5_70:                               # %wm_read_macro_info.exit
                                        #   in Loop: Header=BB5_8 Depth=1
	sltu	$s3, $zero, $s1
.LBB5_71:                               # %sw.epilog
                                        #   in Loop: Header=BB5_8 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bge	$a0, $s7, .LBB5_87
# %bb.72:                               # %sw.epilog
                                        #   in Loop: Header=BB5_8 Depth=1
	bnez	$s3, .LBB5_8
	b	.LBB5_87
.LBB5_73:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB5_77
.LBB5_74:
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
.LBB5_75:                               # %if.then4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB5_76:                               # %while.end.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB5_77:                               # %cleanup
	move	$a0, $zero
.LBB5_78:                               # %cleanup
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.LBB5_79:                               # %if.then8
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	b	.LBB5_75
.LBB5_80:                               # %if.then17
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	b	.LBB5_75
.LBB5_81:                               # %cleanup26.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	b	.LBB5_85
.LBB5_82:                               # %if.then31
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	b	.LBB5_75
.LBB5_83:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
.LBB5_84:                               # %if.then.i
	move	$a0, $s5
.LBB5_85:                               # %sw.epilog.thread
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB5_86:                               # %sw.epilog.thread
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB5_87:                               # %while.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB5_77
# %bb.88:                               # %if.then68
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_101
# %bb.89:                               # %if.end72
	ld.hu	$a1, $s1, 0
	slli.d	$a1, $a1, 3
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	st.d	$a1, $s0, 8
	beqz	$a1, .LBB5_100
# %bb.90:                               # %if.end78
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 40
	ld.hu	$a0, $s1, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	beqz	$a0, .LBB5_96
# %bb.91:                               # %if.end94
	ld.hu	$a0, $s1, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	st.d	$a0, $s0, 24
	beqz	$a0, .LBB5_98
# %bb.92:                               # %if.end105
	ld.hu	$a0, $s1, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	st.d	$a0, $s0, 32
	beqz	$a0, .LBB5_97
# %bb.93:                               # %if.else
	ld.hu	$a0, $s1, 0
	st.w	$a0, $a1, 0
	beqz	$a0, .LBB5_102
# %bb.94:                               # %for.body.lr.ph
	move	$s2, $zero
	move	$s3, $zero
	move	$s4, $zero
	move	$s5, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$fp, $a0, %pc_lo12(.L.str.25)
.LBB5_95:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 8
	stx.d	$a0, $a1, $s3
	ld.d	$a0, $s1, 8
	add.d	$a0, $a0, $s2
	ld.w	$a1, $a0, 20
	ld.d	$a3, $s0, 16
	stx.w	$a1, $a3, $s4
	ld.w	$a1, $a0, 12
	ld.d	$a3, $s0, 24
	stx.w	$a1, $a3, $s4
	ld.b	$a0, $a0, 1
	ld.d	$a1, $s0, 32
	stx.b	$a0, $a1, $s5
	ld.hu	$a0, $s1, 0
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 4
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 24
	bltu	$s5, $a0, .LBB5_95
	b	.LBB5_102
.LBB5_96:                               # %if.then87
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $s0, 40
	bnez	$a1, .LBB5_99
	b	.LBB5_100
.LBB5_97:                               # %if.then112
	ld.d	$a0, $a1, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a1, $s0
.LBB5_98:                               # %abort.sink.split.sink.split.sink.split
	ld.d	$a0, $a1, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 40
.LBB5_99:                               # %abort.sink.split.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB5_100:                              # %abort.sink.split
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_101:                              # %abort
	move	$s0, $zero
.LBB5_102:                              # %abort
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB5_78
.LBB5_103:                              # %if.then.i97
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	b	.LBB5_85
.LBB5_104:                              # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB5_86
.LBB5_105:
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	b	.LBB5_84
.LBB5_106:                              # %if.then.i106
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	b	.LBB5_85
.LBB5_107:                              # %if.then.i88
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	b	.LBB5_85
.LBB5_108:
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_84
.LBB5_109:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$s5, $a0, %pc_lo12(.L.str.71)
	b	.LBB5_84
.LBB5_110:
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$s5, $a0, %pc_lo12(.L.str.73)
	b	.LBB5_84
.Lfunc_end5:
	.size	wm_dir_read, .Lfunc_end5-wm_dir_read
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_11-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_45-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_29-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_32-.LJTI5_0
	.word	.LBB5_52-.LJTI5_0
	.word	.LBB5_86-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_104-.LJTI5_0
	.word	.LBB5_86-.LJTI5_0
                                        # -- End function
	.text
	.globl	wm_decrypt_macro                # -- Begin function wm_decrypt_macro
	.p2align	5
	.type	wm_decrypt_macro,@function
wm_decrypt_macro:                       # @wm_decrypt_macro
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a3
	move	$s2, $a2
	move	$s3, $a0
	bstrpick.d	$fp, $a1, 31, 0
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB6_7
# %bb.1:                                # %if.end
	bstrpick.d	$s1, $s2, 31, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_7
# %bb.2:                                # %if.end6
	move	$fp, $a0
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB6_9
# %bb.3:                                # %if.end11
	beqz	$s0, .LBB6_8
# %bb.4:                                # %if.end11
	beqz	$s2, .LBB6_8
# %bb.5:                                # %iter.check
	ori	$a0, $zero, 16
	bgeu	$s2, $a0, .LBB6_10
# %bb.6:
	move	$a0, $zero
	b	.LBB6_19
.LBB6_7:
	move	$fp, $zero
.LBB6_8:                                # %cleanup
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_9:                                # %if.then10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB6_8
.LBB6_10:                               # %vector.main.loop.iter.check
	ori	$a0, $zero, 64
	bgeu	$s2, $a0, .LBB6_12
# %bb.11:
	move	$a0, $zero
	b	.LBB6_16
.LBB6_12:                               # %vector.ph
	move	$a1, $zero
	bstrpick.d	$a0, $s1, 31, 6
	slli.d	$a0, $a0, 6
	xvreplgr2vr.b	$xr0, $s0
	.p2align	4, , 16
.LBB6_13:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $fp, $a1
	xvldx	$xr1, $fp, $a1
	xvld	$xr2, $a2, 32
	xvxor.v	$xr1, $xr1, $xr0
	xvxor.v	$xr2, $xr2, $xr0
	xvstx	$xr1, $fp, $a1
	addi.d	$a1, $a1, 64
	xvst	$xr2, $a2, 32
	bne	$a0, $a1, .LBB6_13
# %bb.14:                               # %middle.block
	beq	$a0, $s1, .LBB6_8
# %bb.15:                               # %vec.epilog.iter.check
	andi	$a1, $s1, 48
	beqz	$a1, .LBB6_19
.LBB6_16:                               # %vec.epilog.ph
	move	$a1, $a0
	bstrpick.d	$a0, $s1, 31, 4
	slli.d	$a0, $a0, 4
	vreplgr2vr.b	$vr0, $s0
	.p2align	4, , 16
.LBB6_17:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr1, $fp, $a1
	vxor.v	$vr1, $vr1, $vr0
	vstx	$vr1, $fp, $a1
	addi.d	$a1, $a1, 16
	bne	$a0, $a1, .LBB6_17
# %bb.18:                               # %vec.epilog.middle.block
	beq	$a0, $s1, .LBB6_8
	.p2align	4, , 16
.LBB6_19:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a1, $fp, $a0
	xor	$a1, $a1, $s0
	stx.b	$a1, $fp, $a0
	addi.d	$a0, $a0, 1
	bne	$s1, $a0, .LBB6_19
	b	.LBB6_8
.Lfunc_end6:
	.size	wm_decrypt_macro, .Lfunc_end6-wm_decrypt_macro
                                        # -- End function
	.type	.L__const.vba56_dir_read.vba56_signature,@object # @__const.vba56_dir_read.vba56_signature
	.section	.rodata,"a",@progbits
.L__const.vba56_dir_read.vba56_signature:
	.ascii	"\314a"
	.size	.L__const.vba56_dir_read.vba56_signature, 2

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in vba56_dir_read()\n"
	.size	.L.str, 21

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s/_VBA_PROJECT"
	.size	.L.str.1, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Can't open %s\n"
	.size	.L.str.2, 15

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Unknown VBA version signature %x %x %x %x\n"
	.size	.L.str.3, 43

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Guessing little-endian\n"
	.size	.L.str.4, 24

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Guessing big-endian\n"
	.size	.L.str.5, 21

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Unable to guess VBA type\n"
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"VBA Project: %s\n"
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\nVBA Record count: %d\n"
	.size	.L.str.8, 23

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\nVBA Record count too big"
	.size	.L.str.9, 26

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"zero name length\n"
	.size	.L.str.10, 18

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"cli_malloc failed\n"
	.size	.L.str.11, 19

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"read name failed\n"
	.size	.L.str.12, 18

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"clamav-%.10d"
	.size	.L.str.13, 13

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"project name: %s, "
	.size	.L.str.14, 19

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"offset:%u\n"
	.size	.L.str.15, 11

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s/_clam_ole_object"
	.size	.L.str.16, 20

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%s/PowerPoint Document"
	.size	.L.str.17, 23

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Open PowerPoint Document failed\n"
	.size	.L.str.18, 33

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%s/WordDocument"
	.size	.L.str.19, 16

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Open WordDocument failed\n"
	.size	.L.str.20, 26

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"No macros detected\n"
	.size	.L.str.21, 20

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"lseek macro_offset failed\n"
	.size	.L.str.22, 27

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"read macro_info failed\n"
	.size	.L.str.23, 24

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"unknown type: 0x%x\n"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"WordDocument"
	.size	.L.str.25, 13

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Office 97"
	.size	.L.str.26, 10

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Office 97 SR1"
	.size	.L.str.27, 14

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Office 2000 alpha?"
	.size	.L.str.28, 19

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Office 2000 beta?"
	.size	.L.str.29, 18

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Office 2000"
	.size	.L.str.30, 12

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Office XP beta 1/2"
	.size	.L.str.31, 19

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Office XP"
	.size	.L.str.32, 10

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Office 2003"
	.size	.L.str.33, 12

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"MacOffice 98"
	.size	.L.str.34, 13

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"MacOffice 2001"
	.size	.L.str.35, 15

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"MacOffice X"
	.size	.L.str.36, 12

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"MacOffice 2004"
	.size	.L.str.37, 15

	.type	vba_version,@object             # @vba_version
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
vba_version:
	.ascii	"^\000\000\001"
	.space	4
	.dword	.L.str.26
	.word	0                               # 0x0
	.space	4
	.ascii	"_\000\000\001"
	.space	4
	.dword	.L.str.27
	.word	0                               # 0x0
	.space	4
	.ascii	"e\000\000\001"
	.space	4
	.dword	.L.str.28
	.word	0                               # 0x0
	.space	4
	.ascii	"k\000\000\001"
	.space	4
	.dword	.L.str.29
	.word	0                               # 0x0
	.space	4
	.ascii	"m\000\000\001"
	.space	4
	.dword	.L.str.30
	.word	0                               # 0x0
	.space	4
	.ascii	"o\000\000\001"
	.space	4
	.dword	.L.str.30
	.word	0                               # 0x0
	.space	4
	.ascii	"p\000\000\001"
	.space	4
	.dword	.L.str.31
	.word	0                               # 0x0
	.space	4
	.ascii	"s\000\000\001"
	.space	4
	.dword	.L.str.32
	.word	0                               # 0x0
	.space	4
	.ascii	"v\000\000\001"
	.space	4
	.dword	.L.str.33
	.word	0                               # 0x0
	.space	4
	.ascii	"y\000\000\001"
	.space	4
	.dword	.L.str.33
	.word	0                               # 0x0
	.space	4
	.ascii	"`\000\000\016"
	.space	4
	.dword	.L.str.34
	.word	1                               # 0x1
	.space	4
	.ascii	"b\000\000\016"
	.space	4
	.dword	.L.str.35
	.word	1                               # 0x1
	.space	4
	.ascii	"c\000\000\016"
	.space	4
	.dword	.L.str.36
	.word	1                               # 0x1
	.space	4
	.ascii	"d\000\000\016"
	.space	4
	.dword	.L.str.37
	.word	1                               # 0x1
	.space	4
	.size	vba_version, 336

	.type	.L.str.39,@object               # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"read name failed - rewinding\n"
	.size	.L.str.39, 30

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"length: %d, name: %s\n"
	.size	.L.str.40, 22

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"length: %d, name: [null]\n"
	.size	.L.str.41, 26

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"*\\"
	.size	.L.str.42, 3

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"GCHD"
	.size	.L.str.43, 5

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"offset: %u\n"
	.size	.L.str.44, 12

	.type	vba56_test_middle.middle1_str,@object # @vba56_test_middle.middle1_str
	.section	.rodata,"a",@progbits
vba56_test_middle.middle1_str:
	.asciz	"\000\001\rE.\341\340\217\020\032\205.\002`\214M\013\264\000"
	.size	vba56_test_middle.middle1_str, 20

	.type	vba56_test_middle.middle2_str,@object # @vba56_test_middle.middle2_str
vba56_test_middle.middle2_str:
	.asciz	"\000\000\341.E\r\217\340\032\020\205.\002`\214M\013\264\000"
	.size	vba56_test_middle.middle2_str, 20

	.type	.L.str.45,@object               # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"middle not found\n"
	.size	.L.str.45, 18

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"middle found\n"
	.size	.L.str.46, 14

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"get_unicode_name: odd number of bytes %d\n"
	.size	.L.str.47, 42

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"ScanOLE2 -> Can't create temporary directory %s\n"
	.size	.L.str.48, 49

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"read ole_id failed\n"
	.size	.L.str.49, 20

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"OleID: %d, length: %d\n"
	.size	.L.str.50, 23

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"ppt_unlzw failed\n"
	.size	.L.str.51, 18

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"read ppt_current_user failed\n"
	.size	.L.str.52, 30

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"Atom Hdr:\n"
	.size	.L.str.53, 11

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"  Version: 0x%.2x\n"
	.size	.L.str.54, 19

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"  Instance: 0x%.4x\n"
	.size	.L.str.55, 20

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"  Type: 0x%.4x\n"
	.size	.L.str.56, 16

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"  Length: 0x%.8x\n"
	.size	.L.str.57, 18

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"%s/ppt%.8lx.doc"
	.size	.L.str.58, 16

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"ppt_unlzw Open outfile failed\n"
	.size	.L.str.59, 31

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"1.2.11"
	.size	.L.str.60, 7

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	" ppt_unlzw !Z_OK: %d\n"
	.size	.L.str.61, 22

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"lseek wm_fib failed\n"
	.size	.L.str.62, 21

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"read wm_fib failed\n"
	.size	.L.str.63, 20

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"macro offset: 0x%.4x\n"
	.size	.L.str.64, 22

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"macro len: 0x%.4x\n\n"
	.size	.L.str.65, 20

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"macro count: %d\n"
	.size	.L.str.66, 17

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"read macro_entry failed\n"
	.size	.L.str.67, 25

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"read oxo3 record1 failed\n"
	.size	.L.str.68, 26

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"lseek oxo3 record1 failed\n"
	.size	.L.str.69, 27

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"oxo3 records1: %d\n"
	.size	.L.str.70, 19

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"read oxo3 record2 failed\n"
	.size	.L.str.71, 26

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"read oxo3 failed\n"
	.size	.L.str.72, 18

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"lseek oxo3 failed\n"
	.size	.L.str.73, 19

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"oxo3 records2: %d\n"
	.size	.L.str.74, 19

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"read menu_info failed\n"
	.size	.L.str.75, 23

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"menu_info count: %d\n"
	.size	.L.str.76, 21

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"read macro_extnames failed\n"
	.size	.L.str.77, 28

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"ext names size: 0x%x\n"
	.size	.L.str.78, 22

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"read macro_extnames failed to seek\n"
	.size	.L.str.79, 36

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"read macro_intnames failed\n"
	.size	.L.str.80, 28

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"int names count: %u\n"
	.size	.L.str.81, 21

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"skip_macro_intnames failed\n"
	.size	.L.str.82, 28

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vba_version
	.addrsig_sym vba56_test_middle.middle1_str
	.addrsig_sym vba56_test_middle.middle2_str
