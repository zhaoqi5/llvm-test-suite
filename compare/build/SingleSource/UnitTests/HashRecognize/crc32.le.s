	.file	"crc32.le.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	16                              # 0x10
	.dword	20                              # 0x14
	.dword	24                              # 0x18
	.dword	28                              # 0x1c
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	4                               # 0x4
	.dword	8                               # 0x8
	.dword	12                              # 0xc
.LCPI0_2:
	.dword	8                               # 0x8
	.dword	10                              # 0xa
	.dword	12                              # 0xc
	.dword	14                              # 0xe
.LCPI0_3:
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
	addi.d	$sp, $sp, -528
	st.d	$ra, $sp, 520                   # 8-byte Folded Spill
	st.d	$fp, $sp, 512                   # 8-byte Folded Spill
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	st.d	$s7, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 440                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(CRCTable)
	addi.d	$a1, $a0, %pc_lo12(CRCTable)
	ld.w	$s4, $a1, 0
	move	$a2, $zero
	move	$a0, $zero
	lu12i.w	$a6, 4
	ori	$a3, $a6, 516
	xor	$a3, $s4, $a3
	st.d	$a3, $sp, 432                   # 8-byte Folded Spill
	lu12i.w	$t0, 12
	ori	$a3, $t0, 1548
	xor	$a3, $s4, $a3
	st.d	$a3, $sp, 424                   # 8-byte Folded Spill
	lu12i.w	$a5, 2
	ori	$a3, $a5, 258
	xor	$a3, $s4, $a3
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	lu12i.w	$a7, 6
	ori	$a3, $a7, 774
	xor	$a3, $s4, $a3
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	lu12i.w	$a3, 10
	ori	$a4, $a3, 1290
	xor	$a4, $s4, $a4
	st.d	$a4, $sp, 400                   # 8-byte Folded Spill
	lu12i.w	$t1, 14
	ori	$a4, $t1, 1806
	xor	$a4, $s4, $a4
	st.d	$a4, $sp, 392                   # 8-byte Folded Spill
	lu12i.w	$t2, 1
	ori	$a4, $t2, 129
	xor	$a4, $s4, $a4
	st.d	$a4, $sp, 384                   # 8-byte Folded Spill
	lu12i.w	$a4, 3
	ori	$t3, $a4, 387
	xor	$t3, $s4, $t3
	st.d	$t3, $sp, 376                   # 8-byte Folded Spill
	lu12i.w	$t4, 5
	ori	$t3, $t4, 645
	xor	$t3, $s4, $t3
	st.d	$t3, $sp, 368                   # 8-byte Folded Spill
	lu12i.w	$t3, 7
	ori	$t5, $t3, 903
	xor	$t5, $s4, $t5
	st.d	$t5, $sp, 360                   # 8-byte Folded Spill
	lu12i.w	$t5, 9
	ori	$t6, $t5, 1161
	xor	$t6, $s4, $t6
	st.d	$t6, $sp, 352                   # 8-byte Folded Spill
	lu12i.w	$fp, 11
	ori	$t6, $fp, 1419
	xor	$t6, $s4, $t6
	st.d	$t6, $sp, 344                   # 8-byte Folded Spill
	lu12i.w	$t8, 13
	ori	$t6, $t8, 1677
	xor	$t6, $s4, $t6
	st.d	$t6, $sp, 336                   # 8-byte Folded Spill
	lu12i.w	$t7, 15
	ori	$t6, $t7, 1935
	xor	$t6, $s4, $t6
	st.d	$t6, $sp, 328                   # 8-byte Folded Spill
	lu12i.w	$t6, 8
	ori	$s0, $t6, 3144
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 320                   # 8-byte Folded Spill
	ori	$s0, $t5, 3273
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	ori	$s0, $a3, 3402
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 304                   # 8-byte Folded Spill
	ori	$s0, $fp, 3531
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	ori	$s0, $t0, 3660
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 288                   # 8-byte Folded Spill
	ori	$s0, $t8, 3789
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	ori	$s0, $t1, 3918
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 272                   # 8-byte Folded Spill
	ori	$s0, $t7, 4047
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	ori	$s0, $t2, 2241
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 256                   # 8-byte Folded Spill
	ori	$s0, $a5, 2370
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	ori	$s0, $a4, 2499
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 240                   # 8-byte Folded Spill
	ori	$s0, $a6, 2628
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	ori	$s0, $t4, 2757
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 224                   # 8-byte Folded Spill
	ori	$s0, $a7, 2886
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	ori	$s0, $t3, 3015
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	ori	$s0, $a6, 1572
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	ori	$s0, $t0, 2668
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 192                   # 8-byte Folded Spill
	ori	$s0, $t4, 1701
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	ori	$s0, $t8, 2797
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	ori	$s0, $a7, 1830
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	ori	$s0, $t1, 2926
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	ori	$s0, $t3, 1959
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	ori	$s0, $t7, 3055
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	ori	$s0, $t6, 2152
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	ori	$s0, $t2, 1185
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	ori	$s0, $t5, 2281
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	ori	$s0, $a5, 1314
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	ori	$s0, $a3, 2410
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	ori	$s0, $a4, 1443
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	ori	$s0, $fp, 2539
	xor	$s0, $s4, $s0
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	ori	$t0, $t0, 556
	xor	$t0, $s4, $t0
	st.d	$t0, $sp, 80                    # 8-byte Folded Spill
	ori	$a6, $a6, 3684
	xor	$a6, $s4, $a6
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	ori	$a6, $t8, 685
	xor	$a6, $s4, $a6
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	ori	$a6, $t4, 3813
	xor	$a6, $s4, $a6
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	ori	$a6, $t1, 814
	xor	$a6, $s4, $a6
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	ori	$a6, $a7, 3942
	xor	$a6, $s4, $a6
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	ori	$a6, $t7, 943
	xor	$a6, $s4, $a6
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	ori	$a6, $t3, 4071
	xor	$a6, $s4, $a6
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	ori	$t3, $t6, 1032
	ori	$a6, $t6, 40
	xor	$a6, $s4, $a6
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	ori	$a6, $t5, 169
	xor	$a6, $s4, $a6
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
	ori	$a6, $t2, 3297
	xor	$t6, $s4, $a6
	ori	$a3, $a3, 298
	xor	$t7, $s4, $a3
	ori	$a3, $a5, 3426
	xor	$t8, $s4, $a3
	ori	$a3, $fp, 427
	xor	$fp, $s4, $a3
	ori	$a3, $a4, 3555
	xor	$s0, $s4, $a3
	xor	$s1, $s4, $t3
	xori	$s2, $s4, 2112
	xori	$s3, $s4, 1056
	xori	$s4, $s4, 3168
	xvrepli.d	$xr0, 32
	ori	$s5, $zero, 7
	ori	$s6, $zero, 1024
	ori	$s7, $zero, 1
	ori	$s8, $zero, 8
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	slli.d	$a3, $a2, 2
	pcalau12i	$a4, %pc_hi20(main.sample)
	addi.d	$a4, $a4, %pc_lo12(main.sample)
	ldx.w	$a3, $a4, $a3
	sub.d	$a6, $s5, $a2
	slli.d	$a6, $a6, 2
	ldx.w	$ra, $a4, $a6
	xor	$a7, $ra, $a3
	andi	$a4, $a7, 255
	slli.d	$a4, $a4, 2
	ldx.wu	$a4, $a1, $a4
	srli.d	$a6, $a7, 8
	xor	$a6, $a4, $a6
	andi	$a6, $a6, 255
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a1, $a6
	bstrpick.d	$t0, $a3, 31, 16
	srli.d	$a4, $a4, 8
	xor	$a4, $a4, $t0
	xor	$a4, $a4, $a6
	bstrpick.d	$a6, $ra, 31, 16
	xor	$t0, $a4, $a6
	andi	$t0, $t0, 255
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a1, $t0
	bstrpick.d	$a4, $a4, 31, 8
	xor	$t0, $a4, $t0
	bstrpick.d	$a4, $ra, 31, 24
	andi	$t1, $t0, 255
	xor	$t1, $t1, $a4
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a1, $t1
	bstrpick.d	$t4, $a3, 31, 1
	bstrpick.d	$a3, $t0, 31, 8
	xor	$a3, $a3, $t1
	addi.w	$a3, $a3, 0
	bstrpick.d	$t0, $t4, 62, 0
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t1, $t0, $t3
	masknez	$t1, $t1, $a7
	maskeqz	$a7, $t0, $a7
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 1
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 2
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 3
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 4
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 5
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 6
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 7
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 8
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 9
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 10
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 11
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 12
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 13
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 14
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	srli.d	$t0, $ra, 15
	xor	$t0, $a7, $t0
	srli.d	$a7, $a7, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a7, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t1
	xor	$a6, $a7, $a6
	srli.d	$a7, $a7, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$t0, $a7, $t3
	masknez	$t0, $t0, $a6
	maskeqz	$a6, $a7, $a6
	or	$a6, $a6, $t0
	srli.d	$a7, $ra, 17
	xor	$a7, $a6, $a7
	srli.d	$a6, $a6, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $t3
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $ra, 18
	xor	$a7, $a6, $a7
	srli.d	$a6, $a6, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $t3
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $ra, 19
	xor	$a7, $a6, $a7
	srli.d	$a6, $a6, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $t3
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $ra, 20
	xor	$a7, $a6, $a7
	srli.d	$a6, $a6, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $t3
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $ra, 21
	xor	$a7, $a6, $a7
	srli.d	$a6, $a6, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $t3
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $ra, 22
	xor	$a7, $a6, $a7
	srli.d	$a6, $a6, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $t3
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $ra, 23
	xor	$a7, $a6, $a7
	srli.d	$a6, $a6, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $t3
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	xor	$a4, $a6, $a4
	srli.d	$a6, $a6, 1
	andi	$a4, $a4, 1
	sltui	$a4, $a4, 1
	xor	$a7, $a6, $t3
	masknez	$a7, $a7, $a4
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a7
	srli.d	$a6, $ra, 25
	xor	$a6, $a4, $a6
	srli.d	$a4, $a4, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$a7, $a4, $t3
	masknez	$a7, $a7, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a7
	srli.d	$a6, $ra, 26
	xor	$a6, $a4, $a6
	srli.d	$a4, $a4, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$a7, $a4, $t3
	masknez	$a7, $a7, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a7
	srli.d	$a6, $ra, 27
	xor	$a6, $a4, $a6
	srli.d	$a4, $a4, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$a7, $a4, $t3
	masknez	$a7, $a7, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a7
	srli.d	$a6, $ra, 28
	xor	$a6, $a4, $a6
	srli.d	$a4, $a4, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$a7, $a4, $t3
	masknez	$a7, $a7, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a7
	srli.d	$a6, $ra, 29
	xor	$a6, $a4, $a6
	srli.d	$a4, $a4, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$a7, $a4, $t3
	masknez	$a7, $a7, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a7
	srli.d	$a6, $ra, 30
	xor	$a6, $a4, $a6
	srli.d	$a4, $a4, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$a7, $a4, $t3
	masknez	$a7, $a7, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a7
	bstrpick.d	$a6, $ra, 31, 31
	srli.d	$a7, $a4, 1
	andi	$a4, $a4, 1
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	xor	$a6, $a7, $t3
	masknez	$a6, $a6, $a4
	maskeqz	$a4, $a7, $a4
	or	$a4, $a4, $a6
	xor	$a3, $a3, $a4
	sltui	$a3, $a3, 1
	masknez	$a4, $s7, $a3
	maskeqz	$a0, $a0, $a3
	addi.d	$a2, $a2, 1
	or	$a0, $a0, $a4
	beq	$a2, $s8, .LBB0_7
.LBB0_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_6 Depth 2
	ld.w	$a3, $a1, 1020
	bnez	$a3, .LBB0_1
# %bb.3:                                # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a3, $zero
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	xvld	$xr1, $a4, %pc_lo12(.LCPI0_0)
	pcalau12i	$a4, %pc_hi20(.LCPI0_1)
	xvld	$xr2, $a4, %pc_lo12(.LCPI0_1)
	st.w	$s1, $a1, 512
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	st.w	$a4, $a1, 256
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	st.w	$a4, $a1, 768
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	st.w	$a4, $a1, 128
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	st.w	$a4, $a1, 384
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	st.w	$a4, $a1, 640
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	st.w	$a4, $a1, 896
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	st.w	$a4, $a1, 64
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	st.w	$a4, $a1, 192
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	st.w	$a4, $a1, 320
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	st.w	$a4, $a1, 448
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	st.w	$a4, $a1, 576
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	st.w	$a4, $a1, 704
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	st.w	$a4, $a1, 832
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	st.w	$a4, $a1, 960
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	st.w	$a4, $a1, 32
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	st.w	$a4, $a1, 96
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	st.w	$a4, $a1, 160
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	st.w	$a4, $a1, 224
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	st.w	$a4, $a1, 288
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	st.w	$a4, $a1, 352
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	st.w	$a4, $a1, 416
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	st.w	$a4, $a1, 480
	st.w	$s2, $a1, 544
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	st.w	$a4, $a1, 608
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	st.w	$a4, $a1, 672
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	st.w	$a4, $a1, 736
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	st.w	$a4, $a1, 800
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	st.w	$a4, $a1, 864
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	st.w	$a4, $a1, 928
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	st.w	$a4, $a1, 992
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	st.w	$a4, $a1, 16
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	st.w	$a4, $a1, 48
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	st.w	$a4, $a1, 80
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	st.w	$a4, $a1, 112
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	st.w	$a4, $a1, 144
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	st.w	$a4, $a1, 176
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	st.w	$a4, $a1, 208
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	st.w	$a4, $a1, 240
	st.w	$s3, $a1, 272
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	st.w	$a4, $a1, 304
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	st.w	$a4, $a1, 336
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	st.w	$a4, $a1, 368
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	st.w	$a4, $a1, 400
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a4, $a1, 432
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	st.w	$a4, $a1, 464
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	st.w	$a4, $a1, 496
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.w	$a4, $a1, 528
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	st.w	$a4, $a1, 560
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	st.w	$a4, $a1, 592
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	st.w	$a4, $a1, 624
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	st.w	$a4, $a1, 656
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	st.w	$a4, $a1, 688
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	st.w	$a4, $a1, 720
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	st.w	$a4, $a1, 752
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	st.w	$a4, $a1, 784
	st.w	$s4, $a1, 816
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	st.w	$a4, $a1, 848
	st.w	$t6, $a1, 880
	st.w	$t7, $a1, 912
	st.w	$t8, $a1, 944
	st.w	$fp, $a1, 976
	st.w	$s0, $a1, 1008
	.p2align	4, , 16
.LBB0_4:                                # %vector.body18
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a4, $a1, $a3
	ldx.w	$a6, $a1, $a3
	ld.w	$ra, $a4, 16
	ld.w	$a7, $a4, 32
	ld.w	$t0, $a4, 48
	ld.w	$t1, $a4, 64
	ld.w	$t4, $a4, 80
	ld.w	$t5, $a4, 96
	ld.w	$a4, $a4, 112
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $ra, 1
	vinsgr2vr.w	$vr3, $a7, 2
	vinsgr2vr.w	$vr3, $t0, 3
	vinsgr2vr.w	$vr4, $t1, 0
	vinsgr2vr.w	$vr4, $t4, 1
	vinsgr2vr.w	$vr4, $t5, 2
	vinsgr2vr.w	$vr4, $a4, 3
	xvpermi.q	$xr3, $xr4, 2
	ori	$a4, $a5, 786
	xvreplgr2vr.w	$xr4, $a4
	xvxor.v	$xr3, $xr3, $xr4
	xvbitseti.d	$xr4, $xr1, 1
	xvbitseti.d	$xr5, $xr2, 1
	xvpickve2gr.d	$a4, $xr5, 0
	alsl.d	$a4, $a4, $a1, 2
	xvpickve2gr.d	$a6, $xr5, 1
	alsl.d	$a6, $a6, $a1, 2
	xvpickve2gr.d	$a7, $xr5, 2
	alsl.d	$a7, $a7, $a1, 2
	xvpickve2gr.d	$t0, $xr5, 3
	alsl.d	$t0, $t0, $a1, 2
	xvpickve2gr.d	$t1, $xr4, 0
	alsl.d	$t1, $t1, $a1, 2
	xvpickve2gr.d	$t4, $xr4, 1
	alsl.d	$t4, $t4, $a1, 2
	xvpickve2gr.d	$t5, $xr4, 2
	alsl.d	$t5, $t5, $a1, 2
	xvpickve2gr.d	$ra, $xr4, 3
	alsl.d	$ra, $ra, $a1, 2
	xvstelm.w	$xr3, $a4, 0, 0
	xvstelm.w	$xr3, $a6, 0, 1
	xvstelm.w	$xr3, $a7, 0, 2
	xvstelm.w	$xr3, $t0, 0, 3
	xvstelm.w	$xr3, $t1, 0, 4
	xvstelm.w	$xr3, $t4, 0, 5
	xvstelm.w	$xr3, $t5, 0, 6
	xvstelm.w	$xr3, $ra, 0, 7
	xvadd.d	$xr2, $xr2, $xr0
	addi.d	$a3, $a3, 128
	xvadd.d	$xr1, $xr1, $xr0
	bne	$a3, $s6, .LBB0_4
# %bb.5:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$a3, %pc_hi20(.LCPI0_2)
	xvld	$xr1, $a3, %pc_lo12(.LCPI0_2)
	pcalau12i	$a3, %pc_hi20(.LCPI0_3)
	xvld	$xr2, $a3, %pc_lo12(.LCPI0_3)
	move	$a3, $zero
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a4, $a1, $a3
	ldx.w	$a6, $a1, $a3
	ld.w	$a7, $a4, 8
	ld.w	$t0, $a4, 16
	ld.w	$t1, $a4, 24
	ld.w	$t4, $a4, 32
	ld.w	$t5, $a4, 40
	ld.w	$ra, $a4, 48
	ld.w	$a4, $a4, 56
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $t0, 2
	vinsgr2vr.w	$vr3, $t1, 3
	vinsgr2vr.w	$vr4, $t4, 0
	vinsgr2vr.w	$vr4, $t5, 1
	vinsgr2vr.w	$vr4, $ra, 2
	vinsgr2vr.w	$vr4, $a4, 3
	xvpermi.q	$xr3, $xr4, 2
	ori	$a4, $t2, 393
	xvreplgr2vr.w	$xr4, $a4
	xvxor.v	$xr3, $xr3, $xr4
	xvbitseti.d	$xr4, $xr1, 0
	xvbitseti.d	$xr5, $xr2, 0
	xvpickve2gr.d	$a4, $xr5, 0
	alsl.d	$a4, $a4, $a1, 2
	xvpickve2gr.d	$a6, $xr5, 1
	alsl.d	$a6, $a6, $a1, 2
	xvpickve2gr.d	$a7, $xr5, 2
	alsl.d	$a7, $a7, $a1, 2
	xvpickve2gr.d	$t0, $xr5, 3
	alsl.d	$t0, $t0, $a1, 2
	xvpickve2gr.d	$t1, $xr4, 0
	alsl.d	$t1, $t1, $a1, 2
	xvpickve2gr.d	$t4, $xr4, 1
	alsl.d	$t4, $t4, $a1, 2
	xvpickve2gr.d	$t5, $xr4, 2
	alsl.d	$t5, $t5, $a1, 2
	xvpickve2gr.d	$ra, $xr4, 3
	alsl.d	$ra, $ra, $a1, 2
	xvstelm.w	$xr3, $a4, 0, 0
	xvstelm.w	$xr3, $a6, 0, 1
	xvstelm.w	$xr3, $a7, 0, 2
	xvstelm.w	$xr3, $t0, 0, 3
	xvstelm.w	$xr3, $t1, 0, 4
	xvstelm.w	$xr3, $t4, 0, 5
	xvstelm.w	$xr3, $t5, 0, 6
	xvstelm.w	$xr3, $ra, 0, 7
	xvaddi.du	$xr2, $xr2, 16
	addi.d	$a3, $a3, 64
	xvaddi.du	$xr1, $xr1, 16
	bne	$a3, $s6, .LBB0_6
	b	.LBB0_1
.LBB0_7:                                # %for.cond.cleanup
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 520                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 528
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
	.comm	CRCTable,1024,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
