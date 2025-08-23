	.file	"crc8.be.data16.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.byte	29                              # 0x1d
	.byte	58                              # 0x3a
	.byte	39                              # 0x27
	.byte	116                             # 0x74
	.byte	105                             # 0x69
	.byte	78                              # 0x4e
	.byte	83                              # 0x53
	.byte	232                             # 0xe8
	.byte	245                             # 0xf5
	.byte	210                             # 0xd2
	.byte	207                             # 0xcf
	.byte	156                             # 0x9c
	.byte	129                             # 0x81
	.byte	166                             # 0xa6
	.byte	187                             # 0xbb
	.byte	205                             # 0xcd
	.byte	208                             # 0xd0
	.byte	247                             # 0xf7
	.byte	234                             # 0xea
	.byte	185                             # 0xb9
	.byte	164                             # 0xa4
	.byte	131                             # 0x83
	.byte	158                             # 0x9e
	.byte	37                              # 0x25
	.byte	56                              # 0x38
	.byte	31                              # 0x1f
	.byte	2                               # 0x2
	.byte	81                              # 0x51
	.byte	76                              # 0x4c
	.byte	107                             # 0x6b
	.byte	118                             # 0x76
	.byte	135                             # 0x87
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.byte	154                             # 0x9a
	.byte	189                             # 0xbd
	.byte	160                             # 0xa0
	.byte	243                             # 0xf3
	.byte	238                             # 0xee
	.byte	201                             # 0xc9
	.byte	212                             # 0xd4
	.byte	111                             # 0x6f
	.byte	114                             # 0x72
	.byte	85                              # 0x55
	.byte	72                              # 0x48
	.byte	27                              # 0x1b
	.byte	6                               # 0x6
	.byte	33                              # 0x21
	.byte	60                              # 0x3c
	.byte	74                              # 0x4a
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $zero
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(CRCTable)
	addi.d	$a2, $a2, %pc_lo12(CRCTable)
	ld.b	$fp, $a2, 0
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI0_0)
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a3, %pc_lo12(.LCPI0_1)
	xvreplgr2vr.b	$xr2, $fp
	xvxor.v	$xr0, $xr2, $xr0
	vreplgr2vr.b	$vr2, $fp
	vxor.v	$vr1, $vr2, $vr1
	xori	$a3, $fp, 87
	xori	$a4, $fp, 112
	xori	$a5, $fp, 109
	xori	$a6, $fp, 62
	xori	$a7, $fp, 35
	xori	$t0, $fp, 4
	xori	$t1, $fp, 25
	addi.d	$t2, $zero, -94
	xor	$t2, $fp, $t2
	addi.d	$t3, $zero, -65
	xor	$t3, $fp, $t3
	addi.d	$t4, $zero, -104
	xor	$t4, $fp, $t4
	addi.d	$t5, $zero, -123
	xor	$t5, $fp, $t5
	addi.d	$t6, $zero, -42
	xor	$t6, $fp, $t6
	addi.d	$t7, $zero, -53
	xor	$t7, $fp, $t7
	addi.d	$t8, $zero, -20
	xor	$t8, $fp, $t8
	addi.d	$s0, $zero, -15
	xor	$fp, $fp, $s0
	ori	$s0, $zero, 28
	pcalau12i	$s1, %pc_hi20(main.sample)
	addi.d	$s1, $s1, %pc_lo12(main.sample)
	ori	$s2, $zero, 1
	addi.w	$s3, $zero, -4
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	ldx.w	$s6, $s1, $a1
	ldx.w	$s5, $s1, $s0
	xor	$s4, $s5, $s6
	andi	$s7, $s4, 255
	ldx.bu	$s7, $a2, $s7
	ext.w.b	$s8, $s4
	ldx.bu	$s4, $a2, $s7
	slli.d	$s6, $s6, 1
	xori	$s7, $s6, 29
	slti	$s8, $s8, 0
	masknez	$s6, $s6, $s8
	maskeqz	$s7, $s7, $s8
	or	$s6, $s7, $s6
	slli.d	$s7, $s5, 1
	xor	$s7, $s6, $s7
	ext.w.b	$s7, $s7
	slli.d	$s6, $s6, 1
	xori	$s8, $s6, 29
	slti	$s7, $s7, 0
	masknez	$s6, $s6, $s7
	maskeqz	$s7, $s8, $s7
	or	$s6, $s7, $s6
	slli.d	$s7, $s5, 2
	xor	$s7, $s6, $s7
	ext.w.b	$s7, $s7
	slli.d	$s6, $s6, 1
	xori	$s8, $s6, 29
	slti	$s7, $s7, 0
	masknez	$s6, $s6, $s7
	maskeqz	$s7, $s8, $s7
	or	$s6, $s7, $s6
	slli.d	$s7, $s5, 3
	xor	$s7, $s6, $s7
	ext.w.b	$s7, $s7
	slli.d	$s6, $s6, 1
	xori	$s8, $s6, 29
	slti	$s7, $s7, 0
	masknez	$s6, $s6, $s7
	maskeqz	$s7, $s8, $s7
	or	$s6, $s7, $s6
	slli.d	$s7, $s5, 4
	xor	$s7, $s6, $s7
	ext.w.b	$s7, $s7
	slli.d	$s6, $s6, 1
	xori	$s8, $s6, 29
	slti	$s7, $s7, 0
	masknez	$s6, $s6, $s7
	maskeqz	$s7, $s8, $s7
	or	$s6, $s7, $s6
	slli.d	$s7, $s5, 5
	xor	$s7, $s6, $s7
	ext.w.b	$s7, $s7
	slli.d	$s6, $s6, 1
	xori	$s8, $s6, 29
	slti	$s7, $s7, 0
	masknez	$s6, $s6, $s7
	maskeqz	$s7, $s8, $s7
	or	$s6, $s7, $s6
	slli.d	$s7, $s5, 6
	xor	$s7, $s6, $s7
	ext.w.b	$s7, $s7
	slli.d	$s6, $s6, 1
	xori	$s8, $s6, 29
	slti	$s7, $s7, 0
	masknez	$s6, $s6, $s7
	maskeqz	$s7, $s8, $s7
	or	$s6, $s7, $s6
	slli.d	$s5, $s5, 7
	xor	$s5, $s6, $s5
	ext.w.b	$s5, $s5
	slli.d	$s6, $s6, 1
	xori	$s7, $s6, 29
	slti	$s5, $s5, 0
	masknez	$s6, $s6, $s5
	maskeqz	$s5, $s7, $s5
	or	$s5, $s5, $s6
	ext.w.b	$s6, $s5
	slli.d	$s5, $s5, 1
	xori	$s7, $s5, 29
	slti	$s6, $s6, 0
	masknez	$s5, $s5, $s6
	maskeqz	$s6, $s7, $s6
	or	$s5, $s6, $s5
	ext.w.b	$s6, $s5
	slli.d	$s5, $s5, 1
	xori	$s7, $s5, 29
	slti	$s6, $s6, 0
	masknez	$s5, $s5, $s6
	maskeqz	$s6, $s7, $s6
	or	$s5, $s6, $s5
	ext.w.b	$s6, $s5
	slli.d	$s5, $s5, 1
	xori	$s7, $s5, 29
	slti	$s6, $s6, 0
	masknez	$s5, $s5, $s6
	maskeqz	$s6, $s7, $s6
	or	$s5, $s6, $s5
	ext.w.b	$s6, $s5
	slli.d	$s5, $s5, 1
	xori	$s7, $s5, 29
	slti	$s6, $s6, 0
	masknez	$s5, $s5, $s6
	maskeqz	$s6, $s7, $s6
	or	$s5, $s6, $s5
	ext.w.b	$s6, $s5
	slli.d	$s5, $s5, 1
	xori	$s7, $s5, 29
	slti	$s6, $s6, 0
	masknez	$s5, $s5, $s6
	maskeqz	$s6, $s7, $s6
	or	$s5, $s6, $s5
	ext.w.b	$s6, $s5
	slli.d	$s5, $s5, 1
	xori	$s7, $s5, 29
	slti	$s6, $s6, 0
	masknez	$s5, $s5, $s6
	maskeqz	$s6, $s7, $s6
	or	$s5, $s6, $s5
	ext.w.b	$s6, $s5
	slli.d	$s5, $s5, 1
	xori	$s7, $s5, 29
	slti	$s6, $s6, 0
	masknez	$s5, $s5, $s6
	maskeqz	$s6, $s7, $s6
	or	$s5, $s6, $s5
	ext.w.b	$s6, $s5
	slli.d	$s5, $s5, 1
	xori	$s7, $s5, 29
	slti	$s6, $s6, 0
	masknez	$s5, $s5, $s6
	maskeqz	$s6, $s7, $s6
	or	$s5, $s6, $s5
	andi	$s5, $s5, 255
	xor	$s4, $s4, $s5
	sltui	$s4, $s4, 1
	masknez	$s5, $s2, $s4
	maskeqz	$a0, $a0, $s4
	or	$a0, $a0, $s5
	addi.d	$s0, $s0, -4
	addi.d	$a1, $a1, 4
	beq	$s0, $s3, .LBB0_4
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s4, $a2, 255
	bnez	$s4, .LBB0_1
# %bb.3:                                # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xvst	$xr0, $a2, 1
	vst	$vr1, $a2, 33
	st.b	$a3, $a2, 49
	st.b	$a4, $a2, 50
	st.b	$a5, $a2, 51
	st.b	$a6, $a2, 52
	st.b	$a7, $a2, 53
	st.b	$t0, $a2, 54
	st.b	$t1, $a2, 55
	st.b	$t2, $a2, 56
	st.b	$t3, $a2, 57
	st.b	$t4, $a2, 58
	st.b	$t5, $a2, 59
	st.b	$t6, $a2, 60
	st.b	$t7, $a2, 61
	xvld	$xr2, $a2, 0
	st.b	$t8, $a2, 62
	st.b	$fp, $a2, 63
	xvld	$xr3, $a2, 32
	xvxori.b	$xr4, $xr2, 19
	xvld	$xr5, $a2, 0
	xvst	$xr4, $a2, 64
	xvxori.b	$xr4, $xr3, 19
	xvst	$xr4, $a2, 96
	xvxori.b	$xr4, $xr5, 38
	xvxori.b	$xr5, $xr3, 38
	xvst	$xr4, $a2, 128
	xvst	$xr5, $a2, 160
	xvxori.b	$xr2, $xr2, 53
	xvxori.b	$xr3, $xr3, 53
	xvst	$xr2, $a2, 192
	xvst	$xr3, $a2, 224
	b	.LBB0_1
.LBB0_4:                                # %for.cond.cleanup
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
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
	.comm	CRCTable,256,32
	.section	".note.GNU-stack","",@progbits
	.addrsig
