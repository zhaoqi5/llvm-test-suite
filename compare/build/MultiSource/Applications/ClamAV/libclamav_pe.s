	.file	"libclamav_pe.c"
	.text
	.globl	cli_scanpe                      # -- Begin function cli_scanpe
	.p2align	5
	.type	cli_scanpe,@function
cli_scanpe:                             # @cli_scanpe
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
	ori	$a2, $a2, 2832
	sub.d	$sp, $sp, $a2
	st.w	$zero, $sp, 248
	beqz	$a1, .LBB0_12
# %bb.1:                                # %if.end
	move	$s1, $a0
	move	$fp, $a1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 678
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 2
	ori	$s0, $zero, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_13
# %bb.2:                                # %if.end3
	lu12i.w	$a0, 2
	ori	$a0, $a0, 678
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	lu12i.w	$s2, 4
	ori	$a1, $s2, 3418
	beq	$a0, $a1, .LBB0_4
# %bb.3:                                # %if.end3
	lu12i.w	$a1, 5
	ori	$a1, $a1, 2637
	bne	$a0, $a1, .LBB0_17
.LBB0_4:                                # %if.end11
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 672
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 4
	ori	$s0, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_14
# %bb.5:                                # %if.end25
	lu12i.w	$a0, 2
	ori	$a0, $a0, 672
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 672
	add.d	$a0, $sp, $a0
	ld.wu	$a1, $a0, 0
	beqz	$a1, .LBB0_18
# %bb.6:                                # %if.end28
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	bge	$s0, $a0, .LBB0_19
# %bb.7:                                # %if.end34
	lu12i.w	$a0, 2
	ori	$a0, $a0, 640
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 24
	ori	$s3, $zero, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_20
# %bb.8:                                # %if.end40
	lu12i.w	$a0, 2
	ori	$a0, $a0, 640
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ori	$a1, $s2, 1360
	bne	$a0, $a1, .LBB0_21
# %bb.9:                                # %if.end44
	lu12i.w	$a0, 2
	ori	$a0, $a0, 662
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	lu12i.w	$a1, 2
	and	$s6, $a0, $a1
	bnez	$s6, .LBB0_22
# %bb.10:                               # %if.else
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_24
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	b	.LBB0_23
.LBB0_12:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -111
	b	.LBB0_133
.LBB0_13:                               # %if.then2
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_14:                               # %if.then17
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
.LBB0_15:                               # %if.then17
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 40
	andi	$a0, $a0, 64
	bnez	$a0, .LBB0_131
.LBB0_16:
	move	$a0, $zero
	b	.LBB0_133
.LBB0_17:                               # %if.then10
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_18:                               # %if.then27
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_19:                               # %if.then33
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_20:                               # %if.then39
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_21:                               # %if.then43
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_22:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
.LBB0_23:                               # %if.end55.sink.split
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_24:                               # %if.end55
	lu12i.w	$a0, 2
	ori	$a0, $a0, 644
	add.d	$a0, $sp, $a0
	ld.hu	$a1, $a0, 0
	ori	$a0, $zero, 511
	blt	$a0, $a1, .LBB0_28
# %bb.25:                               # %if.end55
	addi.d	$a0, $a1, -332
	ori	$a2, $zero, 164
	bltu	$a2, $a0, .LBB0_47
# %bb.26:                               # %if.end55
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB0_27:                               # %sw.bb57
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	b	.LBB0_74
.LBB0_28:                               # %if.end55
	ori	$a0, $zero, 1311
	blt	$a0, $a1, .LBB0_34
# %bb.29:                               # %if.end55
	ori	$a0, $zero, 643
	blt	$a0, $a1, .LBB0_39
# %bb.30:                               # %if.end55
	ori	$a0, $zero, 512
	beq	$a1, $a0, .LBB0_70
# %bb.31:                               # %if.end55
	ori	$a0, $zero, 614
	beq	$a1, $a0, .LBB0_66
# %bb.32:                               # %if.end55
	ori	$a0, $zero, 616
	bne	$a1, $a0, .LBB0_49
# %bb.33:                               # %sw.bb68
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	b	.LBB0_74
.LBB0_34:                               # %if.end55
	lu12i.w	$a0, 8
	ori	$a2, $a0, 1635
	blt	$a2, $a1, .LBB0_43
# %bb.35:                               # %if.end55
	ori	$a0, $zero, 1312
	beq	$a1, $a0, .LBB0_71
# %bb.36:                               # %if.end55
	ori	$a0, $zero, 3311
	beq	$a1, $a0, .LBB0_67
# %bb.37:                               # %if.end55
	ori	$a0, $zero, 3772
	bne	$a1, $a0, .LBB0_49
# %bb.38:                               # %sw.bb82
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	b	.LBB0_74
.LBB0_39:                               # %if.end55
	ori	$a0, $zero, 644
	beq	$a1, $a0, .LBB0_72
# %bb.40:                               # %if.end55
	ori	$a0, $zero, 870
	beq	$a1, $a0, .LBB0_68
# %bb.41:                               # %if.end55
	ori	$a0, $zero, 1126
	bne	$a1, $a0, .LBB0_49
# %bb.42:                               # %sw.bb71
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB0_74
.LBB0_43:                               # %if.end55
	ori	$a0, $a0, 1636
	beq	$a1, $a0, .LBB0_73
# %bb.44:                               # %if.end55
	lu12i.w	$a0, 9
	ori	$a0, $a0, 65
	beq	$a1, $a0, .LBB0_69
# %bb.45:                               # %if.end55
	lu12i.w	$a0, 12
	ori	$a0, $a0, 238
	bne	$a1, $a0, .LBB0_49
# %bb.46:                               # %sw.bb84
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	b	.LBB0_74
.LBB0_47:                               # %if.end55
	bnez	$a1, .LBB0_49
# %bb.48:                               # %sw.bb
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	b	.LBB0_74
.LBB0_49:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_75
.LBB0_50:                               # %sw.bb78
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	b	.LBB0_74
.LBB0_51:                               # %sw.bb62
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	b	.LBB0_74
.LBB0_52:                               # %sw.bb75
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	b	.LBB0_74
.LBB0_53:                               # %sw.bb73
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	b	.LBB0_74
.LBB0_54:                               # %sw.bb60
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	b	.LBB0_74
.LBB0_55:                               # %sw.bb64
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	b	.LBB0_74
.LBB0_56:                               # %sw.bb59
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	b	.LBB0_74
.LBB0_57:                               # %sw.bb63
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	b	.LBB0_74
.LBB0_58:                               # %sw.bb58
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB0_74
.LBB0_59:                               # %sw.bb74
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	b	.LBB0_74
.LBB0_60:                               # %sw.bb72
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	b	.LBB0_74
.LBB0_61:                               # %sw.bb77
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	b	.LBB0_74
.LBB0_62:                               # %sw.bb61
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	b	.LBB0_74
.LBB0_63:                               # %sw.bb76
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	b	.LBB0_74
.LBB0_64:                               # %sw.bb79
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	b	.LBB0_74
.LBB0_65:                               # %sw.bb66
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	b	.LBB0_74
.LBB0_66:                               # %sw.bb69
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	b	.LBB0_74
.LBB0_67:                               # %sw.bb81
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	b	.LBB0_74
.LBB0_68:                               # %sw.bb70
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	b	.LBB0_74
.LBB0_69:                               # %sw.bb83
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	b	.LBB0_74
.LBB0_70:                               # %sw.bb67
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	b	.LBB0_74
.LBB0_71:                               # %sw.bb80
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	b	.LBB0_74
.LBB0_72:                               # %sw.bb65
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	b	.LBB0_74
.LBB0_73:                               # %sw.bb85
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
.LBB0_74:                               # %sw.epilog
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_75:                               # %sw.epilog
	lu12i.w	$a0, 2
	ori	$a0, $a0, 646
	add.d	$a0, $sp, $a0
	ld.hu	$s5, $a0, 0
	addi.d	$a0, $s5, -97
	bstrpick.d	$a0, $a0, 15, 5
	ori	$a1, $zero, 2044
	bltu	$a1, $a0, .LBB0_79
# %bb.76:                               # %if.then94
	ld.bu	$a0, $fp, 40
	andi	$a0, $a0, 64
	bnez	$a0, .LBB0_131
# %bb.77:                               # %if.end104
	beqz	$s5, .LBB0_87
# %bb.78:                               # %if.then106
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_79:                               # %if.end110
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 648
	add.d	$a0, $sp, $a0
	ld.wu	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 664
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 664
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(ctime)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 660
	add.d	$a0, $sp, $a0
	ld.hu	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 660
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	ori	$a1, $zero, 223
	bltu	$a1, $a0, .LBB0_81
# %bb.80:                               # %if.then119
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	b	.LBB0_15
.LBB0_81:                               # %if.end130
	lu12i.w	$a0, 2
	ori	$a0, $a0, 400
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 224
	ori	$s3, $zero, 224
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_86
# %bb.82:                               # %if.end146
	lu12i.w	$a0, 2
	ori	$a0, $a0, 400
	add.d	$a0, $sp, $a0
	ld.hu	$s2, $a0, 0
	ori	$a0, $zero, 523
	bne	$s2, $a0, .LBB0_88
# %bb.83:                               # %if.then151
	lu12i.w	$a0, 2
	ori	$a0, $a0, 660
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	ori	$a1, $zero, 240
	bne	$a0, $a1, .LBB0_93
# %bb.84:                               # %if.else209
	lu12i.w	$a0, 2
	ori	$a0, $a0, 624
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 16
	ori	$s3, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_86
# %bb.85:
	move	$s8, $zero
	lu12i.w	$a0, 2
	ori	$a0, $a0, 508
	add.d	$s3, $sp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	b	.LBB0_96
.LBB0_86:                               # %if.then135
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	b	.LBB0_15
.LBB0_87:                               # %if.else108
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_88:                               # %if.else168
	ori	$a0, $zero, 267
	beq	$s2, $a0, .LBB0_91
# %bb.89:                               # %if.then173
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 40
	andi	$a1, $a1, 64
	bnez	$a1, .LBB0_131
# %bb.90:                               # %if.end183
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_91:                               # %if.then187
	lu12i.w	$a0, 2
	ori	$a0, $a0, 660
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	ori	$a1, $zero, 224
	bne	$a0, $a1, .LBB0_94
# %bb.92:
	move	$a0, $zero
	b	.LBB0_95
.LBB0_93:                               # %if.then156
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	b	.LBB0_15
.LBB0_94:                               # %if.then192
	addi.d	$a1, $a0, -224
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 660
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	addi.d	$a0, $a0, -328
	sltui	$a0, $a0, 1
.LBB0_95:                               # %if.end196
	ld.d	$a1, $fp, 56
	ld.bu	$a1, $a1, 1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 492
	add.d	$s3, $sp, $a2
	bstrpick.d	$a1, $a1, 6, 6
	and	$s8, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
.LBB0_96:                               # %if.end244
	lu12i.w	$a1, 2
	ori	$a1, $a1, 416
	add.d	$a1, $sp, $a1
	ld.w	$s4, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 460
	add.d	$a1, $sp, $a1
	ld.w	$s7, $a1, 0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 402
	add.d	$a0, $sp, $a0
	ld.bu	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 403
	add.d	$a0, $sp, $a0
	ld.bu	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 404
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 408
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 412
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 420
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 432
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 436
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 448
	add.d	$a0, $sp, $a0
	ld.hu	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 450
	add.d	$a0, $sp, $a0
	ld.hu	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 456
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 468
	add.d	$a0, $sp, $a0
	ld.hu	$a1, $a0, 0
	ori	$a0, $zero, 12
	bltu	$a0, $a1, .LBB0_109
# %bb.97:                               # %if.end244
	slli.d	$a0, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_1)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB0_98:                               # %sw.bb249
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_99:                               # %sw.bb259
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_100:                              # %sw.bb253
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_101:                              # %sw.bb254
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_102:                              # %sw.bb252
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_103:                              # %sw.bb251
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_104:                              # %sw.bb250
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	b	.LBB0_111
.LBB0_105:                              # %sw.bb255
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_106:                              # %sw.bb256
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_107:                              # %sw.bb258
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_108:                              # %sw.bb257
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_109:                              # %sw.default260
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB0_110:                              # %sw.epilog270
	move	$s3, $zero
.LBB0_111:                              # %sw.epilog270
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB0_117
# %bb.112:                              # %sw.epilog270
	move	$a1, $fp
	ld.wu	$a0, $fp, 40
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_117
# %bb.113:                              # %land.lhs.true276
	lu12i.w	$a0, 2
	ori	$a0, $a0, 432
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	sltu	$a2, $zero, $a0
	andi	$a0, $a0, 4095
	sltui	$a0, $a0, 1
	ori	$a3, $zero, 523
	and	$a0, $a2, $a0
	beqz	$a0, .LBB0_129
# %bb.114:                              # %cond.false310
	lu12i.w	$a0, 2
	ori	$a0, $a0, 436
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_116
# %bb.115:                              # %lor.lhs.false313
	andi	$a0, $a0, 511
	beqz	$a0, .LBB0_117
.LBB0_116:                              # %if.then323
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	b	.LBB0_130
.LBB0_117:                              # %if.end329
	lu12i.w	$a0, 2
	ori	$a0, $a0, 272
	add.d	$a1, $sp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB0_134
# %bb.118:                              # %if.end334
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 320
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ori	$a1, $zero, 40
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_135
# %bb.119:                              # %if.end339
	ori	$a1, $zero, 36
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_136
# %bb.120:                              # %if.end344
	move	$s2, $a0
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 432
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 436
	add.d	$a0, $sp, $a0
	ld.w	$s4, $a0, 0
	slli.d	$a0, $s5, 5
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	alsl.d	$a0, $s5, $a0, 3
	bstrpick.d	$a0, $a0, 15, 3
	slli.d	$s3, $a0, 3
	move	$a0, $s1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_138
# %bb.121:                              # %for.cond.preheader
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	ori	$a1, $zero, 512
	ori	$a0, $zero, 512
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	beq	$s4, $a1, .LBB0_140
# %bb.122:                              # %for.body.preheader
	move	$a0, $zero
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 20
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_124
.LBB0_123:                              # %for.inc
                                        #   in Loop: Header=BB0_124 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 40
	bgeu	$a0, $a4, .LBB0_139
.LBB0_124:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s4, .LBB0_123
# %bb.125:                              # %land.lhs.true385
                                        #   in Loop: Header=BB0_124 Depth=1
	ld.w	$a2, $a1, -4
	beqz	$a2, .LBB0_123
# %bb.126:                              # %land.lhs.true387
                                        #   in Loop: Header=BB0_124 Depth=1
	ld.w	$a2, $a1, 0
	mod.wu	$a3, $a2, $s4
	beqz	$a3, .LBB0_123
# %bb.127:                              # %land.lhs.true387
                                        #   in Loop: Header=BB0_124 Depth=1
	andi	$a2, $a2, 511
	bnez	$a2, .LBB0_123
# %bb.128:                              # %for.inc.thread
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_140
.LBB0_129:                              # %if.then293
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
.LBB0_130:                              # %if.then293
	move	$fp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_131:                              # %if.then19
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 1
	beqz	$a1, .LBB0_133
# %bb.132:                              # %if.then21
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	st.d	$a2, $a1, 0
.LBB0_133:                              # %cleanup4880
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2832
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
.LBB0_134:                              # %if.then333
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_135:                              # %if.then338
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_133
.LBB0_136:                              # %if.then343
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
.LBB0_137:                              # %cleanup4880
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_133
.LBB0_138:                              # %if.then367
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	b	.LBB0_201
.LBB0_139:
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
.LBB0_140:                              # %for.end
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_142
# %bb.141:                              # %cond.true401
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	div.wu	$a0, $a2, $a3
	mul.d	$a1, $a0, $a3
	sub.w	$a1, $a2, $a1
	sltu	$a1, $zero, $a1
	add.d	$a0, $a0, $a1
	mul.w	$a0, $a0, $a3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
.LBB0_142:                              # %cond.end407
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_197
# %bb.143:                              # %for.body413.lr.ph
	move	$s5, $zero
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	lu12i.w	$a0, -10
	ori	$a0, $a0, 959
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 7
	ori	$a0, $a0, 1326
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, -131072
	ori	$a0, $a0, 96
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_145
.LBB0_144:                              # %if.end851
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a3
	ld.w	$a2, $s4, 0
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a3
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	add.w	$a0, $a2, $a0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	sltu	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB0_198
.LBB0_145:                              # %for.body413
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_183 Depth 2
	slli.d	$s4, $s5, 5
	alsl.d	$a0, $s5, $s4, 3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.d	$s3, $a1, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 263
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 271
	add.d	$a0, $sp, $a0
	st.b	$zero, $a0, 0
	ld.w	$a0, $s3, 12
	beqz	$s8, .LBB0_147
# %bb.146:                              # %cond.true434
                                        #   in Loop: Header=BB0_145 Depth=1
	mod.wu	$a1, $a0, $s8
	sub.d	$a1, $a0, $a1
	alsl.d	$a3, $s5, $s4, 2
	stx.w	$a1, $s2, $a3
	ld.w	$a2, $s3, 8
	add.d	$a1, $s2, $a3
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	div.wu	$a1, $a2, $s8
	mul.d	$a3, $a1, $s8
	sub.w	$a3, $a2, $a3
	sltu	$a3, $zero, $a3
	add.d	$a1, $a1, $a3
	mul.w	$a3, $a1, $s8
	b	.LBB0_148
.LBB0_147:                              # %cond.false446
                                        #   in Loop: Header=BB0_145 Depth=1
	alsl.d	$a1, $s5, $s4, 2
	stx.w	$a0, $s2, $a1
	ld.w	$a2, $s3, 8
	add.d	$a1, $s2, $a1
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	move	$a3, $a2
.LBB0_148:                              # %cond.end450
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $s5, $s4, 2
	add.d	$t2, $s2, $a1
	st.w	$a3, $t2, 4
	ld.w	$a7, $s3, 20
	beqz	$t0, .LBB0_150
# %bb.149:                              # %cond.true470
                                        #   in Loop: Header=BB0_145 Depth=1
	mod.wu	$a1, $a7, $t0
	sub.w	$a1, $a7, $a1
	st.w	$a1, $t2, 8
	ld.w	$a6, $s3, 16
	addi.d	$a4, $t2, 8
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	div.wu	$a4, $a6, $t0
	mul.d	$a5, $a4, $t0
	sub.w	$a5, $a6, $a5
	sltu	$a5, $zero, $a5
	add.d	$a4, $a4, $a5
	mul.w	$a4, $a4, $t0
	b	.LBB0_151
.LBB0_150:                              # %cond.false483
                                        #   in Loop: Header=BB0_145 Depth=1
	st.w	$a7, $t2, 8
	ld.w	$a6, $s3, 16
	addi.d	$a1, $t2, 8
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	move	$a1, $a7
	move	$a4, $a6
.LBB0_151:                              # %cond.end487
                                        #   in Loop: Header=BB0_145 Depth=1
	alsl.d	$a5, $s5, $s5, 3
	slli.d	$a5, $a5, 2
	add.d	$a5, $s2, $a5
	st.w	$a4, $a5, 12
	ld.w	$t0, $s3, 36
	addi.d	$t1, $t2, 4
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$t1, $a5, 12
	st.w	$t0, $a5, 16
	st.w	$a0, $a5, 20
	st.w	$a2, $a5, 24
	st.w	$a7, $a5, 28
	st.w	$a6, $a5, 32
	st.d	$t2, $sp, 120                   # 8-byte Folded Spill
	beqz	$a3, .LBB0_154
# %bb.152:                              # %if.end549
                                        #   in Loop: Header=BB0_145 Depth=1
	beqz	$a4, .LBB0_162
# %bb.153:                              # %if.end549
                                        #   in Loop: Header=BB0_145 Depth=1
	bstrpick.d	$a0, $a1, 31, 0
	b	.LBB0_158
.LBB0_154:                              # %land.lhs.true520
                                        #   in Loop: Header=BB0_145 Depth=1
	beqz	$a4, .LBB0_162
# %bb.155:                              # %if.then525
                                        #   in Loop: Header=BB0_145 Depth=1
	beqz	$s8, .LBB0_157
# %bb.156:                              # %cond.true527
                                        #   in Loop: Header=BB0_145 Depth=1
	div.wu	$a0, $a6, $s8
	mul.d	$a2, $a0, $s8
	sub.w	$a2, $a6, $a2
	sltu	$a2, $zero, $a2
	add.d	$a0, $a0, $a2
	mul.d	$a6, $a0, $s8
.LBB0_157:                              # %if.end549.thread2229
                                        #   in Loop: Header=BB0_145 Depth=1
	bstrpick.d	$a0, $a1, 31, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	st.w	$a6, $a2, 0
.LBB0_158:                              # %if.end549
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	bgeu	$a0, $a2, .LBB0_162
# %bb.159:                              # %land.lhs.true561
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bltu	$a0, $a4, .LBB0_161
# %bb.160:                              # %land.lhs.true584
                                        #   in Loop: Header=BB0_145 Depth=1
	add.d	$a0, $a1, $a4
	addi.w	$a0, $a0, -1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	bltu	$a0, $a2, .LBB0_162
.LBB0_161:                              # %if.then606
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.w	$a0, $t1, 0
.LBB0_162:                              # %if.end616
                                        #   in Loop: Header=BB0_145 Depth=1
	st.d	$t1, $sp, 200                   # 8-byte Folded Spill
	addi.d	$s8, $a5, 16
	addi.d	$s7, $a5, 20
	addi.d	$s4, $a5, 24
	addi.d	$s3, $a5, 28
	addi.d	$s2, $a5, 32
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	lu12i.w	$a1, 2
	ori	$a1, $a1, 263
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a1, $s7, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	ld.w	$a2, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a2, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s8, 0
	andi	$a0, $a0, 32
	beqz	$a0, .LBB0_165
# %bb.163:                              # %if.then647
                                        #   in Loop: Header=BB0_145 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s4, 0
	bgeu	$a0, $a1, .LBB0_165
# %bb.164:                              # %if.then656
                                        #   in Loop: Header=BB0_145 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_165:                              # %if.end658
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.wu	$a0, $s8, 0
	lu12i.w	$a1, 131072
	and	$a1, $a0, $a1
	beqz	$a1, .LBB0_167
# %bb.166:                              # %if.then664
                                        #   in Loop: Header=BB0_145 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
.LBB0_167:                              # %if.end665
                                        #   in Loop: Header=BB0_145 Depth=1
	addi.w	$a0, $a0, 0
	blt	$s0, $a0, .LBB0_169
# %bb.168:                              # %if.then671
                                        #   in Loop: Header=BB0_145 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_169:                              # %if.end672
                                        #   in Loop: Header=BB0_145 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.wu	$a3, $fp, 40
	andi	$a0, $a3, 64
	beqz	$a0, .LBB0_171
# %bb.170:                              # %land.lhs.true676
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	mod.wu	$a0, $a0, $a2
	bnez	$a0, .LBB0_218
.LBB0_171:                              # %if.end688
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.w	$a0, $s4, 0
	beqz	$a0, .LBB0_186
# %bb.172:                              # %if.then693
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.wu	$a2, $s2, 0
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	bgeu	$a2, $a4, .LBB0_217
# %bb.173:                              # %if.end714
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a2, $a1, 56
	ld.w	$a2, $a2, 0
	andi	$a3, $a3, 512
	beqz	$a3, .LBB0_179
# %bb.174:                              # %land.lhs.true718
                                        #   in Loop: Header=BB0_145 Depth=1
	andi	$a3, $a2, 8
	beqz	$a3, .LBB0_179
# %bb.175:                              # %land.lhs.true718
                                        #   in Loop: Header=BB0_145 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 263
	add.d	$a1, $sp, $a1
	ld.bu	$a1, $a1, 0
	bnez	$a1, .LBB0_178
# %bb.176:                              # %land.lhs.true726
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	bltu	$a3, $a1, .LBB0_178
# %bb.177:                              # %land.lhs.true738
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.w	$a1, $s8, 0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	xor	$a1, $a1, $a3
	sltui	$a1, $a1, 1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s5, $a1
	or	$a1, $a1, $a3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
.LBB0_178:                              # %if.end746
                                        #   in Loop: Header=BB0_145 Depth=1
	move	$a1, $fp
.LBB0_179:                              # %if.end746
                                        #   in Loop: Header=BB0_145 Depth=1
	andi	$a2, $a2, 16
	beqz	$a2, .LBB0_190
# %bb.180:                              # %if.end746
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a2, $a1, 24
	ld.d	$a3, $a2, 32
	beqz	$a3, .LBB0_190
# %bb.181:                              # %for.cond755.preheader
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.wu	$a2, $a3, 32
	beqz	$a2, .LBB0_190
# %bb.182:                              # %land.rhs758.lr.ph
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a1, $a3, 24
.LBB0_183:                              # %land.rhs758
                                        #   Parent Loop BB0_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	bltu	$a0, $a3, .LBB0_189
# %bb.184:                              # %for.body767
                                        #   in Loop: Header=BB0_183 Depth=2
	beq	$a3, $a0, .LBB0_187
# %bb.185:                              # %for.cond755
                                        #   in Loop: Header=BB0_183 Depth=2
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_183
	b	.LBB0_189
.LBB0_186:                              #   in Loop: Header=BB0_145 Depth=1
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_191
.LBB0_187:                              # %if.then776
                                        #   in Loop: Header=BB0_145 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 256
	add.d	$a2, $sp, $a0
	move	$a0, $s1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_md5sect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_189
# %bb.188:                              # %land.lhs.true782
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a1, $fp, 24
	ld.d	$a2, $fp, 0
	ld.d	$a3, $a1, 32
	addi.w	$a6, $zero, -1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 256
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 16
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_bm_scanbuff)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_233
.LBB0_189:                              # %cleanup
                                        #   in Loop: Header=BB0_145 Depth=1
	move	$a1, $fp
.LBB0_190:                              # %if.end797
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
.LBB0_191:                              # %if.end797
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.wu	$a0, $a1, 40
	andi	$a0, $a0, 64
	beqz	$s5, .LBB0_194
# %bb.192:                              # %if.else826
                                        #   in Loop: Header=BB0_145 Depth=1
	beqz	$a0, .LBB0_144
# %bb.193:                              # %land.lhs.true830
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a2, $a3, -16
	ld.w	$a3, $a3, -32
	sub.w	$a0, $a0, $a2
	beq	$a0, $a3, .LBB0_144
	b	.LBB0_229
.LBB0_194:                              # %if.then799
                                        #   in Loop: Header=BB0_145 Depth=1
	beqz	$a0, .LBB0_196
# %bb.195:                              # %land.lhs.true803
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $a2, .LBB0_230
.LBB0_196:                              # %if.end815
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.w	$a0, $s4, 0
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$s5, $a0, .LBB0_145
	b	.LBB0_198
.LBB0_197:
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
.LBB0_198:                              # %for.end883
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 252
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rawaddr)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_205
# %bb.199:                              # %for.end883
	ld.w	$a0, $sp, 252
	beqz	$a0, .LBB0_205
# %bb.200:                              # %if.then888
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
.LBB0_201:                              # %if.then367
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 40
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_16
.LBB0_202:                              # %if.then371
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB0_237
# %bb.203:                              # %if.then374
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
.LBB0_204:                              # %cleanup4880
	st.d	$a1, $a0, 0
	b	.LBB0_237
.LBB0_205:                              # %if.end899
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 523
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_644
# %bb.206:                              # %if.end902
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 1
	addi.d	$a1, $sp, 256
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 41
	andi	$a1, $a1, 2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	bnez	$a1, .LBB0_219
.LBB0_207:                              # %if.end961
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 2
	beqz	$a0, .LBB0_276
# %bb.208:                              # %land.lhs.true965
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB0_272
# %bb.209:                              # %land.lhs.true965
	ori	$a0, $zero, 200
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_272
# %bb.210:                              # %land.lhs.true973
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.wu	$a0, $a1, -24
	srli.d	$a2, $a0, 1
	ori	$a3, $zero, 2025
	bltu	$a2, $a3, .LBB0_272
# %bb.211:                              # %land.lhs.true989
	ld.w	$a1, $a1, -28
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_272
# %bb.212:                              # %land.lhs.true997
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 2047
	addi.w	$a2, $a2, 2003
	add.w	$a0, $a1, $a0
	bltu	$a0, $a2, .LBB0_272
# %bb.213:                              # %land.lhs.true1012
	bgeu	$a1, $a2, .LBB0_272
# %bb.214:                              # %land.lhs.true1012
	ld.bu	$a0, $sp, 257
	ori	$a1, $zero, 156
	bne	$a0, $a1, .LBB0_272
# %bb.215:                              # %land.lhs.true1012
	ld.bu	$a0, $sp, 258
	ori	$a1, $zero, 96
	bne	$a0, $a1, .LBB0_272
# %bb.216:                              # %if.end1041.preheader
	pcalau12i	$a0, %pc_hi20(.L__const.cli_scanpe.kzs)
	addi.d	$a0, $a0, %pc_lo12(.L__const.cli_scanpe.kzs)
	ld.w	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 264
	add.d	$a2, $sp, $a2
	st.w	$a1, $a2, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 256
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$s7, $zero, 197
	ori	$a1, $zero, 255
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 256
	add.d	$s3, $sp, $a1
	addi.d	$s4, $sp, 259
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4095
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LJTI0_2)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_2)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	ori	$a1, $zero, 255
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	b	.LBB0_240
.LBB0_217:                              # %if.then700
	addi.w	$a2, $a2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	move	$s0, $a1
	move	$a1, $s5
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 64
	bnez	$a0, .LBB0_202
	b	.LBB0_16
.LBB0_218:                              # %if.then682
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	b	.LBB0_231
.LBB0_219:                              # %land.lhs.true910
	bnez	$s6, .LBB0_207
# %bb.220:                              # %land.lhs.true910
	ld.d	$a0, $fp, 56
	ld.wu	$a0, $a0, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_207
# %bb.221:                              # %land.lhs.true910
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bne	$a0, $s2, .LBB0_207
# %bb.222:                              # %land.lhs.true920
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, -28
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_207
# %bb.223:                              # %if.then928
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a2, $a0, %pc_lo12(.L.str.106)
	addi.d	$a0, $sp, 256
	ori	$a1, $zero, 4040
	ori	$a3, $zero, 15
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_207
# %bb.224:                              # %if.then932
	ld.w	$a1, $a0, 15
	ld.w	$a2, $a0, 19
	xor	$a1, $a2, $a1
	lu12i.w	$a2, 1285
	ori	$a2, $a2, 2639
	bne	$a1, $a2, .LBB0_207
# %bb.225:                              # %land.lhs.true939
	ld.w	$a1, $a0, 23
	ld.w	$a2, $a0, 27
	xor	$a1, $a2, $a1
	lu12i.w	$a2, 255
	ori	$a2, $a2, 4091
	bne	$a1, $a2, .LBB0_207
# %bb.226:                              # %land.lhs.true947
	ld.w	$a1, $a0, 31
	ld.w	$a0, $a0, 35
	xor	$a0, $a0, $a1
	ori	$a1, $zero, 184
	bne	$a0, $a1, .LBB0_207
# %bb.227:                              # %if.then955
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a1, $a1, %pc_lo12(.L.str.107)
.LBB0_228:                              # %cleanup4880
	st.d	$a1, $a0, 0
	b	.LBB0_235
.LBB0_229:                              # %if.then845
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	b	.LBB0_231
.LBB0_230:                              # %if.then809
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
.LBB0_231:                              # %if.then682
	move	$fp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB0_233
# %bb.232:                              # %if.then685
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	st.d	$a1, $a0, 0
.LBB0_233:                              # %if.end687
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
.LBB0_234:                              # %cleanup4880
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_235:                              # %cleanup4880
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
.LBB0_236:                              # %cleanup4880
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_237:                              # %cleanup4880
	ori	$a0, $zero, 1
	b	.LBB0_133
.LBB0_238:                              # %sw.default1081
                                        #   in Loop: Header=BB0_240 Depth=1
	addi.d	$s3, $s3, 1
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_271
.LBB0_239:                              # %cleanup1184
                                        #   in Loop: Header=BB0_240 Depth=1
	ori	$a1, $zero, 7
	blt	$s7, $a1, .LBB0_271
.LBB0_240:                              # %if.end1041
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s8, $s4, 1
	addi.w	$s5, $s7, -1
	ori	$a1, $zero, 7
	bltu	$a1, $a0, .LBB0_268
# %bb.241:                              # %if.end1041
                                        #   in Loop: Header=BB0_240 Depth=1
	slli.d	$a1, $a0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a1
	ld.bu	$a1, $s4, 0
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB0_242:                              # %sw.bb1043
                                        #   in Loop: Header=BB0_240 Depth=1
	addi.d	$a2, $a1, -72
	ori	$a3, $zero, 119
	bltu	$a3, $a2, .LBB0_238
# %bb.243:                              # %sw.bb1043
                                        #   in Loop: Header=BB0_240 Depth=1
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_3)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_3)
	ldx.w	$a2, $a3, $a2
	add.d	$a3, $a3, $a2
	move	$a2, $zero
	jr	$a3
.LBB0_244:                              # %sw.bb1048
                                        #   in Loop: Header=BB0_240 Depth=1
	ori	$a2, $zero, 4
	ori	$a3, $zero, 3
	bne	$a0, $a3, .LBB0_247
# %bb.245:                              # %land.lhs.true1052
                                        #   in Loop: Header=BB0_240 Depth=1
	ld.w	$a0, $s8, 0
	ori	$a3, $zero, 4050
	bne	$a0, $a3, .LBB0_247
# %bb.246:                              # %if.then1056
                                        #   in Loop: Header=BB0_240 Depth=1
	addi.w	$a0, $s7, -6
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 72
	addi.d	$s3, $s3, 1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	andi	$a1, $a0, 255
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 4
.LBB0_247:                              # %sw.bb1064
                                        #   in Loop: Header=BB0_240 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	andi	$a3, $a0, 255
	andi	$a0, $a1, 7
	beq	$a0, $a3, .LBB0_238
# %bb.248:                              # %sw.bb1064
                                        #   in Loop: Header=BB0_240 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	andi	$a1, $a1, 255
	beq	$a0, $a1, .LBB0_238
# %bb.249:                              # %if.then1077
                                        #   in Loop: Header=BB0_240 Depth=1
	add.d	$s4, $s8, $a2
	sub.w	$s7, $s5, $a2
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB0_239
	b	.LBB0_271
.LBB0_250:                              # %sw.bb1087
                                        #   in Loop: Header=BB0_240 Depth=1
	ori	$a0, $zero, 232
	bne	$a1, $a0, .LBB0_267
# %bb.251:                              # %land.lhs.true1091
                                        #   in Loop: Header=BB0_240 Depth=1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 254
	bltu	$a1, $a0, .LBB0_267
# %bb.252:                              # %if.then1095
                                        #   in Loop: Header=BB0_240 Depth=1
	addi.w	$a0, $a0, 4
	sub.w	$s7, $s5, $a0
	add.d	$s4, $s8, $a0
	addi.d	$s3, $s3, 1
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB0_239
	b	.LBB0_271
.LBB0_253:                              # %sw.bb1106
                                        #   in Loop: Header=BB0_240 Depth=1
	andi	$a0, $a1, 248
	ori	$a2, $zero, 88
	bne	$a0, $a2, .LBB0_267
# %bb.254:                              # %land.lhs.true1111
                                        #   in Loop: Header=BB0_240 Depth=1
	addi.d	$s4, $a1, -88
	andi	$a1, $s4, 255
	ori	$a2, $zero, 4
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	beq	$a1, $a2, .LBB0_267
# %bb.255:                              # %if.then1118
                                        #   in Loop: Header=BB0_240 Depth=1
	addi.d	$s3, $s3, 1
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s7, $s5
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	b	.LBB0_269
.LBB0_256:                              # %sw.bb1156
                                        #   in Loop: Header=BB0_240 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	andi	$a0, $a0, 255
	addi.d	$a0, $a0, 72
	bne	$a0, $a1, .LBB0_260
# %bb.257:                              # %land.lhs.true1162
                                        #   in Loop: Header=BB0_240 Depth=1
	ld.bu	$a0, $s8, 0
	ori	$a1, $zero, 117
	bne	$a0, $a1, .LBB0_260
# %bb.258:                              # %land.lhs.true1166
                                        #   in Loop: Header=BB0_240 Depth=1
	ld.b	$a0, $s4, 2
	sub.w	$a0, $s5, $a0
	addi.w	$a1, $a0, -3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB0_260
# %bb.259:                              # %land.lhs.true1166
                                        #   in Loop: Header=BB0_240 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_712
.LBB0_260:                              # %if.end1181
                                        #   in Loop: Header=BB0_240 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_266
.LBB0_261:                              # %sw.bb1123
                                        #   in Loop: Header=BB0_240 Depth=1
	addi.d	$s3, $s3, 1
	ori	$a0, $zero, 62
	beq	$a1, $a0, .LBB0_268
.LBB0_262:                              # %sw.bb1130
                                        #   in Loop: Header=BB0_240 Depth=1
	ori	$a0, $zero, 128
	bne	$a1, $a0, .LBB0_267
# %bb.263:                              # %land.lhs.true1134
                                        #   in Loop: Header=BB0_240 Depth=1
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	andi	$a1, $a1, 255
	addi.d	$a1, $a1, 176
	bne	$a1, $a0, .LBB0_267
# %bb.264:                              # %if.then1140
                                        #   in Loop: Header=BB0_240 Depth=1
	addi.d	$s4, $s4, 7
	addi.w	$s7, $s7, -7
	addi.d	$s3, $s3, 1
	st.d	$s5, $sp, 168                   # 8-byte Folded Spill
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB0_239
	b	.LBB0_271
.LBB0_265:                              # %sw.bb1146
                                        #   in Loop: Header=BB0_240 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	andi	$a0, $a0, 255
	addi.d	$a0, $a0, 72
	bne	$a0, $a1, .LBB0_267
.LBB0_266:                              # %cleanup1184
                                        #   in Loop: Header=BB0_240 Depth=1
	addi.d	$s3, $s3, 1
	b	.LBB0_268
.LBB0_267:                              # %if.else1104
                                        #   in Loop: Header=BB0_240 Depth=1
	ori	$a0, $zero, 8
	st.b	$a0, $s3, 0
.LBB0_268:                              # %cleanup1184
                                        #   in Loop: Header=BB0_240 Depth=1
	move	$s7, $s5
.LBB0_269:                              # %cleanup1184
                                        #   in Loop: Header=BB0_240 Depth=1
	move	$s4, $s8
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB0_239
	b	.LBB0_271
.LBB0_270:                              # %sw.bb1045
                                        #   in Loop: Header=BB0_240 Depth=1
	addi.d	$s4, $s4, 6
	addi.w	$s7, $s7, -6
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB0_239
.LBB0_271:                              # %if.end1197
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 2
	beqz	$a0, .LBB0_276
.LBB0_272:                              # %land.lhs.true1201
	bnez	$s6, .LBB0_276
# %bb.273:                              # %land.lhs.true1201
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_276
# %bb.274:                              # %land.lhs.true1201
	ld.d	$a0, $fp, 56
	ld.wu	$a0, $a0, 0
	andi	$a0, $a0, 4
	beqz	$a0, .LBB0_276
# %bb.275:                              # %land.lhs.true1212
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, -20
	bge	$s0, $a1, .LBB0_289
.LBB0_276:                              # %while.cond1339
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	bnez	$s6, .LBB0_338
# %bb.277:                              # %while.cond1339
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a0, $s8, -3
	bstrpick.d	$a0, $a0, 15, 0
	ori	$a1, $zero, 9
	bltu	$a1, $a0, .LBB0_338
# %bb.278:                              # %while.cond1339
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	andi	$s0, $a0, 255
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	beqz	$s0, .LBB0_338
# %bb.279:                              # %while.cond1339
	lu12i.w	$a0, 2
	ori	$a0, $a0, 672
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 2048
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_338
# %bb.280:                              # %land.lhs.true1355
	lu12i.w	$a0, 2
	ori	$a0, $a0, 468
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 2
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_338
# %bb.281:                              # %land.lhs.true1355
	lu12i.w	$a0, 2
	ori	$a0, $a0, 644
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	ori	$a1, $zero, 332
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_338
# %bb.282:                              # %land.lhs.true1355
	lu12i.w	$a0, 2
	ori	$a0, $a0, 472
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	bstrpick.d	$a0, $a0, 31, 19
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_338
# %bb.283:                              # %while.body1374
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	lu12i.w	$a1, 45056
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_338
# %bb.284:                              # %if.end1380
	move	$a0, $s1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_338
# %bb.285:                              # %if.end1385
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.wu	$a0, $a0, 12
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_868
# %bb.286:                              # %if.end1392
	move	$s4, $a0
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a2, $s2, 12
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	bne	$a0, $a1, .LBB0_666
# %bb.287:                              # %for.cond1402.preheader
	move	$s5, $a0
	ori	$a0, $zero, 5
	bne	$s5, $a0, .LBB0_302
# %bb.288:
	move	$s8, $zero
	b	.LBB0_337
.LBB0_289:                              # %if.then1220
	ld.w	$s0, $a0, -24
	ld.w	$s3, $a0, -4
	ld.wu	$a2, $a0, -12
	sltu	$a1, $s3, $s0
	masknez	$a4, $s3, $a1
	maskeqz	$a1, $s0, $a1
	andi	$a3, $a2, 255
	ori	$a5, $zero, 236
	or	$a1, $a1, $a4
	bne	$a3, $a5, .LBB0_295
# %bb.290:                              # %if.then1220
	lu12i.w	$a4, 6
	ori	$a4, $a4, 300
	bltu	$a2, $a4, .LBB0_295
# %bb.291:                              # %if.then1220
	bltu	$a1, $a4, .LBB0_295
# %bb.292:                              # %if.then1254
	ld.w	$a0, $a0, -28
	lu12i.w	$a2, -7
	add.d	$a2, $a1, $a2
	sltu	$a1, $a1, $a2
	masknez	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 256
	add.d	$a1, $sp, $a0
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_276
# %bb.293:                              # %if.then1274
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a2, $a0, %pc_lo12(.L.str.113)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 256
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 4091
	ori	$a3, $zero, 5
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_276
# %bb.294:                              # %if.then1278
	sltu	$a0, $s0, $s3
	pcalau12i	$a1, %pc_hi20(.L.str.115)
	addi.d	$a1, $a1, %pc_lo12(.L.str.115)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.114)
	ld.d	$a3, $fp, 0
	addi.d	$a2, $a2, %pc_lo12(.L.str.114)
	b	.LBB0_301
.LBB0_295:                              # %if.else1287
	ori	$a4, $zero, 237
	bne	$a3, $a4, .LBB0_276
# %bb.296:                              # %if.else1287
	srli.d	$a3, $a2, 12
	ori	$a2, $zero, 7
	bltu	$a3, $a2, .LBB0_276
# %bb.297:                              # %if.else1287
	bstrpick.d	$a3, $a1, 31, 12
	bltu	$a3, $a2, .LBB0_276
# %bb.298:                              # %if.then1297
	ld.w	$a0, $a0, -28
	lu12i.w	$a2, -8
	add.d	$a2, $a1, $a2
	sltu	$a1, $a1, $a2
	masknez	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 256
	add.d	$a1, $sp, $a0
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_276
# %bb.299:                              # %if.then1318
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a2, $a0, %pc_lo12(.L.str.116)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 256
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 4091
	ori	$a3, $zero, 5
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_276
# %bb.300:                              # %if.then1322
	sltu	$a0, $s0, $s3
	pcalau12i	$a1, %pc_hi20(.L.str.118)
	addi.d	$a1, $a1, %pc_lo12(.L.str.118)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.117)
	ld.d	$a3, $fp, 0
	addi.d	$a2, $a2, %pc_lo12(.L.str.117)
.LBB0_301:                              # %cleanup4880
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $a3, 0
	b	.LBB0_235
.LBB0_302:                              # %for.body1408.lr.ph
	move	$s7, $zero
	move	$s8, $zero
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	slli.d	$a0, $s0, 5
	alsl.d	$a0, $s0, $a0, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$s0, $a1, $a0
	ori	$s3, $zero, 232
	ori	$s2, $zero, 9
	b	.LBB0_304
.LBB0_303:                              # %for.body1408.for.inc1511_crit_edge
                                        #   in Loop: Header=BB0_304 Depth=1
	addi.d	$s7, $s7, 1
	addi.d	$a0, $s5, -5
	bstrpick.d	$a0, $a0, 31, 0
	bgeu	$s7, $a0, .LBB0_323
.LBB0_304:                              # %for.body1408
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_317 Depth 2
	ldx.bu	$a0, $s4, $s7
	andi	$a0, $a0, 254
	bne	$a0, $s3, .LBB0_303
# %bb.305:                              # %if.end1418
                                        #   in Loop: Header=BB0_304 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	addi.d	$s6, $s7, 1
	ldx.w	$a2, $s4, $s6
	add.d	$a0, $s7, $a0
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, 5
	addi.d	$a3, $sp, 252
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rawaddr)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 252
	bnez	$a1, .LBB0_321
# %bb.306:                              # %lor.lhs.false1430
                                        #   in Loop: Header=BB0_304 Depth=1
	move	$s7, $a0
	ld.w	$a0, $s0, 12
	bltu	$a0, $s2, .LBB0_321
# %bb.307:                              # %land.lhs.true1442
                                        #   in Loop: Header=BB0_304 Depth=1
	ld.w	$a1, $s0, 8
	bltu	$s7, $a1, .LBB0_321
# %bb.308:                              # %land.lhs.true1448
                                        #   in Loop: Header=BB0_304 Depth=1
	addi.w	$a2, $s7, 9
	bgeu	$a1, $a2, .LBB0_321
# %bb.309:                              # %land.lhs.true1448
                                        #   in Loop: Header=BB0_304 Depth=1
	add.w	$a0, $a1, $a0
	bltu	$a0, $a2, .LBB0_321
# %bb.310:                              # %if.end1467
                                        #   in Loop: Header=BB0_304 Depth=1
	andi	$a0, $s8, 127
	bnez	$a0, .LBB0_314
# %bb.311:                              # %if.then1471
                                        #   in Loop: Header=BB0_304 Depth=1
	ori	$a0, $zero, 1280
	beq	$s8, $a0, .LBB0_813
# %bb.312:                              # %if.end1475
                                        #   in Loop: Header=BB0_304 Depth=1
	addi.d	$a0, $s8, 128
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 2
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_814
# %bb.313:                              # %if.end1483
                                        #   in Loop: Header=BB0_304 Depth=1
	beqz	$s8, .LBB0_322
.LBB0_314:                              # %for.body1487.preheader
                                        #   in Loop: Header=BB0_304 Depth=1
	move	$a0, $zero
	bstrpick.d	$a1, $s8, 31, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_317
.LBB0_315:                              # %if.end1500
                                        #   in Loop: Header=BB0_317 Depth=2
	st.w	$s7, $a2, 0
	move	$s7, $a3
.LBB0_316:                              # %for.inc1505
                                        #   in Loop: Header=BB0_317 Depth=2
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	beqz	$a1, .LBB0_319
.LBB0_317:                              # %for.body1487
                                        #   Parent Loop BB0_304 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	bltu	$a3, $s7, .LBB0_316
# %bb.318:                              # %if.end1493
                                        #   in Loop: Header=BB0_317 Depth=2
	bne	$a3, $s7, .LBB0_315
	b	.LBB0_320
.LBB0_319:                              # %for.end1507.loopexit
                                        #   in Loop: Header=BB0_304 Depth=1
	addi.w	$a1, $s8, 1
	move	$a0, $s8
	move	$s8, $a1
.LBB0_320:                              # %for.end1507
                                        #   in Loop: Header=BB0_304 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	stx.w	$s7, $a1, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$s5, $a0, 12
.LBB0_321:                              # %for.inc1511
                                        #   in Loop: Header=BB0_304 Depth=1
	move	$s7, $s6
	addi.d	$a0, $s5, -5
	bstrpick.d	$a0, $a0, 31, 0
	bltu	$s7, $a0, .LBB0_304
	b	.LBB0_323
.LBB0_322:                              #   in Loop: Header=BB0_304 Depth=1
	move	$a0, $zero
	ori	$s8, $zero, 1
	b	.LBB0_320
.LBB0_323:                              # %for.end1513
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB0_335
.LBB0_324:                              # %if.end1516
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bstrpick.d	$s0, $s8, 31, 0
	ori	$s3, $zero, 9
	lu12i.w	$a0, 397000
	ori	$s4, $a0, 2901
	ori	$s2, $zero, 236
	lu12i.w	$a0, -508216
	ori	$s6, $a0, 2901
	lu12i.w	$a0, -516408
	ori	$s7, $a0, 2901
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_326
.LBB0_325:                              # %for.inc1560
                                        #   in Loop: Header=BB0_326 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s5, $s5, 4
	beqz	$s0, .LBB0_336
.LBB0_326:                              # %for.body1520
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a1, $s5, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 256
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_325
# %bb.327:                              # %if.end1530
                                        #   in Loop: Header=BB0_326 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 256
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB0_334
# %bb.328:                              # %lor.lhs.false1535
                                        #   in Loop: Header=BB0_326 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 260
	add.d	$a1, $sp, $a1
	ld.bu	$a1, $a1, 0
	bne	$a1, $s2, .LBB0_325
# %bb.329:                              # %land.lhs.true1540
                                        #   in Loop: Header=BB0_326 Depth=1
	bne	$a0, $s6, .LBB0_331
# %bb.330:                              # %land.lhs.true1540
                                        #   in Loop: Header=BB0_326 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 262
	add.d	$a1, $sp, $a1
	ld.bu	$a1, $a1, 0
	ori	$a2, $zero, 96
	beq	$a1, $a2, .LBB0_334
.LBB0_331:                              # %lor.lhs.false1548
                                        #   in Loop: Header=BB0_326 Depth=1
	bne	$a0, $s7, .LBB0_325
# %bb.332:                              # %lor.lhs.false1548
                                        #   in Loop: Header=BB0_326 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 263
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB0_325
# %bb.333:                              # %lor.lhs.false1548
                                        #   in Loop: Header=BB0_326 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 264
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB0_325
.LBB0_334:                              # %if.then1557
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.120)
	addi.d	$a1, $a1, %pc_lo12(.L.str.120)
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_234
.LBB0_335:
	move	$s8, $s7
	b	.LBB0_338
.LBB0_336:
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
.LBB0_337:                              # %while.end1569.sink.split
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_338:                              # %while.end1569
	ld.d	$a0, $fp, 56
	ld.hu	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 96
	and	$a0, $a0, $a1
	beqz	$a0, .LBB0_362
# %bb.339:                              # %for.cond1575.preheader
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$s8, $zero
	addi.d	$a0, $a0, -1
	beqz	$a0, .LBB0_362
# %bb.340:                              # %for.body1580.preheader
	move	$s5, $zero
	bstrpick.d	$a1, $a0, 31, 0
	ori	$a2, $zero, 36
	mul.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 36
	b	.LBB0_342
.LBB0_341:                              # %for.inc1604
                                        #   in Loop: Header=BB0_342 Depth=1
	addi.d	$s5, $s5, 36
	addi.w	$s8, $s8, 1
	beq	$a1, $s5, .LBB0_363
.LBB0_342:                              # %for.body1580
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a2, $s5
	ld.w	$a4, $a3, -24
	bnez	$a4, .LBB0_341
# %bb.343:                              # %land.lhs.true1585
                                        #   in Loop: Header=BB0_342 Depth=1
	ld.w	$a4, $a3, -32
	beqz	$a4, .LBB0_341
# %bb.344:                              # %land.lhs.true1590
                                        #   in Loop: Header=BB0_342 Depth=1
	ld.w	$a4, $a3, 12
	beqz	$a4, .LBB0_341
# %bb.345:                              # %land.lhs.true1596
                                        #   in Loop: Header=BB0_342 Depth=1
	ld.w	$a3, $a3, 4
	beqz	$a3, .LBB0_341
# %bb.346:                              # %land.lhs.true1609
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a0, $a0, %pc_lo12(.L.str.121)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 32
	ori	$s0, $zero, 1
	beqz	$a0, .LBB0_364
# %bb.347:                              # %land.lhs.true1609
	ori	$a0, $zero, 16
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_364
# %bb.348:                              # %land.lhs.true1609
	ld.bu	$a0, $sp, 256
	ori	$a1, $zero, 233
	bne	$a0, $a1, .LBB0_364
# %bb.349:                              # %if.then1622
	ld.w	$a1, $sp, 257
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.w	$s3, $a1, $a0
	ori	$a0, $zero, 335
	beq	$s3, $a0, .LBB0_351
# %bb.350:                              # %if.then1622
	ori	$a0, $zero, 339
	bne	$s3, $a0, .LBB0_364
.LBB0_351:                              # %while.body1633
	addi.w	$s7, $s3, 5
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s7
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB0_471
# %bb.352:                              # %if.end1647
	lu12i.w	$a0, 1
	ori	$a0, $a0, 256
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 176
	ori	$s2, $zero, 176
	move	$a0, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_472
# %bb.353:                              # %if.end1653
	addi.d	$a0, $s7, -340
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.126)
	addi.d	$a1, $a1, %pc_lo12(.L.str.126)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.125)
	addi.d	$a2, $a2, %pc_lo12(.L.str.125)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 257
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 428
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.d	$s6, $a2, $s5
	ld.w	$s5, $s6, 36
	sub.w	$s4, $a0, $a1
	bgeu	$s5, $s4, .LBB0_491
# %bb.354:                              # %lor.lhs.false1669
	ld.w	$a0, $s6, 44
	add.d	$a0, $s5, $a0
	addi.w	$a0, $a0, -4
	bgeu	$s4, $a0, .LBB0_491
# %bb.355:                              # %if.end1683
	addi.d	$s0, $s6, 36
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_666
# %bb.356:                              # %if.end1695
	ld.w	$a2, $s6, 4
	ld.w	$a1, $s6, 40
	sub.w	$a3, $s4, $s5
	st.w	$a2, $sp, 248
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	move	$s4, $a1
	move	$s5, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB0_727
# %bb.357:                              # %land.lhs.true1704
	ld.d	$a2, $a0, 24
	ld.w	$a0, $sp, 248
	beqz	$a2, .LBB0_728
# %bb.358:                              # %land.lhs.true1707
	sltu	$a1, $a0, $s4
	masknez	$a3, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a3
	bstrpick.d	$a3, $a1, 31, 0
	bltu	$a2, $a3, .LBB0_360
# %bb.359:                              # %land.lhs.true1741
	ld.w	$a1, $s6, 48
	add.w	$a3, $a0, $s4
	sltu	$a4, $a1, $a3
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a1, $a3, $a1
	bstrpick.d	$a3, $a1, 31, 0
	bgeu	$a2, $a3, .LBB0_728
.LBB0_360:                              # %if.then1719
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.361:                              # %if.then1731
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.130)
	addi.d	$a1, $a1, %pc_lo12(.L.str.130)
	b	.LBB0_204
.LBB0_362:
	move	$s0, $zero
	b	.LBB0_364
.LBB0_363:
	move	$s0, $zero
	move	$s8, $a0
.LBB0_364:                              # %if.end1943
	ori	$a0, $zero, 167
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB0_644
# %bb.365:                              # %if.end1947
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sltu	$a0, $zero, $a0
	or	$a0, $s0, $a0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_396
# %bb.366:                              # %while.cond1952
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_376
# %bb.367:                              # %while.cond1952
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_376
# %bb.368:                              # %land.lhs.true1958
	ld.bu	$a0, $sp, 256
	ori	$a1, $zero, 190
	bne	$a0, $a1, .LBB0_396
# %bb.369:                              # %land.lhs.true1963
	ld.w	$a2, $sp, 257
	lu12i.w	$a0, 2
	ori	$a0, $a0, 428
	add.d	$a0, $sp, $a0
	ld.w	$a3, $a0, 0
	ld.bu	$a1, $sp, 261
	ld.bu	$a0, $sp, 262
	sub.w	$a2, $a2, $a3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a3, $a2, .LBB0_372
# %bb.370:                              # %land.lhs.true1963
	ori	$a3, $zero, 173
	bne	$a1, $a3, .LBB0_372
# %bb.371:                              # %land.lhs.true1963
	ori	$a3, $zero, 80
	beq	$a0, $a3, .LBB0_375
.LBB0_372:                              # %land.lhs.true1986
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a3, $a2, .LBB0_396
# %bb.373:                              # %land.lhs.true1986
	ori	$a2, $zero, 255
	bne	$a1, $a2, .LBB0_396
# %bb.374:                              # %land.lhs.true1986
	ori	$a1, $zero, 54
	bne	$a0, $a1, .LBB0_396
.LBB0_375:                              # %if.then2072
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$s6, $s2, 4
	ld.w	$s7, $s2, 40
	addi.d	$s5, $s2, 36
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 32
	ld.w	$a2, $s2, 28
	ld.w	$s4, $s2, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 428
	add.d	$a0, $sp, $a0
	ld.w	$a3, $a0, 0
	ld.w	$a0, $s2, 76
	add.w	$s3, $a2, $a1
	add.w	$a1, $a3, $s4
	b	.LBB0_382
.LBB0_376:                              # %lor.rhs2004
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_396
# %bb.377:                              # %lor.rhs2004
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_396
# %bb.378:                              # %land.rhs2010
	ld.bu	$a0, $sp, 256
	ori	$a1, $zero, 96
	bne	$a0, $a1, .LBB0_390
# %bb.379:                              # %land.rhs2010
	ld.bu	$a1, $sp, 257
	ori	$a2, $zero, 232
	bne	$a1, $a2, .LBB0_390
# %bb.380:                              # %land.lhs.true2020
	ld.w	$a0, $sp, 258
	ori	$a1, $zero, 9
	bne	$a0, $a1, .LBB0_396
.LBB0_381:                              # %if.else2086
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$s6, $s2, 4
	ld.w	$s7, $s2, 40
	addi.d	$s5, $s2, 36
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 36
	ld.w	$s3, $s2, 64
	move	$s4, $zero
	sub.w	$a1, $a0, $s3
.LBB0_382:                              # %if.end2096
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 32
	add.d	$a2, $s6, $s7
	add.w	$a0, $a2, $a0
	st.w	$a0, $sp, 248
	beqz	$a1, .LBB0_387
# %bb.383:                              # %land.lhs.true2101
	ld.d	$a2, $a1, 24
	beqz	$a2, .LBB0_387
# %bb.384:                              # %land.lhs.true2105
	sltu	$a1, $s3, $a0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 68
	masknez	$a4, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a4
	sltu	$a4, $a3, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$a3, $a3, $a4
	or	$a1, $a1, $a3
	bstrpick.d	$a3, $a1, 31, 0
	bgeu	$a2, $a3, .LBB0_387
# %bb.385:                              # %if.then2133
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.386:                              # %if.then2161
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.144)
	addi.d	$a1, $a1, %pc_lo12(.L.str.144)
	b	.LBB0_204
.LBB0_387:                              # %if.end2164
	ld.w	$a1, $s5, 0
	sub.w	$a1, $a1, $s4
	bltu	$a0, $a1, .LBB0_389
# %bb.388:                              # %lor.lhs.false2170
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 68
	sub.w	$a2, $a0, $a2
	bgeu	$a2, $a1, .LBB0_463
.LBB0_389:                              # %if.then2201
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a0, $a0, %pc_lo12(.L.str.145)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB0_397
	b	.LBB0_495
.LBB0_390:                              # %lor.rhs2026
	ori	$a1, $zero, 190
	bne	$a0, $a1, .LBB0_396
# %bb.391:                              # %land.lhs.true2031
	ld.w	$a0, $sp, 257
	lu12i.w	$a1, 2
	ori	$a1, $a1, 428
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	sub.w	$a2, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a2, $a3, .LBB0_396
# %bb.392:                              # %land.lhs.true2039
	beq	$a0, $a1, .LBB0_396
# %bb.393:                              # %land.lhs.true2039
	ld.bu	$a0, $sp, 261
	ori	$a1, $zero, 173
	bne	$a0, $a1, .LBB0_396
# %bb.394:                              # %land.lhs.true2039
	ld.bu	$a0, $sp, 262
	ori	$a1, $zero, 139
	bne	$a0, $a1, .LBB0_396
# %bb.395:                              # %land.lhs.true2039
	ld.bu	$a0, $sp, 263
	ori	$a1, $zero, 248
	beq	$a0, $a1, .LBB0_381
.LBB0_396:                              # %while.cond2299
	beqz	$s0, .LBB0_495
.LBB0_397:                              # %land.lhs.true2301
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_437
# %bb.398:                              # %land.lhs.true2301
	ld.bu	$a0, $sp, 256
	ori	$a1, $zero, 135
	bne	$a0, $a1, .LBB0_437
# %bb.399:                              # %land.lhs.true2301
	ld.bu	$a0, $sp, 257
	ori	$a1, $zero, 37
	bne	$a0, $a1, .LBB0_437
# %bb.400:                              # %while.body2317
	addi.w	$s7, $s8, 1
	bstrpick.d	$a0, $s7, 31, 0
	ori	$a1, $zero, 36
	mul.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.d	$a3, $a2, $a0
	bstrpick.d	$a0, $s8, 31, 0
	mul.d	$a0, $a0, $a1
	add.d	$s0, $a2, $a0
	ld.w	$a2, $s0, 4
	ld.d	$a0, $fp, 32
	move	$s4, $a3
	ld.wu	$s5, $a3, 12
	st.w	$a2, $sp, 248
	beqz	$a0, .LBB0_403
# %bb.401:                              # %land.lhs.true2327
	ld.d	$a3, $a0, 24
	beqz	$a3, .LBB0_403
# %bb.402:                              # %land.lhs.true2331
	addi.w	$a0, $s5, 0
	sltu	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	bstrpick.d	$a0, $a1, 31, 0
	bltu	$a3, $a0, .LBB0_443
.LBB0_403:                              # %if.end2358
	ori	$a0, $zero, 26
	bltu	$s5, $a0, .LBB0_461
# %bb.404:                              # %if.end2358
	addi.w	$s6, $s5, 0
	bgeu	$s6, $a2, .LBB0_461
# %bb.405:                              # %if.end2365
	ld.w	$a1, $sp, 258
	lu12i.w	$a0, 2
	ori	$a0, $a0, 428
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	ld.w	$a0, $s4, 12
	ori	$a3, $zero, 4
	sub.w	$s3, $a1, $a2
	bltu	$a0, $a3, .LBB0_436
# %bb.406:                              # %land.lhs.true2384
	ld.w	$a1, $s4, 0
	bltu	$s3, $a1, .LBB0_436
# %bb.407:                              # %land.lhs.true2391
	addi.w	$a2, $s3, 4
	bgeu	$a1, $a2, .LBB0_436
# %bb.408:                              # %land.lhs.true2391
	add.w	$a0, $a1, $a0
	bltu	$a0, $a2, .LBB0_436
# %bb.409:                              # %if.end2413
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_868
# %bb.410:                              # %if.end2419
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_609
# %bb.411:                              # %lor.lhs.false2425
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB0_609
# %bb.412:                              # %if.end2431
	ld.w	$a0, $s4, 0
	bltu	$s3, $a0, .LBB0_706
# %bb.413:                              # %if.end2431
	bstrpick.d	$a1, $s3, 31, 0
	bstrpick.d	$a2, $a0, 31, 0
	sub.d	$a1, $a1, $a2
	bltz	$a1, .LBB0_706
# %bb.414:                              # %if.end2431
	addi.d	$a3, $a1, 4
	blt	$s5, $a3, .LBB0_706
# %bb.415:                              # %if.end2467
	ldx.w	$a1, $s2, $a1
	lu12i.w	$a3, 2
	ori	$a3, $a3, 428
	add.d	$a3, $sp, $a3
	ld.w	$a3, $a3, 0
	ld.w	$a4, $s4, 12
	ori	$a5, $zero, 4
	sub.w	$a1, $a1, $a3
	bltu	$a4, $a5, .LBB0_713
# %bb.416:                              # %if.end2467
	bltu	$a1, $a0, .LBB0_713
# %bb.417:                              # %land.lhs.true2491
	addi.w	$a6, $a1, 4
	add.w	$a5, $a4, $a0
	bltu	$a5, $a6, .LBB0_713
# %bb.418:                              # %land.lhs.true2491
	bgeu	$a0, $a6, .LBB0_713
# %bb.419:                              # %if.end2513
	ori	$a6, $zero, 32
	bltu	$s5, $a6, .LBB0_834
# %bb.420:                              # %if.end2513
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$a1, $a1, $a2
	bltz	$a1, .LBB0_834
# %bb.421:                              # %if.end2513
	addi.d	$a2, $a1, 32
	blt	$s5, $a2, .LBB0_834
# %bb.422:                              # %if.end2542
	ldx.w	$a6, $s2, $a1
	ld.w	$a2, $s0, 0
	sub.w	$s6, $a6, $a3
	bne	$s6, $a2, .LBB0_879
# %bb.423:                              # %if.end2565
	add.d	$a1, $s2, $a1
	ld.w	$a2, $a1, 4
	sub.w	$s0, $a2, $a3
	bltu	$s0, $a0, .LBB0_883
# %bb.424:                              # %if.end2565
	sub.w	$a2, $s0, $a0
	bgeu	$a2, $a4, .LBB0_883
# %bb.425:                              # %land.lhs.true2592
	ori	$a2, $zero, 16
	bltu	$a4, $a2, .LBB0_910
# %bb.426:                              # %land.lhs.true2592
	ld.w	$a1, $a1, 16
	sub.w	$a1, $a1, $a3
	bltu	$a1, $a0, .LBB0_910
# %bb.427:                              # %land.lhs.true2606
	addi.w	$a2, $a1, 16
	bltu	$a5, $a2, .LBB0_910
# %bb.428:                              # %land.lhs.true2606
	bgeu	$a0, $a2, .LBB0_910
# %bb.429:                              # %if.end2628
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 12
	bstrpick.d	$a0, $a0, 31, 0
	ldx.w	$a0, $s2, $a0
	sub.w	$s3, $a0, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $sp, 248
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_865
# %bb.430:                              # %if.end2645
	move	$s7, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_945
# %bb.431:                              # %if.end2649
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB0_962
# %bb.432:                              # %if.end2654
	ld.w	$a1, $s4, 0
	sub.d	$a0, $s0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ld.w	$a3, $sp, 248
	lu12i.w	$a2, 2
	ori	$a2, $a2, 428
	add.d	$a2, $sp, $a2
	ld.w	$a5, $a2, 0
	add.d	$a0, $s2, $a0
	sub.d	$a2, $s5, $s0
	add.w	$a2, $a2, $a1
	move	$a1, $s7
	move	$a4, $s6
	move	$a6, $s3
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unfsg_200)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_966
# %bb.433:                              # %if.end2654
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_968
# %bb.434:                              # %sw.bb2670
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB0_975
# %bb.435:                              # %if.then2672
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_976
.LBB0_436:                              # %if.then2412
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a0, $a0, %pc_lo12(.L.str.155)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_437:                              # %land.lhs.true2707
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_452
.LBB0_438:                              # %land.lhs.true2707
	ld.bu	$a0, $sp, 256
	ori	$a1, $zero, 190
	bne	$a0, $a1, .LBB0_452
# %bb.439:                              # %land.rhs2717
	ld.w	$a0, $sp, 257
	lu12i.w	$a1, 2
	ori	$a1, $a1, 428
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	sub.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB0_452
# %bb.440:                              # %while.body2726
	addi.d	$a1, $s8, 1
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 36
	mul.d	$a1, $a1, $a2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.d	$s6, $a3, $a1
	bstrpick.d	$a1, $s8, 31, 0
	mul.d	$a1, $a1, $a2
	add.d	$s4, $a3, $a1
	ld.w	$a2, $s4, 4
	ld.d	$a1, $fp, 32
	ld.wu	$s5, $s6, 12
	st.w	$a2, $sp, 248
	beqz	$a1, .LBB0_447
# %bb.441:                              # %land.lhs.true2738
	ld.d	$a3, $a1, 24
	beqz	$a3, .LBB0_447
# %bb.442:                              # %land.lhs.true2742
	addi.w	$a1, $s5, 0
	sltu	$a4, $a1, $a2
	masknez	$a1, $a1, $a4
	maskeqz	$a4, $a2, $a4
	or	$a1, $a4, $a1
	bstrpick.d	$a4, $a1, 31, 0
	bgeu	$a3, $a4, .LBB0_447
.LBB0_443:                              # %if.then2343
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
.LBB0_444:                              # %if.then2343
	move	$a2, $a3
.LBB0_445:                              # %if.then3222
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.446:                              # %if.then2355
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.153)
	addi.d	$a1, $a1, %pc_lo12(.L.str.153)
	b	.LBB0_204
.LBB0_447:                              # %if.end2769
	ori	$a1, $zero, 26
	bltu	$s5, $a1, .LBB0_461
# %bb.448:                              # %if.end2769
	addi.w	$s7, $s5, 0
	bgeu	$s7, $a2, .LBB0_461
# %bb.449:                              # %if.end2776
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	sltu	$a1, $a0, $a1
	xori	$a1, $a1, 1
	bstrpick.d	$a2, $a0, 31, 0
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	sltu	$a2, $a2, $a3
	xori	$a2, $a2, 1
	or	$a1, $a1, $a2
	masknez	$s0, $a0, $a1
	st.w	$a1, $sp, 252
	bnez	$s0, .LBB0_467
# %bb.450:                              # %if.end2776
	beqz	$a1, .LBB0_467
# %bb.451:                              # %if.then2786
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a0, $a0, %pc_lo12(.L.str.169)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_452:                              # %land.lhs.true3043
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_494
# %bb.453:                              # %land.lhs.true3043
	ld.bu	$a0, $sp, 256
	ori	$a1, $zero, 187
	bne	$a0, $a1, .LBB0_494
# %bb.454:                              # %land.lhs.true3053
	ld.w	$a1, $sp, 257
	lu12i.w	$a0, 2
	ori	$a0, $a0, 428
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	sub.w	$s7, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bgeu	$s7, $a1, .LBB0_494
# %bb.455:                              # %land.lhs.true3053
	ld.bu	$a1, $sp, 261
	ori	$a2, $zero, 191
	bne	$a1, $a2, .LBB0_494
# %bb.456:                              # %land.lhs.true3053
	ld.bu	$a1, $sp, 266
	ori	$a2, $zero, 190
	bne	$a1, $a2, .LBB0_494
# %bb.457:                              # %land.lhs.true3071
	addi.d	$a1, $s8, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB0_494
# %bb.458:                              # %land.rhs3078
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	sub.w	$s3, $a3, $a2
	addi.w	$a2, $a2, -224
	bgeu	$a2, $s3, .LBB0_494
# %bb.459:                              # %while.body3092
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	add.d	$s5, $a7, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	sltu	$a1, $s7, $a1
	xori	$a2, $a1, 1
	bstrpick.d	$a1, $s7, 31, 0
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	sltu	$a3, $a1, $a3
	xori	$a3, $a3, 1
	or	$a5, $a2, $a3
	ld.w	$a3, $sp, 267
	ld.w	$a4, $sp, 262
	bstrpick.d	$a2, $s8, 31, 0
	slli.d	$a6, $a2, 5
	alsl.d	$a2, $a2, $a6, 2
	add.d	$s4, $a7, $a2
	ld.w	$a2, $s4, 4
	ld.wu	$s6, $s5, 12
	st.w	$a5, $sp, 252
	ori	$a6, $zero, 1
	st.w	$a2, $sp, 248
	bne	$a5, $a6, .LBB0_484
# %bb.460:                              # %if.then3130
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a0, $a0, %pc_lo12(.L.str.169)
	b	.LBB0_493
.LBB0_461:                              # %if.then2364
	addi.w	$a1, $s5, 0
.LBB0_462:                              # %cleanup4880
	pcalau12i	$a0, %pc_hi20(.L.str.154)
	addi.d	$a0, $a0, %pc_lo12(.L.str.154)
	b	.LBB0_508
.LBB0_463:                              # %lor.lhs.false2179
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_473
# %bb.464:                              # %land.lhs.true2181
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 72
	ld.w	$a2, $a2, 0
	sub.w	$a1, $a1, $a2
	bltu	$a0, $a1, .LBB0_389
# %bb.465:                              # %land.lhs.true2181
	bltu	$a0, $s3, .LBB0_389
# %bb.466:                              # %land.lhs.true2181
	sub.w	$a2, $a0, $s3
	bgeu	$a2, $a1, .LBB0_474
	b	.LBB0_389
.LBB0_467:                              # %if.end2787
	bstrpick.d	$a1, $s0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 8
	ld.d	$a0, $fp, 32
	sub.w	$s3, $a1, $s0
	beqz	$a0, .LBB0_595
# %bb.468:                              # %land.lhs.true2797
	ld.d	$a2, $a0, 24
	bstrpick.d	$a0, $s3, 31, 0
	beqz	$a2, .LBB0_596
# %bb.469:                              # %land.lhs.true2797
	bgeu	$a2, $a0, .LBB0_596
# %bb.470:                              # %if.then2807
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	move	$a1, $s3
	b	.LBB0_445
.LBB0_471:                              # %if.then1646
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a0, $a0, %pc_lo12(.L.str.123)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_666
.LBB0_472:                              # %if.then1652
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a0, $a0, %pc_lo12(.L.str.124)
	move	$a1, $s7
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_364
.LBB0_473:                              # %lor.lhs.false2198
	bltu	$a0, $s3, .LBB0_389
.LBB0_474:                              # %if.end2202
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_868
# %bb.475:                              # %if.end2208
	move	$s5, $a0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bstrpick.d	$s3, $s3, 31, 0
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_610
# %bb.476:                              # %if.end2216
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_478
# %bb.477:                              # %if.then2218
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.wu	$a0, $a1, 72
	ld.wu	$a1, $a1, 0
	add.d	$a0, $s5, $a0
	sub.d	$a0, $a0, $a1
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB0_478:                              # %if.end2228
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.wu	$a1, $s2, 64
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s2, 36
	ld.wu	$a2, $s2, 68
	add.d	$a0, $s5, $a0
	bstrpick.d	$a1, $s4, 31, 0
	sub.d	$a1, $a0, $a1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s2, 68
	bne	$a0, $a1, .LBB0_687
# %bb.479:                              # %if.end2250
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_723
# %bb.480:                              # %if.end2254
	move	$s2, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB0_745
# %bb.481:                              # %if.end2259
	move	$s3, $a0
	ld.w	$a2, $sp, 248
	lu12i.w	$a0, 2
	ori	$a0, $a0, 428
	add.d	$a0, $sp, $a0
	ld.w	$a6, $a0, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a7, $a0, 0
	addi.d	$a3, $sp, 256
	st.d	$s3, $sp, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s5
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unupack)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_757
# %bb.482:                              # %sw.bb2265
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB0_826
# %bb.483:                              # %if.then2267
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$a0, $a0, %pc_lo12(.L.str.149)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_827
.LBB0_484:                              # %if.end3131
	ld.w	$a5, $s5, 0
	sub.w	$s0, $a3, $a0
	bltu	$s0, $a5, .LBB0_492
# %bb.485:                              # %lor.lhs.false3138
	ld.w	$a3, $s5, 8
	sub.w	$a5, $s0, $a5
	bgeu	$a5, $a3, .LBB0_492
# %bb.486:                              # %if.end3151
	ld.w	$a3, $s4, 0
	sub.w	$s2, $a4, $a0
	bne	$s2, $a3, .LBB0_709
# %bb.487:                              # %if.end3161
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB0_716
# %bb.488:                              # %land.lhs.true3164
	ld.d	$a3, $a0, 24
	beqz	$a3, .LBB0_716
# %bb.489:                              # %land.lhs.true3168
	addi.w	$a0, $s6, 0
	sltu	$a4, $a0, $a2
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $a2, $a4
	or	$a4, $a4, $a0
	bstrpick.d	$a0, $a4, 31, 0
	bgeu	$a3, $a0, .LBB0_716
# %bb.490:                              # %if.then3180
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	move	$a1, $a4
	b	.LBB0_444
.LBB0_491:                              # %if.then1682
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_364
.LBB0_492:                              # %if.then3150
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a0, $a0, %pc_lo12(.L.str.161)
.LBB0_493:                              # %land.lhs.true3444
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_494:                              # %land.lhs.true3444
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 32
	bnez	$a0, .LBB0_501
.LBB0_495:                              # %if.end3780
	ori	$a0, $zero, 199
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB0_644
# %bb.496:                              # %if.end3784
	ld.bu	$a0, $sp, 256
	ori	$a1, $zero, 184
	bne	$a0, $a1, .LBB0_512
# %bb.497:                              # %lor.lhs.false3789
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s4, $a0, $a1, 2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s4
	ld.w	$a3, $a0, -36
	lu12i.w	$a1, 2
	ori	$a1, $a1, 428
	add.d	$a1, $sp, $a1
	ld.w	$a2, $a1, 0
	ld.w	$a1, $sp, 257
	add.w	$a3, $a2, $a3
	bne	$a1, $a3, .LBB0_509
# %bb.498:
	move	$s0, $zero
	ori	$s7, $zero, 2
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_512
.LBB0_499:                              # %if.then3834
	pcalau12i	$a0, %pc_hi20(.L.str.199)
	addi.d	$a0, $a0, %pc_lo12(.L.str.199)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 384
	lu12i.w	$a1, 91081
	ori	$a1, $a1, 2189
	bne	$a0, $a1, .LBB0_556
# %bb.500:                              # %if.then3840
	pcalau12i	$a0, %pc_hi20(.L.str.200)
	addi.d	$a0, $a0, %pc_lo12(.L.str.200)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bgeu	$a0, $s0, .LBB0_513
	b	.LBB0_517
.LBB0_501:                              # %if.then3449
	addi.w	$s5, $s8, 1
	bstrpick.d	$a0, $s5, 31, 0
	ori	$a1, $zero, 36
	mul.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.d	$s6, $a2, $a0
	bstrpick.d	$a0, $s8, 31, 0
	mul.d	$a0, $a0, $a1
	add.d	$s0, $a2, $a0
	ld.w	$a2, $s0, 4
	ld.w	$a3, $s6, 4
	ld.wu	$a0, $s6, 12
	ld.d	$a1, $fp, 32
	add.w	$a2, $a3, $a2
	addi.w	$s8, $a0, 0
	st.w	$a2, $sp, 248
	beqz	$a1, .LBB0_506
# %bb.502:                              # %land.lhs.true3464
	ld.d	$a3, $a1, 24
	beqz	$a3, .LBB0_506
# %bb.503:                              # %land.lhs.true3468
	sltu	$a1, $s8, $a2
	masknez	$a4, $s8, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a4
	bstrpick.d	$a4, $a1, 31, 0
	bgeu	$a3, $a4, .LBB0_506
# %bb.504:                              # %if.then3480
	pcalau12i	$a0, %pc_hi20(.L.str.175)
	addi.d	$a0, $a0, %pc_lo12(.L.str.175)
	move	$a2, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.505:                              # %if.then3492
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.176)
	addi.d	$a1, $a1, %pc_lo12(.L.str.176)
	b	.LBB0_204
.LBB0_506:                              # %if.end3495
	ori	$a1, $zero, 26
	bgeu	$s8, $a1, .LBB0_537
.LBB0_507:                              # %if.then3504
	pcalau12i	$a0, %pc_hi20(.L.str.177)
	addi.d	$a0, $a0, %pc_lo12(.L.str.177)
	move	$a1, $s8
.LBB0_508:                              # %cleanup4880
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_644
.LBB0_509:                              # %if.then3802
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_529
# %bb.510:                              # %lor.lhs.false3811
	ld.w	$a0, $a0, -72
	add.w	$a0, $a2, $a0
	bne	$a1, $a0, .LBB0_512
# %bb.511:
	ori	$s7, $zero, 1
	addi.w	$s0, $zero, -1
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_499
.LBB0_512:                              # %if.end3957
	ori	$s0, $zero, 2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bltu	$a0, $s0, .LBB0_517
.LBB0_513:                              # %if.end3957
	ld.d	$a0, $fp, 56
	ld.wu	$a0, $a0, 0
	andi	$a0, $a0, 512
	beqz	$a0, .LBB0_517
# %bb.514:                              # %land.lhs.true3966
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s7, $a0, -1
	slli.d	$a0, $s7, 5
	alsl.d	$a1, $s7, $a0, 2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	bltu	$a2, $a0, .LBB0_517
# %bb.515:                              # %land.lhs.true3974
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 12
	add.d	$a0, $a0, $a1
	lu12i.w	$a1, -4
	ori	$a1, $a1, 3557
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_517
# %bb.516:                              # %land.lhs.true3990
	addi.d	$a0, $sp, 260
	pcalau12i	$a1, %pc_hi20(.L.str.208)
	addi.d	$a1, $a1, %pc_lo12(.L.str.208)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_568
.LBB0_517:                              # %if.end4082
	ld.d	$a0, $fp, 56
	ld.wu	$s4, $a0, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bltu	$a0, $s0, .LBB0_522
# %bb.518:                              # %if.end4082
	andi	$a0, $s4, 1024
	beqz	$a0, .LBB0_522
# %bb.519:                              # %land.lhs.true4091
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s3, $a0, -1
	slli.d	$a0, $s3, 5
	alsl.d	$s0, $s3, $a0, 2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 416
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a0, $a0, 96
	bne	$a1, $a0, .LBB0_522
# %bb.520:                              # %land.lhs.true4101
	pcalau12i	$a0, %pc_hi20(.L.str.218)
	addi.d	$a1, $a0, %pc_lo12(.L.str.218)
	addi.d	$a0, $sp, 256
	ori	$a2, $zero, 51
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_522
# %bb.521:                              # %land.lhs.true4106
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s0
	ld.w	$a0, $a0, 8
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1118
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_573
.LBB0_522:                              # %if.end4174
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_529
.LBB0_523:                              # %if.end4174
	andi	$a0, $s4, 2048
	beqz	$a0, .LBB0_529
# %bb.524:                              # %land.lhs.true4183
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s0, $a0, -1
	bstrpick.d	$s7, $s0, 31, 0
	slli.d	$a0, $s7, 5
	alsl.d	$s4, $s7, $a0, 2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$s5, $a0, $s4
	ld.w	$s6, $s5, 8
	ori	$a0, $zero, 690
	bltu	$s6, $a0, .LBB0_529
# %bb.525:                              # %land.lhs.true4191
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_529
# %bb.526:                              # %land.lhs.true4199
	ld.w	$s3, $s5, 12
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.w	$a0, $s3, $a0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_529
# %bb.527:                              # %land.lhs.true4213
	pcalau12i	$a0, %pc_hi20(.L.str.224)
	addi.d	$a1, $a0, %pc_lo12(.L.str.224)
	addi.d	$a0, $sp, 256
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_529
# %bb.528:                              # %land.lhs.true4218
	addi.d	$a0, $sp, 360
	pcalau12i	$a1, %pc_hi20(.L.str.225)
	addi.d	$a1, $a1, %pc_lo12(.L.str.225)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_689
.LBB0_529:                              # %while.cond4442
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 128
	beqz	$a0, .LBB0_637
# %bb.530:                              # %land.lhs.true4447
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1864
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB0_637
# %bb.531:                              # %land.rhs4453
	ld.d	$a0, $sp, 256
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2144
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, -322
	bne	$a0, $a1, .LBB0_637
# %bb.532:                              # %land.rhs4453
	ori	$a0, $zero, 959
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_637
# %bb.533:                              # %lor.lhs.false4461
	addi.d	$a0, $sp, 1209
	pcalau12i	$a1, %pc_hi20(.L.str.237)
	addi.d	$a1, $a1, %pc_lo12(.L.str.237)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_637
# %bb.534:                              # %lor.lhs.false4461
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_637
# %bb.535:                              # %iter.check2757
	ori	$a0, $zero, 4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_579
# %bb.536:
	move	$a0, $zero
	move	$s5, $zero
	b	.LBB0_618
.LBB0_537:                              # %lor.lhs.false3498
	bgeu	$s8, $a2, .LBB0_507
# %bb.538:                              # %lor.lhs.false3498
	lu12i.w	$a1, 45056
	ori	$a1, $a1, 1
	bgeu	$a2, $a1, .LBB0_507
# %bb.539:                              # %if.end3505
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_868
# %bb.540:                              # %if.end3511
	move	$s2, $a0
	ld.w	$a0, $sp, 248
	lu12i.w	$a1, 2
	add.d	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_865
# %bb.541:                              # %if.end3518
	move	$s7, $a0
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_589
# %bb.542:                              # %lor.lhs.false3524
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_589
# %bb.543:                              # %if.end3530
	addi.d	$s3, $sp, 361
	pcalau12i	$a0, %pc_hi20(.L.str.179)
	addi.d	$a0, $a0, %pc_lo12(.L.str.179)
	ori	$a1, $zero, 24
	ori	$a3, $zero, 13
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(upx_inflate2b)
	ld.d	$s4, $a1, %got_pc_lo12(upx_inflate2b)
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.180)
	addi.d	$s5, $a1, %pc_lo12(.L.str.180)
	bnez	$a0, .LBB0_545
# %bb.544:                              # %lor.lhs.false3535
	addi.d	$a2, $sp, 369
	pcalau12i	$a0, %pc_hi20(.L.str.179)
	addi.d	$a0, $a0, %pc_lo12(.L.str.179)
	ori	$a1, $zero, 24
	ori	$a3, $zero, 13
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_748
.LBB0_545:
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
.LBB0_546:                              # %if.then3570
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
.LBB0_547:                              # %if.then3570
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 257
	ld.w	$a5, $s6, 0
	ori	$a1, $zero, 190
	bne	$a0, $a1, .LBB0_692
# %bb.548:                              # %if.then3570
	lu12i.w	$a0, 2
	ori	$a0, $a0, 428
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ld.w	$a1, $sp, 258
	add.d	$a0, $a0, $a5
	sub.w	$s3, $a1, $a0
	addi.d	$a0, $s3, -2048
	addi.w	$a0, $a0, -2048
	lu12i.w	$a1, -1
	bgeu	$a1, $a0, .LBB0_692
# %bb.549:                              # %if.else3604
	pcalau12i	$a0, %pc_hi20(.L.str.185)
	addi.d	$a0, $a0, %pc_lo12(.L.str.185)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s0, 0
	ld.w	$a5, $s6, 0
	add.d	$a0, $s2, $s3
	sub.w	$a1, $s8, $s3
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	sub.w	$a6, $a2, $s3
	addi.d	$a3, $sp, 248
	move	$a2, $s7
	jirl	$ra, $s4, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB0_693
# %bb.550:                              # %lor.lhs.false3619
	ld.w	$a4, $s0, 0
	ld.w	$a5, $s6, 0
	addi.d	$a3, $sp, 248
	move	$a0, $s2
	move	$a1, $s8
	move	$a2, $s7
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $s4, 0
	bgez	$a0, .LBB0_693
.LBB0_551:                              # %if.end3637
	pcalau12i	$a0, %pc_hi20(.L.str.187)
	addi.d	$a0, $a0, %pc_lo12(.L.str.187)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_752
# %bb.552:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
.LBB0_553:                              # %if.then3642
	ld.w	$a4, $s0, 0
	ld.w	$a5, $s6, 0
	addi.d	$a3, $sp, 248
	move	$a0, $s2
	move	$a1, $s8
	move	$a2, $s7
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(upx_inflate2b)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
	bne	$a0, $s3, .LBB0_555
# %bb.554:                              # %land.lhs.true3653
	ld.w	$a4, $s0, 0
	ld.w	$a5, $s6, 0
	addi.d	$a0, $s2, 21
	addi.w	$a1, $s8, -21
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a6, $a2, -21
	addi.d	$a3, $sp, 248
	move	$a2, $s7
	pcaddu18i	$ra, %call36(upx_inflate2b)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB0_882
.LBB0_555:                              # %if.else3668
	pcalau12i	$a0, %pc_hi20(.L.str.189)
	addi.d	$a0, $a0, %pc_lo12(.L.str.189)
	b	.LBB0_694
.LBB0_556:                              # %if.else3841
	ld.d	$a1, $fp, 32
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	sub.w	$s8, $a2, $a0
	st.w	$s8, $sp, 248
	bstrpick.d	$a0, $s8, 31, 0
	beqz	$a1, .LBB0_561
# %bb.557:                              # %land.lhs.true3845
	ld.d	$a2, $a1, 24
	beqz	$a2, .LBB0_561
# %bb.558:                              # %land.lhs.true3845
	bgeu	$a2, $a0, .LBB0_561
# %bb.559:                              # %if.then3855
	pcalau12i	$a0, %pc_hi20(.L.str.201)
	addi.d	$a0, $a0, %pc_lo12(.L.str.201)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.560:                              # %if.then3861
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.202)
	addi.d	$a1, $a1, %pc_lo12(.L.str.202)
	b	.LBB0_204
.LBB0_561:                              # %if.end3864
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_594
# %bb.562:                              # %for.cond3871.preheader
	move	$s2, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_590
# %bb.563:                              # %for.body3875.lr.ph
	move	$s6, $zero
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	sub.d	$s5, $s2, $a0
	b	.LBB0_565
.LBB0_564:                              # %for.inc3906
                                        #   in Loop: Header=BB0_565 Depth=1
	addi.d	$s6, $s6, 36
	beq	$s4, $s6, .LBB0_590
.LBB0_565:                              # %for.body3875
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$s3, $a0, $s6
	ld.w	$a0, $s3, 8
	beqz	$a0, .LBB0_564
# %bb.566:                              # %if.then3880
                                        #   in Loop: Header=BB0_565 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_657
# %bb.567:                              # %lor.lhs.false3885
                                        #   in Loop: Header=BB0_565 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldx.wu	$a0, $a0, $s6
	ld.w	$a2, $s3, 32
	add.d	$a1, $s5, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 32
	beq	$a0, $a1, .LBB0_564
	b	.LBB0_657
.LBB0_568:                              # %if.then3996
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB0_581
# %bb.569:                              # %land.lhs.true3999
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_581
# %bb.570:                              # %land.lhs.true3999
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	bgeu	$a2, $a0, .LBB0_581
# %bb.571:                              # %if.then4008
	pcalau12i	$a0, %pc_hi20(.L.str.209)
	addi.d	$a0, $a0, %pc_lo12(.L.str.209)
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.572:                              # %if.then4014
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.210)
	addi.d	$a1, $a1, %pc_lo12(.L.str.210)
	b	.LBB0_204
.LBB0_573:                              # %if.then4117
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_868
# %bb.574:                              # %if.end4123
	move	$s6, $a0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s6
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_659
# %bb.575:                              # %if.end4131
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_673
# %bb.576:                              # %if.end4135
	move	$s5, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB0_722
# %bb.577:                              # %if.end4140
	move	$s7, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 672
	add.d	$a0, $sp, $a0
	ld.w	$a4, $a0, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a5, $s7
	pcaddu18i	$ra, %call36(yc_decrypt)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_743
# %bb.578:                              # %cleanup4171
	pcalau12i	$a0, %pc_hi20(.L.str.223)
	addi.d	$a0, $a0, %pc_lo12(.L.str.223)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.w	$s4, $a0, 0
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_523
	b	.LBB0_529
.LBB0_579:                              # %vector.main.loop.iter.check2759
	ori	$a0, $zero, 16
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_611
# %bb.580:
	move	$a0, $zero
	move	$s5, $zero
	b	.LBB0_615
.LBB0_581:                              # %if.end4017
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_868
# %bb.582:                              # %if.end4022
	move	$s6, $a0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s6
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_663
# %bb.583:                              # %if.end4030
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_673
# %bb.584:                              # %if.end4034
	move	$s5, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB0_739
# %bb.585:                              # %if.end4039
	move	$s8, $a0
	move	$a0, $s6
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s7
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	move	$a5, $s8
	move	$a6, $fp
	pcaddu18i	$ra, %call36(unspin)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_768
# %bb.586:                              # %if.end4039
	bnez	$a0, .LBB0_770
# %bb.587:                              # %sw.bb4044
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB0_836
# %bb.588:                              # %if.then4046
	pcalau12i	$a0, %pc_hi20(.L.str.213)
	addi.d	$a0, $a0, %pc_lo12(.L.str.213)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_837
.LBB0_589:                              # %if.then3528
	pcalau12i	$a0, %pc_hi20(.L.str.178)
	addi.d	$a0, $a0, %pc_lo12(.L.str.178)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	b	.LBB0_667
.LBB0_590:                              # %for.end3908
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_922
# %bb.591:                              # %if.end3912
	move	$s6, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB0_704
# %bb.592:                              # %if.end3917
	move	$s3, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 428
	add.d	$a0, $sp, $a0
	ld.w	$a5, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 512
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 516
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	add.d	$a4, $s0, $a2
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$s7, $sp, 0
	move	$a0, $s2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s8
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	move	$a7, $s3
	pcaddu18i	$ra, %call36(petite_inflate2x_1to9)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_710
# %bb.593:                              # %sw.default3952
	pcalau12i	$a0, %pc_hi20(.L.str.207)
	addi.d	$a0, $a0, %pc_lo12(.L.str.207)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bgeu	$a0, $s0, .LBB0_513
	b	.LBB0_517
.LBB0_594:                              # %if.then3869
	ld.w	$a1, $sp, 248
	pcalau12i	$a0, %pc_hi20(.L.str.203)
	addi.d	$a0, $a0, %pc_lo12(.L.str.203)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_868
.LBB0_595:                              # %if.end2787.if.end2816_crit_edge
	bstrpick.d	$a0, $s3, 31, 0
.LBB0_596:                              # %if.end2816
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_868
# %bb.597:                              # %if.end2822
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_655
# %bb.598:                              # %if.end2827
	lu12i.w	$a0, 2
	ori	$a0, $a0, 428
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ld.w	$a2, $s2, 8
	ld.w	$a1, $s6, 0
	sub.w	$a2, $a2, $a0
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	bltu	$a2, $a1, .LBB0_660
# %bb.599:                              # %lor.lhs.false2842
	ld.w	$a2, $s6, 12
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a1, $a3, $a1
	bgeu	$a1, $a2, .LBB0_660
# %bb.600:                              # %if.end2855
	ld.w	$a1, $s2, 4
	ld.w	$a2, $s4, 0
	sub.w	$a0, $a1, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bne	$a0, $a2, .LBB0_751
# %bb.601:                              # %for.cond2866.preheader
	addi.w	$a1, $s3, -4
	ori	$a0, $zero, 13
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB0_661
# %bb.602:                              # %for.body2870.preheader
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	addi.d	$a0, $s2, 8
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$s0, $zero, 12
	pcalau12i	$a0, %pc_hi20(.L.str.172)
	addi.d	$a0, $a0, %pc_lo12(.L.str.172)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
.LBB0_603:                              # %for.body2870
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a1, $s0, 31, 0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ldx.w	$s3, $s2, $a1
	beqz	$s3, .LBB0_843
# %bb.604:                              # %if.end2877
                                        #   in Loop: Header=BB0_603 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 428
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $s3
	ori	$a2, $zero, 4095
	andn	$a1, $a2, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	beqz	$a1, .LBB0_606
# %bb.605:                              # %if.then2884
                                        #   in Loop: Header=BB0_603 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
.LBB0_606:                              # %if.end2885
                                        #   in Loop: Header=BB0_603 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	nor	$a1, $a1, $zero
	add.w	$a1, $s3, $a1
	bltu	$a1, $a0, .LBB0_842
# %bb.607:                              # %lor.lhs.false2891
                                        #   in Loop: Header=BB0_603 Depth=1
	ld.w	$a2, $s4, 4
	sub.w	$a1, $a1, $a0
	bgeu	$a1, $a2, .LBB0_842
# %bb.608:                              # %for.inc2906
                                        #   in Loop: Header=BB0_603 Depth=1
	addi.w	$s0, $s0, 4
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bltu	$s0, $a1, .LBB0_603
	b	.LBB0_661
.LBB0_609:                              # %if.then2429
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a0, $a0, %pc_lo12(.L.str.156)
	move	$a1, $s7
	b	.LBB0_656
.LBB0_610:                              # %if.then2215
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	b	.LBB0_688
.LBB0_611:                              # %vector.ph2760
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	andi	$a0, $a0, 112
	xvrepli.b	$xr0, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 288
	move	$a2, $a0
	xvori.b	$xr1, $xr0, 0
.LBB0_612:                              # %vector.body2763
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, -288
	ld.w	$a4, $a1, -252
	ld.w	$a5, $a1, -216
	ld.w	$a6, $a1, -180
	ld.w	$a7, $a1, -144
	ld.w	$t0, $a1, -108
	ld.w	$t1, $a1, -72
	ld.w	$t2, $a1, -36
	xvinsgr2vr.w	$xr2, $a3, 0
	xvinsgr2vr.w	$xr2, $a4, 1
	xvinsgr2vr.w	$xr2, $a5, 2
	xvinsgr2vr.w	$xr2, $a6, 3
	xvinsgr2vr.w	$xr2, $a7, 4
	xvinsgr2vr.w	$xr2, $t0, 5
	xvinsgr2vr.w	$xr2, $t1, 6
	xvinsgr2vr.w	$xr2, $t2, 7
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a1, 36
	ld.w	$a5, $a1, 72
	ld.w	$a6, $a1, 108
	ld.w	$a7, $a1, 144
	ld.w	$t0, $a1, 180
	ld.w	$t1, $a1, 216
	ld.w	$t2, $a1, 252
	xvinsgr2vr.w	$xr3, $a3, 0
	xvinsgr2vr.w	$xr3, $a4, 1
	xvinsgr2vr.w	$xr3, $a5, 2
	xvinsgr2vr.w	$xr3, $a6, 3
	xvinsgr2vr.w	$xr3, $a7, 4
	xvinsgr2vr.w	$xr3, $t0, 5
	xvinsgr2vr.w	$xr3, $t1, 6
	xvinsgr2vr.w	$xr3, $t2, 7
	ld.w	$a3, $a1, -284
	ld.w	$a4, $a1, -248
	ld.w	$a5, $a1, -212
	ld.w	$a6, $a1, -176
	ld.w	$a7, $a1, -140
	ld.w	$t0, $a1, -104
	ld.w	$t1, $a1, -68
	ld.w	$t2, $a1, -32
	xvinsgr2vr.w	$xr4, $a3, 0
	xvinsgr2vr.w	$xr4, $a4, 1
	xvinsgr2vr.w	$xr4, $a5, 2
	xvinsgr2vr.w	$xr4, $a6, 3
	xvinsgr2vr.w	$xr4, $a7, 4
	xvinsgr2vr.w	$xr4, $t0, 5
	xvinsgr2vr.w	$xr4, $t1, 6
	xvinsgr2vr.w	$xr4, $t2, 7
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 40
	ld.w	$a5, $a1, 76
	ld.w	$a6, $a1, 112
	ld.w	$a7, $a1, 148
	ld.w	$t0, $a1, 184
	ld.w	$t1, $a1, 220
	ld.w	$t2, $a1, 256
	xvinsgr2vr.w	$xr5, $a3, 0
	xvinsgr2vr.w	$xr5, $a4, 1
	xvinsgr2vr.w	$xr5, $a5, 2
	xvinsgr2vr.w	$xr5, $a6, 3
	xvinsgr2vr.w	$xr5, $a7, 4
	xvinsgr2vr.w	$xr5, $t0, 5
	xvinsgr2vr.w	$xr5, $t1, 6
	xvinsgr2vr.w	$xr5, $t2, 7
	xvadd.w	$xr2, $xr4, $xr2
	xvadd.w	$xr3, $xr5, $xr3
	xvmax.wu	$xr0, $xr0, $xr2
	xvmax.wu	$xr1, $xr1, $xr3
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 576
	bnez	$a2, .LBB0_612
# %bb.613:                              # %middle.block2768
	xvmax.wu	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.wu	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.wu	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.wu	$xr0, $xr0, $xr1
	xvpickve2gr.w	$s5, $xr0, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_620
# %bb.614:                              # %vec.epilog.iter.check2775
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	andi	$a1, $a1, 12
	beqz	$a1, .LBB0_618
.LBB0_615:                              # %vec.epilog.ph2774
	move	$a2, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	andi	$a0, $a0, 124
	vreplgr2vr.w	$vr0, $s5
	sub.d	$a1, $a2, $a0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 72
.LBB0_616:                              # %vec.epilog.vector.body2782
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, -72
	ld.w	$a4, $a2, -36
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a2, 36
	vinsgr2vr.w	$vr1, $a3, 0
	vinsgr2vr.w	$vr1, $a4, 1
	vinsgr2vr.w	$vr1, $a5, 2
	vinsgr2vr.w	$vr1, $a6, 3
	ld.w	$a3, $a2, -68
	ld.w	$a4, $a2, -32
	ld.w	$a5, $a2, 4
	ld.w	$a6, $a2, 40
	vinsgr2vr.w	$vr2, $a3, 0
	vinsgr2vr.w	$vr2, $a4, 1
	vinsgr2vr.w	$vr2, $a5, 2
	vinsgr2vr.w	$vr2, $a6, 3
	vadd.w	$vr1, $vr2, $vr1
	vmax.wu	$vr0, $vr0, $vr1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 144
	bnez	$a1, .LBB0_616
# %bb.617:                              # %vec.epilog.middle.block2786
	vshuf4i.w	$vr1, $vr0, 14
	vmax.wu	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.wu	$vr0, $vr0, $vr1
	vpickve2gr.w	$s5, $vr0, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_620
.LBB0_618:                              # %for.body4472.preheader
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 4
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a0, $a2, $a0
.LBB0_619:                              # %for.body4472
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, -4
	ld.w	$a3, $a1, 0
	add.w	$a2, $a3, $a2
	sltu	$a3, $a2, $s5
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s5, $a3
	or	$s5, $a3, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 36
	bnez	$a0, .LBB0_619
.LBB0_620:                              # %for.end4493
	beqz	$s5, .LBB0_637
# %bb.621:                              # %if.end4496
	ld.d	$a0, $fp, 32
	bstrpick.d	$s3, $s5, 31, 0
	beqz	$a0, .LBB0_626
# %bb.622:                              # %land.lhs.true4499
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_626
# %bb.623:                              # %land.lhs.true4499
	bgeu	$a2, $s3, .LBB0_626
# %bb.624:                              # %if.then4509
	pcalau12i	$a0, %pc_hi20(.L.str.238)
	addi.d	$a0, $a0, %pc_lo12(.L.str.238)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.625:                              # %if.then4515
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.239)
	addi.d	$a1, $a1, %pc_lo12(.L.str.239)
	b	.LBB0_204
.LBB0_626:                              # %if.end4518
	ori	$a1, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_868
# %bb.627:
	move	$s6, $a0
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	move	$s0, $s4
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_629
.LBB0_628:                              # %for.inc4609
                                        #   in Loop: Header=BB0_629 Depth=1
	addi.w	$s4, $s4, -1
	addi.d	$s0, $s0, -1
	addi.d	$s7, $s7, 36
	beqz	$s0, .LBB0_668
.LBB0_629:                              # %for.body4528
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s7, 12
	beqz	$a0, .LBB0_628
# %bb.630:                              # %if.end4534
                                        #   in Loop: Header=BB0_629 Depth=1
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_634
# %bb.631:                              # %land.lhs.true4543
                                        #   in Loop: Header=BB0_629 Depth=1
	ld.wu	$a0, $s7, 12
	addi.w	$a1, $a0, -1
	bgeu	$a1, $s5, .LBB0_634
# %bb.632:                              # %land.lhs.true4555
                                        #   in Loop: Header=BB0_629 Depth=1
	ld.wu	$a1, $s7, 0
	add.d	$a2, $a1, $a0
	bltu	$s3, $a2, .LBB0_634
# %bb.633:                              # %if.end4592
                                        #   in Loop: Header=BB0_629 Depth=1
	addi.w	$a2, $a0, 0
	add.d	$a1, $s6, $a1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 12
	beq	$a0, $a1, .LBB0_628
.LBB0_634:                              # %for.end4611
	beqz	$s4, .LBB0_668
# %bb.635:                              # %if.then4615
	pcalau12i	$a0, %pc_hi20(.L.str.240)
	addi.d	$a0, $a0, %pc_lo12(.L.str.240)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_636:                              # %while.cond4656.sink.split
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_637:                              # %while.cond4656
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 16
	beqz	$a0, .LBB0_644
# %bb.638:                              # %while.body4661
	ld.bu	$a0, $sp, 256
	ori	$a1, $zero, 233
	addi.d	$s3, $sp, 256
	bne	$a0, $a1, .LBB0_643
# %bb.639:                              # %if.then4671
	ld.w	$a0, $sp, 257
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 5
	addi.d	$a3, $sp, 252
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rawaddr)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_641
# %bb.640:                              # %if.then4671
	ld.w	$a0, $sp, 252
	bnez	$a0, .LBB0_644
.LBB0_641:                              # %if.end4682
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB0_644
# %bb.642:                              # %if.end4688
	addi.d	$s3, $sp, 224
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 24
	ori	$s0, $zero, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_644
.LBB0_643:                              # %if.end4696
	pcalau12i	$a0, %pc_hi20(.L.str.245)
	addi.d	$a1, $a0, %pc_lo12(.L.str.245)
	ori	$a2, $zero, 13
	move	$a0, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_646
.LBB0_644:                              # %while.end4879
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
.LBB0_645:                              # %cleanup4880
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_16
.LBB0_646:                              # %if.end4700
	ld.w	$a0, $s3, 17
	ori	$a1, $zero, 84
	sub.d	$s0, $a1, $a0
	addi.w	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.246)
	addi.d	$a0, $a0, %pc_lo12(.L.str.246)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s0
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	beq	$a0, $s0, .LBB0_644
# %bb.647:                              # %if.end4710
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 4
	ori	$s2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_644
# %bb.648:                              # %if.end4716
	ld.w	$a0, $sp, 224
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	add.w	$s4, $a0, $a1
	bstrpick.d	$a1, $s4, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB0_644
# %bb.649:                              # %if.end4725
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 20
	ori	$s2, $zero, 20
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_644
# %bb.650:                              # %if.end4731
	ld.w	$a0, $sp, 224
	ld.w	$a1, $sp, 229
	ld.w	$a2, $sp, 233
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a3, $a2, $a0
	or	$a3, $a3, $a1
	ld.w	$a4, $sp, 237
	ld.d	$a1, $fp, 32
	ori	$s3, $a3, 255
	masknez	$a2, $a2, $a0
	maskeqz	$a3, $a4, $a0
	or	$s5, $a3, $a2
	beqz	$a1, .LBB0_674
# %bb.651:                              # %land.lhs.true4747
	ld.d	$a2, $a1, 24
	beqz	$a2, .LBB0_674
# %bb.652:                              # %land.lhs.true4751
	sltu	$a1, $s5, $s3
	masknez	$a3, $s5, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a3
	bstrpick.d	$a3, $a1, 31, 0
	bgeu	$a2, $a3, .LBB0_674
# %bb.653:                              # %if.then4763
	pcalau12i	$a0, %pc_hi20(.L.str.247)
	addi.d	$a0, $a0, %pc_lo12(.L.str.247)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.654:                              # %if.then4775
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.248)
	addi.d	$a1, $a1, %pc_lo12(.L.str.248)
	b	.LBB0_204
.LBB0_655:                              # %if.then2826
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$a0, $a0, %pc_lo12(.L.str.170)
	move	$a1, $s3
.LBB0_656:                              # %if.then3903
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_657:                              # %if.then3903
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
.LBB0_658:                              # %cleanup4880
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	b	.LBB0_667
.LBB0_659:                              # %if.then4130
	pcalau12i	$a0, %pc_hi20(.L.str.219)
	addi.d	$a0, $a0, %pc_lo12(.L.str.219)
	b	.LBB0_664
.LBB0_660:                              # %if.then2854
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a0, $a0, %pc_lo12(.L.str.161)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_661:                              # %land.lhs.true3043
	move	$a0, $s2
.LBB0_662:                              # %land.lhs.true3043
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_452
.LBB0_663:                              # %if.then4029
	pcalau12i	$a0, %pc_hi20(.L.str.211)
	addi.d	$a0, $a0, %pc_lo12(.L.str.211)
.LBB0_664:                              # %cleanup4880
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
.LBB0_665:                              # %if.then1400
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_666:                              # %if.then1400
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
.LBB0_667:                              # %cleanup4880
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_668:                              # %if.end4616
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_673
# %bb.669:                              # %if.end4620
	move	$s7, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB0_741
# %bb.670:                              # %if.end4625
	move	$s3, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 428
	add.d	$a0, $sp, $a0
	ld.w	$a5, $a0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a4, $a0, -1
	move	$a0, $s6
	move	$a1, $s5
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(unaspack212)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_747
# %bb.671:                              # %sw.bb4629
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB0_821
# %bb.672:                              # %if.then4631
	pcalau12i	$a0, %pc_hi20(.L.str.242)
	addi.d	$a0, $a0, %pc_lo12(.L.str.242)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_822
.LBB0_673:                              # %if.then4033
	move	$a0, $s6
	b	.LBB0_923
.LBB0_674:                              # %if.end4778
	beqz	$s5, .LBB0_644
# %bb.675:                              # %lor.lhs.false4782
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 4
	bne	$s5, $a1, .LBB0_644
# %bb.676:                              # %if.end4788
	addi.w	$a1, $s4, 4
	masknez	$a2, $s4, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB0_644
# %bb.677:                              # %if.end4794
	bstrpick.d	$a0, $s5, 31, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_644
# %bb.678:                              # %if.end4799
	move	$s6, $a0
	bstrpick.d	$a0, $s3, 31, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_869
# %bb.679:                              # %if.end4804
	move	$s5, $a0
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 634
	addi.d	$a3, $sp, 252
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rawaddr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_681
# %bb.680:                              # %if.end4804
	ld.w	$a1, $sp, 252
	bnez	$a1, .LBB0_835
.LBB0_681:                              # %if.end4812
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB0_835
# %bb.682:                              # %if.end4818
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 5
	ori	$s2, $zero, 5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_835
# %bb.683:                              # %if.end4824
	ld.w	$a0, $sp, 225
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.w	$s3, $a0, 639
	pcalau12i	$a0, %pc_hi20(.L.str.249)
	addi.d	$a0, $a0, %pc_lo12(.L.str.249)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_927
# %bb.684:                              # %if.end4833
	move	$s1, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bge	$s0, $a0, .LBB0_936
# %bb.685:                              # %if.end4838
	move	$s2, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 428
	add.d	$a0, $sp, $a0
	ld.w	$a4, $a0, 0
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $fp
	move	$a5, $s3
	move	$a6, $s2
	pcaddu18i	$ra, %call36(unspack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_942
# %bb.686:                              # %sw.default4865
	pcalau12i	$a0, %pc_hi20(.L.str.253)
	addi.d	$a0, $a0, %pc_lo12(.L.str.253)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$s5, $s1
	b	.LBB0_870
.LBB0_687:                              # %if.then2249
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$a0, $a0, %pc_lo12(.L.str.147)
.LBB0_688:                              # %cleanup4880
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	b	.LBB0_667
.LBB0_689:                              # %for.cond4231.preheader
	beqz	$s0, .LBB0_780
# %bb.690:                              # %iter.check
	ori	$a0, $zero, 5
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_725
# %bb.691:
	move	$a0, $zero
	b	.LBB0_778
.LBB0_692:                              # %if.then3591
	ld.w	$a4, $s0, 0
	addi.d	$a3, $sp, 248
	move	$a0, $s2
	move	$a1, $s8
	move	$a2, $s7
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $s4, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB0_551
.LBB0_693:                              # %if.end3637.thread
	pcalau12i	$a0, %pc_hi20(.L.str.186)
	addi.d	$a0, $a0, %pc_lo12(.L.str.186)
.LBB0_694:                              # %if.then3742
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_695:                              # %if.then3742
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_708
# %bb.696:                              # %if.end3746
	move	$s0, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB0_724
# %bb.697:                              # %if.end3751
	move	$s1, $a0
	ld.wu	$a2, $sp, 248
	move	$a1, $s7
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 248
	addi.w	$a0, $a0, 0
	bne	$a1, $a0, .LBB0_738
# %bb.698:                              # %if.end3759
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s2, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB0_700
# %bb.699:                              # %if.then3763
	pcalau12i	$a0, %pc_hi20(.L.str.197)
	addi.d	$a0, $a0, %pc_lo12(.L.str.197)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_700:                              # %if.end3764
	pcalau12i	$a0, %pc_hi20(.L.str.198)
	addi.d	$a0, $a0, %pc_lo12(.L.str.198)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_797
.LBB0_701:                              # %if.then3768
	bnez	$a0, .LBB0_703
# %bb.702:                              # %if.then3015
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_703:                              # %if.end3017
	move	$a0, $s0
	b	.LBB0_236
.LBB0_704:                              # %if.then3916
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a0, $a0, %pc_lo12(.L.str.204)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
.LBB0_705:                              # %cleanup4880
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	b	.LBB0_746
.LBB0_706:                              # %if.then2466
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$a0, $a0, %pc_lo12(.L.str.157)
.LBB0_707:                              # %land.lhs.true2707
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_714
.LBB0_708:                              # %if.then3745
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_133
.LBB0_709:                              # %if.then3157
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	move	$a1, $s2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_494
.LBB0_710:                              # %sw.bb3930
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB0_758
# %bb.711:                              # %if.then3932
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_759
.LBB0_712:                              # %cleanup1187
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.111)
	addi.d	$a1, $a1, %pc_lo12(.L.str.111)
	b	.LBB0_228
.LBB0_713:                              # %if.then2512
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a0, $a0, %pc_lo12(.L.str.158)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_714:                              # %land.lhs.true2707
	move	$a0, $s2
.LBB0_715:                              # %land.lhs.true2707
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 64
	bnez	$a0, .LBB0_438
	b	.LBB0_452
.LBB0_716:                              # %if.end3195
	ori	$a0, $zero, 26
	bltu	$s6, $a0, .LBB0_756
# %bb.717:                              # %if.end3195
	addi.w	$a0, $s6, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	bgeu	$a0, $a2, .LBB0_756
# %bb.718:                              # %if.end3202
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 8
	ld.d	$a1, $fp, 32
	sub.w	$a0, $a0, $s7
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	beqz	$a1, .LBB0_800
# %bb.719:                              # %land.lhs.true3212
	ld.d	$a2, $a1, 24
	beqz	$a2, .LBB0_800
# %bb.720:                              # %land.lhs.true3212
	bgeu	$a2, $a0, .LBB0_800
# %bb.721:                              # %if.then3222
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_445
.LBB0_722:                              # %if.then4139
	pcalau12i	$a0, %pc_hi20(.L.str.220)
	addi.d	$a0, $a0, %pc_lo12(.L.str.220)
	b	.LBB0_740
.LBB0_723:                              # %if.then2253
	move	$a0, $s5
	b	.LBB0_923
.LBB0_724:                              # %if.then3750
	pcalau12i	$a0, %pc_hi20(.L.str.195)
	addi.d	$a0, $a0, %pc_lo12(.L.str.195)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_725:                              # %vector.main.loop.iter.check
	ori	$a0, $zero, 17
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_771
# %bb.726:
	move	$a0, $zero
	b	.LBB0_775
.LBB0_727:                              # %if.end1695.if.end1788_crit_edge
	ld.w	$a0, $sp, 248
.LBB0_728:                              # %if.end1788
	add.d	$a0, $a0, $s4
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_868
# %bb.729:                              # %if.end1794
	move	$s2, $a0
	ld.w	$a1, $s6, 48
	addi.w	$a0, $s5, 12
	bltu	$a1, $a0, .LBB0_766
# %bb.730:                              # %if.end1794
	bltu	$s4, $a1, .LBB0_766
# %bb.731:                              # %if.end1814
	ld.wu	$a0, $sp, 248
	bstrpick.d	$a2, $a1, 31, 0
	add.d	$a1, $s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	bstrpick.d	$a3, $a1, 31, 0
	move	$a2, $a0
	bne	$a0, $a3, .LBB0_820
# %bb.732:                              # %if.end1835
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a0, $a0, %pc_lo12(.L.str.133)
	move	$a1, $a2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 379
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 232
	bne	$a0, $a1, .LBB0_871
# %bb.733:                              # %if.then1840
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 40
	ori	$a0, $zero, 4
	bltu	$a1, $a0, .LBB0_878
# %bb.734:                              # %land.lhs.true1850
	lu12i.w	$a0, 1
	ori	$a0, $a0, 380
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 36
	add.d	$a3, $a0, $s7
	addi.w	$a4, $a3, 128
	bltu	$a4, $a2, .LBB0_878
# %bb.735:                              # %land.lhs.true1860
	addi.w	$a3, $a3, 132
	add.w	$a1, $a2, $a1
	bltu	$a1, $a3, .LBB0_878
# %bb.736:                              # %land.lhs.true1860
	bgeu	$a2, $a3, .LBB0_878
# %bb.737:                              # %if.end1886
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.d	$a0, $s3, $a0
	sub.d	$a0, $a0, $a1
	addi.w	$s3, $a0, 133
	b	.LBB0_872
.LBB0_738:                              # %if.then3757
	pcalau12i	$a0, %pc_hi20(.L.str.196)
	addi.d	$a0, $a0, %pc_lo12(.L.str.196)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_739:                              # %if.then4038
	pcalau12i	$a0, %pc_hi20(.L.str.212)
	addi.d	$a0, $a0, %pc_lo12(.L.str.212)
.LBB0_740:                              # %cleanup4880
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	b	.LBB0_742
.LBB0_741:                              # %if.then4624
	pcalau12i	$a0, %pc_hi20(.L.str.241)
	addi.d	$a0, $a0, %pc_lo12(.L.str.241)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
.LBB0_742:                              # %cleanup4880
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	b	.LBB0_746
.LBB0_743:                              # %sw.bb4145
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB0_815
# %bb.744:                              # %if.then4147
	pcalau12i	$a0, %pc_hi20(.L.str.221)
	addi.d	$a0, $a0, %pc_lo12(.L.str.221)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_816
.LBB0_745:                              # %if.then2258
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a0, $a0, %pc_lo12(.L.str.148)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
.LBB0_746:                              # %cleanup4880
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_747:                              # %sw.default4651
	pcalau12i	$a0, %pc_hi20(.L.str.244)
	addi.d	$a0, $a0, %pc_lo12(.L.str.244)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$s6, $s7
	b	.LBB0_636
.LBB0_748:                              # %if.else3542
	pcalau12i	$a0, %pc_hi20(.L.str.181)
	addi.d	$a0, $a0, %pc_lo12(.L.str.181)
	ori	$a1, $zero, 24
	ori	$a3, $zero, 13
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(upx_inflate2d)
	ld.d	$s4, $a1, %got_pc_lo12(upx_inflate2d)
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.182)
	addi.d	$s5, $a1, %pc_lo12(.L.str.182)
	bnez	$a0, .LBB0_750
# %bb.749:                              # %lor.lhs.false3547
	pcalau12i	$a0, %pc_hi20(.L.str.181)
	addi.d	$a0, $a0, %pc_lo12(.L.str.181)
	ori	$a1, $zero, 24
	ori	$a3, $zero, 13
	addi.d	$a2, $sp, 369
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_880
.LBB0_750:
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	b	.LBB0_546
.LBB0_751:                              # %if.then2861
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_661
.LBB0_752:                              # %if.end3670
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_886
.LBB0_753:                              # %if.then3675
	ld.w	$a4, $s0, 0
	ld.w	$a5, $s6, 0
	addi.d	$a3, $sp, 248
	move	$a0, $s2
	move	$a1, $s8
	move	$a2, $s7
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(upx_inflate2d)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
	bne	$a0, $s3, .LBB0_755
# %bb.754:                              # %land.lhs.true3686
	ld.w	$a4, $s0, 0
	ld.w	$a5, $s6, 0
	addi.d	$a0, $s2, 21
	addi.w	$a1, $s8, -21
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a6, $a2, -21
	addi.d	$a3, $sp, 248
	move	$a2, $s7
	pcaddu18i	$ra, %call36(upx_inflate2d)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB0_885
.LBB0_755:                              # %if.else3701
	pcalau12i	$a0, %pc_hi20(.L.str.191)
	addi.d	$a0, $a0, %pc_lo12(.L.str.191)
	b	.LBB0_694
.LBB0_756:                              # %if.then3201
	addi.w	$a1, $s6, 0
	b	.LBB0_462
.LBB0_757:                              # %sw.default2287
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB0_397
	b	.LBB0_495
.LBB0_758:                              # %if.else3933
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_759:                              # %if.end3934
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_763
# %bb.760:                              # %if.then3940
	bnez	$a0, .LBB0_762
# %bb.761:                              # %if.then3943
	move	$a0, $s6
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_762:                              # %if.end3945
	move	$a0, $s6
	b	.LBB0_236
.LBB0_763:                              # %if.end3946
	bnez	$a0, .LBB0_765
# %bb.764:                              # %if.then3949
	move	$a0, $s6
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_765:                              # %if.end3951
	move	$a0, $s6
	b	.LBB0_645
.LBB0_766:                              # %if.then1809
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_767:                              # %if.end1943
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	b	.LBB0_364
.LBB0_768:                              # %sw.bb4066
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.215)
	addi.d	$a0, $a0, %pc_lo12(.L.str.215)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 40
	andi	$s2, $a0, 256
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB0_517
# %bb.769:                              # %if.then4072
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.216)
	addi.d	$a1, $a1, %pc_lo12(.L.str.216)
	b	.LBB0_204
.LBB0_770:                              # %sw.default4075
	pcalau12i	$a0, %pc_hi20(.L.str.217)
	addi.d	$a0, $a0, %pc_lo12(.L.str.217)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_517
.LBB0_771:                              # %vector.ph2733
	bstrpick.d	$a0, $s7, 31, 4
	slli.d	$a0, $a0, 4
	xvreplgr2vr.w	$xr0, $s6
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 296
	move	$a2, $a0
	xvori.b	$xr1, $xr0, 0
.LBB0_772:                              # %vector.body2738
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, -288
	ld.w	$a4, $a1, -252
	ld.w	$a5, $a1, -216
	ld.w	$a6, $a1, -180
	ld.w	$a7, $a1, -144
	ld.w	$t0, $a1, -108
	ld.w	$t1, $a1, -72
	ld.w	$t2, $a1, -36
	xvinsgr2vr.w	$xr2, $a3, 0
	xvinsgr2vr.w	$xr2, $a4, 1
	xvinsgr2vr.w	$xr2, $a5, 2
	xvinsgr2vr.w	$xr2, $a6, 3
	xvinsgr2vr.w	$xr2, $a7, 4
	xvinsgr2vr.w	$xr2, $t0, 5
	xvinsgr2vr.w	$xr2, $t1, 6
	xvinsgr2vr.w	$xr2, $t2, 7
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a1, 36
	ld.w	$a5, $a1, 72
	ld.w	$a6, $a1, 108
	ld.w	$a7, $a1, 144
	ld.w	$t0, $a1, 180
	ld.w	$t1, $a1, 216
	ld.w	$t2, $a1, 252
	xvinsgr2vr.w	$xr3, $a3, 0
	xvinsgr2vr.w	$xr3, $a4, 1
	xvinsgr2vr.w	$xr3, $a5, 2
	xvinsgr2vr.w	$xr3, $a6, 3
	xvinsgr2vr.w	$xr3, $a7, 4
	xvinsgr2vr.w	$xr3, $t0, 5
	xvinsgr2vr.w	$xr3, $t1, 6
	xvinsgr2vr.w	$xr3, $t2, 7
	xvmin.wu	$xr0, $xr2, $xr0
	xvmin.wu	$xr1, $xr3, $xr1
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 576
	bnez	$a2, .LBB0_772
# %bb.773:                              # %middle.block2742
	xvmin.wu	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmin.wu	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmin.wu	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmin.wu	$xr0, $xr0, $xr1
	xvpickve2gr.w	$s6, $xr0, 0
	beq	$a0, $s7, .LBB0_780
# %bb.774:                              # %vec.epilog.iter.check
	andi	$a1, $s7, 12
	beqz	$a1, .LBB0_778
.LBB0_775:                              # %vec.epilog.ph
	move	$a2, $a0
	bstrpick.d	$a0, $s7, 31, 2
	slli.d	$a0, $a0, 2
	vreplgr2vr.w	$vr0, $s6
	sub.d	$a1, $a2, $a0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 80
.LBB0_776:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, -72
	ld.w	$a4, $a2, -36
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a2, 36
	vinsgr2vr.w	$vr1, $a3, 0
	vinsgr2vr.w	$vr1, $a4, 1
	vinsgr2vr.w	$vr1, $a5, 2
	vinsgr2vr.w	$vr1, $a6, 3
	vmin.wu	$vr0, $vr1, $vr0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 144
	bnez	$a1, .LBB0_776
# %bb.777:                              # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vmin.wu	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmin.wu	$vr0, $vr0, $vr1
	vpickve2gr.w	$s6, $vr0, 0
	beq	$a0, $s7, .LBB0_780
.LBB0_778:                              # %for.body4236.preheader
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	sub.d	$a0, $s7, $a0
.LBB0_779:                              # %for.body4236
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	sltu	$a3, $a2, $s6
	masknez	$a4, $s6, $a3
	maskeqz	$a2, $a2, $a3
	or	$s6, $a2, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 36
	bnez	$a0, .LBB0_779
.LBB0_780:                              # %for.end4249
	ld.d	$a0, $fp, 32
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	add.w	$a1, $a1, $s6
	st.w	$a1, $sp, 248
	beqz	$a0, .LBB0_785
# %bb.781:                              # %land.lhs.true4260
	ld.d	$a2, $a0, 24
	bstrpick.d	$a0, $a1, 31, 0
	beqz	$a2, .LBB0_786
# %bb.782:                              # %land.lhs.true4260
	bgeu	$a2, $a0, .LBB0_786
# %bb.783:                              # %if.then4270
	pcalau12i	$a0, %pc_hi20(.L.str.226)
	addi.d	$a0, $a0, %pc_lo12(.L.str.226)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.784:                              # %if.then4276
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.227)
	addi.d	$a1, $a1, %pc_lo12(.L.str.227)
	b	.LBB0_204
.LBB0_785:                              # %for.end4249.if.end4279_crit_edge
	bstrpick.d	$a0, $a1, 31, 0
.LBB0_786:                              # %if.end4279
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_794
# %bb.787:                              # %if.end4285
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s6, 31, 0
	bne	$a0, $a1, .LBB0_795
# %bb.788:                              # %for.cond4294.preheader
	beqz	$s0, .LBB0_808
# %bb.789:                              # %for.body4299.lr.ph
	move	$s8, $zero
	add.d	$a0, $s2, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$s7, $a0, $a1
	b	.LBB0_791
.LBB0_790:                              # %for.inc4332
                                        #   in Loop: Header=BB0_791 Depth=1
	addi.d	$s8, $s8, 36
	beq	$s4, $s8, .LBB0_808
.LBB0_791:                              # %for.body4299
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$s3, $a0, $s8
	ld.w	$a0, $s3, 12
	beqz	$a0, .LBB0_790
# %bb.792:                              # %if.then4304
                                        #   in Loop: Header=BB0_791 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_796
# %bb.793:                              # %lor.lhs.false4309
                                        #   in Loop: Header=BB0_791 Depth=1
	ld.wu	$a0, $s3, 0
	ld.w	$a2, $s3, 12
	add.d	$a1, $s7, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 12
	beq	$a0, $a1, .LBB0_790
	b	.LBB0_796
.LBB0_794:                              # %if.then4284
	ld.w	$a1, $sp, 248
	pcalau12i	$a0, %pc_hi20(.L.str.228)
	addi.d	$a0, $a0, %pc_lo12(.L.str.228)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_868
.LBB0_795:                              # %if.then4292
	pcalau12i	$a0, %pc_hi20(.L.str.229)
	addi.d	$a0, $a0, %pc_lo12(.L.str.229)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_796:                              # %if.then4329
	move	$a0, $s2
	b	.LBB0_665
.LBB0_797:                              # %if.end3774
	move	$s1, $fp
	bnez	$a0, .LBB0_799
# %bb.798:                              # %if.then3777
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_799:                              # %if.end3779
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB0_133
.LBB0_800:                              # %if.end3231
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_868
# %bb.801:                              # %if.end3237
	move	$a0, $s1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_877
# %bb.802:                              # %for.cond3243.preheader
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -2
	beqz	$a0, .LBB0_884
# %bb.803:                              # %for.body3247.lr.ph
	lu12i.w	$a1, 2
	ori	$a1, $a1, 428
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	move	$s7, $zero
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	ori	$a2, $zero, 2
	lu12i.w	$a3, -2
.LBB0_804:                              # %for.body3247
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $s7, 31, 0
	addi.d	$a5, $s7, 1
	bstrpick.d	$a5, $a5, 31, 0
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ldx.b	$a5, $a6, $a5
	ldx.b	$a4, $a6, $a4
	slli.d	$a5, $a5, 8
	or	$a5, $a5, $a4
	addi.d	$a4, $a5, -1
	bltu	$a4, $a2, .LBB0_891
# %bb.805:                              # %if.end3262
                                        #   in Loop: Header=BB0_804 Depth=1
	ld.w	$a4, $s4, 0
	slli.d	$a5, $a5, 12
	sub.d	$a5, $a5, $a1
	add.w	$a5, $a5, $a3
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a6, $a6, 1
	st.d	$a6, $sp, 184                   # 8-byte Folded Spill
	bltu	$a5, $a4, .LBB0_890
# %bb.806:                              # %lor.lhs.false3273
                                        #   in Loop: Header=BB0_804 Depth=1
	ld.w	$a6, $s4, 4
	sub.w	$a4, $a5, $a4
	bgeu	$a4, $a6, .LBB0_890
# %bb.807:                              # %for.inc3288
                                        #   in Loop: Header=BB0_804 Depth=1
	addi.w	$s7, $s7, 2
	bltu	$s7, $a0, .LBB0_804
	b	.LBB0_891
.LBB0_808:                              # %for.end4334
	ld.wu	$a0, $s5, 12
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_866
# %bb.809:                              # %if.end4350
	move	$s3, $a0
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	ld.w	$a7, $s5, 12
	beqz	$a0, .LBB0_841
# %bb.810:                              # %lor.lhs.false4357
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $a7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a7, $s5, 12
	bstrpick.d	$a1, $a7, 31, 0
	bne	$a0, $a1, .LBB0_841
# %bb.811:                              # %if.end4379
	ld.w	$a1, $sp, 248
	ld.w	$a4, $s5, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 672
	add.d	$a0, $sp, $a0
	ld.w	$a5, $a0, 0
	bstrpick.d	$a0, $s0, 15, 0
	st.d	$a0, $sp, 0
	move	$a0, $s2
	move	$a2, $s6
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(wwunpack)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB0_917
# %bb.812:                              # %if.else4434
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.235)
	addi.d	$a0, $a0, %pc_lo12(.L.str.235)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_529
.LBB0_813:                              # %for.end1513.thread
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 1280
	b	.LBB0_324
.LBB0_814:                              # %if.then1481
	move	$a0, $s4
	b	.LBB0_867
.LBB0_815:                              # %if.else4148
	pcalau12i	$a0, %pc_hi20(.L.str.222)
	addi.d	$a0, $a0, %pc_lo12(.L.str.222)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_816:                              # %if.end4149
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_838
.LBB0_817:                              # %if.then4155
	bnez	$a0, .LBB0_819
.LBB0_818:                              # %if.then4057
	move	$a0, $s5
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_819:                              # %if.end4059
	move	$a0, $s5
	b	.LBB0_236
.LBB0_820:                              # %if.then1830
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a0, $a0, %pc_lo12(.L.str.132)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_657
.LBB0_821:                              # %if.else4632
	pcalau12i	$a0, %pc_hi20(.L.str.243)
	addi.d	$a0, $a0, %pc_lo12(.L.str.243)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_822:                              # %if.end4633
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_933
.LBB0_823:                              # %if.then4639
	bnez	$a0, .LBB0_825
# %bb.824:                              # %if.then1923
	move	$a0, $s7
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_825:                              # %if.end1925
	move	$a0, $s7
	b	.LBB0_236
.LBB0_826:                              # %if.else2268
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a0, $a0, %pc_lo12(.L.str.150)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_827:                              # %if.end2269
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_831
# %bb.828:                              # %if.then2275
	bnez	$a0, .LBB0_830
# %bb.829:                              # %if.then2278
	move	$a0, $s2
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_830:                              # %if.end2280
	move	$a0, $s2
	b	.LBB0_236
.LBB0_831:                              # %if.end2281
	bnez	$a0, .LBB0_833
# %bb.832:                              # %if.then2284
	move	$a0, $s2
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_833:                              # %if.end2286
	move	$a0, $s2
	b	.LBB0_645
.LBB0_834:                              # %if.then2541
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a0, $a0, %pc_lo12(.L.str.159)
	b	.LBB0_707
.LBB0_835:                              # %if.then4811
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_870
.LBB0_836:                              # %if.else4047
	pcalau12i	$a0, %pc_hi20(.L.str.214)
	addi.d	$a0, $a0, %pc_lo12(.L.str.214)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_837:                              # %if.end4048
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 1
	beq	$fp, $a1, .LBB0_817
.LBB0_838:                              # %if.end4161
	bnez	$a0, .LBB0_840
# %bb.839:                              # %if.then4063
	move	$a0, $s5
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_840:                              # %if.end4065
	move	$a0, $s5
	b	.LBB0_645
.LBB0_841:                              # %if.then4373
	pcalau12i	$a0, %pc_hi20(.L.str.230)
	addi.d	$a0, $a0, %pc_lo12(.L.str.230)
	move	$a1, $a7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	b	.LBB0_665
.LBB0_842:                              # %lor.lhs.false2912
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$a0, $a0, %pc_lo12(.L.str.173)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$a0, $s2, $a0
	bnez	$a0, .LBB0_661
.LBB0_843:                              # %if.end2918
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$s0, $a0, 1
	slli.d	$a0, $s0, 5
	alsl.d	$a0, $s0, $a0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_865
# %bb.844:                              # %if.end2926
	move	$s4, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $s4, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_855
# %bb.845:                              # %for.body2932.preheader
	ori	$a0, $zero, 2
	sltu	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a2, $zero, 17
	ori	$a1, $zero, 1
	bltu	$s0, $a2, .LBB0_853
# %bb.846:                              # %vector.scevcheck
	addi.d	$a2, $a0, -2
	bstrpick.d	$a3, $a2, 29, 0
	lu12i.w	$a4, 262143
	ori	$a4, $a4, 4095
	beq	$a3, $a4, .LBB0_853
# %bb.847:                              # %vector.scevcheck
	srli.d	$a2, $a2, 30
	bnez	$a2, .LBB0_853
# %bb.848:                              # %vector.memcheck
	addi.d	$a2, $s4, 36
	ori	$a3, $zero, 36
	mul.d	$a3, $a0, $a3
	add.d	$a3, $s4, $a3
	addi.d	$a3, $a3, -32
	lu12i.w	$a4, 2
	ori	$a4, $a4, 432
	add.d	$a4, $sp, $a4
	sltu	$a4, $a2, $a4
	lu12i.w	$a5, 2
	ori	$a5, $a5, 428
	add.d	$a5, $sp, $a5
	sltu	$a5, $a5, $a3
	and	$a4, $a4, $a5
	bnez	$a4, .LBB0_853
# %bb.849:                              # %vector.memcheck
	addi.d	$a4, $s2, 12
	alsl.d	$a5, $a0, $s2, 2
	addi.d	$a5, $a5, 8
	sltu	$a2, $a2, $a5
	sltu	$a3, $a4, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB0_853
# %bb.850:                              # %vector.ph
	addi.d	$a2, $a0, -1
	move	$a4, $zero
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a1, $a2
	bstrins.d	$a1, $a5, 2, 0
	slli.d	$a5, $a2, 2
	bstrins.d	$a5, $zero, 4, 0
	addi.d	$a6, $s4, 144
	addi.w	$a7, $zero, -28
	lu32i.d	$a7, 0
	xvrepli.b	$xr0, -1
.LBB0_851:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	lu12i.w	$t0, 2
	ori	$t0, $t0, 428
	add.d	$t0, $sp, $t0
	vld	$vr1, $t0, 0
	addi.d	$t0, $a4, 4
	and	$t0, $t0, $a7
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	xvldx	$xr2, $t1, $t0
	xvxor.v	$xr1, $xr1, $xr0
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.w	$xr1, $xr1, 0
	xvadd.w	$xr1, $xr2, $xr1
	xvstelm.w	$xr1, $a6, -108, 0
	xvstelm.w	$xr1, $a6, -72, 1
	xvstelm.w	$xr1, $a6, -36, 2
	xvstelm.w	$xr1, $a6, 0, 3
	xvstelm.w	$xr1, $a6, 36, 4
	xvstelm.w	$xr1, $a6, 72, 5
	xvstelm.w	$xr1, $a6, 108, 6
	xvstelm.w	$xr1, $a6, 144, 7
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, 288
	bne	$a5, $a4, .LBB0_851
# %bb.852:                              # %middle.block
	beq	$a2, $a3, .LBB0_855
.LBB0_853:                              # %for.body2932.preheader2798
	slli.d	$a2, $a1, 2
	slli.d	$a3, $a1, 5
	alsl.d	$a3, $a1, $a3, 2
	add.d	$a3, $s4, $a3
	sub.d	$a0, $a0, $a1
.LBB0_854:                              # %for.body2932
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a1, $a2, 31, 2
	slli.d	$a1, $a1, 2
	lu12i.w	$a4, 2
	ori	$a4, $a4, 428
	add.d	$a4, $sp, $a4
	ld.w	$a4, $a4, 0
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a1, $a5, $a1
	nor	$a4, $a4, $zero
	add.d	$a1, $a1, $a4
	st.w	$a1, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 36
	bnez	$a0, .LBB0_854
.LBB0_855:                              # %for.end2946
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_908
# %bb.856:                              # %if.end2952
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_911
# %bb.857:                              # %lor.lhs.false2958
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_911
# %bb.858:                              # %if.end2963
	ld.wu	$a0, $sp, 248
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_939
# %bb.859:                              # %if.end2969
	move	$s7, $a0
	ld.w	$a0, $sp, 419
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.w	$s3, $a0, 167
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_944
# %bb.860:                              # %if.end2979
	move	$s0, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB0_946
# %bb.861:                              # %if.end2984
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a2, 31, 0
	ld.wu	$a1, $s6, 0
	add.d	$a0, $s2, $a0
	ld.w	$a3, $sp, 248
	lu12i.w	$a4, 2
	ori	$a4, $a4, 428
	add.d	$a4, $sp, $a4
	ld.w	$a6, $a4, 0
	sub.d	$a0, $a0, $a1
	sub.d	$a2, $s5, $a2
	add.w	$a2, $a2, $a1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $sp, 0
	move	$a1, $s7
	move	$a4, $s4
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	move	$a7, $s3
	pcaddu18i	$ra, %call36(unfsg_133)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_963
# %bb.862:                              # %if.end2984
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_965
# %bb.863:                              # %sw.bb3002
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s1, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB0_970
# %bb.864:                              # %if.then3004
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_971
.LBB0_865:                              # %if.then2644
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	b	.LBB0_137
.LBB0_866:                              # %if.then4344
	ld.w	$a1, $s5, 12
	pcalau12i	$a0, %pc_hi20(.L.str.228)
	addi.d	$a0, $a0, %pc_lo12(.L.str.228)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB0_867:                              # %if.then1391
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_868:                              # %if.then1391
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_137
.LBB0_869:
	move	$s5, $s6
.LBB0_870:                              # %cleanup4869.thread.sink.split
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_644
.LBB0_871:
	move	$s3, $zero
.LBB0_872:                              # %if.end1896
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_922
# %bb.873:                              # %if.end1900
	move	$s7, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	bge	$a0, $s6, .LBB0_916
# %bb.874:                              # %if.end1905
	ld.w	$a4, $sp, 248
	lu12i.w	$a0, 2
	ori	$a0, $a0, 428
	add.d	$a0, $sp, $a0
	ld.w	$a5, $a0, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a6, $a0, 0
	st.d	$s6, $sp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0
	move	$a0, $s8
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(unmew11)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	bne	$a0, $s0, .LBB0_924
# %bb.875:                              # %sw.bb1910
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB0_931
# %bb.876:                              # %if.then1912
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a0, $a0, %pc_lo12(.L.str.136)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_932
.LBB0_877:                              # %if.then3241
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$a0, $a0, %pc_lo12(.L.str.170)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_667
.LBB0_878:                              # %if.then1885
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_767
.LBB0_879:                              # %if.then2561
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a0, $a0, %pc_lo12(.L.str.160)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_714
.LBB0_880:                              # %if.else3554
	pcalau12i	$a0, %pc_hi20(.L.str.183)
	addi.d	$a0, $a0, %pc_lo12(.L.str.183)
	ori	$a1, $zero, 24
	ori	$a3, $zero, 13
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(upx_inflate2e)
	ld.d	$s4, $a1, %got_pc_lo12(upx_inflate2e)
	pcalau12i	$a1, %pc_hi20(.L.str.184)
	addi.d	$s5, $a1, %pc_lo12(.L.str.184)
	beqz	$a0, .LBB0_913
# %bb.881:
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	b	.LBB0_915
.LBB0_882:                              # %if.then3667
	pcalau12i	$a0, %pc_hi20(.L.str.188)
	addi.d	$a0, $a0, %pc_lo12(.L.str.188)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_753
	b	.LBB0_886
.LBB0_883:                              # %if.then2584
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a0, $a0, %pc_lo12(.L.str.161)
	b	.LBB0_707
.LBB0_884:
	move	$s7, $zero
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	b	.LBB0_891
.LBB0_885:                              # %if.then3700
	pcalau12i	$a0, %pc_hi20(.L.str.190)
	addi.d	$a0, $a0, %pc_lo12(.L.str.190)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_886:                              # %if.end3703
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_926
# %bb.887:                              # %if.then3708
	ld.w	$a4, $s0, 0
	ld.w	$a5, $s6, 0
	addi.d	$a3, $sp, 248
	move	$a0, $s2
	move	$a1, $s8
	move	$a2, $s7
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(upx_inflate2e)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
	bne	$a0, $s3, .LBB0_889
# %bb.888:                              # %land.lhs.true3719
	ld.w	$a4, $s0, 0
	ld.w	$a5, $s6, 0
	addi.d	$a0, $s2, 21
	addi.w	$a1, $s8, -21
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a6, $a2, -21
	addi.d	$a3, $sp, 248
	move	$a2, $s7
	pcaddu18i	$ra, %call36(upx_inflate2e)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB0_925
.LBB0_889:                              # %if.else3734
	pcalau12i	$a0, %pc_hi20(.L.str.193)
	addi.d	$a0, $a0, %pc_lo12(.L.str.193)
	b	.LBB0_694
.LBB0_890:                              # %if.then3283
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$a0, $a0, %pc_lo12(.L.str.173)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_891:                              # %for.end3290
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -10
	bgeu	$s7, $a0, .LBB0_906
# %bb.892:                              # %lor.lhs.false3294
	bstrpick.d	$a0, $s7, 31, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_906
# %bb.893:                              # %if.end3302
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_930
# %bb.894:                              # %if.end3310
	move	$s4, $a0
	move	$a0, $zero
	st.w	$s2, $s4, 0
	ori	$a1, $zero, 1
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a4
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 2
	lu12i.w	$a3, -2
.LBB0_895:                              # %for.body3317
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	bstrpick.d	$a5, $a1, 31, 0
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ldx.b	$a5, $a6, $a5
	ldx.b	$a4, $a6, $a4
	lu12i.w	$a6, 2
	ori	$a6, $a6, 428
	add.d	$a6, $sp, $a6
	ld.w	$a6, $a6, 0
	slli.d	$a5, $a5, 20
	slli.d	$a4, $a4, 12
	or	$a4, $a5, $a4
	sub.d	$a4, $a4, $a6
	add.d	$a4, $a4, $a3
	add.d	$a5, $s4, $a0
	st.w	$a4, $a5, 36
	addi.d	$a0, $a0, 36
	addi.w	$a1, $a1, 2
	bne	$a2, $a0, .LBB0_895
# %bb.896:                              # %for.end3339
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_908
# %bb.897:                              # %if.end3345
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_938
# %bb.898:                              # %lor.lhs.false3351
	move	$a0, $s1
	move	$a1, $s2
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_938
# %bb.899:                              # %if.end3356
	ld.wu	$a0, $sp, 248
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_939
# %bb.900:                              # %if.end3362
	move	$s7, $a0
	ld.bu	$a0, $sp, 272
	addi.d	$a0, $a0, -232
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 218
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 224
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a1, $s2, $a0
	bstrpick.d	$a2, $s3, 31, 0
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	addi.w	$s3, $a0, 6
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_944
# %bb.901:                              # %if.end3381
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB0_969
# %bb.902:                              # %if.end3386
	bstrpick.d	$a0, $s0, 31, 0
	ld.wu	$a1, $s5, 0
	add.d	$a0, $s2, $a0
	ld.w	$a3, $sp, 248
	lu12i.w	$a2, 2
	ori	$a2, $a2, 428
	add.d	$a2, $sp, $a2
	ld.w	$a6, $a2, 0
	sub.d	$a0, $a0, $a1
	sub.d	$a2, $s6, $s0
	add.w	$a2, $a2, $a1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $sp, 0
	move	$a1, $s7
	move	$a4, $s4
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	move	$a7, $s3
	pcaddu18i	$ra, %call36(unfsg_133)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_977
# %bb.903:                              # %if.end3386
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_978
# %bb.904:                              # %sw.bb3404
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB0_979
# %bb.905:                              # %if.then3406
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_980
.LBB0_906:                              # %if.then3301
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
.LBB0_907:                              # %land.lhs.true3444
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_494
.LBB0_908:                              # %if.then2951
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
.LBB0_909:                              # %cleanup4880
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB0_137
.LBB0_910:                              # %if.then2627
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a0, $a0, %pc_lo12(.L.str.162)
	b	.LBB0_707
.LBB0_911:                              # %if.then2962
	addi.w	$a1, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a0, $a0, %pc_lo12(.L.str.156)
.LBB0_912:                              # %cleanup4880
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB0_658
.LBB0_913:                              # %lor.lhs.false3559
	pcalau12i	$a0, %pc_hi20(.L.str.183)
	addi.d	$a0, $a0, %pc_lo12(.L.str.183)
	ori	$a1, $zero, 24
	ori	$a3, $zero, 13
	addi.d	$a2, $sp, 369
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_929
# %bb.914:
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
.LBB0_915:                              # %if.then3570
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	b	.LBB0_547
.LBB0_916:                              # %if.then1904
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	b	.LBB0_705
.LBB0_917:                              # %if.then4395
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_922
# %bb.918:                              # %if.end4399
	move	$s5, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB0_940
# %bb.919:                              # %if.end4404
	move	$s3, $a0
	ld.wu	$a2, $sp, 248
	move	$a1, $s2
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 248
	addi.w	$a0, $a0, 0
	bne	$a1, $a0, .LBB0_941
# %bb.920:                              # %if.end4412
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB0_948
# %bb.921:                              # %if.then4414
	pcalau12i	$a0, %pc_hi20(.L.str.233)
	addi.d	$a0, $a0, %pc_lo12(.L.str.233)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_949
.LBB0_922:                              # %if.then1899
	move	$a0, $s2
.LBB0_923:                              # %cleanup4880
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_133
.LBB0_924:                              # %sw.default1932
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_364
.LBB0_925:                              # %if.then3733
	pcalau12i	$a0, %pc_hi20(.L.str.192)
	addi.d	$a0, $a0, %pc_lo12(.L.str.192)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_926:                              # %if.then3738
	pcalau12i	$a0, %pc_hi20(.L.str.194)
	addi.d	$a0, $a0, %pc_lo12(.L.str.194)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_495
.LBB0_927:                              # %if.then4832
	move	$a0, $s5
	move	$a1, $s6
.LBB0_928:                              # %cleanup4880
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_133
.LBB0_929:
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	b	.LBB0_553
.LBB0_930:                              # %if.then3309
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_137
.LBB0_931:                              # %if.else1913
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_932:                              # %if.end1914
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 1
	beq	$fp, $a1, .LBB0_823
.LBB0_933:                              # %if.end4645
	bnez	$a0, .LBB0_935
# %bb.934:                              # %if.then1929
	move	$a0, $s7
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_935:                              # %if.end1931
	move	$a0, $s7
	b	.LBB0_645
.LBB0_936:                              # %if.then4837
	pcalau12i	$a0, %pc_hi20(.L.str.250)
	addi.d	$a0, $a0, %pc_lo12(.L.str.250)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s6
.LBB0_937:                              # %cleanup4880
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_938:                              # %if.then3355
	addi.w	$a1, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	b	.LBB0_912
.LBB0_939:                              # %if.then2968
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	b	.LBB0_909
.LBB0_940:                              # %if.then4403
	pcalau12i	$a0, %pc_hi20(.L.str.231)
	addi.d	$a0, $a0, %pc_lo12(.L.str.231)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	b	.LBB0_705
.LBB0_941:                              # %if.then4410
	pcalau12i	$a0, %pc_hi20(.L.str.232)
	addi.d	$a0, $a0, %pc_lo12(.L.str.232)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_796
.LBB0_942:                              # %sw.bb4843
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB0_954
# %bb.943:                              # %if.then4845
	pcalau12i	$a0, %pc_hi20(.L.str.251)
	addi.d	$a0, $a0, %pc_lo12(.L.str.251)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_955
.LBB0_944:                              # %if.then2978
	move	$a0, $s2
	move	$a1, $s7
	move	$a2, $s4
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_133
.LBB0_945:                              # %if.then2648
	move	$a0, $s2
	move	$a1, $s7
	b	.LBB0_928
.LBB0_946:                              # %if.then2983
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB0_947:                              # %cleanup4880
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s7
	move	$a2, $s4
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_948:                              # %if.else4415
	pcalau12i	$a0, %pc_hi20(.L.str.234)
	addi.d	$a0, $a0, %pc_lo12(.L.str.234)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_949:                              # %if.end4416
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_951
# %bb.950:                              # %if.then4422
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	bnez	$a0, .LBB0_819
	b	.LBB0_818
.LBB0_951:                              # %if.end4428
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	bnez	$a0, .LBB0_953
# %bb.952:                              # %if.then4431
	move	$a0, $s5
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_953:                              # %if.end4433
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_529
.LBB0_954:                              # %if.else4846
	pcalau12i	$a0, %pc_hi20(.L.str.252)
	addi.d	$a0, $a0, %pc_lo12(.L.str.252)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_955:                              # %if.end4847
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_959
# %bb.956:                              # %if.then4853
	bnez	$a0, .LBB0_958
# %bb.957:                              # %if.then4856
	move	$a0, $s1
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_958:                              # %if.end4858
	move	$a0, $s1
	b	.LBB0_236
.LBB0_959:                              # %if.end4859
	bnez	$a0, .LBB0_961
# %bb.960:                              # %if.then4862
	move	$a0, $s1
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_961:                              # %if.end4864
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_962:                              # %if.then2653
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s7
	b	.LBB0_937
.LBB0_963:                              # %sw.bb3024
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB0_964:                              # %if.then3742
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB0_967
.LBB0_965:                              # %sw.default3027
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s7
	move	$a2, $s4
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB0_662
.LBB0_966:                              # %sw.bb2692
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB0_967:                              # %if.then3742
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_695
.LBB0_968:                              # %sw.default2695
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s7
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB0_715
.LBB0_969:                              # %if.then3385
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB0_947
.LBB0_970:                              # %if.else3005
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a0, $a0, %pc_lo12(.L.str.166)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_971:                              # %if.end3006
	move	$a0, $s2
	move	$a1, $s7
	move	$a2, $s4
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 1
	beq	$fp, $a1, .LBB0_701
# %bb.972:                              # %if.end3018
	bnez	$a0, .LBB0_974
# %bb.973:                              # %if.then3021
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_974:                              # %if.end3023
	move	$a0, $s0
	b	.LBB0_645
.LBB0_975:                              # %if.else2673
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a0, $a0, %pc_lo12(.L.str.166)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_976:                              # %if.end2674
	move	$a0, $s2
	move	$a1, $s7
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	b	.LBB0_981
.LBB0_977:                              # %sw.bb3426
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_964
.LBB0_978:                              # %sw.default3429
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s7
	move	$a2, $s4
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB0_907
.LBB0_979:                              # %if.else3407
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a0, $a0, %pc_lo12(.L.str.166)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_980:                              # %if.end3408
	move	$a0, $s2
	move	$a1, $s7
	move	$a2, $s4
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
.LBB0_981:                              # %if.end2674
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_985
# %bb.982:                              # %if.then2680
	bnez	$a0, .LBB0_984
# %bb.983:                              # %if.then2683
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_984:                              # %if.end2685
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_236
.LBB0_985:                              # %if.end2686
	bnez	$a0, .LBB0_987
# %bb.986:                              # %if.then2689
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_987:                              # %if.end2691
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_645
.Lfunc_end0:
	.size	cli_scanpe, .Lfunc_end0-cli_scanpe
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_58-.LJTI0_0
	.word	.LBB0_56-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_54-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_57-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_55-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_53-.LJTI0_0
	.word	.LBB0_59-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_52-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_63-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_61-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_50-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_65-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_98-.LJTI0_1
	.word	.LBB0_104-.LJTI0_1
	.word	.LBB0_103-.LJTI0_1
	.word	.LBB0_102-.LJTI0_1
	.word	.LBB0_109-.LJTI0_1
	.word	.LBB0_100-.LJTI0_1
	.word	.LBB0_109-.LJTI0_1
	.word	.LBB0_101-.LJTI0_1
	.word	.LBB0_105-.LJTI0_1
	.word	.LBB0_106-.LJTI0_1
	.word	.LBB0_108-.LJTI0_1
	.word	.LBB0_107-.LJTI0_1
	.word	.LBB0_99-.LJTI0_1
.LJTI0_2:
	.word	.LBB0_242-.LJTI0_2
	.word	.LBB0_250-.LJTI0_2
	.word	.LBB0_253-.LJTI0_2
	.word	.LBB0_242-.LJTI0_2
	.word	.LBB0_261-.LJTI0_2
	.word	.LBB0_262-.LJTI0_2
	.word	.LBB0_265-.LJTI0_2
	.word	.LBB0_256-.LJTI0_2
.LJTI0_3:
	.word	.LBB0_247-.LJTI0_3
	.word	.LBB0_247-.LJTI0_3
	.word	.LBB0_247-.LJTI0_3
	.word	.LBB0_247-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_247-.LJTI0_3
	.word	.LBB0_247-.LJTI0_3
	.word	.LBB0_247-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_270-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_244-.LJTI0_3
	.word	.LBB0_244-.LJTI0_3
	.word	.LBB0_244-.LJTI0_3
	.word	.LBB0_244-.LJTI0_3
	.word	.LBB0_238-.LJTI0_3
	.word	.LBB0_244-.LJTI0_3
	.word	.LBB0_244-.LJTI0_3
	.word	.LBB0_244-.LJTI0_3
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function cli_md5sect
	.type	cli_md5sect,@function
cli_md5sect:                            # @cli_md5sect
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a1, $a1, 12
	lu12i.w	$a3, 45056
	ori	$a3, $a3, 1
	bltu	$a1, $a3, .LBB1_5
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.256)
	addi.d	$a0, $a0, %pc_lo12(.L.str.256)
.LBB1_2:                                # %cleanup
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %cleanup
	move	$a0, $zero
.LBB1_4:                                # %cleanup
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB1_5:                                # %if.end
	beqz	$a1, .LBB1_3
# %bb.6:                                # %if.end.i
	move	$fp, $a2
	ld.wu	$a1, $s0, 8
	move	$s2, $a0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB1_10
# %bb.7:                                # %if.end2
	ld.wu	$a0, $s0, 12
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_11
# %bb.8:                                # %if.end7
	move	$s1, $a0
	ld.w	$a2, $s0, 12
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	bne	$a0, $a1, .LBB1_12
# %bb.9:                                # %if.end14
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(cli_md5_init)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $s0, 12
	addi.d	$a0, $sp, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_md5_update)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_md5_final)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB1_4
.LBB1_10:                               # %cli_seeksect.exit.thread11
	pcalau12i	$a0, %pc_hi20(.L.str.259)
	addi.d	$a0, $a0, %pc_lo12(.L.str.259)
	b	.LBB1_2
.LBB1_11:                               # %if.then6
	pcalau12i	$a0, %pc_hi20(.L.str.257)
	addi.d	$a0, $a0, %pc_lo12(.L.str.257)
	b	.LBB1_2
.LBB1_12:                               # %if.then13
	pcalau12i	$a0, %pc_hi20(.L.str.258)
	addi.d	$a0, $a0, %pc_lo12(.L.str.258)
	b	.LBB1_2
.Lfunc_end1:
	.size	cli_md5sect, .Lfunc_end1-cli_md5sect
                                        # -- End function
	.p2align	5                               # -- Begin function cli_rawaddr
	.type	cli_rawaddr,@function
cli_rawaddr:                            # @cli_rawaddr
# %bb.0:                                # %entry
	bgeu	$a0, $a5, .LBB2_2
# %bb.1:                                # %if.then
	bstrpick.d	$a1, $a0, 31, 0
	sltu	$a1, $a1, $a4
	xori	$a4, $a1, 1
	masknez	$a0, $a0, $a4
	st.w	$a4, $a3, 0
	ret
.LBB2_2:                                # %if.end4
	ori	$a4, $zero, 1
	beqz	$a2, .LBB2_9
# %bb.3:                                # %for.body.preheader
	addi.d	$a5, $a2, 1
	slli.d	$a6, $a2, 5
	alsl.d	$a2, $a2, $a6, 2
	add.d	$a2, $a2, $a1
	addi.d	$a2, $a2, -36
	ori	$a6, $zero, 2
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, -36
	bltu	$a5, $a6, .LBB2_9
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a2, 12
	beqz	$a7, .LBB2_4
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$t0, $a2, 0
	bltu	$a0, $t0, .LBB2_4
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.w	$t0, $a0, $t0
	bgeu	$t0, $a7, .LBB2_4
# %bb.8:                                # %if.end27
	addi.d	$a2, $a5, -2
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a4, $a2, 5
	alsl.d	$a2, $a2, $a4, 2
	add.d	$a4, $a1, $a2
	ldx.w	$a1, $a1, $a2
	ld.w	$a2, $a4, 8
	sub.d	$a0, $a0, $a1
	add.w	$a0, $a0, $a2
	st.w	$zero, $a3, 0
	ret
.LBB2_9:
	move	$a0, $zero
	st.w	$a4, $a3, 0
	ret
.Lfunc_end2:
	.size	cli_rawaddr, .Lfunc_end2-cli_rawaddr
                                        # -- End function
	.p2align	5                               # -- Begin function cli_seeksect
	.type	cli_seeksect,@function
cli_seeksect:                           # @cli_seeksect
# %bb.0:                                # %entry
	ld.w	$a2, $a1, 12
	beqz	$a2, .LBB3_4
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.wu	$a1, $a1, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$fp, $a0
	bne	$a0, $a1, .LBB3_3
# %bb.2:                                # %if.then2
	pcalau12i	$a0, %pc_hi20(.L.str.259)
	addi.d	$a0, $a0, %pc_lo12(.L.str.259)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB3_3:                                # %if.end3
	addi.d	$a0, $fp, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB3_4:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	cli_seeksect, .Lfunc_end3-cli_seeksect
                                        # -- End function
	.p2align	5                               # -- Begin function cli_multifree
	.type	cli_multifree,@function
cli_multifree:                          # @cli_multifree
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 88
	st.d	$a6, $sp, 80
	st.d	$a5, $sp, 72
	st.d	$a4, $sp, 64
	st.d	$a3, $sp, 56
	st.d	$a2, $sp, 48
	st.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB4_2
	.p2align	4, , 16
.LBB4_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 16
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB4_1
.LBB4_2:                                # %while.end
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end4:
	.size	cli_multifree, .Lfunc_end4-cli_multifree
                                        # -- End function
	.globl	cli_peheader                    # -- Begin function cli_peheader
	.p2align	5
	.type	cli_peheader,@function
cli_peheader:                           # @cli_peheader
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.254)
	addi.d	$a0, $a0, %pc_lo12(.L.str.254)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	addi.w	$fp, $zero, -1
	beq	$a0, $fp, .LBB5_12
# %bb.1:                                # %if.end
	ld.d	$s4, $sp, 64
	ld.d	$s5, $s0, 8
	addi.d	$a1, $sp, 414
	ori	$a2, $zero, 2
	ori	$s1, $zero, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB5_13
# %bb.2:                                # %if.end5
	ld.hu	$a0, $sp, 414
	lu12i.w	$s1, 4
	ori	$a1, $s1, 3418
	beq	$a0, $a1, .LBB5_4
# %bb.3:                                # %if.end5
	lu12i.w	$a1, 5
	ori	$a1, $a1, 2637
	bne	$a0, $a1, .LBB5_15
.LBB5_4:                                # %if.end13
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 4
	ori	$s2, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB5_14
# %bb.5:                                # %if.end20
	ld.wu	$a0, $sp, 408
	beqz	$a0, .LBB5_16
# %bb.6:                                # %if.end22
	ld.d	$a1, $s0, 8
	add.d	$a1, $a1, $a0
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$fp, $zero, -1
	bge	$fp, $a0, .LBB5_17
# %bb.7:                                # %if.end29
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 24
	ori	$s2, $zero, 24
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB5_18
# %bb.8:                                # %if.end35
	ld.w	$a0, $sp, 384
	ori	$a1, $s1, 1360
	bne	$a0, $a1, .LBB5_19
# %bb.9:                                # %if.end39
	ld.hu	$a0, $sp, 390
	addi.d	$a1, $a0, -97
	addi.w	$a2, $zero, -96
	st.h	$a0, $s0, 4
	bltu	$a1, $a2, .LBB5_21
# %bb.10:                               # %if.end48
	ld.hu	$a0, $sp, 404
	ori	$a1, $zero, 223
	bltu	$a1, $a0, .LBB5_22
# %bb.11:                               # %if.then52
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	b	.LBB5_20
.LBB5_12:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	b	.LBB5_20
.LBB5_13:                               # %if.then4
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB5_20
.LBB5_14:                               # %if.then19
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB5_20
.LBB5_15:                               # %if.then12
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	b	.LBB5_20
.LBB5_16:                               # %if.then21
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	b	.LBB5_20
.LBB5_17:                               # %if.then28
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB5_20
.LBB5_18:                               # %if.then34
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	b	.LBB5_20
.LBB5_19:                               # %if.then38
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
.LBB5_20:                               # %cleanup
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %cleanup
	move	$a0, $fp
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.LBB5_22:                               # %if.end53
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 224
	ori	$s1, $zero, 224
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB5_26
# %bb.23:                               # %if.end59
	ld.hu	$a1, $sp, 144
	ld.hu	$a0, $sp, 404
	ori	$a2, $zero, 523
	bne	$a1, $a2, .LBB5_27
# %bb.24:                               # %if.then64
	ori	$a1, $zero, 240
	bne	$a0, $a1, .LBB5_61
# %bb.25:                               # %if.end70
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 16
	ori	$s1, $zero, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB5_29
.LBB5_26:                               # %if.then58
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	b	.LBB5_20
.LBB5_27:                               # %if.else
	ori	$a1, $zero, 224
	beq	$a0, $a1, .LBB5_29
# %bb.28:                               # %if.then81
	addi.d	$a1, $a0, -224
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB5_29:                               # %if.end88
	ld.w	$s6, $sp, 176
	ld.w	$s2, $sp, 204
	beqz	$s6, .LBB5_31
# %bb.30:                               # %cond.true98
	div.wu	$a0, $s2, $s6
	mul.d	$a1, $a0, $s6
	sub.w	$a1, $s2, $a1
	sltu	$a1, $zero, $a1
	add.d	$a0, $a0, $a1
	mul.w	$s2, $a0, $s6
.LBB5_31:                               # %cond.end103
	ld.w	$s7, $sp, 180
	ld.hu	$a0, $s0, 4
	ori	$a1, $zero, 36
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	beqz	$a0, .LBB5_62
# %bb.32:                               # %if.end111
	ld.hu	$a0, $s0, 4
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_63
# %bb.33:                               # %if.end119
	move	$s1, $a0
	ld.hu	$a0, $s0, 4
	slli.d	$a1, $a0, 5
	alsl.d	$a2, $a0, $a1, 3
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.hu	$a2, $s0, 4
	slli.d	$a1, $a2, 5
	alsl.d	$a3, $a2, $a1, 3
	bne	$a3, $a0, .LBB5_64
# %bb.34:                               # %for.cond.preheader
	ori	$a0, $zero, 512
	beq	$s7, $a0, .LBB5_43
# %bb.35:                               # %for.cond.preheader
	beqz	$a2, .LBB5_43
# %bb.36:                               # %for.body.preheader
	addi.d	$a0, $s1, 20
	ori	$a5, $zero, 1
	ori	$a3, $zero, 512
.LBB5_37:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a5
	beqz	$s7, .LBB5_40
# %bb.38:                               # %land.lhs.true142
                                        #   in Loop: Header=BB5_37 Depth=1
	ld.w	$a5, $a0, -4
	beqz	$a5, .LBB5_41
# %bb.39:                               # %land.lhs.true144
                                        #   in Loop: Header=BB5_37 Depth=1
	ld.w	$a5, $a0, 0
	mod.wu	$a6, $a5, $s7
	sltu	$a6, $zero, $a6
	andi	$a5, $a5, 511
	sltui	$a5, $a5, 1
	masknez	$a7, $s7, $a5
	maskeqz	$a5, $a3, $a5
	or	$a5, $a5, $a7
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s7, $a6
	or	$s7, $a5, $a6
	b	.LBB5_41
.LBB5_40:                               #   in Loop: Header=BB5_37 Depth=1
	move	$s7, $zero
.LBB5_41:                               # %for.inc
                                        #   in Loop: Header=BB5_37 Depth=1
	beq	$s7, $a3, .LBB5_43
# %bb.42:                               # %for.inc
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $a0, 40
	addi.d	$a5, $a4, 1
	bltu	$a4, $a2, .LBB5_37
.LBB5_43:                               # %for.cond157.preheader
	sub.d	$a4, $s4, $s5
	beqz	$a2, .LBB5_65
# %bb.44:                               # %for.body162.lr.ph
	move	$a0, $zero
	move	$a3, $zero
	alsl.d	$a5, $a2, $a1, 2
	addi.d	$a6, $s1, 12
	addi.w	$a7, $a4, 0
	b	.LBB5_47
.LBB5_45:                               # %if.then333
                                        #   in Loop: Header=BB5_47 Depth=1
	sub.d	$t1, $a4, $t1
	sltu	$t2, $a4, $t1
	masknez	$t1, $t1, $t2
	st.w	$t1, $t0, 12
.LBB5_46:                               # %for.inc355
                                        #   in Loop: Header=BB5_47 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 36
	addi.d	$a6, $a6, 40
	beq	$a5, $a0, .LBB5_66
.LBB5_47:                               # %for.body162
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a6, 0
	beqz	$s6, .LBB5_49
# %bb.48:                               # %cond.true179
                                        #   in Loop: Header=BB5_47 Depth=1
	ld.d	$a1, $s0, 16
	mod.wu	$t0, $t1, $s6
	ld.w	$t2, $a6, -4
	sub.d	$t1, $t1, $t0
	add.d	$t0, $a1, $a0
	stx.w	$t1, $a1, $a0
	div.wu	$t1, $t2, $s6
	mul.d	$t3, $t1, $s6
	sub.w	$t2, $t2, $t3
	sltu	$t2, $zero, $t2
	add.d	$t1, $t1, $t2
	mul.d	$t2, $t1, $s6
	b	.LBB5_50
.LBB5_49:                               # %cond.false191
                                        #   in Loop: Header=BB5_47 Depth=1
	ld.d	$a1, $s0, 16
	slli.d	$t0, $a3, 5
	ld.w	$t2, $a6, -4
	alsl.d	$t0, $a3, $t0, 2
	add.d	$t0, $a1, $t0
	stx.w	$t1, $a1, $a0
.LBB5_50:                               # %cond.end195
                                        #   in Loop: Header=BB5_47 Depth=1
	ld.w	$t3, $a6, 8
	add.d	$t1, $a1, $a0
	st.w	$t2, $t1, 4
	beqz	$s7, .LBB5_52
# %bb.51:                               # %cond.true217
                                        #   in Loop: Header=BB5_47 Depth=1
	ld.w	$t2, $a6, 4
	mod.wu	$t4, $t3, $s7
	sub.d	$t3, $t3, $t4
	div.wu	$t4, $t2, $s7
	mul.d	$t5, $t4, $s7
	sub.w	$t5, $t2, $t5
	sltu	$t5, $zero, $t5
	add.d	$t4, $t4, $t5
	mul.d	$t4, $t4, $s7
	b	.LBB5_53
.LBB5_52:                               # %cond.false230
                                        #   in Loop: Header=BB5_47 Depth=1
	ld.w	$t2, $a6, 4
	move	$t4, $t2
.LBB5_53:                               # %cond.end234
                                        #   in Loop: Header=BB5_47 Depth=1
	st.w	$t4, $t1, 12
	ld.w	$t5, $t0, 4
	ld.w	$t4, $t0, 12
	st.w	$t3, $t1, 8
	beqz	$t5, .LBB5_55
# %bb.54:                               # %if.end275
                                        #   in Loop: Header=BB5_47 Depth=1
	bnez	$t4, .LBB5_59
	b	.LBB5_46
.LBB5_55:                               # %land.lhs.true244
                                        #   in Loop: Header=BB5_47 Depth=1
	beqz	$t4, .LBB5_46
# %bb.56:                               # %if.then250
                                        #   in Loop: Header=BB5_47 Depth=1
	beqz	$s6, .LBB5_58
# %bb.57:                               # %cond.true252
                                        #   in Loop: Header=BB5_47 Depth=1
	div.wu	$t3, $t2, $s6
	mul.d	$t5, $t3, $s6
	sub.w	$t2, $t2, $t5
	sltu	$t2, $zero, $t2
	add.d	$t2, $t3, $t2
	mul.d	$t2, $t2, $s6
.LBB5_58:                               # %if.end275.thread171
                                        #   in Loop: Header=BB5_47 Depth=1
	st.w	$t2, $t1, 4
.LBB5_59:                               # %land.lhs.true281
                                        #   in Loop: Header=BB5_47 Depth=1
	ld.wu	$t1, $t0, 8
	bltu	$a7, $t4, .LBB5_45
# %bb.60:                               # %land.lhs.true307
                                        #   in Loop: Header=BB5_47 Depth=1
	add.d	$t2, $t4, $t1
	addi.w	$t2, $t2, -1
	bgeu	$t2, $a7, .LBB5_45
	b	.LBB5_46
.LBB5_61:                               # %if.then69
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	b	.LBB5_20
.LBB5_62:                               # %if.then110
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	b	.LBB5_20
.LBB5_63:                               # %if.then116
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB5_70
.LBB5_64:                               # %if.then131
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	b	.LBB5_69
.LBB5_65:                               # %for.cond157.preheader.for.end357_crit_edge
	ld.d	$a1, $s0, 16
.LBB5_66:                               # %for.end357
	ld.w	$a0, $sp, 160
	st.w	$a0, $s0, 0
	addi.d	$a3, $sp, 12
	move	$a5, $s2
	pcaddu18i	$ra, %call36(cli_rawaddr)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 0
	bnez	$a0, .LBB5_71
# %bb.67:                               # %for.end357
	ld.w	$a0, $sp, 12
	beqz	$a0, .LBB5_71
# %bb.68:                               # %if.then372
	pcalau12i	$a0, %pc_hi20(.L.str.255)
	addi.d	$a0, $a0, %pc_lo12(.L.str.255)
.LBB5_69:                               # %cleanup
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_70:                               # %cleanup
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 16
	b	.LBB5_21
.LBB5_71:                               # %if.end375
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB5_21
.Lfunc_end5:
	.size	cli_peheader, .Lfunc_end5-cli_peheader
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cli_scanpe: ctx == NULL\n"
	.size	.L.str, 25

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Can't read DOS signature\n"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Invalid DOS signature\n"
	.size	.L.str.2, 23

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Can't read new header address\n"
	.size	.L.str.3, 31

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Broken.Executable"
	.size	.L.str.4, 18

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"e_lfanew == %d\n"
	.size	.L.str.5, 16

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Not a PE file\n"
	.size	.L.str.6, 15

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Can't lseek to e_lfanew\n"
	.size	.L.str.7, 25

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Can't read file header\n"
	.size	.L.str.8, 24

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Invalid PE signature (probably NE file)\n"
	.size	.L.str.9, 41

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"File type: DLL\n"
	.size	.L.str.10, 16

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"File type: Executable\n"
	.size	.L.str.11, 23

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Machine type: Unknown\n"
	.size	.L.str.12, 23

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Machine type: 80386\n"
	.size	.L.str.13, 21

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Machine type: 80486\n"
	.size	.L.str.14, 21

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Machine type: 80586\n"
	.size	.L.str.15, 21

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Machine type: R30000 (big-endian)\n"
	.size	.L.str.16, 35

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Machine type: R3000\n"
	.size	.L.str.17, 21

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Machine type: R4000\n"
	.size	.L.str.18, 21

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Machine type: R10000\n"
	.size	.L.str.19, 22

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Machine type: DEC Alpha AXP\n"
	.size	.L.str.20, 29

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Machine type: DEC Alpha AXP 64bit\n"
	.size	.L.str.21, 35

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Machine type: PowerPC\n"
	.size	.L.str.22, 23

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Machine type: IA64\n"
	.size	.L.str.23, 20

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Machine type: M68k\n"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Machine type: MIPS16\n"
	.size	.L.str.25, 22

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Machine type: MIPS+FPU\n"
	.size	.L.str.26, 24

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Machine type: MIPS16+FPU\n"
	.size	.L.str.27, 26

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Machine type: Hitachi SH3\n"
	.size	.L.str.28, 27

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Machine type: Hitachi SH3-DSP\n"
	.size	.L.str.29, 31

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Machine type: Hitachi SH3-E\n"
	.size	.L.str.30, 29

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Machine type: Hitachi SH4\n"
	.size	.L.str.31, 27

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Machine type: Hitachi SH5\n"
	.size	.L.str.32, 27

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Machine type: ARM\n"
	.size	.L.str.33, 19

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Machine type: THUMB\n"
	.size	.L.str.34, 21

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Machine type: AM33\n"
	.size	.L.str.35, 20

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Machine type: Infineon TriCore\n"
	.size	.L.str.36, 32

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Machine type: CEF\n"
	.size	.L.str.37, 19

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Machine type: EFI Byte Code\n"
	.size	.L.str.38, 29

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Machine type: M32R\n"
	.size	.L.str.39, 20

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Machine type: CEE\n"
	.size	.L.str.40, 19

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"Machine type: AMD64\n"
	.size	.L.str.41, 21

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Unknown machine type in PE header (0x%x)\n"
	.size	.L.str.42, 42

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"PE file contains %d sections\n"
	.size	.L.str.43, 30

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"PE file contains no sections\n"
	.size	.L.str.44, 30

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"NumberOfSections: %d\n"
	.size	.L.str.45, 22

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"TimeDateStamp: %s"
	.size	.L.str.46, 18

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"SizeOfOptionalHeader: %x\n"
	.size	.L.str.47, 26

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"SizeOfOptionalHeader too small\n"
	.size	.L.str.48, 32

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Can't read optional file header\n"
	.size	.L.str.49, 33

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Incorrect SizeOfOptionalHeader for PE32+\n"
	.size	.L.str.50, 42

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"Incorrect magic number in optional header\n"
	.size	.L.str.51, 43

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"9x compatibility mode\n"
	.size	.L.str.52, 23

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"File format: PE\n"
	.size	.L.str.53, 17

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"MajorLinkerVersion: %d\n"
	.size	.L.str.54, 24

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"MinorLinkerVersion: %d\n"
	.size	.L.str.55, 24

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"SizeOfCode: 0x%x\n"
	.size	.L.str.56, 18

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"SizeOfInitializedData: 0x%x\n"
	.size	.L.str.57, 29

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"SizeOfUninitializedData: 0x%x\n"
	.size	.L.str.58, 31

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"AddressOfEntryPoint: 0x%x\n"
	.size	.L.str.59, 27

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"BaseOfCode: 0x%x\n"
	.size	.L.str.60, 18

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"SectionAlignment: 0x%x\n"
	.size	.L.str.61, 24

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"FileAlignment: 0x%x\n"
	.size	.L.str.62, 21

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"MajorSubsystemVersion: %d\n"
	.size	.L.str.63, 27

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"MinorSubsystemVersion: %d\n"
	.size	.L.str.64, 27

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"SizeOfImage: 0x%x\n"
	.size	.L.str.65, 19

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"SizeOfHeaders: 0x%x\n"
	.size	.L.str.66, 21

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"NumberOfRvaAndSizes: %d\n"
	.size	.L.str.67, 25

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"File format: PE32+\n"
	.size	.L.str.68, 20

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"Subsystem: Unknown\n"
	.size	.L.str.69, 20

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"Subsystem: Native (svc)\n"
	.size	.L.str.70, 25

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"Subsystem: Win32 GUI\n"
	.size	.L.str.71, 22

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"Subsystem: Win32 console\n"
	.size	.L.str.72, 26

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"Subsystem: OS/2 console\n"
	.size	.L.str.73, 25

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"Subsystem: POSIX console\n"
	.size	.L.str.74, 26

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"Subsystem: Native Win9x driver\n"
	.size	.L.str.75, 32

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"Subsystem: WinCE GUI\n"
	.size	.L.str.76, 22

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"Subsystem: EFI application\n"
	.size	.L.str.77, 28

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"Subsystem: EFI driver\n"
	.size	.L.str.78, 23

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"Subsystem: EFI runtime driver\n"
	.size	.L.str.79, 31

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"Unknown subsystem in PE header (0x%x)\n"
	.size	.L.str.80, 39

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"------------------------------------\n"
	.size	.L.str.81, 38

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"Bad virtual alignemnt\n"
	.size	.L.str.82, 23

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"Bad file alignemnt\n"
	.size	.L.str.83, 20

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"fstat failed\n"
	.size	.L.str.84, 14

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"Can't allocate memory for section headers\n"
	.size	.L.str.85, 43

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"Can't read section header\n"
	.size	.L.str.86, 27

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"Possibly broken PE file\n"
	.size	.L.str.87, 25

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"Found misaligned section, using 0x200\n"
	.size	.L.str.88, 39

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"Section %d\n"
	.size	.L.str.89, 12

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"Section name: %s\n"
	.size	.L.str.90, 18

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"Section data (from headers - in memory)\n"
	.size	.L.str.91, 41

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"VirtualSize: 0x%x 0x%x\n"
	.size	.L.str.92, 24

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"VirtualAddress: 0x%x 0x%x\n"
	.size	.L.str.93, 27

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"SizeOfRawData: 0x%x 0x%x\n"
	.size	.L.str.94, 26

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"PointerToRawData: 0x%x 0x%x\n"
	.size	.L.str.95, 29

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"Section contains executable code\n"
	.size	.L.str.96, 34

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"Section contains free space\n"
	.size	.L.str.97, 29

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"Section's memory is executable\n"
	.size	.L.str.98, 32

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"Section's memory is writeable\n"
	.size	.L.str.99, 31

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"VirtualAddress is misaligned\n"
	.size	.L.str.100, 30

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"Broken PE file - Section %d starts beyond the end of file (Offset@ %d, Total filesize %d)\n"
	.size	.L.str.101, 91

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"First section is in the wrong place\n"
	.size	.L.str.102, 37

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"Virtually misplaced section (wrong order, overlapping, non contiguous)\n"
	.size	.L.str.103, 72

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"EntryPoint out of file\n"
	.size	.L.str.104, 24

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"EntryPoint offset: 0x%x (%d)\n"
	.size	.L.str.105, 30

	.type	.L.str.106,@object              # @.str.106
	.section	.rodata.cst16,"aM",@progbits,16
.L.str.106:
	.asciz	"GetProcAddress\000"
	.size	.L.str.106, 16

	.type	.L.str.107,@object              # @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"W32.Parite.B"
	.size	.L.str.107, 13

	.type	.L__const.cli_scanpe.kzs,@object # @__const.cli_scanpe.kzs
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.cli_scanpe.kzs:
	.ascii	"\000\001\002\003\000\004\005\000\006\000\007\b"
	.size	.L__const.cli_scanpe.kzs, 12

	.type	.L.str.108,@object              # @.str.108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.108:
	.asciz	"in kriz\n"
	.size	.L.str.108, 9

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"kriz: using #%d as size counter\n"
	.size	.L.str.109, 33

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"kriz: using #%d as pointer\n"
	.size	.L.str.110, 28

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"W32.Kriz"
	.size	.L.str.111, 9

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"kriz: loop out of bounds, corrupted sample?\n"
	.size	.L.str.112, 45

	.type	.L.str.113,@object              # @.str.113
	.section	.rodata,"a",@progbits
.L.str.113:
	.asciz	"\350,a\000\000"
	.size	.L.str.113, 6

	.type	.L.str.114,@object              # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"W32.Magistr.A.dam"
	.size	.L.str.114, 18

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"W32.Magistr.A"
	.size	.L.str.115, 14

	.type	.L.str.116,@object              # @.str.116
	.section	.rodata,"a",@progbits
.L.str.116:
	.asciz	"\350\004r\000\000"
	.size	.L.str.116, 6

	.type	.L.str.117,@object              # @.str.117
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.117:
	.asciz	"W32.Magistr.B.dam"
	.size	.L.str.117, 18

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"W32.Magistr.B"
	.size	.L.str.118, 14

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"Polipos: Checking %d xsect jump(s)\n"
	.size	.L.str.119, 36

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"W32.Polipos.A"
	.size	.L.str.120, 14

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"UPX/FSG/MEW: empty section found - assuming compression\n"
	.size	.L.str.121, 57

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"MEW: found MEW characteristics %08X + %08X + 5 = %08X\n"
	.size	.L.str.122, 55

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"MEW: lseek() failed\n"
	.size	.L.str.123, 21

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"MEW: Can't read 0xb0 bytes at 0x%x (%d) %d\n"
	.size	.L.str.124, 44

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"MEW: Win9x compatibility was set!\n"
	.size	.L.str.125, 35

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"MEW: Win9x compatibility was NOT set!\n"
	.size	.L.str.126, 39

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"MEW: ESI is not in proper section\n"
	.size	.L.str.127, 35

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"MEW: ssize %08x dsize %08x offdiff: %08x\n"
	.size	.L.str.128, 42

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"MEW: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.129, 33

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"PE.MEW.ExceededFileSize"
	.size	.L.str.130, 24

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"MEW: Size mismatch: %08x\n"
	.size	.L.str.131, 26

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"MEW: Can't read %d bytes [read: %d]\n"
	.size	.L.str.132, 37

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"MEW: %d (%08x) bytes read\n"
	.size	.L.str.133, 27

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"MEW: lzma proc out of bounds!\n"
	.size	.L.str.134, 31

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"MEW: Can't create file %s\n"
	.size	.L.str.135, 27

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"MEW: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.136, 50

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"MEW: Unpacked and rebuilt executable\n"
	.size	.L.str.137, 38

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"***** Scanning rebuilt PE file *****\n"
	.size	.L.str.138, 38

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"MEW: Unpacking failed\n"
	.size	.L.str.139, 23

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"Upack characteristics found.\n"
	.size	.L.str.140, 30

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"Upack: var set\n"
	.size	.L.str.141, 16

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"Upack: var NOT set\n"
	.size	.L.str.142, 20

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"Upack: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.143, 35

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"PE.Upack.ExceededFileSize"
	.size	.L.str.144, 26

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"Upack: probably malformed pe-header, skipping to next unpacker\n"
	.size	.L.str.145, 64

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"Upack: Can't read raw data of section 0\n"
	.size	.L.str.146, 41

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"Upack: Can't read raw data of section 1\n"
	.size	.L.str.147, 41

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"Upack: Can't create file %s\n"
	.size	.L.str.148, 29

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"Upack: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.149, 52

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"Upack: Unpacked and rebuilt executable\n"
	.size	.L.str.150, 40

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"Upack: Unpacking failed\n"
	.size	.L.str.151, 25

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"FSG: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.152, 33

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"PE.FSG.ExceededFileSize"
	.size	.L.str.153, 24

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"FSG: Size mismatch (ssize: %d, dsize: %d)\n"
	.size	.L.str.154, 43

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"FSG: xchg out of bounds (%x), giving up\n"
	.size	.L.str.155, 41

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"Can't read raw data of section %d\n"
	.size	.L.str.156, 35

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"FSG: New ESP out of bounds\n"
	.size	.L.str.157, 28

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"FSG: New ESP (%x) is wrong\n"
	.size	.L.str.158, 28

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"FSG: New stack out of bounds\n"
	.size	.L.str.159, 30

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"FSG: Bad destination buffer (edi is %x should be %x)\n"
	.size	.L.str.160, 54

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"FSG: Source buffer out of section bounds\n"
	.size	.L.str.161, 42

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"FSG: Array of functions out of bounds\n"
	.size	.L.str.162, 39

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"FSG: found old EP @%x\n"
	.size	.L.str.163, 23

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"FSG: Can't create file %s\n"
	.size	.L.str.164, 27

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"FSG: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.165, 50

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"FSG: Unpacked and rebuilt executable\n"
	.size	.L.str.166, 38

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"FSG: Successfully decompressed\n"
	.size	.L.str.167, 32

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"FSG: Unpacking failed\n"
	.size	.L.str.168, 23

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"FSG: Support data out of padding area\n"
	.size	.L.str.169, 39

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"Can't read %d bytes from padding area\n"
	.size	.L.str.170, 39

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"FSG: Bad destination (is %x should be %x)\n"
	.size	.L.str.171, 43

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"FSG: Original section %d is misaligned\n"
	.size	.L.str.172, 40

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"FSG: Original section %d is out of bounds\n"
	.size	.L.str.173, 43

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"FSG: Can't read raw data of section %d\n"
	.size	.L.str.174, 40

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"UPX: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.175, 33

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"PE.UPX.ExceededFileSize"
	.size	.L.str.176, 24

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"UPX: Size mismatch or dsize too big (ssize: %d, dsize: %d)\n"
	.size	.L.str.177, 60

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"UPX: Can't read raw data of section %d\n"
	.size	.L.str.178, 40

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"\021\333\021\311\001\333u\007\213\036\203\356\374\021\333\021\311\021\311u A\001\333"
	.size	.L.str.179, 25

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"UPX: Looks like a NRV2B decompression routine\n"
	.size	.L.str.180, 47

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"\203\360\377tx\321\370\211\305\353\013\001\333u\007\213\036\203\356\374\021\333\021\311"
	.size	.L.str.181, 25

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"UPX: Looks like a NRV2D decompression routine\n"
	.size	.L.str.182, 47

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"\353R1\311\203\350\003r\021\301\340\b\212\006F\203\360\377tu\321\370\211\305"
	.size	.L.str.183, 25

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"UPX: Looks like a NRV2E decompression routine\n"
	.size	.L.str.184, 47

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"UPX: UPX1 seems skewed by %d bytes\n"
	.size	.L.str.185, 36

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"UPX: Successfully decompressed\n"
	.size	.L.str.186, 32

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"UPX: Preferred decompressor failed\n"
	.size	.L.str.187, 36

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"UPX: NRV2B decompressor failed\n"
	.size	.L.str.188, 32

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"UPX: Successfully decompressed with NRV2B\n"
	.size	.L.str.189, 43

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"UPX: NRV2D decompressor failed\n"
	.size	.L.str.190, 32

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"UPX: Successfully decompressed with NRV2D\n"
	.size	.L.str.191, 43

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"UPX: NRV2E decompressor failed\n"
	.size	.L.str.192, 32

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"UPX: Successfully decompressed with NRV2E\n"
	.size	.L.str.193, 43

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"UPX: All decompressors failed\n"
	.size	.L.str.194, 31

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"UPX/FSG: Can't create file %s\n"
	.size	.L.str.195, 31

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"UPX/FSG: Can't write %d bytes\n"
	.size	.L.str.196, 31

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"UPX/FSG: Decompressed data saved in %s\n"
	.size	.L.str.197, 40

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"***** Scanning decompressed file *****\n"
	.size	.L.str.198, 40

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"Petite: v2.%d compression detected\n"
	.size	.L.str.199, 36

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"Petite: level zero compression is not supported yet\n"
	.size	.L.str.200, 53

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"Petite: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.201, 36

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	"PE.Petite.ExceededFileSize"
	.size	.L.str.202, 27

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"Petite: Can't allocate %d bytes\n"
	.size	.L.str.203, 33

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	"Petite: Can't create file %s\n"
	.size	.L.str.204, 30

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"Petite: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.205, 53

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	"Petite: Unpacked and rebuilt executable\n"
	.size	.L.str.206, 41

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	"Petite: Unpacking failed\n"
	.size	.L.str.207, 26

	.type	.L.str.208,@object              # @.str.208
	.section	.rodata,"a",@progbits
.L.str.208:
	.asciz	"\350\000\000\000\000\213\034$\203\303"
	.size	.L.str.208, 11

	.type	.L.str.209,@object              # @.str.209
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.209:
	.asciz	"PEspin: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.209, 36

	.type	.L.str.210,@object              # @.str.210
.L.str.210:
	.asciz	"PE.PEspin.ExceededFileSize"
	.size	.L.str.210, 27

	.type	.L.str.211,@object              # @.str.211
.L.str.211:
	.asciz	"PESpin: Can't read %d bytes\n"
	.size	.L.str.211, 29

	.type	.L.str.212,@object              # @.str.212
.L.str.212:
	.asciz	"PESpin: Can't create file %s\n"
	.size	.L.str.212, 30

	.type	.L.str.213,@object              # @.str.213
.L.str.213:
	.asciz	"PEspin: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.213, 53

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"PEspin: Unpacked and rebuilt executable\n"
	.size	.L.str.214, 41

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"PESpin: Size exceeded\n"
	.size	.L.str.215, 23

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	"PE.Pespin.ExceededFileSize"
	.size	.L.str.216, 27

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	"PEspin: Unpacking failed\n"
	.size	.L.str.217, 26

	.type	.L.str.218,@object              # @.str.218
	.section	.rodata,"a",@progbits
.L.str.218:
	.asciz	"U\213\354SVW`\350\000\000\000\000]\201\355l(@\000\271]4@\000\201\351\306(@\000\213\325\201\302\306(@\000\215:\213\3673\300\353\004\220\353\001\302\254"
	.size	.L.str.218, 52

	.type	.L.str.219,@object              # @.str.219
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.219:
	.asciz	"yC: Can't read %d bytes\n"
	.size	.L.str.219, 25

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	"yC: Can't create file %s\n"
	.size	.L.str.220, 26

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	"yC: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.221, 49

	.type	.L.str.222,@object              # @.str.222
.L.str.222:
	.asciz	"yC: Unpacked and rebuilt executable\n"
	.size	.L.str.222, 37

	.type	.L.str.223,@object              # @.str.223
.L.str.223:
	.asciz	"yC: Unpacking failed\n"
	.size	.L.str.223, 22

	.type	.L.str.224,@object              # @.str.224
.L.str.224:
	.asciz	"SU\213\3503\333\353"
	.size	.L.str.224, 8

	.type	.L.str.225,@object              # @.str.225
	.section	.rodata,"a",@progbits
.L.str.225:
	.asciz	"\350\000\000\000\000X-m\000\000\000P`3\311PXPP"
	.size	.L.str.225, 20

	.type	.L.str.226,@object              # @.str.226
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.226:
	.asciz	"WWPack: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.226, 36

	.type	.L.str.227,@object              # @.str.227
.L.str.227:
	.asciz	"PE.WWPack.ExceededFileSize"
	.size	.L.str.227, 27

	.type	.L.str.228,@object              # @.str.228
.L.str.228:
	.asciz	"WWPack: Can't allocate %d bytes\n"
	.size	.L.str.228, 33

	.type	.L.str.229,@object              # @.str.229
.L.str.229:
	.asciz	"WWPack: Can't read %d bytes from headers\n"
	.size	.L.str.229, 42

	.type	.L.str.230,@object              # @.str.230
.L.str.230:
	.asciz	"WWPack: Can't read %d bytes from wwpack sect\n"
	.size	.L.str.230, 46

	.type	.L.str.231,@object              # @.str.231
.L.str.231:
	.asciz	"WWPack: Can't create file %s\n"
	.size	.L.str.231, 30

	.type	.L.str.232,@object              # @.str.232
.L.str.232:
	.asciz	"WWPack: Can't write %d bytes\n"
	.size	.L.str.232, 30

	.type	.L.str.233,@object              # @.str.233
.L.str.233:
	.asciz	"WWPack: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.233, 53

	.type	.L.str.234,@object              # @.str.234
.L.str.234:
	.asciz	"WWPack: Unpacked and rebuilt executable\n"
	.size	.L.str.234, 41

	.type	.L.str.235,@object              # @.str.235
.L.str.235:
	.asciz	"WWPpack: Decompression failed\n"
	.size	.L.str.235, 31

	.type	.L.str.236,@object              # @.str.236
	.section	.rodata,"a",@progbits
.L.str.236:
	.asciz	"`\350\003\000\000\000\351\353"
	.size	.L.str.236, 9

	.type	.L.str.237,@object              # @.str.237
.L.str.237:
	.asciz	"h\000\000\000\000\303"
	.size	.L.str.237, 7

	.type	.L.str.238,@object              # @.str.238
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.238:
	.asciz	"Aspack: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.238, 36

	.type	.L.str.239,@object              # @.str.239
.L.str.239:
	.asciz	"PE.Aspack.ExceededFileSize"
	.size	.L.str.239, 27

	.type	.L.str.240,@object              # @.str.240
.L.str.240:
	.asciz	"Aspack: Probably hacked/damaged Aspack file.\n"
	.size	.L.str.240, 46

	.type	.L.str.241,@object              # @.str.241
.L.str.241:
	.asciz	"Aspack: Can't create file %s\n"
	.size	.L.str.241, 30

	.type	.L.str.242,@object              # @.str.242
.L.str.242:
	.asciz	"Aspack: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.242, 53

	.type	.L.str.243,@object              # @.str.243
.L.str.243:
	.asciz	"Aspack: Unpacked and rebuilt executable\n"
	.size	.L.str.243, 41

	.type	.L.str.244,@object              # @.str.244
.L.str.244:
	.asciz	"Aspack: Unpacking failed\n"
	.size	.L.str.244, 26

	.type	.L.str.245,@object              # @.str.245
	.section	.rodata,"a",@progbits
.L.str.245:
	.asciz	"\234`\350\000\000\000\000]\270\007\000\000\000"
	.size	.L.str.245, 14

	.type	.L.str.246,@object              # @.str.246
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.246:
	.asciz	"NsPack: Found *start_of_stuff @delta-%x\n"
	.size	.L.str.246, 41

	.type	.L.str.247,@object              # @.str.247
.L.str.247:
	.asciz	"NsPack: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.247, 36

	.type	.L.str.248,@object              # @.str.248
.L.str.248:
	.asciz	"PE.NsPack.ExceededFileSize"
	.size	.L.str.248, 27

	.type	.L.str.249,@object              # @.str.249
.L.str.249:
	.asciz	"NsPack: OEP = %08x\n"
	.size	.L.str.249, 20

	.type	.L.str.250,@object              # @.str.250
.L.str.250:
	.asciz	"NsPack: Can't create file %s\n"
	.size	.L.str.250, 30

	.type	.L.str.251,@object              # @.str.251
.L.str.251:
	.asciz	"NsPack: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.251, 53

	.type	.L.str.252,@object              # @.str.252
.L.str.252:
	.asciz	"NsPack: Unpacked and rebuilt executable\n"
	.size	.L.str.252, 41

	.type	.L.str.253,@object              # @.str.253
.L.str.253:
	.asciz	"NsPack: Unpacking failed\n"
	.size	.L.str.253, 26

	.type	.L.str.254,@object              # @.str.254
.L.str.254:
	.asciz	"in cli_peheader\n"
	.size	.L.str.254, 17

	.type	.L.str.255,@object              # @.str.255
.L.str.255:
	.asciz	"Broken PE file\n"
	.size	.L.str.255, 16

	.type	.L.str.256,@object              # @.str.256
.L.str.256:
	.asciz	"cli_md5sect: skipping md5 calculation for too big section\n"
	.size	.L.str.256, 59

	.type	.L.str.257,@object              # @.str.257
.L.str.257:
	.asciz	"cli_md5sect: out of memory\n"
	.size	.L.str.257, 28

	.type	.L.str.258,@object              # @.str.258
.L.str.258:
	.asciz	"cli_md5sect: unable to read section data\n"
	.size	.L.str.258, 42

	.type	.L.str.259,@object              # @.str.259
.L.str.259:
	.asciz	"cli_seeksect: lseek() failed\n"
	.size	.L.str.259, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
