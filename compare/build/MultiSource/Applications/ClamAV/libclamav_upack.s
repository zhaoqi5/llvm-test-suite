	.file	"libclamav_upack.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function unupack
.LCPI0_0:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.text
	.globl	unupack
	.p2align	5
	.type	unupack,@function
unupack:                                # @unupack
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	move	$t0, $a0
	beqz	$a0, .LBB0_13
# %bb.1:                                # %if.then
	ld.bu	$a0, $a3, 5
	ori	$s4, $zero, 2
	ori	$t1, $zero, 255
	ori	$fp, $zero, 1
	bne	$a0, $t1, .LBB0_4
# %bb.2:                                # %land.lhs.true
	ld.bu	$a0, $a3, 6
	ori	$t1, $zero, 54
	bne	$a0, $t1, .LBB0_4
# %bb.3:                                # %if.then6
	move	$fp, $zero
	ori	$s4, $zero, 3
	ori	$s8, $zero, 3
	ori	$t1, $zero, 12
	addi.w	$a0, $zero, -1
	bgeu	$a2, $t1, .LBB0_5
	b	.LBB0_64
.LBB0_4:
	move	$s8, $zero
	ori	$t1, $zero, 12
	addi.w	$a0, $zero, -1
	bltu	$a2, $t1, .LBB0_64
.LBB0_5:                                # %land.lhs.true16
	ld.w	$a3, $a3, 1
	sub.d	$a3, $a3, $a4
	bstrpick.d	$a3, $a3, 31, 0
	bstrpick.d	$s7, $a2, 31, 0
	addi.d	$t1, $a3, 12
	bltu	$s7, $t1, .LBB0_64
# %bb.6:                                # %if.end27
	move	$s3, $a0
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	move	$s0, $a2
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	move	$s2, $a1
	add.d	$s6, $a1, $a3
	ld.w	$a3, $s6, 0
	move	$s5, $a4
	sub.w	$a2, $a3, $a4
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $a5
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	move	$s1, $a5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bstrpick.d	$a2, $s1, 31, 0
	addi.d	$a3, $a2, 12
	move	$a0, $s3
	beqz	$fp, .LBB0_49
# %bb.7:                                # %if.then36
	bltu	$s7, $a3, .LBB0_64
# %bb.8:                                # %lor.lhs.false
	addi.d	$a1, $a1, 10
	bstrpick.d	$a3, $a1, 31, 0
	ldx.bu	$a3, $s2, $a3
	ori	$a4, $zero, 235
	bne	$a3, $a4, .LBB0_64
# %bb.9:                                # %if.end73
	move	$a1, $s2
	add.d	$a3, $s2, $a2
	ld.b	$a3, $a3, 11
	add.d	$a2, $a3, $a2
	addi.w	$a3, $zero, -38
	blt	$a2, $a3, .LBB0_64
# %bb.10:                               # %if.end73
	addi.d	$a3, $a2, 40
	blt	$s7, $a3, .LBB0_64
# %bb.11:                               # %lor.lhs.false102
	add.d	$s1, $a1, $a2
	ld.bu	$a2, $s1, 38
	ori	$a3, $zero, 235
	bne	$a2, $a3, .LBB0_64
# %bb.12:                               # %if.end107
	ld.w	$a2, $s6, 8
	sub.d	$a2, $a2, $s5
	ld.bu	$a3, $s1, 39
	bstrpick.d	$a2, $a2, 31, 0
	add.d	$a7, $a1, $a2
	addi.d	$a2, $s1, 39
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 11
	ori	$a3, $zero, 8
	b	.LBB0_52
.LBB0_13:                               # %if.else716
	ld.bu	$a0, $a3, 0
	ori	$t1, $zero, 190
	bne	$a0, $t1, .LBB0_18
# %bb.14:                               # %land.lhs.true725
	ld.bu	$a0, $a3, 5
	ori	$t1, $zero, 173
	bne	$a0, $t1, .LBB0_18
# %bb.15:                               # %land.lhs.true730
	ld.bu	$a0, $a3, 6
	ori	$t1, $zero, 139
	bne	$a0, $t1, .LBB0_18
# %bb.16:                               # %if.end741
	ld.bu	$a0, $a3, 7
	ori	$a3, $zero, 248
	bne	$a0, $a3, .LBB0_18
# %bb.17:
	move	$s7, $zero
	ori	$s8, $zero, 65
	ori	$s6, $zero, 27
	ori	$a3, $zero, 420
	ori	$s4, $zero, 1
	ori	$t3, $zero, 388
	b	.LBB0_19
.LBB0_18:                               # %if.else746
	move	$s4, $zero
	ori	$s8, $zero, 95
	ori	$s6, $zero, 58
	ori	$a3, $zero, 535
	ori	$s7, $zero, 1
	ori	$t3, $zero, 449
.LBB0_19:                               # %if.end748
	addi.w	$a0, $zero, -1
	beqz	$a2, .LBB0_64
# %bb.20:                               # %if.end748
	addi.d	$t1, $a3, 4
	bltu	$a2, $t1, .LBB0_64
# %bb.21:                               # %land.lhs.true762
	bstrpick.d	$s2, $a4, 31, 0
	bstrpick.d	$s0, $a5, 31, 0
	add.d	$fp, $s0, $s2
	bstrpick.d	$s3, $a2, 31, 0
	add.d	$t1, $fp, $a3
	addi.d	$t2, $t1, 4
	bltu	$s3, $t2, .LBB0_64
# %bb.22:                               # %if.end777
	st.d	$t3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	move	$s5, $a0
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	add.d	$s1, $a1, $fp
	ldx.w	$a0, $s1, $a3
	add.d	$a0, $t1, $a0
	addi.w	$a2, $a0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $a5
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ldx.bu	$a0, $s1, $s8
	ori	$a1, $zero, 8
	bltu	$a1, $a0, .LBB0_61
# %bb.23:                               # %if.end777
	sub.d	$s8, $a1, $a0
	ori	$a0, $zero, 1
	bgeu	$a0, $s8, .LBB0_61
# %bb.24:                               # %if.end804
	ldx.bu	$a0, $s1, $s6
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.d	$s6, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s8
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB0_65
# %bb.25:                               # %if.then808
	ld.w	$a0, $s1, 6
	st.w	$zero, $s1, 6
	beqz	$a0, .LBB0_77
# %bb.26:                               # %if.end815
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a0, -2
	bstrpick.d	$a3, $a0, 31, 0
	ori	$a0, $zero, 4
	sub.d	$a1, $a0, $a3
	add.d	$s8, $a1, $fp
	bltz	$s8, .LBB0_63
# %bb.27:                               # %if.end815
	addi.d	$a2, $s8, 12
	move	$a0, $s5
	bltu	$s3, $a2, .LBB0_64
# %bb.28:                               # %if.end839
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	add.d	$s6, $s1, $a1
	ld.w	$a3, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $s6
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 0
	bstrpick.d	$a1, $s5, 31, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	sub.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 4
	sub.w	$a2, $a1, $s5
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$s5, $s6, 8
	addi.w	$a0, $zero, -1
	move	$s8, $a0
	bge	$a0, $s5, .LBB0_80
# %bb.29:                               # %if.end866
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB0_98
# %bb.30:                               # %if.end866
	slli.w	$a0, $s5, 2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_98
# %bb.31:                               # %land.lhs.true881
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$t3, $a2, $s3
	addi.d	$a1, $s6, 12
	add.d	$a3, $a1, $a0
	move	$a0, $s8
	bltu	$t3, $a3, .LBB0_64
# %bb.32:                               # %land.lhs.true881
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a2, $a3, .LBB0_64
# %bb.33:                               # %land.lhs.true898
	add.w	$a2, $s5, $a4
	addi.w	$a0, $zero, -1
	alsl.w	$a4, $a2, $a0, 2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	bgeu	$a4, $a3, .LBB0_64
# %bb.34:                               # %land.lhs.true898
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 24                    # 8-byte Folded Reload
	sub.d	$s6, $t4, $t1
	bltz	$s6, .LBB0_64
# %bb.35:                               # %land.lhs.true911
	slli.d	$a2, $a2, 2
	bstrpick.d	$a2, $a2, 31, 0
	add.d	$a2, $s6, $a2
	bltu	$s3, $a2, .LBB0_64
# %bb.36:                               # %for.body931.preheader
	ori	$a3, $zero, 16
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$t2, $a2, $s6
	bltu	$s5, $a3, .LBB0_38
# %bb.37:                               # %vector.memcheck
	add.d	$a3, $t4, $a7
	add.d	$a4, $t1, $s0
	add.d	$a4, $a4, $s2
	sub.d	$a3, $a3, $a4
	addi.d	$a3, $a3, -16
	ori	$a4, $zero, 64
	bgeu	$a3, $a4, .LBB0_117
.LBB0_38:
	move	$a4, $s5
	move	$a3, $t2
.LBB0_39:                               # %for.body931
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	addi.w	$a4, $a4, -1
	st.w	$a5, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB0_39
.LBB0_40:                               # %land.lhs.true945
	addi.d	$a1, $s6, 8
	bltu	$s3, $a1, .LBB0_64
# %bb.41:                               # %if.end956
	ld.w	$a1, $t2, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a5, $a4, 4
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	mul.d	$a1, $a5, $a1
	add.d	$a1, $a1, $t4
	add.d	$a1, $a1, $a4
	sub.d	$a1, $a1, $t1
	add.d	$a4, $a1, $a2
	addi.d	$a1, $a4, 8
	bltu	$a1, $a2, .LBB0_64
# %bb.42:                               # %if.end956
	st.d	$t2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a2, $a4, 12
	bltu	$t3, $a2, .LBB0_64
# %bb.43:                               # %if.end983
	move	$s8, $t3
	move	$fp, $a0
	addi.d	$s2, $a4, 4
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_46
# %bb.44:                               # %vector.ph857
	xvldrepl.w	$xr0, $a1, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a0, $a0, -256
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 256
	addi.d	$a1, $a3, 32
.LBB0_45:                               # %vector.body861
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB0_45
.LBB0_46:                               # %land.lhs.true999
	addi.d	$s5, $s2, 28
	bltu	$s8, $s5, .LBB0_48
# %bb.47:                               # %land.lhs.true1036
	ld.w	$a0, $s2, 24
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.w	$a0, $s2, 24
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 4
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s2, 52
	bgeu	$s8, $a0, .LBB0_120
.LBB0_48:
	move	$a0, $fp
	b	.LBB0_64
.LBB0_49:                               # %land.lhs.true118
	bltu	$s7, $a3, .LBB0_64
# %bb.50:                               # %lor.lhs.false140
	addi.d	$a1, $a1, 7
	bstrpick.d	$a3, $a1, 31, 0
	ldx.bu	$a3, $s2, $a3
	ori	$a4, $zero, 233
	bne	$a3, $a4, .LBB0_64
# %bb.51:                               # %if.end148
	move	$a1, $s2
	add.d	$a3, $s2, $a2
	ld.w	$a3, $a3, 8
	add.d	$a3, $s2, $a3
	add.d	$s1, $a3, $a2
	addi.d	$a2, $s1, 49
	ori	$a3, $zero, 10
                                        # implicit-def: $r11
.LBB0_52:                               # %if.end159
	bltu	$a2, $a1, .LBB0_64
# %bb.53:                               # %if.end159
	add.d	$t0, $a1, $s7
	addi.d	$a5, $a2, 2
	bltu	$t0, $a5, .LBB0_64
# %bb.54:                               # %lor.lhs.false178
	ld.bu	$a5, $a2, 0
	ori	$a6, $zero, 181
	bne	$a5, $a6, .LBB0_64
# %bb.55:                               # %if.end183
	ori	$a5, $a3, 5
	bltu	$s0, $a5, .LBB0_64
# %bb.56:                               # %land.lhs.true200
	addi.d	$a4, $a2, 1
	add.d	$a3, $a4, $a3
	addi.d	$a4, $a3, 5
	bltu	$t0, $a4, .LBB0_64
# %bb.57:                               # %land.lhs.true200
	bgeu	$a1, $a4, .LBB0_64
# %bb.58:                               # %lor.lhs.false214
	ld.bu	$a4, $a3, 0
	ori	$a5, $zero, 233
	bne	$a4, $a5, .LBB0_64
# %bb.59:                               # %if.end221
	ld.wu	$a3, $a3, 1
	addi.d	$a4, $s1, 12
	sub.d	$a4, $a4, $a1
	beqz	$fp, .LBB0_101
# %bb.60:                               # %if.then228
	ld.b	$a5, $s1, 39
	add.d	$a3, $a4, $a3
	add.d	$a3, $a3, $a5
	addi.w	$a3, $a3, 52
	b	.LBB0_102
.LBB0_61:                               # %if.then803
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
.LBB0_62:                               # %cleanup1376
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_63:                               # %cleanup1376
	move	$a0, $s5
.LBB0_64:                               # %cleanup1376
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB0_65:                               # %if.else1125
	beqz	$s4, .LBB0_73
# %bb.66:                               # %if.then1128
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a2, $a0, 10
	addi.d	$a1, $a2, 24
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_63
# %bb.67:                               # %if.then1128
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a3, $a0, 328
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	sub.d	$a4, $a3, $a1
	addi.w	$a3, $zero, -4
	move	$a0, $s5
	blt	$a4, $a3, .LBB0_64
# %bb.68:                               # %land.lhs.true1160
	ori	$a2, $a2, 28
	add.d	$a2, $a4, $a2
	bltu	$s3, $a2, .LBB0_64
# %bb.69:                               # %if.end1177
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.wu	$a3, $a0, 332
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_0)
	sub.d	$a2, $zero, $a1
	add.d	$fp, $a0, $a4
	add.d	$a3, $a0, $a3
	vst	$vr0, $fp, 4
	ori	$a5, $zero, 1
	lu32i.d	$a5, 1
	st.d	$a5, $fp, 20
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	beqz	$a5, .LBB0_72
# %bb.70:                               # %for.body1191.preheader
	addi.d	$a5, $s6, -256
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 256
	add.d	$a4, $a4, $a0
	addi.d	$a4, $a4, 60
	ori	$a6, $zero, 1024
	xvreplgr2vr.w	$xr0, $a6
.LBB0_71:                               # %vector.body830
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a4, -32
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_71
.LBB0_72:                               # %for.end1195
	ld.w	$a4, $a0, 336
	sub.d	$s6, $a3, $a1
	ld.w	$a1, $a0, 304
	addi.d	$s5, $fp, 4
	add.d	$a3, $a0, $a4
	add.d	$s3, $a3, $a2
	add.d	$a0, $a0, $a1
	add.d	$s2, $a0, $a2
	b	.LBB0_74
.LBB0_73:
	move	$fp, $s1
                                        # implicit-def: $r28
                                        # implicit-def: $r25
                                        # implicit-def: $r29
                                        # implicit-def: $r26
.LBB0_74:                               # %if.end1212
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $s5
	move	$a4, $zero
	move	$a5, $s3
	move	$s5, $s2
	move	$a6, $s2
	move	$a7, $s8
	pcaddu18i	$ra, %call36(unupack399)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	move	$a1, $a0
	move	$a0, $a2
	beq	$a1, $a2, .LBB0_64
# %bb.75:                               # %if.end1217
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $s1, $a0
	beqz	$s7, .LBB0_78
# %bb.76:                               # %if.then1220
	ld.w	$s7, $fp, 64
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB0_82
	b	.LBB0_83
.LBB0_77:                               # %if.then814
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	b	.LBB0_62
.LBB0_78:                               # %if.else1223
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beqz	$s4, .LBB0_81
# %bb.79:                               # %if.then1226
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 31, 0
	add.d	$a3, $a1, $a3
	add.d	$a3, $a3, $s0
	ld.w	$s7, $a3, 372
	bgeu	$a0, $a1, .LBB0_82
	b	.LBB0_83
.LBB0_80:                               # %if.then865
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	b	.LBB0_64
.LBB0_81:
                                        # implicit-def: $r30
	bltu	$a0, $a1, .LBB0_83
.LBB0_82:                               # %land.lhs.true1249
	addi.d	$a3, $a0, 1
	bstrpick.d	$a4, $a2, 31, 0
	add.d	$s0, $a1, $a4
	bgeu	$s0, $a3, .LBB0_85
.LBB0_83:                               # %if.then1259
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
.LBB0_84:                               # %cleanup1376
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	b	.LBB0_64
.LBB0_85:                               # %if.end1260
	ld.bu	$s1, $a0, 0
	addi.w	$s2, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$fp, $a1
	move	$a1, $s2
	move	$s4, $a2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	move	$a3, $s6
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	beqz	$s2, .LBB0_96
# %bb.86:                               # %while.cond.outer.split.preheader
	move	$a2, $s4
	move	$a6, $zero
	ori	$a7, $zero, 232
	lu12i.w	$a4, 4080
	ori	$t0, $a4, 255
.LBB0_87:                               # %while.cond.outer.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_88 Depth 2
	addi.w	$a6, $a6, 4
.LBB0_88:                               # %while.cond
                                        #   Parent Loop BB0_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a6, -4
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a4, $s3, $a4
	bltu	$a4, $a1, .LBB0_99
# %bb.89:                               # %land.lhs.true1274
                                        #   in Loop: Header=BB0_88 Depth=2
	addi.d	$t1, $a4, 1
	bltu	$s0, $t1, .LBB0_99
# %bb.90:                               # %if.end1293
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.bu	$t2, $a4, 0
	andi	$t2, $t2, 254
	bne	$t2, $a7, .LBB0_94
# %bb.91:                               # %if.then1305
                                        #   in Loop: Header=BB0_88 Depth=2
	addi.d	$a4, $a4, 5
	bltu	$s0, $a4, .LBB0_100
# %bb.92:                               # %if.end1329
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.wu	$a4, $t1, 0
	andi	$t2, $a4, 255
	addi.w	$a6, $a6, 1
	bne	$s1, $t2, .LBB0_88
# %bb.93:                               # %cleanup1355.thread735
                                        #   in Loop: Header=BB0_87 Depth=1
	rotri.w	$t2, $a4, 24
	and	$t2, $t2, $t0
	srli.d	$a4, $a4, 16
	bstrins.d	$t2, $a4, 15, 8
	sub.d	$a4, $t2, $a6
	st.w	$a4, $t1, 0
	addi.d	$s7, $s7, -1
	b	.LBB0_95
.LBB0_94:                               # %if.else1358.split
                                        #   in Loop: Header=BB0_87 Depth=1
	addi.d	$a6, $a6, -3
.LBB0_95:                               # %if.end1360
                                        #   in Loop: Header=BB0_87 Depth=1
	addi.w	$a4, $s7, 0
	bnez	$a4, .LBB0_87
.LBB0_96:                               # %while.end
	ld.d	$a7, $sp, 256
	sltui	$a2, $a5, 1
	st.w	$zero, $sp, 140
	st.w	$a0, $sp, 132
	sub.d	$a4, $s5, $s3
	st.w	$a4, $sp, 144
	st.w	$a4, $sp, 136
	maskeqz	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $a1, $a0
	addi.d	$a1, $sp, 132
	ori	$a2, $zero, 1
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(cli_rebuildpe)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB0_64
# %bb.97:                               # %if.then1374
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_64
.LBB0_98:
	move	$a0, $s8
	b	.LBB0_64
.LBB0_99:                               # %if.then1288
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	move	$a3, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	b	.LBB0_64
.LBB0_100:                              # %cleanup1355.thread
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	b	.LBB0_84
.LBB0_101:                              # %if.else237
	add.d	$a3, $a4, $a3
	addi.w	$a3, $a3, 53
.LBB0_102:                              # %if.end245
	ld.bu	$fp, $a2, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, 44
	add.d	$a2, $a1, $a3
	bltu	$s7, $a4, .LBB0_105
# %bb.103:                              # %lor.lhs.false270
	ld.bu	$a4, $a2, 42
	ori	$a5, $zero, 227
	bne	$a4, $a5, .LBB0_105
# %bb.104:
	addi.d	$a5, $a2, 43
	ori	$a4, $zero, 24
	ori	$s6, $zero, 8
	b	.LBB0_108
.LBB0_105:                              # %if.then275
	addi.d	$a4, $a3, 47
	bltu	$s7, $a4, .LBB0_64
# %bb.106:                              # %lor.lhs.false300
	ld.bu	$a4, $a2, 45
	ori	$a5, $zero, 227
	bne	$a4, $a5, .LBB0_64
# %bb.107:
	addi.d	$a5, $a2, 46
	ori	$a4, $zero, 26
	ori	$s6, $zero, 7
	move	$s8, $s4
.LBB0_108:                              # %if.end312
	ld.bu	$a6, $a5, 0
	add.d	$a5, $a5, $a6
	addi.d	$s4, $a5, 1
	bltu	$s4, $a1, .LBB0_64
# %bb.109:                              # %land.lhs.true331
	add.d	$a5, $s4, $s6
	addi.d	$a6, $a5, 5
	bltu	$t0, $a6, .LBB0_64
# %bb.110:                              # %land.lhs.true331
	bgeu	$a1, $a6, .LBB0_64
# %bb.111:                              # %lor.lhs.false345
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	ld.bu	$a1, $a5, 0
	ori	$a6, $zero, 233
	bne	$a1, $a6, .LBB0_64
# %bb.112:                              # %if.end352
	add.d	$a0, $a3, $a4
	addi.d	$a0, $a0, 3
	bltu	$s7, $a0, .LBB0_149
# %bb.113:                              # %lor.lhs.false398
	add.d	$a0, $a2, $a4
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 193
	bne	$a1, $a2, .LBB0_149
# %bb.114:                              # %lor.lhs.false406
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 237
	bne	$a1, $a2, .LBB0_149
# %bb.115:                              # %if.end416
	ld.bu	$a0, $a0, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a0, -9
	addi.w	$a1, $zero, -8
	bltu	$a1, $a0, .LBB0_123
# %bb.116:                              # %if.then429
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	b	.LBB0_64
.LBB0_117:                              # %vector.ph840
	bstrpick.d	$a3, $s5, 30, 4
	slli.d	$a5, $a3, 4
	sub.d	$a4, $s5, $a5
	slli.d	$a6, $a3, 6
	add.d	$a3, $t2, $a6
	add.d	$a1, $a1, $a6
	sub.d	$a6, $fp, $a7
	add.d	$a6, $a6, $a2
	addi.d	$a6, $a6, 48
	add.d	$a7, $s6, $a2
	addi.d	$a7, $a7, 32
	move	$t0, $a5
.LBB0_118:                              # %vector.body843
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$a6, $a6, 64
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB0_118
# %bb.119:                              # %middle.block851
	bne	$a5, $s5, .LBB0_39
	b	.LBB0_40
.LBB0_120:                              # %land.lhs.true1054
	addi.d	$a0, $s6, 48
	bltu	$s3, $a0, .LBB0_48
# %bb.121:                              # %land.lhs.true1054
	addi.d	$a1, $s6, 76
	move	$a0, $fp
	bltu	$s3, $a1, .LBB0_64
# %bb.122:                              # %for.cond1094.preheader
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $zero, $a0
	ld.w	$a2, $s2, 24
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a0, $a3, $a0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $s8, 44
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	add.d	$s6, $a2, $a1
	add.d	$a2, $a4, $a3
	add.d	$a3, $a2, $a1
	ld.w	$a1, $s2, 32
	ld.w	$a2, $s2, 28
	add.d	$s3, $a4, $a0
	addi.d	$fp, $s8, 8
	st.w	$a1, $s2, 28
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.w	$a2, $s2, 32
	move	$s2, $a3
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_74
.LBB0_123:                              # %if.end430
	ld.w	$a0, $a5, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a2, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	bne	$s8, $a0, .LBB0_135
# %bb.124:                              # %land.lhs.true439
	addi.d	$a0, $s1, 18
	bltu	$a0, $s2, .LBB0_149
# %bb.125:                              # %land.lhs.true439
	addi.d	$a1, $s1, 28
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_149
# %bb.126:                              # %lor.lhs.false455
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 190
	bne	$a0, $a1, .LBB0_149
# %bb.127:                              # %lor.lhs.false460
	ld.bu	$a0, $s1, 23
	ori	$a1, $zero, 191
	bne	$a0, $a1, .LBB0_149
# %bb.128:                              # %if.end466
	ld.w	$a0, $s1, 19
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_149
# %bb.129:                              # %if.end466
	bltu	$s5, $a0, .LBB0_149
# %bb.130:                              # %land.lhs.true528
	slli.d	$a1, $fp, 10
	addi.d	$a2, $a1, 112
	bltu	$s0, $a2, .LBB0_149
# %bb.131:                              # %land.lhs.true541
	ld.w	$a1, $s1, 24
	sub.d	$a1, $a1, $s5
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a2, $a1, $a2
	bltu	$s7, $a2, .LBB0_149
# %bb.132:                              # %land.lhs.true550
	ori	$a2, $zero, 192
	bltu	$s0, $a2, .LBB0_149
# %bb.133:                              # %land.lhs.true550
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, 192
	move	$a0, $s3
	bltu	$s7, $a3, .LBB0_64
# %bb.134:                              # %for.body.preheader
	add.d	$a2, $s2, $a2
	ld.w	$a3, $a2, 0
	add.d	$a1, $s2, $a1
	st.w	$a3, $a1, 0
	ld.w	$a0, $a2, 4
	st.w	$a0, $a1, 4
	ld.w	$a0, $a2, 8
	st.w	$a0, $a1, 8
	ld.w	$a0, $a2, 12
	st.w	$a0, $a1, 12
	ld.w	$a0, $a2, 16
	st.w	$a0, $a1, 16
	ld.w	$a0, $a2, 20
	st.w	$a0, $a1, 20
	ld.w	$a0, $a2, 24
	st.w	$a0, $a1, 24
	ld.w	$a0, $a2, 28
	st.w	$a0, $a1, 28
	ld.w	$a0, $a2, 32
	st.w	$a0, $a1, 32
	ld.w	$a0, $a2, 36
	st.w	$a0, $a1, 36
	ld.w	$a0, $a2, 40
	st.w	$a0, $a1, 40
	ld.w	$a0, $a2, 44
	st.w	$a0, $a1, 44
	ld.w	$a0, $a2, 48
	st.w	$a0, $a1, 48
	ld.w	$a0, $a2, 52
	st.w	$a0, $a1, 52
	ld.w	$a0, $a2, 56
	st.w	$a0, $a1, 56
	ld.w	$a0, $a2, 60
	st.w	$a0, $a1, 60
	ld.w	$a0, $a2, 64
	st.w	$a0, $a1, 64
	ld.w	$a0, $a2, 68
	st.w	$a0, $a1, 68
	ld.w	$a0, $a2, 72
	st.w	$a0, $a1, 72
	ld.w	$a0, $a2, 76
	st.w	$a0, $a1, 76
	ld.w	$a0, $a2, 80
	st.w	$a0, $a1, 80
	ld.w	$a0, $a2, 84
	st.w	$a0, $a1, 84
	addi.d	$a0, $a2, 88
	addi.d	$a1, $a1, 88
	b	.LBB0_144
.LBB0_135:                              # %land.lhs.true494
	addi.d	$a0, $s1, 19
	bltu	$a0, $s2, .LBB0_149
# %bb.136:                              # %land.lhs.true494
	addi.d	$a1, $s1, 24
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_149
# %bb.137:                              # %lor.lhs.false510
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 190
	bne	$a0, $a1, .LBB0_149
# %bb.138:                              # %land.lhs.true586
	slli.d	$a0, $fp, 10
	addi.d	$a0, $a0, 180
	bltu	$s0, $a0, .LBB0_149
# %bb.139:                              # %land.lhs.true586
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bltu	$a1, $s2, .LBB0_149
# %bb.140:                              # %land.lhs.true586
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_149
# %bb.141:                              # %land.lhs.true608
	ori	$a0, $zero, 212
	bltu	$s0, $a0, .LBB0_149
# %bb.142:                              # %land.lhs.true608
	ld.w	$a0, $s1, 20
	sub.d	$a0, $a0, $s5
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a2, $a1, 212
	move	$a0, $s3
	bltu	$s7, $a2, .LBB0_64
# %bb.143:                              # %for.body639.preheader
	ldx.w	$a2, $s2, $a1
	add.d	$a0, $s2, $a1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	ld.w	$a1, $a0, 4
	st.w	$a1, $a3, 4
	ld.w	$a1, $a0, 8
	st.w	$a1, $a3, 8
	ld.w	$a1, $a0, 12
	st.w	$a1, $a3, 12
	ld.w	$a1, $a0, 16
	st.w	$a1, $a3, 16
	ld.w	$a1, $a0, 20
	st.w	$a1, $a3, 20
	ld.w	$a1, $a0, 24
	st.w	$a1, $a3, 24
	ld.w	$a1, $a0, 28
	st.w	$a1, $a3, 28
	ld.w	$a1, $a0, 32
	st.w	$a1, $a3, 32
	ld.w	$a1, $a0, 36
	st.w	$a1, $a3, 36
	ld.w	$a1, $a0, 40
	st.w	$a1, $a3, 40
	ld.w	$a1, $a0, 44
	st.w	$a1, $a3, 44
	ld.w	$a1, $a0, 48
	st.w	$a1, $a3, 48
	ld.w	$a1, $a0, 52
	st.w	$a1, $a3, 52
	ld.w	$a1, $a0, 56
	st.w	$a1, $a3, 56
	ld.w	$a1, $a0, 60
	st.w	$a1, $a3, 60
	ld.w	$a1, $a0, 64
	st.w	$a1, $a3, 64
	ld.w	$a1, $a0, 68
	st.w	$a1, $a3, 68
	ld.w	$a1, $a0, 72
	st.w	$a1, $a3, 72
	ld.w	$a1, $a0, 76
	st.w	$a1, $a3, 76
	ld.w	$a1, $a0, 80
	st.w	$a1, $a3, 80
	ld.w	$a1, $a0, 84
	st.w	$a1, $a3, 84
	ld.w	$a1, $a0, 88
	st.w	$a1, $a3, 88
	ld.w	$a1, $a0, 92
	st.w	$a1, $a3, 92
	ld.w	$a1, $a0, 96
	st.w	$a1, $a3, 96
	ld.w	$a1, $a0, 100
	st.w	$a1, $a3, 100
	ld.w	$a1, $a0, 104
	st.w	$a1, $a3, 104
	ld.w	$a1, $a0, 108
	st.w	$a1, $a3, 108
	ld.w	$a1, $a0, 112
	st.w	$a1, $a3, 112
	ld.w	$a1, $a0, 116
	st.w	$a1, $a3, 116
	ld.w	$a1, $a0, 120
	st.w	$a1, $a3, 120
	ld.w	$a1, $a0, 124
	st.w	$a1, $a3, 124
	ld.w	$a1, $a0, 128
	st.w	$a1, $a3, 128
	ld.w	$a1, $a0, 132
	st.w	$a1, $a3, 132
	ld.w	$a1, $a0, 136
	st.w	$a1, $a3, 136
	ld.w	$a1, $a0, 140
	st.w	$a1, $a3, 140
	ld.w	$a1, $a0, 144
	st.w	$a1, $a3, 144
	ld.w	$a1, $a0, 148
	st.w	$a1, $a3, 148
	ld.w	$a1, $a0, 152
	st.w	$a1, $a3, 152
	addi.d	$a0, $a0, 156
	addi.d	$a1, $a3, 156
.LBB0_144:                              # %if.end646
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a1, $s8, -3
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_0)
	sltui	$a1, $a1, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.w	$s7, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.wu	$a1, $a3, -4
	vst	$vr0, $a3, 0
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1
	st.d	$a2, $a3, 16
	add.d	$a3, $s2, $a1
	bstrpick.d	$a2, $s5, 31, 0
	sub.d	$a1, $zero, $a2
	beqz	$fp, .LBB0_147
# %bb.145:                              # %for.body668.preheader
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a4, $a4, -256
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, 256
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a5, $a5, 56
	ori	$a6, $zero, 1024
	xvreplgr2vr.w	$xr0, $a6
.LBB0_146:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a5, -32
	xvst	$xr0, $a5, 0
	addi.d	$a4, $a4, -16
	addi.d	$a5, $a5, 64
	bnez	$a4, .LBB0_146
.LBB0_147:                              # %for.end672
	ld.w	$a4, $a0, 12
	sub.d	$s1, $a3, $a2
	add.d	$a4, $s2, $a4
	add.d	$a4, $a4, $a1
	add.d	$a3, $s2, $a2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	ori	$a4, $zero, 3
	or	$s3, $a2, $a3
	bne	$s8, $a4, .LBB0_150
# %bb.148:                              # %if.then698
	ld.w	$s7, $a0, 64
	addi.d	$a0, $a0, 100
	b	.LBB0_151
.LBB0_149:
	move	$a0, $s3
	b	.LBB0_64
.LBB0_150:
	addi.d	$a0, $a0, 52
.LBB0_151:                              # %cleanup
	ld.w	$a0, $a0, 0
	add.d	$a0, $s2, $a0
	add.d	$fp, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $zero
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	move	$a4, $zero
	move	$a5, $s3
	move	$s5, $fp
	move	$a6, $fp
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unupack399)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	move	$a1, $a0
	move	$a0, $a2
	beq	$a1, $a2, .LBB0_64
# %bb.152:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s6
	addi.d	$a0, $a0, 32
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $s4, $a0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s0
	bgeu	$a0, $a1, .LBB0_82
	b	.LBB0_83
.Lfunc_end0:
	.size	unupack, .Lfunc_end0-unupack
                                        # -- End function
	.globl	unupack399                      # -- Begin function unupack399
	.p2align	5
	.type	unupack399,@function
unupack399:                             # @unupack399
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	move	$s6, $a5
	move	$fp, $a3
	move	$s7, $a2
	move	$s3, $a1
	move	$s4, $a0
	ld.d	$a1, $sp, 240
	ld.w	$a2, $a3, 0
	ld.w	$a3, $a3, 4
	st.w	$a4, $sp, 128
	st.d	$a1, $sp, 136
	st.w	$a2, $sp, 144
	st.w	$a3, $sp, 148
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$s1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 4
	ori	$a1, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$s5, $fp, 8
	ori	$a1, $zero, 2
	move	$a0, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$s2, $fp, 12
	ori	$a1, $zero, 3
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 16
	ori	$a1, $zero, 4
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 20
	ori	$a1, $zero, 5
	move	$a0, $s1
	move	$s1, $a2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 1912
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s3, 31, 0
	add.d	$a5, $s4, $a0
	addi.d	$a0, $fp, 2047
	addi.d	$a0, $a0, 961
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 24
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s8, $zero, 6
	lu12i.w	$a0, 1
	ori	$a0, $a0, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, -64
	ori	$a0, $a0, 4092
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
.LBB1_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_27 Depth 2
                                        #     Child Loop BB1_53 Depth 2
                                        #     Child Loop BB1_66 Depth 2
                                        #     Child Loop BB1_6 Depth 2
                                        #     Child Loop BB1_16 Depth 2
	st.w	$s7, $sp, 132
	slli.d	$a0, $s7, 2
	bstrpick.d	$a0, $a0, 31, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	addi.d	$a1, $a0, 88
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	ld.w	$s7, $sp, 132
	beqz	$a0, .LBB1_6
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	andi	$a0, $s7, 255
	sltu	$a0, $s8, $a0
	ori	$a1, $zero, 8
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 11
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.w	$a1, $sp, 128
	srli.d	$a2, $s7, 8
	bstrins.d	$a0, $a2, 31, 8
	st.w	$a0, $sp, 132
	ori	$a0, $zero, 48
	bstrins.d	$a1, $a0, 7, 0
	st.w	$a1, $sp, 128
	ld.d	$a0, $sp, 112
	addi.w	$a2, $zero, -208
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_20
# %bb.3:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.wu	$a0, $sp, 128
	ld.d	$a1, $sp, 112
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_33
# %bb.4:                                # %if.then149
                                        #   in Loop: Header=BB1_1 Depth=1
	move	$s7, $s1
	move	$s1, $s2
	ld.d	$a0, $sp, 112
	addi.d	$a1, $a0, 96
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_39
# %bb.5:                                # %if.then153
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.wu	$a0, $sp, 128
	ld.d	$a1, $sp, 112
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a2, $s7, $a0
	maskeqz	$a3, $s0, $a0
	or	$a1, $a2, $a1
	masknez	$a0, $s7, $a0
	or	$s0, $a3, $a0
	move	$s2, $s5
	move	$fp, $s1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_6:                                # %do.body304
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a0, $s7, 255
	addi.d	$a1, $a0, -3
	sltu	$a0, $a0, $a1
	masknez	$a0, $a1, $a0
	move	$a1, $s7
	bstrins.d	$a1, $zero, 7, 0
	or	$s7, $a0, $a1
	bltu	$s8, $a0, .LBB1_6
# %bb.7:                                # %do.end318
                                        #   in Loop: Header=BB1_1 Depth=1
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.w	$s7, $sp, 132
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	bgeu	$a0, $s6, .LBB1_10
# %bb.8:                                # %do.end318
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	bgeu	$s6, $a4, .LBB1_10
# %bb.9:                                # %if.then326
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.bu	$a0, $s6, -1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	srl.w	$a0, $a0, $a2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 10
	lu12i.w	$a2, 1
	ori	$a2, $a2, 8
	add.w	$a2, $a0, $a2
.LBB1_10:                               # %if.end331
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $sp, 128
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	add.d	$s1, $a3, $a2
	ori	$a2, $a1, 1
	addi.w	$a1, $a2, 0
	st.w	$a2, $sp, 132
	beqz	$a0, .LBB1_35
# %bb.11:                               # %if.then339
                                        #   in Loop: Header=BB1_1 Depth=1
	addi.w	$a2, $zero, -1
	beqz	$s3, .LBB1_75
# %bb.12:                               # %if.then339
                                        #   in Loop: Header=BB1_1 Depth=1
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	bstrpick.d	$a3, $s5, 31, 0
	sub.d	$s0, $s6, $a3
	bltu	$s0, $s4, .LBB1_75
# %bb.13:                               # %land.lhs.true354
                                        #   in Loop: Header=BB1_1 Depth=1
	addi.d	$a3, $s0, 1
	bltu	$a4, $a3, .LBB1_75
# %bb.14:                               # %land.lhs.true354
                                        #   in Loop: Header=BB1_1 Depth=1
	bgeu	$s4, $a3, .LBB1_75
# %bb.15:                               # %do.body366.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	ori	$s2, $zero, 2
	.p2align	4, , 16
.LBB1_16:                               # %do.body366
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s0, 0
	bstrins.d	$a1, $zero, 15, 8
	andi	$fp, $a0, 255
	and	$a0, $a0, $a2
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 512
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 256
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 132
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	add.d	$a1, $s1, $a0
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 132
	alsl.d	$a3, $a2, $a0, 1
	srli.d	$a4, $a2, 8
	move	$a1, $a3
	bstrins.d	$a1, $a4, 63, 8
	st.w	$a1, $sp, 132
	bltu	$fp, $s2, .LBB1_38
# %bb.17:                               # %if.then388
                                        #   in Loop: Header=BB1_16 Depth=2
	sub.d	$a0, $a4, $a0
	andi	$a4, $a0, 1
	srli.d	$a0, $fp, 1
	bnez	$a4, .LBB1_16
# %bb.18:                               # %if.then399
                                        #   in Loop: Header=BB1_1 Depth=1
	andi	$a0, $a3, 255
	srli.d	$a1, $a2, 16
	bstrins.d	$a0, $a1, 63, 16
	st.w	$a0, $sp, 132
	addi.w	$a1, $a0, 0
	addi.d	$a0, $sp, 136
	ori	$a2, $zero, 256
	addi.d	$a3, $sp, 112
	addi.d	$a5, $sp, 132
	move	$a4, $s1
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_50)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB1_75
# %bb.19:                               #   in Loop: Header=BB1_1 Depth=1
	move	$a1, $zero
	move	$a0, $a3
	move	$s0, $s5
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	b	.LBB1_37
	.p2align	4, , 16
.LBB1_20:                               # %if.then24
                                        #   in Loop: Header=BB1_1 Depth=1
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a0, $sp, 132
	addi.w	$s7, $a0, -1
	st.w	$s7, $sp, 132
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 112
	addi.d	$a0, $sp, 136
	addi.d	$a2, $sp, 128
	addi.d	$a3, $sp, 112
	addi.d	$a4, $sp, 124
	move	$a1, $s7
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_54)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	beq	$a0, $a2, .LBB1_75
# %bb.21:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.w	$s1, $sp, 124
	addi.w	$s5, $s1, -1
	sltui	$a0, $s5, 3
	ori	$a1, $zero, 3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 64
	st.w	$a1, $sp, 128
	slli.d	$a1, $a0, 6
	st.w	$a1, $sp, 132
	slli.d	$a0, $a0, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 888
	addi.d	$a0, $sp, 136
	ori	$a1, $zero, 1
	ori	$a2, $zero, 64
	addi.d	$a3, $sp, 112
	addi.d	$a5, $sp, 132
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_50)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	beq	$a0, $a2, .LBB1_75
# %bb.22:                               # %if.end45
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.wu	$a0, $sp, 132
	andi	$a1, $a0, 252
	beqz	$a1, .LBB1_42
# %bb.23:                               # %if.then48
                                        #   in Loop: Header=BB1_1 Depth=1
	srli.d	$a1, $a0, 1
	ori	$a3, $zero, 1
	bstrins.d	$a0, $a3, 63, 1
	addi.d	$s0, $a1, -1
	andi	$a1, $s0, 255
	sll.w	$fp, $a0, $s0
	slli.d	$a0, $fp, 2
	bstrpick.d	$a0, $a0, 31, 2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a3, 2
	addi.d	$a4, $a0, 376
	st.d	$a4, $sp, 112
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	bltu	$a1, $s8, .LBB1_51
# %bb.24:                               # %if.then60
                                        #   in Loop: Header=BB1_1 Depth=1
	bstrins.d	$s0, $zero, 7, 0
	addi.d	$a0, $a1, -4
	or	$a4, $a0, $s0
	st.w	$a4, $sp, 128
	st.w	$zero, $sp, 132
	ori	$a0, $zero, 4
	bltu	$s3, $a0, .LBB1_75
# %bb.25:                               # %do.body66.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $sp, 148
	ld.w	$a5, $sp, 144
	ld.d	$a1, $sp, 136
	move	$a3, $zero
	addi.d	$a4, $a4, -1
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_26:                               # %do.cond
                                        #   in Loop: Header=BB1_27 Depth=2
	st.w	$a4, $sp, 128
	addi.w	$a4, $a4, -1
	addi.w	$a7, $zero, -1
	move	$a5, $a6
	beq	$a4, $a7, .LBB1_50
.LBB1_27:                               # %do.body66
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$a1, $s4, .LBB1_75
# %bb.28:                               # %do.body66
                                        #   in Loop: Header=BB1_27 Depth=2
	addi.d	$a6, $a1, 4
	bltu	$t0, $a6, .LBB1_75
# %bb.29:                               # %if.end83
                                        #   in Loop: Header=BB1_27 Depth=2
	ld.w	$a6, $a1, 0
	revb.2w	$a7, $a6
	bstrpick.d	$a6, $a5, 31, 1
	st.w	$a6, $sp, 144
	sub.w	$a7, $a7, $a0
	slli.d	$a3, $a3, 1
	st.w	$a3, $sp, 132
	bltu	$a7, $a6, .LBB1_31
# %bb.30:                               # %if.then102
                                        #   in Loop: Header=BB1_27 Depth=2
	ori	$a3, $a3, 1
	st.w	$a3, $sp, 132
	add.d	$a0, $a0, $a6
	st.w	$a0, $sp, 148
.LBB1_31:                               # %if.end107
                                        #   in Loop: Header=BB1_27 Depth=2
	bstrpick.d	$a5, $a5, 31, 25
	bnez	$a5, .LBB1_26
# %bb.32:                               # %if.then111
                                        #   in Loop: Header=BB1_27 Depth=2
	slli.d	$a0, $a0, 8
	st.w	$a0, $sp, 148
	slli.d	$a6, $a6, 8
	st.w	$a6, $sp, 144
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 136
	b	.LBB1_26
.LBB1_33:                               # %if.else170
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.wu	$a0, $sp, 128
	ld.d	$a1, $sp, 112
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_43
# %bb.34:                               #   in Loop: Header=BB1_1 Depth=1
	move	$fp, $s0
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	move	$s0, $s5
	b	.LBB1_40
.LBB1_35:                               # %if.else421
                                        #   in Loop: Header=BB1_1 Depth=1
	move	$fp, $s0
	ori	$a0, $zero, 256
	st.w	$a0, $sp, 128
	addi.d	$a0, $sp, 136
	ori	$a2, $zero, 256
	addi.d	$a3, $sp, 112
	addi.d	$a5, $sp, 132
	move	$a4, $s1
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_50)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a2, $zero, -1
	beq	$a0, $a2, .LBB1_75
# %bb.36:                               #   in Loop: Header=BB1_1 Depth=1
	move	$a1, $zero
	move	$a0, $s2
	move	$s0, $s5
	move	$s2, $fp
.LBB1_37:                               # %if.end430
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_70
.LBB1_38:                               #   in Loop: Header=BB1_1 Depth=1
	move	$a1, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$s0, $s5
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_70
.LBB1_39:                               #   in Loop: Header=BB1_1 Depth=1
	move	$s2, $s5
	move	$fp, $s0
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	move	$s0, $s1
.LBB1_40:                               # %if.end215
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.w	$s7, $sp, 132
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 112
	addi.d	$a0, $sp, 136
	addi.d	$a2, $sp, 128
	addi.d	$a3, $sp, 112
	addi.d	$a4, $sp, 124
	move	$a1, $s7
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_54)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB1_75
# %bb.41:                               # %if.end221
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $sp, 128
	ld.w	$s1, $sp, 124
	st.w	$a0, $sp, 132
	addi.w	$s5, $s1, -1
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	move	$s2, $fp
	b	.LBB1_55
.LBB1_42:                               #   in Loop: Header=BB1_1 Depth=1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	addi.w	$s0, $a0, 1
	b	.LBB1_55
.LBB1_43:                               # %if.else176
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $sp, 132
	ori	$s7, $a0, 1
	st.w	$s7, $sp, 132
	ori	$a0, $zero, 128
	st.b	$a0, $sp, 128
	addi.w	$a2, $zero, -1
	beqz	$s3, .LBB1_75
# %bb.44:                               # %if.else176
                                        #   in Loop: Header=BB1_1 Depth=1
	bstrpick.d	$a0, $s5, 31, 0
	sub.d	$a0, $s6, $a0
	bltu	$a0, $s4, .LBB1_75
# %bb.45:                               # %land.lhs.true188
                                        #   in Loop: Header=BB1_1 Depth=1
	bltu	$s6, $s4, .LBB1_75
# %bb.46:                               # %land.lhs.true188
                                        #   in Loop: Header=BB1_1 Depth=1
	addi.d	$a1, $a0, 1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	bltu	$a5, $a1, .LBB1_75
# %bb.47:                               # %land.lhs.true188
                                        #   in Loop: Header=BB1_1 Depth=1
	bgeu	$s4, $a1, .LBB1_75
# %bb.48:                               # %land.lhs.true201
                                        #   in Loop: Header=BB1_1 Depth=1
	addi.d	$a1, $s6, 1
	bltu	$a5, $a1, .LBB1_75
# %bb.49:                               # %if.end210
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.b	$a0, $a0, 0
	st.b	$a0, $s6, 0
	move	$s6, $a1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB1_1
	b	.LBB1_74
.LBB1_50:                               # %do.end
                                        #   in Loop: Header=BB1_1 Depth=1
	alsl.w	$fp, $a3, $fp, 4
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	st.d	$a4, $sp, 112
	ori	$s0, $zero, 4
.LBB1_51:                               # %if.end125
                                        #   in Loop: Header=BB1_1 Depth=1
	ori	$a0, $zero, 1
	sll.w	$a2, $a0, $s0
	st.w	$a2, $sp, 128
	st.w	$s0, $sp, 132
	addi.d	$a0, $sp, 136
	ori	$a1, $zero, 1
	addi.d	$a3, $sp, 112
	addi.d	$a5, $sp, 132
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_50)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB1_75
# %bb.52:                               # %if.end131
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $sp, 132
	srai.d	$a1, $a0, 31
	.p2align	4, , 16
.LBB1_53:                               # %do.body133
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a1
	move	$a1, $a0
	bstrpick.d	$a0, $a0, 31, 1
	addi.w	$s0, $s0, -1
	bstrins.d	$a1, $a2, 63, 1
	bnez	$s0, .LBB1_53
# %bb.54:                               # %do.end141
                                        #   in Loop: Header=BB1_1 Depth=1
	st.w	$a0, $sp, 132
	add.d	$a1, $a1, $fp
	addi.w	$s0, $a1, 1
	.p2align	4, , 16
.LBB1_55:                               # %if.end222
                                        #   in Loop: Header=BB1_1 Depth=1
	st.w	$s1, $sp, 128
	addi.w	$a2, $zero, -1
	bltu	$s6, $s4, .LBB1_75
# %bb.56:                               # %if.end222
                                        #   in Loop: Header=BB1_1 Depth=1
	beqz	$s3, .LBB1_75
# %bb.57:                               # %if.end222
                                        #   in Loop: Header=BB1_1 Depth=1
	bgeu	$s5, $s3, .LBB1_75
# %bb.58:                               # %land.lhs.true234
                                        #   in Loop: Header=BB1_1 Depth=1
	bstrpick.d	$a3, $s1, 31, 0
	add.d	$a1, $s6, $a3
	bltu	$a5, $a1, .LBB1_75
# %bb.59:                               # %land.lhs.true234
                                        #   in Loop: Header=BB1_1 Depth=1
	bgeu	$s4, $a1, .LBB1_75
# %bb.60:                               # %land.lhs.true234
                                        #   in Loop: Header=BB1_1 Depth=1
	bgeu	$s1, $s3, .LBB1_75
# %bb.61:                               # %land.lhs.true257
                                        #   in Loop: Header=BB1_1 Depth=1
	bstrpick.d	$a1, $s0, 31, 0
	sub.d	$a4, $s6, $a1
	bltu	$a4, $s4, .LBB1_75
# %bb.62:                               # %land.lhs.true263
                                        #   in Loop: Header=BB1_1 Depth=1
	add.d	$a3, $a4, $a3
	addi.d	$a3, $a3, 1
	bltu	$a5, $a3, .LBB1_75
# %bb.63:                               # %land.lhs.true263
                                        #   in Loop: Header=BB1_1 Depth=1
	bgeu	$s4, $a3, .LBB1_75
# %bb.64:                               # %if.end284
                                        #   in Loop: Header=BB1_1 Depth=1
	sub.d	$a1, $zero, $a1
	beqz	$s1, .LBB1_68
# %bb.65:                               # %for.body289.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	move	$a0, $zero
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_66:                               # %for.body289
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a2, $s6, $a1
	st.b	$a2, $s6, 0
	ld.w	$a2, $sp, 128
	addi.w	$a0, $a0, 1
	addi.d	$s6, $s6, 1
	bltu	$a0, $a2, .LBB1_66
# %bb.67:                               # %for.end296.loopexit
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $sp, 132
	b	.LBB1_69
.LBB1_68:                               #   in Loop: Header=BB1_1 Depth=1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
.LBB1_69:                               # %for.end296
                                        #   in Loop: Header=BB1_1 Depth=1
	ldx.bu	$a1, $s6, $a1
	srli.d	$a0, $a0, 8
	bstrins.d	$a1, $a0, 31, 8
	st.w	$a1, $sp, 132
	ori	$a1, $zero, 128
	move	$a0, $a3
.LBB1_70:                               # %if.end430
                                        #   in Loop: Header=BB1_1 Depth=1
	st.w	$a1, $sp, 128
	addi.w	$a2, $zero, -1
	beqz	$s3, .LBB1_75
# %bb.71:                               # %if.end430
                                        #   in Loop: Header=BB1_1 Depth=1
	bltu	$s6, $s4, .LBB1_75
# %bb.72:                               # %land.lhs.true439
                                        #   in Loop: Header=BB1_1 Depth=1
	addi.d	$a1, $s6, 1
	bltu	$a5, $a1, .LBB1_75
# %bb.73:                               # %if.end450
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.b	$a2, $sp, 132
	st.b	$a2, $s6, 0
	move	$s5, $s0
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	move	$s0, $s2
	move	$s2, $a0
	move	$s6, $a1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB1_1
.LBB1_74:
	ori	$a2, $zero, 1
.LBB1_75:                               # %cleanup458
	move	$a0, $a2
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end1:
	.size	unupack399, .Lfunc_end1-unupack399
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Upack: EP: %08x original:  %08X || %08x\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Upack: context bits out of bounds\n"
	.size	.L.str.1, 35

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Upack: Context Bits parameter used with lzma: %02x, %02x\n"
	.size	.L.str.2, 58

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Upack: data initialized, before upack lzma call!\n"
	.size	.L.str.3, 50

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Upack: EP: %08x original %08x\n"
	.size	.L.str.4, 31

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Upack: something's wrong, report back\n"
	.size	.L.str.5, 39

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Upack: %08x %08x %08x %08x\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Upack: EBX: %08x\n"
	.size	.L.str.7, 18

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Upack: DEST: %08x, %08x\n"
	.size	.L.str.8, 25

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Upack: probably hand-crafted data, report back\n"
	.size	.L.str.9, 48

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Upack: ecx counter: %08x\n"
	.size	.L.str.10, 26

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Upack: before_fixing\n"
	.size	.L.str.11, 22

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Upack v 1.1/1.2\n"
	.size	.L.str.12, 17

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Upack: alvalue out of bounds\n"
	.size	.L.str.13, 30

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Upack: loops: %08x search value: %02x\n"
	.size	.L.str.14, 39

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Upack: callfixerr %08x %08x = %08x, %08x\n"
	.size	.L.str.15, 42

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Upack: callfixerr\n"
	.size	.L.str.16, 19

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Upack: Rebuilding failed\n"
	.size	.L.str.17, 26

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\n\tp0: %08x\n\tp1: %08x\n\tp2: %08x\n"
	.size	.L.str.18, 32

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"state[%d] = %08x\n"
	.size	.L.str.19, 18

	.section	".note.GNU-stack","",@progbits
	.addrsig
