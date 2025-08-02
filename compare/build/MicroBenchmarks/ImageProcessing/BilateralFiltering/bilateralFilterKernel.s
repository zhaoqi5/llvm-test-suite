	.file	"bilateralFilterKernel.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function bilateralFilterKernel
.LCPI0_0:
	.dword	0x4072000000000000              # double 288
.LCPI0_1:
	.dword	0x408c463abeccb2bb              # double 904.77868423386042
.LCPI0_2:
	.dword	0xbf60000000000000              # double -0.001953125
.LCPI0_3:
	.dword	0x409921fb54442d18              # double 1608.4954386379741
	.text
	.globl	bilateralFilterKernel
	.p2align	5
	.type	bilateralFilterKernel,@function
bilateralFilterKernel:                  # @bilateralFilterKernel
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 104                  # 8-byte Folded Spill
	bstrpick.d	$a5, $a4, 31, 31
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	add.w	$a4, $a4, $a5
	srai.d	$s3, $a4, 1
	sub.w	$a0, $a0, $s3
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bge	$s3, $a0, .LBB0_11
# %bb.1:                                # %for.cond1.preheader.lr.ph
	sub.w	$a0, $a1, $s3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bge	$s3, $a0, .LBB0_11
# %bb.2:                                # %for.cond1.preheader.us.preheader
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI0_3)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$s5, $a0, 31, 0
	movgr2fr.d	$fs4, $zero
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.cond1.for.cond.cleanup4_crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 512
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	beq	$a1, $a0, .LBB0_11
.LBB0_4:                                # %for.cond1.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_7 Depth 3
                                        #         Child Loop BB0_8 Depth 4
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a2, 9
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	move	$s0, $s3
	.p2align	4, , 16
.LBB0_6:                                # %for.cond6.preheader.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
                                        #         Child Loop BB0_8 Depth 4
	move	$fp, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$s1, $s0, $a0, 2
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	fmov.d	$fs5, $fs4
	fmov.d	$fs6, $fs4
	.p2align	4, , 16
.LBB0_7:                                # %for.cond10.preheader.us.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_8 Depth 4
	sub.d	$a0, $s3, $fp
	mul.d	$s4, $a0, $a0
	move	$s6, $s5
	move	$s8, $s7
	move	$s2, $s3
	.p2align	4, , 16
.LBB0_8:                                # %for.body13.us.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        #       Parent Loop BB0_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s8, 0
	addi.d	$a2, $a0, -1
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fs7, $fa0, $fs1
	mul.d	$a0, $s2, $s2
	add.d	$a0, $a0, $s4
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fsqrt.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	fdiv.d	$fa0, $fa0, $fs3
	fmul.d	$fa0, $fs7, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fs6, $fs6, $fa1
	fadd.d	$fs5, $fs5, $fa0
	addi.d	$s2, $s2, -1
	addi.d	$s6, $s6, -1
	addi.d	$s8, $s8, 4
	bnez	$s6, .LBB0_8
# %bb.9:                                # %for.cond10.for.cond.cleanup12_crit_edge.us.us.us
                                        #   in Loop: Header=BB0_7 Depth=3
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 512
	bne	$fp, $s5, .LBB0_7
# %bb.10:                               # %for.cond6.for.cond.cleanup8_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB0_6 Depth=2
	fdiv.d	$fa0, $fs6, $fs5
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	addi.d	$s0, $s0, 1
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	addi.d	$s7, $s7, 4
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bne	$s0, $a0, .LBB0_6
	b	.LBB0_3
.LBB0_11:                               # %for.cond.cleanup
	fld.d	$fs7, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end0:
	.size	bilateralFilterKernel, .Lfunc_end0-bilateralFilterKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
