	.file	"jcsample.c"
	.text
	.globl	jinit_downsampler               # -- Begin function jinit_downsampler
	.p2align	5
	.type	jinit_downsampler,@function
jinit_downsampler:                      # @jinit_downsampler
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 104
	ori	$s1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a3, 0
	move	$s0, $a0
	st.d	$a0, $fp, 472
	pcalau12i	$a0, %pc_hi20(start_pass_downsample)
	addi.d	$a0, $a0, %pc_lo12(start_pass_downsample)
	st.d	$a0, $s0, 0
	ld.w	$a0, $fp, 260
	pcalau12i	$a1, %pc_hi20(sep_downsample)
	addi.d	$a1, $a1, %pc_lo12(sep_downsample)
	st.d	$a1, $s0, 8
	st.w	$zero, $s0, 16
	beqz	$a0, .LBB0_2
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 23
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_2:                                # %if.end
	ld.w	$a0, $fp, 68
	blt	$a0, $s1, .LBB0_25
# %bb.3:                                # %for.body.lr.ph
	ld.d	$a1, $fp, 80
	move	$s1, $zero
	addi.d	$s2, $s0, 24
	addi.d	$s3, $a1, 12
	pcalau12i	$a1, %pc_hi20(fullsize_downsample)
	addi.d	$s5, $a1, %pc_lo12(fullsize_downsample)
	pcalau12i	$a1, %pc_hi20(fullsize_smooth_downsample)
	addi.d	$s6, $a1, %pc_lo12(fullsize_smooth_downsample)
	pcalau12i	$a1, %pc_hi20(h2v1_downsample)
	addi.d	$s7, $a1, %pc_lo12(h2v1_downsample)
	pcalau12i	$a1, %pc_hi20(h2v2_downsample)
	addi.d	$a1, $a1, %pc_lo12(h2v2_downsample)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(h2v2_smooth_downsample)
	addi.d	$a1, $a1, %pc_lo12(h2v2_smooth_downsample)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(int_downsample)
	addi.d	$a1, $a1, %pc_lo12(int_downsample)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$s8, $zero, 37
	ori	$s4, $zero, 1
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_4:                                # %if.else53
                                        #   in Loop: Header=BB0_7 Depth=1
	mod.w	$a1, $a2, $a1
	beqz	$a1, .LBB0_18
.LBB0_5:                                # %if.else66
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s8, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 68
.LBB0_6:                                # %for.inc
                                        #   in Loop: Header=BB0_7 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, 96
	bge	$s1, $a0, .LBB0_22
.LBB0_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s3, -4
	ld.w	$a2, $fp, 304
	bne	$a1, $a2, .LBB0_11
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a3, $s3, 0
	ld.w	$a4, $fp, 308
	bne	$a3, $a4, .LBB0_11
# %bb.9:                                # %if.then8
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a1, $fp, 264
	beqz	$a1, .LBB0_20
# %bb.10:                               # %if.then10
                                        #   in Loop: Header=BB0_7 Depth=1
	st.d	$s6, $s2, 0
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_11:                               # %if.else17
                                        #   in Loop: Header=BB0_7 Depth=1
	slli.w	$a3, $a1, 1
	bne	$a3, $a2, .LBB0_4
# %bb.12:                               # %land.lhs.true21
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a3, $s3, 0
	ld.w	$a4, $fp, 308
	bne	$a3, $a4, .LBB0_14
# %bb.13:                               # %if.then25
                                        #   in Loop: Header=BB0_7 Depth=1
	move	$s4, $zero
	st.d	$s7, $s2, 0
	b	.LBB0_6
.LBB0_14:                               # %land.lhs.true34
                                        #   in Loop: Header=BB0_7 Depth=1
	slli.w	$a3, $a3, 1
	bne	$a3, $a4, .LBB0_4
# %bb.15:                               # %if.then39
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a1, $fp, 264
	beqz	$a1, .LBB0_21
# %bb.16:                               # %if.then42
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $s2, 0
.LBB0_17:                               # %for.inc
                                        #   in Loop: Header=BB0_7 Depth=1
	ori	$a1, $zero, 1
	st.w	$a1, $s0, 16
	b	.LBB0_6
.LBB0_18:                               # %land.lhs.true57
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a1, $fp, 308
	ld.w	$a2, $s3, 0
	mod.w	$a1, $a1, $a2
	bnez	$a1, .LBB0_5
# %bb.19:                               # %if.then62
                                        #   in Loop: Header=BB0_7 Depth=1
	move	$s4, $zero
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $s2, 0
	b	.LBB0_6
.LBB0_20:                               # %if.else
                                        #   in Loop: Header=BB0_7 Depth=1
	st.d	$s5, $s2, 0
	b	.LBB0_6
.LBB0_21:                               # %if.else48
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $s2, 0
	b	.LBB0_6
.LBB0_22:                               # %for.end
	ld.w	$a0, $fp, 264
	beqz	$a0, .LBB0_25
# %bb.23:                               # %for.end
	bnez	$s4, .LBB0_25
# %bb.24:                               # %if.then79
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 98
	st.w	$a1, $a0, 40
	move	$a0, $fp
	move	$a1, $zero
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	jr	$a2
.LBB0_25:                               # %if.end83
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end0:
	.size	jinit_downsampler, .Lfunc_end0-jinit_downsampler
                                        # -- End function
	.p2align	5                               # -- Begin function start_pass_downsample
	.type	start_pass_downsample,@function
start_pass_downsample:                  # @start_pass_downsample
# %bb.0:                                # %entry
	ret
.Lfunc_end1:
	.size	start_pass_downsample, .Lfunc_end1-start_pass_downsample
                                        # -- End function
	.p2align	5                               # -- Begin function sep_downsample
	.type	sep_downsample,@function
sep_downsample:                         # @sep_downsample
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
	move	$fp, $a0
	ld.w	$a0, $a0, 68
	ori	$a5, $zero, 1
	blt	$a0, $a5, .LBB2_3
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a1
	ld.d	$a0, $fp, 472
	ld.d	$s3, $fp, 80
	move	$s4, $zero
	bstrpick.d	$s5, $a2, 31, 0
	addi.d	$s6, $a0, 24
	.p2align	4, , 16
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a1, $s3, 12
	alsl.d	$a2, $s5, $a0, 3
	ld.d	$a0, $s1, 0
	ld.d	$a4, $s6, 0
	mul.d	$a1, $a1, $s0
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a3, $a1, $a0, 3
	move	$a0, $fp
	move	$a1, $s3
	jirl	$ra, $a4, 0
	addi.d	$s4, $s4, 1
	ld.w	$a0, $fp, 68
	addi.d	$s3, $s3, 96
	addi.d	$s6, $s6, 8
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 8
	blt	$s4, $a0, .LBB2_2
.LBB2_3:                                # %for.end
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
.Lfunc_end2:
	.size	sep_downsample, .Lfunc_end2-sep_downsample
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function fullsize_smooth_downsample
.LCPI3_0:
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI3_1:
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.p2align	5
	.type	fullsize_smooth_downsample,@function
fullsize_smooth_downsample:             # @fullsize_smooth_downsample
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
	move	$fp, $a1
	move	$s2, $a0
	ld.w	$a1, $a1, 28
	ld.w	$a0, $a0, 308
	move	$s0, $a3
	move	$s1, $a2
	addi.w	$a2, $zero, -1
	slli.d	$s4, $a1, 3
	blt	$a0, $a2, .LBB3_4
# %bb.1:                                # %entry
	ld.wu	$s5, $s2, 40
	sub.w	$s3, $s4, $s5
	ori	$a1, $zero, 1
	blt	$s3, $a1, .LBB3_4
# %bb.2:                                # %for.body.lr.ph.i
	addi.d	$s6, $s1, -8
	addi.w	$s7, $a0, 2
	.p2align	4, , 16
.LBB3_3:                                # %for.body.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	add.d	$a0, $a0, $s5
	ld.b	$a1, $a0, -1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 8
	bnez	$s7, .LBB3_3
.LBB3_4:                                # %expand_right_edge.exit
	ld.w	$a0, $fp, 12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_15
# %bb.5:                                # %for.body.lr.ph
	ld.w	$a2, $s2, 264
	move	$a0, $zero
	slli.d	$a1, $a2, 9
	lu12i.w	$a3, 16
	sub.d	$a1, $a3, $a1
	slli.d	$a2, $a2, 6
	bstrpick.d	$a2, $a2, 31, 6
	slli.d	$a2, $a2, 6
	addi.d	$a3, $s4, -8
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, 8
	addi.d	$a5, $s4, -2
	bstrpick.d	$a5, $a5, 31, 0
	vreplgr2vr.d	$vr0, $a1
	vreplgr2vr.d	$vr1, $a2
	addi.d	$a6, $a3, 6
	ori	$a7, $zero, 2
	sub.w	$a7, $a7, $s4
	lu12i.w	$t0, 8
	ori	$t1, $zero, 0
	lu32i.d	$t1, 1
	vrepli.b	$vr2, 0
	vreplgr2vr.d	$vr3, $t0
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                # %for.end
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.bu	$t3, $t3, 0
	alsl.d	$t4, $s3, $s4, 1
	sub.d	$t4, $t4, $t3
	mul.d	$t3, $a1, $t3
	mul.d	$t4, $t4, $a2
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t0
	srli.d	$t3, $t3, 16
	st.b	$t3, $t2, 0
	ld.w	$t2, $fp, 12
	bge	$a0, $t2, .LBB3_15
.LBB3_7:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
                                        #     Child Loop BB3_14 Depth 2
	slli.d	$t2, $a0, 3
	alsl.d	$t3, $a0, $s1, 3
	ld.d	$t3, $t3, -8
	addi.d	$a0, $a0, 1
	slli.d	$t4, $a0, 3
	ldx.d	$s3, $s1, $t4
	ld.bu	$t4, $t3, 0
	ld.bu	$t5, $s3, 0
	ldx.d	$s2, $s1, $t2
	ldx.d	$t8, $s0, $t2
	add.d	$t2, $t5, $t4
	ld.bu	$t4, $s2, 0
	ld.bu	$t5, $t3, 1
	ld.bu	$s4, $s3, 1
	ld.bu	$s5, $s2, 1
	add.d	$t6, $t2, $t4
	addi.d	$t7, $s2, 1
	add.d	$t2, $s4, $t5
	add.d	$t5, $t2, $s5
	slli.d	$t2, $t6, 1
	sub.d	$t2, $t2, $t4
	add.d	$t2, $t2, $t5
	mul.d	$t4, $a1, $t4
	mul.d	$t2, $t2, $a2
	add.d	$t2, $t4, $t2
	add.d	$t2, $t2, $t0
	srli.d	$t2, $t2, 16
	st.b	$t2, $t8, 0
	addi.d	$t2, $t8, 1
	add.d	$t4, $t8, $a3
	addi.d	$s4, $t4, 7
	add.d	$t8, $s2, $a4
	addi.d	$t4, $t3, 2
	sltu	$t8, $t2, $t8
	sltu	$s5, $t7, $s4
	and	$s5, $t8, $s5
	addi.d	$t8, $s3, 2
	bnez	$s5, .LBB3_13
# %bb.8:                                # %for.body
                                        #   in Loop: Header=BB3_7 Depth=1
	add.d	$s5, $t3, $a4
	sltu	$s5, $t2, $s5
	sltu	$s6, $t4, $s4
	and	$s5, $s5, $s6
	bnez	$s5, .LBB3_13
# %bb.9:                                # %for.body
                                        #   in Loop: Header=BB3_7 Depth=1
	add.d	$s5, $s3, $a4
	sltu	$s5, $t2, $s5
	sltu	$s4, $t8, $s4
	and	$s4, $s5, $s4
	bnez	$s4, .LBB3_13
# %bb.10:                               # %vector.ph
                                        #   in Loop: Header=BB3_7 Depth=1
	addi.d	$t8, $t3, 1
	addi.d	$s3, $s3, 1
	add.d	$t4, $t2, $a5
	add.d	$t3, $t7, $a5
	vinsgr2vr.w	$vr5, $t6, 1
	vinsgr2vr.w	$vr4, $t5, 1
	addi.d	$t5, $t8, 1
	addi.d	$t6, $s3, 1
	addi.d	$t7, $s2, 2
	move	$t8, $a6
	.p2align	4, , 16
.LBB3_11:                               # %vector.body
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s2, $t7, -1
	ld.h	$s3, $t5, 0
	vinsgr2vr.h	$vr6, $s2, 0
	vori.b	$vr7, $vr4, 0
	vilvl.b	$vr4, $vr2, $vr6
	vilvl.h	$vr4, $vr2, $vr4
	vinsgr2vr.h	$vr6, $s3, 0
	ld.h	$s2, $t6, 0
	vilvl.w	$vr8, $vr2, $vr4
	vilvl.b	$vr4, $vr2, $vr6
	vilvl.h	$vr4, $vr2, $vr4
	vinsgr2vr.h	$vr6, $s2, 0
	ld.h	$s2, $t7, 0
	vilvl.b	$vr6, $vr2, $vr6
	vilvl.h	$vr6, $vr2, $vr6
	vadd.w	$vr4, $vr6, $vr4
	vinsgr2vr.h	$vr6, $s2, 0
	pcalau12i	$s2, %pc_hi20(.LCPI3_0)
	vpackod.w	$vr5, $vr7, $vr5
	vld	$vr9, $s2, %pc_lo12(.LCPI3_0)
	vilvl.b	$vr6, $vr2, $vr6
	vilvl.h	$vr6, $vr2, $vr6
	vadd.w	$vr4, $vr4, $vr6
	vshuf.w	$vr9, $vr4, $vr7
	vilvl.w	$vr5, $vr2, $vr5
	vilvl.w	$vr6, $vr2, $vr9
	vshuf4i.w	$vr7, $vr4, 16
	vadd.d	$vr5, $vr5, $vr6
	vsub.d	$vr5, $vr5, $vr8
	vadd.d	$vr5, $vr5, $vr7
	vmul.d	$vr7, $vr0, $vr8
	pcalau12i	$s2, %pc_hi20(.LCPI3_1)
	vld	$vr8, $s2, %pc_lo12(.LCPI3_1)
	vmadd.d	$vr7, $vr5, $vr1
	vadd.d	$vr5, $vr7, $vr3
	vsrli.d	$vr5, $vr5, 16
	vshuf.b	$vr5, $vr0, $vr5, $vr8
	vstelm.h	$vr5, $t2, 0, 0
	addi.d	$t6, $t6, 2
	addi.d	$t5, $t5, 2
	addi.d	$t8, $t8, -2
	addi.d	$t7, $t7, 2
	addi.d	$t2, $t2, 2
	vori.b	$vr5, $vr9, 0
	bnez	$t8, .LBB3_11
# %bb.12:                               # %middle.block
                                        #   in Loop: Header=BB3_7 Depth=1
	vpickve2gr.w	$s3, $vr4, 1
	vpickve2gr.d	$s4, $vr6, 1
	move	$t2, $t4
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_13:                               # %for.body44.preheader
                                        #   in Loop: Header=BB3_7 Depth=1
	move	$s2, $a7
	.p2align	4, , 16
.LBB3_14:                               # %for.body44
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$s3, $t4, 0
	ld.bu	$s4, $t8, 0
	ld.bu	$s5, $t7, 1
	addi.d	$t3, $t7, 1
	ld.bu	$t7, $t7, 0
	add.d	$s3, $s4, $s3
	add.d	$s3, $s3, $s5
	addi.w	$s4, $t5, 0
	add.d	$t6, $t6, $s4
	sub.d	$t6, $t6, $t7
	add.d	$t6, $t6, $s3
	mul.d	$t7, $a1, $t7
	mul.d	$t6, $t6, $a2
	add.d	$t6, $t7, $t6
	add.d	$t6, $t6, $t0
	srli.d	$t6, $t6, 16
	st.b	$t6, $t2, 0
	addi.d	$t2, $t2, 1
	bstrpick.d	$t6, $s2, 31, 0
	addi.d	$s2, $t6, 1
	and	$s5, $s2, $t1
	addi.d	$t8, $t8, 1
	addi.d	$t4, $t4, 1
	move	$t6, $t5
	move	$t5, $s3
	move	$t7, $t3
	beqz	$s5, .LBB3_14
	b	.LBB3_6
.LBB3_15:                               # %for.end83
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
.Lfunc_end3:
	.size	fullsize_smooth_downsample, .Lfunc_end3-fullsize_smooth_downsample
                                        # -- End function
	.p2align	5                               # -- Begin function fullsize_downsample
	.type	fullsize_downsample,@function
fullsize_downsample:                    # @fullsize_downsample
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a4, $a0, 308
	ld.w	$a5, $a0, 40
	move	$fp, $a3
	move	$a0, $a2
	move	$s1, $a1
	move	$a1, $zero
	move	$a2, $a3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(jcopy_sample_rows)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s0, 308
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB4_3
# %bb.1:                                # %entry
	ld.w	$a1, $s1, 28
	ld.wu	$s1, $s0, 40
	slli.d	$a1, $a1, 3
	sub.w	$s0, $a1, $s1
	blt	$s0, $a0, .LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %for.body.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $s1
	ld.b	$a1, $a0, -1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, 8
	bnez	$s2, .LBB4_2
.LBB4_3:                                # %expand_right_edge.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	fullsize_downsample, .Lfunc_end4-fullsize_downsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v1_downsample
	.type	h2v1_downsample,@function
h2v1_downsample:                        # @h2v1_downsample
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
	move	$fp, $a1
	ld.w	$s5, $a0, 308
	ld.w	$s3, $a1, 28
	ori	$s4, $zero, 1
	move	$s0, $a3
	move	$s1, $a2
	blt	$s5, $s4, .LBB5_4
# %bb.1:                                # %entry
	ld.wu	$s6, $a0, 40
	slli.d	$a0, $s3, 4
	sub.w	$s2, $a0, $s6
	blt	$s2, $s4, .LBB5_4
# %bb.2:                                # %for.body.lr.ph.i
	move	$s7, $s1
	.p2align	4, , 16
.LBB5_3:                                # %for.body.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	add.d	$a0, $a0, $s6
	ld.b	$a1, $a0, -1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, 8
	bnez	$s5, .LBB5_3
.LBB5_4:                                # %expand_right_edge.exit
	ld.w	$a0, $fp, 12
	blt	$a0, $s4, .LBB5_10
# %bb.5:                                # %expand_right_edge.exit
	slli.w	$a0, $s3, 3
	beqz	$a0, .LBB5_10
# %bb.6:                                # %for.body.us.preheader
	move	$a1, $zero
	.p2align	4, , 16
.LBB5_7:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
	slli.d	$a2, $a1, 3
	ldx.d	$a5, $s0, $a2
	ldx.d	$a2, $s1, $a2
	move	$a3, $zero
	move	$a4, $a0
	.p2align	4, , 16
.LBB5_8:                                # %for.body6.us
                                        #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a2, 0
	ld.bu	$a7, $a2, 1
	add.d	$a6, $a3, $a6
	add.d	$a6, $a6, $a7
	srli.d	$a6, $a6, 1
	st.b	$a6, $a5, 0
	addi.d	$a5, $a5, 1
	xori	$a3, $a3, 1
	addi.w	$a4, $a4, -1
	addi.d	$a2, $a2, 2
	bnez	$a4, .LBB5_8
# %bb.9:                                # %for.cond4.for.inc11_crit_edge.us
                                        #   in Loop: Header=BB5_7 Depth=1
	ld.w	$a2, $fp, 12
	addi.d	$a1, $a1, 1
	blt	$a1, $a2, .LBB5_7
.LBB5_10:                               # %for.end13
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
	.size	h2v1_downsample, .Lfunc_end5-h2v1_downsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v2_smooth_downsample
	.type	h2v2_smooth_downsample,@function
h2v2_smooth_downsample:                 # @h2v2_smooth_downsample
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
	move	$fp, $a1
	move	$s2, $a0
	ld.w	$a0, $a0, 308
	ld.w	$s4, $a1, 28
	addi.w	$a1, $zero, -1
	move	$s0, $a3
	move	$s1, $a2
	blt	$a0, $a1, .LBB6_4
# %bb.1:                                # %entry
	ld.wu	$s5, $s2, 40
	slli.d	$a1, $s4, 4
	sub.w	$s3, $a1, $s5
	ori	$a1, $zero, 1
	blt	$s3, $a1, .LBB6_4
# %bb.2:                                # %for.body.lr.ph.i
	addi.d	$s6, $s1, -8
	addi.w	$s7, $a0, 2
	.p2align	4, , 16
.LBB6_3:                                # %for.body.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	add.d	$a0, $a0, $s5
	ld.b	$a1, $a0, -1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 8
	bnez	$s7, .LBB6_3
.LBB6_4:                                # %expand_right_edge.exit
	ld.w	$a0, $fp, 12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_9
# %bb.5:                                # %for.body.lr.ph
	ld.w	$a3, $s2, 264
	move	$a0, $zero
	move	$a1, $zero
	slli.d	$a4, $s4, 3
	addi.w	$a2, $zero, -80
	mul.d	$a2, $a3, $a2
	lu12i.w	$a5, 4
	add.d	$a2, $a2, $a5
	bstrpick.d	$a2, $a2, 31, 4
	slli.d	$a2, $a2, 4
	slli.d	$a3, $a3, 4
	bstrpick.d	$a3, $a3, 31, 4
	slli.d	$a3, $a3, 4
	ori	$a5, $zero, 2
	sub.w	$a4, $a5, $a4
	lu12i.w	$a5, 8
	ori	$a6, $zero, 0
	lu32i.d	$a6, 1
	.p2align	4, , 16
.LBB6_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	slli.d	$a7, $a0, 3
	ldx.d	$a7, $s0, $a7
	alsl.d	$t0, $a1, $s1, 3
	slli.d	$t1, $a1, 3
	ldx.d	$t1, $s1, $t1
	ld.d	$t2, $t0, 8
	ld.d	$t4, $t0, -8
	addi.d	$a1, $a1, 2
	slli.d	$t0, $a1, 3
	ld.bu	$t3, $t1, 0
	ld.bu	$t5, $t2, 0
	ld.bu	$t6, $t1, 1
	ld.bu	$t7, $t2, 1
	ldx.d	$t0, $s1, $t0
	add.d	$t3, $t5, $t3
	add.d	$t5, $t3, $t6
	add.d	$t5, $t5, $t7
	ld.bu	$t6, $t4, 0
	ld.bu	$t7, $t4, 1
	ld.bu	$t8, $t0, 0
	ld.bu	$s2, $t0, 1
	ld.bu	$s3, $t1, 2
	ld.bu	$s4, $t2, 2
	add.d	$t3, $t3, $t6
	add.d	$t3, $t3, $t7
	add.d	$t3, $t3, $t8
	add.d	$t3, $t3, $s2
	add.d	$t3, $t3, $s3
	ld.bu	$t7, $t4, 2
	ld.bu	$s2, $t0, 2
	add.w	$t3, $t3, $s4
	add.d	$t6, $t8, $t6
	add.d	$t6, $t6, $t7
	add.d	$t6, $t6, $s2
	alsl.d	$t3, $t3, $t6, 1
	mul.d	$t5, $t5, $a2
	mul.d	$t3, $t3, $a3
	add.d	$t3, $t5, $t3
	add.d	$t3, $t3, $a5
	srli.d	$t3, $t3, 16
	st.b	$t3, $a7, 0
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 3
	addi.d	$t3, $t1, 3
	addi.d	$t2, $t2, 3
	addi.d	$t1, $t4, 3
	move	$t4, $a4
	.p2align	4, , 16
.LBB6_7:                                # %for.body73
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t5, $t3, -1
	ld.bu	$t6, $t3, 0
	add.d	$t5, $t6, $t5
	ld.bu	$t6, $t2, -1
	ld.bu	$t7, $t2, 0
	ld.bu	$t8, $t1, -1
	ld.bu	$s2, $t1, 0
	ld.bu	$s3, $t0, -1
	add.d	$t5, $t5, $t6
	add.d	$t5, $t5, $t7
	add.d	$t6, $s2, $t8
	add.d	$t6, $t6, $s3
	ld.bu	$t7, $t0, 0
	ld.bu	$t8, $t3, -2
	ld.bu	$s2, $t3, 1
	ld.bu	$s3, $t2, -2
	add.d	$t6, $t6, $t7
	add.d	$t6, $t6, $t8
	add.d	$t6, $t6, $s2
	add.d	$t6, $t6, $s3
	ld.bu	$t7, $t2, 1
	ld.bu	$t8, $t1, -2
	ld.bu	$s2, $t1, 1
	ld.bu	$s3, $t0, -2
	add.d	$t6, $t6, $t7
	ld.bu	$t7, $t0, 1
	add.d	$t8, $s2, $t8
	add.d	$t8, $t8, $s3
	alsl.d	$t6, $t6, $t8, 1
	add.d	$t6, $t6, $t7
	mul.d	$t5, $t5, $a2
	mul.d	$t6, $t6, $a3
	add.d	$t5, $t5, $t6
	add.d	$t5, $t5, $a5
	srli.d	$t5, $t5, 16
	st.b	$t5, $a7, 0
	addi.d	$a7, $a7, 1
	bstrpick.d	$t4, $t4, 31, 0
	addi.d	$t4, $t4, 1
	and	$t5, $t4, $a6
	addi.d	$t0, $t0, 2
	addi.d	$t3, $t3, 2
	addi.d	$t2, $t2, 2
	addi.d	$t1, $t1, 2
	beqz	$t5, .LBB6_7
# %bb.8:                                # %for.end
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.bu	$t4, $t3, 0
	ld.bu	$t5, $t2, 0
	ld.bu	$t6, $t3, -1
	ld.bu	$t7, $t2, -1
	add.d	$t4, $t5, $t4
	add.d	$t5, $t4, $t6
	add.d	$t5, $t5, $t7
	ld.bu	$t6, $t1, -1
	ld.bu	$t7, $t1, 0
	ld.bu	$t8, $t0, -1
	ld.bu	$s2, $t0, 0
	ld.bu	$t3, $t3, -2
	ld.bu	$t2, $t2, -2
	add.d	$t4, $t4, $t6
	add.d	$t4, $t4, $t7
	add.d	$t4, $t4, $t8
	add.d	$t4, $t4, $s2
	add.d	$t3, $t4, $t3
	ld.bu	$t1, $t1, -2
	ld.bu	$t0, $t0, -2
	add.w	$t2, $t3, $t2
	add.d	$t3, $s2, $t7
	add.d	$t1, $t3, $t1
	add.d	$t0, $t1, $t0
	alsl.d	$t0, $t2, $t0, 1
	mul.d	$t1, $t5, $a2
	mul.d	$t0, $t0, $a3
	add.d	$t0, $t1, $t0
	add.d	$t0, $t0, $a5
	srli.d	$t0, $t0, 16
	st.b	$t0, $a7, 0
	ld.w	$a7, $fp, 12
	addi.d	$a0, $a0, 1
	blt	$a0, $a7, .LBB6_6
.LBB6_9:                                # %for.end185
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
.Lfunc_end6:
	.size	h2v2_smooth_downsample, .Lfunc_end6-h2v2_smooth_downsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v2_downsample
	.type	h2v2_downsample,@function
h2v2_downsample:                        # @h2v2_downsample
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
	move	$fp, $a1
	ld.w	$s5, $a0, 308
	ld.w	$s3, $a1, 28
	ori	$s4, $zero, 1
	move	$s0, $a3
	move	$s1, $a2
	blt	$s5, $s4, .LBB7_4
# %bb.1:                                # %entry
	ld.wu	$s6, $a0, 40
	slli.d	$a0, $s3, 4
	sub.w	$s2, $a0, $s6
	blt	$s2, $s4, .LBB7_4
# %bb.2:                                # %for.body.lr.ph.i
	move	$s7, $s1
	.p2align	4, , 16
.LBB7_3:                                # %for.body.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	add.d	$a0, $a0, $s6
	ld.b	$a1, $a0, -1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, 8
	bnez	$s5, .LBB7_3
.LBB7_4:                                # %expand_right_edge.exit
	ld.w	$a0, $fp, 12
	blt	$a0, $s4, .LBB7_10
# %bb.5:                                # %expand_right_edge.exit
	slli.w	$a0, $s3, 3
	beqz	$a0, .LBB7_10
# %bb.6:                                # %for.body.us.preheader
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB7_7:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
	slli.d	$a3, $a1, 3
	ldx.d	$a7, $s0, $a3
	alsl.d	$a4, $a2, $s1, 3
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s1, $a3
	ld.d	$a4, $a4, 8
	ori	$a5, $zero, 1
	move	$a6, $a0
	.p2align	4, , 16
.LBB7_8:                                # %for.body8.us
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t0, $a3, 0
	ld.bu	$t1, $a3, 1
	ld.bu	$t2, $a4, 0
	ld.bu	$t3, $a4, 1
	add.d	$t0, $a5, $t0
	add.d	$t0, $t0, $t1
	add.d	$t0, $t0, $t2
	add.d	$t0, $t0, $t3
	srli.d	$t0, $t0, 2
	st.b	$t0, $a7, 0
	addi.d	$a7, $a7, 1
	xori	$a5, $a5, 3
	addi.d	$a3, $a3, 2
	addi.w	$a6, $a6, -1
	addi.d	$a4, $a4, 2
	bnez	$a6, .LBB7_8
# %bb.9:                                # %for.cond6.for.end_crit_edge.us
                                        #   in Loop: Header=BB7_7 Depth=1
	ld.w	$a3, $fp, 12
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 2
	blt	$a1, $a3, .LBB7_7
.LBB7_10:                               # %for.end23
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
.Lfunc_end7:
	.size	h2v2_downsample, .Lfunc_end7-h2v2_downsample
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function int_downsample
.LCPI8_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.p2align	5
	.type	int_downsample,@function
int_downsample:                         # @int_downsample
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a6, $a1, 28
	ld.w	$a4, $a0, 304
	ld.w	$a5, $a1, 8
	ld.w	$s0, $a0, 308
	ld.w	$s1, $a1, 12
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	slli.d	$fp, $a6, 3
	ori	$s4, $zero, 1
	div.w	$s3, $a4, $a5
	move	$a2, $s1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	blt	$s0, $s4, .LBB8_5
# %bb.1:                                # %entry
	ld.wu	$s5, $a0, 40
	mul.d	$a0, $s3, $fp
	sub.w	$s2, $a0, $s5
	move	$a2, $s1
	blt	$s2, $s4, .LBB8_5
# %bb.2:                                # %for.body.lr.ph.i
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	move	$s7, $s0
	.p2align	4, , 16
.LBB8_3:                                # %for.body.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	add.d	$a0, $a0, $s5
	ld.b	$a1, $a0, -1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 8
	bnez	$s7, .LBB8_3
# %bb.4:                                # %expand_right_edge.exit.loopexit
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 12
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
.LBB8_5:                                # %expand_right_edge.exit
	blt	$a2, $s4, .LBB8_24
# %bb.6:                                # %for.body.lr.ph
	addi.w	$s4, $fp, 0
	beqz	$s4, .LBB8_24
# %bb.7:                                # %for.body.us.preheader
	move	$s5, $zero
	move	$t5, $zero
	div.w	$s7, $s0, $s1
	mul.d	$a0, $s7, $s3
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a2, $a0, $a2
	srai.d	$s8, $a2, 1
	addi.w	$s2, $a0, 0
	bstrpick.d	$a0, $fp, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$s1, $s3, 31, 0
	bstrpick.d	$a0, $s3, 30, 3
	slli.d	$s0, $a0, 3
	ori	$fp, $zero, 1
	ori	$s6, $zero, 8
	xvrepli.b	$xr6, 0
	xvst	$xr6, $sp, 16                   # 32-byte Folded Spill
	b	.LBB8_10
	.p2align	4, , 16
.LBB8_8:                                # %for.cond10.preheader.lr.ph.split.us55
                                        #   in Loop: Header=BB8_10 Depth=1
	div.d	$a1, $s8, $s2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$t5, $sp, 80                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	xvld	$xr6, $sp, 16                   # 32-byte Folded Reload
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
.LBB8_9:                                # %for.cond7.for.end32_crit_edge.us
                                        #   in Loop: Header=BB8_10 Depth=1
	ld.w	$a0, $a1, 12
	addi.d	$s5, $s5, 1
	add.d	$t5, $t5, $s7
	bge	$s5, $a0, .LBB8_24
.LBB8_10:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_14 Depth 2
                                        #       Child Loop BB8_17 Depth 3
                                        #         Child Loop BB8_20 Depth 4
                                        #         Child Loop BB8_23 Depth 4
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $a3, $a0
	blt	$s7, $fp, .LBB8_8
# %bb.11:                               # %for.cond10.preheader.us.us.preheader
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$t3, $zero
	move	$a2, $zero
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$t4, $t5, $a4, 3
	b	.LBB8_14
	.p2align	4, , 16
.LBB8_12:                               #   in Loop: Header=BB8_14 Depth=2
	move	$a7, $zero
.LBB8_13:                               # %for.cond10.for.end22_crit_edge.us.us
                                        #   in Loop: Header=BB8_14 Depth=2
	add.d	$a4, $a7, $s8
	div.d	$a4, $a4, $s2
	st.b	$a4, $a0, 0
	addi.d	$a0, $a0, 1
	addi.w	$a2, $a2, 1
	add.w	$t3, $t3, $s3
	beq	$a2, $s4, .LBB8_9
.LBB8_14:                               # %for.cond10.preheader.us.us
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_17 Depth 3
                                        #         Child Loop BB8_20 Depth 4
                                        #         Child Loop BB8_23 Depth 4
	blt	$s3, $fp, .LBB8_12
# %bb.15:                               # %for.body12.us.us.us.preheader
                                        #   in Loop: Header=BB8_14 Depth=2
	move	$a4, $zero
	move	$a7, $zero
	bstrpick.d	$a5, $t3, 31, 0
	b	.LBB8_17
	.p2align	4, , 16
.LBB8_16:                               # %for.cond15.for.inc20_crit_edge.us.us.us
                                        #   in Loop: Header=BB8_17 Depth=3
	addi.d	$a4, $a4, 1
	beq	$a4, $s7, .LBB8_13
.LBB8_17:                               # %for.body12.us.us.us
                                        #   Parent Loop BB8_10 Depth=1
                                        #     Parent Loop BB8_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_20 Depth 4
                                        #         Child Loop BB8_23 Depth 4
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $t4, $a6
	add.d	$t0, $a6, $a5
	bgeu	$s3, $s6, .LBB8_19
# %bb.18:                               #   in Loop: Header=BB8_17 Depth=3
	move	$t1, $zero
	move	$a6, $t0
	b	.LBB8_22
	.p2align	4, , 16
.LBB8_19:                               # %vector.ph
                                        #   in Loop: Header=BB8_17 Depth=3
	add.d	$a6, $t0, $s0
	xvori.b	$xr0, $xr6, 0
	xvinsgr2vr.d	$xr0, $a7, 0
	addi.d	$a7, $t0, 4
	move	$t0, $s0
	xvori.b	$xr1, $xr6, 0
	.p2align	4, , 16
.LBB8_20:                               # %vector.body
                                        #   Parent Loop BB8_10 Depth=1
                                        #     Parent Loop BB8_14 Depth=2
                                        #       Parent Loop BB8_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t1, $a7, -4
	ld.w	$t2, $a7, 0
	vinsgr2vr.w	$vr2, $t1, 0
	vinsgr2vr.w	$vr3, $t2, 0
	vpickve2gr.b	$t1, $vr2, 0
	vori.b	$vr4, $vr6, 0
	vinsgr2vr.b	$vr4, $t1, 0
	vpickve2gr.b	$t1, $vr2, 1
	vinsgr2vr.b	$vr4, $t1, 8
	vpickve2gr.b	$t1, $vr2, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.b	$vr5, $t1, 0
	xvpermi.q	$xr4, $xr5, 2
	vpickve2gr.b	$t1, $vr2, 3
	xvpermi.d	$xr2, $xr4, 14
	vinsgr2vr.b	$vr2, $t1, 8
	xvpermi.q	$xr4, $xr2, 2
	vpickve2gr.b	$t1, $vr3, 0
	vori.b	$vr2, $vr6, 0
	vinsgr2vr.b	$vr2, $t1, 0
	vpickve2gr.b	$t1, $vr3, 1
	vinsgr2vr.b	$vr2, $t1, 8
	vpickve2gr.b	$t1, $vr3, 2
	xvpermi.d	$xr5, $xr2, 14
	vinsgr2vr.b	$vr5, $t1, 0
	xvpermi.q	$xr2, $xr5, 2
	vpickve2gr.b	$t1, $vr3, 3
	xvpermi.d	$xr3, $xr2, 14
	vinsgr2vr.b	$vr3, $t1, 8
	xvpermi.q	$xr2, $xr3, 2
	xvadd.d	$xr0, $xr0, $xr4
	xvadd.d	$xr1, $xr1, $xr2
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 8
	bnez	$t0, .LBB8_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB8_17 Depth=3
	pcalau12i	$a7, %pc_hi20(.LCPI8_0)
	xvld	$xr2, $a7, %pc_lo12(.LCPI8_0)
	xvadd.d	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.d	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$a7, $xr0, 0
	move	$t1, $s0
	beq	$s0, $s1, .LBB8_16
.LBB8_22:                               # %for.body17.us.us.us.preheader
                                        #   in Loop: Header=BB8_17 Depth=3
	sub.d	$t0, $s3, $t1
	.p2align	4, , 16
.LBB8_23:                               # %for.body17.us.us.us
                                        #   Parent Loop BB8_10 Depth=1
                                        #     Parent Loop BB8_14 Depth=2
                                        #       Parent Loop BB8_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t1, $a6, 0
	addi.d	$a6, $a6, 1
	addi.w	$t0, $t0, -1
	add.d	$a7, $a7, $t1
	bnez	$t0, .LBB8_23
	b	.LBB8_16
.LBB8_24:                               # %for.end36
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end8:
	.size	int_downsample, .Lfunc_end8-int_downsample
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_pass_downsample
	.addrsig_sym sep_downsample
	.addrsig_sym fullsize_smooth_downsample
	.addrsig_sym fullsize_downsample
	.addrsig_sym h2v1_downsample
	.addrsig_sym h2v2_smooth_downsample
	.addrsig_sym h2v2_downsample
	.addrsig_sym int_downsample
