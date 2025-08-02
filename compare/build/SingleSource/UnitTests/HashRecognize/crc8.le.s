	.file	"crc8.le.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	112                             # 0x70
	.dword	116                             # 0x74
	.dword	120                             # 0x78
	.dword	124                             # 0x7c
.LCPI0_1:
	.dword	96                              # 0x60
	.dword	100                             # 0x64
	.dword	104                             # 0x68
	.dword	108                             # 0x6c
.LCPI0_2:
	.dword	80                              # 0x50
	.dword	84                              # 0x54
	.dword	88                              # 0x58
	.dword	92                              # 0x5c
.LCPI0_3:
	.dword	64                              # 0x40
	.dword	68                              # 0x44
	.dword	72                              # 0x48
	.dword	76                              # 0x4c
.LCPI0_4:
	.dword	48                              # 0x30
	.dword	52                              # 0x34
	.dword	56                              # 0x38
	.dword	60                              # 0x3c
.LCPI0_5:
	.dword	32                              # 0x20
	.dword	36                              # 0x24
	.dword	40                              # 0x28
	.dword	44                              # 0x2c
.LCPI0_6:
	.dword	16                              # 0x10
	.dword	20                              # 0x14
	.dword	24                              # 0x18
	.dword	28                              # 0x1c
.LCPI0_7:
	.dword	0                               # 0x0
	.dword	4                               # 0x4
	.dword	8                               # 0x8
	.dword	12                              # 0xc
.LCPI0_8:
	.dword	56                              # 0x38
	.dword	58                              # 0x3a
	.dword	60                              # 0x3c
	.dword	62                              # 0x3e
.LCPI0_9:
	.dword	48                              # 0x30
	.dword	50                              # 0x32
	.dword	52                              # 0x34
	.dword	54                              # 0x36
.LCPI0_10:
	.dword	40                              # 0x28
	.dword	42                              # 0x2a
	.dword	44                              # 0x2c
	.dword	46                              # 0x2e
.LCPI0_11:
	.dword	32                              # 0x20
	.dword	34                              # 0x22
	.dword	36                              # 0x24
	.dword	38                              # 0x26
.LCPI0_12:
	.dword	24                              # 0x18
	.dword	26                              # 0x1a
	.dword	28                              # 0x1c
	.dword	30                              # 0x1e
.LCPI0_13:
	.dword	16                              # 0x10
	.dword	18                              # 0x12
	.dword	20                              # 0x14
	.dword	22                              # 0x16
.LCPI0_14:
	.dword	8                               # 0x8
	.dword	10                              # 0xa
	.dword	12                              # 0xc
	.dword	14                              # 0xe
.LCPI0_15:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	4                               # 0x4
	.dword	6                               # 0x6
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(CRCTable)
	addi.d	$a1, $a0, %pc_lo12(CRCTable)
	ld.bu	$a2, $a1, 0
	move	$a3, $zero
	move	$a0, $zero
	xori	$a4, $a2, 29
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	xori	$a4, $a2, 19
	st.d	$a4, $sp, 272                   # 8-byte Folded Spill
	xori	$a4, $a2, 14
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	xori	$a4, $a2, 20
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	xori	$a4, $a2, 7
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	xori	$a4, $a2, 9
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	xori	$a4, $a2, 26
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	xori	$a4, $a2, 10
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	xori	$a4, $a2, 30
	st.d	$a4, $sp, 248                   # 8-byte Folded Spill
	xori	$a4, $a2, 25
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	xori	$a4, $a2, 13
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	xori	$a4, $a2, 23
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	xori	$a4, $a2, 3
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	xori	$a4, $a2, 4
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	xori	$a4, $a2, 16
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	xori	$a4, $a2, 5
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	xori	$a4, $a2, 15
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	xori	$a4, $a2, 17
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	xori	$a4, $a2, 27
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	xori	$a4, $a2, 22
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	xori	$a4, $a2, 28
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	xori	$a4, $a2, 2
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	xori	$a4, $a2, 8
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	xori	$a4, $a2, 24
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	xvrepli.d	$xr0, 128
	xori	$a4, $a2, 18
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	xori	$a4, $a2, 12
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	xori	$a4, $a2, 6
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	xori	$a4, $a2, 11
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	xori	$a4, $a2, 1
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	xori	$a4, $a2, 31
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	xori	$a2, $a2, 21
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 7
	ori	$a5, $zero, 1
	ori	$a6, $zero, 8
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	slli.d	$t4, $a3, 2
	pcalau12i	$t5, %pc_hi20(main.sample)
	addi.d	$t5, $t5, %pc_lo12(main.sample)
	ldx.bu	$t6, $t5, $t4
	sub.d	$t4, $a2, $a3
	slli.d	$t4, $t4, 2
	ldx.bu	$t5, $t5, $t4
	xor	$t7, $t5, $t6
	ldx.bu	$t4, $a1, $t7
	srli.d	$t6, $t6, 1
	andi	$t7, $t7, 1
	sltui	$t7, $t7, 1
	xori	$t8, $t6, 29
	masknez	$t8, $t8, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	srli.d	$t7, $t5, 1
	xor	$t7, $t6, $t7
	srli.d	$t6, $t6, 1
	andi	$t7, $t7, 1
	sltui	$t7, $t7, 1
	xori	$t8, $t6, 29
	masknez	$t8, $t8, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	srli.d	$t7, $t5, 2
	xor	$t7, $t6, $t7
	srli.d	$t6, $t6, 1
	andi	$t7, $t7, 1
	sltui	$t7, $t7, 1
	xori	$t8, $t6, 29
	masknez	$t8, $t8, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	srli.d	$t7, $t5, 3
	xor	$t7, $t6, $t7
	srli.d	$t6, $t6, 1
	andi	$t7, $t7, 1
	sltui	$t7, $t7, 1
	xori	$t8, $t6, 29
	masknez	$t8, $t8, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	srli.d	$t7, $t5, 4
	xor	$t7, $t6, $t7
	srli.d	$t6, $t6, 1
	andi	$t7, $t7, 1
	sltui	$t7, $t7, 1
	xori	$t8, $t6, 29
	masknez	$t8, $t8, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	srli.d	$t7, $t5, 5
	xor	$t7, $t6, $t7
	srli.d	$t6, $t6, 1
	andi	$t7, $t7, 1
	sltui	$t7, $t7, 1
	xori	$t8, $t6, 29
	masknez	$t8, $t8, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	srli.d	$t7, $t5, 6
	xor	$t7, $t6, $t7
	srli.d	$t6, $t6, 1
	andi	$t7, $t7, 1
	sltui	$t7, $t7, 1
	xori	$t8, $t6, 29
	masknez	$t8, $t8, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	srli.d	$t5, $t5, 7
	srli.d	$t7, $t6, 1
	andi	$t6, $t6, 1
	xor	$t5, $t5, $t6
	sltui	$t5, $t5, 1
	xori	$t6, $t7, 29
	masknez	$t6, $t6, $t5
	maskeqz	$t5, $t7, $t5
	or	$t5, $t5, $t6
	xor	$t4, $t4, $t5
	sltui	$t4, $t4, 1
	masknez	$t5, $a5, $t4
	maskeqz	$a0, $a0, $t4
	addi.d	$a3, $a3, 1
	or	$a0, $a0, $t5
	beq	$a3, $a6, .LBB0_7
.LBB0_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_6 Depth 2
	ld.bu	$t4, $a1, 255
	bnez	$t4, .LBB0_1
# %bb.3:                                # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	move	$t4, $zero
	pcalau12i	$t5, %pc_hi20(.LCPI0_0)
	xvld	$xr1, $t5, %pc_lo12(.LCPI0_0)
	pcalau12i	$t5, %pc_hi20(.LCPI0_1)
	xvld	$xr2, $t5, %pc_lo12(.LCPI0_1)
	pcalau12i	$t5, %pc_hi20(.LCPI0_2)
	xvld	$xr3, $t5, %pc_lo12(.LCPI0_2)
	pcalau12i	$t5, %pc_hi20(.LCPI0_3)
	xvld	$xr4, $t5, %pc_lo12(.LCPI0_3)
	pcalau12i	$t5, %pc_hi20(.LCPI0_4)
	xvld	$xr5, $t5, %pc_lo12(.LCPI0_4)
	pcalau12i	$t5, %pc_hi20(.LCPI0_5)
	xvld	$xr6, $t5, %pc_lo12(.LCPI0_5)
	pcalau12i	$t5, %pc_hi20(.LCPI0_6)
	xvld	$xr7, $t5, %pc_lo12(.LCPI0_6)
	pcalau12i	$t5, %pc_hi20(.LCPI0_7)
	xvld	$xr8, $t5, %pc_lo12(.LCPI0_7)
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	st.b	$s3, $a1, 128
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.b	$a0, $a1, 64
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	st.b	$t7, $a1, 192
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.b	$a0, $a1, 32
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	st.b	$fp, $a1, 96
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	st.b	$s0, $a1, 160
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	st.b	$s1, $a1, 224
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	st.b	$a0, $a1, 16
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.b	$a0, $a1, 48
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	st.b	$s4, $a1, 80
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	st.b	$s5, $a1, 112
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	st.b	$s6, $a1, 144
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	st.b	$s7, $a1, 176
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	st.b	$s8, $a1, 208
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	st.b	$ra, $a1, 240
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	st.b	$s2, $a1, 8
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.b	$a0, $a1, 24
	ld.d	$t6, $sp, 120                   # 8-byte Folded Reload
	st.b	$t6, $a1, 40
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	st.b	$t8, $a1, 56
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	st.b	$t1, $a1, 72
	ld.d	$t5, $sp, 96                    # 8-byte Folded Reload
	st.b	$t5, $a1, 88
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	st.b	$t2, $a1, 104
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	st.b	$t0, $a1, 120
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	st.b	$a7, $a1, 136
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	st.b	$t3, $a1, 152
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	st.b	$a5, $a1, 168
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	st.b	$a6, $a1, 184
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	st.b	$a3, $a1, 200
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	st.b	$a4, $a1, 216
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.b	$a0, $a1, 232
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.b	$a2, $a1, 248
	st.b	$a0, $a1, 4
	st.b	$s1, $a1, 12
	st.b	$a2, $a1, 20
	st.b	$ra, $a1, 28
	st.b	$a3, $a1, 36
	st.b	$t7, $a1, 44
	st.b	$a4, $a1, 52
	ori	$a4, $zero, 256
	st.b	$s8, $a1, 60
	st.b	$a5, $a1, 68
	st.b	$s0, $a1, 76
	st.b	$a6, $a1, 84
	st.b	$s7, $a1, 92
	st.b	$a7, $a1, 100
	st.b	$s3, $a1, 108
	st.b	$t3, $a1, 116
	st.b	$s6, $a1, 124
	st.b	$t2, $a1, 132
	st.b	$fp, $a1, 140
	st.b	$t0, $a1, 148
	st.b	$s5, $a1, 156
	st.b	$t1, $a1, 164
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.b	$a0, $a1, 172
	st.b	$t5, $a1, 180
	st.b	$s4, $a1, 188
	st.b	$t6, $a1, 196
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.b	$a0, $a1, 204
	st.b	$t8, $a1, 212
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.b	$a0, $a1, 220
	st.b	$s2, $a1, 228
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.b	$a2, $a1, 236
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.b	$a0, $a1, 244
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	st.b	$a0, $a1, 252
	.p2align	4, , 16
.LBB0_4:                                # %vector.body10
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$t6, $a1, $t4
	add.d	$t5, $a1, $t4
	ld.b	$t7, $t5, 4
	ld.b	$t8, $t5, 8
	vinsgr2vr.b	$vr9, $t6, 0
	ld.b	$t6, $t5, 12
	vinsgr2vr.b	$vr9, $t7, 1
	ld.b	$t7, $t5, 16
	vinsgr2vr.b	$vr9, $t8, 2
	ld.b	$t8, $t5, 20
	vinsgr2vr.b	$vr9, $t6, 3
	ld.b	$t6, $t5, 24
	vinsgr2vr.b	$vr9, $t7, 4
	ld.b	$t7, $t5, 28
	vinsgr2vr.b	$vr9, $t8, 5
	ld.b	$t8, $t5, 32
	vinsgr2vr.b	$vr9, $t6, 6
	ld.b	$t6, $t5, 36
	vinsgr2vr.b	$vr9, $t7, 7
	ld.b	$t7, $t5, 40
	vinsgr2vr.b	$vr9, $t8, 8
	ld.b	$t8, $t5, 44
	vinsgr2vr.b	$vr9, $t6, 9
	ld.b	$t6, $t5, 48
	vinsgr2vr.b	$vr9, $t7, 10
	ld.b	$t7, $t5, 52
	vinsgr2vr.b	$vr9, $t8, 11
	ld.b	$t8, $t5, 56
	vinsgr2vr.b	$vr9, $t6, 12
	ld.b	$t6, $t5, 60
	vinsgr2vr.b	$vr9, $t7, 13
	vinsgr2vr.b	$vr9, $t8, 14
	ld.b	$t7, $t5, 64
	vinsgr2vr.b	$vr9, $t6, 15
	ld.b	$t6, $t5, 68
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 0
	ld.b	$t7, $t5, 72
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 1
	ld.b	$t6, $t5, 76
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 2
	ld.b	$t7, $t5, 80
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 3
	ld.b	$t6, $t5, 84
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 4
	ld.b	$t7, $t5, 88
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 5
	ld.b	$t6, $t5, 92
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 6
	ld.b	$t7, $t5, 96
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 7
	ld.b	$t6, $t5, 100
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 8
	ld.b	$t7, $t5, 104
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 9
	ld.b	$t6, $t5, 108
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 10
	ld.b	$t7, $t5, 112
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 11
	ld.b	$t6, $t5, 116
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 12
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 13
	ld.b	$t6, $t5, 120
	ld.b	$t5, $t5, 124
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 14
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t5, 15
	xvpermi.q	$xr9, $xr10, 2
	xvxori.b	$xr9, $xr9, 18
	xvbitseti.d	$xr10, $xr1, 1
	xvbitseti.d	$xr11, $xr2, 1
	xvbitseti.d	$xr12, $xr3, 1
	xvbitseti.d	$xr13, $xr4, 1
	xvbitseti.d	$xr14, $xr5, 1
	xvbitseti.d	$xr15, $xr6, 1
	xvbitseti.d	$xr16, $xr7, 1
	xvbitseti.d	$xr17, $xr8, 1
	xvpickve2gr.d	$t5, $xr17, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 0
	xvpickve2gr.d	$t5, $xr17, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 1
	xvpickve2gr.d	$t5, $xr17, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 2
	xvpickve2gr.d	$t5, $xr17, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 3
	xvpickve2gr.d	$t5, $xr16, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 4
	xvpickve2gr.d	$t5, $xr16, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 5
	xvpickve2gr.d	$t5, $xr16, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 6
	xvpickve2gr.d	$t5, $xr16, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 7
	xvpickve2gr.d	$t5, $xr15, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 8
	xvpickve2gr.d	$t5, $xr15, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 9
	xvpickve2gr.d	$t5, $xr15, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 10
	xvpickve2gr.d	$t5, $xr15, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 11
	xvpickve2gr.d	$t5, $xr14, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 12
	xvpickve2gr.d	$t5, $xr14, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 13
	xvpickve2gr.d	$t5, $xr14, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 14
	xvpickve2gr.d	$t5, $xr14, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 15
	xvpickve2gr.d	$t5, $xr13, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 16
	xvpickve2gr.d	$t5, $xr13, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 17
	xvpickve2gr.d	$t5, $xr13, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 18
	xvpickve2gr.d	$t5, $xr13, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 19
	xvpickve2gr.d	$t5, $xr12, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 20
	xvpickve2gr.d	$t5, $xr12, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 21
	xvpickve2gr.d	$t5, $xr12, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 22
	xvpickve2gr.d	$t5, $xr12, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 23
	xvpickve2gr.d	$t5, $xr11, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 24
	xvpickve2gr.d	$t5, $xr11, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 25
	xvpickve2gr.d	$t5, $xr11, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 26
	xvpickve2gr.d	$t5, $xr11, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 27
	xvpickve2gr.d	$t5, $xr10, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 28
	xvpickve2gr.d	$t5, $xr10, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 29
	xvpickve2gr.d	$t5, $xr10, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 30
	xvpickve2gr.d	$t5, $xr10, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 31
	xvadd.d	$xr8, $xr8, $xr0
	xvadd.d	$xr7, $xr7, $xr0
	xvadd.d	$xr6, $xr6, $xr0
	xvadd.d	$xr5, $xr5, $xr0
	xvadd.d	$xr4, $xr4, $xr0
	xvadd.d	$xr3, $xr3, $xr0
	xvadd.d	$xr2, $xr2, $xr0
	addi.d	$t4, $t4, 128
	xvadd.d	$xr1, $xr1, $xr0
	bne	$t4, $a4, .LBB0_4
# %bb.5:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$t4, %pc_hi20(.LCPI0_8)
	xvld	$xr1, $t4, %pc_lo12(.LCPI0_8)
	pcalau12i	$t4, %pc_hi20(.LCPI0_9)
	xvld	$xr2, $t4, %pc_lo12(.LCPI0_9)
	pcalau12i	$t4, %pc_hi20(.LCPI0_10)
	xvld	$xr3, $t4, %pc_lo12(.LCPI0_10)
	pcalau12i	$t4, %pc_hi20(.LCPI0_11)
	xvld	$xr4, $t4, %pc_lo12(.LCPI0_11)
	pcalau12i	$t4, %pc_hi20(.LCPI0_12)
	xvld	$xr5, $t4, %pc_lo12(.LCPI0_12)
	pcalau12i	$t4, %pc_hi20(.LCPI0_13)
	xvld	$xr6, $t4, %pc_lo12(.LCPI0_13)
	pcalau12i	$t4, %pc_hi20(.LCPI0_14)
	xvld	$xr7, $t4, %pc_lo12(.LCPI0_14)
	pcalau12i	$t4, %pc_hi20(.LCPI0_15)
	xvld	$xr8, $t4, %pc_lo12(.LCPI0_15)
	move	$t4, $zero
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 7
	ori	$a5, $zero, 1
	ori	$a6, $zero, 8
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$t6, $a1, $t4
	add.d	$t5, $a1, $t4
	ld.b	$t7, $t5, 2
	ld.b	$t8, $t5, 4
	vinsgr2vr.b	$vr9, $t6, 0
	ld.b	$t6, $t5, 6
	vinsgr2vr.b	$vr9, $t7, 1
	ld.b	$t7, $t5, 8
	vinsgr2vr.b	$vr9, $t8, 2
	ld.b	$t8, $t5, 10
	vinsgr2vr.b	$vr9, $t6, 3
	ld.b	$t6, $t5, 12
	vinsgr2vr.b	$vr9, $t7, 4
	ld.b	$t7, $t5, 14
	vinsgr2vr.b	$vr9, $t8, 5
	ld.b	$t8, $t5, 16
	vinsgr2vr.b	$vr9, $t6, 6
	ld.b	$t6, $t5, 18
	vinsgr2vr.b	$vr9, $t7, 7
	ld.b	$t7, $t5, 20
	vinsgr2vr.b	$vr9, $t8, 8
	ld.b	$t8, $t5, 22
	vinsgr2vr.b	$vr9, $t6, 9
	ld.b	$t6, $t5, 24
	vinsgr2vr.b	$vr9, $t7, 10
	ld.b	$t7, $t5, 26
	vinsgr2vr.b	$vr9, $t8, 11
	ld.b	$t8, $t5, 28
	vinsgr2vr.b	$vr9, $t6, 12
	ld.b	$t6, $t5, 30
	vinsgr2vr.b	$vr9, $t7, 13
	vinsgr2vr.b	$vr9, $t8, 14
	ld.b	$t7, $t5, 32
	vinsgr2vr.b	$vr9, $t6, 15
	ld.b	$t6, $t5, 34
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 0
	ld.b	$t7, $t5, 36
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 1
	ld.b	$t6, $t5, 38
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 2
	ld.b	$t7, $t5, 40
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 3
	ld.b	$t6, $t5, 42
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 4
	ld.b	$t7, $t5, 44
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 5
	ld.b	$t6, $t5, 46
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 6
	ld.b	$t7, $t5, 48
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 7
	ld.b	$t6, $t5, 50
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 8
	ld.b	$t7, $t5, 52
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 9
	ld.b	$t6, $t5, 54
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 10
	ld.b	$t7, $t5, 56
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 11
	ld.b	$t6, $t5, 58
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t7, 12
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 13
	ld.b	$t6, $t5, 60
	ld.b	$t5, $t5, 62
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t6, 14
	xvpermi.q	$xr9, $xr10, 2
	xvpermi.d	$xr10, $xr9, 14
	vinsgr2vr.b	$vr10, $t5, 15
	xvpermi.q	$xr9, $xr10, 2
	xvxori.b	$xr9, $xr9, 9
	xvbitseti.d	$xr10, $xr1, 0
	xvbitseti.d	$xr11, $xr2, 0
	xvbitseti.d	$xr12, $xr3, 0
	xvbitseti.d	$xr13, $xr4, 0
	xvbitseti.d	$xr14, $xr5, 0
	xvbitseti.d	$xr15, $xr6, 0
	xvbitseti.d	$xr16, $xr7, 0
	xvbitseti.d	$xr17, $xr8, 0
	xvpickve2gr.d	$t5, $xr17, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 0
	xvpickve2gr.d	$t5, $xr17, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 1
	xvpickve2gr.d	$t5, $xr17, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 2
	xvpickve2gr.d	$t5, $xr17, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 3
	xvpickve2gr.d	$t5, $xr16, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 4
	xvpickve2gr.d	$t5, $xr16, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 5
	xvpickve2gr.d	$t5, $xr16, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 6
	xvpickve2gr.d	$t5, $xr16, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 7
	xvpickve2gr.d	$t5, $xr15, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 8
	xvpickve2gr.d	$t5, $xr15, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 9
	xvpickve2gr.d	$t5, $xr15, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 10
	xvpickve2gr.d	$t5, $xr15, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 11
	xvpickve2gr.d	$t5, $xr14, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 12
	xvpickve2gr.d	$t5, $xr14, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 13
	xvpickve2gr.d	$t5, $xr14, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 14
	xvpickve2gr.d	$t5, $xr14, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 15
	xvpickve2gr.d	$t5, $xr13, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 16
	xvpickve2gr.d	$t5, $xr13, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 17
	xvpickve2gr.d	$t5, $xr13, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 18
	xvpickve2gr.d	$t5, $xr13, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 19
	xvpickve2gr.d	$t5, $xr12, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 20
	xvpickve2gr.d	$t5, $xr12, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 21
	xvpickve2gr.d	$t5, $xr12, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 22
	xvpickve2gr.d	$t5, $xr12, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 23
	xvpickve2gr.d	$t5, $xr11, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 24
	xvpickve2gr.d	$t5, $xr11, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 25
	xvpickve2gr.d	$t5, $xr11, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 26
	xvpickve2gr.d	$t5, $xr11, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 27
	xvpickve2gr.d	$t5, $xr10, 0
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 28
	xvpickve2gr.d	$t5, $xr10, 1
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 29
	xvpickve2gr.d	$t5, $xr10, 2
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 30
	xvpickve2gr.d	$t5, $xr10, 3
	add.d	$t5, $a1, $t5
	xvstelm.b	$xr9, $t5, 0, 31
	xvrepli.d	$xr9, 64
	xvadd.d	$xr8, $xr8, $xr9
	xvadd.d	$xr7, $xr7, $xr9
	xvadd.d	$xr6, $xr6, $xr9
	xvadd.d	$xr5, $xr5, $xr9
	xvadd.d	$xr4, $xr4, $xr9
	xvadd.d	$xr3, $xr3, $xr9
	xvadd.d	$xr2, $xr2, $xr9
	addi.d	$t4, $t4, 64
	xvadd.d	$xr1, $xr1, $xr9
	bne	$t4, $a4, .LBB0_6
	b	.LBB0_1
.LBB0_7:                                # %for.cond.cleanup
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	main.sample,@object             # @main.sample
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
main.sample:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	11                              # 0xb
	.word	16                              # 0x10
	.word	129                             # 0x81
	.word	142                             # 0x8e
	.word	196                             # 0xc4
	.word	255                             # 0xff
	.size	main.sample, 32

	.type	CRCTable,@object                # @CRCTable
	.local	CRCTable
	.comm	CRCTable,256,1
	.section	".note.GNU-stack","",@progbits
	.addrsig
