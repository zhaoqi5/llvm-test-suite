	.file	"FFT.c"
	.text
	.globl	FFT_num_flops                   # -- Begin function FFT_num_flops
	.p2align	5
	.type	FFT_num_flops,@function
FFT_num_flops:                          # @FFT_num_flops
# %bb.0:                                # %entry
	ori	$a2, $zero, 2
	move	$a1, $a0
	blt	$a0, $a2, .LBB0_3
# %bb.1:                                # %for.inc.i.preheader
	move	$a0, $zero
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB0_2:                                # %for.inc.i
                                        # =>This Inner Loop Header: Depth=1
	slli.w	$a2, $a2, 1
	addi.w	$a0, $a0, 1
	blt	$a2, $a1, .LBB0_2
	b	.LBB0_4
.LBB0_3:
	move	$a0, $zero
.LBB0_4:                                # %for.end.i
	ori	$a2, $zero, 1
	sll.w	$a2, $a2, $a0
	bne	$a1, $a2, .LBB0_6
# %bb.5:                                # %int_log2.exit
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -896
	vldi	$vr3, -1004
	fmadd.d	$fa2, $fa0, $fa3, $fa2
	vldi	$vr3, -912
	fadd.d	$fa0, $fa0, $fa3
	fadd.d	$fa0, $fa0, $fa0
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ret
.LBB0_6:                                # %if.then.i
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	FFT_num_flops, .Lfunc_end0-FFT_num_flops
                                        # -- End function
	.globl	FFT_bitreverse                  # -- Begin function FFT_bitreverse
	.p2align	5
	.type	FFT_bitreverse,@function
FFT_bitreverse:                         # @FFT_bitreverse
# %bb.0:                                # %entry
	ori	$a2, $zero, 4
	blt	$a0, $a2, .LBB1_7
# %bb.1:                                # %for.body.preheader
	move	$a2, $zero
	move	$a3, $zero
	bstrpick.d	$a4, $a0, 31, 31
	add.w	$a0, $a0, $a4
	srai.d	$a0, $a0, 1
	ori	$a4, $zero, 2
	slt	$a5, $a4, $a0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a0, $a5
	or	$a4, $a5, $a4
	addi.d	$a4, $a4, -1
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	bge	$a2, $a3, .LBB1_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	slli.w	$a5, $a3, 1
	slli.d	$a6, $a5, 3
	fldx.d	$fa0, $a1, $a6
	slli.d	$a7, $a2, 4
	alsl.d	$a5, $a5, $a1, 3
	vldx	$vr1, $a1, $a7
	fstx.d	$fa0, $a1, $a7
	fld.d	$fa0, $a5, 8
	alsl.d	$a5, $a2, $a1, 4
	fst.d	$fa0, $a5, 8
	vstx	$vr1, $a1, $a6
.LBB1_4:                                # %while.cond.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a5, $a0
	.p2align	4, , 16
.LBB1_5:                                # %while.cond
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a6, $a3
	bstrpick.d	$a5, $a5, 31, 1
	sub.w	$a3, $a3, $a5
	bge	$a6, $a5, .LBB1_5
# %bb.6:                                # %while.end
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a2, $a2, 1
	add.w	$a3, $a6, $a5
	bne	$a2, $a4, .LBB1_2
.LBB1_7:                                # %for.end
	ret
.Lfunc_end1:
	.size	FFT_bitreverse, .Lfunc_end1-FFT_bitreverse
                                        # -- End function
	.globl	FFT_transform                   # -- Begin function FFT_transform
	.p2align	5
	.type	FFT_transform,@function
FFT_transform:                          # @FFT_transform
# %bb.0:                                # %entry
	addi.w	$a2, $zero, -1
	pcaddu18i	$t8, %call36(FFT_transform_internal)
	jr	$t8
.Lfunc_end2:
	.size	FFT_transform, .Lfunc_end2-FFT_transform
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function FFT_transform_internal
.LCPI3_0:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
	.text
	.p2align	5
	.type	FFT_transform_internal,@function
FFT_transform_internal:                 # @FFT_transform_internal
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
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	move	$a3, $a0
	bstrins.d	$a3, $zero, 0, 0
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB3_26
# %bb.1:                                # %if.end
	move	$fp, $a1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a1, $a0, $a1
	ori	$a3, $zero, 4
	srai.d	$s0, $a1, 1
	move	$s1, $zero
	blt	$a0, $a3, .LBB3_4
# %bb.2:                                # %for.inc.i.preheader
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB3_3:                                # %for.inc.i
                                        # =>This Inner Loop Header: Depth=1
	slli.w	$a1, $a1, 1
	addi.w	$s1, $s1, 1
	blt	$a1, $s0, .LBB3_3
.LBB3_4:                                # %for.end.i
	ori	$a1, $zero, 1
	sll.w	$a1, $a1, $s1
	bne	$s0, $a1, .LBB3_27
# %bb.5:                                # %int_log2.exit
	beqz	$a0, .LBB3_26
# %bb.6:                                # %if.end3
	ori	$a1, $zero, 4
	blt	$a0, $a1, .LBB3_13
# %bb.7:                                # %for.body.preheader.i
	move	$a1, $zero
	move	$a4, $zero
	ori	$a3, $zero, 2
	sltu	$a5, $a3, $s0
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $s0, $a5
	or	$a3, $a5, $a3
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB3_8:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
	bge	$a1, $a4, .LBB3_10
# %bb.9:                                # %if.then.i70
                                        #   in Loop: Header=BB3_8 Depth=1
	slli.w	$a5, $a4, 1
	slli.d	$a6, $a5, 3
	fldx.d	$fa0, $fp, $a6
	slli.d	$a7, $a1, 4
	alsl.d	$a5, $a5, $fp, 3
	vldx	$vr1, $fp, $a7
	fstx.d	$fa0, $fp, $a7
	fld.d	$fa0, $a5, 8
	alsl.d	$a5, $a1, $fp, 4
	fst.d	$fa0, $a5, 8
	vstx	$vr1, $fp, $a6
.LBB3_10:                               # %while.cond.i.preheader
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a5, $s0
	.p2align	4, , 16
.LBB3_11:                               # %while.cond.i
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a6, $a4
	bstrpick.d	$a5, $a5, 31, 1
	sub.w	$a4, $a4, $a5
	bge	$a6, $a5, .LBB3_11
# %bb.12:                               # %while.end.i
                                        #   in Loop: Header=BB3_8 Depth=1
	addi.d	$a1, $a1, 1
	add.w	$a4, $a6, $a5
	bne	$a1, $a3, .LBB3_8
.LBB3_13:                               # %FFT_bitreverse.exit
	ori	$a1, $zero, 1
	blt	$s1, $a1, .LBB3_26
# %bb.14:                               # %for.body.lr.ph
	pcalau12i	$a3, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI3_0)
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa1
	fmul.d	$fs2, $fa1, $fa0
	bge	$a1, $a0, .LBB3_24
# %bb.15:                               # %for.body.us.preheader
	move	$s2, $zero
	ori	$s4, $zero, 1
	ori	$s3, $zero, 2
	movgr2fr.d	$fs3, $zero
	b	.LBB3_17
	.p2align	4, , 16
.LBB3_16:                               # %for.end100.us
                                        #   in Loop: Header=BB3_17 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $s1, .LBB3_26
.LBB3_17:                               # %for.body17.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
                                        #     Child Loop BB3_21 Depth 2
                                        #       Child Loop BB3_22 Depth 3
	move	$s5, $s4
	slli.d	$s4, $s4, 1
	bstrpick.d	$a0, $s4, 31, 1
	slli.d	$a0, $a0, 1
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fs1, $fs2, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	vldi	$vr0, -928
	fmul.d	$fa0, $fs1, $fa0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	move	$a3, $zero
	fadd.d	$fa2, $fa0, $fa0
	addi.w	$a0, $s4, 0
	addi.w	$a4, $s5, 0
	slli.d	$a1, $a0, 4
	slli.d	$a2, $a4, 4
	move	$a5, $fp
	.p2align	4, , 16
.LBB3_18:                               # %for.body17.us
                                        #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr1, $a5, $a2
	vld	$vr3, $a5, 0
	vfsub.d	$vr4, $vr3, $vr1
	vstx	$vr4, $a5, $a2
	vfadd.d	$vr1, $vr1, $vr3
	vst	$vr1, $a5, 0
	add.d	$a3, $a3, $a0
	add.d	$a5, $a5, $a1
	blt	$a3, $s0, .LBB3_18
# %bb.19:                               # %for.cond43.preheader.us
                                        #   in Loop: Header=BB3_17 Depth=1
	bltu	$a4, $s3, .LBB3_16
# %bb.20:                               # %for.body46.lr.ph.us
                                        #   in Loop: Header=BB3_17 Depth=1
	fneg.d	$fa1, $fs0
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa2, $fa0
	bstrpick.d	$a3, $s5, 31, 0
	ori	$a4, $zero, 1
	vldi	$vr2, -912
	move	$a5, $fp
	fmov.d	$fa3, $fs3
	.p2align	4, , 16
.LBB3_21:                               # %for.body46.us.us
                                        #   Parent Loop BB3_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_22 Depth 3
	move	$a6, $zero
                                        # kill: def $f2_64 killed $f2_64 killed $vr2
	fmadd.d	$fa4, $fa1, $fa3, $fa2
	fmadd.d	$fa5, $fs0, $fa2, $fa3
	fmadd.d	$fa2, $fa0, $fa2, $fa4
	fmadd.d	$fa3, $fa0, $fa3, $fa5
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_22:                               # %for.body56.us.us
                                        #   Parent Loop BB3_17 Depth=1
                                        #     Parent Loop BB3_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t0, $a7, $a2
	fld.d	$fa4, $t0, 24
	fld.d	$fa5, $t0, 16
	fneg.d	$fa6, $fa4
	fmul.d	$fa6, $fa3, $fa6
	fmadd.d	$fa6, $fa2, $fa5, $fa6
	fld.d	$fa7, $a7, 16
	fmul.d	$fa5, $fa3, $fa5
	fld.d	$ft0, $a7, 24
	fmadd.d	$fa4, $fa2, $fa4, $fa5
	fsub.d	$fa5, $fa7, $fa6
	fst.d	$fa5, $t0, 16
	fsub.d	$fa5, $ft0, $fa4
	fst.d	$fa5, $t0, 24
	fadd.d	$fa5, $fa7, $fa6
	fst.d	$fa5, $a7, 16
	fadd.d	$fa4, $fa4, $ft0
	fst.d	$fa4, $a7, 24
	add.d	$a6, $a6, $a0
	add.d	$a7, $a7, $a1
	blt	$a6, $s0, .LBB3_22
# %bb.23:                               # %for.cond53.for.inc99_crit_edge.us.us
                                        #   in Loop: Header=BB3_21 Depth=2
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 16
	bne	$a4, $a3, .LBB3_21
	b	.LBB3_16
.LBB3_24:                               # %for.cond43.preheader.preheader
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB3_25:                               # %for.cond43.preheader
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$fp, $fp, 1
	bstrpick.d	$a0, $fp, 31, 1
	slli.d	$a0, $a0, 1
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fs0, $fs2, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	vldi	$vr0, -928
	fmul.d	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	bnez	$s1, .LBB3_25
.LBB3_26:                               # %cleanup
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB3_27:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	FFT_transform_internal, .Lfunc_end3-FFT_transform_internal
                                        # -- End function
	.globl	FFT_inverse                     # -- Begin function FFT_inverse
	.p2align	5
	.type	FFT_inverse,@function
FFT_inverse:                            # @FFT_inverse
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(FFT_transform_internal)
	jirl	$ra, $ra, 0
	blt	$fp, $s1, .LBB4_8
# %bb.1:                                # %for.body.preheader
	bstrpick.d	$a0, $fp, 31, 31
	add.w	$a0, $fp, $a0
	srai.d	$a0, $a0, 1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ori	$a0, $zero, 8
	frecip.d	$fa0, $fa0
	bgeu	$fp, $a0, .LBB4_3
# %bb.2:
	move	$a0, $zero
	b	.LBB4_6
.LBB4_3:                                # %vector.ph
	bstrpick.d	$a0, $fp, 30, 3
	slli.d	$a0, $a0, 3
	xvreplve0.d	$xr1, $xr0
	addi.d	$a1, $s0, 32
	move	$a2, $a0
	.p2align	4, , 16
.LBB4_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a1, -32
	xvld	$xr3, $a1, 0
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmul.d	$xr3, $xr1, $xr3
	xvst	$xr2, $a1, -32
	xvst	$xr3, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB4_4
# %bb.5:                                # %middle.block
	beq	$a0, $fp, .LBB4_8
.LBB4_6:                                # %for.body.preheader9
	alsl.d	$a1, $a0, $s0, 3
	sub.d	$a0, $fp, $a0
	.p2align	4, , 16
.LBB4_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB4_7
.LBB4_8:                                # %for.end
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	FFT_inverse, .Lfunc_end4-FFT_inverse
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"FFT: Data length is not a power of 2!: %d "
	.size	.L.str, 43

	.section	".note.GNU-stack","",@progbits
	.addrsig
