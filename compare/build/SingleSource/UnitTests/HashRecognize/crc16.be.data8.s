	.file	"crc16.be.data8.c"
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
	pcalau12i	$a0, %pc_hi20(CRCTable)
	addi.d	$a1, $a0, %pc_lo12(CRCTable)
	ld.hu	$a0, $a1, 510
	ld.hu	$t1, $a1, 0
	beqz	$a0, .LBB0_2
# %bb.1:                                # %for.body.us.preheader
	sltu	$a0, $zero, $t1
	ret
.LBB0_2:                                # %for.body.preheader
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_0)
	move	$a2, $zero
	move	$t6, $zero
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
	pcalau12i	$t2, %pc_hi20(main.sample)
	addi.d	$t2, $t2, %pc_lo12(main.sample)
	lu12i.w	$t3, 4
	ori	$t3, $t3, 2244
	xvreplgr2vr.h	$xr4, $t3
	lu12i.w	$t3, 9
	ori	$t3, $t3, 392
	xvreplgr2vr.h	$xr5, $t3
	lu12i.w	$t3, 13
	ori	$t3, $t3, 2380
	xvreplgr2vr.h	$xr6, $t3
	lu12i.w	$t3, 1
	ori	$t3, $t3, 33
	ori	$t4, $zero, 1
	ori	$t5, $zero, 28
	bnez	$t6, .LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %if.then.i
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
.LBB0_4:                                # %crc_table.exit
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t7, $t2, $a2
	ext.w.h	$t8, $t7
	bstrpick.d	$t6, $t7, 15, 8
	slli.d	$t6, $t6, 1
	bstrpick.d	$t6, $t6, 56, 1
	slli.d	$t6, $t6, 1
	ldx.hu	$t6, $a1, $t6
	slli.d	$fp, $t7, 8
	bstrpick.d	$fp, $fp, 15, 8
	slli.d	$fp, $fp, 8
	xor	$t6, $t6, $fp
	slli.d	$t7, $t7, 1
	xor	$fp, $t7, $t3
	slti	$t8, $t8, 0
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $fp, $t8
	or	$t7, $t8, $t7
	ext.w.h	$t8, $t7
	slli.d	$t7, $t7, 1
	xor	$fp, $t7, $t3
	slti	$t8, $t8, 0
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $fp, $t8
	or	$t7, $t8, $t7
	ext.w.h	$t8, $t7
	slli.d	$t7, $t7, 1
	xor	$fp, $t7, $t3
	slti	$t8, $t8, 0
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $fp, $t8
	or	$t7, $t8, $t7
	ext.w.h	$t8, $t7
	slli.d	$t7, $t7, 1
	xor	$fp, $t7, $t3
	slti	$t8, $t8, 0
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $fp, $t8
	or	$t7, $t8, $t7
	ext.w.h	$t8, $t7
	slli.d	$t7, $t7, 1
	xor	$fp, $t7, $t3
	slti	$t8, $t8, 0
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $fp, $t8
	or	$t7, $t8, $t7
	ext.w.h	$t8, $t7
	slli.d	$t7, $t7, 1
	xor	$fp, $t7, $t3
	slti	$t8, $t8, 0
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $fp, $t8
	or	$t7, $t8, $t7
	ext.w.h	$t8, $t7
	slli.d	$t7, $t7, 1
	xor	$fp, $t7, $t3
	slti	$t8, $t8, 0
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $fp, $t8
	or	$t7, $t8, $t7
	ext.w.h	$t8, $t7
	slli.d	$t7, $t7, 1
	xor	$fp, $t7, $t3
	slti	$t8, $t8, 0
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $fp, $t8
	or	$t7, $t8, $t7
	bstrpick.d	$t7, $t7, 15, 0
	xor	$t6, $t6, $t7
	sltui	$t6, $t6, 1
	masknez	$t7, $t4, $t6
	maskeqz	$a0, $a0, $t6
	or	$a0, $a0, $t7
	beq	$a2, $t5, .LBB0_6
# %bb.5:                                # %for.bodythread-pre-split
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.hu	$t6, $a1, 510
	addi.d	$a2, $a2, 4
	bnez	$t6, .LBB0_4
	b	.LBB0_3
.LBB0_6:
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
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
