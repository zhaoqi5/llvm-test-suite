	.file	"textloc.c"
	.text
	.globl	ConvertToFloat                  # -- Begin function ConvertToFloat
	.p2align	5
	.type	ConvertToFloat,@function
ConvertToFloat:                         # @ConvertToFloat
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 36
	ld.w	$a1, $fp, 32
	mul.w	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $fp, 64
	blt	$s0, $a1, .LBB0_7
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a1, $fp, 48
	ori	$a2, $zero, 8
	bltu	$s0, $a2, .LBB0_4
# %bb.2:                                # %vector.memcheck
	add.d	$a2, $a1, $s0
	bgeu	$a0, $a2, .LBB0_8
# %bb.3:                                # %vector.memcheck
	alsl.d	$a2, $s0, $a0, 2
	bgeu	$a1, $a2, .LBB0_8
.LBB0_4:
	move	$a2, $zero
.LBB0_5:                                # %for.body.preheader
	sub.d	$a3, $s0, $a2
	alsl.d	$a0, $a2, $a0, 2
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fst.s	$fa0, $a0, 0
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB0_6
.LBB0_7:                                # %for.end
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_8:                                # %vector.ph
	bstrpick.d	$a2, $s0, 30, 3
	slli.d	$a2, $a2, 3
	move	$a3, $a1
	move	$a4, $a0
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	vinsgr2vr.d	$vr0, $a6, 0
	vpickve2gr.b	$a6, $vr0, 5
	andi	$a6, $a6, 255
	movgr2fr.w	$fa1, $a6
	ffint.s.w	$fa1, $fa1
	vpickve2gr.b	$a6, $vr0, 4
	andi	$a6, $a6, 255
	movgr2fr.w	$fa2, $a6
	ffint.s.w	$fa2, $fa2
	vextrins.w	$vr2, $vr1, 16
	vpickve2gr.b	$a6, $vr0, 6
	andi	$a6, $a6, 255
	movgr2fr.w	$fa1, $a6
	ffint.s.w	$fa1, $fa1
	vextrins.w	$vr2, $vr1, 32
	vpickve2gr.b	$a6, $vr0, 7
	andi	$a6, $a6, 255
	movgr2fr.w	$fa1, $a6
	ffint.s.w	$fa1, $fa1
	vextrins.w	$vr2, $vr1, 48
	vpickve2gr.b	$a6, $vr0, 1
	andi	$a6, $a6, 255
	movgr2fr.w	$fa1, $a6
	ffint.s.w	$fa1, $fa1
	vpickve2gr.b	$a6, $vr0, 0
	andi	$a6, $a6, 255
	movgr2fr.w	$fa3, $a6
	ffint.s.w	$fa3, $fa3
	vextrins.w	$vr3, $vr1, 16
	vpickve2gr.b	$a6, $vr0, 2
	andi	$a6, $a6, 255
	movgr2fr.w	$fa1, $a6
	ffint.s.w	$fa1, $fa1
	vextrins.w	$vr3, $vr1, 32
	vpickve2gr.b	$a6, $vr0, 3
	andi	$a6, $a6, 255
	movgr2fr.w	$fa0, $a6
	ffint.s.w	$fa0, $fa0
	vextrins.w	$vr3, $vr0, 48
	xvpermi.q	$xr3, $xr2, 2
	xvst	$xr3, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 8
	bnez	$a5, .LBB0_9
# %bb.10:                               # %middle.block
	beq	$a2, $s0, .LBB0_7
	b	.LBB0_5
.Lfunc_end0:
	.size	ConvertToFloat, .Lfunc_end0-ConvertToFloat
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function HorzVariance
.LCPI1_0:
	.word	0x437f0000                      # float 255
	.text
	.globl	HorzVariance
	.p2align	5
	.type	HorzVariance,@function
HorzVariance:                           # @HorzVariance
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.wu	$s2, $a0, 36
	ld.w	$s1, $a0, 32
	move	$fp, $a1
	mul.w	$a0, $s1, $s2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $s0, 72
	blt	$s1, $a1, .LBB1_11
# %bb.1:                                # %for.cond3.preheader.lr.ph
	addi.w	$a1, $s2, 0
	ori	$a2, $zero, 21
	blt	$a1, $a2, .LBB1_11
# %bb.2:                                # %for.cond3.preheader.lr.ph.split.us
	pcalau12i	$a2, %got_pc_hi20(HVAR_WINDOW)
	ld.d	$a2, $a2, %got_pc_lo12(HVAR_WINDOW)
	ld.w	$a5, $a2, 0
	addi.w	$a4, $a1, -10
	slli.d	$a2, $a5, 1
	addi.d	$a2, $a2, 1
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $fp
	addi.w	$a3, $zero, -1
	ffint.s.w	$fa1, $fa1
	bge	$a3, $a5, .LBB1_12
# %bb.3:                                # %for.cond3.preheader.lr.ph.split.us.split
	ld.d	$a6, $s0, 48
	move	$a3, $zero
	sub.w	$a5, $zero, $a5
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 10
	pcalau12i	$a6, %pc_hi20(.LCPI1_0)
	fld.s	$fa2, $a6, %pc_lo12(.LCPI1_0)
	addi.d	$a6, $fp, 1
	sltui	$a6, $a6, 1
	movgr2fr.w	$fa3, $zero
	movgr2cf	$fcc0, $a6
	.p2align	4, , 16
.LBB1_4:                                # %for.cond3.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_6 Depth 3
                                        #       Child Loop BB1_8 Depth 3
	mul.d	$a6, $a3, $a1
	ori	$a7, $zero, 10
	move	$t0, $a5
	.p2align	4, , 16
.LBB1_5:                                # %for.body14.lr.ph.us
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_6 Depth 3
                                        #       Child Loop BB1_8 Depth 3
	add.d	$t1, $a7, $a6
	move	$t2, $a2
	move	$t3, $t0
	fmov.s	$fa5, $fa3
	.p2align	4, , 16
.LBB1_6:                                # %for.body14.us48
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$t4, $t3, 0
	movgr2fr.w	$fa4, $t4
	ffint.s.w	$fa4, $fa4
	fadd.s	$fa5, $fa5, $fa4
	addi.w	$t2, $t2, -1
	addi.d	$t3, $t3, 1
	bnez	$t2, .LBB1_6
# %bb.7:                                # %for.end.us
                                        #   in Loop: Header=BB1_5 Depth=2
	slli.d	$t2, $t1, 2
	fldx.s	$fa4, $a0, $t2
	move	$t2, $zero
	fdiv.s	$fa5, $fa5, $fa0
	alsl.d	$t1, $t1, $a0, 2
	move	$t3, $a2
	.p2align	4, , 16
.LBB1_8:                                # %for.body26.us
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$t4, $t0, $t2
	movgr2fr.w	$fa6, $t4
	ffint.s.w	$fa6, $fa6
	fsub.s	$fa6, $fa6, $fa5
	fmadd.s	$fa4, $fa6, $fa6, $fa4
	fst.s	$fa4, $t1, 0
	addi.w	$t3, $t3, -1
	addi.d	$t2, $t2, 1
	bnez	$t3, .LBB1_8
# %bb.9:                                # %for.cond23.for.end47_crit_edge.us
                                        #   in Loop: Header=BB1_5 Depth=2
	fdiv.s	$fa4, $fa4, $fa0
	fcmp.cult.s	$fcc1, $fa1, $fa4
	fsel	$fa5, $fa3, $fa2, $fcc1
	fsel	$fa4, $fa5, $fa4, $fcc0
	fst.s	$fa4, $t1, 0
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 1
	bne	$a7, $a4, .LBB1_5
# %bb.10:                               # %for.cond3.for.inc74_crit_edge.split.us69
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a5, $a5, $a1
	bne	$a3, $s1, .LBB1_4
.LBB1_11:                               # %for.end76
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_12:                               # %for.cond3.preheader.lr.ph.split.us.split.us.split.us
	bstrpick.d	$a1, $a4, 31, 0
	addi.d	$a2, $a1, -10
	beq	$fp, $a3, .LBB1_27
# %bb.13:                               # %iter.check.preheader
	move	$a3, $zero
	move	$a4, $a2
	bstrins.d	$a4, $zero, 3, 0
	xvreplve0.w	$xr2, $xr0
	xvreplve0.w	$xr3, $xr1
	ori	$a6, $zero, 10
	move	$a5, $a2
	bstrins.d	$a5, $a6, 3, 0
	andi	$a6, $a2, 12
	move	$a7, $a2
	bstrins.d	$a7, $zero, 1, 0
	addi.d	$t0, $a7, 10
	vreplvei.w	$vr4, $vr0, 0
	vreplvei.w	$vr5, $vr1, 0
	addi.d	$t1, $a0, 72
	slli.d	$t2, $s2, 2
	addi.d	$t3, $a0, 40
	sub.d	$t4, $zero, $a7
	ori	$t5, $zero, 4
	pcalau12i	$t6, %pc_hi20(.LCPI1_0)
	fld.s	$fa6, $t6, %pc_lo12(.LCPI1_0)
	movgr2fr.w	$fa7, $zero
	lu12i.w	$t6, 276464
	vreplgr2vr.w	$vr8, $t6
	xvreplgr2vr.w	$xr9, $t6
	ori	$t6, $zero, 16
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_14:                               # %for.cond3.for.inc74_crit_edge.split.us.split.us.split.us93.us.us
                                        #   in Loop: Header=BB1_15 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$t1, $t1, $t2
	add.d	$t3, $t3, $t2
	add.d	$a0, $a0, $t2
	beq	$a3, $s1, .LBB1_11
.LBB1_15:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
                                        #     Child Loop BB1_23 Depth 2
                                        #     Child Loop BB1_26 Depth 2
	ori	$t8, $zero, 10
	bltu	$a2, $t5, .LBB1_25
# %bb.16:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB1_15 Depth=1
	bgeu	$a2, $t6, .LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_15 Depth=1
	move	$fp, $zero
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_18:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	move	$t7, $a4
	move	$t8, $t1
	.p2align	4, , 16
.LBB1_19:                               # %vector.body
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr10, $t8, -32
	xvld	$xr11, $t8, 0
	xvfdiv.s	$xr10, $xr10, $xr2
	xvfdiv.s	$xr11, $xr11, $xr2
	xvfcmp.cult.s	$xr10, $xr3, $xr10
	xvfcmp.cult.s	$xr11, $xr3, $xr11
	xvand.v	$xr10, $xr10, $xr9
	xvand.v	$xr11, $xr11, $xr9
	xvst	$xr10, $t8, -32
	xvst	$xr11, $t8, 0
	addi.d	$t7, $t7, -16
	addi.d	$t8, $t8, 64
	bnez	$t7, .LBB1_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB1_15 Depth=1
	beq	$a2, $a4, .LBB1_14
# %bb.21:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB1_15 Depth=1
	move	$fp, $a4
	move	$t8, $a5
	beqz	$a6, .LBB1_25
.LBB1_22:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB1_15 Depth=1
	alsl.d	$t7, $fp, $t3, 2
	add.d	$t8, $t4, $fp
	.p2align	4, , 16
.LBB1_23:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr10, $t7, 0
	vfdiv.s	$vr10, $vr10, $vr4
	vfcmp.cult.s	$vr10, $vr5, $vr10
	vand.v	$vr10, $vr10, $vr8
	vst	$vr10, $t7, 0
	addi.d	$t8, $t8, 4
	addi.d	$t7, $t7, 16
	bnez	$t8, .LBB1_23
# %bb.24:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB1_15 Depth=1
	move	$t8, $t0
	beq	$a2, $a7, .LBB1_14
.LBB1_25:                               # %for.body7.us.us.us85.us.us.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	alsl.d	$t7, $t8, $a0, 2
	sub.d	$t8, $a1, $t8
	.p2align	4, , 16
.LBB1_26:                               # %for.body7.us.us.us85.us.us
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$ft2, $t7, 0
	fdiv.s	$ft2, $ft2, $fa0
	fcmp.cult.s	$fcc0, $fa1, $ft2
	fsel	$ft2, $fa7, $fa6, $fcc0
	fst.s	$ft2, $t7, 0
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 4
	bnez	$t8, .LBB1_26
	b	.LBB1_14
.LBB1_27:                               # %iter.check162.preheader
	move	$a3, $zero
	move	$a4, $a2
	bstrins.d	$a4, $zero, 3, 0
	xvreplve0.w	$xr1, $xr0
	ori	$a6, $zero, 10
	move	$a5, $a2
	bstrins.d	$a5, $a6, 3, 0
	andi	$a6, $a2, 12
	move	$a7, $a2
	bstrins.d	$a7, $zero, 1, 0
	addi.d	$t0, $a7, 10
	vreplvei.w	$vr2, $vr0, 0
	addi.d	$t1, $a0, 72
	slli.d	$t2, $s2, 2
	addi.d	$t3, $a0, 40
	sub.d	$t4, $zero, $a7
	ori	$t5, $zero, 4
	ori	$t6, $zero, 16
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_28:                               # %for.cond3.for.inc74_crit_edge.split.us.split.us.split.us.us.us.us.us
                                        #   in Loop: Header=BB1_29 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$t1, $t1, $t2
	add.d	$t3, $t3, $t2
	add.d	$a0, $a0, $t2
	beq	$a3, $s1, .LBB1_11
.LBB1_29:                               # %iter.check162
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_37 Depth 2
                                        #     Child Loop BB1_40 Depth 2
	ori	$t8, $zero, 10
	bltu	$a2, $t5, .LBB1_39
# %bb.30:                               # %vector.main.loop.iter.check164
                                        #   in Loop: Header=BB1_29 Depth=1
	bgeu	$a2, $t6, .LBB1_32
# %bb.31:                               #   in Loop: Header=BB1_29 Depth=1
	move	$fp, $zero
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_32:                               # %vector.body170.preheader
                                        #   in Loop: Header=BB1_29 Depth=1
	move	$t7, $a4
	move	$t8, $t1
	.p2align	4, , 16
.LBB1_33:                               # %vector.body170
                                        #   Parent Loop BB1_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $t8, -32
	xvld	$xr4, $t8, 0
	xvfdiv.s	$xr3, $xr3, $xr1
	xvfdiv.s	$xr4, $xr4, $xr1
	xvst	$xr3, $t8, -32
	xvst	$xr4, $t8, 0
	addi.d	$t7, $t7, -16
	addi.d	$t8, $t8, 64
	bnez	$t7, .LBB1_33
# %bb.34:                               # %middle.block175
                                        #   in Loop: Header=BB1_29 Depth=1
	beq	$a2, $a4, .LBB1_28
# %bb.35:                               # %vec.epilog.iter.check180
                                        #   in Loop: Header=BB1_29 Depth=1
	move	$fp, $a4
	move	$t8, $a5
	beqz	$a6, .LBB1_39
.LBB1_36:                               # %vec.epilog.ph179
                                        #   in Loop: Header=BB1_29 Depth=1
	alsl.d	$t7, $fp, $t3, 2
	add.d	$t8, $t4, $fp
	.p2align	4, , 16
.LBB1_37:                               # %vec.epilog.vector.body187
                                        #   Parent Loop BB1_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t7, 0
	vfdiv.s	$vr3, $vr3, $vr2
	vst	$vr3, $t7, 0
	addi.d	$t8, $t8, 4
	addi.d	$t7, $t7, 16
	bnez	$t8, .LBB1_37
# %bb.38:                               # %vec.epilog.middle.block192
                                        #   in Loop: Header=BB1_29 Depth=1
	move	$t8, $t0
	beq	$a2, $a7, .LBB1_28
.LBB1_39:                               # %for.body7.us.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_29 Depth=1
	alsl.d	$t7, $t8, $a0, 2
	sub.d	$t8, $a1, $t8
	.p2align	4, , 16
.LBB1_40:                               # %for.body7.us.us.us.us.us.us.us
                                        #   Parent Loop BB1_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $t7, 0
	fdiv.s	$fa3, $fa3, $fa0
	fst.s	$fa3, $t7, 0
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 4
	bnez	$t8, .LBB1_40
	b	.LBB1_28
.Lfunc_end1:
	.size	HorzVariance, .Lfunc_end1-HorzVariance
                                        # -- End function
	.globl	BuildConnectedComponents        # -- Begin function BuildConnectedComponents
	.p2align	5
	.type	BuildConnectedComponents,@function
BuildConnectedComponents:               # @BuildConnectedComponents
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
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s1, $a0, 36
	ld.w	$s0, $a0, 32
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	mul.w	$a0, $s0, $s1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $fp, 88
	blt	$s0, $a1, .LBB2_83
# %bb.1:                                # %for.cond3.preheader.lr.ph
	ori	$a0, $zero, 3
                                        # implicit-def: $r28
	blt	$s1, $a0, .LBB2_84
# %bb.2:                                # %for.cond3.preheader.preheader
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	move	$s6, $zero
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fs0, $fa0
	addi.d	$a0, $zero, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s4, $zero, 1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
                                        # implicit-def: $r28
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_3:                                # %for.inc193.loopexit
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$s0, $fp, 32
.LBB2_4:                                # %for.inc193
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$s6, $s8
	bge	$s8, $s0, .LBB2_84
.LBB2_5:                                # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
                                        #       Child Loop BB2_12 Depth 3
                                        #         Child Loop BB2_13 Depth 4
                                        #       Child Loop BB2_20 Depth 3
                                        #       Child Loop BB2_34 Depth 3
                                        #         Child Loop BB2_39 Depth 4
                                        #         Child Loop BB2_42 Depth 4
                                        #         Child Loop BB2_57 Depth 4
                                        #         Child Loop BB2_60 Depth 4
                                        #         Child Loop BB2_74 Depth 4
                                        #         Child Loop BB2_77 Depth 4
	ori	$a0, $zero, 2
	bge	$a0, $s1, .LBB2_82
# %bb.6:                                # %for.body7.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a2, $zero
	addi.d	$a0, $s6, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$s8, $s6, 1
	ori	$s7, $zero, 1
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_7:                                # %for.inc190.loopexit
                                        #   in Loop: Header=BB2_9 Depth=2
	ld.w	$s1, $fp, 36
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
.LBB2_8:                                # %for.inc190
                                        #   in Loop: Header=BB2_9 Depth=2
	addi.w	$a0, $s1, -1
	addi.d	$a2, $a2, 1
	move	$s7, $s0
	bge	$s0, $a0, .LBB2_3
.LBB2_9:                                # %for.body7
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
                                        #         Child Loop BB2_13 Depth 4
                                        #       Child Loop BB2_20 Depth 3
                                        #       Child Loop BB2_34 Depth 3
                                        #         Child Loop BB2_39 Depth 4
                                        #         Child Loop BB2_42 Depth 4
                                        #         Child Loop BB2_57 Depth 4
                                        #         Child Loop BB2_60 Depth 4
                                        #         Child Loop BB2_74 Depth 4
                                        #         Child Loop BB2_77 Depth 4
	mul.d	$a0, $s1, $s6
	add.w	$a0, $a0, $s7
	slli.d	$s2, $a0, 2
	addi.w	$s0, $s7, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bltz	$a0, .LBB2_11
# %bb.10:                               # %land.lhs.true
                                        #   in Loop: Header=BB2_9 Depth=2
	ld.d	$a0, $fp, 80
	fldx.s	$fa0, $a0, $s2
	fcmp.cune.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB2_8
.LBB2_11:                               # %if.end
                                        #   in Loop: Header=BB2_9 Depth=2
	ld.d	$s3, $fp, 88
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $zero, -1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	add.w	$a2, $a2, $a0
	move	$a4, $a1
	.p2align	4, , 16
.LBB2_12:                               # %for.cond19.preheader
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_13 Depth 4
	move	$a3, $a4
	move	$a4, $a2
	move	$a5, $a1
	.p2align	4, , 16
.LBB2_13:                               # %for.body22
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a0, $a4, 2
	ldx.w	$a0, $s3, $a0
	bnez	$a0, .LBB2_15
# %bb.14:                               # %for.body22
                                        #   in Loop: Header=BB2_13 Depth=4
	move	$a6, $a5
	addi.d	$a5, $a5, 1
	addi.w	$a4, $a4, 1
	blt	$a6, $s4, .LBB2_13
.LBB2_15:                               # %for.end
                                        #   in Loop: Header=BB2_12 Depth=3
	bnez	$a0, .LBB2_17
# %bb.16:                               # %for.end
                                        #   in Loop: Header=BB2_12 Depth=3
	addi.w	$a4, $a3, 1
	add.w	$a2, $a2, $s1
	bltz	$a3, .LBB2_12
.LBB2_17:                               # %for.end41
                                        #   in Loop: Header=BB2_9 Depth=2
	beqz	$a0, .LBB2_21
# %bb.18:                               # %while.cond.preheader
                                        #   in Loop: Header=BB2_9 Depth=2
	ld.w	$a1, $s5, 0
	move	$s1, $s5
	bne	$a1, $a0, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_9 Depth=2
	move	$s1, $s5
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_20:                               # %while.body
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $s1, 72
	ld.w	$a1, $s1, 0
	bne	$a1, $a0, .LBB2_20
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_21:                               # %if.then46
                                        #   in Loop: Header=BB2_9 Depth=2
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beqz	$a1, .LBB2_23
# %bb.22:                               # %cond.false
                                        #   in Loop: Header=BB2_9 Depth=2
	ld.w	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	b	.LBB2_24
.LBB2_23:                               #   in Loop: Header=BB2_9 Depth=2
	ori	$a0, $zero, 1
.LBB2_24:                               # %cond.end
                                        #   in Loop: Header=BB2_9 Depth=2
	st.w	$a0, $s5, 0
	st.w	$zero, $s5, 4
	st.w	$s6, $s5, 8
	st.w	$s7, $s5, 12
	st.w	$s6, $s5, 16
	st.w	$s7, $s5, 20
	st.w	$s6, $s5, 24
	st.w	$s6, $s5, 28
	st.w	$s6, $s5, 32
	st.d	$zero, $s5, 36
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s5, 48
	st.b	$zero, $s5, 64
	st.d	$a1, $s5, 72
	move	$s1, $s5
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
.LBB2_25:                               # %if.end59
                                        #   in Loop: Header=BB2_9 Depth=2
	stx.w	$a0, $s3, $s2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 48
	st.w	$s7, $a0, 0
	st.w	$s6, $a0, 4
	ld.w	$a2, $s1, 4
	st.d	$a1, $a0, 8
	ld.w	$a1, $s1, 8
	st.d	$a0, $s1, 48
	addi.w	$a3, $a2, 1
	st.w	$a3, $s1, 4
	mul.d	$a1, $a1, $a2
	ld.w	$a0, $s1, 12
	add.w	$a1, $a1, $s6
	div.w	$a1, $a1, $a3
	st.w	$a1, $s1, 8
	slt	$a1, $a0, $s7
	masknez	$a2, $a0, $a1
	ld.w	$a3, $s1, 16
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $s1, 12
	slt	$a1, $a3, $s6
	masknez	$a2, $a3, $a1
	ld.w	$a3, $s1, 20
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $s1, 16
	slt	$a1, $s7, $a3
	masknez	$a2, $a3, $a1
	ld.w	$a4, $s1, 24
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $s1, 20
	slt	$a1, $s6, $a4
	masknez	$a2, $a4, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $s1, 24
	blt	$a3, $s7, .LBB2_27
# %bb.26:                               # %if.then118
                                        #   in Loop: Header=BB2_9 Depth=2
	st.w	$s6, $s1, 28
.LBB2_27:                               # %if.end120
                                        #   in Loop: Header=BB2_9 Depth=2
	blt	$s7, $a0, .LBB2_29
# %bb.28:                               # %if.then124
                                        #   in Loop: Header=BB2_9 Depth=2
	st.w	$s6, $s1, 32
.LBB2_29:                               # %if.end126
                                        #   in Loop: Header=BB2_9 Depth=2
	ld.w	$a0, $fp, 36
	ld.d	$a1, $fp, 72
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a2, $a0, $a2
	add.w	$a2, $a2, $s7
	slli.d	$a2, $a2, 2
	fldx.s	$fa0, $a1, $a2
	fld.s	$fa1, $s1, 36
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s1, 36
	mul.d	$a0, $a0, $s8
	add.w	$a0, $a0, $s7
	slli.d	$a0, $a0, 2
	fldx.s	$fa0, $a1, $a0
	fld.s	$fa1, $s1, 40
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s1, 40
	addi.d	$s8, $s7, -1
	addi.d	$s2, $zero, -1
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_30:                               # %if.end60.i.2
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a1, $a0, 72
	beqz	$a2, .LBB2_49
# %bb.31:                               # %if.then62.i.2
                                        #   in Loop: Header=BB2_34 Depth=3
	st.d	$a1, $a2, 72
.LBB2_32:                               # %MergeComponents.exit.2
                                        #   in Loop: Header=BB2_34 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_33:                               # %for.inc184.2
                                        #   in Loop: Header=BB2_34 Depth=3
	addi.w	$s2, $s2, 1
	ori	$a0, $zero, 2
	beq	$s2, $a0, .LBB2_7
.LBB2_34:                               # %for.cond148.preheader
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_39 Depth 4
                                        #         Child Loop BB2_42 Depth 4
                                        #         Child Loop BB2_57 Depth 4
                                        #         Child Loop BB2_60 Depth 4
                                        #         Child Loop BB2_74 Depth 4
                                        #         Child Loop BB2_77 Depth 4
	ld.w	$a0, $fp, 36
	add.d	$s3, $s2, $s6
	ld.d	$a1, $fp, 88
	mul.d	$a0, $a0, $s3
	add.w	$a2, $s8, $a0
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a1, $a2
	beqz	$a4, .LBB2_52
# %bb.35:                               # %land.lhs.true161
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $s1, 0
	beq	$a4, $a3, .LBB2_52
# %bb.36:                               # %while.cond169.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a0, $s5, 0
	bne	$a0, $a4, .LBB2_38
# %bb.37:                               #   in Loop: Header=BB2_34 Depth=3
	move	$a2, $zero
	move	$a0, $s5
	b	.LBB2_40
.LBB2_38:                               # %while.body176.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	move	$a0, $s5
	.p2align	4, , 16
.LBB2_39:                               # %while.body176
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a2, $a0
	ld.d	$a0, $a0, 72
	ld.w	$a5, $a0, 0
	bne	$a5, $a4, .LBB2_39
.LBB2_40:                               # %while.end178
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a4, $a0, 48
	beqz	$a4, .LBB2_47
# %bb.41:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_42:                               # %while.body.i
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a5, $a6
	ld.w	$a7, $a6, 4
	ld.w	$t0, $fp, 36
	ld.w	$t1, $a6, 0
	ld.d	$a6, $a6, 8
	mul.d	$a7, $t0, $a7
	add.w	$a7, $a7, $t1
	slli.d	$a7, $a7, 2
	stx.w	$a3, $a1, $a7
	bnez	$a6, .LBB2_42
# %bb.43:                               # %if.then.i
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a1, $s1, 48
	ld.w	$a3, $a0, 4
	ld.w	$a6, $s1, 4
	st.d	$a1, $a5, 8
	add.w	$a1, $a6, $a3
	st.w	$a1, $s1, 4
	ld.w	$a3, $a0, 4
	ld.w	$a5, $s1, 8
	ld.w	$a6, $a0, 8
	st.d	$a4, $s1, 48
	sub.d	$a4, $a1, $a3
	mul.d	$a4, $a4, $a5
	mul.d	$a3, $a6, $a3
	ld.w	$a5, $a0, 12
	ld.w	$a6, $s1, 12
	add.w	$a3, $a4, $a3
	div.w	$a1, $a3, $a1
	st.w	$a1, $s1, 8
	slt	$a1, $a6, $a5
	ld.w	$a3, $a0, 16
	ld.w	$a4, $s1, 16
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a6
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	ld.w	$a6, $a0, 20
	ld.w	$a7, $s1, 20
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $s1, 16
	slt	$a3, $a6, $a7
	masknez	$a4, $a7, $a3
	ld.w	$a5, $a0, 24
	ld.w	$a7, $s1, 24
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	st.w	$a3, $s1, 20
	slt	$a4, $a5, $a7
	masknez	$a6, $a7, $a4
	ld.w	$a7, $a0, 20
	maskeqz	$a4, $a5, $a4
	st.w	$a1, $s1, 12
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 24
	bne	$a3, $a7, .LBB2_45
# %bb.44:                               # %if.then52.i
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $a0, 28
	st.w	$a3, $s1, 28
.LBB2_45:                               # %if.end.i
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $a0, 12
	bne	$a1, $a3, .LBB2_47
# %bb.46:                               # %if.then57.i
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a1, $a0, 32
	st.w	$a1, $s1, 32
.LBB2_47:                               # %if.end60.i
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a1, $a0, 72
	beqz	$a2, .LBB2_50
# %bb.48:                               # %if.then62.i
                                        #   in Loop: Header=BB2_34 Depth=3
	st.d	$a1, $a2, 72
	b	.LBB2_51
.LBB2_49:                               #   in Loop: Header=BB2_34 Depth=3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s5, $a1
	b	.LBB2_32
.LBB2_50:                               #   in Loop: Header=BB2_34 Depth=3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s5, $a1
.LBB2_51:                               # %MergeComponents.exit
                                        #   in Loop: Header=BB2_34 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ld.d	$a1, $fp, 88
	mul.d	$a0, $a0, $s3
.LBB2_52:                               # %for.inc184
                                        #   in Loop: Header=BB2_34 Depth=3
	add.w	$a2, $s7, $a0
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a1, $a2
	beqz	$a4, .LBB2_69
# %bb.53:                               # %land.lhs.true161.1
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $s1, 0
	beq	$a4, $a3, .LBB2_69
# %bb.54:                               # %while.cond169.preheader.1
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a0, $s5, 0
	bne	$a0, $a4, .LBB2_56
# %bb.55:                               #   in Loop: Header=BB2_34 Depth=3
	move	$a2, $zero
	move	$a0, $s5
	b	.LBB2_58
.LBB2_56:                               # %while.body176.1.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	move	$a0, $s5
	.p2align	4, , 16
.LBB2_57:                               # %while.body176.1
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a2, $a0
	ld.d	$a0, $a0, 72
	ld.w	$a5, $a0, 0
	bne	$a5, $a4, .LBB2_57
.LBB2_58:                               # %while.end178.1
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a4, $a0, 48
	beqz	$a4, .LBB2_65
# %bb.59:                               # %while.body.i.1.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_60:                               # %while.body.i.1
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a5, $a6
	ld.w	$a7, $a6, 4
	ld.w	$t0, $fp, 36
	ld.w	$t1, $a6, 0
	ld.d	$a6, $a6, 8
	mul.d	$a7, $t0, $a7
	add.w	$a7, $a7, $t1
	slli.d	$a7, $a7, 2
	stx.w	$a3, $a1, $a7
	bnez	$a6, .LBB2_60
# %bb.61:                               # %if.then.i.1
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a1, $s1, 48
	ld.w	$a3, $a0, 4
	ld.w	$a6, $s1, 4
	st.d	$a1, $a5, 8
	add.w	$a1, $a6, $a3
	st.w	$a1, $s1, 4
	ld.w	$a3, $a0, 4
	ld.w	$a5, $s1, 8
	ld.w	$a6, $a0, 8
	st.d	$a4, $s1, 48
	sub.d	$a4, $a1, $a3
	mul.d	$a4, $a4, $a5
	mul.d	$a3, $a6, $a3
	ld.w	$a5, $a0, 12
	ld.w	$a6, $s1, 12
	add.w	$a3, $a4, $a3
	div.w	$a1, $a3, $a1
	st.w	$a1, $s1, 8
	slt	$a1, $a6, $a5
	ld.w	$a3, $a0, 16
	ld.w	$a4, $s1, 16
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a6
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	ld.w	$a6, $a0, 20
	ld.w	$a7, $s1, 20
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $s1, 16
	slt	$a3, $a6, $a7
	masknez	$a4, $a7, $a3
	ld.w	$a5, $a0, 24
	ld.w	$a7, $s1, 24
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	st.w	$a3, $s1, 20
	slt	$a4, $a5, $a7
	masknez	$a6, $a7, $a4
	ld.w	$a7, $a0, 20
	maskeqz	$a4, $a5, $a4
	st.w	$a1, $s1, 12
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 24
	bne	$a3, $a7, .LBB2_63
# %bb.62:                               # %if.then52.i.1
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $a0, 28
	st.w	$a3, $s1, 28
.LBB2_63:                               # %if.end.i.1
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $a0, 12
	bne	$a1, $a3, .LBB2_65
# %bb.64:                               # %if.then57.i.1
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a1, $a0, 32
	st.w	$a1, $s1, 32
.LBB2_65:                               # %if.end60.i.1
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a1, $a0, 72
	beqz	$a2, .LBB2_67
# %bb.66:                               # %if.then62.i.1
                                        #   in Loop: Header=BB2_34 Depth=3
	st.d	$a1, $a2, 72
	b	.LBB2_68
.LBB2_67:                               #   in Loop: Header=BB2_34 Depth=3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s5, $a1
.LBB2_68:                               # %MergeComponents.exit.1
                                        #   in Loop: Header=BB2_34 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ld.d	$a1, $fp, 88
	mul.d	$a0, $a0, $s3
.LBB2_69:                               # %for.inc184.1
                                        #   in Loop: Header=BB2_34 Depth=3
	add.w	$a0, $s0, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $a1, $a0
	beqz	$a4, .LBB2_33
# %bb.70:                               # %land.lhs.true161.2
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $s1, 0
	beq	$a4, $a3, .LBB2_33
# %bb.71:                               # %while.cond169.preheader.2
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a0, $s5, 0
	bne	$a0, $a4, .LBB2_73
# %bb.72:                               #   in Loop: Header=BB2_34 Depth=3
	move	$a2, $zero
	move	$a0, $s5
	b	.LBB2_75
.LBB2_73:                               # %while.body176.2.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	move	$a0, $s5
	.p2align	4, , 16
.LBB2_74:                               # %while.body176.2
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a2, $a0
	ld.d	$a0, $a0, 72
	ld.w	$a5, $a0, 0
	bne	$a5, $a4, .LBB2_74
.LBB2_75:                               # %while.end178.2
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a4, $a0, 48
	beqz	$a4, .LBB2_30
# %bb.76:                               # %while.body.i.2.preheader
                                        #   in Loop: Header=BB2_34 Depth=3
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_77:                               # %while.body.i.2
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a5, $a6
	ld.w	$a7, $a6, 4
	ld.w	$t0, $fp, 36
	ld.w	$t1, $a6, 0
	ld.d	$a6, $a6, 8
	mul.d	$a7, $t0, $a7
	add.w	$a7, $a7, $t1
	slli.d	$a7, $a7, 2
	stx.w	$a3, $a1, $a7
	bnez	$a6, .LBB2_77
# %bb.78:                               # %if.then.i.2
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.d	$a1, $s1, 48
	ld.w	$a3, $a0, 4
	ld.w	$a6, $s1, 4
	st.d	$a1, $a5, 8
	add.w	$a1, $a6, $a3
	st.w	$a1, $s1, 4
	ld.w	$a3, $a0, 4
	ld.w	$a5, $s1, 8
	ld.w	$a6, $a0, 8
	st.d	$a4, $s1, 48
	sub.d	$a4, $a1, $a3
	mul.d	$a4, $a4, $a5
	mul.d	$a3, $a6, $a3
	ld.w	$a5, $a0, 12
	ld.w	$a6, $s1, 12
	add.w	$a3, $a4, $a3
	div.w	$a1, $a3, $a1
	st.w	$a1, $s1, 8
	slt	$a1, $a6, $a5
	ld.w	$a3, $a0, 16
	ld.w	$a4, $s1, 16
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a6
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	ld.w	$a6, $a0, 20
	ld.w	$a7, $s1, 20
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $s1, 16
	slt	$a3, $a6, $a7
	masknez	$a4, $a7, $a3
	ld.w	$a5, $a0, 24
	ld.w	$a7, $s1, 24
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	st.w	$a3, $s1, 20
	slt	$a4, $a5, $a7
	masknez	$a6, $a7, $a4
	ld.w	$a7, $a0, 20
	maskeqz	$a4, $a5, $a4
	st.w	$a1, $s1, 12
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 24
	bne	$a3, $a7, .LBB2_80
# %bb.79:                               # %if.then52.i.2
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $a0, 28
	st.w	$a3, $s1, 28
.LBB2_80:                               # %if.end.i.2
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a3, $a0, 12
	bne	$a1, $a3, .LBB2_30
# %bb.81:                               # %if.then57.i.2
                                        #   in Loop: Header=BB2_34 Depth=3
	ld.w	$a1, $a0, 32
	st.w	$a1, $s1, 32
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_82:                               # %for.cond3.preheader.for.inc193_crit_edge
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$s8, $s6, 1
	b	.LBB2_4
.LBB2_83:
                                        # implicit-def: $r28
.LBB2_84:                               # %for.end195
	move	$a0, $s5
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	BuildConnectedComponents, .Lfunc_end2-BuildConnectedComponents
                                        # -- End function
	.globl	MergeComponents                 # -- Begin function MergeComponents
	.p2align	5
	.type	MergeComponents,@function
MergeComponents:                        # @MergeComponents
# %bb.0:                                # %entry
	ld.d	$a5, $a1, 48
	beqz	$a5, .LBB3_7
# %bb.1:                                # %while.body.lr.ph
	ld.d	$a7, $a4, 88
	ld.w	$t0, $a0, 0
	move	$t1, $a5
	.p2align	4, , 16
.LBB3_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a6, $t1
	ld.w	$t2, $t1, 4
	ld.w	$t3, $a4, 36
	ld.w	$t4, $t1, 0
	ld.d	$t1, $t1, 8
	mul.d	$t2, $t3, $t2
	add.w	$t2, $t2, $t4
	slli.d	$t2, $t2, 2
	stx.w	$t0, $a7, $t2
	bnez	$t1, .LBB3_2
# %bb.3:                                # %if.then
	ld.d	$a4, $a0, 48
	ld.w	$a7, $a1, 4
	ld.w	$t0, $a0, 4
	st.d	$a4, $a6, 8
	add.w	$a4, $t0, $a7
	st.w	$a4, $a0, 4
	ld.w	$a6, $a1, 4
	ld.w	$a7, $a0, 8
	ld.w	$t0, $a1, 8
	st.d	$a5, $a0, 48
	sub.d	$a5, $a4, $a6
	mul.d	$a5, $a5, $a7
	mul.d	$a6, $t0, $a6
	ld.w	$a7, $a1, 12
	ld.w	$t0, $a0, 12
	add.w	$a5, $a5, $a6
	div.w	$a4, $a5, $a4
	st.w	$a4, $a0, 8
	slt	$a4, $t0, $a7
	ld.w	$a5, $a1, 16
	ld.w	$a6, $a0, 16
	masknez	$t0, $t0, $a4
	maskeqz	$a4, $a7, $a4
	or	$a4, $a4, $t0
	slt	$a7, $a6, $a5
	masknez	$a6, $a6, $a7
	ld.w	$t0, $a1, 20
	ld.w	$t1, $a0, 20
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $a6
	st.w	$a5, $a0, 16
	slt	$a5, $t0, $t1
	masknez	$a6, $t1, $a5
	ld.w	$a7, $a1, 24
	ld.w	$t1, $a0, 24
	maskeqz	$a5, $t0, $a5
	or	$a5, $a5, $a6
	st.w	$a5, $a0, 20
	slt	$a6, $a7, $t1
	masknez	$t0, $t1, $a6
	ld.w	$t1, $a1, 20
	maskeqz	$a6, $a7, $a6
	st.w	$a4, $a0, 12
	or	$a6, $a6, $t0
	st.w	$a6, $a0, 24
	bne	$a5, $t1, .LBB3_5
# %bb.4:                                # %if.then52
	ld.w	$a5, $a1, 28
	st.w	$a5, $a0, 28
.LBB3_5:                                # %if.end
	ld.w	$a5, $a1, 12
	bne	$a4, $a5, .LBB3_7
# %bb.6:                                # %if.then57
	ld.w	$a4, $a1, 32
	st.w	$a4, $a0, 32
.LBB3_7:                                # %if.end60
	ld.d	$a0, $a1, 72
	beqz	$a2, .LBB3_9
# %bb.8:                                # %if.then62
	st.d	$a0, $a2, 72
	move	$a0, $a1
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB3_9:                                # %if.else
	st.d	$a0, $a3, 0
	move	$a0, $a1
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end3:
	.size	MergeComponents, .Lfunc_end3-MergeComponents
                                        # -- End function
	.globl	EliminateLargeSpreadComponents  # -- Begin function EliminateLargeSpreadComponents
	.p2align	5
	.type	EliminateLargeSpreadComponents,@function
EliminateLargeSpreadComponents:         # @EliminateLargeSpreadComponents
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB4_11
# %bb.1:                                # %while.body.lr.ph
	move	$fp, $a1
	pcalau12i	$a1, %got_pc_hi20(KILL_SMALL_COMP)
	ld.d	$s1, $a1, %got_pc_lo12(KILL_SMALL_COMP)
	ld.w	$a1, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(VSPREAD_THRESHOLD)
	ld.d	$s2, $a2, %got_pc_lo12(VSPREAD_THRESHOLD)
	pcalau12i	$a2, %got_pc_hi20(SMALL_THRESHOLD)
	ld.d	$s3, $a2, %got_pc_lo12(SMALL_THRESHOLD)
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %if.else28
                                        #   in Loop: Header=BB4_3 Depth=1
	fld.s	$fa0, $a0, 36
	fld.s	$fa1, $a0, 40
	fcmp.cult.s	$fcc0, $fa0, $fa1
	movcf2gr	$a2, $fcc0
	st.b	$a2, $a0, 44
	addi.d	$s0, $a0, 72
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_11
.LBB4_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a0, 24
	sub.d	$a2, $a2, $a3
	ld.w	$a3, $fp, 32
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fld.d	$fa1, $s2, 0
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fcmp.cult.d	$fcc0, $fa0, $fa1
	beqz	$a1, .LBB4_6
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB4_3 Depth=1
	bceqz	$fcc0, .LBB4_7
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a2, $a0, 12
	ld.w	$a3, $a0, 20
	ld.w	$a4, $s3, 0
	sub.w	$a2, $a2, $a3
	bge	$a2, $a4, .LBB4_2
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %if.else
                                        #   in Loop: Header=BB4_3 Depth=1
	bcnez	$fcc0, .LBB4_2
.LBB4_7:                                # %if.then21
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $a0, 48
	beqz	$a1, .LBB4_10
# %bb.8:                                # %while.body25.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a2, $fp, 88
	.p2align	4, , 16
.LBB4_9:                                # %while.body25
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 4
	ld.w	$a4, $fp, 36
	ld.w	$a5, $a1, 0
	ld.d	$a1, $a1, 8
	mul.d	$a3, $a4, $a3
	add.w	$a3, $a3, $a5
	slli.d	$a3, $a3, 2
	stx.w	$zero, $a2, $a3
	bnez	$a1, .LBB4_9
.LBB4_10:                               # %while.end
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $a0, 72
	st.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB4_3
.LBB4_11:                               # %while.end34
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	EliminateLargeSpreadComponents, .Lfunc_end4-EliminateLargeSpreadComponents
                                        # -- End function
	.globl	PrintConnectedComponents        # -- Begin function PrintConnectedComponents
	.p2align	5
	.type	PrintConnectedComponents,@function
PrintConnectedComponents:               # @PrintConnectedComponents
# %bb.0:                                # %entry
	beqz	$a0, .LBB5_4
# %bb.1:                                # %while.body.preheader
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
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s4, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s5, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s6, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s7, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s8, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s3, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s1, $a0, %pc_lo12(.L.str.8)
	.p2align	4, , 16
.LBB5_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	move	$a0, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 20
	move	$a0, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	move	$a0, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 44
	sltui	$a0, $a0, 1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s3, $a0
	or	$a1, $a0, $a1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	ld.d	$fp, $fp, 72
	add.w	$s0, $a0, $s0
	bnez	$fp, .LBB5_2
# %bb.3:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s0
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
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB5_4:                                # %if.end
	ret
.Lfunc_end5:
	.size	PrintConnectedComponents, .Lfunc_end5-PrintConnectedComponents
                                        # -- End function
	.globl	WriteConnectedComponentsToPGM   # -- Begin function WriteConnectedComponentsToPGM
	.p2align	5
	.type	WriteConnectedComponentsToPGM,@function
WriteConnectedComponentsToPGM:          # @WriteConnectedComponentsToPGM
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB6_9
# %bb.1:                                # %lor.lhs.false
	move	$fp, $a1
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB6_9
# %bb.2:                                # %lor.lhs.false1
	ld.w	$s1, $fp, 36
	beqz	$s1, .LBB6_9
# %bb.3:                                # %lor.lhs.false3
	ld.w	$a1, $fp, 32
	beqz	$a1, .LBB6_9
# %bb.4:                                # %lor.lhs.false3
	pcalau12i	$s4, %pc_hi20(WriteConnectedComponentsToPGM.index)
	ld.w	$s2, $s4, %pc_lo12(WriteConnectedComponentsToPGM.index)
	ori	$a2, $zero, 99
	blt	$a2, $s2, .LBB6_9
# %bb.5:                                # %if.end7
	mul.w	$a2, $a1, $s1
	ori	$a1, $zero, 1
	move	$s3, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	ori	$a1, $zero, 255
	b	.LBB6_7
	.p2align	4, , 16
.LBB6_6:                                # %while.end
                                        #   in Loop: Header=BB6_7 Depth=1
	ld.d	$a0, $a0, 72
	beqz	$a0, .LBB6_10
.LBB6_7:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
	ld.d	$a2, $a0, 48
	beqz	$a2, .LBB6_6
	.p2align	4, , 16
.LBB6_8:                                # %while.body15
                                        #   Parent Loop BB6_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 4
	ld.w	$a4, $a2, 0
	ld.d	$a2, $a2, 8
	mul.d	$a3, $a3, $s1
	add.w	$a3, $a3, $a4
	stx.b	$a1, $s0, $a3
	bnez	$a2, .LBB6_8
	b	.LBB6_6
.LBB6_9:                                # %cleanup
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB6_10:                               # %while.end19
	ld.d	$s3, $fp, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 12
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $s2, 1
	st.w	$a0, $s4, %pc_lo12(WriteConnectedComponentsToPGM.index)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $s1
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 36
	ld.w	$a3, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ld.w	$a1, $fp, 32
	mul.w	$a0, $a1, $a0
	blt	$a0, $s3, .LBB6_13
# %bb.11:                               # %for.body.preheader
	move	$s3, $zero
	.p2align	4, , 16
.LBB6_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a0, $s0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ld.w	$a1, $fp, 32
	addi.d	$s3, $s3, 1
	mul.w	$a0, $a1, $a0
	blt	$s3, $a0, .LBB6_12
.LBB6_13:                               # %for.end
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end6:
	.size	WriteConnectedComponentsToPGM, .Lfunc_end6-WriteConnectedComponentsToPGM
                                        # -- End function
	.globl	FreeConnectedComponents         # -- Begin function FreeConnectedComponents
	.p2align	5
	.type	FreeConnectedComponents,@function
FreeConnectedComponents:                # @FreeConnectedComponents
# %bb.0:                                # %entry
	beqz	$a0, .LBB7_6
# %bb.1:                                # %while.body.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %while.end
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	beqz	$s0, .LBB7_5
.LBB7_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	ld.d	$a0, $fp, 48
	ld.d	$s0, $fp, 72
	beqz	$a0, .LBB7_2
	.p2align	4, , 16
.LBB7_4:                                # %while.body3
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bnez	$s1, .LBB7_4
	b	.LBB7_2
.LBB7_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB7_6:                                # %while.end5
	ret
.Lfunc_end7:
	.size	FreeConnectedComponents, .Lfunc_end7-FreeConnectedComponents
                                        # -- End function
	.globl	MergeRowComponents              # -- Begin function MergeRowComponents
	.p2align	5
	.type	MergeRowComponents,@function
MergeRowComponents:                     # @MergeRowComponents
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB8_3
# %bb.1:                                # %while.body.preheader
	move	$fp, $a0
	move	$s1, $a1
	.p2align	4, , 16
.LBB8_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MergeToLeft)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 72
	bnez	$s0, .LBB8_2
.LBB8_3:                                # %while.end
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	MergeRowComponents, .Lfunc_end8-MergeRowComponents
                                        # -- End function
	.globl	MergeToLeft                     # -- Begin function MergeToLeft
	.p2align	5
	.type	MergeToLeft,@function
MergeToLeft:                            # @MergeToLeft
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
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(SAME_ROW_V)
	ld.d	$a5, $a3, %got_pc_lo12(SAME_ROW_V)
	ld.w	$a4, $a5, 0
	bltz	$a4, .LBB9_23
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a2
	move	$s5, $a1
	move	$s0, $a0
	ld.w	$s4, $a0, 20
	ld.w	$s1, $a0, 28
	pcalau12i	$a1, %got_pc_hi20(SAME_ROW_H)
	ld.d	$s6, $a1, %got_pc_lo12(SAME_ROW_H)
	move	$t0, $zero
	sub.w	$a1, $zero, $a4
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	b	.LBB9_4
.LBB9_2:                                # %for.inc54.loopexit67
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.w	$a4, $a5, 0
	.p2align	4, , 16
.LBB9_3:                                # %for.inc54
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.w	$a1, $s7, 1
	bge	$s7, $a4, .LBB9_23
.LBB9_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_9 Depth 2
                                        #       Child Loop BB9_19 Depth 3
	ld.w	$a2, $s6, 0
	move	$s7, $a1
	bltz	$a2, .LBB9_3
# %bb.5:                                # %for.body4.lr.ph
                                        #   in Loop: Header=BB9_4 Depth=1
	add.w	$s8, $s7, $s1
	bltz	$s8, .LBB9_3
# %bb.6:                                # %for.body4.lr.ph.split
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.w	$a1, $fp, 32
	bge	$s8, $a1, .LBB9_3
# %bb.7:                                # %for.body4.preheader
                                        #   in Loop: Header=BB9_4 Depth=1
	sub.w	$a2, $zero, $a2
	b	.LBB9_9
	.p2align	4, , 16
.LBB9_8:                                # %for.inc
                                        #   in Loop: Header=BB9_9 Depth=2
	addi.w	$a2, $s3, 1
	beqz	$s3, .LBB9_2
.LBB9_9:                                # %for.body4
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_19 Depth 3
	ld.w	$a1, $fp, 32
	move	$s3, $a2
	bge	$s8, $a1, .LBB9_8
# %bb.10:                               # %lor.lhs.false9
                                        #   in Loop: Header=BB9_9 Depth=2
	add.w	$a2, $s3, $s4
	bltz	$a2, .LBB9_8
# %bb.11:                               # %lor.lhs.false12
                                        #   in Loop: Header=BB9_9 Depth=2
	ld.w	$a6, $fp, 36
	bge	$a2, $a6, .LBB9_8
# %bb.12:                               # %lor.lhs.false16
                                        #   in Loop: Header=BB9_9 Depth=2
	mul.d	$a4, $a6, $s8
	add.w	$a2, $a4, $a2
	mul.w	$a1, $a6, $a1
	bltu	$a1, $a2, .LBB9_8
# %bb.13:                               # %if.end
                                        #   in Loop: Header=BB9_9 Depth=2
	ld.d	$a1, $fp, 88
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	beqz	$a1, .LBB9_8
# %bb.14:                               # %land.lhs.true
                                        #   in Loop: Header=BB9_9 Depth=2
	ld.w	$a2, $s0, 0
	beq	$a1, $a2, .LBB9_8
# %bb.15:                               # %land.lhs.true
                                        #   in Loop: Header=BB9_9 Depth=2
	beq	$a1, $t0, .LBB9_8
# %bb.16:                               # %while.cond.preheader
                                        #   in Loop: Header=BB9_9 Depth=2
	ld.d	$s2, $s5, 0
	beqz	$s2, .LBB9_24
# %bb.17:                               # %land.rhs.preheader
                                        #   in Loop: Header=BB9_9 Depth=2
	ld.w	$a2, $s2, 0
	bne	$a2, $a1, .LBB9_19
# %bb.18:                               #   in Loop: Header=BB9_9 Depth=2
	move	$a2, $zero
	b	.LBB9_21
	.p2align	4, , 16
.LBB9_19:                               # %while.body
                                        #   Parent Loop BB9_4 Depth=1
                                        #     Parent Loop BB9_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a2, $s2
	ld.d	$s2, $s2, 72
	beqz	$s2, .LBB9_24
# %bb.20:                               # %land.rhs
                                        #   in Loop: Header=BB9_19 Depth=3
	ld.w	$a4, $s2, 0
	bne	$a4, $a1, .LBB9_19
.LBB9_21:                               # %if.end45
                                        #   in Loop: Header=BB9_9 Depth=2
	ld.bu	$a6, $s0, 44
	ld.bu	$a4, $s2, 44
	move	$t0, $a1
	bne	$a6, $a4, .LBB9_8
# %bb.22:                               # %if.then50
                                        #   in Loop: Header=BB9_9 Depth=2
	move	$a0, $s0
	move	$a1, $s2
	move	$a3, $s5
	move	$a4, $fp
	pcaddu18i	$ra, %call36(MergeComponents)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $fp
	pcaddu18i	$ra, %call36(MergeToLeft)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.w	$t0, $s2, 0
	b	.LBB9_8
.LBB9_23:                               # %for.end56
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
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
	ret
.LBB9_24:                               # %if.then44
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	MergeToLeft, .Lfunc_end9-MergeToLeft
                                        # -- End function
	.globl	PairComponents                  # -- Begin function PairComponents
	.p2align	5
	.type	PairComponents,@function
PairComponents:                         # @PairComponents
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
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s1, $a0, 0
	beqz	$s1, .LBB10_47
# %bb.1:                                # %while.body.lr.ph
	move	$s2, $a0
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(MAX_CHAR_SIZE)
	ld.d	$s3, $a0, %got_pc_lo12(MAX_CHAR_SIZE)
	move	$s4, $zero
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %if.else146
                                        #   in Loop: Header=BB10_3 Depth=1
	addi.d	$a0, $s1, 72
	move	$s4, $s1
	ld.d	$s1, $a0, 0
	beqz	$s1, .LBB10_47
.LBB10_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #       Child Loop BB10_12 Depth 3
                                        #         Child Loop BB10_28 Depth 4
                                        #     Child Loop BB10_42 Depth 2
	ld.d	$a0, $s1, 56
	bnez	$a0, .LBB10_2
# %bb.4:                                # %for.cond.preheader
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.w	$a4, $s3, 0
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB10_41
# %bb.5:                                # %land.rhs.lr.ph
                                        #   in Loop: Header=BB10_3 Depth=1
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$a2, $zero
	move	$a1, $zero
	move	$a0, $zero
	ori	$a3, $zero, 1
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_6:                               #   in Loop: Header=BB10_7 Depth=2
	move	$a2, $zero
	move	$a1, $zero
	addi.w	$a3, $s7, 1
	bge	$s7, $a4, .LBB10_39
.LBB10_7:                               # %land.rhs
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_12 Depth 3
                                        #         Child Loop BB10_28 Depth 4
	or	$a5, $a1, $a2
	bnez	$a5, .LBB10_39
# %bb.8:                                # %for.body
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$s7, $a3
	ld.w	$a5, $s1, 20
	ld.w	$a3, $s1, 12
	blt	$a3, $a5, .LBB10_6
# %bb.9:                                # %land.rhs8.lr.ph
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$a2, $zero
	move	$a1, $zero
	sub.d	$s8, $zero, $s7
	b	.LBB10_12
	.p2align	4, , 16
.LBB10_10:                              #   in Loop: Header=BB10_12 Depth=3
	move	$a1, $zero
	move	$a2, $zero
.LBB10_11:                              # %for.inc
                                        #   in Loop: Header=BB10_12 Depth=3
	addi.w	$a5, $s4, 1
	bge	$s4, $a3, .LBB10_38
.LBB10_12:                              # %land.rhs8
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_28 Depth 4
	or	$a4, $a1, $a2
	bnez	$a4, .LBB10_38
# %bb.13:                               # %for.body17
                                        #   in Loop: Header=BB10_12 Depth=3
	move	$s4, $a5
	beqz	$s6, .LBB10_15
# %bb.14:                               # %land.lhs.true
                                        #   in Loop: Header=BB10_12 Depth=3
	ld.w	$a1, $s1, 20
	beq	$s4, $a1, .LBB10_37
.LBB10_15:                              # %if.end
                                        #   in Loop: Header=BB10_12 Depth=3
	ld.bu	$a2, $s1, 44
	sltui	$a1, $a2, 1
	ld.w	$a4, $s1, 8
	masknez	$a5, $s7, $a1
	maskeqz	$a1, $s8, $a1
	or	$a1, $a1, $a5
	add.w	$a1, $a1, $a4
	bltz	$a1, .LBB10_10
# %bb.16:                               # %lor.lhs.false
                                        #   in Loop: Header=BB10_12 Depth=3
	ld.w	$a4, $s0, 32
	bge	$a1, $a4, .LBB10_10
# %bb.17:                               # %lor.lhs.false37
                                        #   in Loop: Header=BB10_12 Depth=3
	ld.w	$a6, $s0, 36
	mul.d	$a1, $a1, $a6
	add.w	$a5, $a1, $s4
	move	$a1, $zero
	bltz	$a5, .LBB10_24
# %bb.18:                               # %lor.lhs.false37
                                        #   in Loop: Header=BB10_12 Depth=3
	mul.w	$a4, $a4, $a6
	blt	$a4, $a5, .LBB10_24
# %bb.19:                               # %if.end47
                                        #   in Loop: Header=BB10_12 Depth=3
	ld.d	$a1, $s0, 88
	slli.d	$fp, $a5, 2
	ldx.w	$a3, $a1, $fp
	beqz	$a3, .LBB10_25
# %bb.20:                               # %land.lhs.true49
                                        #   in Loop: Header=BB10_12 Depth=3
	ld.w	$a4, $s1, 0
	move	$a1, $zero
	beq	$a3, $a4, .LBB10_26
# %bb.21:                               # %land.lhs.true49
                                        #   in Loop: Header=BB10_12 Depth=3
	beq	$a3, $a0, .LBB10_26
# %bb.22:                               # %if.then61
                                        #   in Loop: Header=BB10_12 Depth=3
	pcalau12i	$a0, %got_pc_hi20(MIN_CHAR_SIZE)
	ld.d	$a0, $a0, %got_pc_lo12(MIN_CHAR_SIZE)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bge	$s7, $a0, .LBB10_27
# %bb.23:                               #   in Loop: Header=BB10_12 Depth=3
	move	$a2, $zero
	b	.LBB10_36
.LBB10_24:                              #   in Loop: Header=BB10_12 Depth=3
	move	$a2, $a1
	b	.LBB10_11
.LBB10_25:                              #   in Loop: Header=BB10_12 Depth=3
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB10_36
.LBB10_26:                              #   in Loop: Header=BB10_12 Depth=3
	move	$a2, $a1
	b	.LBB10_36
.LBB10_27:                              # %while.cond65.preheader
                                        #   in Loop: Header=BB10_12 Depth=3
	move	$s5, $s2
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB10_48
	.p2align	4, , 16
.LBB10_28:                              # %land.rhs68
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        #       Parent Loop BB10_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $s2, 0
	beq	$a0, $a3, .LBB10_30
# %bb.29:                               # %while.body76
                                        #   in Loop: Header=BB10_28 Depth=4
	ld.d	$s2, $s2, 72
	bnez	$s2, .LBB10_28
	b	.LBB10_48
.LBB10_30:                              # %if.end81
                                        #   in Loop: Header=BB10_12 Depth=3
	ld.bu	$a0, $s2, 44
	bne	$a2, $a0, .LBB10_32
# %bb.31:                               #   in Loop: Header=BB10_12 Depth=3
	move	$a2, $zero
	b	.LBB10_35
.LBB10_32:                              # %if.else89
                                        #   in Loop: Header=BB10_12 Depth=3
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Overlap)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	beqz	$a0, .LBB10_34
# %bb.33:                               # %if.then92
                                        #   in Loop: Header=BB10_12 Depth=3
	st.d	$s2, $s1, 56
	st.d	$s1, $s2, 56
	ori	$a2, $zero, 1
	b	.LBB10_35
.LBB10_34:                              #   in Loop: Header=BB10_12 Depth=3
	move	$a2, $zero
	ori	$s6, $zero, 1
.LBB10_35:                              # %if.end99
                                        #   in Loop: Header=BB10_12 Depth=3
	move	$s2, $s5
.LBB10_36:                              # %if.end99
                                        #   in Loop: Header=BB10_12 Depth=3
	ld.d	$a0, $s0, 88
	ldx.w	$a0, $a0, $fp
	ld.w	$a3, $s1, 12
	b	.LBB10_11
.LBB10_37:                              #   in Loop: Header=BB10_7 Depth=2
	move	$a2, $zero
	ori	$s6, $zero, 1
	ori	$a1, $zero, 1
.LBB10_38:                              # %for.inc103.loopexit
                                        #   in Loop: Header=BB10_7 Depth=2
	ld.w	$a4, $s3, 0
	addi.w	$a3, $s7, 1
	blt	$s7, $a4, .LBB10_7
.LBB10_39:                              # %for.end105
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	bnez	$a1, .LBB10_41
# %bb.40:                               # %for.end105
                                        #   in Loop: Header=BB10_3 Depth=1
	bnez	$a2, .LBB10_2
.LBB10_41:                              # %if.then110
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $s1, 48
	beqz	$a0, .LBB10_43
	.p2align	4, , 16
.LBB10_42:                              # %while.body114
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 4
	ld.w	$a2, $s0, 36
	ld.w	$a3, $a0, 0
	ld.d	$a4, $s0, 88
	mul.d	$a1, $a2, $a1
	ld.d	$fp, $a0, 8
	add.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a4, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB10_42
.LBB10_43:                              # %while.end123
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $s1, 72
	beqz	$s4, .LBB10_45
# %bb.44:                               # %if.then126
                                        #   in Loop: Header=BB10_3 Depth=1
	st.d	$a0, $s4, 72
	b	.LBB10_46
.LBB10_45:                              # %if.else129
                                        #   in Loop: Header=BB10_3 Depth=1
	st.d	$a0, $s2, 0
.LBB10_46:                              # %if.then139
                                        #   in Loop: Header=BB10_3 Depth=1
	sltui	$fp, $s4, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, 72
	masknez	$a0, $a0, $fp
	maskeqz	$a1, $s2, $fp
	or	$a0, $a1, $a0
	ld.d	$s1, $a0, 0
	bnez	$s1, .LBB10_3
.LBB10_47:                              # %while.end149
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
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
	ret
.LBB10_48:                              # %if.then79
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	PairComponents, .Lfunc_end10-PairComponents
                                        # -- End function
	.globl	Overlap                         # -- Begin function Overlap
	.p2align	5
	.type	Overlap,@function
Overlap:                                # @Overlap
# %bb.0:                                # %entry
	ld.w	$a4, $a0, 12
	ld.w	$a6, $a1, 20
	ld.w	$a5, $a0, 20
	ld.w	$a7, $a1, 12
	sub.w	$a3, $a4, $a6
	sub.w	$a2, $a6, $a5
	sub.w	$a1, $a7, $a4
	sub.w	$a0, $a7, $a5
	sub.w	$a5, $a4, $a5
	sub.w	$a4, $a7, $a6
	bltz	$a3, .LBB11_5
# %bb.1:                                # %entry
	bltz	$a2, .LBB11_5
# %bb.2:                                # %entry
	bltz	$a1, .LBB11_5
# %bb.3:                                # %entry
	ori	$a6, $zero, 1
	blt	$a0, $a6, .LBB11_5
# %bb.4:                                # %if.then
	bstrpick.d	$a0, $a3, 31, 0
	b	.LBB11_9
.LBB11_5:                               # %if.end
	slt	$a6, $zero, $a3
	slti	$a7, $a2, 1
	and	$a7, $a6, $a7
	ori	$t0, $zero, 1
	bne	$a7, $t0, .LBB11_10
# %bb.6:                                # %if.end
	bgtz	$a1, .LBB11_10
# %bb.7:                                # %if.end
	bltz	$a0, .LBB11_10
# %bb.8:                                # %if.then43
	bstrpick.d	$a0, $a0, 31, 0
.LBB11_9:                               # %cleanup
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a5
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa0, $fa1
	movgr2fr.w	$fa2, $a4
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa0, $fa0, $fa2
	vldi	$vr2, -1184
	fcmp.cle.s	$fcc0, $fa2, $fa1
	fcmp.cle.s	$fcc1, $fa2, $fa0
	movcf2gr	$a0, $fcc0
	movcf2gr	$a1, $fcc1
	and	$a0, $a0, $a1
	ret
.LBB11_10:                              # %if.end60
	addi.w	$a6, $zero, -1
	slt	$t1, $a6, $a1
	and	$a7, $a7, $t1
	bne	$a7, $t0, .LBB11_13
# %bb.11:                               # %if.end60
	ori	$a7, $zero, 1
	blt	$a0, $a7, .LBB11_13
# %bb.12:                               # %if.then72
	movgr2fr.w	$fa0, $a5
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a4
	b	.LBB11_18
.LBB11_13:                              # %if.end80
	ori	$a7, $zero, 1
	blt	$a3, $a7, .LBB11_19
# %bb.14:                               # %if.end80
	bltz	$a2, .LBB11_19
# %bb.15:                               # %if.end80
	bgtz	$a1, .LBB11_19
# %bb.16:                               # %if.end80
	ori	$a7, $zero, 1
	blt	$a0, $a7, .LBB11_19
# %bb.17:                               # %if.then92
	movgr2fr.w	$fa0, $a4
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a5
.LBB11_18:                              # %cleanup
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	vldi	$vr1, -1184
	fcmp.cle.s	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	ret
.LBB11_19:                              # %if.end100
	blt	$a6, $a3, .LBB11_23
# %bb.20:                               # %if.end100
	ori	$a4, $zero, 1
	blt	$a2, $a4, .LBB11_23
# %bb.21:                               # %if.end100
	blt	$a1, $a4, .LBB11_23
# %bb.22:                               # %if.end100
	bgtz	$a0, .LBB11_27
.LBB11_23:                              # %if.end113
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB11_28
# %bb.24:                               # %if.end113
	blt	$a6, $a2, .LBB11_28
# %bb.25:                               # %if.end113
	blt	$a6, $a1, .LBB11_28
# %bb.26:                               # %if.end113
	bgez	$a0, .LBB11_28
.LBB11_27:
	move	$a0, $zero
	ret
.LBB11_28:                              # %if.end126
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	Overlap, .Lfunc_end11-Overlap
                                        # -- End function
	.globl	ComputeBoundingBoxes            # -- Begin function ComputeBoundingBoxes
	.p2align	5
	.type	ComputeBoundingBoxes,@function
ComputeBoundingBoxes:                   # @ComputeBoundingBoxes
# %bb.0:                                # %entry
	beqz	$a0, .LBB12_14
# %bb.1:                                # %while.cond.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ori	$a1, $zero, 255
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %while.cond.backedge
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a0, $a0, 72
	beqz	$a0, .LBB12_10
.LBB12_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
                                        #     Child Loop BB12_9 Depth 2
	ld.bu	$a2, $a0, 44
	bnez	$a2, .LBB12_2
# %bb.4:                                # %if.end5
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a3, $a0, 56
	ld.w	$a2, $a0, 20
	ld.w	$a4, $a3, 20
	slt	$a5, $a2, $a4
	ld.w	$t0, $a0, 12
	ld.w	$a6, $a3, 12
	masknez	$a4, $a4, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a4
	slt	$t1, $a6, $t0
	masknez	$t2, $a6, $t1
	ld.w	$a5, $a0, 24
	ld.w	$a7, $a3, 24
	ld.w	$a4, $a0, 16
	ld.w	$a6, $a3, 16
	maskeqz	$a3, $t0, $t1
	or	$a3, $a3, $t2
	blt	$a3, $a2, .LBB12_7
# %bb.5:                                # %for.body.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.w	$t0, $a3, 1
	move	$t1, $a2
	.p2align	4, , 16
.LBB12_6:                               # %for.body
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $a0, 16
	ld.w	$t3, $fp, 36
	ld.d	$t4, $fp, 48
	mul.d	$t2, $t3, $t2
	add.w	$t2, $t1, $t2
	stx.b	$a1, $t4, $t2
	ld.d	$t2, $a0, 56
	ld.w	$t2, $t2, 24
	ld.w	$t3, $fp, 36
	ld.d	$t4, $fp, 48
	mul.d	$t2, $t3, $t2
	add.w	$t2, $t1, $t2
	addi.w	$t1, $t1, 1
	stx.b	$a1, $t4, $t2
	bne	$t0, $t1, .LBB12_6
.LBB12_7:                               # %for.cond60.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	slt	$t0, $a5, $a7
	masknez	$a7, $a7, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $a7
	slt	$a7, $a6, $a4
	masknez	$a6, $a6, $a7
	maskeqz	$a4, $a4, $a7
	or	$a4, $a4, $a6
	blt	$a4, $a5, .LBB12_2
# %bb.8:                                # %for.body63.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.w	$a4, $a4, 1
	.p2align	4, , 16
.LBB12_9:                               # %for.body63
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $fp, 36
	ld.d	$a7, $fp, 48
	mul.d	$a6, $a6, $a5
	add.w	$a6, $a6, $a2
	stx.b	$a1, $a7, $a6
	ld.w	$a6, $fp, 36
	ld.d	$a7, $fp, 48
	mul.d	$a6, $a6, $a5
	add.w	$a6, $a6, $a3
	addi.w	$a5, $a5, 1
	stx.b	$a1, $a7, $a6
	bne	$a4, $a5, .LBB12_9
	b	.LBB12_2
.LBB12_10:                              # %while.end
	ld.d	$s1, $fp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 9
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$s1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 36
	ld.w	$a3, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ld.w	$a1, $fp, 32
	mul.w	$a0, $a1, $a0
	blt	$a0, $s2, .LBB12_13
# %bb.11:                               # %for.body96.preheader
	move	$s2, $zero
	.p2align	4, , 16
.LBB12_12:                              # %for.body96
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	ldx.b	$a0, $a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ld.w	$a1, $fp, 32
	addi.d	$s2, $s2, 1
	mul.w	$a0, $a1, $a0
	blt	$s2, $a0, .LBB12_12
.LBB12_13:                              # %for.end103
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB12_14:                              # %cleanup
	ret
.Lfunc_end12:
	.size	ComputeBoundingBoxes, .Lfunc_end12-ComputeBoundingBoxes
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"component:\t %d\n"
	.size	.L.str.1, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"# points:\t %d\n"
	.size	.L.str.2, 15

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"average row:\t %d\n"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"x max:\t\t %d\n"
	.size	.L.str.4, 13

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"y max:\t\t %d\n"
	.size	.L.str.5, 13

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"x min:\t\t %d\n"
	.size	.L.str.6, 13

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"y min:\t\t %d\n"
	.size	.L.str.7, 13

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"type:\t\t %s\n"
	.size	.L.str.8, 12

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"falling"
	.size	.L.str.9, 8

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"rising"
	.size	.L.str.10, 7

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Total points: %d\n"
	.size	.L.str.12, 18

	.type	WriteConnectedComponentsToPGM.index,@object # @WriteConnectedComponentsToPGM.index
	.local	WriteConnectedComponentsToPGM.index
	.comm	WriteConnectedComponentsToPGM.index,4,4
	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%s.comp%d.pgm"
	.size	.L.str.13, 14

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"P5\n"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%d %d\n"
	.size	.L.str.15, 7

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"255\n"
	.size	.L.str.16, 5

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Unexpected error in PairComponents(). "
	.size	.L.str.18, 39

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Unexpected case or mathematical absurdity reached in Overlap(). "
	.size	.L.str.20, 65

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%s.out.pgm"
	.size	.L.str.22, 11

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"------------------------\n"
	.size	.Lstr, 26

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"------------------------"
	.size	.Lstr.1, 25

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Unexpected error in MergeToLeft(), aborting."
	.size	.Lstr.2, 45

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Exiting."
	.size	.Lstr.3, 9

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Twink!"
	.size	.Lstr.4, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
