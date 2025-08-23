	.file	"crc16.be.nodata.c"
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
	addi.d	$a0, $a0, %pc_lo12(CRCTable)
	ld.h	$t0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	move	$a1, $zero
	xvreplgr2vr.h	$xr2, $t0
	xvxor.v	$xr0, $xr2, $xr0
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a2, %pc_lo12(.LCPI0_1)
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	xvld	$xr3, $a2, %pc_lo12(.LCPI0_2)
	pcalau12i	$a2, %pc_hi20(.LCPI0_3)
	vld	$vr4, $a2, %pc_lo12(.LCPI0_3)
	xvxor.v	$xr1, $xr2, $xr1
	xvxor.v	$xr2, $xr2, $xr3
	vreplgr2vr.h	$vr3, $t0
	vxor.v	$vr3, $vr3, $vr4
	lu12i.w	$a2, -6
	ori	$a2, $a2, 1914
	xor	$a2, $t0, $a2
	lu12i.w	$a3, -7
	ori	$a3, $a3, 1817
	xor	$a3, $t0, $a3
	lu12i.w	$a4, -8
	ori	$a4, $a4, 1848
	xor	$a4, $t0, $a4
	lu12i.w	$a5, -1
	ori	$a5, $a5, 2015
	xor	$a5, $t0, $a5
	lu12i.w	$a6, -2
	ori	$a6, $a6, 2046
	xor	$a6, $t0, $a6
	lu12i.w	$a7, -3
	ori	$a7, $a7, 1949
	xor	$a7, $t0, $a7
	lu12i.w	$t1, -4
	ori	$t1, $t1, 1980
	xor	$t0, $t0, $t1
	pcalau12i	$t1, %pc_hi20(main.crc_initval)
	addi.d	$t1, $t1, %pc_lo12(main.crc_initval)
	lu12i.w	$t2, 1
	ori	$t2, $t2, 33
	lu12i.w	$t3, 4
	ori	$t3, $t3, 2244
	xvreplgr2vr.h	$xr4, $t3
	lu12i.w	$t3, 9
	ori	$t3, $t3, 392
	xvreplgr2vr.h	$xr5, $t3
	lu12i.w	$t3, 13
	ori	$t3, $t3, 2380
	xvreplgr2vr.h	$xr6, $t3
	ori	$t3, $zero, 16
	.p2align	4, , 16
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$t4, $a0, 510
	bnez	$t4, .LBB0_3
# %bb.2:                                # %if.then.i
                                        #   in Loop: Header=BB0_1 Depth=1
	xvst	$xr0, $a0, 2
	xvst	$xr1, $a0, 34
	xvst	$xr2, $a0, 66
	vst	$vr3, $a0, 98
	st.h	$a2, $a0, 114
	st.h	$a3, $a0, 116
	st.h	$a4, $a0, 118
	st.h	$a5, $a0, 120
	st.h	$a6, $a0, 122
	xvld	$xr7, $a0, 0
	xvld	$xr8, $a0, 32
	st.h	$a7, $a0, 124
	st.h	$t0, $a0, 126
	xvxor.v	$xr9, $xr7, $xr4
	xvxor.v	$xr10, $xr8, $xr4
	xvld	$xr11, $a0, 64
	xvst	$xr9, $a0, 128
	xvst	$xr10, $a0, 160
	xvld	$xr9, $a0, 96
	xvxor.v	$xr10, $xr11, $xr4
	xvld	$xr12, $a0, 0
	xvst	$xr10, $a0, 192
	xvxor.v	$xr10, $xr9, $xr4
	xvst	$xr10, $a0, 224
	xvxor.v	$xr10, $xr12, $xr5
	xvld	$xr12, $a0, 64
	xvst	$xr10, $a0, 256
	xvxor.v	$xr10, $xr8, $xr5
	xvst	$xr10, $a0, 288
	xvxor.v	$xr10, $xr12, $xr5
	xvxor.v	$xr12, $xr9, $xr5
	xvst	$xr10, $a0, 320
	xvst	$xr12, $a0, 352
	xvxor.v	$xr7, $xr7, $xr6
	xvxor.v	$xr8, $xr8, $xr6
	xvst	$xr7, $a0, 384
	xvst	$xr8, $a0, 416
	xvxor.v	$xr7, $xr11, $xr6
	xvxor.v	$xr8, $xr9, $xr6
	xvst	$xr7, $a0, 448
	xvst	$xr8, $a0, 480
.LBB0_3:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_1 Depth=1
	ldx.hu	$t4, $t1, $a1
	slli.d	$t5, $t4, 2
	xor	$t6, $t5, $t2
	addi.d	$t7, $a1, -14
	sltui	$t7, $t7, 1
	masknez	$t5, $t5, $t7
	maskeqz	$t6, $t6, $t7
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	ext.w.h	$t6, $t5
	slli.d	$t5, $t5, 1
	xor	$t7, $t5, $t2
	slti	$t6, $t6, 0
	masknez	$t5, $t5, $t6
	srli.d	$t8, $t4, 7
	andi	$t8, $t8, 510
	ldx.h	$t8, $a0, $t8
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	slli.d	$t4, $t4, 8
	xor	$t4, $t8, $t4
	bstrpick.d	$t4, $t4, 15, 8
	slli.d	$t4, $t4, 1
	bstrpick.d	$t4, $t4, 56, 1
	slli.d	$t4, $t4, 1
	ldx.hu	$t4, $a0, $t4
	slli.d	$t6, $t8, 8
	bstrpick.d	$t6, $t6, 15, 8
	slli.d	$t6, $t6, 8
	xor	$t4, $t4, $t6
	bstrpick.d	$t5, $t5, 15, 0
	bne	$t5, $t4, .LBB0_6
# %bb.4:                                # %for.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a1, $a1, 2
	bne	$a1, $t3, .LBB0_1
# %bb.5:
	move	$a0, $zero
	ret
.LBB0_6:
	ori	$a0, $zero, 1
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	main.crc_initval,@object        # @main.crc_initval
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	1, 0x0
main.crc_initval:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	11                              # 0xb
	.half	16                              # 0x10
	.half	129                             # 0x81
	.half	255                             # 0xff
	.half	4129                            # 0x1021
	.half	16384                           # 0x4000
	.size	main.crc_initval, 16

	.type	CRCTable,@object                # @CRCTable
	.local	CRCTable
	.comm	CRCTable,512,32
	.section	".note.GNU-stack","",@progbits
	.addrsig
