	.file	"crc32.be.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	33800                           # 0x8408
	.word	67600                           # 0x10810
	.word	101400                          # 0x18c18
	.word	135200                          # 0x21020
	.word	169000                          # 0x29428
	.word	202800                          # 0x31830
	.word	236600                          # 0x39c38
	.word	270400                          # 0x42040
.LCPI0_1:
	.word	304200                          # 0x4a448
	.word	338000                          # 0x52850
	.word	371800                          # 0x5ac58
	.word	405600                          # 0x63060
	.word	439400                          # 0x6b468
	.word	473200                          # 0x73870
	.word	507000                          # 0x7bc78
	.word	540800                          # 0x84080
.LCPI0_2:
	.word	574600                          # 0x8c488
	.word	608400                          # 0x94890
	.word	642200                          # 0x9cc98
	.word	676000                          # 0xa50a0
	.word	709800                          # 0xad4a8
	.word	743600                          # 0xb58b0
	.word	777400                          # 0xbdcb8
	.word	811200                          # 0xc60c0
.LCPI0_3:
	.word	845000                          # 0xce4c8
	.word	878800                          # 0xd68d0
	.word	912600                          # 0xdecd8
	.word	946400                          # 0xe70e0
	.word	980200                          # 0xef4e8
	.word	1014000                         # 0xf78f0
	.word	1047800                         # 0xffcf8
	.word	1081600                         # 0x108100
.LCPI0_4:
	.word	1049864                         # 0x100508
	.word	1149200                         # 0x118910
	.word	1117464                         # 0x110d18
	.word	1216800                         # 0x129120
	.word	1185064                         # 0x121528
	.word	1284400                         # 0x139930
	.word	1252664                         # 0x131d38
	.word	1352000                         # 0x14a140
.LCPI0_5:
	.word	1320264                         # 0x142548
	.word	1419600                         # 0x15a950
	.word	1387864                         # 0x152d58
	.word	1487200                         # 0x16b160
	.word	1455464                         # 0x163568
	.word	1554800                         # 0x17b970
	.word	1523064                         # 0x173d78
	.word	1622400                         # 0x18c180
.LCPI0_6:
	.word	1590664                         # 0x184588
	.word	1690000                         # 0x19c990
	.word	1658264                         # 0x194d98
	.word	1757600                         # 0x1ad1a0
	.word	1725864                         # 0x1a55a8
	.word	1825200                         # 0x1bd9b0
	.word	1793464                         # 0x1b5db8
	.word	1892800                         # 0x1ce1c0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	move	$a1, $zero
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(CRCTable)
	addi.d	$a2, $a2, %pc_lo12(CRCTable)
	ld.w	$t1, $a2, 0
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI0_0)
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI0_1)
	pcalau12i	$a3, %pc_hi20(.LCPI0_2)
	xvld	$xr2, $a3, %pc_lo12(.LCPI0_2)
	xvreplgr2vr.w	$xr6, $t1
	xvxor.v	$xr0, $xr6, $xr0
	xvxor.v	$xr1, $xr6, $xr1
	xvxor.v	$xr2, $xr6, $xr2
	pcalau12i	$a3, %pc_hi20(.LCPI0_3)
	xvld	$xr3, $a3, %pc_lo12(.LCPI0_3)
	pcalau12i	$a3, %pc_hi20(.LCPI0_4)
	xvld	$xr4, $a3, %pc_lo12(.LCPI0_4)
	pcalau12i	$a3, %pc_hi20(.LCPI0_5)
	xvld	$xr5, $a3, %pc_lo12(.LCPI0_5)
	pcalau12i	$a3, %pc_hi20(.LCPI0_6)
	xvld	$xr7, $a3, %pc_lo12(.LCPI0_6)
	xvxor.v	$xr3, $xr6, $xr3
	xvxor.v	$xr4, $xr6, $xr4
	xvxor.v	$xr5, $xr6, $xr5
	xvxor.v	$xr6, $xr6, $xr7
	lu12i.w	$a3, 454
	ori	$a3, $a3, 1480
	xor	$a3, $t1, $a3
	lu12i.w	$a4, 478
	ori	$a4, $a4, 2512
	xor	$a4, $t1, $a4
	lu12i.w	$a5, 470
	ori	$a5, $a5, 3544
	xor	$a5, $t1, $a5
	lu12i.w	$a6, 495
	ori	$a6, $a6, 480
	xor	$a6, $t1, $a6
	lu12i.w	$a7, 487
	ori	$a7, $a7, 1512
	xor	$a7, $t1, $a7
	lu12i.w	$t0, 511
	ori	$t0, $t0, 2544
	xor	$t0, $t1, $t0
	lu12i.w	$t2, 503
	ori	$t2, $t2, 3576
	xor	$t1, $t1, $t2
	ori	$t2, $zero, 28
	pcalau12i	$t3, %pc_hi20(main.sample)
	addi.d	$t3, $t3, %pc_lo12(main.sample)
	lu12i.w	$t4, 528
	ori	$t4, $t4, 512
	xvreplgr2vr.w	$xr7, $t4
	lu12i.w	$t4, 1056
	ori	$t4, $t4, 1024
	xvreplgr2vr.w	$xr8, $t4
	lu12i.w	$t4, 1584
	ori	$t4, $t4, 1536
	xvreplgr2vr.w	$xr9, $t4
	lu12i.w	$t4, -4096
	lu32i.d	$t4, 0
	lu12i.w	$t5, 8
	ori	$t5, $t5, 1032
	ori	$t6, $zero, 1
	addi.w	$t7, $zero, -4
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	ldx.w	$s2, $t3, $a1
	ldx.w	$t8, $t3, $t2
	xor	$s3, $t8, $s2
	and	$fp, $s3, $t4
	srli.d	$fp, $fp, 22
	ldx.w	$fp, $a2, $fp
	slli.d	$s0, $s3, 8
	xor	$s0, $fp, $s0
	and	$s0, $s0, $t4
	srli.d	$s0, $s0, 22
	ldx.w	$s0, $a2, $s0
	slli.d	$s1, $s2, 16
	slli.d	$fp, $fp, 8
	xor	$fp, $fp, $s1
	xor	$fp, $fp, $s0
	slli.d	$s1, $t8, 16
	xor	$s0, $fp, $s1
	and	$s0, $s0, $t4
	srli.d	$s0, $s0, 22
	ldx.w	$s0, $a2, $s0
	slli.d	$fp, $fp, 8
	xor	$fp, $fp, $s0
	slli.d	$s0, $t8, 24
	xor	$s4, $fp, $s0
	and	$s4, $s4, $t4
	srli.d	$s4, $s4, 22
	ldx.w	$s4, $a2, $s4
	slli.w	$fp, $fp, 8
	xor	$fp, $fp, $s4
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	maskeqz	$s4, $s4, $s3
	masknez	$s2, $s2, $s3
	or	$s2, $s4, $s2
	slli.w	$s3, $t8, 1
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 2
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 3
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 4
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 5
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 6
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 7
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 8
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 9
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 10
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 11
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 12
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 13
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 14
	xor	$s3, $s2, $s3
	slli.w	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	slli.w	$s3, $t8, 15
	xor	$s3, $s2, $s3
	slli.d	$s2, $s2, 1
	xor	$s4, $s2, $t5
	slti	$s3, $s3, 0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	xor	$s1, $s2, $s1
	addi.w	$s1, $s1, 0
	slli.w	$s2, $s2, 1
	xor	$s3, $s2, $t5
	slti	$s1, $s1, 0
	masknez	$s2, $s2, $s1
	maskeqz	$s1, $s3, $s1
	or	$s1, $s1, $s2
	slli.w	$s2, $t8, 17
	xor	$s2, $s1, $s2
	slli.w	$s1, $s1, 1
	xor	$s3, $s1, $t5
	slti	$s2, $s2, 0
	masknez	$s1, $s1, $s2
	maskeqz	$s2, $s3, $s2
	or	$s1, $s2, $s1
	slli.w	$s2, $t8, 18
	xor	$s2, $s1, $s2
	slli.w	$s1, $s1, 1
	xor	$s3, $s1, $t5
	slti	$s2, $s2, 0
	masknez	$s1, $s1, $s2
	maskeqz	$s2, $s3, $s2
	or	$s1, $s2, $s1
	slli.w	$s2, $t8, 19
	xor	$s2, $s1, $s2
	slli.w	$s1, $s1, 1
	xor	$s3, $s1, $t5
	slti	$s2, $s2, 0
	masknez	$s1, $s1, $s2
	maskeqz	$s2, $s3, $s2
	or	$s1, $s2, $s1
	slli.w	$s2, $t8, 20
	xor	$s2, $s1, $s2
	slli.w	$s1, $s1, 1
	xor	$s3, $s1, $t5
	slti	$s2, $s2, 0
	masknez	$s1, $s1, $s2
	maskeqz	$s2, $s3, $s2
	or	$s1, $s2, $s1
	slli.w	$s2, $t8, 21
	xor	$s2, $s1, $s2
	slli.w	$s1, $s1, 1
	xor	$s3, $s1, $t5
	slti	$s2, $s2, 0
	masknez	$s1, $s1, $s2
	maskeqz	$s2, $s3, $s2
	or	$s1, $s2, $s1
	slli.w	$s2, $t8, 22
	xor	$s2, $s1, $s2
	slli.w	$s1, $s1, 1
	xor	$s3, $s1, $t5
	slti	$s2, $s2, 0
	masknez	$s1, $s1, $s2
	maskeqz	$s2, $s3, $s2
	or	$s1, $s2, $s1
	slli.w	$s2, $t8, 23
	xor	$s2, $s1, $s2
	slli.d	$s1, $s1, 1
	xor	$s3, $s1, $t5
	slti	$s2, $s2, 0
	masknez	$s1, $s1, $s2
	maskeqz	$s2, $s3, $s2
	or	$s1, $s2, $s1
	xor	$s0, $s1, $s0
	addi.w	$s0, $s0, 0
	slli.w	$s1, $s1, 1
	xor	$s2, $s1, $t5
	slti	$s0, $s0, 0
	masknez	$s1, $s1, $s0
	maskeqz	$s0, $s2, $s0
	or	$s0, $s0, $s1
	slli.w	$s1, $t8, 25
	xor	$s1, $s0, $s1
	slli.w	$s0, $s0, 1
	xor	$s2, $s0, $t5
	slti	$s1, $s1, 0
	masknez	$s0, $s0, $s1
	maskeqz	$s1, $s2, $s1
	or	$s0, $s1, $s0
	slli.w	$s1, $t8, 26
	xor	$s1, $s0, $s1
	slli.w	$s0, $s0, 1
	xor	$s2, $s0, $t5
	slti	$s1, $s1, 0
	masknez	$s0, $s0, $s1
	maskeqz	$s1, $s2, $s1
	or	$s0, $s1, $s0
	slli.w	$s1, $t8, 27
	xor	$s1, $s0, $s1
	slli.w	$s0, $s0, 1
	xor	$s2, $s0, $t5
	slti	$s1, $s1, 0
	masknez	$s0, $s0, $s1
	maskeqz	$s1, $s2, $s1
	or	$s0, $s1, $s0
	slli.w	$s1, $t8, 28
	xor	$s1, $s0, $s1
	slli.w	$s0, $s0, 1
	xor	$s2, $s0, $t5
	slti	$s1, $s1, 0
	masknez	$s0, $s0, $s1
	maskeqz	$s1, $s2, $s1
	or	$s0, $s1, $s0
	slli.w	$s1, $t8, 29
	xor	$s1, $s0, $s1
	slli.w	$s0, $s0, 1
	xor	$s2, $s0, $t5
	slti	$s1, $s1, 0
	masknez	$s0, $s0, $s1
	maskeqz	$s1, $s2, $s1
	or	$s0, $s1, $s0
	slli.w	$s1, $t8, 30
	xor	$s1, $s0, $s1
	slli.w	$s0, $s0, 1
	xor	$s2, $s0, $t5
	slti	$s1, $s1, 0
	masknez	$s0, $s0, $s1
	maskeqz	$s1, $s2, $s1
	or	$s0, $s1, $s0
	slli.w	$t8, $t8, 31
	xor	$t8, $s0, $t8
	slli.w	$s0, $s0, 1
	xor	$s1, $s0, $t5
	slti	$t8, $t8, 0
	masknez	$s0, $s0, $t8
	maskeqz	$t8, $s1, $t8
	or	$t8, $t8, $s0
	xor	$t8, $fp, $t8
	sltui	$t8, $t8, 1
	masknez	$fp, $t6, $t8
	maskeqz	$a0, $a0, $t8
	or	$a0, $a0, $fp
	addi.d	$t2, $t2, -4
	addi.d	$a1, $a1, 4
	beq	$t2, $t7, .LBB0_4
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t8, $a2, 1020
	bnez	$t8, .LBB0_1
# %bb.3:                                # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xvst	$xr0, $a2, 4
	xvst	$xr1, $a2, 36
	xvst	$xr2, $a2, 68
	xvst	$xr3, $a2, 100
	xvst	$xr4, $a2, 132
	xvst	$xr5, $a2, 164
	xvst	$xr6, $a2, 196
	st.w	$a3, $a2, 228
	st.w	$a4, $a2, 232
	st.w	$a5, $a2, 236
	st.w	$a6, $a2, 240
	st.w	$a7, $a2, 244
	xvld	$xr10, $a2, 0
	xvld	$xr11, $a2, 32
	st.w	$t0, $a2, 248
	st.w	$t1, $a2, 252
	xvxor.v	$xr12, $xr10, $xr7
	xvxor.v	$xr13, $xr11, $xr7
	xvld	$xr14, $a2, 64
	xvld	$xr15, $a2, 96
	xvst	$xr12, $a2, 256
	xvst	$xr13, $a2, 288
	xvxor.v	$xr12, $xr14, $xr7
	xvxor.v	$xr13, $xr15, $xr7
	xvld	$xr16, $a2, 128
	xvld	$xr17, $a2, 160
	xvst	$xr12, $a2, 320
	xvst	$xr13, $a2, 352
	xvxor.v	$xr12, $xr16, $xr7
	xvxor.v	$xr13, $xr17, $xr7
	xvld	$xr18, $a2, 192
	xvld	$xr19, $a2, 224
	xvst	$xr12, $a2, 384
	xvst	$xr13, $a2, 416
	xvxor.v	$xr12, $xr18, $xr7
	xvxor.v	$xr13, $xr19, $xr7
	xvld	$xr20, $a2, 0
	xvst	$xr12, $a2, 448
	xvst	$xr13, $a2, 480
	xvld	$xr12, $a2, 32
	xvxor.v	$xr13, $xr20, $xr8
	xvst	$xr13, $a2, 512
	xvld	$xr13, $a2, 64
	xvld	$xr20, $a2, 96
	xvxor.v	$xr12, $xr12, $xr8
	xvst	$xr12, $a2, 544
	xvxor.v	$xr12, $xr13, $xr8
	xvxor.v	$xr13, $xr20, $xr8
	xvld	$xr20, $a2, 128
	xvst	$xr12, $a2, 576
	xvst	$xr13, $a2, 608
	xvld	$xr12, $a2, 160
	xvxor.v	$xr13, $xr20, $xr8
	xvst	$xr13, $a2, 640
	xvld	$xr13, $a2, 192
	xvld	$xr20, $a2, 224
	xvxor.v	$xr12, $xr12, $xr8
	xvst	$xr12, $a2, 672
	xvxor.v	$xr12, $xr13, $xr8
	xvxor.v	$xr13, $xr20, $xr8
	xvst	$xr12, $a2, 704
	xvst	$xr13, $a2, 736
	xvxor.v	$xr10, $xr10, $xr9
	xvxor.v	$xr11, $xr11, $xr9
	xvst	$xr10, $a2, 768
	xvst	$xr11, $a2, 800
	xvxor.v	$xr10, $xr14, $xr9
	xvxor.v	$xr11, $xr15, $xr9
	xvst	$xr10, $a2, 832
	xvst	$xr11, $a2, 864
	xvxor.v	$xr10, $xr16, $xr9
	xvxor.v	$xr11, $xr17, $xr9
	xvst	$xr10, $a2, 896
	xvst	$xr11, $a2, 928
	xvxor.v	$xr10, $xr18, $xr9
	xvxor.v	$xr11, $xr19, $xr9
	xvst	$xr10, $a2, 960
	xvst	$xr11, $a2, 992
	b	.LBB0_1
.LBB0_4:                                # %for.cond.cleanup
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
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
	.comm	CRCTable,1024,32
	.section	".note.GNU-stack","",@progbits
	.addrsig
