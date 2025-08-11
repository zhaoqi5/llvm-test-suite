	.file	"beamformer.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %got_pc_hi20(optarg)
	ld.d	$s2, $a0, %got_pc_lo12(optarg)
	ori	$s3, $zero, 105
	pcalau12i	$s4, %pc_hi20(numiters)
	addi.w	$s5, $zero, -1
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %sw.bb
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s2, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $s4, %pc_lo12(numiters)
.LBB0_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getopt)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB0_1
# %bb.3:                                # %while.cond
                                        #   in Loop: Header=BB0_2 Depth=1
	bne	$a0, $s5, .LBB0_2
# %bb.4:                                # %while.end
	pcaddu18i	$ra, %call36(begin_StrictFP)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(begin)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function begin_StrictFP
.LCPI1_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI1_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	begin_StrictFP
	.p2align	5
	.type	begin_StrictFP,@function
begin_StrictFP:                         # @begin_StrictFP
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1880                 # 8-byte Folded Spill
	lu12i.w	$a0, 206
	ori	$a0, $a0, 1696
	sub.d	$sp, $sp, $a0
	move	$s0, $zero
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$a0, $sp, $a0
	addu16i.d	$a1, $a0, 1
	addi.d	$s7, $a1, 4
	lu12i.w	$a1, 8
	ori	$a1, $a1, 4
	add.d	$s8, $a0, $a1
	lu12i.w	$a0, 206
	ori	$a0, $a0, 3192
	add.d	$s2, $sp, $a0
	ori	$s3, $zero, 64
	lu12i.w	$s1, 260096
	lu12i.w	$a0, 206
	ori	$a0, $a0, 2808
	add.d	$s4, $sp, $a0
	ori	$s5, $zero, 384
	.p2align	4, , 16
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s2, $s0
	stx.d	$s3, $s0, $s2
	st.w	$zero, $s6, 8
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s6, 16
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 24
	st.w	$s1, $fp, 0
	addi.d	$a1, $fp, 4
	addi.d	$fp, $a0, 4
	ori	$a2, $zero, 508
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 508
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s6, $s4, $s0
	stx.d	$s3, $s0, $s4
	st.w	$zero, $s6, 8
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s6, 16
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 24
	st.w	$s1, $fp, 0
	addi.d	$a1, $fp, 4
	addi.d	$fp, $a0, 4
	ori	$a2, $zero, 508
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 508
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 32
	bne	$s0, $s5, .LBB1_1
# %bb.2:                                # %for.body5.preheader
	ori	$s2, $zero, 512
	lu12i.w	$a0, 206
	ori	$a0, $a0, 2680
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	lu12i.w	$a0, 206
	ori	$a0, $a0, 2688
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$fp, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	lu12i.w	$a1, 206
	ori	$a1, $a1, 2696
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 206
	ori	$a1, $a1, 2704
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	st.w	$s1, $s0, 0
	addi.d	$a1, $s0, 4
	addi.d	$s0, $a0, 4
	ori	$a2, $zero, 4092
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4092
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 14
	ori	$a0, $a0, 2296
	add.d	$a1, $sp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(BeamFormWeights_StrictFP)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 206
	ori	$a0, $a0, 2712
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	lu12i.w	$a0, 206
	ori	$a0, $a0, 2720
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	lu12i.w	$a1, 206
	ori	$a1, $a1, 2728
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 206
	ori	$a1, $a1, 2736
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	st.w	$s1, $s0, 0
	addi.d	$a1, $s0, 4
	addi.d	$s0, $a0, 4
	ori	$a2, $zero, 4092
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4092
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 14
	ori	$a0, $a0, 2392
	add.d	$a1, $sp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(BeamFormWeights_StrictFP)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 206
	ori	$a0, $a0, 2744
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	lu12i.w	$a0, 206
	ori	$a0, $a0, 2752
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	lu12i.w	$a1, 206
	ori	$a1, $a1, 2760
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 206
	ori	$a1, $a1, 2768
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	st.w	$s1, $s0, 0
	addi.d	$a1, $s0, 4
	addi.d	$s0, $a0, 4
	ori	$a2, $zero, 4092
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4092
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 14
	ori	$a0, $a0, 2488
	add.d	$a1, $sp, $a0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(BeamFormWeights_StrictFP)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 206
	ori	$a0, $a0, 2776
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	lu12i.w	$a0, 206
	ori	$a0, $a0, 2784
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	lu12i.w	$a1, 206
	ori	$a1, $a1, 2792
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 206
	ori	$a1, $a1, 2800
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	st.w	$s1, $s0, 0
	addi.d	$a1, $s0, 4
	addi.d	$fp, $a0, 4
	ori	$a2, $zero, 4092
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4092
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 14
	ori	$a0, $a0, 2584
	add.d	$a1, $sp, $a0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(BeamFormWeights_StrictFP)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$s6, $zero
	move	$s2, $zero
	lu12i.w	$s1, 6
	ori	$s3, $s1, 4
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	add.d	$a0, $t0, $s3
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$s4, 2
	add.d	$a0, $s8, $s4
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$s5, 4
	add.d	$a0, $s8, $s5
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	add.d	$a0, $s8, $s1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	add.d	$a0, $s7, $s4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s7, $s5
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s7, $s1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a1, $s4, 4
	add.d	$a0, $t0, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a2, $s5, 4
	add.d	$a0, $t0, $a2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a3, $zero, 768
	lu12i.w	$a0, 268288
	lu32i.d	$a0, -524288
	lu52i.d	$a0, $a0, 1048
	vldi	$vr8, -1168
	lu12i.w	$a4, 158
	ori	$a4, $a4, 2680
	add.d	$t1, $sp, $a4
	ori	$t2, $zero, 1024
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$s7, $sp, 152                   # 8-byte Folded Spill
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %for.inc60
                                        #   in Loop: Header=BB1_4 Depth=1
	st.w	$a1, $s3, 8
	st.w	$a0, $s3, 4
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	addi.d	$s2, $s2, 1
	addi.d	$s6, $s6, 1
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	lu12i.w	$s1, 6
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	lu12i.w	$s4, 2
	lu12i.w	$s5, 4
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a4, $zero, 12
	beq	$s2, $a4, .LBB1_143
.LBB1_4:                                # %for.cond16.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_32 Depth 2
                                        #     Child Loop BB1_42 Depth 2
                                        #     Child Loop BB1_52 Depth 2
                                        #     Child Loop BB1_62 Depth 2
                                        #     Child Loop BB1_72 Depth 2
                                        #     Child Loop BB1_82 Depth 2
                                        #     Child Loop BB1_92 Depth 2
                                        #     Child Loop BB1_102 Depth 2
                                        #     Child Loop BB1_112 Depth 2
                                        #     Child Loop BB1_122 Depth 2
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_27 Depth 2
                                        #     Child Loop BB1_37 Depth 2
                                        #     Child Loop BB1_47 Depth 2
                                        #     Child Loop BB1_57 Depth 2
                                        #     Child Loop BB1_67 Depth 2
                                        #     Child Loop BB1_77 Depth 2
                                        #     Child Loop BB1_87 Depth 2
                                        #     Child Loop BB1_97 Depth 2
                                        #     Child Loop BB1_107 Depth 2
                                        #     Child Loop BB1_117 Depth 2
                                        #     Child Loop BB1_127 Depth 2
                                        #       Child Loop BB1_129 Depth 3
                                        #     Child Loop BB1_136 Depth 2
                                        #       Child Loop BB1_138 Depth 3
	move	$fp, $zero
	bne	$s2, $a7, .LBB1_11
# %bb.5:                                # %for.body.i.us.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	ori	$s0, $zero, 1024
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2684
	add.d	$s1, $sp, $a1
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_6:                                # %if.then.i.us
                                        #   in Loop: Header=BB1_7 Depth=2
	lu12i.w	$a1, 183
	ori	$a1, $a1, 632
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB1_15
.LBB1_7:                                # %for.body.i.us
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a3, .LBB1_6
# %bb.8:                                # %if.else.i.us
                                        #   in Loop: Header=BB1_7 Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_10
.LBB1_9:                                # %if.else.i.us.split
                                        #   in Loop: Header=BB1_7 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB1_7
	b	.LBB1_15
.LBB1_10:                               # %call.sqrt
                                        #   in Loop: Header=BB1_7 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2680
	add.d	$t0, $sp, $a1
	ori	$a7, $zero, 1
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_11:                               # %for.body18.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	lu12i.w	$a3, -2
	move	$s0, $a3
	.p2align	4, , 16
.LBB1_12:                               # %for.body.us.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_14
.LBB1_13:                               # %for.body.us.i.split
                                        #   in Loop: Header=BB1_12 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	add.d	$a0, $t0, $s0
	fstx.s	$fa1, $a0, $s4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a0, $a1
	addi.d	$s0, $s0, 8
	add.w	$fp, $fp, $s6
	bnez	$s0, .LBB1_12
	b	.LBB1_21
.LBB1_14:                               # %call.sqrt704
                                        #   in Loop: Header=BB1_12 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	lu12i.w	$a3, -2
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_15:                               # %for.body.i.us.1.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_16:                               # %if.then.i.us.1
                                        #   in Loop: Header=BB1_17 Depth=2
	lu12i.w	$a1, 185
	ori	$a1, $a1, 632
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB1_25
.LBB1_17:                               # %for.body.i.us.1
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a3, .LBB1_16
# %bb.18:                               # %if.else.i.us.1
                                        #   in Loop: Header=BB1_17 Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_20
.LBB1_19:                               # %if.else.i.us.1.split
                                        #   in Loop: Header=BB1_17 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB1_17
	b	.LBB1_25
.LBB1_20:                               # %call.sqrt693
                                        #   in Loop: Header=BB1_17 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2680
	add.d	$t0, $sp, $a1
	ori	$a7, $zero, 1
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_21:                               # %for.body.us.i.1.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	move	$s0, $a3
	.p2align	4, , 16
.LBB1_22:                               # %for.body.us.i.1
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_24
.LBB1_23:                               # %for.body.us.i.1.split
                                        #   in Loop: Header=BB1_22 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	add.d	$a0, $t0, $s0
	fstx.s	$fa1, $a0, $s5
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a0, $a2
	addi.d	$s0, $s0, 8
	add.w	$fp, $fp, $s6
	bnez	$s0, .LBB1_22
	b	.LBB1_31
.LBB1_24:                               # %call.sqrt705
                                        #   in Loop: Header=BB1_22 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	lu12i.w	$a3, -2
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_25:                               # %for.body.i.us.2.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_26:                               # %if.then.i.us.2
                                        #   in Loop: Header=BB1_27 Depth=2
	lu12i.w	$a1, 187
	ori	$a1, $a1, 632
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB1_35
.LBB1_27:                               # %for.body.i.us.2
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a3, .LBB1_26
# %bb.28:                               # %if.else.i.us.2
                                        #   in Loop: Header=BB1_27 Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_30
.LBB1_29:                               # %if.else.i.us.2.split
                                        #   in Loop: Header=BB1_27 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB1_27
	b	.LBB1_35
.LBB1_30:                               # %call.sqrt694
                                        #   in Loop: Header=BB1_27 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2680
	add.d	$t0, $sp, $a1
	ori	$a7, $zero, 1
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_31:                               # %for.body.us.i.2.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	move	$s0, $a3
	.p2align	4, , 16
.LBB1_32:                               # %for.body.us.i.2
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_34
.LBB1_33:                               # %for.body.us.i.2.split
                                        #   in Loop: Header=BB1_32 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	add.d	$a0, $t0, $s0
	fstx.s	$fa1, $a0, $s1
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a0, $s3
	addi.d	$s0, $s0, 8
	add.w	$fp, $fp, $s6
	bnez	$s0, .LBB1_32
	b	.LBB1_41
.LBB1_34:                               # %call.sqrt706
                                        #   in Loop: Header=BB1_32 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_35:                               # %for.body.i.us.3.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB1_37
	.p2align	4, , 16
.LBB1_36:                               # %if.then.i.us.3
                                        #   in Loop: Header=BB1_37 Depth=2
	lu12i.w	$a1, 189
	ori	$a1, $a1, 632
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB1_45
.LBB1_37:                               # %for.body.i.us.3
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a3, .LBB1_36
# %bb.38:                               # %if.else.i.us.3
                                        #   in Loop: Header=BB1_37 Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_40
.LBB1_39:                               # %if.else.i.us.3.split
                                        #   in Loop: Header=BB1_37 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB1_37
	b	.LBB1_45
.LBB1_40:                               # %call.sqrt695
                                        #   in Loop: Header=BB1_37 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2680
	add.d	$t0, $sp, $a1
	ori	$a7, $zero, 1
	b	.LBB1_39
	.p2align	4, , 16
.LBB1_41:                               # %for.body.us.i.3.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_42:                               # %for.body.us.i.3
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_44
.LBB1_43:                               # %for.body.us.i.3.split
                                        #   in Loop: Header=BB1_42 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s6
	bnez	$s0, .LBB1_42
	b	.LBB1_51
.LBB1_44:                               # %call.sqrt707
                                        #   in Loop: Header=BB1_42 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_45:                               # %for.body.i.us.4.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	move	$s1, $s8
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_46:                               # %if.then.i.us.4
                                        #   in Loop: Header=BB1_47 Depth=2
	st.d	$a0, $s8, 2044
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB1_55
.LBB1_47:                               # %for.body.i.us.4
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a3, .LBB1_46
# %bb.48:                               # %if.else.i.us.4
                                        #   in Loop: Header=BB1_47 Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_50
.LBB1_49:                               # %if.else.i.us.4.split
                                        #   in Loop: Header=BB1_47 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB1_47
	b	.LBB1_55
.LBB1_50:                               # %call.sqrt696
                                        #   in Loop: Header=BB1_47 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2680
	add.d	$t0, $sp, $a1
	ori	$a7, $zero, 1
	b	.LBB1_49
	.p2align	4, , 16
.LBB1_51:                               # %for.body.us.i.4.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	move	$s1, $s8
	.p2align	4, , 16
.LBB1_52:                               # %for.body.us.i.4
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_54
.LBB1_53:                               # %for.body.us.i.4.split
                                        #   in Loop: Header=BB1_52 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s6
	bnez	$s0, .LBB1_52
	b	.LBB1_61
.LBB1_54:                               # %call.sqrt708
                                        #   in Loop: Header=BB1_52 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_55:                               # %for.body.i.us.5.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB1_57
	.p2align	4, , 16
.LBB1_56:                               # %if.then.i.us.5
                                        #   in Loop: Header=BB1_57 Depth=2
	stptr.d	$a0, $s8, 10236
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB1_65
.LBB1_57:                               # %for.body.i.us.5
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a3, .LBB1_56
# %bb.58:                               # %if.else.i.us.5
                                        #   in Loop: Header=BB1_57 Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_60
.LBB1_59:                               # %if.else.i.us.5.split
                                        #   in Loop: Header=BB1_57 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB1_57
	b	.LBB1_65
.LBB1_60:                               # %call.sqrt697
                                        #   in Loop: Header=BB1_57 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2680
	add.d	$t0, $sp, $a1
	ori	$a7, $zero, 1
	b	.LBB1_59
	.p2align	4, , 16
.LBB1_61:                               # %for.body.us.i.5.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_62:                               # %for.body.us.i.5
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_64
.LBB1_63:                               # %for.body.us.i.5.split
                                        #   in Loop: Header=BB1_62 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s6
	bnez	$s0, .LBB1_62
	b	.LBB1_71
.LBB1_64:                               # %call.sqrt709
                                        #   in Loop: Header=BB1_62 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	b	.LBB1_63
	.p2align	4, , 16
.LBB1_65:                               # %for.body.i.us.6.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_67
	.p2align	4, , 16
.LBB1_66:                               # %if.then.i.us.6
                                        #   in Loop: Header=BB1_67 Depth=2
	stptr.d	$a0, $s8, 18428
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB1_75
.LBB1_67:                               # %for.body.i.us.6
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a3, .LBB1_66
# %bb.68:                               # %if.else.i.us.6
                                        #   in Loop: Header=BB1_67 Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_70
.LBB1_69:                               # %if.else.i.us.6.split
                                        #   in Loop: Header=BB1_67 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB1_67
	b	.LBB1_75
.LBB1_70:                               # %call.sqrt698
                                        #   in Loop: Header=BB1_67 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2680
	add.d	$t0, $sp, $a1
	ori	$a7, $zero, 1
	b	.LBB1_69
	.p2align	4, , 16
.LBB1_71:                               # %for.body.us.i.6.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_72:                               # %for.body.us.i.6
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_74
.LBB1_73:                               # %for.body.us.i.6.split
                                        #   in Loop: Header=BB1_72 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s6
	bnez	$s0, .LBB1_72
	b	.LBB1_81
.LBB1_74:                               # %call.sqrt710
                                        #   in Loop: Header=BB1_72 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	b	.LBB1_73
	.p2align	4, , 16
.LBB1_75:                               # %for.body.i.us.7.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB1_77
	.p2align	4, , 16
.LBB1_76:                               # %if.then.i.us.7
                                        #   in Loop: Header=BB1_77 Depth=2
	stptr.d	$a0, $s8, 26620
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB1_85
.LBB1_77:                               # %for.body.i.us.7
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a3, .LBB1_76
# %bb.78:                               # %if.else.i.us.7
                                        #   in Loop: Header=BB1_77 Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_80
.LBB1_79:                               # %if.else.i.us.7.split
                                        #   in Loop: Header=BB1_77 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB1_77
	b	.LBB1_85
.LBB1_80:                               # %call.sqrt699
                                        #   in Loop: Header=BB1_77 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2680
	add.d	$t0, $sp, $a1
	ori	$a7, $zero, 1
	b	.LBB1_79
	.p2align	4, , 16
.LBB1_81:                               # %for.body.us.i.7.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_82:                               # %for.body.us.i.7
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_84
.LBB1_83:                               # %for.body.us.i.7.split
                                        #   in Loop: Header=BB1_82 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s6
	bnez	$s0, .LBB1_82
	b	.LBB1_91
.LBB1_84:                               # %call.sqrt711
                                        #   in Loop: Header=BB1_82 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	b	.LBB1_83
	.p2align	4, , 16
.LBB1_85:                               # %for.body.i.us.8.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	move	$s1, $s7
	b	.LBB1_87
	.p2align	4, , 16
.LBB1_86:                               # %if.then.i.us.8
                                        #   in Loop: Header=BB1_87 Depth=2
	st.d	$a0, $s7, 2044
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB1_95
.LBB1_87:                               # %for.body.i.us.8
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a3, .LBB1_86
# %bb.88:                               # %if.else.i.us.8
                                        #   in Loop: Header=BB1_87 Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_90
.LBB1_89:                               # %if.else.i.us.8.split
                                        #   in Loop: Header=BB1_87 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB1_87
	b	.LBB1_95
.LBB1_90:                               # %call.sqrt700
                                        #   in Loop: Header=BB1_87 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2680
	add.d	$t0, $sp, $a1
	ori	$a7, $zero, 1
	b	.LBB1_89
	.p2align	4, , 16
.LBB1_91:                               # %for.body.us.i.8.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	move	$s1, $s7
	.p2align	4, , 16
.LBB1_92:                               # %for.body.us.i.8
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_94
.LBB1_93:                               # %for.body.us.i.8.split
                                        #   in Loop: Header=BB1_92 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s6
	bnez	$s0, .LBB1_92
	b	.LBB1_101
.LBB1_94:                               # %call.sqrt712
                                        #   in Loop: Header=BB1_92 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	b	.LBB1_93
	.p2align	4, , 16
.LBB1_95:                               # %for.body.i.us.9.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	b	.LBB1_97
	.p2align	4, , 16
.LBB1_96:                               # %if.then.i.us.9
                                        #   in Loop: Header=BB1_97 Depth=2
	stptr.d	$a0, $s7, 10236
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB1_105
.LBB1_97:                               # %for.body.i.us.9
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a3, .LBB1_96
# %bb.98:                               # %if.else.i.us.9
                                        #   in Loop: Header=BB1_97 Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_100
.LBB1_99:                               # %if.else.i.us.9.split
                                        #   in Loop: Header=BB1_97 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB1_97
	b	.LBB1_105
.LBB1_100:                              # %call.sqrt701
                                        #   in Loop: Header=BB1_97 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2680
	add.d	$t0, $sp, $a1
	ori	$a7, $zero, 1
	b	.LBB1_99
	.p2align	4, , 16
.LBB1_101:                              # %for.body.us.i.9.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_102:                              # %for.body.us.i.9
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_104
.LBB1_103:                              # %for.body.us.i.9.split
                                        #   in Loop: Header=BB1_102 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s6
	bnez	$s0, .LBB1_102
	b	.LBB1_111
.LBB1_104:                              # %call.sqrt713
                                        #   in Loop: Header=BB1_102 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	b	.LBB1_103
	.p2align	4, , 16
.LBB1_105:                              # %for.body.i.us.10.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	b	.LBB1_107
	.p2align	4, , 16
.LBB1_106:                              # %if.then.i.us.10
                                        #   in Loop: Header=BB1_107 Depth=2
	stptr.d	$a0, $s7, 18428
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB1_115
.LBB1_107:                              # %for.body.i.us.10
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a3, .LBB1_106
# %bb.108:                              # %if.else.i.us.10
                                        #   in Loop: Header=BB1_107 Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_110
.LBB1_109:                              # %if.else.i.us.10.split
                                        #   in Loop: Header=BB1_107 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB1_107
	b	.LBB1_115
.LBB1_110:                              # %call.sqrt702
                                        #   in Loop: Header=BB1_107 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2680
	add.d	$t0, $sp, $a1
	ori	$a7, $zero, 1
	b	.LBB1_109
	.p2align	4, , 16
.LBB1_111:                              # %for.body.us.i.10.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_112:                              # %for.body.us.i.10
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_114
.LBB1_113:                              # %for.body.us.i.10.split
                                        #   in Loop: Header=BB1_112 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s6
	bnez	$s0, .LBB1_112
	b	.LBB1_121
.LBB1_114:                              # %call.sqrt714
                                        #   in Loop: Header=BB1_112 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	b	.LBB1_113
	.p2align	4, , 16
.LBB1_115:                              # %for.body.i.us.11.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB1_117
	.p2align	4, , 16
.LBB1_116:                              # %if.then.i.us.11
                                        #   in Loop: Header=BB1_117 Depth=2
	stptr.d	$a0, $s7, 26620
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB1_125
.LBB1_117:                              # %for.body.i.us.11
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$s0, $a3, .LBB1_116
# %bb.118:                              # %if.else.i.us.11
                                        #   in Loop: Header=BB1_117 Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_120
.LBB1_119:                              # %if.else.i.us.11.split
                                        #   in Loop: Header=BB1_117 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB1_117
	b	.LBB1_125
.LBB1_120:                              # %call.sqrt703
                                        #   in Loop: Header=BB1_117 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 768
	lu12i.w	$a1, 182
	ori	$a1, $a1, 2680
	add.d	$t0, $sp, $a1
	ori	$a7, $zero, 1
	b	.LBB1_119
	.p2align	4, , 16
.LBB1_121:                              # %for.body.us.i.11.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_122:                              # %for.body.us.i.11
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_124
.LBB1_123:                              # %for.body.us.i.11.split
                                        #   in Loop: Header=BB1_122 Depth=2
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $ft0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s6
	bnez	$s0, .LBB1_122
	b	.LBB1_125
.LBB1_124:                              # %call.sqrt715
                                        #   in Loop: Header=BB1_122 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	b	.LBB1_123
	.p2align	4, , 16
.LBB1_125:                              # %for.cond24.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	slli.d	$s7, $s2, 5
	lu12i.w	$a0, 206
	ori	$a0, $a0, 3192
	add.d	$a0, $sp, $a0
	ldx.w	$s3, $s7, $a0
	move	$s1, $zero
	add.d	$s4, $a0, $s7
	addi.d	$s5, $s3, -1
	slli.w	$s8, $s3, 1
	addi.d	$a4, $zero, -1
	ld.d	$fp, $s4, 24
	ld.w	$a1, $s4, 8
	ld.w	$a0, $s4, 4
	slt	$a2, $a7, $s8
	maskeqz	$a3, $s8, $a2
	masknez	$a2, $a7, $a2
	or	$a2, $a3, $a2
	alsl.w	$s2, $s3, $a4, 1
	slli.d	$s0, $a2, 2
	b	.LBB1_127
	.p2align	4, , 16
.LBB1_126:                              # %BeamFirFilter_StrictFP.exit
                                        #   in Loop: Header=BB1_127 Depth=2
	addi.d	$s1, $s1, 1
	beq	$s1, $t2, .LBB1_134
.LBB1_127:                              # %for.body26
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_129 Depth 3
	alsl.d	$a3, $s1, $t0, 3
	slli.d	$a2, $s1, 3
	fldx.s	$fa0, $a2, $t0
	sub.d	$a2, $s5, $a1
	slli.w	$a2, $a2, 1
	slli.d	$a4, $a2, 2
	fstx.s	$fa0, $fp, $a4
	fld.s	$fa0, $a3, 4
	alsl.d	$a3, $a2, $fp, 2
	fst.s	$fa0, $a3, 4
	blt	$s3, $a7, .LBB1_130
# %bb.128:                              # %for.body.lr.ph.i
                                        #   in Loop: Header=BB1_127 Depth=2
	ld.d	$a4, $s4, 16
	move	$a3, $zero
	movgr2fr.w	$fa1, $zero
	addi.d	$a4, $a4, 4
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB1_129:                              # %for.body.i74
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_127 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	alsl.d	$a5, $a2, $fp, 2
	slli.d	$a6, $a2, 2
	fldx.s	$fa2, $fp, $a6
	fld.s	$fa3, $a5, 4
	fld.s	$fa4, $a4, -4
	fld.s	$fa5, $a4, 0
	fmul.s	$fa6, $fa2, $fa4
	fmul.s	$fa7, $fa3, $fa5
	fadd.s	$fa6, $fa6, $fa7
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa2, $fa2, $fa5
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa0, $fa0, $fa2
	addi.w	$a2, $a2, 2
	and	$a2, $a2, $s2
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 8
	blt	$a3, $s8, .LBB1_129
	b	.LBB1_131
	.p2align	4, , 16
.LBB1_130:                              #   in Loop: Header=BB1_127 Depth=2
	movgr2fr.w	$fa0, $zero
	fmov.s	$fa1, $fa0
.LBB1_131:                              # %for.end.i
                                        #   in Loop: Header=BB1_127 Depth=2
	alsl.d	$a2, $s1, $t1, 3
	addi.d	$a1, $a1, 1
	and	$a1, $a1, $s5
	fst.s	$fa1, $a2, 0
	fst.s	$fa0, $a2, 4
	addi.w	$a2, $a0, 1
	addi.d	$a0, $a2, -1024
	sltu	$a3, $zero, $a0
	maskeqz	$a0, $a2, $a3
	maskeqz	$a1, $a1, $a3
	bne	$a2, $t2, .LBB1_126
# %bb.132:                              # %for.end.i
                                        #   in Loop: Header=BB1_127 Depth=2
	blt	$s3, $a7, .LBB1_126
# %bb.133:                              # %for.body50.preheader.i
                                        #   in Loop: Header=BB1_127 Depth=2
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB1_126
	.p2align	4, , 16
.LBB1_134:                              # %for.cond41.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$s1, $zero
	st.w	$a1, $s4, 8
	st.w	$a0, $s4, 4
	lu12i.w	$a0, 206
	ori	$a0, $a0, 2808
	add.d	$a0, $sp, $a0
	add.d	$s3, $a0, $s7
	ldx.w	$s4, $s7, $a0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 14
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	add.d	$s5, $a1, $a0
	addi.d	$s8, $s4, -1
	slli.w	$s2, $s4, 1
	ld.d	$fp, $s3, 24
	ld.w	$a1, $s3, 8
	ld.w	$a0, $s3, 4
	slt	$a2, $a7, $s2
	maskeqz	$a3, $s2, $a2
	masknez	$a2, $a7, $a2
	or	$a2, $a3, $a2
	addi.d	$a3, $zero, -1
	alsl.w	$s7, $s4, $a3, 1
	slli.d	$s0, $a2, 2
	b	.LBB1_136
	.p2align	4, , 16
.LBB1_135:                              # %BeamFirFilter_StrictFP.exit125
                                        #   in Loop: Header=BB1_136 Depth=2
	addi.d	$s1, $s1, 1
	ori	$a2, $zero, 512
	beq	$s1, $a2, .LBB1_3
.LBB1_136:                              # %for.body43
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_138 Depth 3
	slli.d	$a2, $s1, 4
	ldx.d	$a3, $a2, $t1
	sub.d	$a2, $s8, $a1
	slli.w	$a2, $a2, 1
	slli.d	$a4, $a2, 2
	stx.d	$a3, $fp, $a4
	blt	$s4, $a7, .LBB1_139
# %bb.137:                              # %for.body.lr.ph.i101
                                        #   in Loop: Header=BB1_136 Depth=2
	ld.d	$a4, $s3, 16
	move	$a3, $zero
	movgr2fr.w	$fa1, $zero
	addi.d	$a4, $a4, 4
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB1_138:                              # %for.body.i103
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_136 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	alsl.d	$a5, $a2, $fp, 2
	slli.d	$a6, $a2, 2
	fldx.s	$fa2, $fp, $a6
	fld.s	$fa3, $a5, 4
	fld.s	$fa4, $a4, -4
	fld.s	$fa5, $a4, 0
	fmul.s	$fa6, $fa2, $fa4
	fmul.s	$fa7, $fa3, $fa5
	fadd.s	$fa6, $fa6, $fa7
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa2, $fa2, $fa5
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa0, $fa0, $fa2
	addi.w	$a2, $a2, 2
	and	$a2, $a2, $s7
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 8
	blt	$a3, $s2, .LBB1_138
	b	.LBB1_140
	.p2align	4, , 16
.LBB1_139:                              #   in Loop: Header=BB1_136 Depth=2
	movgr2fr.w	$fa0, $zero
	fmov.s	$fa1, $fa0
.LBB1_140:                              # %for.end.i89
                                        #   in Loop: Header=BB1_136 Depth=2
	alsl.d	$a2, $s1, $s5, 3
	addi.d	$a1, $a1, 1
	and	$a1, $a1, $s8
	fst.s	$fa1, $a2, 0
	fst.s	$fa0, $a2, 4
	addi.w	$a2, $a0, 2
	addi.d	$a0, $a2, -1024
	sltu	$a3, $zero, $a0
	maskeqz	$a0, $a2, $a3
	maskeqz	$a1, $a1, $a3
	bne	$a2, $t2, .LBB1_135
# %bb.141:                              # %for.end.i89
                                        #   in Loop: Header=BB1_136 Depth=2
	blt	$s4, $a7, .LBB1_135
# %bb.142:                              # %for.body50.preheader.i99
                                        #   in Loop: Header=BB1_136 Depth=2
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$t2, $zero, 1024
	lu12i.w	$a0, 158
	ori	$a0, $a0, 2680
	add.d	$t1, $sp, $a0
	vldi	$vr8, -1168
	lu12i.w	$a0, 182
	ori	$a0, $a0, 2680
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB1_135
.LBB1_143:                              # %vector.body.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	xvld	$xr2, $a0, %pc_lo12(.LCPI1_1)
	ori	$a0, $zero, 512
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	xvrepli.d	$xr0, 24
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	.p2align	4, , 16
.LBB1_144:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa5, $a3, $a1
	fldx.s	$fa6, $a4, $a1
	fldx.s	$fa7, $a5, $a1
	fldx.s	$ft0, $a6, $a1
	fldx.s	$ft1, $a7, $a1
	fldx.s	$ft2, $t0, $a1
	fldx.s	$ft3, $t1, $a1
	fldx.s	$ft4, $t2, $a1
	xvmul.d	$xr13, $xr1, $xr0
	xvmul.d	$xr14, $xr2, $xr0
	xvpickve2gr.d	$a3, $xr14, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr14, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr14, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr14, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr13, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr13, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr13, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr13, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa5, $a3, $a2
	fstx.s	$fa6, $a4, $a2
	fstx.s	$fa7, $a5, $a2
	fstx.s	$ft0, $a6, $a2
	fstx.s	$ft1, $a7, $a2
	fstx.s	$ft2, $t0, $a2
	fstx.s	$ft3, $t1, $a2
	fstx.s	$ft4, $t2, $a2
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa3, $a3, $a1
	fldx.s	$fa4, $a4, $a1
	fldx.s	$fa5, $a5, $a1
	fldx.s	$fa6, $a6, $a1
	fldx.s	$fa7, $a7, $a1
	fldx.s	$ft0, $t0, $a1
	fldx.s	$ft1, $t1, $a1
	fldx.s	$ft2, $t2, $a1
	xvbitseti.d	$xr11, $xr13, 0
	xvbitseti.d	$xr12, $xr14, 0
	xvpickve2gr.d	$a3, $xr12, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr12, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr12, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr11, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr11, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa3, $a3, $a2
	fstx.s	$fa4, $a4, $a2
	fstx.s	$fa5, $a5, $a2
	fstx.s	$fa6, $a6, $a2
	fstx.s	$fa7, $a7, $a2
	fstx.s	$ft0, $t0, $a2
	fstx.s	$ft1, $t1, $a2
	fstx.s	$ft2, $t2, $a2
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB1_144
# %bb.145:                              # %for.inc95
	lu12i.w	$a0, 12
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr1, $a1, %pc_lo12(.LCPI1_0)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI1_1)
	ori	$a1, $zero, 512
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	xvrepli.d	$xr3, 3
	.p2align	4, , 16
.LBB1_146:                              # %vector.body281
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr4, $xr1, 1
	xvslli.d	$xr5, $xr2, 1
	xvpickve2gr.d	$a3, $xr5, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr5, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr5, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr5, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr4, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr4, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr4, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr4, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa6, $a0, $a3
	fldx.s	$fa7, $a0, $a4
	fldx.s	$ft0, $a0, $a5
	fldx.s	$ft1, $a0, $a6
	fldx.s	$ft2, $a0, $a7
	fldx.s	$ft3, $a0, $t0
	fldx.s	$ft4, $a0, $t1
	fldx.s	$ft5, $a0, $t2
	xvmul.d	$xr14, $xr2, $xr0
	xvmul.d	$xr15, $xr1, $xr0
	xvbitseti.d	$xr16, $xr15, 1
	xvbitseti.d	$xr17, $xr14, 1
	xvpickve2gr.d	$a3, $xr17, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr17, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr17, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr17, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr16, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr16, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr16, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr16, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa6, $a3, $a2
	fstx.s	$fa7, $a4, $a2
	fstx.s	$ft0, $a5, $a2
	fstx.s	$ft1, $a6, $a2
	fstx.s	$ft2, $a7, $a2
	fstx.s	$ft3, $t0, $a2
	fstx.s	$ft4, $t1, $a2
	fstx.s	$ft5, $t2, $a2
	xvbitseti.d	$xr4, $xr4, 0
	xvbitseti.d	$xr5, $xr5, 0
	xvpickve2gr.d	$a3, $xr5, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr5, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr5, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr5, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr4, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr4, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr4, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr4, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa4, $a0, $a3
	fldx.s	$fa5, $a0, $a4
	fldx.s	$fa6, $a0, $a5
	fldx.s	$fa7, $a0, $a6
	fldx.s	$ft0, $a0, $a7
	fldx.s	$ft1, $a0, $t0
	fldx.s	$ft2, $a0, $t1
	fldx.s	$ft3, $a0, $t2
	xvor.v	$xr12, $xr15, $xr3
	xvor.v	$xr13, $xr14, $xr3
	xvpickve2gr.d	$a3, $xr13, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr13, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr13, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr13, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr12, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr12, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr12, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr12, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa4, $a3, $a2
	fstx.s	$fa5, $a4, $a2
	fstx.s	$fa6, $a5, $a2
	fstx.s	$fa7, $a6, $a2
	fstx.s	$ft0, $a7, $a2
	fstx.s	$ft1, $t0, $a2
	fstx.s	$ft2, $t1, $a2
	fstx.s	$ft3, $t2, $a2
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a1, $a1, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a1, .LBB1_146
# %bb.147:                              # %for.inc95.1
	lu12i.w	$a0, 24
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr1, $a1, %pc_lo12(.LCPI1_0)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI1_1)
	ori	$a1, $zero, 512
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	xvrepli.d	$xr3, 5
	.p2align	4, , 16
.LBB1_148:                              # %vector.body290
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr4, $xr1, 1
	xvslli.d	$xr5, $xr2, 1
	xvpickve2gr.d	$a3, $xr5, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr5, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr5, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr5, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr4, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr4, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr4, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr4, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa6, $a0, $a3
	fldx.s	$fa7, $a0, $a4
	fldx.s	$ft0, $a0, $a5
	fldx.s	$ft1, $a0, $a6
	fldx.s	$ft2, $a0, $a7
	fldx.s	$ft3, $a0, $t0
	fldx.s	$ft4, $a0, $t1
	fldx.s	$ft5, $a0, $t2
	xvmul.d	$xr14, $xr2, $xr0
	xvmul.d	$xr15, $xr1, $xr0
	xvbitseti.d	$xr16, $xr15, 2
	xvbitseti.d	$xr17, $xr14, 2
	xvpickve2gr.d	$a3, $xr17, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr17, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr17, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr17, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr16, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr16, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr16, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr16, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa6, $a3, $a2
	fstx.s	$fa7, $a4, $a2
	fstx.s	$ft0, $a5, $a2
	fstx.s	$ft1, $a6, $a2
	fstx.s	$ft2, $a7, $a2
	fstx.s	$ft3, $t0, $a2
	fstx.s	$ft4, $t1, $a2
	fstx.s	$ft5, $t2, $a2
	xvbitseti.d	$xr4, $xr4, 0
	xvbitseti.d	$xr5, $xr5, 0
	xvpickve2gr.d	$a3, $xr5, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr5, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr5, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr5, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr4, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr4, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr4, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr4, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa4, $a0, $a3
	fldx.s	$fa5, $a0, $a4
	fldx.s	$fa6, $a0, $a5
	fldx.s	$fa7, $a0, $a6
	fldx.s	$ft0, $a0, $a7
	fldx.s	$ft1, $a0, $t0
	fldx.s	$ft2, $a0, $t1
	fldx.s	$ft3, $a0, $t2
	xvor.v	$xr12, $xr15, $xr3
	xvor.v	$xr13, $xr14, $xr3
	xvpickve2gr.d	$a3, $xr13, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr13, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr13, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr13, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr12, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr12, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr12, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr12, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa4, $a3, $a2
	fstx.s	$fa5, $a4, $a2
	fstx.s	$fa6, $a5, $a2
	fstx.s	$fa7, $a6, $a2
	fstx.s	$ft0, $a7, $a2
	fstx.s	$ft1, $t0, $a2
	fstx.s	$ft2, $t1, $a2
	fstx.s	$ft3, $t2, $a2
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a1, $a1, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a1, .LBB1_148
# %bb.149:                              # %for.inc95.2
	lu12i.w	$a0, 36
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr1, $a1, %pc_lo12(.LCPI1_0)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI1_1)
	ori	$a1, $zero, 512
	xvrepli.d	$xr3, 6
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	xvrepli.d	$xr4, 7
	.p2align	4, , 16
.LBB1_150:                              # %vector.body299
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr5, $xr1, 1
	xvslli.d	$xr6, $xr2, 1
	xvpickve2gr.d	$a3, $xr6, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr6, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr6, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr6, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr5, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr5, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr5, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr5, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa7, $a0, $a3
	fldx.s	$ft0, $a0, $a4
	fldx.s	$ft1, $a0, $a5
	fldx.s	$ft2, $a0, $a6
	fldx.s	$ft3, $a0, $a7
	fldx.s	$ft4, $a0, $t0
	fldx.s	$ft5, $a0, $t1
	fldx.s	$ft6, $a0, $t2
	xvmul.d	$xr15, $xr2, $xr0
	xvmul.d	$xr16, $xr1, $xr0
	xvor.v	$xr17, $xr16, $xr3
	xvor.v	$xr18, $xr15, $xr3
	xvpickve2gr.d	$a3, $xr18, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr18, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr18, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr18, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr17, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr17, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr17, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr17, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa7, $a3, $a2
	fstx.s	$ft0, $a4, $a2
	fstx.s	$ft1, $a5, $a2
	fstx.s	$ft2, $a6, $a2
	fstx.s	$ft3, $a7, $a2
	fstx.s	$ft4, $t0, $a2
	fstx.s	$ft5, $t1, $a2
	fstx.s	$ft6, $t2, $a2
	xvbitseti.d	$xr5, $xr5, 0
	xvbitseti.d	$xr6, $xr6, 0
	xvpickve2gr.d	$a3, $xr6, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr6, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr6, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr6, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr5, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr5, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr5, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr5, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa5, $a0, $a3
	fldx.s	$fa6, $a0, $a4
	fldx.s	$fa7, $a0, $a5
	fldx.s	$ft0, $a0, $a6
	fldx.s	$ft1, $a0, $a7
	fldx.s	$ft2, $a0, $t0
	fldx.s	$ft3, $a0, $t1
	fldx.s	$ft4, $a0, $t2
	xvor.v	$xr13, $xr16, $xr4
	xvor.v	$xr14, $xr15, $xr4
	xvpickve2gr.d	$a3, $xr14, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr14, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr14, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr14, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr13, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr13, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr13, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr13, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa5, $a3, $a2
	fstx.s	$fa6, $a4, $a2
	fstx.s	$fa7, $a5, $a2
	fstx.s	$ft0, $a6, $a2
	fstx.s	$ft1, $a7, $a2
	fstx.s	$ft2, $t0, $a2
	fstx.s	$ft3, $t1, $a2
	fstx.s	$ft4, $t2, $a2
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a1, $a1, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a1, .LBB1_150
# %bb.151:                              # %for.inc95.3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_0)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr2, $a0, %pc_lo12(.LCPI1_1)
	lu12i.w	$a0, 14
	ori	$a0, $a0, 2680
	add.d	$a0, $sp, $a0
	addu16i.d	$a0, $a0, 3
	ori	$a1, $zero, 512
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	.p2align	4, , 16
.LBB1_152:                              # %vector.body308
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa5, $a0, $a3
	fldx.s	$fa6, $a0, $a4
	fldx.s	$fa7, $a0, $a5
	fldx.s	$ft0, $a0, $a6
	fldx.s	$ft1, $a0, $a7
	fldx.s	$ft2, $a0, $t0
	fldx.s	$ft3, $a0, $t1
	fldx.s	$ft4, $a0, $t2
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 8
	xvaddi.du	$xr16, $xr13, 8
	xvpickve2gr.d	$a3, $xr16, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr16, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr16, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr15, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr15, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa5, $a3, $a2
	fstx.s	$fa6, $a4, $a2
	fstx.s	$fa7, $a5, $a2
	fstx.s	$ft0, $a6, $a2
	fstx.s	$ft1, $a7, $a2
	fstx.s	$ft2, $t0, $a2
	fstx.s	$ft3, $t1, $a2
	fstx.s	$ft4, $t2, $a2
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa3, $a0, $a3
	fldx.s	$fa4, $a0, $a4
	fldx.s	$fa5, $a0, $a5
	fldx.s	$fa6, $a0, $a6
	fldx.s	$fa7, $a0, $a7
	fldx.s	$ft0, $a0, $t0
	fldx.s	$ft1, $a0, $t1
	fldx.s	$ft2, $a0, $t2
	xvaddi.du	$xr11, $xr14, 9
	xvaddi.du	$xr12, $xr13, 9
	xvpickve2gr.d	$a3, $xr12, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr12, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr12, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr11, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr11, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa3, $a3, $a2
	fstx.s	$fa4, $a4, $a2
	fstx.s	$fa5, $a5, $a2
	fstx.s	$fa6, $a6, $a2
	fstx.s	$fa7, $a7, $a2
	fstx.s	$ft0, $t0, $a2
	fstx.s	$ft1, $t1, $a2
	fstx.s	$ft2, $t2, $a2
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a1, $a1, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a1, .LBB1_152
# %bb.153:                              # %for.inc95.4
	lu12i.w	$a0, 60
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr1, $a2, %pc_lo12(.LCPI1_0)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr2, $a2, %pc_lo12(.LCPI1_1)
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 512
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	.p2align	4, , 16
.LBB1_154:                              # %vector.body317
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa5, $a0, $a3
	fldx.s	$fa6, $a0, $a4
	fldx.s	$fa7, $a0, $a5
	fldx.s	$ft0, $a0, $a6
	fldx.s	$ft1, $a0, $a7
	fldx.s	$ft2, $a0, $t0
	fldx.s	$ft3, $a0, $t1
	fldx.s	$ft4, $a0, $t2
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 10
	xvaddi.du	$xr16, $xr13, 10
	xvpickve2gr.d	$a3, $xr16, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr16, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr16, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr15, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr15, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa5, $a3, $a2
	fstx.s	$fa6, $a4, $a2
	fstx.s	$fa7, $a5, $a2
	fstx.s	$ft0, $a6, $a2
	fstx.s	$ft1, $a7, $a2
	fstx.s	$ft2, $t0, $a2
	fstx.s	$ft3, $t1, $a2
	fstx.s	$ft4, $t2, $a2
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa3, $a0, $a3
	fldx.s	$fa4, $a0, $a4
	fldx.s	$fa5, $a0, $a5
	fldx.s	$fa6, $a0, $a6
	fldx.s	$fa7, $a0, $a7
	fldx.s	$ft0, $a0, $t0
	fldx.s	$ft1, $a0, $t1
	fldx.s	$ft2, $a0, $t2
	xvaddi.du	$xr11, $xr14, 11
	xvaddi.du	$xr12, $xr13, 11
	xvpickve2gr.d	$a3, $xr12, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr12, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr12, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr11, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr11, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa3, $a3, $a2
	fstx.s	$fa4, $a4, $a2
	fstx.s	$fa5, $a5, $a2
	fstx.s	$fa6, $a6, $a2
	fstx.s	$fa7, $a7, $a2
	fstx.s	$ft0, $t0, $a2
	fstx.s	$ft1, $t1, $a2
	fstx.s	$ft2, $t2, $a2
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a1, $a1, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a1, .LBB1_154
# %bb.155:                              # %for.inc95.5
	lu12i.w	$a0, 72
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr1, $a2, %pc_lo12(.LCPI1_0)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr2, $a2, %pc_lo12(.LCPI1_1)
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 512
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	.p2align	4, , 16
.LBB1_156:                              # %vector.body326
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa5, $a0, $a3
	fldx.s	$fa6, $a0, $a4
	fldx.s	$fa7, $a0, $a5
	fldx.s	$ft0, $a0, $a6
	fldx.s	$ft1, $a0, $a7
	fldx.s	$ft2, $a0, $t0
	fldx.s	$ft3, $a0, $t1
	fldx.s	$ft4, $a0, $t2
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 12
	xvaddi.du	$xr16, $xr13, 12
	xvpickve2gr.d	$a3, $xr16, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr16, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr16, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr15, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr15, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa5, $a3, $a2
	fstx.s	$fa6, $a4, $a2
	fstx.s	$fa7, $a5, $a2
	fstx.s	$ft0, $a6, $a2
	fstx.s	$ft1, $a7, $a2
	fstx.s	$ft2, $t0, $a2
	fstx.s	$ft3, $t1, $a2
	fstx.s	$ft4, $t2, $a2
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa3, $a0, $a3
	fldx.s	$fa4, $a0, $a4
	fldx.s	$fa5, $a0, $a5
	fldx.s	$fa6, $a0, $a6
	fldx.s	$fa7, $a0, $a7
	fldx.s	$ft0, $a0, $t0
	fldx.s	$ft1, $a0, $t1
	fldx.s	$ft2, $a0, $t2
	xvaddi.du	$xr11, $xr14, 13
	xvaddi.du	$xr12, $xr13, 13
	xvpickve2gr.d	$a3, $xr12, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr12, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr12, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr11, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr11, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa3, $a3, $a2
	fstx.s	$fa4, $a4, $a2
	fstx.s	$fa5, $a5, $a2
	fstx.s	$fa6, $a6, $a2
	fstx.s	$fa7, $a7, $a2
	fstx.s	$ft0, $t0, $a2
	fstx.s	$ft1, $t1, $a2
	fstx.s	$ft2, $t2, $a2
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a1, $a1, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a1, .LBB1_156
# %bb.157:                              # %for.inc95.6
	lu12i.w	$a0, 84
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr1, $a2, %pc_lo12(.LCPI1_0)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr2, $a2, %pc_lo12(.LCPI1_1)
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 512
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	.p2align	4, , 16
.LBB1_158:                              # %vector.body335
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa5, $a0, $a3
	fldx.s	$fa6, $a0, $a4
	fldx.s	$fa7, $a0, $a5
	fldx.s	$ft0, $a0, $a6
	fldx.s	$ft1, $a0, $a7
	fldx.s	$ft2, $a0, $t0
	fldx.s	$ft3, $a0, $t1
	fldx.s	$ft4, $a0, $t2
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 14
	xvaddi.du	$xr16, $xr13, 14
	xvpickve2gr.d	$a3, $xr16, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr16, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr16, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr15, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr15, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa5, $a3, $a2
	fstx.s	$fa6, $a4, $a2
	fstx.s	$fa7, $a5, $a2
	fstx.s	$ft0, $a6, $a2
	fstx.s	$ft1, $a7, $a2
	fstx.s	$ft2, $t0, $a2
	fstx.s	$ft3, $t1, $a2
	fstx.s	$ft4, $t2, $a2
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa3, $a0, $a3
	fldx.s	$fa4, $a0, $a4
	fldx.s	$fa5, $a0, $a5
	fldx.s	$fa6, $a0, $a6
	fldx.s	$fa7, $a0, $a7
	fldx.s	$ft0, $a0, $t0
	fldx.s	$ft1, $a0, $t1
	fldx.s	$ft2, $a0, $t2
	xvaddi.du	$xr11, $xr14, 15
	xvaddi.du	$xr12, $xr13, 15
	xvpickve2gr.d	$a3, $xr12, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr12, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr12, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr11, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr11, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa3, $a3, $a2
	fstx.s	$fa4, $a4, $a2
	fstx.s	$fa5, $a5, $a2
	fstx.s	$fa6, $a6, $a2
	fstx.s	$fa7, $a7, $a2
	fstx.s	$ft0, $t0, $a2
	fstx.s	$ft1, $t1, $a2
	fstx.s	$ft2, $t2, $a2
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a1, $a1, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a1, .LBB1_158
# %bb.159:                              # %for.inc95.7
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_0)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr2, $a0, %pc_lo12(.LCPI1_1)
	lu12i.w	$a0, 14
	ori	$a0, $a0, 2680
	add.d	$a0, $sp, $a0
	addu16i.d	$a0, $a0, 6
	ori	$a1, $zero, 512
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	.p2align	4, , 16
.LBB1_160:                              # %vector.body344
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa5, $a0, $a3
	fldx.s	$fa6, $a0, $a4
	fldx.s	$fa7, $a0, $a5
	fldx.s	$ft0, $a0, $a6
	fldx.s	$ft1, $a0, $a7
	fldx.s	$ft2, $a0, $t0
	fldx.s	$ft3, $a0, $t1
	fldx.s	$ft4, $a0, $t2
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 16
	xvaddi.du	$xr16, $xr13, 16
	xvpickve2gr.d	$a3, $xr16, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr16, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr16, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr15, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr15, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa5, $a3, $a2
	fstx.s	$fa6, $a4, $a2
	fstx.s	$fa7, $a5, $a2
	fstx.s	$ft0, $a6, $a2
	fstx.s	$ft1, $a7, $a2
	fstx.s	$ft2, $t0, $a2
	fstx.s	$ft3, $t1, $a2
	fstx.s	$ft4, $t2, $a2
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa3, $a0, $a3
	fldx.s	$fa4, $a0, $a4
	fldx.s	$fa5, $a0, $a5
	fldx.s	$fa6, $a0, $a6
	fldx.s	$fa7, $a0, $a7
	fldx.s	$ft0, $a0, $t0
	fldx.s	$ft1, $a0, $t1
	fldx.s	$ft2, $a0, $t2
	xvaddi.du	$xr11, $xr14, 17
	xvaddi.du	$xr12, $xr13, 17
	xvpickve2gr.d	$a3, $xr12, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr12, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr12, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr11, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr11, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa3, $a3, $a2
	fstx.s	$fa4, $a4, $a2
	fstx.s	$fa5, $a5, $a2
	fstx.s	$fa6, $a6, $a2
	fstx.s	$fa7, $a7, $a2
	fstx.s	$ft0, $t0, $a2
	fstx.s	$ft1, $t1, $a2
	fstx.s	$ft2, $t2, $a2
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a1, $a1, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a1, .LBB1_160
# %bb.161:                              # %for.inc95.8
	lu12i.w	$a0, 108
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr1, $a2, %pc_lo12(.LCPI1_0)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr2, $a2, %pc_lo12(.LCPI1_1)
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 512
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	.p2align	4, , 16
.LBB1_162:                              # %vector.body353
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa5, $a0, $a3
	fldx.s	$fa6, $a0, $a4
	fldx.s	$fa7, $a0, $a5
	fldx.s	$ft0, $a0, $a6
	fldx.s	$ft1, $a0, $a7
	fldx.s	$ft2, $a0, $t0
	fldx.s	$ft3, $a0, $t1
	fldx.s	$ft4, $a0, $t2
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 18
	xvaddi.du	$xr16, $xr13, 18
	xvpickve2gr.d	$a3, $xr16, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr16, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr16, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr15, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr15, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa5, $a3, $a2
	fstx.s	$fa6, $a4, $a2
	fstx.s	$fa7, $a5, $a2
	fstx.s	$ft0, $a6, $a2
	fstx.s	$ft1, $a7, $a2
	fstx.s	$ft2, $t0, $a2
	fstx.s	$ft3, $t1, $a2
	fstx.s	$ft4, $t2, $a2
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa3, $a0, $a3
	fldx.s	$fa4, $a0, $a4
	fldx.s	$fa5, $a0, $a5
	fldx.s	$fa6, $a0, $a6
	fldx.s	$fa7, $a0, $a7
	fldx.s	$ft0, $a0, $t0
	fldx.s	$ft1, $a0, $t1
	fldx.s	$ft2, $a0, $t2
	xvaddi.du	$xr11, $xr14, 19
	xvaddi.du	$xr12, $xr13, 19
	xvpickve2gr.d	$a3, $xr12, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr12, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr12, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr11, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr11, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa3, $a3, $a2
	fstx.s	$fa4, $a4, $a2
	fstx.s	$fa5, $a5, $a2
	fstx.s	$fa6, $a6, $a2
	fstx.s	$fa7, $a7, $a2
	fstx.s	$ft0, $t0, $a2
	fstx.s	$ft1, $t1, $a2
	fstx.s	$ft2, $t2, $a2
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a1, $a1, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a1, .LBB1_162
# %bb.163:                              # %for.inc95.9
	lu12i.w	$a0, 120
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr1, $a2, %pc_lo12(.LCPI1_0)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr2, $a2, %pc_lo12(.LCPI1_1)
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 512
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	.p2align	4, , 16
.LBB1_164:                              # %vector.body362
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa5, $a0, $a3
	fldx.s	$fa6, $a0, $a4
	fldx.s	$fa7, $a0, $a5
	fldx.s	$ft0, $a0, $a6
	fldx.s	$ft1, $a0, $a7
	fldx.s	$ft2, $a0, $t0
	fldx.s	$ft3, $a0, $t1
	fldx.s	$ft4, $a0, $t2
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 20
	xvaddi.du	$xr16, $xr13, 20
	xvpickve2gr.d	$a3, $xr16, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr16, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr16, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr15, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr15, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa5, $a3, $a2
	fstx.s	$fa6, $a4, $a2
	fstx.s	$fa7, $a5, $a2
	fstx.s	$ft0, $a6, $a2
	fstx.s	$ft1, $a7, $a2
	fstx.s	$ft2, $t0, $a2
	fstx.s	$ft3, $t1, $a2
	fstx.s	$ft4, $t2, $a2
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa3, $a0, $a3
	fldx.s	$fa4, $a0, $a4
	fldx.s	$fa5, $a0, $a5
	fldx.s	$fa6, $a0, $a6
	fldx.s	$fa7, $a0, $a7
	fldx.s	$ft0, $a0, $t0
	fldx.s	$ft1, $a0, $t1
	fldx.s	$ft2, $a0, $t2
	xvaddi.du	$xr11, $xr14, 21
	xvaddi.du	$xr12, $xr13, 21
	xvpickve2gr.d	$a3, $xr12, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr12, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr12, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr11, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr11, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa3, $a3, $a2
	fstx.s	$fa4, $a4, $a2
	fstx.s	$fa5, $a5, $a2
	fstx.s	$fa6, $a6, $a2
	fstx.s	$fa7, $a7, $a2
	fstx.s	$ft0, $t0, $a2
	fstx.s	$ft1, $t1, $a2
	fstx.s	$ft2, $t2, $a2
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a1, $a1, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a1, .LBB1_164
# %bb.165:                              # %for.inc95.10
	lu12i.w	$a0, 132
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr1, $a2, %pc_lo12(.LCPI1_0)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr2, $a2, %pc_lo12(.LCPI1_1)
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 512
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	.p2align	4, , 16
.LBB1_166:                              # %vector.body371
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa5, $a0, $a3
	fldx.s	$fa6, $a0, $a4
	fldx.s	$fa7, $a0, $a5
	fldx.s	$ft0, $a0, $a6
	fldx.s	$ft1, $a0, $a7
	fldx.s	$ft2, $a0, $t0
	fldx.s	$ft3, $a0, $t1
	fldx.s	$ft4, $a0, $t2
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 22
	xvaddi.du	$xr16, $xr13, 22
	xvpickve2gr.d	$a3, $xr16, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr16, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr16, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr15, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr15, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa5, $a3, $a2
	fstx.s	$fa6, $a4, $a2
	fstx.s	$fa7, $a5, $a2
	fstx.s	$ft0, $a6, $a2
	fstx.s	$ft1, $a7, $a2
	fstx.s	$ft2, $t0, $a2
	fstx.s	$ft3, $t1, $a2
	fstx.s	$ft4, $t2, $a2
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a3, $xr4, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr4, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	fldx.s	$fa3, $a0, $a3
	fldx.s	$fa4, $a0, $a4
	fldx.s	$fa5, $a0, $a5
	fldx.s	$fa6, $a0, $a6
	fldx.s	$fa7, $a0, $a7
	fldx.s	$ft0, $a0, $t0
	fldx.s	$ft1, $a0, $t1
	fldx.s	$ft2, $a0, $t2
	xvaddi.du	$xr11, $xr14, 23
	xvaddi.du	$xr12, $xr13, 23
	xvpickve2gr.d	$a3, $xr12, 0
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 1
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr12, 2
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr12, 3
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr11, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr11, 3
	slli.d	$t2, $t2, 2
	fstx.s	$fa3, $a3, $a2
	fstx.s	$fa4, $a4, $a2
	fstx.s	$fa5, $a5, $a2
	fstx.s	$fa6, $a6, $a2
	fstx.s	$fa7, $a7, $a2
	fstx.s	$ft0, $t0, $a2
	fstx.s	$ft1, $t1, $a2
	fstx.s	$ft2, $t2, $a2
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a1, $a1, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a1, .LBB1_166
# %bb.167:                              # %for.cond101.preheader.preheader
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(detector_out_StrictFP)
	addi.d	$a0, $a0, %pc_lo12(detector_out_StrictFP)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr0, $a0, %pc_lo12(.LCPI1_0)
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr0, $a0, %pc_lo12(.LCPI1_1)
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2296
	add.d	$s7, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2296
	add.d	$ra, $sp, $a0
	ori	$a0, $zero, 2296
	add.d	$s4, $sp, $a0
	.p2align	4, , 16
.LBB1_168:                              # %for.cond101.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_169 Depth 2
                                        #     Child Loop BB1_172 Depth 2
                                        #       Child Loop BB1_174 Depth 3
                                        #     Child Loop BB1_180 Depth 2
	alsl.d	$a0, $a1, $a1, 1
	slli.d	$a0, $a0, 5
	lu12i.w	$a2, 14
	ori	$a2, $a2, 2296
	add.d	$a2, $sp, $a2
	add.d	$a0, $a2, $a0
	xvldrepl.w	$xr0, $a0, 0
	xvst	$xr0, $sp, 208                  # 32-byte Folded Spill
	xvldrepl.w	$xr0, $a0, 4
	xvst	$xr0, $sp, 176                  # 32-byte Folded Spill
	xvldrepl.w	$xr2, $a0, 8
	xvldrepl.w	$xr3, $a0, 12
	xvldrepl.w	$xr4, $a0, 16
	xvldrepl.w	$xr5, $a0, 20
	xvldrepl.w	$xr6, $a0, 24
	xvldrepl.w	$xr7, $a0, 28
	xvldrepl.w	$xr8, $a0, 32
	xvldrepl.w	$xr9, $a0, 36
	xvldrepl.w	$xr10, $a0, 40
	xvldrepl.w	$xr11, $a0, 44
	xvldrepl.w	$xr12, $a0, 48
	xvldrepl.w	$xr13, $a0, 52
	xvldrepl.w	$xr14, $a0, 56
	xvldrepl.w	$xr15, $a0, 60
	xvldrepl.w	$xr16, $a0, 64
	xvldrepl.w	$xr17, $a0, 68
	xvldrepl.w	$xr18, $a0, 72
	xvldrepl.w	$xr19, $a0, 76
	xvldrepl.w	$xr20, $a0, 80
	xvldrepl.w	$xr21, $a0, 84
	xvldrepl.w	$xr22, $a0, 88
	xvldrepl.w	$xr23, $a0, 92
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 11
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 512
	xvld	$xr24, $sp, 64                  # 32-byte Folded Reload
	xvld	$xr25, $sp, 96                  # 32-byte Folded Reload
	.p2align	4, , 16
.LBB1_169:                              # %vector.body435
                                        #   Parent Loop BB1_168 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvrepli.d	$xr26, 96
	xvmul.d	$xr27, $xr25, $xr26
	xvmul.d	$xr26, $xr24, $xr26
	xvpickve2gr.d	$fp, $xr26, 0
	add.d	$t5, $s7, $fp
	xvpickve2gr.d	$s0, $xr26, 1
	add.d	$t6, $s7, $s0
	xvpickve2gr.d	$s1, $xr26, 2
	add.d	$t7, $s7, $s1
	xvpickve2gr.d	$s2, $xr26, 3
	add.d	$t8, $s7, $s2
	xvpickve2gr.d	$s3, $xr27, 0
	add.d	$t4, $s7, $s3
	xvpickve2gr.d	$s5, $xr27, 1
	add.d	$t3, $s7, $s5
	xvpickve2gr.d	$s6, $xr27, 2
	add.d	$t2, $s7, $s6
	xvpickve2gr.d	$s8, $xr27, 3
	add.d	$t1, $s7, $s8
	xvslli.d	$xr26, $xr25, 3
	xvslli.d	$xr27, $xr24, 3
	xvpickve2gr.d	$a1, $xr27, 0
	xvpickve2gr.d	$a2, $xr27, 1
	xvpickve2gr.d	$a3, $xr27, 2
	xvpickve2gr.d	$a4, $xr27, 3
	xvpickve2gr.d	$a5, $xr26, 0
	xvpickve2gr.d	$a6, $xr26, 1
	xvpickve2gr.d	$a7, $xr26, 2
	xvpickve2gr.d	$t0, $xr26, 3
	fldx.s	$fs3, $fp, $s7
	fldx.s	$fs2, $s0, $s7
	fldx.s	$fs4, $s1, $s7
	fldx.s	$fs5, $s2, $s7
	fldx.s	$fs6, $s3, $s7
	fldx.s	$fs7, $s5, $s7
	fldx.s	$fa0, $s6, $s7
	xvinsve0.w	$xr27, $xr26, 1
	fldx.s	$fs2, $s8, $s7
	xvinsve0.w	$xr27, $xr28, 2
	xvinsve0.w	$xr27, $xr29, 3
	xvinsve0.w	$xr27, $xr30, 4
	xvinsve0.w	$xr27, $xr31, 5
	xvinsve0.w	$xr27, $xr0, 6
	xvinsve0.w	$xr27, $xr26, 7
	xvld	$xr1, $sp, 208                  # 32-byte Folded Reload
	xvfmul.s	$xr0, $xr1, $xr27
	fld.s	$fs4, $t5, 4
	fld.s	$fs2, $t6, 4
	fld.s	$fs5, $t7, 4
	fld.s	$fs6, $t8, 4
	fld.s	$fs7, $t4, 4
	xvinsve0.w	$xr28, $xr26, 1
	fld.s	$fs2, $t3, 4
	xvinsve0.w	$xr28, $xr29, 2
	fld.s	$fs5, $t2, 4
	xvinsve0.w	$xr28, $xr30, 3
	fld.s	$fs6, $t1, 4
	xvinsve0.w	$xr28, $xr31, 4
	xvinsve0.w	$xr28, $xr26, 5
	xvinsve0.w	$xr28, $xr29, 6
	xvinsve0.w	$xr28, $xr30, 7
	xvld	$xr30, $sp, 176                 # 32-byte Folded Reload
	xvfmul.s	$xr26, $xr30, $xr28
	xvfsub.s	$xr0, $xr0, $xr26
	xvrepli.b	$xr29, 0
	xvfadd.s	$xr26, $xr0, $xr29
	xvfmul.s	$xr0, $xr1, $xr28
	xvfmul.s	$xr27, $xr27, $xr30
	xvfadd.s	$xr0, $xr27, $xr0
	xvfadd.s	$xr27, $xr0, $xr29
	fld.s	$fs4, $t5, 8
	fld.s	$fa0, $t6, 8
	fld.s	$fs5, $t7, 8
	fld.s	$fs6, $t8, 8
	fld.s	$fs7, $t4, 8
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t3, 8
	xvinsve0.w	$xr28, $xr29, 2
	fld.s	$fs5, $t2, 8
	xvinsve0.w	$xr28, $xr30, 3
	fld.s	$fs6, $t1, 8
	xvinsve0.w	$xr28, $xr31, 4
	xvinsve0.w	$xr28, $xr0, 5
	xvinsve0.w	$xr28, $xr29, 6
	fld.s	$fa0, $t5, 12
	fld.s	$fs5, $t6, 12
	xvinsve0.w	$xr28, $xr30, 7
	fld.s	$fs6, $t7, 12
	fld.s	$fs7, $t8, 12
	xvinsve0.w	$xr0, $xr29, 1
	fld.s	$fs5, $t4, 12
	xvinsve0.w	$xr0, $xr30, 2
	fld.s	$fs6, $t3, 12
	xvinsve0.w	$xr0, $xr31, 3
	fld.s	$fs7, $t2, 12
	xvinsve0.w	$xr0, $xr29, 4
	fld.s	$fs5, $t1, 12
	xvinsve0.w	$xr0, $xr30, 5
	xvfmul.s	$xr30, $xr2, $xr28
	xvinsve0.w	$xr0, $xr31, 6
	xvinsve0.w	$xr0, $xr29, 7
	xvfmul.s	$xr29, $xr3, $xr0
	xvfsub.s	$xr29, $xr30, $xr29
	xvfadd.s	$xr26, $xr26, $xr29
	xvfmul.s	$xr0, $xr2, $xr0
	xvfmul.s	$xr28, $xr28, $xr3
	xvfadd.s	$xr0, $xr28, $xr0
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t5, 16
	fld.s	$fa0, $t6, 16
	fld.s	$fs5, $t7, 16
	fld.s	$fs6, $t8, 16
	fld.s	$fs7, $t4, 16
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t3, 16
	xvinsve0.w	$xr28, $xr29, 2
	fld.s	$fs5, $t2, 16
	xvinsve0.w	$xr28, $xr30, 3
	fld.s	$fs6, $t1, 16
	xvinsve0.w	$xr28, $xr31, 4
	xvinsve0.w	$xr28, $xr0, 5
	xvinsve0.w	$xr28, $xr29, 6
	fld.s	$fa0, $t5, 20
	fld.s	$fs5, $t6, 20
	xvinsve0.w	$xr28, $xr30, 7
	fld.s	$fs6, $t7, 20
	fld.s	$fs7, $t8, 20
	xvinsve0.w	$xr0, $xr29, 1
	fld.s	$fs5, $t4, 20
	xvinsve0.w	$xr0, $xr30, 2
	fld.s	$fs6, $t3, 20
	xvinsve0.w	$xr0, $xr31, 3
	fld.s	$fs7, $t2, 20
	xvinsve0.w	$xr0, $xr29, 4
	fld.s	$fs5, $t1, 20
	xvinsve0.w	$xr0, $xr30, 5
	xvfmul.s	$xr30, $xr4, $xr28
	xvinsve0.w	$xr0, $xr31, 6
	xvinsve0.w	$xr0, $xr29, 7
	xvfmul.s	$xr29, $xr5, $xr0
	xvfsub.s	$xr29, $xr30, $xr29
	xvfadd.s	$xr26, $xr26, $xr29
	xvfmul.s	$xr0, $xr4, $xr0
	xvfmul.s	$xr28, $xr28, $xr5
	xvfadd.s	$xr0, $xr28, $xr0
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t5, 24
	fld.s	$fa0, $t6, 24
	fld.s	$fs5, $t7, 24
	fld.s	$fs6, $t8, 24
	fld.s	$fs7, $t4, 24
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t3, 24
	xvinsve0.w	$xr28, $xr29, 2
	fld.s	$fs5, $t2, 24
	xvinsve0.w	$xr28, $xr30, 3
	fld.s	$fs6, $t1, 24
	xvinsve0.w	$xr28, $xr31, 4
	xvinsve0.w	$xr28, $xr0, 5
	xvinsve0.w	$xr28, $xr29, 6
	fld.s	$fa0, $t5, 28
	fld.s	$fs5, $t6, 28
	xvinsve0.w	$xr28, $xr30, 7
	fld.s	$fs6, $t7, 28
	fld.s	$fs7, $t8, 28
	xvinsve0.w	$xr0, $xr29, 1
	fld.s	$fs5, $t4, 28
	xvinsve0.w	$xr0, $xr30, 2
	fld.s	$fs6, $t3, 28
	xvinsve0.w	$xr0, $xr31, 3
	fld.s	$fs7, $t2, 28
	xvinsve0.w	$xr0, $xr29, 4
	fld.s	$fs5, $t1, 28
	xvinsve0.w	$xr0, $xr30, 5
	xvfmul.s	$xr30, $xr6, $xr28
	xvinsve0.w	$xr0, $xr31, 6
	xvinsve0.w	$xr0, $xr29, 7
	xvfmul.s	$xr29, $xr7, $xr0
	xvfsub.s	$xr29, $xr30, $xr29
	xvfadd.s	$xr26, $xr26, $xr29
	xvfmul.s	$xr0, $xr6, $xr0
	xvfmul.s	$xr28, $xr28, $xr7
	xvfadd.s	$xr0, $xr28, $xr0
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t5, 32
	fld.s	$fa0, $t6, 32
	fld.s	$fs5, $t7, 32
	fld.s	$fs6, $t8, 32
	fld.s	$fs7, $t4, 32
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t3, 32
	xvinsve0.w	$xr28, $xr29, 2
	fld.s	$fs5, $t2, 32
	xvinsve0.w	$xr28, $xr30, 3
	fld.s	$fs6, $t1, 32
	xvinsve0.w	$xr28, $xr31, 4
	xvinsve0.w	$xr28, $xr0, 5
	xvinsve0.w	$xr28, $xr29, 6
	fld.s	$fa0, $t5, 36
	fld.s	$fs5, $t6, 36
	xvinsve0.w	$xr28, $xr30, 7
	fld.s	$fs6, $t7, 36
	fld.s	$fs7, $t8, 36
	xvinsve0.w	$xr0, $xr29, 1
	fld.s	$fs5, $t4, 36
	xvinsve0.w	$xr0, $xr30, 2
	fld.s	$fs6, $t3, 36
	xvinsve0.w	$xr0, $xr31, 3
	fld.s	$fs7, $t2, 36
	xvinsve0.w	$xr0, $xr29, 4
	fld.s	$fs5, $t1, 36
	xvinsve0.w	$xr0, $xr30, 5
	xvfmul.s	$xr30, $xr8, $xr28
	xvinsve0.w	$xr0, $xr31, 6
	xvinsve0.w	$xr0, $xr29, 7
	xvfmul.s	$xr29, $xr9, $xr0
	xvfsub.s	$xr29, $xr30, $xr29
	xvfadd.s	$xr26, $xr26, $xr29
	xvfmul.s	$xr0, $xr8, $xr0
	xvfmul.s	$xr28, $xr28, $xr9
	xvfadd.s	$xr0, $xr28, $xr0
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t5, 40
	fld.s	$fa0, $t6, 40
	fld.s	$fs5, $t7, 40
	fld.s	$fs6, $t8, 40
	fld.s	$fs7, $t4, 40
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t3, 40
	xvinsve0.w	$xr28, $xr29, 2
	fld.s	$fs5, $t2, 40
	xvinsve0.w	$xr28, $xr30, 3
	fld.s	$fs6, $t1, 40
	xvinsve0.w	$xr28, $xr31, 4
	xvinsve0.w	$xr28, $xr0, 5
	xvinsve0.w	$xr28, $xr29, 6
	fld.s	$fa0, $t5, 44
	fld.s	$fs5, $t6, 44
	xvinsve0.w	$xr28, $xr30, 7
	fld.s	$fs6, $t7, 44
	fld.s	$fs7, $t8, 44
	xvinsve0.w	$xr0, $xr29, 1
	fld.s	$fs5, $t4, 44
	xvinsve0.w	$xr0, $xr30, 2
	fld.s	$fs6, $t3, 44
	xvinsve0.w	$xr0, $xr31, 3
	fld.s	$fs7, $t2, 44
	xvinsve0.w	$xr0, $xr29, 4
	fld.s	$fs5, $t1, 44
	xvinsve0.w	$xr0, $xr30, 5
	xvfmul.s	$xr30, $xr10, $xr28
	xvinsve0.w	$xr0, $xr31, 6
	xvinsve0.w	$xr0, $xr29, 7
	xvfmul.s	$xr29, $xr11, $xr0
	xvfsub.s	$xr29, $xr30, $xr29
	xvfadd.s	$xr26, $xr26, $xr29
	xvfmul.s	$xr0, $xr10, $xr0
	xvfmul.s	$xr28, $xr28, $xr11
	xvfadd.s	$xr0, $xr28, $xr0
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t5, 48
	fld.s	$fa0, $t6, 48
	fld.s	$fs5, $t7, 48
	fld.s	$fs6, $t8, 48
	fld.s	$fs7, $t4, 48
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t3, 48
	xvinsve0.w	$xr28, $xr29, 2
	fld.s	$fs5, $t2, 48
	xvinsve0.w	$xr28, $xr30, 3
	fld.s	$fs6, $t1, 48
	xvinsve0.w	$xr28, $xr31, 4
	xvinsve0.w	$xr28, $xr0, 5
	xvinsve0.w	$xr28, $xr29, 6
	fld.s	$fa0, $t5, 52
	fld.s	$fs5, $t6, 52
	xvinsve0.w	$xr28, $xr30, 7
	fld.s	$fs6, $t7, 52
	fld.s	$fs7, $t8, 52
	xvinsve0.w	$xr0, $xr29, 1
	fld.s	$fs5, $t4, 52
	xvinsve0.w	$xr0, $xr30, 2
	fld.s	$fs6, $t3, 52
	xvinsve0.w	$xr0, $xr31, 3
	fld.s	$fs7, $t2, 52
	xvinsve0.w	$xr0, $xr29, 4
	fld.s	$fs5, $t1, 52
	xvinsve0.w	$xr0, $xr30, 5
	xvfmul.s	$xr30, $xr12, $xr28
	xvinsve0.w	$xr0, $xr31, 6
	xvinsve0.w	$xr0, $xr29, 7
	xvfmul.s	$xr29, $xr13, $xr0
	xvfsub.s	$xr29, $xr30, $xr29
	xvfadd.s	$xr26, $xr26, $xr29
	xvfmul.s	$xr0, $xr12, $xr0
	xvfmul.s	$xr28, $xr28, $xr13
	xvfadd.s	$xr0, $xr28, $xr0
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t5, 56
	fld.s	$fa0, $t6, 56
	fld.s	$fs5, $t7, 56
	fld.s	$fs6, $t8, 56
	fld.s	$fs7, $t4, 56
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t3, 56
	xvinsve0.w	$xr28, $xr29, 2
	fld.s	$fs5, $t2, 56
	xvinsve0.w	$xr28, $xr30, 3
	fld.s	$fs6, $t1, 56
	xvinsve0.w	$xr28, $xr31, 4
	xvinsve0.w	$xr28, $xr0, 5
	xvinsve0.w	$xr28, $xr29, 6
	fld.s	$fa0, $t5, 60
	fld.s	$fs5, $t6, 60
	xvinsve0.w	$xr28, $xr30, 7
	fld.s	$fs6, $t7, 60
	fld.s	$fs7, $t8, 60
	xvinsve0.w	$xr0, $xr29, 1
	fld.s	$fs5, $t4, 60
	xvinsve0.w	$xr0, $xr30, 2
	fld.s	$fs6, $t3, 60
	xvinsve0.w	$xr0, $xr31, 3
	fld.s	$fs7, $t2, 60
	xvinsve0.w	$xr0, $xr29, 4
	fld.s	$fs5, $t1, 60
	xvinsve0.w	$xr0, $xr30, 5
	xvfmul.s	$xr30, $xr14, $xr28
	xvinsve0.w	$xr0, $xr31, 6
	xvinsve0.w	$xr0, $xr29, 7
	xvfmul.s	$xr29, $xr15, $xr0
	xvfsub.s	$xr29, $xr30, $xr29
	xvfadd.s	$xr26, $xr26, $xr29
	xvfmul.s	$xr0, $xr14, $xr0
	xvfmul.s	$xr28, $xr28, $xr15
	xvfadd.s	$xr0, $xr28, $xr0
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t5, 64
	fld.s	$fa0, $t6, 64
	fld.s	$fs5, $t7, 64
	fld.s	$fs6, $t8, 64
	fld.s	$fs7, $t4, 64
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t3, 64
	xvinsve0.w	$xr28, $xr29, 2
	fld.s	$fs5, $t2, 64
	xvinsve0.w	$xr28, $xr30, 3
	fld.s	$fs6, $t1, 64
	xvinsve0.w	$xr28, $xr31, 4
	xvinsve0.w	$xr28, $xr0, 5
	xvinsve0.w	$xr28, $xr29, 6
	fld.s	$fa0, $t5, 68
	fld.s	$fs5, $t6, 68
	xvinsve0.w	$xr28, $xr30, 7
	fld.s	$fs6, $t7, 68
	fld.s	$fs7, $t8, 68
	xvinsve0.w	$xr0, $xr29, 1
	fld.s	$fs5, $t4, 68
	xvinsve0.w	$xr0, $xr30, 2
	fld.s	$fs6, $t3, 68
	xvinsve0.w	$xr0, $xr31, 3
	fld.s	$fs7, $t2, 68
	xvinsve0.w	$xr0, $xr29, 4
	fld.s	$fs5, $t1, 68
	xvinsve0.w	$xr0, $xr30, 5
	xvfmul.s	$xr30, $xr16, $xr28
	xvinsve0.w	$xr0, $xr31, 6
	xvinsve0.w	$xr0, $xr29, 7
	xvfmul.s	$xr29, $xr17, $xr0
	xvfsub.s	$xr29, $xr30, $xr29
	xvfadd.s	$xr26, $xr26, $xr29
	xvfmul.s	$xr0, $xr16, $xr0
	xvfmul.s	$xr28, $xr28, $xr17
	xvfadd.s	$xr0, $xr28, $xr0
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t5, 72
	fld.s	$fa0, $t6, 72
	fld.s	$fs5, $t7, 72
	fld.s	$fs6, $t8, 72
	fld.s	$fs7, $t4, 72
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t3, 72
	xvinsve0.w	$xr28, $xr29, 2
	fld.s	$fs5, $t2, 72
	xvinsve0.w	$xr28, $xr30, 3
	fld.s	$fs6, $t1, 72
	xvinsve0.w	$xr28, $xr31, 4
	xvinsve0.w	$xr28, $xr0, 5
	xvinsve0.w	$xr28, $xr29, 6
	fld.s	$fa0, $t5, 76
	fld.s	$fs5, $t6, 76
	xvinsve0.w	$xr28, $xr30, 7
	fld.s	$fs6, $t7, 76
	fld.s	$fs7, $t8, 76
	xvinsve0.w	$xr0, $xr29, 1
	fld.s	$fs5, $t4, 76
	xvinsve0.w	$xr0, $xr30, 2
	fld.s	$fs6, $t3, 76
	xvinsve0.w	$xr0, $xr31, 3
	fld.s	$fs7, $t2, 76
	xvinsve0.w	$xr0, $xr29, 4
	fld.s	$fs5, $t1, 76
	xvinsve0.w	$xr0, $xr30, 5
	xvfmul.s	$xr30, $xr18, $xr28
	xvinsve0.w	$xr0, $xr31, 6
	xvinsve0.w	$xr0, $xr29, 7
	xvfmul.s	$xr29, $xr19, $xr0
	xvfsub.s	$xr29, $xr30, $xr29
	xvfadd.s	$xr26, $xr26, $xr29
	xvfmul.s	$xr0, $xr18, $xr0
	xvfmul.s	$xr28, $xr28, $xr19
	xvfadd.s	$xr0, $xr28, $xr0
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t5, 80
	fld.s	$fa0, $t6, 80
	fld.s	$fs5, $t7, 80
	fld.s	$fs6, $t8, 80
	fld.s	$fs7, $t4, 80
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t3, 80
	xvinsve0.w	$xr28, $xr29, 2
	fld.s	$fs5, $t2, 80
	xvinsve0.w	$xr28, $xr30, 3
	fld.s	$fs6, $t1, 80
	xvinsve0.w	$xr28, $xr31, 4
	xvinsve0.w	$xr28, $xr0, 5
	xvinsve0.w	$xr28, $xr29, 6
	fld.s	$fa0, $t5, 84
	fld.s	$fs5, $t6, 84
	xvinsve0.w	$xr28, $xr30, 7
	fld.s	$fs6, $t7, 84
	fld.s	$fs7, $t8, 84
	xvinsve0.w	$xr0, $xr29, 1
	fld.s	$fs5, $t4, 84
	xvinsve0.w	$xr0, $xr30, 2
	fld.s	$fs6, $t3, 84
	xvinsve0.w	$xr0, $xr31, 3
	fld.s	$fs7, $t2, 84
	xvinsve0.w	$xr0, $xr29, 4
	fld.s	$fs5, $t1, 84
	xvinsve0.w	$xr0, $xr30, 5
	xvfmul.s	$xr30, $xr20, $xr28
	xvinsve0.w	$xr0, $xr31, 6
	xvinsve0.w	$xr0, $xr29, 7
	xvfmul.s	$xr29, $xr21, $xr0
	xvfsub.s	$xr29, $xr30, $xr29
	xvfadd.s	$xr26, $xr26, $xr29
	xvfmul.s	$xr0, $xr20, $xr0
	xvfmul.s	$xr28, $xr28, $xr21
	xvfadd.s	$xr0, $xr28, $xr0
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t5, 88
	fld.s	$fa0, $t6, 88
	fld.s	$fs5, $t7, 88
	fld.s	$fs6, $t8, 88
	fld.s	$fs7, $t4, 88
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t3, 88
	xvinsve0.w	$xr28, $xr29, 2
	fld.s	$fs5, $t2, 88
	xvinsve0.w	$xr28, $xr30, 3
	fld.s	$fs6, $t1, 88
	xvinsve0.w	$xr28, $xr31, 4
	xvinsve0.w	$xr28, $xr0, 5
	xvinsve0.w	$xr28, $xr29, 6
	fld.s	$fa0, $t5, 92
	fld.s	$fs5, $t6, 92
	xvinsve0.w	$xr28, $xr30, 7
	fld.s	$fs6, $t7, 92
	fld.s	$fs7, $t8, 92
	xvinsve0.w	$xr0, $xr29, 1
	fld.s	$fs5, $t4, 92
	xvinsve0.w	$xr0, $xr30, 2
	fld.s	$fs6, $t3, 92
	xvinsve0.w	$xr0, $xr31, 3
	fld.s	$fs7, $t2, 92
	xvinsve0.w	$xr0, $xr29, 4
	fld.s	$fs5, $t1, 92
	xvinsve0.w	$xr0, $xr30, 5
	xvinsve0.w	$xr0, $xr31, 6
	xvfmul.s	$xr30, $xr22, $xr28
	xvinsve0.w	$xr0, $xr29, 7
	xvfmul.s	$xr29, $xr23, $xr0
	xvfsub.s	$xr29, $xr30, $xr29
	xvfadd.s	$xr26, $xr26, $xr29
	xvfmul.s	$xr0, $xr22, $xr0
	xvfmul.s	$xr28, $xr28, $xr23
	xvfadd.s	$xr0, $xr28, $xr0
	xvfadd.s	$xr0, $xr27, $xr0
	add.d	$a1, $ra, $a1
	add.d	$a2, $ra, $a2
	add.d	$a3, $ra, $a3
	add.d	$a4, $ra, $a4
	add.d	$a5, $ra, $a5
	add.d	$a6, $ra, $a6
	add.d	$a7, $ra, $a7
	add.d	$t0, $ra, $t0
	xvstelm.w	$xr26, $a1, 0, 0
	xvstelm.w	$xr26, $a2, 0, 1
	xvstelm.w	$xr26, $a3, 0, 2
	xvstelm.w	$xr26, $a4, 0, 3
	xvstelm.w	$xr26, $a5, 0, 4
	xvstelm.w	$xr26, $a6, 0, 5
	xvstelm.w	$xr26, $a7, 0, 6
	xvstelm.w	$xr26, $t0, 0, 7
	xvstelm.w	$xr0, $a1, 4, 0
	xvstelm.w	$xr0, $a2, 4, 1
	xvstelm.w	$xr0, $a3, 4, 2
	xvstelm.w	$xr0, $a4, 4, 3
	xvstelm.w	$xr0, $a5, 4, 4
	xvstelm.w	$xr0, $a6, 4, 5
	xvstelm.w	$xr0, $a7, 4, 6
	xvstelm.w	$xr0, $t0, 4, 7
	xvaddi.du	$xr24, $xr24, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr25, $xr25, 8
	bnez	$a0, .LBB1_169
# %bb.170:                              # %for.cond119.preheader
                                        #   in Loop: Header=BB1_168 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 5
	lu12i.w	$a1, 206
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	ldx.w	$s2, $a0, $a1
	move	$fp, $zero
	add.d	$s5, $a1, $a0
	addi.d	$s3, $s2, -1
	slli.w	$s6, $s2, 1
	ld.d	$s0, $s5, 24
	ld.w	$a1, $s5, 8
	ld.w	$a0, $s5, 4
	ori	$a7, $zero, 1
	slt	$a2, $a7, $s6
	maskeqz	$a3, $s6, $a2
	masknez	$a2, $a7, $a2
	or	$a2, $a3, $a2
	addi.d	$a3, $zero, -1
	alsl.w	$s8, $s2, $a3, 1
	slli.d	$s1, $a2, 2
	ori	$t0, $zero, 512
	b	.LBB1_172
	.p2align	4, , 16
.LBB1_171:                              # %BeamFirFilter_StrictFP.exit179
                                        #   in Loop: Header=BB1_172 Depth=2
	addi.d	$fp, $fp, 1
	beq	$fp, $t0, .LBB1_179
.LBB1_172:                              # %for.body121
                                        #   Parent Loop BB1_168 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_174 Depth 3
	slli.d	$a2, $fp, 3
	ldx.d	$a3, $a2, $ra
	sub.d	$a2, $s3, $a1
	slli.w	$a2, $a2, 1
	slli.d	$a4, $a2, 2
	stx.d	$a3, $s0, $a4
	blt	$s2, $a7, .LBB1_175
# %bb.173:                              # %for.body.lr.ph.i155
                                        #   in Loop: Header=BB1_172 Depth=2
	ld.d	$a4, $s5, 16
	move	$a3, $zero
	movgr2fr.w	$fa1, $zero
	addi.d	$a4, $a4, 4
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB1_174:                              # %for.body.i157
                                        #   Parent Loop BB1_168 Depth=1
                                        #     Parent Loop BB1_172 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	alsl.d	$a5, $a2, $s0, 2
	slli.d	$a6, $a2, 2
	fldx.s	$fa2, $s0, $a6
	fld.s	$fa3, $a5, 4
	fld.s	$fa4, $a4, -4
	fld.s	$fa5, $a4, 0
	fmul.s	$fa6, $fa2, $fa4
	fmul.s	$fa7, $fa3, $fa5
	fadd.s	$fa6, $fa6, $fa7
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa2, $fa2, $fa5
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa0, $fa0, $fa2
	addi.w	$a2, $a2, 2
	and	$a2, $a2, $s8
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 8
	blt	$a3, $s6, .LBB1_174
	b	.LBB1_176
	.p2align	4, , 16
.LBB1_175:                              #   in Loop: Header=BB1_172 Depth=2
	movgr2fr.w	$fa0, $zero
	fmov.s	$fa1, $fa0
.LBB1_176:                              # %for.end.i143
                                        #   in Loop: Header=BB1_172 Depth=2
	alsl.d	$a2, $fp, $s4, 3
	addi.d	$a1, $a1, 1
	and	$a1, $a1, $s3
	fst.s	$fa1, $a2, 0
	fst.s	$fa0, $a2, 4
	addi.w	$a2, $a0, 1
	addi.d	$a0, $a2, -512
	sltu	$a3, $zero, $a0
	maskeqz	$a0, $a2, $a3
	maskeqz	$a1, $a1, $a3
	bne	$a2, $t0, .LBB1_171
# %bb.177:                              # %for.end.i143
                                        #   in Loop: Header=BB1_172 Depth=2
	blt	$s2, $a7, .LBB1_171
# %bb.178:                              # %for.body50.preheader.i153
                                        #   in Loop: Header=BB1_172 Depth=2
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 512
	ori	$a7, $zero, 1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2296
	add.d	$ra, $sp, $a0
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB1_171
	.p2align	4, , 16
.LBB1_179:                              # %for.body.i180.preheader
                                        #   in Loop: Header=BB1_168 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.LCPI1_0)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	xvld	$xr1, $a2, %pc_lo12(.LCPI1_1)
	move	$a2, $zero
	st.w	$a1, $s5, 8
	st.w	$a0, $s5, 4
	addi.d	$fp, $sp, 248
	ori	$s0, $zero, 2048
	.p2align	4, , 16
.LBB1_180:                              # %vector.body380
                                        #   Parent Loop BB1_168 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr2, $xr0, 3
	xvslli.d	$xr3, $xr1, 3
	xvpickve2gr.d	$a0, $xr3, 0
	add.d	$a1, $s4, $a0
	xvpickve2gr.d	$a3, $xr3, 1
	add.d	$a4, $s4, $a3
	xvpickve2gr.d	$a5, $xr3, 2
	add.d	$a6, $s4, $a5
	xvpickve2gr.d	$a7, $xr3, 3
	add.d	$t0, $s4, $a7
	xvpickve2gr.d	$t1, $xr2, 0
	add.d	$t2, $s4, $t1
	xvpickve2gr.d	$t3, $xr2, 1
	add.d	$t4, $s4, $t3
	xvpickve2gr.d	$t5, $xr2, 2
	add.d	$t6, $s4, $t5
	xvpickve2gr.d	$t7, $xr2, 3
	add.d	$t8, $s4, $t7
	fldx.s	$fa2, $a0, $s4
	fldx.s	$fa3, $a3, $s4
	fldx.s	$fa4, $a5, $s4
	fldx.s	$fa5, $a7, $s4
	fldx.s	$fa6, $t1, $s4
	fldx.s	$fa7, $t3, $s4
	fldx.s	$ft0, $t5, $s4
	fldx.s	$ft1, $t7, $s4
	xvinsve0.w	$xr2, $xr3, 1
	xvinsve0.w	$xr2, $xr4, 2
	xvinsve0.w	$xr2, $xr5, 3
	xvinsve0.w	$xr2, $xr6, 4
	xvinsve0.w	$xr2, $xr7, 5
	xvinsve0.w	$xr2, $xr8, 6
	xvinsve0.w	$xr2, $xr9, 7
	xvfmul.s	$xr2, $xr2, $xr2
	fld.s	$fa3, $a1, 4
	fld.s	$fa4, $a4, 4
	fld.s	$fa5, $a6, 4
	fld.s	$fa6, $t0, 4
	fld.s	$fa7, $t2, 4
	fld.s	$ft0, $t4, 4
	fld.s	$ft1, $t6, 4
	fld.s	$ft2, $t8, 4
	xvinsve0.w	$xr3, $xr4, 1
	xvinsve0.w	$xr3, $xr5, 2
	xvinsve0.w	$xr3, $xr6, 3
	xvinsve0.w	$xr3, $xr7, 4
	xvinsve0.w	$xr3, $xr8, 5
	xvinsve0.w	$xr3, $xr9, 6
	xvinsve0.w	$xr3, $xr10, 7
	xvfmul.s	$xr3, $xr3, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvfsqrt.s	$xr2, $xr2
	xvstx	$xr2, $a2, $fp
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a2, $a2, 32
	xvaddi.du	$xr0, $xr0, 8
	bne	$a2, $s0, .LBB1_180
# %bb.181:                              # %Magnitude_StrictFP.exit
                                        #   in Loop: Header=BB1_168 Depth=1
	addi.d	$a1, $sp, 248
	ori	$a2, $zero, 2048
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2296
	add.d	$ra, $sp, $a0
	ori	$a0, $zero, 4
	bne	$a1, $a0, .LBB1_168
# %bb.182:                              # %for.end143
	lu12i.w	$a0, 206
	ori	$a0, $a0, 1696
	add.d	$sp, $sp, $a0
	fld.d	$fs7, $sp, 1880                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	begin_StrictFP, .Lfunc_end1-begin_StrictFP
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function begin
.LCPI2_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI2_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_2:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	begin
	.p2align	5
	.type	begin,@function
begin:                                  # @begin
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1880                 # 8-byte Folded Spill
	lu12i.w	$a0, 208
	ori	$a0, $a0, 1776
	sub.d	$sp, $sp, $a0
	move	$s0, $zero
	lu12i.w	$a0, 184
	ori	$a0, $a0, 2760
	add.d	$a0, $sp, $a0
	addu16i.d	$a1, $a0, 1
	addi.d	$s8, $a1, 4
	lu12i.w	$a1, 8
	ori	$a1, $a1, 4
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	lu12i.w	$a0, 208
	ori	$a0, $a0, 3272
	add.d	$s2, $sp, $a0
	ori	$s3, $zero, 64
	lu12i.w	$s1, 260096
	lu12i.w	$a0, 208
	ori	$a0, $a0, 2888
	add.d	$s4, $sp, $a0
	ori	$s5, $zero, 384
	.p2align	4, , 16
.LBB2_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s2, $s0
	stx.d	$s3, $s0, $s2
	st.w	$zero, $s6, 8
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s6, 16
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 24
	st.w	$s1, $fp, 0
	addi.d	$a1, $fp, 4
	addi.d	$fp, $a0, 4
	ori	$a2, $zero, 508
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 508
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s6, $s4, $s0
	stx.d	$s3, $s0, $s4
	st.w	$zero, $s6, 8
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s6, 16
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 24
	st.w	$s1, $fp, 0
	addi.d	$a1, $fp, 4
	addi.d	$fp, $a0, 4
	ori	$a2, $zero, 508
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 508
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 32
	bne	$s0, $s5, .LBB2_1
# %bb.2:                                # %for.body5.preheader
	ori	$fp, $zero, 512
	lu12i.w	$a0, 208
	ori	$a0, $a0, 2760
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	lu12i.w	$a0, 208
	ori	$a0, $a0, 2768
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$s2, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	lu12i.w	$a1, 208
	ori	$a1, $a1, 2776
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 208
	ori	$a1, $a1, 2784
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	st.w	$s1, $s0, 0
	addi.d	$a1, $s0, 4
	addi.d	$s0, $a0, 4
	ori	$a2, $zero, 4092
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4092
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 16
	ori	$a0, $a0, 2376
	add.d	$a1, $sp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(BeamFormWeights)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 208
	ori	$a0, $a0, 2792
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	lu12i.w	$a0, 208
	ori	$a0, $a0, 2800
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	lu12i.w	$a1, 208
	ori	$a1, $a1, 2808
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 208
	ori	$a1, $a1, 2816
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	st.w	$s1, $s0, 0
	addi.d	$a1, $s0, 4
	addi.d	$s0, $a0, 4
	ori	$a2, $zero, 4092
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4092
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 16
	ori	$a0, $a0, 2472
	add.d	$a1, $sp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(BeamFormWeights)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 208
	ori	$a0, $a0, 2824
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	lu12i.w	$a0, 208
	ori	$a0, $a0, 2832
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	lu12i.w	$a1, 208
	ori	$a1, $a1, 2840
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 208
	ori	$a1, $a1, 2848
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	st.w	$s1, $s0, 0
	addi.d	$a1, $s0, 4
	addi.d	$s0, $a0, 4
	ori	$a2, $zero, 4092
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4092
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 16
	ori	$a0, $a0, 2568
	add.d	$a1, $sp, $a0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(BeamFormWeights)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 208
	ori	$a0, $a0, 2856
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	lu12i.w	$a0, 208
	ori	$a0, $a0, 2864
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	lu12i.w	$a1, 208
	ori	$a1, $a1, 2872
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 208
	ori	$a1, $a1, 2880
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	st.w	$s1, $s0, 0
	addi.d	$a1, $s0, 4
	addi.d	$s0, $a0, 4
	ori	$a2, $zero, 4092
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4092
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 16
	ori	$a0, $a0, 2664
	add.d	$a1, $sp, $a0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(BeamFormWeights)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 12
	lu12i.w	$a1, 16
	ori	$a1, $a1, 2760
	add.d	$a1, $sp, $a1
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 24
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 36
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addu16i.d	$a0, $a1, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 60
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 72
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 84
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addu16i.d	$a0, $a1, 6
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 108
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 120
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 132
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a1, 6
	ori	$a0, $a1, 4
	lu12i.w	$a2, 184
	ori	$a2, $a2, 2760
	add.d	$s3, $sp, $a2
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$s4, 2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.d	$a2, $a0, $s4
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	lu12i.w	$a2, 4
	add.d	$a3, $a0, $a2
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	add.d	$a0, $s8, $s4
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $s8, $a2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	add.d	$a0, $s8, $a1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$a0, $s4, 4
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a0, 268288
	lu32i.d	$a0, -524288
	lu52i.d	$a0, $a0, 1048
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$a0, $a2, 4
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$t0, $zero, 1024
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #       Child Loop BB2_15 Depth 3
                                        #       Child Loop BB2_25 Depth 3
                                        #       Child Loop BB2_35 Depth 3
                                        #       Child Loop BB2_45 Depth 3
                                        #       Child Loop BB2_55 Depth 3
                                        #       Child Loop BB2_65 Depth 3
                                        #       Child Loop BB2_75 Depth 3
                                        #       Child Loop BB2_85 Depth 3
                                        #       Child Loop BB2_95 Depth 3
                                        #       Child Loop BB2_105 Depth 3
                                        #       Child Loop BB2_115 Depth 3
                                        #       Child Loop BB2_125 Depth 3
                                        #       Child Loop BB2_10 Depth 3
                                        #       Child Loop BB2_20 Depth 3
                                        #       Child Loop BB2_30 Depth 3
                                        #       Child Loop BB2_40 Depth 3
                                        #       Child Loop BB2_50 Depth 3
                                        #       Child Loop BB2_60 Depth 3
                                        #       Child Loop BB2_70 Depth 3
                                        #       Child Loop BB2_80 Depth 3
                                        #       Child Loop BB2_90 Depth 3
                                        #       Child Loop BB2_100 Depth 3
                                        #       Child Loop BB2_110 Depth 3
                                        #       Child Loop BB2_120 Depth 3
                                        #       Child Loop BB2_130 Depth 3
                                        #         Child Loop BB2_132 Depth 4
                                        #       Child Loop BB2_139 Depth 3
                                        #         Child Loop BB2_141 Depth 4
                                        #     Child Loop BB2_147 Depth 2
                                        #     Child Loop BB2_149 Depth 2
                                        #     Child Loop BB2_151 Depth 2
                                        #     Child Loop BB2_153 Depth 2
                                        #     Child Loop BB2_155 Depth 2
                                        #     Child Loop BB2_157 Depth 2
                                        #     Child Loop BB2_159 Depth 2
                                        #     Child Loop BB2_161 Depth 2
                                        #     Child Loop BB2_163 Depth 2
                                        #     Child Loop BB2_165 Depth 2
                                        #     Child Loop BB2_167 Depth 2
                                        #     Child Loop BB2_169 Depth 2
                                        #     Child Loop BB2_171 Depth 2
                                        #       Child Loop BB2_172 Depth 3
                                        #       Child Loop BB2_175 Depth 3
                                        #         Child Loop BB2_177 Depth 4
                                        #       Child Loop BB2_183 Depth 3
                                        #     Child Loop BB2_186 Depth 2
	pcalau12i	$a1, %pc_hi20(numiters)
	ld.w	$a0, $a1, %pc_lo12(numiters)
	addi.w	$a2, $zero, -1
	ori	$a7, $zero, 1
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	beq	$a0, $a2, .LBB2_5
# %bb.4:                                # %lor.rhs
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a2, $a0, -1
	st.w	$a2, $a1, %pc_lo12(numiters)
	blt	$a0, $a7, .LBB2_191
.LBB2_5:                                # %for.cond18.preheader.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$s2, $zero
	move	$s5, $zero
	vldi	$vr7, -1168
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %for.inc62
                                        #   in Loop: Header=BB2_7 Depth=2
	st.w	$a1, $s7, 8
	st.w	$a0, $s7, 4
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	addi.d	$s5, $s5, 1
	addi.d	$s2, $s2, 1
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	lu12i.w	$a0, 184
	ori	$a0, $a0, 2760
	add.d	$s3, $sp, $a0
	lu12i.w	$s4, 2
	ori	$a0, $zero, 12
	beq	$s5, $a0, .LBB2_146
.LBB2_7:                                # %for.cond18.preheader
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_15 Depth 3
                                        #       Child Loop BB2_25 Depth 3
                                        #       Child Loop BB2_35 Depth 3
                                        #       Child Loop BB2_45 Depth 3
                                        #       Child Loop BB2_55 Depth 3
                                        #       Child Loop BB2_65 Depth 3
                                        #       Child Loop BB2_75 Depth 3
                                        #       Child Loop BB2_85 Depth 3
                                        #       Child Loop BB2_95 Depth 3
                                        #       Child Loop BB2_105 Depth 3
                                        #       Child Loop BB2_115 Depth 3
                                        #       Child Loop BB2_125 Depth 3
                                        #       Child Loop BB2_10 Depth 3
                                        #       Child Loop BB2_20 Depth 3
                                        #       Child Loop BB2_30 Depth 3
                                        #       Child Loop BB2_40 Depth 3
                                        #       Child Loop BB2_50 Depth 3
                                        #       Child Loop BB2_60 Depth 3
                                        #       Child Loop BB2_70 Depth 3
                                        #       Child Loop BB2_80 Depth 3
                                        #       Child Loop BB2_90 Depth 3
                                        #       Child Loop BB2_100 Depth 3
                                        #       Child Loop BB2_110 Depth 3
                                        #       Child Loop BB2_120 Depth 3
                                        #       Child Loop BB2_130 Depth 3
                                        #         Child Loop BB2_132 Depth 4
                                        #       Child Loop BB2_139 Depth 3
                                        #         Child Loop BB2_141 Depth 4
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$fp, $zero
	bne	$s5, $a7, .LBB2_14
# %bb.8:                                # %for.body.i.us.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	ori	$s0, $zero, 1024
	lu12i.w	$a0, 184
	ori	$a0, $a0, 2764
	add.d	$s1, $sp, $a0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ori	$a1, $zero, 768
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %if.then.i.us
                                        #   in Loop: Header=BB2_10 Depth=3
	lu12i.w	$a2, 185
	ori	$a2, $a2, 712
	add.d	$a2, $sp, $a2
	stptr.d	$s4, $a2, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB2_18
.LBB2_10:                               # %for.body.i.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $a1, .LBB2_9
# %bb.11:                               # %if.else.i.us
                                        #   in Loop: Header=BB2_10 Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_13
.LBB2_12:                               # %if.else.i.us.split
                                        #   in Loop: Header=BB2_10 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB2_10
	b	.LBB2_18
.LBB2_13:                               # %call.sqrt
                                        #   in Loop: Header=BB2_10 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ori	$a1, $zero, 768
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_14:                               # %for.body20.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	lu12i.w	$s0, -2
	lu12i.w	$s1, 6
	.p2align	4, , 16
.LBB2_15:                               # %for.body.us.i
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_17
.LBB2_16:                               # %for.body.us.i.split
                                        #   in Loop: Header=BB2_15 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	add.d	$a0, $s3, $s0
	fstx.s	$fa1, $a0, $s4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a0, $a2
	addi.d	$s0, $s0, 8
	add.w	$fp, $fp, $s2
	bnez	$s0, .LBB2_15
	b	.LBB2_24
.LBB2_17:                               # %call.sqrt740
                                        #   in Loop: Header=BB2_15 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ori	$a7, $zero, 1
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_18:                               # %for.body.i.us.1.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_19:                               # %if.then.i.us.1
                                        #   in Loop: Header=BB2_20 Depth=3
	lu12i.w	$a2, 187
	ori	$a2, $a2, 712
	add.d	$a2, $sp, $a2
	stptr.d	$s4, $a2, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB2_28
.LBB2_20:                               # %for.body.i.us.1
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $a1, .LBB2_19
# %bb.21:                               # %if.else.i.us.1
                                        #   in Loop: Header=BB2_20 Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_23
.LBB2_22:                               # %if.else.i.us.1.split
                                        #   in Loop: Header=BB2_20 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB2_20
	b	.LBB2_28
.LBB2_23:                               # %call.sqrt729
                                        #   in Loop: Header=BB2_20 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ori	$a1, $zero, 768
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_24:                               # %for.body.us.i.1.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	lu12i.w	$s0, -2
	lu12i.w	$s4, 4
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_25:                               # %for.body.us.i.1
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_27
.LBB2_26:                               # %for.body.us.i.1.split
                                        #   in Loop: Header=BB2_25 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	add.d	$a0, $s3, $s0
	fstx.s	$fa1, $a0, $s4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a0, $a2
	addi.d	$s0, $s0, 8
	add.w	$fp, $fp, $s2
	bnez	$s0, .LBB2_25
	b	.LBB2_34
.LBB2_27:                               # %call.sqrt741
                                        #   in Loop: Header=BB2_25 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	vldi	$vr7, -1168
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ori	$a7, $zero, 1
	b	.LBB2_26
	.p2align	4, , 16
.LBB2_28:                               # %for.body.i.us.2.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_29:                               # %if.then.i.us.2
                                        #   in Loop: Header=BB2_30 Depth=3
	lu12i.w	$a2, 189
	ori	$a2, $a2, 712
	add.d	$a2, $sp, $a2
	stptr.d	$s4, $a2, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB2_38
.LBB2_30:                               # %for.body.i.us.2
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $a1, .LBB2_29
# %bb.31:                               # %if.else.i.us.2
                                        #   in Loop: Header=BB2_30 Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_33
.LBB2_32:                               # %if.else.i.us.2.split
                                        #   in Loop: Header=BB2_30 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB2_30
	b	.LBB2_38
.LBB2_33:                               # %call.sqrt730
                                        #   in Loop: Header=BB2_30 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ori	$a1, $zero, 768
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_34:                               # %for.body.us.i.2.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	lu12i.w	$s0, -2
	.p2align	4, , 16
.LBB2_35:                               # %for.body.us.i.2
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_37
.LBB2_36:                               # %for.body.us.i.2.split
                                        #   in Loop: Header=BB2_35 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	add.d	$a0, $s3, $s0
	fstx.s	$fa1, $a0, $s1
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a0, $a1
	addi.d	$s0, $s0, 8
	add.w	$fp, $fp, $s2
	bnez	$s0, .LBB2_35
	b	.LBB2_44
.LBB2_37:                               # %call.sqrt742
                                        #   in Loop: Header=BB2_35 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ori	$a7, $zero, 1
	b	.LBB2_36
	.p2align	4, , 16
.LBB2_38:                               # %for.body.i.us.3.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_39:                               # %if.then.i.us.3
                                        #   in Loop: Header=BB2_40 Depth=3
	lu12i.w	$a2, 191
	ori	$a2, $a2, 712
	add.d	$a2, $sp, $a2
	stptr.d	$s4, $a2, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB2_48
.LBB2_40:                               # %for.body.i.us.3
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $a1, .LBB2_39
# %bb.41:                               # %if.else.i.us.3
                                        #   in Loop: Header=BB2_40 Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_43
.LBB2_42:                               # %if.else.i.us.3.split
                                        #   in Loop: Header=BB2_40 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB2_40
	b	.LBB2_48
.LBB2_43:                               # %call.sqrt731
                                        #   in Loop: Header=BB2_40 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ori	$a1, $zero, 768
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_44:                               # %for.body.us.i.3.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_45:                               # %for.body.us.i.3
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_47
.LBB2_46:                               # %for.body.us.i.3.split
                                        #   in Loop: Header=BB2_45 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s2
	bnez	$s0, .LBB2_45
	b	.LBB2_54
.LBB2_47:                               # %call.sqrt743
                                        #   in Loop: Header=BB2_45 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_46
	.p2align	4, , 16
.LBB2_48:                               # %for.body.i.us.4.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	move	$s1, $a0
	b	.LBB2_50
	.p2align	4, , 16
.LBB2_49:                               # %if.then.i.us.4
                                        #   in Loop: Header=BB2_50 Depth=3
	st.d	$s4, $a0, 2044
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB2_58
.LBB2_50:                               # %for.body.i.us.4
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $a1, .LBB2_49
# %bb.51:                               # %if.else.i.us.4
                                        #   in Loop: Header=BB2_50 Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_53
.LBB2_52:                               # %if.else.i.us.4.split
                                        #   in Loop: Header=BB2_50 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB2_50
	b	.LBB2_58
.LBB2_53:                               # %call.sqrt732
                                        #   in Loop: Header=BB2_50 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ori	$a1, $zero, 768
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_54:                               # %for.body.us.i.4.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	move	$s1, $a0
	.p2align	4, , 16
.LBB2_55:                               # %for.body.us.i.4
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_57
.LBB2_56:                               # %for.body.us.i.4.split
                                        #   in Loop: Header=BB2_55 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s2
	bnez	$s0, .LBB2_55
	b	.LBB2_64
.LBB2_57:                               # %call.sqrt744
                                        #   in Loop: Header=BB2_55 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	b	.LBB2_56
	.p2align	4, , 16
.LBB2_58:                               # %for.body.i.us.5.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	b	.LBB2_60
	.p2align	4, , 16
.LBB2_59:                               # %if.then.i.us.5
                                        #   in Loop: Header=BB2_60 Depth=3
	stptr.d	$s4, $a0, 10236
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB2_68
.LBB2_60:                               # %for.body.i.us.5
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $a1, .LBB2_59
# %bb.61:                               # %if.else.i.us.5
                                        #   in Loop: Header=BB2_60 Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_63
.LBB2_62:                               # %if.else.i.us.5.split
                                        #   in Loop: Header=BB2_60 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB2_60
	b	.LBB2_68
.LBB2_63:                               # %call.sqrt733
                                        #   in Loop: Header=BB2_60 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ori	$a1, $zero, 768
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_62
	.p2align	4, , 16
.LBB2_64:                               # %for.body.us.i.5.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_65:                               # %for.body.us.i.5
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_67
.LBB2_66:                               # %for.body.us.i.5.split
                                        #   in Loop: Header=BB2_65 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s2
	bnez	$s0, .LBB2_65
	b	.LBB2_74
.LBB2_67:                               # %call.sqrt745
                                        #   in Loop: Header=BB2_65 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	b	.LBB2_66
	.p2align	4, , 16
.LBB2_68:                               # %for.body.i.us.6.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	b	.LBB2_70
	.p2align	4, , 16
.LBB2_69:                               # %if.then.i.us.6
                                        #   in Loop: Header=BB2_70 Depth=3
	stptr.d	$s4, $a0, 18428
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB2_78
.LBB2_70:                               # %for.body.i.us.6
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $a1, .LBB2_69
# %bb.71:                               # %if.else.i.us.6
                                        #   in Loop: Header=BB2_70 Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_73
.LBB2_72:                               # %if.else.i.us.6.split
                                        #   in Loop: Header=BB2_70 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB2_70
	b	.LBB2_78
.LBB2_73:                               # %call.sqrt734
                                        #   in Loop: Header=BB2_70 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ori	$a1, $zero, 768
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_72
	.p2align	4, , 16
.LBB2_74:                               # %for.body.us.i.6.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_75:                               # %for.body.us.i.6
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_77
.LBB2_76:                               # %for.body.us.i.6.split
                                        #   in Loop: Header=BB2_75 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s2
	bnez	$s0, .LBB2_75
	b	.LBB2_84
.LBB2_77:                               # %call.sqrt746
                                        #   in Loop: Header=BB2_75 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	b	.LBB2_76
	.p2align	4, , 16
.LBB2_78:                               # %for.body.i.us.7.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	b	.LBB2_80
	.p2align	4, , 16
.LBB2_79:                               # %if.then.i.us.7
                                        #   in Loop: Header=BB2_80 Depth=3
	stptr.d	$s4, $a0, 26620
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB2_88
.LBB2_80:                               # %for.body.i.us.7
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $a1, .LBB2_79
# %bb.81:                               # %if.else.i.us.7
                                        #   in Loop: Header=BB2_80 Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_83
.LBB2_82:                               # %if.else.i.us.7.split
                                        #   in Loop: Header=BB2_80 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB2_80
	b	.LBB2_88
.LBB2_83:                               # %call.sqrt735
                                        #   in Loop: Header=BB2_80 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ori	$a1, $zero, 768
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_82
	.p2align	4, , 16
.LBB2_84:                               # %for.body.us.i.7.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_85:                               # %for.body.us.i.7
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_87
.LBB2_86:                               # %for.body.us.i.7.split
                                        #   in Loop: Header=BB2_85 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s2
	bnez	$s0, .LBB2_85
	b	.LBB2_94
.LBB2_87:                               # %call.sqrt747
                                        #   in Loop: Header=BB2_85 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	b	.LBB2_86
	.p2align	4, , 16
.LBB2_88:                               # %for.body.i.us.8.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	move	$s1, $s8
	b	.LBB2_90
	.p2align	4, , 16
.LBB2_89:                               # %if.then.i.us.8
                                        #   in Loop: Header=BB2_90 Depth=3
	st.d	$s4, $s8, 2044
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB2_98
.LBB2_90:                               # %for.body.i.us.8
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $a1, .LBB2_89
# %bb.91:                               # %if.else.i.us.8
                                        #   in Loop: Header=BB2_90 Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_93
.LBB2_92:                               # %if.else.i.us.8.split
                                        #   in Loop: Header=BB2_90 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB2_90
	b	.LBB2_98
.LBB2_93:                               # %call.sqrt736
                                        #   in Loop: Header=BB2_90 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ori	$a1, $zero, 768
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	b	.LBB2_92
	.p2align	4, , 16
.LBB2_94:                               # %for.body.us.i.8.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	move	$s1, $s8
	.p2align	4, , 16
.LBB2_95:                               # %for.body.us.i.8
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_97
.LBB2_96:                               # %for.body.us.i.8.split
                                        #   in Loop: Header=BB2_95 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s2
	bnez	$s0, .LBB2_95
	b	.LBB2_104
.LBB2_97:                               # %call.sqrt748
                                        #   in Loop: Header=BB2_95 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	b	.LBB2_96
	.p2align	4, , 16
.LBB2_98:                               # %for.body.i.us.9.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	b	.LBB2_100
	.p2align	4, , 16
.LBB2_99:                               # %if.then.i.us.9
                                        #   in Loop: Header=BB2_100 Depth=3
	stptr.d	$s4, $s8, 10236
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB2_108
.LBB2_100:                              # %for.body.i.us.9
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $a1, .LBB2_99
# %bb.101:                              # %if.else.i.us.9
                                        #   in Loop: Header=BB2_100 Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_103
.LBB2_102:                              # %if.else.i.us.9.split
                                        #   in Loop: Header=BB2_100 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB2_100
	b	.LBB2_108
.LBB2_103:                              # %call.sqrt737
                                        #   in Loop: Header=BB2_100 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ori	$a1, $zero, 768
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	b	.LBB2_102
	.p2align	4, , 16
.LBB2_104:                              # %for.body.us.i.9.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_105:                              # %for.body.us.i.9
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_107
.LBB2_106:                              # %for.body.us.i.9.split
                                        #   in Loop: Header=BB2_105 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s2
	bnez	$s0, .LBB2_105
	b	.LBB2_114
.LBB2_107:                              # %call.sqrt749
                                        #   in Loop: Header=BB2_105 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	b	.LBB2_106
	.p2align	4, , 16
.LBB2_108:                              # %for.body.i.us.10.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB2_110
	.p2align	4, , 16
.LBB2_109:                              # %if.then.i.us.10
                                        #   in Loop: Header=BB2_110 Depth=3
	stptr.d	$s4, $s8, 18428
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB2_118
.LBB2_110:                              # %for.body.i.us.10
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $a1, .LBB2_109
# %bb.111:                              # %if.else.i.us.10
                                        #   in Loop: Header=BB2_110 Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_113
.LBB2_112:                              # %if.else.i.us.10.split
                                        #   in Loop: Header=BB2_110 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB2_110
	b	.LBB2_118
.LBB2_113:                              # %call.sqrt738
                                        #   in Loop: Header=BB2_110 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ori	$a1, $zero, 768
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	b	.LBB2_112
	.p2align	4, , 16
.LBB2_114:                              # %for.body.us.i.10.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_115:                              # %for.body.us.i.10
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_117
.LBB2_116:                              # %for.body.us.i.10.split
                                        #   in Loop: Header=BB2_115 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s2
	bnez	$s0, .LBB2_115
	b	.LBB2_124
.LBB2_117:                              # %call.sqrt750
                                        #   in Loop: Header=BB2_115 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	b	.LBB2_116
	.p2align	4, , 16
.LBB2_118:                              # %for.body.i.us.11.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB2_120
	.p2align	4, , 16
.LBB2_119:                              # %if.then.i.us.11
                                        #   in Loop: Header=BB2_120 Depth=3
	stptr.d	$s4, $s8, 26620
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	beqz	$s0, .LBB2_128
.LBB2_120:                              # %for.body.i.us.11
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $a1, .LBB2_119
# %bb.121:                              # %if.else.i.us.11
                                        #   in Loop: Header=BB2_120 Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_123
.LBB2_122:                              # %if.else.i.us.11.split
                                        #   in Loop: Header=BB2_120 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	addi.w	$fp, $fp, 1
	bnez	$s0, .LBB2_120
	b	.LBB2_128
.LBB2_123:                              # %call.sqrt739
                                        #   in Loop: Header=BB2_120 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	ori	$a1, $zero, 768
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	b	.LBB2_122
	.p2align	4, , 16
.LBB2_124:                              # %for.body.us.i.11.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$fp, $zero
	ori	$s0, $zero, 1024
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_125:                              # %for.body.us.i.11
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_127
.LBB2_126:                              # %for.body.us.i.11.split
                                        #   in Loop: Header=BB2_125 Depth=3
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s1, -4
	fadd.s	$fa0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	add.w	$fp, $fp, $s2
	bnez	$s0, .LBB2_125
	b	.LBB2_128
.LBB2_127:                              # %call.sqrt751
                                        #   in Loop: Header=BB2_125 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	b	.LBB2_126
	.p2align	4, , 16
.LBB2_128:                              # %for.cond26.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	slli.d	$a1, $s5, 5
	lu12i.w	$a0, 208
	ori	$a0, $a0, 3272
	add.d	$a0, $sp, $a0
	ldx.w	$s8, $a1, $a0
	move	$fp, $zero
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	add.d	$s7, $a0, $a1
	addi.d	$s6, $s8, -1
	slli.w	$s5, $s8, 1
	ld.d	$s0, $s7, 24
	ld.w	$a1, $s7, 8
	ld.w	$a0, $s7, 4
	slt	$a2, $a7, $s5
	maskeqz	$a3, $s5, $a2
	masknez	$a2, $a7, $a2
	or	$a2, $a3, $a2
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.w	$s4, $s8, $a3, 1
	slli.d	$s1, $a2, 2
	b	.LBB2_130
	.p2align	4, , 16
.LBB2_129:                              # %BeamFirFilter.exit
                                        #   in Loop: Header=BB2_130 Depth=3
	addi.d	$fp, $fp, 1
	beq	$fp, $t0, .LBB2_137
.LBB2_130:                              # %for.body28
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_132 Depth 4
	alsl.d	$a3, $fp, $s3, 3
	slli.d	$a2, $fp, 3
	fldx.s	$fa0, $a2, $s3
	sub.d	$a2, $s6, $a1
	slli.w	$a2, $a2, 1
	slli.d	$a4, $a2, 2
	fstx.s	$fa0, $s0, $a4
	fld.s	$fa0, $a3, 4
	alsl.d	$a3, $a2, $s0, 2
	fst.s	$fa0, $a3, 4
	blt	$s8, $a7, .LBB2_133
# %bb.131:                              # %for.body.lr.ph.i
                                        #   in Loop: Header=BB2_130 Depth=3
	ld.d	$a4, $s7, 16
	move	$a3, $zero
	movgr2fr.w	$fa1, $zero
	addi.d	$a4, $a4, 4
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB2_132:                              # %for.body.i84
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_130 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a5, $a2, $s0, 2
	slli.d	$a6, $a2, 2
	fldx.s	$fa2, $s0, $a6
	fld.s	$fa3, $a5, 4
	fld.s	$fa4, $a4, 0
	fld.s	$fa5, $a4, -4
	fmul.s	$fa6, $fa3, $fa4
	fmadd.s	$fa6, $fa2, $fa5, $fa6
	fmul.s	$fa2, $fa2, $fa4
	fmadd.s	$fa2, $fa3, $fa5, $fa2
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa0, $fa0, $fa2
	addi.w	$a2, $a2, 2
	and	$a2, $a2, $s4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 8
	blt	$a3, $s5, .LBB2_132
	b	.LBB2_134
	.p2align	4, , 16
.LBB2_133:                              #   in Loop: Header=BB2_130 Depth=3
	movgr2fr.w	$fa0, $zero
	fmov.s	$fa1, $fa0
.LBB2_134:                              # %for.end.i
                                        #   in Loop: Header=BB2_130 Depth=3
	lu12i.w	$a2, 160
	ori	$a2, $a2, 2760
	add.d	$a2, $sp, $a2
	alsl.d	$a2, $fp, $a2, 3
	addi.d	$a1, $a1, 1
	and	$a1, $a1, $s6
	fst.s	$fa1, $a2, 0
	fst.s	$fa0, $a2, 4
	addi.w	$a2, $a0, 1
	addi.d	$a0, $a2, -1024
	sltu	$a3, $zero, $a0
	maskeqz	$a0, $a2, $a3
	maskeqz	$a1, $a1, $a3
	bne	$a2, $t0, .LBB2_129
# %bb.135:                              # %for.end.i
                                        #   in Loop: Header=BB2_130 Depth=3
	blt	$s8, $a7, .LBB2_129
# %bb.136:                              # %for.body48.preheader.i
                                        #   in Loop: Header=BB2_130 Depth=3
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB2_129
	.p2align	4, , 16
.LBB2_137:                              # %for.cond43.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$s8, $zero
	st.w	$a1, $s7, 8
	st.w	$a0, $s7, 4
	lu12i.w	$a0, 208
	ori	$a0, $a0, 2888
	add.d	$a0, $sp, $a0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$s7, $a0, $a1
	ldx.w	$fp, $a1, $a0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 14
	lu12i.w	$a1, 16
	ori	$a1, $a1, 2760
	add.d	$a1, $sp, $a1
	add.d	$s5, $a1, $a0
	addi.d	$s6, $fp, -1
	slli.w	$s4, $fp, 1
	ld.d	$s0, $s7, 24
	ld.w	$a1, $s7, 8
	ld.w	$a0, $s7, 4
	slt	$a2, $a7, $s4
	maskeqz	$a3, $s4, $a2
	masknez	$a2, $a7, $a2
	or	$a2, $a3, $a2
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.w	$s3, $fp, $a3, 1
	slli.d	$s1, $a2, 2
	b	.LBB2_139
	.p2align	4, , 16
.LBB2_138:                              # %BeamFirFilter.exit131
                                        #   in Loop: Header=BB2_139 Depth=3
	addi.d	$s8, $s8, 1
	ori	$a2, $zero, 512
	beq	$s8, $a2, .LBB2_6
.LBB2_139:                              # %for.body45
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_141 Depth 4
	slli.d	$a2, $s8, 4
	lu12i.w	$a3, 160
	ori	$a3, $a3, 2760
	add.d	$a3, $sp, $a3
	ldx.d	$a3, $a2, $a3
	sub.d	$a2, $s6, $a1
	slli.w	$a2, $a2, 1
	slli.d	$a4, $a2, 2
	stx.d	$a3, $s0, $a4
	blt	$fp, $a7, .LBB2_142
# %bb.140:                              # %for.body.lr.ph.i111
                                        #   in Loop: Header=BB2_139 Depth=3
	ld.d	$a4, $s7, 16
	move	$a3, $zero
	movgr2fr.w	$fa1, $zero
	addi.d	$a4, $a4, 4
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB2_141:                              # %for.body.i113
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_139 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a5, $a2, $s0, 2
	slli.d	$a6, $a2, 2
	fldx.s	$fa2, $s0, $a6
	fld.s	$fa3, $a5, 4
	fld.s	$fa4, $a4, 0
	fld.s	$fa5, $a4, -4
	fmul.s	$fa6, $fa3, $fa4
	fmadd.s	$fa6, $fa2, $fa5, $fa6
	fmul.s	$fa2, $fa2, $fa4
	fmadd.s	$fa2, $fa3, $fa5, $fa2
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa0, $fa0, $fa2
	addi.w	$a2, $a2, 2
	and	$a2, $a2, $s3
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 8
	blt	$a3, $s4, .LBB2_141
	b	.LBB2_143
	.p2align	4, , 16
.LBB2_142:                              #   in Loop: Header=BB2_139 Depth=3
	movgr2fr.w	$fa0, $zero
	fmov.s	$fa1, $fa0
.LBB2_143:                              # %for.end.i99
                                        #   in Loop: Header=BB2_139 Depth=3
	alsl.d	$a2, $s8, $s5, 3
	addi.d	$a1, $a1, 1
	and	$a1, $a1, $s6
	fst.s	$fa1, $a2, 0
	fst.s	$fa0, $a2, 4
	addi.w	$a2, $a0, 2
	addi.d	$a0, $a2, -1024
	sltu	$a3, $zero, $a0
	maskeqz	$a0, $a2, $a3
	maskeqz	$a1, $a1, $a3
	bne	$a2, $t0, .LBB2_138
# %bb.144:                              # %for.end.i99
                                        #   in Loop: Header=BB2_139 Depth=3
	blt	$fp, $a7, .LBB2_138
# %bb.145:                              # %for.body48.preheader.i109
                                        #   in Loop: Header=BB2_139 Depth=3
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1024
	vldi	$vr7, -1168
	ori	$a7, $zero, 1
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB2_138
	.p2align	4, , 16
.LBB2_146:                              # %vector.body453.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$s1, %pc_hi20(.LCPI2_0)
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_0)
	pcalau12i	$s4, %pc_hi20(.LCPI2_1)
	xvld	$xr2, $s4, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 512
	lu12i.w	$a1, 16
	ori	$a1, $a1, 2760
	add.d	$t1, $sp, $a1
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	lu12i.w	$a1, 4
	ori	$a1, $a1, 2376
	add.d	$s0, $sp, $a1
	.p2align	4, , 16
.LBB2_147:                              # %vector.body453
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa5, $a1, $t1
	fldx.s	$fa6, $a2, $t1
	fldx.s	$fa7, $a3, $t1
	fldx.s	$ft0, $a4, $t1
	fldx.s	$ft1, $a5, $t1
	fldx.s	$ft2, $a6, $t1
	fldx.s	$ft3, $a7, $t1
	fldx.s	$ft4, $t0, $t1
	xvrepli.d	$xr0, 24
	xvmul.d	$xr13, $xr1, $xr0
	xvmul.d	$xr14, $xr2, $xr0
	xvpickve2gr.d	$a1, $xr14, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr14, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr14, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr14, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr13, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr13, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr13, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr13, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa5, $a1, $s0
	fstx.s	$fa6, $a2, $s0
	fstx.s	$fa7, $a3, $s0
	fstx.s	$ft0, $a4, $s0
	fstx.s	$ft1, $a5, $s0
	fstx.s	$ft2, $a6, $s0
	fstx.s	$ft3, $a7, $s0
	fstx.s	$ft4, $t0, $s0
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa3, $a1, $t1
	fldx.s	$fa4, $a2, $t1
	fldx.s	$fa5, $a3, $t1
	fldx.s	$fa6, $a4, $t1
	fldx.s	$fa7, $a5, $t1
	fldx.s	$ft0, $a6, $t1
	fldx.s	$ft1, $a7, $t1
	fldx.s	$ft2, $t0, $t1
	xvbitseti.d	$xr11, $xr13, 0
	xvbitseti.d	$xr12, $xr14, 0
	xvpickve2gr.d	$a1, $xr12, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr12, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr12, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr11, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr11, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa3, $a1, $s0
	fstx.s	$fa4, $a2, $s0
	fstx.s	$fa5, $a3, $s0
	fstx.s	$fa6, $a4, $s0
	fstx.s	$fa7, $a5, $s0
	fstx.s	$ft0, $a6, $s0
	fstx.s	$ft1, $a7, $s0
	fstx.s	$ft2, $t0, $s0
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB2_147
# %bb.148:                              # %vector.body444.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_0)
	xvld	$xr2, $s4, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 512
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_149:                              # %vector.body444
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa5, $t2, $a1
	fldx.s	$fa6, $t2, $a2
	fldx.s	$fa7, $t2, $a3
	fldx.s	$ft0, $t2, $a4
	fldx.s	$ft1, $t2, $a5
	fldx.s	$ft2, $t2, $a6
	fldx.s	$ft3, $t2, $a7
	fldx.s	$ft4, $t2, $t0
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvbitseti.d	$xr15, $xr14, 1
	xvbitseti.d	$xr16, $xr13, 1
	xvpickve2gr.d	$a1, $xr16, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr16, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr16, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr15, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr15, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa5, $a1, $s0
	fstx.s	$fa6, $a2, $s0
	fstx.s	$fa7, $a3, $s0
	fstx.s	$ft0, $a4, $s0
	fstx.s	$ft1, $a5, $s0
	fstx.s	$ft2, $a6, $s0
	fstx.s	$ft3, $a7, $s0
	fstx.s	$ft4, $t0, $s0
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa3, $t2, $a1
	fldx.s	$fa4, $t2, $a2
	fldx.s	$fa5, $t2, $a3
	fldx.s	$fa6, $t2, $a4
	fldx.s	$fa7, $t2, $a5
	fldx.s	$ft0, $t2, $a6
	fldx.s	$ft1, $t2, $a7
	fldx.s	$ft2, $t2, $t0
	xvrepli.d	$xr11, 3
	xvor.v	$xr12, $xr14, $xr11
	xvor.v	$xr11, $xr13, $xr11
	xvpickve2gr.d	$a1, $xr11, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr11, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr11, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr11, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr12, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr12, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr12, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr12, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa3, $a1, $s0
	fstx.s	$fa4, $a2, $s0
	fstx.s	$fa5, $a3, $s0
	fstx.s	$fa6, $a4, $s0
	fstx.s	$fa7, $a5, $s0
	fstx.s	$ft0, $a6, $s0
	fstx.s	$ft1, $a7, $s0
	fstx.s	$ft2, $t0, $s0
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB2_149
# %bb.150:                              # %vector.body435.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_0)
	xvld	$xr2, $s4, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 512
	.p2align	4, , 16
.LBB2_151:                              # %vector.body435
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa5, $t1, $a1
	fldx.s	$fa6, $t1, $a2
	fldx.s	$fa7, $t1, $a3
	fldx.s	$ft0, $t1, $a4
	fldx.s	$ft1, $t1, $a5
	fldx.s	$ft2, $t1, $a6
	fldx.s	$ft3, $t1, $a7
	fldx.s	$ft4, $t1, $t0
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvbitseti.d	$xr15, $xr14, 2
	xvbitseti.d	$xr16, $xr13, 2
	xvpickve2gr.d	$a1, $xr16, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr16, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr16, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr15, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr15, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa5, $a1, $s0
	fstx.s	$fa6, $a2, $s0
	fstx.s	$fa7, $a3, $s0
	fstx.s	$ft0, $a4, $s0
	fstx.s	$ft1, $a5, $s0
	fstx.s	$ft2, $a6, $s0
	fstx.s	$ft3, $a7, $s0
	fstx.s	$ft4, $t0, $s0
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa3, $t1, $a1
	fldx.s	$fa4, $t1, $a2
	fldx.s	$fa5, $t1, $a3
	fldx.s	$fa6, $t1, $a4
	fldx.s	$fa7, $t1, $a5
	fldx.s	$ft0, $t1, $a6
	fldx.s	$ft1, $t1, $a7
	fldx.s	$ft2, $t1, $t0
	xvrepli.d	$xr11, 5
	xvor.v	$xr12, $xr14, $xr11
	xvor.v	$xr11, $xr13, $xr11
	xvpickve2gr.d	$a1, $xr11, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr11, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr11, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr11, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr12, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr12, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr12, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr12, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa3, $a1, $s0
	fstx.s	$fa4, $a2, $s0
	fstx.s	$fa5, $a3, $s0
	fstx.s	$fa6, $a4, $s0
	fstx.s	$fa7, $a5, $s0
	fstx.s	$ft0, $a6, $s0
	fstx.s	$ft1, $a7, $s0
	fstx.s	$ft2, $t0, $s0
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB2_151
# %bb.152:                              # %vector.body426.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_0)
	xvld	$xr2, $s4, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 512
	.p2align	4, , 16
.LBB2_153:                              # %vector.body426
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa5, $t3, $a1
	fldx.s	$fa6, $t3, $a2
	fldx.s	$fa7, $t3, $a3
	fldx.s	$ft0, $t3, $a4
	fldx.s	$ft1, $t3, $a5
	fldx.s	$ft2, $t3, $a6
	fldx.s	$ft3, $t3, $a7
	fldx.s	$ft4, $t3, $t0
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvrepli.d	$xr15, 6
	xvor.v	$xr16, $xr14, $xr15
	xvor.v	$xr15, $xr13, $xr15
	xvpickve2gr.d	$a1, $xr15, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr15, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr15, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr15, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr16, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr16, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr16, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr16, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa5, $a1, $s0
	fstx.s	$fa6, $a2, $s0
	fstx.s	$fa7, $a3, $s0
	fstx.s	$ft0, $a4, $s0
	fstx.s	$ft1, $a5, $s0
	fstx.s	$ft2, $a6, $s0
	fstx.s	$ft3, $a7, $s0
	fstx.s	$ft4, $t0, $s0
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa3, $t3, $a1
	fldx.s	$fa4, $t3, $a2
	fldx.s	$fa5, $t3, $a3
	fldx.s	$fa6, $t3, $a4
	fldx.s	$fa7, $t3, $a5
	fldx.s	$ft0, $t3, $a6
	fldx.s	$ft1, $t3, $a7
	fldx.s	$ft2, $t3, $t0
	xvrepli.d	$xr11, 7
	xvor.v	$xr12, $xr14, $xr11
	xvor.v	$xr11, $xr13, $xr11
	xvpickve2gr.d	$a1, $xr11, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr11, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr11, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr11, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr12, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr12, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr12, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr12, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa3, $a1, $s0
	fstx.s	$fa4, $a2, $s0
	fstx.s	$fa5, $a3, $s0
	fstx.s	$fa6, $a4, $s0
	fstx.s	$fa7, $a5, $s0
	fstx.s	$ft0, $a6, $s0
	fstx.s	$ft1, $a7, $s0
	fstx.s	$ft2, $t0, $s0
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB2_153
# %bb.154:                              # %vector.body417.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_0)
	xvld	$xr2, $s4, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 512
	.p2align	4, , 16
.LBB2_155:                              # %vector.body417
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa5, $t4, $a1
	fldx.s	$fa6, $t4, $a2
	fldx.s	$fa7, $t4, $a3
	fldx.s	$ft0, $t4, $a4
	fldx.s	$ft1, $t4, $a5
	fldx.s	$ft2, $t4, $a6
	fldx.s	$ft3, $t4, $a7
	fldx.s	$ft4, $t4, $t0
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 8
	xvaddi.du	$xr16, $xr13, 8
	xvpickve2gr.d	$a1, $xr16, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr16, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr16, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr15, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr15, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa5, $a1, $s0
	fstx.s	$fa6, $a2, $s0
	fstx.s	$fa7, $a3, $s0
	fstx.s	$ft0, $a4, $s0
	fstx.s	$ft1, $a5, $s0
	fstx.s	$ft2, $a6, $s0
	fstx.s	$ft3, $a7, $s0
	fstx.s	$ft4, $t0, $s0
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa3, $t4, $a1
	fldx.s	$fa4, $t4, $a2
	fldx.s	$fa5, $t4, $a3
	fldx.s	$fa6, $t4, $a4
	fldx.s	$fa7, $t4, $a5
	fldx.s	$ft0, $t4, $a6
	fldx.s	$ft1, $t4, $a7
	fldx.s	$ft2, $t4, $t0
	xvaddi.du	$xr11, $xr14, 9
	xvaddi.du	$xr12, $xr13, 9
	xvpickve2gr.d	$a1, $xr12, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr12, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr12, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr11, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr11, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa3, $a1, $s0
	fstx.s	$fa4, $a2, $s0
	fstx.s	$fa5, $a3, $s0
	fstx.s	$fa6, $a4, $s0
	fstx.s	$fa7, $a5, $s0
	fstx.s	$ft0, $a6, $s0
	fstx.s	$ft1, $a7, $s0
	fstx.s	$ft2, $t0, $s0
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB2_155
# %bb.156:                              # %vector.body408.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_0)
	xvld	$xr2, $s4, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 512
	.p2align	4, , 16
.LBB2_157:                              # %vector.body408
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa5, $t5, $a1
	fldx.s	$fa6, $t5, $a2
	fldx.s	$fa7, $t5, $a3
	fldx.s	$ft0, $t5, $a4
	fldx.s	$ft1, $t5, $a5
	fldx.s	$ft2, $t5, $a6
	fldx.s	$ft3, $t5, $a7
	fldx.s	$ft4, $t5, $t0
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 10
	xvaddi.du	$xr16, $xr13, 10
	xvpickve2gr.d	$a1, $xr16, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr16, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr16, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr15, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr15, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa5, $a1, $s0
	fstx.s	$fa6, $a2, $s0
	fstx.s	$fa7, $a3, $s0
	fstx.s	$ft0, $a4, $s0
	fstx.s	$ft1, $a5, $s0
	fstx.s	$ft2, $a6, $s0
	fstx.s	$ft3, $a7, $s0
	fstx.s	$ft4, $t0, $s0
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa3, $t5, $a1
	fldx.s	$fa4, $t5, $a2
	fldx.s	$fa5, $t5, $a3
	fldx.s	$fa6, $t5, $a4
	fldx.s	$fa7, $t5, $a5
	fldx.s	$ft0, $t5, $a6
	fldx.s	$ft1, $t5, $a7
	fldx.s	$ft2, $t5, $t0
	xvaddi.du	$xr11, $xr14, 11
	xvaddi.du	$xr12, $xr13, 11
	xvpickve2gr.d	$a1, $xr12, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr12, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr12, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr11, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr11, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa3, $a1, $s0
	fstx.s	$fa4, $a2, $s0
	fstx.s	$fa5, $a3, $s0
	fstx.s	$fa6, $a4, $s0
	fstx.s	$fa7, $a5, $s0
	fstx.s	$ft0, $a6, $s0
	fstx.s	$ft1, $a7, $s0
	fstx.s	$ft2, $t0, $s0
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB2_157
# %bb.158:                              # %vector.body399.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_0)
	xvld	$xr2, $s4, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 512
	.p2align	4, , 16
.LBB2_159:                              # %vector.body399
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa5, $t6, $a1
	fldx.s	$fa6, $t6, $a2
	fldx.s	$fa7, $t6, $a3
	fldx.s	$ft0, $t6, $a4
	fldx.s	$ft1, $t6, $a5
	fldx.s	$ft2, $t6, $a6
	fldx.s	$ft3, $t6, $a7
	fldx.s	$ft4, $t6, $t0
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 12
	xvaddi.du	$xr16, $xr13, 12
	xvpickve2gr.d	$a1, $xr16, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr16, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr16, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr15, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr15, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa5, $a1, $s0
	fstx.s	$fa6, $a2, $s0
	fstx.s	$fa7, $a3, $s0
	fstx.s	$ft0, $a4, $s0
	fstx.s	$ft1, $a5, $s0
	fstx.s	$ft2, $a6, $s0
	fstx.s	$ft3, $a7, $s0
	fstx.s	$ft4, $t0, $s0
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa3, $t6, $a1
	fldx.s	$fa4, $t6, $a2
	fldx.s	$fa5, $t6, $a3
	fldx.s	$fa6, $t6, $a4
	fldx.s	$fa7, $t6, $a5
	fldx.s	$ft0, $t6, $a6
	fldx.s	$ft1, $t6, $a7
	fldx.s	$ft2, $t6, $t0
	xvaddi.du	$xr11, $xr14, 13
	xvaddi.du	$xr12, $xr13, 13
	xvpickve2gr.d	$a1, $xr12, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr12, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr12, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr11, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr11, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa3, $a1, $s0
	fstx.s	$fa4, $a2, $s0
	fstx.s	$fa5, $a3, $s0
	fstx.s	$fa6, $a4, $s0
	fstx.s	$fa7, $a5, $s0
	fstx.s	$ft0, $a6, $s0
	fstx.s	$ft1, $a7, $s0
	fstx.s	$ft2, $t0, $s0
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB2_159
# %bb.160:                              # %vector.body390.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_0)
	xvld	$xr2, $s4, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 512
	.p2align	4, , 16
.LBB2_161:                              # %vector.body390
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa5, $t7, $a1
	fldx.s	$fa6, $t7, $a2
	fldx.s	$fa7, $t7, $a3
	fldx.s	$ft0, $t7, $a4
	fldx.s	$ft1, $t7, $a5
	fldx.s	$ft2, $t7, $a6
	fldx.s	$ft3, $t7, $a7
	fldx.s	$ft4, $t7, $t0
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 14
	xvaddi.du	$xr16, $xr13, 14
	xvpickve2gr.d	$a1, $xr16, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr16, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr16, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr15, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr15, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa5, $a1, $s0
	fstx.s	$fa6, $a2, $s0
	fstx.s	$fa7, $a3, $s0
	fstx.s	$ft0, $a4, $s0
	fstx.s	$ft1, $a5, $s0
	fstx.s	$ft2, $a6, $s0
	fstx.s	$ft3, $a7, $s0
	fstx.s	$ft4, $t0, $s0
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa3, $t7, $a1
	fldx.s	$fa4, $t7, $a2
	fldx.s	$fa5, $t7, $a3
	fldx.s	$fa6, $t7, $a4
	fldx.s	$fa7, $t7, $a5
	fldx.s	$ft0, $t7, $a6
	fldx.s	$ft1, $t7, $a7
	fldx.s	$ft2, $t7, $t0
	xvaddi.du	$xr11, $xr14, 15
	xvaddi.du	$xr12, $xr13, 15
	xvpickve2gr.d	$a1, $xr12, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr12, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr12, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr11, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr11, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa3, $a1, $s0
	fstx.s	$fa4, $a2, $s0
	fstx.s	$fa5, $a3, $s0
	fstx.s	$fa6, $a4, $s0
	fstx.s	$fa7, $a5, $s0
	fstx.s	$ft0, $a6, $s0
	fstx.s	$ft1, $a7, $s0
	fstx.s	$ft2, $t0, $s0
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB2_161
# %bb.162:                              # %vector.body381.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_0)
	xvld	$xr2, $s4, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 512
	.p2align	4, , 16
.LBB2_163:                              # %vector.body381
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa5, $t8, $a1
	fldx.s	$fa6, $t8, $a2
	fldx.s	$fa7, $t8, $a3
	fldx.s	$ft0, $t8, $a4
	fldx.s	$ft1, $t8, $a5
	fldx.s	$ft2, $t8, $a6
	fldx.s	$ft3, $t8, $a7
	fldx.s	$ft4, $t8, $t0
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 16
	xvaddi.du	$xr16, $xr13, 16
	xvpickve2gr.d	$a1, $xr16, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr16, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr16, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr15, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr15, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa5, $a1, $s0
	fstx.s	$fa6, $a2, $s0
	fstx.s	$fa7, $a3, $s0
	fstx.s	$ft0, $a4, $s0
	fstx.s	$ft1, $a5, $s0
	fstx.s	$ft2, $a6, $s0
	fstx.s	$ft3, $a7, $s0
	fstx.s	$ft4, $t0, $s0
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa3, $t8, $a1
	fldx.s	$fa4, $t8, $a2
	fldx.s	$fa5, $t8, $a3
	fldx.s	$fa6, $t8, $a4
	fldx.s	$fa7, $t8, $a5
	fldx.s	$ft0, $t8, $a6
	fldx.s	$ft1, $t8, $a7
	fldx.s	$ft2, $t8, $t0
	xvaddi.du	$xr11, $xr14, 17
	xvaddi.du	$xr12, $xr13, 17
	xvpickve2gr.d	$a1, $xr12, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr12, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr12, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr11, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr11, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa3, $a1, $s0
	fstx.s	$fa4, $a2, $s0
	fstx.s	$fa5, $a3, $s0
	fstx.s	$fa6, $a4, $s0
	fstx.s	$fa7, $a5, $s0
	fstx.s	$ft0, $a6, $s0
	fstx.s	$ft1, $a7, $s0
	fstx.s	$ft2, $t0, $s0
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB2_163
# %bb.164:                              # %vector.body372.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_0)
	xvld	$xr2, $s4, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 512
	.p2align	4, , 16
.LBB2_165:                              # %vector.body372
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa5, $fp, $a1
	fldx.s	$fa6, $fp, $a2
	fldx.s	$fa7, $fp, $a3
	fldx.s	$ft0, $fp, $a4
	fldx.s	$ft1, $fp, $a5
	fldx.s	$ft2, $fp, $a6
	fldx.s	$ft3, $fp, $a7
	fldx.s	$ft4, $fp, $t0
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 18
	xvaddi.du	$xr16, $xr13, 18
	xvpickve2gr.d	$a1, $xr16, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr16, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr16, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr15, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr15, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa5, $a1, $s0
	fstx.s	$fa6, $a2, $s0
	fstx.s	$fa7, $a3, $s0
	fstx.s	$ft0, $a4, $s0
	fstx.s	$ft1, $a5, $s0
	fstx.s	$ft2, $a6, $s0
	fstx.s	$ft3, $a7, $s0
	fstx.s	$ft4, $t0, $s0
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa3, $fp, $a1
	fldx.s	$fa4, $fp, $a2
	fldx.s	$fa5, $fp, $a3
	fldx.s	$fa6, $fp, $a4
	fldx.s	$fa7, $fp, $a5
	fldx.s	$ft0, $fp, $a6
	fldx.s	$ft1, $fp, $a7
	fldx.s	$ft2, $fp, $t0
	xvaddi.du	$xr11, $xr14, 19
	xvaddi.du	$xr12, $xr13, 19
	xvpickve2gr.d	$a1, $xr12, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr12, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr12, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr11, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr11, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa3, $a1, $s0
	fstx.s	$fa4, $a2, $s0
	fstx.s	$fa5, $a3, $s0
	fstx.s	$fa6, $a4, $s0
	fstx.s	$fa7, $a5, $s0
	fstx.s	$ft0, $a6, $s0
	fstx.s	$ft1, $a7, $s0
	fstx.s	$ft2, $t0, $s0
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB2_165
# %bb.166:                              # %vector.body363.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_0)
	xvld	$xr2, $s4, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 512
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_167:                              # %vector.body363
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa5, $t1, $a1
	fldx.s	$fa6, $t1, $a2
	fldx.s	$fa7, $t1, $a3
	fldx.s	$ft0, $t1, $a4
	fldx.s	$ft1, $t1, $a5
	fldx.s	$ft2, $t1, $a6
	fldx.s	$ft3, $t1, $a7
	fldx.s	$ft4, $t1, $t0
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 20
	xvaddi.du	$xr16, $xr13, 20
	xvpickve2gr.d	$a1, $xr16, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr16, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr16, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr15, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr15, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa5, $a1, $s0
	fstx.s	$fa6, $a2, $s0
	fstx.s	$fa7, $a3, $s0
	fstx.s	$ft0, $a4, $s0
	fstx.s	$ft1, $a5, $s0
	fstx.s	$ft2, $a6, $s0
	fstx.s	$ft3, $a7, $s0
	fstx.s	$ft4, $t0, $s0
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa3, $t1, $a1
	fldx.s	$fa4, $t1, $a2
	fldx.s	$fa5, $t1, $a3
	fldx.s	$fa6, $t1, $a4
	fldx.s	$fa7, $t1, $a5
	fldx.s	$ft0, $t1, $a6
	fldx.s	$ft1, $t1, $a7
	fldx.s	$ft2, $t1, $t0
	xvaddi.du	$xr11, $xr14, 21
	xvaddi.du	$xr12, $xr13, 21
	xvpickve2gr.d	$a1, $xr12, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr12, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr12, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr11, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr11, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa3, $a1, $s0
	fstx.s	$fa4, $a2, $s0
	fstx.s	$fa5, $a3, $s0
	fstx.s	$fa6, $a4, $s0
	fstx.s	$fa7, $a5, $s0
	fstx.s	$ft0, $a6, $s0
	fstx.s	$ft1, $a7, $s0
	fstx.s	$ft2, $t0, $s0
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB2_167
# %bb.168:                              # %vector.body354.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_0)
	xvld	$xr2, $s4, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 512
	ld.d	$t1, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_169:                              # %vector.body354
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr1, 1
	xvslli.d	$xr4, $xr2, 1
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa5, $t1, $a1
	fldx.s	$fa6, $t1, $a2
	fldx.s	$fa7, $t1, $a3
	fldx.s	$ft0, $t1, $a4
	fldx.s	$ft1, $t1, $a5
	fldx.s	$ft2, $t1, $a6
	fldx.s	$ft3, $t1, $a7
	fldx.s	$ft4, $t1, $t0
	xvmul.d	$xr13, $xr2, $xr0
	xvmul.d	$xr14, $xr1, $xr0
	xvaddi.du	$xr15, $xr14, 22
	xvaddi.du	$xr16, $xr13, 22
	xvpickve2gr.d	$a1, $xr16, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr16, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr16, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr16, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr15, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr15, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr15, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr15, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa5, $a1, $s0
	fstx.s	$fa6, $a2, $s0
	fstx.s	$fa7, $a3, $s0
	fstx.s	$ft0, $a4, $s0
	fstx.s	$ft1, $a5, $s0
	fstx.s	$ft2, $a6, $s0
	fstx.s	$ft3, $a7, $s0
	fstx.s	$ft4, $t0, $s0
	xvbitseti.d	$xr3, $xr3, 0
	xvbitseti.d	$xr4, $xr4, 0
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr4, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr4, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr4, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	fldx.s	$fa3, $t1, $a1
	fldx.s	$fa4, $t1, $a2
	fldx.s	$fa5, $t1, $a3
	fldx.s	$fa6, $t1, $a4
	fldx.s	$fa7, $t1, $a5
	fldx.s	$ft0, $t1, $a6
	fldx.s	$ft1, $t1, $a7
	fldx.s	$ft2, $t1, $t0
	xvaddi.du	$xr11, $xr14, 23
	xvaddi.du	$xr12, $xr13, 23
	xvpickve2gr.d	$a1, $xr12, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr12, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr12, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr12, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr11, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr11, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr11, 3
	slli.d	$t0, $t0, 2
	fstx.s	$fa3, $a1, $s0
	fstx.s	$fa4, $a2, $s0
	fstx.s	$fa5, $a3, $s0
	fstx.s	$fa6, $a4, $s0
	fstx.s	$fa7, $a5, $s0
	fstx.s	$ft0, $a6, $s0
	fstx.s	$ft1, $a7, $s0
	fstx.s	$ft2, $t0, $s0
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a0, .LBB2_169
# %bb.170:                              # %for.cond103.preheader.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$a2, $zero
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_171:                              # %for.cond103.preheader
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_172 Depth 3
                                        #       Child Loop BB2_175 Depth 3
                                        #         Child Loop BB2_177 Depth 4
                                        #       Child Loop BB2_183 Depth 3
	alsl.d	$a0, $a2, $a2, 1
	slli.d	$a0, $a0, 5
	lu12i.w	$a1, 16
	ori	$a1, $a1, 2376
	add.d	$a1, $sp, $a1
	add.d	$a0, $a1, $a0
	xvldrepl.w	$xr0, $a0, 0
	xvst	$xr0, $sp, 288                  # 32-byte Folded Spill
	xvldrepl.w	$xr0, $a0, 4
	xvst	$xr0, $sp, 256                  # 32-byte Folded Spill
	xvldrepl.w	$xr2, $a0, 8
	xvldrepl.w	$xr3, $a0, 12
	xvldrepl.w	$xr4, $a0, 16
	xvldrepl.w	$xr5, $a0, 20
	xvldrepl.w	$xr6, $a0, 24
	xvldrepl.w	$xr7, $a0, 28
	xvldrepl.w	$xr8, $a0, 32
	xvldrepl.w	$xr9, $a0, 36
	xvldrepl.w	$xr10, $a0, 40
	xvldrepl.w	$xr11, $a0, 44
	xvldrepl.w	$xr12, $a0, 48
	xvldrepl.w	$xr13, $a0, 52
	xvldrepl.w	$xr14, $a0, 56
	xvldrepl.w	$xr15, $a0, 60
	xvldrepl.w	$xr16, $a0, 64
	xvldrepl.w	$xr17, $a0, 68
	xvldrepl.w	$xr18, $a0, 72
	xvldrepl.w	$xr19, $a0, 76
	xvldrepl.w	$xr20, $a0, 80
	xvldrepl.w	$xr21, $a0, 84
	xvldrepl.w	$xr22, $a0, 88
	xvldrepl.w	$xr23, $a0, 92
	xvld	$xr24, $s1, %pc_lo12(.LCPI2_0)
	xvld	$xr25, $s4, %pc_lo12(.LCPI2_1)
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	slli.d	$a0, $a2, 11
	addi.d	$a1, $sp, 328
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ori	$a0, $zero, 512
	lu12i.w	$a1, 4
	ori	$a1, $a1, 2376
	add.d	$ra, $sp, $a1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2376
	add.d	$s0, $sp, $a1
	.p2align	4, , 16
.LBB2_172:                              # %vector.body345
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvrepli.d	$xr26, 96
	xvmul.d	$xr27, $xr24, $xr26
	xvmul.d	$xr26, $xr25, $xr26
	xvpickve2gr.d	$fp, $xr26, 0
	add.d	$t4, $ra, $fp
	xvpickve2gr.d	$s1, $xr26, 1
	add.d	$t5, $ra, $s1
	xvpickve2gr.d	$s2, $xr26, 2
	add.d	$t6, $ra, $s2
	xvpickve2gr.d	$s3, $xr26, 3
	add.d	$t7, $ra, $s3
	xvpickve2gr.d	$s4, $xr27, 0
	add.d	$t8, $ra, $s4
	xvpickve2gr.d	$s5, $xr27, 1
	add.d	$t3, $ra, $s5
	xvpickve2gr.d	$s6, $xr27, 2
	add.d	$t2, $ra, $s6
	xvpickve2gr.d	$s7, $xr27, 3
	add.d	$t1, $ra, $s7
	xvslli.d	$xr26, $xr24, 3
	xvslli.d	$xr27, $xr25, 3
	xvpickve2gr.d	$a1, $xr27, 0
	xvpickve2gr.d	$a2, $xr27, 1
	xvpickve2gr.d	$a3, $xr27, 2
	xvpickve2gr.d	$a4, $xr27, 3
	xvpickve2gr.d	$a5, $xr26, 0
	xvpickve2gr.d	$a6, $xr26, 1
	xvpickve2gr.d	$a7, $xr26, 2
	xvpickve2gr.d	$t0, $xr26, 3
	fldx.s	$fs3, $fp, $ra
	fldx.s	$fs2, $s1, $ra
	fldx.s	$fs4, $s2, $ra
	fldx.s	$fs5, $s3, $ra
	fldx.s	$fs6, $s4, $ra
	fldx.s	$fs7, $s5, $ra
	fldx.s	$fa0, $s6, $ra
	fldx.s	$fa1, $s7, $ra
	xvinsve0.w	$xr27, $xr26, 1
	xvinsve0.w	$xr27, $xr28, 2
	xvinsve0.w	$xr27, $xr29, 3
	xvinsve0.w	$xr27, $xr30, 4
	xvinsve0.w	$xr27, $xr31, 5
	xvinsve0.w	$xr27, $xr0, 6
	xvinsve0.w	$xr27, $xr1, 7
	fld.s	$fa0, $t4, 4
	fld.s	$fa1, $t5, 4
	fld.s	$fs2, $t6, 4
	fld.s	$fs4, $t7, 4
	fld.s	$fs5, $t8, 4
	fld.s	$fs6, $t3, 4
	fld.s	$fs7, $t2, 4
	xvinsve0.w	$xr0, $xr1, 1
	fld.s	$fa1, $t1, 4
	xvinsve0.w	$xr0, $xr26, 2
	xvinsve0.w	$xr0, $xr28, 3
	xvinsve0.w	$xr0, $xr29, 4
	xvinsve0.w	$xr0, $xr30, 5
	xvinsve0.w	$xr0, $xr31, 6
	xvinsve0.w	$xr0, $xr1, 7
	xvbitrevi.w	$xr1, $xr0, 31
	xvld	$xr30, $sp, 256                 # 32-byte Folded Reload
	xvfmul.s	$xr1, $xr30, $xr1
	xvld	$xr29, $sp, 288                 # 32-byte Folded Reload
	xvfmadd.s	$xr1, $xr29, $xr27, $xr1
	xvrepli.b	$xr28, 0
	xvfadd.s	$xr26, $xr1, $xr28
	xvfmul.s	$xr1, $xr27, $xr30
	xvfmadd.s	$xr0, $xr29, $xr0, $xr1
	xvfadd.s	$xr27, $xr0, $xr28
	fld.s	$fs4, $t4, 8
	fld.s	$fa0, $t5, 8
	fld.s	$fa1, $t6, 8
	fld.s	$fs5, $t7, 8
	fld.s	$fs6, $t8, 8
	fld.s	$fs7, $t3, 8
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t2, 8
	xvinsve0.w	$xr28, $xr1, 2
	fld.s	$fa1, $t1, 8
	xvinsve0.w	$xr28, $xr29, 3
	xvinsve0.w	$xr28, $xr30, 4
	xvinsve0.w	$xr28, $xr31, 5
	xvinsve0.w	$xr28, $xr0, 6
	xvinsve0.w	$xr28, $xr1, 7
	fld.s	$fa0, $t4, 12
	fld.s	$fa1, $t5, 12
	fld.s	$fs5, $t6, 12
	fld.s	$fs6, $t7, 12
	fld.s	$fs7, $t8, 12
	xvinsve0.w	$xr0, $xr1, 1
	fld.s	$fa1, $t3, 12
	xvinsve0.w	$xr0, $xr29, 2
	fld.s	$fs5, $t2, 12
	xvinsve0.w	$xr0, $xr30, 3
	fld.s	$fs6, $t1, 12
	xvinsve0.w	$xr0, $xr31, 4
	xvinsve0.w	$xr0, $xr1, 5
	xvinsve0.w	$xr0, $xr29, 6
	xvinsve0.w	$xr0, $xr30, 7
	xvbitrevi.w	$xr1, $xr0, 31
	xvfmul.s	$xr1, $xr3, $xr1
	xvfmadd.s	$xr1, $xr2, $xr28, $xr1
	xvfadd.s	$xr26, $xr26, $xr1
	xvfmul.s	$xr1, $xr28, $xr3
	xvfmadd.s	$xr0, $xr2, $xr0, $xr1
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t4, 16
	fld.s	$fa0, $t5, 16
	fld.s	$fa1, $t6, 16
	fld.s	$fs5, $t7, 16
	fld.s	$fs6, $t8, 16
	fld.s	$fs7, $t3, 16
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t2, 16
	xvinsve0.w	$xr28, $xr1, 2
	fld.s	$fa1, $t1, 16
	xvinsve0.w	$xr28, $xr29, 3
	xvinsve0.w	$xr28, $xr30, 4
	xvinsve0.w	$xr28, $xr31, 5
	xvinsve0.w	$xr28, $xr0, 6
	xvinsve0.w	$xr28, $xr1, 7
	fld.s	$fa0, $t4, 20
	fld.s	$fa1, $t5, 20
	fld.s	$fs5, $t6, 20
	fld.s	$fs6, $t7, 20
	fld.s	$fs7, $t8, 20
	xvinsve0.w	$xr0, $xr1, 1
	fld.s	$fa1, $t3, 20
	xvinsve0.w	$xr0, $xr29, 2
	fld.s	$fs5, $t2, 20
	xvinsve0.w	$xr0, $xr30, 3
	fld.s	$fs6, $t1, 20
	xvinsve0.w	$xr0, $xr31, 4
	xvinsve0.w	$xr0, $xr1, 5
	xvinsve0.w	$xr0, $xr29, 6
	xvinsve0.w	$xr0, $xr30, 7
	xvbitrevi.w	$xr1, $xr0, 31
	xvfmul.s	$xr1, $xr5, $xr1
	xvfmadd.s	$xr1, $xr4, $xr28, $xr1
	xvfadd.s	$xr26, $xr26, $xr1
	xvfmul.s	$xr1, $xr28, $xr5
	xvfmadd.s	$xr0, $xr4, $xr0, $xr1
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t4, 24
	fld.s	$fa0, $t5, 24
	fld.s	$fa1, $t6, 24
	fld.s	$fs5, $t7, 24
	fld.s	$fs6, $t8, 24
	fld.s	$fs7, $t3, 24
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t2, 24
	xvinsve0.w	$xr28, $xr1, 2
	fld.s	$fa1, $t1, 24
	xvinsve0.w	$xr28, $xr29, 3
	xvinsve0.w	$xr28, $xr30, 4
	xvinsve0.w	$xr28, $xr31, 5
	xvinsve0.w	$xr28, $xr0, 6
	xvinsve0.w	$xr28, $xr1, 7
	fld.s	$fa0, $t4, 28
	fld.s	$fa1, $t5, 28
	fld.s	$fs5, $t6, 28
	fld.s	$fs6, $t7, 28
	fld.s	$fs7, $t8, 28
	xvinsve0.w	$xr0, $xr1, 1
	fld.s	$fa1, $t3, 28
	xvinsve0.w	$xr0, $xr29, 2
	fld.s	$fs5, $t2, 28
	xvinsve0.w	$xr0, $xr30, 3
	fld.s	$fs6, $t1, 28
	xvinsve0.w	$xr0, $xr31, 4
	xvinsve0.w	$xr0, $xr1, 5
	xvinsve0.w	$xr0, $xr29, 6
	xvinsve0.w	$xr0, $xr30, 7
	xvbitrevi.w	$xr1, $xr0, 31
	xvfmul.s	$xr1, $xr7, $xr1
	xvfmadd.s	$xr1, $xr6, $xr28, $xr1
	xvfadd.s	$xr26, $xr26, $xr1
	xvfmul.s	$xr1, $xr28, $xr7
	xvfmadd.s	$xr0, $xr6, $xr0, $xr1
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t4, 32
	fld.s	$fa0, $t5, 32
	fld.s	$fa1, $t6, 32
	fld.s	$fs5, $t7, 32
	fld.s	$fs6, $t8, 32
	fld.s	$fs7, $t3, 32
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t2, 32
	xvinsve0.w	$xr28, $xr1, 2
	fld.s	$fa1, $t1, 32
	xvinsve0.w	$xr28, $xr29, 3
	xvinsve0.w	$xr28, $xr30, 4
	xvinsve0.w	$xr28, $xr31, 5
	xvinsve0.w	$xr28, $xr0, 6
	xvinsve0.w	$xr28, $xr1, 7
	fld.s	$fa0, $t4, 36
	fld.s	$fa1, $t5, 36
	fld.s	$fs5, $t6, 36
	fld.s	$fs6, $t7, 36
	fld.s	$fs7, $t8, 36
	xvinsve0.w	$xr0, $xr1, 1
	fld.s	$fa1, $t3, 36
	xvinsve0.w	$xr0, $xr29, 2
	fld.s	$fs5, $t2, 36
	xvinsve0.w	$xr0, $xr30, 3
	fld.s	$fs6, $t1, 36
	xvinsve0.w	$xr0, $xr31, 4
	xvinsve0.w	$xr0, $xr1, 5
	xvinsve0.w	$xr0, $xr29, 6
	xvinsve0.w	$xr0, $xr30, 7
	xvbitrevi.w	$xr1, $xr0, 31
	xvfmul.s	$xr1, $xr9, $xr1
	xvfmadd.s	$xr1, $xr8, $xr28, $xr1
	xvfadd.s	$xr26, $xr26, $xr1
	xvfmul.s	$xr1, $xr28, $xr9
	xvfmadd.s	$xr0, $xr8, $xr0, $xr1
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t4, 40
	fld.s	$fa0, $t5, 40
	fld.s	$fa1, $t6, 40
	fld.s	$fs5, $t7, 40
	fld.s	$fs6, $t8, 40
	fld.s	$fs7, $t3, 40
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t2, 40
	xvinsve0.w	$xr28, $xr1, 2
	fld.s	$fa1, $t1, 40
	xvinsve0.w	$xr28, $xr29, 3
	xvinsve0.w	$xr28, $xr30, 4
	xvinsve0.w	$xr28, $xr31, 5
	xvinsve0.w	$xr28, $xr0, 6
	xvinsve0.w	$xr28, $xr1, 7
	fld.s	$fa0, $t4, 44
	fld.s	$fa1, $t5, 44
	fld.s	$fs5, $t6, 44
	fld.s	$fs6, $t7, 44
	fld.s	$fs7, $t8, 44
	xvinsve0.w	$xr0, $xr1, 1
	fld.s	$fa1, $t3, 44
	xvinsve0.w	$xr0, $xr29, 2
	fld.s	$fs5, $t2, 44
	xvinsve0.w	$xr0, $xr30, 3
	fld.s	$fs6, $t1, 44
	xvinsve0.w	$xr0, $xr31, 4
	xvinsve0.w	$xr0, $xr1, 5
	xvinsve0.w	$xr0, $xr29, 6
	xvinsve0.w	$xr0, $xr30, 7
	xvbitrevi.w	$xr1, $xr0, 31
	xvfmul.s	$xr1, $xr11, $xr1
	xvfmadd.s	$xr1, $xr10, $xr28, $xr1
	xvfadd.s	$xr26, $xr26, $xr1
	xvfmul.s	$xr1, $xr28, $xr11
	xvfmadd.s	$xr0, $xr10, $xr0, $xr1
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t4, 48
	fld.s	$fa0, $t5, 48
	fld.s	$fa1, $t6, 48
	fld.s	$fs5, $t7, 48
	fld.s	$fs6, $t8, 48
	fld.s	$fs7, $t3, 48
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t2, 48
	xvinsve0.w	$xr28, $xr1, 2
	fld.s	$fa1, $t1, 48
	xvinsve0.w	$xr28, $xr29, 3
	xvinsve0.w	$xr28, $xr30, 4
	xvinsve0.w	$xr28, $xr31, 5
	xvinsve0.w	$xr28, $xr0, 6
	xvinsve0.w	$xr28, $xr1, 7
	fld.s	$fa0, $t4, 52
	fld.s	$fa1, $t5, 52
	fld.s	$fs5, $t6, 52
	fld.s	$fs6, $t7, 52
	fld.s	$fs7, $t8, 52
	xvinsve0.w	$xr0, $xr1, 1
	fld.s	$fa1, $t3, 52
	xvinsve0.w	$xr0, $xr29, 2
	fld.s	$fs5, $t2, 52
	xvinsve0.w	$xr0, $xr30, 3
	fld.s	$fs6, $t1, 52
	xvinsve0.w	$xr0, $xr31, 4
	xvinsve0.w	$xr0, $xr1, 5
	xvinsve0.w	$xr0, $xr29, 6
	xvinsve0.w	$xr0, $xr30, 7
	xvbitrevi.w	$xr1, $xr0, 31
	xvfmul.s	$xr1, $xr13, $xr1
	xvfmadd.s	$xr1, $xr12, $xr28, $xr1
	xvfadd.s	$xr26, $xr26, $xr1
	xvfmul.s	$xr1, $xr28, $xr13
	xvfmadd.s	$xr0, $xr12, $xr0, $xr1
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t4, 56
	fld.s	$fa0, $t5, 56
	fld.s	$fa1, $t6, 56
	fld.s	$fs5, $t7, 56
	fld.s	$fs6, $t8, 56
	fld.s	$fs7, $t3, 56
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t2, 56
	xvinsve0.w	$xr28, $xr1, 2
	fld.s	$fa1, $t1, 56
	xvinsve0.w	$xr28, $xr29, 3
	xvinsve0.w	$xr28, $xr30, 4
	xvinsve0.w	$xr28, $xr31, 5
	xvinsve0.w	$xr28, $xr0, 6
	xvinsve0.w	$xr28, $xr1, 7
	fld.s	$fa0, $t4, 60
	fld.s	$fa1, $t5, 60
	fld.s	$fs5, $t6, 60
	fld.s	$fs6, $t7, 60
	fld.s	$fs7, $t8, 60
	xvinsve0.w	$xr0, $xr1, 1
	fld.s	$fa1, $t3, 60
	xvinsve0.w	$xr0, $xr29, 2
	fld.s	$fs5, $t2, 60
	xvinsve0.w	$xr0, $xr30, 3
	fld.s	$fs6, $t1, 60
	xvinsve0.w	$xr0, $xr31, 4
	xvinsve0.w	$xr0, $xr1, 5
	xvinsve0.w	$xr0, $xr29, 6
	xvinsve0.w	$xr0, $xr30, 7
	xvbitrevi.w	$xr1, $xr0, 31
	xvfmul.s	$xr1, $xr15, $xr1
	xvfmadd.s	$xr1, $xr14, $xr28, $xr1
	xvfadd.s	$xr26, $xr26, $xr1
	xvfmul.s	$xr1, $xr28, $xr15
	xvfmadd.s	$xr0, $xr14, $xr0, $xr1
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t4, 64
	fld.s	$fa0, $t5, 64
	fld.s	$fa1, $t6, 64
	fld.s	$fs5, $t7, 64
	fld.s	$fs6, $t8, 64
	fld.s	$fs7, $t3, 64
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t2, 64
	xvinsve0.w	$xr28, $xr1, 2
	fld.s	$fa1, $t1, 64
	xvinsve0.w	$xr28, $xr29, 3
	xvinsve0.w	$xr28, $xr30, 4
	xvinsve0.w	$xr28, $xr31, 5
	xvinsve0.w	$xr28, $xr0, 6
	xvinsve0.w	$xr28, $xr1, 7
	fld.s	$fa0, $t4, 68
	fld.s	$fa1, $t5, 68
	fld.s	$fs5, $t6, 68
	fld.s	$fs6, $t7, 68
	fld.s	$fs7, $t8, 68
	xvinsve0.w	$xr0, $xr1, 1
	fld.s	$fa1, $t3, 68
	xvinsve0.w	$xr0, $xr29, 2
	fld.s	$fs5, $t2, 68
	xvinsve0.w	$xr0, $xr30, 3
	fld.s	$fs6, $t1, 68
	xvinsve0.w	$xr0, $xr31, 4
	xvinsve0.w	$xr0, $xr1, 5
	xvinsve0.w	$xr0, $xr29, 6
	xvinsve0.w	$xr0, $xr30, 7
	xvbitrevi.w	$xr1, $xr0, 31
	xvfmul.s	$xr1, $xr17, $xr1
	xvfmadd.s	$xr1, $xr16, $xr28, $xr1
	xvfadd.s	$xr26, $xr26, $xr1
	xvfmul.s	$xr1, $xr28, $xr17
	xvfmadd.s	$xr0, $xr16, $xr0, $xr1
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t4, 72
	fld.s	$fa0, $t5, 72
	fld.s	$fa1, $t6, 72
	fld.s	$fs5, $t7, 72
	fld.s	$fs6, $t8, 72
	fld.s	$fs7, $t3, 72
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t2, 72
	xvinsve0.w	$xr28, $xr1, 2
	fld.s	$fa1, $t1, 72
	xvinsve0.w	$xr28, $xr29, 3
	xvinsve0.w	$xr28, $xr30, 4
	xvinsve0.w	$xr28, $xr31, 5
	xvinsve0.w	$xr28, $xr0, 6
	xvinsve0.w	$xr28, $xr1, 7
	fld.s	$fa0, $t4, 76
	fld.s	$fa1, $t5, 76
	fld.s	$fs5, $t6, 76
	fld.s	$fs6, $t7, 76
	fld.s	$fs7, $t8, 76
	xvinsve0.w	$xr0, $xr1, 1
	fld.s	$fa1, $t3, 76
	xvinsve0.w	$xr0, $xr29, 2
	fld.s	$fs5, $t2, 76
	xvinsve0.w	$xr0, $xr30, 3
	fld.s	$fs6, $t1, 76
	xvinsve0.w	$xr0, $xr31, 4
	xvinsve0.w	$xr0, $xr1, 5
	xvinsve0.w	$xr0, $xr29, 6
	xvinsve0.w	$xr0, $xr30, 7
	xvbitrevi.w	$xr1, $xr0, 31
	xvfmul.s	$xr1, $xr19, $xr1
	xvfmadd.s	$xr1, $xr18, $xr28, $xr1
	xvfadd.s	$xr26, $xr26, $xr1
	xvfmul.s	$xr1, $xr28, $xr19
	xvfmadd.s	$xr0, $xr18, $xr0, $xr1
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t4, 80
	fld.s	$fa0, $t5, 80
	fld.s	$fa1, $t6, 80
	fld.s	$fs5, $t7, 80
	fld.s	$fs6, $t8, 80
	fld.s	$fs7, $t3, 80
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t2, 80
	xvinsve0.w	$xr28, $xr1, 2
	fld.s	$fa1, $t1, 80
	xvinsve0.w	$xr28, $xr29, 3
	xvinsve0.w	$xr28, $xr30, 4
	xvinsve0.w	$xr28, $xr31, 5
	xvinsve0.w	$xr28, $xr0, 6
	xvinsve0.w	$xr28, $xr1, 7
	fld.s	$fa0, $t4, 84
	fld.s	$fa1, $t5, 84
	fld.s	$fs5, $t6, 84
	fld.s	$fs6, $t7, 84
	fld.s	$fs7, $t8, 84
	xvinsve0.w	$xr0, $xr1, 1
	fld.s	$fa1, $t3, 84
	xvinsve0.w	$xr0, $xr29, 2
	fld.s	$fs5, $t2, 84
	xvinsve0.w	$xr0, $xr30, 3
	fld.s	$fs6, $t1, 84
	xvinsve0.w	$xr0, $xr31, 4
	xvinsve0.w	$xr0, $xr1, 5
	xvinsve0.w	$xr0, $xr29, 6
	xvinsve0.w	$xr0, $xr30, 7
	xvbitrevi.w	$xr1, $xr0, 31
	xvfmul.s	$xr1, $xr21, $xr1
	xvfmadd.s	$xr1, $xr20, $xr28, $xr1
	xvfadd.s	$xr26, $xr26, $xr1
	xvfmul.s	$xr1, $xr28, $xr21
	xvfmadd.s	$xr0, $xr20, $xr0, $xr1
	xvfadd.s	$xr27, $xr27, $xr0
	fld.s	$fs4, $t4, 88
	fld.s	$fa0, $t5, 88
	fld.s	$fa1, $t6, 88
	fld.s	$fs5, $t7, 88
	fld.s	$fs6, $t8, 88
	fld.s	$fs7, $t3, 88
	xvinsve0.w	$xr28, $xr0, 1
	fld.s	$fa0, $t2, 88
	xvinsve0.w	$xr28, $xr1, 2
	fld.s	$fa1, $t1, 88
	xvinsve0.w	$xr28, $xr29, 3
	xvinsve0.w	$xr28, $xr30, 4
	xvinsve0.w	$xr28, $xr31, 5
	xvinsve0.w	$xr28, $xr0, 6
	xvinsve0.w	$xr28, $xr1, 7
	fld.s	$fa0, $t4, 92
	fld.s	$fa1, $t5, 92
	fld.s	$fs5, $t6, 92
	fld.s	$fs6, $t7, 92
	fld.s	$fs7, $t8, 92
	xvinsve0.w	$xr0, $xr1, 1
	fld.s	$fa1, $t3, 92
	xvinsve0.w	$xr0, $xr29, 2
	fld.s	$fs5, $t2, 92
	xvinsve0.w	$xr0, $xr30, 3
	fld.s	$fs6, $t1, 92
	xvinsve0.w	$xr0, $xr31, 4
	xvinsve0.w	$xr0, $xr1, 5
	xvinsve0.w	$xr0, $xr29, 6
	xvinsve0.w	$xr0, $xr30, 7
	xvbitrevi.w	$xr1, $xr0, 31
	xvfmul.s	$xr1, $xr23, $xr1
	xvfmadd.s	$xr1, $xr22, $xr28, $xr1
	xvfadd.s	$xr1, $xr26, $xr1
	xvfmul.s	$xr26, $xr28, $xr23
	xvfmadd.s	$xr0, $xr22, $xr0, $xr26
	xvfadd.s	$xr0, $xr27, $xr0
	add.d	$a1, $s0, $a1
	add.d	$a2, $s0, $a2
	add.d	$a3, $s0, $a3
	add.d	$a4, $s0, $a4
	add.d	$a5, $s0, $a5
	add.d	$a6, $s0, $a6
	add.d	$a7, $s0, $a7
	add.d	$t0, $s0, $t0
	xvstelm.w	$xr1, $a1, 0, 0
	xvstelm.w	$xr1, $a2, 0, 1
	xvstelm.w	$xr1, $a3, 0, 2
	xvstelm.w	$xr1, $a4, 0, 3
	xvstelm.w	$xr1, $a5, 0, 4
	xvstelm.w	$xr1, $a6, 0, 5
	xvstelm.w	$xr1, $a7, 0, 6
	xvstelm.w	$xr1, $t0, 0, 7
	xvstelm.w	$xr0, $a1, 4, 0
	xvstelm.w	$xr0, $a2, 4, 1
	xvstelm.w	$xr0, $a3, 4, 2
	xvstelm.w	$xr0, $a4, 4, 3
	xvstelm.w	$xr0, $a5, 4, 4
	xvstelm.w	$xr0, $a6, 4, 5
	xvstelm.w	$xr0, $a7, 4, 6
	xvstelm.w	$xr0, $t0, 4, 7
	xvaddi.du	$xr25, $xr25, 8
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr24, $xr24, 8
	bnez	$a0, .LBB2_172
# %bb.173:                              # %for.cond121.preheader
                                        #   in Loop: Header=BB2_171 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 5
	lu12i.w	$a1, 208
	ori	$a1, $a1, 2760
	add.d	$a1, $sp, $a1
	ldx.w	$s6, $a0, $a1
	move	$fp, $zero
	add.d	$s7, $a1, $a0
	addi.d	$s5, $s6, -1
	slli.w	$s4, $s6, 1
	ld.d	$s1, $s7, 24
	ld.w	$a1, $s7, 8
	ld.w	$a0, $s7, 4
	ori	$a7, $zero, 1
	slt	$a2, $a7, $s4
	maskeqz	$a3, $s4, $a2
	masknez	$a2, $a7, $a2
	or	$a2, $a3, $a2
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.w	$s3, $s6, $a3, 1
	slli.d	$s2, $a2, 2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 2376
	add.d	$t0, $sp, $a2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2376
	add.d	$s0, $sp, $a2
	b	.LBB2_175
	.p2align	4, , 16
.LBB2_174:                              # %BeamFirFilter.exit178
                                        #   in Loop: Header=BB2_175 Depth=3
	addi.d	$fp, $fp, 1
	ori	$a2, $zero, 512
	beq	$fp, $a2, .LBB2_182
.LBB2_175:                              # %for.body123
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_171 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_177 Depth 4
	slli.d	$a2, $fp, 3
	ldx.d	$a3, $a2, $t0
	sub.d	$a2, $s5, $a1
	slli.w	$a2, $a2, 1
	slli.d	$a4, $a2, 2
	stx.d	$a3, $s1, $a4
	blt	$s6, $a7, .LBB2_178
# %bb.176:                              # %for.body.lr.ph.i158
                                        #   in Loop: Header=BB2_175 Depth=3
	ld.d	$a4, $s7, 16
	move	$a3, $zero
	movgr2fr.w	$fa1, $zero
	addi.d	$a4, $a4, 4
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB2_177:                              # %for.body.i160
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_171 Depth=2
                                        #       Parent Loop BB2_175 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a5, $a2, $s1, 2
	slli.d	$a6, $a2, 2
	fldx.s	$fa2, $s1, $a6
	fld.s	$fa3, $a5, 4
	fld.s	$fa4, $a4, 0
	fld.s	$fa5, $a4, -4
	fmul.s	$fa6, $fa3, $fa4
	fmadd.s	$fa6, $fa2, $fa5, $fa6
	fmul.s	$fa2, $fa2, $fa4
	fmadd.s	$fa2, $fa3, $fa5, $fa2
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa0, $fa0, $fa2
	addi.w	$a2, $a2, 2
	and	$a2, $a2, $s3
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 8
	blt	$a3, $s4, .LBB2_177
	b	.LBB2_179
	.p2align	4, , 16
.LBB2_178:                              #   in Loop: Header=BB2_175 Depth=3
	movgr2fr.w	$fa0, $zero
	fmov.s	$fa1, $fa0
.LBB2_179:                              # %for.end.i146
                                        #   in Loop: Header=BB2_175 Depth=3
	alsl.d	$a2, $fp, $s0, 3
	addi.d	$a1, $a1, 1
	and	$a1, $a1, $s5
	fst.s	$fa1, $a2, 0
	fst.s	$fa0, $a2, 4
	addi.w	$a2, $a0, 1
	addi.d	$a0, $a2, -512
	sltu	$a3, $zero, $a0
	maskeqz	$a0, $a2, $a3
	maskeqz	$a1, $a1, $a3
	ori	$a3, $zero, 512
	bne	$a2, $a3, .LBB2_174
# %bb.180:                              # %for.end.i146
                                        #   in Loop: Header=BB2_175 Depth=3
	blt	$s6, $a7, .LBB2_174
# %bb.181:                              # %for.body48.preheader.i156
                                        #   in Loop: Header=BB2_175 Depth=3
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2376
	add.d	$t0, $sp, $a0
	ori	$a7, $zero, 1
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB2_174
	.p2align	4, , 16
.LBB2_182:                              # %for.body.i179.preheader
                                        #   in Loop: Header=BB2_171 Depth=2
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	xvld	$xr0, $s1, %pc_lo12(.LCPI2_0)
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	xvld	$xr1, $s4, %pc_lo12(.LCPI2_1)
	move	$a2, $zero
	st.w	$a1, $s7, 8
	st.w	$a0, $s7, 4
	lu12i.w	$s2, 1
	lu12i.w	$a0, 184
	ori	$a0, $a0, 2760
	add.d	$s3, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 328
	add.d	$fp, $sp, $a0
	ori	$s5, $zero, 2048
	.p2align	4, , 16
.LBB2_183:                              # %vector.body
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvslli.d	$xr2, $xr0, 3
	xvslli.d	$xr3, $xr1, 3
	xvpickve2gr.d	$a0, $xr3, 0
	add.d	$a1, $s0, $a0
	xvpickve2gr.d	$a3, $xr3, 1
	add.d	$a4, $s0, $a3
	xvpickve2gr.d	$a5, $xr3, 2
	add.d	$a6, $s0, $a5
	xvpickve2gr.d	$a7, $xr3, 3
	add.d	$t0, $s0, $a7
	xvpickve2gr.d	$t1, $xr2, 0
	add.d	$t2, $s0, $t1
	xvpickve2gr.d	$t3, $xr2, 1
	add.d	$t4, $s0, $t3
	xvpickve2gr.d	$t5, $xr2, 2
	add.d	$t6, $s0, $t5
	xvpickve2gr.d	$t7, $xr2, 3
	add.d	$t8, $s0, $t7
	fldx.s	$fa2, $a0, $s0
	fldx.s	$fa3, $a3, $s0
	fldx.s	$fa4, $a5, $s0
	fldx.s	$fa5, $a7, $s0
	fldx.s	$fa6, $t1, $s0
	fldx.s	$fa7, $t3, $s0
	fldx.s	$ft0, $t5, $s0
	fldx.s	$ft1, $t7, $s0
	xvinsve0.w	$xr2, $xr3, 1
	xvinsve0.w	$xr2, $xr4, 2
	xvinsve0.w	$xr2, $xr5, 3
	xvinsve0.w	$xr2, $xr6, 4
	xvinsve0.w	$xr2, $xr7, 5
	xvinsve0.w	$xr2, $xr8, 6
	xvinsve0.w	$xr2, $xr9, 7
	fld.s	$fa3, $a1, 4
	fld.s	$fa4, $a4, 4
	fld.s	$fa5, $a6, 4
	fld.s	$fa6, $t0, 4
	fld.s	$fa7, $t2, 4
	fld.s	$ft0, $t4, 4
	fld.s	$ft1, $t6, 4
	fld.s	$ft2, $t8, 4
	xvinsve0.w	$xr3, $xr4, 1
	xvinsve0.w	$xr3, $xr5, 2
	xvinsve0.w	$xr3, $xr6, 3
	xvinsve0.w	$xr3, $xr7, 4
	xvinsve0.w	$xr3, $xr8, 5
	xvinsve0.w	$xr3, $xr9, 6
	xvinsve0.w	$xr3, $xr10, 7
	xvfmul.s	$xr3, $xr3, $xr3
	xvfmadd.s	$xr2, $xr2, $xr2, $xr3
	xvfsqrt.s	$xr2, $xr2
	xvstx	$xr2, $a2, $fp
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a2, $a2, 32
	xvaddi.du	$xr0, $xr0, 8
	bne	$a2, $s5, .LBB2_183
# %bb.184:                              # %Magnitude.exit
                                        #   in Loop: Header=BB2_171 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 328
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 2048
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB2_171
# %bb.185:                              # %for.cond149.preheader.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.w	$fp, $zero, -2048
	lu12i.w	$s4, 2
	.p2align	4, , 16
.LBB2_186:                              # %for.cond149.preheader
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 328
	add.d	$s0, $a0, $fp
	pcalau12i	$a0, %pc_hi20(detector_out_StrictFP)
	addi.d	$a0, $a0, %pc_lo12(detector_out_StrictFP)
	add.d	$s1, $a0, $fp
	fldx.s	$fa1, $s0, $s5
	fldx.s	$fa0, $s1, $s5
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI2_2)
	fsub.s	$fa2, $fa1, $fa0
	fabs.s	$fa2, $fa2
	fcvt.d.s	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bceqz	$fcc0, .LBB2_192
# %bb.187:                              # %if.end
                                        #   in Loop: Header=BB2_186 Depth=2
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s0, $s2
	fldx.s	$fa0, $s1, $s2
	fsub.s	$fa2, $fa1, $fa0
	fabs.s	$fa2, $fa2
	fcvt.d.s	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB2_192
# %bb.188:                              # %if.end.1
                                        #   in Loop: Header=BB2_186 Depth=2
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2048
	fldx.s	$fa1, $s0, $a0
	fldx.s	$fa0, $s1, $a0
	fsub.s	$fa2, $fa1, $fa0
	fabs.s	$fa2, $fa2
	fcvt.d.s	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB2_192
# %bb.189:                              # %if.end.2
                                        #   in Loop: Header=BB2_186 Depth=2
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s0, $s4
	fldx.s	$fa0, $s1, $s4
	fsub.s	$fa2, $fa1, $fa0
	fabs.s	$fa2, $fa2
	fcvt.d.s	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB2_192
# %bb.190:                              # %if.end.3
                                        #   in Loop: Header=BB2_186 Depth=2
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 4
	ori	$t0, $zero, 1024
	bnez	$fp, .LBB2_186
	b	.LBB2_3
.LBB2_191:                              # %while.end
	lu12i.w	$a0, 208
	ori	$a0, $a0, 1776
	add.d	$sp, $sp, $a0
	fld.d	$fs7, $sp, 1880                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB2_192:                              # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	lu12i.w	$a4, -487882
	ori	$a4, $a4, 2289
	lu32i.d	$a4, 325813
	lu52i.d	$a4, $a4, 1006
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	begin, .Lfunc_end2-begin
                                        # -- End function
	.globl	BeamFirSetup                    # -- Begin function BeamFirSetup
	.p2align	5
	.type	BeamFirSetup,@function
BeamFirSetup:                           # @BeamFirSetup
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s2, $a0
	st.w	$a1, $a0, 0
	st.d	$zero, $a0, 4
	slli.d	$s0, $a1, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s2, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s2, 24
	lu12i.w	$a0, 260096
	ori	$a1, $zero, 1
	st.d	$a0, $s1, 0
	blt	$fp, $a1, .LBB3_2
# %bb.1:                                # %for.body.preheader
	addi.d	$a0, $s1, 4
	slli.w	$a1, $fp, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	addi.d	$fp, $a1, -4
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 4
	move	$a1, $zero
	move	$a2, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB3_2:                                # %for.end
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	BeamFirSetup, .Lfunc_end3-BeamFirSetup
                                        # -- End function
	.globl	BeamFormWeights                 # -- Begin function BeamFormWeights
	.p2align	5
	.type	BeamFormWeights,@function
BeamFormWeights:                        # @BeamFormWeights
# %bb.0:                                # %entry
	beqz	$a0, .LBB4_3
# %bb.1:                                # %for.inc
	ori	$a2, $zero, 1
	st.d	$zero, $a1, 0
	bne	$a0, $a2, .LBB4_13
# %bb.2:                                # %for.inc.1.thread
	lu12i.w	$a0, 260096
	st.w	$a0, $a1, 8
	b	.LBB4_4
.LBB4_3:                                # %for.inc.1.thread16
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 0
	st.w	$zero, $a1, 8
.LBB4_4:                                # %for.inc.2.thread21
	st.d	$zero, $a1, 12
	st.w	$zero, $a1, 20
.LBB4_5:                                # %for.inc.10.thread61
	st.d	$zero, $a1, 24
.LBB4_6:                                # %for.inc.10.thread61
	st.d	$zero, $a1, 32
.LBB4_7:                                # %for.inc.10.thread61
	st.d	$zero, $a1, 40
.LBB4_8:                                # %for.inc.10.thread61
	st.d	$zero, $a1, 48
.LBB4_9:                                # %for.inc.10.thread61
	st.d	$zero, $a1, 56
.LBB4_10:                               # %for.inc.10.thread61
	st.d	$zero, $a1, 64
.LBB4_11:                               # %for.inc.10.thread61
	st.d	$zero, $a1, 72
.LBB4_12:                               # %for.inc.10.thread61
	st.d	$zero, $a1, 80
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $a1, 88
	st.w	$zero, $a1, 92
	ret
.LBB4_13:                               # %for.inc.1
	ori	$a2, $zero, 2
	st.d	$zero, $a1, 8
	bne	$a0, $a2, .LBB4_15
# %bb.14:                               # %for.inc.2.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 16
	b	.LBB4_5
.LBB4_15:                               # %for.inc.2
	ori	$a2, $zero, 3
	st.d	$zero, $a1, 16
	bne	$a0, $a2, .LBB4_17
# %bb.16:                               # %for.inc.3.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 24
	b	.LBB4_6
.LBB4_17:                               # %for.inc.3
	ori	$a2, $zero, 4
	st.d	$zero, $a1, 24
	bne	$a0, $a2, .LBB4_19
# %bb.18:                               # %for.inc.4.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 32
	b	.LBB4_7
.LBB4_19:                               # %for.inc.4
	ori	$a2, $zero, 5
	st.d	$zero, $a1, 32
	bne	$a0, $a2, .LBB4_21
# %bb.20:                               # %for.inc.5.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 40
	b	.LBB4_8
.LBB4_21:                               # %for.inc.5
	ori	$a2, $zero, 6
	st.d	$zero, $a1, 40
	bne	$a0, $a2, .LBB4_23
# %bb.22:                               # %for.inc.6.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 48
	b	.LBB4_9
.LBB4_23:                               # %for.inc.6
	ori	$a2, $zero, 7
	st.d	$zero, $a1, 48
	bne	$a0, $a2, .LBB4_25
# %bb.24:                               # %for.inc.7.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 56
	b	.LBB4_10
.LBB4_25:                               # %for.inc.7
	ori	$a2, $zero, 8
	st.d	$zero, $a1, 56
	bne	$a0, $a2, .LBB4_27
# %bb.26:                               # %for.inc.8.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 64
	b	.LBB4_11
.LBB4_27:                               # %for.inc.8
	ori	$a2, $zero, 9
	st.d	$zero, $a1, 64
	bne	$a0, $a2, .LBB4_29
# %bb.28:                               # %for.inc.9.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 72
	b	.LBB4_12
.LBB4_29:                               # %for.inc.9
	ori	$a2, $zero, 10
	st.d	$zero, $a1, 72
	bne	$a0, $a2, .LBB4_31
# %bb.30:                               # %for.inc.10.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 80
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $a1, 88
	st.w	$zero, $a1, 92
	ret
.LBB4_31:                               # %for.inc.10
	st.d	$zero, $a1, 80
	addi.d	$a0, $a0, -11
	sltui	$a0, $a0, 1
	vldi	$vr0, -1168
	movgr2fr.w	$fa1, $zero
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a1, 88
	st.w	$zero, $a1, 92
	ret
.Lfunc_end4:
	.size	BeamFormWeights, .Lfunc_end4-BeamFormWeights
                                        # -- End function
	.globl	InputGenerate                   # -- Begin function InputGenerate
	.p2align	5
	.type	InputGenerate,@function
InputGenerate:                          # @InputGenerate
# %bb.0:                                # %entry
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB5_13
# %bb.1:                                # %for.body.lr.ph
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $zero
	bne	$a0, $a3, .LBB5_8
# %bb.2:                                # %for.body.preheader
	move	$s0, $zero
	slli.d	$s1, $a2, 3
	ori	$s2, $zero, 2048
	lu12i.w	$a0, 268288
	lu32i.d	$a0, -524288
	lu52i.d	$s3, $a0, 1048
	vldi	$vr2, -1168
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                # %if.then
                                        #   in Loop: Header=BB5_4 Depth=1
	stptr.d	$s3, $a1, 2048
	addi.d	$s0, $s0, 8
	addi.w	$fp, $fp, 1
	beq	$s1, $s0, .LBB5_12
.LBB5_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beq	$s0, $s2, .LBB5_3
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB5_4 Depth=1
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB5_7
.LBB5_6:                                # %if.else.split
                                        #   in Loop: Header=BB5_4 Depth=1
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	add.d	$a0, $a1, $s0
	fstx.s	$fa1, $a1, $s0
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a0, 4
	addi.d	$s0, $s0, 8
	addi.w	$fp, $fp, 1
	bne	$s1, $s0, .LBB5_4
	b	.LBB5_12
.LBB5_7:                                # %call.sqrt43
                                        #   in Loop: Header=BB5_4 Depth=1
	fmov.d	$fa0, $fa1
	move	$s4, $a1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr2, -1168
	move	$a1, $s4
	b	.LBB5_6
.LBB5_8:                                # %for.body.us.preheader
	addi.d	$s0, $a1, 4
	vldi	$vr2, -1168
	.p2align	4, , 16
.LBB5_9:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB5_11
.LBB5_10:                               # %for.body.us.split
                                        #   in Loop: Header=BB5_9 Depth=1
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s0, -4
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s0, 0
	addi.d	$s0, $s0, 8
	addi.d	$a2, $a2, -1
	add.w	$fp, $fp, $a0
	bnez	$a2, .LBB5_9
	b	.LBB5_12
.LBB5_11:                               # %call.sqrt
                                        #   in Loop: Header=BB5_9 Depth=1
	fmov.d	$fa0, $fa1
	move	$s1, $a2
	move	$s2, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr2, -1168
	move	$a0, $s2
	move	$a2, $s1
	b	.LBB5_10
.LBB5_12:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB5_13:                               # %for.end
	ret
.Lfunc_end5:
	.size	InputGenerate, .Lfunc_end5-InputGenerate
                                        # -- End function
	.globl	BeamFirFilter                   # -- Begin function BeamFirFilter
	.p2align	5
	.type	BeamFirFilter,@function
BeamFirFilter:                          # @BeamFirFilter
# %bb.0:                                # %entry
	ld.w	$a6, $a0, 0
	ld.w	$a7, $a0, 8
	addi.d	$t0, $a6, -1
	fld.s	$fa0, $a3, 0
	ld.d	$a5, $a0, 24
	sub.d	$t1, $t0, $a7
	slli.w	$t1, $t1, 1
	slli.d	$t2, $t1, 2
	fstx.s	$fa0, $a5, $t2
	fld.s	$fa0, $a3, 4
	slli.w	$a3, $a6, 1
	alsl.d	$t2, $t1, $a5, 2
	ori	$t3, $zero, 1
	fst.s	$fa0, $t2, 4
	blt	$a6, $t3, .LBB6_3
# %bb.1:                                # %for.body.lr.ph
	move	$t2, $zero
	ld.d	$t4, $a0, 16
	addi.d	$t3, $zero, -1
	alsl.w	$t3, $a6, $t3, 1
	movgr2fr.w	$fa1, $zero
	addi.d	$t4, $t4, 4
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$t5, $t1, $a5, 2
	slli.d	$t6, $t1, 2
	fldx.s	$fa2, $a5, $t6
	fld.s	$fa3, $t5, 4
	fld.s	$fa4, $t4, 0
	fld.s	$fa5, $t4, -4
	fmul.s	$fa6, $fa3, $fa4
	fmadd.s	$fa6, $fa2, $fa5, $fa6
	fmul.s	$fa2, $fa2, $fa4
	fmadd.s	$fa2, $fa3, $fa5, $fa2
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa0, $fa0, $fa2
	addi.w	$t1, $t1, 2
	and	$t1, $t1, $t3
	addi.d	$t2, $t2, 2
	addi.d	$t4, $t4, 8
	blt	$t2, $a3, .LBB6_2
	b	.LBB6_4
.LBB6_3:
	movgr2fr.w	$fa0, $zero
	fmov.s	$fa1, $fa0
.LBB6_4:                                # %for.end
	addi.d	$a7, $a7, 1
	and	$a7, $a7, $t0
	ld.w	$t0, $a0, 4
	st.w	$a7, $a0, 8
	fst.s	$fa1, $a4, 0
	fst.s	$fa0, $a4, 4
	add.w	$a2, $t0, $a2
	st.w	$a2, $a0, 4
	bne	$a2, $a1, .LBB6_7
# %bb.5:                                # %if.then
	ori	$a1, $zero, 1
	st.d	$zero, $a0, 4
	blt	$a6, $a1, .LBB6_7
# %bb.6:                                # %for.body48.preheader
	slt	$a0, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	slli.d	$a2, $a0, 2
	move	$a0, $a5
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB6_7:                                # %if.end
	ret
.Lfunc_end6:
	.size	BeamFirFilter, .Lfunc_end6-BeamFirFilter
                                        # -- End function
	.globl	BeamForm                        # -- Begin function BeamForm
	.p2align	5
	.type	BeamForm,@function
BeamForm:                               # @BeamForm
# %bb.0:                                # %entry
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a2, 0
	fneg.s	$fa4, $fa1
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa4, $fa0, $fa3, $fa4
	movgr2fr.w	$fa5, $zero
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa2, $fa3, $fa2
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a2, 12
	fld.s	$fa3, $a1, 12
	fld.s	$fa6, $a2, 8
	fadd.s	$fa0, $fa0, $fa5
	fneg.s	$fa5, $fa2
	fmul.s	$fa5, $fa3, $fa5
	fmadd.s	$fa5, $fa1, $fa6, $fa5
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa3, $fa6, $fa3
	fmadd.s	$fa1, $fa1, $fa2, $fa3
	fld.s	$fa2, $a1, 16
	fld.s	$fa3, $a2, 20
	fld.s	$fa5, $a1, 20
	fld.s	$fa6, $a2, 16
	fadd.s	$fa0, $fa0, $fa1
	fneg.s	$fa1, $fa3
	fmul.s	$fa1, $fa5, $fa1
	fmadd.s	$fa1, $fa2, $fa6, $fa1
	fadd.s	$fa1, $fa4, $fa1
	fmul.s	$fa4, $fa6, $fa5
	fmadd.s	$fa2, $fa2, $fa3, $fa4
	fld.s	$fa3, $a1, 24
	fld.s	$fa4, $a2, 28
	fld.s	$fa5, $a1, 28
	fld.s	$fa6, $a2, 24
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa2, $fa4
	fmul.s	$fa2, $fa5, $fa2
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa6, $fa5
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fld.s	$fa3, $a1, 32
	fld.s	$fa4, $a2, 36
	fld.s	$fa5, $a1, 36
	fld.s	$fa6, $a2, 32
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa2, $fa4
	fmul.s	$fa2, $fa5, $fa2
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa6, $fa5
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fld.s	$fa3, $a1, 40
	fld.s	$fa4, $a2, 44
	fld.s	$fa5, $a1, 44
	fld.s	$fa6, $a2, 40
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa2, $fa4
	fmul.s	$fa2, $fa5, $fa2
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa6, $fa5
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fld.s	$fa3, $a1, 48
	fld.s	$fa4, $a2, 52
	fld.s	$fa5, $a1, 52
	fld.s	$fa6, $a2, 48
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa2, $fa4
	fmul.s	$fa2, $fa5, $fa2
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa6, $fa5
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fld.s	$fa3, $a1, 56
	fld.s	$fa4, $a2, 60
	fld.s	$fa5, $a1, 60
	fld.s	$fa6, $a2, 56
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa2, $fa4
	fmul.s	$fa2, $fa5, $fa2
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa6, $fa5
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fld.s	$fa3, $a1, 64
	fld.s	$fa4, $a2, 68
	fld.s	$fa5, $a1, 68
	fld.s	$fa6, $a2, 64
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa2, $fa4
	fmul.s	$fa2, $fa5, $fa2
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa6, $fa5
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fld.s	$fa3, $a1, 72
	fld.s	$fa4, $a2, 76
	fld.s	$fa5, $a1, 76
	fld.s	$fa6, $a2, 72
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa2, $fa4
	fmul.s	$fa2, $fa5, $fa2
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa6, $fa5
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fld.s	$fa3, $a1, 80
	fld.s	$fa4, $a2, 84
	fld.s	$fa5, $a1, 84
	fld.s	$fa6, $a2, 80
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa2, $fa4
	fmul.s	$fa2, $fa5, $fa2
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa6, $fa5
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fld.s	$fa3, $a1, 88
	fld.s	$fa4, $a2, 92
	fld.s	$fa5, $a1, 92
	fld.s	$fa6, $a2, 88
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa2, $fa4
	fmul.s	$fa2, $fa5, $fa2
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa6, $fa5
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fst.s	$fa1, $a3, 0
	fst.s	$fa0, $a3, 4
	ret
.Lfunc_end7:
	.size	BeamForm, .Lfunc_end7-BeamForm
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function Magnitude
.LCPI8_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI8_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	Magnitude
	.p2align	5
	.type	Magnitude,@function
Magnitude:                              # @Magnitude
# %bb.0:                                # %entry
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB8_8
# %bb.1:                                # %for.body.preheader
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB8_4
# %bb.2:                                # %vector.memcheck
	alsl.d	$a3, $a2, $a0, 3
	bgeu	$a1, $a3, .LBB8_9
# %bb.3:                                # %vector.memcheck
	alsl.d	$a3, $a2, $a1, 2
	bgeu	$a0, $a3, .LBB8_9
.LBB8_4:
	move	$a3, $zero
.LBB8_5:                                # %for.body.preheader15
	alsl.d	$a0, $a3, $a0, 3
	addi.d	$a0, $a0, 4
	alsl.d	$a1, $a3, $a1, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB8_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, -4
	fmul.s	$fa0, $fa0, $fa0
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fsqrt.s	$fa0, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB8_6
.LBB8_7:
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB8_8:                                # %for.end
	ret
.LBB8_9:                                # %vector.ph
	pcalau12i	$a3, %pc_hi20(.LCPI8_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI8_0)
	pcalau12i	$a3, %pc_hi20(.LCPI8_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI8_1)
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	move	$a4, $a1
	move	$a5, $a3
	.p2align	4, , 16
.LBB8_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr2, $xr0, 3
	xvslli.d	$xr3, $xr1, 3
	xvpickve2gr.d	$a6, $xr3, 0
	add.d	$a7, $a0, $a6
	xvpickve2gr.d	$t0, $xr3, 1
	add.d	$t1, $a0, $t0
	xvpickve2gr.d	$t2, $xr3, 2
	add.d	$t3, $a0, $t2
	xvpickve2gr.d	$t4, $xr3, 3
	add.d	$t5, $a0, $t4
	xvpickve2gr.d	$t6, $xr2, 0
	add.d	$t7, $a0, $t6
	xvpickve2gr.d	$t8, $xr2, 1
	add.d	$fp, $a0, $t8
	xvpickve2gr.d	$s0, $xr2, 2
	add.d	$s1, $a0, $s0
	xvpickve2gr.d	$s2, $xr2, 3
	add.d	$s3, $a0, $s2
	fldx.s	$fa2, $a0, $a6
	fldx.s	$fa3, $a0, $t0
	fldx.s	$fa4, $a0, $t2
	fldx.s	$fa5, $a0, $t4
	fldx.s	$fa6, $a0, $t6
	fldx.s	$fa7, $a0, $t8
	fldx.s	$ft0, $a0, $s0
	fldx.s	$ft1, $a0, $s2
	xvinsve0.w	$xr2, $xr3, 1
	xvinsve0.w	$xr2, $xr4, 2
	xvinsve0.w	$xr2, $xr5, 3
	xvinsve0.w	$xr2, $xr6, 4
	xvinsve0.w	$xr2, $xr7, 5
	xvinsve0.w	$xr2, $xr8, 6
	xvinsve0.w	$xr2, $xr9, 7
	fld.s	$fa3, $a7, 4
	fld.s	$fa4, $t1, 4
	fld.s	$fa5, $t3, 4
	fld.s	$fa6, $t5, 4
	fld.s	$fa7, $t7, 4
	fld.s	$ft0, $fp, 4
	fld.s	$ft1, $s1, 4
	fld.s	$ft2, $s3, 4
	xvinsve0.w	$xr3, $xr4, 1
	xvinsve0.w	$xr3, $xr5, 2
	xvinsve0.w	$xr3, $xr6, 3
	xvinsve0.w	$xr3, $xr7, 4
	xvinsve0.w	$xr3, $xr8, 5
	xvinsve0.w	$xr3, $xr9, 6
	xvinsve0.w	$xr3, $xr10, 7
	xvfmul.s	$xr3, $xr3, $xr3
	xvfmadd.s	$xr2, $xr2, $xr2, $xr3
	xvfsqrt.s	$xr2, $xr2
	xvst	$xr2, $a4, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB8_10
# %bb.11:                               # %middle.block
	beq	$a3, $a2, .LBB8_7
	b	.LBB8_5
.Lfunc_end8:
	.size	Magnitude, .Lfunc_end8-Magnitude
                                        # -- End function
	.globl	Detector                        # -- Begin function Detector
	.p2align	5
	.type	Detector,@function
Detector:                               # @Detector
# %bb.0:                                # %entry
	sub.d	$a0, $a2, $a1
	ori	$a3, $zero, 63
	bltu	$a3, $a0, .LBB9_4
# %bb.1:                                # %for.body.preheader
	move	$a0, $zero
	ori	$a3, $zero, 2048
	.p2align	4, , 16
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $a1, $a0
	fstx.s	$fa0, $a2, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a3, .LBB9_2
# %bb.3:                                # %for.end
	ret
.LBB9_4:                                # %vector.body
	xvld	$xr0, $a1, 0
	xvld	$xr1, $a1, 32
	xvst	$xr0, $a2, 0
	xvst	$xr1, $a2, 32
	xvld	$xr0, $a1, 64
	xvld	$xr1, $a1, 96
	xvst	$xr0, $a2, 64
	xvst	$xr1, $a2, 96
	xvld	$xr0, $a1, 128
	xvld	$xr1, $a1, 160
	xvst	$xr0, $a2, 128
	xvst	$xr1, $a2, 160
	xvld	$xr0, $a1, 192
	xvld	$xr1, $a1, 224
	xvst	$xr0, $a2, 192
	xvst	$xr1, $a2, 224
	xvld	$xr0, $a1, 256
	xvld	$xr1, $a1, 288
	xvst	$xr0, $a2, 256
	xvst	$xr1, $a2, 288
	xvld	$xr0, $a1, 320
	xvld	$xr1, $a1, 352
	xvst	$xr0, $a2, 320
	xvst	$xr1, $a2, 352
	xvld	$xr0, $a1, 384
	xvld	$xr1, $a1, 416
	xvst	$xr0, $a2, 384
	xvst	$xr1, $a2, 416
	xvld	$xr0, $a1, 448
	xvld	$xr1, $a1, 480
	xvst	$xr0, $a2, 448
	xvst	$xr1, $a2, 480
	xvld	$xr0, $a1, 512
	xvld	$xr1, $a1, 544
	xvst	$xr0, $a2, 512
	xvst	$xr1, $a2, 544
	xvld	$xr0, $a1, 576
	xvld	$xr1, $a1, 608
	xvst	$xr0, $a2, 576
	xvst	$xr1, $a2, 608
	xvld	$xr0, $a1, 640
	xvld	$xr1, $a1, 672
	xvst	$xr0, $a2, 640
	xvst	$xr1, $a2, 672
	xvld	$xr0, $a1, 704
	xvld	$xr1, $a1, 736
	xvst	$xr0, $a2, 704
	xvst	$xr1, $a2, 736
	xvld	$xr0, $a1, 768
	xvld	$xr1, $a1, 800
	xvst	$xr0, $a2, 768
	xvst	$xr1, $a2, 800
	xvld	$xr0, $a1, 832
	xvld	$xr1, $a1, 864
	xvst	$xr0, $a2, 832
	xvst	$xr1, $a2, 864
	xvld	$xr0, $a1, 896
	xvld	$xr1, $a1, 928
	xvst	$xr0, $a2, 896
	xvst	$xr1, $a2, 928
	xvld	$xr0, $a1, 960
	xvld	$xr1, $a1, 992
	xvst	$xr0, $a2, 960
	xvst	$xr1, $a2, 992
	xvld	$xr0, $a1, 1024
	xvld	$xr1, $a1, 1056
	xvst	$xr0, $a2, 1024
	xvst	$xr1, $a2, 1056
	xvld	$xr0, $a1, 1088
	xvld	$xr1, $a1, 1120
	xvst	$xr0, $a2, 1088
	xvst	$xr1, $a2, 1120
	xvld	$xr0, $a1, 1152
	xvld	$xr1, $a1, 1184
	xvst	$xr0, $a2, 1152
	xvst	$xr1, $a2, 1184
	xvld	$xr0, $a1, 1216
	xvld	$xr1, $a1, 1248
	xvst	$xr0, $a2, 1216
	xvst	$xr1, $a2, 1248
	xvld	$xr0, $a1, 1280
	xvld	$xr1, $a1, 1312
	xvst	$xr0, $a2, 1280
	xvst	$xr1, $a2, 1312
	xvld	$xr0, $a1, 1344
	xvld	$xr1, $a1, 1376
	xvst	$xr0, $a2, 1344
	xvst	$xr1, $a2, 1376
	xvld	$xr0, $a1, 1408
	xvld	$xr1, $a1, 1440
	xvst	$xr0, $a2, 1408
	xvst	$xr1, $a2, 1440
	xvld	$xr0, $a1, 1472
	xvld	$xr1, $a1, 1504
	xvst	$xr0, $a2, 1472
	xvst	$xr1, $a2, 1504
	xvld	$xr0, $a1, 1536
	xvld	$xr1, $a1, 1568
	xvst	$xr0, $a2, 1536
	xvst	$xr1, $a2, 1568
	xvld	$xr0, $a1, 1600
	xvld	$xr1, $a1, 1632
	xvst	$xr0, $a2, 1600
	xvst	$xr1, $a2, 1632
	xvld	$xr0, $a1, 1664
	xvld	$xr1, $a1, 1696
	xvst	$xr0, $a2, 1664
	xvst	$xr1, $a2, 1696
	xvld	$xr0, $a1, 1728
	xvld	$xr1, $a1, 1760
	xvst	$xr0, $a2, 1728
	xvst	$xr1, $a2, 1760
	xvld	$xr0, $a1, 1792
	xvld	$xr1, $a1, 1824
	xvst	$xr0, $a2, 1792
	xvst	$xr1, $a2, 1824
	xvld	$xr0, $a1, 1856
	xvld	$xr1, $a1, 1888
	xvst	$xr0, $a2, 1856
	xvst	$xr1, $a2, 1888
	xvld	$xr0, $a1, 1920
	xvld	$xr1, $a1, 1952
	xvst	$xr0, $a2, 1920
	xvst	$xr1, $a2, 1952
	xvld	$xr0, $a1, 1984
	xvld	$xr1, $a1, 2016
	xvst	$xr0, $a2, 1984
	xvst	$xr1, $a2, 2016
	ret
.Lfunc_end9:
	.size	Detector, .Lfunc_end9-Detector
                                        # -- End function
	.globl	BeamFirSetup_StrictFP           # -- Begin function BeamFirSetup_StrictFP
	.p2align	5
	.type	BeamFirSetup_StrictFP,@function
BeamFirSetup_StrictFP:                  # @BeamFirSetup_StrictFP
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s2, $a0
	st.w	$a1, $a0, 0
	st.d	$zero, $a0, 4
	slli.d	$s0, $a1, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s2, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s2, 24
	lu12i.w	$a0, 260096
	ori	$a1, $zero, 1
	st.d	$a0, $s1, 0
	blt	$fp, $a1, .LBB10_2
# %bb.1:                                # %for.body.preheader
	addi.d	$a0, $s1, 4
	slli.w	$a1, $fp, 1
	ori	$a2, $zero, 2
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	addi.d	$fp, $a1, -4
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 4
	move	$a1, $zero
	move	$a2, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB10_2:                               # %for.end
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end10:
	.size	BeamFirSetup_StrictFP, .Lfunc_end10-BeamFirSetup_StrictFP
                                        # -- End function
	.globl	BeamFormWeights_StrictFP        # -- Begin function BeamFormWeights_StrictFP
	.p2align	5
	.type	BeamFormWeights_StrictFP,@function
BeamFormWeights_StrictFP:               # @BeamFormWeights_StrictFP
# %bb.0:                                # %entry
	beqz	$a0, .LBB11_3
# %bb.1:                                # %for.inc
	ori	$a2, $zero, 1
	st.d	$zero, $a1, 0
	bne	$a0, $a2, .LBB11_13
# %bb.2:                                # %for.inc.1.thread
	lu12i.w	$a0, 260096
	st.w	$a0, $a1, 8
	b	.LBB11_4
.LBB11_3:                               # %for.inc.1.thread16
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 0
	st.w	$zero, $a1, 8
.LBB11_4:                               # %for.inc.2.thread21
	st.d	$zero, $a1, 12
	st.w	$zero, $a1, 20
.LBB11_5:                               # %for.inc.10.thread61
	st.d	$zero, $a1, 24
.LBB11_6:                               # %for.inc.10.thread61
	st.d	$zero, $a1, 32
.LBB11_7:                               # %for.inc.10.thread61
	st.d	$zero, $a1, 40
.LBB11_8:                               # %for.inc.10.thread61
	st.d	$zero, $a1, 48
.LBB11_9:                               # %for.inc.10.thread61
	st.d	$zero, $a1, 56
.LBB11_10:                              # %for.inc.10.thread61
	st.d	$zero, $a1, 64
.LBB11_11:                              # %for.inc.10.thread61
	st.d	$zero, $a1, 72
.LBB11_12:                              # %for.inc.10.thread61
	st.d	$zero, $a1, 80
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $a1, 88
	st.w	$zero, $a1, 92
	ret
.LBB11_13:                              # %for.inc.1
	ori	$a2, $zero, 2
	st.d	$zero, $a1, 8
	bne	$a0, $a2, .LBB11_15
# %bb.14:                               # %for.inc.2.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 16
	b	.LBB11_5
.LBB11_15:                              # %for.inc.2
	ori	$a2, $zero, 3
	st.d	$zero, $a1, 16
	bne	$a0, $a2, .LBB11_17
# %bb.16:                               # %for.inc.3.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 24
	b	.LBB11_6
.LBB11_17:                              # %for.inc.3
	ori	$a2, $zero, 4
	st.d	$zero, $a1, 24
	bne	$a0, $a2, .LBB11_19
# %bb.18:                               # %for.inc.4.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 32
	b	.LBB11_7
.LBB11_19:                              # %for.inc.4
	ori	$a2, $zero, 5
	st.d	$zero, $a1, 32
	bne	$a0, $a2, .LBB11_21
# %bb.20:                               # %for.inc.5.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 40
	b	.LBB11_8
.LBB11_21:                              # %for.inc.5
	ori	$a2, $zero, 6
	st.d	$zero, $a1, 40
	bne	$a0, $a2, .LBB11_23
# %bb.22:                               # %for.inc.6.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 48
	b	.LBB11_9
.LBB11_23:                              # %for.inc.6
	ori	$a2, $zero, 7
	st.d	$zero, $a1, 48
	bne	$a0, $a2, .LBB11_25
# %bb.24:                               # %for.inc.7.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 56
	b	.LBB11_10
.LBB11_25:                              # %for.inc.7
	ori	$a2, $zero, 8
	st.d	$zero, $a1, 56
	bne	$a0, $a2, .LBB11_27
# %bb.26:                               # %for.inc.8.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 64
	b	.LBB11_11
.LBB11_27:                              # %for.inc.8
	ori	$a2, $zero, 9
	st.d	$zero, $a1, 64
	bne	$a0, $a2, .LBB11_29
# %bb.28:                               # %for.inc.9.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 72
	b	.LBB11_12
.LBB11_29:                              # %for.inc.9
	ori	$a2, $zero, 10
	st.d	$zero, $a1, 72
	bne	$a0, $a2, .LBB11_31
# %bb.30:                               # %for.inc.10.thread
	lu12i.w	$a0, 260096
	st.d	$a0, $a1, 80
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $a1, 88
	st.w	$zero, $a1, 92
	ret
.LBB11_31:                              # %for.inc.10
	st.d	$zero, $a1, 80
	addi.d	$a0, $a0, -11
	sltui	$a0, $a0, 1
	vldi	$vr0, -1168
	movgr2fr.w	$fa1, $zero
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a1, 88
	st.w	$zero, $a1, 92
	ret
.Lfunc_end11:
	.size	BeamFormWeights_StrictFP, .Lfunc_end11-BeamFormWeights_StrictFP
                                        # -- End function
	.globl	InputGenerate_StrictFP          # -- Begin function InputGenerate_StrictFP
	.p2align	5
	.type	InputGenerate_StrictFP,@function
InputGenerate_StrictFP:                 # @InputGenerate_StrictFP
# %bb.0:                                # %entry
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB12_13
# %bb.1:                                # %for.body.lr.ph
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $zero
	bne	$a0, $a3, .LBB12_8
# %bb.2:                                # %for.body.preheader
	move	$s0, $zero
	slli.d	$s1, $a2, 3
	ori	$s2, $zero, 2048
	lu12i.w	$a0, 268288
	lu32i.d	$a0, -524288
	lu52i.d	$s3, $a0, 1048
	vldi	$vr2, -1168
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_3:                               # %if.then
                                        #   in Loop: Header=BB12_4 Depth=1
	stptr.d	$s3, $a1, 2048
	addi.d	$s0, $s0, 8
	addi.w	$fp, $fp, 1
	beq	$s1, $s0, .LBB12_12
.LBB12_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beq	$s0, $s2, .LBB12_3
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB12_4 Depth=1
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB12_7
.LBB12_6:                               # %if.else.split
                                        #   in Loop: Header=BB12_4 Depth=1
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	add.d	$a0, $a1, $s0
	fstx.s	$fa1, $a1, $s0
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a0, 4
	addi.d	$s0, $s0, 8
	addi.w	$fp, $fp, 1
	bne	$s1, $s0, .LBB12_4
	b	.LBB12_12
.LBB12_7:                               # %call.sqrt43
                                        #   in Loop: Header=BB12_4 Depth=1
	fmov.d	$fa0, $fa1
	move	$s4, $a1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr2, -1168
	move	$a1, $s4
	b	.LBB12_6
.LBB12_8:                               # %for.body.us.preheader
	addi.d	$s0, $a1, 4
	vldi	$vr2, -1168
	.p2align	4, , 16
.LBB12_9:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB12_11
.LBB12_10:                              # %for.body.us.split
                                        #   in Loop: Header=BB12_9 Depth=1
	fcvt.s.d	$fa0, $fa0
	fneg.s	$fa1, $fa0
	fst.s	$fa1, $s0, -4
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $s0, 0
	addi.d	$s0, $s0, 8
	addi.d	$a2, $a2, -1
	add.w	$fp, $fp, $a0
	bnez	$a2, .LBB12_9
	b	.LBB12_12
.LBB12_11:                              # %call.sqrt
                                        #   in Loop: Header=BB12_9 Depth=1
	fmov.d	$fa0, $fa1
	move	$s1, $a2
	move	$s2, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr2, -1168
	move	$a0, $s2
	move	$a2, $s1
	b	.LBB12_10
.LBB12_12:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB12_13:                              # %for.end
	ret
.Lfunc_end12:
	.size	InputGenerate_StrictFP, .Lfunc_end12-InputGenerate_StrictFP
                                        # -- End function
	.globl	BeamFirFilter_StrictFP          # -- Begin function BeamFirFilter_StrictFP
	.p2align	5
	.type	BeamFirFilter_StrictFP,@function
BeamFirFilter_StrictFP:                 # @BeamFirFilter_StrictFP
# %bb.0:                                # %entry
	ld.w	$a6, $a0, 0
	ld.w	$a7, $a0, 8
	addi.d	$t0, $a6, -1
	fld.s	$fa0, $a3, 0
	ld.d	$a5, $a0, 24
	sub.d	$t1, $t0, $a7
	slli.w	$t1, $t1, 1
	slli.d	$t2, $t1, 2
	fstx.s	$fa0, $a5, $t2
	fld.s	$fa0, $a3, 4
	slli.w	$a3, $a6, 1
	alsl.d	$t2, $t1, $a5, 2
	ori	$t3, $zero, 1
	fst.s	$fa0, $t2, 4
	blt	$a6, $t3, .LBB13_3
# %bb.1:                                # %for.body.lr.ph
	move	$t2, $zero
	ld.d	$t4, $a0, 16
	addi.d	$t3, $zero, -1
	alsl.w	$t3, $a6, $t3, 1
	movgr2fr.w	$fa1, $zero
	addi.d	$t4, $t4, 4
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB13_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$t5, $t1, $a5, 2
	slli.d	$t6, $t1, 2
	fldx.s	$fa2, $a5, $t6
	fld.s	$fa3, $t5, 4
	fld.s	$fa4, $t4, -4
	fld.s	$fa5, $t4, 0
	fmul.s	$fa6, $fa2, $fa4
	fmul.s	$fa7, $fa3, $fa5
	fadd.s	$fa6, $fa6, $fa7
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa2, $fa2, $fa5
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa0, $fa0, $fa2
	addi.w	$t1, $t1, 2
	and	$t1, $t1, $t3
	addi.d	$t2, $t2, 2
	addi.d	$t4, $t4, 8
	blt	$t2, $a3, .LBB13_2
	b	.LBB13_4
.LBB13_3:
	movgr2fr.w	$fa0, $zero
	fmov.s	$fa1, $fa0
.LBB13_4:                               # %for.end
	addi.d	$a7, $a7, 1
	and	$a7, $a7, $t0
	ld.w	$t0, $a0, 4
	st.w	$a7, $a0, 8
	fst.s	$fa1, $a4, 0
	fst.s	$fa0, $a4, 4
	add.w	$a2, $t0, $a2
	st.w	$a2, $a0, 4
	bne	$a2, $a1, .LBB13_7
# %bb.5:                                # %if.then
	ori	$a1, $zero, 1
	st.d	$zero, $a0, 4
	blt	$a6, $a1, .LBB13_7
# %bb.6:                                # %for.body50.preheader
	slt	$a0, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	slli.d	$a2, $a0, 2
	move	$a0, $a5
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB13_7:                               # %if.end
	ret
.Lfunc_end13:
	.size	BeamFirFilter_StrictFP, .Lfunc_end13-BeamFirFilter_StrictFP
                                        # -- End function
	.globl	BeamForm_StrictFP               # -- Begin function BeamForm_StrictFP
	.p2align	5
	.type	BeamForm_StrictFP,@function
BeamForm_StrictFP:                      # @BeamForm_StrictFP
# %bb.0:                                # %entry
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a2, 4
	fmul.s	$fa4, $fa0, $fa1
	fmul.s	$fa5, $fa2, $fa3
	fsub.s	$fa4, $fa4, $fa5
	movgr2fr.w	$fa5, $zero
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $a1, 8
	fld.s	$fa3, $a2, 8
	fld.s	$fa6, $a1, 12
	fld.s	$fa7, $a2, 12
	fadd.s	$fa0, $fa1, $fa0
	fadd.s	$fa0, $fa0, $fa5
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa5, $fa6, $fa7
	fsub.s	$fa1, $fa1, $fa5
	fadd.s	$fa1, $fa4, $fa1
	fmul.s	$fa2, $fa2, $fa7
	fmul.s	$fa3, $fa3, $fa6
	fld.s	$fa4, $a1, 16
	fld.s	$fa5, $a2, 16
	fld.s	$fa6, $a1, 20
	fld.s	$fa7, $a2, 20
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa4, $fa5
	fmul.s	$fa3, $fa6, $fa7
	fsub.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa4, $fa7
	fmul.s	$fa3, $fa5, $fa6
	fld.s	$fa4, $a1, 24
	fld.s	$fa5, $a2, 24
	fld.s	$fa6, $a1, 28
	fld.s	$fa7, $a2, 28
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa4, $fa5
	fmul.s	$fa3, $fa6, $fa7
	fsub.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa4, $fa7
	fmul.s	$fa3, $fa5, $fa6
	fld.s	$fa4, $a1, 32
	fld.s	$fa5, $a2, 32
	fld.s	$fa6, $a1, 36
	fld.s	$fa7, $a2, 36
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa4, $fa5
	fmul.s	$fa3, $fa6, $fa7
	fsub.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa4, $fa7
	fmul.s	$fa3, $fa5, $fa6
	fld.s	$fa4, $a1, 40
	fld.s	$fa5, $a2, 40
	fld.s	$fa6, $a1, 44
	fld.s	$fa7, $a2, 44
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa4, $fa5
	fmul.s	$fa3, $fa6, $fa7
	fsub.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa4, $fa7
	fmul.s	$fa3, $fa5, $fa6
	fld.s	$fa4, $a1, 48
	fld.s	$fa5, $a2, 48
	fld.s	$fa6, $a1, 52
	fld.s	$fa7, $a2, 52
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa4, $fa5
	fmul.s	$fa3, $fa6, $fa7
	fsub.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa4, $fa7
	fmul.s	$fa3, $fa5, $fa6
	fld.s	$fa4, $a1, 56
	fld.s	$fa5, $a2, 56
	fld.s	$fa6, $a1, 60
	fld.s	$fa7, $a2, 60
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa4, $fa5
	fmul.s	$fa3, $fa6, $fa7
	fsub.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa4, $fa7
	fmul.s	$fa3, $fa5, $fa6
	fld.s	$fa4, $a1, 64
	fld.s	$fa5, $a2, 64
	fld.s	$fa6, $a1, 68
	fld.s	$fa7, $a2, 68
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa4, $fa5
	fmul.s	$fa3, $fa6, $fa7
	fsub.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa4, $fa7
	fmul.s	$fa3, $fa5, $fa6
	fld.s	$fa4, $a1, 72
	fld.s	$fa5, $a2, 72
	fld.s	$fa6, $a1, 76
	fld.s	$fa7, $a2, 76
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa4, $fa5
	fmul.s	$fa3, $fa6, $fa7
	fsub.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa4, $fa7
	fmul.s	$fa3, $fa5, $fa6
	fld.s	$fa4, $a1, 80
	fld.s	$fa5, $a2, 80
	fld.s	$fa6, $a1, 84
	fld.s	$fa7, $a2, 84
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa4, $fa5
	fmul.s	$fa3, $fa6, $fa7
	fsub.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa4, $fa7
	fmul.s	$fa3, $fa5, $fa6
	fld.s	$fa4, $a1, 88
	fld.s	$fa5, $a2, 88
	fld.s	$fa6, $a1, 92
	fld.s	$fa7, $a2, 92
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa4, $fa5
	fmul.s	$fa3, $fa6, $fa7
	fsub.s	$fa2, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa4, $fa7
	fmul.s	$fa3, $fa5, $fa6
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fst.s	$fa1, $a3, 0
	fst.s	$fa0, $a3, 4
	ret
.Lfunc_end14:
	.size	BeamForm_StrictFP, .Lfunc_end14-BeamForm_StrictFP
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function Magnitude_StrictFP
.LCPI15_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI15_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	Magnitude_StrictFP
	.p2align	5
	.type	Magnitude_StrictFP,@function
Magnitude_StrictFP:                     # @Magnitude_StrictFP
# %bb.0:                                # %entry
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB15_8
# %bb.1:                                # %for.body.preheader
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB15_4
# %bb.2:                                # %vector.memcheck
	alsl.d	$a3, $a2, $a0, 3
	bgeu	$a1, $a3, .LBB15_9
# %bb.3:                                # %vector.memcheck
	alsl.d	$a3, $a2, $a1, 2
	bgeu	$a0, $a3, .LBB15_9
.LBB15_4:
	move	$a3, $zero
.LBB15_5:                               # %for.body.preheader15
	alsl.d	$a0, $a3, $a0, 3
	addi.d	$a0, $a0, 4
	alsl.d	$a1, $a3, $a1, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB15_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, -4
	fld.s	$fa1, $a0, 0
	fmul.s	$fa0, $fa0, $fa0
	fmul.s	$fa1, $fa1, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fsqrt.s	$fa0, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB15_6
.LBB15_7:
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB15_8:                               # %for.end
	ret
.LBB15_9:                               # %vector.ph
	pcalau12i	$a3, %pc_hi20(.LCPI15_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI15_0)
	pcalau12i	$a3, %pc_hi20(.LCPI15_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI15_1)
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	move	$a4, $a1
	move	$a5, $a3
	.p2align	4, , 16
.LBB15_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr2, $xr0, 3
	xvslli.d	$xr3, $xr1, 3
	xvpickve2gr.d	$a6, $xr3, 0
	add.d	$a7, $a0, $a6
	xvpickve2gr.d	$t0, $xr3, 1
	add.d	$t1, $a0, $t0
	xvpickve2gr.d	$t2, $xr3, 2
	add.d	$t3, $a0, $t2
	xvpickve2gr.d	$t4, $xr3, 3
	add.d	$t5, $a0, $t4
	xvpickve2gr.d	$t6, $xr2, 0
	add.d	$t7, $a0, $t6
	xvpickve2gr.d	$t8, $xr2, 1
	add.d	$fp, $a0, $t8
	xvpickve2gr.d	$s0, $xr2, 2
	add.d	$s1, $a0, $s0
	xvpickve2gr.d	$s2, $xr2, 3
	add.d	$s3, $a0, $s2
	fldx.s	$fa2, $a0, $a6
	fldx.s	$fa3, $a0, $t0
	fldx.s	$fa4, $a0, $t2
	fldx.s	$fa5, $a0, $t4
	fldx.s	$fa6, $a0, $t6
	fldx.s	$fa7, $a0, $t8
	fldx.s	$ft0, $a0, $s0
	fldx.s	$ft1, $a0, $s2
	xvinsve0.w	$xr2, $xr3, 1
	xvinsve0.w	$xr2, $xr4, 2
	xvinsve0.w	$xr2, $xr5, 3
	xvinsve0.w	$xr2, $xr6, 4
	xvinsve0.w	$xr2, $xr7, 5
	xvinsve0.w	$xr2, $xr8, 6
	xvinsve0.w	$xr2, $xr9, 7
	xvfmul.s	$xr2, $xr2, $xr2
	fld.s	$fa3, $a7, 4
	fld.s	$fa4, $t1, 4
	fld.s	$fa5, $t3, 4
	fld.s	$fa6, $t5, 4
	fld.s	$fa7, $t7, 4
	fld.s	$ft0, $fp, 4
	fld.s	$ft1, $s1, 4
	fld.s	$ft2, $s3, 4
	xvinsve0.w	$xr3, $xr4, 1
	xvinsve0.w	$xr3, $xr5, 2
	xvinsve0.w	$xr3, $xr6, 3
	xvinsve0.w	$xr3, $xr7, 4
	xvinsve0.w	$xr3, $xr8, 5
	xvinsve0.w	$xr3, $xr9, 6
	xvinsve0.w	$xr3, $xr10, 7
	xvfmul.s	$xr3, $xr3, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvfsqrt.s	$xr2, $xr2
	xvst	$xr2, $a4, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB15_10
# %bb.11:                               # %middle.block
	beq	$a3, $a2, .LBB15_7
	b	.LBB15_5
.Lfunc_end15:
	.size	Magnitude_StrictFP, .Lfunc_end15-Magnitude_StrictFP
                                        # -- End function
	.globl	Detector_StrictFP               # -- Begin function Detector_StrictFP
	.p2align	5
	.type	Detector_StrictFP,@function
Detector_StrictFP:                      # @Detector_StrictFP
# %bb.0:                                # %entry
	sub.d	$a0, $a2, $a1
	ori	$a3, $zero, 63
	bltu	$a3, $a0, .LBB16_4
# %bb.1:                                # %for.body.preheader
	move	$a0, $zero
	ori	$a3, $zero, 2048
	.p2align	4, , 16
.LBB16_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $a1, $a0
	fstx.s	$fa0, $a2, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a3, .LBB16_2
# %bb.3:                                # %for.end
	ret
.LBB16_4:                               # %vector.body
	xvld	$xr0, $a1, 0
	xvld	$xr1, $a1, 32
	xvst	$xr0, $a2, 0
	xvst	$xr1, $a2, 32
	xvld	$xr0, $a1, 64
	xvld	$xr1, $a1, 96
	xvst	$xr0, $a2, 64
	xvst	$xr1, $a2, 96
	xvld	$xr0, $a1, 128
	xvld	$xr1, $a1, 160
	xvst	$xr0, $a2, 128
	xvst	$xr1, $a2, 160
	xvld	$xr0, $a1, 192
	xvld	$xr1, $a1, 224
	xvst	$xr0, $a2, 192
	xvst	$xr1, $a2, 224
	xvld	$xr0, $a1, 256
	xvld	$xr1, $a1, 288
	xvst	$xr0, $a2, 256
	xvst	$xr1, $a2, 288
	xvld	$xr0, $a1, 320
	xvld	$xr1, $a1, 352
	xvst	$xr0, $a2, 320
	xvst	$xr1, $a2, 352
	xvld	$xr0, $a1, 384
	xvld	$xr1, $a1, 416
	xvst	$xr0, $a2, 384
	xvst	$xr1, $a2, 416
	xvld	$xr0, $a1, 448
	xvld	$xr1, $a1, 480
	xvst	$xr0, $a2, 448
	xvst	$xr1, $a2, 480
	xvld	$xr0, $a1, 512
	xvld	$xr1, $a1, 544
	xvst	$xr0, $a2, 512
	xvst	$xr1, $a2, 544
	xvld	$xr0, $a1, 576
	xvld	$xr1, $a1, 608
	xvst	$xr0, $a2, 576
	xvst	$xr1, $a2, 608
	xvld	$xr0, $a1, 640
	xvld	$xr1, $a1, 672
	xvst	$xr0, $a2, 640
	xvst	$xr1, $a2, 672
	xvld	$xr0, $a1, 704
	xvld	$xr1, $a1, 736
	xvst	$xr0, $a2, 704
	xvst	$xr1, $a2, 736
	xvld	$xr0, $a1, 768
	xvld	$xr1, $a1, 800
	xvst	$xr0, $a2, 768
	xvst	$xr1, $a2, 800
	xvld	$xr0, $a1, 832
	xvld	$xr1, $a1, 864
	xvst	$xr0, $a2, 832
	xvst	$xr1, $a2, 864
	xvld	$xr0, $a1, 896
	xvld	$xr1, $a1, 928
	xvst	$xr0, $a2, 896
	xvst	$xr1, $a2, 928
	xvld	$xr0, $a1, 960
	xvld	$xr1, $a1, 992
	xvst	$xr0, $a2, 960
	xvst	$xr1, $a2, 992
	xvld	$xr0, $a1, 1024
	xvld	$xr1, $a1, 1056
	xvst	$xr0, $a2, 1024
	xvst	$xr1, $a2, 1056
	xvld	$xr0, $a1, 1088
	xvld	$xr1, $a1, 1120
	xvst	$xr0, $a2, 1088
	xvst	$xr1, $a2, 1120
	xvld	$xr0, $a1, 1152
	xvld	$xr1, $a1, 1184
	xvst	$xr0, $a2, 1152
	xvst	$xr1, $a2, 1184
	xvld	$xr0, $a1, 1216
	xvld	$xr1, $a1, 1248
	xvst	$xr0, $a2, 1216
	xvst	$xr1, $a2, 1248
	xvld	$xr0, $a1, 1280
	xvld	$xr1, $a1, 1312
	xvst	$xr0, $a2, 1280
	xvst	$xr1, $a2, 1312
	xvld	$xr0, $a1, 1344
	xvld	$xr1, $a1, 1376
	xvst	$xr0, $a2, 1344
	xvst	$xr1, $a2, 1376
	xvld	$xr0, $a1, 1408
	xvld	$xr1, $a1, 1440
	xvst	$xr0, $a2, 1408
	xvst	$xr1, $a2, 1440
	xvld	$xr0, $a1, 1472
	xvld	$xr1, $a1, 1504
	xvst	$xr0, $a2, 1472
	xvst	$xr1, $a2, 1504
	xvld	$xr0, $a1, 1536
	xvld	$xr1, $a1, 1568
	xvst	$xr0, $a2, 1536
	xvst	$xr1, $a2, 1568
	xvld	$xr0, $a1, 1600
	xvld	$xr1, $a1, 1632
	xvst	$xr0, $a2, 1600
	xvst	$xr1, $a2, 1632
	xvld	$xr0, $a1, 1664
	xvld	$xr1, $a1, 1696
	xvst	$xr0, $a2, 1664
	xvst	$xr1, $a2, 1696
	xvld	$xr0, $a1, 1728
	xvld	$xr1, $a1, 1760
	xvst	$xr0, $a2, 1728
	xvst	$xr1, $a2, 1760
	xvld	$xr0, $a1, 1792
	xvld	$xr1, $a1, 1824
	xvst	$xr0, $a2, 1792
	xvst	$xr1, $a2, 1824
	xvld	$xr0, $a1, 1856
	xvld	$xr1, $a1, 1888
	xvst	$xr0, $a2, 1856
	xvst	$xr1, $a2, 1888
	xvld	$xr0, $a1, 1920
	xvld	$xr1, $a1, 1952
	xvst	$xr0, $a2, 1920
	xvst	$xr1, $a2, 1952
	xvld	$xr0, $a1, 1984
	xvld	$xr1, $a1, 2016
	xvst	$xr0, $a2, 1984
	xvst	$xr1, $a2, 2016
	ret
.Lfunc_end16:
	.size	Detector_StrictFP, .Lfunc_end16-Detector_StrictFP
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"i:"
	.size	.L.str, 3

	.type	numiters,@object                # @numiters
	.data
	.p2align	2, 0x0
numiters:
	.word	100                             # 0x64
	.size	numiters, 4

	.type	detector_out_StrictFP,@object   # @detector_out_StrictFP
	.bss
	.globl	detector_out_StrictFP
	.p2align	2, 0x0
detector_out_StrictFP:
	.space	8192
	.size	detector_out_StrictFP, 8192

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%f\n"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"A = %lf and B = %lf differ more than FP_ABSTOLERANCE = %lf\n"
	.size	.L.str.2, 60

	.section	".note.GNU-stack","",@progbits
	.addrsig
