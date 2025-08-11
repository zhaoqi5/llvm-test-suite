	.file	"crc16.le.nodata.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	48                              # 0x30
	.dword	52                              # 0x34
	.dword	56                              # 0x38
	.dword	60                              # 0x3c
.LCPI0_1:
	.dword	32                              # 0x20
	.dword	36                              # 0x24
	.dword	40                              # 0x28
	.dword	44                              # 0x2c
.LCPI0_2:
	.dword	16                              # 0x10
	.dword	20                              # 0x14
	.dword	24                              # 0x18
	.dword	28                              # 0x1c
.LCPI0_3:
	.dword	0                               # 0x0
	.dword	4                               # 0x4
	.dword	8                               # 0x8
	.dword	12                              # 0xc
.LCPI0_4:
	.dword	24                              # 0x18
	.dword	26                              # 0x1a
	.dword	28                              # 0x1c
	.dword	30                              # 0x1e
.LCPI0_5:
	.dword	16                              # 0x10
	.dword	18                              # 0x12
	.dword	20                              # 0x14
	.dword	22                              # 0x16
.LCPI0_6:
	.dword	8                               # 0x8
	.dword	10                              # 0xa
	.dword	12                              # 0xc
	.dword	14                              # 0xe
.LCPI0_7:
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
	addi.d	$sp, $sp, -576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	st.d	$s4, $sp, 520                   # 8-byte Folded Spill
	st.d	$s5, $sp, 512                   # 8-byte Folded Spill
	st.d	$s6, $sp, 504                   # 8-byte Folded Spill
	st.d	$s7, $sp, 496                   # 8-byte Folded Spill
	st.d	$s8, $sp, 488                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(CRCTable)
	addi.d	$a0, $a0, %pc_lo12(CRCTable)
	ld.h	$t8, $a0, 0
	move	$a1, $zero
	lu12i.w	$a4, -1
	ori	$a2, $a4, 1
	xor	$a2, $t8, $a2
	st.d	$a2, $sp, 480                   # 8-byte Folded Spill
	lu12i.w	$t0, -3
	ori	$a2, $t0, 2049
	xor	$a2, $t8, $a2
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	lu12i.w	$a3, 2
	ori	$a2, $a3, 2048
	xor	$a2, $t8, $a2
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	lu12i.w	$a2, 7
	ori	$a5, $a2, 2048
	xor	$a5, $t8, $a5
	st.d	$a5, $sp, 456                   # 8-byte Folded Spill
	lu12i.w	$t2, -8
	ori	$a5, $t2, 2049
	xor	$a5, $t8, $a5
	st.d	$a5, $sp, 448                   # 8-byte Folded Spill
	lu12i.w	$t7, -4
	ori	$a5, $t7, 3073
	xor	$a5, $t8, $a5
	st.d	$a5, $sp, 440                   # 8-byte Folded Spill
	lu12i.w	$t6, 1
	ori	$a5, $t6, 1024
	xor	$a5, $t8, $a5
	st.d	$a5, $sp, 432                   # 8-byte Folded Spill
	lu12i.w	$t4, 3
	ori	$a5, $t4, 3072
	xor	$a5, $t8, $a5
	st.d	$a5, $sp, 424                   # 8-byte Folded Spill
	lu12i.w	$t1, -2
	ori	$a5, $t1, 1025
	xor	$a5, $t8, $a5
	st.d	$a5, $sp, 416                   # 8-byte Folded Spill
	lu12i.w	$a6, 6
	ori	$a5, $a6, 3072
	xor	$a5, $t8, $a5
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	lu12i.w	$a5, -5
	ori	$a7, $a5, 1025
	xor	$a7, $t8, $a7
	st.d	$a7, $sp, 400                   # 8-byte Folded Spill
	lu12i.w	$a7, -7
	lu12i.w	$t5, 12
	ori	$t3, $t5, 385
	xvreplgr2vr.h	$xr0, $t3
	ori	$t3, $a7, 3073
	xor	$t3, $t8, $t3
	st.d	$t3, $sp, 392                   # 8-byte Folded Spill
	lu12i.w	$t3, 4
	ori	$fp, $t3, 1024
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	ori	$fp, $t7, 1537
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 376                   # 8-byte Folded Spill
	ori	$fp, $t6, 3584
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	ori	$fp, $t0, 513
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 360                   # 8-byte Folded Spill
	ori	$fp, $t4, 1536
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	addi.d	$fp, $zero, -1535
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 344                   # 8-byte Folded Spill
	ori	$fp, $t1, 3585
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	ori	$fp, $a3, 512
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 328                   # 8-byte Folded Spill
	ori	$fp, $a6, 1536
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	lu12i.w	$s0, -6
	ori	$fp, $s0, 2561
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 312                   # 8-byte Folded Spill
	ori	$fp, $a5, 3585
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	ori	$fp, $a2, 512
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 296                   # 8-byte Folded Spill
	ori	$fp, $a7, 1537
	xor	$fp, $t8, $fp
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	lu12i.w	$fp, 5
	ori	$s1, $fp, 2560
	xor	$s1, $t8, $s1
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	ori	$s1, $t3, 3584
	xor	$s1, $t8, $s1
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	ori	$s1, $t2, 513
	xor	$s1, $t8, $s1
	st.d	$s1, $sp, 264                   # 8-byte Folded Spill
	ori	$s1, $t7, 769
	xor	$s1, $t8, $s1
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	ori	$t7, $t7, 2305
	xor	$t7, $t8, $t7
	st.d	$t7, $sp, 248                   # 8-byte Folded Spill
	ori	$t7, $t6, 2816
	xor	$t7, $t8, $t7
	st.d	$t7, $sp, 240                   # 8-byte Folded Spill
	ori	$t7, $t0, 3329
	xor	$t7, $t8, $t7
	st.d	$t7, $sp, 232                   # 8-byte Folded Spill
	ori	$t0, $t0, 1793
	xor	$t0, $t8, $t0
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	ori	$t0, $t6, 256
	xor	$t0, $t8, $t0
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
	ori	$t0, $t4, 768
	xor	$t0, $t8, $t0
	st.d	$t0, $sp, 208                   # 8-byte Folded Spill
	ori	$a4, $a4, 1281
	xor	$a4, $t8, $a4
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a4, $zero, -255
	xor	$a4, $t8, $a4
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	ori	$a4, $t4, 2304
	xor	$a4, $t8, $a4
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	ori	$a4, $t1, 2817
	xor	$a4, $t8, $a4
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	ori	$a4, $a3, 3328
	xor	$a4, $t8, $a4
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	ori	$a3, $a3, 1792
	xor	$a3, $t8, $a3
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	ori	$a3, $t1, 257
	xor	$a3, $t8, $a3
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	ori	$a3, $a6, 768
	xor	$a3, $t8, $a3
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	ori	$a3, $s0, 1281
	xor	$a3, $t8, $a3
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	ori	$s4, $s0, 1
	ori	$a3, $s0, 3841
	xor	$a3, $t8, $a3
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	ori	$a3, $a6, 2304
	xor	$a3, $t8, $a3
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	ori	$a3, $a5, 2817
	xor	$a3, $t8, $a3
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ori	$a3, $a2, 3328
	xor	$a3, $t8, $a3
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	ori	$a2, $a2, 1792
	xor	$a2, $t8, $a2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ori	$a2, $a5, 257
	xor	$a2, $t8, $a2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ori	$a3, $a7, 769
	xor	$a2, $t8, $a3
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ori	$a4, $fp, 1280
	xor	$a2, $t8, $a4
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	xor	$a2, $t8, $fp
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ori	$a6, $fp, 3840
	xor	$a2, $t8, $a6
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ori	$a7, $a7, 2305
	xor	$a2, $t8, $a7
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ori	$t0, $t3, 2816
	xor	$a2, $t8, $t0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ori	$t1, $t2, 3329
	xor	$a2, $t8, $t1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ori	$t2, $t2, 1793
	xor	$a2, $t8, $t2
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ori	$t3, $t3, 256
	xor	$a2, $t8, $t3
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	xor	$a2, $t8, $s4
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	xori	$t6, $t8, 2560
	xori	$t7, $t8, 1280
	xori	$t8, $t8, 3840
	xvrepli.d	$xr1, 64
	xvrepli.d	$xr2, 32
	ori	$fp, $zero, 1
	ori	$s0, $zero, 512
	ori	$s1, $zero, 8
	.p2align	4, , 16
.LBB0_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_5 Depth 2
	ld.hu	$s2, $a0, 510
	bnez	$s2, .LBB0_6
# %bb.2:                                # %if.then.i
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$s2, $zero
	pcalau12i	$s3, %pc_hi20(.LCPI0_0)
	xvld	$xr3, $s3, %pc_lo12(.LCPI0_0)
	pcalau12i	$s3, %pc_hi20(.LCPI0_1)
	xvld	$xr4, $s3, %pc_lo12(.LCPI0_1)
	pcalau12i	$s3, %pc_hi20(.LCPI0_2)
	xvld	$xr5, $s3, %pc_lo12(.LCPI0_2)
	pcalau12i	$s3, %pc_hi20(.LCPI0_3)
	xvld	$xr6, $s3, %pc_lo12(.LCPI0_3)
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.h	$a2, $a0, 256
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	st.h	$a2, $a0, 128
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.h	$a2, $a0, 384
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	st.h	$a2, $a0, 64
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	st.h	$a2, $a0, 192
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	st.h	$a2, $a0, 320
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	st.h	$a2, $a0, 448
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	st.h	$a2, $a0, 32
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	st.h	$a2, $a0, 96
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	st.h	$a2, $a0, 160
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	st.h	$a2, $a0, 224
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	st.h	$a2, $a0, 288
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	st.h	$a2, $a0, 352
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	st.h	$a2, $a0, 416
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	st.h	$a2, $a0, 480
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	st.h	$t6, $a0, 48
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	st.h	$a2, $a0, 80
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	st.h	$a2, $a0, 112
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	st.h	$a2, $a0, 144
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	st.h	$a2, $a0, 176
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	st.h	$a2, $a0, 208
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	st.h	$a2, $a0, 240
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	st.h	$a2, $a0, 272
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.h	$a2, $a0, 304
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	st.h	$a2, $a0, 336
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.h	$a2, $a0, 368
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	st.h	$a2, $a0, 400
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.h	$a2, $a0, 432
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.h	$a2, $a0, 464
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 496
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	st.h	$a2, $a0, 8
	st.h	$t7, $a0, 24
	st.h	$t8, $a0, 40
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	st.h	$a2, $a0, 56
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	st.h	$a2, $a0, 72
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.h	$a2, $a0, 88
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $a0, 104
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.h	$a2, $a0, 120
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	st.h	$a2, $a0, 136
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.h	$a2, $a0, 152
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.h	$a2, $a0, 168
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.h	$a2, $a0, 184
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.h	$a2, $a0, 200
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 216
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	st.h	$a2, $a0, 232
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.h	$a2, $a0, 248
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.h	$a2, $a0, 264
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.h	$a2, $a0, 280
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.h	$a2, $a0, 296
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.h	$a2, $a0, 312
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.h	$a2, $a0, 328
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.h	$a2, $a0, 344
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.h	$a2, $a0, 360
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.h	$a2, $a0, 376
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.h	$a2, $a0, 392
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.h	$a2, $a0, 408
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.h	$a2, $a0, 424
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.h	$a2, $a0, 440
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.h	$a2, $a0, 456
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.h	$a2, $a0, 472
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.h	$a2, $a0, 488
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.h	$a2, $a0, 504
	.p2align	4, , 16
.LBB0_3:                                # %vector.body8
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s3, $a0, $s2
	ldx.h	$ra, $a0, $s2
	ld.h	$a2, $s3, 8
	ld.h	$a3, $s3, 16
	ld.h	$a4, $s3, 24
	ld.h	$a5, $s3, 32
	ld.h	$a6, $s3, 40
	ld.h	$a7, $s3, 48
	ld.h	$t0, $s3, 56
	ld.h	$t1, $s3, 64
	ld.h	$t2, $s3, 72
	ld.h	$t3, $s3, 80
	ld.h	$s8, $s3, 88
	ld.h	$s7, $s3, 96
	ld.h	$s6, $s3, 104
	ld.h	$s5, $s3, 112
	ld.h	$s3, $s3, 120
	vinsgr2vr.h	$vr7, $ra, 0
	vinsgr2vr.h	$vr7, $a2, 1
	vinsgr2vr.h	$vr7, $a3, 2
	vinsgr2vr.h	$vr7, $a4, 3
	vinsgr2vr.h	$vr7, $a5, 4
	vinsgr2vr.h	$vr7, $a6, 5
	vinsgr2vr.h	$vr7, $a7, 6
	vinsgr2vr.h	$vr7, $t0, 7
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $t1, 0
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $t2, 1
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $t3, 2
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $s8, 3
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $s7, 4
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $s6, 5
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $s5, 6
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $s3, 7
	xvpermi.q	$xr7, $xr8, 2
	xvxor.v	$xr7, $xr7, $xr0
	xvbitseti.d	$xr8, $xr3, 1
	xvbitseti.d	$xr9, $xr4, 1
	xvbitseti.d	$xr10, $xr5, 1
	xvbitseti.d	$xr11, $xr6, 1
	xvpickve2gr.d	$a2, $xr11, 0
	alsl.d	$a2, $a2, $a0, 1
	xvpickve2gr.d	$a3, $xr11, 1
	alsl.d	$a3, $a3, $a0, 1
	xvpickve2gr.d	$a4, $xr11, 2
	alsl.d	$a4, $a4, $a0, 1
	xvpickve2gr.d	$a5, $xr11, 3
	alsl.d	$a5, $a5, $a0, 1
	xvpickve2gr.d	$a6, $xr10, 0
	alsl.d	$a6, $a6, $a0, 1
	xvpickve2gr.d	$a7, $xr10, 1
	alsl.d	$a7, $a7, $a0, 1
	xvpickve2gr.d	$t0, $xr10, 2
	alsl.d	$t0, $t0, $a0, 1
	xvpickve2gr.d	$t1, $xr10, 3
	alsl.d	$t1, $t1, $a0, 1
	xvpickve2gr.d	$t2, $xr9, 0
	alsl.d	$t2, $t2, $a0, 1
	xvpickve2gr.d	$t3, $xr9, 1
	alsl.d	$t3, $t3, $a0, 1
	xvpickve2gr.d	$s3, $xr9, 2
	alsl.d	$s3, $s3, $a0, 1
	xvpickve2gr.d	$s5, $xr9, 3
	alsl.d	$s5, $s5, $a0, 1
	xvpickve2gr.d	$s6, $xr8, 0
	alsl.d	$s6, $s6, $a0, 1
	xvpickve2gr.d	$s7, $xr8, 1
	alsl.d	$s7, $s7, $a0, 1
	xvpickve2gr.d	$s8, $xr8, 2
	alsl.d	$s8, $s8, $a0, 1
	xvpickve2gr.d	$ra, $xr8, 3
	alsl.d	$ra, $ra, $a0, 1
	xvstelm.h	$xr7, $a2, 0, 0
	xvstelm.h	$xr7, $a3, 0, 1
	xvstelm.h	$xr7, $a4, 0, 2
	xvstelm.h	$xr7, $a5, 0, 3
	xvstelm.h	$xr7, $a6, 0, 4
	xvstelm.h	$xr7, $a7, 0, 5
	xvstelm.h	$xr7, $t0, 0, 6
	xvstelm.h	$xr7, $t1, 0, 7
	xvstelm.h	$xr7, $t2, 0, 8
	xvstelm.h	$xr7, $t3, 0, 9
	xvstelm.h	$xr7, $s3, 0, 10
	xvstelm.h	$xr7, $s5, 0, 11
	xvstelm.h	$xr7, $s6, 0, 12
	xvstelm.h	$xr7, $s7, 0, 13
	xvstelm.h	$xr7, $s8, 0, 14
	xvstelm.h	$xr7, $ra, 0, 15
	xvadd.d	$xr6, $xr6, $xr1
	xvadd.d	$xr5, $xr5, $xr1
	xvadd.d	$xr4, $xr4, $xr1
	addi.d	$s2, $s2, 128
	xvadd.d	$xr3, $xr3, $xr1
	bne	$s2, $s0, .LBB0_3
# %bb.4:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a2, %pc_hi20(.LCPI0_4)
	xvld	$xr3, $a2, %pc_lo12(.LCPI0_4)
	pcalau12i	$a2, %pc_hi20(.LCPI0_5)
	xvld	$xr4, $a2, %pc_lo12(.LCPI0_5)
	pcalau12i	$a2, %pc_hi20(.LCPI0_6)
	xvld	$xr5, $a2, %pc_lo12(.LCPI0_6)
	pcalau12i	$a2, %pc_hi20(.LCPI0_7)
	xvld	$xr6, $a2, %pc_lo12(.LCPI0_7)
	move	$s2, $zero
	.p2align	4, , 16
.LBB0_5:                                # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $a0, $s2
	ldx.h	$a3, $a0, $s2
	ld.h	$a4, $a2, 4
	ld.h	$a5, $a2, 8
	ld.h	$a6, $a2, 12
	ld.h	$a7, $a2, 16
	ld.h	$t0, $a2, 20
	ld.h	$t1, $a2, 24
	ld.h	$t2, $a2, 28
	ld.h	$t3, $a2, 32
	ld.h	$ra, $a2, 36
	ld.h	$t4, $a2, 40
	ld.h	$s8, $a2, 44
	ld.h	$s7, $a2, 48
	ld.h	$s6, $a2, 52
	ld.h	$s5, $a2, 56
	ld.h	$s3, $a2, 60
	vinsgr2vr.h	$vr7, $a3, 0
	vinsgr2vr.h	$vr7, $a4, 1
	vinsgr2vr.h	$vr7, $a5, 2
	vinsgr2vr.h	$vr7, $a6, 3
	vinsgr2vr.h	$vr7, $a7, 4
	vinsgr2vr.h	$vr7, $t0, 5
	vinsgr2vr.h	$vr7, $t1, 6
	vinsgr2vr.h	$vr7, $t2, 7
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $t3, 0
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $ra, 1
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $t4, 2
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $s8, 3
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $s7, 4
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $s6, 5
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $s5, 6
	xvpermi.q	$xr7, $xr8, 2
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.h	$vr8, $s3, 7
	xvpermi.q	$xr7, $xr8, 2
	ori	$a2, $t5, 193
	xvreplgr2vr.h	$xr8, $a2
	xvxor.v	$xr7, $xr7, $xr8
	xvbitseti.d	$xr8, $xr3, 0
	xvbitseti.d	$xr9, $xr4, 0
	xvbitseti.d	$xr10, $xr5, 0
	xvbitseti.d	$xr11, $xr6, 0
	xvpickve2gr.d	$a2, $xr11, 0
	alsl.d	$a2, $a2, $a0, 1
	xvpickve2gr.d	$a3, $xr11, 1
	alsl.d	$a3, $a3, $a0, 1
	xvpickve2gr.d	$a4, $xr11, 2
	alsl.d	$a4, $a4, $a0, 1
	xvpickve2gr.d	$a5, $xr11, 3
	alsl.d	$a5, $a5, $a0, 1
	xvpickve2gr.d	$a6, $xr10, 0
	alsl.d	$a6, $a6, $a0, 1
	xvpickve2gr.d	$a7, $xr10, 1
	alsl.d	$a7, $a7, $a0, 1
	xvpickve2gr.d	$t0, $xr10, 2
	alsl.d	$t0, $t0, $a0, 1
	xvpickve2gr.d	$t1, $xr10, 3
	alsl.d	$t1, $t1, $a0, 1
	xvpickve2gr.d	$t2, $xr9, 0
	alsl.d	$t2, $t2, $a0, 1
	xvpickve2gr.d	$t3, $xr9, 1
	alsl.d	$t3, $t3, $a0, 1
	xvpickve2gr.d	$t4, $xr9, 2
	alsl.d	$t4, $t4, $a0, 1
	xvpickve2gr.d	$s3, $xr9, 3
	alsl.d	$s3, $s3, $a0, 1
	xvpickve2gr.d	$s5, $xr8, 0
	alsl.d	$s5, $s5, $a0, 1
	xvpickve2gr.d	$s6, $xr8, 1
	alsl.d	$s6, $s6, $a0, 1
	xvpickve2gr.d	$s7, $xr8, 2
	alsl.d	$s7, $s7, $a0, 1
	xvpickve2gr.d	$s8, $xr8, 3
	alsl.d	$s8, $s8, $a0, 1
	xvstelm.h	$xr7, $a2, 0, 0
	xvstelm.h	$xr7, $a3, 0, 1
	xvstelm.h	$xr7, $a4, 0, 2
	xvstelm.h	$xr7, $a5, 0, 3
	xvstelm.h	$xr7, $a6, 0, 4
	xvstelm.h	$xr7, $a7, 0, 5
	xvstelm.h	$xr7, $t0, 0, 6
	xvstelm.h	$xr7, $t1, 0, 7
	xvstelm.h	$xr7, $t2, 0, 8
	xvstelm.h	$xr7, $t3, 0, 9
	xvstelm.h	$xr7, $t4, 0, 10
	xvstelm.h	$xr7, $s3, 0, 11
	xvstelm.h	$xr7, $s5, 0, 12
	xvstelm.h	$xr7, $s6, 0, 13
	xvstelm.h	$xr7, $s7, 0, 14
	xvstelm.h	$xr7, $s8, 0, 15
	xvadd.d	$xr6, $xr6, $xr2
	xvadd.d	$xr5, $xr5, $xr2
	xvadd.d	$xr4, $xr4, $xr2
	addi.d	$s2, $s2, 64
	xvadd.d	$xr3, $xr3, $xr2
	bne	$s2, $s0, .LBB0_5
.LBB0_6:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_1 Depth=1
	slli.d	$a2, $a1, 1
	pcalau12i	$a3, %pc_hi20(main.crc_initval)
	addi.d	$a3, $a3, %pc_lo12(main.crc_initval)
	ldx.hu	$s2, $a3, $a2
	srli.d	$a2, $s2, 1
	sll.d	$a3, $fp, $a1
	andi	$a3, $a3, 137
	sltui	$a3, $a3, 1
	xor	$a4, $a2, $s4
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a4, $s2, 255
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a0, $a4
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	srli.d	$a5, $s2, 8
	andi	$a6, $a4, 255
	xor	$a5, $a6, $a5
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a2
	slli.d	$a5, $a5, 1
	ldx.hu	$a5, $a0, $a5
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a6
	srli.d	$a3, $a4, 8
	xor	$a3, $a5, $a3
	bstrpick.d	$a2, $a2, 15, 0
	bne	$a2, $a3, .LBB0_9
# %bb.7:                                # %for.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $s1, .LBB0_1
# %bb.8:
	move	$a0, $zero
	b	.LBB0_10
.LBB0_9:
	ori	$a0, $zero, 1
.LBB0_10:                               # %cleanup7
	ld.d	$s8, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
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
	.comm	CRCTable,512,2
	.section	".note.GNU-stack","",@progbits
	.addrsig
