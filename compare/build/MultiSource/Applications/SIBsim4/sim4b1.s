	.file	"sim4b1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function SIM4
.LCPI0_0:
	.dword	0x3fc3333333333334              # double 0.15000000000000002
.LCPI0_1:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
.LCPI0_2:
	.dword	0x3ff3333333333333              # double 1.2
.LCPI0_4:
	.dword	0x408f400000000000              # double 1000
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_3:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.text
	.globl	SIM4
	.p2align	5
	.type	SIM4,@function
SIM4:                                   # @SIM4
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 616                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 608                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 600                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 592                  # 8-byte Folded Spill
	move	$s3, $a0
	ld.w	$a0, $a0, 16
	beqz	$a0, .LBB0_638
# %bb.1:                                # %lor.lhs.false
	ldptr.w	$a0, $a1, 4148
	beqz	$a0, .LBB0_638
# %bb.2:                                # %if.end
	move	$s4, $a2
	ori	$a0, $zero, 0
	lu32i.d	$a0, 5
	st.d	$a0, $sp, 560
	ori	$a0, $zero, 40
	move	$fp, $a1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(options)
	ld.d	$a3, $a1, %got_pc_lo12(options)
	ld.d	$a1, $fp, 16
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	ldptr.w	$a2, $fp, 4148
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
	ld.w	$a5, $a3, 40
	st.d	$a0, $sp, 552
	st.d	$zero, $sp, 0
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	addi.d	$a6, $sp, 552
	move	$a0, $s3
	move	$a7, $s4
	pcaddu18i	$ra, %call36(exon_cores)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 304                  # 16-byte Folded Spill
	vst	$vr0, $sp, 536
	beqz	$a0, .LBB0_636
# %bb.3:                                # %for.body.lr.ph
	move	$s5, $zero
	addi.w	$a0, $zero, -62
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(free)
	ld.d	$a0, $a0, %got_pc_lo12(free)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	lu12i.w	$s8, 1024
	lu12i.w	$a0, 244
	ori	$a0, $a0, 575
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	vrepli.w	$vr0, 1
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	lu12i.w	$a0, -4096
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_4:                                # %free_align.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
.LBB0_5:                                # %cleanup599
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.wu	$a0, $s4, 8
	addi.d	$s5, $s5, 1
	bgeu	$s5, $a0, .LBB0_635
.LBB0_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_49 Depth 2
                                        #     Child Loop BB0_53 Depth 2
                                        #     Child Loop BB0_56 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_65 Depth 2
                                        #     Child Loop BB0_69 Depth 2
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_87 Depth 3
                                        #         Child Loop BB0_96 Depth 4
                                        #       Child Loop BB0_105 Depth 3
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_120 Depth 3
                                        #     Child Loop BB0_128 Depth 2
                                        #     Child Loop BB0_139 Depth 2
                                        #     Child Loop BB0_142 Depth 2
                                        #     Child Loop BB0_146 Depth 2
                                        #     Child Loop BB0_154 Depth 2
                                        #     Child Loop BB0_161 Depth 2
                                        #     Child Loop BB0_168 Depth 2
                                        #     Child Loop BB0_179 Depth 2
                                        #       Child Loop BB0_194 Depth 3
                                        #         Child Loop BB0_206 Depth 4
                                        #       Child Loop BB0_217 Depth 3
                                        #       Child Loop BB0_224 Depth 3
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_229 Depth 3
                                        #     Child Loop BB0_631 Depth 2
                                        #     Child Loop BB0_244 Depth 2
                                        #       Child Loop BB0_252 Depth 3
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_276 Depth 3
                                        #       Child Loop BB0_279 Depth 3
                                        #       Child Loop BB0_282 Depth 3
                                        #       Child Loop BB0_295 Depth 3
                                        #       Child Loop BB0_299 Depth 3
                                        #       Child Loop BB0_302 Depth 3
                                        #       Child Loop BB0_351 Depth 3
                                        #       Child Loop BB0_355 Depth 3
                                        #       Child Loop BB0_359 Depth 3
                                        #       Child Loop BB0_363 Depth 3
                                        #         Child Loop BB0_395 Depth 4
                                        #           Child Loop BB0_405 Depth 5
                                        #         Child Loop BB0_414 Depth 4
                                        #         Child Loop BB0_368 Depth 4
                                        #         Child Loop BB0_375 Depth 4
                                        #           Child Loop BB0_387 Depth 5
                                        #         Child Loop BB0_410 Depth 4
                                        #         Child Loop BB0_419 Depth 4
                                        #       Child Loop BB0_341 Depth 3
                                        #       Child Loop BB0_346 Depth 3
                                        #       Child Loop BB0_325 Depth 3
                                        #       Child Loop BB0_330 Depth 3
                                        #       Child Loop BB0_335 Depth 3
                                        #     Child Loop BB0_428 Depth 2
                                        #     Child Loop BB0_438 Depth 2
                                        #     Child Loop BB0_448 Depth 2
                                        #     Child Loop BB0_455 Depth 2
                                        #     Child Loop BB0_464 Depth 2
                                        #       Child Loop BB0_467 Depth 3
                                        #       Child Loop BB0_470 Depth 3
                                        #       Child Loop BB0_476 Depth 3
                                        #     Child Loop BB0_484 Depth 2
                                        #       Child Loop BB0_489 Depth 3
                                        #         Child Loop BB0_491 Depth 4
                                        #         Child Loop BB0_494 Depth 4
                                        #         Child Loop BB0_500 Depth 4
                                        #       Child Loop BB0_509 Depth 3
                                        #     Child Loop BB0_516 Depth 2
                                        #       Child Loop BB0_523 Depth 3
                                        #         Child Loop BB0_525 Depth 4
                                        #     Child Loop BB0_546 Depth 2
                                        #       Child Loop BB0_553 Depth 3
                                        #         Child Loop BB0_560 Depth 4
                                        #         Child Loop BB0_557 Depth 4
                                        #     Child Loop BB0_574 Depth 2
                                        #       Child Loop BB0_604 Depth 3
                                        #         Child Loop BB0_612 Depth 4
                                        #         Child Loop BB0_615 Depth 4
                                        #     Child Loop BB0_628 Depth 2
	ld.d	$a0, $s4, 0
	slli.d	$a1, $s5, 3
	ldx.d	$fp, $a0, $a1
	st.d	$zero, $fp, 40
	ld.d	$a1, $s3, 8
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(kill_polyA)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 16
	beqz	$s0, .LBB0_5
# %bb.7:                                # %if.end12
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $fp, 44
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	addi.d	$s2, $fp, 8
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 384                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_134
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$s6, $a0, 0
	ld.w	$a0, $s6, 4
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB0_134
# %bb.9:                                # %if.then17
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a1, $a0, -62
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_23
# %bb.10:                               # %land.lhs.true23
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $s6, 0
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a2, $s3, 24
	addi.w	$a1, $a1, -1
	bgeu	$a2, $a1, .LBB0_23
# %bb.11:                               # %if.then26
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.w	$a1, $s1, 36
	bstrpick.d	$a2, $a0, 31, 0
	sltui	$a3, $a1, 10
	ori	$a4, $zero, 10
	masknez	$a4, $a4, $a3
	maskeqz	$a1, $a1, $a3
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 16
	or	$a1, $a1, $a4
	addi.d	$a0, $a0, -1
	st.w	$a1, $sp, 532
	st.d	$a3, $sp, 504
	st.w	$a0, $sp, 512
	slli.d	$a0, $a1, 1
	addi.d	$a0, $a0, -2
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	sll.w	$a0, $a1, $a0
	nor	$a0, $a0, $zero
	st.w	$a0, $sp, 528
	slli.d	$a0, $a2, 2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 520
	ori	$a1, $zero, 8
	lu12i.w	$a0, 128
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $sp, 496
	addi.d	$a0, $sp, 496
	pcaddu18i	$ra, %call36(bld_table)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.wu	$a3, $s3, 24
	ld.w	$a2, $s6, 0
	add.d	$a1, $a0, $a3
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a5, $a0, 24
	nor	$a0, $a3, $zero
	add.w	$a2, $a2, $a0
	addi.w	$a4, $a3, 1
	addi.d	$a0, $sp, 496
	ori	$a3, $zero, 1
	addi.d	$a6, $sp, 552
	addi.d	$a7, $sp, 536
	st.d	$a7, $sp, 0
	move	$a7, $zero
	pcaddu18i	$ra, %call36(exon_cores)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_12:                               # %for.body.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $fp, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(tdestroy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s0, $s8, .LBB0_12
# %bb.13:                               # %free_hash_env.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 544
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_22
# %bb.14:                               # %for.body.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $sp, 536
	bstrpick.d	$a2, $a0, 31, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_15:                               # %for.body.i276
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a4, 8
	rotri.d	$a5, $a5, 32
	st.d	$a5, $a4, 0
	rotri.d	$a5, $a6, 32
	st.d	$a5, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB0_15
# %bb.16:                               # %swap_seqs.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $s1, 16
	ld.w	$a2, $a0, 8
	bgeu	$a2, $a1, .LBB0_21
# %bb.17:                               # %land.lhs.true.lr.ph.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a3, $s1, 8
	ld.w	$a4, $a0, 12
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	ldptr.w	$a5, $a6, 4148
	ld.d	$a6, $a6, 16
	bstrpick.d	$a7, $a2, 31, 0
	bstrpick.d	$t0, $a4, 31, 0
	sltu	$t1, $a5, $a4
	masknez	$a5, $a5, $t1
	maskeqz	$t1, $a4, $t1
	or	$a5, $t1, $a5
	bstrpick.d	$t1, $a5, 31, 0
	add.d	$a3, $a3, $a7
	addi.d	$a4, $a4, 1
	add.d	$a5, $a6, $t0
	sub.d	$a6, $t1, $t0
	.p2align	4, , 16
.LBB0_18:                               # %land.lhs.true.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a6, .LBB0_21
# %bb.19:                               # %land.rhs.i
                                        #   in Loop: Header=BB0_18 Depth=2
	ld.bu	$a7, $a3, 0
	ld.bu	$t0, $a5, 0
	bne	$a7, $t0, .LBB0_21
# %bb.20:                               # %while.body.i
                                        #   in Loop: Header=BB0_18 Depth=2
	addi.w	$a2, $a2, 1
	st.w	$a2, $a0, 8
	st.w	$a4, $a0, 12
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, -1
	bne	$a1, $a2, .LBB0_18
.LBB0_21:                               # %grow_exon_right.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a3, $s1, 36
	addi.d	$a1, $sp, 536
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(merge)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$s6, $a0, 0
	st.w	$zero, $sp, 544
.LBB0_22:                               # %if.end56
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$s0, $s3, 16
	beqz	$s0, .LBB0_32
.LBB0_23:                               # %land.rhs.lr.ph
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $s2, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 16
	move	$s1, $zero
	bstrpick.d	$s3, $s0, 31, 0
	.p2align	4, , 16
.LBB0_24:                               # %land.rhs
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 12
	ld.w	$a0, $a0, 4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(is_polyAT_exon_p)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_27
# %bb.25:                               # %while.body
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.w	$s1, $s1, 1
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB0_24
# %bb.26:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s1, $s0
.LBB0_27:                               # %while.end
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	beqz	$s1, .LBB0_32
# %bb.28:                               # %for.body69.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s0, $zero
	bstrpick.d	$fp, $s1, 31, 0
	move	$s3, $s2
	slli.d	$s2, $fp, 3
	.p2align	4, , 16
.LBB0_29:                               # %for.body69
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s2, $s0, .LBB0_29
# %bb.30:                               # %for.end
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 8
	ld.w	$a2, $s0, 16
	alsl.d	$a1, $fp, $a0, 3
	sub.d	$a2, $a2, $s1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 16
	sub.d	$a1, $a0, $s1
	st.w	$a1, $s0, 16
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	beq	$a0, $s1, .LBB0_5
# %bb.31:                               # %cleanup
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ld.d	$s6, $a0, 0
.LBB0_32:                               # %if.end88
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.wu	$a0, $s6, 4
	addi.w	$s3, $a0, -1
	beqz	$s3, .LBB0_134
# %bb.33:                               # %if.then93
                                        #   in Loop: Header=BB0_6 Depth=1
	sltui	$a2, $s3, 250
	ori	$a1, $zero, 250
	masknez	$a3, $a1, $a2
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	ld.w	$a1, $s6, 0
	maskeqz	$a2, $s3, $a2
	or	$s8, $a2, $a3
	slli.d	$a2, $s8, 2
	addi.w	$a3, $a1, -1
	slt	$a4, $a2, $a3
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a5, $a5, 16
	maskeqz	$a2, $a2, $a4
	masknez	$a3, $a3, $a4
	or	$t1, $a2, $a3
	add.d	$a2, $a5, $a0
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a4, $a3, 8
	nor	$a3, $s8, $zero
	add.d	$a2, $a3, $a2
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a5, $a4, $a5
	nor	$a4, $t1, $zero
	add.d	$a5, $a4, $a5
	addi.d	$s6, $a2, -1
	addi.d	$s0, $a5, -1
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB0_38
# %bb.34:                               # %land.rhs.i296.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a2, $t1
	move	$s1, $s8
	.p2align	4, , 16
.LBB0_35:                               # %land.rhs.i296
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a5, $s1
	ldx.bu	$a7, $s6, $s1
	addi.w	$a6, $a2, 0
	ldx.bu	$t0, $s0, $a6
	bne	$a7, $t0, .LBB0_40
# %bb.36:                               # %for.inc.i
                                        #   in Loop: Header=BB0_35 Depth=2
	addi.w	$s1, $a5, -1
	addi.d	$a2, $a2, -1
	ori	$a7, $zero, 2
	blt	$a6, $a7, .LBB0_39
# %bb.37:                               # %for.inc.i
                                        #   in Loop: Header=BB0_35 Depth=2
	ori	$a6, $zero, 1
	bne	$a5, $a6, .LBB0_35
	b	.LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s1, $s8
	move	$a2, $t1
.LBB0_39:                               # %for.end.i
                                        #   in Loop: Header=BB0_6 Depth=1
	add.d	$a5, $a0, $a3
	add.d	$a4, $a1, $a4
	bnez	$s1, .LBB0_41
	b	.LBB0_45
.LBB0_40:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s1, $a5
	add.d	$a5, $a0, $a3
	add.d	$a4, $a1, $a4
	beqz	$s1, .LBB0_45
.LBB0_41:                               # %for.end.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a0, $a2, 0
	beqz	$a0, .LBB0_45
# %bb.42:                               # %if.end.i
                                        #   in Loop: Header=BB0_6 Depth=1
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	st.d	$a5, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.w	$s7, $a0, 36
	addi.w	$s2, $s8, 1
	st.d	$t1, $sp, 448                   # 8-byte Folded Spill
	add.w	$s5, $t1, $s8
	addi.w	$s4, $s5, 1
	slli.d	$fp, $s4, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	bltz	$s5, .LBB0_57
# %bb.43:                               # %iter.check1210
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s4, $a0, .LBB0_46
# %bb.44:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $zero
	b	.LBB0_55
.LBB0_45:                               # %if.then.i
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s3, $zero
	add.d	$a5, $s1, $a5
	add.d	$a4, $a2, $a4
	ld.d	$fp, $sp, 456                   # 8-byte Folded Reload
	b	.LBB0_132
.LBB0_46:                               # %vector.main.loop.iter.check1212
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 16
	bgeu	$s4, $a0, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $zero
	b	.LBB0_52
.LBB0_48:                               # %vector.ph1213
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a1, $a0, 32
	bstrpick.d	$a0, $s4, 30, 4
	slli.d	$a0, $a0, 4
	xvreplgr2vr.w	$xr0, $s2
	move	$a2, $a0
	.p2align	4, , 16
.LBB0_49:                               # %vector.body1218
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB0_49
# %bb.50:                               # %middle.block1221
                                        #   in Loop: Header=BB0_6 Depth=1
	beq	$a0, $s4, .LBB0_57
# %bb.51:                               # %vec.epilog.iter.check1226
                                        #   in Loop: Header=BB0_6 Depth=1
	andi	$a1, $s4, 12
	beqz	$a1, .LBB0_55
.LBB0_52:                               # %vec.epilog.ph1225
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a2, $a0
	bstrpick.d	$a0, $s4, 30, 2
	slli.d	$a0, $a0, 2
	vreplgr2vr.w	$vr0, $s2
	sub.d	$a1, $a2, $a0
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB0_53:                               # %vec.epilog.vector.body1233
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB0_53
# %bb.54:                               # %vec.epilog.middle.block1236
                                        #   in Loop: Header=BB0_6 Depth=1
	beq	$a0, $s4, .LBB0_57
.LBB0_55:                               # %for.body28.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.d	$a1, $a0, $s4
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 2
	.p2align	4, , 16
.LBB0_56:                               # %for.body28.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$s2, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_56
.LBB0_57:                               # %iter.check1176
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	stx.w	$s1, $a1, $a0
	slli.w	$s1, $s2, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$t7, $fp
	move	$s4, $a0
	ori	$a1, $zero, 1
	ori	$a0, $zero, 4
	bltu	$s3, $a0, .LBB0_68
# %bb.58:                               # %vector.main.loop.iter.check1178
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 16
	bgeu	$s3, $a0, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $zero
	b	.LBB0_64
.LBB0_60:                               # %vector.ph1179
                                        #   in Loop: Header=BB0_6 Depth=1
	andi	$a0, $s8, 240
	xvreplgr2vr.w	$xr0, $s2
	addi.d	$a1, $t7, 36
	move	$a2, $a0
	.p2align	4, , 16
.LBB0_61:                               # %vector.body1184
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB0_61
# %bb.62:                               # %middle.block1187
                                        #   in Loop: Header=BB0_6 Depth=1
	beq	$a0, $s8, .LBB0_70
# %bb.63:                               # %vec.epilog.iter.check1192
                                        #   in Loop: Header=BB0_6 Depth=1
	andi	$a1, $s8, 12
	beqz	$a1, .LBB0_67
.LBB0_64:                               # %vec.epilog.ph1191
                                        #   in Loop: Header=BB0_6 Depth=1
	andi	$a2, $s8, 252
	srli.d	$a3, $s8, 2
	ori	$a1, $zero, 1
	bstrins.d	$a1, $a3, 7, 2
	vreplgr2vr.w	$vr0, $s2
	alsl.d	$a3, $a0, $t7, 2
	addi.d	$a3, $a3, 4
	sub.d	$a0, $a0, $a2
	.p2align	4, , 16
.LBB0_65:                               # %vec.epilog.vector.body1199
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a3, 0
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 16
	bnez	$a0, .LBB0_65
# %bb.66:                               # %vec.epilog.middle.block1203
                                        #   in Loop: Header=BB0_6 Depth=1
	bne	$a2, $s8, .LBB0_68
	b	.LBB0_70
.LBB0_67:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a1, $a0, 1
.LBB0_68:                               # %for.body52.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.d	$a0, $s8, $a1
	addi.d	$a0, $a0, 1
	alsl.d	$a1, $a1, $t7, 2
	.p2align	4, , 16
.LBB0_69:                               # %for.body52.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$s2, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB0_69
.LBB0_70:                               # %for.end58.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$t2, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$t0, $t2, $a3, 2
	ld.w	$a0, $t0, 0
	move	$a1, $zero
	move	$a2, $zero
	st.w	$a0, $t7, 0
	st.w	$t2, $s4, 0
	bstrpick.d	$a0, $s7, 31, 31
	add.w	$a0, $s7, $a0
	srai.d	$t3, $a0, 1
	slli.w	$t4, $s7, 1
	addi.d	$a0, $a3, -4
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 4
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	addi.w	$a7, $t2, 2
	addi.d	$s3, $s8, 2
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $a0
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	addi.w	$t1, $t2, -1
	sub.d	$t5, $t1, $s8
	addi.d	$a6, $a3, 32
	addi.d	$a0, $a0, 32
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	ori	$ra, $zero, 2
	move	$s7, $t2
	move	$a5, $t2
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$t7, $sp, 424                   # 8-byte Folded Spill
	st.d	$t0, $sp, 368                   # 8-byte Folded Spill
	st.d	$t3, $sp, 328                   # 8-byte Folded Spill
	st.d	$t4, $sp, 296                   # 8-byte Folded Spill
	st.d	$a6, $sp, 288                   # 8-byte Folded Spill
.LBB0_71:                               # %land.rhs68.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_87 Depth 3
                                        #         Child Loop BB0_96 Depth 4
                                        #       Child Loop BB0_105 Depth 3
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_120 Depth 3
	slli.d	$a0, $a2, 2
	ldx.w	$a0, $t7, $a0
	move	$t8, $s7
	sub.w	$a0, $s8, $a0
	ori	$a3, $zero, 2
	bge	$t3, $a0, .LBB0_74
# %bb.72:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_71 Depth=2
	bge	$a0, $t4, .LBB0_79
# %bb.73:                               # %if.then2.i.i
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 28
.LBB0_74:                               # %good_ratio.exit.i
                                        #   in Loop: Header=BB0_71 Depth=2
	bge	$a3, $a2, .LBB0_82
.LBB0_75:                               # %lor.rhs.i
                                        #   in Loop: Header=BB0_71 Depth=2
	beqz	$a2, .LBB0_126
# %bb.76:                               # %land.rhs79.i
                                        #   in Loop: Header=BB0_71 Depth=2
	addi.d	$a0, $a2, -1
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $t7, $a3
	sub.w	$a3, $s8, $a3
	ori	$a4, $zero, 2
	bge	$t3, $a3, .LBB0_81
# %bb.77:                               # %if.else.i199.i
                                        #   in Loop: Header=BB0_71 Depth=2
	bge	$a3, $t4, .LBB0_80
# %bb.78:                               # %if.then2.i205.i
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a4, $a3, 28
	b	.LBB0_81
.LBB0_79:                               # %if.else3.i.i
                                        #   in Loop: Header=BB0_71 Depth=2
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -912
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	blt	$a3, $a2, .LBB0_75
	b	.LBB0_82
.LBB0_80:                               # %if.else3.i202.i
                                        #   in Loop: Header=BB0_71 Depth=2
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a4, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -912
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
.LBB0_81:                               # %good_ratio.exit206.i
                                        #   in Loop: Header=BB0_71 Depth=2
	blt	$a4, $a0, .LBB0_126
.LBB0_82:                               # %while.body.i295
                                        #   in Loop: Header=BB0_71 Depth=2
	addi.w	$s7, $t8, -1
	addi.w	$a5, $a5, 1
	st.d	$a5, $sp, 464                   # 8-byte Folded Spill
	bge	$a5, $s7, .LBB0_84
# %bb.83:                               # %for.end216.thread.i
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.w	$a0, $t0, 0
	slli.d	$a3, $s1, 2
	stx.w	$a0, $t7, $a3
	stx.w	$t2, $s4, $a3
	b	.LBB0_121
	.p2align	4, , 16
.LBB0_84:                               # %for.body93.lr.ph.i
                                        #   in Loop: Header=BB0_71 Depth=2
	move	$a0, $ra
	bstrins.d	$a0, $zero, 1, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a5, $t5
	move	$t5, $ra
	bstrins.d	$t5, $zero, 3, 0
	alsl.d	$a6, $t1, $a6, 2
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$t3, $t1, $a0, 2
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$t4, $t1, $a0, 2
	slli.d	$a0, $a2, 1
	addi.d	$a0, $a0, 3
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	nor	$a0, $a2, $zero
	add.w	$a4, $t2, $a0
	add.d	$a0, $s1, $t2
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $a3, 2
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 2
	st.d	$a5, $sp, 360                   # 8-byte Folded Spill
	move	$t2, $a5
	move	$t7, $s7
	b	.LBB0_87
	.p2align	4, , 16
.LBB0_85:                               # %while.end.thread.i
                                        #   in Loop: Header=BB0_87 Depth=3
	slli.d	$a5, $t7, 2
	ld.d	$t6, $sp, 488                   # 8-byte Folded Reload
	stx.w	$fp, $t6, $a5
.LBB0_86:                               # %for.inc214.i
                                        #   in Loop: Header=BB0_87 Depth=3
	addi.d	$t7, $t7, 1
	addi.w	$a5, $t7, 0
	addi.d	$t2, $t2, 1
	beq	$a7, $a5, .LBB0_103
.LBB0_87:                               # %for.body93.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_96 Depth 4
	bne	$t7, $a4, .LBB0_89
# %bb.88:                               # %if.then99.i
                                        #   in Loop: Header=BB0_87 Depth=3
	ld.w	$s4, $a3, 0
	b	.LBB0_94
	.p2align	4, , 16
.LBB0_89:                               # %if.else.i
                                        #   in Loop: Header=BB0_87 Depth=3
	bne	$t7, $a0, .LBB0_91
# %bb.90:                               # %if.then107.i
                                        #   in Loop: Header=BB0_87 Depth=3
	ld.w	$t6, $t0, 0
	addi.w	$s4, $t6, -1
	b	.LBB0_94
	.p2align	4, , 16
.LBB0_91:                               # %if.else112.i
                                        #   in Loop: Header=BB0_87 Depth=3
	ld.d	$a5, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$s4, $t7, $a5, 2
	slli.d	$t6, $t7, 2
	ldx.w	$t6, $a5, $t6
	ld.w	$fp, $s4, 4
	ld.w	$s5, $s4, -4
	addi.w	$s4, $t6, -1
	blt	$fp, $s4, .LBB0_93
# %bb.92:                               # %if.else112.i
                                        #   in Loop: Header=BB0_87 Depth=3
	bge	$s5, $t6, .LBB0_94
.LBB0_93:                               # %if.else135.i
                                        #   in Loop: Header=BB0_87 Depth=3
	addi.w	$s4, $s5, -1
	slt	$t6, $t6, $s5
	slt	$s5, $s4, $fp
	masknez	$a5, $fp, $s5
	maskeqz	$s4, $s4, $s5
	or	$a5, $s4, $a5
	masknez	$a5, $a5, $t6
	maskeqz	$t6, $fp, $t6
	or	$s4, $t6, $a5
	.p2align	4, , 16
.LBB0_94:                               # %if.end167.i
                                        #   in Loop: Header=BB0_87 Depth=3
	sub.d	$a5, $t7, $s8
	add.w	$fp, $s4, $a5
	ori	$a5, $zero, 1
	blt	$s4, $a5, .LBB0_100
# %bb.95:                               # %if.end167.i
                                        #   in Loop: Header=BB0_87 Depth=3
	blt	$fp, $a5, .LBB0_100
	.p2align	4, , 16
.LBB0_96:                               # %land.rhs176.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        #       Parent Loop BB0_87 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$fp, $s4
	add.w	$t6, $t2, $s4
	ldx.bu	$a5, $s6, $s4
	ldx.bu	$s4, $s0, $t6
	bne	$a5, $s4, .LBB0_85
# %bb.97:                               # %while.body188.i
                                        #   in Loop: Header=BB0_96 Depth=4
	addi.w	$s4, $fp, -1
	ori	$a5, $zero, 2
	blt	$t6, $a5, .LBB0_99
# %bb.98:                               # %while.body188.i
                                        #   in Loop: Header=BB0_96 Depth=4
	ori	$a5, $zero, 1
	blt	$a5, $fp, .LBB0_96
.LBB0_99:                               # %while.end.i.loopexit
                                        #   in Loop: Header=BB0_87 Depth=3
	add.w	$fp, $t2, $s4
.LBB0_100:                              # %while.end.i
                                        #   in Loop: Header=BB0_87 Depth=3
	slli.d	$a5, $t7, 2
	or	$t6, $s4, $fp
	ld.d	$s5, $sp, 488                   # 8-byte Folded Reload
	stx.w	$s4, $s5, $a5
	beqz	$t6, .LBB0_123
# %bb.101:                              # %if.end201.i
                                        #   in Loop: Header=BB0_87 Depth=3
	beqz	$s4, .LBB0_124
# %bb.102:                              # %if.end207.i
                                        #   in Loop: Header=BB0_87 Depth=3
	bnez	$fp, .LBB0_86
	b	.LBB0_125
.LBB0_103:                              # %for.end216.i
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 0
	ld.d	$t7, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $t7, 2
	slli.d	$a4, $s1, 2
	stx.w	$a3, $t7, $a4
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a3, $s1, $s4, 2
	ld.d	$t2, $sp, 448                   # 8-byte Folded Reload
	stx.w	$t2, $s4, $a4
	addi.d	$a4, $zero, -3
	b	.LBB0_105
	.p2align	4, , 16
.LBB0_104:                              # %for.inc243.i
                                        #   in Loop: Header=BB0_105 Depth=3
	addi.w	$a4, $a4, 1
	addi.d	$t4, $t4, 4
	beq	$a1, $a4, .LBB0_107
.LBB0_105:                              # %for.body228.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t0, $t4, 0
	ld.w	$a5, $a0, 0
	bge	$t0, $a5, .LBB0_104
# %bb.106:                              # %if.then235.i
                                        #   in Loop: Header=BB0_105 Depth=3
	st.w	$t0, $a0, 0
	add.d	$a5, $t8, $a4
	addi.d	$a5, $a5, 2
	st.w	$a5, $a3, 0
	b	.LBB0_104
.LBB0_107:                              # %iter.check1143
                                        #   in Loop: Header=BB0_71 Depth=2
	beqz	$a2, .LBB0_111
# %bb.108:                              # %iter.check1143
                                        #   in Loop: Header=BB0_71 Depth=2
	ori	$a0, $zero, 64
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	bltu	$a3, $a0, .LBB0_111
# %bb.109:                              # %vector.main.loop.iter.check1145
                                        #   in Loop: Header=BB0_71 Depth=2
	ori	$a0, $zero, 7
	bgeu	$a2, $a0, .LBB0_113
# %bb.110:                              #   in Loop: Header=BB0_71 Depth=2
	move	$a3, $zero
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	b	.LBB0_117
.LBB0_111:                              #   in Loop: Header=BB0_71 Depth=2
	move	$a0, $s7
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
.LBB0_112:                              # %for.body249.i.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$t3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 360                   # 8-byte Folded Reload
	b	.LBB0_119
.LBB0_113:                              # %vector.ph1146
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	move	$a3, $a4
	bstrins.d	$a3, $zero, 3, 0
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_114:                              # %vector.body1149
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $t3, -32
	xvld	$xr1, $t3, 0
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$t5, $t5, -16
	addi.d	$a6, $a6, 64
	addi.d	$t3, $t3, 64
	bnez	$t5, .LBB0_114
# %bb.115:                              # %vec.epilog.iter.check1159
                                        #   in Loop: Header=BB0_71 Depth=2
	andi	$a0, $a4, 12
	beqz	$a0, .LBB0_122
# %bb.116:                              #   in Loop: Header=BB0_71 Depth=2
	ld.d	$t3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 360                   # 8-byte Folded Reload
.LBB0_117:                              # %vec.epilog.ph1158
                                        #   in Loop: Header=BB0_71 Depth=2
	bstrins.d	$a4, $zero, 1, 0
	add.d	$a0, $a4, $s7
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $a4
	add.d	$a5, $a3, $t1
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 2
	ld.d	$a6, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a6, 2
	.p2align	4, , 16
.LBB0_118:                              # %vec.epilog.vector.body1164
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a6, 0
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 16
	addi.d	$a6, $a6, 16
	bnez	$a4, .LBB0_118
.LBB0_119:                              # %for.body249.i.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	ld.d	$a6, $sp, 288                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_120:                              # %for.body249.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a4, 0
	st.w	$a5, $a3, 0
	addi.w	$a0, $a0, 1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	bne	$a7, $a0, .LBB0_120
.LBB0_121:                              # %while.cond.loopexit.i
                                        #   in Loop: Header=BB0_71 Depth=2
	addi.d	$s1, $s1, 1
	addi.w	$a7, $a7, 1
	addi.d	$a2, $a2, 1
	addi.d	$t5, $t5, -1
	addi.w	$a1, $a1, 2
	addi.w	$t1, $t1, -1
	addi.d	$ra, $ra, 2
	ld.d	$a5, $sp, 464                   # 8-byte Folded Reload
	bne	$a2, $s2, .LBB0_71
	b	.LBB0_127
.LBB0_122:                              #   in Loop: Header=BB0_71 Depth=2
	add.d	$a0, $a3, $s7
	b	.LBB0_112
.LBB0_123:                              # %if.then198.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s3, $s1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	b	.LBB0_132
.LBB0_124:                              # %if.then204.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	add.d	$a4, $fp, $a4
	move	$s3, $s1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	b	.LBB0_132
.LBB0_125:                              # %if.then210.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	add.d	$a5, $s4, $a5
	move	$s3, $s1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	b	.LBB0_132
.LBB0_126:                              # %while.end259.split.loop.exit314.i
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s3, $s1
.LBB0_127:                              # %land.rhs263.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_128:                              # %land.rhs263.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a0, $s3, 0
	alsl.d	$a1, $a0, $t7, 2
	slli.d	$a2, $a0, 2
	ld.w	$a1, $a1, -4
	ldx.w	$a2, $t7, $a2
	sub.w	$a1, $a1, $a2
	ori	$a2, $zero, 2
	blt	$a2, $a1, .LBB0_131
# %bb.129:                              # %while.body273.i
                                        #   in Loop: Header=BB0_128 Depth=2
	addi.d	$s3, $s3, -1
	ori	$a1, $zero, 1
	blt	$a1, $a0, .LBB0_128
# %bb.130:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s3, $zero
.LBB0_131:                              # %while.end275.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a0, $s3, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $t7, $a0
	ldx.w	$a0, $s4, $a0
	add.d	$s0, $a1, $a3
	sub.d	$a2, $a4, $s8
	add.d	$a1, $a2, $a1
	add.d	$s1, $a1, $a0
	move	$a0, $t7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a4, $s1
	move	$a5, $s0
.LBB0_132:                              # %extend_bw.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $fp, 4
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 56
	ld.w	$a2, $a2, 48
	nor	$a3, $a5, $zero
	add.d	$a0, $a0, $a3
	mul.d	$a0, $a0, $a1
	mul.d	$a1, $a2, $s3
	add.w	$a0, $a1, $a0
	lu12i.w	$s8, 1024
	bltz	$a0, .LBB0_134
# %bb.133:                              # %if.then147
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $a5, 1
	st.w	$a0, $fp, 4
	addi.d	$a0, $a4, 1
	st.w	$a0, $fp, 0
	.p2align	4, , 16
.LBB0_134:                              # %if.end158
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 40
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_238
# %bb.135:                              # %land.lhs.true161
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$s0, $a2, 16
	ld.d	$a0, $a2, 8
	addi.d	$a1, $s0, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$s6, $a0, $a1
	ld.w	$a1, $s6, 12
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 4148
	bgeu	$a1, $a0, .LBB0_238
# %bb.136:                              # %if.then170
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.w	$a0, $a0, $a1
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	bltu	$a0, $a2, .LBB0_150
# %bb.137:                              # %land.lhs.true183
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a2, $s2, 24
	ld.w	$a3, $s2, 28
	ld.w	$a4, $s6, 8
	add.w	$a2, $a3, $a2
	bgeu	$a4, $a2, .LBB0_151
# %bb.138:                              # %if.then188
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a2, $s3, 36
	bstrpick.d	$a1, $a1, 31, 0
	sltui	$a3, $a2, 10
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 16
	maskeqz	$a2, $a2, $a3
	ori	$a5, $zero, 10
	masknez	$a3, $a5, $a3
	or	$a2, $a2, $a3
	add.d	$a1, $a4, $a1
	st.w	$a2, $sp, 532
	st.d	$a1, $sp, 504
	st.w	$a0, $sp, 512
	slli.d	$a1, $a2, 1
	addi.d	$a1, $a1, -2
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $zero, -1
	sll.w	$a1, $a2, $a1
	nor	$a1, $a1, $zero
	st.w	$a1, $sp, 528
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 520
	ori	$a1, $zero, 8
	lu12i.w	$a0, 128
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $sp, 496
	addi.d	$a0, $sp, 496
	pcaddu18i	$ra, %call36(bld_table)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 8
	ld.wu	$a4, $s6, 8
	ld.w	$a2, $s2, 24
	add.d	$a1, $a0, $a4
	ld.w	$a0, $s2, 28
	ld.w	$a3, $s6, 12
	sub.d	$a2, $a2, $a4
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 24
	add.w	$a2, $a2, $a0
	addi.w	$a3, $a3, 1
	addi.w	$a4, $a4, 1
	addi.d	$a0, $sp, 496
	addi.d	$a6, $sp, 552
	addi.d	$a7, $sp, 536
	st.d	$a7, $sp, 0
	move	$a7, $zero
	pcaddu18i	$ra, %call36(exon_cores)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	.p2align	4, , 16
.LBB0_139:                              # %for.body.i312
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $fp, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(tdestroy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s0, $s8, .LBB0_139
# %bb.140:                              # %free_hash_env.exit318
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $sp, 544
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_152
# %bb.141:                              # %for.body.preheader.i321
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 536
	move	$a1, $zero
	slli.d	$a2, $a2, 3
	.p2align	4, , 16
.LBB0_142:                              # %for.body.i323
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a3, $a0, $a1
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a3, 8
	rotri.d	$a4, $a4, 32
	st.d	$a4, $a3, 0
	rotri.d	$a4, $a5, 32
	addi.d	$a1, $a1, 8
	st.d	$a4, $a3, 8
	bne	$a2, $a1, .LBB0_142
# %bb.143:                              # %swap_seqs.exit332
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $a0, 0
	ld.w	$a7, $a0, 0
	ori	$a1, $zero, 2
	bltu	$a7, $a1, .LBB0_149
# %bb.144:                              # %swap_seqs.exit332
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.wu	$a6, $a0, 4
	ori	$a1, $zero, 2
	bltu	$a6, $a1, .LBB0_149
# %bb.145:                              # %land.rhs.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	ld.d	$a2, $s3, 8
	move	$a3, $zero
	bstrpick.d	$a5, $a7, 31, 0
	add.d	$a4, $a1, $a6
	add.d	$a5, $a2, $a5
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	.p2align	4, , 16
.LBB0_146:                              # %land.rhs.i334
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a4, $a3
	add.d	$t1, $a5, $a3
	ld.bu	$t2, $t1, -2
	ld.bu	$t3, $t0, -2
	bne	$t2, $t3, .LBB0_149
# %bb.147:                              # %while.body.i337
                                        #   in Loop: Header=BB0_146 Depth=2
	addi.d	$t1, $t1, -3
	st.w	$a7, $a0, 0
	st.w	$a6, $a0, 4
	bltu	$t1, $a2, .LBB0_149
# %bb.148:                              # %while.body.i337
                                        #   in Loop: Header=BB0_146 Depth=2
	addi.d	$t0, $t0, -3
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$a3, $a3, -1
	bgeu	$t0, $a1, .LBB0_146
.LBB0_149:                              # %grow_exon_left.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a2, $fp, 16
	ld.w	$a3, $s3, 36
	addi.d	$a1, $sp, 536
	move	$a0, $s2
	pcaddu18i	$ra, %call36(merge)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 16
	ld.d	$a0, $fp, 8
	addi.d	$a1, $s0, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$s6, $a0, $a1
	st.w	$zero, $sp, 544
.LBB0_150:                              # %if.end234
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	bnez	$s0, .LBB0_153
	b	.LBB0_165
.LBB0_151:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	bnez	$s0, .LBB0_153
	b	.LBB0_165
.LBB0_152:                              # %free_hash_env.exit318.if.end234_crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.w	$s0, $a0, 16
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	beqz	$s0, .LBB0_165
.LBB0_153:                              # %land.rhs240.lr.ph
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $s2, 0
	ld.d	$fp, $a0, 16
	move	$s1, $zero
	bstrpick.d	$s3, $s0, 31, 0
	addi.w	$s4, $s0, -1
	.p2align	4, , 16
.LBB0_154:                              # %land.rhs240
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s4, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s2, $a0
	ld.w	$a1, $a0, 12
	ld.w	$a0, $a0, 4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(is_polyAT_exon_p)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_157
# %bb.155:                              # %while.body251
                                        #   in Loop: Header=BB0_154 Depth=2
	addi.w	$s1, $s1, 1
	addi.d	$s3, $s3, -1
	addi.w	$s4, $s4, -1
	bnez	$s3, .LBB0_154
# %bb.156:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s1, $s0
.LBB0_157:                              # %while.end253
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	beqz	$s1, .LBB0_165
# %bb.158:                              # %if.then256
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.w	$a0, $s0, $s1
	bgeu	$s0, $s1, .LBB0_160
# %bb.159:                              # %for.end270.thread
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.w	$a0, $a1, 16
	b	.LBB0_164
.LBB0_160:                              # %for.body264.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	bstrpick.d	$fp, $a0, 31, 0
	slli.d	$s0, $fp, 3
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 432                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_161:                              # %for.body264
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 8
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s2, 16
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	bltu	$fp, $a1, .LBB0_161
# %bb.162:                              # %for.end270
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.w	$a0, $a1, $s1
	addi.w	$a1, $a1, 0
	st.w	$a0, $s2, 16
	beq	$a1, $s1, .LBB0_5
# %bb.163:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
.LBB0_164:                              # %cleanup283
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $s2, 0
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s6, $a1, $a0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
.LBB0_165:                              # %if.end286
                                        #   in Loop: Header=BB0_6 Depth=1
	ldptr.w	$a0, $a0, 4148
	ld.w	$a6, $s6, 12
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	beq	$a0, $a6, .LBB0_238
# %bb.166:                              # %if.then292
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.w	$a0, $a0, $a6
	sltui	$a1, $a0, 250
	maskeqz	$a0, $a0, $a1
	ori	$a2, $zero, 250
	masknez	$a1, $a2, $a1
	move	$a4, $s3
	or	$s3, $a0, $a1
	ld.wu	$a7, $s6, 8
	ld.w	$a0, $a4, 16
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $a1, 16
	ld.d	$a1, $a4, 8
	slli.d	$s5, $s3, 2
	sub.w	$a0, $a0, $a7
	slt	$a2, $s5, $a0
	maskeqz	$a3, $s5, $a2
	masknez	$a2, $a0, $a2
	ld.w	$s7, $a4, 36
	or	$t0, $a3, $a2
	bstrpick.d	$t2, $a6, 31, 0
	add.d	$s2, $a1, $a7
	move	$s4, $zero
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_173
# %bb.167:                              # %land.rhs.preheader.i373
                                        #   in Loop: Header=BB0_6 Depth=1
	add.d	$a0, $t1, $t2
	addi.w	$a1, $t0, -1
	addi.w	$a2, $s3, -1
	sltu	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	addi.w	$a1, $a1, 1
	bstrpick.d	$a2, $a1, 31, 0
	sub.d	$a2, $zero, $a2
	move	$a3, $s2
	.p2align	4, , 16
.LBB0_168:                              # %land.rhs.i375
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $a0, 0
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB0_171
# %bb.169:                              # %for.inc.i382
                                        #   in Loop: Header=BB0_168 Depth=2
	addi.w	$s4, $s4, 1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB0_168
# %bb.170:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s4, $a1
.LBB0_171:                              # %for.end.i378
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bne	$s4, $s3, .LBB0_174
# %bb.172:                              # %if.then.i381
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $zero
	add.d	$fp, $a7, $s3
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	b	.LBB0_236
.LBB0_173:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
.LBB0_174:                              # %if.end.i341
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$fp, $t0, 0
	bne	$s4, $fp, .LBB0_176
# %bb.175:                              # %if.then14.i
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $zero
	add.d	$fp, $t0, $a7
	move	$s3, $t0
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	b	.LBB0_236
.LBB0_176:                              # %if.end17.i
                                        #   in Loop: Header=BB0_6 Depth=1
	st.d	$t2, $sp, 456                   # 8-byte Folded Spill
	st.d	$t1, $sp, 480                   # 8-byte Folded Spill
	st.d	$a7, $sp, 376                   # 8-byte Folded Spill
	st.d	$a6, $sp, 392                   # 8-byte Folded Spill
	st.d	$t0, $sp, 368                   # 8-byte Folded Spill
	add.w	$s8, $t0, $s3
	addi.w	$a0, $s8, 1
	slli.d	$s1, $a0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	bltz	$s8, .LBB0_178
# %bb.177:                              # %for.body30.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a1, $zero, 255
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_178:                              # %for.end35.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$s8, $s3, 1
	alsl.d	$a0, $s3, $s0, 2
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	stx.w	$s4, $s0, $s5
	slli.w	$s1, $s8, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $s4, 4
	ori	$a1, $zero, 255
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$t0, $s8
	move	$a0, $s4
	ldx.w	$a1, $s0, $s5
	move	$t3, $zero
	st.w	$a1, $s4, 0
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.w	$s3, $s1, 0
	bstrpick.d	$a1, $s7, 31, 31
	add.w	$a1, $s7, $a1
	srai.d	$t2, $a1, 1
	slli.w	$t6, $s7, 1
	addi.d	$t8, $s0, -4
	addi.d	$a1, $s0, 4
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	addi.d	$s5, $s3, 2
	st.d	$s0, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a2, $s0, $a1
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	addi.d	$a7, $s3, -1
	addi.d	$a6, $zero, -1
	alsl.d	$a1, $s3, $a1, 2
	addi.d	$t1, $a1, -4
	addi.d	$s4, $a1, 28
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	addi.d	$s7, $a1, 28
	alsl.d	$t4, $s3, $t8, 2
	ori	$s1, $zero, 1
	ori	$t5, $zero, 3
	ori	$a5, $zero, 2
	move	$t7, $s5
	move	$s0, $s3
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	move	$ra, $s8
	lu12i.w	$s8, 1024
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	st.d	$t0, $sp, 328                   # 8-byte Folded Spill
	st.d	$t2, $sp, 296                   # 8-byte Folded Spill
	st.d	$t6, $sp, 288                   # 8-byte Folded Spill
	st.d	$t8, $sp, 280                   # 8-byte Folded Spill
.LBB0_179:                              # %land.rhs63.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_194 Depth 3
                                        #         Child Loop BB0_206 Depth 4
                                        #       Child Loop BB0_217 Depth 3
                                        #       Child Loop BB0_224 Depth 3
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_229 Depth 3
	slli.d	$a1, $t3, 2
	ldx.w	$a1, $a0, $a1
	ori	$a2, $zero, 2
	bge	$t2, $a1, .LBB0_182
# %bb.180:                              # %if.else.i.i365
                                        #   in Loop: Header=BB0_179 Depth=2
	bge	$a1, $t6, .LBB0_187
# %bb.181:                              # %if.then2.i.i370
                                        #   in Loop: Header=BB0_179 Depth=2
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 28
.LBB0_182:                              # %good_ratio.exit.i350
                                        #   in Loop: Header=BB0_179 Depth=2
	bge	$a2, $t3, .LBB0_190
.LBB0_183:                              # %lor.rhs.i364
                                        #   in Loop: Header=BB0_179 Depth=2
	beqz	$t3, .LBB0_629
# %bb.184:                              # %land.rhs73.i
                                        #   in Loop: Header=BB0_179 Depth=2
	addi.d	$a2, $t3, -1
	slli.d	$a1, $a2, 2
	ldx.w	$a1, $a0, $a1
	ori	$a3, $zero, 2
	bge	$t2, $a1, .LBB0_189
# %bb.185:                              # %if.else.i200.i
                                        #   in Loop: Header=BB0_179 Depth=2
	bge	$a1, $t6, .LBB0_188
# %bb.186:                              # %if.then2.i206.i
                                        #   in Loop: Header=BB0_179 Depth=2
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a3, $a1, 28
	b	.LBB0_189
.LBB0_187:                              # %if.else3.i.i367
                                        #   in Loop: Header=BB0_179 Depth=2
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -912
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	blt	$a2, $t3, .LBB0_183
	b	.LBB0_190
.LBB0_188:                              # %if.else3.i203.i
                                        #   in Loop: Header=BB0_179 Depth=2
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -912
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
.LBB0_189:                              # %good_ratio.exit207.i
                                        #   in Loop: Header=BB0_179 Depth=2
	blt	$a3, $a2, .LBB0_629
.LBB0_190:                              # %while.body.i352
                                        #   in Loop: Header=BB0_179 Depth=2
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	addi.d	$s0, $s0, -1
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	bge	$ra, $a1, .LBB0_193
# %bb.191:                              # %for.end205.thread.i
                                        #   in Loop: Header=BB0_179 Depth=2
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	slli.d	$a2, $s1, 2
	stx.w	$a1, $a0, $a2
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	stx.w	$s3, $a1, $a2
.LBB0_192:                              # %for.end243.i
                                        #   in Loop: Header=BB0_179 Depth=2
	addi.w	$ra, $ra, 1
	addi.d	$s1, $s1, 1
	addi.d	$t7, $t7, 1
	addi.d	$t3, $t3, 1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$t5, $t5, 2
	addi.d	$t1, $t1, -4
	addi.d	$a5, $a5, 2
	addi.d	$s4, $s4, -4
	addi.d	$s7, $s7, -4
	addi.d	$t4, $t4, -4
	bne	$t3, $t0, .LBB0_179
	b	.LBB0_630
.LBB0_193:                              # %for.body86.lr.ph.i
                                        #   in Loop: Header=BB0_179 Depth=2
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	move	$a0, $a5
	bstrins.d	$a0, $zero, 1, 0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	move	$t6, $a5
	bstrins.d	$t6, $zero, 3, 0
	slli.d	$a1, $t3, 1
	addi.d	$a0, $a1, 3
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	nor	$a1, $t3, $zero
	move	$a2, $s0
	add.d	$s0, $a1, $s3
	add.d	$s7, $s1, $s3
	alsl.d	$a0, $s7, $t8, 2
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a3, $s0, $a0, 2
	move	$t0, $a6
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	move	$t8, $a2
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_194:                              # %for.body86.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_179 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_206 Depth 4
	slli.d	$a2, $t8, 2
	bne	$t8, $s0, .LBB0_196
# %bb.195:                              # %if.then91.i
                                        #   in Loop: Header=BB0_194 Depth=3
	ld.w	$a1, $a3, 0
	addi.w	$s8, $a1, 1
	b	.LBB0_202
	.p2align	4, , 16
.LBB0_196:                              # %if.else.i354
                                        #   in Loop: Header=BB0_194 Depth=3
	bne	$t8, $s7, .LBB0_198
# %bb.197:                              # %if.then99.i363
                                        #   in Loop: Header=BB0_194 Depth=3
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ld.w	$s8, $a1, 0
	b	.LBB0_202
	.p2align	4, , 16
.LBB0_198:                              # %if.else103.i
                                        #   in Loop: Header=BB0_194 Depth=3
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a4, $t8, $a1, 2
	ldx.w	$a1, $a1, $a2
	ld.w	$s4, $a4, 4
	bge	$a1, $s4, .LBB0_200
# %bb.199:                              # %if.else103.if.else124_crit_edge.i
                                        #   in Loop: Header=BB0_194 Depth=3
	ld.w	$a4, $a4, -4
	b	.LBB0_201
.LBB0_200:                              # %land.lhs.true111.i
                                        #   in Loop: Header=BB0_194 Depth=3
	ld.w	$a4, $a4, -4
	addi.w	$s8, $a1, 1
	bge	$s8, $a4, .LBB0_202
.LBB0_201:                              # %if.else124.i
                                        #   in Loop: Header=BB0_194 Depth=3
	addi.w	$s8, $s4, 1
	slt	$a1, $s4, $a1
	slt	$s4, $a4, $s8
	masknez	$t2, $a4, $s4
	maskeqz	$s4, $s8, $s4
	or	$t2, $s4, $t2
	masknez	$t2, $t2, $a1
	maskeqz	$a1, $a4, $a1
	or	$s8, $a1, $t2
	.p2align	4, , 16
.LBB0_202:                              # %if.end154.i
                                        #   in Loop: Header=BB0_194 Depth=3
	sub.d	$a1, $t8, $s3
	add.w	$s4, $s8, $a1
	bltz	$s8, .LBB0_210
# %bb.203:                              # %while.cond160.preheader.i
                                        #   in Loop: Header=BB0_194 Depth=3
	bge	$s8, $s3, .LBB0_210
# %bb.204:                              # %while.cond160.preheader.i
                                        #   in Loop: Header=BB0_194 Depth=3
	bge	$s4, $fp, .LBB0_210
# %bb.205:                              # %land.rhs166.preheader.i
                                        #   in Loop: Header=BB0_194 Depth=3
	add.w	$s4, $s8, $t0
	bstrpick.d	$a1, $s8, 31, 0
	add.d	$a1, $a0, $a1
	.p2align	4, , 16
.LBB0_206:                              # %land.rhs166.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_179 Depth=2
                                        #       Parent Loop BB0_194 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a4, $a1, 0
	ldx.bu	$t2, $s2, $s4
	bne	$a4, $t2, .LBB0_209
# %bb.207:                              # %while.body176.i
                                        #   in Loop: Header=BB0_206 Depth=4
	addi.w	$s8, $s8, 1
	bge	$s8, $s3, .LBB0_209
# %bb.208:                              # %while.body176.i
                                        #   in Loop: Header=BB0_206 Depth=4
	addi.d	$s4, $s4, 1
	addi.d	$a1, $a1, 1
	blt	$s4, $fp, .LBB0_206
.LBB0_209:                              # %if.end179.i.loopexit
                                        #   in Loop: Header=BB0_194 Depth=3
	add.w	$s4, $t0, $s8
.LBB0_210:                              # %if.end179.i
                                        #   in Loop: Header=BB0_194 Depth=3
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	stx.w	$s8, $a1, $a2
	bne	$s8, $s3, .LBB0_212
# %bb.211:                              # %if.end179.i
                                        #   in Loop: Header=BB0_194 Depth=3
	beq	$s4, $fp, .LBB0_231
.LBB0_212:                              # %if.end190.i
                                        #   in Loop: Header=BB0_194 Depth=3
	beq	$s8, $s3, .LBB0_232
# %bb.213:                              # %if.end196.i
                                        #   in Loop: Header=BB0_194 Depth=3
	beq	$s4, $fp, .LBB0_233
# %bb.214:                              # %for.cond83.i
                                        #   in Loop: Header=BB0_194 Depth=3
	addi.d	$t8, $t8, 1
	addi.d	$t0, $t0, 1
	lu12i.w	$s8, 1024
	bne	$t8, $t7, .LBB0_194
# %bb.215:                              # %for.end205.i
                                        #   in Loop: Header=BB0_179 Depth=2
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a2, $s1, $a0, 2
	slli.d	$a4, $s1, 2
	stx.w	$a1, $a0, $a4
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a3, $s1, $a1, 2
	stx.w	$s3, $a1, $a4
	move	$a1, $t1
	move	$a4, $t5
	move	$t0, $a7
	ld.d	$s0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	b	.LBB0_217
	.p2align	4, , 16
.LBB0_216:                              # %for.inc230.i
                                        #   in Loop: Header=BB0_217 Depth=3
	addi.d	$t0, $t0, 1
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 4
	beqz	$a4, .LBB0_219
.LBB0_217:                              # %for.body215.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t8, $a1, 0
	ld.w	$t2, $a2, 0
	bge	$t2, $t8, .LBB0_216
# %bb.218:                              # %if.then222.i
                                        #   in Loop: Header=BB0_217 Depth=3
	st.w	$t8, $a2, 0
	st.w	$t0, $a3, 0
	b	.LBB0_216
.LBB0_219:                              # %iter.check1106
                                        #   in Loop: Header=BB0_179 Depth=2
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 280                   # 8-byte Folded Reload
	beqz	$t3, .LBB0_228
# %bb.220:                              # %iter.check1106
                                        #   in Loop: Header=BB0_179 Depth=2
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	ori	$a1, $zero, 64
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	bltu	$a3, $a1, .LBB0_228
# %bb.221:                              # %vector.main.loop.iter.check1108
                                        #   in Loop: Header=BB0_179 Depth=2
	ori	$a1, $zero, 7
	bgeu	$t3, $a1, .LBB0_223
# %bb.222:                              #   in Loop: Header=BB0_179 Depth=2
	move	$a3, $zero
	b	.LBB0_226
.LBB0_223:                              # %vector.ph1109
                                        #   in Loop: Header=BB0_179 Depth=2
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	bstrins.d	$a3, $zero, 3, 0
	move	$a1, $s7
	move	$a2, $s4
	.p2align	4, , 16
.LBB0_224:                              # %vector.body1112
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$t6, $t6, -16
	addi.d	$a2, $a2, 64
	addi.d	$a1, $a1, 64
	bnez	$t6, .LBB0_224
# %bb.225:                              # %vec.epilog.iter.check1122
                                        #   in Loop: Header=BB0_179 Depth=2
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	andi	$a1, $a1, 12
	beqz	$a1, .LBB0_230
.LBB0_226:                              # %vec.epilog.ph1121
                                        #   in Loop: Header=BB0_179 Depth=2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	bstrins.d	$a2, $zero, 1, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	slli.d	$a3, $a3, 2
	.p2align	4, , 16
.LBB0_227:                              # %vec.epilog.vector.body1127
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr0, $t1, $a3
	vstx	$vr0, $t4, $a3
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB0_227
.LBB0_228:                              # %for.body236.i.preheader
                                        #   in Loop: Header=BB0_179 Depth=2
	alsl.d	$a1, $a2, $s0, 2
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 400                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_229:                              # %for.body236.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a3, 0
	st.w	$a4, $a1, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 4
	bne	$t7, $a2, .LBB0_229
	b	.LBB0_192
.LBB0_230:                              #   in Loop: Header=BB0_179 Depth=2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a3
	b	.LBB0_228
.LBB0_231:                              # %if.then187.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	b	.LBB0_234
.LBB0_232:                              # %if.then193.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	add.d	$fp, $s4, $a0
	b	.LBB0_234
.LBB0_233:                              # %if.then199.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	move	$s3, $s8
.LBB0_234:                              # %extend_fw.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $s1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	lu12i.w	$s8, 1024
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
.LBB0_235:                              # %extend_fw.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
.LBB0_236:                              # %extend_fw.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $s6, 12
	ld.w	$a2, $a0, 56
	ld.w	$a3, $a0, 48
	add.d	$a0, $s3, $a6
	sub.d	$a1, $a0, $a1
	mul.d	$a1, $a1, $a2
	mul.d	$a2, $a3, $s5
	add.w	$a1, $a2, $a1
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	bltz	$a1, .LBB0_238
# %bb.237:                              # %if.then342
                                        #   in Loop: Header=BB0_6 Depth=1
	st.w	$a0, $s6, 12
	st.w	$fp, $s6, 8
	.p2align	4, , 16
.LBB0_238:                              # %if.end351
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $a2, 16
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ori	$a1, $zero, 2
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_423
# %bb.239:                              # %for.body361.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$s4, $zero, 1
	b	.LBB0_244
.LBB0_240:                              # %grow_exon_right.exit530
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.w	$a3, $s3, 36
.LBB0_241:                              # %cleanup492.sink.split
                                        #   in Loop: Header=BB0_244 Depth=2
	addi.d	$a1, $sp, 536
	move	$a0, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(merge)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 544
	move	$s4, $s6
.LBB0_242:                              # %cleanup492
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 16
.LBB0_243:                              # %cleanup497
                                        #   in Loop: Header=BB0_244 Depth=2
	addi.w	$s4, $s4, 1
	bgeu	$s4, $a0, .LBB0_423
.LBB0_244:                              # %for.body361
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_252 Depth 3
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_276 Depth 3
                                        #       Child Loop BB0_279 Depth 3
                                        #       Child Loop BB0_282 Depth 3
                                        #       Child Loop BB0_295 Depth 3
                                        #       Child Loop BB0_299 Depth 3
                                        #       Child Loop BB0_302 Depth 3
                                        #       Child Loop BB0_351 Depth 3
                                        #       Child Loop BB0_355 Depth 3
                                        #       Child Loop BB0_359 Depth 3
                                        #       Child Loop BB0_363 Depth 3
                                        #         Child Loop BB0_395 Depth 4
                                        #           Child Loop BB0_405 Depth 5
                                        #         Child Loop BB0_414 Depth 4
                                        #         Child Loop BB0_368 Depth 4
                                        #         Child Loop BB0_375 Depth 4
                                        #           Child Loop BB0_387 Depth 5
                                        #         Child Loop BB0_410 Depth 4
                                        #         Child Loop BB0_419 Depth 4
                                        #       Child Loop BB0_341 Depth 3
                                        #       Child Loop BB0_346 Depth 3
                                        #       Child Loop BB0_325 Depth 3
                                        #       Child Loop BB0_330 Depth 3
                                        #       Child Loop BB0_335 Depth 3
	ld.d	$a1, $s2, 0
	addi.w	$s6, $s4, -1
	bstrpick.d	$a2, $s6, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$s5, $a1, $a2
	bstrpick.d	$a2, $s4, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a5, $a1, $a2
	ld.wu	$t0, $s5, 12
	ld.w	$a7, $a5, 4
	nor	$a1, $t0, $zero
	add.w	$s7, $a7, $a1
	ori	$a1, $zero, 1
	blt	$s7, $a1, .LBB0_243
# %bb.245:                              # %if.then376
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.w	$s0, $a5, 0
	ld.w	$t1, $s5, 8
	addi.w	$a6, $s0, -1
	bgeu	$t1, $a6, .LBB0_243
# %bb.246:                              # %if.then382
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.w	$a3, $s3, 36
	ld.d	$a0, $s3, 8
	ori	$a1, $zero, 500
	bltu	$a1, $s7, .LBB0_324
# %bb.247:                              # %if.then386
                                        #   in Loop: Header=BB0_244 Depth=2
	nor	$a1, $t1, $zero
	add.w	$fp, $s0, $a1
	bstrpick.d	$a4, $s7, 31, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	bgeu	$a1, $fp, .LBB0_249
# %bb.248:                              #   in Loop: Header=BB0_244 Depth=2
	move	$s5, $zero
	b	.LBB0_322
.LBB0_249:                              # %if.end.i386
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	fld.d	$fs1, $a1, %pc_lo12(.LCPI0_1)
	sub.w	$t4, $fp, $s7
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -912
	fmadd.d	$fa1, $fa0, $fs1, $fa1
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$a1, $fa1
	addi.w	$a1, $a1, 0
	sltu	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	addi.w	$t3, $zero, -1
	or	$t2, $a2, $a1
	st.d	$t3, $sp, 416                   # 8-byte Folded Spill
	bge	$t3, $t4, .LBB0_260
# %bb.250:                              # %if.end45.i
                                        #   in Loop: Header=BB0_244 Depth=2
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	bstrpick.d	$a2, $t1, 31, 0
	add.d	$s6, $a1, $t0
	add.d	$s1, $a0, $a2
	addi.d	$s2, $s6, -1
	addi.d	$s8, $s1, -1
	move	$s3, $s7
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	beqz	$fp, .LBB0_263
# %bb.251:                              # %land.rhs.i390.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	move	$a0, $fp
	move	$s3, $s7
	.p2align	4, , 16
.LBB0_252:                              # %land.rhs.i390
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s3
	ldx.bu	$a2, $s2, $s3
	ldx.bu	$a3, $s8, $a0
	bne	$a2, $a3, .LBB0_262
# %bb.253:                              # %for.inc.i408
                                        #   in Loop: Header=BB0_252 Depth=3
	addi.w	$s3, $a1, -1
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB0_255
# %bb.254:                              # %for.inc.i408
                                        #   in Loop: Header=BB0_252 Depth=3
	addi.w	$a0, $a0, -1
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_252
.LBB0_255:                              # %for.end.i411
                                        #   in Loop: Header=BB0_244 Depth=2
	bnez	$s3, .LBB0_263
# %bb.256:                              # %if.then62.i
                                        #   in Loop: Header=BB0_244 Depth=2
	add.d	$a0, $t1, $t4
	addi.d	$s0, $a0, 1
	addi.d	$s1, $t0, 1
	addi.d	$s2, $a7, -1
	ori	$a0, $zero, 32
	move	$s3, $a6
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$s0, $a0, 0
	ld.w	$a1, $sp, 548
	ld.w	$s0, $sp, 544
	ld.d	$a0, $sp, 536
	st.w	$s1, $fp, 4
	st.w	$s3, $fp, 8
	st.w	$s2, $fp, 12
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	bltu	$s0, $a1, .LBB0_258
# %bb.257:                              # %if.then.i397.i
                                        #   in Loop: Header=BB0_244 Depth=2
	addi.d	$a1, $a1, 5
	st.w	$a1, $sp, 548
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536
.LBB0_258:                              # %add_col_elt.exit406.i
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	lu12i.w	$s8, 1024
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	bstrpick.d	$a2, $s0, 31, 0
	addi.w	$a1, $s0, 1
	st.w	$a1, $sp, 544
	slli.d	$a2, $a2, 3
	stx.d	$fp, $a0, $a2
	fmov.d	$fa0, $fs0
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a3, $s3, 36
	bnez	$a1, .LBB0_323
.LBB0_259:                              # %greedy.exit.if.end446_crit_edge
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a0, $s3, 8
	b	.LBB0_324
.LBB0_260:                              # %if.then8.i
                                        #   in Loop: Header=BB0_244 Depth=2
	bstrpick.d	$a0, $a3, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_2)
	bstrpick.d	$a0, $fp, 31, 0
	movgr2fr.d	$fa3, $a0
	ffint.d.l	$fs2, $fa3
	fmul.d	$fa2, $fs2, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_267
# %bb.261:                              # %if.else.i418
                                        #   in Loop: Header=BB0_244 Depth=2
	addi.w	$s5, $t2, 1
	b	.LBB0_322
.LBB0_262:                              #   in Loop: Header=BB0_244 Depth=2
	move	$s3, $a1
.LBB0_263:                              # %iter.check1070
                                        #   in Loop: Header=BB0_244 Depth=2
	st.d	$t4, $sp, 464                   # 8-byte Folded Spill
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	st.d	$t2, $sp, 456                   # 8-byte Folded Spill
	add.d	$a0, $t2, $fp
	addi.w	$a1, $a0, 0
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$s4, $a0, 2
	move	$a0, $s4
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	st.d	$t0, $sp, 152                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $s4
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	move	$s4, $a0
	move	$a0, $zero
	sub.d	$a1, $a6, $a7
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	bstrpick.d	$t1, $t3, 31, 0
	addi.d	$t2, $t1, 1
	ori	$a1, $zero, 3
	bltu	$t3, $a1, .LBB0_270
# %bb.264:                              # %iter.check1070
                                        #   in Loop: Header=BB0_244 Depth=2
	sub.d	$a1, $s4, $s5
	ori	$a2, $zero, 64
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB0_278
# %bb.265:                              # %vector.main.loop.iter.check1072
                                        #   in Loop: Header=BB0_244 Depth=2
	ori	$a0, $zero, 15
	bgeu	$t3, $a0, .LBB0_271
# %bb.266:                              #   in Loop: Header=BB0_244 Depth=2
	move	$a0, $zero
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB0_275
.LBB0_267:                              # %if.then23.i
                                        #   in Loop: Header=BB0_244 Depth=2
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	ori	$a0, $zero, 32
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	move	$s0, $t0
	move	$s1, $t1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	vinsgr2vr.w	$vr0, $s1, 0
	vinsgr2vr.w	$vr0, $s0, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	vinsgr2vr.w	$vr0, $a0, 2
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_3)
	ld.w	$a1, $sp, 548
	ld.w	$s1, $sp, 544
	ld.d	$a0, $sp, 536
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	vinsgr2vr.w	$vr0, $a2, 3
	vadd.w	$vr0, $vr0, $vr1
	vst	$vr0, $a3, 0
	bltu	$s1, $a1, .LBB0_269
# %bb.268:                              # %if.then.i.i
                                        #   in Loop: Header=BB0_244 Depth=2
	addi.d	$a1, $a1, 5
	st.w	$a1, $sp, 548
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	move	$s0, $a3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	move	$a3, $s0
	st.d	$a0, $sp, 536
.LBB0_269:                              # %add_col_elt.exit.i
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	bstrpick.d	$a1, $s1, 31, 0
	addi.d	$a2, $s1, 1
	st.w	$a2, $sp, 544
	slli.d	$a1, $a1, 3
	stx.d	$a3, $a0, $a1
	sub.d	$a0, $s7, $fp
	vldi	$vr0, -912
	fmadd.d	$fa0, $fs2, $fs1, $fa0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	add.w	$s5, $a0, $a1
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_321
.LBB0_270:                              #   in Loop: Header=BB0_244 Depth=2
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB0_278
.LBB0_271:                              # %vector.ph1073
                                        #   in Loop: Header=BB0_244 Depth=2
	bstrpick.d	$a0, $t2, 32, 4
	slli.d	$a0, $a0, 4
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	xvreplgr2vr.w	$xr0, $a1
	addi.d	$a1, $s4, 32
	addi.d	$a2, $s5, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB0_272:                              # %vector.body1078
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB0_272
# %bb.273:                              # %middle.block1081
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	beq	$t2, $a0, .LBB0_280
# %bb.274:                              # %vec.epilog.iter.check1086
                                        #   in Loop: Header=BB0_244 Depth=2
	andi	$a1, $t2, 12
	beqz	$a1, .LBB0_278
.LBB0_275:                              # %vec.epilog.ph1085
                                        #   in Loop: Header=BB0_244 Depth=2
	move	$a3, $a0
	bstrpick.d	$a0, $t2, 32, 2
	slli.d	$a0, $a0, 2
	vreplgr2vr.w	$vr0, $a5
	sub.d	$a1, $a3, $a0
	alsl.d	$a2, $a3, $s4, 2
	alsl.d	$a3, $a3, $s5, 2
	.p2align	4, , 16
.LBB0_276:                              # %vec.epilog.vector.body1093
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB0_276
# %bb.277:                              # %vec.epilog.middle.block1096
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	beq	$t2, $a0, .LBB0_280
.LBB0_278:                              # %for.body85.i.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	sub.d	$a1, $t1, $a0
	addi.d	$a1, $a1, 1
	alsl.d	$a2, $a0, $s4, 2
	alsl.d	$a0, $a0, $s5, 2
	.p2align	4, , 16
.LBB0_279:                              # %for.body85.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a5, $a0, 0
	st.w	$a5, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_279
.LBB0_280:                              # %for.end93.i
                                        #   in Loop: Header=BB0_244 Depth=2
	slli.d	$t4, $a4, 2
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	stx.w	$s3, $s5, $t4
	st.d	$s4, $sp, 480                   # 8-byte Folded Spill
	move	$s3, $zero
	beqz	$fp, .LBB0_289
# %bb.281:                              # %land.rhs107.preheader.i
                                        #   in Loop: Header=BB0_244 Depth=2
	sltu	$a0, $fp, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 0
	move	$a2, $s6
	move	$a3, $s1
	.p2align	4, , 16
.LBB0_282:                              # %land.rhs107.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a4, $a2, 0
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB0_285
# %bb.283:                              # %for.inc118.i
                                        #   in Loop: Header=BB0_282 Depth=3
	addi.w	$s3, $s3, 1
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB0_282
# %bb.284:                              #   in Loop: Header=BB0_244 Depth=2
	move	$s3, $a0
.LBB0_285:                              # %for.end120.i
                                        #   in Loop: Header=BB0_244 Depth=2
	bne	$s3, $s7, .LBB0_289
# %bb.286:                              # %if.then123.i
                                        #   in Loop: Header=BB0_244 Depth=2
	addi.d	$s0, $t0, 1
	addi.d	$s1, $a7, 1
	add.d	$s2, $t0, $s7
	addi.d	$s3, $a6, -1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$s0, $a0, 0
	ld.w	$a1, $sp, 548
	ld.w	$s0, $sp, 544
	ld.d	$a0, $sp, 536
	st.w	$s1, $fp, 4
	st.w	$s2, $fp, 8
	st.w	$s3, $fp, 12
	bltu	$s0, $a1, .LBB0_288
# %bb.287:                              # %if.then.i415.i
                                        #   in Loop: Header=BB0_244 Depth=2
	addi.d	$a1, $a1, 5
	st.w	$a1, $sp, 548
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536
.LBB0_288:                              # %add_col_elt.exit424.i
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	lu12i.w	$s8, 1024
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	bstrpick.d	$a1, $s0, 31, 0
	addi.d	$a2, $s0, 1
	st.w	$a2, $sp, 544
	slli.d	$a1, $a1, 3
	stx.d	$fp, $a0, $a1
	move	$a0, $a3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	b	.LBB0_320
.LBB0_289:                              # %iter.check1038
                                        #   in Loop: Header=BB0_244 Depth=2
	st.d	$t4, $sp, 400                   # 8-byte Folded Spill
	st.d	$t2, $sp, 392                   # 8-byte Folded Spill
	st.d	$t1, $sp, 408                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 424                   # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	move	$a6, $a0
	move	$a0, $zero
	ori	$a1, $zero, 3
	bltu	$a3, $a1, .LBB0_293
# %bb.290:                              # %iter.check1038
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
	sub.d	$a1, $a6, $a7
	ori	$a2, $zero, 64
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	xvld	$xr1, $sp, 48                   # 32-byte Folded Reload
	ld.d	$a4, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 400                   # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB0_301
# %bb.291:                              # %vector.main.loop.iter.check1040
                                        #   in Loop: Header=BB0_244 Depth=2
	ori	$a0, $zero, 15
	bgeu	$a3, $a0, .LBB0_294
# %bb.292:                              #   in Loop: Header=BB0_244 Depth=2
	move	$a0, $zero
	b	.LBB0_298
.LBB0_293:                              #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a4, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 400                   # 8-byte Folded Reload
	b	.LBB0_301
.LBB0_294:                              # %vector.ph1041
                                        #   in Loop: Header=BB0_244 Depth=2
	bstrpick.d	$a0, $t2, 32, 4
	slli.d	$a0, $a0, 4
	addi.d	$a1, $a6, 32
	addi.d	$a2, $a7, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB0_295:                              # %vector.body1044
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr1, $a2, -32
	xvst	$xr1, $a2, 0
	xvst	$xr1, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB0_295
# %bb.296:                              # %middle.block1047
                                        #   in Loop: Header=BB0_244 Depth=2
	beq	$t2, $a0, .LBB0_303
# %bb.297:                              # %vec.epilog.iter.check1052
                                        #   in Loop: Header=BB0_244 Depth=2
	andi	$a1, $t2, 12
	beqz	$a1, .LBB0_301
.LBB0_298:                              # %vec.epilog.ph1051
                                        #   in Loop: Header=BB0_244 Depth=2
	move	$a3, $a0
	bstrpick.d	$a0, $t2, 32, 2
	slli.d	$a0, $a0, 2
	sub.d	$a1, $a3, $a0
	alsl.d	$a2, $a3, $a6, 2
	alsl.d	$a3, $a3, $a7, 2
	.p2align	4, , 16
.LBB0_299:                              # %vec.epilog.vector.body1057
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB0_299
# %bb.300:                              # %vec.epilog.middle.block1060
                                        #   in Loop: Header=BB0_244 Depth=2
	beq	$t2, $a0, .LBB0_303
.LBB0_301:                              # %for.body144.i.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	sub.d	$a1, $t1, $a0
	addi.d	$a1, $a1, 1
	alsl.d	$a2, $a0, $a6, 2
	alsl.d	$a0, $a0, $a7, 2
	.p2align	4, , 16
.LBB0_302:                              # %for.body144.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	st.w	$a3, $a0, 0
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_302
.LBB0_303:                              # %for.end151.i
                                        #   in Loop: Header=BB0_244 Depth=2
	st.d	$a6, $sp, 488                   # 8-byte Folded Spill
	sub.d	$a0, $t0, $a5
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	alsl.d	$a0, $a5, $a4, 2
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	addi.w	$s5, $a5, 1
	alsl.d	$a0, $a5, $a7, 2
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	stx.w	$s3, $a7, $t3
	bstrpick.d	$a0, $s5, 31, 0
	slli.d	$s3, $a0, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	beqz	$t2, .LBB0_308
# %bb.304:                              # %iter.check
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$t7, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 424                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	sltu	$a2, $a1, $s5
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s5, $a2
	or	$a1, $a2, $a1
	bstrpick.d	$t5, $a1, 31, 0
	ori	$a3, $zero, 1
	ori	$a1, $zero, 5
	move	$t8, $s5
	bltu	$s5, $a1, .LBB0_349
# %bb.305:                              # %iter.check
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	ori	$a6, $zero, 1
	ori	$a2, $zero, 64
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	xvld	$xr2, $sp, 48                   # 32-byte Folded Reload
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 488                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 296                   # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB0_358
# %bb.306:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_244 Depth=2
	addi.d	$a1, $t5, -1
	ori	$a2, $zero, 17
	bgeu	$t8, $a2, .LBB0_350
# %bb.307:                              #   in Loop: Header=BB0_244 Depth=2
	move	$a2, $zero
	b	.LBB0_354
.LBB0_308:                              # %for.end183.thread.i
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	st.w	$a1, $a6, 0
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.w	$a0, $a2, 0
	st.w	$zero, $a3, 0
	addi.w	$s0, $zero, -1
	ori	$s5, $zero, 1
	move	$s3, $s0
.LBB0_309:                              # %while.end531.i
                                        #   in Loop: Header=BB0_244 Depth=2
	bgeu	$t2, $s5, .LBB0_311
# %bb.310:                              # %if.then534.i
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	move	$fp, $a6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	lu12i.w	$s8, 1024
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_320
.LBB0_311:                              # %if.end535.i
                                        #   in Loop: Header=BB0_244 Depth=2
	slli.d	$a1, $s0, 2
	ldx.w	$a2, $a6, $a1
	slli.d	$a0, $s3, 2
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $a0
	sub.w	$a4, $s7, $a2
	slt	$a4, $a4, $a3
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$fp, $a5, $a1
	masknez	$a1, $a2, $a4
	maskeqz	$a2, $a3, $a4
	or	$s1, $a2, $a1
	lu12i.w	$s8, 1024
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	beqz	$s1, .LBB0_315
# %bb.312:                              # %if.then580.i
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s2, $a3, 1
	addi.d	$s4, $a2, 1
	sub.d	$a1, $a3, $t2
	add.d	$a1, $a1, $s1
	add.d	$s5, $a1, $a0
	add.d	$s6, $s1, $a2
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	st.w	$s2, $a0, 0
	ld.w	$a1, $sp, 548
	ld.w	$s2, $sp, 544
	ld.d	$a0, $sp, 536
	st.w	$s4, $a3, 4
	st.w	$s5, $a3, 8
	st.w	$s6, $a3, 12
	bltu	$s2, $a1, .LBB0_314
# %bb.313:                              # %if.then.i433.i
                                        #   in Loop: Header=BB0_244 Depth=2
	addi.d	$a1, $a1, 5
	st.w	$a1, $sp, 548
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	move	$s4, $a3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	move	$a3, $s4
	st.d	$a0, $sp, 536
.LBB0_314:                              # %add_col_elt.exit442.i
                                        #   in Loop: Header=BB0_244 Depth=2
	bstrpick.d	$a1, $s2, 31, 0
	addi.d	$a2, $s2, 1
	st.w	$a2, $sp, 544
	slli.d	$a1, $a1, 3
	stx.d	$a3, $a0, $a1
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
.LBB0_315:                              # %if.end586.i
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	bgeu	$s1, $s7, .LBB0_319
# %bb.316:                              # %if.then589.i
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	add.d	$a0, $a0, $fp
	add.d	$a0, $a0, $s1
	addi.d	$fp, $a0, 1
	add.d	$a0, $a2, $s1
	addi.d	$s1, $a0, 1
	addi.d	$s2, $a1, -1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.w	$fp, $a0, 0
	ld.w	$a1, $sp, 548
	ld.w	$fp, $sp, 544
	ld.d	$a0, $sp, 536
	st.w	$s1, $s5, 4
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $s5, 8
	st.w	$s2, $s5, 12
	bltu	$fp, $a1, .LBB0_318
# %bb.317:                              # %if.then.i451.i
                                        #   in Loop: Header=BB0_244 Depth=2
	addi.d	$a1, $a1, 5
	st.w	$a1, $sp, 548
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536
.LBB0_318:                              # %add_col_elt.exit460.i
                                        #   in Loop: Header=BB0_244 Depth=2
	bstrpick.d	$a1, $fp, 31, 0
	addi.d	$a2, $fp, 1
	st.w	$a2, $sp, 544
	slli.d	$a1, $a1, 3
	stx.d	$s5, $a0, $a1
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
.LBB0_319:                              # %if.end597.i
                                        #   in Loop: Header=BB0_244 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	add.w	$s5, $s3, $s0
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
.LBB0_320:                              # %greedy.exitthread-pre-split
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
.LBB0_321:                              # %greedy.exitthread-pre-split
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
.LBB0_322:                              # %greedy.exitthread-pre-split
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.w	$a1, $sp, 544
	movgr2fr.w	$fa0, $s5
	ffint.d.w	$fa0, $fa0
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a3, $s3, 36
	beqz	$a1, .LBB0_259
.LBB0_323:                              # %land.lhs.true407
                                        #   in Loop: Header=BB0_244 Depth=2
	bstrpick.d	$a0, $a3, 31, 0
	movgr2fr.d	$fa1, $a0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	ffint.d.l	$fa1, $fa1
	movgr2fr.d	$fa3, $a4
	ffint.d.l	$fa3, $fa3
	vldi	$vr4, -912
	fmadd.d	$fa2, $fa3, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	ld.d	$a0, $s3, 8
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_338
	.p2align	4, , 16
.LBB0_324:                              # %if.end446
                                        #   in Loop: Header=BB0_244 Depth=2
	sltui	$a1, $a3, 8
	maskeqz	$a2, $a3, $a1
	ld.wu	$a3, $s5, 8
	ori	$a4, $zero, 8
	masknez	$a1, $a4, $a1
	ld.w	$a4, $a5, 0
	or	$a1, $a2, $a1
	add.d	$a0, $a0, $a3
	nor	$a2, $a3, $zero
	add.d	$a2, $a4, $a2
	st.w	$a1, $sp, 532
	st.d	$a0, $sp, 504
	st.w	$a2, $sp, 512
	slli.d	$a0, $a1, 1
	addi.d	$a0, $a0, -2
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	addi.d	$a1, $zero, -1
	sll.w	$a0, $a1, $a0
	nor	$a0, $a0, $zero
	st.w	$a0, $sp, 528
	sub.d	$a0, $a4, $a3
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 520
	ori	$a1, $zero, 8
	lu12i.w	$a0, 128
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $sp, 496
	addi.d	$a0, $sp, 496
	pcaddu18i	$ra, %call36(bld_table)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.wu	$a2, $s5, 12
	ld.w	$a3, $s5, 8
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a5, $a1, 24
	add.d	$a1, $a0, $a2
	addi.w	$a3, $a3, 1
	addi.w	$a4, $a2, 1
	addi.d	$a0, $sp, 496
	addi.d	$a6, $sp, 552
	addi.d	$a2, $sp, 536
	st.d	$a2, $sp, 0
	move	$a2, $s7
	move	$a7, $zero
	pcaddu18i	$ra, %call36(exon_cores)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	.p2align	4, , 16
.LBB0_325:                              # %for.body.i479
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(tdestroy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s0, $s8, .LBB0_325
# %bb.326:                              # %free_hash_env.exit485
                                        #   in Loop: Header=BB0_244 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 544
	beqz	$a2, .LBB0_242
# %bb.327:                              # %if.then474
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a3, $sp, 536
	ld.d	$a4, $a3, 0
	ld.d	$a0, $s3, 8
	ld.w	$t1, $a4, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	ori	$a5, $zero, 2
	bltu	$t1, $a5, .LBB0_333
# %bb.328:                              # %if.then474
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.wu	$t0, $a4, 4
	ori	$a5, $zero, 2
	bltu	$t0, $a5, .LBB0_333
# %bb.329:                              # %land.rhs.preheader.i490
                                        #   in Loop: Header=BB0_244 Depth=2
	move	$a5, $zero
	bstrpick.d	$a7, $t1, 31, 0
	add.d	$a6, $a1, $t0
	add.d	$a7, $a0, $a7
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, -1
	.p2align	4, , 16
.LBB0_330:                              # %land.rhs.i495
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t2, $a6, $a5
	add.d	$t3, $a7, $a5
	ld.bu	$t4, $t3, -2
	ld.bu	$t5, $t2, -2
	bne	$t4, $t5, .LBB0_333
# %bb.331:                              # %while.body.i500
                                        #   in Loop: Header=BB0_330 Depth=3
	addi.d	$t3, $t3, -3
	st.w	$t1, $a4, 0
	st.w	$t0, $a4, 4
	bltu	$t3, $a0, .LBB0_333
# %bb.332:                              # %while.body.i500
                                        #   in Loop: Header=BB0_330 Depth=3
	addi.d	$t2, $t2, -3
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, -1
	addi.d	$a5, $a5, -1
	bgeu	$t2, $a1, .LBB0_330
.LBB0_333:                              # %grow_exon_left.exit508
                                        #   in Loop: Header=BB0_244 Depth=2
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	ld.w	$a3, $s3, 16
	ld.w	$a4, $a2, 8
	bgeu	$a4, $a3, .LBB0_240
# %bb.334:                              # %land.lhs.true.lr.ph.i514
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.w	$a5, $a2, 12
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	ldptr.w	$a6, $a6, 4148
	bstrpick.d	$a7, $a4, 31, 0
	bstrpick.d	$t0, $a5, 31, 0
	sltu	$t1, $a6, $a5
	masknez	$a6, $a6, $t1
	maskeqz	$t1, $a5, $t1
	or	$a6, $t1, $a6
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a0, $a0, $a7
	addi.d	$a5, $a5, 1
	add.d	$a1, $a1, $t0
	sub.d	$a6, $a6, $t0
	.p2align	4, , 16
.LBB0_335:                              # %land.lhs.true.i518
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a6, .LBB0_240
# %bb.336:                              # %land.rhs.i522
                                        #   in Loop: Header=BB0_335 Depth=3
	ld.bu	$a7, $a0, 0
	ld.bu	$t0, $a1, 0
	bne	$a7, $t0, .LBB0_240
# %bb.337:                              # %while.body.i526
                                        #   in Loop: Header=BB0_335 Depth=3
	addi.w	$a4, $a4, 1
	st.w	$a4, $a2, 8
	st.w	$a5, $a2, 12
	addi.d	$a0, $a0, 1
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 1
	addi.d	$a6, $a6, -1
	bne	$a3, $a4, .LBB0_335
	b	.LBB0_240
.LBB0_338:                              # %if.then425
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.d	$a4, $sp, 536
	ld.d	$a5, $a4, 0
	ld.w	$t2, $a5, 0
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 16
	ori	$a6, $zero, 2
	bltu	$t2, $a6, .LBB0_344
# %bb.339:                              # %if.then425
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.wu	$t1, $a5, 4
	ori	$a6, $zero, 2
	bltu	$t1, $a6, .LBB0_344
# %bb.340:                              # %land.rhs.preheader.i423
                                        #   in Loop: Header=BB0_244 Depth=2
	move	$a6, $zero
	bstrpick.d	$t0, $t2, 31, 0
	add.d	$a7, $a2, $t1
	add.d	$t0, $a0, $t0
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, -1
	.p2align	4, , 16
.LBB0_341:                              # %land.rhs.i428
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t3, $a7, $a6
	add.d	$t4, $t0, $a6
	ld.bu	$t5, $t4, -2
	ld.bu	$t6, $t3, -2
	bne	$t5, $t6, .LBB0_344
# %bb.342:                              # %while.body.i433
                                        #   in Loop: Header=BB0_341 Depth=3
	addi.d	$t4, $t4, -3
	st.w	$t2, $a5, 0
	st.w	$t1, $a5, 4
	bltu	$t4, $a0, .LBB0_344
# %bb.343:                              # %while.body.i433
                                        #   in Loop: Header=BB0_341 Depth=3
	addi.d	$t3, $t3, -3
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, -1
	addi.d	$a6, $a6, -1
	bgeu	$t3, $a2, .LBB0_341
.LBB0_344:                              # %grow_exon_left.exit441
                                        #   in Loop: Header=BB0_244 Depth=2
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a4, $a1
	ld.w	$a4, $s3, 16
	ld.w	$a5, $a1, 8
	bgeu	$a5, $a4, .LBB0_241
# %bb.345:                              # %land.lhs.true.lr.ph.i447
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.w	$a6, $a1, 12
	ld.d	$a7, $sp, 320                   # 8-byte Folded Reload
	ldptr.w	$a7, $a7, 4148
	bstrpick.d	$t0, $a5, 31, 0
	bstrpick.d	$t1, $a6, 31, 0
	sltu	$t2, $a7, $a6
	masknez	$a7, $a7, $t2
	maskeqz	$t2, $a6, $t2
	or	$a7, $t2, $a7
	bstrpick.d	$a7, $a7, 31, 0
	add.d	$a0, $a0, $t0
	addi.d	$a6, $a6, 1
	add.d	$a2, $a2, $t1
	sub.d	$a7, $a7, $t1
	.p2align	4, , 16
.LBB0_346:                              # %land.lhs.true.i451
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a7, .LBB0_241
# %bb.347:                              # %land.rhs.i455
                                        #   in Loop: Header=BB0_346 Depth=3
	ld.bu	$t0, $a0, 0
	ld.bu	$t1, $a2, 0
	bne	$t0, $t1, .LBB0_241
# %bb.348:                              # %while.body.i459
                                        #   in Loop: Header=BB0_346 Depth=3
	addi.w	$a5, $a5, 1
	st.w	$a5, $a1, 8
	st.w	$a6, $a1, 12
	addi.d	$a0, $a0, 1
	addi.d	$a6, $a6, 1
	addi.d	$a2, $a2, 1
	addi.d	$a7, $a7, -1
	bne	$a4, $a5, .LBB0_346
	b	.LBB0_241
.LBB0_349:                              #   in Loop: Header=BB0_244 Depth=2
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 488                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 296                   # 8-byte Folded Reload
	b	.LBB0_358
.LBB0_350:                              # %vector.ph1015
                                        #   in Loop: Header=BB0_244 Depth=2
	move	$a2, $a1
	bstrins.d	$a2, $zero, 3, 0
	xvreplgr2vr.w	$xr0, $a7
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 36
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_351:                              # %vector.body1018
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	xvst	$xr2, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_351
# %bb.352:                              # %middle.block1021
                                        #   in Loop: Header=BB0_244 Depth=2
	beq	$a1, $a2, .LBB0_360
# %bb.353:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_244 Depth=2
	andi	$a3, $a1, 12
	beqz	$a3, .LBB0_357
.LBB0_354:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB0_244 Depth=2
	move	$a4, $a1
	bstrins.d	$a4, $zero, 1, 0
	move	$a3, $a1
	bstrins.d	$a3, $a6, 1, 0
	vreplgr2vr.w	$vr0, $a7
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a5, 2
	addi.d	$a5, $a5, 4
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a6, $a2, $a6, 2
	addi.d	$a6, $a6, 4
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB0_355:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a5, 0
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a2, $a2, 4
	addi.d	$a6, $a6, 16
	bnez	$a2, .LBB0_355
# %bb.356:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_244 Depth=2
	bne	$a1, $a4, .LBB0_358
	b	.LBB0_360
.LBB0_357:                              #   in Loop: Header=BB0_244 Depth=2
	addi.d	$a3, $a2, 1
.LBB0_358:                              # %for.body175.i.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	sub.d	$a4, $t5, $a3
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	.p2align	4, , 16
.LBB0_359:                              # %for.body175.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a7, $a2, 0
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	st.w	$a3, $a1, 0
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB0_359
.LBB0_360:                              # %for.cond196.preheader.lr.ph.i
                                        #   in Loop: Header=BB0_244 Depth=2
	ld.w	$a1, $t7, 0
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	st.w	$a1, $a6, 0
	st.w	$t2, $a0, 0
	ld.w	$a0, $t6, 0
	addi.w	$t7, $t2, -1
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	st.w	$t2, $t4, 0
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	addi.d	$a0, $a2, -4
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 4
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a0, $t2, $s4, 2
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a0, $a3, -4
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 4
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	alsl.d	$a0, $t2, $t3, 2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	addi.w	$a7, $t2, 2
	add.d	$a0, $t0, $s0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a1, $t1, $a1
	nor	$a1, $a1, $zero
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	alsl.d	$a0, $t7, $a2, 2
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	alsl.d	$a0, $t7, $s4, 2
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	alsl.d	$t1, $t7, $a3, 2
	alsl.d	$t3, $t7, $t3, 2
	ori	$s5, $zero, 1
	ori	$t5, $zero, 2
	ori	$t6, $zero, 3
	st.d	$t7, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $a0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	move	$a4, $t2
	move	$t0, $t8
	b	.LBB0_363
	.p2align	4, , 16
.LBB0_361:                              #   in Loop: Header=BB0_363 Depth=3
	move	$a4, $a3
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
.LBB0_362:                              # %for.end527.i
                                        #   in Loop: Header=BB0_363 Depth=3
	addi.w	$s5, $s5, 1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	addi.w	$a7, $a7, 1
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	addi.w	$t5, $t5, 1
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	addi.w	$t6, $t6, 2
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	addi.d	$t1, $t1, -4
	addi.d	$t3, $t3, -4
	move	$a5, $s3
	bltu	$a4, $s5, .LBB0_309
.LBB0_363:                              # %for.cond196.preheader.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_395 Depth 4
                                        #           Child Loop BB0_405 Depth 5
                                        #         Child Loop BB0_414 Depth 4
                                        #         Child Loop BB0_368 Depth 4
                                        #         Child Loop BB0_375 Depth 4
                                        #           Child Loop BB0_387 Depth 5
                                        #         Child Loop BB0_410 Depth 4
                                        #         Child Loop BB0_419 Depth 4
	st.d	$t3, $sp, 360                   # 8-byte Folded Spill
	sub.w	$a1, $t2, $s5
	add.w	$a2, $s5, $t2
	st.d	$t0, $sp, 376                   # 8-byte Folded Spill
	st.d	$t1, $sp, 368                   # 8-byte Folded Spill
	bge	$t0, $t7, .LBB0_392
# %bb.364:                              # %for.end299.thread.i
                                        #   in Loop: Header=BB0_363 Depth=3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 0
	bstrpick.d	$ra, $s5, 31, 0
	alsl.d	$a0, $ra, $a6, 2
	move	$t0, $a6
	slli.d	$a6, $ra, 2
	stx.w	$a3, $t0, $a6
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	stx.w	$t2, $a3, $a6
	ld.d	$t8, $sp, 352                   # 8-byte Folded Reload
.LBB0_365:                              # %for.cond336.preheader.i
                                        #   in Loop: Header=BB0_363 Depth=3
	beqz	$s5, .LBB0_390
# %bb.366:                              # %for.body339.lr.ph.i
                                        #   in Loop: Header=BB0_363 Depth=3
	ld.w	$a0, $a0, 0
	move	$s3, $zero
	sub.d	$a6, $s5, $a4
	move	$t0, $t8
	move	$t1, $ra
	b	.LBB0_368
	.p2align	4, , 16
.LBB0_367:                              # %for.inc359.i
                                        #   in Loop: Header=BB0_368 Depth=4
	addi.d	$t1, $t1, -1
	addi.w	$s3, $s3, 1
	addi.d	$t0, $t0, 4
	beqz	$t1, .LBB0_390
.LBB0_368:                              # %for.body339.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        #       Parent Loop BB0_363 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $t0, 0
	blt	$a3, $a0, .LBB0_367
# %bb.369:                              # %land.lhs.true346.i
                                        #   in Loop: Header=BB0_368 Depth=4
	add.w	$a3, $s5, $s3
	bltu	$a3, $a4, .LBB0_371
# %bb.370:                              # %land.lhs.true346.i
                                        #   in Loop: Header=BB0_368 Depth=4
	slti	$t2, $a5, 0
	add.w	$t3, $a6, $s3
	sltui	$t3, $t3, 1
	and	$t2, $t3, $t2
	beqz	$t2, .LBB0_367
.LBB0_371:                              # %land.lhs.true346.i.for.end361.i.loopexit_crit_edge
                                        #   in Loop: Header=BB0_363 Depth=3
	st.d	$s5, $sp, 328                   # 8-byte Folded Spill
	alsl.d	$a4, $ra, $t8, 2
	slli.d	$a5, $ra, 2
	ld.d	$t0, $sp, 376                   # 8-byte Folded Reload
	blt	$t0, $t7, .LBB0_391
.LBB0_372:                              # %for.body367.lr.ph.i
                                        #   in Loop: Header=BB0_363 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s0, $a2, $a0, 2
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $a0, 2
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	b	.LBB0_375
	.p2align	4, , 16
.LBB0_373:                              #   in Loop: Header=BB0_375 Depth=4
	move	$t2, $s4
.LBB0_374:                              # %if.end462.i
                                        #   in Loop: Header=BB0_375 Depth=4
	ld.d	$t3, $sp, 488                   # 8-byte Folded Reload
	stx.w	$t2, $t3, $t1
	addi.w	$t0, $t0, 1
	addi.d	$a0, $a0, 1
	ld.d	$s4, $sp, 480                   # 8-byte Folded Reload
	beq	$t0, $t5, .LBB0_408
.LBB0_375:                              # %for.body367.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        #       Parent Loop BB0_363 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_387 Depth 5
	slli.d	$t1, $a0, 2
	bne	$a0, $a1, .LBB0_377
# %bb.376:                              # %if.then372.i
                                        #   in Loop: Header=BB0_375 Depth=4
	ld.w	$t2, $a6, 0
	addi.w	$s4, $t2, 1
	b	.LBB0_383
	.p2align	4, , 16
.LBB0_377:                              # %if.else377.i
                                        #   in Loop: Header=BB0_375 Depth=4
	bne	$a0, $a2, .LBB0_379
# %bb.378:                              # %if.then381.i
                                        #   in Loop: Header=BB0_375 Depth=4
	ld.w	$s4, $s0, 0
	b	.LBB0_383
	.p2align	4, , 16
.LBB0_379:                              # %if.else385.i
                                        #   in Loop: Header=BB0_375 Depth=4
	ld.d	$t2, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$t4, $a0, $t2, 2
	ldx.w	$t2, $t2, $t1
	ld.w	$t3, $t4, 4
	bge	$t2, $t3, .LBB0_381
# %bb.380:                              # %if.else385.if.else406_crit_edge.i
                                        #   in Loop: Header=BB0_375 Depth=4
	ld.w	$t4, $t4, -4
	b	.LBB0_382
.LBB0_381:                              # %land.lhs.true393.i
                                        #   in Loop: Header=BB0_375 Depth=4
	ld.w	$t4, $t4, -4
	addi.w	$s4, $t2, 1
	bge	$s4, $t4, .LBB0_383
.LBB0_382:                              # %if.else406.i
                                        #   in Loop: Header=BB0_375 Depth=4
	addi.w	$s4, $t3, 1
	slt	$t2, $t3, $t2
	slt	$t3, $t4, $s4
	masknez	$t8, $t4, $t3
	maskeqz	$t3, $s4, $t3
	or	$t3, $t3, $t8
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t4, $t2
	or	$s4, $t2, $t3
	.p2align	4, , 16
.LBB0_383:                              # %if.end436.i
                                        #   in Loop: Header=BB0_375 Depth=4
	bltz	$s4, .LBB0_373
# %bb.384:                              # %while.cond442.preheader.i
                                        #   in Loop: Header=BB0_375 Depth=4
	bgeu	$s4, $s7, .LBB0_373
# %bb.385:                              # %while.cond442.preheader.i
                                        #   in Loop: Header=BB0_375 Depth=4
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	sub.d	$t2, $a0, $t2
	add.w	$t2, $t2, $s4
	bgeu	$t2, $fp, .LBB0_373
# %bb.386:                              # %land.rhs448.preheader.i
                                        #   in Loop: Header=BB0_375 Depth=4
	add.d	$t2, $s4, $t0
	bstrpick.d	$t3, $t2, 31, 0
	move	$t2, $s4
	.p2align	4, , 16
.LBB0_387:                              # %land.rhs448.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        #       Parent Loop BB0_363 Depth=3
                                        #         Parent Loop BB0_375 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.bu	$t4, $s6, $s4
	ldx.bu	$t8, $s1, $t3
	bne	$t4, $t8, .LBB0_374
# %bb.388:                              # %while.body458.i
                                        #   in Loop: Header=BB0_387 Depth=5
	addi.d	$s4, $s4, 1
	addi.d	$t2, $t2, 1
	bgeu	$s4, $s7, .LBB0_374
# %bb.389:                              # %while.body458.i
                                        #   in Loop: Header=BB0_387 Depth=5
	addi.d	$t3, $t3, 1
	bltu	$t3, $fp, .LBB0_387
	b	.LBB0_374
	.p2align	4, , 16
.LBB0_390:                              #   in Loop: Header=BB0_363 Depth=3
	move	$a3, $a4
	move	$s3, $a5
	alsl.d	$a4, $ra, $t8, 2
	slli.d	$a5, $ra, 2
	ld.d	$t0, $sp, 376                   # 8-byte Folded Reload
	bge	$t0, $t7, .LBB0_372
.LBB0_391:                              # %for.end467.thread.i
                                        #   in Loop: Header=BB0_363 Depth=3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	stx.w	$a0, $t8, $a5
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	stx.w	$t2, $a0, $a5
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 360                   # 8-byte Folded Reload
	b	.LBB0_417
	.p2align	4, , 16
.LBB0_392:                              # %for.body199.lr.ph.i
                                        #   in Loop: Header=BB0_363 Depth=3
	bstrpick.d	$ra, $s5, 31, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 2
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 424                   # 8-byte Folded Reload
	ori	$t8, $zero, 1
	ori	$s3, $zero, 2
	b	.LBB0_395
	.p2align	4, , 16
.LBB0_393:                              #   in Loop: Header=BB0_395 Depth=4
	move	$s0, $t2
.LBB0_394:                              # %while.end.i399
                                        #   in Loop: Header=BB0_395 Depth=4
	stx.w	$s0, $s4, $t1
	addi.d	$t0, $t0, 1
	addi.w	$t1, $t0, 0
	addi.d	$a6, $a6, 1
	beq	$a7, $t1, .LBB0_412
.LBB0_395:                              # %for.body199.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        #       Parent Loop BB0_363 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_405 Depth 5
	slli.d	$t1, $t0, 2
	bne	$t0, $a1, .LBB0_397
# %bb.396:                              # %if.then205.i
                                        #   in Loop: Header=BB0_395 Depth=4
	ld.w	$s0, $a3, 0
	b	.LBB0_403
	.p2align	4, , 16
.LBB0_397:                              # %if.else209.i
                                        #   in Loop: Header=BB0_395 Depth=4
	bne	$t0, $a2, .LBB0_399
# %bb.398:                              # %if.then214.i
                                        #   in Loop: Header=BB0_395 Depth=4
	ld.w	$t2, $a0, 0
	addi.w	$s0, $t2, -1
	b	.LBB0_403
	.p2align	4, , 16
.LBB0_399:                              # %if.else219.i
                                        #   in Loop: Header=BB0_395 Depth=4
	ld.d	$t2, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$t4, $t0, $t2, 2
	ldx.w	$t3, $t2, $t1
	ld.w	$t2, $t4, 4
	bge	$t2, $t3, .LBB0_401
# %bb.400:                              # %if.else219.if.else240_crit_edge.i
                                        #   in Loop: Header=BB0_395 Depth=4
	ld.w	$t4, $t4, -4
	b	.LBB0_402
.LBB0_401:                              # %land.lhs.true227.i
                                        #   in Loop: Header=BB0_395 Depth=4
	ld.w	$t4, $t4, -4
	addi.w	$s0, $t3, -1
	bge	$t4, $s0, .LBB0_403
.LBB0_402:                              # %if.else240.i
                                        #   in Loop: Header=BB0_395 Depth=4
	slt	$s0, $t4, $t2
	slt	$t3, $t4, $t3
	addi.w	$t4, $t4, -1
	masknez	$s3, $t2, $t3
	maskeqz	$t3, $t4, $t3
	or	$t3, $t3, $s3
	ori	$s3, $zero, 2
	ori	$t8, $zero, 1
	maskeqz	$t3, $t3, $s0
	masknez	$t2, $t2, $s0
	or	$s0, $t3, $t2
	.p2align	4, , 16
.LBB0_403:                              # %if.end271.i
                                        #   in Loop: Header=BB0_395 Depth=4
	blt	$s0, $t8, .LBB0_394
# %bb.404:                              # %if.end271.i
                                        #   in Loop: Header=BB0_395 Depth=4
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	add.d	$t2, $t2, $t0
	add.w	$t2, $t2, $s0
	blt	$t2, $t8, .LBB0_394
	.p2align	4, , 16
.LBB0_405:                              # %land.rhs280.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        #       Parent Loop BB0_363 Depth=3
                                        #         Parent Loop BB0_395 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	move	$t2, $s0
	add.w	$t3, $a6, $s0
	ldx.bu	$t4, $s2, $s0
	ldx.bu	$s0, $s8, $t3
	bne	$t4, $s0, .LBB0_393
# %bb.406:                              # %while.body292.i
                                        #   in Loop: Header=BB0_405 Depth=5
	addi.w	$s0, $t2, -1
	blt	$t3, $s3, .LBB0_394
# %bb.407:                              # %while.body292.i
                                        #   in Loop: Header=BB0_405 Depth=5
	blt	$t8, $t2, .LBB0_405
	b	.LBB0_394
	.p2align	4, , 16
.LBB0_408:                              # %for.end467.i
                                        #   in Loop: Header=BB0_363 Depth=3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	move	$a0, $zero
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	stx.w	$a1, $a2, $a5
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a2, 2
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	stx.w	$t2, $a2, $a5
	ld.d	$t3, $sp, 360                   # 8-byte Folded Reload
	move	$a2, $t3
	ld.d	$t1, $sp, 368                   # 8-byte Folded Reload
	move	$a5, $t1
	b	.LBB0_410
	.p2align	4, , 16
.LBB0_409:                              # %for.inc498.i
                                        #   in Loop: Header=BB0_410 Depth=4
	addi.w	$a0, $a0, 1
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, 4
	beq	$t6, $a0, .LBB0_416
.LBB0_410:                              # %for.body477.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        #       Parent Loop BB0_363 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a2, 0
	st.w	$a6, $a5, 0
	addi.w	$a6, $zero, -1
	lu32i.d	$a6, 0
	st.w	$a6, $a2, 0
	ld.w	$a6, $a5, 0
	ld.w	$t0, $a4, 0
	bge	$t0, $a6, .LBB0_409
# %bb.411:                              # %if.then490.i
                                        #   in Loop: Header=BB0_410 Depth=4
	st.w	$a6, $a4, 0
	add.d	$a6, $t7, $a0
	st.w	$a6, $a1, 0
	b	.LBB0_409
	.p2align	4, , 16
.LBB0_412:                              # %for.end299.i
                                        #   in Loop: Header=BB0_363 Depth=3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a6, $a0, 0
	move	$a3, $zero
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $t1, 2
	slli.d	$t0, $ra, 2
	stx.w	$a6, $t1, $t0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a6, $ra, $t2, 2
	ld.d	$t1, $sp, 456                   # 8-byte Folded Reload
	stx.w	$t1, $t2, $t0
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 352                   # 8-byte Folded Reload
	b	.LBB0_414
	.p2align	4, , 16
.LBB0_413:                              # %for.inc333.i
                                        #   in Loop: Header=BB0_414 Depth=4
	addi.w	$a3, $a3, 1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 4
	beq	$t6, $a3, .LBB0_365
.LBB0_414:                              # %for.body311.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        #       Parent Loop BB0_363 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t2, $t0, 0
	st.w	$t2, $t1, 0
	st.w	$t4, $t0, 0
	ld.w	$t2, $t1, 0
	ld.w	$t3, $a0, 0
	bge	$t2, $t3, .LBB0_413
# %bb.415:                              # %if.then325.i
                                        #   in Loop: Header=BB0_414 Depth=4
	st.w	$t2, $a0, 0
	add.d	$t2, $t7, $a3
	st.w	$t2, $a6, 0
	b	.LBB0_413
	.p2align	4, , 16
.LBB0_416:                              #   in Loop: Header=BB0_363 Depth=3
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 376                   # 8-byte Folded Reload
.LBB0_417:                              # %for.cond501.preheader.i
                                        #   in Loop: Header=BB0_363 Depth=3
	move	$s0, $zero
	ld.w	$a0, $a4, 0
	addi.w	$t7, $t7, -1
	addi.w	$t0, $t0, 1
	sub.d	$a1, $s5, $a3
	b	.LBB0_419
	.p2align	4, , 16
.LBB0_418:                              # %for.inc525.i
                                        #   in Loop: Header=BB0_419 Depth=4
	addi.w	$s0, $s0, 1
	bltu	$s5, $s0, .LBB0_361
.LBB0_419:                              # %for.body504.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        #       Parent Loop BB0_363 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bstrpick.d	$a2, $s0, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a6, $a2
	blt	$a0, $a2, .LBB0_418
# %bb.420:                              # %land.lhs.true511.i
                                        #   in Loop: Header=BB0_419 Depth=4
	add.w	$a4, $s5, $s0
	bltu	$a4, $a3, .LBB0_422
# %bb.421:                              # %land.lhs.true511.i
                                        #   in Loop: Header=BB0_419 Depth=4
	slti	$a2, $s3, 0
	add.w	$a5, $a1, $s0
	sltui	$a5, $a5, 1
	and	$a2, $a5, $a2
	beqz	$a2, .LBB0_418
.LBB0_422:                              # %land.lhs.true511.i.for.end527.i_crit_edge
                                        #   in Loop: Header=BB0_363 Depth=3
	move	$s3, $s5
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	b	.LBB0_362
	.p2align	4, , 16
.LBB0_423:                              # %if.end505
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $s3, 8
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 16
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(kill_polyA)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 16
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB0_445
# %bb.424:                              # %while.body.i533.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$s1, $s3, 36
	ori	$s2, $zero, 1
	b	.LBB0_428
	.p2align	4, , 16
.LBB0_425:                              # %if.else60.i
                                        #   in Loop: Header=BB0_428 Depth=2
	addi.w	$s2, $s2, 1
.LBB0_426:                              # %if.end62.ithread-pre-split
                                        #   in Loop: Header=BB0_428 Depth=2
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 16
.LBB0_427:                              # %if.end62.i
                                        #   in Loop: Header=BB0_428 Depth=2
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	bgeu	$s2, $a2, .LBB0_434
.LBB0_428:                              # %while.body.i533
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a1, $s2, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	bstrpick.d	$s5, $s2, 31, 0
	slli.d	$s4, $s5, 3
	ldx.d	$fp, $a0, $s4
	ldx.d	$s0, $a0, $a1
	ld.w	$a0, $fp, 4
	ld.w	$a1, $s0, 4
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 36
	sub.w	$s3, $a0, $a1
	bltu	$a3, $s3, .LBB0_425
# %bb.429:                              # %if.then.i538
                                        #   in Loop: Header=BB0_428 Depth=2
	addi.d	$a0, $a2, -1
	ld.d	$s6, $sp, 432                   # 8-byte Folded Reload
	st.w	$a0, $s6, 16
	ld.w	$a0, $s0, 12
	ld.w	$a1, $fp, 12
	bgeu	$a1, $a0, .LBB0_432
# %bb.430:                              # %if.then11.i
                                        #   in Loop: Header=BB0_428 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.w	$a2, $s6, 16
	alsl.d	$a0, $s5, $a0, 3
	addi.d	$a1, $a0, 8
	sub.d	$a2, $a2, $s2
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s6, 16
	bgeu	$s2, $a2, .LBB0_427
# %bb.431:                              # %if.then22.i
                                        #   in Loop: Header=BB0_428 Depth=2
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a1, $s0, 8
	ld.w	$a2, $s0, 12
	ldx.d	$a0, $a0, $s4
	add.d	$a1, $a1, $s3
	st.w	$a1, $s0, 8
	add.d	$a1, $a2, $s3
	st.w	$a1, $s0, 12
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 4
	sub.d	$a1, $a1, $s3
	st.w	$a1, $a0, 0
	sub.d	$a1, $a2, $s3
	st.w	$a1, $a0, 4
	b	.LBB0_426
	.p2align	4, , 16
.LBB0_432:                              # %if.else.i541
                                        #   in Loop: Header=BB0_428 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.w	$a2, $s6, 16
	alsl.d	$a1, $s5, $a0, 3
	addi.d	$a0, $a1, -8
	sub.d	$a2, $a2, $s2
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bltu	$s2, $a0, .LBB0_426
# %bb.433:                              # %if.then45.i
                                        #   in Loop: Header=BB0_428 Depth=2
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a1, $s2, -2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 12
	add.d	$a1, $a1, $s3
	st.w	$a1, $a0, 8
	add.d	$a1, $a2, $s3
	st.w	$a1, $a0, 12
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	sub.d	$a0, $a0, $s3
	st.w	$a0, $fp, 0
	sub.d	$a0, $a1, $s3
	st.w	$a0, $fp, 4
	b	.LBB0_426
	.p2align	4, , 16
.LBB0_434:                              # %for.cond.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB0_444
# %bb.435:                              # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$fp, $s1, 1
	ori	$s1, $zero, 1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	b	.LBB0_438
	.p2align	4, , 16
.LBB0_436:                              #   in Loop: Header=BB0_438 Depth=2
	move	$s0, $s1
	addi.w	$s1, $s0, 1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	bltu	$s1, $a2, .LBB0_438
	b	.LBB0_445
	.p2align	4, , 16
.LBB0_437:                              # %if.then91.i548
                                        #   in Loop: Header=BB0_438 Depth=2
	ld.d	$a2, $a0, 8
	st.d	$a2, $a1, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 16
	ld.d	$a1, $s4, 8
	addi.d	$a2, $a0, -1
	st.w	$a2, $s4, 16
	alsl.d	$a0, $s2, $a1, 3
	addi.d	$a1, $a0, 8
	sub.d	$a2, $a2, $s1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 16
	addi.w	$s1, $s0, 1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	bgeu	$s1, $a2, .LBB0_445
.LBB0_438:                              # %for.body.i543
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	addi.w	$s0, $s1, -1
	bstrpick.d	$a1, $s0, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a0, $a1
	bstrpick.d	$s2, $s1, 31, 0
	slli.d	$a3, $s2, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a4, $a1, 8
	ld.w	$a3, $a0, 0
	addi.w	$a5, $a4, 31
	bgeu	$a3, $a5, .LBB0_441
# %bb.439:                              # %land.lhs.true.i549
                                        #   in Loop: Header=BB0_438 Depth=2
	ld.w	$a5, $a1, 12
	ld.w	$a6, $a0, 4
	add.w	$a7, $fp, $a5
	bgeu	$a7, $a6, .LBB0_437
# %bb.440:                              # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_438 Depth=2
	bltu	$a4, $a3, .LBB0_442
	b	.LBB0_436
	.p2align	4, , 16
.LBB0_441:                              # %for.body.lor.lhs.false_crit_edge.i
                                        #   in Loop: Header=BB0_438 Depth=2
	ld.w	$a5, $a1, 12
	ld.w	$a6, $a0, 4
	bgeu	$a4, $a3, .LBB0_436
.LBB0_442:                              # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_438 Depth=2
	bgeu	$a5, $a6, .LBB0_436
# %bb.443:                              # %about_same_gap_p.exit.i
                                        #   in Loop: Header=BB0_438 Depth=2
	nor	$a4, $a4, $zero
	add.w	$a3, $a3, $a4
	bstrpick.d	$a4, $a3, 31, 0
	nor	$a5, $a5, $zero
	add.w	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 31, 0
	sltu	$a7, $a3, $a5
	masknez	$a3, $a3, $a7
	maskeqz	$a5, $a5, $a7
	or	$a3, $a5, $a3
	sub.d	$a4, $a6, $a4
	srai.d	$a5, $a4, 63
	xor	$a4, $a4, $a5
	ld.d	$a6, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a6, $a6, 32
	sub.d	$a4, $a4, $a5
	ori	$a5, $zero, 100
	mul.w	$a4, $a4, $a5
	div.wu	$a3, $a4, $a3
	bgeu	$a6, $a3, .LBB0_437
	b	.LBB0_436
.LBB0_444:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
.LBB0_445:                              # %compact_exons.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$a2, .LBB0_459
# %bb.446:                              # %while.body518.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 12
	ld.w	$a3, $a0, 4
	ld.w	$a4, $s3, 36
	sub.d	$a1, $a1, $a3
	move	$fp, $zero
	addi.w	$a1, $a1, 1
	bgeu	$a1, $a4, .LBB0_450
# %bb.447:                              # %cleanup533.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$s0, $zero, 8
	.p2align	4, , 16
.LBB0_448:                              # %cleanup533
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 16
	addi.w	$fp, $fp, 1
	bgeu	$fp, $a2, .LBB0_451
# %bb.449:                              # %while.body518
                                        #   in Loop: Header=BB0_448 Depth=2
	ld.d	$a0, $s2, 0
	ldx.d	$a0, $a0, $s0
	ld.w	$a1, $a0, 12
	ld.w	$a3, $a0, 4
	ld.w	$a4, $s3, 36
	sub.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 1
	addi.d	$s0, $s0, 8
	bltu	$a1, $a4, .LBB0_448
.LBB0_450:                              # %while.end536
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$fp, .LBB0_452
.LBB0_451:                              # %if.then539
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 8
	bstrpick.d	$a1, $fp, 31, 0
	alsl.d	$a1, $a1, $a0, 3
	sub.d	$a2, $a2, $fp
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 16
	sub.w	$a2, $a0, $fp
	st.w	$a2, $s0, 16
.LBB0_452:                              # %if.end551
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a0, $a2, -1
	bltz	$a0, .LBB0_457
# %bb.453:                              # %while.body562.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 12
	ld.w	$a3, $a0, 4
	ld.w	$a4, $s3, 36
	sub.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 1
	bgeu	$a1, $a4, .LBB0_457
# %bb.454:                              # %cleanup579.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$fp, $a2, -2
	.p2align	4, , 16
.LBB0_455:                              # %cleanup579
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s0, $fp, 1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 16
	addi.w	$a2, $a0, -1
	st.w	$a2, $a1, 16
	blez	$s0, .LBB0_457
# %bb.456:                              # %while.body562
                                        #   in Loop: Header=BB0_455 Depth=2
	ld.d	$a0, $s2, 0
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 12
	ld.w	$a3, $a0, 4
	ld.w	$a4, $s3, 36
	sub.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 1
	addi.w	$fp, $fp, -1
	bltu	$a1, $a4, .LBB0_455
	.p2align	4, , 16
.LBB0_457:                              # %if.end583
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s3, 8
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB0_511
# %bb.458:                              # %for.body.lr.ph.i567
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	addi.d	$a0, $a2, -1
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	ld.wu	$a0, $a1, 16
	ld.d	$a1, $a1, 8
	addi.d	$a2, $a2, -3
	st.d	$a2, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 456                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_464
	.p2align	4, , 16
.LBB0_459:                              # %for.end190.i.thread
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 32
	move	$a2, $zero
	bnez	$a0, .LBB0_570
# %bb.460:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s3, 8
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	addi.d	$a6, $a1, 32
	ori	$a0, $zero, 1
	b	.LBB0_540
.LBB0_461:                              #   in Loop: Header=BB0_464 Depth=2
	ori	$a5, $zero, 1
.LBB0_462:                              # %if.then17.i
                                        #   in Loop: Header=BB0_464 Depth=2
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a6, $a7, 32
	add.d	$a6, $a6, $a5
	st.w	$a6, $a7, 32
	ld.d	$a6, $a2, 24
	addi.w	$a7, $zero, -1
	lu32i.d	$a7, -4
	lu52i.d	$a7, $a7, 15
	and	$a6, $a6, $a7
	bstrins.d	$a6, $a5, 33, 32
	sub.d	$a4, $a6, $a4
	st.d	$a4, $a2, 24
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 44
	slli.d	$a5, $a5, 1
	addi.d	$a5, $a5, 4
	bstrpick.d	$a5, $a5, 21, 1
	slli.d	$a5, $a5, 35
	bstrins.d	$a4, $zero, 55, 34
	or	$a4, $a5, $a4
	st.d	$a4, $a2, 24
	.p2align	4, , 16
.LBB0_463:                              # %cleanup.i
                                        #   in Loop: Header=BB0_464 Depth=2
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	ld.wu	$a2, $a2, 16
	addi.d	$a3, $a3, 1
	bgeu	$a3, $a2, .LBB0_480
.LBB0_464:                              # %for.body.i568
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_467 Depth 3
                                        #       Child Loop BB0_470 Depth 3
                                        #       Child Loop BB0_476 Depth 3
	ld.d	$a4, $s2, 0
	alsl.d	$a2, $a3, $a4, 3
	slli.d	$a5, $a3, 3
	ld.d	$a2, $a2, -8
	ldx.d	$a5, $a4, $a5
	st.w	$s0, $a2, 28
	ld.w	$a4, $a5, 4
	ld.wu	$a7, $a2, 12
	sub.w	$a4, $a4, $a7
	ori	$a6, $zero, 1
	bne	$a4, $a6, .LBB0_463
# %bb.465:                              # %if.end.i589
                                        #   in Loop: Header=BB0_464 Depth=2
	ld.wu	$a4, $a2, 8
	ld.d	$a6, $sp, 472                   # 8-byte Folded Reload
	ld.wu	$t0, $a6, 44
	ld.d	$a6, $sp, 488                   # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
	sub.d	$a6, $a4, $t0
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	add.d	$t1, $t1, $a7
	sub.d	$t3, $t1, $t0
	ld.bu	$t2, $a6, 0
	ld.bu	$t6, $t3, 0
	ld.wu	$a5, $a5, 0
	addi.w	$a6, $t0, 0
	xor	$t3, $t2, $t6
	sltui	$t3, $t3, 1
	ori	$t4, $zero, 2
	bltu	$a6, $t4, .LBB0_472
# %bb.466:                              # %for.body.i.i666.preheader
                                        #   in Loop: Header=BB0_464 Depth=2
	move	$t7, $zero
	move	$t5, $zero
	ori	$t4, $zero, 1
	sub.d	$t4, $t4, $t0
	.p2align	4, , 16
.LBB0_467:                              # %for.body.i.i666
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_464 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$t8, $t1, $t4
	xor	$t2, $t2, $t8
	sltui	$t2, $t2, 1
	add.w	$t7, $t7, $t2
	slt	$fp, $t3, $t7
	ldx.bu	$t2, $a4, $t4
	maskeqz	$t7, $t7, $fp
	masknez	$fp, $t3, $fp
	or	$t7, $t7, $fp
	xor	$t6, $t2, $t6
	sltui	$t6, $t6, 1
	add.w	$t5, $t5, $t6
	slt	$t6, $t3, $t5
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $t3, $t6
	or	$t5, $t5, $t6
	slt	$t6, $t5, $t7
	masknez	$fp, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t6, $t6, $fp
	xor	$fp, $t2, $t8
	sltui	$fp, $fp, 1
	add.w	$t3, $t3, $fp
	slt	$fp, $t3, $t6
	addi.w	$t6, $t6, -1
	maskeqz	$t6, $t6, $fp
	masknez	$t3, $t3, $fp
	addi.d	$t4, $t4, 1
	or	$t3, $t6, $t3
	move	$t6, $t8
	bnez	$t4, .LBB0_467
# %bb.468:                              # %SWscore.exit.i
                                        #   in Loop: Header=BB0_464 Depth=2
	bltu	$t3, $a6, .LBB0_463
# %bb.469:                              # %if.end.i673
                                        #   in Loop: Header=BB0_464 Depth=2
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	ldx.bu	$t2, $t2, $a5
	ld.bu	$t6, $t1, 0
	move	$t5, $zero
	move	$t4, $zero
	xor	$t1, $t2, $t6
	sltui	$t1, $t1, 1
	addi.d	$t0, $t0, -1
	ld.d	$t3, $sp, 488                   # 8-byte Folded Reload
	add.d	$t3, $t3, $a5
	ld.d	$t7, $sp, 456                   # 8-byte Folded Reload
	add.d	$a7, $t7, $a7
	.p2align	4, , 16
.LBB0_470:                              # %for.body.i27.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_464 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$t7, $a7, 0
	xor	$t2, $t2, $t7
	sltui	$t2, $t2, 1
	add.w	$t5, $t5, $t2
	slt	$t8, $t1, $t5
	ld.bu	$t2, $t3, 0
	maskeqz	$t5, $t5, $t8
	masknez	$t8, $t1, $t8
	or	$t5, $t5, $t8
	xor	$t6, $t2, $t6
	sltui	$t6, $t6, 1
	add.w	$t4, $t4, $t6
	slt	$t6, $t1, $t4
	maskeqz	$t4, $t4, $t6
	masknez	$t6, $t1, $t6
	or	$t4, $t4, $t6
	slt	$t6, $t4, $t5
	masknez	$t8, $t4, $t6
	maskeqz	$t6, $t5, $t6
	or	$t6, $t6, $t8
	xor	$t8, $t2, $t7
	sltui	$t8, $t8, 1
	add.w	$t1, $t1, $t8
	slt	$t8, $t1, $t6
	addi.w	$t6, $t6, -1
	maskeqz	$t6, $t6, $t8
	masknez	$t1, $t1, $t8
	or	$t1, $t6, $t1
	addi.d	$t0, $t0, -1
	addi.d	$t3, $t3, 1
	addi.d	$a7, $a7, 1
	move	$t6, $t7
	bnez	$t0, .LBB0_470
# %bb.471:                              # %SWscore.exit50.i
                                        #   in Loop: Header=BB0_464 Depth=2
	bltu	$t1, $a6, .LBB0_463
	b	.LBB0_474
	.p2align	4, , 16
.LBB0_472:                              # %SWscore.exit.thread.i
                                        #   in Loop: Header=BB0_464 Depth=2
	bltu	$t3, $t0, .LBB0_463
# %bb.473:                              # %if.end.thread.i
                                        #   in Loop: Header=BB0_464 Depth=2
	ld.d	$a7, $sp, 464                   # 8-byte Folded Reload
	ldx.bu	$a7, $a7, $a5
	ld.bu	$t0, $t1, 0
	xor	$a7, $a7, $t0
	sltui	$t1, $a7, 1
	bltu	$t1, $a6, .LBB0_463
.LBB0_474:                              # %if.end17.i655
                                        #   in Loop: Header=BB0_464 Depth=2
	ld.h	$a4, $a4, 0
	st.h	$a4, $sp, 496
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	ldx.h	$a4, $a4, $a5
	st.h	$a4, $sp, 498
	beqz	$a0, .LBB0_463
# %bb.475:                              # %for.body.i658.preheader
                                        #   in Loop: Header=BB0_464 Depth=2
	move	$a4, $zero
	move	$a5, $a1
	move	$a6, $a0
	.p2align	4, , 16
.LBB0_476:                              # %for.body.i658
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_464 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a5, 0
	ld.w	$t0, $sp, 496
	beq	$t0, $a7, .LBB0_461
# %bb.477:                              # %if.end33.i
                                        #   in Loop: Header=BB0_476 Depth=3
	ld.w	$a7, $a5, 4
	ld.w	$t0, $sp, 496
	beq	$t0, $a7, .LBB0_479
# %bb.478:                              # %for.inc.i661
                                        #   in Loop: Header=BB0_476 Depth=3
	lu52i.d	$a7, $zero, -16
	add.d	$a4, $a4, $a7
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB0_476
	b	.LBB0_463
.LBB0_479:                              #   in Loop: Header=BB0_464 Depth=2
	addi.w	$a5, $zero, -1
	b	.LBB0_462
.LBB0_480:                              # %for.cond46.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB0_511
# %bb.481:                              # %for.body50.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a4, $zero, 1
	b	.LBB0_484
	.p2align	4, , 16
.LBB0_482:                              # %if.end179.i583
                                        #   in Loop: Header=BB0_484 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 16
	lu12i.w	$s8, 1024
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
.LBB0_483:                              # %cleanup180.i
                                        #   in Loop: Header=BB0_484 Depth=2
	addi.d	$a4, $a4, 1
	bstrpick.d	$a0, $a2, 31, 0
	bgeu	$a4, $a0, .LBB0_511
.LBB0_484:                              # %for.body50.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_489 Depth 3
                                        #         Child Loop BB0_491 Depth 4
                                        #         Child Loop BB0_494 Depth 4
                                        #         Child Loop BB0_500 Depth 4
                                        #       Child Loop BB0_509 Depth 3
	ld.d	$a0, $s2, 0
	alsl.d	$a1, $a4, $a0, 3
	slli.d	$a3, $a4, 3
	ldx.d	$a3, $a0, $a3
	ld.d	$s4, $a1, -8
	ld.w	$s0, $a3, 4
	ld.w	$fp, $s4, 12
	bltu	$fp, $s0, .LBB0_483
# %bb.485:                              # %if.end68.i
                                        #   in Loop: Header=BB0_484 Depth=2
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	sub.d	$s1, $fp, $s0
	addi.w	$s2, $s1, 2
	bstrpick.d	$s8, $s2, 31, 0
	ori	$a0, $zero, 28
	mul.d	$a0, $s8, $a0
	st.d	$a3, $sp, 392                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	beqz	$s2, .LBB0_482
# %bb.486:                              # %for.body78.lr.ph.i
                                        #   in Loop: Header=BB0_484 Depth=2
	move	$a2, $zero
	st.d	$zero, $sp, 408                 # 8-byte Folded Spill
	ld.w	$a1, $s4, 8
	st.d	$s4, $sp, 368                   # 8-byte Folded Spill
	ld.w	$t0, $s4, 12
	nor	$a5, $s1, $zero
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	ld.wu	$a3, $a4, 44
	add.w	$s7, $a1, $a5
	add.w	$a5, $t0, $a5
	ld.w	$s5, $a6, 0
	sub.d	$a7, $zero, $a3
	ld.wu	$t1, $a4, 16
	st.d	$t1, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a4, $a4, 8
	st.d	$a4, $sp, 400                   # 8-byte Folded Spill
	ori	$a4, $zero, 1
	sub.d	$a4, $a4, $a3
	st.d	$a4, $sp, 448                   # 8-byte Folded Spill
	addi.d	$t1, $s0, -1
	add.d	$a1, $t1, $a1
	sub.w	$t3, $a1, $fp
	add.d	$a1, $t1, $t0
	sub.w	$t4, $a1, $fp
	addi.d	$a1, $a3, -1
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	move	$t6, $s5
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	b	.LBB0_489
	.p2align	4, , 16
.LBB0_487:                              # %if.else.i581
                                        #   in Loop: Header=BB0_489 Depth=3
	st.w	$zero, $t7, 24
.LBB0_488:                              # %for.inc106.i
                                        #   in Loop: Header=BB0_489 Depth=3
	addi.d	$a2, $a2, 1
	addi.w	$t3, $t3, 1
	addi.w	$t4, $t4, 1
	addi.w	$t6, $t6, 1
	beq	$a2, $s8, .LBB0_506
.LBB0_489:                              # %for.body78.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_484 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_491 Depth 4
                                        #         Child Loop BB0_494 Depth 4
                                        #         Child Loop BB0_500 Depth 4
	add.d	$a1, $s7, $a2
	ori	$a4, $zero, 28
	mul.d	$t0, $a2, $a4
	add.d	$t7, $a0, $t0
	stx.w	$a1, $a0, $t0
	add.d	$t0, $a5, $a2
	st.w	$t0, $t7, 4
	add.w	$s1, $s5, $a2
	st.w	$s1, $t7, 8
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$t8, $s2, $a1
	bstrpick.d	$a1, $t0, 31, 0
	add.d	$fp, $s3, $a1
	ldx.bu	$s4, $t8, $a7
	move	$s6, $s3
	ldx.bu	$s3, $fp, $a7
	xor	$a1, $s4, $s3
	sltui	$a1, $a1, 1
	addi.w	$ra, $a3, 0
	ori	$a4, $zero, 2
	bltu	$a3, $a4, .LBB0_496
# %bb.490:                              # %for.body.i.i.i.preheader
                                        #   in Loop: Header=BB0_489 Depth=3
	move	$a6, $a5
	move	$a5, $s7
	move	$t0, $zero
	move	$s7, $zero
	bstrpick.d	$t1, $t6, 31, 0
	add.d	$s0, $s2, $t1
	bstrpick.d	$t2, $t4, 31, 0
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	add.d	$t1, $a4, $t2
	bstrpick.d	$t5, $t3, 31, 0
	add.d	$t5, $s2, $t5
	add.d	$t2, $s6, $t2
	ld.d	$s2, $sp, 448                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_491:                              # %for.body.i.i.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_484 Depth=2
                                        #       Parent Loop BB0_489 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.bu	$s6, $t2, $s2
	xor	$s4, $s4, $s6
	sltui	$s4, $s4, 1
	add.w	$t0, $t0, $s4
	slt	$a4, $a1, $t0
	ldx.bu	$s4, $t5, $s2
	maskeqz	$t0, $t0, $a4
	masknez	$a4, $a1, $a4
	or	$t0, $t0, $a4
	xor	$a4, $s4, $s3
	sltui	$a4, $a4, 1
	add.w	$a4, $s7, $a4
	slt	$s3, $a1, $a4
	maskeqz	$a4, $a4, $s3
	masknez	$s3, $a1, $s3
	or	$s7, $a4, $s3
	slt	$a4, $s7, $t0
	masknez	$s3, $s7, $a4
	maskeqz	$a4, $t0, $a4
	or	$a4, $a4, $s3
	xor	$s3, $s4, $s6
	sltui	$s3, $s3, 1
	add.w	$a1, $a1, $s3
	slt	$s3, $a1, $a4
	addi.w	$a4, $a4, -1
	maskeqz	$a4, $a4, $s3
	masknez	$a1, $a1, $s3
	addi.d	$s2, $s2, 1
	or	$a1, $a4, $a1
	move	$s3, $s6
	bnez	$s2, .LBB0_491
# %bb.492:                              # %SWscore.exit.i.i
                                        #   in Loop: Header=BB0_489 Depth=3
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	move	$s7, $a5
	move	$a5, $a6
	bltu	$a1, $ra, .LBB0_487
# %bb.493:                              # %if.end.i.i
                                        #   in Loop: Header=BB0_489 Depth=3
	bstrpick.d	$s1, $s1, 31, 0
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $s1
	ld.bu	$t2, $fp, 0
	move	$t0, $zero
	move	$s6, $zero
	xor	$a4, $a1, $t2
	sltui	$fp, $a4, 1
	ld.d	$s4, $sp, 416                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_494:                              # %for.body.i27.i.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_484 Depth=2
                                        #       Parent Loop BB0_489 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a4, $t1, 0
	xor	$a1, $a1, $a4
	sltui	$a1, $a1, 1
	add.w	$t0, $t0, $a1
	slt	$t5, $fp, $t0
	ld.bu	$a1, $s0, 0
	maskeqz	$t0, $t0, $t5
	masknez	$t5, $fp, $t5
	or	$t0, $t0, $t5
	xor	$t2, $a1, $t2
	sltui	$t2, $t2, 1
	add.w	$t2, $s6, $t2
	slt	$t5, $fp, $t2
	maskeqz	$t2, $t2, $t5
	masknez	$t5, $fp, $t5
	or	$s6, $t2, $t5
	slt	$t2, $s6, $t0
	masknez	$t5, $s6, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t5
	xor	$t5, $a1, $a4
	sltui	$t5, $t5, 1
	add.w	$t5, $fp, $t5
	slt	$fp, $t5, $t2
	addi.w	$t2, $t2, -1
	maskeqz	$t2, $t2, $fp
	masknez	$t5, $t5, $fp
	or	$fp, $t2, $t5
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 1
	addi.d	$t1, $t1, 1
	move	$t2, $a4
	bnez	$s4, .LBB0_494
# %bb.495:                              # %SWscore.exit50.i.i
                                        #   in Loop: Header=BB0_489 Depth=3
	bltu	$fp, $ra, .LBB0_487
	b	.LBB0_498
	.p2align	4, , 16
.LBB0_496:                              # %SWscore.exit.thread.i.i
                                        #   in Loop: Header=BB0_489 Depth=3
	move	$s3, $s6
	bltu	$a1, $a3, .LBB0_487
# %bb.497:                              # %if.end.thread.i.i
                                        #   in Loop: Header=BB0_489 Depth=3
	bstrpick.d	$s1, $s1, 31, 0
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $s1
	ld.bu	$a4, $fp, 0
	xor	$a1, $a1, $a4
	sltui	$fp, $a1, 1
	bltu	$fp, $ra, .LBB0_487
.LBB0_498:                              # %if.end17.i.i
                                        #   in Loop: Header=BB0_489 Depth=3
	ld.h	$a1, $t8, 0
	st.h	$a1, $sp, 496
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	ldx.h	$a1, $a1, $s1
	st.h	$a1, $sp, 498
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_487
# %bb.499:                              # %for.body.i.i.preheader
                                        #   in Loop: Header=BB0_489 Depth=3
	move	$a1, $zero
	ld.d	$t0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 440                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_500:                              # %for.body.i.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_484 Depth=2
                                        #       Parent Loop BB0_489 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $t0, 0
	ld.w	$t2, $sp, 496
	beq	$t2, $a4, .LBB0_503
# %bb.501:                              # %if.end33.i.i
                                        #   in Loop: Header=BB0_500 Depth=4
	ld.w	$a4, $t0, 4
	ld.w	$t2, $sp, 496
	beq	$t2, $a4, .LBB0_504
# %bb.502:                              # %for.inc.i.i
                                        #   in Loop: Header=BB0_500 Depth=4
	addi.d	$a1, $a1, 1
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	bnez	$t1, .LBB0_500
	b	.LBB0_487
.LBB0_503:                              #   in Loop: Header=BB0_489 Depth=3
	ori	$t0, $zero, 1
	b	.LBB0_505
.LBB0_504:                              #   in Loop: Header=BB0_489 Depth=3
	addi.d	$t0, $zero, -1
.LBB0_505:                              # %if.then100.i
                                        #   in Loop: Header=BB0_489 Depth=3
	st.w	$a1, $t7, 12
	st.w	$t0, $t7, 24
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	b	.LBB0_488
	.p2align	4, , 16
.LBB0_506:                              # %for.end108.i
                                        #   in Loop: Header=BB0_484 Depth=2
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB0_482
# %bb.507:                              # %for.body115.lr.ph.i
                                        #   in Loop: Header=BB0_484 Depth=2
	addi.d	$a1, $a0, 12
	b	.LBB0_509
	.p2align	4, , 16
.LBB0_508:                              # %for.inc176.i
                                        #   in Loop: Header=BB0_509 Depth=3
	addi.d	$s8, $s8, -1
	addi.d	$a1, $a1, 28
	beqz	$s8, .LBB0_482
.LBB0_509:                              # %for.body115.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_484 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 12
	beqz	$a2, .LBB0_508
# %bb.510:                              # %if.then121.i
                                        #   in Loop: Header=BB0_509 Depth=3
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a3, $a4, 32
	add.d	$a3, $a3, $a2
	st.w	$a3, $a4, 32
	ld.d	$a3, $a6, 24
	bstrins.d	$a3, $a2, 33, 32
	st.d	$a3, $a6, 24
	ld.w	$a2, $a1, 0
	bstrins.d	$a3, $a2, 63, 56
	st.d	$a3, $a6, 24
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 44
	slli.d	$a2, $a2, 1
	addi.d	$a2, $a2, 4
	bstrpick.d	$a2, $a2, 21, 1
	slli.d	$a2, $a2, 35
	bstrins.d	$a3, $zero, 55, 34
	or	$a2, $a2, $a3
	st.d	$a2, $a6, 24
	ld.w	$a2, $a1, -12
	st.w	$a2, $a6, 8
	ld.w	$a2, $a1, -8
	st.w	$a2, $a6, 12
	addi.d	$a2, $a2, 1
	st.w	$a2, $a5, 4
	ld.w	$a2, $a1, -4
	st.w	$a2, $a5, 0
	b	.LBB0_508
	.p2align	4, , 16
.LBB0_511:                              # %for.end190.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 32
	addi.d	$a6, $a1, 32
	bnez	$a0, .LBB0_541
# %bb.512:                              # %for.cond195.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a1, $a2, 0
	ori	$a0, $zero, 1
	ori	$a3, $zero, 2
	bltu	$a1, $a3, .LBB0_540
# %bb.513:                              # %for.body200.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a7, $zero
	move	$t0, $zero
	ori	$t1, $zero, 1
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a6, $sp, 416                   # 8-byte Folded Spill
	b	.LBB0_516
	.p2align	4, , 16
.LBB0_514:                              # %if.then226.i
                                        #   in Loop: Header=BB0_516 Depth=2
	bstrpick.d	$a0, $a3, 55, 34
	add.w	$a7, $a0, $a7
.LBB0_515:                              # %cleanup293.i
                                        #   in Loop: Header=BB0_516 Depth=2
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	addi.d	$t1, $t1, 1
	bstrpick.d	$a0, $a2, 31, 0
	bgeu	$t1, $a0, .LBB0_539
.LBB0_516:                              # %for.body200.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_523 Depth 3
                                        #         Child Loop BB0_525 Depth 4
	ld.d	$a0, $s2, 0
	alsl.d	$a1, $t1, $a0, 3
	slli.d	$a3, $t1, 3
	ld.d	$s3, $a1, -8
	ldx.d	$s4, $a0, $a3
	ld.w	$a0, $s3, 12
	ld.w	$a1, $s4, 4
	addi.w	$a3, $a0, 1
	bltu	$a3, $a1, .LBB0_515
# %bb.517:                              # %if.end220.i
                                        #   in Loop: Header=BB0_516 Depth=2
	ld.d	$a3, $s3, 24
	slli.d	$a4, $a3, 30
	srai.d	$a4, $a4, 62
	ori	$a5, $zero, 1
	bge	$a4, $a5, .LBB0_514
# %bb.518:                              # %if.end232.i
                                        #   in Loop: Header=BB0_516 Depth=2
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	bge	$a5, $a4, .LBB0_535
# %bb.519:                              # %if.end247.i
                                        #   in Loop: Header=BB0_516 Depth=2
	sub.d	$a0, $a0, $a1
	addi.w	$a1, $a0, 2
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	beqz	$a1, .LBB0_536
# %bb.520:                              # %for.body257.lr.ph.i
                                        #   in Loop: Header=BB0_516 Depth=2
	st.d	$t1, $sp, 352                   # 8-byte Folded Spill
	st.d	$t0, $sp, 360                   # 8-byte Folded Spill
	st.d	$a7, $sp, 368                   # 8-byte Folded Spill
	move	$s6, $zero
	move	$s5, $zero
	move	$s7, $zero
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 408                   # 8-byte Folded Spill
	st.d	$s4, $sp, 400                   # 8-byte Folded Spill
	b	.LBB0_523
	.p2align	4, , 16
.LBB0_521:                              #   in Loop: Header=BB0_523 Depth=3
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
.LBB0_522:                              # %for.inc276.i
                                        #   in Loop: Header=BB0_523 Depth=3
	addi.w	$s6, $s6, 1
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB0_534
.LBB0_523:                              # %for.body257.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_516 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_525 Depth 4
	ld.w	$a0, $s3, 8
	ld.w	$a1, $s3, 12
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	add.d	$a2, $s6, $a2
	add.w	$fp, $a0, $a2
	st.w	$fp, $sp, 496
	add.w	$s0, $a1, $a2
	st.w	$s0, $sp, 500
	ld.w	$a0, $s4, 0
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a1, $s2, 44
	add.w	$s1, $a0, $s6
	st.w	$s1, $sp, 504
	slli.d	$a0, $a1, 1
	addi.d	$a0, $a0, 4
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	ld.w	$a1, $s2, 16
	move	$s2, $a0
	st.w	$zero, $sp, 516
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 508
	beqz	$a1, .LBB0_527
# %bb.524:                              # %for.body.us.i.preheader
                                        #   in Loop: Header=BB0_523 Depth=3
	st.d	$s7, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	move	$s5, $zero
	move	$s4, $zero
	ori	$s6, $zero, 4
	ori	$s7, $zero, 1
	ld.d	$s3, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 480                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_525:                              # %for.body.us.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_516 Depth=2
                                        #       Parent Loop BB0_523 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $a2, 8
	add.d	$a0, $a0, $s6
	addi.d	$a0, $a0, -4
	st.d	$s7, $sp, 8
	addi.d	$a2, $sp, 496
	st.d	$a0, $sp, 0
	move	$a0, $s3
	move	$a1, $s8
	move	$a3, $s5
	move	$a4, $fp
	move	$a5, $s0
	move	$a6, $s1
	move	$a7, $s2
	pcaddu18i	$ra, %call36(compute_max_score_1)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	add.d	$a0, $a0, $s6
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 8
	addi.d	$a2, $sp, 496
	st.d	$a0, $sp, 0
	move	$a0, $s3
	move	$a1, $s8
	move	$a3, $s5
	move	$a4, $fp
	move	$a5, $s0
	move	$a6, $s1
	move	$a7, $s2
	pcaddu18i	$ra, %call36(compute_max_score_1)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ld.wu	$a0, $a2, 16
	addi.d	$s4, $s4, 1
	addi.d	$s6, $s6, 8
	addi.w	$s5, $s5, 1
	bltu	$s4, $a0, .LBB0_525
# %bb.526:                              # %compute_max_score.exit.loopexit
                                        #   in Loop: Header=BB0_523 Depth=3
	ld.w	$fp, $sp, 512
	ld.d	$s3, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 448                   # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bltu	$fp, $s5, .LBB0_521
	b	.LBB0_528
	.p2align	4, , 16
.LBB0_527:                              #   in Loop: Header=BB0_523 Depth=3
	move	$fp, $zero
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bltu	$fp, $s5, .LBB0_521
.LBB0_528:                              # %if.end.i142.i
                                        #   in Loop: Header=BB0_523 Depth=3
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	bgeu	$s5, $fp, .LBB0_531
# %bb.529:                              # %if.end.i142.if.then274_crit_edge.i
                                        #   in Loop: Header=BB0_523 Depth=3
	ld.w	$a1, $sp, 508
	ld.w	$a0, $sp, 516
.LBB0_530:                              # %if.then274.i
                                        #   in Loop: Header=BB0_523 Depth=3
	ld.w	$a2, $sp, 520
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	move	$s7, $a0
	move	$s5, $fp
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	b	.LBB0_522
	.p2align	4, , 16
.LBB0_531:                              # %if.end6.i.i
                                        #   in Loop: Header=BB0_523 Depth=3
	ld.w	$a0, $sp, 516
	bltu	$a0, $s7, .LBB0_522
# %bb.532:                              # %if.end10.i.i
                                        #   in Loop: Header=BB0_523 Depth=3
	ld.w	$a1, $sp, 508
	bltu	$s7, $a0, .LBB0_530
# %bb.533:                              # %if.end10.i.i
                                        #   in Loop: Header=BB0_523 Depth=3
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	bgeu	$a1, $a2, .LBB0_522
	b	.LBB0_530
.LBB0_534:                              # %for.end278.loopexit.i
                                        #   in Loop: Header=BB0_516 Depth=2
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 16
	lu12i.w	$s8, 1024
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 352                   # 8-byte Folded Reload
	b	.LBB0_537
.LBB0_535:                              # %if.then240.i
                                        #   in Loop: Header=BB0_516 Depth=2
	bstrpick.d	$a0, $a3, 55, 34
	b	.LBB0_538
.LBB0_536:                              #   in Loop: Header=BB0_516 Depth=2
	move	$s5, $zero
.LBB0_537:                              # %for.end278.i
                                        #   in Loop: Header=BB0_516 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	slt	$a1, $zero, $a0
	maskeqz	$a1, $s5, $a1
	add.w	$a7, $a1, $a7
	srli.d	$a0, $a0, 31
	and	$a0, $a0, $s5
.LBB0_538:                              # %cleanup293.i
                                        #   in Loop: Header=BB0_516 Depth=2
	add.w	$t0, $a0, $t0
	b	.LBB0_515
.LBB0_539:                              # %for.end303.loopexit.i
                                        #   in Loop: Header=BB0_6 Depth=1
	sltu	$a0, $a7, $t0
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
.LBB0_540:                              # %for.end303.i
                                        #   in Loop: Header=BB0_6 Depth=1
	st.w	$a0, $a6, 0
.LBB0_541:                              # %if.end311.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a0, $a2, 0
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB0_570
# %bb.542:                              # %for.body317.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a3, $zero, 1
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a6, $sp, 416                   # 8-byte Folded Spill
	b	.LBB0_546
.LBB0_543:                              # %for.end387.loopexit.i
                                        #   in Loop: Header=BB0_546 Depth=2
	ld.wu	$a0, $a5, 24
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	slli.d	$a2, $a1, 56
	bstrpick.d	$a1, $a3, 21, 0
	slli.d	$a1, $a1, 34
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
.LBB0_544:                              # %for.end387.i
                                        #   in Loop: Header=BB0_546 Depth=2
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	andi	$a3, $a3, 3
	bstrins.d	$a0, $a3, 63, 32
	or	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $a5, 24
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	st.w	$a0, $a5, 8
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	st.w	$a0, $a5, 12
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	st.w	$a0, $a1, 4
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 16
.LBB0_545:                              # %cleanup425.i
                                        #   in Loop: Header=BB0_546 Depth=2
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	bstrpick.d	$a0, $a2, 31, 0
	bgeu	$a3, $a0, .LBB0_570
.LBB0_546:                              # %for.body317.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_553 Depth 3
                                        #         Child Loop BB0_560 Depth 4
                                        #         Child Loop BB0_557 Depth 4
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a3, $a1, 3
	ld.d	$a5, $a0, -8
	st.d	$a3, $sp, 328                   # 8-byte Folded Spill
	slli.d	$a3, $a3, 3
	ld.d	$a0, $a5, 24
	ldx.d	$a1, $a1, $a3
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	bltz	$a0, .LBB0_548
# %bb.547:                              # %land.lhs.true.i563
                                        #   in Loop: Header=BB0_546 Depth=2
	ld.w	$a1, $a6, 0
	slli.d	$a3, $a0, 30
	srai.d	$a3, $a3, 62
	mul.w	$a1, $a1, $a3
	bgtz	$a1, .LBB0_545
.LBB0_548:                              # %lor.lhs.false.i556
                                        #   in Loop: Header=BB0_546 Depth=2
	ld.w	$a1, $a5, 12
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 4
	addi.w	$a4, $a1, 1
	bltu	$a4, $a3, .LBB0_545
# %bb.549:                              # %if.end354.i
                                        #   in Loop: Header=BB0_546 Depth=2
	sub.d	$a1, $a1, $a3
	addi.w	$a2, $a1, 2
	st.d	$a2, $sp, 424                   # 8-byte Folded Spill
	beqz	$a2, .LBB0_569
# %bb.550:                              # %for.body365.lr.ph.i
                                        #   in Loop: Header=BB0_546 Depth=2
	move	$a4, $zero
	move	$a3, $zero
	move	$a6, $zero
	addi.w	$a0, $zero, -1
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	b	.LBB0_553
	.p2align	4, , 16
.LBB0_551:                              #   in Loop: Header=BB0_553 Depth=3
	lu12i.w	$s8, 1024
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 448                   # 8-byte Folded Reload
.LBB0_552:                              # %for.inc385.i
                                        #   in Loop: Header=BB0_553 Depth=3
	addi.w	$a4, $a4, 1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB0_543
.LBB0_553:                              # %for.body365.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_546 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_560 Depth 4
                                        #         Child Loop BB0_557 Depth 4
	st.d	$a6, $sp, 448                   # 8-byte Folded Spill
	st.d	$a3, $sp, 456                   # 8-byte Folded Spill
	ld.w	$a0, $a5, 8
	ld.w	$a1, $a5, 12
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	add.w	$fp, $a0, $a2
	st.w	$fp, $sp, 496
	add.w	$s0, $a1, $a2
	st.w	$s0, $sp, 500
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a1, $s2, 44
	st.d	$a4, $sp, 464                   # 8-byte Folded Spill
	add.w	$s1, $a0, $a4
	st.w	$s1, $sp, 504
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.w	$s4, $a0, 0
	slli.d	$a0, $a1, 1
	addi.d	$a0, $a0, 4
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	ld.w	$a1, $s2, 16
	move	$s2, $a0
	st.w	$zero, $sp, 516
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 508
	beqz	$a1, .LBB0_561
# %bb.554:                              # %for.body.lr.ph.i147.i
                                        #   in Loop: Header=BB0_553 Depth=3
	move	$s5, $zero
	addi.w	$s8, $zero, -1
	bge	$s8, $s4, .LBB0_559
# %bb.555:                              # %for.body.us.i.i.preheader
                                        #   in Loop: Header=BB0_553 Depth=3
	move	$s7, $zero
	ori	$s6, $zero, 4
	b	.LBB0_557
	.p2align	4, , 16
.LBB0_556:                              # %for.inc.us.i.i
                                        #   in Loop: Header=BB0_557 Depth=4
	ld.wu	$a0, $s3, 16
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 8
	addi.w	$s5, $s5, 1
	move	$a2, $s3
	ori	$s3, $zero, 1
	bgeu	$s7, $a0, .LBB0_561
.LBB0_557:                              # %for.body.us.i.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_546 Depth=2
                                        #       Parent Loop BB0_553 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $a2, 8
	add.d	$a0, $a0, $s6
	addi.d	$a0, $a0, -4
	st.d	$s3, $sp, 8
	move	$s3, $a2
	addi.d	$a2, $sp, 496
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $fp
	move	$a5, $s0
	move	$a6, $s1
	move	$a7, $s2
	pcaddu18i	$ra, %call36(compute_max_score_1)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB0_556
# %bb.558:                              # %if.then10.us.i.i
                                        #   in Loop: Header=BB0_557 Depth=4
	ld.d	$a0, $s3, 8
	add.d	$a0, $a0, $s6
	st.d	$s8, $sp, 8
	addi.d	$a2, $sp, 496
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $fp
	move	$a5, $s0
	move	$a6, $s1
	move	$a7, $s2
	pcaddu18i	$ra, %call36(compute_max_score_1)
	jirl	$ra, $ra, 0
	b	.LBB0_556
	.p2align	4, , 16
.LBB0_559:                              # %for.body.i149.i.preheader
                                        #   in Loop: Header=BB0_553 Depth=3
	move	$s4, $zero
	ori	$s6, $zero, 4
	.p2align	4, , 16
.LBB0_560:                              # %for.body.i149.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_546 Depth=2
                                        #       Parent Loop BB0_553 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $a2, 8
	add.d	$a0, $a0, $s6
	st.d	$s8, $sp, 8
	addi.d	$a2, $sp, 496
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $fp
	move	$a5, $s0
	move	$a6, $s1
	move	$a7, $s2
	pcaddu18i	$ra, %call36(compute_max_score_1)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ld.wu	$a0, $a2, 16
	addi.d	$s4, $s4, 1
	addi.w	$s5, $s5, 1
	addi.d	$s6, $s6, 8
	bltu	$s4, $a0, .LBB0_560
.LBB0_561:                              # %compute_max_score.exit.i
                                        #   in Loop: Header=BB0_553 Depth=3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 512
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	bltu	$a0, $a3, .LBB0_551
# %bb.562:                              # %if.end.i157.i
                                        #   in Loop: Header=BB0_553 Depth=3
	lu12i.w	$s8, 1024
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 448                   # 8-byte Folded Reload
	bgeu	$a3, $a0, .LBB0_565
# %bb.563:                              # %if.end.i157.if.then383_crit_edge.i
                                        #   in Loop: Header=BB0_553 Depth=3
	ld.w	$a2, $sp, 508
	ld.w	$a1, $sp, 516
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
.LBB0_564:                              # %if.then383.i
                                        #   in Loop: Header=BB0_553 Depth=3
	ld.w	$a3, $sp, 496
	st.d	$a3, $sp, 368                   # 8-byte Folded Spill
	ld.w	$a3, $sp, 500
	st.d	$a3, $sp, 360                   # 8-byte Folded Spill
	ld.w	$a3, $sp, 504
	st.d	$a3, $sp, 352                   # 8-byte Folded Spill
	ld.w	$a3, $sp, 520
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	move	$a6, $a1
	move	$a3, $a0
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	b	.LBB0_552
	.p2align	4, , 16
.LBB0_565:                              # %if.end6.i159.i
                                        #   in Loop: Header=BB0_553 Depth=3
	ld.w	$a1, $sp, 516
	bgeu	$a1, $a6, .LBB0_567
# %bb.566:                              #   in Loop: Header=BB0_553 Depth=3
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	b	.LBB0_552
.LBB0_567:                              # %if.end10.i163.i
                                        #   in Loop: Header=BB0_553 Depth=3
	ld.w	$a2, $sp, 508
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	bltu	$a6, $a1, .LBB0_564
# %bb.568:                              # %if.end10.i163.i
                                        #   in Loop: Header=BB0_553 Depth=3
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
	bgeu	$a2, $a7, .LBB0_552
	b	.LBB0_564
.LBB0_569:                              #   in Loop: Header=BB0_546 Depth=2
	move	$a1, $zero
	lu52i.d	$a2, $zero, -16
	b	.LBB0_544
	.p2align	4, , 16
.LBB0_570:                              # %slide_intron.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$fp, $s3, 8
	ld.w	$a3, $s3, 16
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $a0, 16
	ldptr.w	$s4, $a0, 4148
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	addi.d	$a0, $a3, 1
	st.w	$a0, $sp, 496
	addi.d	$a0, $s4, 1
	st.w	$a0, $sp, 500
	addi.w	$a1, $a2, -1
	st.d	$zero, $sp, 504
	bltz	$a1, .LBB0_618
# %bb.571:                              # %for.body.preheader.i600
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $zero
	move	$s2, $zero
	move	$s5, $zero
	move	$s6, $zero
	addi.d	$a2, $fp, -1
	st.d	$a2, $sp, 456                   # 8-byte Folded Spill
	addi.d	$a2, $s0, -1
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	addi.d	$s3, $sp, 496
	st.d	$a3, $sp, 480                   # 8-byte Folded Spill
	st.d	$a3, $sp, 488                   # 8-byte Folded Spill
	st.d	$s4, $sp, 464                   # 8-byte Folded Spill
	b	.LBB0_574
	.p2align	4, , 16
.LBB0_572:                              #   in Loop: Header=BB0_574 Depth=2
	move	$a6, $zero
	move	$a3, $zero
.LBB0_573:                              # %cleanup.i622
                                        #   in Loop: Header=BB0_574 Depth=2
	ld.w	$a0, $s8, 8
	ld.w	$a4, $s8, 12
	add.d	$a1, $a2, $a1
	sub.d	$a1, $a3, $a1
	add.d	$a1, $a1, $a0
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	sub.d	$a2, $a1, $a6
	ld.d	$a3, $sp, 576
	ori	$a4, $zero, 100
	mul.w	$a2, $a2, $a4
	div.w	$a1, $a2, $a1
	st.w	$a1, $s8, 16
	st.d	$s5, $a3, 0
	ld.d	$s5, $sp, 584
	addi.d	$a1, $s7, -1
	move	$s3, $s8
	blez	$s7, .LBB0_619
.LBB0_574:                              # %for.body.i601
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_604 Depth 3
                                        #         Child Loop BB0_612 Depth 4
                                        #         Child Loop BB0_615 Depth 4
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$s7, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$s8, $a2, $a1
	ld.w	$a5, $s8, 12
	ld.w	$a1, $s3, 4
	addi.w	$a2, $a5, 1
	bne	$a1, $a2, .LBB0_578
# %bb.575:                              # %if.else.i636
                                        #   in Loop: Header=BB0_574 Depth=2
	ld.w	$a4, $s8, 8
	ld.w	$a1, $s3, 0
	nor	$a2, $a4, $zero
	add.w	$s1, $a1, $a2
	beqz	$s1, .LBB0_582
# %bb.576:                              # %land.lhs.true.i637
                                        #   in Loop: Header=BB0_574 Depth=2
	beqz	$a0, .LBB0_581
# %bb.577:                              # %if.then26.i
                                        #   in Loop: Header=BB0_574 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 12
	st.w	$s1, $a0, 8
	st.d	$s5, $a0, 0
	ld.w	$a4, $s8, 8
	ld.w	$a5, $s8, 12
	move	$s5, $a0
	b	.LBB0_582
	.p2align	4, , 16
.LBB0_578:                              # %if.then.i605
                                        #   in Loop: Header=BB0_574 Depth=2
	beqz	$a0, .LBB0_580
# %bb.579:                              # %if.then8.i607
                                        #   in Loop: Header=BB0_574 Depth=2
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 0
	st.d	$a1, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$s5, $a0, 8
	ld.w	$a1, $s3, 0
	st.w	$a1, $a0, 16
	ld.w	$a2, $s3, 4
	st.w	$a2, $a0, 20
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 24
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 28
	st.w	$s2, $a0, 32
	ld.w	$a5, $s8, 12
	move	$s5, $zero
	move	$s2, $zero
.LBB0_580:                              # %if.end.i612
                                        #   in Loop: Header=BB0_574 Depth=2
	ld.w	$a4, $s8, 8
	st.d	$a5, $sp, 464                   # 8-byte Folded Spill
.LBB0_581:                              # %if.end34.i
                                        #   in Loop: Header=BB0_574 Depth=2
	st.d	$a4, $sp, 488                   # 8-byte Folded Spill
.LBB0_582:                              # %if.end34.i
                                        #   in Loop: Header=BB0_574 Depth=2
	ld.w	$a0, $s8, 4
	ld.w	$a1, $s8, 0
	sub.d	$a2, $a5, $a0
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa0, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_1)
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a2, %pc_hi20(.LCPI0_4)
	fld.d	$fa2, $a2, %pc_lo12(.LCPI0_4)
	fmul.d	$fa0, $fa0, $fa1
	addi.w	$a2, $a1, -1
	addi.w	$a3, $a0, -1
	fmax.d	$fa0, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(align_get_dist)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_617
# %bb.583:                              # %if.end58.i
                                        #   in Loop: Header=BB0_574 Depth=2
	move	$s1, $a0
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s8, 4
	ld.w	$a4, $s8, 8
	ld.w	$a5, $s8, 12
	addi.w	$a2, $a0, -1
	addi.w	$a3, $a1, -1
	st.d	$s4, $sp, 16
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	addi.d	$a7, $sp, 584
	addi.d	$a0, $sp, 576
	st.d	$a0, $sp, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a6, $s1
	pcaddu18i	$ra, %call36(align_path)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 576
	beqz	$a0, .LBB0_617
# %bb.584:                              # %if.end68.i617
                                        #   in Loop: Header=BB0_574 Depth=2
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 576
	addi.d	$a2, $sp, 568
	pcaddu18i	$ra, %call36(Condense_both_Ends)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 8
	beqz	$a0, .LBB0_586
# %bb.585:                              #   in Loop: Header=BB0_574 Depth=2
	ori	$s3, $zero, 1
	b	.LBB0_591
	.p2align	4, , 16
.LBB0_586:                              # %land.lhs.true71.i
                                        #   in Loop: Header=BB0_574 Depth=2
	ld.d	$a0, $sp, 576
	ld.bu	$a1, $a0, 12
	ori	$s3, $zero, 1
	vld	$vr8, $sp, 240                  # 16-byte Folded Reload
	bne	$a1, $s3, .LBB0_592
# %bb.587:                              # %if.then76.i
                                        #   in Loop: Header=BB0_574 Depth=2
	ld.w	$a1, $a0, 8
	ld.w	$a2, $s8, 8
	sub.d	$a2, $a2, $a1
	st.w	$a2, $s8, 8
	beqz	$s5, .LBB0_590
# %bb.588:                              # %land.lhs.true86.i
                                        #   in Loop: Header=BB0_574 Depth=2
	ld.bu	$a2, $s5, 12
	bne	$a2, $s3, .LBB0_590
# %bb.589:                              # %if.then91.i634
                                        #   in Loop: Header=BB0_574 Depth=2
	ld.w	$a2, $s5, 8
	add.d	$a2, $a2, $a1
	st.w	$a2, $s5, 8
.LBB0_590:                              # %if.end95.i
                                        #   in Loop: Header=BB0_574 Depth=2
	sub.d	$s1, $s1, $a1
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 488                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 568
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 568
	st.d	$a0, $sp, 576
.LBB0_591:                              # %if.end97.i
                                        #   in Loop: Header=BB0_574 Depth=2
	vld	$vr8, $sp, 240                  # 16-byte Folded Reload
.LBB0_592:                              # %if.end97.i
                                        #   in Loop: Header=BB0_574 Depth=2
	ld.d	$a0, $sp, 584
	bnez	$s7, .LBB0_598
# %bb.593:                              # %if.end97.i
                                        #   in Loop: Header=BB0_574 Depth=2
	beqz	$a0, .LBB0_598
# %bb.594:                              # %land.lhs.true102.i
                                        #   in Loop: Header=BB0_574 Depth=2
	ld.bu	$a1, $a0, 12
	bne	$a1, $s3, .LBB0_600
# %bb.595:                              # %if.then107.i631
                                        #   in Loop: Header=BB0_574 Depth=2
	ld.w	$a1, $a0, 8
	ld.w	$a2, $s8, 0
	add.d	$a2, $a2, $a1
	st.w	$a2, $s8, 0
	ld.d	$a2, $sp, 576
	ld.d	$s3, $a0, 0
	bne	$a2, $a0, .LBB0_597
# %bb.596:                              # %if.then117.i
                                        #   in Loop: Header=BB0_574 Depth=2
	st.d	$s3, $sp, 576
.LBB0_597:                              # %if.end118.i
                                        #   in Loop: Header=BB0_574 Depth=2
	sub.d	$s1, $s1, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 584
	vld	$vr8, $sp, 240                  # 16-byte Folded Reload
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s8, 4
	add.d	$s2, $s1, $s2
	bnez	$s3, .LBB0_599
	b	.LBB0_572
	.p2align	4, , 16
.LBB0_598:                              #   in Loop: Header=BB0_574 Depth=2
	move	$s3, $a0
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s8, 4
	add.d	$s2, $s1, $s2
	beqz	$s3, .LBB0_572
.LBB0_599:                              #   in Loop: Header=BB0_574 Depth=2
	move	$a0, $s3
	ori	$s3, $zero, 1
	b	.LBB0_601
	.p2align	4, , 16
.LBB0_600:                              # %if.end119.thread.i
                                        #   in Loop: Header=BB0_574 Depth=2
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s8, 4
	add.d	$s2, $s1, $s2
.LBB0_601:                              # %while.body.preheader.i
                                        #   in Loop: Header=BB0_574 Depth=2
	move	$a3, $zero
	move	$a6, $zero
	bstrpick.d	$a4, $a2, 31, 0
	ld.d	$a5, $sp, 448                   # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	bstrpick.d	$a5, $a1, 31, 0
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	add.d	$a5, $a7, $a5
	b	.LBB0_604
	.p2align	4, , 16
.LBB0_602:                              # %sw.bb137.i
                                        #   in Loop: Header=BB0_604 Depth=3
	ld.w	$a7, $a0, 8
	add.w	$a3, $a7, $a3
	add.d	$a6, $a7, $a6
	add.d	$a4, $a4, $a7
.LBB0_603:                              # %sw.epilog.i
                                        #   in Loop: Header=BB0_604 Depth=3
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_573
.LBB0_604:                              # %while.body.i621
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_574 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_612 Depth 4
                                        #         Child Loop BB0_615 Depth 4
	ld.bu	$a7, $a0, 12
	beq	$a7, $s3, .LBB0_610
# %bb.605:                              # %while.body.i621
                                        #   in Loop: Header=BB0_604 Depth=3
	ori	$t0, $zero, 2
	beq	$a7, $t0, .LBB0_602
# %bb.606:                              # %while.body.i621
                                        #   in Loop: Header=BB0_604 Depth=3
	ori	$t0, $zero, 3
	bne	$a7, $t0, .LBB0_603
# %bb.607:                              # %for.cond146.preheader.i
                                        #   in Loop: Header=BB0_604 Depth=3
	ld.w	$a7, $a0, 8
	blt	$a7, $s3, .LBB0_603
# %bb.608:                              # %for.body150.i.preheader
                                        #   in Loop: Header=BB0_604 Depth=3
	ori	$t0, $zero, 8
	bgeu	$a7, $t0, .LBB0_611
# %bb.609:                              #   in Loop: Header=BB0_604 Depth=3
	move	$t2, $zero
	move	$t0, $a4
	move	$t1, $a5
	b	.LBB0_614
	.p2align	4, , 16
.LBB0_610:                              # %sw.bb.i
                                        #   in Loop: Header=BB0_604 Depth=3
	ld.w	$a7, $a0, 8
	add.w	$a3, $a7, $a3
	add.d	$a6, $a7, $a6
	add.d	$a5, $a5, $a7
	b	.LBB0_603
.LBB0_611:                              # %vector.ph
                                        #   in Loop: Header=BB0_604 Depth=3
	bstrpick.d	$t1, $a7, 30, 3
	slli.d	$t2, $t1, 3
	alsl.d	$t0, $t1, $a4, 3
	alsl.d	$t1, $t1, $a5, 3
	vld	$vr2, $sp, 304                  # 16-byte Folded Reload
	vori.b	$vr1, $vr2, 0
	vinsgr2vr.w	$vr1, $a6, 0
	vori.b	$vr0, $vr2, 0
	vinsgr2vr.w	$vr0, $s6, 0
	addi.d	$a6, $a5, 4
	addi.d	$t3, $a4, 4
	move	$t4, $t2
	vori.b	$vr3, $vr2, 0
	.p2align	4, , 16
.LBB0_612:                              # %vector.body
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_574 Depth=2
                                        #       Parent Loop BB0_604 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t5, $a6, -4
	ld.w	$t6, $a6, 0
	ld.w	$t7, $t3, -4
	ld.w	$t8, $t3, 0
	vinsgr2vr.w	$vr4, $t5, 0
	vinsgr2vr.w	$vr5, $t6, 0
	vinsgr2vr.w	$vr6, $t7, 0
	vinsgr2vr.w	$vr7, $t8, 0
	vseq.b	$vr4, $vr4, $vr6
	vilvl.b	$vr6, $vr4, $vr4
	vilvl.h	$vr6, $vr6, $vr6
	vand.v	$vr6, $vr6, $vr8
	vseq.b	$vr5, $vr5, $vr7
	vilvl.b	$vr7, $vr5, $vr5
	vilvl.h	$vr7, $vr7, $vr7
	vand.v	$vr7, $vr7, $vr8
	vadd.w	$vr0, $vr0, $vr6
	vadd.w	$vr2, $vr2, $vr7
	vxori.b	$vr4, $vr4, 255
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr8
	vxori.b	$vr5, $vr5, 255
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr8
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr3, $vr3, $vr5
	addi.d	$t4, $t4, -8
	addi.d	$a6, $a6, 8
	addi.d	$t3, $t3, 8
	bnez	$t4, .LBB0_612
# %bb.613:                              # %middle.block
                                        #   in Loop: Header=BB0_604 Depth=3
	vadd.w	$vr1, $vr3, $vr1
	vshuf4i.w	$vr3, $vr1, 14
	vadd.w	$vr1, $vr1, $vr3
	vreplvei.w	$vr3, $vr1, 1
	vadd.w	$vr1, $vr1, $vr3
	vpickve2gr.w	$a6, $vr1, 0
	vadd.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s6, $vr0, 0
	beq	$t2, $a7, .LBB0_616
.LBB0_614:                              # %for.body150.i.preheader1243
                                        #   in Loop: Header=BB0_604 Depth=3
	sub.d	$t2, $a7, $t2
	.p2align	4, , 16
.LBB0_615:                              # %for.body150.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_574 Depth=2
                                        #       Parent Loop BB0_604 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t3, $t1, 0
	ld.bu	$t4, $t0, 0
	xor	$t3, $t3, $t4
	sltu	$t4, $zero, $t3
	sltui	$t3, $t3, 1
	add.d	$s6, $s6, $t3
	add.d	$a6, $a6, $t4
	addi.d	$t1, $t1, 1
	addi.w	$t2, $t2, -1
	addi.d	$t0, $t0, 1
	bnez	$t2, .LBB0_615
.LBB0_616:                              # %sw.epilog.loopexit.i
                                        #   in Loop: Header=BB0_604 Depth=3
	addi.w	$a7, $a7, -1
	add.d	$a5, $a5, $a7
	addi.d	$a5, $a5, 1
	add.d	$a4, $a4, $a7
	addi.d	$a4, $a4, 1
	b	.LBB0_603
	.p2align	4, , 16
.LBB0_617:                              # %pluri_align.exit.thread
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	lu12i.w	$s8, 1024
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	b	.LBB0_627
	.p2align	4, , 16
.LBB0_618:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s6, $zero
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	b	.LBB0_626
.LBB0_619:                              # %for.end189.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s8, 4
	addi.w	$a0, $a0, -1
	beqz	$a0, .LBB0_622
# %bb.620:                              # %for.end189.i
                                        #   in Loop: Header=BB0_6 Depth=1
	beq	$a0, $s4, .LBB0_622
# %bb.621:                              # %if.then197.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 0
	st.d	$a1, $a0, 0
	st.d	$a0, $a2, 0
	ld.w	$a1, $s8, 0
	st.w	$a1, $a0, 16
	ld.w	$a2, $s8, 4
	st.w	$a2, $a0, 20
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 24
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	b	.LBB0_624
.LBB0_622:                              # %if.else215.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	beq	$a0, $s4, .LBB0_625
# %bb.623:                              # %if.then218.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 0
	st.d	$a1, $a0, 0
	st.d	$a0, $a2, 0
	ld.w	$a1, $s8, 0
	st.w	$a1, $a0, 16
	ori	$a2, $zero, 1
	st.w	$a2, $a0, 20
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 24
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
.LBB0_624:                              # %if.end236.sink.split.i
                                        #   in Loop: Header=BB0_6 Depth=1
	st.w	$a1, $a0, 28
	st.d	$s5, $a0, 8
	st.w	$s2, $a0, 32
.LBB0_625:                              # %pluri_align.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	lu12i.w	$s8, 1024
.LBB0_626:                              # %pluri_align.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $a0, 20
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.w	$s6, $a1, 36
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_5
.LBB0_627:                              # %if.then595
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$fp, $a1, 0
	beqz	$fp, .LBB0_4
	.p2align	4, , 16
.LBB0_628:                              # %while.body.i638
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $fp, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(Free_script)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	bnez	$s0, .LBB0_628
	b	.LBB0_4
.LBB0_629:                              # %while.end245.split.loop.exit322.i
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $s1
.LBB0_630:                              # %land.rhs249.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_631:                              # %land.rhs249.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $s5, 0
	alsl.d	$a1, $a4, $a0, 2
	slli.d	$a2, $a4, 2
	ldx.w	$a2, $a0, $a2
	ld.w	$a1, $a1, -4
	sub.w	$a1, $a2, $a1
	ori	$a2, $zero, 2
	blt	$a2, $a1, .LBB0_634
# %bb.632:                              # %while.body259.i
                                        #   in Loop: Header=BB0_631 Depth=2
	addi.d	$s5, $s5, -1
	ori	$a1, $zero, 1
	blt	$a1, $a4, .LBB0_631
# %bb.633:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $zero
.LBB0_634:                              # %while.end261.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a1, $s5, 0
	slli.d	$a1, $a1, 2
	ldx.w	$s0, $a0, $a1
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ldx.w	$a2, $s1, $a1
	sub.d	$a1, $a3, $s3
	add.d	$a1, $a1, $s0
	add.d	$fp, $a1, $a2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s3, $s0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	b	.LBB0_235
.LBB0_635:                              # %for.end606.loopexit
	ld.d	$fp, $sp, 536
	b	.LBB0_637
.LBB0_636:
	move	$fp, $zero
.LBB0_637:                              # %for.end606
	ld.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_638:                              # %cleanup609
	fld.d	$fs2, $sp, 592                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 600                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 608                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
	ret
.Lfunc_end0:
	.size	SIM4, .Lfunc_end0-SIM4
                                        # -- End function
	.globl	init_col                        # -- Begin function init_col
	.p2align	5
	.type	init_col,@function
init_col:                               # @init_col
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	st.w	$a1, $a0, 12
	st.w	$zero, $a0, 8
	beqz	$a1, .LBB1_2
# %bb.1:                                # %if.then
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	b	.LBB1_3
.LBB1_2:
	move	$a0, $zero
.LBB1_3:                                # %if.end
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	init_col, .Lfunc_end1-init_col
                                        # -- End function
	.p2align	5                               # -- Begin function exon_cores
	.type	exon_cores,@function
exon_cores:                             # @exon_cores
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 16
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	move	$s8, $a6
	move	$s3, $a5
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a2
	move	$s6, $a1
	add.d	$a0, $a2, $a0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	beqz	$s0, .LBB2_40
# %bb.1:                                # %while.body.i
	move	$a1, $a0
	ld.wu	$a0, $fp, 16
	move	$ra, $zero
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$s5, $a0, $a1, 2
	bstrpick.d	$s7, $s0, 31, 0
	add.d	$a0, $s6, $s7
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $s6, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	pcalau12i	$a0, %pc_hi20(encoding)
	addi.d	$a0, $a0, %pc_lo12(encoding)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a6, $s6
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 36
	st.w	$zero, $sp, 176
	bltu	$a0, $a1, .LBB2_10
.LBB2_2:                                # %restart.i
	bgeu	$ra, $s0, .LBB2_10
# %bb.3:                                # %for.body.i.preheader
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB2_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a6, 0
	slli.d	$a3, $a3, 2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a4, $a4, $a3
	add.d	$a3, $ra, $a1
	addi.w	$a3, $a3, 1
	addi.d	$a6, $a6, 1
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB2_8
# %bb.5:                                # %for.inc.i
                                        #   in Loop: Header=BB2_4 Depth=1
	slli.d	$a2, $a2, 2
	or	$a2, $a4, $a2
	st.w	$a2, $sp, 176
	addi.w	$a4, $a1, 2
	addi.d	$a1, $a1, 1
	bgeu	$a4, $a0, .LBB2_7
# %bb.6:                                # %for.inc.i
                                        #   in Loop: Header=BB2_4 Depth=1
	bltu	$a3, $s0, .LBB2_4
.LBB2_7:                                # %while.cond15.preheader.i.loopexit
	add.w	$ra, $ra, $a1
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_8:                                # %restart.i.backedge.loopexit456
	move	$ra, $a3
.LBB2_9:                                # %restart.i
	ori	$a1, $zero, 2
	ld.w	$a0, $fp, 36
	st.w	$zero, $sp, 176
	bgeu	$a0, $a1, .LBB2_2
.LBB2_10:                               # %while.cond15.preheader.i
	bgeu	$ra, $s0, .LBB2_39
# %bb.11:                               # %while.body18.i.preheader
	addi.w	$a3, $ra, 1
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %cleanup49.i
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	beq	$ra, $s0, .LBB2_39
.LBB2_13:                               # %while.body18.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_20 Depth 2
                                        #       Child Loop BB2_24 Depth 3
                                        #       Child Loop BB2_31 Depth 3
	ld.bu	$a0, $a6, 0
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a0, $a2, $a0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a6, $a6, 1
	addi.w	$ra, $ra, 1
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB2_9
# %bb.14:                               # %if.end27.i
                                        #   in Loop: Header=BB2_13 Depth=1
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a1, $sp, 176
	ld.w	$a2, $fp, 32
	and	$a1, $a2, $a1
	slli.d	$a1, $a1, 2
	ld.d	$a2, $fp, 0
	or	$a0, $a1, $a0
	st.w	$a0, $sp, 176
	bstrpick.d	$a0, $a0, 18, 0
	alsl.d	$a1, $a0, $a2, 3
	pcalau12i	$a0, %pc_hi20(hash_node_compare)
	addi.d	$a2, $a0, %pc_lo12(hash_node_compare)
	addi.d	$a0, $sp, 176
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(tfind)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_12
# %bb.15:                               # %if.then39.i
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.d	$a0, $a0, 0
	ld.w	$a4, $a0, 4
	bltz	$a4, .LBB2_12
# %bb.16:                               # %for.body43.lr.ph.i
                                        #   in Loop: Header=BB2_13 Depth=1
	add.d	$a0, $s6, $ra
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_17:                               # %add_col_elt.exit.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a2, $a1, 3
	bstrpick.d	$a2, $a2, 34, 3
	slli.d	$a2, $a2, 3
	stx.d	$s7, $a0, $a2
	ld.d	$a0, $s8, 0
	ldx.d	$a3, $a0, $a2
	ld.d	$a0, $fp, 8
	ld.w	$a2, $fp, 36
	addi.d	$a1, $a1, 1
	st.w	$a1, $s8, 8
	st.w	$s2, $a3, 16
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
.LBB2_18:                               # %if.end91.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s5, 2
	sub.d	$a0, $s4, $a0
	add.d	$a0, $a2, $a0
	st.w	$a0, $a1, 0
.LBB2_19:                               # %extend_hit.exit.i
                                        #   in Loop: Header=BB2_20 Depth=2
	ld.d	$a0, $fp, 24
	slli.d	$a1, $s1, 2
	ldx.w	$a4, $a0, $a1
	addi.w	$a0, $zero, -1
	bge	$a0, $a4, .LBB2_12
.LBB2_20:                               # %for.body43.i
                                        #   Parent Loop BB2_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_24 Depth 3
                                        #       Child Loop BB2_31 Depth 3
	sub.w	$a1, $ra, $a4
	slli.d	$a0, $a1, 2
	ldx.w	$a0, $s5, $a0
	bge	$a4, $a0, .LBB2_22
# %bb.21:                               # %for.body43.extend_hit.exit_crit_edge.i
                                        #   in Loop: Header=BB2_20 Depth=2
	move	$s1, $a4
	b	.LBB2_19
	.p2align	4, , 16
.LBB2_22:                               # %if.end.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 8
	bstrpick.d	$s1, $a4, 31, 0
	add.d	$a3, $a0, $s1
	bge	$ra, $s7, .LBB2_27
# %bb.23:                               # %land.lhs.true.lr.ph.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	pcalau12i	$a1, %got_pc_hi20(options)
	ld.d	$a1, $a1, %got_pc_lo12(options)
	ld.wu	$t0, $fp, 16
	ld.w	$a2, $a1, 64
	ld.w	$a5, $a1, 56
	ld.w	$a6, $a1, 48
	move	$a7, $zero
	move	$a1, $zero
	add.d	$t0, $a0, $t0
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	move	$t2, $a3
	move	$s4, $a3
	.p2align	4, , 16
.LBB2_24:                               # %land.lhs.true.i.i
                                        #   Parent Loop BB2_13 Depth=1
                                        #     Parent Loop BB2_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$t2, $t0, .LBB2_28
# %bb.25:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB2_24 Depth=3
	sub.w	$t3, $a1, $a2
	blt	$a7, $t3, .LBB2_28
# %bb.26:                               # %while.body.i.i
                                        #   in Loop: Header=BB2_24 Depth=3
	ld.bu	$t3, $t1, 0
	ld.bu	$t4, $t2, 0
	addi.d	$t5, $t1, 1
	addi.d	$t2, $t2, 1
	xor	$t1, $t3, $t4
	sltui	$t1, $t1, 1
	masknez	$t3, $a6, $t1
	maskeqz	$t1, $a5, $t1
	or	$t1, $t1, $t3
	add.w	$a7, $t1, $a7
	slt	$t1, $a1, $a7
	masknez	$t3, $s4, $t1
	maskeqz	$t4, $t2, $t1
	or	$s4, $t4, $t3
	maskeqz	$t3, $a7, $t1
	masknez	$a1, $a1, $t1
	or	$a1, $t3, $a1
	move	$t1, $t5
	bltu	$t5, $s0, .LBB2_24
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_27:                               #   in Loop: Header=BB2_20 Depth=2
	move	$a1, $zero
	move	$s4, $a3
.LBB2_28:                               # %while.end.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	ld.w	$a2, $fp, 36
	bstrpick.d	$t2, $a2, 31, 0
	sub.d	$a3, $a3, $t2
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $t2
	bgeu	$a2, $a4, .LBB2_38
# %bb.29:                               # %while.end.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	bge	$t2, $ra, .LBB2_34
# %bb.30:                               # %land.rhs38.lr.ph.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	pcalau12i	$a4, %got_pc_hi20(options)
	ld.d	$t1, $a4, %got_pc_lo12(options)
	move	$a6, $zero
	move	$a4, $zero
	ld.w	$a7, $t1, 64
	ld.w	$t0, $t1, 56
	ld.w	$t1, $t1, 48
	sub.d	$t2, $zero, $t2
	add.d	$t3, $a0, $s1
	addi.d	$t3, $t3, -1
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_31:                               # %land.rhs38.i.i
                                        #   Parent Loop BB2_13 Depth=1
                                        #     Parent Loop BB2_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sub.w	$t5, $a4, $a7
	blt	$a6, $t5, .LBB2_35
# %bb.32:                               # %while.body43.i.i
                                        #   in Loop: Header=BB2_31 Depth=3
	ldx.bu	$t6, $t4, $t2
	ldx.bu	$t7, $t3, $t2
	add.d	$t8, $t4, $t2
	add.d	$t5, $t3, $t2
	xor	$t6, $t6, $t7
	sltui	$t6, $t6, 1
	masknez	$t7, $t1, $t6
	maskeqz	$t6, $t0, $t6
	or	$t6, $t6, $t7
	add.w	$a6, $t6, $a6
	slt	$t6, $a4, $a6
	maskeqz	$t7, $a6, $t6
	masknez	$a4, $a4, $t6
	or	$a4, $t7, $a4
	masknez	$a3, $a3, $t6
	maskeqz	$t7, $t5, $t6
	or	$a3, $t7, $a3
	masknez	$a5, $a5, $t6
	maskeqz	$t6, $t8, $t6
	or	$a5, $t6, $a5
	bgeu	$s6, $t8, .LBB2_35
# %bb.33:                               # %while.body43.i.i
                                        #   in Loop: Header=BB2_31 Depth=3
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, -1
	bltu	$a0, $t5, .LBB2_31
	b	.LBB2_35
.LBB2_34:                               #   in Loop: Header=BB2_20 Depth=2
	move	$a4, $zero
.LBB2_35:                               # %while.end59.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	add.d	$a1, $a2, $a1
	add.w	$s2, $a1, $a4
	blt	$s2, $s3, .LBB2_18
.LBB2_36:                               # %if.then65.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	sub.d	$fp, $a3, $a0
	sub.d	$s0, $a5, $s6
	nor	$a0, $a0, $zero
	add.d	$s3, $s4, $a0
	add.d	$a0, $s4, $s0
	nor	$a1, $a3, $zero
	add.d	$s5, $a0, $a1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.w	$fp, $a0, 0
	st.w	$s0, $a0, 4
	st.w	$s3, $a0, 8
	st.w	$s5, $a0, 12
	ld.w	$a2, $s8, 12
	ld.w	$a1, $s8, 8
	ld.d	$a0, $s8, 0
	bltu	$a1, $a2, .LBB2_17
# %bb.37:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	addi.d	$a1, $a2, 5
	st.w	$a1, $s8, 12
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 8
	st.d	$a0, $s8, 0
	b	.LBB2_17
.LBB2_38:                               #   in Loop: Header=BB2_20 Depth=2
	move	$a4, $zero
	add.d	$a1, $a2, $a1
	add.w	$s2, $a1, $a4
	blt	$s2, $s3, .LBB2_18
	b	.LBB2_36
.LBB2_39:                               # %while.end53.loopexit.i
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
.LBB2_40:                               # %search.exit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.wu	$a1, $s8, 8
	pcalau12i	$a2, %pc_hi20(msp_rna_compare)
	addi.d	$a3, $a2, %pc_lo12(msp_rna_compare)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 8
	beqz	$a2, .LBB2_56
# %bb.41:                               # %while.body.i136.preheader
	move	$s1, $zero
	ori	$fp, $zero, 50
	ori	$s0, $zero, 20
	b	.LBB2_43
	.p2align	4, , 16
.LBB2_42:                               # %if.then.i
                                        #   in Loop: Header=BB2_43 Depth=1
	move	$s1, $a0
	bgeu	$s1, $a2, .LBB2_55
.LBB2_43:                               # %while.body.i136
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_46 Depth 2
                                        #     Child Loop BB2_52 Depth 2
	ld.d	$a1, $s8, 0
	bstrpick.d	$s3, $s1, 31, 0
	slli.d	$s2, $s3, 3
	ldx.d	$a0, $a1, $s2
	ld.w	$a3, $a0, 12
	ld.w	$a0, $a0, 4
	sub.w	$a4, $a3, $a0
	addi.w	$a0, $s1, 1
	bgeu	$a4, $fp, .LBB2_42
# %bb.44:                               # %if.end.i
                                        #   in Loop: Header=BB2_43 Depth=1
	move	$s4, $a0
	bgeu	$a0, $a2, .LBB2_49
# %bb.45:                               # %land.rhs.preheader.i
                                        #   in Loop: Header=BB2_43 Depth=1
	addi.w	$a3, $a3, 5
	bstrpick.d	$a4, $a0, 31, 0
	alsl.d	$a4, $a4, $a1, 3
	move	$s4, $a0
	.p2align	4, , 16
.LBB2_46:                               # %land.rhs.i
                                        #   Parent Loop BB2_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.w	$a5, $a5, 12
	bltu	$a3, $a5, .LBB2_49
# %bb.47:                               # %while.body13.i
                                        #   in Loop: Header=BB2_46 Depth=2
	addi.w	$s4, $s4, 1
	addi.d	$a4, $a4, 8
	bne	$a2, $s4, .LBB2_46
# %bb.48:                               #   in Loop: Header=BB2_43 Depth=1
	move	$s4, $a2
.LBB2_49:                               # %while.end.i
                                        #   in Loop: Header=BB2_43 Depth=1
	sub.w	$s5, $s4, $s1
	bltu	$s5, $s0, .LBB2_42
# %bb.50:                               # %for.cond.preheader.i
                                        #   in Loop: Header=BB2_43 Depth=1
	bstrpick.d	$s6, $s4, 31, 0
	bgeu	$s1, $s4, .LBB2_54
# %bb.51:                               # %for.body.i142.preheader
                                        #   in Loop: Header=BB2_43 Depth=1
	sub.d	$s7, $s6, $s3
	.p2align	4, , 16
.LBB2_52:                               # %for.body.i142
                                        #   Parent Loop BB2_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 0
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	addi.d	$s2, $s2, 8
	bnez	$s7, .LBB2_52
# %bb.53:                               # %for.end.loopexit.i
                                        #   in Loop: Header=BB2_43 Depth=1
	ld.d	$a1, $s8, 0
	ld.w	$a2, $s8, 8
.LBB2_54:                               # %for.end.i
                                        #   in Loop: Header=BB2_43 Depth=1
	alsl.d	$a0, $s3, $a1, 3
	alsl.d	$a1, $s6, $a1, 3
	sub.d	$a2, $a2, $s4
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 8
	sub.w	$a2, $a0, $s5
	st.w	$a2, $s8, 8
	bltu	$s1, $a2, .LBB2_43
.LBB2_55:                               # %trim_small_repeated_msps.exit.loopexit
	bstrpick.d	$a1, $a2, 31, 0
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB2_57
.LBB2_56:
	move	$a1, $zero
.LBB2_57:                               # %trim_small_repeated_msps.exit
	ld.d	$s4, $sp, 272
	ld.d	$a0, $s8, 0
	pcalau12i	$a2, %pc_hi20(msp_compare)
	addi.d	$a3, $a2, %pc_lo12(msp_compare)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 8
	beqz	$a2, .LBB2_77
# %bb.58:                               # %while.body.i147.preheader
	move	$s1, $zero
	ori	$fp, $zero, 11
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB2_59:                               # %while.body.i147
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_61 Depth 2
	addi.w	$a0, $s1, 1
	bgeu	$a0, $a2, .LBB2_72
# %bb.60:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB2_59 Depth=1
	ld.d	$a5, $s8, 0
	bstrpick.d	$a6, $s1, 31, 0
	slli.d	$a1, $a6, 3
	ldx.d	$a1, $a5, $a1
	ld.w	$a3, $a1, 12
	addi.w	$t0, $a3, 1
	addi.d	$t1, $a3, 2
	ld.w	$a4, $a1, 0
	addi.d	$a7, $a6, 1
	nor	$s3, $s1, $zero
	alsl.d	$a6, $a6, $a5, 3
	addi.d	$t2, $a6, 8
	.p2align	4, , 16
.LBB2_61:                               # %for.body.i155
                                        #   Parent Loop BB2_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $t2, 0
	ld.w	$t3, $a6, 4
	ld.w	$t4, $a6, 0
	sltu	$a6, $t0, $t3
	sub.w	$t3, $t1, $t3
	masknez	$t3, $t3, $a6
	bgeu	$a4, $t4, .LBB2_63
# %bb.62:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB2_61 Depth=2
	ld.w	$a6, $a1, 8
	addi.w	$t5, $a6, 1
	bgeu	$t5, $t4, .LBB2_66
.LBB2_63:                               # %if.end21.thr_comm.i
                                        #   in Loop: Header=BB2_61 Depth=2
	beqz	$t3, .LBB2_72
.LBB2_64:                               # %for.inc.i161
                                        #   in Loop: Header=BB2_61 Depth=2
	add.w	$a6, $a2, $s3
	beq	$a6, $s0, .LBB2_72
# %bb.65:                               # %for.body.i155.backedge
                                        #   in Loop: Header=BB2_61 Depth=2
	addi.d	$a7, $a7, 1
	addi.w	$s3, $s3, -1
	addi.d	$t2, $t2, 8
	b	.LBB2_61
	.p2align	4, , 16
.LBB2_66:                               # %if.end21.i
                                        #   in Loop: Header=BB2_61 Depth=2
	sub.d	$t4, $a6, $t4
	addi.w	$t4, $t4, 2
	sltui	$t5, $t3, 1
	sltu	$t6, $zero, $t4
	beq	$t5, $t6, .LBB2_64
# %bb.67:                               # %land.lhs.true27.i
                                        #   in Loop: Header=BB2_61 Depth=2
	sub.w	$t4, $t3, $t4
	srai.d	$t5, $t4, 31
	xor	$t4, $t4, $t5
	sub.w	$t4, $t4, $t5
	bgeu	$t4, $fp, .LBB2_64
# %bb.68:                               # %for.end.i162
                                        #   in Loop: Header=BB2_59 Depth=1
	beqz	$t3, .LBB2_72
# %bb.69:                               # %if.then36.i
                                        #   in Loop: Header=BB2_59 Depth=1
	bstrpick.d	$s2, $a7, 31, 0
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $a5, $a0
	ld.w	$a7, $a1, 16
	ld.w	$a5, $a0, 16
	add.w	$a5, $a5, $a7
	addi.w	$t0, $t3, 1
	ld.w	$t1, $a0, 0
	sub.d	$t0, $a5, $t0
	sltu	$a5, $a5, $t0
	masknez	$a5, $t0, $a5
	sltu	$t0, $a4, $t1
	masknez	$t1, $t1, $t0
	ld.w	$t2, $a1, 4
	ld.w	$t3, $a0, 4
	maskeqz	$a4, $a4, $t0
	or	$a4, $a4, $t1
	st.w	$a4, $a1, 0
	sltu	$a4, $t2, $t3
	masknez	$t0, $t3, $a4
	maskeqz	$a4, $t2, $a4
	ld.w	$t1, $a0, 8
	addi.w	$t2, $a5, 0
	or	$a4, $a4, $t0
	st.w	$a4, $a1, 4
	sltu	$a4, $t1, $a6
	masknez	$t0, $t1, $a4
	ld.w	$t1, $a0, 12
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $t0
	st.w	$a4, $a1, 8
	sltu	$a4, $t1, $a3
	masknez	$a6, $t1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a6
	st.w	$a3, $a1, 12
	bgeu	$a7, $t2, .LBB2_71
# %bb.70:                               # %if.then93.i
                                        #   in Loop: Header=BB2_59 Depth=1
	st.w	$a5, $a1, 16
.LBB2_71:                               # %if.end95.i
                                        #   in Loop: Header=BB2_59 Depth=1
	addi.d	$a1, $a2, -1
	st.w	$a1, $s8, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.w	$a2, $s8, 8
	alsl.d	$a0, $s2, $a0, 3
	addi.d	$a1, $a0, 8
	add.d	$a2, $a2, $s3
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 8
	bltu	$s1, $a2, .LBB2_59
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_72:                               #   in Loop: Header=BB2_59 Depth=1
	move	$s1, $a0
	bltu	$s1, $a2, .LBB2_59
.LBB2_73:                               # %combine_msps.exit
	bnez	$s4, .LBB2_78
# %bb.74:                               # %for.cond.preheader
	beqz	$a2, .LBB2_82
# %bb.75:                               # %for.body.lr.ph
	ld.d	$a0, $s8, 0
	ori	$a3, $zero, 8
	bstrpick.d	$a1, $a2, 31, 0
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a2, $a3, .LBB2_83
# %bb.76:
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB2_86
.LBB2_77:                               # %combine_msps.exit.thread
	move	$a2, $zero
	beqz	$s4, .LBB2_79
.LBB2_78:                               # %if.else198
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$s2, $s4
	ld.w	$a0, $s2, 12
	sltu	$a3, $zero, $s4
	bnez	$a0, .LBB2_145
	b	.LBB2_141
.LBB2_79:
	ori	$a0, $zero, 1
	bnez	$a0, .LBB2_89
.LBB2_80:                               # %for.body30.preheader
	move	$a0, $zero
	move	$a1, $zero
	sub.d	$a3, $a2, $s0
	addi.d	$a3, $a3, 1
	bstrpick.d	$a4, $a3, 31, 2
	add.w	$a3, $a4, $s0
	sltu	$a5, $a4, $a2
	maskeqz	$a4, $a4, $a5
	sub.w	$a2, $a2, $a4
	.p2align	4, , 16
.LBB2_81:                               # %for.body30
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $s8, 0
	ldx.d	$a4, $a4, $a0
	ld.w	$a5, $a4, 4
	ld.d	$a6, $a4, 24
	sltu	$a5, $a5, $a3
	ld.w	$a7, $a4, 12
	slli.d	$a5, $a5, 1
	srli.d	$a6, $a6, 2
	bstrins.d	$a5, $a6, 63, 2
	sltu	$a6, $a2, $a7
	or	$a5, $a5, $a6
	st.d	$a5, $a4, 24
	ld.wu	$a4, $s8, 8
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 8
	bltu	$a1, $a4, .LBB2_81
	b	.LBB2_90
.LBB2_82:
	move	$a2, $zero
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB2_89
	b	.LBB2_80
.LBB2_83:                               # %vector.ph
	bstrpick.d	$a2, $a1, 31, 3
	slli.d	$a3, $a2, 3
	vreplgr2vr.w	$vr1, $s0
	vrepli.b	$vr0, 0
	addi.d	$a2, $a0, 32
	move	$a4, $a3
	vori.b	$vr3, $vr1, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB2_84:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, -32
	ld.d	$a6, $a2, -24
	ld.d	$a7, $a2, -16
	ld.d	$t0, $a2, -8
	ld.d	$t1, $a2, 0
	ld.d	$t2, $a2, 8
	ld.d	$t3, $a2, 16
	ld.d	$t4, $a2, 24
	ld.w	$t5, $a5, 4
	ld.w	$t6, $a6, 4
	ld.w	$t7, $a7, 4
	ld.w	$t8, $t0, 4
	vinsgr2vr.w	$vr4, $t5, 0
	vinsgr2vr.w	$vr4, $t6, 1
	vinsgr2vr.w	$vr4, $t7, 2
	vinsgr2vr.w	$vr4, $t8, 3
	ld.w	$t5, $t1, 4
	ld.w	$t6, $t2, 4
	ld.w	$t7, $t3, 4
	ld.w	$t8, $t4, 4
	vinsgr2vr.w	$vr5, $t5, 0
	vinsgr2vr.w	$vr5, $t6, 1
	vinsgr2vr.w	$vr5, $t7, 2
	vinsgr2vr.w	$vr5, $t8, 3
	vmin.wu	$vr1, $vr4, $vr1
	vmin.wu	$vr3, $vr5, $vr3
	ld.w	$a5, $a5, 12
	ld.w	$a6, $a6, 12
	ld.w	$a7, $a7, 12
	ld.w	$t0, $t0, 12
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ld.w	$a5, $t1, 12
	ld.w	$a6, $t2, 12
	ld.w	$a7, $t3, 12
	ld.w	$t0, $t4, 12
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	vmax.wu	$vr0, $vr4, $vr0
	vmax.wu	$vr2, $vr5, $vr2
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 64
	bnez	$a4, .LBB2_84
# %bb.85:                               # %middle.block
	vmin.wu	$vr1, $vr1, $vr3
	vshuf4i.w	$vr3, $vr1, 14
	vmin.wu	$vr1, $vr1, $vr3
	vreplvei.w	$vr3, $vr1, 1
	vmin.wu	$vr1, $vr1, $vr3
	vpickve2gr.w	$s0, $vr1, 0
	vmax.wu	$vr0, $vr0, $vr2
	vshuf4i.w	$vr1, $vr0, 14
	vmax.wu	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.wu	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a3, $a1, .LBB2_88
.LBB2_86:                               # %for.body.preheader
	alsl.d	$a0, $a3, $a0, 3
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB2_87:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a3, 4
	sltu	$a5, $a4, $s0
	ld.w	$a3, $a3, 12
	masknez	$a6, $s0, $a5
	maskeqz	$a4, $a4, $a5
	or	$s0, $a4, $a6
	sltu	$a4, $a2, $a3
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a3, $a4
	or	$a2, $a3, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB2_87
.LBB2_88:
	move	$a0, $zero
	beqz	$a0, .LBB2_80
.LBB2_89:
	move	$a4, $zero
.LBB2_90:                               # %for.end48
	addi.w	$a2, $a4, 0
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_149
# %bb.91:                               # %if.end53
	move	$a5, $a0
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	move	$s4, $s8
	ld.d	$a1, $s8, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(options)
	ld.d	$a2, $a2, %got_pc_lo12(options)
	ldx.d	$a0, $a1, $a0
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 72
	ld.w	$a0, $a0, 20
	ori	$a3, $zero, 50
	bltu	$a2, $a3, .LBB2_94
# %bb.92:                               # %if.then59
	mul.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a2, 335544
	ori	$a2, $a2, 1311
	mul.d	$a0, $a0, $a2
	srli.d	$s8, $a0, 37
	ld.w	$a0, $s4, 8
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB2_95
.LBB2_93:
	move	$s1, $zero
	move	$s8, $s4
	b	.LBB2_138
.LBB2_94:                               # %if.else
	bstrpick.d	$a2, $a0, 31, 2
	sub.w	$s8, $a0, $a2
	ld.w	$a0, $s4, 8
	ori	$a2, $zero, 2
	bltu	$a0, $a2, .LBB2_93
.LBB2_95:                               # %for.body68.lr.ph
	move	$a6, $zero
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	move	$a0, $zero
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	vinsgr2vr.w	$vr0, $a2, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	vinsgr2vr.w	$vr0, $a2, 1
	vshuf4i.w	$vr1, $vr0, 68
	ori	$s1, $zero, 1
	vst	$vr1, $sp, 128                  # 16-byte Folded Spill
	b	.LBB2_98
	.p2align	4, , 16
.LBB2_96:                               #   in Loop: Header=BB2_98 Depth=1
	move	$s3, $s1
	move	$a2, $s4
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
.LBB2_97:                               # %if.end174
                                        #   in Loop: Header=BB2_98 Depth=1
	ld.wu	$a2, $a2, 8
	addi.d	$s1, $s3, 1
	bgeu	$s1, $a2, .LBB2_136
.LBB2_98:                               # %for.body68.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_114 Depth 2
                                        #     Child Loop BB2_132 Depth 2
	alsl.d	$a2, $s1, $a1, 3
	ld.d	$a2, $a2, -8
	ld.d	$a3, $a2, 24
	slli.d	$s0, $s1, 3
	ldx.d	$fp, $a1, $s0
	andi	$a2, $a3, 1
	beqz	$a2, .LBB2_100
# %bb.99:                               # %land.lhs.true.peel
                                        #   in Loop: Header=BB2_98 Depth=1
	ld.bu	$a4, $fp, 24
	andi	$a4, $a4, 1
	beqz	$a4, .LBB2_104
.LBB2_100:                              # %lor.lhs.false.peel
                                        #   in Loop: Header=BB2_98 Depth=1
	andi	$a3, $a3, 2
	bnez	$a3, .LBB2_102
# %bb.101:                              # %land.lhs.true90.peel
                                        #   in Loop: Header=BB2_98 Depth=1
	ld.bu	$a3, $fp, 24
	andi	$a3, $a3, 2
	bnez	$a3, .LBB2_104
.LBB2_102:                              # %lor.lhs.false97.peel
                                        #   in Loop: Header=BB2_98 Depth=1
	beqz	$a2, .LBB2_96
# %bb.103:                              # %land.lhs.true103.peel
                                        #   in Loop: Header=BB2_98 Depth=1
	ld.bu	$a2, $fp, 24
	andi	$a2, $a2, 2
	beqz	$a2, .LBB2_96
.LBB2_104:                              # %if.then110.peel
                                        #   in Loop: Header=BB2_98 Depth=1
	addi.w	$s5, $s1, 0
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	addi.w	$s7, $a6, 0
	move	$a0, $s4
	move	$a1, $s7
	move	$a2, $s5
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$s6, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$s2, $a0, 20
	ld.w	$a2, $s4, 8
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$a5, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 72
	ld.w	$a0, $a0, 20
	ori	$a3, $zero, 50
	bltu	$a2, $a3, .LBB2_108
# %bb.105:                              # %if.then110.peel
                                        #   in Loop: Header=BB2_98 Depth=1
	bltu	$s2, $s8, .LBB2_108
# %bb.106:                              # %if.then110.peel
                                        #   in Loop: Header=BB2_98 Depth=1
	bltu	$a0, $s8, .LBB2_108
# %bb.107:                              #   in Loop: Header=BB2_98 Depth=1
	move	$s2, $a5
	move	$s3, $s1
	b	.LBB2_126
	.p2align	4, , 16
.LBB2_108:                              # %lor.lhs.false130.peel
                                        #   in Loop: Header=BB2_98 Depth=1
	ori	$a3, $zero, 49
	bltu	$a3, $a2, .LBB2_111
# %bb.109:                              # %lor.lhs.false130.peel
                                        #   in Loop: Header=BB2_98 Depth=1
	sltu	$a0, $a0, $s8
	sltu	$a2, $s2, $s8
	and	$a0, $a2, $a0
	bnez	$a0, .LBB2_111
# %bb.110:                              #   in Loop: Header=BB2_98 Depth=1
	move	$s2, $a5
	move	$s5, $s1
	move	$s3, $s1
	b	.LBB2_126
.LBB2_111:                              # %if.end174.thread.peel
                                        #   in Loop: Header=BB2_98 Depth=1
	ld.wu	$a2, $s4, 8
	addi.d	$s3, $s1, 1
	bgeu	$s3, $a2, .LBB2_135
# %bb.112:                              # %for.body68.preheader
                                        #   in Loop: Header=BB2_98 Depth=1
	addi.w	$s5, $s1, 1
	b	.LBB2_114
	.p2align	4, , 16
.LBB2_113:                              # %if.end174.thread
                                        #   in Loop: Header=BB2_114 Depth=2
	ld.wu	$a2, $s4, 8
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	addi.w	$s5, $s5, 1
	bgeu	$s3, $a2, .LBB2_135
.LBB2_114:                              # %for.body68
                                        #   Parent Loop BB2_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $a1, $s0
	ld.d	$a0, $a0, 24
	add.d	$a2, $a1, $s0
	ld.d	$fp, $a2, 8
	andi	$a2, $a0, 1
	beqz	$a2, .LBB2_116
# %bb.115:                              # %land.lhs.true
                                        #   in Loop: Header=BB2_114 Depth=2
	ld.bu	$a3, $fp, 24
	andi	$a3, $a3, 1
	beqz	$a3, .LBB2_120
.LBB2_116:                              # %lor.lhs.false
                                        #   in Loop: Header=BB2_114 Depth=2
	andi	$a0, $a0, 2
	bnez	$a0, .LBB2_118
# %bb.117:                              # %land.lhs.true90
                                        #   in Loop: Header=BB2_114 Depth=2
	ld.bu	$a0, $fp, 24
	andi	$a0, $a0, 2
	bnez	$a0, .LBB2_120
.LBB2_118:                              # %lor.lhs.false97
                                        #   in Loop: Header=BB2_114 Depth=2
	ori	$a0, $zero, 1
	beqz	$a2, .LBB2_134
# %bb.119:                              # %land.lhs.true103
                                        #   in Loop: Header=BB2_114 Depth=2
	ld.bu	$a2, $fp, 24
	andi	$a2, $a2, 2
	beqz	$a2, .LBB2_134
.LBB2_120:                              # %if.then110
                                        #   in Loop: Header=BB2_114 Depth=2
	move	$a0, $s4
	move	$a1, $s7
	move	$a2, $s5
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$s6, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$s1, $a0, 20
	ld.w	$a2, $s4, 8
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$a5, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 72
	ld.w	$a0, $a0, 20
	ori	$a3, $zero, 50
	bltu	$a2, $a3, .LBB2_123
# %bb.121:                              # %if.then110
                                        #   in Loop: Header=BB2_114 Depth=2
	bltu	$s1, $s8, .LBB2_123
# %bb.122:                              # %if.then110
                                        #   in Loop: Header=BB2_114 Depth=2
	bgeu	$a0, $s8, .LBB2_125
.LBB2_123:                              # %lor.lhs.false130
                                        #   in Loop: Header=BB2_114 Depth=2
	ori	$a3, $zero, 49
	bltu	$a3, $a2, .LBB2_113
# %bb.124:                              # %lor.lhs.false130
                                        #   in Loop: Header=BB2_114 Depth=2
	sltu	$a0, $a0, $s8
	sltu	$a2, $s1, $s8
	and	$a0, $a2, $a0
	bnez	$a0, .LBB2_113
.LBB2_125:                              #   in Loop: Header=BB2_98 Depth=1
	move	$s2, $a5
	.p2align	4, , 16
.LBB2_126:                              # %if.then139
                                        #   in Loop: Header=BB2_98 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a4, 12
	ld.w	$a1, $a4, 8
	ld.d	$a2, $a4, 0
	move	$s7, $a0
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	bltu	$a1, $a3, .LBB2_128
# %bb.127:                              # %if.then.i168
                                        #   in Loop: Header=BB2_98 Depth=1
	addi.d	$a0, $a3, 5
	st.w	$a0, $a4, 12
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a4, 8
	move	$a2, $a0
	st.d	$a0, $a4, 0
.LBB2_128:                              # %add_col_elt.exit
                                        #   in Loop: Header=BB2_98 Depth=1
	slli.d	$a0, $a1, 3
	bstrpick.d	$a0, $a0, 34, 3
	slli.d	$a3, $a0, 3
	stx.d	$s7, $a2, $a3
	ld.d	$a2, $a4, 0
	move	$a0, $zero
	ldx.d	$s0, $a2, $a3
	ld.w	$a2, $fp, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a4, 8
	st.w	$s1, $s0, 24
	sub.d	$a1, $a2, $s1
	st.w	$a1, $s0, 28
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	sub.w	$a1, $s5, $a2
	st.w	$a1, $s0, 20
	bstrpick.d	$a2, $a2, 31, 0
	st.w	$zero, $s0, 16
	beq	$s3, $a2, .LBB2_130
# %bb.129:                              # %if.then.i179
                                        #   in Loop: Header=BB2_98 Depth=1
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
.LBB2_130:                              # %init_col.exit
                                        #   in Loop: Header=BB2_98 Depth=1
	st.d	$a0, $s0, 8
	ld.d	$a0, $s4, 0
	addi.d	$s7, $s0, 8
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $zero
	pcaddu18i	$ra, %call36(msp2exons)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s0, 16
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	beqz	$a1, .LBB2_133
# %bb.131:                              # %for.body154.preheader
                                        #   in Loop: Header=BB2_98 Depth=1
	move	$a0, $zero
	slli.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB2_132:                              # %for.body154
                                        #   Parent Loop BB2_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s7, 0
	ldx.d	$a2, $a2, $a0
	vld	$vr0, $a2, 0
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a0, $a0, 8
	vst	$vr0, $a2, 0
	bne	$a1, $a0, .LBB2_132
.LBB2_133:                              # %for.end168
                                        #   in Loop: Header=BB2_98 Depth=1
	move	$a2, $s4
	ld.d	$a1, $s4, 0
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $zero
	move	$a6, $s5
	move	$a5, $s2
	b	.LBB2_97
.LBB2_134:                              #   in Loop: Header=BB2_98 Depth=1
	move	$a2, $s4
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB2_97
.LBB2_135:
	move	$s8, $s4
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB2_137
.LBB2_136:                              # %for.end177
	move	$s8, $s4
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_138
.LBB2_137:                              # %if.then179
	addi.w	$a1, $a6, 0
	addi.w	$a2, $a2, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	move	$a5, $a0
.LBB2_138:                              # %if.end182
	move	$s0, $a5
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a4, 12
	ld.w	$a1, $a4, 8
	ld.d	$a2, $a4, 0
	move	$s5, $a0
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	bltu	$a1, $a3, .LBB2_140
# %bb.139:                              # %if.then.i188
	addi.d	$a0, $a3, 5
	st.w	$a0, $a4, 12
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a4, 8
	move	$a2, $a0
	st.d	$a0, $a4, 0
.LBB2_140:                              # %cleanup
	slli.d	$a0, $a1, 3
	bstrpick.d	$a0, $a0, 34, 3
	slli.d	$a0, $a0, 3
	stx.d	$s5, $a2, $a0
	ld.d	$a2, $a4, 0
	ldx.d	$a0, $a2, $a0
	ld.w	$a2, $fp, 16
	addi.d	$a1, $a1, 1
	st.w	$a1, $a4, 8
	st.w	$s1, $a0, 24
	sub.d	$a1, $a2, $s1
	st.w	$a1, $a0, 28
	addi.d	$s2, $a0, 8
	move	$a1, $s0
	ld.w	$a0, $s2, 12
	sltu	$a3, $zero, $s4
	bnez	$a0, .LBB2_145
.LBB2_141:                              # %if.then204
	ld.w	$a0, $s8, 8
	st.w	$a0, $s2, 12
	st.w	$zero, $s2, 8
	beqz	$a0, .LBB2_143
# %bb.142:                              # %if.then.i202
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	move	$fp, $a3
	move	$s0, $a1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a3, $fp
	b	.LBB2_144
.LBB2_143:
	move	$a0, $zero
.LBB2_144:                              # %init_col.exit208
	st.d	$a0, $s2, 0
.LBB2_145:                              # %if.end206
	ld.d	$a0, $s8, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(msp2exons)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s2, 8
	beqz	$a1, .LBB2_148
# %bb.146:                              # %for.body212.preheader
	move	$a0, $zero
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	vinsgr2vr.w	$vr0, $a2, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	vinsgr2vr.w	$vr0, $a2, 1
	vshuf4i.w	$vr0, $vr0, 68
	slli.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB2_147:                              # %for.body212
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s2, 0
	ldx.d	$a2, $a2, $a0
	vld	$vr1, $a2, 0
	vadd.w	$vr1, $vr1, $vr0
	addi.d	$a0, $a0, 8
	vst	$vr1, $a2, 0
	bne	$a1, $a0, .LBB2_147
.LBB2_148:                              # %for.end227
	st.w	$zero, $s8, 8
.LBB2_149:                              # %cleanup229
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end2:
	.size	exon_cores, .Lfunc_end2-exon_cores
                                        # -- End function
	.p2align	5                               # -- Begin function kill_polyA
	.type	kill_polyA,@function
kill_polyA:                             # @kill_polyA
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.w	$s2, $a0, 16
	beqz	$s2, .LBB3_42
# %bb.1:                                # %land.rhs.lr.ph
	move	$fp, $a0
	move	$s1, $a2
	move	$s0, $a1
	ld.d	$s4, $a0, 8
	move	$s3, $zero
	bstrpick.d	$s5, $s2, 31, 0
	.p2align	4, , 16
.LBB3_2:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.w	$a1, $a0, 12
	ld.w	$a0, $a0, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(is_polyAT_exon_p)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_5
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	bnez	$s5, .LBB3_2
# %bb.4:
	move	$s3, $s2
.LBB3_5:                                # %while.end
	beqz	$s3, .LBB3_9
# %bb.6:                                # %for.body.preheader
	move	$s4, $zero
	bstrpick.d	$s2, $s3, 31, 0
	slli.d	$s5, $s2, 3
	.p2align	4, , 16
.LBB3_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	bne	$s5, $s4, .LBB3_7
# %bb.8:                                # %for.end
	ld.d	$a0, $fp, 8
	ld.w	$a2, $fp, 16
	alsl.d	$a1, $s2, $a0, 3
	sub.d	$a2, $a2, $s3
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	sub.w	$s2, $a0, $s3
	st.w	$s2, $fp, 16
.LBB3_9:                                # %if.end
	beqz	$s2, .LBB3_42
# %bb.10:                               # %land.rhs16.lr.ph
	ld.d	$s4, $fp, 8
	move	$s3, $zero
	bstrpick.d	$s5, $s2, 31, 0
	addi.w	$s6, $s2, -1
	.p2align	4, , 16
.LBB3_11:                               # %land.rhs16
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s6, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s4, $a0
	ld.w	$a1, $a0, 12
	ld.w	$a0, $a0, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(is_polyAT_exon_p)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_14
# %bb.12:                               # %while.body26
                                        #   in Loop: Header=BB3_11 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s5, $s5, -1
	addi.w	$s6, $s6, -1
	bnez	$s5, .LBB3_11
# %bb.13:
	move	$s3, $s2
.LBB3_14:                               # %while.end28
	beqz	$s3, .LBB3_20
# %bb.15:                               # %if.then31
	sub.w	$a0, $s2, $s3
	bltu	$s2, $s3, .LBB3_19
# %bb.16:                               # %for.body39.preheader
	bstrpick.d	$s2, $a0, 31, 0
	slli.d	$s4, $s2, 3
	.p2align	4, , 16
.LBB3_17:                               # %for.body39
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 16
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 8
	bltu	$s2, $a0, .LBB3_17
# %bb.18:                               # %for.end45.loopexit
	sub.w	$a0, $a0, $s3
.LBB3_19:                               # %for.end45
	st.w	$a0, $fp, 16
	move	$s2, $a0
.LBB3_20:                               # %if.end48
	beqz	$s2, .LBB3_42
# %bb.21:                               # %if.then52
	ld.d	$a2, $fp, 8
	addi.d	$a0, $s2, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $a2, $a0
	ld.wu	$a0, $a3, 12
	ldx.bu	$t4, $s1, $a0
	beqz	$t4, .LBB3_40
# %bb.22:                               # %while.body72.preheader
	move	$t3, $zero
	move	$a4, $zero
	move	$a5, $zero
	add.d	$a0, $a0, $s1
	addi.d	$a6, $a0, 1
	ori	$a7, $zero, 1
	ori	$t0, $zero, 78
	ori	$t1, $zero, 10
	ori	$t2, $zero, 65
                                        # implicit-def: $r5
                                        # implicit-def: $r4
	.p2align	4, , 16
.LBB3_23:                               # %while.body72
                                        # =>This Inner Loop Header: Depth=1
	beq	$t4, $t0, .LBB3_28
# %bb.24:                               # %while.body72
                                        #   in Loop: Header=BB3_23 Depth=1
	bne	$t4, $t2, .LBB3_27
# %bb.25:                               # %sw.bb
                                        #   in Loop: Header=BB3_23 Depth=1
	addi.d	$a4, $a4, 1
	addi.w	$t4, $t3, 1
	bge	$t3, $a5, .LBB3_30
# %bb.26:                               #   in Loop: Header=BB3_23 Depth=1
	move	$t3, $t4
	ld.bu	$t4, $a6, 0
	bnez	$t4, .LBB3_29
	b	.LBB3_31
	.p2align	4, , 16
.LBB3_27:                               # %sw.default
                                        #   in Loop: Header=BB3_23 Depth=1
	addi.w	$t3, $t3, -2
.LBB3_28:                               # %sw.epilog
                                        #   in Loop: Header=BB3_23 Depth=1
	ld.bu	$t4, $a6, 0
	beqz	$t4, .LBB3_31
.LBB3_29:                               # %sw.epilog
                                        #   in Loop: Header=BB3_23 Depth=1
	sub.w	$t5, $a5, $t3
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 1
	blt	$t5, $t1, .LBB3_23
	b	.LBB3_31
.LBB3_30:                               # %if.then80
                                        #   in Loop: Header=BB3_23 Depth=1
	move	$a0, $a4
	move	$a5, $t4
	move	$a1, $a7
	move	$t3, $t4
	ld.bu	$t4, $a6, 0
	bnez	$t4, .LBB3_29
.LBB3_31:                               # %while.end85
	ori	$a4, $zero, 1
	blt	$a5, $a4, .LBB3_41
# %bb.32:                               # %while.end85
	addi.w	$a4, $a0, 0
	ori	$a5, $zero, 8
	bltu	$a4, $a5, .LBB3_41
# %bb.33:                               # %land.lhs.true92
	slli.d	$a4, $a0, 3
	alsl.w	$a6, $a0, $a4, 1
	addi.w	$a4, $a1, 0
	div.wu	$a6, $a6, $a4
	bltu	$a6, $a5, .LBB3_41
# %bb.34:                               # %if.then98
	ld.wu	$a7, $a3, 8
	ldx.bu	$a3, $s0, $a7
	beqz	$a3, .LBB3_41
# %bb.35:                               # %while.body109.preheader
	move	$a5, $zero
	move	$a6, $zero
	add.d	$a7, $a7, $s0
	addi.d	$a7, $a7, 1
	.p2align	4, , 16
.LBB3_36:                               # %while.body109
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t0, $a3, -65
	ld.bu	$a3, $a7, 0
	addi.w	$a5, $a5, 1
	sltui	$t0, $t0, 1
	add.d	$a6, $a6, $t0
	beqz	$a3, .LBB3_38
# %bb.37:                               # %while.body109
                                        #   in Loop: Header=BB3_36 Depth=1
	addi.d	$a7, $a7, 1
	bltu	$a5, $a4, .LBB3_36
.LBB3_38:                               # %land.lhs.true121
	slli.d	$a3, $a6, 3
	alsl.w	$a3, $a6, $a3, 1
	div.wu	$a3, $a3, $a5
	ori	$a4, $zero, 7
	bltu	$a4, $a3, .LBB3_41
# %bb.39:                               # %if.then126
	ori	$a3, $zero, 1
	st.w	$a3, $fp, 40
	b	.LBB3_41
.LBB3_40:
                                        # implicit-def: $r5
                                        # implicit-def: $r4
.LBB3_41:                               # %if.then133
	ld.d	$a2, $a2, 0
	ld.wu	$a5, $a2, 4
	ori	$a3, $zero, 2
	bgeu	$a5, $a3, .LBB3_43
.LBB3_42:                               # %if.end219
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB3_43:                               # %while.body153.preheader
	move	$t2, $zero
	move	$a3, $zero
	move	$a4, $zero
	add.d	$a5, $a5, $s1
	addi.d	$a5, $a5, -3
	ori	$a6, $zero, 1
	ori	$a7, $zero, 78
	ori	$t0, $zero, 10
	ori	$t1, $zero, 84
	.p2align	4, , 16
.LBB3_44:                               # %while.body153
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t3, $a5, 1
	beq	$t3, $a7, .LBB3_49
# %bb.45:                               # %while.body153
                                        #   in Loop: Header=BB3_44 Depth=1
	bne	$t3, $t1, .LBB3_48
# %bb.46:                               # %sw.bb156
                                        #   in Loop: Header=BB3_44 Depth=1
	addi.d	$a3, $a3, 1
	addi.w	$t3, $t2, 1
	bge	$t2, $a4, .LBB3_51
# %bb.47:                               #   in Loop: Header=BB3_44 Depth=1
	move	$t2, $t3
	bgeu	$a5, $s1, .LBB3_50
	b	.LBB3_52
	.p2align	4, , 16
.LBB3_48:                               # %sw.default167
                                        #   in Loop: Header=BB3_44 Depth=1
	addi.w	$t2, $t2, -2
.LBB3_49:                               # %sw.epilog169
                                        #   in Loop: Header=BB3_44 Depth=1
	bltu	$a5, $s1, .LBB3_52
.LBB3_50:                               # %sw.epilog169
                                        #   in Loop: Header=BB3_44 Depth=1
	sub.w	$t3, $a4, $t2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	blt	$t3, $t0, .LBB3_44
	b	.LBB3_52
.LBB3_51:                               # %if.then162
                                        #   in Loop: Header=BB3_44 Depth=1
	move	$a0, $a3
	move	$a4, $t3
	move	$a1, $a6
	move	$t2, $t3
	bgeu	$a5, $s1, .LBB3_50
.LBB3_52:                               # %while.end171
	ori	$a3, $zero, 1
	blt	$a4, $a3, .LBB3_42
# %bb.53:                               # %while.end171
	addi.w	$a4, $a0, 0
	ori	$a3, $zero, 8
	bltu	$a4, $a3, .LBB3_42
# %bb.54:                               # %land.lhs.true179
	slli.d	$a4, $a0, 3
	alsl.w	$a4, $a0, $a4, 1
	addi.w	$a0, $a1, 0
	div.wu	$a1, $a4, $a0
	bltu	$a1, $a3, .LBB3_42
# %bb.55:                               # %if.then186
	ld.wu	$a3, $a2, 0
	ori	$a1, $zero, 2
	bltu	$a3, $a1, .LBB3_42
# %bb.56:                               # %while.body198.preheader
	move	$a1, $zero
	move	$a2, $zero
	add.d	$a3, $a3, $s0
	addi.d	$a3, $a3, -3
	.p2align	4, , 16
.LBB3_57:                               # %while.body198
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, 1
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, -84
	sltui	$a4, $a4, 1
	add.d	$a2, $a2, $a4
	bltu	$a3, $s0, .LBB3_59
# %bb.58:                               # %while.body198
                                        #   in Loop: Header=BB3_57 Depth=1
	addi.d	$a3, $a3, -1
	bltu	$a1, $a0, .LBB3_57
.LBB3_59:                               # %land.lhs.true210
	slli.d	$a0, $a2, 3
	alsl.w	$a0, $a2, $a0, 1
	div.wu	$a0, $a0, $a1
	ori	$a1, $zero, 7
	bltu	$a1, $a0, .LBB3_42
# %bb.60:                               # %if.then215
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 44
	b	.LBB3_42
.Lfunc_end3:
	.size	kill_polyA, .Lfunc_end3-kill_polyA
                                        # -- End function
	.globl	init_hash_env                   # -- Begin function init_hash_env
	.p2align	5
	.type	init_hash_env,@function
init_hash_env:                          # @init_hash_env
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	st.w	$a1, $a0, 36
	st.d	$a2, $a0, 8
	st.w	$a3, $a0, 16
	slli.d	$a0, $a1, 1
	addi.d	$a0, $a0, -2
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	addi.d	$a1, $zero, -1
	sll.w	$a0, $a1, $a0
	nor	$a0, $a0, $zero
	st.w	$a0, $fp, 32
	addi.d	$a0, $a3, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	lu12i.w	$a0, 128
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	init_hash_env, .Lfunc_end4-init_hash_env
                                        # -- End function
	.globl	bld_table                       # -- Begin function bld_table
	.p2align	5
	.type	bld_table,@function
bld_table:                              # @bld_table
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 16
	beqz	$a0, .LBB5_19
# %bb.1:                                # %restart.preheader.lr.ph
	move	$s5, $zero
	ld.d	$s3, $fp, 8
	ori	$a6, $zero, 2
	pcalau12i	$a0, %pc_hi20(encoding)
	addi.d	$s4, $a0, %pc_lo12(encoding)
	ori	$s6, $zero, 3
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %restart.backedge.loopexit
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.w	$s5, $s5, 1
	ori	$a6, $zero, 2
.LBB5_3:                                # %restart
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
                                        #     Child Loop BB5_13 Depth 2
	ld.w	$a2, $fp, 36
	bltu	$a2, $a6, .LBB5_9
# %bb.4:                                # %land.rhs.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	move	$s7, $zero
	ld.w	$a1, $fp, 16
	addi.d	$a0, $a2, -2
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $s3, $a0
	addi.d	$a0, $a0, 1
	sltu	$a3, $a1, $s5
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s5, $a3
	or	$a1, $a3, $a1
	addi.d	$a3, $a2, -1
	add.w	$a2, $a3, $s5
	.p2align	4, , 16
.LBB5_5:                                # %land.rhs
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s5, .LBB5_17
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB5_5 Depth=2
	ld.bu	$a4, $s3, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s4, $a4
	addi.w	$s5, $s5, 1
	addi.d	$s3, $s3, 1
	bltu	$s6, $a4, .LBB5_3
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=2
	slli.d	$a5, $s7, 2
	addi.w	$a3, $a3, -1
	or	$s7, $a4, $a5
	bnez	$a3, .LBB5_5
# %bb.8:                                #   in Loop: Header=BB5_3 Depth=1
	move	$s3, $a0
	move	$s5, $a2
	ld.w	$a0, $fp, 16
	bltu	$s5, $a0, .LBB5_10
	b	.LBB5_18
	.p2align	4, , 16
.LBB5_9:                                #   in Loop: Header=BB5_3 Depth=1
	move	$s7, $zero
	ld.w	$a0, $fp, 16
	bgeu	$s5, $a0, .LBB5_18
.LBB5_10:                               # %while.body9.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	bstrpick.d	$s8, $s5, 31, 0
	slli.d	$a0, $s8, 2
	addi.d	$s2, $a0, 4
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_11:                               # %if.then.i
                                        #   in Loop: Header=BB5_13 Depth=2
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.w	$a0, $a1, 4
.LBB5_12:                               # %cleanup20
                                        #   in Loop: Header=BB5_13 Depth=2
	ld.d	$a2, $fp, 24
	addi.d	$s3, $s3, 1
	stx.w	$a0, $a2, $s2
	ld.wu	$a0, $fp, 16
	addi.d	$s8, $s8, 1
	addi.w	$s5, $s5, 1
	st.w	$s5, $a1, 4
	addi.d	$s2, $s2, 4
	bgeu	$s8, $a0, .LBB5_16
.LBB5_13:                               # %while.body9
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s3, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	bltu	$s6, $a0, .LBB5_2
# %bb.14:                               # %if.end17
                                        #   in Loop: Header=BB5_13 Depth=2
	ld.w	$a1, $fp, 32
	and	$a1, $a1, $s7
	slli.d	$a1, $a1, 2
	or	$s7, $a1, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	st.w	$s7, $a0, 0
	bstrpick.d	$a0, $s7, 18, 0
	alsl.d	$a1, $a0, $a1, 3
	pcalau12i	$a0, %pc_hi20(hash_node_compare)
	addi.d	$a2, $a0, %pc_lo12(hash_node_compare)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(tsearch)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	bne	$a1, $s1, .LBB5_11
# %bb.15:                               #   in Loop: Header=BB5_13 Depth=2
	addi.d	$a0, $zero, -1
	b	.LBB5_12
	.p2align	4, , 16
.LBB5_16:                               # %while.cond6.while.cond.loopexit_crit_edge
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.w	$a0, $a0, 0
	sltu	$a0, $s5, $a0
	ori	$a6, $zero, 2
	bnez	$a0, .LBB5_3
	b	.LBB5_19
.LBB5_17:                               #   in Loop: Header=BB5_3 Depth=1
	move	$s5, $a1
	ld.w	$a0, $fp, 16
	bltu	$s5, $a0, .LBB5_10
.LBB5_18:                               #   in Loop: Header=BB5_3 Depth=1
	move	$a0, $zero
	bnez	$a0, .LBB5_3
.LBB5_19:                               # %while.end23
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end5:
	.size	bld_table, .Lfunc_end5-bld_table
                                        # -- End function
	.globl	free_hash_env                   # -- Begin function free_hash_env
	.p2align	5
	.type	free_hash_env,@function
free_hash_env:                          # @free_hash_env
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(free)
	ld.d	$s0, $a0, %got_pc_lo12(free)
	move	$s1, $zero
	lu12i.w	$s2, 1024
	.p2align	4, , 16
.LBB6_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tdestroy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	bne	$s1, $s2, .LBB6_1
# %bb.2:                                # %for.end
	ld.d	$a0, $fp, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end6:
	.size	free_hash_env, .Lfunc_end6-free_hash_env
                                        # -- End function
	.p2align	5                               # -- Begin function merge
	.type	merge,@function
merge:                                  # @merge
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a1
	ld.w	$a1, $a1, 8
	beqz	$a1, .LBB7_13
# %bb.1:                                # %if.end
	move	$s0, $a3
	move	$s1, $a2
	move	$fp, $a0
	ld.w	$a2, $a0, 8
	ld.w	$a4, $a0, 12
	ld.d	$a0, $a0, 0
	add.w	$a3, $a2, $a1
	add.w	$s3, $a1, $s1
	bgeu	$a4, $a3, .LBB7_3
# %bb.2:                                # %if.then6
	st.w	$a3, $fp, 12
	bstrpick.d	$a1, $a3, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 8
	st.d	$a0, $fp, 0
.LBB7_3:                                # %if.end13
	bstrpick.d	$a1, $s3, 31, 0
	alsl.d	$a3, $a1, $a0, 3
	bstrpick.d	$s4, $s1, 31, 0
	alsl.d	$a1, $s4, $a0, 3
	sub.d	$a0, $a2, $s1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 3
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.wu	$a2, $s2, 8
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $s4, $a0, 3
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ld.w	$a1, $fp, 8
	add.w	$a0, $a1, $a0
	sltu	$a1, $s3, $a0
	add.w	$s2, $s3, $a1
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $s1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s1, $a2
	or	$s1, $a2, $a1
	st.w	$a0, $fp, 8
	bgeu	$s1, $s2, .LBB7_13
# %bb.4:                                # %for.body.lr.ph
	addi.d	$s0, $s0, 1
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_5:                                # %if.then52
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a2, $fp, 8
	alsl.d	$a1, $s4, $a0, 3
	addi.d	$a0, $a1, -8
	sub.d	$a2, $a2, $s1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 8
	addi.w	$s2, $s2, -1
	bgeu	$s1, $s2, .LBB7_13
.LBB7_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	addi.w	$s3, $s1, -1
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$a2, $a0, 3
	bstrpick.d	$s4, $s1, 31, 0
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $a1, $a0
	ldx.d	$a1, $a1, $a2
	ld.w	$a5, $a0, 4
	ld.w	$a3, $a1, 4
	bgeu	$a3, $a5, .LBB7_5
# %bb.7:                                # %if.end68
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a6, $a1, 12
	ld.w	$a2, $a0, 12
	bgeu	$a6, $a2, .LBB7_11
# %bb.8:                                # %if.end88
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a4, $a1, 8
	ld.w	$a7, $a0, 0
	addi.w	$t0, $a4, 31
	bgeu	$a7, $t0, .LBB7_12
# %bb.9:                                # %if.end88
                                        #   in Loop: Header=BB7_6 Depth=1
	add.w	$a6, $s0, $a6
	bltu	$a6, $a5, .LBB7_12
# %bb.10:                               # %if.then99
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a5, $a1, 0
	sltu	$a6, $a5, $a7
	masknez	$a7, $a7, $a6
	maskeqz	$a5, $a5, $a6
	ld.w	$a6, $a0, 8
	or	$a5, $a5, $a7
	st.w	$a5, $a1, 0
	st.w	$a3, $a1, 4
	sltu	$a3, $a4, $a6
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	st.w	$a3, $a1, 8
	st.w	$a2, $a1, 12
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	addi.d	$a2, $a0, -1
	st.w	$a2, $fp, 8
	alsl.d	$a0, $s4, $a1, 3
	addi.d	$a1, $a0, 8
	sub.d	$a2, $a2, $s1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	addi.w	$s1, $s3, 1
	bltu	$s1, $s2, .LBB7_6
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_11:                               # %if.then72
                                        #   in Loop: Header=BB7_6 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	addi.d	$a2, $a0, -1
	st.w	$a2, $fp, 8
	alsl.d	$a0, $s4, $a1, 3
	addi.d	$a1, $a0, 8
	sub.d	$a2, $a2, $s1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	bltu	$s1, $s2, .LBB7_6
	b	.LBB7_13
.LBB7_12:                               #   in Loop: Header=BB7_6 Depth=1
	move	$s3, $s1
	addi.w	$s1, $s3, 1
	bltu	$s1, $s2, .LBB7_6
.LBB7_13:                               # %cleanup157
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end7:
	.size	merge, .Lfunc_end7-merge
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function is_polyAT_exon_p
.LCPI8_0:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.text
	.p2align	5
	.type	is_polyAT_exon_p,@function
is_polyAT_exon_p:                       # @is_polyAT_exon_p
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs3, $sp, 0                    # 8-byte Folded Spill
	addi.w	$a4, $a1, 0
	addi.w	$a3, $a0, -1
	bgeu	$a3, $a4, .LBB8_3
# %bb.1:                                # %iter.check
	sub.w	$a5, $a1, $a0
	ori	$a6, $zero, 3
	bstrpick.d	$a4, $a3, 31, 0
	bgeu	$a5, $a6, .LBB8_15
# %bb.2:
	move	$t0, $zero
	move	$a6, $zero
	move	$t1, $zero
	move	$a7, $zero
	move	$t2, $zero
	move	$t3, $a4
	b	.LBB8_25
.LBB8_3:
	move	$t2, $zero
	move	$a7, $zero
	move	$t1, $zero
	move	$a6, $zero
	move	$t0, $zero
.LBB8_4:                                # %for.end
	add.d	$a0, $a0, $t0
	sub.d	$a0, $a1, $a0
	addi.w	$a1, $a0, 1
	slli.d	$a0, $t2, 3
	alsl.w	$a0, $t2, $a0, 1
	ori	$a3, $zero, 29
	div.wu	$a2, $a0, $a1
	bltu	$a3, $a1, .LBB8_9
# %bb.5:                                # %if.then
	ori	$a3, $zero, 6
	ori	$a0, $zero, 1
	bltu	$a3, $a2, .LBB8_14
# %bb.6:                                # %lor.lhs.false
	add.d	$a2, $t1, $t2
	slli.d	$a3, $a2, 3
	alsl.w	$a2, $a2, $a3, 1
	div.wu	$a2, $a2, $a1
	ori	$a3, $zero, 7
	bltu	$a3, $a2, .LBB8_14
# %bb.7:                                # %lor.lhs.false22
	slli.d	$a2, $a6, 3
	alsl.w	$a2, $a6, $a2, 1
	div.wu	$a2, $a2, $a1
	ori	$a3, $zero, 6
	bltu	$a3, $a2, .LBB8_14
# %bb.8:                                # %lor.lhs.false27
	add.d	$a2, $a6, $a7
	slli.d	$a3, $a2, 3
	alsl.w	$a2, $a2, $a3, 1
	div.wu	$a1, $a2, $a1
	ori	$a2, $zero, 7
	bgeu	$a2, $a1, .LBB8_13
	b	.LBB8_14
.LBB8_9:                                # %if.else
	ori	$a3, $zero, 7
	ori	$a0, $zero, 1
	bltu	$a3, $a2, .LBB8_14
# %bb.10:                               # %lor.lhs.false38
	add.d	$a2, $t1, $t2
	ori	$a3, $zero, 100
	mul.w	$a2, $a2, $a3
	div.wu	$a2, $a2, $a1
	ori	$a3, $zero, 94
	bltu	$a3, $a2, .LBB8_14
# %bb.11:                               # %lor.lhs.false44
	slli.d	$a2, $a6, 3
	alsl.w	$a2, $a6, $a2, 1
	div.wu	$a2, $a2, $a1
	ori	$a3, $zero, 7
	bltu	$a3, $a2, .LBB8_14
# %bb.12:                               # %lor.lhs.false49
	add.d	$a2, $a6, $a7
	ori	$a3, $zero, 100
	mul.w	$a2, $a2, $a3
	div.wu	$a1, $a2, $a1
	ori	$a2, $zero, 94
	bltu	$a2, $a1, .LBB8_14
.LBB8_13:                               # %if.end57
	move	$a0, $zero
.LBB8_14:                               # %cleanup
	fld.d	$fs3, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB8_15:                               # %vector.main.loop.iter.check
	bstrpick.d	$a3, $a5, 31, 0
	addi.d	$a3, $a3, 1
	ori	$a6, $zero, 15
	vrepli.b	$vr0, 65
	vrepli.b	$vr1, 67
	vrepli.b	$vr2, 71
	vrepli.b	$vr3, 84
	vrepli.b	$vr4, -1
	bgeu	$a5, $a6, .LBB8_17
# %bb.16:
	move	$a5, $zero
	move	$t0, $zero
	move	$a6, $zero
	move	$t1, $zero
	move	$a7, $zero
	move	$t2, $zero
	b	.LBB8_21
.LBB8_17:                               # %vector.ph
	bstrpick.d	$a5, $a3, 32, 4
	slli.d	$a5, $a5, 4
	add.d	$a6, $a4, $a2
	pcalau12i	$a7, %pc_hi20(.LCPI8_0)
	xvld	$xr13, $a7, %pc_lo12(.LCPI8_0)
	addi.d	$a6, $a6, 8
	xvrepli.b	$xr14, 0
	xvrepli.w	$xr15, 1
	move	$a7, $a5
	xvori.b	$xr16, $xr14, 0
	xvori.b	$xr11, $xr14, 0
	xvori.b	$xr12, $xr14, 0
	xvori.b	$xr9, $xr14, 0
	xvori.b	$xr10, $xr14, 0
	xvori.b	$xr7, $xr14, 0
	xvori.b	$xr8, $xr14, 0
	xvori.b	$xr5, $xr14, 0
	xvori.b	$xr6, $xr14, 0
	.p2align	4, , 16
.LBB8_18:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a6, -8
	ld.d	$t1, $a6, 0
	vinsgr2vr.d	$vr17, $t0, 0
	vinsgr2vr.d	$vr24, $t1, 0
	vseq.b	$vr18, $vr17, $vr0
	vseq.b	$vr22, $vr24, $vr0
	vseq.b	$vr21, $vr17, $vr1
	vilvl.b	$vr23, $vr21, $vr21
	vseq.b	$vr20, $vr24, $vr1
	vilvl.b	$vr25, $vr20, $vr20
	vseq.b	$vr19, $vr17, $vr2
	vilvl.b	$vr26, $vr19, $vr19
	vseq.b	$vr17, $vr17, $vr3
	vxor.v	$vr23, $vr23, $vr26
	vilvl.b	$vr26, $vr17, $vr17
	vslli.h	$vr26, $vr26, 8
	vsrai.h	$vr26, $vr26, 8
	vor.v	$vr18, $vr18, $vr21
	vor.v	$vr18, $vr18, $vr19
	vilvl.b	$vr18, $vr18, $vr18
	vslli.h	$vr18, $vr18, 8
	vsrai.h	$vr27, $vr18, 8
	vslli.h	$vr18, $vr23, 8
	vsrai.h	$vr18, $vr18, 8
	vor.v	$vr23, $vr26, $vr18
	vnor.v	$vr18, $vr27, $vr26
	vxor.v	$vr23, $vr23, $vr4
	vand.v	$vr26, $vr27, $vr23
	vseq.b	$vr23, $vr24, $vr2
	vpickve2gr.h	$t0, $vr26, 0
	vpickve2gr.h	$t1, $vr26, 1
	vpickve2gr.h	$t2, $vr26, 2
	vpickve2gr.h	$t3, $vr26, 3
	vpickve2gr.h	$t4, $vr26, 4
	vpickve2gr.h	$t5, $vr26, 5
	vpickve2gr.h	$t6, $vr26, 6
	vpickve2gr.h	$t7, $vr26, 7
	xvinsgr2vr.w	$xr26, $t0, 0
	xvinsgr2vr.w	$xr26, $t1, 1
	xvinsgr2vr.w	$xr26, $t2, 2
	xvinsgr2vr.w	$xr26, $t3, 3
	xvinsgr2vr.w	$xr26, $t4, 4
	xvinsgr2vr.w	$xr26, $t5, 5
	xvinsgr2vr.w	$xr26, $t6, 6
	xvinsgr2vr.w	$xr26, $t7, 7
	xvand.v	$xr26, $xr26, $xr15
	xvadd.w	$xr5, $xr5, $xr26
	vilvl.b	$vr26, $vr23, $vr23
	vseq.b	$vr24, $vr24, $vr3
	vxor.v	$vr25, $vr25, $vr26
	vilvl.b	$vr26, $vr24, $vr24
	vslli.h	$vr26, $vr26, 8
	vsrai.h	$vr26, $vr26, 8
	vor.v	$vr22, $vr22, $vr20
	vor.v	$vr22, $vr22, $vr23
	vilvl.b	$vr22, $vr22, $vr22
	vslli.h	$vr22, $vr22, 8
	vsrai.h	$vr27, $vr22, 8
	vslli.h	$vr22, $vr25, 8
	vsrai.h	$vr22, $vr22, 8
	vor.v	$vr25, $vr26, $vr22
	vnor.v	$vr22, $vr27, $vr26
	vxor.v	$vr25, $vr25, $vr4
	vand.v	$vr25, $vr27, $vr25
	vpickve2gr.h	$t0, $vr25, 0
	vpickve2gr.h	$t1, $vr25, 1
	vpickve2gr.h	$t2, $vr25, 2
	vpickve2gr.h	$t3, $vr25, 3
	vpickve2gr.h	$t4, $vr25, 4
	vpickve2gr.h	$t5, $vr25, 5
	vpickve2gr.h	$t6, $vr25, 6
	vpickve2gr.h	$t7, $vr25, 7
	xvinsgr2vr.w	$xr25, $t0, 0
	xvinsgr2vr.w	$xr25, $t1, 1
	xvinsgr2vr.w	$xr25, $t2, 2
	xvinsgr2vr.w	$xr25, $t3, 3
	xvinsgr2vr.w	$xr25, $t4, 4
	xvinsgr2vr.w	$xr25, $t5, 5
	xvinsgr2vr.w	$xr25, $t6, 6
	xvinsgr2vr.w	$xr25, $t7, 7
	xvand.v	$xr25, $xr25, $xr15
	xvadd.w	$xr6, $xr6, $xr25
	xvpermi.d	$xr21, $xr21, 68
	xvshuf.b	$xr21, $xr0, $xr21, $xr13
	xvand.v	$xr21, $xr21, $xr15
	xvadd.w	$xr7, $xr7, $xr21
	xvpermi.d	$xr20, $xr20, 68
	xvshuf.b	$xr20, $xr0, $xr20, $xr13
	xvand.v	$xr20, $xr20, $xr15
	xvadd.w	$xr8, $xr8, $xr20
	xvpermi.d	$xr19, $xr19, 68
	xvshuf.b	$xr19, $xr0, $xr19, $xr13
	xvand.v	$xr19, $xr19, $xr15
	xvadd.w	$xr9, $xr9, $xr19
	xvpermi.d	$xr19, $xr23, 68
	xvshuf.b	$xr19, $xr0, $xr19, $xr13
	xvand.v	$xr19, $xr19, $xr15
	xvadd.w	$xr10, $xr10, $xr19
	xvpermi.d	$xr17, $xr17, 68
	xvshuf.b	$xr17, $xr0, $xr17, $xr13
	xvand.v	$xr17, $xr17, $xr15
	xvadd.w	$xr11, $xr11, $xr17
	xvpermi.d	$xr17, $xr24, 68
	xvshuf.b	$xr17, $xr0, $xr17, $xr13
	xvand.v	$xr17, $xr17, $xr15
	xvadd.w	$xr12, $xr12, $xr17
	vpickve2gr.h	$t0, $vr18, 0
	vpickve2gr.h	$t1, $vr18, 1
	vpickve2gr.h	$t2, $vr18, 2
	vpickve2gr.h	$t3, $vr18, 3
	vpickve2gr.h	$t4, $vr18, 4
	vpickve2gr.h	$t5, $vr18, 5
	vpickve2gr.h	$t6, $vr18, 6
	vpickve2gr.h	$t7, $vr18, 7
	xvinsgr2vr.w	$xr17, $t0, 0
	xvinsgr2vr.w	$xr17, $t1, 1
	xvinsgr2vr.w	$xr17, $t2, 2
	xvinsgr2vr.w	$xr17, $t3, 3
	xvinsgr2vr.w	$xr17, $t4, 4
	xvinsgr2vr.w	$xr17, $t5, 5
	xvinsgr2vr.w	$xr17, $t6, 6
	xvinsgr2vr.w	$xr17, $t7, 7
	xvand.v	$xr17, $xr17, $xr15
	xvadd.w	$xr14, $xr14, $xr17
	vpickve2gr.h	$t0, $vr22, 0
	vpickve2gr.h	$t1, $vr22, 1
	vpickve2gr.h	$t2, $vr22, 2
	vpickve2gr.h	$t3, $vr22, 3
	vpickve2gr.h	$t4, $vr22, 4
	vpickve2gr.h	$t5, $vr22, 5
	vpickve2gr.h	$t6, $vr22, 6
	vpickve2gr.h	$t7, $vr22, 7
	xvinsgr2vr.w	$xr17, $t0, 0
	xvinsgr2vr.w	$xr17, $t1, 1
	xvinsgr2vr.w	$xr17, $t2, 2
	xvinsgr2vr.w	$xr17, $t3, 3
	xvinsgr2vr.w	$xr17, $t4, 4
	xvinsgr2vr.w	$xr17, $t5, 5
	xvinsgr2vr.w	$xr17, $t6, 6
	xvinsgr2vr.w	$xr17, $t7, 7
	xvand.v	$xr17, $xr17, $xr15
	xvadd.w	$xr16, $xr16, $xr17
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB8_18
# %bb.19:                               # %middle.block
	xvadd.w	$xr13, $xr16, $xr14
	xvpermi.d	$xr14, $xr13, 78
	xvshuf4i.w	$xr14, $xr14, 228
	xvadd.w	$xr13, $xr13, $xr14
	xvpermi.d	$xr14, $xr13, 68
	xvshuf4i.w	$xr14, $xr14, 14
	xvadd.w	$xr13, $xr13, $xr14
	xvpermi.d	$xr14, $xr13, 68
	xvrepl128vei.w	$xr14, $xr14, 1
	xvadd.w	$xr13, $xr13, $xr14
	xvpickve2gr.w	$t0, $xr13, 0
	xvadd.w	$xr11, $xr12, $xr11
	xvpermi.d	$xr12, $xr11, 78
	xvshuf4i.w	$xr12, $xr12, 228
	xvadd.w	$xr11, $xr11, $xr12
	xvpermi.d	$xr12, $xr11, 68
	xvshuf4i.w	$xr12, $xr12, 14
	xvadd.w	$xr11, $xr11, $xr12
	xvpermi.d	$xr12, $xr11, 68
	xvrepl128vei.w	$xr12, $xr12, 1
	xvadd.w	$xr11, $xr11, $xr12
	xvpickve2gr.w	$a6, $xr11, 0
	xvadd.w	$xr9, $xr10, $xr9
	xvpermi.d	$xr10, $xr9, 78
	xvshuf4i.w	$xr10, $xr10, 228
	xvadd.w	$xr9, $xr9, $xr10
	xvpermi.d	$xr10, $xr9, 68
	xvshuf4i.w	$xr10, $xr10, 14
	xvadd.w	$xr9, $xr9, $xr10
	xvpermi.d	$xr10, $xr9, 68
	xvrepl128vei.w	$xr10, $xr10, 1
	xvadd.w	$xr9, $xr9, $xr10
	xvpickve2gr.w	$t1, $xr9, 0
	xvadd.w	$xr7, $xr8, $xr7
	xvpermi.d	$xr8, $xr7, 78
	xvshuf4i.w	$xr8, $xr8, 228
	xvadd.w	$xr7, $xr7, $xr8
	xvpermi.d	$xr8, $xr7, 68
	xvshuf4i.w	$xr8, $xr8, 14
	xvadd.w	$xr7, $xr7, $xr8
	xvpermi.d	$xr8, $xr7, 68
	xvrepl128vei.w	$xr8, $xr8, 1
	xvadd.w	$xr7, $xr7, $xr8
	xvpickve2gr.w	$a7, $xr7, 0
	xvadd.w	$xr5, $xr6, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf4i.w	$xr6, $xr6, 228
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvshuf4i.w	$xr6, $xr6, 14
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.w	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpickve2gr.w	$t2, $xr5, 0
	beq	$a3, $a5, .LBB8_4
# %bb.20:                               # %vec.epilog.iter.check
	andi	$t3, $a3, 12
	beqz	$t3, .LBB8_24
.LBB8_21:                               # %vec.epilog.ph
	bstrpick.d	$t3, $a3, 32, 2
	slli.d	$t4, $t3, 2
	vrepli.b	$vr5, 0
	alsl.d	$t3, $t3, $a4, 2
	vori.b	$vr9, $vr5, 0
	vinsgr2vr.w	$vr9, $t0, 0
	vori.b	$vr8, $vr5, 0
	vinsgr2vr.w	$vr8, $a6, 0
	vori.b	$vr7, $vr5, 0
	vinsgr2vr.w	$vr7, $t1, 0
	vori.b	$vr6, $vr5, 0
	vinsgr2vr.w	$vr6, $a7, 0
	vinsgr2vr.w	$vr5, $t2, 0
	add.d	$a4, $a5, $a4
	add.d	$a4, $a2, $a4
	sub.d	$a5, $a5, $t4
	vrepli.w	$vr10, 1
	.p2align	4, , 16
.LBB8_22:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	vinsgr2vr.w	$vr11, $a6, 0
	vseq.b	$vr12, $vr11, $vr0
	vseq.b	$vr13, $vr11, $vr3
	vilvl.b	$vr13, $vr13, $vr13
	vilvl.h	$vr13, $vr13, $vr13
	vslli.w	$vr14, $vr13, 24
	vsrai.w	$vr14, $vr14, 24
	vseq.b	$vr15, $vr11, $vr1
	vor.v	$vr12, $vr12, $vr15
	vseq.b	$vr11, $vr11, $vr2
	vor.v	$vr12, $vr12, $vr11
	vilvl.b	$vr12, $vr12, $vr12
	vilvl.h	$vr12, $vr12, $vr12
	vslli.w	$vr12, $vr12, 24
	vsrai.w	$vr12, $vr12, 24
	vor.v	$vr16, $vr12, $vr14
	vilvl.b	$vr15, $vr15, $vr15
	vilvl.h	$vr15, $vr15, $vr15
	vilvl.b	$vr11, $vr11, $vr11
	vilvl.h	$vr11, $vr11, $vr11
	vxor.v	$vr17, $vr15, $vr11
	vslli.w	$vr17, $vr17, 24
	vsrai.w	$vr17, $vr17, 24
	vor.v	$vr14, $vr14, $vr17
	vxor.v	$vr14, $vr14, $vr4
	vand.v	$vr12, $vr12, $vr14
	vand.v	$vr12, $vr12, $vr10
	vadd.w	$vr5, $vr5, $vr12
	vand.v	$vr12, $vr15, $vr10
	vadd.w	$vr6, $vr6, $vr12
	vand.v	$vr11, $vr11, $vr10
	vadd.w	$vr7, $vr7, $vr11
	vand.v	$vr11, $vr13, $vr10
	vadd.w	$vr8, $vr8, $vr11
	vadd.w	$vr9, $vr9, $vr16
	vaddi.wu	$vr9, $vr9, 1
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	bnez	$a5, .LBB8_22
# %bb.23:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr0, $vr9, 14
	vadd.w	$vr0, $vr9, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t0, $vr0, 0
	vshuf4i.w	$vr0, $vr8, 14
	vadd.w	$vr0, $vr8, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a6, $vr0, 0
	vshuf4i.w	$vr0, $vr7, 14
	vadd.w	$vr0, $vr7, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t1, $vr0, 0
	vshuf4i.w	$vr0, $vr6, 14
	vadd.w	$vr0, $vr6, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a7, $vr0, 0
	vshuf4i.w	$vr0, $vr5, 14
	vadd.w	$vr0, $vr5, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t2, $vr0, 0
	beq	$a3, $t4, .LBB8_4
	b	.LBB8_25
.LBB8_24:
	add.d	$t3, $a5, $a4
.LBB8_25:                               # %for.body.preheader
	add.d	$a2, $a2, $t3
	sub.d	$a3, $a1, $t3
	ori	$a4, $zero, 19
	pcalau12i	$a5, %pc_hi20(.LJTI8_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI8_0)
	b	.LBB8_28
	.p2align	4, , 16
.LBB8_26:                               # %sw.bb7
                                        #   in Loop: Header=BB8_28 Depth=1
	addi.d	$t1, $t1, 1
.LBB8_27:                               # %for.inc
                                        #   in Loop: Header=BB8_28 Depth=1
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	beqz	$a3, .LBB8_4
.LBB8_28:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t3, $a2, 0
	addi.d	$t3, $t3, -65
	bltu	$a4, $t3, .LBB8_33
# %bb.29:                               # %for.body
                                        #   in Loop: Header=BB8_28 Depth=1
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a5, $t3
	add.d	$t3, $a5, $t3
	jr	$t3
.LBB8_30:                               # %sw.bb
                                        #   in Loop: Header=BB8_28 Depth=1
	addi.d	$t2, $t2, 1
	b	.LBB8_27
.LBB8_31:                               # %sw.bb5
                                        #   in Loop: Header=BB8_28 Depth=1
	addi.d	$a7, $a7, 1
	b	.LBB8_27
.LBB8_32:                               # %sw.bb9
                                        #   in Loop: Header=BB8_28 Depth=1
	addi.d	$a6, $a6, 1
	b	.LBB8_27
.LBB8_33:                               # %sw.default
                                        #   in Loop: Header=BB8_28 Depth=1
	addi.d	$t0, $t0, 1
	b	.LBB8_27
.Lfunc_end8:
	.size	is_polyAT_exon_p, .Lfunc_end8-is_polyAT_exon_p
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI8_0:
	.word	.LBB8_30-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_31-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_26-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_32-.LJTI8_0
                                        # -- End function
	.text
	.globl	free_align                      # -- Begin function free_align
	.p2align	5
	.type	free_align,@function
free_align:                             # @free_align
# %bb.0:                                # %entry
	beqz	$a0, .LBB9_4
# %bb.1:                                # %while.body.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	.p2align	4, , 16
.LBB9_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $fp, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(Free_script)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	bnez	$s0, .LBB9_2
# %bb.3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB9_4:                                # %while.end
	ret
.Lfunc_end9:
	.size	free_align, .Lfunc_end9-free_align
                                        # -- End function
	.globl	init_encoding                   # -- Begin function init_encoding
	.p2align	5
	.type	init_encoding,@function
init_encoding:                          # @init_encoding
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(encoding)
	addi.d	$a0, $a0, %pc_lo12(encoding)
	xvrepli.w	$xr0, 4
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	st.w	$zero, $a0, 260
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 268
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 284
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 336
	ret
.Lfunc_end10:
	.size	init_encoding, .Lfunc_end10-init_encoding
                                        # -- End function
	.globl	print_exons                     # -- Begin function print_exons
	.p2align	5
	.type	print_exons,@function
print_exons:                            # @print_exons
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 8
	addi.w	$a0, $a0, -1
	beqz	$a0, .LBB11_6
# %bb.1:                                # %for.body.lr.ph
	bstrpick.d	$s3, $a0, 31, 0
	beqz	$a1, .LBB11_7
# %bb.2:                                # %for.body.preheader
	move	$s4, $zero
	slt	$a0, $zero, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	slli.d	$s5, $s3, 3
	pcalau12i	$a0, %got_pc_hi20(options)
	ld.d	$s6, $a0, %got_pc_lo12(options)
	addi.w	$s7, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s2, $a0, %pc_lo12(.L.str.1)
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_3:                               # %if.else
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a7, $s6, 8
	alsl.d	$a7, $a6, $a7, 3
	addi.d	$a6, $a7, 2
	bstrpick.d	$a0, $a0, 55, 34
	st.d	$a0, $sp, 8
	st.d	$a6, $sp, 0
	move	$a0, $s2
	move	$a6, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	beq	$s5, $s4, .LBB11_9
.LBB11_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a1, $a0, $s4
	ld.d	$a0, $a1, 24
	ld.w	$a2, $a1, 0
	ld.w	$a7, $s6, 68
	ld.w	$t0, $a1, 8
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 12
	ld.w	$a5, $a1, 16
	srai.d	$a6, $a0, 56
	add.w	$a1, $a7, $a2
	add.w	$a2, $t0, $a7
	blt	$s7, $a6, .LBB11_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB11_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	bne	$s5, $s4, .LBB11_4
	b	.LBB11_9
.LBB11_6:
	move	$s3, $zero
	b	.LBB11_9
.LBB11_7:                               # %for.body.us.preheader
	move	$s1, $zero
	pcalau12i	$a0, %got_pc_hi20(options)
	ld.d	$s2, $a0, %got_pc_lo12(options)
	slli.d	$s4, $s3, 3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	.p2align	4, , 16
.LBB11_8:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 68
	ld.w	$a6, $a0, 8
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 12
	ld.w	$a5, $a0, 16
	add.w	$a1, $a2, $a1
	add.w	$a2, $a6, $a2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	bne	$s4, $s1, .LBB11_8
.LBB11_9:                               # %for.end
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s3, 3
	ldx.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(options)
	ld.d	$a1, $a1, %got_pc_lo12(options)
	ld.w	$a2, $a0, 0
	ld.w	$a6, $a1, 68
	add.w	$a1, $a6, $a2
	ld.w	$a2, $a0, 8
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 12
	ld.w	$a5, $a0, 16
	add.w	$a2, $a2, $a6
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end11:
	.size	print_exons, .Lfunc_end11-print_exons
                                        # -- End function
	.p2align	5                               # -- Begin function msp_rna_compare
	.type	msp_rna_compare,@function
msp_rna_compare:                        # @msp_rna_compare
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a2, 4
	ld.w	$a4, $a1, 4
	ori	$a0, $zero, 1
	bltu	$a4, $a3, .LBB12_4
# %bb.1:                                # %if.end
	addi.w	$a0, $zero, -1
	bltu	$a3, $a4, .LBB12_4
# %bb.2:                                # %if.end6
	ld.w	$a2, $a2, 12
	ld.w	$a1, $a1, 12
	bltu	$a1, $a2, .LBB12_4
# %bb.3:                                # %if.end10
	sltu	$a0, $a2, $a1
.LBB12_4:                               # %cleanup
	ret
.Lfunc_end12:
	.size	msp_rna_compare, .Lfunc_end12-msp_rna_compare
                                        # -- End function
	.p2align	5                               # -- Begin function msp_compare
	.type	msp_compare,@function
msp_compare:                            # @msp_compare
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a2, 0
	ld.w	$a4, $a1, 0
	ori	$a0, $zero, 1
	bgeu	$a4, $a3, .LBB13_2
.LBB13_1:                               # %cleanup
	ret
.LBB13_2:                               # %if.end
	bgeu	$a3, $a4, .LBB13_4
# %bb.3:
	addi.w	$a0, $zero, -1
	ret
.LBB13_4:                               # %if.end6
	ld.w	$a2, $a2, 4
	ld.w	$a1, $a1, 4
	bltu	$a1, $a2, .LBB13_1
# %bb.5:                                # %if.end10
	sltu	$a0, $a2, $a1
	sub.d	$a0, $zero, $a0
	ret
.Lfunc_end13:
	.size	msp_compare, .Lfunc_end13-msp_compare
                                        # -- End function
	.p2align	5                               # -- Begin function link_msps
	.type	link_msps,@function
link_msps:                              # @link_msps
# %bb.0:                                # %entry
	bgeu	$a1, $a2, .LBB14_26
# %bb.1:                                # %for.body.preheader
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	bstrpick.d	$a3, $a1, 31, 0
	bstrpick.d	$a1, $a2, 31, 0
	slli.d	$a2, $a3, 3
	sub.d	$a4, $a1, $a3
	addi.w	$a5, $zero, -4
	lu32i.d	$a5, 0
	.p2align	4, , 16
.LBB14_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a0, 0
	ldx.d	$a6, $a6, $a2
	ld.d	$a7, $a6, 24
	st.w	$zero, $a6, 20
	or	$a7, $a7, $a5
	st.d	$a7, $a6, 24
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB14_2
# %bb.3:                                # %for.body4.preheader
	move	$a2, $zero
	move	$a4, $zero
	slli.d	$a5, $a3, 3
	addi.d	$a5, $a5, 8
	b	.LBB14_5
	.p2align	4, , 16
.LBB14_4:                               # %for.cond2.loopexit
                                        #   in Loop: Header=BB14_5 Depth=1
	sltu	$a7, $a4, $t0
	maskeqz	$t0, $t0, $a7
	masknez	$a4, $a4, $a7
	or	$a4, $t0, $a4
	masknez	$a2, $a2, $a7
	maskeqz	$a6, $a6, $a7
	or	$a2, $a6, $a2
	addi.d	$a5, $a5, 8
	beq	$a3, $a1, .LBB14_27
.LBB14_5:                               # %for.body4
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_8 Depth 2
	ld.d	$a7, $a0, 0
	move	$a6, $a3
	slli.d	$a3, $a3, 3
	ldx.d	$a7, $a7, $a3
	ld.w	$t0, $a7, 16
	ld.w	$t1, $a7, 20
	addi.d	$a3, $a6, 1
	add.w	$t0, $t1, $t0
	st.w	$t0, $a7, 20
	bgeu	$a3, $a1, .LBB14_4
# %bb.6:                                # %for.body20.lr.ph
                                        #   in Loop: Header=BB14_5 Depth=1
	slli.d	$t1, $a6, 2
	bstrpick.d	$t1, $t1, 31, 2
	slli.d	$t1, $t1, 2
	move	$t2, $a5
	move	$t3, $a3
	b	.LBB14_8
	.p2align	4, , 16
.LBB14_7:                               # %if.end44
                                        #   in Loop: Header=BB14_8 Depth=2
	addi.d	$t3, $t3, 1
	addi.d	$t2, $t2, 8
	bgeu	$t3, $a1, .LBB14_4
.LBB14_8:                               # %for.body20
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $a0, 0
	ldx.d	$t4, $t4, $t2
	ld.w	$t6, $t4, 0
	ld.w	$t7, $a7, 8
	ld.w	$t5, $t4, 4
	ld.w	$t8, $a7, 12
	bgeu	$t7, $t6, .LBB14_13
# %bb.9:                                # %if.then.i
                                        #   in Loop: Header=BB14_8 Depth=2
	bgeu	$t8, $t5, .LBB14_20
.LBB14_10:                              # %land.lhs.true
                                        #   in Loop: Header=BB14_8 Depth=2
	ld.w	$t7, $a7, 20
	ld.w	$t8, $t4, 20
	bltu	$t7, $t8, .LBB14_7
# %bb.11:                               # %if.then27
                                        #   in Loop: Header=BB14_8 Depth=2
	ld.w	$t8, $a7, 0
	sub.d	$t6, $t6, $t8
	addi.w	$t8, $t6, 0
	srai.d	$t8, $t8, 31
	ld.w	$fp, $a7, 4
	xor	$t6, $t6, $t8
	sub.d	$t6, $t6, $t8
	bstrpick.d	$t6, $t6, 31, 15
	sub.d	$t5, $t5, $fp
	addi.w	$t8, $t5, 0
	srai.d	$t8, $t8, 31
	xor	$t5, $t5, $t8
	sub.d	$t5, $t5, $t8
	bstrpick.d	$t5, $t5, 31, 15
	add.d	$t5, $t5, $t6
	bgeu	$t5, $t7, .LBB14_7
# %bb.12:                               # %if.then35
                                        #   in Loop: Header=BB14_8 Depth=2
	ld.d	$t6, $t4, 24
	sub.d	$t5, $t7, $t5
	st.w	$t5, $t4, 20
	bstrins.d	$t6, $zero, 31, 2
	or	$t5, $t6, $t1
	st.d	$t5, $t4, 24
	b	.LBB14_7
	.p2align	4, , 16
.LBB14_13:                              # %if.else.i
                                        #   in Loop: Header=BB14_8 Depth=2
	bgeu	$t8, $t5, .LBB14_7
# %bb.14:                               # %if.then32.i
                                        #   in Loop: Header=BB14_8 Depth=2
	ld.w	$t8, $a7, 0
	bltu	$t6, $t8, .LBB14_7
# %bb.15:                               # %lor.lhs.false39.i
                                        #   in Loop: Header=BB14_8 Depth=2
	ld.w	$fp, $t4, 8
	bltu	$fp, $t7, .LBB14_7
# %bb.16:                               # %if.end44.i
                                        #   in Loop: Header=BB14_8 Depth=2
	sub.w	$t8, $t6, $t8
	sub.w	$s0, $t7, $t6
	bgeu	$s0, $t8, .LBB14_7
# %bb.17:                               # %if.end44.i
                                        #   in Loop: Header=BB14_8 Depth=2
	sub.w	$t7, $fp, $t7
	bgeu	$s0, $t7, .LBB14_7
# %bb.18:                               # %lies_after_p.exit
                                        #   in Loop: Header=BB14_8 Depth=2
	pcalau12i	$fp, %got_pc_hi20(options)
	ld.d	$fp, $fp, %got_pc_lo12(options)
	ld.w	$fp, $fp, 40
	bgeu	$fp, $t8, .LBB14_7
# %bb.19:                               # %lies_after_p.exit
                                        #   in Loop: Header=BB14_8 Depth=2
	bltu	$fp, $t7, .LBB14_10
	b	.LBB14_7
	.p2align	4, , 16
.LBB14_20:                              # %if.end.i
                                        #   in Loop: Header=BB14_8 Depth=2
	ld.w	$t7, $a7, 4
	bltu	$t5, $t7, .LBB14_7
# %bb.21:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB14_8 Depth=2
	ld.w	$fp, $t4, 12
	bltu	$fp, $t8, .LBB14_7
# %bb.22:                               # %if.end10.i
                                        #   in Loop: Header=BB14_8 Depth=2
	sub.w	$t7, $t5, $t7
	sub.w	$s0, $t8, $t5
	bgeu	$s0, $t7, .LBB14_7
# %bb.23:                               # %if.end10.i
                                        #   in Loop: Header=BB14_8 Depth=2
	sub.w	$t8, $fp, $t8
	bgeu	$s0, $t8, .LBB14_7
# %bb.24:                               # %land.lhs.true21.i
                                        #   in Loop: Header=BB14_8 Depth=2
	pcalau12i	$fp, %got_pc_hi20(options)
	ld.d	$fp, $fp, %got_pc_lo12(options)
	ld.w	$fp, $fp, 40
	bgeu	$fp, $t7, .LBB14_7
# %bb.25:                               # %land.lhs.true21.i
                                        #   in Loop: Header=BB14_8 Depth=2
	bltu	$fp, $t8, .LBB14_10
	b	.LBB14_7
.LBB14_26:
	addi.d	$a2, $zero, -1
	addi.w	$a0, $a2, 0
	ret
.LBB14_27:
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	addi.w	$a0, $a2, 0
	ret
.Lfunc_end14:
	.size	link_msps, .Lfunc_end14-link_msps
                                        # -- End function
	.p2align	5                               # -- Begin function msp2exons
	.type	msp2exons,@function
msp2exons:                              # @msp2exons
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	bltz	$a1, .LBB15_14
# %bb.1:                                # %while.body.lr.ph
	move	$s0, $a0
	bstrpick.d	$a0, $a1, 31, 0
	beqz	$a3, .LBB15_6
# %bb.2:                                # %while.body.preheader
	ld.w	$a1, $fp, 8
	addi.w	$s1, $zero, -1
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_3:                               # %add_col_elt.exit
                                        #   in Loop: Header=BB15_4 Depth=1
	bstrpick.d	$a2, $a1, 31, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $fp, 8
	slli.d	$a2, $a2, 3
	stx.d	$s2, $a0, $a2
	ld.d	$a0, $s2, 24
	slli.d	$a0, $a0, 32
	srai.d	$a0, $a0, 34
	bge	$s1, $a0, .LBB15_14
.LBB15_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$s2, $s0, $a0
	ld.w	$a2, $fp, 12
	ld.d	$a0, $fp, 0
	bltu	$a1, $a2, .LBB15_3
# %bb.5:                                # %if.then.i
                                        #   in Loop: Header=BB15_4 Depth=1
	addi.d	$a1, $a2, 5
	st.w	$a1, $fp, 12
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	st.d	$a0, $fp, 0
	b	.LBB15_3
.LBB15_6:
	addi.w	$s2, $zero, -1
	b	.LBB15_8
	.p2align	4, , 16
.LBB15_7:                               # %add_col_elt.exit.us
                                        #   in Loop: Header=BB15_8 Depth=1
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 8
	bstrpick.d	$a1, $a2, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$s1, $a0, $a1
	ld.d	$s3, $s1, 24
	slli.d	$a0, $s3, 32
	srai.d	$a0, $a0, 34
	bge	$s2, $a0, .LBB15_14
.LBB15_8:                               # %while.body.us
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$s1, $s0, $a0
	ld.w	$a2, $fp, 8
	ld.d	$a0, $fp, 0
	beqz	$a2, .LBB15_12
# %bb.9:                                # %if.then.us
                                        #   in Loop: Header=BB15_8 Depth=1
	addi.d	$a1, $a2, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a0, $a1
	ld.w	$a6, $s1, 8
	ld.w	$a3, $a1, 0
	addi.w	$a4, $a6, 30
	bgeu	$a3, $a4, .LBB15_12
# %bb.10:                               # %land.lhs.true6.us
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.w	$a5, $s1, 12
	ld.w	$a4, $a1, 4
	addi.w	$a7, $a5, -1
	bgeu	$a7, $a4, .LBB15_12
# %bb.11:                               # %cleanup.us
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.w	$a0, $a1, 8
	sltu	$a2, $a6, $a0
	masknez	$a6, $a6, $a2
	ld.w	$a7, $a1, 12
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a6
	st.w	$a0, $a1, 8
	sltu	$a0, $a5, $a7
	masknez	$a2, $a5, $a0
	ld.w	$a5, $s1, 0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 12
	sltu	$a0, $a3, $a5
	masknez	$a2, $a5, $a0
	ld.w	$a5, $s1, 4
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 0
	sltu	$a0, $a4, $a5
	masknez	$a2, $a5, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 4
	ld.d	$s3, $s1, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s3, 32
	srai.d	$a0, $a0, 34
	blt	$s2, $a0, .LBB15_8
	b	.LBB15_14
	.p2align	4, , 16
.LBB15_12:                              # %if.end46.us
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.w	$a1, $fp, 12
	bltu	$a2, $a1, .LBB15_7
# %bb.13:                               # %if.then.i.us
                                        #   in Loop: Header=BB15_8 Depth=1
	addi.d	$a1, $a1, 5
	st.w	$a1, $fp, 12
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 8
	st.d	$a0, $fp, 0
	b	.LBB15_7
.LBB15_14:                              # %while.end
	ld.w	$a2, $fp, 8
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB15_17
# %bb.15:                               # %for.body.preheader
	move	$a0, $zero
	move	$a1, $zero
	addi.d	$a3, $a2, -1
	addi.w	$a2, $a2, -2
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 3
	.p2align	4, , 16
.LBB15_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $fp, 0
	ldx.d	$a5, $a4, $a3
	ldx.d	$a6, $a4, $a0
	stx.d	$a5, $a4, $a0
	ld.d	$a4, $fp, 0
	stx.d	$a6, $a4, $a3
	addi.d	$a1, $a1, 1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a0, $a0, 8
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	bltu	$a1, $a4, .LBB15_16
.LBB15_17:                              # %if.end74
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end15:
	.size	msp2exons, .Lfunc_end15-msp2exons
                                        # -- End function
	.p2align	5                               # -- Begin function hash_node_compare
	.type	hash_node_compare,@function
hash_node_compare:                      # @hash_node_compare
# %bb.0:                                # %entry
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	sltu	$a2, $a0, $a1
	sltu	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end16:
	.size	hash_node_compare, .Lfunc_end16-hash_node_compare
                                        # -- End function
	.p2align	5                               # -- Begin function compute_max_score_1
	.type	compute_max_score_1,@function
compute_max_score_1:                    # @compute_max_score_1
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
	pcalau12i	$t0, %got_pc_hi20(options)
	ld.d	$fp, $t0, %got_pc_lo12(options)
	ld.d	$t1, $sp, 368
	ld.wu	$t0, $fp, 44
	st.d	$t1, $sp, 128                   # 8-byte Folded Spill
	ld.w	$t1, $t1, 0
	st.d	$a7, $sp, 152                   # 8-byte Folded Spill
	stx.w	$t1, $a7, $t0
	ld.w	$t0, $fp, 36
	sub.w	$a7, $zero, $t0
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	bge	$t0, $a7, .LBB17_2
.LBB17_1:                               # %for.end148
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
.LBB17_2:                               # %for.body.lr.ph
	move	$s5, $a0
	ld.d	$a0, $sp, 376
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a0, $a2, 4
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a3, $s5, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a1, $a0, -3
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a1, $a0, -2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a1, $a0, $s5
	addi.d	$s2, $a1, -3
	ld.w	$a0, $fp, 44
	addi.d	$a4, $a2, 1
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 3
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a2, $a3, 1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a2, $a1, -2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a2, $a3, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
                                        # implicit-def: $r31
                                        # implicit-def: $r5
                                        # kill: killed $r5
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	b	.LBB17_5
	.p2align	4, , 16
.LBB17_3:                               # %if.then133
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	st.w	$a1, $a3, 16
	st.w	$a2, $a3, 20
	st.w	$s8, $a3, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s3
	st.w	$a1, $a3, 4
	st.w	$t8, $a3, 8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $a3, 12
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a1, $a3, 24
.LBB17_4:                               # %if.end145
                                        #   in Loop: Header=BB17_5 Depth=1
	st.d	$t8, $sp, 232                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $fp, 36
	addi.d	$a7, $s3, 1
	bge	$s3, $a1, .LBB17_1
.LBB17_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_7 Depth 2
                                        #     Child Loop BB17_10 Depth 2
                                        #     Child Loop BB17_13 Depth 2
                                        #     Child Loop BB17_20 Depth 2
                                        #     Child Loop BB17_28 Depth 2
                                        #     Child Loop BB17_35 Depth 2
	move	$s3, $a7
	bstrpick.d	$a2, $a0, 31, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$s6, $a0, $a7
	sub.d	$a1, $s6, $a2
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $fp, 44
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 44
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a3, $a1, $a0
	add.d	$t4, $a3, $s3
	ld.bu	$t0, $s0, 0
	ld.bu	$a5, $t4, -1
	addi.w	$a2, $a0, 0
	addi.d	$a1, $a0, 2
	bstrpick.d	$ra, $a1, 31, 0
	xor	$a6, $a5, $t0
	addi.w	$a4, $zero, -3
	sltui	$s6, $a6, 1
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	bltu	$a4, $a2, .LBB17_8
# %bb.6:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB17_5 Depth=1
	move	$t2, $zero
	move	$t1, $zero
	addi.d	$a6, $ra, -1
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	move	$t3, $t0
	.p2align	4, , 16
.LBB17_7:                               # %for.body.i
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t5, $a7, 0
	xor	$a5, $a5, $t5
	sltui	$a5, $a5, 1
	add.w	$t2, $t2, $a5
	slt	$t6, $s6, $t2
	ldx.bu	$a5, $a3, $s3
	maskeqz	$t2, $t2, $t6
	masknez	$t6, $s6, $t6
	or	$t2, $t2, $t6
	xor	$t3, $a5, $t3
	sltui	$t3, $t3, 1
	add.w	$t1, $t1, $t3
	slt	$t3, $s6, $t1
	maskeqz	$t1, $t1, $t3
	masknez	$t3, $s6, $t3
	or	$t1, $t1, $t3
	slt	$t3, $t1, $t2
	masknez	$t6, $t1, $t3
	maskeqz	$t3, $t2, $t3
	or	$t3, $t3, $t6
	xor	$t6, $a5, $t5
	sltui	$t6, $t6, 1
	add.w	$t6, $s6, $t6
	slt	$t7, $t6, $t3
	addi.w	$t3, $t3, -1
	maskeqz	$t3, $t3, $t7
	masknez	$t6, $t6, $t7
	or	$s6, $t3, $t6
	addi.d	$a6, $a6, -1
	addi.d	$a3, $a3, 1
	addi.d	$a7, $a7, 1
	move	$t3, $t5
	bnez	$a6, .LBB17_7
.LBB17_8:                               # %if.end.i
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.w	$t7, $a1, $s3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.bu	$a3, $a1, 0
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	ld.bu	$a3, $a1, 1
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.w	$t3, $a3, $s3
	ld.bu	$a3, $a1, 2
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.w	$t2, $a3, $s3
	ld.bu	$a1, $a1, 3
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	add.d	$a5, $s2, $s3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.bu	$s7, $a1, $a0
	addi.w	$s8, $t7, -1
	bstrpick.d	$a3, $s8, 31, 0
	ldx.bu	$s4, $s5, $a3
	bstrpick.d	$a3, $t7, 31, 0
	ldx.bu	$s1, $s5, $a3
	addi.d	$a3, $t3, -1
	bstrpick.d	$a3, $a3, 31, 0
	ldx.bu	$a1, $s5, $a3
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a3, $t2, -1
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	ld.bu	$a5, $a5, -1
	bstrpick.d	$a3, $a3, 31, 0
	ldx.bu	$a1, $s5, $a3
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	xor	$a3, $a5, $s7
	sltui	$a3, $a3, 1
	bltu	$a4, $a2, .LBB17_11
# %bb.9:                                # %for.body.i61.preheader
                                        #   in Loop: Header=BB17_5 Depth=1
	move	$t5, $zero
	move	$fp, $zero
	addi.d	$a6, $ra, -1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$t8, $a1, $a0
	move	$s0, $s2
	move	$t6, $s7
	.p2align	4, , 16
.LBB17_10:                              # %for.body.i61
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $t8, 0
	xor	$a5, $a5, $a7
	sltui	$a5, $a5, 1
	add.w	$t5, $t5, $a5
	slt	$s2, $a3, $t5
	ldx.bu	$a5, $s0, $s3
	maskeqz	$t5, $t5, $s2
	masknez	$s2, $a3, $s2
	or	$t5, $t5, $s2
	xor	$t6, $a5, $t6
	sltui	$t6, $t6, 1
	add.w	$t6, $fp, $t6
	slt	$fp, $a3, $t6
	maskeqz	$t6, $t6, $fp
	masknez	$fp, $a3, $fp
	or	$fp, $t6, $fp
	slt	$t6, $fp, $t5
	masknez	$s2, $fp, $t6
	maskeqz	$t6, $t5, $t6
	or	$t6, $t6, $s2
	xor	$s2, $a5, $a7
	sltui	$s2, $s2, 1
	add.w	$a3, $a3, $s2
	slt	$s2, $a3, $t6
	addi.w	$t6, $t6, -1
	maskeqz	$t6, $t6, $s2
	masknez	$a3, $a3, $s2
	or	$a3, $t6, $a3
	addi.d	$a6, $a6, -1
	addi.d	$s0, $s0, 1
	addi.d	$t8, $t8, 1
	move	$t6, $a7
	bnez	$a6, .LBB17_10
.LBB17_11:                              # %if.end.i88
                                        #   in Loop: Header=BB17_5 Depth=1
	addi.w	$a1, $t7, 1
	ld.bu	$a5, $t4, 0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	bstrpick.d	$a6, $a1, 31, 0
	ldx.bu	$a1, $s5, $a6
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	sub.d	$a7, $zero, $a0
	xor	$a6, $a5, $t0
	sltui	$s0, $a6, 1
	move	$t1, $ra
	st.d	$a7, $sp, 160                   # 8-byte Folded Spill
	bltu	$a4, $a2, .LBB17_14
# %bb.12:                               # %for.body.i.1.preheader
                                        #   in Loop: Header=BB17_5 Depth=1
	move	$t5, $zero
	move	$fp, $zero
	addi.d	$a6, $ra, -1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$ra, $a1, $a7
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	move	$t6, $t0
	.p2align	4, , 16
.LBB17_13:                              # %for.body.i.1
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $s2, 0
	xor	$a5, $a5, $a7
	sltui	$a5, $a5, 1
	add.w	$t5, $t5, $a5
	slt	$t8, $s0, $t5
	ldx.bu	$a5, $ra, $s3
	maskeqz	$t5, $t5, $t8
	masknez	$t8, $s0, $t8
	or	$t5, $t5, $t8
	xor	$t6, $a5, $t6
	sltui	$t6, $t6, 1
	add.w	$t6, $fp, $t6
	slt	$t8, $s0, $t6
	maskeqz	$t6, $t6, $t8
	masknez	$t8, $s0, $t8
	or	$fp, $t6, $t8
	slt	$t6, $fp, $t5
	masknez	$t8, $fp, $t6
	maskeqz	$t6, $t5, $t6
	or	$t6, $t6, $t8
	xor	$t8, $a5, $a7
	sltui	$t8, $t8, 1
	add.w	$t8, $s0, $t8
	slt	$s0, $t8, $t6
	addi.w	$t6, $t6, -1
	maskeqz	$t6, $t6, $s0
	masknez	$t8, $t8, $s0
	or	$s0, $t6, $t8
	addi.d	$a6, $a6, -1
	addi.d	$ra, $ra, 1
	addi.d	$s2, $s2, 1
	move	$t6, $a7
	bnez	$a6, .LBB17_13
.LBB17_14:                              # %SWscore.exit.1
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	xor	$a5, $s4, $a1
	sltui	$a5, $a5, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	xor	$a6, $s1, $a1
	sltui	$a6, $a6, 1
	addi.d	$a7, $a5, 1
	masknez	$t5, $a5, $a6
	maskeqz	$a7, $a7, $a6
	or	$a7, $a7, $t5
	sltu	$t5, $zero, $s6
	or	$a5, $a6, $a5
	or	$a6, $a5, $t5
	maskeqz	$a5, $a7, $a6
	move	$a1, $t1
	bltu	$s0, $s6, .LBB17_17
# %bb.15:                               # %if.end.i.1
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	xor	$a7, $s1, $a7
	sltui	$a7, $a7, 1
	ld.d	$t5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 224                   # 8-byte Folded Reload
	xor	$t5, $t6, $t5
	sltui	$t5, $t5, 1
	addi.d	$t6, $a7, 1
	masknez	$a7, $a7, $t5
	maskeqz	$t5, $t6, $t5
	or	$s1, $t5, $a7
	move	$s4, $t7
	bltu	$s6, $s0, .LBB17_18
# %bb.16:                               # %if.end.i.1
                                        #   in Loop: Header=BB17_5 Depth=1
	bltu	$a5, $s1, .LBB17_18
.LBB17_17:                              # %splice_score_compare.exit.thread.1
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	masknez	$a7, $a7, $a6
	maskeqz	$a6, $s8, $a6
	or	$s4, $a6, $a7
	move	$s0, $s6
	move	$s1, $a5
.LBB17_18:                              # %if.end69.1
                                        #   in Loop: Header=BB17_5 Depth=1
	bstrpick.d	$a5, $t3, 31, 0
	ldx.bu	$a5, $s5, $a5
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	ld.bu	$s6, $a6, 0
	bstrpick.d	$a6, $t2, 31, 0
	ldx.bu	$a6, $s5, $a6
	xor	$a7, $s6, $s7
	sltui	$s8, $a7, 1
	bltu	$a4, $a2, .LBB17_21
# %bb.19:                               # %for.body.i61.1.preheader
                                        #   in Loop: Header=BB17_5 Depth=1
	move	$t6, $zero
	move	$t5, $zero
	addi.d	$ra, $a1, -1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$s2, $a1, $a0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	move	$a7, $s7
	.p2align	4, , 16
.LBB17_20:                              # %for.body.i61.1
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t8, $s2, 0
	xor	$s6, $s6, $t8
	sltui	$s6, $s6, 1
	add.w	$t6, $t6, $s6
	slt	$a1, $s8, $t6
	ldx.bu	$s6, $fp, $s3
	maskeqz	$t6, $t6, $a1
	masknez	$a1, $s8, $a1
	or	$t6, $t6, $a1
	xor	$a1, $s6, $a7
	sltui	$a1, $a1, 1
	add.w	$a1, $t5, $a1
	slt	$a7, $s8, $a1
	maskeqz	$a1, $a1, $a7
	masknez	$a7, $s8, $a7
	or	$t5, $a1, $a7
	slt	$a1, $t5, $t6
	masknez	$a7, $t5, $a1
	maskeqz	$a1, $t6, $a1
	or	$a1, $a1, $a7
	xor	$a7, $s6, $t8
	sltui	$a7, $a7, 1
	add.w	$a7, $s8, $a7
	slt	$s8, $a7, $a1
	addi.w	$a1, $a1, -1
	maskeqz	$a1, $a1, $s8
	masknez	$a7, $a7, $s8
	or	$s8, $a1, $a7
	addi.d	$ra, $ra, -1
	addi.d	$fp, $fp, 1
	addi.d	$s2, $s2, 1
	move	$a7, $t8
	bnez	$ra, .LBB17_20
.LBB17_21:                              # %SWscore.exit84.1
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$s6, $a1, $s3
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	xor	$a1, $a1, $s2
	sltui	$a1, $a1, 1
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	xor	$a7, $a7, $ra
	sltui	$a7, $a7, 1
	addi.d	$t5, $a1, 1
	masknez	$t6, $a1, $a7
	maskeqz	$t5, $t5, $a7
	or	$t5, $t5, $t6
	sltu	$t6, $zero, $a3
	or	$a1, $a7, $a1
	or	$a1, $a1, $t6
	addi.d	$a7, $s6, -1
	ld.d	$t6, $sp, 232                   # 8-byte Folded Reload
	masknez	$t6, $t6, $a1
	maskeqz	$a7, $a7, $a1
	or	$t8, $a7, $t6
	maskeqz	$fp, $t5, $a1
	bgeu	$s8, $a3, .LBB17_23
# %bb.22:                               #   in Loop: Header=BB17_5 Depth=1
	move	$ra, $t1
	b	.LBB17_26
	.p2align	4, , 16
.LBB17_23:                              # %if.end.i88.1
                                        #   in Loop: Header=BB17_5 Depth=1
	xor	$a1, $a5, $s2
	sltui	$a1, $a1, 1
	xor	$a5, $a6, $ra
	sltui	$a5, $a5, 1
	addi.d	$a6, $a1, 1
	masknez	$a1, $a1, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a1
	move	$ra, $t1
	bltu	$a3, $s8, .LBB17_25
# %bb.24:                               # %if.end.i88.1
                                        #   in Loop: Header=BB17_5 Depth=1
	bgeu	$fp, $a5, .LBB17_26
.LBB17_25:                              # %if.then115.1
                                        #   in Loop: Header=BB17_5 Depth=1
	move	$a3, $s8
	move	$t8, $s6
	move	$fp, $a5
.LBB17_26:                              # %if.end123.1
                                        #   in Loop: Header=BB17_5 Depth=1
	addi.d	$a1, $t7, 2
	ld.bu	$a6, $t4, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a5, $s5, $a1
	xor	$a1, $a6, $t0
	sltui	$t4, $a1, 1
	bltu	$a4, $a2, .LBB17_29
# %bb.27:                               # %for.body.i.2.preheader
                                        #   in Loop: Header=BB17_5 Depth=1
	move	$t6, $zero
	move	$s8, $zero
	addi.d	$t7, $ra, -1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	add.d	$s2, $a1, $a7
	ld.d	$t5, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_28:                              # %for.body.i.2
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $t5, 0
	xor	$a6, $a6, $a1
	sltui	$a6, $a6, 1
	add.w	$a7, $t6, $a6
	slt	$t6, $t4, $a7
	ldx.bu	$a6, $s2, $s3
	maskeqz	$a7, $a7, $t6
	masknez	$t6, $t4, $t6
	or	$t6, $a7, $t6
	xor	$a7, $a6, $t0
	sltui	$a7, $a7, 1
	add.w	$a7, $s8, $a7
	slt	$t0, $t4, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t4, $t0
	or	$s8, $a7, $t0
	slt	$a7, $s8, $t6
	masknez	$t0, $s8, $a7
	maskeqz	$a7, $t6, $a7
	or	$a7, $a7, $t0
	xor	$t0, $a6, $a1
	sltui	$t0, $t0, 1
	add.w	$t0, $t4, $t0
	slt	$t4, $t0, $a7
	addi.w	$a7, $a7, -1
	maskeqz	$a7, $a7, $t4
	masknez	$t0, $t0, $t4
	or	$t4, $a7, $t0
	addi.d	$t7, $t7, -1
	addi.d	$s2, $s2, 1
	addi.d	$t5, $t5, 1
	move	$t0, $a1
	bnez	$t7, .LBB17_28
.LBB17_29:                              # %SWscore.exit.2
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	bltu	$t4, $s0, .LBB17_32
# %bb.30:                               # %if.end.i.2
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	xor	$a1, $a6, $a1
	sltui	$a1, $a1, 1
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	xor	$a5, $a5, $a6
	sltui	$a5, $a5, 1
	addi.d	$a6, $a1, 1
	masknez	$a1, $a1, $a5
	maskeqz	$a5, $a6, $a5
	or	$t0, $a5, $a1
	bltu	$s0, $t4, .LBB17_46
# %bb.31:                               # %if.end.i.2
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	bltu	$s1, $t0, .LBB17_33
.LBB17_32:                              # %splice_score_compare.exit.thread.2
                                        #   in Loop: Header=BB17_5 Depth=1
	move	$s8, $s4
	move	$t4, $s0
	move	$t0, $s1
.LBB17_33:                              # %if.end69.2
                                        #   in Loop: Header=BB17_5 Depth=1
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a6, $s5, $a1
	addi.d	$a1, $t2, 1
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.bu	$t2, $a5, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$t1, $s5, $a1
	xor	$a1, $t2, $s7
	sltui	$a5, $a1, 1
	bltu	$a4, $a2, .LBB17_37
# %bb.34:                               # %for.body.i61.2.preheader
                                        #   in Loop: Header=BB17_5 Depth=1
	move	$t5, $zero
	move	$t3, $zero
	addi.d	$a1, $ra, -1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_35:                              # %for.body.i61.2
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $a2, 0
	xor	$t2, $t2, $a7
	sltui	$t2, $t2, 1
	add.w	$t5, $t5, $t2
	slt	$t6, $a5, $t5
	ldx.bu	$t2, $a4, $s3
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a5, $t6
	or	$t5, $t5, $t6
	xor	$t6, $t2, $s7
	sltui	$t6, $t6, 1
	add.w	$t3, $t3, $t6
	slt	$t6, $a5, $t3
	maskeqz	$t3, $t3, $t6
	masknez	$t6, $a5, $t6
	or	$t3, $t3, $t6
	slt	$t6, $t3, $t5
	masknez	$t7, $t3, $t6
	maskeqz	$t6, $t5, $t6
	or	$t6, $t6, $t7
	xor	$t7, $t2, $a7
	sltui	$t7, $t7, 1
	add.w	$a5, $a5, $t7
	slt	$t7, $a5, $t6
	addi.w	$t6, $t6, -1
	maskeqz	$t6, $t6, $t7
	masknez	$a5, $a5, $t7
	or	$a5, $t6, $a5
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 1
	move	$s7, $a7
	bnez	$a1, .LBB17_35
# %bb.36:                               # %SWscore.exit84.2
                                        #   in Loop: Header=BB17_5 Depth=1
	bgeu	$a5, $a3, .LBB17_38
	b	.LBB17_41
	.p2align	4, , 16
.LBB17_37:                              #   in Loop: Header=BB17_5 Depth=1
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bltu	$a5, $a3, .LBB17_41
.LBB17_38:                              # %if.end.i88.2
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	xor	$a1, $a6, $a1
	sltui	$a1, $a1, 1
	xor	$a2, $t1, $s0
	sltui	$a2, $a2, 1
	addi.d	$a4, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	bltu	$a3, $a5, .LBB17_40
# %bb.39:                               # %if.end.i88.2
                                        #   in Loop: Header=BB17_5 Depth=1
	bgeu	$fp, $a1, .LBB17_41
.LBB17_40:                              # %if.then115.2
                                        #   in Loop: Header=BB17_5 Depth=1
	addi.d	$t8, $s6, 1
	move	$a3, $a5
	move	$fp, $a1
.LBB17_41:                              # %if.end123.2
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a4, $a1, 16
	add.w	$a1, $t4, $a3
	bltu	$a1, $a4, .LBB17_4
# %bb.42:                               # %if.end.i108
                                        #   in Loop: Header=BB17_5 Depth=1
	add.d	$a2, $t0, $fp
	bltu	$a4, $a1, .LBB17_3
# %bb.43:                               # %if.end6.i110
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 20
	bltu	$a2, $a3, .LBB17_4
# %bb.44:                               # %if.end10.i114
                                        #   in Loop: Header=BB17_5 Depth=1
	bltu	$a3, $a2, .LBB17_3
# %bb.45:                               # %if.end15.i116
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 12
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB17_3
	b	.LBB17_4
.LBB17_46:                              #   in Loop: Header=BB17_5 Depth=1
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	b	.LBB17_33
.Lfunc_end17:
	.size	compute_max_score_1, .Lfunc_end17-compute_max_score_1
                                        # -- End function
	.type	encoding,@object                # @encoding
	.bss
	.globl	encoding
	.p2align	5, 0x0
encoding:
	.space	512
	.size	encoding, 512

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%u-%u  (%u-%u)   %u%% ==\n"
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%u-%u  (%u-%u)   %u%% %s (%.2s/%.2s) %u\n"
	.size	.L.str.1, 41

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"->"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"<-"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%u-%u  (%u-%u)   %u%%\n"
	.size	.L.str.4, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free
	.addrsig_sym msp_rna_compare
	.addrsig_sym msp_compare
	.addrsig_sym hash_node_compare
