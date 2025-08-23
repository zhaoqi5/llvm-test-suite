	.file	"libclamav_spin.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function unspin
.LCPI0_0:
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	253                             # 0xfd
	.byte	252                             # 0xfc
	.byte	251                             # 0xfb
	.byte	250                             # 0xfa
	.byte	249                             # 0xf9
	.byte	248                             # 0xf8
	.byte	247                             # 0xf7
	.byte	246                             # 0xf6
	.byte	245                             # 0xf5
	.byte	244                             # 0xf4
	.byte	243                             # 0xf3
	.byte	242                             # 0xf2
	.byte	241                             # 0xf1
	.byte	240                             # 0xf0
	.byte	239                             # 0xef
	.byte	238                             # 0xee
	.byte	237                             # 0xed
	.byte	236                             # 0xec
	.byte	235                             # 0xeb
	.byte	234                             # 0xea
	.byte	233                             # 0xe9
	.byte	232                             # 0xe8
	.byte	231                             # 0xe7
	.byte	230                             # 0xe6
	.byte	229                             # 0xe5
	.byte	228                             # 0xe4
	.byte	227                             # 0xe3
	.byte	226                             # 0xe2
	.byte	225                             # 0xe1
.LCPI0_1:
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_2:
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	253                             # 0xfd
	.byte	252                             # 0xfc
	.byte	251                             # 0xfb
	.byte	250                             # 0xfa
	.byte	249                             # 0xf9
	.byte	248                             # 0xf8
	.byte	247                             # 0xf7
	.byte	246                             # 0xf6
	.byte	245                             # 0xf5
	.byte	244                             # 0xf4
	.byte	243                             # 0xf3
	.byte	242                             # 0xf2
	.byte	241                             # 0xf1
.LCPI0_3:
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.text
	.globl	unspin
	.p2align	5
	.type	unspin,@function
unspin:                                 # @unspin
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
	move	$s6, $a6
	move	$s3, $a5
	move	$s8, $a4
	move	$fp, $a3
	move	$s1, $a2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	slli.d	$a0, $fp, 5
	alsl.d	$s2, $fp, $a0, 2
	add.d	$s0, $s1, $s2
	ld.wu	$a0, $s0, 12
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	beqz	$a0, .LBB0_25
# %bb.1:                                # %if.end
	move	$s7, $a0
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	ld.wu	$a0, $s0, 8
	ld.wu	$a2, $s0, 12
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	add.d	$a1, $s4, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s0, 0
	bstrpick.d	$s4, $s8, 31, 0
	sub.d	$s6, $s4, $a0
	add.d	$s3, $s7, $s6
	ld.bu	$a0, $s3, 219
	ori	$a1, $zero, 187
	bne	$a0, $a1, .LBB0_23
# %bb.2:                                # %if.end19
	ld.bu	$a0, $s3, 224
	ori	$a1, $zero, 185
	bne	$a0, $a1, .LBB0_23
# %bb.3:                                # %if.end25
	ld.w	$a0, $s3, 225
	lu12i.w	$a1, 1
	ori	$a2, $a1, 510
	bne	$a0, $a2, .LBB0_23
# %bb.4:                                # %if.end31
	ld.bu	$s8, $s3, 220
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bltz	$s6, .LBB0_8
# %bb.5:                                # %if.end31
	ld.wu	$a0, $s0, 12
	lu12i.w	$a2, 3
	ori	$a1, $a2, 482
	bltu	$a0, $a1, .LBB0_8
# %bb.6:                                # %land.lhs.true51
	add.d	$a1, $s6, $a1
	bltu	$a0, $a1, .LBB0_8
# %bb.7:                                # %land.lhs.true81
	ori	$a1, $a2, 539
	add.d	$a1, $s6, $a1
	bgeu	$a0, $a1, .LBB0_9
.LBB0_8:                                # %if.then100
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB0_24
.LBB0_9:                                # %if.end101
	ld.bu	$a0, $s3, 480
	ori	$a1, $zero, 184
	beq	$a0, $a1, .LBB0_11
# %bb.10:                               # %if.then106
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 3
.LBB0_11:                               # %if.end107
	ld.bu	$a0, $s3, 483
	andi	$a0, $a0, 32
	ori	$a1, $a2, 535
	beqz	$a0, .LBB0_13
# %bb.12:                               # %if.then110
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu12i.w	$a2, 3
.LBB0_13:                               # %iter.check
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_0)
	add.d	$a6, $s3, $a1
	addi.d	$a0, $s8, 32
	xvreplgr2vr.b	$xr1, $s8
	xvadd.b	$xr0, $xr1, $xr0
	ori	$a1, $a2, 451
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a2, %pc_lo12(.LCPI0_1)
	add.d	$a1, $s6, $a1
	lu12i.w	$a5, 1
	ori	$a2, $a5, 480
	xvrepli.b	$xr2, -32
	.p2align	4, , 16
.LBB0_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvldx	$xr3, $s7, $a1
	xvpermi.d	$xr4, $xr0, 78
	xvshuf.b	$xr4, $xr0, $xr4, $xr1
	xvxor.v	$xr3, $xr3, $xr4
	xvstx	$xr3, $s7, $a1
	xvadd.b	$xr0, $xr0, $xr2
	addi.d	$a2, $a2, -32
	addi.d	$a1, $a1, -32
	bnez	$a2, .LBB0_14
# %bb.15:                               # %vec.epilog.ph
	vreplgr2vr.b	$vr0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_2)
	ori	$a0, $a5, 4083
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_3)
	vldx	$vr3, $s3, $a0
	vadd.b	$vr0, $vr0, $vr1
	addi.d	$a1, $s8, 16
	vshuf.b	$vr0, $vr0, $vr0, $vr2
	vxor.v	$vr0, $vr3, $vr0
	ori	$a2, $a5, 4082
	ldx.b	$a3, $s3, $a2
	vstx	$vr0, $s3, $a0
	ori	$a0, $a5, 4081
	ldx.b	$a4, $s3, $a0
	xor	$a1, $a3, $a1
	addi.d	$a3, $s8, 15
	stx.b	$a1, $s3, $a2
	xor	$a1, $a4, $a3
	ori	$a2, $a5, 4080
	ldx.b	$a3, $s3, $a2
	addi.d	$a4, $s8, 14
	stx.b	$a1, $s3, $a0
	addi.d	$a0, $s8, 13
	xor	$a1, $a3, $a4
	ori	$a3, $a5, 4079
	ldx.b	$a4, $s3, $a3
	stx.b	$a1, $s3, $a2
	ori	$a1, $a5, 4078
	ldx.b	$a2, $s3, $a1
	xor	$a0, $a4, $a0
	addi.d	$a4, $s8, 12
	stx.b	$a0, $s3, $a3
	xor	$a0, $a2, $a4
	ori	$a2, $a5, 4077
	ldx.b	$a3, $s3, $a2
	addi.d	$a4, $s8, 11
	stx.b	$a0, $s3, $a1
	addi.d	$a0, $s8, 10
	xor	$a1, $a3, $a4
	ori	$a3, $a5, 4076
	ldx.b	$a4, $s3, $a3
	stx.b	$a1, $s3, $a2
	ori	$a1, $a5, 4075
	ldx.b	$a2, $s3, $a1
	xor	$a0, $a4, $a0
	addi.d	$a4, $s8, 9
	stx.b	$a0, $s3, $a3
	xor	$a0, $a2, $a4
	ori	$a2, $a5, 4074
	ldx.b	$a3, $s3, $a2
	addi.d	$a4, $s8, 8
	stx.b	$a0, $s3, $a1
	addi.d	$a0, $s8, 7
	xor	$a1, $a3, $a4
	ori	$a3, $a5, 4073
	ldx.b	$a4, $s3, $a3
	stx.b	$a1, $s3, $a2
	ori	$a1, $a5, 4072
	ldx.b	$a2, $s3, $a1
	xor	$a0, $a4, $a0
	stx.b	$a0, $s3, $a3
	addi.d	$a0, $s8, 6
	xor	$a0, $a2, $a0
	ori	$a2, $a5, 4071
	ldx.b	$a3, $s3, $a2
	stx.b	$a0, $s3, $a1
	addi.d	$a0, $s8, 5
	addi.d	$a1, $s8, 4
	xor	$a0, $a3, $a0
	stx.b	$a0, $s3, $a2
	ori	$a0, $a5, 4070
	ldx.b	$a2, $s3, $a0
	addi.d	$a3, $s8, 3
	ori	$a4, $a5, 4069
	ldx.b	$a5, $s3, $a4
	xor	$a1, $a2, $a1
	ldptr.w	$a2, $s3, 9968
	stx.b	$a1, $s3, $a0
	xor	$a0, $a5, $a3
	ori	$a1, $zero, 1440
	stx.b	$a0, $s3, $a4
	bne	$a2, $a1, .LBB0_23
# %bb.16:                               # %if.end129
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1771
	ldx.w	$s8, $s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 1440
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s6, 725
	addi.w	$a1, $zero, -1440
	lu12i.w	$a2, -474328
	ori	$a2, $a2, 2100
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
.LBB0_17:                               # %while.body134
                                        # =>This Inner Loop Header: Depth=1
	andi	$a4, $s8, 1
	sltui	$a4, $a4, 1
	bstrpick.d	$a5, $s8, 31, 1
	xor	$a6, $a5, $a2
	ldx.b	$a7, $s7, $a0
	masknez	$a6, $a6, $a4
	maskeqz	$a4, $a5, $a4
	or	$s8, $a4, $a6
	xor	$a4, $a7, $s8
	stx.b	$a4, $s7, $a0
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	and	$a4, $a1, $a3
	addi.d	$a0, $a0, 1
	beqz	$a4, .LBB0_17
# %bb.18:                               # %while.end146
	ld.w	$a0, $s3, 1065
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	sub.w	$a1, $a2, $a0
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	bgeu	$a1, $a2, .LBB0_26
# %bb.19:                               # %if.end153
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s3, $a0, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(summit)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s0, 8
	ld.wu	$a2, $s0, 12
	move	$s8, $a0
	add.d	$a0, $s6, $a1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ori	$a0, $zero, 4
	blt	$a2, $a0, .LBB0_22
# %bb.20:                               # %land.lhs.true185
	ld.wu	$a0, $s0, 8
	ld.wu	$a1, $s0, 0
	add.d	$a0, $a0, $s4
	sub.d	$s0, $a0, $a1
	lu12i.w	$a0, -4
	ori	$a0, $a0, 3577
	blt	$s0, $a0, .LBB0_22
# %bb.21:                               # %land.lhs.true189
	lu12i.w	$a0, 3
	ori	$a0, $a0, 523
	add.d	$a0, $s0, $a0
	bgeu	$a2, $a0, .LBB0_27
.LBB0_22:                               # %if.then201
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	b	.LBB0_24
.LBB0_23:                               # %if.then18
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
.LBB0_24:                               # %cleanup791
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_25:                               # %cleanup791
	move	$a0, $s5
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
.LBB0_26:                               # %if.then152
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB0_24
.LBB0_27:                               # %if.end202
	add.d	$s4, $s6, $s0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 519
	add.d	$a0, $s4, $a0
	ld.w	$s5, $a0, 0
	sub.w	$s7, $s3, $s8
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s7
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB0_35
# %bb.28:                               # %for.body.preheader
	move	$a1, $zero
	lu12i.w	$a0, -76742
	ori	$a0, $a0, 3889
	b	.LBB0_30
.LBB0_29:                               # %if.end263
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a1, $a1, 1
	bstrpick.d	$s5, $s5, 31, 1
	beq	$a1, $fp, .LBB0_35
.LBB0_30:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
	andi	$a2, $s5, 1
	beqz	$a2, .LBB0_29
# %bb.31:                               # %if.then209
                                        #   in Loop: Header=BB0_30 Depth=1
	slli.d	$a2, $a1, 5
	alsl.d	$a2, $a1, $a2, 2
	add.d	$a3, $s1, $a2
	ld.w	$a2, $a3, 12
	addi.w	$a4, $a2, -1
	bgeu	$a4, $t0, .LBB0_49
# %bb.32:                               # %if.then209
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.wu	$a3, $a3, 8
	add.d	$a4, $a3, $a2
	bltu	$t0, $a4, .LBB0_49
# %bb.33:                               # %while.body246.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	add.d	$a3, $s6, $a3
	move	$a4, $s7
.LBB0_34:                               # %while.body246
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $a2, -1
	andi	$a5, $a4, 1
	sltui	$a5, $a5, 1
	bstrpick.d	$a4, $a4, 31, 1
	xor	$a6, $a4, $a0
	ld.b	$a7, $a3, 0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	xor	$a5, $a7, $a4
	st.b	$a5, $a3, 0
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB0_34
	b	.LBB0_29
.LBB0_35:                               # %for.end
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 1604
	ori	$s3, $zero, 384
	bne	$a0, $s3, .LBB0_48
# %bb.36:                               # %if.end270
	ld.w	$s5, $s4, 1616
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 384
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bltu	$a0, $s3, .LBB0_50
# %bb.37:                               # %if.end270
	lu12i.w	$a0, -3
	ori	$a0, $a0, 1837
	blt	$s0, $a0, .LBB0_50
# %bb.38:                               # %while.body302.preheader
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2259
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s4, $a0
	addi.w	$a1, $zero, -384
	lu12i.w	$a2, -76742
	ori	$a2, $a2, 3890
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
.LBB0_39:                               # %while.body302
                                        # =>This Inner Loop Header: Depth=1
	andi	$a4, $s5, 1
	sltui	$a4, $a4, 1
	bstrpick.d	$a5, $s5, 31, 1
	xor	$a6, $a5, $a2
	ld.b	$a7, $a0, 0
	masknez	$a6, $a6, $a4
	maskeqz	$a4, $a5, $a4
	or	$s5, $a4, $a6
	xor	$a4, $a7, $s5
	st.b	$a4, $a0, 0
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	and	$a4, $a1, $a3
	addi.d	$a0, $a0, 1
	beqz	$a4, .LBB0_39
# %bb.40:                               # %while.end316
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2269
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ori	$s3, $zero, 417
	bne	$a0, $s3, .LBB0_48
# %bb.41:                               # %if.end322
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 417
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bltu	$a0, $s3, .LBB0_58
# %bb.42:                               # %if.end322
	addi.w	$a0, $zero, -1748
	blt	$s0, $a0, .LBB0_58
# %bb.43:                               # %while.body352.preheader
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2284
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$s5, $a1, $a0
	addi.d	$s0, $a1, 1748
	ori	$s3, $zero, 417
.LBB0_44:                               # %while.body352
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s0, 0
	andi	$a1, $s3, 255
	addi.d	$a3, $sp, 84
	move	$a2, $s5
	pcaddu18i	$ra, %call36(exec86)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 84
	st.b	$a0, $s0, 0
	bnez	$a1, .LBB0_59
# %bb.45:                               # %cleanup361
                                        #   in Loop: Header=BB0_44 Depth=1
	addi.w	$s3, $s3, -1
	addi.d	$s0, $s0, 1
	bnez	$s3, .LBB0_44
# %bb.46:                               # %while.end364
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s6, $a0, 1777
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	blt	$fp, $s5, .LBB0_61
# %bb.47:                               # %for.body371.preheader
	move	$s0, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s7, $a0, 1877
	b	.LBB0_53
.LBB0_48:                               # %if.then269
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_51
.LBB0_49:                               # %if.then241
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	b	.LBB0_25
.LBB0_50:                               # %if.then297
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
.LBB0_51:                               # %cleanup791
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	b	.LBB0_25
.LBB0_52:                               # %if.end422
                                        #   in Loop: Header=BB0_53 Depth=1
	addi.d	$s0, $s0, 1
	bstrpick.d	$s6, $s6, 31, 1
	beq	$s0, $fp, .LBB0_61
.LBB0_53:                               # %for.body371
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_56 Depth 2
	andi	$a0, $s6, 1
	beqz	$a0, .LBB0_52
# %bb.54:                               # %if.then374
                                        #   in Loop: Header=BB0_53 Depth=1
	slli.d	$a0, $s0, 5
	alsl.d	$a0, $s0, $a0, 2
	add.d	$a0, $s1, $a0
	ld.w	$s3, $a0, 12
	beqz	$s3, .LBB0_52
# %bb.55:                               # %while.body405.preheader
                                        #   in Loop: Header=BB0_53 Depth=1
	ld.wu	$a0, $a0, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
.LBB0_56:                               # %while.body405
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s4, 0
	andi	$a1, $s3, 255
	addi.d	$a3, $sp, 80
	move	$a2, $s7
	pcaddu18i	$ra, %call36(exec86)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 80
	st.b	$a0, $s4, 0
	bnez	$a1, .LBB0_60
# %bb.57:                               # %cleanup415
                                        #   in Loop: Header=BB0_56 Depth=2
	addi.w	$s3, $s3, -1
	addi.d	$s4, $s4, 1
	bnez	$s3, .LBB0_56
	b	.LBB0_52
.LBB0_58:                               # %if.then348
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB0_51
.LBB0_59:                               # %cleanup361.thread
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	b	.LBB0_51
.LBB0_60:                               # %cleanup415.thread
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	b	.LBB0_51
.LBB0_61:                               # %for.end426
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 97
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	slli.d	$a0, $fp, 3
	move	$s4, $a0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_25
# %bb.62:                               # %for.cond435.preheader
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB0_74
# %bb.63:                               # %for.body438.lr.ph
	move	$s0, $zero
	move	$s8, $zero
	move	$s5, $zero
	addi.d	$s3, $s1, 12
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_66
.LBB0_64:                               # %if.else502
                                        #   in Loop: Header=BB0_66 Depth=1
	ld.wu	$a0, $s3, -4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	stx.d	$a0, $a1, $s0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_65:                               # %for.inc516
                                        #   in Loop: Header=BB0_66 Depth=1
	add.w	$s5, $s6, $s5
	bstrpick.d	$s7, $s7, 31, 1
	addi.w	$s8, $s8, 1
	addi.d	$s0, $s0, 8
	addi.d	$s3, $s3, 36
	beq	$s4, $s0, .LBB0_75
.LBB0_66:                               # %for.body438
                                        # =>This Inner Loop Header: Depth=1
	andi	$a1, $s7, 1
	sltui	$a0, $a1, 1
	addi.d	$a2, $s3, -8
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a2
	ld.wu	$a0, $a0, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 32
	addi.w	$s6, $a0, 0
	beqz	$a2, .LBB0_70
# %bb.67:                               # %land.lhs.true447
                                        #   in Loop: Header=BB0_66 Depth=1
	ld.d	$a3, $a2, 24
	beqz	$a3, .LBB0_70
# %bb.68:                               # %land.lhs.true450
                                        #   in Loop: Header=BB0_66 Depth=1
	bltu	$a3, $a0, .LBB0_93
# %bb.69:                               # %lor.lhs.false456
                                        #   in Loop: Header=BB0_66 Depth=1
	sub.d	$a2, $a3, $a0
	bltu	$a2, $s5, .LBB0_93
.LBB0_70:                               # %if.end468
                                        #   in Loop: Header=BB0_66 Depth=1
	beqz	$a1, .LBB0_64
# %bb.71:                               # %if.then471
                                        #   in Loop: Header=BB0_66 Depth=1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	stx.d	$a0, $a1, $s0
	beqz	$a0, .LBB0_99
# %bb.72:                               # %if.end480
                                        #   in Loop: Header=BB0_66 Depth=1
	ld.w	$a2, $s3, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s8
	move	$a3, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, -4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s0
	ld.w	$a2, $s3, 0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	move	$a3, $s6
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_unfsg)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_65
# %bb.73:                               # %if.then498
	addi.w	$s8, $s8, 1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_100
.LBB0_74:
	move	$s5, $zero
.LBB0_75:                               # %if.end536
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4078
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$s6, $a1, $a0
	beqz	$s6, .LBB0_84
# %bb.76:                               # %for.cond541.preheader
	move	$s4, $zero
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB0_81
# %bb.77:                               # %for.body544.preheader
	move	$a0, $fp
	move	$a1, $s1
	b	.LBB0_79
.LBB0_78:                               # %for.inc562
                                        #   in Loop: Header=BB0_79 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 36
	beqz	$a0, .LBB0_83
.LBB0_79:                               # %for.body544
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	bltu	$s6, $a2, .LBB0_78
# %bb.80:                               # %land.lhs.true550
                                        #   in Loop: Header=BB0_79 Depth=1
	ld.w	$a3, $a1, 12
	add.w	$a2, $a3, $a2
	bgeu	$s6, $a2, .LBB0_78
.LBB0_81:                               # %for.end564
	beq	$s4, $fp, .LBB0_83
# %bb.82:                               # %land.lhs.true567
	ori	$a0, $zero, 1
	sll.w	$s3, $a0, $s4
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	and	$a0, $s3, $a0
	beqz	$a0, .LBB0_110
.LBB0_83:                               # %if.else681
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_84:                               # %if.end683
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_95
# %bb.85:                               # %if.then688
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_94
# %bb.86:                               # %for.cond696.preheader
	move	$s2, $a0
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB0_90
# %bb.87:                               # %cond.end713.peel
	st.w	$zero, $s2, 8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	andi	$s4, $a0, 1
	sltui	$a0, $s4, 1
	ori	$a1, $zero, 4
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 12
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.w	$a3, $s1, 0
	ldx.wu	$a2, $s1, $a0
	ld.w	$a0, $s1, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.w	$a3, $s2, 0
	st.w	$a2, $s2, 12
	st.w	$a0, $s2, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$s0, $s2, 12
	beqz	$s4, .LBB0_89
# %bb.88:                               # %if.then758.peel
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_89:                               # %if.end761.peel
	ori	$a0, $zero, 1
	bne	$fp, $a0, .LBB0_106
.LBB0_90:                               # %for.end765
	lu12i.w	$a3, 1024
	lu12i.w	$a4, 1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $fp
	move	$a5, $zero
	move	$a6, $zero
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rebuildpe)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	bnez	$a0, .LBB0_92
# %bb.91:                               # %if.then768
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
.LBB0_92:                               # %cleanup773
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_105
.LBB0_93:                               # %if.then464
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	move	$a1, $s8
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_100
.LBB0_94:                               # %cleanup773.thread
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_95:                               # %if.end776
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	blt	$fp, $s5, .LBB0_105
# %bb.96:                               # %if.end776
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_105
# %bb.97:                               # %for.body780.preheader
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
.LBB0_98:                               # %for.body780
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_98
	b	.LBB0_105
.LBB0_99:                               # %if.then478
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_100:                              # %for.end518
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	blt	$s8, $s5, .LBB0_105
# %bb.101:                              # %for.body524.preheader
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	b	.LBB0_103
.LBB0_102:                              # %if.end530
                                        #   in Loop: Header=BB0_103 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s8, $s8, -1
	addi.d	$fp, $fp, 8
	beqz	$s8, .LBB0_105
.LBB0_103:                              # %for.body524
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_102
# %bb.104:                              # %if.then527
                                        #   in Loop: Header=BB0_103 Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_102
.LBB0_105:                              # %for.end790
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_25
.LBB0_106:                              # %cond.end713.preheader
	add.d	$s4, $s3, $s0
	addi.d	$s0, $fp, -1
	addi.d	$s1, $s1, 48
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s5, $a0, 8
	addi.d	$s6, $s2, 48
	b	.LBB0_108
.LBB0_107:                              # %if.end761
                                        #   in Loop: Header=BB0_108 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	add.d	$s4, $s4, $s7
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 36
	addi.d	$s5, $s5, 8
	addi.d	$s6, $s6, 36
	beqz	$s0, .LBB0_90
.LBB0_108:                              # %cond.end713
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s6, -36
	ld.w	$a1, $s6, -40
	add.d	$a0, $a0, $a1
	st.w	$a0, $s6, -4
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	andi	$s8, $a0, 2
	sltui	$a0, $s8, 1
	addi.d	$a1, $s1, -8
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	ld.w	$a3, $s1, -12
	ld.w	$a4, $s1, -8
	ld.wu	$a2, $a0, 0
	ld.d	$a1, $s5, 0
	st.w	$a3, $s6, -12
	st.w	$a4, $s6, -8
	st.w	$a2, $s6, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$s7, $s6, 0
	beqz	$s8, .LBB0_107
# %bb.109:                              # %if.then758
                                        #   in Loop: Header=BB0_108 Depth=1
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_107
.LBB0_110:                              # %if.then571
	slli.d	$a0, $s4, 5
	alsl.d	$a0, $s4, $a0, 2
	add.d	$s0, $s1, $a0
	ldx.w	$a2, $s1, $a0
	ld.w	$a0, $s0, 4
	sub.w	$a3, $s6, $a2
	sub.w	$a5, $a0, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s0, 4
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_113
# %bb.111:                              # %if.then594
	move	$s8, $a0
	ld.wu	$a0, $s0, 8
	ld.w	$a2, $s0, 0
	bstrpick.d	$s7, $s6, 31, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	sub.d	$a0, $s6, $a2
	bstrpick.d	$a2, $a0, 31, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s0, 0
	ld.w	$a2, $s0, 4
	add.d	$a0, $s8, $s7
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	sub.d	$a0, $a0, $a1
	sub.d	$a1, $a1, $s6
	add.d	$a1, $a1, $a2
	bstrpick.d	$a2, $a1, 31, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s0, 8
	ld.wu	$a2, $s0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s7
	sub.d	$a0, $a0, $a2
	ld.w	$a3, $s0, 12
	ld.w	$a4, $s0, 4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	sub.d	$a5, $s6, $a2
	sub.w	$a2, $a3, $a5
	sub.w	$a3, $a4, $a5
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_unfsg)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_114
# %bb.112:                              # %if.then661
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_113:                              # %if.else675
	ld.w	$a0, $s0, 12
	add.w	$s5, $a0, $s5
	b	.LBB0_84
.LBB0_114:                              # %if.else666
	slli.d	$a0, $s4, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	stx.d	$s8, $a1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	or	$a0, $s3, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 4
	add.w	$s5, $a0, $s5
	b	.LBB0_84
.Lfunc_end0:
	.size	unspin, .Lfunc_end0-unspin
                                        # -- End function
	.p2align	5                               # -- Begin function summit
	.type	summit,@function
summit:                                 # @summit
# %bb.0:                                # %entry
	addi.w	$a2, $zero, -1
	beqz	$a1, .LBB1_3
# %bb.1:                                # %while.body.preheader
	lu12i.w	$a3, 491546
	ori	$a3, $a3, 264
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a5, $a0, 0
	slli.d	$a5, $a5, 8
	bstrpick.d	$a5, $a5, 15, 8
	slli.d	$a5, $a5, 8
	xor	$a4, $a5, $a4
	bstrpick.d	$a4, $a4, 31, 3
	bstrpick.d	$a5, $a2, 15, 8
	xor	$a4, $a5, $a4
	add.d	$a4, $a4, $a3
	xor	$a4, $a4, $a2
	rotr.w	$a4, $a4, $a2
	bstrpick.d	$a5, $a4, 15, 8
	xor	$a2, $a5, $a2
	add.d	$a2, $a2, $a3
	xor	$a2, $a2, $a4
	rotr.w	$a2, $a2, $a4
	bstrpick.d	$a5, $a2, 15, 8
	xor	$a4, $a5, $a4
	add.d	$a4, $a4, $a3
	xor	$a4, $a4, $a2
	rotr.w	$a4, $a4, $a2
	bstrpick.d	$a5, $a4, 15, 8
	xor	$a2, $a5, $a2
	add.d	$a2, $a2, $a3
	xor	$a2, $a2, $a4
	rotr.w	$a2, $a2, $a4
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB1_2
.LBB1_3:                                # %while.end
	move	$a0, $a2
	ret
.Lfunc_end1:
	.size	summit, .Lfunc_end1-summit
                                        # -- End function
	.p2align	5                               # -- Begin function exec86
	.type	exec86,@function
exec86:                                 # @exec86
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a0
	move	$a7, $zero
	st.w	$zero, $a3, 0
	ori	$a0, $zero, 191
	ori	$a4, $zero, 50
	ori	$a5, $zero, 144
	pcalau12i	$a3, %pc_hi20(.LJTI2_0)
	addi.d	$a6, $a3, %pc_lo12(.LJTI2_0)
	ori	$t0, $zero, 36
	ori	$t1, $zero, 247
	ori	$t2, $zero, 192
	ori	$t3, $zero, 8
	ori	$t4, $zero, 235
	ori	$t5, $zero, 2
	ori	$t6, $zero, 254
	b	.LBB2_4
.LBB2_1:                                # %sw.bb6
                                        #   in Loop: Header=BB2_4 Depth=1
	add.d	$s0, $s0, $a1
	.p2align	4, , 16
.LBB2_2:                                # %cleanup
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.w	$a7, $a7, 2
.LBB2_3:                                # %cleanup
                                        #   in Loop: Header=BB2_4 Depth=1
	bge	$a7, $t0, .LBB2_26
.LBB2_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a2, $a7
	addi.w	$t7, $a7, 1
	blt	$a0, $a3, .LBB2_8
# %bb.5:                                # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$t8, $a3, -2
	bltu	$a4, $t8, .LBB2_18
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $a6, $t8
	add.d	$t8, $a6, $t8
	jr	$t8
.LBB2_7:                                # %sw.bb16
                                        #   in Loop: Header=BB2_4 Depth=1
	ldx.b	$a3, $a2, $t7
	add.d	$s0, $a3, $s0
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_8:                                # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	bge	$t1, $a3, .LBB2_12
# %bb.9:                                # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$t8, $a3, -248
	bltu	$t8, $t5, .LBB2_19
# %bb.10:                               # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	bne	$a3, $t6, .LBB2_31
# %bb.11:                               # %sw.bb45
                                        #   in Loop: Header=BB2_4 Depth=1
	ldx.bu	$a3, $a2, $t7
	addi.d	$a3, $a3, -192
	sltu	$a3, $zero, $a3
	sub.d	$a3, $zero, $a3
	ori	$a3, $a3, 1
	add.d	$s0, $a3, $s0
	b	.LBB2_2
.LBB2_12:                               # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	beq	$a3, $t2, .LBB2_16
# %bb.13:                               # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	bne	$a3, $t4, .LBB2_31
# %bb.14:                               # %sw.bb
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$t7, $a7, 2
.LBB2_15:                               # %sw.bb3
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.w	$a7, $t7, 1
	b	.LBB2_3
.LBB2_16:                               # %sw.bb53
                                        #   in Loop: Header=BB2_4 Depth=1
	add.d	$a3, $a2, $a7
	ld.bu	$t8, $a3, 2
	ldx.bu	$s1, $a2, $t7
	andi	$a3, $s0, 255
	andi	$t8, $t8, 7
	sub.d	$t7, $t3, $t8
	bne	$s1, $t2, .LBB2_24
# %bb.17:                               # %if.then60
                                        #   in Loop: Header=BB2_4 Depth=1
	sll.w	$t8, $a3, $t8
	srl.w	$a3, $a3, $t7
	b	.LBB2_25
.LBB2_18:                               # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	bne	$a3, $a5, .LBB2_31
.LBB2_19:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a7, $t7
	b	.LBB2_3
.LBB2_20:                               # %sw.bb37
                                        #   in Loop: Header=BB2_4 Depth=1
	ldx.b	$a3, $a2, $t7
	xor	$s0, $a3, $s0
	b	.LBB2_2
.LBB2_21:                               # %sw.bb32
                                        #   in Loop: Header=BB2_4 Depth=1
	xor	$s0, $s0, $a1
	b	.LBB2_2
.LBB2_22:                               # %sw.bb11
                                        #   in Loop: Header=BB2_4 Depth=1
	sub.d	$s0, $s0, $a1
	b	.LBB2_2
.LBB2_23:                               # %sw.bb24
                                        #   in Loop: Header=BB2_4 Depth=1
	ldx.b	$a3, $a2, $t7
	sub.d	$s0, $s0, $a3
	b	.LBB2_2
.LBB2_24:                               # %if.else73
                                        #   in Loop: Header=BB2_4 Depth=1
	srl.w	$t8, $a3, $t8
	sll.w	$a3, $a3, $t7
.LBB2_25:                               # %if.end91
                                        #   in Loop: Header=BB2_4 Depth=1
	or	$s0, $a3, $t8
	addi.w	$a7, $a7, 3
	b	.LBB2_3
.LBB2_26:                               # %while.end
	ori	$a0, $zero, 36
	bne	$a7, $a0, .LBB2_28
# %bb.27:                               # %lor.lhs.false
	ld.bu	$a0, $a2, 36
	ori	$a1, $zero, 170
	beq	$a0, $a1, .LBB2_30
.LBB2_28:                               # %if.then102
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB2_29:                               # %cleanup104.sink.split
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 0
.LBB2_30:                               # %cleanup104
	ext.w.b	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_31:                               # %cleanup.thread
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	move	$a1, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB2_29
.Lfunc_end2:
	.size	exec86, .Lfunc_end2-exec86
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_1-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_7-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_15-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_22-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_23-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_21-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_20-.LJTI2_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in unspin\n"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"spin: Not spinned or bad version\n"
	.size	.L.str.1, 34

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"spin: Key8 is %x, Len is %x\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"spin: len or key out of bounds, giving up\n"
	.size	.L.str.3, 43

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"spin: prolly not spinned, expect failure\n"
	.size	.L.str.4, 42

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"spin: password protected, expect failure\n"
	.size	.L.str.5, 42

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"spin: Key is %x, Len is %x\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"spin: crc out of bounds, giving up\n"
	.size	.L.str.7, 36

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"spin: key out of bounds, giving up\n"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"spin: Key32 is %x - XORbitmap is %x\n"
	.size	.L.str.9, 37

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"spin: Decrypting sects (xor)\n"
	.size	.L.str.10, 30

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"spin: sect %d out of file, giving up\n"
	.size	.L.str.11, 38

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"spin: done\n"
	.size	.L.str.12, 12

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"spin: POLY1 len is %x\n"
	.size	.L.str.13, 23

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"spin: poly1 out of bounds\n"
	.size	.L.str.14, 27

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"spin: cannot exec poly1\n"
	.size	.L.str.15, 25

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"spin: POLYbitmap is %x - decrypting sects (poly)\n"
	.size	.L.str.16, 50

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"spin: cannot exec section\n"
	.size	.L.str.18, 27

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"spin: Compression bitmap is %x\n"
	.size	.L.str.19, 32

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"spin: section %d size exceeded (%u, %lu)\n"
	.size	.L.str.20, 42

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"spin: malloc(%d) failed\n"
	.size	.L.str.21, 25

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"spin: Growing sect%d: was %x will be %x\n"
	.size	.L.str.22, 41

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"spin: Unpack failure\n"
	.size	.L.str.23, 22

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"spin: Not growing sect%d\n"
	.size	.L.str.24, 26

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"spin: decompression complete\n"
	.size	.L.str.25, 30

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"spin: Resources (sect%d) appear to be compressed\n\tuncompressed offset %x, len %x\n\tcompressed offset %x, len %x\n"
	.size	.L.str.26, 112

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"spin: Failed to grow resources, continuing anyway\n"
	.size	.L.str.27, 51

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"spin: Resources grown\n"
	.size	.L.str.28, 23

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"spin: No res?!\n"
	.size	.L.str.29, 16

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"spin: Cannot write unpacked file\n"
	.size	.L.str.30, 34

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"spin: free bitmap is %x\n"
	.size	.L.str.31, 25

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"spin: bogus opcode %x\n"
	.size	.L.str.32, 23

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"spin: bad emucode\n"
	.size	.L.str.33, 19

	.section	".note.GNU-stack","",@progbits
	.addrsig
