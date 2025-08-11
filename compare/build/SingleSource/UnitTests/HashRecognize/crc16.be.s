	.file	"crc16.be.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.half	4129                            # 0x1021
	.half	8258                            # 0x2042
	.half	12387                           # 0x3063
	.half	16516                           # 0x4084
	.half	20645                           # 0x50a5
	.half	24774                           # 0x60c6
	.half	28903                           # 0x70e7
	.half	33032                           # 0x8108
	.half	37161                           # 0x9129
	.half	41290                           # 0xa14a
	.half	45419                           # 0xb16b
	.half	49548                           # 0xc18c
	.half	53677                           # 0xd1ad
	.half	57806                           # 0xe1ce
	.half	61935                           # 0xf1ef
	.half	4657                            # 0x1231
.LCPI0_1:
	.half	528                             # 0x210
	.half	12915                           # 0x3273
	.half	8786                            # 0x2252
	.half	21173                           # 0x52b5
	.half	17044                           # 0x4294
	.half	29431                           # 0x72f7
	.half	25302                           # 0x62d6
	.half	37689                           # 0x9339
	.half	33560                           # 0x8318
	.half	45947                           # 0xb37b
	.half	41818                           # 0xa35a
	.half	54205                           # 0xd3bd
	.half	50076                           # 0xc39c
	.half	62463                           # 0xf3ff
	.half	58334                           # 0xe3de
	.half	9314                            # 0x2462
.LCPI0_2:
	.half	13379                           # 0x3443
	.half	1056                            # 0x420
	.half	5121                            # 0x1401
	.half	25830                           # 0x64e6
	.half	29895                           # 0x74c7
	.half	17572                           # 0x44a4
	.half	21637                           # 0x5485
	.half	42346                           # 0xa56a
	.half	46411                           # 0xb54b
	.half	34088                           # 0x8528
	.half	38153                           # 0x9509
	.half	58862                           # 0xe5ee
	.half	62927                           # 0xf5cf
	.half	50604                           # 0xc5ac
	.half	54669                           # 0xd58d
	.half	13907                           # 0x3653
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_3:
	.half	9842                            # 0x2672
	.half	5649                            # 0x1611
	.half	1584                            # 0x630
	.half	30423                           # 0x76d7
	.half	26358                           # 0x66f6
	.half	22165                           # 0x5695
	.half	18100                           # 0x46b4
	.half	46939                           # 0xb75b
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(CRCTable)
	addi.d	$a1, $a0, %pc_lo12(CRCTable)
	ld.h	$t1, $a1, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_0)
	move	$a2, $zero
	move	$a0, $zero
	xvreplgr2vr.h	$xr2, $t1
	xvxor.v	$xr0, $xr2, $xr0
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI0_1)
	pcalau12i	$a3, %pc_hi20(.LCPI0_2)
	xvld	$xr3, $a3, %pc_lo12(.LCPI0_2)
	pcalau12i	$a3, %pc_hi20(.LCPI0_3)
	vld	$vr4, $a3, %pc_lo12(.LCPI0_3)
	xvxor.v	$xr1, $xr2, $xr1
	xvxor.v	$xr2, $xr2, $xr3
	vreplgr2vr.h	$vr3, $t1
	vxor.v	$vr3, $vr3, $vr4
	lu12i.w	$a3, -6
	ori	$a3, $a3, 1914
	xor	$a3, $t1, $a3
	lu12i.w	$a4, -7
	ori	$a4, $a4, 1817
	xor	$a4, $t1, $a4
	lu12i.w	$a5, -8
	ori	$a5, $a5, 1848
	xor	$a5, $t1, $a5
	lu12i.w	$a6, -1
	ori	$a6, $a6, 2015
	xor	$a6, $t1, $a6
	lu12i.w	$a7, -2
	ori	$a7, $a7, 2046
	xor	$a7, $t1, $a7
	lu12i.w	$t0, -3
	ori	$t0, $t0, 1949
	xor	$t0, $t1, $t0
	lu12i.w	$t2, -4
	ori	$t2, $t2, 1980
	xor	$t1, $t1, $t2
	ori	$t2, $zero, 28
	pcalau12i	$t3, %pc_hi20(main.sample)
	addi.d	$t3, $t3, %pc_lo12(main.sample)
	lu12i.w	$t4, 4
	ori	$t4, $t4, 2244
	xvreplgr2vr.h	$xr4, $t4
	lu12i.w	$t4, 9
	ori	$t4, $t4, 392
	xvreplgr2vr.h	$xr5, $t4
	lu12i.w	$t4, 13
	ori	$t4, $t4, 2380
	xvreplgr2vr.h	$xr6, $t4
	lu12i.w	$t4, 1
	ori	$t4, $t4, 33
	ori	$t5, $zero, 1
	addi.w	$t6, $zero, -4
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	ldx.w	$fp, $t3, $a2
	ldx.w	$t7, $t3, $t2
	xor	$t8, $t7, $fp
	bstrpick.d	$s0, $t8, 15, 8
	slli.d	$s0, $s0, 1
	bstrpick.d	$s0, $s0, 56, 1
	slli.d	$s0, $s0, 1
	ldx.h	$s0, $a1, $s0
	ext.w.h	$s1, $t8
	slli.d	$t8, $fp, 8
	xor	$t8, $s0, $t8
	bstrpick.d	$t8, $t8, 15, 8
	andi	$s2, $t7, 255
	xor	$t8, $t8, $s2
	slli.d	$t8, $t8, 1
	ldx.hu	$t8, $a1, $t8
	slli.d	$s0, $s0, 8
	bstrpick.d	$s0, $s0, 15, 8
	slli.d	$s0, $s0, 8
	xor	$t8, $t8, $s0
	slli.d	$fp, $fp, 1
	xor	$s0, $fp, $t4
	slti	$s1, $s1, 0
	maskeqz	$s0, $s0, $s1
	masknez	$fp, $fp, $s1
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 1
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 2
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 3
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 4
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 5
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 6
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 7
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 8
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 9
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 10
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 11
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 12
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 13
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$s0, $t7, 14
	xor	$s0, $fp, $s0
	ext.w.h	$s0, $s0
	slli.d	$fp, $fp, 1
	xor	$s1, $fp, $t4
	slti	$s0, $s0, 0
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$fp, $s0, $fp
	slli.d	$t7, $t7, 15
	xor	$t7, $fp, $t7
	ext.w.h	$t7, $t7
	slli.d	$fp, $fp, 1
	xor	$s0, $fp, $t4
	slti	$t7, $t7, 0
	masknez	$fp, $fp, $t7
	maskeqz	$t7, $s0, $t7
	or	$t7, $t7, $fp
	bstrpick.d	$t7, $t7, 15, 0
	xor	$t7, $t8, $t7
	sltui	$t7, $t7, 1
	masknez	$t8, $t5, $t7
	maskeqz	$a0, $a0, $t7
	or	$a0, $a0, $t8
	addi.d	$t2, $t2, -4
	addi.d	$a2, $a2, 4
	beq	$t2, $t6, .LBB0_4
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$t7, $a1, 510
	bnez	$t7, .LBB0_1
# %bb.3:                                # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xvst	$xr0, $a1, 2
	xvst	$xr1, $a1, 34
	xvst	$xr2, $a1, 66
	vst	$vr3, $a1, 98
	st.h	$a3, $a1, 114
	st.h	$a4, $a1, 116
	st.h	$a5, $a1, 118
	st.h	$a6, $a1, 120
	st.h	$a7, $a1, 122
	xvld	$xr7, $a1, 0
	xvld	$xr8, $a1, 32
	st.h	$t0, $a1, 124
	st.h	$t1, $a1, 126
	xvxor.v	$xr9, $xr7, $xr4
	xvxor.v	$xr10, $xr8, $xr4
	xvld	$xr11, $a1, 64
	xvst	$xr9, $a1, 128
	xvst	$xr10, $a1, 160
	xvld	$xr9, $a1, 96
	xvxor.v	$xr10, $xr11, $xr4
	xvld	$xr12, $a1, 0
	xvst	$xr10, $a1, 192
	xvxor.v	$xr10, $xr9, $xr4
	xvst	$xr10, $a1, 224
	xvxor.v	$xr10, $xr12, $xr5
	xvld	$xr12, $a1, 64
	xvst	$xr10, $a1, 256
	xvxor.v	$xr10, $xr8, $xr5
	xvst	$xr10, $a1, 288
	xvxor.v	$xr10, $xr12, $xr5
	xvxor.v	$xr12, $xr9, $xr5
	xvst	$xr10, $a1, 320
	xvst	$xr12, $a1, 352
	xvxor.v	$xr7, $xr7, $xr6
	xvxor.v	$xr8, $xr8, $xr6
	xvst	$xr7, $a1, 384
	xvst	$xr8, $a1, 416
	xvxor.v	$xr7, $xr11, $xr6
	xvxor.v	$xr8, $xr9, $xr6
	xvst	$xr7, $a1, 448
	xvst	$xr8, $a1, 480
	b	.LBB0_1
.LBB0_4:                                # %for.cond.cleanup
	ld.d	$s2, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
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
	.comm	CRCTable,512,32
	.section	".note.GNU-stack","",@progbits
	.addrsig
