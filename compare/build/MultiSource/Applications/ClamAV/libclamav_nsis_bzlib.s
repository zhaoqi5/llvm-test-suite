	.file	"libclamav_nsis_bzlib.c"
	.text
	.globl	nsis_BZ2_bzDecompressInit       # -- Begin function nsis_BZ2_bzDecompressInit
	.p2align	5
	.type	nsis_BZ2_bzDecompressInit,@function
nsis_BZ2_bzDecompressInit:              # @nsis_BZ2_bzDecompressInit
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	ori	$a1, $zero, 4
	addi.w	$a0, $zero, -2
	bltu	$a1, $fp, .LBB0_10
# %bb.1:                                # %entry
	beqz	$s1, .LBB0_10
# %bb.2:                                # %entry
	move	$s0, $a2
	ori	$a1, $zero, 1
	bltu	$a1, $a2, .LBB0_10
# %bb.3:                                # %if.end10
	ld.d	$a3, $s1, 56
	beqz	$a3, .LBB0_7
# %bb.4:                                # %if.end14
	ld.d	$a0, $s1, 64
	beqz	$a0, .LBB0_8
.LBB0_5:                                # %if.end18
	ld.d	$a0, $s1, 72
	lu12i.w	$a1, 15
	ori	$a1, $a1, 2704
	ori	$a2, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB0_9
# %bb.6:                                # %if.end23
	ori	$a2, $zero, 10
	st.w	$a2, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $s1, 48
	st.d	$zero, $a0, 32
	stptr.w	$zero, $a0, 3188
	st.d	$zero, $s1, 12
	st.d	$zero, $s1, 36
	st.b	$s0, $a0, 44
	st.w	$zero, $a0, 48
	vrepli.b	$vr0, 0
	ori	$a2, $zero, 3160
	vstx	$vr0, $a0, $a2
	stptr.d	$zero, $a0, 3152
	st.w	$fp, $a0, 52
	move	$a0, $zero
	b	.LBB0_10
.LBB0_7:                                # %if.then12
	pcalau12i	$a0, %pc_hi20(default_bzalloc)
	addi.d	$a3, $a0, %pc_lo12(default_bzalloc)
	st.d	$a3, $s1, 56
	ld.d	$a0, $s1, 64
	bnez	$a0, .LBB0_5
.LBB0_8:                                # %if.then16
	pcalau12i	$a0, %pc_hi20(default_bzfree)
	addi.d	$a0, $a0, %pc_lo12(default_bzfree)
	st.d	$a0, $s1, 64
	b	.LBB0_5
.LBB0_9:
	addi.w	$a0, $zero, -3
.LBB0_10:                               # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	nsis_BZ2_bzDecompressInit, .Lfunc_end0-nsis_BZ2_bzDecompressInit
                                        # -- End function
	.p2align	5                               # -- Begin function default_bzalloc
	.type	default_bzalloc,@function
default_bzalloc:                        # @default_bzalloc
# %bb.0:                                # %entry
	mul.w	$a0, $a2, $a1
	pcaddu18i	$t8, %call36(cli_malloc)
	jr	$t8
.Lfunc_end1:
	.size	default_bzalloc, .Lfunc_end1-default_bzalloc
                                        # -- End function
	.p2align	5                               # -- Begin function default_bzfree
	.type	default_bzfree,@function
default_bzfree:                         # @default_bzfree
# %bb.0:                                # %entry
	beqz	$a1, .LBB2_2
# %bb.1:                                # %if.then
	move	$a0, $a1
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB2_2:                                # %if.end
	ret
.Lfunc_end2:
	.size	default_bzfree, .Lfunc_end2-default_bzfree
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function nsis_BZ2_bzDecompress
.LCPI3_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	24                              # 0x18
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_1:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.text
	.globl	nsis_BZ2_bzDecompress
	.p2align	5
	.type	nsis_BZ2_bzDecompress,@function
nsis_BZ2_bzDecompress:                  # @nsis_BZ2_bzDecompress
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -640
	st.d	$ra, $sp, 632                   # 8-byte Folded Spill
	st.d	$fp, $sp, 624                   # 8-byte Folded Spill
	st.d	$s0, $sp, 616                   # 8-byte Folded Spill
	st.d	$s1, $sp, 608                   # 8-byte Folded Spill
	st.d	$s2, $sp, 600                   # 8-byte Folded Spill
	st.d	$s3, $sp, 592                   # 8-byte Folded Spill
	st.d	$s4, $sp, 584                   # 8-byte Folded Spill
	st.d	$s5, $sp, 576                   # 8-byte Folded Spill
	st.d	$s6, $sp, 568                   # 8-byte Folded Spill
	st.d	$s7, $sp, 560                   # 8-byte Folded Spill
	st.d	$s8, $sp, 552                   # 8-byte Folded Spill
	move	$a1, $a0
	addi.w	$a0, $zero, -2
	beqz	$a1, .LBB3_471
# %bb.1:                                # %if.end
	ld.d	$s2, $a1, 48
	beqz	$s2, .LBB3_471
# %bb.2:                                # %if.end3
	ld.d	$a2, $s2, 0
	bne	$a2, $a1, .LBB3_471
# %bb.3:                                # %while.cond.preheader
	addu16i.d	$a0, $s2, 1
	addi.d	$s3, $a0, -1500
	addi.d	$s5, $s2, 1096
	addi.d	$a1, $s2, 2047
	addi.d	$a2, $a1, 1149
	st.d	$a2, $sp, 536                   # 8-byte Folded Spill
	addi.d	$a2, $a1, 1421
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	lu12i.w	$a2, 6
	ori	$a2, $a2, 1310
	add.d	$a2, $s2, $a2
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	lu12i.w	$s6, 1
	ori	$a2, $s6, 3788
	add.d	$a2, $s2, $a2
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	lu12i.w	$a2, 10
	ori	$a3, $a2, 2928
	add.d	$a3, $s2, $a3
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	lu12i.w	$a3, 11
	ori	$a3, $a3, 380
	add.d	$a3, $s2, $a3
	st.d	$a3, $sp, 400                   # 8-byte Folded Spill
	lu12i.w	$a3, 12
	ori	$a4, $a3, 2476
	add.d	$a5, $s2, $a4
	lu12i.w	$a4, 14
	ori	$a4, $a4, 476
	add.d	$a4, $s2, $a4
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	addi.d	$a0, $a0, -1524
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 68
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 1677
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ori	$a0, $s6, 3724
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 77
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 1405
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.w	$a1, $s2, 8
	ori	$a0, $a2, 2932
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $a3, 2480
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$a0, $s6, 3784
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$a0, $s6, 3708
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $s6, 3723
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$s7, $zero, 0
	lu32i.d	$s7, 1
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1696
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	xvrepli.b	$xr3, 32
	xvrepli.b	$xr4, 64
	vrepli.b	$vr6, 0
	vrepli.w	$vr0, 32
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	lu12i.w	$a0, 45216
	ori	$a0, $a0, 2312
	lu32i.d	$a0, -127732
	lu52i.d	$a0, $a0, 240
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	lu12i.w	$a0, 878
	ori	$a0, $a0, 3712
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	lu12i.w	$a0, 439
	ori	$a0, $a0, 1856
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 1100
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$ra, $zero, 1
	ori	$t7, $zero, 2
	ori	$a3, $zero, 10
	st.d	$a5, $sp, 480                   # 8-byte Folded Spill
	xvst	$xr3, $sp, 320                  # 32-byte Folded Spill
	xvst	$xr4, $sp, 288                  # 32-byte Folded Spill
	vst	$vr6, $sp, 448                  # 16-byte Folded Spill
	.p2align	4, , 16
.LBB3_4:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
                                        #       Child Loop BB3_19 Depth 3
                                        #       Child Loop BB3_23 Depth 3
                                        #       Child Loop BB3_27 Depth 3
                                        #       Child Loop BB3_31 Depth 3
                                        #       Child Loop BB3_33 Depth 3
                                        #     Child Loop BB3_43 Depth 2
                                        #       Child Loop BB3_47 Depth 3
                                        #       Child Loop BB3_49 Depth 3
                                        #     Child Loop BB3_93 Depth 2
                                        #     Child Loop BB3_101 Depth 2
                                        #     Child Loop BB3_139 Depth 2
                                        #     Child Loop BB3_134 Depth 2
                                        #     Child Loop BB3_321 Depth 2
                                        #     Child Loop BB3_332 Depth 2
                                        #     Child Loop BB3_154 Depth 2
                                        #     Child Loop BB3_113 Depth 2
                                        #       Child Loop BB3_119 Depth 3
                                        #     Child Loop BB3_193 Depth 2
                                        #     Child Loop BB3_197 Depth 2
                                        #     Child Loop BB3_164 Depth 2
                                        #     Child Loop BB3_168 Depth 2
                                        #       Child Loop BB3_181 Depth 3
                                        #       Child Loop BB3_178 Depth 3
                                        #       Child Loop BB3_174 Depth 3
                                        #     Child Loop BB3_244 Depth 2
                                        #       Child Loop BB3_249 Depth 3
                                        #       Child Loop BB3_252 Depth 3
                                        #       Child Loop BB3_255 Depth 3
                                        #         Child Loop BB3_257 Depth 4
                                        #       Child Loop BB3_260 Depth 3
                                        #       Child Loop BB3_264 Depth 3
                                        #       Child Loop BB3_269 Depth 3
                                        #       Child Loop BB3_272 Depth 3
                                        #     Child Loop BB3_276 Depth 2
                                        #     Child Loop BB3_282 Depth 2
                                        #     Child Loop BB3_411 Depth 2
                                        #     Child Loop BB3_413 Depth 2
                                        #     Child Loop BB3_416 Depth 2
                                        #     Child Loop BB3_383 Depth 2
                                        #     Child Loop BB3_390 Depth 2
                                        #     Child Loop BB3_440 Depth 2
                                        #     Child Loop BB3_221 Depth 2
                                        #     Child Loop BB3_372 Depth 2
                                        #     Child Loop BB3_425 Depth 2
                                        #     Child Loop BB3_428 Depth 2
                                        #     Child Loop BB3_463 Depth 2
                                        #     Child Loop BB3_466 Depth 2
                                        #     Child Loop BB3_229 Depth 2
                                        #     Child Loop BB3_352 Depth 2
                                        #     Child Loop BB3_354 Depth 2
                                        #     Child Loop BB3_361 Depth 2
                                        #     Child Loop BB3_404 Depth 2
                                        #     Child Loop BB3_407 Depth 2
                                        #     Child Loop BB3_452 Depth 2
                                        #     Child Loop BB3_213 Depth 2
                                        #     Child Loop BB3_238 Depth 2
                                        #     Child Loop BB3_301 Depth 2
                                        #     Child Loop BB3_205 Depth 2
                                        #     Child Loop BB3_343 Depth 2
                                        #     Child Loop BB3_311 Depth 2
	beq	$a1, $ra, .LBB3_470
# %bb.5:                                # %while.cond
                                        #   in Loop: Header=BB3_4 Depth=1
	beq	$a1, $t7, .LBB3_11
# %bb.6:                                # %if.end27
                                        #   in Loop: Header=BB3_4 Depth=1
	blt	$a1, $a3, .LBB3_4
# %bb.7:                                # %if.then30
                                        #   in Loop: Header=BB3_4 Depth=1
	bne	$a1, $a3, .LBB3_41
# %bb.8:                                # %if.end.i46.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$fp, $s2, 0
	ori	$a2, $zero, 108
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s2, 44
	ld.d	$a3, $fp, 56
	ld.d	$a0, $fp, 72
	ori	$a2, $zero, 9
	st.w	$a2, $s2, 40
	ori	$a2, $zero, 1
	beqz	$a1, .LBB3_81
# %bb.9:                                # %if.then27.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a1, $s2, 40
	ld.d	$a4, $fp, 56
	ld.d	$a3, $fp, 72
	stptr.d	$a0, $s2, 3160
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	mul.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 1
	ori	$a2, $zero, 1
	move	$a0, $a3
	jirl	$ra, $a4, 0
	ldptr.d	$a3, $s2, 3160
	move	$a1, $a0
	move	$a2, $zero
	stptr.d	$a0, $s2, 3168
	addi.w	$a0, $zero, -3
	beqz	$a3, .LBB3_98
# %bb.10:                               # %if.then27.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$a2, $sp, 520                   # 8-byte Folded Spill
	move	$t8, $a2
	move	$t4, $a2
	move	$t5, $a2
	move	$s4, $a2
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	move	$s1, $a2
	move	$t2, $a2
	move	$s8, $a2
	move	$t3, $a2
	move	$t6, $a2
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	st.d	$a2, $sp, 528                   # 8-byte Folded Spill
	st.d	$a2, $sp, 512                   # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a2
	move	$a7, $a2
	move	$t1, $a2
	move	$t0, $a2
	move	$t7, $a2
	st.d	$a2, $sp, 496                   # 8-byte Folded Spill
	st.d	$a2, $sp, 504                   # 8-byte Folded Spill
	st.d	$a2, $sp, 488                   # 8-byte Folded Spill
	move	$a3, $a2
	xvld	$xr3, $sp, 320                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 288                  # 32-byte Folded Reload
	vld	$vr6, $sp, 448                  # 16-byte Folded Reload
	ori	$ra, $zero, 1
	bnez	$a1, .LBB3_83
	b	.LBB3_447
.LBB3_11:                               # %if.then14
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a0, $s2, 44
	beqz	$a0, .LBB3_42
# %bb.12:                               # %if.then15
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 32
	beqz	$a1, .LBB3_75
# %bb.13:                               # %if.end.lr.ph.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s2, 16
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_14:                               # %if.end20.i
                                        #   in Loop: Header=BB3_15 Depth=2
	beqz	$a2, .LBB3_75
.LBB3_15:                               # %if.end.i.outer
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_19 Depth 3
                                        #       Child Loop BB3_23 Depth 3
                                        #       Child Loop BB3_27 Depth 3
                                        #       Child Loop BB3_31 Depth 3
                                        #       Child Loop BB3_33 Depth 3
	bnez	$a1, .LBB3_37
# %bb.16:                               # %while.end.i
                                        #   in Loop: Header=BB3_15 Depth=2
	ld.w	$a4, $s3, 44
	ld.w	$a1, $s2, 1092
	addi.w	$a2, $a4, 1
	beq	$a1, $a2, .LBB3_75
# %bb.17:                               # %if.end23.i
                                        #   in Loop: Header=BB3_15 Depth=2
	blt	$a2, $a1, .LBB3_472
# %bb.18:                               # %if.end29.i
                                        #   in Loop: Header=BB3_15 Depth=2
	ld.w	$a5, $s2, 64
	ld.w	$t0, $s2, 60
	move	$a7, $zero
	st.w	$ra, $s2, 16
	st.b	$a5, $s2, 12
	bstrpick.d	$t1, $t0, 31, 0
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB3_19:                               # %do.body.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$a3, $a7, $a2
	srai.d	$a3, $a3, 1
	slli.d	$a6, $a3, 2
	ldx.w	$a6, $s5, $a6
	slt	$a6, $t0, $a6
	maskeqz	$t2, $a3, $a6
	masknez	$a2, $a2, $a6
	or	$a2, $t2, $a2
	masknez	$a3, $a3, $a6
	maskeqz	$a6, $a7, $a6
	or	$a7, $a6, $a3
	sub.w	$a3, $a2, $a7
	bne	$a3, $ra, .LBB3_19
# %bb.20:                               # %indexIntoF.exit.i
                                        #   in Loop: Header=BB3_15 Depth=2
	ldptr.d	$a2, $s2, 3160
	ldptr.d	$a3, $s2, 3168
	slli.d	$a6, $t1, 1
	ldx.hu	$a6, $a2, $a6
	srli.d	$t1, $t1, 1
	ldx.bu	$t1, $a3, $t1
	slli.d	$t0, $t0, 2
	andi	$t0, $t0, 4
	srl.w	$t0, $t1, $t0
	move	$t1, $a6
	bstrins.d	$t1, $t0, 19, 16
	st.w	$t1, $s2, 60
	addi.w	$t0, $a1, 1
	st.w	$t0, $s2, 1092
	beq	$a1, $a4, .LBB3_36
# %bb.21:                               # %if.end52.i
                                        #   in Loop: Header=BB3_15 Depth=2
	andi	$a7, $a7, 255
	bne	$a7, $a5, .LBB3_35
# %bb.22:                               # %if.end60.i
                                        #   in Loop: Header=BB3_15 Depth=2
	move	$t3, $zero
	st.w	$t7, $s2, 16
	ori	$a7, $zero, 256
	.p2align	4, , 16
.LBB3_23:                               # %do.body.i84.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t2, $t3, $a7
	srai.d	$t4, $t2, 1
	slli.d	$t2, $t4, 2
	ldx.w	$t5, $s5, $t2
	addi.w	$t2, $t1, 0
	slt	$t5, $t2, $t5
	maskeqz	$t6, $t4, $t5
	masknez	$a7, $a7, $t5
	or	$a7, $t6, $a7
	masknez	$t4, $t4, $t5
	maskeqz	$t3, $t3, $t5
	or	$t3, $t3, $t4
	sub.w	$t4, $a7, $t3
	bne	$t4, $ra, .LBB3_23
# %bb.24:                               # %indexIntoF.exit96.i
                                        #   in Loop: Header=BB3_15 Depth=2
	slli.d	$a7, $t2, 1
	ldx.hu	$a7, $a2, $a7
	bstrpick.d	$t1, $t1, 31, 1
	ldx.bu	$t1, $a3, $t1
	slli.d	$a6, $a6, 2
	andi	$a6, $a6, 4
	srl.w	$a6, $t1, $a6
	move	$t2, $a7
	bstrins.d	$t2, $a6, 19, 16
	st.w	$t2, $s2, 60
	addi.w	$t1, $a1, 2
	st.w	$t1, $s2, 1092
	beq	$t0, $a4, .LBB3_36
# %bb.25:                               # %if.end94.i
                                        #   in Loop: Header=BB3_15 Depth=2
	andi	$a6, $t3, 255
	bne	$a6, $a5, .LBB3_39
# %bb.26:                               # %if.end102.i
                                        #   in Loop: Header=BB3_15 Depth=2
	move	$t0, $zero
	ori	$a6, $zero, 3
	st.w	$a6, $s2, 16
	ori	$a6, $zero, 256
	.p2align	4, , 16
.LBB3_27:                               # %do.body.i97.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t3, $t0, $a6
	srai.d	$t4, $t3, 1
	slli.d	$t3, $t4, 2
	ldx.w	$t5, $s5, $t3
	addi.w	$t3, $t2, 0
	slt	$t5, $t3, $t5
	maskeqz	$t6, $t4, $t5
	masknez	$a6, $a6, $t5
	or	$a6, $t6, $a6
	masknez	$t4, $t4, $t5
	maskeqz	$t0, $t0, $t5
	or	$t0, $t0, $t4
	sub.w	$t4, $a6, $t0
	bne	$t4, $ra, .LBB3_27
# %bb.28:                               # %indexIntoF.exit109.i
                                        #   in Loop: Header=BB3_15 Depth=2
	slli.d	$a6, $t3, 1
	ldx.hu	$a6, $a2, $a6
	bstrpick.d	$t2, $t2, 31, 1
	ldx.bu	$t2, $a3, $t2
	slli.d	$a7, $a7, 2
	andi	$a7, $a7, 4
	srl.w	$t2, $t2, $a7
	move	$a7, $a6
	bstrins.d	$a7, $t2, 19, 16
	st.w	$a7, $s2, 60
	addi.d	$t2, $a1, 3
	st.w	$t2, $s2, 1092
	beq	$t1, $a4, .LBB3_36
# %bb.29:                               # %if.end136.i
                                        #   in Loop: Header=BB3_15 Depth=2
	andi	$a4, $t0, 255
	bne	$a4, $a5, .LBB3_40
# %bb.30:                               # %do.body.i110.i.preheader
                                        #   in Loop: Header=BB3_15 Depth=2
	move	$a5, $zero
	ori	$a4, $zero, 256
.LBB3_31:                               # %do.body.i110.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t0, $a5, $a4
	srai.d	$t1, $t0, 1
	slli.d	$t0, $t1, 2
	ldx.w	$t2, $s5, $t0
	addi.w	$t0, $a7, 0
	slt	$t2, $t0, $t2
	maskeqz	$t3, $t1, $t2
	masknez	$a4, $a4, $t2
	or	$a4, $t3, $a4
	masknez	$t1, $t1, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t1
	sub.w	$t1, $a4, $a5
	bne	$t1, $ra, .LBB3_31
# %bb.32:                               # %indexIntoF.exit122.i
                                        #   in Loop: Header=BB3_15 Depth=2
	slli.d	$a4, $t0, 1
	ldx.hu	$a4, $a2, $a4
	bstrpick.d	$a7, $a7, 31, 1
	ldx.bu	$t0, $a3, $a7
	move	$a7, $zero
	slli.d	$a6, $a6, 2
	andi	$a6, $a6, 4
	srl.w	$t0, $t0, $a6
	move	$a6, $a4
	bstrins.d	$a6, $t0, 19, 16
	addi.d	$t0, $a1, 4
	st.w	$t0, $s2, 1092
	st.w	$a6, $s2, 60
	andi	$a5, $a5, 255
	addi.d	$a5, $a5, 4
	st.w	$a5, $s2, 16
	ori	$a5, $zero, 256
.LBB3_33:                               # %do.body.i123.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t0, $a7, $a5
	srai.d	$t1, $t0, 1
	slli.d	$t0, $t1, 2
	ldx.w	$t2, $s5, $t0
	addi.w	$t0, $a6, 0
	slt	$t2, $t0, $t2
	maskeqz	$t3, $t1, $t2
	masknez	$a5, $a5, $t2
	or	$a5, $t3, $a5
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	sub.w	$t1, $a5, $a7
	bne	$t1, $ra, .LBB3_33
# %bb.34:                               # %indexIntoF.exit135.i
                                        #   in Loop: Header=BB3_15 Depth=2
	st.w	$a7, $s2, 64
	slli.d	$a5, $t0, 1
	bstrpick.d	$a6, $a6, 31, 1
	ldx.bu	$a3, $a3, $a6
	ldx.hu	$a2, $a2, $a5
	slli.d	$a4, $a4, 2
	andi	$a4, $a4, 4
	srl.w	$a3, $a3, $a4
	bstrins.d	$a2, $a3, 19, 16
	st.w	$a2, $s2, 60
	addi.d	$a1, $a1, 5
	st.w	$a1, $s2, 1092
	b	.LBB3_36
.LBB3_35:                               # %if.then57.i
                                        #   in Loop: Header=BB3_15 Depth=2
	st.w	$a7, $s2, 64
.LBB3_36:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB3_15 Depth=2
	ld.w	$a1, $a0, 32
	beqz	$a1, .LBB3_75
.LBB3_37:                               # %if.end5.i
                                        #   in Loop: Header=BB3_15 Depth=2
	ld.b	$a1, $s2, 12
	ld.d	$a0, $a0, 24
	st.b	$a1, $a0, 0
	ld.d	$a0, $s2, 0
	ld.w	$a1, $s2, 16
	ld.d	$a2, $a0, 24
	addi.w	$a1, $a1, -1
	st.w	$a1, $s2, 16
	ld.w	$a3, $a0, 32
	addi.d	$a2, $a2, 1
	ld.wu	$a4, $a0, 36
	st.d	$a2, $a0, 24
	addi.w	$a2, $a3, -1
	st.w	$a2, $a0, 32
	addi.d	$a3, $a4, 1
	and	$a4, $a3, $s7
	st.w	$a3, $a0, 36
	beqz	$a4, .LBB3_14
# %bb.38:                               # %if.then17.i
                                        #   in Loop: Header=BB3_15 Depth=2
	ld.w	$a3, $a0, 40
	addi.d	$a3, $a3, 1
	st.w	$a3, $a0, 40
	b	.LBB3_14
.LBB3_39:                               # %if.then99.i
                                        #   in Loop: Header=BB3_15 Depth=2
	st.w	$a6, $s2, 64
	b	.LBB3_36
.LBB3_40:                               # %if.then141.i
                                        #   in Loop: Header=BB3_15 Depth=2
	st.w	$a4, $s2, 64
	b	.LBB3_36
.LBB3_41:                               # %if.then30.entry.if.end_crit_edge.i_crit_edge
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$t6, $s3, 44
	b	.LBB3_78
.LBB3_42:                               # %if.else
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 3184
	ldx.w	$a1, $s2, $a0
	ld.bu	$t2, $s2, 12
	ld.w	$t3, $s2, 16
	ld.w	$t4, $s2, 1092
	ld.d	$a0, $s2, 0
	ld.w	$t1, $s2, 64
	ldptr.d	$a2, $s2, 3152
	ld.w	$a5, $s2, 60
	ld.w	$a4, $a0, 32
	ld.w	$t0, $s3, 44
	ld.d	$a3, $a0, 24
	addi.w	$a7, $t0, 1
	move	$a6, $a4
.LBB3_43:                               # %while.cond.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_47 Depth 3
                                        #       Child Loop BB3_49 Depth 3
	blt	$t3, $ra, .LBB3_51
# %bb.44:                               # %while.cond2.preheader.i
                                        #   in Loop: Header=BB3_43 Depth=2
	beqz	$a6, .LBB3_71
# %bb.45:                               # %if.end.i41.preheader
                                        #   in Loop: Header=BB3_43 Depth=2
	addi.w	$a0, $a6, -1
	addi.w	$t5, $t3, -1
	sltu	$t6, $a0, $t5
	masknez	$t5, $t5, $t6
	maskeqz	$a0, $a0, $t6
	or	$a0, $a0, $t5
	ori	$t7, $zero, 64
	bltu	$a0, $t7, .LBB3_49
# %bb.46:                               # %vector.ph484
                                        #   in Loop: Header=BB3_43 Depth=2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	andi	$t5, $a0, 63
	sltui	$t6, $t5, 1
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	sub.d	$a0, $a0, $t5
	sub.w	$a6, $a6, $a0
	add.d	$t5, $a3, $a0
	sub.w	$t3, $t3, $a0
	xvreplgr2vr.b	$xr0, $t2
	addi.d	$a3, $a3, 32
	.p2align	4, , 16
.LBB3_47:                               # %vector.body491
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a0, $a0, -64
	addi.d	$a3, $a3, 64
	bnez	$a0, .LBB3_47
# %bb.48:                               #   in Loop: Header=BB3_43 Depth=2
	move	$a3, $t5
	.p2align	4, , 16
.LBB3_49:                               # %if.end.i41
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$t3, $ra, .LBB3_52
# %bb.50:                               # %if.end8.i
                                        #   in Loop: Header=BB3_49 Depth=3
	st.b	$t2, $a3, 0
	addi.w	$t3, $t3, -1
	addi.w	$a6, $a6, -1
	addi.d	$a3, $a3, 1
	bnez	$a6, .LBB3_49
	b	.LBB3_71
.LBB3_51:                               #   in Loop: Header=BB3_43 Depth=2
	move	$t5, $t4
	b	.LBB3_55
.LBB3_52:                               #   in Loop: Header=BB3_43 Depth=2
	move	$t5, $t4
.LBB3_53:                               # %s_state_out_len_eq_one.i
                                        #   in Loop: Header=BB3_43 Depth=2
	beqz	$a6, .LBB3_157
# %bb.54:                               # %if.end12.i
                                        #   in Loop: Header=BB3_43 Depth=2
	st.b	$t2, $a3, 0
	addi.d	$a3, $a3, 1
	addi.w	$a6, $a6, -1
.LBB3_55:                               # %if.end15.i
                                        #   in Loop: Header=BB3_43 Depth=2
	move	$t6, $t1
	addi.w	$a0, $zero, -4
	blt	$a7, $t5, .LBB3_471
# %bb.56:                               # %if.end18.i
                                        #   in Loop: Header=BB3_43 Depth=2
	beq	$t5, $a7, .LBB3_158
# %bb.57:                               # %if.end21.i
                                        #   in Loop: Header=BB3_43 Depth=2
	ld.w	$t1, $s2, 40
	ld.d	$t2, $sp, 440                   # 8-byte Folded Reload
	mul.w	$t7, $t1, $t2
	addi.w	$t1, $a5, 0
	bgeu	$t1, $t7, .LBB3_471
# %bb.58:                               # %if.end25.i
                                        #   in Loop: Header=BB3_43 Depth=2
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.wu	$t1, $a2, $a5
	srli.d	$a5, $t1, 8
	andi	$t1, $t1, 255
	addi.w	$t2, $t5, 1
	bne	$t1, $t6, .LBB3_61
# %bb.59:                               # %if.end32.i
                                        #   in Loop: Header=BB3_43 Depth=2
	bne	$t5, $t0, .LBB3_62
# %bb.60:                               #   in Loop: Header=BB3_43 Depth=2
	move	$t5, $t2
	move	$t1, $t6
	move	$t2, $t6
	b	.LBB3_53
.LBB3_61:                               #   in Loop: Header=BB3_43 Depth=2
	move	$t5, $t2
	move	$t2, $t6
	b	.LBB3_53
.LBB3_62:                               # %if.end36.i
                                        #   in Loop: Header=BB3_43 Depth=2
	bgeu	$a5, $t7, .LBB3_471
# %bb.63:                               # %if.end42.i
                                        #   in Loop: Header=BB3_43 Depth=2
	slli.d	$a5, $a5, 2
	ldx.wu	$t8, $a2, $a5
	srli.d	$a5, $t8, 8
	addi.w	$fp, $t5, 2
	ori	$t3, $zero, 2
	move	$t4, $a7
	move	$t1, $t6
	move	$t2, $t6
	beq	$fp, $a7, .LBB3_43
# %bb.64:                               # %if.end52.i37
                                        #   in Loop: Header=BB3_43 Depth=2
	andi	$t1, $t8, 255
	move	$t4, $fp
	move	$t2, $t6
	bne	$t1, $t6, .LBB3_43
# %bb.65:                               # %if.end58.i
                                        #   in Loop: Header=BB3_43 Depth=2
	bgeu	$a5, $t7, .LBB3_471
# %bb.66:                               # %if.end64.i
                                        #   in Loop: Header=BB3_43 Depth=2
	slli.d	$a5, $a5, 2
	ldx.wu	$t8, $a2, $a5
	srli.d	$a5, $t8, 8
	addi.w	$fp, $t5, 3
	ori	$t3, $zero, 3
	move	$t4, $a7
	move	$t1, $t6
	move	$t2, $t6
	beq	$fp, $a7, .LBB3_43
# %bb.67:                               # %if.end74.i
                                        #   in Loop: Header=BB3_43 Depth=2
	andi	$t1, $t8, 255
	move	$t4, $fp
	move	$t2, $t6
	bne	$t1, $t6, .LBB3_43
# %bb.68:                               # %if.end80.i
                                        #   in Loop: Header=BB3_43 Depth=2
	bgeu	$a5, $t7, .LBB3_471
# %bb.69:                               # %if.end86.i
                                        #   in Loop: Header=BB3_43 Depth=2
	slli.d	$a5, $a5, 2
	ldx.wu	$a5, $a2, $a5
	srli.d	$t1, $a5, 8
	bgeu	$t1, $t7, .LBB3_471
# %bb.70:                               # %if.end100.i
                                        #   in Loop: Header=BB3_43 Depth=2
	slli.d	$a0, $t1, 2
	ldx.wu	$a0, $a2, $a0
	andi	$a5, $a5, 255
	addi.w	$t3, $a5, 4
	andi	$t1, $a0, 255
	srli.d	$a5, $a0, 8
	addi.w	$t4, $t5, 5
	move	$t2, $t6
	b	.LBB3_43
.LBB3_71:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
.LBB3_72:                               # %return_notr.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s2, 0
	ld.wu	$a7, $a0, 36
	sub.d	$a4, $a4, $a6
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a4, $a7, $a4
	and	$a7, $a4, $s7
	st.w	$a4, $a0, 36
	beqz	$a7, .LBB3_74
# %bb.73:                               # %if.then116.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $a0, 40
	addi.d	$a4, $a4, 1
	st.w	$a4, $a0, 40
.LBB3_74:                               #   in Loop: Header=BB3_4 Depth=1
	stptr.w	$a1, $s2, 3184
	st.b	$t2, $s2, 12
	st.w	$t3, $s2, 16
	st.w	$t4, $s2, 1092
	st.w	$t1, $s2, 64
	stptr.d	$a2, $s2, 3152
	st.w	$a5, $s2, 60
	st.d	$a3, $a0, 24
	st.w	$a6, $a0, 32
.LBB3_75:                               # %if.end20
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$t6, $s3, 44
	ld.w	$a0, $s2, 1092
	addi.w	$a1, $t6, 1
	bne	$a0, $a1, .LBB3_474
# %bb.76:                               # %land.lhs.true
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 16
	bnez	$a0, .LBB3_474
# %bb.77:                               # %if.then30.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 14
	st.w	$a1, $s2, 8
.LBB3_78:                               # %if.end.i46
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a2, $s3, 0
	ld.w	$a0, $s3, 4
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	ld.w	$t8, $s3, 8
	ld.w	$t4, $s3, 12
	ld.w	$t5, $s3, 16
	ld.w	$s4, $s3, 20
	ld.w	$a0, $s3, 24
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ld.w	$s1, $s3, 28
	ld.w	$t2, $s3, 32
	ld.w	$s8, $s3, 36
	ld.w	$t3, $s3, 40
	ld.w	$a0, $s3, 48
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ld.w	$a0, $s3, 52
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	ld.w	$a0, $s3, 56
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	ld.w	$s0, $s3, 60
	ld.w	$fp, $s3, 64
	ld.w	$a7, $s3, 68
	ld.w	$t1, $s3, 72
	ld.w	$t0, $s3, 76
	ld.w	$t7, $s3, 80
	ld.d	$a0, $s3, 84
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a0, $s3, 92
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a0, $s3, 100
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	move	$a3, $zero
	addi.d	$a1, $a1, -14
	addi.w	$a0, $zero, -4
	ori	$a4, $zero, 27
	bltu	$a4, $a1, .LBB3_447
# %bb.79:                               # %if.end.i46
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a1, $a1, 2
	pcalau12i	$a4, %pc_hi20(.LJTI3_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI3_0)
	ldx.w	$a1, $a4, $a1
	add.d	$a1, $a4, $a1
	jr	$a1
.LBB3_80:                               # %if.end.sw.bb106_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t5, $sp, 384                   # 8-byte Folded Spill
	move	$t5, $t1
	move	$t1, $t7
	move	$t7, $s0
	move	$s0, $t2
	move	$t2, $s1
	move	$s1, $t3
	move	$t3, $fp
	ld.w	$a1, $s2, 36
	b	.LBB3_88
.LBB3_81:                               # %if.else.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	stptr.d	$a0, $s2, 3152
	beqz	$a0, .LBB3_104
# %bb.82:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	st.d	$zero, $sp, 520                 # 8-byte Folded Spill
	move	$t8, $zero
	move	$t4, $zero
	move	$t5, $zero
	move	$s4, $zero
	st.d	$zero, $sp, 472                 # 8-byte Folded Spill
	move	$s1, $zero
	move	$t2, $zero
	move	$s8, $zero
	move	$t3, $zero
	move	$t6, $zero
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	st.d	$zero, $sp, 528                 # 8-byte Folded Spill
	st.d	$zero, $sp, 512                 # 8-byte Folded Spill
	move	$s0, $zero
	move	$fp, $zero
	move	$a7, $zero
	move	$t1, $zero
	move	$t0, $zero
	move	$t7, $zero
	st.d	$zero, $sp, 496                 # 8-byte Folded Spill
	st.d	$zero, $sp, 504                 # 8-byte Folded Spill
	st.d	$zero, $sp, 488                 # 8-byte Folded Spill
	xvld	$xr3, $sp, 320                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 288                  # 32-byte Folded Reload
	vld	$vr6, $sp, 448                  # 16-byte Folded Reload
	ori	$ra, $zero, 1
.LBB3_83:                               # %sw.bb61.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t5, $sp, 384                   # 8-byte Folded Spill
	move	$t5, $t1
	move	$t1, $t7
	move	$t7, $s0
	move	$s0, $t2
	move	$t2, $s1
	move	$s1, $t3
	move	$t3, $fp
	ld.w	$a0, $s2, 36
	ori	$a1, $zero, 14
	st.w	$a1, $s2, 8
	addi.w	$a1, $a0, -8
	move	$fp, $a7
	ori	$a3, $zero, 8
	blt	$a0, $a3, .LBB3_91
# %bb.84:                               # %sw.bb61.if.then65_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a5, $s2, 32
.LBB3_85:                               # %if.then65.i
                                        #   in Loop: Header=BB3_4 Depth=1
	srl.w	$a0, $a5, $a1
	andi	$a0, $a0, 255
	st.w	$a1, $s2, 36
	ori	$a3, $zero, 23
	move	$a7, $fp
	beq	$a0, $a3, .LBB3_96
# %bb.86:                               # %if.then65.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a3, $zero, 49
	bne	$a0, $a3, .LBB3_97
# %bb.87:                               # %if.end105.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.w	$zero, $s2, 56
.LBB3_88:                               # %sw.bb106.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$fp, $a7
	ori	$a0, $zero, 25
	st.w	$a0, $s2, 8
	addi.w	$a0, $a1, -8
	ori	$a3, $zero, 8
	blt	$a1, $a3, .LBB3_99
# %bb.89:                               # %sw.bb106.if.then113_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_90:                               # %if.then113.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s2, 56
	srl.w	$a3, $a4, $a0
	st.w	$a0, $s2, 36
	bstrins.d	$a3, $a1, 63, 8
	st.w	$a3, $s2, 56
	b	.LBB3_124
.LBB3_91:                               # %if.end71.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_93
	.p2align	4, , 16
.LBB3_92:                               # %if.end95.i
                                        #   in Loop: Header=BB3_93 Depth=2
	addi.w	$a1, $a1, 8
	addi.w	$a3, $a3, -1
	blt	$a4, $a1, .LBB3_85
.LBB3_93:                               # %if.end71.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_142
# %bb.94:                               # %if.end76.i
                                        #   in Loop: Header=BB3_93 Depth=2
	ld.d	$a6, $a0, 0
	ld.w	$a5, $s2, 32
	ld.bu	$a7, $a6, 0
	slli.d	$a5, $a5, 8
	or	$a5, $a5, $a7
	st.w	$a5, $s2, 32
	addi.d	$a7, $a1, 16
	st.w	$a7, $s2, 36
	ld.wu	$a7, $a0, 12
	addi.d	$a6, $a6, 1
	st.d	$a6, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a6, $a7, 1
	and	$a7, $a6, $s7
	st.w	$a6, $a0, 12
	beqz	$a7, .LBB3_92
# %bb.95:                               # %if.then92.i
                                        #   in Loop: Header=BB3_93 Depth=2
	ld.w	$a6, $a0, 16
	addi.d	$a6, $a6, 1
	st.w	$a6, $a0, 16
	b	.LBB3_92
.LBB3_96:                               # %endhdr_2.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a3, $zero, 1
	st.w	$a3, $s2, 8
	ori	$a0, $zero, 4
	b	.LBB3_149
.LBB3_97:                               #   in Loop: Header=BB3_4 Depth=1
	move	$fp, $t3
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	b	.LBB3_150
.LBB3_98:                               #   in Loop: Header=BB3_4 Depth=1
	move	$s0, $a2
	move	$t1, $a2
	move	$t0, $a2
	move	$t7, $a2
	st.d	$a2, $sp, 496                   # 8-byte Folded Spill
	st.d	$a2, $sp, 504                   # 8-byte Folded Spill
	st.d	$a2, $sp, 488                   # 8-byte Folded Spill
	move	$a7, $a2
	move	$fp, $a2
	st.d	$a2, $sp, 512                   # 8-byte Folded Spill
	st.d	$a2, $sp, 528                   # 8-byte Folded Spill
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	move	$t6, $a2
	move	$t3, $a2
	move	$s8, $a2
	move	$t2, $a2
	move	$s1, $a2
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	move	$s4, $a2
	move	$t5, $a2
	move	$t4, $a2
	move	$t8, $a2
	st.d	$a2, $sp, 520                   # 8-byte Folded Spill
	move	$a3, $a2
	b	.LBB3_105
.LBB3_99:                               # %if.end123.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_101
.LBB3_100:                              # %if.end156.i
                                        #   in Loop: Header=BB3_101 Depth=2
	addi.w	$a0, $a0, 8
	addi.w	$a3, $a3, -1
	blt	$a5, $a0, .LBB3_90
.LBB3_101:                              # %if.end123.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a5, $zero, -1
	beq	$a3, $a5, .LBB3_142
# %bb.102:                              # %if.end129.i
                                        #   in Loop: Header=BB3_101 Depth=2
	ld.d	$a6, $a1, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a7, $a6, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a7
	st.w	$a4, $s2, 32
	addi.d	$a7, $a0, 16
	st.w	$a7, $s2, 36
	ld.wu	$a7, $a1, 12
	addi.d	$a6, $a6, 1
	st.d	$a6, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a6, $a7, 1
	and	$a7, $a6, $s7
	st.w	$a6, $a1, 12
	beqz	$a7, .LBB3_100
# %bb.103:                              # %if.then152.i
                                        #   in Loop: Header=BB3_101 Depth=2
	ld.w	$a6, $a1, 16
	addi.d	$a6, $a6, 1
	st.w	$a6, $a1, 16
	b	.LBB3_100
.LBB3_104:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s0, $zero
	move	$t1, $zero
	move	$t0, $zero
	move	$t7, $zero
	st.d	$zero, $sp, 496                 # 8-byte Folded Spill
	st.d	$zero, $sp, 504                 # 8-byte Folded Spill
	st.d	$zero, $sp, 488                 # 8-byte Folded Spill
	move	$a7, $zero
	move	$fp, $zero
	st.d	$zero, $sp, 512                 # 8-byte Folded Spill
	st.d	$zero, $sp, 528                 # 8-byte Folded Spill
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	move	$t6, $zero
	move	$t3, $zero
	move	$s8, $zero
	move	$t2, $zero
	move	$s1, $zero
	st.d	$zero, $sp, 472                 # 8-byte Folded Spill
	move	$s4, $zero
	move	$t5, $zero
	move	$t4, $zero
	move	$t8, $zero
	st.d	$zero, $sp, 520                 # 8-byte Folded Spill
	move	$a2, $zero
	move	$a3, $zero
	addi.w	$a0, $zero, -3
.LBB3_105:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	xvld	$xr3, $sp, 320                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 288                  # 32-byte Folded Reload
	vld	$vr6, $sp, 448                  # 16-byte Folded Reload
	ori	$ra, $zero, 1
	b	.LBB3_447
.LBB3_106:                              # %if.end.sw.bb509_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 36
.LBB3_107:                              # %sw.bb509.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 31
	st.w	$a1, $s2, 8
	ori	$a1, $zero, 15
	blt	$a0, $a1, .LBB3_152
# %bb.108:                              # %sw.bb509.if.then516_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_109:                              # %if.then516.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -15
	srl.w	$a1, $a4, $a0
	bstrpick.d	$s4, $a1, 14, 0
	st.w	$a0, $s2, 36
	beqz	$s4, .LBB3_159
# %bb.110:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	st.d	$t2, $sp, 432                   # 8-byte Folded Spill
	bge	$a2, $s4, .LBB3_161
.LBB3_111:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$zero, $sp, 520                 # 8-byte Folded Spill
.LBB3_112:                              # %sw.bb570.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s2, 36
.LBB3_113:                              # %sw.bb570.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_119 Depth 3
	ori	$a0, $zero, 32
	st.w	$a0, $s2, 8
	blt	$a1, $ra, .LBB3_117
# %bb.114:                              # %sw.bb570.if.then577_crit_edge.i
                                        #   in Loop: Header=BB3_113 Depth=2
	ld.w	$a4, $s2, 32
.LBB3_115:                              # %if.then577.i
                                        #   in Loop: Header=BB3_113 Depth=2
	addi.w	$a1, $a1, -1
	srl.w	$a0, $a4, $a1
	andi	$a0, $a0, 1
	st.w	$a1, $s2, 36
	beqz	$a0, .LBB3_160
# %bb.116:                              # %if.end626.i
                                        #   in Loop: Header=BB3_113 Depth=2
	ld.d	$a3, $sp, 520                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	addi.w	$a0, $zero, -4
	st.d	$a3, $sp, 520                   # 8-byte Folded Spill
	blt	$a3, $t5, .LBB3_113
	b	.LBB3_446
.LBB3_117:                              # %if.end587.lr.ph.i
                                        #   in Loop: Header=BB3_113 Depth=2
	ld.d	$a0, $s2, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_119
	.p2align	4, , 16
.LBB3_118:                              # %if.end620.i
                                        #   in Loop: Header=BB3_119 Depth=3
	addi.w	$a5, $a1, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_115
.LBB3_119:                              # %if.end587.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.120:                              # %if.end593.i
                                        #   in Loop: Header=BB3_119 Depth=3
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.d	$a1, $a1, 8
	st.w	$a1, $s2, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a0, 12
	beqz	$a6, .LBB3_118
# %bb.121:                              # %if.then616.i
                                        #   in Loop: Header=BB3_119 Depth=3
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_118
.LBB3_122:                              # %if.end.sw.bb220_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t5, $sp, 384                   # 8-byte Folded Spill
	move	$t5, $t1
	move	$t1, $t7
	move	$t7, $s0
	move	$s0, $t2
	move	$t2, $s1
	move	$s1, $t3
	move	$t3, $fp
	move	$fp, $a7
	ld.w	$a0, $s2, 36
	b	.LBB3_127
.LBB3_123:                              # %if.end.sw.bb163_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t5, $sp, 384                   # 8-byte Folded Spill
	move	$t5, $t1
	move	$t1, $t7
	move	$t7, $s0
	move	$s0, $t2
	move	$t2, $s1
	move	$s1, $t3
	move	$t3, $fp
	move	$fp, $a7
	ld.w	$a0, $s2, 36
.LBB3_124:                              # %sw.bb163.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 26
	st.w	$a1, $s2, 8
	ori	$a1, $zero, 8
	blt	$a0, $a1, .LBB3_137
# %bb.125:                              # %sw.bb163.if.then170_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
	addi.w	$a0, $a0, -8
.LBB3_126:                              # %if.then170.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s2, 56
	srl.w	$a3, $a4, $a0
	st.w	$a0, $s2, 36
	bstrins.d	$a3, $a1, 63, 8
	st.w	$a3, $s2, 56
.LBB3_127:                              # %sw.bb220.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 27
	st.w	$a1, $s2, 8
	addi.d	$a1, $a0, -8
	ori	$a3, $zero, 8
	blt	$a0, $a3, .LBB3_132
# %bb.128:                              # %sw.bb220.if.then227_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_129:                              # %if.then227.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 56
	srl.w	$a3, $a4, $a1
	st.w	$a1, $s2, 36
	slli.w	$a1, $a0, 8
	bstrins.d	$a3, $a0, 63, 8
	st.w	$a3, $s2, 56
	addi.w	$a0, $zero, -4
	bltz	$a1, .LBB3_147
# %bb.130:                              # %if.end281.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s2, 40
	addi.w	$a3, $a3, 0
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a4
	addi.w	$a1, $a1, 10
	move	$a7, $fp
	bge	$a1, $a3, .LBB3_151
# %bb.131:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	b	.LBB3_149
.LBB3_132:                              # %if.end237.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_134
.LBB3_133:                              # %if.end270.i
                                        #   in Loop: Header=BB3_134 Depth=2
	addi.w	$a1, $a1, 8
	addi.w	$a3, $a3, -1
	blt	$a5, $a1, .LBB3_129
.LBB3_134:                              # %if.end237.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a5, $zero, -1
	beq	$a3, $a5, .LBB3_142
# %bb.135:                              # %if.end243.i
                                        #   in Loop: Header=BB3_134 Depth=2
	ld.d	$a6, $a0, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a7, $a6, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a7
	st.w	$a4, $s2, 32
	addi.d	$a7, $a1, 16
	st.w	$a7, $s2, 36
	ld.wu	$a7, $a0, 12
	addi.d	$a6, $a6, 1
	st.d	$a6, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a6, $a7, 1
	and	$a7, $a6, $s7
	st.w	$a6, $a0, 12
	beqz	$a7, .LBB3_133
# %bb.136:                              # %if.then266.i
                                        #   in Loop: Header=BB3_134 Depth=2
	ld.w	$a6, $a0, 16
	addi.d	$a6, $a6, 1
	st.w	$a6, $a0, 16
	b	.LBB3_133
.LBB3_137:                              # %if.end180.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	addi.d	$a0, $a0, -8
	b	.LBB3_139
.LBB3_138:                              # %if.end213.i
                                        #   in Loop: Header=BB3_139 Depth=2
	addi.w	$a0, $a0, 8
	addi.w	$a3, $a3, -1
	blt	$a5, $a0, .LBB3_126
.LBB3_139:                              # %if.end180.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a5, $zero, -1
	beq	$a3, $a5, .LBB3_142
# %bb.140:                              # %if.end186.i
                                        #   in Loop: Header=BB3_139 Depth=2
	ld.d	$a6, $a1, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a7, $a6, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a7
	st.w	$a4, $s2, 32
	addi.d	$a7, $a0, 16
	st.w	$a7, $s2, 36
	ld.wu	$a7, $a1, 12
	addi.d	$a6, $a6, 1
	st.d	$a6, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a6, $a7, 1
	and	$a7, $a6, $s7
	st.w	$a6, $a1, 12
	beqz	$a7, .LBB3_138
# %bb.141:                              # %if.then209.i
                                        #   in Loop: Header=BB3_139 Depth=2
	ld.w	$a6, $a1, 16
	addi.d	$a6, $a6, 1
	st.w	$a6, $a1, 16
	b	.LBB3_138
.LBB3_142:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	move	$a0, $zero
	b	.LBB3_148
.LBB3_143:                              # %if.end.sw.bb803_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 36
	b	.LBB3_200
.LBB3_144:                              # %if.end.sw.bb1067_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s2, 36
	b	.LBB3_208
.LBB3_145:                              # %if.end.sw.bb1676_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s2, 36
	b	.LBB3_216
.LBB3_146:                              # %if.end.sw.bb1260_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s2, 36
	b	.LBB3_224
.LBB3_147:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
.LBB3_148:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a7, $fp
.LBB3_149:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$fp, $t3
.LBB3_150:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t3, $s1
	move	$s1, $t2
	move	$t2, $s0
	move	$s0, $t7
	move	$t7, $t1
	move	$t1, $t5
	ld.d	$t5, $sp, 384                   # 8-byte Folded Reload
	b	.LBB3_447
.LBB3_151:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	ori	$a0, $zero, 16
	move	$fp, $t3
	move	$t3, $s1
	move	$s1, $t2
	move	$t2, $s0
	move	$s0, $t7
	move	$t7, $t1
	move	$t1, $t5
	ld.d	$t5, $sp, 384                   # 8-byte Folded Reload
	b	.LBB3_304
.LBB3_152:                              # %if.end525.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_154
.LBB3_153:                              # %if.end558.i
                                        #   in Loop: Header=BB3_154 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a3, $a3, -1
	ori	$a6, $zero, 6
	blt	$a6, $a5, .LBB3_109
.LBB3_154:                              # %if.end525.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.155:                              # %if.end531.i
                                        #   in Loop: Header=BB3_154 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s2, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_153
# %bb.156:                              # %if.then554.i
                                        #   in Loop: Header=BB3_154 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_153
.LBB3_157:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
	ori	$t3, $zero, 1
	move	$t4, $t5
	b	.LBB3_72
.LBB3_158:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t3, $zero
	move	$t4, $a7
	move	$t1, $t6
	b	.LBB3_72
.LBB3_159:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s4, $zero
	b	.LBB3_329
.LBB3_160:                              # %while.end632.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	stx.b	$a1, $a0, $a2
	addi.w	$a2, $a2, 1
	st.d	$t2, $sp, 432                   # 8-byte Folded Spill
	blt	$a2, $s4, .LBB3_111
.LBB3_161:                              # %for.end638.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	addi.d	$t2, $sp, 546
	blt	$t5, $ra, .LBB3_165
# %bb.162:                              # %iter.check446
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 15
	bltu	$a0, $t5, .LBB3_188
# %bb.163:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a1, $zero
.LBB3_164:                              # %for.body644.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a0, $a1, 255
	stx.b	$a1, $a0, $t2
	addi.d	$a1, $a1, 1
	andi	$a0, $a1, 255
	bltu	$a0, $t5, .LBB3_164
.LBB3_165:                              # %for.cond650.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	blt	$s4, $ra, .LBB3_186
# %bb.166:                              # %for.body653.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t5, $sp, 384                   # 8-byte Folded Spill
	move	$t5, $s8
	move	$t8, $s0
	st.d	$t6, $sp, 416                   # 8-byte Folded Spill
	move	$t6, $s1
	st.d	$t3, $sp, 424                   # 8-byte Folded Spill
	move	$t3, $fp
	move	$fp, $a7
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	move	$a0, $zero
	ld.d	$s1, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	st.d	$a1, $sp, 528                   # 8-byte Folded Spill
	move	$s0, $t0
	move	$s8, $t1
	st.d	$s1, $sp, 504                   # 8-byte Folded Spill
	b	.LBB3_168
.LBB3_167:                              # %while.end671.i
                                        #   in Loop: Header=BB3_168 Depth=2
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	stx.b	$a1, $a2, $a0
	addi.d	$a0, $a0, 1
	st.b	$a1, $sp, 546
	beq	$a0, $s4, .LBB3_185
.LBB3_168:                              # %for.body653.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_181 Depth 3
                                        #       Child Loop BB3_178 Depth 3
                                        #       Child Loop BB3_174 Depth 3
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldx.bu	$a2, $a1, $a0
	ldx.bu	$a1, $a2, $t2
	beqz	$a2, .LBB3_167
# %bb.169:                              # %iter.check405
                                        #   in Loop: Header=BB3_168 Depth=2
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB3_172
# %bb.170:                              # %vector.scevcheck396
                                        #   in Loop: Header=BB3_168 Depth=2
	addi.d	$a3, $a2, -1
	andi	$a4, $a3, 255
	bltu	$a3, $a4, .LBB3_172
# %bb.171:                              # %vector.memcheck400
                                        #   in Loop: Header=BB3_168 Depth=2
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	add.d	$a3, $a2, $a4
	bstrpick.d	$a5, $a3, 31, 0
	sub.d	$a5, $a5, $a2
	ori	$a6, $zero, 16
	bgeu	$a5, $a6, .LBB3_175
.LBB3_172:                              #   in Loop: Header=BB3_168 Depth=2
	move	$a5, $a2
	move	$a3, $a2
.LBB3_173:                              # %while.body663.i.preheader
                                        #   in Loop: Header=BB3_168 Depth=2
	add.d	$a2, $t2, $a5
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	add.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB3_174:                              # %while.body663.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a5, $a4, 31, 0
	ldx.b	$a5, $a5, $t2
	st.b	$a5, $a2, 0
	addi.d	$a3, $a3, -1
	andi	$a5, $a3, 255
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	bnez	$a5, .LBB3_174
	b	.LBB3_167
.LBB3_175:                              # %vector.main.loop.iter.check407
                                        #   in Loop: Header=BB3_168 Depth=2
	bgeu	$a2, $a6, .LBB3_180
# %bb.176:                              #   in Loop: Header=BB3_168 Depth=2
	move	$a6, $zero
.LBB3_177:                              # %vec.epilog.ph421
                                        #   in Loop: Header=BB3_168 Depth=2
	andi	$a7, $a2, 248
	andi	$a5, $a2, 7
	sub.d	$a3, $a2, $a7
	sub.d	$t0, $a6, $a7
	sub.d	$t1, $a2, $a6
	addi.d	$a6, $sp, 539
	add.d	$a6, $a6, $t1
	add.d	$a4, $t1, $a4
.LBB3_178:                              # %vec.epilog.vector.body428
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t1, $a4, 31, 0
	add.d	$t1, $t2, $t1
	ld.d	$t1, $t1, -7
	st.d	$t1, $a6, 0
	addi.d	$t0, $t0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, -8
	bnez	$t0, .LBB3_178
# %bb.179:                              # %vec.epilog.middle.block435
                                        #   in Loop: Header=BB3_168 Depth=2
	move	$t0, $s0
	move	$t1, $s8
	beq	$a7, $a2, .LBB3_167
	b	.LBB3_173
.LBB3_180:                              # %vector.ph408
                                        #   in Loop: Header=BB3_168 Depth=2
	andi	$a6, $a2, 240
	addi.d	$a5, $sp, 531
	add.d	$a5, $a5, $a2
	move	$a7, $a6
.LBB3_181:                              # %vector.body411
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t0, $a3, 31, 0
	add.d	$t0, $t2, $t0
	vld	$vr0, $t0, -15
	vst	$vr0, $a5, 0
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, -16
	bnez	$a7, .LBB3_181
# %bb.182:                              # %middle.block417
                                        #   in Loop: Header=BB3_168 Depth=2
	move	$t0, $s0
	beq	$a6, $a2, .LBB3_167
# %bb.183:                              # %vec.epilog.iter.check422
                                        #   in Loop: Header=BB3_168 Depth=2
	andi	$a3, $a2, 8
	bnez	$a3, .LBB3_177
# %bb.184:                              #   in Loop: Header=BB3_168 Depth=2
	andi	$a5, $a2, 15
	sub.d	$a3, $a2, $a6
	b	.LBB3_173
.LBB3_185:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $s4
	move	$a7, $fp
	move	$fp, $t3
	ld.d	$t3, $sp, 424                   # 8-byte Folded Reload
	move	$s1, $t6
	ld.d	$t6, $sp, 416                   # 8-byte Folded Reload
	move	$s0, $t8
	move	$s8, $t5
	ld.d	$t5, $sp, 384                   # 8-byte Folded Reload
	b	.LBB3_187
.LBB3_186:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
.LBB3_187:                              # %for.end677.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t8, $zero
	ld.d	$t2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	b	.LBB3_232
.LBB3_188:                              # %vector.scevcheck442
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $t5, -1
	ori	$a3, $zero, 255
	andi	$a2, $a0, 255
	move	$a1, $zero
	beq	$a2, $a3, .LBB3_164
# %bb.189:                              # %vector.scevcheck442
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 255
	bltu	$a2, $a0, .LBB3_164
# %bb.190:                              # %vector.main.loop.iter.check448
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 64
	bgeu	$t5, $a0, .LBB3_192
# %bb.191:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $zero
	b	.LBB3_196
.LBB3_192:                              # %vector.ph449
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI3_0)
	andi	$a0, $t5, 448
	move	$a1, $a0
	addi.d	$a2, $sp, 578
.LBB3_193:                              # %vector.body453
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvadd.b	$xr1, $xr0, $xr3
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	xvadd.b	$xr0, $xr0, $xr4
	addi.w	$a1, $a1, -64
	addi.d	$a2, $a2, 64
	bnez	$a1, .LBB3_193
# %bb.194:                              # %middle.block457
                                        #   in Loop: Header=BB3_4 Depth=1
	beq	$t5, $a0, .LBB3_165
# %bb.195:                              # %vec.epilog.iter.check463
                                        #   in Loop: Header=BB3_4 Depth=1
	andi	$a1, $t5, 48
	beqz	$a1, .LBB3_199
.LBB3_196:                              # %vec.epilog.ph462
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_1)
	andi	$a1, $t5, 496
	vreplgr2vr.b	$vr1, $a0
	vadd.b	$vr0, $vr1, $vr0
.LBB3_197:                              # %vec.epilog.vector.body469
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a2, $a0, 240
	vstx	$vr0, $a2, $t2
	addi.w	$a0, $a0, 16
	vaddi.bu	$vr0, $vr0, 16
	bne	$a1, $a0, .LBB3_197
# %bb.198:                              # %vec.epilog.middle.block476
                                        #   in Loop: Header=BB3_4 Depth=1
	bne	$t5, $a1, .LBB3_164
	b	.LBB3_165
.LBB3_199:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a1, $a0
	b	.LBB3_164
.LBB3_200:                              # %sw.bb803.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 35
	st.w	$a1, $s2, 8
	blt	$a0, $ra, .LBB3_203
# %bb.201:                              # %sw.bb803.if.then810_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_202:                              # %if.then810.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s2, 36
	srl.w	$a0, $a4, $a0
	andi	$a0, $a0, 1
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	b	.LBB3_293
.LBB3_203:                              # %if.end820.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_205
.LBB3_204:                              # %if.end853.i
                                        #   in Loop: Header=BB3_205 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_202
.LBB3_205:                              # %if.end820.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.206:                              # %if.end826.i
                                        #   in Loop: Header=BB3_205 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s2, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_204
# %bb.207:                              # %if.then849.i
                                        #   in Loop: Header=BB3_205 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_204
.LBB3_208:                              # %sw.bb1067.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 37
	st.w	$a0, $s2, 8
	blt	$a1, $ra, .LBB3_211
# %bb.209:                              # %sw.bb1067.if.then1074_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_210:                              # %if.then1074.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a1, $a1, -1
	srl.w	$a0, $a4, $a1
	andi	$t1, $a0, 1
	bstrins.d	$a0, $a7, 63, 1
	st.w	$a1, $s2, 36
	move	$a7, $a0
	b	.LBB3_287
.LBB3_211:                              # %if.end1083.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_213
.LBB3_212:                              # %if.end1116.i
                                        #   in Loop: Header=BB3_213 Depth=2
	addi.w	$a5, $a1, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_210
.LBB3_213:                              # %if.end1083.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.214:                              # %if.end1089.i
                                        #   in Loop: Header=BB3_213 Depth=2
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.d	$a1, $a1, 8
	st.w	$a1, $s2, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a0, 12
	beqz	$a6, .LBB3_212
# %bb.215:                              # %if.then1112.i
                                        #   in Loop: Header=BB3_213 Depth=2
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_212
.LBB3_216:                              # %sw.bb1676.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 41
	st.w	$a0, $s2, 8
	blt	$a1, $ra, .LBB3_219
# %bb.217:                              # %sw.bb1676.if.then1683_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_218:                              # %if.then1683.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a1, $a1, -1
	srl.w	$a0, $a4, $a1
	andi	$t1, $a0, 1
	bstrins.d	$a0, $a7, 63, 1
	st.w	$a1, $s2, 36
	move	$a7, $a0
	b	.LBB3_445
.LBB3_219:                              # %if.end1692.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_221
.LBB3_220:                              # %if.end1725.i
                                        #   in Loop: Header=BB3_221 Depth=2
	addi.w	$a5, $a1, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_218
.LBB3_221:                              # %if.end1692.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.222:                              # %if.end1698.i
                                        #   in Loop: Header=BB3_221 Depth=2
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.d	$a1, $a1, 8
	st.w	$a1, $s2, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a0, 12
	beqz	$a6, .LBB3_220
# %bb.223:                              # %if.then1721.i
                                        #   in Loop: Header=BB3_221 Depth=2
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_220
.LBB3_224:                              # %sw.bb1260.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 39
	st.w	$a0, $s2, 8
	blt	$a1, $ra, .LBB3_227
# %bb.225:                              # %sw.bb1260.if.then1267_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_226:                              # %if.then1267.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a1, $a1, -1
	srl.w	$a0, $a4, $a1
	andi	$t1, $a0, 1
	bstrins.d	$a0, $a7, 63, 1
	st.w	$a1, $s2, 36
	move	$a7, $a0
	b	.LBB3_377
.LBB3_227:                              # %if.end1276.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_229
.LBB3_228:                              # %if.end1309.i
                                        #   in Loop: Header=BB3_229 Depth=2
	addi.w	$a5, $a1, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_226
.LBB3_229:                              # %if.end1276.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.230:                              # %if.end1282.i
                                        #   in Loop: Header=BB3_229 Depth=2
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.d	$a1, $a1, 8
	st.w	$a1, $s2, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a0, 12
	beqz	$a6, .LBB3_228
# %bb.231:                              # %if.then1305.i
                                        #   in Loop: Header=BB3_229 Depth=2
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_228
.LBB3_232:                              # %for.cond678.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$a1, $sp, 528                   # 8-byte Folded Spill
	bge	$t8, $t5, .LBB3_241
.LBB3_233:                              # %sw.bb682.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 36
	ori	$a1, $zero, 33
	st.w	$a1, $s2, 8
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB3_236
# %bb.234:                              # %sw.bb682.if.then689_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s2, 32
.LBB3_235:                              # %if.then689.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	addi.d	$a0, $a0, -5
	srl.w	$a1, $a1, $a0
	andi	$a1, $a1, 31
	st.d	$a1, $sp, 512                   # 8-byte Folded Spill
	st.w	$a0, $s2, 36
	b	.LBB3_291
.LBB3_236:                              # %if.end698.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a3, $s2, 0
	ld.w	$a1, $a3, 8
	addi.w	$a4, $a1, -1
	b	.LBB3_238
.LBB3_237:                              # %if.end731.i
                                        #   in Loop: Header=BB3_238 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -4
	addi.w	$a4, $a4, -1
	blt	$a6, $a5, .LBB3_235
.LBB3_238:                              # %if.end698.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a1, $zero, -1
	beq	$a4, $a1, .LBB3_314
# %bb.239:                              # %if.end704.i
                                        #   in Loop: Header=BB3_238 Depth=2
	ld.d	$a5, $a3, 0
	ld.w	$a1, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a1, $a1, 8
	or	$a1, $a1, $a6
	st.w	$a1, $s2, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s2, 36
	ld.wu	$a6, $a3, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a3, 0
	st.w	$a4, $a3, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a3, 12
	beqz	$a6, .LBB3_237
# %bb.240:                              # %if.then727.i
                                        #   in Loop: Header=BB3_238 Depth=2
	ld.w	$a5, $a3, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a3, 16
	b	.LBB3_237
.LBB3_241:                              # %for.cond875.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 224                   # 8-byte Folded Spill
	st.d	$t5, $sp, 384                   # 8-byte Folded Spill
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	blt	$t5, $ra, .LBB3_274
# %bb.242:                              # %for.cond879.preheader.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$s3, $zero
	bstrpick.d	$s0, $t4, 31, 0
	bstrpick.d	$a0, $t4, 30, 3
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$s8, $sp, 240                   # 8-byte Folded Spill
	st.d	$s7, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_244
.LBB3_243:                              # %CreateDecodeTables.exit.i
                                        #   in Loop: Header=BB3_244 Depth=2
	slli.d	$a0, $s3, 2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	stx.w	$fp, $a1, $a0
	addi.d	$s3, $s3, 1
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 258
	addi.d	$s1, $s1, 258
	addi.d	$s5, $s5, 1032
	addi.d	$s2, $s2, 1032
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	beq	$s3, $s4, .LBB3_273
.LBB3_244:                              # %for.cond879.preheader.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_249 Depth 3
                                        #       Child Loop BB3_252 Depth 3
                                        #       Child Loop BB3_255 Depth 3
                                        #         Child Loop BB3_257 Depth 4
                                        #       Child Loop BB3_260 Depth 3
                                        #       Child Loop BB3_264 Depth 3
                                        #       Child Loop BB3_269 Depth 3
                                        #       Child Loop BB3_272 Depth 3
	slli.d	$s4, $s3, 10
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	blez	$t4, .LBB3_247
# %bb.245:                              # %for.body882.lr.ph.i
                                        #   in Loop: Header=BB3_244 Depth=2
	ori	$a0, $zero, 8
	bgeu	$t4, $a0, .LBB3_248
# %bb.246:                              #   in Loop: Header=BB3_244 Depth=2
	move	$a1, $zero
	move	$s7, $zero
	ori	$fp, $zero, 32
	b	.LBB3_251
.LBB3_247:                              # %for.cond12.preheader.i.thread.i
                                        #   in Loop: Header=BB3_244 Depth=2
	alsl.d	$a0, $s3, $s4, 3
	ld.d	$s8, $sp, 480                   # 8-byte Folded Reload
	add.d	$a0, $s8, $a0
	ori	$a2, $zero, 92
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	st.d	$zero, $sp, 432                 # 8-byte Folded Spill
	st.d	$zero, $sp, 424                 # 8-byte Folded Spill
	st.d	$zero, $sp, 416                 # 8-byte Folded Spill
	st.d	$zero, $sp, 408                 # 8-byte Folded Spill
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	move	$t0, $zero
	move	$t1, $zero
	move	$t2, $zero
	move	$t3, $zero
	move	$t4, $zero
	move	$t5, $zero
	move	$t6, $zero
	move	$t7, $zero
	move	$t8, $zero
	move	$ra, $zero
	move	$a4, $zero
	move	$a1, $zero
	move	$a2, $zero
	move	$s6, $zero
	move	$a3, $zero
	ori	$fp, $zero, 32
	b	.LBB3_262
.LBB3_248:                              # %vector.body383.preheader
                                        #   in Loop: Header=BB3_244 Depth=2
	move	$a0, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	vld	$vr3, $sp, 256                  # 16-byte Folded Reload
	vori.b	$vr2, $vr3, 0
	vori.b	$vr0, $vr6, 0
	vori.b	$vr1, $vr6, 0
	.p2align	4, , 16
.LBB3_249:                              # %vector.body383
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, -4
	ld.w	$a3, $a0, 0
	vinsgr2vr.w	$vr4, $a2, 0
	vinsgr2vr.w	$vr5, $a3, 0
	vilvl.b	$vr4, $vr6, $vr4
	vilvl.h	$vr4, $vr6, $vr4
	vilvl.b	$vr5, $vr6, $vr5
	vilvl.h	$vr5, $vr6, $vr5
	vmax.wu	$vr0, $vr0, $vr4
	vmax.wu	$vr1, $vr1, $vr5
	vmin.wu	$vr2, $vr2, $vr4
	vmin.wu	$vr3, $vr3, $vr5
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_249
# %bb.250:                              # %middle.block391
                                        #   in Loop: Header=BB3_244 Depth=2
	vmin.wu	$vr2, $vr2, $vr3
	vshuf4i.w	$vr3, $vr2, 14
	vmin.wu	$vr2, $vr2, $vr3
	vreplvei.w	$vr3, $vr2, 1
	vmin.wu	$vr2, $vr2, $vr3
	vpickve2gr.w	$fp, $vr2, 0
	vmax.wu	$vr0, $vr0, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vmax.wu	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.wu	$vr0, $vr0, $vr1
	vpickve2gr.w	$s7, $vr0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $a0
	beq	$a0, $s0, .LBB3_253
.LBB3_251:                              # %for.body882.i.preheader
                                        #   in Loop: Header=BB3_244 Depth=2
	sub.d	$a0, $s0, $a1
	add.d	$a1, $s1, $a1
	.p2align	4, , 16
.LBB3_252:                              # %for.body882.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $a1, 0
	sltu	$a3, $a2, $s7
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $s7, $a3
	or	$s7, $a3, $a4
	sltu	$a3, $fp, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $fp, $a3
	or	$fp, $a3, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB3_252
.LBB3_253:                              # %for.cond1.preheader.us.i.preheader.i
                                        #   in Loop: Header=BB3_244 Depth=2
	move	$a1, $zero
	alsl.d	$a0, $s3, $s4, 3
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	move	$a6, $fp
	b	.LBB3_255
	.p2align	4, , 16
.LBB3_254:                              # %for.cond1.for.inc9_crit_edge.us.i.i
                                        #   in Loop: Header=BB3_255 Depth=3
	addi.w	$a6, $a3, 1
	beq	$a3, $s7, .LBB3_259
.LBB3_255:                              # %for.cond1.preheader.us.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_244 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_257 Depth 4
	move	$a4, $zero
	move	$a5, $zero
	move	$a3, $a6
	b	.LBB3_257
	.p2align	4, , 16
.LBB3_256:                              # %for.inc.us.i.i
                                        #   in Loop: Header=BB3_257 Depth=4
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 1
	beq	$s0, $a5, .LBB3_254
.LBB3_257:                              # %for.body3.us.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_244 Depth=2
                                        #       Parent Loop BB3_255 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.bu	$a6, $s1, $a5
	bne	$a3, $a6, .LBB3_256
# %bb.258:                              # %if.then.us.i.i
                                        #   in Loop: Header=BB3_257 Depth=4
	slli.d	$a6, $a1, 2
	stx.w	$a4, $a2, $a6
	addi.w	$a1, $a1, 1
	b	.LBB3_256
.LBB3_259:                              # %for.cond12.preheader.i.i
                                        #   in Loop: Header=BB3_244 Depth=2
	st.d	$s4, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
	ori	$a2, $zero, 92
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB3_260:                              # %for.body24.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a1, $s1, $a0
	alsl.d	$a1, $a1, $s4, 2
	ld.w	$a2, $a1, 4
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	st.w	$a2, $a1, 4
	bne	$s0, $a0, .LBB3_260
# %bb.261:                              # %for.cond34.preheader.loopexit.i.i
                                        #   in Loop: Header=BB3_244 Depth=2
	ld.w	$a3, $s4, 4
	ld.w	$s6, $s4, 8
	ld.w	$a2, $s4, 12
	ld.w	$a1, $s4, 16
	ld.w	$a4, $s4, 20
	ld.w	$ra, $s4, 24
	ld.w	$t8, $s4, 28
	ld.w	$t7, $s4, 32
	ld.w	$t6, $s4, 36
	ld.w	$t5, $s4, 40
	ld.w	$t4, $s4, 44
	ld.w	$t3, $s4, 48
	ld.w	$t2, $s4, 52
	ld.w	$t1, $s4, 56
	ld.w	$t0, $s4, 60
	ld.w	$a7, $s4, 64
	ld.w	$a6, $s4, 68
	ld.w	$a5, $s4, 72
	ld.w	$a0, $s4, 76
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.w	$a0, $s4, 80
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.w	$a0, $s4, 84
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.w	$a0, $s4, 88
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 272                   # 8-byte Folded Reload
.LBB3_262:                              # %for.cond34.preheader.i.i
                                        #   in Loop: Header=BB3_244 Depth=2
	alsl.d	$s4, $s3, $s4, 3
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s4
	add.d	$s4, $s8, $s4
	st.w	$a3, $s4, 4
	add.d	$a3, $a3, $s6
	st.w	$a3, $s4, 8
	add.d	$a2, $a3, $a2
	st.w	$a2, $s4, 12
	add.d	$a1, $a2, $a1
	st.w	$a1, $s4, 16
	add.d	$a1, $a1, $a4
	st.w	$a1, $s4, 20
	add.d	$a1, $a1, $ra
	st.w	$a1, $s4, 24
	add.d	$a1, $a1, $t8
	st.w	$a1, $s4, 28
	add.d	$a1, $a1, $t7
	st.w	$a1, $s4, 32
	add.d	$a1, $a1, $t6
	st.w	$a1, $s4, 36
	add.d	$a1, $a1, $t5
	st.w	$a1, $s4, 40
	add.d	$a1, $a1, $t4
	st.w	$a1, $s4, 44
	add.d	$a1, $a1, $t3
	st.w	$a1, $s4, 48
	add.d	$a1, $a1, $t2
	st.w	$a1, $s4, 52
	add.d	$a1, $a1, $t1
	st.w	$a1, $s4, 56
	add.d	$a1, $a1, $t0
	st.w	$a1, $s4, 60
	add.d	$a1, $a1, $a7
	st.w	$a1, $s4, 64
	add.d	$a1, $a1, $a6
	st.w	$a1, $s4, 68
	add.d	$a1, $a1, $a5
	st.w	$a1, $s4, 72
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.w	$a1, $s4, 76
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.w	$a1, $s4, 80
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.w	$a1, $s4, 84
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.w	$a1, $s4, 88
	ori	$a2, $zero, 92
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s6, 1
	ori	$a0, $zero, 1
	ld.d	$t4, $sp, 224                   # 8-byte Folded Reload
	blt	$t4, $a0, .LBB3_265
# %bb.263:                              # %for.body58.preheader.i.i
                                        #   in Loop: Header=BB3_244 Depth=2
	slli.d	$a0, $fp, 2
	ldx.w	$a3, $s4, $a0
	move	$a4, $zero
	addi.w	$a1, $s7, 1
	sub.d	$a1, $a1, $fp
	move	$a2, $s5
	.p2align	4, , 16
.LBB3_264:                              # %for.body58.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $a2, $a0
	ori	$a6, $s6, 2100
	ldx.w	$a5, $a5, $a6
	sub.d	$a3, $a5, $a3
	add.d	$a3, $a3, $a4
	addi.d	$a4, $a3, -1
	stx.w	$a4, $a2, $a0
	slli.d	$a4, $a3, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	move	$a3, $a5
	bnez	$a1, .LBB3_264
.LBB3_265:                              # %for.cond73.preheader.i.i
                                        #   in Loop: Header=BB3_244 Depth=2
	vld	$vr6, $sp, 448                  # 16-byte Folded Reload
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 384                   # 8-byte Folded Reload
	bgeu	$fp, $s7, .LBB3_243
# %bb.266:                              # %for.body76.preheader.i.i
                                        #   in Loop: Header=BB3_244 Depth=2
	bstrpick.d	$a3, $fp, 31, 0
	sub.d	$a1, $s7, $a3
	ori	$a0, $zero, 8
	bgeu	$a1, $a0, .LBB3_268
# %bb.267:                              #   in Loop: Header=BB3_244 Depth=2
	move	$a0, $a3
	b	.LBB3_271
.LBB3_268:                              # %vector.ph366
                                        #   in Loop: Header=BB3_244 Depth=2
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	add.d	$a0, $a2, $a3
	slli.d	$a3, $a3, 2
	move	$a4, $a2
	.p2align	4, , 16
.LBB3_269:                              # %vector.body369
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvldx	$xr0, $s5, $a3
	xvldx	$xr1, $s2, $a3
	xvslli.w	$xr0, $xr0, 1
	xvsub.w	$xr0, $xr0, $xr1
	xvaddi.wu	$xr0, $xr0, 2
	xvstx	$xr0, $s2, $a3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB3_269
# %bb.270:                              # %middle.block375
                                        #   in Loop: Header=BB3_244 Depth=2
	beq	$a1, $a2, .LBB3_243
.LBB3_271:                              # %for.body76.i.i.preheader
                                        #   in Loop: Header=BB3_244 Depth=2
	slli.d	$a1, $a0, 2
	sub.d	$a0, $s7, $a0
	.p2align	4, , 16
.LBB3_272:                              # %for.body76.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a2, $s5, $a1
	ldx.w	$a3, $s2, $a1
	slli.d	$a2, $a2, 1
	sub.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 2
	stx.w	$a2, $s2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB3_272
	b	.LBB3_243
.LBB3_273:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	b	.LBB3_275
.LBB3_274:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s4, $zero
.LBB3_275:                              # %for.end935.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 3192
	ldx.w	$fp, $s2, $a0
	ld.w	$s0, $s2, 40
	ori	$a2, $zero, 1024
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 15
	ori	$a1, $zero, 4080
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	vld	$vr2, $sp, 144                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB3_276:                              # %for.cond953.preheader.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a0, 4
	addi.d	$a5, $a4, 7
	addi.d	$a6, $a4, 6
	addi.d	$a7, $a4, 5
	addi.d	$t0, $a4, 4
	addi.d	$t1, $a4, 3
	addi.d	$t2, $a4, 2
	vinsgr2vr.b	$vr0, $a4, 0
	addi.d	$t3, $a4, 1
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.b	$vr1, $t3, 1
	vinsgr2vr.b	$vr1, $t2, 2
	vinsgr2vr.b	$vr1, $t1, 3
	vinsgr2vr.b	$vr1, $t0, 4
	vinsgr2vr.b	$vr1, $a7, 5
	vinsgr2vr.b	$vr1, $a6, 6
	vinsgr2vr.b	$vr1, $a5, 7
	vinsgr2vr.b	$vr0, $a4, 1
	vinsgr2vr.b	$vr0, $a4, 2
	vinsgr2vr.b	$vr0, $a4, 3
	vinsgr2vr.b	$vr0, $a4, 4
	vinsgr2vr.b	$vr0, $a4, 5
	vinsgr2vr.b	$vr0, $a4, 6
	vinsgr2vr.b	$vr0, $a4, 7
	vor.v	$vr0, $vr0, $vr2
	vpackev.d	$vr0, $vr0, $vr1
	vst	$vr0, $a2, 0
	st.w	$a1, $a3, 0
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -16
	addi.w	$a4, $zero, -1
	addi.d	$a2, $a2, -16
	bne	$a0, $a4, .LBB3_276
# %bb.277:                              # %if.then974.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $fp, 1
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	mul.w	$t3, $s0, $a0
	xvld	$xr3, $sp, 320                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 288                  # 32-byte Folded Reload
	vld	$vr6, $sp, 448                  # 16-byte Folded Reload
	ori	$ra, $zero, 1
	ld.d	$t4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a4, $a0
	blt	$a0, $ra, .LBB3_290
# %bb.278:                              # %if.end999.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.bu	$t0, $a0, 0
	move	$t6, $zero
	move	$s1, $zero
	slli.d	$a0, $t0, 10
	alsl.d	$a0, $t0, $a0, 3
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	slli.d	$a1, $t0, 2
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	ldx.w	$t7, $a2, $a1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ori	$a2, $zero, 256
	ori	$t2, $zero, 49
	move	$fp, $t7
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	move	$t8, $s4
	move	$s4, $a4
.LBB3_279:                              # %sw.bb1001.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 36
	ori	$a1, $zero, 36
	st.w	$a1, $s2, 8
	bge	$a0, $fp, .LBB3_285
# %bb.280:                              # %if.end1019.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_282
.LBB3_281:                              # %if.end1052.i
                                        #   in Loop: Header=BB3_282 Depth=2
	addi.w	$a3, $a3, -1
	bge	$a0, $fp, .LBB3_286
.LBB3_282:                              # %if.end1019.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.283:                              # %if.end1025.i
                                        #   in Loop: Header=BB3_282 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.w	$a0, $a0, 8
	st.w	$a0, $s2, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_281
# %bb.284:                              # %if.then1048.i
                                        #   in Loop: Header=BB3_282 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_281
.LBB3_285:                              # %sw.bb1001.if.then1008_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_286:                              # %if.then1008.i
                                        #   in Loop: Header=BB3_4 Depth=1
	sub.w	$a1, $a0, $fp
	srl.w	$a0, $a4, $a1
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $fp
	andn	$a7, $a0, $a3
	st.w	$a1, $s2, 36
.LBB3_287:                              # %while.cond1054.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a3, $zero, 20
	addi.w	$a0, $zero, -4
	blt	$a3, $fp, .LBB3_446
# %bb.288:                              # %if.end1059.i
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a3, $fp, 2
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	ldx.w	$a4, $a4, $a3
	addi.w	$a5, $a7, 0
	bge	$a4, $a5, .LBB3_346
# %bb.289:                              # %if.end1065.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$fp, $fp, 1
	b	.LBB3_208
.LBB3_290:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t6, $zero
	move	$t2, $zero
	move	$s1, $zero
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	ori	$a2, $zero, 256
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	move	$t8, $s4
	move	$s4, $a4
	b	.LBB3_447
.LBB3_291:                              # %for.cond733.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	bge	$a2, $t4, .LBB3_298
# %bb.292:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$a1, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
.LBB3_293:                              # %while.cond737.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	addi.w	$a0, $a0, -21
	addi.w	$a1, $zero, -20
	bltu	$a0, $a1, .LBB3_329
.LBB3_294:                              # %sw.bb746.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 36
	ori	$a1, $zero, 34
	st.w	$a1, $s2, 8
	blt	$a0, $ra, .LBB3_299
# %bb.295:                              # %sw.bb746.if.then753_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_296:                              # %if.then753.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $a0, -1
	srl.w	$a1, $a4, $a0
	andi	$a1, $a1, 1
	st.w	$a0, $s2, 36
	bnez	$a1, .LBB3_200
# %bb.297:                              # %while.end863.i
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a0, $t8, 8
	alsl.d	$a0, $t8, $a0, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	stx.b	$a1, $a0, $a2
	addi.w	$a2, $a2, 1
	b	.LBB3_291
.LBB3_298:                              # %for.inc872.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t8, $t8, 1
	b	.LBB3_232
.LBB3_299:                              # %if.end763.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_301
.LBB3_300:                              # %if.end796.i
                                        #   in Loop: Header=BB3_301 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_296
.LBB3_301:                              # %if.end763.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.302:                              # %if.end769.i
                                        #   in Loop: Header=BB3_301 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s2, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_300
# %bb.303:                              # %if.then792.i
                                        #   in Loop: Header=BB3_301 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_300
.LBB3_304:                              # %for.cond.i
                                        #   in Loop: Header=BB3_4 Depth=1
	bge	$a2, $a0, .LBB3_308
.LBB3_305:                              # %sw.bb292.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 36
	ori	$a1, $zero, 28
	st.w	$a1, $s2, 8
	blt	$a0, $ra, .LBB3_309
# %bb.306:                              # %sw.bb292.if.then299_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_307:                              # %if.then299.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s2, 36
	srl.w	$a0, $a4, $a0
	andi	$a0, $a0, 1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$a0, $a1, $a2
	addi.w	$a2, $a2, 1
	ori	$a0, $zero, 16
	b	.LBB3_304
.LBB3_308:                              # %for.cond354.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 256
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	move	$a1, $zero
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	st.d	$a3, $sp, 512                   # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	st.d	$a3, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 248                   # 8-byte Folded Spill
	st.d	$s8, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $t4
	move	$s6, $t5
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	st.d	$a3, $sp, 504                   # 8-byte Folded Spill
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $t3
	move	$s1, $t6
	st.d	$t2, $sp, 432                   # 8-byte Folded Spill
	st.d	$t8, $sp, 424                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 432                   # 8-byte Folded Reload
	move	$t6, $s1
	move	$t3, $fp
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	move	$t5, $s6
	move	$t4, $s0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	lu12i.w	$s6, 1
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ori	$ra, $zero, 1
	vld	$vr6, $sp, 448                  # 16-byte Folded Reload
	xvld	$xr4, $sp, 288                  # 32-byte Folded Reload
	xvld	$xr3, $sp, 320                  # 32-byte Folded Reload
	move	$a2, $zero
	b	.LBB3_316
.LBB3_309:                              # %if.end309.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_311
.LBB3_310:                              # %if.end342.i
                                        #   in Loop: Header=BB3_311 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_307
.LBB3_311:                              # %if.end309.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.312:                              # %if.end315.i
                                        #   in Loop: Header=BB3_311 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s2, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_310
# %bb.313:                              # %if.then338.i
                                        #   in Loop: Header=BB3_311 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_310
.LBB3_314:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	move	$a0, $zero
	b	.LBB3_447
.LBB3_315:                              # %for.inc442.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a2, $a2, 1
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
.LBB3_316:                              # %for.cond363.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 15
	st.d	$a1, $sp, 528                   # 8-byte Folded Spill
	blt	$a0, $a2, .LBB3_319
# %bb.317:                              # %for.body366.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $a2
	beqz	$a0, .LBB3_315
# %bb.318:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	b	.LBB3_335
.LBB3_319:                              # %for.end444.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	stptr.w	$zero, $s2, 3192
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ori	$a5, $zero, 256
	b	.LBB3_321
	.p2align	4, , 16
.LBB3_320:                              # %for.inc.i.i
                                        #   in Loop: Header=BB3_321 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $a5, .LBB3_323
.LBB3_321:                              # %for.body.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $sp, 536                   # 8-byte Folded Reload
	ldx.bu	$a3, $a3, $a1
	beqz	$a3, .LBB3_320
# %bb.322:                              # %if.then.i.i
                                        #   in Loop: Header=BB3_321 Depth=2
	stx.b	$a1, $a4, $a0
	ori	$a0, $zero, 3192
	ldx.w	$a0, $s2, $a0
	addi.w	$a0, $a0, 1
	stptr.w	$a0, $s2, 3192
	b	.LBB3_320
.LBB3_323:                              # %makeMaps_d.exit.i
                                        #   in Loop: Header=BB3_4 Depth=1
	beqz	$a0, .LBB3_329
# %bb.324:                              # %if.end448.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t4, $a0, 2
.LBB3_325:                              # %sw.bb451.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 36
	ori	$a1, $zero, 30
	st.w	$a1, $s2, 8
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB3_330
# %bb.326:                              # %sw.bb451.if.then458_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_327:                              # %if.then458.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $a0, -3
	srl.w	$a1, $a4, $a0
	andi	$t5, $a1, 7
	st.w	$a0, $s2, 36
	ori	$a1, $zero, 7
	bltu	$a1, $t5, .LBB3_107
# %bb.328:                              # %if.then458.i
                                        #   in Loop: Header=BB3_4 Depth=1
	sll.d	$a1, $ra, $t5
	andi	$a1, $a1, 131
	beqz	$a1, .LBB3_107
.LBB3_329:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	b	.LBB3_447
.LBB3_330:                              # %if.end467.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_332
.LBB3_331:                              # %if.end500.i
                                        #   in Loop: Header=BB3_332 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -6
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_327
.LBB3_332:                              # %if.end467.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.333:                              # %if.end473.i
                                        #   in Loop: Header=BB3_332 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s2, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_331
# %bb.334:                              # %if.then496.i
                                        #   in Loop: Header=BB3_332 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_331
.LBB3_335:                              # %for.cond372.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 15
	st.d	$a3, $sp, 520                   # 8-byte Folded Spill
	blt	$a0, $a3, .LBB3_315
.LBB3_336:                              # %sw.bb376.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 36
	ori	$a1, $zero, 29
	st.w	$a1, $s2, 8
	blt	$a0, $ra, .LBB3_341
# %bb.337:                              # %sw.bb376.if.then383_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_338:                              # %if.then383.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -1
	srl.w	$a1, $a4, $a0
	andi	$a1, $a1, 1
	st.w	$a0, $s2, 36
	ld.d	$a3, $sp, 520                   # 8-byte Folded Reload
	beqz	$a1, .LBB3_340
# %bb.339:                              # %if.then431.i
                                        #   in Loop: Header=BB3_4 Depth=1
	alsl.w	$a0, $a2, $a3, 4
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	stx.b	$ra, $a1, $a0
.LBB3_340:                              # %for.inc438.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a3, $a3, 1
	b	.LBB3_335
.LBB3_341:                              # %if.end393.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_343
.LBB3_342:                              # %if.end426.i
                                        #   in Loop: Header=BB3_343 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_338
.LBB3_343:                              # %if.end393.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.344:                              # %if.end399.i
                                        #   in Loop: Header=BB3_343 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s2, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_342
# %bb.345:                              # %if.then422.i
                                        #   in Loop: Header=BB3_343 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_342
.LBB3_346:                              # %while.end1120.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a3
	sub.w	$a1, $a7, $a1
	ori	$a3, $zero, 257
	bltu	$a3, $a1, .LBB3_446
# %bb.347:                              # %if.end1133.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 2
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ldx.w	$s8, $a1, $a0
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
.LBB3_348:                              # %while.cond1139.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bne	$s8, $a0, .LBB3_363
# %bb.349:                              # %while.end1748.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s2, 56
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	bltz	$a1, .LBB3_399
# %bb.350:                              # %while.end1748.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 528                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a4, $sp, 528                   # 8-byte Folded Spill
	bge	$a1, $t6, .LBB3_398
# %bb.351:                              # %if.end1757.i
                                        #   in Loop: Header=BB3_4 Depth=1
	xvld	$xr0, $s2, 68
	move	$a1, $zero
	move	$a2, $zero
	xvld	$xr1, $s2, 100
	xvst	$xr0, $s2, 1100
	xvld	$xr0, $s2, 132
	xvld	$xr2, $s2, 164
	xvst	$xr1, $s2, 1132
	xvld	$xr1, $s2, 196
	xvst	$xr0, $s2, 1164
	xvst	$xr2, $s2, 1196
	xvld	$xr0, $s2, 228
	xvst	$xr1, $s2, 1228
	xvld	$xr1, $s2, 260
	xvld	$xr2, $s2, 292
	xvst	$xr0, $s2, 1260
	xvld	$xr0, $s2, 324
	xvst	$xr1, $s2, 1292
	xvst	$xr2, $s2, 1324
	xvld	$xr1, $s2, 356
	xvst	$xr0, $s2, 1356
	xvld	$xr0, $s2, 388
	xvld	$xr2, $s2, 420
	xvst	$xr1, $s2, 1388
	xvld	$xr1, $s2, 452
	xvst	$xr0, $s2, 1420
	xvst	$xr2, $s2, 1452
	xvld	$xr0, $s2, 484
	xvst	$xr1, $s2, 1484
	xvld	$xr1, $s2, 516
	xvld	$xr2, $s2, 548
	xvst	$xr0, $s2, 1516
	xvld	$xr0, $s2, 580
	xvst	$xr1, $s2, 1548
	xvst	$xr2, $s2, 1580
	xvld	$xr1, $s2, 612
	xvst	$xr0, $s2, 1612
	xvld	$xr0, $s2, 644
	xvld	$xr2, $s2, 676
	xvst	$xr1, $s2, 1644
	xvld	$xr1, $s2, 708
	xvst	$xr0, $s2, 1676
	xvst	$xr2, $s2, 1708
	xvld	$xr0, $s2, 740
	xvst	$xr1, $s2, 1740
	xvld	$xr1, $s2, 772
	xvld	$xr2, $s2, 804
	xvst	$xr0, $s2, 1772
	xvld	$xr0, $s2, 836
	xvst	$xr1, $s2, 1804
	xvst	$xr2, $s2, 1836
	xvld	$xr1, $s2, 868
	xvst	$xr0, $s2, 1868
	xvld	$xr0, $s2, 900
	xvld	$xr2, $s2, 932
	xvst	$xr1, $s2, 1900
	xvld	$xr1, $s2, 964
	xvst	$xr0, $s2, 1932
	xvst	$xr2, $s2, 1964
	xvld	$xr0, $s2, 996
	xvst	$xr1, $s2, 1996
	xvld	$xr1, $s2, 1028
	xvld	$xr2, $s2, 1060
	xvst	$xr0, $s2, 2028
	st.w	$zero, $s2, 1096
	ori	$a3, $zero, 2060
	xvstx	$xr1, $s2, $a3
	ori	$a3, $zero, 2092
	xvstx	$xr2, $s2, $a3
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ori	$a5, $zero, 1024
.LBB3_352:                              # %for.body1776.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a3, $a4, $a1
	add.d	$a2, $a3, $a2
	stx.w	$a2, $a4, $a1
	addi.d	$a1, $a1, 4
	bne	$a1, $a5, .LBB3_352
# %bb.353:                              # %for.body1791.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
.LBB3_354:                              # %for.body1791.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a3, $s5, $a1
	bltz	$a3, .LBB3_396
# %bb.355:                              # %for.body1791.i
                                        #   in Loop: Header=BB3_354 Depth=2
	blt	$t6, $a3, .LBB3_396
# %bb.356:                              # %for.inc1805.i
                                        #   in Loop: Header=BB3_354 Depth=2
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 1028
	bne	$a1, $a3, .LBB3_354
# %bb.357:                              # %for.end1807.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a0, $s2, 44
	st.w	$zero, $s2, 16
	st.b	$zero, $s2, 12
	ori	$a1, $zero, 2
	st.w	$a1, $s2, 8
	beqz	$a0, .LBB3_451
# %bb.358:                              # %vector.body
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t7
	move	$t7, $t8
	move	$t8, $s0
	move	$s0, $t0
	st.d	$t2, $sp, 432                   # 8-byte Folded Spill
	move	$a4, $t6
	move	$t6, $s1
	move	$s1, $t3
	move	$t3, $fp
	move	$fp, $a7
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	xvld	$xr0, $s2, 1096
	move	$a0, $zero
	move	$a1, $zero
	xvld	$xr1, $s2, 1128
	ori	$a2, $zero, 2124
	xvstx	$xr0, $s2, $a2
	xvld	$xr0, $s2, 1160
	xvld	$xr2, $s2, 1192
	ori	$a2, $zero, 2156
	xvstx	$xr1, $s2, $a2
	xvld	$xr1, $s2, 1224
	ori	$a2, $zero, 2188
	xvstx	$xr0, $s2, $a2
	ori	$a2, $zero, 2220
	xvstx	$xr2, $s2, $a2
	xvld	$xr0, $s2, 1256
	ori	$a2, $zero, 2252
	xvstx	$xr1, $s2, $a2
	xvld	$xr1, $s2, 1288
	xvld	$xr2, $s2, 1320
	ori	$a2, $zero, 2284
	xvstx	$xr0, $s2, $a2
	xvld	$xr0, $s2, 1352
	ori	$a2, $zero, 2316
	xvstx	$xr1, $s2, $a2
	ori	$a2, $zero, 2348
	xvstx	$xr2, $s2, $a2
	xvld	$xr1, $s2, 1384
	ori	$a2, $zero, 2380
	xvstx	$xr0, $s2, $a2
	xvld	$xr0, $s2, 1416
	xvld	$xr2, $s2, 1448
	ori	$a2, $zero, 2412
	xvstx	$xr1, $s2, $a2
	xvld	$xr1, $s2, 1480
	ori	$a2, $zero, 2444
	xvstx	$xr0, $s2, $a2
	ori	$a2, $zero, 2476
	xvstx	$xr2, $s2, $a2
	xvld	$xr0, $s2, 1512
	ori	$a2, $zero, 2508
	xvstx	$xr1, $s2, $a2
	xvld	$xr1, $s2, 1544
	xvld	$xr2, $s2, 1576
	ori	$a2, $zero, 2540
	xvstx	$xr0, $s2, $a2
	xvld	$xr0, $s2, 1608
	ori	$a2, $zero, 2572
	xvstx	$xr1, $s2, $a2
	ori	$a2, $zero, 2604
	xvstx	$xr2, $s2, $a2
	xvld	$xr1, $s2, 1640
	ori	$a2, $zero, 2636
	xvstx	$xr0, $s2, $a2
	xvld	$xr0, $s2, 1672
	xvld	$xr2, $s2, 1704
	ori	$a2, $zero, 2668
	xvstx	$xr1, $s2, $a2
	xvld	$xr1, $s2, 1736
	ori	$a2, $zero, 2700
	xvstx	$xr0, $s2, $a2
	ori	$a2, $zero, 2732
	xvstx	$xr2, $s2, $a2
	xvld	$xr0, $s2, 1768
	ori	$a2, $zero, 2764
	xvstx	$xr1, $s2, $a2
	xvld	$xr1, $s2, 1800
	xvld	$xr2, $s2, 1832
	ori	$a2, $zero, 2796
	xvstx	$xr0, $s2, $a2
	xvld	$xr0, $s2, 1864
	ori	$a2, $zero, 2828
	xvstx	$xr1, $s2, $a2
	ori	$a2, $zero, 2860
	xvstx	$xr2, $s2, $a2
	xvld	$xr1, $s2, 1896
	ori	$a2, $zero, 2892
	xvstx	$xr0, $s2, $a2
	xvld	$xr0, $s2, 1928
	xvld	$xr2, $s2, 1960
	ori	$a2, $zero, 2924
	xvstx	$xr1, $s2, $a2
	xvld	$xr1, $s2, 1992
	ori	$a2, $zero, 2956
	xvstx	$xr0, $s2, $a2
	ori	$a2, $zero, 2988
	xvstx	$xr2, $s2, $a2
	xvld	$xr0, $s2, 2024
	ori	$a2, $zero, 3020
	xvstx	$xr1, $s2, $a2
	ori	$a2, $zero, 2056
	xvldx	$xr1, $s2, $a2
	ori	$a2, $zero, 2088
	xvldx	$xr2, $s2, $a2
	ori	$a2, $zero, 2120
	ldx.w	$a2, $s2, $a2
	ori	$a3, $zero, 3052
	xvstx	$xr0, $s2, $a3
	ori	$a3, $zero, 3084
	xvstx	$xr1, $s2, $a3
	ori	$a3, $zero, 3116
	xvstx	$xr2, $s2, $a3
	stptr.w	$a2, $s2, 3148
	move	$t2, $a4
	bstrpick.d	$a2, $a4, 31, 0
	b	.LBB3_361
.LBB3_359:                              # %if.else1867.i
                                        #   in Loop: Header=BB3_361 Depth=2
	bstrins.d	$a6, $a7, 63, 4
.LBB3_360:                              # %if.end1885.i
                                        #   in Loop: Header=BB3_361 Depth=2
	alsl.d	$a3, $a3, $t1, 2
	stx.b	$a6, $a4, $a5
	ld.w	$a4, $a3, 0
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2
	beq	$a2, $a1, .LBB3_401
.LBB3_361:                              # %for.body1834.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.d	$a5, $s2, 3160
	ldx.bu	$a3, $a5, $a0
	slli.d	$a4, $a3, 2
	ldx.w	$a7, $t1, $a4
	ldptr.d	$a4, $s2, 3168
	stx.h	$a7, $a5, $a0
	bstrpick.d	$a5, $a1, 31, 1
	ldx.bu	$a6, $a4, $a5
	andi	$t0, $a1, 1
	bstrpick.d	$a7, $a7, 31, 16
	bnez	$t0, .LBB3_359
# %bb.362:                              # %if.then1850.i
                                        #   in Loop: Header=BB3_361 Depth=2
	andi	$a6, $a6, 240
	or	$a6, $a6, $a7
	b	.LBB3_360
.LBB3_363:                              # %if.end1144.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 1
	bltu	$a0, $s8, .LBB3_380
# %bb.364:                              #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a4, $zero, -1
.LBB3_365:                              # %do.body.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	sltui	$a1, $s8, 1
	slli.d	$a3, $a0, 1
	st.d	$a3, $sp, 528                   # 8-byte Folded Spill
	masknez	$a3, $a3, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a3
	add.w	$a4, $a0, $a4
	st.d	$a4, $sp, 464                   # 8-byte Folded Spill
	bnez	$t2, .LBB3_368
# %bb.366:                              # %if.then1167.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $s4, .LBB3_395
# %bb.367:                              # %if.end1172.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ldx.bu	$t0, $a0, $s1
	slli.d	$a0, $t0, 2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ldx.w	$t7, $a1, $a0
	slli.d	$a0, $t0, 10
	alsl.d	$a0, $t0, $a0, 3
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ori	$t2, $zero, 50
.LBB3_368:                              # %if.end1192.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t2, $t2, -1
	move	$fp, $t7
.LBB3_369:                              # %sw.bb1194.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 36
	ori	$a1, $zero, 38
	st.w	$a1, $s2, 8
	bge	$a0, $fp, .LBB3_375
# %bb.370:                              # %if.end1212.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_372
.LBB3_371:                              # %if.end1245.i
                                        #   in Loop: Header=BB3_372 Depth=2
	addi.w	$a3, $a3, -1
	bge	$a0, $fp, .LBB3_376
.LBB3_372:                              # %if.end1212.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.373:                              # %if.end1218.i
                                        #   in Loop: Header=BB3_372 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.w	$a0, $a0, 8
	st.w	$a0, $s2, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_371
# %bb.374:                              # %if.then1241.i
                                        #   in Loop: Header=BB3_372 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_371
.LBB3_375:                              # %sw.bb1194.if.then1201_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_376:                              # %if.then1201.i
                                        #   in Loop: Header=BB3_4 Depth=1
	sub.w	$a1, $a0, $fp
	srl.w	$a0, $a4, $a1
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $fp
	andn	$a7, $a0, $a3
	st.w	$a1, $s2, 36
.LBB3_377:                              # %while.cond1247.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a3, $zero, 20
	addi.w	$a0, $zero, -4
	blt	$a3, $fp, .LBB3_446
# %bb.378:                              # %if.end1252.i
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a3, $fp, 2
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	ldx.w	$a4, $a4, $a3
	addi.w	$a5, $a7, 0
	bge	$a4, $a5, .LBB3_392
# %bb.379:                              # %if.end1258.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$fp, $fp, 1
	b	.LBB3_224
.LBB3_380:                              # %if.else1383.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $zero, -4
	bge	$t6, $t3, .LBB3_397
# %bb.381:                              # %if.end1387.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t7
	move	$t7, $t8
	move	$t8, $s0
	move	$s0, $t0
	st.d	$t3, $sp, 424                   # 8-byte Folded Spill
	move	$t3, $fp
	move	$fp, $a7
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	addi.w	$a3, $s8, -1
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ori	$a1, $zero, 16
	bltu	$a1, $s8, .LBB3_409
# %bb.382:                              # %if.then1394.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a4, $a1, 0
	add.d	$a1, $a4, $a3
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	ldx.bu	$a1, $a5, $a1
	move	$a5, $s8
	ori	$a6, $zero, 4
	bltu	$a3, $a6, .LBB3_385
.LBB3_383:                              # %while.body1404.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a4, $a5
	addi.w	$a6, $a3, -5
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a6, $a7, $a6
	addi.w	$a3, $a3, -4
	stx.w	$a6, $a7, $a3
	addi.w	$a3, $a5, -5
	addi.w	$a5, $a5, -4
	ori	$a6, $zero, 3
	bltu	$a6, $a3, .LBB3_383
# %bb.384:                              # %while.cond1439.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a3, $a5, -1
	beq	$a5, $ra, .LBB3_391
.LBB3_385:                              # %iter.check
                                        #   in Loop: Header=BB3_4 Depth=1
	add.d	$a6, $a3, $a4
	ori	$a5, $zero, 15
	bgeu	$a5, $a3, .LBB3_389
# %bb.386:                              # %vector.scevcheck
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a5, $a6, 0
	addi.w	$a7, $a4, 1
	bltu	$a5, $a7, .LBB3_389
# %bb.387:                              # %vector.scevcheck
                                        #   in Loop: Header=BB3_4 Depth=1
	sub.w	$a7, $zero, $a3
	bltu	$a7, $a4, .LBB3_389
# %bb.388:                              # %vector.memcheck
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a7, $a6, -1
	bstrpick.d	$a7, $a7, 31, 0
	bstrpick.d	$t0, $a6, 31, 0
	sub.d	$a7, $a7, $t0
	ori	$t0, $zero, 32
	bgeu	$a7, $t0, .LBB3_475
.LBB3_389:                              # %while.body1442.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a5, $a6, 0
.LBB3_390:                              # %while.body1442.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a5, -1
	bstrpick.d	$a7, $a6, 31, 0
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ldx.b	$a7, $t0, $a7
	bstrpick.d	$a5, $a5, 31, 0
	addi.w	$a3, $a3, -1
	stx.b	$a7, $t0, $a5
	move	$a5, $a6
	bnez	$a3, .LBB3_390
.LBB3_391:                              # %while.end1453.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	stx.b	$a1, $a3, $a4
	b	.LBB3_419
.LBB3_392:                              # %while.end1313.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a3
	sub.w	$a1, $a7, $a1
	ori	$a3, $zero, 257
	bltu	$a3, $a1, .LBB3_446
# %bb.393:                              # %if.end1326.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 528                   # 8-byte Folded Reload
	st.d	$a3, $sp, 528                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	ldx.w	$s8, $a3, $a1
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bgeu	$s8, $a1, .LBB3_421
# %bb.394:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	b	.LBB3_365
.LBB3_395:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t2, $zero
	b	.LBB3_329
.LBB3_396:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB3_447
.LBB3_397:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	b	.LBB3_400
.LBB3_398:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	b	.LBB3_447
.LBB3_399:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
.LBB3_400:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	st.d	$a1, $sp, 528                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB3_447
.LBB3_401:                              # %for.end1892.loopexit.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a2, $s2, 56
	ldptr.d	$a0, $s2, 3168
	ldptr.d	$a1, $s2, 3160
	slli.d	$a3, $a2, 1
	srai.d	$a4, $a2, 1
	ldx.bu	$a0, $a0, $a4
	ldx.hu	$t1, $a1, $a3
	slli.d	$a1, $a2, 2
	andi	$a1, $a1, 4
	srl.w	$a0, $a0, $a1
	bstrins.d	$t1, $a0, 19, 16
	b	.LBB3_404
.LBB3_402:                              # %if.else1948.i
                                        #   in Loop: Header=BB3_404 Depth=2
	bstrins.d	$a6, $a7, 63, 4
.LBB3_403:                              # %if.end1963.i
                                        #   in Loop: Header=BB3_404 Depth=2
	stx.b	$a6, $a1, $a3
	ld.w	$a6, $s2, 56
	slli.d	$a1, $a2, 2
	andi	$a1, $a1, 4
	srl.w	$a5, $a5, $a1
	bstrins.d	$t1, $a5, 19, 16
	beq	$a4, $a6, .LBB3_406
.LBB3_404:                              # %do.body1909.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a7, $a2
	move	$a2, $t1
	ldptr.d	$a6, $s2, 3160
	addi.w	$a4, $t1, 0
	ldptr.d	$a1, $s2, 3168
	slli.d	$a0, $a4, 1
	ldx.hu	$t1, $a6, $a0
	bstrpick.d	$a3, $a2, 31, 1
	ldx.bu	$a5, $a1, $a3
	stx.h	$a7, $a6, $a0
	ldx.bu	$a6, $a1, $a3
	andi	$t0, $a2, 1
	bstrpick.d	$a7, $a7, 31, 16
	bnez	$t0, .LBB3_402
# %bb.405:                              # %if.then1934.i
                                        #   in Loop: Header=BB3_404 Depth=2
	andi	$a6, $a6, 240
	or	$a6, $a6, $a7
	b	.LBB3_403
.LBB3_406:                              # %do.end1968.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 520                   # 8-byte Folded Spill
	move	$a5, $zero
	st.w	$a2, $s2, 60
	st.w	$zero, $s2, 1092
	ori	$a6, $zero, 256
.LBB3_407:                              # %do.body.i.i53
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.w	$a7, $a5, $a6
	srai.d	$a7, $a7, 1
	slli.d	$t0, $a7, 2
	ldx.w	$t0, $s5, $t0
	slt	$t0, $a4, $t0
	maskeqz	$t1, $a7, $t0
	masknez	$a6, $a6, $t0
	or	$a6, $t1, $a6
	masknez	$a7, $a7, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $a7
	sub.w	$a7, $a6, $a5
	bne	$a7, $ra, .LBB3_407
# %bb.408:                              # %indexIntoF.exit.i64
                                        #   in Loop: Header=BB3_4 Depth=1
	ldptr.d	$a4, $s2, 3168
	ldptr.d	$a6, $s2, 3160
	st.w	$a5, $s2, 64
	ldx.bu	$a4, $a4, $a3
	ldx.hu	$a5, $a6, $a0
	move	$a3, $zero
	move	$a0, $zero
	srl.w	$a1, $a4, $a1
	bstrins.d	$a5, $a1, 19, 16
	st.w	$a5, $s2, 60
	st.w	$ra, $s2, 1092
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	move	$a7, $fp
	move	$fp, $t3
	move	$t3, $s1
	move	$s1, $t6
	move	$t6, $t2
	ld.d	$t2, $sp, 432                   # 8-byte Folded Reload
	move	$t0, $s0
	move	$s0, $t8
	move	$t8, $t7
	move	$t7, $s4
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB3_447
.LBB3_409:                              # %if.else1457.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t2, $sp, 432                   # 8-byte Folded Spill
	move	$t2, $t6
	move	$t6, $s1
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	bstrpick.d	$a5, $a3, 31, 4
	slli.d	$a1, $a5, 2
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$a6, $a4, $a1
	andi	$a7, $a3, 15
	add.w	$a1, $a6, $a7
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	ldx.bu	$a1, $s1, $a1
	alsl.d	$a4, $a5, $a4, 2
	beqz	$a7, .LBB3_412
# %bb.410:                              # %while.body1471.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	andi	$a3, $a3, 15
	add.d	$a3, $a6, $a3
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	add.d	$a7, $a6, $a3
.LBB3_411:                              # %while.body1471.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a6, $a7, -1
	st.b	$a6, $a7, 0
	ld.w	$a6, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a7, $a7, -1
	blt	$a6, $a3, .LBB3_411
.LBB3_412:                              # %while.body1488.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a3, $a6, 1
	st.w	$a3, $a4, 0
	addi.d	$a3, $a5, 1
	move	$s1, $t6
.LBB3_413:                              # %while.body1488.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	ld.w	$a6, $a4, -4
	addi.w	$a5, $a5, -1
	st.w	$a5, $a4, 0
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 15
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, -1
	stx.b	$a6, $a7, $a5
	bltu	$ra, $a3, .LBB3_413
# %bb.414:                              # %while.end1509.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a3, $a4, 0
	addi.w	$a3, $a3, -1
	st.w	$a3, $a4, 0
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	stx.b	$a1, $a5, $a3
	ld.w	$a3, $a4, 0
	bnez	$a3, .LBB3_418
# %bb.415:                              # %for.cond1527.preheader.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	ori	$a4, $zero, 4080
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
.LBB3_416:                              # %for.cond1527.preheader.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a5, 0
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 15
	stx.b	$a6, $t0, $a3
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 14
	add.d	$a7, $t0, $a3
	st.b	$a6, $a7, -1
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 13
	st.b	$a6, $a7, -2
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 12
	st.b	$a6, $a7, -3
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 11
	st.b	$a6, $a7, -4
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 10
	st.b	$a6, $a7, -5
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 9
	st.b	$a6, $a7, -6
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 8
	st.b	$a6, $a7, -7
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 7
	st.b	$a6, $a7, -8
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 6
	st.b	$a6, $a7, -9
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 5
	st.b	$a6, $a7, -10
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 4
	st.b	$a6, $a7, -11
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 3
	st.b	$a6, $a7, -12
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 2
	st.b	$a6, $a7, -13
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s1
	ld.b	$a6, $a6, 1
	st.b	$a6, $a7, -14
	ld.w	$a6, $a5, 0
	ldx.b	$a6, $s1, $a6
	st.b	$a6, $a7, -15
	st.w	$a4, $a5, 0
	addi.d	$a3, $a3, -16
	addi.d	$a5, $a5, -4
	addi.w	$a6, $zero, -256
	addi.d	$a4, $a4, -16
	bne	$a3, $a6, .LBB3_416
# %bb.417:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s1, $t6
.LBB3_418:                              # %if.end1553.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t6, $t2
	ld.d	$t2, $sp, 432                   # 8-byte Folded Reload
.LBB3_419:                              # %if.end1553.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ldx.bu	$a1, $t1, $a1
	slli.d	$a3, $a1, 2
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a4, $a6, $a3
	ld.bu	$a5, $s2, 44
	addi.d	$a4, $a4, 1
	stx.w	$a4, $a6, $a3
	move	$t0, $s0
	beqz	$a5, .LBB3_431
# %bb.420:                              # %if.then1563.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ldptr.d	$a3, $s2, 3160
	slli.d	$a4, $t6, 1
	stx.h	$a1, $a3, $a4
	b	.LBB3_432
.LBB3_421:                              # %do.end.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t2, $sp, 432                   # 8-byte Folded Spill
	move	$t2, $s1
	move	$s1, $t3
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a7
	ldptr.w	$a1, $s2, 7820
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	ldx.bu	$a1, $a3, $a1
	ldx.bu	$a3, $t1, $a1
	slli.d	$a4, $a3, 2
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a5, $a7, $a4
	ld.bu	$a6, $s2, 44
	ld.d	$t3, $sp, 464                   # 8-byte Folded Reload
	addi.w	$a1, $t3, 1
	add.d	$a5, $a5, $a1
	stx.w	$a5, $a7, $a4
	beqz	$a6, .LBB3_455
# %bb.422:                              # %while.cond1351.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	bltz	$t3, .LBB3_458
# %bb.423:                              # %while.body1354.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a7, $t3
	move	$t3, $t6
	slt	$a4, $s1, $t6
	masknez	$a5, $s1, $a4
	maskeqz	$a4, $t6, $a4
	or	$a4, $a4, $a5
	slti	$a5, $a1, 1
	masknez	$a6, $ra, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $a6
	sub.d	$a5, $a7, $a5
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a6, $a4, $t6
	sltu	$a7, $a5, $a6
	masknez	$a6, $a6, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $a6
	bgeu	$ra, $a5, .LBB3_427
# %bb.424:                              # %vector.ph327
                                        #   in Loop: Header=BB3_4 Depth=1
	bstrpick.d	$a5, $a5, 31, 1
	ldptr.d	$a7, $s2, 3160
	slli.d	$a6, $a5, 1
	alsl.d	$a5, $a5, $t3, 1
	sub.w	$a1, $a1, $a6
	alsl.d	$a7, $t3, $a7, 1
	addi.d	$a7, $a7, 2
.LBB3_425:                              # %vector.body331
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a3, $a7, -2
	st.h	$a3, $a7, 0
	addi.d	$a6, $a6, -2
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB3_425
# %bb.426:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t3, $a5
.LBB3_427:                              # %while.body1354.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a5, $t3, 1
	move	$t6, $t3
	sub.d	$a6, $a4, $t3
	move	$a7, $fp
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
.LBB3_428:                              # %while.body1354.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t3, $a1
	beqz	$a6, .LBB3_461
# %bb.429:                              # %if.end1358.i
                                        #   in Loop: Header=BB3_428 Depth=2
	ldptr.d	$a1, $s2, 3160
	stx.h	$a3, $a1, $a5
	addi.w	$a1, $t3, -1
	addi.w	$t6, $t6, 1
	addi.d	$a5, $a5, 2
	addi.d	$a6, $a6, -1
	blt	$ra, $t3, .LBB3_428
# %bb.430:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	b	.LBB3_459
.LBB3_431:                              # %if.else1571.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ldptr.d	$a3, $s2, 3152
	slli.d	$a4, $t6, 2
	stx.w	$a1, $a3, $a4
.LBB3_432:                              # %if.end1579.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	move	$a7, $fp
	move	$s0, $t8
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	addi.w	$t6, $t6, 1
	move	$t8, $t7
	st.d	$a1, $sp, 528                   # 8-byte Folded Spill
	beqz	$t2, .LBB3_434
# %bb.433:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t3, $sp, 424                   # 8-byte Folded Reload
	move	$t7, $s4
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	b	.LBB3_436
.LBB3_434:                              # %if.then1583.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$fp, $t3
	addi.w	$s1, $s1, 1
	ld.d	$t3, $sp, 424                   # 8-byte Folded Reload
	move	$t7, $s4
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	bge	$s1, $s4, .LBB3_460
# %bb.435:                              # %if.end1588.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ldx.bu	$t0, $a0, $s1
	slli.d	$a0, $t0, 2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ldx.w	$t7, $a1, $a0
	slli.d	$a0, $t0, 10
	alsl.d	$a0, $t0, $a0, 3
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ori	$t2, $zero, 50
.LBB3_436:                              # %if.end1608.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t2, $t2, -1
	move	$fp, $t7
.LBB3_437:                              # %sw.bb1610.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 36
	ori	$a1, $zero, 40
	st.w	$a1, $s2, 8
	bge	$a0, $fp, .LBB3_443
# %bb.438:                              # %if.end1628.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_440
.LBB3_439:                              # %if.end1661.i
                                        #   in Loop: Header=BB3_440 Depth=2
	addi.w	$a3, $a3, -1
	bge	$a0, $fp, .LBB3_444
.LBB3_440:                              # %if.end1628.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_314
# %bb.441:                              # %if.end1634.i
                                        #   in Loop: Header=BB3_440 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s2, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s2, 32
	addi.w	$a0, $a0, 8
	st.w	$a0, $s2, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $s7
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_439
# %bb.442:                              # %if.then1657.i
                                        #   in Loop: Header=BB3_440 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_439
.LBB3_443:                              # %sw.bb1610.if.then1617_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s2, 32
.LBB3_444:                              # %if.then1617.i
                                        #   in Loop: Header=BB3_4 Depth=1
	sub.w	$a1, $a0, $fp
	srl.w	$a0, $a4, $a1
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $fp
	andn	$a7, $a0, $a3
	st.w	$a1, $s2, 36
.LBB3_445:                              # %while.cond1663.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a3, $zero, 20
	addi.w	$a0, $zero, -4
	bge	$a3, $fp, .LBB3_449
.LBB3_446:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
.LBB3_447:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	st.w	$a2, $s3, 0
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	st.w	$a1, $s3, 4
	st.w	$t8, $s3, 8
	st.w	$t4, $s3, 12
	st.w	$t5, $s3, 16
	st.w	$s4, $s3, 20
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	st.w	$a1, $s3, 24
	st.w	$s1, $s3, 28
	st.w	$t2, $s3, 32
	st.w	$s8, $s3, 36
	st.w	$t3, $s3, 40
	st.w	$t6, $s3, 44
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	st.w	$a1, $s3, 48
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	st.w	$a1, $s3, 52
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	st.w	$a1, $s3, 56
	st.w	$s0, $s3, 60
	st.w	$fp, $s3, 64
	st.w	$a7, $s3, 68
	st.w	$t1, $s3, 72
	st.w	$t0, $s3, 76
	st.w	$t7, $s3, 80
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	st.d	$a1, $s3, 84
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	st.d	$a1, $s3, 92
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	st.d	$a1, $s3, 100
	bnez	$a3, .LBB3_473
.LBB3_448:                              # %cleanup
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a2, $s2, 8
	ori	$a1, $zero, 2
	ori	$t7, $zero, 2
	ori	$a3, $zero, 10
	beq	$a2, $a1, .LBB3_4
	b	.LBB3_471
.LBB3_449:                              # %if.end1668.i
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a3, $fp, 2
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	ldx.w	$a4, $a4, $a3
	addi.w	$a5, $a7, 0
	bge	$a4, $a5, .LBB3_346
# %bb.450:                              # %if.end1674.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$fp, $fp, 1
	b	.LBB3_216
.LBB3_451:                              # %for.cond1995.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ldptr.d	$a1, $s2, 3152
	move	$a0, $zero
	move	$a2, $a1
	move	$a3, $t6
.LBB3_452:                              # %for.body1998.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $a2, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s5, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a6, $a1, $a5
	or	$a6, $a6, $a0
	stx.w	$a6, $a1, $a5
	ldx.w	$a5, $s5, $a4
	addi.d	$a5, $a5, 1
	stx.w	$a5, $s5, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 256
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB3_452
# %bb.453:                              # %for.end2018.loopexit.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s2, 56
	slli.d	$a0, $a0, 2
	ldx.wu	$a0, $a1, $a0
	ld.w	$a3, $s2, 40
	srli.d	$a2, $a0, 8
	st.w	$a2, $s2, 60
	st.w	$zero, $s2, 1092
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a0
	ori	$a0, $zero, 1
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	bgeu	$a2, $a3, .LBB3_448
# %bb.454:                              # %if.end2032.i
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a0, $a2, 2
	ldx.wu	$a1, $a1, $a0
	move	$a3, $zero
	move	$a0, $zero
	andi	$a2, $a1, 255
	st.w	$a2, $s2, 64
	srli.d	$a1, $a1, 8
	st.w	$a1, $s2, 60
	st.w	$ra, $s2, 1092
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	move	$a2, $t6
	b	.LBB3_447
.LBB3_455:                              # %while.cond1367.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	bltz	$t3, .LBB3_458
# %bb.456:                              # %while.body1370.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t8, $sp, 424                   # 8-byte Folded Spill
	move	$t8, $t0
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	st.d	$a4, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 504                   # 8-byte Folded Reload
	st.d	$a4, $sp, 504                   # 8-byte Folded Spill
	st.d	$t7, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a4, $sp, 512                   # 8-byte Folded Reload
	st.d	$a4, $sp, 512                   # 8-byte Folded Spill
	slt	$a4, $s1, $t6
	masknez	$a5, $s1, $a4
	maskeqz	$a4, $t6, $a4
	or	$a4, $a4, $a5
	slti	$a5, $a1, 1
	masknez	$a6, $ra, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $a6
	sub.d	$a5, $t3, $a5
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a6, $a4, $t6
	sltu	$a7, $a5, $a6
	masknez	$a6, $a6, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $a6
	bltu	$ra, $a5, .LBB3_462
# %bb.457:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t3, $sp, 496                   # 8-byte Folded Reload
	move	$t7, $s4
	move	$t0, $s0
	b	.LBB3_465
.LBB3_458:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	move	$a7, $fp
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
.LBB3_459:                              # %while.cond1139.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t3, $s1
	move	$s1, $t2
	ld.d	$t2, $sp, 432                   # 8-byte Folded Reload
	b	.LBB3_348
.LBB3_460:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t2, $zero
	b	.LBB3_446
.LBB3_461:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t3, $sp, 464                   # 8-byte Folded Spill
	move	$a3, $zero
	move	$t6, $a4
	move	$t3, $s1
	move	$s1, $t2
	ld.d	$t2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB3_447
.LBB3_462:                              # %vector.ph315
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t3, $sp, 496                   # 8-byte Folded Reload
	move	$t7, $s4
	move	$t0, $s0
	bstrpick.d	$a5, $a5, 31, 1
	ldptr.d	$a7, $s2, 3152
	slli.d	$a6, $a5, 1
	alsl.d	$a5, $a5, $t6, 1
	sub.w	$a1, $a1, $a6
	alsl.d	$a7, $t6, $a7, 2
	addi.d	$a7, $a7, 4
.LBB3_463:                              # %vector.body316
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a7, -4
	st.w	$a3, $a7, 0
	addi.d	$a6, $a6, -2
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB3_463
# %bb.464:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t6, $a5
.LBB3_465:                              # %while.body1370.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a5, $t6, 2
	sub.d	$a6, $a4, $t6
	st.d	$t3, $sp, 496                   # 8-byte Folded Spill
.LBB3_466:                              # %while.body1370.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a7, $a1
	beqz	$a6, .LBB3_469
# %bb.467:                              # %if.end1374.i
                                        #   in Loop: Header=BB3_466 Depth=2
	ldptr.d	$a1, $s2, 3152
	stx.w	$a3, $a1, $a5
	addi.w	$a1, $a7, -1
	addi.w	$t6, $t6, 1
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, -1
	blt	$ra, $a7, .LBB3_466
# %bb.468:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	xvld	$xr3, $sp, 320                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 288                  # 32-byte Folded Reload
	vld	$vr6, $sp, 448                  # 16-byte Folded Reload
	move	$s0, $t0
	move	$t0, $t8
	move	$s4, $t7
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	move	$a7, $fp
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	move	$t3, $s1
	move	$s1, $t2
	ld.d	$t2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 424                   # 8-byte Folded Reload
	b	.LBB3_348
.LBB3_469:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$a7, $sp, 464                   # 8-byte Folded Spill
	move	$a3, $zero
	move	$t6, $a4
	xvld	$xr3, $sp, 320                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 288                  # 32-byte Folded Reload
	vld	$vr6, $sp, 448                  # 16-byte Folded Reload
	move	$s0, $t0
	move	$t0, $t8
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	move	$s4, $t7
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	move	$a7, $fp
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	move	$t3, $s1
	move	$s1, $t2
	ld.d	$t2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 424                   # 8-byte Folded Reload
	b	.LBB3_447
.LBB3_470:                              # %cleanup40.loopexit625
	addi.w	$a0, $zero, -1
.LBB3_471:                              # %cleanup40
	ld.d	$s8, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 616                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 632                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 640
	ret
.LBB3_472:
	addi.w	$a0, $zero, -4
	b	.LBB3_471
.LBB3_473:
	ori	$a0, $zero, 4
	b	.LBB3_471
.LBB3_474:
	move	$a0, $zero
	b	.LBB3_471
.LBB3_475:                              # %vector.main.loop.iter.check
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	ori	$a0, $zero, 32
	bgeu	$a3, $a0, .LBB3_478
# %bb.476:                              # %vec.epilog.vector.body.preheader
	addi.w	$a0, $a6, 0
	move	$a2, $s1
.LBB3_477:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a1, $a2, $a1
	vld	$vr0, $a1, -15
	bstrpick.d	$a1, $a0, 31, 0
	add.d	$a1, $a2, $a1
	vst	$vr0, $a1, -15
	addi.w	$a0, $a0, -16
	b	.LBB3_477
.LBB3_478:                              # %vector.body348.preheader
	move	$a1, $s1
.LBB3_479:                              # %vector.body348
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a5, -1
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $a1, $a0
	xvld	$xr0, $a0, -31
	bstrpick.d	$a0, $a5, 31, 0
	add.d	$a0, $a1, $a0
	xvst	$xr0, $a0, -31
	addi.w	$a5, $a5, -32
	b	.LBB3_479
.Lfunc_end3:
	.size	nsis_BZ2_bzDecompress, .Lfunc_end3-nsis_BZ2_bzDecompress
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_83-.LJTI3_0
	.word	.LBB3_447-.LJTI3_0
	.word	.LBB3_447-.LJTI3_0
	.word	.LBB3_447-.LJTI3_0
	.word	.LBB3_447-.LJTI3_0
	.word	.LBB3_447-.LJTI3_0
	.word	.LBB3_447-.LJTI3_0
	.word	.LBB3_447-.LJTI3_0
	.word	.LBB3_447-.LJTI3_0
	.word	.LBB3_447-.LJTI3_0
	.word	.LBB3_447-.LJTI3_0
	.word	.LBB3_80-.LJTI3_0
	.word	.LBB3_123-.LJTI3_0
	.word	.LBB3_122-.LJTI3_0
	.word	.LBB3_305-.LJTI3_0
	.word	.LBB3_336-.LJTI3_0
	.word	.LBB3_325-.LJTI3_0
	.word	.LBB3_106-.LJTI3_0
	.word	.LBB3_112-.LJTI3_0
	.word	.LBB3_233-.LJTI3_0
	.word	.LBB3_294-.LJTI3_0
	.word	.LBB3_143-.LJTI3_0
	.word	.LBB3_279-.LJTI3_0
	.word	.LBB3_144-.LJTI3_0
	.word	.LBB3_369-.LJTI3_0
	.word	.LBB3_146-.LJTI3_0
	.word	.LBB3_437-.LJTI3_0
	.word	.LBB3_145-.LJTI3_0
                                        # -- End function
	.text
	.globl	nsis_BZ2_bzDecompressEnd        # -- Begin function nsis_BZ2_bzDecompressEnd
	.p2align	5
	.type	nsis_BZ2_bzDecompressEnd,@function
nsis_BZ2_bzDecompressEnd:               # @nsis_BZ2_bzDecompressEnd
# %bb.0:                                # %entry
	addi.w	$a1, $zero, -2
	beqz	$a0, .LBB4_11
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s0, $a0, 48
	beqz	$s0, .LBB4_10
# %bb.2:                                # %if.end3
	ld.d	$a2, $s0, 0
	bne	$a2, $a0, .LBB4_10
# %bb.3:                                # %if.end7
	ldptr.d	$a1, $s0, 3152
	move	$fp, $a0
	beqz	$a1, .LBB4_5
# %bb.4:                                # %if.then9
	ld.d	$a2, $a0, 64
	ld.d	$a0, $a0, 72
	jirl	$ra, $a2, 0
	move	$a0, $fp
.LBB4_5:                                # %if.end11
	ldptr.d	$a1, $s0, 3160
	beqz	$a1, .LBB4_7
# %bb.6:                                # %if.then13
	ld.d	$a2, $a0, 64
	ld.d	$a0, $a0, 72
	jirl	$ra, $a2, 0
	move	$a0, $fp
.LBB4_7:                                # %if.end17
	ldptr.d	$a1, $s0, 3168
	beqz	$a1, .LBB4_9
# %bb.8:                                # %if.then19
	ld.d	$a2, $a0, 64
	ld.d	$a0, $a0, 72
	jirl	$ra, $a2, 0
	move	$a0, $fp
.LBB4_9:                                # %if.end23
	ld.d	$a3, $a0, 64
	ld.d	$a2, $a0, 72
	ld.d	$a1, $a0, 48
	move	$fp, $a0
	move	$a0, $a2
	jirl	$ra, $a3, 0
	move	$a1, $zero
	st.d	$zero, $fp, 48
.LBB4_10:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB4_11:                               # %cleanup
	move	$a0, $a1
	ret
.Lfunc_end4:
	.size	nsis_BZ2_bzDecompressEnd, .Lfunc_end4-nsis_BZ2_bzDecompressEnd
                                        # -- End function
	.type	BZ2_rNums,@object               # @BZ2_rNums
	.section	.rodata,"a",@progbits
	.globl	BZ2_rNums
	.p2align	2, 0x0
BZ2_rNums:
	.word	619                             # 0x26b
	.word	720                             # 0x2d0
	.word	127                             # 0x7f
	.word	481                             # 0x1e1
	.word	931                             # 0x3a3
	.word	816                             # 0x330
	.word	813                             # 0x32d
	.word	233                             # 0xe9
	.word	566                             # 0x236
	.word	247                             # 0xf7
	.word	985                             # 0x3d9
	.word	724                             # 0x2d4
	.word	205                             # 0xcd
	.word	454                             # 0x1c6
	.word	863                             # 0x35f
	.word	491                             # 0x1eb
	.word	741                             # 0x2e5
	.word	242                             # 0xf2
	.word	949                             # 0x3b5
	.word	214                             # 0xd6
	.word	733                             # 0x2dd
	.word	859                             # 0x35b
	.word	335                             # 0x14f
	.word	708                             # 0x2c4
	.word	621                             # 0x26d
	.word	574                             # 0x23e
	.word	73                              # 0x49
	.word	654                             # 0x28e
	.word	730                             # 0x2da
	.word	472                             # 0x1d8
	.word	419                             # 0x1a3
	.word	436                             # 0x1b4
	.word	278                             # 0x116
	.word	496                             # 0x1f0
	.word	867                             # 0x363
	.word	210                             # 0xd2
	.word	399                             # 0x18f
	.word	680                             # 0x2a8
	.word	480                             # 0x1e0
	.word	51                              # 0x33
	.word	878                             # 0x36e
	.word	465                             # 0x1d1
	.word	811                             # 0x32b
	.word	169                             # 0xa9
	.word	869                             # 0x365
	.word	675                             # 0x2a3
	.word	611                             # 0x263
	.word	697                             # 0x2b9
	.word	867                             # 0x363
	.word	561                             # 0x231
	.word	862                             # 0x35e
	.word	687                             # 0x2af
	.word	507                             # 0x1fb
	.word	283                             # 0x11b
	.word	482                             # 0x1e2
	.word	129                             # 0x81
	.word	807                             # 0x327
	.word	591                             # 0x24f
	.word	733                             # 0x2dd
	.word	623                             # 0x26f
	.word	150                             # 0x96
	.word	238                             # 0xee
	.word	59                              # 0x3b
	.word	379                             # 0x17b
	.word	684                             # 0x2ac
	.word	877                             # 0x36d
	.word	625                             # 0x271
	.word	169                             # 0xa9
	.word	643                             # 0x283
	.word	105                             # 0x69
	.word	170                             # 0xaa
	.word	607                             # 0x25f
	.word	520                             # 0x208
	.word	932                             # 0x3a4
	.word	727                             # 0x2d7
	.word	476                             # 0x1dc
	.word	693                             # 0x2b5
	.word	425                             # 0x1a9
	.word	174                             # 0xae
	.word	647                             # 0x287
	.word	73                              # 0x49
	.word	122                             # 0x7a
	.word	335                             # 0x14f
	.word	530                             # 0x212
	.word	442                             # 0x1ba
	.word	853                             # 0x355
	.word	695                             # 0x2b7
	.word	249                             # 0xf9
	.word	445                             # 0x1bd
	.word	515                             # 0x203
	.word	909                             # 0x38d
	.word	545                             # 0x221
	.word	703                             # 0x2bf
	.word	919                             # 0x397
	.word	874                             # 0x36a
	.word	474                             # 0x1da
	.word	882                             # 0x372
	.word	500                             # 0x1f4
	.word	594                             # 0x252
	.word	612                             # 0x264
	.word	641                             # 0x281
	.word	801                             # 0x321
	.word	220                             # 0xdc
	.word	162                             # 0xa2
	.word	819                             # 0x333
	.word	984                             # 0x3d8
	.word	589                             # 0x24d
	.word	513                             # 0x201
	.word	495                             # 0x1ef
	.word	799                             # 0x31f
	.word	161                             # 0xa1
	.word	604                             # 0x25c
	.word	958                             # 0x3be
	.word	533                             # 0x215
	.word	221                             # 0xdd
	.word	400                             # 0x190
	.word	386                             # 0x182
	.word	867                             # 0x363
	.word	600                             # 0x258
	.word	782                             # 0x30e
	.word	382                             # 0x17e
	.word	596                             # 0x254
	.word	414                             # 0x19e
	.word	171                             # 0xab
	.word	516                             # 0x204
	.word	375                             # 0x177
	.word	682                             # 0x2aa
	.word	485                             # 0x1e5
	.word	911                             # 0x38f
	.word	276                             # 0x114
	.word	98                              # 0x62
	.word	553                             # 0x229
	.word	163                             # 0xa3
	.word	354                             # 0x162
	.word	666                             # 0x29a
	.word	933                             # 0x3a5
	.word	424                             # 0x1a8
	.word	341                             # 0x155
	.word	533                             # 0x215
	.word	870                             # 0x366
	.word	227                             # 0xe3
	.word	730                             # 0x2da
	.word	475                             # 0x1db
	.word	186                             # 0xba
	.word	263                             # 0x107
	.word	647                             # 0x287
	.word	537                             # 0x219
	.word	686                             # 0x2ae
	.word	600                             # 0x258
	.word	224                             # 0xe0
	.word	469                             # 0x1d5
	.word	68                              # 0x44
	.word	770                             # 0x302
	.word	919                             # 0x397
	.word	190                             # 0xbe
	.word	373                             # 0x175
	.word	294                             # 0x126
	.word	822                             # 0x336
	.word	808                             # 0x328
	.word	206                             # 0xce
	.word	184                             # 0xb8
	.word	943                             # 0x3af
	.word	795                             # 0x31b
	.word	384                             # 0x180
	.word	383                             # 0x17f
	.word	461                             # 0x1cd
	.word	404                             # 0x194
	.word	758                             # 0x2f6
	.word	839                             # 0x347
	.word	887                             # 0x377
	.word	715                             # 0x2cb
	.word	67                              # 0x43
	.word	618                             # 0x26a
	.word	276                             # 0x114
	.word	204                             # 0xcc
	.word	918                             # 0x396
	.word	873                             # 0x369
	.word	777                             # 0x309
	.word	604                             # 0x25c
	.word	560                             # 0x230
	.word	951                             # 0x3b7
	.word	160                             # 0xa0
	.word	578                             # 0x242
	.word	722                             # 0x2d2
	.word	79                              # 0x4f
	.word	804                             # 0x324
	.word	96                              # 0x60
	.word	409                             # 0x199
	.word	713                             # 0x2c9
	.word	940                             # 0x3ac
	.word	652                             # 0x28c
	.word	934                             # 0x3a6
	.word	970                             # 0x3ca
	.word	447                             # 0x1bf
	.word	318                             # 0x13e
	.word	353                             # 0x161
	.word	859                             # 0x35b
	.word	672                             # 0x2a0
	.word	112                             # 0x70
	.word	785                             # 0x311
	.word	645                             # 0x285
	.word	863                             # 0x35f
	.word	803                             # 0x323
	.word	350                             # 0x15e
	.word	139                             # 0x8b
	.word	93                              # 0x5d
	.word	354                             # 0x162
	.word	99                              # 0x63
	.word	820                             # 0x334
	.word	908                             # 0x38c
	.word	609                             # 0x261
	.word	772                             # 0x304
	.word	154                             # 0x9a
	.word	274                             # 0x112
	.word	580                             # 0x244
	.word	184                             # 0xb8
	.word	79                              # 0x4f
	.word	626                             # 0x272
	.word	630                             # 0x276
	.word	742                             # 0x2e6
	.word	653                             # 0x28d
	.word	282                             # 0x11a
	.word	762                             # 0x2fa
	.word	623                             # 0x26f
	.word	680                             # 0x2a8
	.word	81                              # 0x51
	.word	927                             # 0x39f
	.word	626                             # 0x272
	.word	789                             # 0x315
	.word	125                             # 0x7d
	.word	411                             # 0x19b
	.word	521                             # 0x209
	.word	938                             # 0x3aa
	.word	300                             # 0x12c
	.word	821                             # 0x335
	.word	78                              # 0x4e
	.word	343                             # 0x157
	.word	175                             # 0xaf
	.word	128                             # 0x80
	.word	250                             # 0xfa
	.word	170                             # 0xaa
	.word	774                             # 0x306
	.word	972                             # 0x3cc
	.word	275                             # 0x113
	.word	999                             # 0x3e7
	.word	639                             # 0x27f
	.word	495                             # 0x1ef
	.word	78                              # 0x4e
	.word	352                             # 0x160
	.word	126                             # 0x7e
	.word	857                             # 0x359
	.word	956                             # 0x3bc
	.word	358                             # 0x166
	.word	619                             # 0x26b
	.word	580                             # 0x244
	.word	124                             # 0x7c
	.word	737                             # 0x2e1
	.word	594                             # 0x252
	.word	701                             # 0x2bd
	.word	612                             # 0x264
	.word	669                             # 0x29d
	.word	112                             # 0x70
	.word	134                             # 0x86
	.word	694                             # 0x2b6
	.word	363                             # 0x16b
	.word	992                             # 0x3e0
	.word	809                             # 0x329
	.word	743                             # 0x2e7
	.word	168                             # 0xa8
	.word	974                             # 0x3ce
	.word	944                             # 0x3b0
	.word	375                             # 0x177
	.word	748                             # 0x2ec
	.word	52                              # 0x34
	.word	600                             # 0x258
	.word	747                             # 0x2eb
	.word	642                             # 0x282
	.word	182                             # 0xb6
	.word	862                             # 0x35e
	.word	81                              # 0x51
	.word	344                             # 0x158
	.word	805                             # 0x325
	.word	988                             # 0x3dc
	.word	739                             # 0x2e3
	.word	511                             # 0x1ff
	.word	655                             # 0x28f
	.word	814                             # 0x32e
	.word	334                             # 0x14e
	.word	249                             # 0xf9
	.word	515                             # 0x203
	.word	897                             # 0x381
	.word	955                             # 0x3bb
	.word	664                             # 0x298
	.word	981                             # 0x3d5
	.word	649                             # 0x289
	.word	113                             # 0x71
	.word	974                             # 0x3ce
	.word	459                             # 0x1cb
	.word	893                             # 0x37d
	.word	228                             # 0xe4
	.word	433                             # 0x1b1
	.word	837                             # 0x345
	.word	553                             # 0x229
	.word	268                             # 0x10c
	.word	926                             # 0x39e
	.word	240                             # 0xf0
	.word	102                             # 0x66
	.word	654                             # 0x28e
	.word	459                             # 0x1cb
	.word	51                              # 0x33
	.word	686                             # 0x2ae
	.word	754                             # 0x2f2
	.word	806                             # 0x326
	.word	760                             # 0x2f8
	.word	493                             # 0x1ed
	.word	403                             # 0x193
	.word	415                             # 0x19f
	.word	394                             # 0x18a
	.word	687                             # 0x2af
	.word	700                             # 0x2bc
	.word	946                             # 0x3b2
	.word	670                             # 0x29e
	.word	656                             # 0x290
	.word	610                             # 0x262
	.word	738                             # 0x2e2
	.word	392                             # 0x188
	.word	760                             # 0x2f8
	.word	799                             # 0x31f
	.word	887                             # 0x377
	.word	653                             # 0x28d
	.word	978                             # 0x3d2
	.word	321                             # 0x141
	.word	576                             # 0x240
	.word	617                             # 0x269
	.word	626                             # 0x272
	.word	502                             # 0x1f6
	.word	894                             # 0x37e
	.word	679                             # 0x2a7
	.word	243                             # 0xf3
	.word	440                             # 0x1b8
	.word	680                             # 0x2a8
	.word	879                             # 0x36f
	.word	194                             # 0xc2
	.word	572                             # 0x23c
	.word	640                             # 0x280
	.word	724                             # 0x2d4
	.word	926                             # 0x39e
	.word	56                              # 0x38
	.word	204                             # 0xcc
	.word	700                             # 0x2bc
	.word	707                             # 0x2c3
	.word	151                             # 0x97
	.word	457                             # 0x1c9
	.word	449                             # 0x1c1
	.word	797                             # 0x31d
	.word	195                             # 0xc3
	.word	791                             # 0x317
	.word	558                             # 0x22e
	.word	945                             # 0x3b1
	.word	679                             # 0x2a7
	.word	297                             # 0x129
	.word	59                              # 0x3b
	.word	87                              # 0x57
	.word	824                             # 0x338
	.word	713                             # 0x2c9
	.word	663                             # 0x297
	.word	412                             # 0x19c
	.word	693                             # 0x2b5
	.word	342                             # 0x156
	.word	606                             # 0x25e
	.word	134                             # 0x86
	.word	108                             # 0x6c
	.word	571                             # 0x23b
	.word	364                             # 0x16c
	.word	631                             # 0x277
	.word	212                             # 0xd4
	.word	174                             # 0xae
	.word	643                             # 0x283
	.word	304                             # 0x130
	.word	329                             # 0x149
	.word	343                             # 0x157
	.word	97                              # 0x61
	.word	430                             # 0x1ae
	.word	751                             # 0x2ef
	.word	497                             # 0x1f1
	.word	314                             # 0x13a
	.word	983                             # 0x3d7
	.word	374                             # 0x176
	.word	822                             # 0x336
	.word	928                             # 0x3a0
	.word	140                             # 0x8c
	.word	206                             # 0xce
	.word	73                              # 0x49
	.word	263                             # 0x107
	.word	980                             # 0x3d4
	.word	736                             # 0x2e0
	.word	876                             # 0x36c
	.word	478                             # 0x1de
	.word	430                             # 0x1ae
	.word	305                             # 0x131
	.word	170                             # 0xaa
	.word	514                             # 0x202
	.word	364                             # 0x16c
	.word	692                             # 0x2b4
	.word	829                             # 0x33d
	.word	82                              # 0x52
	.word	855                             # 0x357
	.word	953                             # 0x3b9
	.word	676                             # 0x2a4
	.word	246                             # 0xf6
	.word	369                             # 0x171
	.word	970                             # 0x3ca
	.word	294                             # 0x126
	.word	750                             # 0x2ee
	.word	807                             # 0x327
	.word	827                             # 0x33b
	.word	150                             # 0x96
	.word	790                             # 0x316
	.word	288                             # 0x120
	.word	923                             # 0x39b
	.word	804                             # 0x324
	.word	378                             # 0x17a
	.word	215                             # 0xd7
	.word	828                             # 0x33c
	.word	592                             # 0x250
	.word	281                             # 0x119
	.word	565                             # 0x235
	.word	555                             # 0x22b
	.word	710                             # 0x2c6
	.word	82                              # 0x52
	.word	896                             # 0x380
	.word	831                             # 0x33f
	.word	547                             # 0x223
	.word	261                             # 0x105
	.word	524                             # 0x20c
	.word	462                             # 0x1ce
	.word	293                             # 0x125
	.word	465                             # 0x1d1
	.word	502                             # 0x1f6
	.word	56                              # 0x38
	.word	661                             # 0x295
	.word	821                             # 0x335
	.word	976                             # 0x3d0
	.word	991                             # 0x3df
	.word	658                             # 0x292
	.word	869                             # 0x365
	.word	905                             # 0x389
	.word	758                             # 0x2f6
	.word	745                             # 0x2e9
	.word	193                             # 0xc1
	.word	768                             # 0x300
	.word	550                             # 0x226
	.word	608                             # 0x260
	.word	933                             # 0x3a5
	.word	378                             # 0x17a
	.word	286                             # 0x11e
	.word	215                             # 0xd7
	.word	979                             # 0x3d3
	.word	792                             # 0x318
	.word	961                             # 0x3c1
	.word	61                              # 0x3d
	.word	688                             # 0x2b0
	.word	793                             # 0x319
	.word	644                             # 0x284
	.word	986                             # 0x3da
	.word	403                             # 0x193
	.word	106                             # 0x6a
	.word	366                             # 0x16e
	.word	905                             # 0x389
	.word	644                             # 0x284
	.word	372                             # 0x174
	.word	567                             # 0x237
	.word	466                             # 0x1d2
	.word	434                             # 0x1b2
	.word	645                             # 0x285
	.word	210                             # 0xd2
	.word	389                             # 0x185
	.word	550                             # 0x226
	.word	919                             # 0x397
	.word	135                             # 0x87
	.word	780                             # 0x30c
	.word	773                             # 0x305
	.word	635                             # 0x27b
	.word	389                             # 0x185
	.word	707                             # 0x2c3
	.word	100                             # 0x64
	.word	626                             # 0x272
	.word	958                             # 0x3be
	.word	165                             # 0xa5
	.word	504                             # 0x1f8
	.word	920                             # 0x398
	.word	176                             # 0xb0
	.word	193                             # 0xc1
	.word	713                             # 0x2c9
	.word	857                             # 0x359
	.word	265                             # 0x109
	.word	203                             # 0xcb
	.word	50                              # 0x32
	.word	668                             # 0x29c
	.word	108                             # 0x6c
	.word	645                             # 0x285
	.word	990                             # 0x3de
	.word	626                             # 0x272
	.word	197                             # 0xc5
	.word	510                             # 0x1fe
	.word	357                             # 0x165
	.word	358                             # 0x166
	.word	850                             # 0x352
	.word	858                             # 0x35a
	.word	364                             # 0x16c
	.word	936                             # 0x3a8
	.word	638                             # 0x27e
	.size	BZ2_rNums, 2048

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym default_bzalloc
	.addrsig_sym default_bzfree
