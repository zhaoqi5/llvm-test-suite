	.file	"anisotropicDiffusionKernel.c"
	.text
	.globl	anisotropicDiffusionKernel      # -- Begin function anisotropicDiffusionKernel
	.p2align	5
	.type	anisotropicDiffusionKernel,@function
anisotropicDiffusionKernel:             # @anisotropicDiffusionKernel
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	ori	$a5, $zero, 1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	blt	$a4, $a5, .LBB0_9
# %bb.1:                                # %for.cond1.preheader.lr.ph
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB0_9
# %bb.2:                                # %for.cond1.preheader.us.preheader
	move	$a5, $zero
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a4, 31, 0
	addi.d	$a4, $a4, -2
	addi.d	$a0, $a0, -2
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a4, 31, 0
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a3, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$s7, $a0, 4
	add.d	$a0, $a2, $s7
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s1, $zero, 2056
	vldi	$vr1, -928
	ori	$s5, $zero, 2048
	lu12i.w	$a0, -1
	ori	$s8, $a0, 4
	ori	$s0, $zero, 2052
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.cond1.for.inc191_crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a5, $a5, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$a5, $a0, .LBB0_9
.LBB0_4:                                # %for.cond1.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_7 Depth 3
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB0_3
# %bb.5:                                # %for.cond4.preheader.us.us.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a1, $zero, 2
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_6:                                # %for.cond4.preheader.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	move	$s3, $s4
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_7:                                # %for.body7.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s2, 12
	ld.w	$a1, $s2, 4
	ldx.w	$a2, $s2, $s1
	ld.w	$a3, $s2, -2040
	addi.d	$fp, $s2, 4
	sub.d	$a0, $a0, $a1
	sub.d	$a1, $a2, $a3
	add.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $a0
	sub.d	$a0, $zero, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ld.w	$a1, $s2, 4
	ld.w	$a2, $s2, -4
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa1, $a0
	sub.d	$a0, $a1, $a2
	ldx.w	$a1, $s2, $s5
	ld.w	$a2, $s2, -2048
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs0, $fa0
	sub.d	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $a0
	sub.d	$a0, $zero, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s2, 4
	ld.w	$a2, $s2, -2040
	ld.w	$a3, $s2, -2048
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa1, $a0
	sub.d	$a0, $a2, $a3
	ldx.w	$a2, $s2, $s8
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs1, $fa0
	sub.d	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $a0
	sub.d	$a0, $zero, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, -2044
	ld.w	$a1, $s2, 4
	ldx.w	$a2, $s2, $s1
	ldx.w	$a3, $s2, $s5
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa1, $a0
	sub.d	$a0, $a2, $a3
	ldx.w	$a2, $s2, $s7
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs2, $fa0
	sub.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $a0
	sub.d	$a0, $zero, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s2, $s0
	ld.w	$a1, $s2, 4
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fadd.s	$fa2, $fs0, $fs1
	fadd.s	$fa2, $fa2, $fs2
	fadd.s	$fa0, $fa2, $fa0
	vldi	$vr2, -960
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	vldi	$vr1, -928
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s3, 0
	addi.d	$s6, $s6, -1
	addi.d	$s3, $s3, 4
	move	$s2, $fp
	bnez	$s6, .LBB0_7
# %bb.8:                                # %for.cond4.for.inc188_crit_edge.us.us
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 2047
	addi.d	$s2, $a0, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_6
	b	.LBB0_3
.LBB0_9:                                # %for.end193
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end0:
	.size	anisotropicDiffusionKernel, .Lfunc_end0-anisotropicDiffusionKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
