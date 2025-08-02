	.file	"solver.c"
	.text
	.globl	attenuate_fluxes                # -- Begin function attenuate_fluxes
	.p2align	5
	.type	attenuate_fluxes,@function
attenuate_fluxes:                       # @attenuate_fluxes
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
                                        # kill: def $f1 killed $f1 def $vr1 def $xr1 def $xr1
                                        # kill: def $f0 killed $f0 def $xr0
	ld.w	$t8, $a3, 8
	ld.w	$t1, $a3, 12
	ld.w	$a7, $a3, 36
	ld.w	$s1, $a3, 44
	fld.s	$fa5, $a3, 60
	ld.d	$s2, $a4, 40
	fld.s	$fa3, $a4, 48
	fld.s	$fa4, $a4, 52
	ld.d	$t6, $a5, 0
	ld.d	$t3, $a5, 8
	ld.d	$a6, $a5, 16
	ld.d	$t7, $a5, 24
	ld.d	$t4, $a5, 32
	ld.d	$t5, $a5, 40
	ld.d	$t0, $a5, 48
	ld.d	$t2, $a5, 56
	ld.d	$s0, $a5, 64
	ld.d	$fp, $a5, 72
	ld.d	$a3, $a5, 80
	ld.d	$a4, $a5, 88
	ld.d	$s5, $a5, 96
	ld.d	$s6, $a5, 104
	mul.d	$a5, $t1, $t8
	mul.d	$a5, $a5, $s1
	fld.s	$fa6, $a0, 4
	movgr2fr.w	$fa7, $a5
	ffint.s.w	$fa7, $fa7
	fdiv.s	$ft0, $fa5, $fa7
	fdiv.s	$fa5, $fa6, $ft0
	ftintrz.w.s	$fa5, $fa5
	movfr2gr.s	$a5, $fa5
	movgr2fr.w	$fa5, $a5
	ffint.s.w	$fa7, $fa5
	vldi	$vr9, -1184
	ld.d	$s1, $a2, 0
	mod.w	$t8, $a5, $t1
	fld.s	$fa5, $a0, 0
	slli.d	$a5, $t8, 3
	ldx.d	$s1, $s1, $a5
	fadd.s	$fa7, $fa7, $ft1
	fneg.s	$ft1, $ft0
	fmadd.s	$fa6, $ft1, $fa7, $fa6
	beqz	$t8, .LBB0_7
# %bb.1:                                # %if.else
	addi.w	$t1, $t1, -1
	bne	$t8, $t1, .LBB0_12
# %bb.2:                                # %if.then69
	ori	$t1, $zero, 1
	blt	$a7, $t1, .LBB0_101
# %bb.3:                                # %for.body77.lr.ph
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	ld.d	$t1, $a2, 8
	fadd.s	$fa6, $ft0, $fa6
	alsl.d	$s1, $t8, $t1, 3
	ld.d	$t8, $s1, -16
	ld.d	$s3, $s1, -8
	ldx.d	$s4, $t1, $a5
	fadd.s	$fa7, $ft0, $ft0
	ori	$a5, $zero, 16
	fmul.s	$ft0, $ft0, $fa7
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	bgeu	$a7, $a5, .LBB0_144
# %bb.4:
	move	$s5, $zero
.LBB0_5:                                # %for.body77.preheader
	alsl.d	$t1, $s5, $a6, 2
	alsl.d	$s1, $s5, $t3, 2
	alsl.d	$s6, $s5, $t6, 2
	alsl.d	$s4, $s5, $s4, 2
	alsl.d	$s3, $s5, $s3, 2
	alsl.d	$t8, $s5, $t8, 2
	sub.d	$s5, $a7, $s5
	vldi	$vr9, -1152
	.p2align	4, , 16
.LBB0_6:                                # %for.body77
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$ft2, $t8, 0
	fld.s	$ft3, $s4, 0
	fld.s	$ft4, $s3, 0
	fsub.s	$ft5, $ft2, $ft3
	fdiv.s	$ft5, $ft5, $fa7
	fmadd.s	$ft2, $ft4, $ft1, $ft2
	fadd.s	$ft2, $ft2, $ft3
	fdiv.s	$ft2, $ft2, $ft0
	fmadd.s	$ft3, $ft5, $fa6, $ft4
	fmul.s	$ft4, $fa6, $ft2
	fmadd.s	$ft3, $ft4, $fa6, $ft3
	fst.s	$ft3, $s6, 0
	fadd.s	$ft3, $ft2, $ft2
	fmadd.s	$ft3, $ft3, $fa6, $ft5
	fst.s	$ft3, $s1, 0
	fst.s	$ft2, $t1, 0
	addi.d	$t1, $t1, 4
	addi.d	$s1, $s1, 4
	addi.d	$s6, $s6, 4
	addi.d	$s4, $s4, 4
	addi.d	$s3, $s3, 4
	addi.d	$s5, $s5, -1
	addi.d	$t8, $t8, 4
	bnez	$s5, .LBB0_6
	b	.LBB0_17
.LBB0_7:                                # %if.then
	ori	$t1, $zero, 1
	blt	$a7, $t1, .LBB0_101
# %bb.8:                                # %for.body.lr.ph
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$t1, $a2, 8
	fsub.s	$fa6, $fa6, $ft0
	ldx.d	$t8, $t1, $a5
	ld.d	$s3, $t1, 8
	ld.d	$s4, $t1, 16
	fadd.s	$fa7, $ft0, $ft0
	ori	$a5, $zero, 16
	fmul.s	$ft0, $ft0, $fa7
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	bgeu	$a7, $a5, .LBB0_129
# %bb.9:
	move	$a5, $zero
.LBB0_10:                               # %for.body.preheader
	alsl.d	$t1, $a5, $a6, 2
	alsl.d	$s1, $a5, $t3, 2
	alsl.d	$s6, $a5, $t6, 2
	alsl.d	$s4, $a5, $s4, 2
	alsl.d	$s3, $a5, $s3, 2
	alsl.d	$t8, $a5, $t8, 2
	sub.d	$s5, $a7, $a5
	vldi	$vr9, -1152
	.p2align	4, , 16
.LBB0_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$ft2, $t8, 0
	fld.s	$ft3, $s4, 0
	fld.s	$ft4, $s3, 0
	fsub.s	$ft5, $ft2, $ft3
	fdiv.s	$ft5, $ft5, $fa7
	fmadd.s	$ft2, $ft4, $ft1, $ft2
	fadd.s	$ft2, $ft2, $ft3
	fdiv.s	$ft2, $ft2, $ft0
	fmadd.s	$ft3, $ft5, $fa6, $ft4
	fmul.s	$ft4, $fa6, $ft2
	fmadd.s	$ft3, $ft4, $fa6, $ft3
	fst.s	$ft3, $s6, 0
	fadd.s	$ft3, $ft2, $ft2
	fmadd.s	$ft3, $ft3, $fa6, $ft5
	fst.s	$ft3, $s1, 0
	fst.s	$ft2, $t1, 0
	addi.d	$t1, $t1, 4
	addi.d	$s1, $s1, 4
	addi.d	$s6, $s6, 4
	addi.d	$s4, $s4, 4
	addi.d	$s3, $s3, 4
	addi.d	$s5, $s5, -1
	addi.d	$t8, $t8, 4
	bnez	$s5, .LBB0_11
	b	.LBB0_17
.LBB0_12:                               # %for.cond125.preheader
	ori	$t1, $zero, 1
	blt	$a7, $t1, .LBB0_101
# %bb.13:                               # %for.body130.lr.ph
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	ld.d	$t1, $a2, 8
	alsl.d	$s1, $t8, $t1, 3
	ld.d	$t8, $s1, -8
	ldx.d	$s3, $t1, $a5
	ld.d	$s4, $s1, 8
	fadd.s	$fa7, $ft0, $ft0
	ori	$a5, $zero, 16
	fmul.s	$ft0, $ft0, $fa7
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	bgeu	$a7, $a5, .LBB0_159
# %bb.14:
	move	$s5, $zero
.LBB0_15:                               # %for.body130.preheader
	alsl.d	$t1, $s5, $a6, 2
	alsl.d	$s1, $s5, $t3, 2
	alsl.d	$s6, $s5, $t6, 2
	alsl.d	$s4, $s5, $s4, 2
	alsl.d	$s3, $s5, $s3, 2
	alsl.d	$t8, $s5, $t8, 2
	sub.d	$s5, $a7, $s5
	vldi	$vr9, -1152
	.p2align	4, , 16
.LBB0_16:                               # %for.body130
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$ft2, $t8, 0
	fld.s	$ft3, $s4, 0
	fld.s	$ft4, $s3, 0
	fsub.s	$ft5, $ft2, $ft3
	fdiv.s	$ft5, $ft5, $fa7
	fmadd.s	$ft2, $ft4, $ft1, $ft2
	fadd.s	$ft2, $ft2, $ft3
	fdiv.s	$ft2, $ft2, $ft0
	fmadd.s	$ft3, $ft5, $fa6, $ft4
	fmul.s	$ft4, $fa6, $ft2
	fmadd.s	$ft3, $ft4, $fa6, $ft3
	fst.s	$ft3, $s6, 0
	fadd.s	$ft3, $ft2, $ft2
	fmadd.s	$ft3, $ft3, $fa6, $ft5
	fst.s	$ft3, $s1, 0
	fst.s	$ft2, $t1, 0
	addi.d	$t1, $t1, 4
	addi.d	$s1, $s1, 4
	addi.d	$s6, $s6, 4
	addi.d	$s4, $s4, 4
	addi.d	$s3, $s3, 4
	addi.d	$s5, $s5, -1
	addi.d	$t8, $t8, 4
	bnez	$s5, .LBB0_16
.LBB0_17:                               # %for.body183.lr.ph
	bstrpick.d	$t8, $a7, 31, 0
	ld.d	$a2, $a2, 24
	fmul.s	$fa5, $fa2, $fa5
	ori	$a5, $zero, 24
	fmul.s	$fa2, $fa1, $fa1
	bgeu	$a7, $a5, .LBB0_22
# %bb.18:
	move	$s3, $zero
.LBB0_19:                               # %for.body183.preheader
	alsl.d	$a5, $s3, $t5, 2
	alsl.d	$t1, $s3, $t4, 2
	alsl.d	$s1, $s3, $t7, 2
	alsl.d	$a2, $s3, $a2, 2
	sub.d	$s3, $t8, $s3
	.p2align	4, , 16
.LBB0_20:                               # %for.body183
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa6, $a2, 0
	fst.s	$fa6, $s1, 0
	fmul.s	$fa6, $fa0, $fa6
	fst.s	$fa6, $t1, 0
	fld.s	$fa6, $s1, 0
	fmul.s	$fa6, $fa6, $fa6
	fst.s	$fa6, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$t1, $t1, 4
	addi.d	$s1, $s1, 4
	addi.d	$s3, $s3, -1
	addi.d	$a2, $a2, 4
	bnez	$s3, .LBB0_20
# %bb.21:
	move	$t1, $t8
	move	$s1, $t4
	move	$a5, $t0
	b	.LBB0_33
.LBB0_22:                               # %vector.memcheck497
	alsl.d	$s1, $t8, $t7, 2
	alsl.d	$a5, $t8, $t4, 2
	sltu	$t1, $t7, $a5
	sltu	$s3, $t4, $s1
	and	$t1, $t1, $s3
	move	$s3, $zero
	bnez	$t1, .LBB0_19
# %bb.23:                               # %vector.memcheck497
	alsl.d	$t1, $t8, $t5, 2
	sltu	$s4, $t7, $t1
	sltu	$s5, $t5, $s1
	and	$s4, $s4, $s5
	bnez	$s4, .LBB0_19
# %bb.24:                               # %vector.memcheck497
	alsl.d	$s4, $t8, $a2, 2
	sltu	$s5, $t7, $s4
	sltu	$s1, $a2, $s1
	and	$s1, $s5, $s1
	bnez	$s1, .LBB0_19
# %bb.25:                               # %vector.memcheck497
	sltu	$s1, $t4, $t1
	sltu	$s5, $t5, $a5
	and	$s1, $s1, $s5
	bnez	$s1, .LBB0_19
# %bb.26:                               # %vector.memcheck497
	sltu	$s1, $t4, $s4
	sltu	$a5, $a2, $a5
	and	$a5, $s1, $a5
	bnez	$a5, .LBB0_19
# %bb.27:                               # %vector.memcheck497
	sltu	$a5, $t5, $s4
	sltu	$t1, $a2, $t1
	and	$a5, $a5, $t1
	bnez	$a5, .LBB0_19
# %bb.28:                               # %vector.ph523
	bstrpick.d	$a5, $t8, 30, 3
	slli.d	$s3, $a5, 3
	xvreplve0.w	$xr6, $xr0
	move	$a5, $a2
	move	$t1, $t7
	move	$s1, $t4
	move	$s4, $t5
	move	$s5, $s3
	.p2align	4, , 16
.LBB0_29:                               # %vector.body528
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr7, $a5, 0
	xvst	$xr7, $t1, 0
	xvfmul.s	$xr8, $xr6, $xr7
	xvst	$xr8, $s1, 0
	xvfmul.s	$xr7, $xr7, $xr7
	xvst	$xr7, $s4, 0
	addi.d	$s5, $s5, -8
	addi.d	$s4, $s4, 32
	addi.d	$s1, $s1, 32
	addi.d	$t1, $t1, 32
	addi.d	$a5, $a5, 32
	bnez	$s5, .LBB0_29
# %bb.30:                               # %middle.block533
	move	$t1, $t8
	move	$s1, $t4
	move	$a5, $t0
	beq	$s3, $t8, .LBB0_33
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_31:                               #   in Loop: Header=BB0_33 Depth=1
	vldi	$vr0, -1168
.LBB0_32:                               # %interpolateTable.exit
                                        #   in Loop: Header=BB0_33 Depth=1
	fst.s	$fa0, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$t1, $t1, -1
	addi.d	$s1, $s1, 4
	beqz	$t1, .LBB0_35
.LBB0_33:                               # %for.body210
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s1, 0
	fcmp.clt.s	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB0_31
# %bb.34:                               # %if.else.i
                                        #   in Loop: Header=BB0_33 Depth=1
	fdiv.s	$fa6, $fa0, $fa3
	vldi	$vr7, -1184
	fmadd.s	$fa6, $fa3, $fa7, $fa6
	ftintrz.w.s	$fa6, $fa6
	movfr2gr.s	$a2, $fa6
	slli.w	$a2, $a2, 1
	alsl.d	$s3, $a2, $s2, 2
	slli.d	$a2, $a2, 2
	fldx.s	$fa6, $s2, $a2
	fld.s	$fa7, $s3, 4
	fmadd.s	$fa0, $fa6, $fa0, $fa7
	b	.LBB0_32
.LBB0_35:                               # %iter.check
	ori	$a2, $zero, 3
	bltu	$a2, $a7, .LBB0_47
# %bb.36:
	move	$a2, $zero
.LBB0_37:                               # %for.body224.preheader
	alsl.d	$t1, $a2, $t2, 2
	alsl.d	$s1, $a2, $t5, 2
	alsl.d	$s2, $a2, $t7, 2
	alsl.d	$s3, $a2, $t0, 2
	alsl.d	$s4, $a2, $t4, 2
	sub.d	$a2, $t8, $a2
	vldi	$vr0, -1152
	.p2align	4, , 16
.LBB0_38:                               # %for.body224
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $s4, 0
	fld.s	$fa4, $s3, 0
	fld.s	$fa6, $s2, 0
	fld.s	$fa7, $s1, 0
	fadd.s	$ft0, $fa3, $fa0
	fadd.s	$fa4, $fa4, $fa4
	fmul.s	$fa6, $fa6, $fa7
	fdiv.s	$fa4, $fa4, $fa6
	fmadd.s	$fa3, $fa3, $ft0, $fa4
	fst.s	$fa3, $t1, 0
	addi.d	$t1, $t1, 4
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 4
	addi.d	$s3, $s3, 4
	addi.d	$a2, $a2, -1
	addi.d	$s4, $s4, 4
	bnez	$a2, .LBB0_38
.LBB0_39:                               # %for.body254.preheader
	ori	$a2, $zero, 32
	masknez	$a5, $a2, $a1
	ori	$t1, $zero, 24
	maskeqz	$a1, $t1, $a1
	or	$a1, $a1, $a5
	ldx.d	$a0, $a0, $a1
	ori	$a1, $zero, 8
	bgeu	$a7, $a1, .LBB0_53
# %bb.40:
	move	$a1, $zero
.LBB0_41:                               # %for.body254.preheader917
	slli.d	$a2, $a1, 2
	sub.d	$a1, $t8, $a1
	vldi	$vr0, -1144
	vldi	$vr3, -1256
	vldi	$vr4, -1128
	vldi	$vr6, -1272
	move	$s2, $t6
	move	$s3, $t4
	move	$s4, $t7
	move	$s5, $a0
	move	$s6, $t0
	move	$s7, $t5
	move	$s8, $t3
	move	$ra, $t2
	move	$t1, $a6
	move	$s1, $s0
	.p2align	4, , 16
.LBB0_42:                               # %for.body254
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa7, $s2, $a2
	fldx.s	$ft0, $s4, $a2
	fldx.s	$ft1, $s5, $a2
	fldx.s	$ft2, $s6, $a2
	fldx.s	$ft3, $s3, $a2
	fmsub.s	$ft0, $ft0, $ft1, $fa7
	fmul.s	$ft0, $ft0, $ft2
	fmadd.s	$fa7, $fa7, $ft3, $ft0
	fldx.s	$ft0, $s7, $a2
	fldx.s	$ft1, $s8, $a2
	fldx.s	$ft4, $ra, $a2
	fldx.s	$ft5, $t1, $a2
	fdiv.s	$fa7, $fa7, $ft0
	fmul.s	$ft1, $fa1, $ft1
	fmadd.s	$fa7, $ft1, $ft4, $fa7
	fmul.s	$ft1, $fa2, $ft5
	fadd.s	$ft4, $ft3, $fa0
	fmadd.s	$ft4, $ft3, $ft4, $fa3
	fmul.s	$ft2, $ft2, $fa4
	fmadd.s	$ft2, $ft3, $ft4, $ft2
	fmul.s	$ft1, $ft2, $ft1
	fmul.s	$ft2, $ft0, $fa6
	fmul.s	$ft0, $ft0, $ft2
	fdiv.s	$ft0, $ft1, $ft0
	fadd.s	$fa7, $fa7, $ft0
	fstx.s	$fa7, $s1, $a2
	addi.d	$s1, $s1, 4
	addi.d	$t1, $t1, 4
	addi.d	$ra, $ra, 4
	addi.d	$s8, $s8, 4
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 4
	addi.d	$s3, $s3, 4
	addi.d	$a1, $a1, -1
	addi.d	$s2, $s2, 4
	bnez	$a1, .LBB0_42
.LBB0_43:                               # %iter.check622
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$a7, $a2, .LBB0_65
# %bb.44:                               # %iter.check622
	sub.d	$a2, $fp, $s0
	ori	$a5, $zero, 63
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	bgeu	$a5, $a2, .LBB0_73
# %bb.45:                               # %vector.main.loop.iter.check624
	ori	$a1, $zero, 16
	bgeu	$a7, $a1, .LBB0_66
# %bb.46:
	move	$a1, $zero
	b	.LBB0_70
.LBB0_47:                               # %vector.memcheck536
	sub.d	$t1, $t2, $t4
	ori	$a5, $zero, 64
	move	$a2, $zero
	bltu	$t1, $a5, .LBB0_37
# %bb.48:                               # %vector.memcheck536
	sub.d	$t1, $t2, $t0
	bltu	$t1, $a5, .LBB0_37
# %bb.49:                               # %vector.memcheck536
	sub.d	$t1, $t2, $t7
	ori	$a5, $zero, 64
	bltu	$t1, $a5, .LBB0_37
# %bb.50:                               # %vector.memcheck536
	sub.d	$t1, $t2, $t5
	bltu	$t1, $a5, .LBB0_37
# %bb.51:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a7, $a2, .LBB0_202
# %bb.52:
	move	$a2, $zero
	b	.LBB0_206
.LBB0_53:                               # %vector.memcheck574
	sub.d	$a5, $s0, $t6
	move	$a1, $zero
	bltu	$a5, $a2, .LBB0_41
# %bb.54:                               # %vector.memcheck574
	sub.d	$a5, $s0, $t4
	ori	$a2, $zero, 32
	bltu	$a5, $a2, .LBB0_41
# %bb.55:                               # %vector.memcheck574
	sub.d	$a5, $s0, $t7
	bltu	$a5, $a2, .LBB0_41
# %bb.56:                               # %vector.memcheck574
	sub.d	$a5, $s0, $a0
	ori	$a2, $zero, 32
	bltu	$a5, $a2, .LBB0_41
# %bb.57:                               # %vector.memcheck574
	sub.d	$a5, $s0, $t0
	bltu	$a5, $a2, .LBB0_41
# %bb.58:                               # %vector.memcheck574
	sub.d	$a5, $s0, $t5
	ori	$a2, $zero, 32
	bltu	$a5, $a2, .LBB0_41
# %bb.59:                               # %vector.memcheck574
	sub.d	$a5, $s0, $t3
	bltu	$a5, $a2, .LBB0_41
# %bb.60:                               # %vector.memcheck574
	sub.d	$a5, $s0, $t2
	ori	$a2, $zero, 32
	bltu	$a5, $a2, .LBB0_41
# %bb.61:                               # %vector.memcheck574
	sub.d	$a5, $s0, $a6
	bltu	$a5, $a2, .LBB0_41
# %bb.62:                               # %vector.ph595
	bstrpick.d	$a1, $t8, 30, 3
	slli.d	$a1, $a1, 3
	xvreplve0.w	$xr0, $xr1
	xvreplve0.w	$xr3, $xr2
	lu12i.w	$a2, -261120
	xvreplgr2vr.w	$xr4, $a2
	lu12i.w	$a2, 265216
	xvreplgr2vr.w	$xr6, $a2
	lu12i.w	$a2, -259072
	xvreplgr2vr.w	$xr7, $a2
	lu12i.w	$a2, 263168
	xvreplgr2vr.w	$xr8, $a2
	move	$a2, $t6
	move	$s2, $t4
	move	$s3, $t7
	move	$s4, $a0
	move	$s5, $t0
	move	$s6, $t5
	move	$s7, $t3
	move	$s8, $t2
	move	$t1, $a6
	move	$s1, $s0
	move	$ra, $a1
	.p2align	4, , 16
.LBB0_63:                               # %vector.body602
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr9, $a2, 0
	xvld	$xr10, $s3, 0
	xvld	$xr11, $s4, 0
	xvld	$xr12, $s5, 0
	xvld	$xr13, $s2, 0
	xvfmsub.s	$xr10, $xr10, $xr11, $xr9
	xvfmul.s	$xr10, $xr10, $xr12
	xvfmadd.s	$xr9, $xr9, $xr13, $xr10
	xvld	$xr10, $s6, 0
	xvld	$xr11, $s7, 0
	xvld	$xr14, $s8, 0
	xvld	$xr15, $t1, 0
	xvfdiv.s	$xr9, $xr9, $xr10
	xvfmul.s	$xr11, $xr0, $xr11
	xvfmadd.s	$xr9, $xr11, $xr14, $xr9
	xvfmul.s	$xr11, $xr3, $xr15
	xvfadd.s	$xr14, $xr13, $xr4
	xvfmadd.s	$xr14, $xr13, $xr14, $xr6
	xvfmul.s	$xr12, $xr12, $xr7
	xvfmadd.s	$xr12, $xr13, $xr14, $xr12
	xvfmul.s	$xr11, $xr12, $xr11
	xvfmul.s	$xr12, $xr10, $xr8
	xvfmul.s	$xr10, $xr10, $xr12
	xvfdiv.s	$xr10, $xr11, $xr10
	xvfadd.s	$xr9, $xr9, $xr10
	xvst	$xr9, $s1, 0
	addi.d	$ra, $ra, -8
	addi.d	$s1, $s1, 32
	addi.d	$t1, $t1, 32
	addi.d	$s8, $s8, 32
	addi.d	$s7, $s7, 32
	addi.d	$s6, $s6, 32
	addi.d	$s5, $s5, 32
	addi.d	$s4, $s4, 32
	addi.d	$s3, $s3, 32
	addi.d	$s2, $s2, 32
	addi.d	$a2, $a2, 32
	bnez	$ra, .LBB0_63
# %bb.64:                               # %middle.block614
	bne	$a1, $t8, .LBB0_41
	b	.LBB0_43
.LBB0_65:
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_73
.LBB0_66:                               # %vector.ph625
	bstrpick.d	$a1, $t8, 30, 4
	slli.d	$a1, $a1, 4
	xvreplve0.w	$xr0, $xr5
	addi.d	$a2, $fp, 32
	addi.d	$a5, $s0, 32
	move	$t1, $a1
	.p2align	4, , 16
.LBB0_67:                               # %vector.body630
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a5, -32
	xvld	$xr4, $a5, 0
	xvfmul.s	$xr3, $xr0, $xr3
	xvfmul.s	$xr4, $xr0, $xr4
	xvst	$xr3, $a2, -32
	xvst	$xr4, $a2, 0
	addi.d	$t1, $t1, -16
	addi.d	$a2, $a2, 64
	addi.d	$a5, $a5, 64
	bnez	$t1, .LBB0_67
# %bb.68:                               # %middle.block635
	beq	$a1, $t8, .LBB0_75
# %bb.69:                               # %vec.epilog.iter.check640
	andi	$a2, $t8, 12
	beqz	$a2, .LBB0_73
.LBB0_70:                               # %vec.epilog.ph639
	move	$t1, $a1
	bstrpick.d	$a1, $t8, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.w	$vr0, $vr5, 0
	sub.d	$a2, $t1, $a1
	alsl.d	$a5, $t1, $fp, 2
	alsl.d	$t1, $t1, $s0, 2
	.p2align	4, , 16
.LBB0_71:                               # %vec.epilog.vector.body647
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t1, 0
	vfmul.s	$vr3, $vr0, $vr3
	vst	$vr3, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	addi.d	$t1, $t1, 16
	bnez	$a2, .LBB0_71
# %bb.72:                               # %vec.epilog.middle.block651
	beq	$a1, $t8, .LBB0_75
.LBB0_73:                               # %for.body316.preheader
	alsl.d	$a2, $a1, $fp, 2
	alsl.d	$a5, $a1, $s0, 2
	sub.d	$a1, $t8, $a1
	.p2align	4, , 16
.LBB0_74:                               # %for.body316
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fmul.s	$fa0, $fa5, $fa0
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB0_74
.LBB0_75:                               # %iter.check663
	ori	$a1, $zero, 3
	bgeu	$a1, $a7, .LBB0_78
# %bb.76:                               # %vector.memcheck654
	alsl.d	$a1, $t8, $fp, 2
	bgeu	$s3, $a1, .LBB0_127
# %bb.77:                               # %vector.memcheck654
	alsl.d	$a1, $t8, $s3, 2
	bgeu	$fp, $a1, .LBB0_127
.LBB0_78:
	move	$a1, $zero
.LBB0_79:                               # %for.body331.preheader
	alsl.d	$a2, $a1, $s3, 2
	alsl.d	$a5, $a1, $fp, 2
	sub.d	$a1, $t8, $a1
	.p2align	4, , 16
.LBB0_80:                               # %for.body331
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa3, $a2, 0
	fadd.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB0_80
.LBB0_81:                               # %iter.check703
	ori	$a1, $zero, 3
	bltu	$a1, $a7, .LBB0_102
# %bb.82:
	move	$a1, $zero
.LBB0_83:                               # %for.body346.preheader
	alsl.d	$a2, $a1, $a3, 2
	alsl.d	$a5, $a1, $t7, 2
	alsl.d	$t1, $a1, $t0, 2
	alsl.d	$t6, $a1, $t6, 2
	sub.d	$a1, $t8, $a1
	.p2align	4, , 16
.LBB0_84:                               # %for.body346
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t6, 0
	fld.s	$fa3, $t1, 0
	fld.s	$fa4, $a5, 0
	fmul.s	$fa0, $fa0, $fa3
	fdiv.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	addi.d	$t1, $t1, 4
	addi.d	$a1, $a1, -1
	addi.d	$t6, $t6, 4
	bnez	$a1, .LBB0_84
.LBB0_85:                               # %iter.check748
	ori	$a1, $zero, 3
	bltu	$a1, $a7, .LBB0_107
# %bb.86:
	move	$a1, $zero
.LBB0_87:                               # %for.body366.preheader
	alsl.d	$a2, $a1, $a4, 2
	alsl.d	$a5, $a1, $t5, 2
	alsl.d	$t1, $a1, $t0, 2
	alsl.d	$t4, $a1, $t4, 2
	alsl.d	$t3, $a1, $t3, 2
	sub.d	$a1, $t8, $a1
	.p2align	4, , 16
.LBB0_88:                               # %for.body366
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t4, 0
	fld.s	$fa3, $t1, 0
	fld.s	$fa4, $t3, 0
	fld.s	$fa5, $a5, 0
	fsub.s	$fa0, $fa0, $fa3
	fmul.s	$fa3, $fa1, $fa4
	fmul.s	$fa0, $fa3, $fa0
	fdiv.s	$fa0, $fa0, $fa5
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	addi.d	$t1, $t1, 4
	addi.d	$t4, $t4, 4
	addi.d	$a1, $a1, -1
	addi.d	$t3, $t3, 4
	bnez	$a1, .LBB0_88
.LBB0_89:                               # %iter.check796
	ori	$a1, $zero, 3
	bltu	$a1, $a7, .LBB0_113
# %bb.90:
	move	$a1, $zero
.LBB0_91:                               # %for.body390.preheader
	alsl.d	$a2, $a1, $s1, 2
	alsl.d	$a5, $a1, $t2, 2
	alsl.d	$a6, $a1, $a6, 2
	sub.d	$a1, $t8, $a1
	.p2align	4, , 16
.LBB0_92:                               # %for.body390
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a6, 0
	fld.s	$fa1, $a5, 0
	fmul.s	$fa0, $fa2, $fa0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a6, 4
	bnez	$a1, .LBB0_92
.LBB0_93:                               # %iter.check838
	ori	$a1, $zero, 3
	bltu	$a1, $a7, .LBB0_117
# %bb.94:
	move	$a1, $zero
.LBB0_95:                               # %for.body408.preheader
	alsl.d	$a2, $a1, $s2, 2
	alsl.d	$a5, $a1, $t0, 2
	alsl.d	$a6, $a1, $a0, 2
	sub.d	$a1, $t8, $a1
	vldi	$vr0, -1168
	.p2align	4, , 16
.LBB0_96:                               # %for.body408
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a5, 0
	fld.s	$fa2, $a6, 0
	fsub.s	$fa1, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a6, 4
	bnez	$a1, .LBB0_96
.LBB0_97:                               # %iter.check880
	ori	$a1, $zero, 3
	bltu	$a1, $a7, .LBB0_121
# %bb.98:
	move	$a1, $zero
.LBB0_99:                               # %for.body426.preheader
	alsl.d	$a0, $a1, $a0, 2
	alsl.d	$a2, $a1, $s2, 2
	alsl.d	$a5, $a1, $s1, 2
	alsl.d	$a4, $a1, $a4, 2
	alsl.d	$a3, $a1, $a3, 2
	sub.d	$a1, $t8, $a1
	.p2align	4, , 16
.LBB0_100:                              # %for.body426
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a5, 0
	fld.s	$fa3, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB0_100
.LBB0_101:                              # %for.cond.cleanup425
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
.LBB0_102:                              # %vector.memcheck694
	sub.d	$a5, $a3, $t6
	ori	$a2, $zero, 64
	move	$a1, $zero
	bltu	$a5, $a2, .LBB0_83
# %bb.103:                              # %vector.memcheck694
	sub.d	$a5, $a3, $t0
	bltu	$a5, $a2, .LBB0_83
# %bb.104:                              # %vector.memcheck694
	sub.d	$a2, $a3, $t7
	ori	$a5, $zero, 64
	bltu	$a2, $a5, .LBB0_83
# %bb.105:                              # %vector.main.loop.iter.check705
	ori	$a1, $zero, 16
	bgeu	$a7, $a1, .LBB0_181
# %bb.106:
	move	$a1, $zero
	b	.LBB0_185
.LBB0_107:                              # %vector.memcheck737
	sub.d	$a5, $a4, $t3
	ori	$a2, $zero, 64
	move	$a1, $zero
	bltu	$a5, $a2, .LBB0_87
# %bb.108:                              # %vector.memcheck737
	sub.d	$a5, $a4, $t4
	bltu	$a5, $a2, .LBB0_87
# %bb.109:                              # %vector.memcheck737
	sub.d	$a5, $a4, $t0
	ori	$a2, $zero, 64
	bltu	$a5, $a2, .LBB0_87
# %bb.110:                              # %vector.memcheck737
	sub.d	$a5, $a4, $t5
	bltu	$a5, $a2, .LBB0_87
# %bb.111:                              # %vector.main.loop.iter.check750
	ori	$a1, $zero, 16
	bgeu	$a7, $a1, .LBB0_209
# %bb.112:
	move	$a1, $zero
	b	.LBB0_213
.LBB0_113:                              # %vector.memcheck789
	sub.d	$a5, $s1, $a6
	ori	$a2, $zero, 64
	move	$a1, $zero
	bltu	$a5, $a2, .LBB0_91
# %bb.114:                              # %vector.memcheck789
	sub.d	$a5, $s1, $t2
	bltu	$a5, $a2, .LBB0_91
# %bb.115:                              # %vector.main.loop.iter.check798
	ori	$a1, $zero, 16
	bgeu	$a7, $a1, .LBB0_188
# %bb.116:
	move	$a1, $zero
	b	.LBB0_192
.LBB0_117:                              # %vector.memcheck831
	sub.d	$a5, $s2, $a0
	ori	$a2, $zero, 64
	move	$a1, $zero
	bltu	$a5, $a2, .LBB0_95
# %bb.118:                              # %vector.memcheck831
	sub.d	$a5, $s2, $t0
	bltu	$a5, $a2, .LBB0_95
# %bb.119:                              # %vector.main.loop.iter.check840
	ori	$a1, $zero, 16
	lu12i.w	$a2, 260096
	bgeu	$a7, $a1, .LBB0_195
# %bb.120:
	move	$a1, $zero
	b	.LBB0_199
.LBB0_121:                              # %vector.memcheck869
	sub.d	$a5, $a0, $a3
	ori	$a2, $zero, 64
	move	$a1, $zero
	bltu	$a5, $a2, .LBB0_99
# %bb.122:                              # %vector.memcheck869
	sub.d	$a5, $a0, $a4
	bltu	$a5, $a2, .LBB0_99
# %bb.123:                              # %vector.memcheck869
	sub.d	$a5, $a0, $s1
	ori	$a2, $zero, 64
	bltu	$a5, $a2, .LBB0_99
# %bb.124:                              # %vector.memcheck869
	sub.d	$a5, $a0, $s2
	bltu	$a5, $a2, .LBB0_99
# %bb.125:                              # %vector.main.loop.iter.check882
	ori	$a1, $zero, 16
	bgeu	$a7, $a1, .LBB0_216
# %bb.126:
	move	$a1, $zero
	b	.LBB0_220
.LBB0_127:                              # %vector.main.loop.iter.check665
	ori	$a1, $zero, 16
	bgeu	$a7, $a1, .LBB0_174
# %bb.128:
	move	$a1, $zero
	b	.LBB0_178
.LBB0_129:                              # %vector.memcheck453
	sub.d	$s1, $t3, $t6
	ori	$t1, $zero, 32
	move	$a5, $zero
	bltu	$s1, $t1, .LBB0_10
# %bb.130:                              # %vector.memcheck453
	sub.d	$s1, $a6, $t6
	bltu	$s1, $t1, .LBB0_10
# %bb.131:                              # %vector.memcheck453
	sub.d	$s1, $t6, $t8
	ori	$t1, $zero, 32
	bltu	$s1, $t1, .LBB0_10
# %bb.132:                              # %vector.memcheck453
	sub.d	$s1, $t6, $s3
	bltu	$s1, $t1, .LBB0_10
# %bb.133:                              # %vector.memcheck453
	sub.d	$s1, $t6, $s4
	ori	$t1, $zero, 32
	bltu	$s1, $t1, .LBB0_10
# %bb.134:                              # %vector.memcheck453
	sub.d	$s1, $a6, $t3
	bltu	$s1, $t1, .LBB0_10
# %bb.135:                              # %vector.memcheck453
	sub.d	$s1, $t3, $t8
	ori	$t1, $zero, 32
	bltu	$s1, $t1, .LBB0_10
# %bb.136:                              # %vector.memcheck453
	sub.d	$s1, $t3, $s3
	bltu	$s1, $t1, .LBB0_10
# %bb.137:                              # %vector.memcheck453
	sub.d	$s1, $t3, $s4
	ori	$t1, $zero, 32
	bltu	$s1, $t1, .LBB0_10
# %bb.138:                              # %vector.memcheck453
	sub.d	$s1, $a6, $t8
	bltu	$s1, $t1, .LBB0_10
# %bb.139:                              # %vector.memcheck453
	sub.d	$s1, $a6, $s3
	ori	$t1, $zero, 32
	bltu	$s1, $t1, .LBB0_10
# %bb.140:                              # %vector.memcheck453
	sub.d	$s1, $a6, $s4
	bltu	$s1, $t1, .LBB0_10
# %bb.141:                              # %vector.ph479
	bstrpick.d	$a5, $a7, 30, 3
	slli.d	$a5, $a5, 3
	xvreplve0.w	$xr9, $xr7
	xvreplve0.w	$xr10, $xr8
	xvreplve0.w	$xr11, $xr6
	lu12i.w	$t1, -262144
	xvreplgr2vr.w	$xr12, $t1
	move	$t1, $t8
	move	$s1, $s3
	move	$s6, $s4
	move	$s7, $t6
	move	$s8, $t3
	move	$ra, $a6
	move	$s5, $a5
	.p2align	4, , 16
.LBB0_142:                              # %vector.body488
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr13, $t1, 0
	xvld	$xr14, $s6, 0
	xvld	$xr15, $s1, 0
	xvfsub.s	$xr16, $xr13, $xr14
	xvfdiv.s	$xr16, $xr16, $xr9
	xvfmadd.s	$xr13, $xr15, $xr12, $xr13
	xvfadd.s	$xr13, $xr13, $xr14
	xvfdiv.s	$xr13, $xr13, $xr10
	xvfmadd.s	$xr14, $xr16, $xr11, $xr15
	xvfmul.s	$xr15, $xr11, $xr13
	xvfmadd.s	$xr14, $xr15, $xr11, $xr14
	xvst	$xr14, $s7, 0
	xvfadd.s	$xr14, $xr13, $xr13
	xvfmadd.s	$xr14, $xr14, $xr11, $xr16
	xvst	$xr14, $s8, 0
	xvst	$xr13, $ra, 0
	addi.d	$s5, $s5, -8
	addi.d	$ra, $ra, 32
	addi.d	$s8, $s8, 32
	addi.d	$s7, $s7, 32
	addi.d	$s6, $s6, 32
	addi.d	$s1, $s1, 32
	addi.d	$t1, $t1, 32
	bnez	$s5, .LBB0_142
# %bb.143:                              # %middle.block494
	bne	$a5, $a7, .LBB0_10
	b	.LBB0_17
.LBB0_144:                              # %vector.memcheck409
	sub.d	$t1, $t3, $t6
	ori	$a5, $zero, 32
	move	$s5, $zero
	bltu	$t1, $a5, .LBB0_5
# %bb.145:                              # %vector.memcheck409
	sub.d	$t1, $a6, $t6
	bltu	$t1, $a5, .LBB0_5
# %bb.146:                              # %vector.memcheck409
	sub.d	$t1, $t6, $t8
	ori	$a5, $zero, 32
	bltu	$t1, $a5, .LBB0_5
# %bb.147:                              # %vector.memcheck409
	sub.d	$t1, $t6, $s3
	bltu	$t1, $a5, .LBB0_5
# %bb.148:                              # %vector.memcheck409
	sub.d	$t1, $t6, $s4
	ori	$a5, $zero, 32
	bltu	$t1, $a5, .LBB0_5
# %bb.149:                              # %vector.memcheck409
	sub.d	$t1, $a6, $t3
	bltu	$t1, $a5, .LBB0_5
# %bb.150:                              # %vector.memcheck409
	sub.d	$t1, $t3, $t8
	ori	$a5, $zero, 32
	bltu	$t1, $a5, .LBB0_5
# %bb.151:                              # %vector.memcheck409
	sub.d	$t1, $t3, $s3
	bltu	$t1, $a5, .LBB0_5
# %bb.152:                              # %vector.memcheck409
	sub.d	$t1, $t3, $s4
	ori	$a5, $zero, 32
	bltu	$t1, $a5, .LBB0_5
# %bb.153:                              # %vector.memcheck409
	sub.d	$t1, $a6, $t8
	bltu	$t1, $a5, .LBB0_5
# %bb.154:                              # %vector.memcheck409
	sub.d	$t1, $a6, $s3
	ori	$a5, $zero, 32
	bltu	$t1, $a5, .LBB0_5
# %bb.155:                              # %vector.memcheck409
	sub.d	$t1, $a6, $s4
	bltu	$t1, $a5, .LBB0_5
# %bb.156:                              # %vector.ph435
	bstrpick.d	$a5, $a7, 30, 3
	slli.d	$s5, $a5, 3
	xvreplve0.w	$xr9, $xr7
	xvreplve0.w	$xr10, $xr8
	xvreplve0.w	$xr11, $xr6
	lu12i.w	$a5, -262144
	xvreplgr2vr.w	$xr12, $a5
	move	$t1, $t8
	move	$s1, $s3
	move	$s6, $s4
	move	$s7, $t6
	move	$s8, $t3
	move	$ra, $a6
	move	$a5, $s5
	.p2align	4, , 16
.LBB0_157:                              # %vector.body444
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr13, $t1, 0
	xvld	$xr14, $s6, 0
	xvld	$xr15, $s1, 0
	xvfsub.s	$xr16, $xr13, $xr14
	xvfdiv.s	$xr16, $xr16, $xr9
	xvfmadd.s	$xr13, $xr15, $xr12, $xr13
	xvfadd.s	$xr13, $xr13, $xr14
	xvfdiv.s	$xr13, $xr13, $xr10
	xvfmadd.s	$xr14, $xr16, $xr11, $xr15
	xvfmul.s	$xr15, $xr11, $xr13
	xvfmadd.s	$xr14, $xr15, $xr11, $xr14
	xvst	$xr14, $s7, 0
	xvfadd.s	$xr14, $xr13, $xr13
	xvfmadd.s	$xr14, $xr14, $xr11, $xr16
	xvst	$xr14, $s8, 0
	xvst	$xr13, $ra, 0
	addi.d	$a5, $a5, -8
	addi.d	$ra, $ra, 32
	addi.d	$s8, $s8, 32
	addi.d	$s7, $s7, 32
	addi.d	$s6, $s6, 32
	addi.d	$s1, $s1, 32
	addi.d	$t1, $t1, 32
	bnez	$a5, .LBB0_157
# %bb.158:                              # %middle.block450
	bne	$s5, $a7, .LBB0_5
	b	.LBB0_17
.LBB0_159:                              # %vector.memcheck
	sub.d	$t1, $t3, $t6
	ori	$a5, $zero, 32
	move	$s5, $zero
	bltu	$t1, $a5, .LBB0_15
# %bb.160:                              # %vector.memcheck
	sub.d	$t1, $a6, $t6
	bltu	$t1, $a5, .LBB0_15
# %bb.161:                              # %vector.memcheck
	sub.d	$t1, $t6, $t8
	ori	$a5, $zero, 32
	bltu	$t1, $a5, .LBB0_15
# %bb.162:                              # %vector.memcheck
	sub.d	$t1, $t6, $s3
	bltu	$t1, $a5, .LBB0_15
# %bb.163:                              # %vector.memcheck
	sub.d	$t1, $t6, $s4
	ori	$a5, $zero, 32
	bltu	$t1, $a5, .LBB0_15
# %bb.164:                              # %vector.memcheck
	sub.d	$t1, $a6, $t3
	bltu	$t1, $a5, .LBB0_15
# %bb.165:                              # %vector.memcheck
	sub.d	$t1, $t3, $t8
	ori	$a5, $zero, 32
	bltu	$t1, $a5, .LBB0_15
# %bb.166:                              # %vector.memcheck
	sub.d	$t1, $t3, $s3
	bltu	$t1, $a5, .LBB0_15
# %bb.167:                              # %vector.memcheck
	sub.d	$t1, $t3, $s4
	ori	$a5, $zero, 32
	bltu	$t1, $a5, .LBB0_15
# %bb.168:                              # %vector.memcheck
	sub.d	$t1, $a6, $t8
	bltu	$t1, $a5, .LBB0_15
# %bb.169:                              # %vector.memcheck
	sub.d	$t1, $a6, $s3
	ori	$a5, $zero, 32
	bltu	$t1, $a5, .LBB0_15
# %bb.170:                              # %vector.memcheck
	sub.d	$t1, $a6, $s4
	bltu	$t1, $a5, .LBB0_15
# %bb.171:                              # %vector.ph
	bstrpick.d	$a5, $a7, 30, 3
	slli.d	$s5, $a5, 3
	xvreplve0.w	$xr9, $xr7
	xvreplve0.w	$xr10, $xr8
	xvreplve0.w	$xr11, $xr6
	lu12i.w	$a5, -262144
	xvreplgr2vr.w	$xr12, $a5
	move	$t1, $t8
	move	$s1, $s3
	move	$s6, $s4
	move	$s7, $t6
	move	$s8, $t3
	move	$ra, $a6
	move	$a5, $s5
	.p2align	4, , 16
.LBB0_172:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr13, $t1, 0
	xvld	$xr14, $s6, 0
	xvld	$xr15, $s1, 0
	xvfsub.s	$xr16, $xr13, $xr14
	xvfdiv.s	$xr16, $xr16, $xr9
	xvfmadd.s	$xr13, $xr15, $xr12, $xr13
	xvfadd.s	$xr13, $xr13, $xr14
	xvfdiv.s	$xr13, $xr13, $xr10
	xvfmadd.s	$xr14, $xr16, $xr11, $xr15
	xvfmul.s	$xr15, $xr11, $xr13
	xvfmadd.s	$xr14, $xr15, $xr11, $xr14
	xvst	$xr14, $s7, 0
	xvfadd.s	$xr14, $xr13, $xr13
	xvfmadd.s	$xr14, $xr14, $xr11, $xr16
	xvst	$xr14, $s8, 0
	xvst	$xr13, $ra, 0
	addi.d	$a5, $a5, -8
	addi.d	$ra, $ra, 32
	addi.d	$s8, $s8, 32
	addi.d	$s7, $s7, 32
	addi.d	$s6, $s6, 32
	addi.d	$s1, $s1, 32
	addi.d	$t1, $t1, 32
	bnez	$a5, .LBB0_172
# %bb.173:                              # %middle.block
	bne	$s5, $a7, .LBB0_15
	b	.LBB0_17
.LBB0_174:                              # %vector.ph666
	bstrpick.d	$a1, $t8, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $s3, 32
	addi.d	$a5, $fp, 32
	move	$t1, $a1
	.p2align	4, , 16
.LBB0_175:                              # %vector.body669
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr3, $a5, 0
	xvld	$xr4, $a2, -32
	xvld	$xr5, $a2, 0
	xvfadd.s	$xr0, $xr0, $xr4
	xvfadd.s	$xr3, $xr3, $xr5
	xvst	$xr0, $a2, -32
	xvst	$xr3, $a2, 0
	addi.d	$t1, $t1, -16
	addi.d	$a2, $a2, 64
	addi.d	$a5, $a5, 64
	bnez	$t1, .LBB0_175
# %bb.176:                              # %middle.block676
	beq	$a1, $t8, .LBB0_81
# %bb.177:                              # %vec.epilog.iter.check681
	andi	$a2, $t8, 12
	beqz	$a2, .LBB0_79
.LBB0_178:                              # %vec.epilog.ph680
	move	$t1, $a1
	bstrpick.d	$a1, $t8, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $t1, $a1
	alsl.d	$a5, $t1, $s3, 2
	alsl.d	$t1, $t1, $fp, 2
	.p2align	4, , 16
.LBB0_179:                              # %vec.epilog.vector.body686
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t1, 0
	vld	$vr3, $a5, 0
	vfadd.s	$vr0, $vr0, $vr3
	vst	$vr0, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	addi.d	$t1, $t1, 16
	bnez	$a2, .LBB0_179
# %bb.180:                              # %vec.epilog.middle.block691
	bne	$a1, $t8, .LBB0_79
	b	.LBB0_81
.LBB0_181:                              # %vector.ph706
	bstrpick.d	$a1, $t8, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $a3, 32
	addi.d	$a5, $t7, 32
	addi.d	$t1, $t0, 32
	addi.d	$fp, $t6, 32
	move	$s0, $a1
	.p2align	4, , 16
.LBB0_182:                              # %vector.body709
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $fp, -32
	xvld	$xr3, $fp, 0
	xvld	$xr4, $t1, -32
	xvld	$xr5, $t1, 0
	xvld	$xr6, $a5, -32
	xvld	$xr7, $a5, 0
	xvfmul.s	$xr0, $xr0, $xr4
	xvfmul.s	$xr3, $xr3, $xr5
	xvfdiv.s	$xr0, $xr0, $xr6
	xvfdiv.s	$xr3, $xr3, $xr7
	xvst	$xr0, $a2, -32
	xvst	$xr3, $a2, 0
	addi.d	$s0, $s0, -16
	addi.d	$a2, $a2, 64
	addi.d	$a5, $a5, 64
	addi.d	$t1, $t1, 64
	addi.d	$fp, $fp, 64
	bnez	$s0, .LBB0_182
# %bb.183:                              # %middle.block718
	beq	$a1, $t8, .LBB0_85
# %bb.184:                              # %vec.epilog.iter.check723
	andi	$a2, $t8, 12
	beqz	$a2, .LBB0_83
.LBB0_185:                              # %vec.epilog.ph722
	move	$s0, $a1
	bstrpick.d	$a1, $t8, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $s0, $a1
	alsl.d	$a5, $s0, $a3, 2
	alsl.d	$t1, $s0, $t7, 2
	alsl.d	$fp, $s0, $t0, 2
	alsl.d	$s0, $s0, $t6, 2
	.p2align	4, , 16
.LBB0_186:                              # %vec.epilog.vector.body728
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $s0, 0
	vld	$vr3, $fp, 0
	vld	$vr4, $t1, 0
	vfmul.s	$vr0, $vr0, $vr3
	vfdiv.s	$vr0, $vr0, $vr4
	vst	$vr0, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	addi.d	$t1, $t1, 16
	addi.d	$fp, $fp, 16
	addi.d	$s0, $s0, 16
	bnez	$a2, .LBB0_186
# %bb.187:                              # %vec.epilog.middle.block734
	bne	$a1, $t8, .LBB0_83
	b	.LBB0_85
.LBB0_188:                              # %vector.ph799
	bstrpick.d	$a1, $t8, 30, 4
	slli.d	$a1, $a1, 4
	xvreplve0.w	$xr0, $xr2
	addi.d	$a2, $s1, 32
	addi.d	$a5, $t2, 32
	addi.d	$t1, $a6, 32
	move	$t3, $a1
	.p2align	4, , 16
.LBB0_189:                              # %vector.body804
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $t1, -32
	xvld	$xr3, $t1, 0
	xvld	$xr4, $a5, -32
	xvld	$xr5, $a5, 0
	xvfmul.s	$xr1, $xr0, $xr1
	xvfmul.s	$xr3, $xr0, $xr3
	xvfmul.s	$xr1, $xr1, $xr4
	xvfmul.s	$xr3, $xr3, $xr5
	xvst	$xr1, $a2, -32
	xvst	$xr3, $a2, 0
	addi.d	$t3, $t3, -16
	addi.d	$a2, $a2, 64
	addi.d	$a5, $a5, 64
	addi.d	$t1, $t1, 64
	bnez	$t3, .LBB0_189
# %bb.190:                              # %middle.block811
	beq	$a1, $t8, .LBB0_93
# %bb.191:                              # %vec.epilog.iter.check816
	andi	$a2, $t8, 12
	beqz	$a2, .LBB0_91
.LBB0_192:                              # %vec.epilog.ph815
	move	$t3, $a1
	bstrpick.d	$a1, $t8, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.w	$vr0, $vr2, 0
	sub.d	$a2, $t3, $a1
	alsl.d	$a5, $t3, $s1, 2
	alsl.d	$t1, $t3, $t2, 2
	alsl.d	$t3, $t3, $a6, 2
	.p2align	4, , 16
.LBB0_193:                              # %vec.epilog.vector.body823
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t3, 0
	vld	$vr3, $t1, 0
	vfmul.s	$vr1, $vr0, $vr1
	vfmul.s	$vr1, $vr1, $vr3
	vst	$vr1, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	addi.d	$t1, $t1, 16
	addi.d	$t3, $t3, 16
	bnez	$a2, .LBB0_193
# %bb.194:                              # %vec.epilog.middle.block828
	bne	$a1, $t8, .LBB0_91
	b	.LBB0_93
.LBB0_195:                              # %vector.ph841
	bstrpick.d	$a1, $t8, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a5, $s2, 32
	addi.d	$a6, $t0, 32
	addi.d	$t1, $a0, 32
	xvreplgr2vr.w	$xr0, $a2
	move	$t2, $a1
	.p2align	4, , 16
.LBB0_196:                              # %vector.body844
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a6, -32
	xvld	$xr2, $a6, 0
	xvld	$xr3, $t1, -32
	xvld	$xr4, $t1, 0
	xvfsub.s	$xr1, $xr0, $xr1
	xvfsub.s	$xr2, $xr0, $xr2
	xvfmul.s	$xr1, $xr3, $xr1
	xvfmul.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a5, -32
	xvst	$xr2, $a5, 0
	addi.d	$t2, $t2, -16
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB0_196
# %bb.197:                              # %middle.block851
	beq	$a1, $t8, .LBB0_97
# %bb.198:                              # %vec.epilog.iter.check856
	andi	$a5, $t8, 12
	beqz	$a5, .LBB0_95
.LBB0_199:                              # %vec.epilog.ph855
	move	$t2, $a1
	bstrpick.d	$a1, $t8, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a5, $t2, $a1
	alsl.d	$a6, $t2, $s2, 2
	alsl.d	$t1, $t2, $t0, 2
	alsl.d	$t2, $t2, $a0, 2
	vreplgr2vr.w	$vr0, $a2
	.p2align	4, , 16
.LBB0_200:                              # %vec.epilog.vector.body861
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t1, 0
	vld	$vr2, $t2, 0
	vfsub.s	$vr1, $vr0, $vr1
	vfmul.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	bnez	$a5, .LBB0_200
# %bb.201:                              # %vec.epilog.middle.block866
	bne	$a1, $t8, .LBB0_95
	b	.LBB0_97
.LBB0_202:                              # %vector.ph548
	bstrpick.d	$a2, $t8, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$t1, $t4, 32
	addi.d	$s1, $t2, 32
	addi.d	$s2, $t0, 32
	addi.d	$s3, $t5, 32
	addi.d	$s4, $t7, 32
	lu12i.w	$a5, -262144
	xvreplgr2vr.w	$xr0, $a5
	move	$s5, $a2
	.p2align	4, , 16
.LBB0_203:                              # %vector.body551
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $t1, -32
	xvld	$xr4, $t1, 0
	xvfadd.s	$xr6, $xr3, $xr0
	xvfadd.s	$xr7, $xr4, $xr0
	xvld	$xr8, $s2, -32
	xvld	$xr9, $s2, 0
	xvld	$xr10, $s4, -32
	xvld	$xr11, $s4, 0
	xvld	$xr12, $s3, -32
	xvld	$xr13, $s3, 0
	xvfadd.s	$xr8, $xr8, $xr8
	xvfadd.s	$xr9, $xr9, $xr9
	xvfmul.s	$xr10, $xr10, $xr12
	xvfmul.s	$xr11, $xr11, $xr13
	xvfdiv.s	$xr8, $xr8, $xr10
	xvfdiv.s	$xr9, $xr9, $xr11
	xvfmadd.s	$xr3, $xr3, $xr6, $xr8
	xvfmadd.s	$xr4, $xr4, $xr7, $xr9
	xvst	$xr3, $s1, -32
	xvst	$xr4, $s1, 0
	addi.d	$s5, $s5, -16
	addi.d	$t1, $t1, 64
	addi.d	$s1, $s1, 64
	addi.d	$s2, $s2, 64
	addi.d	$s3, $s3, 64
	addi.d	$s4, $s4, 64
	bnez	$s5, .LBB0_203
# %bb.204:                              # %middle.block562
	beq	$a2, $t8, .LBB0_39
# %bb.205:                              # %vec.epilog.iter.check
	andi	$a5, $t8, 12
	beqz	$a5, .LBB0_37
.LBB0_206:                              # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $t8, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$t1, $a5, $a2
	alsl.d	$s1, $a5, $t2, 2
	alsl.d	$s2, $a5, $t5, 2
	alsl.d	$s3, $a5, $t7, 2
	alsl.d	$s4, $a5, $t0, 2
	alsl.d	$a5, $a5, $t4, 2
	lu12i.w	$s5, -262144
	vreplgr2vr.w	$vr0, $s5
	.p2align	4, , 16
.LBB0_207:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a5, 0
	vld	$vr4, $s4, 0
	vld	$vr6, $s3, 0
	vld	$vr7, $s2, 0
	vfadd.s	$vr8, $vr3, $vr0
	vfadd.s	$vr4, $vr4, $vr4
	vfmul.s	$vr6, $vr6, $vr7
	vfdiv.s	$vr4, $vr4, $vr6
	vfmadd.s	$vr3, $vr3, $vr8, $vr4
	vst	$vr3, $s1, 0
	addi.d	$t1, $t1, 4
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, 16
	addi.d	$s3, $s3, 16
	addi.d	$s4, $s4, 16
	addi.d	$a5, $a5, 16
	bnez	$t1, .LBB0_207
# %bb.208:                              # %vec.epilog.middle.block
	bne	$a2, $t8, .LBB0_37
	b	.LBB0_39
.LBB0_209:                              # %vector.ph751
	bstrpick.d	$a1, $t8, 30, 4
	slli.d	$a1, $a1, 4
	xvreplve0.w	$xr0, $xr1
	addi.d	$a2, $t3, 32
	addi.d	$a5, $a4, 32
	addi.d	$t1, $t4, 32
	addi.d	$t6, $t5, 32
	addi.d	$t7, $t0, 32
	move	$fp, $a1
	.p2align	4, , 16
.LBB0_210:                              # %vector.body756
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a2, -32
	xvld	$xr4, $a2, 0
	xvld	$xr5, $t1, -32
	xvld	$xr6, $t1, 0
	xvld	$xr7, $t7, -32
	xvld	$xr8, $t7, 0
	xvfmul.s	$xr3, $xr0, $xr3
	xvfmul.s	$xr4, $xr0, $xr4
	xvfsub.s	$xr5, $xr5, $xr7
	xvfsub.s	$xr6, $xr6, $xr8
	xvld	$xr7, $t6, -32
	xvld	$xr8, $t6, 0
	xvfmul.s	$xr3, $xr3, $xr5
	xvfmul.s	$xr4, $xr4, $xr6
	xvfdiv.s	$xr3, $xr3, $xr7
	xvfdiv.s	$xr4, $xr4, $xr8
	xvst	$xr3, $a5, -32
	xvst	$xr4, $a5, 0
	addi.d	$fp, $fp, -16
	addi.d	$a2, $a2, 64
	addi.d	$a5, $a5, 64
	addi.d	$t1, $t1, 64
	addi.d	$t6, $t6, 64
	addi.d	$t7, $t7, 64
	bnez	$fp, .LBB0_210
# %bb.211:                              # %middle.block767
	beq	$a1, $t8, .LBB0_89
# %bb.212:                              # %vec.epilog.iter.check772
	andi	$a2, $t8, 12
	beqz	$a2, .LBB0_87
.LBB0_213:                              # %vec.epilog.ph771
	move	$fp, $a1
	bstrpick.d	$a1, $t8, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.w	$vr0, $vr1, 0
	sub.d	$a2, $fp, $a1
	alsl.d	$a5, $fp, $a4, 2
	alsl.d	$t1, $fp, $t5, 2
	alsl.d	$t6, $fp, $t0, 2
	alsl.d	$t7, $fp, $t4, 2
	alsl.d	$fp, $fp, $t3, 2
	.p2align	4, , 16
.LBB0_214:                              # %vec.epilog.vector.body779
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t7, 0
	vld	$vr4, $t6, 0
	vld	$vr5, $fp, 0
	vld	$vr6, $t1, 0
	vfsub.s	$vr3, $vr3, $vr4
	vfmul.s	$vr4, $vr0, $vr5
	vfmul.s	$vr3, $vr4, $vr3
	vfdiv.s	$vr3, $vr3, $vr6
	vst	$vr3, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	addi.d	$t1, $t1, 16
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	addi.d	$fp, $fp, 16
	bnez	$a2, .LBB0_214
# %bb.215:                              # %vec.epilog.middle.block786
	bne	$a1, $t8, .LBB0_87
	b	.LBB0_89
.LBB0_216:                              # %vector.ph883
	bstrpick.d	$a1, $t8, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $a3, 32
	addi.d	$a5, $a0, 32
	addi.d	$a6, $a4, 32
	addi.d	$a7, $s2, 32
	addi.d	$t0, $s1, 32
	move	$t1, $a1
	.p2align	4, , 16
.LBB0_217:                              # %vector.body886
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvld	$xr2, $a6, -32
	xvld	$xr3, $a6, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvld	$xr2, $t0, -32
	xvld	$xr3, $t0, 0
	xvld	$xr4, $a7, -32
	xvld	$xr5, $a7, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvfadd.s	$xr0, $xr0, $xr4
	xvfadd.s	$xr1, $xr1, $xr5
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$t1, $t1, -16
	addi.d	$a2, $a2, 64
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB0_217
# %bb.218:                              # %middle.block897
	beq	$a1, $t8, .LBB0_101
# %bb.219:                              # %vec.epilog.iter.check902
	andi	$a2, $t8, 12
	beqz	$a2, .LBB0_99
.LBB0_220:                              # %vec.epilog.ph901
	move	$t1, $a1
	bstrpick.d	$a1, $t8, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $t1, $a1
	alsl.d	$a5, $t1, $a0, 2
	alsl.d	$a6, $t1, $s2, 2
	alsl.d	$a7, $t1, $s1, 2
	alsl.d	$t0, $t1, $a4, 2
	alsl.d	$t1, $t1, $a3, 2
	.p2align	4, , 16
.LBB0_221:                              # %vec.epilog.vector.body907
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t1, 0
	vld	$vr1, $t0, 0
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, 0
	vfadd.s	$vr0, $vr0, $vr1
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr0, $vr0, $vr3
	vst	$vr0, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	bnez	$a2, .LBB0_221
# %bb.222:                              # %vec.epilog.middle.block914
	bne	$a1, $t8, .LBB0_99
	b	.LBB0_101
.Lfunc_end0:
	.size	attenuate_fluxes, .Lfunc_end0-attenuate_fluxes
                                        # -- End function
	.globl	interpolateTable                # -- Begin function interpolateTable
	.p2align	5
	.type	interpolateTable,@function
interpolateTable:                       # @interpolateTable
# %bb.0:                                # %entry
	fld.s	$fa1, $a0, 12
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB1_2
# %bb.1:                                # %return
	vldi	$vr0, -1168
	ret
.LBB1_2:                                # %if.else
	fld.s	$fa1, $a0, 8
	fdiv.s	$fa2, $fa0, $fa1
	vldi	$vr3, -1184
	fmadd.s	$fa1, $fa1, $fa3, $fa2
	ld.d	$a0, $a0, 0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a1, $fa1
	slli.w	$a1, $a1, 1
	alsl.d	$a2, $a1, $a0, 2
	slli.d	$a1, $a1, 2
	fldx.s	$fa1, $a0, $a1
	fld.s	$fa2, $a2, 4
	fmadd.s	$fa0, $fa1, $fa0, $fa2
	ret
.Lfunc_end1:
	.size	interpolateTable, .Lfunc_end1-interpolateTable
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function transport_sweep
.LCPI2_0:
	.dword	0x3690000000000000              # double 7.0064923216240854E-46
	.text
	.globl	transport_sweep
	.p2align	5
	.type	transport_sweep,@function
transport_sweep:                        # @transport_sweep
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 408                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 360                  # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a1, $a1, 72
	move	$s0, $a0
	bnez	$a1, .LBB2_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %if.end
	fld.s	$fs0, $fp, 60
	ld.w	$s2, $fp, 44
	ld.w	$s5, $fp, 36
	ld.w	$s3, $fp, 8
	ld.w	$s4, $fp, 12
	ori	$a0, $zero, 14
	mul.w	$a0, $s5, $a0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 248
	alsl.d	$a1, $s5, $a0, 2
	st.d	$a1, $sp, 256
	alsl.d	$a1, $s5, $a1, 2
	st.d	$a1, $sp, 264
	alsl.d	$a1, $s5, $a1, 2
	st.d	$a1, $sp, 272
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a1, $s5, $a1, 2
	st.d	$a1, $sp, 280
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$a1, $s5, $a1, 2
	st.d	$a1, $sp, 288
	alsl.d	$a1, $s5, $a1, 2
	st.d	$a1, $sp, 296
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a1, $s5, $a1, 2
	st.d	$a1, $sp, 304
	alsl.d	$a1, $s5, $a1, 2
	st.d	$a1, $sp, 312
	alsl.d	$a3, $s5, $a1, 2
	alsl.d	$a1, $s5, $a3, 2
	st.d	$a1, $sp, 328
	alsl.d	$a1, $s5, $a1, 2
	st.d	$a1, $sp, 336
	alsl.d	$a1, $s5, $a1, 2
	st.d	$a1, $sp, 344
	ld.d	$s1, $fp, 80
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	alsl.d	$a1, $s5, $a1, 2
	st.d	$a1, $sp, 352
	ori	$a2, $zero, 1
	st.d	$a3, $sp, 320
	blt	$s1, $a2, .LBB2_87
# %bb.3:                                # %for.cond47.preheader.lr.ph
	ld.w	$a1, $fp, 32
	blt	$a1, $a2, .LBB2_87
# %bb.4:                                # %for.cond47.preheader.preheader
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	move	$s7, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	movgr2fr.w	$fa0, $s2
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $sp, 132                  # 4-byte Folded Spill
	fcvt.d.s	$fa0, $fa0
	mul.d	$a2, $s4, $s3
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs3, $fa0, $fa1
	fcvt.s.d	$fs4, $fs3
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a2, $a3, 5
	alsl.d	$a2, $a3, $a2, 2
	add.d	$a4, $a0, $a2
	slli.d	$a2, $a3, 3
	alsl.d	$a2, $a3, $a2, 2
	add.d	$a2, $a0, $a2
	alsl.d	$a0, $a3, $a0, 4
	alsl.d	$a3, $a3, $a0, 3
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 32
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 32
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 32
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s5, $zero, 1
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_5:                                # %for.cond.cleanup50.loopexit
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s1, $fp, 80
.LBB2_6:                                # %for.cond.cleanup50
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bge	$a0, $s1, .LBB2_88
.LBB2_7:                                # %for.cond47.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_86 Depth 2
                                        #     Child Loop BB2_11 Depth 2
                                        #       Child Loop BB2_15 Depth 3
                                        #         Child Loop BB2_18 Depth 4
                                        #           Child Loop BB2_22 Depth 5
                                        #             Child Loop BB2_43 Depth 6
                                        #             Child Loop BB2_47 Depth 6
                                        #             Child Loop BB2_35 Depth 6
                                        #             Child Loop BB2_51 Depth 6
                                        #             Child Loop BB2_74 Depth 6
                                        #             Child Loop BB2_56 Depth 6
                                        #             Child Loop BB2_79 Depth 6
                                        #             Child Loop BB2_83 Depth 6
                                        #             Child Loop BB2_62 Depth 6
	blt	$a1, $s5, .LBB2_6
# %bb.8:                                # %for.body51.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s2, $s0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	slli.d	$s3, $a0, 5
	add.d	$a0, $s2, $s3
	ld.d	$a0, $a0, 8
	blt	$a0, $s5, .LBB2_85
# %bb.9:                                # %for.body51.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$s1, $zero
	ori	$s4, $zero, 1
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               # %for.cond.cleanup66
                                        #   in Loop: Header=BB2_11 Depth=2
	ld.w	$a1, $fp, 32
	addi.d	$s1, $s1, 1
	ori	$s5, $zero, 1
	bge	$s1, $a1, .LBB2_5
.LBB2_11:                               # %for.body51
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_15 Depth 3
                                        #         Child Loop BB2_18 Depth 4
                                        #           Child Loop BB2_22 Depth 5
                                        #             Child Loop BB2_43 Depth 6
                                        #             Child Loop BB2_47 Depth 6
                                        #             Child Loop BB2_35 Depth 6
                                        #             Child Loop BB2_51 Depth 6
                                        #             Child Loop BB2_74 Depth 6
                                        #             Child Loop BB2_56 Depth 6
                                        #             Child Loop BB2_79 Depth 6
                                        #             Child Loop BB2_83 Depth 6
                                        #             Child Loop BB2_62 Depth 6
	bstrpick.d	$a0, $a1, 31, 31
	ld.d	$a2, $s0, 24
	add.w	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 32, 1
	slli.d	$a1, $s1, 2
	fldx.s	$fa0, $a2, $a1
	xor	$a0, $s1, $a0
	sltu	$a0, $zero, $a0
	and	$s4, $a0, $s4
	fcvt.d.s	$fs0, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s3
	ld.d	$a0, $a0, 8
	blt	$a0, $s5, .LBB2_10
# %bb.12:                               # %for.body67.lr.ph
                                        #   in Loop: Header=BB2_11 Depth=2
	move	$a1, $zero
	move	$s5, $zero
	fcvt.s.d	$fs1, $fa0
	ld.w	$a0, $fp, 88
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	xori	$a0, $s4, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $s4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_13:                               # %for.body67.for.cond.cleanup80_crit_edge
                                        #   in Loop: Header=BB2_15 Depth=3
	add.d	$a0, $s2, $s3
	ld.d	$a0, $a0, 8
.LBB2_14:                               # %for.cond.cleanup80
                                        #   in Loop: Header=BB2_15 Depth=3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB2_10
.LBB2_15:                               # %for.body67
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_18 Depth 4
                                        #           Child Loop BB2_22 Depth 5
                                        #             Child Loop BB2_43 Depth 6
                                        #             Child Loop BB2_47 Depth 6
                                        #             Child Loop BB2_35 Depth 6
                                        #             Child Loop BB2_51 Depth 6
                                        #             Child Loop BB2_74 Depth 6
                                        #             Child Loop BB2_56 Depth 6
                                        #             Child Loop BB2_79 Depth 6
                                        #             Child Loop BB2_83 Depth 6
                                        #             Child Loop BB2_62 Depth 6
	add.d	$a0, $s2, $s3
	ld.d	$a0, $a0, 16
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 4
	fldx.s	$fs2, $a0, $a1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	bge	$s5, $a0, .LBB2_13
# %bb.16:                               # %for.body81.preheader
                                        #   in Loop: Header=BB2_15 Depth=3
	fcvt.d.s	$fa1, $fs2
	fdiv.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_17:                               # %while.end
                                        #   in Loop: Header=BB2_18 Depth=4
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	bge	$s5, $a1, .LBB2_14
.LBB2_18:                               # %for.body81
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_22 Depth 5
                                        #             Child Loop BB2_43 Depth 6
                                        #             Child Loop BB2_47 Depth 6
                                        #             Child Loop BB2_35 Depth 6
                                        #             Child Loop BB2_51 Depth 6
                                        #             Child Loop BB2_74 Depth 6
                                        #             Child Loop BB2_56 Depth 6
                                        #             Child Loop BB2_79 Depth 6
                                        #             Child Loop BB2_83 Depth 6
                                        #             Child Loop BB2_62 Depth 6
	ld.d	$a0, $s0, 8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $s1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a2, $s5, 5
	alsl.d	$a2, $s5, $a2, 3
	add.d	$s1, $a0, $a2
	fld.s	$fs2, $s1, 4
	fdiv.s	$fa0, $fs2, $fs4
	vreplvei.w	$vr1, $vr0, 0
	vfrintrp.s	$vr1, $vr1
	movgr2cf	$fcc0, $s4
	fsel	$fa0, $fa1, $fa0, $fcc0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$s6, $fa0
	movgr2fr.d	$fa0, $s5
	addi.d	$a0, $s5, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	fst.s	$fa1, $sp, 100                  # 4-byte Folded Spill
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $sp, 96                   # 4-byte Folded Spill
	fld.s	$fs5, $sp, 36                   # 4-byte Folded Reload
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_19:                               # %if.else192
                                        #   in Loop: Header=BB2_22 Depth=5
	fld.s	$fa1, $sp, 100                  # 4-byte Folded Reload
.LBB2_20:                               # %if.end200
                                        #   in Loop: Header=BB2_22 Depth=5
	fmul.s	$fs6, $fa0, $fa1
.LBB2_21:                               # %if.end200
                                        #   in Loop: Header=BB2_22 Depth=5
	addi.d	$s7, $s7, 1
	fst.s	$fs6, $s1, 4
	fmov.s	$fs2, $fs6
	bnez	$s8, .LBB2_17
.LBB2_22:                               # %while.body
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        #         Parent Loop BB2_18 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_43 Depth 6
                                        #             Child Loop BB2_47 Depth 6
                                        #             Child Loop BB2_35 Depth 6
                                        #             Child Loop BB2_51 Depth 6
                                        #             Child Loop BB2_74 Depth 6
                                        #             Child Loop BB2_56 Depth 6
                                        #             Child Loop BB2_79 Depth 6
                                        #             Child Loop BB2_83 Depth 6
                                        #             Child Loop BB2_62 Depth 6
	fcvt.d.s	$fs6, $fs2
	fcvt.d.s	$fs7, $fs5
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmadd.d	$fa1, $fs7, $fa0, $fs6
	fcvt.s.d	$fs6, $fa1
	fdiv.s	$fa1, $fs6, $fs4
	vreplvei.w	$vr2, $vr1, 0
	vfrintrp.s	$vr2, $vr2
	movgr2cf	$fcc0, $s4
	fsel	$fa1, $fa2, $fa1, $fcc0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	bne	$s6, $a0, .LBB2_24
# %bb.23:                               #   in Loop: Header=BB2_22 Depth=5
	move	$s5, $zero
	ori	$s8, $zero, 1
	fmov.s	$fa0, $fs5
	xvst	$xr0, $sp, 208                  # 32-byte Folded Spill
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_24:                               # %if.else113
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $s6, $a0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fs3, $fa1
	fcvt.s.d	$fs6, $fa1
	fsub.s	$fa2, $fs6, $fs2
	fcvt.d.s	$fa2, $fa2
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI2_0)
	fdiv.d	$fa0, $fa2, $fa0
	addi.w	$s6, $a0, 0
	fcvt.s.d	$fa2, $fa0
	fcmp.cle.d	$fcc0, $fa1, $fa3
	fsub.s	$fs5, $fs5, $fa2
	xvst	$xr2, $sp, 208                  # 32-byte Folded Spill
	bcnez	$fcc0, .LBB2_27
# %bb.25:                               # %if.else113
                                        #   in Loop: Header=BB2_22 Depth=5
	fld.s	$fa0, $sp, 132                  # 4-byte Folded Reload
	fcmp.cult.s	$fcc0, $fs6, $fa0
	bceqz	$fcc0, .LBB2_27
# %bb.26:                               #   in Loop: Header=BB2_22 Depth=5
	movgr2fr.w	$fa0, $zero
	fcmp.cle.s	$fcc0, $fs5, $fa0
	move	$s5, $zero
	movcf2gr	$s8, $fcc0
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_27:                               # %if.then142
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$s8, $zero, 1
	ori	$s5, $zero, 1
.LBB2_28:                               # %if.end150
                                        #   in Loop: Header=BB2_22 Depth=5
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 120
	ld.w	$a2, $fp, 16
	mod.d	$a1, $a0, $a1
	beqz	$a2, .LBB2_31
# %bb.29:                               # %if.end150
                                        #   in Loop: Header=BB2_22 Depth=5
	ori	$a0, $zero, 2
	bne	$a2, $a0, .LBB2_89
# %bb.30:                               # %if.then155
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$a0, $s0, 0
	ld.d	$a2, $s0, 16
	fldx.s	$fa2, $a0, $s3
	slli.d	$a0, $a1, 5
	alsl.d	$a0, $a1, $a0, 4
	add.d	$a2, $a2, $a0
	ori	$a1, $zero, 1
	addi.d	$a5, $sp, 248
	move	$a0, $s1
	move	$a3, $fp
	move	$a4, $s0
	xvld	$xr0, $sp, 208                  # 32-byte Folded Reload
                                        # kill: def $f0 killed $f0 killed $xr0
	fmov.s	$fa1, $fs1
	pcaddu18i	$ra, %call36(attenuate_fluxes)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	b	.LBB2_63
	.p2align	4, , 16
.LBB2_31:                               # %if.then164
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.w	$a0, $fp, 36
	ld.d	$s2, $s0, 0
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB2_63
# %bb.32:                               # %iter.check280
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$a4, $s0, 16
	ori	$a2, $zero, 48
	mul.d	$a1, $a1, $a2
	add.d	$a2, $a4, $a1
	fldx.s	$fa0, $s2, $s3
	ld.d	$a3, $s0, 40
	ld.w	$a5, $fp, 44
	ld.w	$a6, $fp, 12
	ld.w	$a7, $fp, 8
	fld.s	$fa1, $s0, 48
	fld.s	$fa2, $fp, 60
	mul.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a7
	movgr2fr.w	$fa3, $a5
	fld.s	$fa4, $s1, 4
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa3, $fa2, $fa3
	fld.s	$fa2, $s0, 52
	fdiv.s	$fa3, $fa4, $fa3
	ftintrz.w.s	$fa3, $fa3
	movfr2gr.s	$a5, $fa3
	ldx.d	$a1, $a4, $a1
	mod.w	$a4, $a5, $a6
	fld.s	$fa3, $s1, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a1, $a1, $a4
	ld.d	$a5, $a2, 24
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa0, $fa0, $fs1
	ori	$a6, $zero, 4
	vldi	$vr6, -1184
	bgeu	$a0, $a6, .LBB2_37
# %bb.33:                               #   in Loop: Header=BB2_22 Depth=5
	move	$a6, $zero
	xvld	$xr7, $sp, 208                  # 32-byte Folded Reload
.LBB2_34:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB2_22 Depth=5
	sub.d	$a7, $a0, $a6
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$t0, $a6, $t0, 2
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $t1, 2
	alsl.d	$a5, $a6, $a5, 2
	.p2align	4, , 16
.LBB2_35:                               # %for.body.i
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        #         Parent Loop BB2_18 Depth=4
                                        #           Parent Loop BB2_22 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fld.s	$fa3, $a5, 0
	fst.s	$fa3, $t1, 0
	fmul.s	$fa3, $fa7, $fa3
	fst.s	$fa3, $t0, 0
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	addi.d	$a5, $a5, 4
	bnez	$a7, .LBB2_35
# %bb.36:                               #   in Loop: Header=BB2_22 Depth=5
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	move	$t1, $a0
	b	.LBB2_51
.LBB2_37:                               # %vector.memcheck271
                                        #   in Loop: Header=BB2_22 Depth=5
	move	$a6, $zero
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ori	$t0, $zero, 16
	xvld	$xr7, $sp, 208                  # 32-byte Folded Reload
	bltu	$a7, $t0, .LBB2_34
# %bb.38:                               # %vector.memcheck271
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	sub.d	$a7, $a7, $a5
	ori	$t0, $zero, 64
	bltu	$a7, $t0, .LBB2_34
# %bb.39:                               # %vector.memcheck271
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a7, $a7, $a5
	bltu	$a7, $t0, .LBB2_34
# %bb.40:                               # %vector.main.loop.iter.check282
                                        #   in Loop: Header=BB2_22 Depth=5
	ori	$a6, $zero, 16
	bgeu	$a0, $a6, .LBB2_42
# %bb.41:                               #   in Loop: Header=BB2_22 Depth=5
	move	$a6, $zero
	b	.LBB2_46
.LBB2_42:                               # %vector.ph283
                                        #   in Loop: Header=BB2_22 Depth=5
	bstrpick.d	$a6, $a0, 30, 4
	slli.d	$a6, $a6, 4
	xvreplve0.w	$xr3, $xr7
	addi.d	$a7, $a5, 32
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	move	$t2, $a6
	.p2align	4, , 16
.LBB2_43:                               # %vector.body288
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        #         Parent Loop BB2_18 Depth=4
                                        #           Parent Loop BB2_22 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	xvld	$xr4, $a7, -32
	xvld	$xr5, $a7, 0
	xvst	$xr4, $t0, -32
	xvst	$xr5, $t0, 0
	xvfmul.s	$xr4, $xr3, $xr4
	xvfmul.s	$xr5, $xr3, $xr5
	xvst	$xr4, $t1, -32
	xvst	$xr5, $t1, 0
	addi.d	$t2, $t2, -16
	addi.d	$a7, $a7, 64
	addi.d	$t1, $t1, 64
	addi.d	$t0, $t0, 64
	bnez	$t2, .LBB2_43
# %bb.44:                               # %middle.block293
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	move	$t1, $a0
	beq	$a6, $a0, .LBB2_51
# %bb.45:                               # %vec.epilog.iter.check298
                                        #   in Loop: Header=BB2_22 Depth=5
	andi	$a7, $a0, 12
	beqz	$a7, .LBB2_34
.LBB2_46:                               # %vec.epilog.ph297
                                        #   in Loop: Header=BB2_22 Depth=5
	move	$t2, $a6
	bstrpick.d	$a6, $a0, 30, 2
	slli.d	$a6, $a6, 2
	vreplvei.w	$vr3, $vr7, 0
	sub.d	$a7, $t2, $a6
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$t0, $t2, $t0, 2
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t1, $t2, $t1, 2
	alsl.d	$t2, $t2, $a5, 2
	.p2align	4, , 16
.LBB2_47:                               # %vec.epilog.vector.body305
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        #         Parent Loop BB2_18 Depth=4
                                        #           Parent Loop BB2_22 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vld	$vr4, $t2, 0
	vst	$vr4, $t1, 0
	vfmul.s	$vr4, $vr3, $vr4
	vst	$vr4, $t0, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	bnez	$a7, .LBB2_47
# %bb.48:                               # %vec.epilog.middle.block309
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	move	$t1, $a0
	beq	$a6, $a0, .LBB2_51
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_49:                               # %if.else.i.i
                                        #   in Loop: Header=BB2_51 Depth=6
	fdiv.s	$fa4, $fa3, $fa1
	fmadd.s	$fa4, $fa1, $fa6, $fa4
	ftintrz.w.s	$fa4, $fa4
	movfr2gr.s	$a5, $fa4
	slli.w	$a5, $a5, 1
	alsl.d	$a6, $a5, $a3, 2
	slli.d	$a5, $a5, 2
	fldx.s	$fa4, $a3, $a5
	fld.s	$fa5, $a6, 4
	fmadd.s	$fa3, $fa4, $fa3, $fa5
.LBB2_50:                               # %interpolateTable.exit.i
                                        #   in Loop: Header=BB2_51 Depth=6
	fst.s	$fa3, $t0, 0
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	beqz	$t1, .LBB2_53
.LBB2_51:                               # %for.body34.i
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        #         Parent Loop BB2_18 Depth=4
                                        #           Parent Loop BB2_22 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fld.s	$fa3, $a7, 0
	fcmp.clt.s	$fcc0, $fa2, $fa3
	bceqz	$fcc0, .LBB2_49
# %bb.52:                               #   in Loop: Header=BB2_51 Depth=6
	vldi	$vr3, -1168
	b	.LBB2_50
	.p2align	4, , 16
.LBB2_53:                               # %for.cond.cleanup33.i
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$a2, $a2, 8
	ld.d	$a3, $s1, 24
	ldx.d	$a2, $a2, $a4
	ori	$a4, $zero, 8
	bgeu	$a0, $a4, .LBB2_66
# %bb.54:                               #   in Loop: Header=BB2_22 Depth=5
	move	$a4, $zero
.LBB2_55:                               # %for.body48.i.preheader
                                        #   in Loop: Header=BB2_22 Depth=5
	sub.d	$a5, $a0, $a4
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a6, 2
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a7, $a4, $a7, 2
	alsl.d	$a3, $a4, $a3, 2
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t0, $a4, $t0, 2
	alsl.d	$a2, $a4, $a2, 2
	.p2align	4, , 16
.LBB2_56:                               # %for.body48.i
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        #         Parent Loop BB2_18 Depth=4
                                        #           Parent Loop BB2_22 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $t0, 0
	fld.s	$fa3, $a3, 0
	fld.s	$fa4, $a7, 0
	fdiv.s	$fa1, $fa1, $fa2
	fsub.s	$fa1, $fa3, $fa1
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa0, $fa1
	fst.s	$fa2, $a6, 0
	fld.s	$fa2, $a3, 0
	fsub.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $a3, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	addi.d	$a3, $a3, 4
	addi.d	$t0, $t0, 4
	addi.d	$a2, $a2, 4
	bnez	$a5, .LBB2_56
.LBB2_57:                               # %iter.check
                                        #   in Loop: Header=BB2_22 Depth=5
	ori	$a2, $zero, 4
	bltu	$a0, $a2, .LBB2_60
# %bb.58:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	bgeu	$a1, $a2, .LBB2_76
# %bb.59:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_22 Depth=5
	alsl.d	$a2, $a0, $a1, 2
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	bgeu	$a3, $a2, .LBB2_76
.LBB2_60:                               #   in Loop: Header=BB2_22 Depth=5
	move	$a2, $zero
.LBB2_61:                               # %for.body76.i.preheader
                                        #   in Loop: Header=BB2_22 Depth=5
	sub.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $a1, 2
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB2_62:                               # %for.body76.i
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        #         Parent Loop BB2_18 Depth=4
                                        #           Parent Loop BB2_22 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB2_62
.LBB2_63:                               # %if.end175
                                        #   in Loop: Header=BB2_22 Depth=5
	add.d	$a0, $s2, $s3
	ld.d	$a0, $a0, 8
	addi.d	$a1, $a0, -1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	xor	$a1, $a1, $a2
	sltu	$a1, $zero, $a1
	andn	$a1, $a1, $s5
	bnez	$a1, .LBB2_21
# %bb.64:                               # %if.then186
                                        #   in Loop: Header=BB2_22 Depth=5
	fld.s	$fa0, $fp, 24
	beqz	$s4, .LBB2_19
# %bb.65:                               # %if.then188
                                        #   in Loop: Header=BB2_22 Depth=5
	fld.s	$fa1, $sp, 96                   # 4-byte Folded Reload
	b	.LBB2_20
.LBB2_66:                               # %vector.memcheck221
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a6, $a0, $a4, 2
	alsl.d	$a5, $a0, $a3, 2
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	sltu	$a4, $t3, $a5
	sltu	$a7, $a3, $a6
	and	$a7, $a4, $a7
	move	$a4, $zero
	bnez	$a7, .LBB2_55
# %bb.67:                               # %vector.memcheck221
                                        #   in Loop: Header=BB2_22 Depth=5
	alsl.d	$a7, $a0, $a2, 2
	sltu	$t0, $t3, $a7
	sltu	$t1, $a2, $a6
	and	$t0, $t0, $t1
	bnez	$t0, .LBB2_55
# %bb.68:                               # %vector.memcheck221
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $t0, 2
	sltu	$t1, $t3, $t0
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	sltu	$t2, $t2, $a6
	and	$t1, $t1, $t2
	bnez	$t1, .LBB2_55
# %bb.69:                               # %vector.memcheck221
                                        #   in Loop: Header=BB2_22 Depth=5
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$t1, $a0, $t1, 2
	sltu	$t2, $t3, $t1
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	sltu	$a6, $t3, $a6
	and	$a6, $t2, $a6
	bnez	$a6, .LBB2_55
# %bb.70:                               # %vector.memcheck221
                                        #   in Loop: Header=BB2_22 Depth=5
	sltu	$a6, $a3, $a7
	sltu	$a7, $a2, $a5
	and	$a6, $a6, $a7
	bnez	$a6, .LBB2_55
# %bb.71:                               # %vector.memcheck221
                                        #   in Loop: Header=BB2_22 Depth=5
	sltu	$a6, $a3, $t0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	sltu	$a7, $a7, $a5
	and	$a6, $a6, $a7
	bnez	$a6, .LBB2_55
# %bb.72:                               # %vector.memcheck221
                                        #   in Loop: Header=BB2_22 Depth=5
	sltu	$a6, $a3, $t1
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	sltu	$a5, $a7, $a5
	and	$a5, $a6, $a5
	bnez	$a5, .LBB2_55
# %bb.73:                               # %vector.ph257
                                        #   in Loop: Header=BB2_22 Depth=5
	bstrpick.d	$a4, $a0, 30, 3
	slli.d	$a4, $a4, 3
	xvreplve0.w	$xr1, $xr0
	move	$a5, $a2
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	move	$a7, $a3
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	move	$t2, $a4
	.p2align	4, , 16
.LBB2_74:                               # %vector.body260
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        #         Parent Loop BB2_18 Depth=4
                                        #           Parent Loop BB2_22 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	xvld	$xr2, $a5, 0
	xvld	$xr3, $a6, 0
	xvld	$xr4, $a7, 0
	xvld	$xr5, $t0, 0
	xvfdiv.s	$xr2, $xr2, $xr3
	xvfsub.s	$xr2, $xr4, $xr2
	xvfmul.s	$xr2, $xr2, $xr5
	xvfmul.s	$xr3, $xr1, $xr2
	xvst	$xr3, $t1, 0
	xvfsub.s	$xr2, $xr4, $xr2
	xvst	$xr2, $a7, 0
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 32
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, 32
	bnez	$t2, .LBB2_74
# %bb.75:                               # %middle.block268
                                        #   in Loop: Header=BB2_22 Depth=5
	bne	$a4, $a0, .LBB2_55
	b	.LBB2_57
.LBB2_76:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB2_22 Depth=5
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB2_78
# %bb.77:                               #   in Loop: Header=BB2_22 Depth=5
	move	$a2, $zero
	b	.LBB2_82
.LBB2_78:                               # %vector.ph
                                        #   in Loop: Header=BB2_22 Depth=5
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a1, 32
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	move	$a5, $a2
	.p2align	4, , 16
.LBB2_79:                               # %vector.body
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        #         Parent Loop BB2_18 Depth=4
                                        #           Parent Loop BB2_22 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB2_79
# %bb.80:                               # %middle.block
                                        #   in Loop: Header=BB2_22 Depth=5
	beq	$a2, $a0, .LBB2_63
# %bb.81:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB2_22 Depth=5
	andi	$a3, $a0, 12
	beqz	$a3, .LBB2_61
.LBB2_82:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB2_22 Depth=5
	move	$a5, $a2
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a1, 2
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a5, $a5, $a6, 2
	.p2align	4, , 16
.LBB2_83:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        #       Parent Loop BB2_15 Depth=3
                                        #         Parent Loop BB2_18 Depth=4
                                        #           Parent Loop BB2_22 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vld	$vr0, $a5, 0
	vld	$vr1, $a4, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB2_83
# %bb.84:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB2_22 Depth=5
	beq	$a2, $a0, .LBB2_63
	b	.LBB2_61
	.p2align	4, , 16
.LBB2_85:                               # %for.body51.lr.ph.split.us
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s2, $s0, 24
	move	$s3, $zero
	.p2align	4, , 16
.LBB2_86:                               # %for.body51.us
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s2, 0
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 32
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 4
	blt	$s3, $a1, .LBB2_86
	b	.LBB2_6
.LBB2_87:
	move	$s7, $zero
.LBB2_88:                               # %for.cond.cleanup
	st.d	$s7, $fp, 144
	fld.d	$fs7, $sp, 360                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 400                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 416                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.LBB2_89:                               # %if.else171
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	transport_sweep, .Lfunc_end2-transport_sweep
                                        # -- End function
	.globl	get_pos_interval                # -- Begin function get_pos_interval
	.p2align	5
	.type	get_pos_interval,@function
get_pos_interval:                       # @get_pos_interval
# %bb.0:                                # %entry
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ret
.Lfunc_end3:
	.size	get_pos_interval, .Lfunc_end3-get_pos_interval
                                        # -- End function
	.globl	get_neg_interval                # -- Begin function get_neg_interval
	.p2align	5
	.type	get_neg_interval,@function
get_neg_interval:                       # @get_neg_interval
# %bb.0:                                # %entry
	fdiv.s	$fa0, $fa0, $fa1
	vreplvei.w	$vr0, $vr0, 0
	vfrintrp.s	$vr0, $vr0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ret
.Lfunc_end4:
	.size	get_neg_interval, .Lfunc_end4-get_neg_interval
                                        # -- End function
	.globl	attenuate_FSR_fluxes            # -- Begin function attenuate_FSR_fluxes
	.p2align	5
	.type	attenuate_FSR_fluxes,@function
attenuate_FSR_fluxes:                   # @attenuate_FSR_fluxes
# %bb.0:                                # %entry
	ld.w	$a6, $a3, 36
	ori	$a7, $zero, 1
                                        # kill: def $f0 killed $f0 def $vr0 def $xr0
	blt	$a6, $a7, .LBB5_20
# %bb.1:                                # %iter.check
	ld.d	$a7, $a5, 72
	ld.d	$t1, $a5, 48
	ld.d	$t0, $a5, 24
	ld.d	$a5, $a5, 32
	fld.s	$fa4, $a3, 60
	ld.w	$t3, $a3, 44
	ld.w	$t4, $a3, 12
	ld.w	$a3, $a3, 8
	ld.d	$t2, $a4, 40
	fld.s	$fa3, $a4, 48
	mul.d	$t3, $t3, $t4
	mul.d	$a3, $t3, $a3
	movgr2fr.w	$fa5, $a3
	fld.s	$fa6, $a0, 4
	ffint.s.w	$fa5, $fa5
	fdiv.s	$fa5, $fa4, $fa5
	fld.s	$fa4, $a4, 52
	fdiv.s	$fa5, $fa6, $fa5
	ftintrz.w.s	$fa5, $fa5
	movfr2gr.s	$a3, $fa5
	ld.d	$t3, $a2, 0
	mod.w	$a3, $a3, $t4
	fld.s	$fa5, $a0, 0
	slli.d	$a4, $a3, 3
	ldx.d	$a3, $t3, $a4
	ld.d	$t3, $a2, 24
	ori	$t4, $zero, 3
	fmul.s	$fa2, $fa2, $fa5
	bltu	$t4, $a6, .LBB5_21
# %bb.2:
	move	$t4, $zero
.LBB5_3:                                # %for.body.preheader
	alsl.d	$t5, $t4, $a5, 2
	alsl.d	$t6, $t4, $t0, 2
	alsl.d	$t3, $t4, $t3, 2
	sub.d	$t4, $a6, $t4
	.p2align	4, , 16
.LBB5_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa5, $t3, 0
	fst.s	$fa5, $t6, 0
	fmul.s	$fa5, $fa0, $fa5
	fst.s	$fa5, $t5, 0
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, 4
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 4
	bnez	$t4, .LBB5_4
.LBB5_5:                                # %for.body34.preheader
	move	$t3, $zero
	fmul.s	$fa0, $fa1, $fa2
	vldi	$vr1, -1184
	move	$t4, $a6
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_6:                                #   in Loop: Header=BB5_8 Depth=1
	vldi	$vr2, -1168
.LBB5_7:                                # %interpolateTable.exit
                                        #   in Loop: Header=BB5_8 Depth=1
	fstx.s	$fa2, $t1, $t3
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 4
	beqz	$t4, .LBB5_10
.LBB5_8:                                # %for.body34
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa2, $a5, $t3
	fcmp.clt.s	$fcc0, $fa4, $fa2
	bcnez	$fcc0, .LBB5_6
# %bb.9:                                # %if.else.i
                                        #   in Loop: Header=BB5_8 Depth=1
	fdiv.s	$fa5, $fa2, $fa3
	fmadd.s	$fa5, $fa3, $fa1, $fa5
	ftintrz.w.s	$fa5, $fa5
	movfr2gr.s	$t5, $fa5
	slli.w	$t5, $t5, 1
	alsl.d	$t6, $t5, $t2, 2
	slli.d	$t5, $t5, 2
	fldx.s	$fa5, $t2, $t5
	fld.s	$fa6, $t6, 4
	fmadd.s	$fa2, $fa5, $fa2, $fa6
	b	.LBB5_7
.LBB5_10:                               # %for.cond.cleanup33
	ori	$a5, $zero, 32
	masknez	$a5, $a5, $a1
	ori	$t2, $zero, 24
	ld.d	$t3, $a2, 8
	maskeqz	$a1, $t2, $a1
	or	$a1, $a1, $a5
	ldx.d	$a2, $a0, $a1
	ldx.d	$a1, $t3, $a4
	ori	$a4, $zero, 16
	alsl.d	$a0, $a6, $a7, 2
	bgeu	$a6, $a4, .LBB5_26
# %bb.11:
	move	$a4, $zero
.LBB5_12:                               # %for.body48.preheader
	alsl.d	$a5, $a4, $a7, 2
	alsl.d	$t1, $a4, $t1, 2
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$t0, $a4, $t0, 2
	alsl.d	$a1, $a4, $a1, 2
	sub.d	$a4, $a6, $a4
	.p2align	4, , 16
.LBB5_13:                               # %for.body48
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $t0, 0
	fld.s	$fa3, $a2, 0
	fld.s	$fa4, $t1, 0
	fdiv.s	$fa1, $fa1, $fa2
	fsub.s	$fa1, $fa3, $fa1
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa0, $fa1
	fst.s	$fa2, $a5, 0
	fld.s	$fa2, $a2, 0
	fsub.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $a2, 0
	addi.d	$a5, $a5, 4
	addi.d	$t1, $t1, 4
	addi.d	$a2, $a2, 4
	addi.d	$t0, $t0, 4
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB5_13
.LBB5_14:                               # %iter.check138
	ori	$a1, $zero, 3
	bgeu	$a1, $a6, .LBB5_17
# %bb.15:                               # %vector.memcheck129
	bgeu	$a3, $a0, .LBB5_36
# %bb.16:                               # %vector.memcheck129
	alsl.d	$a0, $a6, $a3, 2
	bgeu	$a7, $a0, .LBB5_36
.LBB5_17:
	move	$a0, $zero
.LBB5_18:                               # %for.body76.preheader
	alsl.d	$a1, $a0, $a3, 2
	alsl.d	$a2, $a0, $a7, 2
	sub.d	$a0, $a6, $a0
	.p2align	4, , 16
.LBB5_19:                               # %for.body76
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB5_19
.LBB5_20:                               # %for.cond.cleanup75
	ret
.LBB5_21:                               # %vector.memcheck
	sub.d	$t6, $a5, $t0
	ori	$t5, $zero, 64
	move	$t4, $zero
	bltu	$t6, $t5, .LBB5_3
# %bb.22:                               # %vector.memcheck
	sub.d	$t6, $t0, $t3
	bltu	$t6, $t5, .LBB5_3
# %bb.23:                               # %vector.memcheck
	sub.d	$t5, $a5, $t3
	ori	$t6, $zero, 64
	bltu	$t5, $t6, .LBB5_3
# %bb.24:                               # %vector.main.loop.iter.check
	ori	$t4, $zero, 16
	bgeu	$a6, $t4, .LBB5_45
# %bb.25:
	move	$t4, $zero
	b	.LBB5_49
.LBB5_26:                               # %vector.memcheck83
	alsl.d	$a5, $a6, $a2, 2
	sltu	$a4, $a7, $a5
	sltu	$t2, $a2, $a0
	and	$t2, $a4, $t2
	move	$a4, $zero
	bnez	$t2, .LBB5_12
# %bb.27:                               # %vector.memcheck83
	alsl.d	$t2, $a6, $a1, 2
	sltu	$t3, $a7, $t2
	sltu	$t4, $a1, $a0
	and	$t3, $t3, $t4
	bnez	$t3, .LBB5_12
# %bb.28:                               # %vector.memcheck83
	alsl.d	$t3, $a6, $t0, 2
	sltu	$t4, $a7, $t3
	sltu	$t5, $t0, $a0
	and	$t4, $t4, $t5
	bnez	$t4, .LBB5_12
# %bb.29:                               # %vector.memcheck83
	alsl.d	$t4, $a6, $t1, 2
	sltu	$t5, $a7, $t4
	sltu	$t6, $t1, $a0
	and	$t5, $t5, $t6
	bnez	$t5, .LBB5_12
# %bb.30:                               # %vector.memcheck83
	sltu	$t2, $a2, $t2
	sltu	$t5, $a1, $a5
	and	$t2, $t2, $t5
	bnez	$t2, .LBB5_12
# %bb.31:                               # %vector.memcheck83
	sltu	$t2, $a2, $t3
	sltu	$t3, $t0, $a5
	and	$t2, $t2, $t3
	bnez	$t2, .LBB5_12
# %bb.32:                               # %vector.memcheck83
	sltu	$t2, $a2, $t4
	sltu	$a5, $t1, $a5
	and	$a5, $t2, $a5
	bnez	$a5, .LBB5_12
# %bb.33:                               # %vector.ph113
	bstrpick.d	$a4, $a6, 30, 3
	slli.d	$a4, $a4, 3
	xvreplve0.w	$xr1, $xr0
	move	$a5, $a1
	move	$t2, $t0
	move	$t3, $a2
	move	$t4, $t1
	move	$t5, $a7
	move	$t6, $a4
	.p2align	4, , 16
.LBB5_34:                               # %vector.body118
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a5, 0
	xvld	$xr3, $t2, 0
	xvld	$xr4, $t3, 0
	xvld	$xr5, $t4, 0
	xvfdiv.s	$xr2, $xr2, $xr3
	xvfsub.s	$xr2, $xr4, $xr2
	xvfmul.s	$xr2, $xr2, $xr5
	xvfmul.s	$xr3, $xr1, $xr2
	xvst	$xr3, $t5, 0
	xvfsub.s	$xr2, $xr4, $xr2
	xvst	$xr2, $t3, 0
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	addi.d	$t2, $t2, 32
	addi.d	$a5, $a5, 32
	bnez	$t6, .LBB5_34
# %bb.35:                               # %middle.block126
	bne	$a4, $a6, .LBB5_12
	b	.LBB5_14
.LBB5_36:                               # %vector.main.loop.iter.check140
	ori	$a0, $zero, 16
	bgeu	$a6, $a0, .LBB5_38
# %bb.37:
	move	$a0, $zero
	b	.LBB5_42
.LBB5_38:                               # %vector.ph141
	bstrpick.d	$a0, $a6, 30, 4
	slli.d	$a0, $a0, 4
	addi.d	$a1, $a3, 32
	addi.d	$a2, $a7, 32
	move	$a4, $a0
	.p2align	4, , 16
.LBB5_39:                               # %vector.body144
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvld	$xr2, $a1, -32
	xvld	$xr3, $a1, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a4, $a4, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a4, .LBB5_39
# %bb.40:                               # %middle.block151
	beq	$a0, $a6, .LBB5_20
# %bb.41:                               # %vec.epilog.iter.check156
	andi	$a1, $a6, 12
	beqz	$a1, .LBB5_18
.LBB5_42:                               # %vec.epilog.ph155
	move	$a4, $a0
	bstrpick.d	$a0, $a6, 30, 2
	slli.d	$a0, $a0, 2
	sub.d	$a1, $a4, $a0
	alsl.d	$a2, $a4, $a3, 2
	alsl.d	$a4, $a4, $a7, 2
	.p2align	4, , 16
.LBB5_43:                               # %vec.epilog.vector.body161
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vld	$vr1, $a2, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB5_43
# %bb.44:                               # %vec.epilog.middle.block166
	bne	$a0, $a6, .LBB5_18
	b	.LBB5_20
.LBB5_45:                               # %vector.ph
	bstrpick.d	$t4, $a6, 30, 4
	slli.d	$t4, $t4, 4
	xvreplve0.w	$xr5, $xr0
	addi.d	$t5, $a5, 32
	addi.d	$t6, $t0, 32
	addi.d	$t7, $t3, 32
	move	$t8, $t4
	.p2align	4, , 16
.LBB5_46:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr6, $t7, -32
	xvld	$xr7, $t7, 0
	xvst	$xr6, $t6, -32
	xvst	$xr7, $t6, 0
	xvfmul.s	$xr6, $xr5, $xr6
	xvfmul.s	$xr7, $xr5, $xr7
	xvst	$xr6, $t5, -32
	xvst	$xr7, $t5, 0
	addi.d	$t8, $t8, -16
	addi.d	$t5, $t5, 64
	addi.d	$t6, $t6, 64
	addi.d	$t7, $t7, 64
	bnez	$t8, .LBB5_46
# %bb.47:                               # %middle.block
	beq	$t4, $a6, .LBB5_5
# %bb.48:                               # %vec.epilog.iter.check
	andi	$t5, $a6, 12
	beqz	$t5, .LBB5_3
.LBB5_49:                               # %vec.epilog.ph
	move	$t8, $t4
	bstrpick.d	$t4, $a6, 30, 2
	slli.d	$t4, $t4, 2
	vreplvei.w	$vr5, $vr0, 0
	sub.d	$t5, $t8, $t4
	alsl.d	$t6, $t8, $a5, 2
	alsl.d	$t7, $t8, $t0, 2
	alsl.d	$t8, $t8, $t3, 2
	.p2align	4, , 16
.LBB5_50:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $t8, 0
	vst	$vr6, $t7, 0
	vfmul.s	$vr6, $vr5, $vr6
	vst	$vr6, $t6, 0
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	addi.d	$t8, $t8, 16
	bnez	$t5, .LBB5_50
# %bb.51:                               # %vec.epilog.middle.block
	bne	$t4, $a6, .LBB5_3
	b	.LBB5_5
.Lfunc_end5:
	.size	attenuate_FSR_fluxes, .Lfunc_end5-attenuate_FSR_fluxes
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function two_way_transport_sweep
.LCPI6_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	two_way_transport_sweep
	.p2align	5
	.type	two_way_transport_sweep,@function
two_way_transport_sweep:                # @two_way_transport_sweep
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 512                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 504                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 496                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 488                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 480                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 472                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 464                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 456                  # 8-byte Folded Spill
	ld.d	$a2, $a1, 72
	move	$s5, $a0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	bnez	$a2, .LBB6_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
.LBB6_2:                                # %if.end
	fld.s	$fs0, $a1, 60
	ld.w	$s0, $a1, 44
	ld.w	$fp, $a1, 36
	ld.w	$s1, $a1, 8
	ld.w	$s2, $a1, 12
	ori	$a0, $zero, 14
	mul.w	$a0, $fp, $a0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a5, $fp
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 344
	alsl.d	$a1, $fp, $a0, 2
	st.d	$a1, $sp, 352
	alsl.d	$a1, $fp, $a1, 2
	st.d	$a1, $sp, 360
	alsl.d	$a1, $fp, $a1, 2
	st.d	$a1, $sp, 368
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	alsl.d	$a1, $fp, $a1, 2
	st.d	$a1, $sp, 376
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	alsl.d	$a1, $fp, $a1, 2
	st.d	$a1, $sp, 384
	alsl.d	$a2, $fp, $a1, 2
	st.d	$a2, $sp, 392
	alsl.d	$a1, $fp, $a2, 2
	st.d	$a1, $sp, 400
	alsl.d	$a1, $fp, $a1, 2
	st.d	$a1, $sp, 408
	alsl.d	$fp, $fp, $a1, 2
	alsl.d	$a1, $a5, $fp, 2
	st.d	$a1, $sp, 424
	alsl.d	$a1, $a5, $a1, 2
	st.d	$a1, $sp, 432
	alsl.d	$a1, $a5, $a1, 2
	st.d	$a1, $sp, 440
	ld.d	$a4, $a3, 80
	alsl.d	$a1, $a5, $a1, 2
	st.d	$a1, $sp, 448
	ori	$a1, $zero, 1
	st.d	$fp, $sp, 416
	blt	$a4, $a1, .LBB6_169
# %bb.3:                                # %for.body.lr.ph
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	st.d	$zero, $sp, 272                 # 8-byte Folded Spill
	movgr2fr.w	$fa0, $s0
	move	$s0, $zero
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fs0, $fa0
	fcvt.d.s	$fa1, $fa0
	mul.d	$a1, $s2, $s1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fst.d	$fa1, $sp, 72                   # 8-byte Folded Spill
	fdiv.d	$fs3, $fa1, $fa0
	slli.d	$a2, $a5, 5
	alsl.d	$a2, $a5, $a2, 2
	add.d	$a6, $a0, $a2
	slli.d	$a2, $a5, 3
	alsl.d	$a2, $a5, $a2, 2
	add.d	$a2, $a0, $a2
	alsl.d	$a0, $a5, $a0, 4
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a5, $a5, $a0, 3
	st.d	$a5, $sp, 216                   # 8-byte Folded Spill
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 32
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 32
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a6, $sp, 248                   # 8-byte Folded Spill
	addi.d	$a0, $a6, 32
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a0, -251659
	ori	$a0, $a0, 3113
	lu32i.d	$a0, -251659
	lu52i.d	$a0, $a0, -1803
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, -83887
	ori	$a0, $a0, 3768
	lu32i.d	$a0, -83887
	lu52i.d	$a0, $a0, 81
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	movgr2fr.w	$fs4, $zero
	addi.w	$a0, $a1, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	st.d	$s5, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 232                   # 8-byte Folded Spill
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_4:                                # %for.cond.cleanup401
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 80
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	move	$a3, $fp
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	bge	$s0, $a4, .LBB6_170
.LBB6_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
                                        #     Child Loop BB6_15 Depth 2
                                        #       Child Loop BB6_21 Depth 3
                                        #         Child Loop BB6_24 Depth 4
                                        #           Child Loop BB6_29 Depth 5
                                        #             Child Loop BB6_44 Depth 6
                                        #             Child Loop BB6_48 Depth 6
                                        #             Child Loop BB6_35 Depth 6
                                        #             Child Loop BB6_52 Depth 6
                                        #             Child Loop BB6_74 Depth 6
                                        #             Child Loop BB6_57 Depth 6
                                        #             Child Loop BB6_79 Depth 6
                                        #             Child Loop BB6_83 Depth 6
                                        #             Child Loop BB6_63 Depth 6
                                        #       Child Loop BB6_91 Depth 3
                                        #         Child Loop BB6_94 Depth 4
                                        #           Child Loop BB6_109 Depth 5
                                        #           Child Loop BB6_113 Depth 5
                                        #           Child Loop BB6_101 Depth 5
                                        #           Child Loop BB6_117 Depth 5
                                        #           Child Loop BB6_137 Depth 5
                                        #           Child Loop BB6_122 Depth 5
                                        #           Child Loop BB6_142 Depth 5
                                        #           Child Loop BB6_146 Depth 5
                                        #           Child Loop BB6_128 Depth 5
                                        #       Child Loop BB6_160 Depth 3
                                        #       Child Loop BB6_163 Depth 3
                                        #       Child Loop BB6_155 Depth 3
                                        #       Child Loop BB6_158 Depth 3
                                        #     Child Loop BB6_167 Depth 2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a0, $s0, $a0
	rotri.d	$a0, $a0, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB6_8
# %bb.6:                                # %if.then49
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a0, $a3, 72
	bnez	$a0, .LBB6_8
# %bb.7:                                # %if.then53
                                        #   in Loop: Header=BB6_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a3, $a2, %pc_lo12(.L.str.5)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_8:                                # %if.end57
                                        #   in Loop: Header=BB6_5 Depth=1
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s0, $a3, 88
	slli.d	$s6, $s0, 3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	slli.d	$s7, $s0, 2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	move	$s8, $s0
	blt	$s0, $a0, .LBB6_11
# %bb.9:                                # %for.body78.lr.ph
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 48
	slli.w	$s0, $a0, 1
	slli.d	$s6, $s0, 3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s1, $s8
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_10:                               # %for.body78
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$s0, $s2, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 4
	bnez	$s1, .LBB6_10
.LBB6_11:                               # %for.cond97.preheader
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
	ld.w	$s0, $t3, 32
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB6_164
# %bb.12:                               # %for.body101.preheader
                                        #   in Loop: Header=BB6_5 Depth=1
	move	$a7, $zero
	ori	$s7, $zero, 1
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_13:                               #   in Loop: Header=BB6_15 Depth=2
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
.LBB6_14:                               # %for.cond.cleanup369
                                        #   in Loop: Header=BB6_15 Depth=2
	ld.w	$s0, $t3, 32
	addi.d	$a7, $a7, 1
	bge	$a7, $s0, .LBB6_165
.LBB6_15:                               # %for.body101
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_21 Depth 3
                                        #         Child Loop BB6_24 Depth 4
                                        #           Child Loop BB6_29 Depth 5
                                        #             Child Loop BB6_44 Depth 6
                                        #             Child Loop BB6_48 Depth 6
                                        #             Child Loop BB6_35 Depth 6
                                        #             Child Loop BB6_52 Depth 6
                                        #             Child Loop BB6_74 Depth 6
                                        #             Child Loop BB6_57 Depth 6
                                        #             Child Loop BB6_79 Depth 6
                                        #             Child Loop BB6_83 Depth 6
                                        #             Child Loop BB6_63 Depth 6
                                        #       Child Loop BB6_91 Depth 3
                                        #         Child Loop BB6_94 Depth 4
                                        #           Child Loop BB6_109 Depth 5
                                        #           Child Loop BB6_113 Depth 5
                                        #           Child Loop BB6_101 Depth 5
                                        #           Child Loop BB6_117 Depth 5
                                        #           Child Loop BB6_137 Depth 5
                                        #           Child Loop BB6_122 Depth 5
                                        #           Child Loop BB6_142 Depth 5
                                        #           Child Loop BB6_146 Depth 5
                                        #           Child Loop BB6_128 Depth 5
                                        #       Child Loop BB6_160 Depth 3
                                        #       Child Loop BB6_163 Depth 3
                                        #       Child Loop BB6_155 Depth 3
                                        #       Child Loop BB6_158 Depth 3
	ld.d	$a0, $s5, 24
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a1, $a7, 2
	fldx.s	$fa0, $a0, $a1
	fcvt.d.s	$fs2, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
	ld.w	$s2, $t3, 88
	fmov.d	$fs0, $fa0
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB6_17
# %bb.16:                               # %for.body120.preheader
                                        #   in Loop: Header=BB6_15 Depth=2
	slli.d	$a2, $s2, 2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
.LBB6_17:                               # %for.cond126.preheader
                                        #   in Loop: Header=BB6_15 Depth=2
	bstrpick.d	$a0, $s0, 31, 31
	add.w	$a0, $s0, $a0
	bstrpick.d	$a0, $a0, 32, 1
	ld.d	$s0, $s5, 0
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	xor	$a0, $a3, $a0
	sltu	$a0, $zero, $a0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	slli.d	$s1, $a2, 5
	add.d	$a1, $s0, $s1
	ld.d	$a1, $a1, 8
	and	$s7, $a0, $s7
	fcvt.s.d	$fs0, $fs0
	slli.d	$s8, $a2, 3
	slli.d	$a0, $a3, 3
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 192                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	ld.d	$t5, $sp, 184                   # 8-byte Folded Reload
	vldi	$vr6, -1184
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB6_87
# %bb.18:                               # %for.body132.lr.ph
                                        #   in Loop: Header=BB6_15 Depth=2
	move	$s3, $zero
	move	$s4, $zero
	fcvt.d.s	$fs5, $fs0
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_19:                               #   in Loop: Header=BB6_21 Depth=3
	move	$a2, $zero
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 184                   # 8-byte Folded Reload
	vldi	$vr6, -1184
.LBB6_20:                               # %for.cond.cleanup146
                                        #   in Loop: Header=BB6_21 Depth=3
	maskeqz	$a0, $a2, $s7
	add.d	$a1, $s0, $s1
	ld.d	$a1, $a1, 8
	sub.w	$s2, $s2, $a0
	masknez	$a0, $a2, $s7
	addi.d	$s3, $s3, 1
	add.w	$s4, $a0, $s4
	bge	$s3, $a1, .LBB6_86
.LBB6_21:                               # %for.body132
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_24 Depth 4
                                        #           Child Loop BB6_29 Depth 5
                                        #             Child Loop BB6_44 Depth 6
                                        #             Child Loop BB6_48 Depth 6
                                        #             Child Loop BB6_35 Depth 6
                                        #             Child Loop BB6_52 Depth 6
                                        #             Child Loop BB6_74 Depth 6
                                        #             Child Loop BB6_57 Depth 6
                                        #             Child Loop BB6_79 Depth 6
                                        #             Child Loop BB6_83 Depth 6
                                        #             Child Loop BB6_63 Depth 6
	add.d	$a0, $s0, $s1
	ld.d	$a0, $a0, 16
	slli.d	$a1, $s3, 4
	fldx.s	$fs1, $a0, $a1
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	bge	$s4, $s2, .LBB6_19
# %bb.22:                               # %for.body147.preheader
                                        #   in Loop: Header=BB6_21 Depth=3
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	move	$a2, $zero
	fcvt.d.s	$fa1, $fs1
	fdiv.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fs6, $fa0
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a3, $s4, 31, 0
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	b	.LBB6_24
	.p2align	4, , 16
.LBB6_23:                               # %while.end
                                        #   in Loop: Header=BB6_24 Depth=4
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	addi.w	$a0, $a3, 0
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	bge	$a0, $s2, .LBB6_85
.LBB6_24:                               # %for.body147
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_29 Depth 5
                                        #             Child Loop BB6_44 Depth 6
                                        #             Child Loop BB6_48 Depth 6
                                        #             Child Loop BB6_35 Depth 6
                                        #             Child Loop BB6_52 Depth 6
                                        #             Child Loop BB6_74 Depth 6
                                        #             Child Loop BB6_57 Depth 6
                                        #             Child Loop BB6_79 Depth 6
                                        #             Child Loop BB6_83 Depth 6
                                        #             Child Loop BB6_63 Depth 6
	ld.d	$a0, $s5, 8
	ldx.d	$a0, $a0, $s8
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a3, 5
	alsl.d	$a1, $a3, $a1, 3
	add.d	$s6, $a0, $a1
	fld.s	$fa1, $s6, 4
	beqz	$s7, .LBB6_26
# %bb.25:                               # %if.then157
                                        #   in Loop: Header=BB6_24 Depth=4
	fcvt.d.s	$fa0, $fa1
	fld.d	$fa2, $sp, 72                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa0, $fs5
	fcvt.s.d	$fa0, $fa0
	b	.LBB6_27
	.p2align	4, , 16
.LBB6_26:                               # %if.else
                                        #   in Loop: Header=BB6_24 Depth=4
	fneg.s	$fa0, $fa1
	fdiv.s	$fa0, $fa0, $fs0
.LBB6_27:                               # %if.end165
                                        #   in Loop: Header=BB6_24 Depth=4
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs3
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$s3, $fa1
	fcmp.cule.s	$fcc0, $fa0, $fs6
	fsel	$fs7, $fs6, $fa0, $fcc0
	movcf2gr	$a0, $fcc0
	add.d	$a2, $a2, $a0
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$s2, $a3, $a0, 2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$s5, $a3, $a0, 3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	alsl.d	$s4, $a3, $a0, 2
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_28:                               # %if.end286
                                        #   in Loop: Header=BB6_29 Depth=5
	addi.w	$a0, $s3, -1
	move	$s7, $s1
	masknez	$a0, $a0, $s1
	or	$a0, $s0, $a0
	ld.d	$a1, $sp, 296
	movgr2cf	$fcc0, $a1
	movcf2gr	$a1, $fcc0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$s3, $a0, $a1
	fsub.s	$fs7, $fs7, $fa7
	fcmp.cle.s	$fcc0, $fs7, $fs4
	slti	$a0, $s3, 0
	movcf2gr	$a1, $fcc0
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	slt	$a1, $s3, $a1
	xori	$a1, $a1, 1
	or	$a0, $a0, $a1
	bnez	$a0, .LBB6_23
.LBB6_29:                               # %while.body
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        #         Parent Loop BB6_24 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB6_44 Depth 6
                                        #             Child Loop BB6_48 Depth 6
                                        #             Child Loop BB6_35 Depth 6
                                        #             Child Loop BB6_52 Depth 6
                                        #             Child Loop BB6_74 Depth 6
                                        #             Child Loop BB6_57 Depth 6
                                        #             Child Loop BB6_79 Depth 6
                                        #             Child Loop BB6_83 Depth 6
                                        #             Child Loop BB6_63 Depth 6
	addi.w	$a0, $s3, 1
	masknez	$a1, $s3, $s7
	move	$s1, $s7
	maskeqz	$s0, $a0, $s7
	or	$a0, $s0, $a1
	movgr2fr.w	$fa0, $a0
	fld.s	$fs1, $s6, 4
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs3, $fa0
	fcvt.s.d	$fa0, $fa0
	fsub.s	$fs2, $fa0, $fs1
	fdiv.s	$fa0, $fs2, $fs0
	fcmp.clt.s	$fcc0, $fa0, $fs7
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 296
	fsel	$fa0, $fs7, $fa0, $fcc0
	xvst	$xr0, $sp, 304                  # 32-byte Folded Spill
	pcaddu18i	$ra, %call36(glibc_compat_rand)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $a3, 120
	ld.w	$a1, $a3, 16
	mod.d	$s7, $a0, $a2
	slli.d	$s8, $s7, 5
	beqz	$a1, .LBB6_32
# %bb.30:                               # %while.body
                                        #   in Loop: Header=BB6_29 Depth=5
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB6_168
# %bb.31:                               # %if.then219
                                        #   in Loop: Header=BB6_29 Depth=5
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	fldx.s	$fa2, $a0, $a2
	alsl.d	$a0, $s7, $s8, 4
	add.d	$a2, $a1, $a0
	ori	$a1, $zero, 1
	addi.d	$a5, $sp, 344
	move	$a0, $s6
	move	$a4, $fp
	xvld	$xr0, $sp, 304                  # 32-byte Folded Reload
                                        # kill: def $f0 killed $f0 killed $xr0
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(attenuate_fluxes)
	jirl	$ra, $ra, 0
	xvld	$xr7, $sp, 304                  # 32-byte Folded Reload
	ld.d	$a1, $fp, 16
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	b	.LBB6_64
	.p2align	4, , 16
.LBB6_32:                               # %if.then228
                                        #   in Loop: Header=BB6_29 Depth=5
	ld.w	$a0, $a3, 36
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $t0, 16
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB6_37
# %bb.33:                               # %iter.check657
                                        #   in Loop: Header=BB6_29 Depth=5
	ld.d	$a2, $t0, 0
	ori	$a4, $zero, 48
	mul.d	$a5, $s7, $a4
	add.d	$t4, $a1, $a5
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	fldx.s	$fa0, $a2, $a4
	ld.d	$a4, $t0, 40
	ld.w	$a2, $a3, 44
	ld.w	$a6, $a3, 12
	ld.w	$a7, $a3, 8
	fld.s	$fa1, $t0, 48
	fld.s	$fa2, $a3, 60
	mul.d	$a2, $a2, $a6
	mul.d	$a2, $a2, $a7
	movgr2fr.w	$fa3, $a2
	fld.s	$fa4, $s6, 4
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa3, $fa2, $fa3
	fld.s	$fa2, $t0, 52
	fdiv.s	$fa3, $fa4, $fa3
	ftintrz.w.s	$fa3, $fa3
	movfr2gr.s	$a2, $fa3
	ldx.d	$a7, $a1, $a5
	mod.w	$a2, $a2, $a6
	fld.s	$fa3, $s6, 0
	slli.d	$a5, $a2, 3
	ldx.d	$a2, $a7, $a5
	ld.d	$a6, $t4, 24
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa0, $fa0, $fs0
	ld.d	$t5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 184                   # 8-byte Folded Reload
	ori	$a3, $zero, 4
	vldi	$vr6, -1184
	xvld	$xr7, $sp, 304                  # 32-byte Folded Reload
	move	$a7, $zero
	bgeu	$a0, $a3, .LBB6_38
.LBB6_34:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB6_29 Depth=5
	sub.d	$t0, $a0, $a7
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$t1, $a7, $a3, 2
	alsl.d	$t2, $a7, $t6, 2
	alsl.d	$a6, $a7, $a6, 2
	.p2align	4, , 16
.LBB6_35:                               # %for.body.i
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        #         Parent Loop BB6_24 Depth=4
                                        #           Parent Loop BB6_29 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fld.s	$fa3, $a6, 0
	fst.s	$fa3, $t2, 0
	fmul.s	$fa3, $fa7, $fa3
	fst.s	$fa3, $t1, 0
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 4
	addi.d	$a6, $a6, 4
	bnez	$t0, .LBB6_35
# %bb.36:                               #   in Loop: Header=BB6_29 Depth=5
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	move	$t1, $t5
	move	$t2, $a0
	b	.LBB6_52
.LBB6_37:                               #   in Loop: Header=BB6_29 Depth=5
	xvld	$xr7, $sp, 304                  # 32-byte Folded Reload
	b	.LBB6_64
.LBB6_38:                               # %vector.memcheck648
                                        #   in Loop: Header=BB6_29 Depth=5
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ori	$t0, $zero, 16
	ori	$t1, $zero, 64
	bltu	$a3, $t0, .LBB6_34
# %bb.39:                               # %vector.memcheck648
                                        #   in Loop: Header=BB6_29 Depth=5
	sub.d	$t0, $t6, $a6
	bltu	$t0, $t1, .LBB6_34
# %bb.40:                               # %vector.memcheck648
                                        #   in Loop: Header=BB6_29 Depth=5
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	sub.d	$t0, $a3, $a6
	bltu	$t0, $t1, .LBB6_34
# %bb.41:                               # %vector.main.loop.iter.check659
                                        #   in Loop: Header=BB6_29 Depth=5
	ori	$a3, $zero, 16
	bgeu	$a0, $a3, .LBB6_43
# %bb.42:                               #   in Loop: Header=BB6_29 Depth=5
	move	$a7, $zero
	b	.LBB6_47
.LBB6_43:                               # %vector.ph660
                                        #   in Loop: Header=BB6_29 Depth=5
	bstrpick.d	$a7, $a0, 30, 4
	slli.d	$a7, $a7, 4
	xvreplve0.w	$xr3, $xr7
	addi.d	$t0, $a6, 32
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	move	$t3, $a7
	.p2align	4, , 16
.LBB6_44:                               # %vector.body665
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        #         Parent Loop BB6_24 Depth=4
                                        #           Parent Loop BB6_29 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	xvld	$xr4, $t0, -32
	xvld	$xr5, $t0, 0
	xvst	$xr4, $t1, -32
	xvst	$xr5, $t1, 0
	xvfmul.s	$xr4, $xr3, $xr4
	xvfmul.s	$xr5, $xr3, $xr5
	xvst	$xr4, $t2, -32
	xvst	$xr5, $t2, 0
	addi.d	$t3, $t3, -16
	addi.d	$t0, $t0, 64
	addi.d	$t2, $t2, 64
	addi.d	$t1, $t1, 64
	bnez	$t3, .LBB6_44
# %bb.45:                               # %middle.block670
                                        #   in Loop: Header=BB6_29 Depth=5
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	move	$t1, $t5
	move	$t2, $a0
	beq	$a7, $a0, .LBB6_52
# %bb.46:                               # %vec.epilog.iter.check675
                                        #   in Loop: Header=BB6_29 Depth=5
	andi	$t0, $a0, 12
	beqz	$t0, .LBB6_34
.LBB6_47:                               # %vec.epilog.ph674
                                        #   in Loop: Header=BB6_29 Depth=5
	move	$t3, $a7
	bstrpick.d	$a7, $a0, 30, 2
	slli.d	$a7, $a7, 2
	vreplvei.w	$vr3, $vr7, 0
	sub.d	$t0, $t3, $a7
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$t1, $t3, $a3, 2
	alsl.d	$t2, $t3, $t6, 2
	alsl.d	$t3, $t3, $a6, 2
	.p2align	4, , 16
.LBB6_48:                               # %vec.epilog.vector.body682
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        #         Parent Loop BB6_24 Depth=4
                                        #           Parent Loop BB6_29 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vld	$vr4, $t3, 0
	vst	$vr4, $t2, 0
	vfmul.s	$vr4, $vr3, $vr4
	vst	$vr4, $t1, 0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	addi.d	$t3, $t3, 16
	bnez	$t0, .LBB6_48
# %bb.49:                               # %vec.epilog.middle.block686
                                        #   in Loop: Header=BB6_29 Depth=5
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	move	$t1, $t5
	move	$t2, $a0
	beq	$a7, $a0, .LBB6_52
	b	.LBB6_34
	.p2align	4, , 16
.LBB6_50:                               # %if.else.i.i
                                        #   in Loop: Header=BB6_52 Depth=6
	fdiv.s	$fa4, $fa3, $fa1
	fmadd.s	$fa4, $fa1, $fa6, $fa4
	ftintrz.w.s	$fa4, $fa4
	movfr2gr.s	$a6, $fa4
	slli.w	$a6, $a6, 1
	alsl.d	$a7, $a6, $a4, 2
	slli.d	$a6, $a6, 2
	fldx.s	$fa4, $a4, $a6
	fld.s	$fa5, $a7, 4
	fmadd.s	$fa3, $fa4, $fa3, $fa5
.LBB6_51:                               # %interpolateTable.exit.i
                                        #   in Loop: Header=BB6_52 Depth=6
	fst.s	$fa3, $t1, 0
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 4
	beqz	$t2, .LBB6_54
.LBB6_52:                               # %for.body34.i
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        #         Parent Loop BB6_24 Depth=4
                                        #           Parent Loop BB6_29 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fld.s	$fa3, $t0, 0
	fcmp.clt.s	$fcc0, $fa2, $fa3
	bceqz	$fcc0, .LBB6_50
# %bb.53:                               #   in Loop: Header=BB6_52 Depth=6
	vldi	$vr3, -1168
	b	.LBB6_51
	.p2align	4, , 16
.LBB6_54:                               # %for.cond.cleanup33.i
                                        #   in Loop: Header=BB6_29 Depth=5
	ld.d	$a3, $t4, 8
	ld.d	$a4, $s6, 24
	ldx.d	$a3, $a3, $a5
	ori	$a5, $zero, 8
	bgeu	$a0, $a5, .LBB6_66
# %bb.55:                               #   in Loop: Header=BB6_29 Depth=5
	move	$a5, $zero
.LBB6_56:                               # %for.body48.i.preheader
                                        #   in Loop: Header=BB6_29 Depth=5
	sub.d	$a6, $a0, $a5
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a7, $a5, $a7, 2
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$t0, $a5, $t0, 2
	alsl.d	$a4, $a5, $a4, 2
	alsl.d	$t1, $a5, $t6, 2
	alsl.d	$a3, $a5, $a3, 2
	.p2align	4, , 16
.LBB6_57:                               # %for.body48.i
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        #         Parent Loop BB6_24 Depth=4
                                        #           Parent Loop BB6_29 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $t1, 0
	fld.s	$fa3, $a4, 0
	fld.s	$fa4, $t0, 0
	fdiv.s	$fa1, $fa1, $fa2
	fsub.s	$fa1, $fa3, $fa1
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa0, $fa1
	fst.s	$fa2, $a7, 0
	fld.s	$fa2, $a4, 0
	fsub.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $a4, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	addi.d	$a4, $a4, 4
	addi.d	$t1, $t1, 4
	addi.d	$a3, $a3, 4
	bnez	$a6, .LBB6_57
.LBB6_58:                               # %iter.check563
                                        #   in Loop: Header=BB6_29 Depth=5
	ori	$a3, $zero, 4
	bltu	$a0, $a3, .LBB6_61
# %bb.59:                               # %vector.memcheck553
                                        #   in Loop: Header=BB6_29 Depth=5
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	bgeu	$a2, $a3, .LBB6_76
# %bb.60:                               # %vector.memcheck553
                                        #   in Loop: Header=BB6_29 Depth=5
	alsl.d	$a3, $a0, $a2, 2
	bgeu	$fp, $a3, .LBB6_76
.LBB6_61:                               #   in Loop: Header=BB6_29 Depth=5
	move	$a3, $zero
.LBB6_62:                               # %for.body76.i.preheader
                                        #   in Loop: Header=BB6_29 Depth=5
	sub.d	$a0, $a0, $a3
	alsl.d	$a2, $a3, $a2, 2
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a4, 2
	.p2align	4, , 16
.LBB6_63:                               # %for.body76.i
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        #         Parent Loop BB6_24 Depth=4
                                        #           Parent Loop BB6_29 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB6_63
.LBB6_64:                               # %if.end238
                                        #   in Loop: Header=BB6_29 Depth=5
	fadd.s	$fa0, $fs1, $fs2
	fmadd.s	$fa1, $fs7, $fs0, $fs1
	ld.d	$a0, $sp, 296
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa1, $fa0, $fcc0
	ld.w	$a2, $s2, 0
	fst.s	$fa0, $s6, 4
	fcvt.d.s	$fa0, $fa7
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a2, 3
	alsl.d	$a4, $s7, $s8, 4
	ld.d	$s7, $s5, 0
	add.d	$a4, $a1, $a4
	ld.w	$a1, $s4, 0
	fstx.d	$fa0, $a0, $a3
	stx.d	$a4, $s7, $a3
	addi.w	$a2, $a2, 1
	st.w	$a2, $s2, 0
	blt	$a2, $a1, .LBB6_28
# %bb.65:                               # %if.then264
                                        #   in Loop: Header=BB6_29 Depth=5
	slli.w	$a1, $a1, 1
	st.w	$a1, $s4, 0
	slli.d	$s8, $a1, 3
	move	$a1, $s8
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	xvld	$xr7, $sp, 304                  # 32-byte Folded Reload
	st.d	$a0, $s5, 0
	b	.LBB6_28
.LBB6_66:                               # %vector.memcheck594
                                        #   in Loop: Header=BB6_29 Depth=5
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a7, $a0, $a5, 2
	alsl.d	$a6, $a0, $a4, 2
	sltu	$a5, $fp, $a6
	sltu	$t0, $a4, $a7
	and	$t0, $a5, $t0
	move	$a5, $zero
	bnez	$t0, .LBB6_56
# %bb.67:                               # %vector.memcheck594
                                        #   in Loop: Header=BB6_29 Depth=5
	alsl.d	$t0, $a0, $a3, 2
	sltu	$t1, $fp, $t0
	sltu	$t2, $a3, $a7
	and	$t1, $t1, $t2
	bnez	$t1, .LBB6_56
# %bb.68:                               # %vector.memcheck594
                                        #   in Loop: Header=BB6_29 Depth=5
	alsl.d	$t1, $a0, $t6, 2
	sltu	$t2, $fp, $t1
	ld.d	$t3, $sp, 208                   # 8-byte Folded Reload
	sltu	$t3, $t3, $a7
	and	$t2, $t2, $t3
	bnez	$t2, .LBB6_56
# %bb.69:                               # %vector.memcheck594
                                        #   in Loop: Header=BB6_29 Depth=5
	ld.d	$t2, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$t2, $a0, $t2, 2
	sltu	$t3, $fp, $t2
	sltu	$a7, $t5, $a7
	and	$a7, $t3, $a7
	bnez	$a7, .LBB6_56
# %bb.70:                               # %vector.memcheck594
                                        #   in Loop: Header=BB6_29 Depth=5
	sltu	$a7, $a4, $t0
	sltu	$t0, $a3, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_56
# %bb.71:                               # %vector.memcheck594
                                        #   in Loop: Header=BB6_29 Depth=5
	sltu	$a7, $a4, $t1
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	sltu	$t0, $t0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_56
# %bb.72:                               # %vector.memcheck594
                                        #   in Loop: Header=BB6_29 Depth=5
	sltu	$a7, $a4, $t2
	sltu	$a6, $t5, $a6
	and	$a6, $a7, $a6
	bnez	$a6, .LBB6_56
# %bb.73:                               # %vector.ph632
                                        #   in Loop: Header=BB6_29 Depth=5
	bstrpick.d	$a5, $a0, 30, 3
	slli.d	$a5, $a5, 3
	xvreplve0.w	$xr1, $xr0
	move	$a6, $a3
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	move	$t0, $a4
	move	$t1, $t5
	move	$t2, $fp
	move	$t3, $a5
	.p2align	4, , 16
.LBB6_74:                               # %vector.body637
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        #         Parent Loop BB6_24 Depth=4
                                        #           Parent Loop BB6_29 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	xvld	$xr2, $a6, 0
	xvld	$xr3, $a7, 0
	xvld	$xr4, $t0, 0
	xvld	$xr5, $t1, 0
	xvfdiv.s	$xr2, $xr2, $xr3
	xvfsub.s	$xr2, $xr4, $xr2
	xvfmul.s	$xr2, $xr2, $xr5
	xvfmul.s	$xr3, $xr1, $xr2
	xvst	$xr3, $t2, 0
	xvfsub.s	$xr2, $xr4, $xr2
	xvst	$xr2, $t0, 0
	addi.d	$t3, $t3, -8
	addi.d	$t2, $t2, 32
	addi.d	$t1, $t1, 32
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	addi.d	$a6, $a6, 32
	bnez	$t3, .LBB6_74
# %bb.75:                               # %middle.block645
                                        #   in Loop: Header=BB6_29 Depth=5
	bne	$a5, $a0, .LBB6_56
	b	.LBB6_58
.LBB6_76:                               # %vector.main.loop.iter.check565
                                        #   in Loop: Header=BB6_29 Depth=5
	ori	$a3, $zero, 16
	bgeu	$a0, $a3, .LBB6_78
# %bb.77:                               #   in Loop: Header=BB6_29 Depth=5
	move	$a3, $zero
	b	.LBB6_82
.LBB6_78:                               # %vector.ph566
                                        #   in Loop: Header=BB6_29 Depth=5
	bstrpick.d	$a3, $a0, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a2, 32
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_79:                               # %vector.body569
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        #         Parent Loop BB6_24 Depth=4
                                        #           Parent Loop BB6_29 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a6, $a6, -16
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB6_79
# %bb.80:                               # %middle.block576
                                        #   in Loop: Header=BB6_29 Depth=5
	beq	$a3, $a0, .LBB6_64
# %bb.81:                               # %vec.epilog.iter.check581
                                        #   in Loop: Header=BB6_29 Depth=5
	andi	$a4, $a0, 12
	beqz	$a4, .LBB6_62
.LBB6_82:                               # %vec.epilog.ph580
                                        #   in Loop: Header=BB6_29 Depth=5
	move	$a6, $a3
	bstrpick.d	$a3, $a0, 30, 2
	slli.d	$a3, $a3, 2
	sub.d	$a4, $a6, $a3
	alsl.d	$a5, $a6, $a2, 2
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a6, $a6, $a7, 2
	.p2align	4, , 16
.LBB6_83:                               # %vec.epilog.vector.body586
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_21 Depth=3
                                        #         Parent Loop BB6_24 Depth=4
                                        #           Parent Loop BB6_29 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a4, .LBB6_83
# %bb.84:                               # %vec.epilog.middle.block591
                                        #   in Loop: Header=BB6_29 Depth=5
	beq	$a3, $a0, .LBB6_64
	b	.LBB6_62
	.p2align	4, , 16
.LBB6_85:                               # %for.cond.cleanup146.loopexit
                                        #   in Loop: Header=BB6_21 Depth=3
	ld.d	$s0, $s5, 0
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 184                   # 8-byte Folded Reload
	vldi	$vr6, -1184
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB6_20
	.p2align	4, , 16
.LBB6_86:                               # %for.cond300.preheader.loopexit
                                        #   in Loop: Header=BB6_15 Depth=2
	ld.w	$s2, $t3, 88
.LBB6_87:                               # %for.cond300.preheader
                                        #   in Loop: Header=BB6_15 Depth=2
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB6_13
# %bb.88:                               # %for.body305.lr.ph
                                        #   in Loop: Header=BB6_15 Depth=2
	move	$s0, $zero
	fneg.s	$fs1, $fs0
	b	.LBB6_91
	.p2align	4, , 16
.LBB6_89:                               # %for.cond.cleanup313.loopexit
                                        #   in Loop: Header=BB6_91 Depth=3
	ld.w	$s2, $t3, 88
.LBB6_90:                               # %for.cond.cleanup313
                                        #   in Loop: Header=BB6_91 Depth=3
	addi.d	$s0, $s0, 1
	bge	$s0, $s2, .LBB6_148
.LBB6_91:                               # %for.body305
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_94 Depth 4
                                        #           Child Loop BB6_109 Depth 5
                                        #           Child Loop BB6_113 Depth 5
                                        #           Child Loop BB6_101 Depth 5
                                        #           Child Loop BB6_117 Depth 5
                                        #           Child Loop BB6_137 Depth 5
                                        #           Child Loop BB6_122 Depth 5
                                        #           Child Loop BB6_142 Depth 5
                                        #           Child Loop BB6_146 Depth 5
                                        #           Child Loop BB6_128 Depth 5
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$s1, $a1, $a0
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB6_90
# %bb.92:                               # %for.body314.lr.ph
                                        #   in Loop: Header=BB6_91 Depth=3
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$s2, $a1, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$s3, $s0, $a0, 3
	b	.LBB6_94
	.p2align	4, , 16
.LBB6_93:                               # %if.end355
                                        #   in Loop: Header=BB6_94 Depth=4
	fld.s	$fa0, $s6, 4
	fneg.s	$fa1, $fa7
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	fst.s	$fa0, $s6, 4
	ori	$a0, $zero, 1
	bge	$a0, $s4, .LBB6_89
.LBB6_94:                               # %for.body314
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_91 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_109 Depth 5
                                        #           Child Loop BB6_113 Depth 5
                                        #           Child Loop BB6_101 Depth 5
                                        #           Child Loop BB6_117 Depth 5
                                        #           Child Loop BB6_137 Depth 5
                                        #           Child Loop BB6_122 Depth 5
                                        #           Child Loop BB6_142 Depth 5
                                        #           Child Loop BB6_146 Depth 5
                                        #           Child Loop BB6_128 Depth 5
	ld.d	$a0, $s5, 8
	move	$s4, $s1
	addi.d	$s1, $s1, -1
	ldx.d	$a0, $a0, $s8
	slli.d	$a1, $s1, 3
	fldx.d	$fa0, $s2, $a1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a2, $a0, $a2
	ld.w	$a0, $t3, 16
	fcvt.s.d	$fa7, $fa0
	slli.d	$a3, $s0, 5
	alsl.d	$a3, $s0, $a3, 3
	add.d	$s6, $a2, $a3
	beqz	$a0, .LBB6_97
# %bb.95:                               # %for.body314
                                        #   in Loop: Header=BB6_94 Depth=4
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB6_93
# %bb.96:                               # %if.then331
                                        #   in Loop: Header=BB6_94 Depth=4
	ld.d	$a0, $s3, 0
	ld.d	$a3, $s5, 0
	ldx.d	$a2, $a0, $a1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	fldx.s	$fa2, $a3, $a0
	addi.d	$a5, $sp, 344
	move	$a0, $s6
	move	$a1, $zero
	move	$a3, $t3
	move	$a4, $s5
	fmov.s	$fa0, $fa7
	fmov.s	$fa1, $fs1
	xvst	$xr7, $sp, 304                  # 32-byte Folded Spill
	pcaddu18i	$ra, %call36(attenuate_fluxes)
	jirl	$ra, $ra, 0
	xvld	$xr7, $sp, 304                  # 32-byte Folded Reload
	vldi	$vr6, -1184
	ld.d	$t5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	b	.LBB6_93
	.p2align	4, , 16
.LBB6_97:                               # %if.then345
                                        #   in Loop: Header=BB6_94 Depth=4
	ld.w	$a0, $t3, 36
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB6_93
# %bb.98:                               # %iter.check521
                                        #   in Loop: Header=BB6_94 Depth=4
	ld.d	$a2, $s3, 0
	ld.d	$a3, $s5, 0
	ldx.d	$a2, $a2, $a1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a1
	ld.d	$a3, $s5, 40
	ld.w	$a1, $t3, 44
	ld.w	$a4, $t3, 12
	ld.w	$a5, $t3, 8
	fld.s	$fa1, $s5, 48
	fld.s	$fa2, $t3, 60
	mul.d	$a1, $a1, $a4
	mul.d	$a1, $a1, $a5
	movgr2fr.w	$fa3, $a1
	fld.s	$fa4, $s6, 4
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa3, $fa2, $fa3
	fld.s	$fa2, $s5, 52
	fdiv.s	$fa3, $fa4, $fa3
	ftintrz.w.s	$fa3, $fa3
	movfr2gr.s	$a1, $fa3
	ld.d	$a5, $a2, 0
	mod.w	$a1, $a1, $a4
	fld.s	$fa3, $s6, 0
	slli.d	$a4, $a1, 3
	ldx.d	$a1, $a5, $a4
	ld.d	$a5, $a2, 24
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa0, $fa0, $fs1
	ori	$a6, $zero, 4
	bgeu	$a0, $a6, .LBB6_103
# %bb.99:                               #   in Loop: Header=BB6_94 Depth=4
	move	$a6, $zero
.LBB6_100:                              # %for.body.i275.preheader
                                        #   in Loop: Header=BB6_94 Depth=4
	sub.d	$a7, $a0, $a6
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$t0, $a6, $t0, 2
	alsl.d	$t1, $a6, $t5, 2
	alsl.d	$a5, $a6, $a5, 2
	.p2align	4, , 16
.LBB6_101:                              # %for.body.i275
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_91 Depth=3
                                        #         Parent Loop BB6_94 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fld.s	$fa3, $a5, 0
	fst.s	$fa3, $t1, 0
	fmul.s	$fa3, $fa3, $fa7
	fst.s	$fa3, $t0, 0
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	addi.d	$a5, $a5, 4
	bnez	$a7, .LBB6_101
# %bb.102:                              #   in Loop: Header=BB6_94 Depth=4
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	move	$t0, $t4
	move	$t1, $a0
	b	.LBB6_117
.LBB6_103:                              # %vector.memcheck512
                                        #   in Loop: Header=BB6_94 Depth=4
	move	$a6, $zero
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ori	$t0, $zero, 16
	ori	$t1, $zero, 64
	bltu	$a7, $t0, .LBB6_100
# %bb.104:                              # %vector.memcheck512
                                        #   in Loop: Header=BB6_94 Depth=4
	sub.d	$a7, $t5, $a5
	bltu	$a7, $t1, .LBB6_100
# %bb.105:                              # %vector.memcheck512
                                        #   in Loop: Header=BB6_94 Depth=4
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	sub.d	$a7, $a7, $a5
	bltu	$a7, $t1, .LBB6_100
# %bb.106:                              # %vector.main.loop.iter.check523
                                        #   in Loop: Header=BB6_94 Depth=4
	ori	$a6, $zero, 16
	bgeu	$a0, $a6, .LBB6_108
# %bb.107:                              #   in Loop: Header=BB6_94 Depth=4
	move	$a6, $zero
	b	.LBB6_112
.LBB6_108:                              # %vector.ph524
                                        #   in Loop: Header=BB6_94 Depth=4
	bstrpick.d	$a6, $a0, 30, 4
	slli.d	$a6, $a6, 4
	xvreplve0.w	$xr3, $xr7
	addi.d	$a7, $a5, 32
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	move	$t2, $a6
	.p2align	4, , 16
.LBB6_109:                              # %vector.body529
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_91 Depth=3
                                        #         Parent Loop BB6_94 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	xvld	$xr4, $a7, -32
	xvld	$xr5, $a7, 0
	xvst	$xr4, $t0, -32
	xvst	$xr5, $t0, 0
	xvfmul.s	$xr4, $xr4, $xr3
	xvfmul.s	$xr5, $xr5, $xr3
	xvst	$xr4, $t1, -32
	xvst	$xr5, $t1, 0
	addi.d	$t2, $t2, -16
	addi.d	$a7, $a7, 64
	addi.d	$t1, $t1, 64
	addi.d	$t0, $t0, 64
	bnez	$t2, .LBB6_109
# %bb.110:                              # %middle.block534
                                        #   in Loop: Header=BB6_94 Depth=4
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	move	$t0, $t4
	move	$t1, $a0
	beq	$a6, $a0, .LBB6_117
# %bb.111:                              # %vec.epilog.iter.check539
                                        #   in Loop: Header=BB6_94 Depth=4
	andi	$a7, $a0, 12
	beqz	$a7, .LBB6_100
.LBB6_112:                              # %vec.epilog.ph538
                                        #   in Loop: Header=BB6_94 Depth=4
	move	$t2, $a6
	bstrpick.d	$a6, $a0, 30, 2
	slli.d	$a6, $a6, 2
	vreplvei.w	$vr3, $vr7, 0
	sub.d	$a7, $t2, $a6
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$t0, $t2, $t0, 2
	alsl.d	$t1, $t2, $t5, 2
	alsl.d	$t2, $t2, $a5, 2
	.p2align	4, , 16
.LBB6_113:                              # %vec.epilog.vector.body546
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_91 Depth=3
                                        #         Parent Loop BB6_94 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr4, $t2, 0
	vst	$vr4, $t1, 0
	vfmul.s	$vr4, $vr4, $vr3
	vst	$vr4, $t0, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	bnez	$a7, .LBB6_113
# %bb.114:                              # %vec.epilog.middle.block550
                                        #   in Loop: Header=BB6_94 Depth=4
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	move	$t0, $t4
	move	$t1, $a0
	beq	$a6, $a0, .LBB6_117
	b	.LBB6_100
	.p2align	4, , 16
.LBB6_115:                              # %if.else.i.i289
                                        #   in Loop: Header=BB6_117 Depth=5
	fdiv.s	$fa4, $fa3, $fa1
	fmadd.s	$fa4, $fa1, $fa6, $fa4
	ftintrz.w.s	$fa4, $fa4
	movfr2gr.s	$a5, $fa4
	slli.w	$a5, $a5, 1
	alsl.d	$a6, $a5, $a3, 2
	slli.d	$a5, $a5, 2
	fldx.s	$fa4, $a3, $a5
	fld.s	$fa5, $a6, 4
	fmadd.s	$fa3, $fa4, $fa3, $fa5
.LBB6_116:                              # %interpolateTable.exit.i296
                                        #   in Loop: Header=BB6_117 Depth=5
	fst.s	$fa3, $t0, 0
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	beqz	$t1, .LBB6_119
.LBB6_117:                              # %for.body34.i285
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_91 Depth=3
                                        #         Parent Loop BB6_94 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fld.s	$fa3, $a7, 0
	fcmp.clt.s	$fcc0, $fa2, $fa3
	bceqz	$fcc0, .LBB6_115
# %bb.118:                              #   in Loop: Header=BB6_117 Depth=5
	vldi	$vr3, -1168
	b	.LBB6_116
	.p2align	4, , 16
.LBB6_119:                              # %for.cond.cleanup33.i301
                                        #   in Loop: Header=BB6_94 Depth=4
	ld.d	$a2, $a2, 8
	ld.d	$a3, $s6, 32
	ldx.d	$a2, $a2, $a4
	ori	$a4, $zero, 8
	bgeu	$a0, $a4, .LBB6_129
# %bb.120:                              #   in Loop: Header=BB6_94 Depth=4
	move	$a4, $zero
.LBB6_121:                              # %for.body48.i307.preheader
                                        #   in Loop: Header=BB6_94 Depth=4
	sub.d	$a5, $a0, $a4
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a6, 2
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a7, $a4, $a7, 2
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$t0, $a4, $t5, 2
	alsl.d	$a2, $a4, $a2, 2
	.p2align	4, , 16
.LBB6_122:                              # %for.body48.i307
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_91 Depth=3
                                        #         Parent Loop BB6_94 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $t0, 0
	fld.s	$fa3, $a3, 0
	fld.s	$fa4, $a7, 0
	fdiv.s	$fa1, $fa1, $fa2
	fsub.s	$fa1, $fa3, $fa1
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa0, $fa1
	fst.s	$fa2, $a6, 0
	fld.s	$fa2, $a3, 0
	fsub.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $a3, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	addi.d	$a3, $a3, 4
	addi.d	$t0, $t0, 4
	addi.d	$a2, $a2, 4
	bnez	$a5, .LBB6_122
.LBB6_123:                              # %iter.check
                                        #   in Loop: Header=BB6_94 Depth=4
	ori	$a2, $zero, 4
	bltu	$a0, $a2, .LBB6_126
# %bb.124:                              # %vector.memcheck
                                        #   in Loop: Header=BB6_94 Depth=4
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	bgeu	$a1, $a2, .LBB6_139
# %bb.125:                              # %vector.memcheck
                                        #   in Loop: Header=BB6_94 Depth=4
	alsl.d	$a2, $a0, $a1, 2
	bgeu	$fp, $a2, .LBB6_139
.LBB6_126:                              #   in Loop: Header=BB6_94 Depth=4
	move	$a2, $zero
.LBB6_127:                              # %for.body76.i323.preheader
                                        #   in Loop: Header=BB6_94 Depth=4
	sub.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $a1, 2
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB6_128:                              # %for.body76.i323
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_91 Depth=3
                                        #         Parent Loop BB6_94 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB6_128
	b	.LBB6_93
.LBB6_129:                              # %vector.memcheck459
                                        #   in Loop: Header=BB6_94 Depth=4
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a6, $a0, $a4, 2
	alsl.d	$a5, $a0, $a3, 2
	sltu	$a4, $fp, $a5
	sltu	$a7, $a3, $a6
	and	$a7, $a4, $a7
	move	$a4, $zero
	bnez	$a7, .LBB6_121
# %bb.130:                              # %vector.memcheck459
                                        #   in Loop: Header=BB6_94 Depth=4
	alsl.d	$a7, $a0, $a2, 2
	sltu	$t0, $fp, $a7
	sltu	$t1, $a2, $a6
	and	$t0, $t0, $t1
	bnez	$t0, .LBB6_121
# %bb.131:                              # %vector.memcheck459
                                        #   in Loop: Header=BB6_94 Depth=4
	alsl.d	$t0, $a0, $t5, 2
	sltu	$t1, $fp, $t0
	ld.d	$t2, $sp, 208                   # 8-byte Folded Reload
	sltu	$t2, $t2, $a6
	and	$t1, $t1, $t2
	bnez	$t1, .LBB6_121
# %bb.132:                              # %vector.memcheck459
                                        #   in Loop: Header=BB6_94 Depth=4
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$t1, $a0, $t1, 2
	sltu	$t2, $fp, $t1
	sltu	$a6, $t4, $a6
	and	$a6, $t2, $a6
	bnez	$a6, .LBB6_121
# %bb.133:                              # %vector.memcheck459
                                        #   in Loop: Header=BB6_94 Depth=4
	sltu	$a6, $a3, $a7
	sltu	$a7, $a2, $a5
	and	$a6, $a6, $a7
	bnez	$a6, .LBB6_121
# %bb.134:                              # %vector.memcheck459
                                        #   in Loop: Header=BB6_94 Depth=4
	sltu	$a6, $a3, $t0
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	sltu	$a7, $a7, $a5
	and	$a6, $a6, $a7
	bnez	$a6, .LBB6_121
# %bb.135:                              # %vector.memcheck459
                                        #   in Loop: Header=BB6_94 Depth=4
	sltu	$a6, $a3, $t1
	sltu	$a5, $t4, $a5
	and	$a5, $a6, $a5
	bnez	$a5, .LBB6_121
# %bb.136:                              # %vector.ph496
                                        #   in Loop: Header=BB6_94 Depth=4
	bstrpick.d	$a4, $a0, 30, 3
	slli.d	$a4, $a4, 3
	xvreplve0.w	$xr1, $xr0
	move	$a5, $a2
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	move	$a7, $a3
	move	$t0, $t4
	move	$t1, $fp
	move	$t2, $a4
	.p2align	4, , 16
.LBB6_137:                              # %vector.body501
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_91 Depth=3
                                        #         Parent Loop BB6_94 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	xvld	$xr2, $a5, 0
	xvld	$xr3, $a6, 0
	xvld	$xr4, $a7, 0
	xvld	$xr5, $t0, 0
	xvfdiv.s	$xr2, $xr2, $xr3
	xvfsub.s	$xr2, $xr4, $xr2
	xvfmul.s	$xr2, $xr2, $xr5
	xvfmul.s	$xr3, $xr1, $xr2
	xvst	$xr3, $t1, 0
	xvfsub.s	$xr2, $xr4, $xr2
	xvst	$xr2, $a7, 0
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 32
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, 32
	bnez	$t2, .LBB6_137
# %bb.138:                              # %middle.block509
                                        #   in Loop: Header=BB6_94 Depth=4
	bne	$a4, $a0, .LBB6_121
	b	.LBB6_123
.LBB6_139:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB6_94 Depth=4
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB6_141
# %bb.140:                              #   in Loop: Header=BB6_94 Depth=4
	move	$a2, $zero
	b	.LBB6_145
.LBB6_141:                              # %vector.ph440
                                        #   in Loop: Header=BB6_94 Depth=4
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a1, 32
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	move	$a5, $a2
	.p2align	4, , 16
.LBB6_142:                              # %vector.body443
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_91 Depth=3
                                        #         Parent Loop BB6_94 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB6_142
# %bb.143:                              # %middle.block449
                                        #   in Loop: Header=BB6_94 Depth=4
	beq	$a2, $a0, .LBB6_93
# %bb.144:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB6_94 Depth=4
	andi	$a3, $a0, 12
	beqz	$a3, .LBB6_127
.LBB6_145:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB6_94 Depth=4
	move	$a5, $a2
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a1, 2
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a5, $a5, $a6, 2
	.p2align	4, , 16
.LBB6_146:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        #       Parent Loop BB6_91 Depth=3
                                        #         Parent Loop BB6_94 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr0, $a5, 0
	vld	$vr1, $a4, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB6_146
# %bb.147:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB6_94 Depth=4
	beq	$a2, $a0, .LBB6_93
	b	.LBB6_127
	.p2align	4, , 16
.LBB6_148:                              # %for.cond365.preheader
                                        #   in Loop: Header=BB6_15 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	blt	$s2, $a0, .LBB6_14
# %bb.149:                              # %for.body370.lr.ph
                                        #   in Loop: Header=BB6_15 Depth=2
	ld.d	$a0, $s5, 8
	ldx.d	$a0, $a0, $s8
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	fld.s	$fa0, $t3, 24
	addi.d	$a2, $a0, 4
	beqz	$s7, .LBB6_152
# %bb.150:                              # %for.body370.us.preheader
                                        #   in Loop: Header=BB6_15 Depth=2
	ori	$a1, $zero, 8
	bgeu	$s2, $a1, .LBB6_154
# %bb.151:                              #   in Loop: Header=BB6_15 Depth=2
	move	$a1, $zero
	b	.LBB6_157
.LBB6_152:                              # %for.body370.preheader
                                        #   in Loop: Header=BB6_15 Depth=2
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB6_159
# %bb.153:                              #   in Loop: Header=BB6_15 Depth=2
	move	$a1, $zero
	b	.LBB6_162
.LBB6_154:                              # %vector.ph
                                        #   in Loop: Header=BB6_15 Depth=2
	bstrpick.d	$a1, $s2, 30, 3
	pcalau12i	$a3, %pc_hi20(.LCPI6_0)
	xvld	$xr1, $a3, %pc_lo12(.LCPI6_0)
	slli.d	$a1, $a1, 3
	xvreplve0.w	$xr2, $xr0
	addi.d	$a2, $a2, 160
	move	$a3, $a1
	.p2align	4, , 16
.LBB6_155:                              # %vector.body
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvffint.s.wu	$xr3, $xr1
	xvfmul.s	$xr3, $xr2, $xr3
	xvstelm.w	$xr3, $a2, -160, 0
	xvstelm.w	$xr3, $a2, -120, 1
	xvstelm.w	$xr3, $a2, -80, 2
	xvstelm.w	$xr3, $a2, -40, 3
	xvstelm.w	$xr3, $a2, 0, 4
	xvstelm.w	$xr3, $a2, 40, 5
	xvstelm.w	$xr3, $a2, 80, 6
	xvstelm.w	$xr3, $a2, 120, 7
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 320
	bnez	$a3, .LBB6_155
# %bb.156:                              # %middle.block
                                        #   in Loop: Header=BB6_15 Depth=2
	beq	$a1, $s2, .LBB6_14
.LBB6_157:                              # %for.body370.us.preheader689
                                        #   in Loop: Header=BB6_15 Depth=2
	slli.d	$a2, $a1, 5
	alsl.d	$a2, $a1, $a2, 3
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 4
	sub.d	$a2, $s2, $a1
	.p2align	4, , 16
.LBB6_158:                              # %for.body370.us
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa1, $a3
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a0, 0
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 40
	bnez	$a2, .LBB6_158
	b	.LBB6_14
.LBB6_159:                              # %vector.ph425
                                        #   in Loop: Header=BB6_15 Depth=2
	bstrpick.d	$a1, $s2, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $a2, 40
	ori	$a3, $zero, 2
	move	$a4, $a1
	.p2align	4, , 16
.LBB6_160:                              # %vector.body428
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa1, $a6
	ffint.s.l	$fa1, $fa1
	movgr2fr.d	$fa2, $a5
	ffint.s.l	$fa2, $fa2
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa2, $fa0, $fa2
	fst.s	$fa1, $a2, -40
	fst.s	$fa2, $a2, 0
	addi.d	$a2, $a2, 80
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB6_160
# %bb.161:                              # %middle.block431
                                        #   in Loop: Header=BB6_15 Depth=2
	beq	$a1, $s2, .LBB6_14
.LBB6_162:                              # %for.body370.preheader690
                                        #   in Loop: Header=BB6_15 Depth=2
	slli.d	$a2, $a1, 5
	alsl.d	$a2, $a1, $a2, 3
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 4
	sub.d	$a2, $s2, $a1
	addi.w	$a1, $a1, 1
	.p2align	4, , 16
.LBB6_163:                              # %for.body370
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa1, $a3
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 40
	addi.d	$a2, $a2, -1
	addi.w	$a1, $a1, 1
	bnez	$a2, .LBB6_163
	b	.LBB6_14
	.p2align	4, , 16
.LBB6_164:                              #   in Loop: Header=BB6_5 Depth=1
	move	$s2, $s8
.LBB6_165:                              # %for.cond397.preheader
                                        #   in Loop: Header=BB6_5 Depth=1
	move	$fp, $t3
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB6_4
# %bb.166:                              # %for.body402.preheader
                                        #   in Loop: Header=BB6_5 Depth=1
	move	$s0, $zero
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_167:                              # %for.body402
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 88
	addi.d	$s0, $s0, 1
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	blt	$s0, $a0, .LBB6_167
	b	.LBB6_4
.LBB6_168:                              # %if.else234
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_169:
	st.d	$zero, $sp, 272                 # 8-byte Folded Spill
.LBB6_170:                              # %for.cond.cleanup
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a3, 144
	fld.d	$fs7, $sp, 456                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 464                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 472                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 480                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 488                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 496                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 504                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 512                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.Lfunc_end6:
	.size	two_way_transport_sweep, .Lfunc_end6-two_way_transport_sweep
                                        # -- End function
	.globl	calc_next_fai                   # -- Begin function calc_next_fai
	.p2align	5
	.type	calc_next_fai,@function
calc_next_fai:                          # @calc_next_fai
# %bb.0:                                # %entry
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	add.w	$a0, $a1, $a0
	ret
.Lfunc_end7:
	.size	calc_next_fai, .Lfunc_end7-calc_next_fai
                                        # -- End function
	.globl	alt_attenuate_fluxes            # -- Begin function alt_attenuate_fluxes
	.p2align	5
	.type	alt_attenuate_fluxes,@function
alt_attenuate_fluxes:                   # @alt_attenuate_fluxes
# %bb.0:                                # %entry
	ld.w	$t1, $a3, 36
	ori	$a5, $zero, 1
	blt	$t1, $a5, .LBB8_13
# %bb.1:                                # %for.body.lr.ph
	addi.d	$sp, $sp, -48
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 8                    # 8-byte Folded Spill
	ld.w	$a7, $a3, 12
	ld.w	$a6, $a3, 44
	ld.w	$t0, $a3, 8
	move	$a5, $zero
	fld.s	$fa3, $a3, 60
	mul.d	$a3, $a6, $a7
	mul.d	$a3, $a3, $t0
	fld.s	$fa4, $a0, 4
	movgr2fr.w	$fa5, $a3
	ffint.s.w	$fa5, $fa5
	fdiv.s	$fa3, $fa3, $fa5
	fcvt.d.s	$fa5, $fa4
	fcvt.d.s	$fa6, $fa3
	fdiv.s	$fa4, $fa4, $fa3
	ftintrz.w.s	$fa4, $fa4
	movfr2gr.s	$a3, $fa4
	movgr2fr.w	$fa4, $a3
	ffint.d.w	$fa4, $fa4
	vldi	$vr7, -928
	fadd.d	$fa4, $fa4, $fa7
	fneg.d	$fa6, $fa6
	fmadd.d	$fa4, $fa6, $fa4, $fa5
	fld.s	$fa5, $a0, 0
	fcvt.s.d	$fa4, $fa4
	mod.w	$a3, $a3, $a7
	ld.d	$a6, $a2, 0
	fmul.s	$fa2, $fa2, $fa5
	fmul.s	$fa5, $fa1, $fa1
	slli.d	$t0, $a3, 3
	ldx.d	$a6, $a6, $t0
	ori	$t0, $zero, 32
	masknez	$t0, $t0, $a1
	ori	$t2, $zero, 24
	maskeqz	$t2, $t2, $a1
	ld.d	$a1, $a2, 24
	addi.w	$a7, $a7, -1
	fadd.s	$fa6, $fa3, $fa3
	ld.d	$a2, $a2, 8
	fmul.s	$fa7, $fa3, $fa6
	or	$t0, $t2, $t0
	ldx.d	$a0, $a0, $t0
	alsl.d	$t0, $a3, $a2, 3
	slli.d	$t1, $t1, 2
	movgr2fr.w	$ft0, $zero
	vldi	$vr9, -1152
	vldi	$vr10, -1144
	vldi	$vr11, -1256
	vldi	$vr12, -1128
	vldi	$vr13, -1272
	vldi	$vr14, -912
	vldi	$vr15, -1184
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_4 Depth=1
	vldi	$vr21, -1168
.LBB8_3:                                # %interpolateTable.exit
                                        #   in Loop: Header=BB8_4 Depth=1
	fldx.s	$ft14, $a0, $a5
	fmul.s	$ft15, $ft9, $ft9
	fmsub.s	$ft14, $ft9, $ft14, $ft8
	fmul.s	$ft14, $ft13, $ft14
	fmadd.s	$ft14, $ft8, $ft10, $ft14
	fdiv.s	$ft14, $ft14, $ft15
	fmul.s	$ft12, $fa1, $ft12
	fadd.s	$fs0, $ft10, $ft1
	fadd.s	$fs1, $ft13, $ft13
	fmadd.s	$fs0, $ft10, $fs0, $fs1
	fmul.s	$fs1, $ft12, $fs0
	fmul.s	$fs2, $ft9, $ft15
	fdiv.s	$fs1, $fs1, $fs2
	fadd.s	$ft14, $fs1, $ft14
	fmul.s	$ft11, $fa5, $ft11
	fadd.s	$fs1, $ft10, $ft2
	fmadd.s	$fs1, $ft10, $fs1, $ft3
	fmul.s	$fs3, $ft13, $ft4
	fmadd.s	$fs1, $ft10, $fs1, $fs3
	fmul.s	$fs1, $ft11, $fs1
	fmul.s	$fs3, $ft15, $ft5
	fldx.s	$fs4, $a6, $a5
	fmul.s	$fs3, $ft15, $fs3
	fdiv.s	$fs1, $fs1, $fs3
	fadd.s	$ft14, $fs1, $ft14
	fmadd.s	$ft14, $fa2, $ft14, $fs4
	fstx.s	$ft14, $a6, $a5
	fldx.s	$ft14, $a0, $a5
	fcvt.d.s	$ft14, $ft14
	fcvt.d.s	$fs1, $ft13
	fsub.d	$fs1, $ft6, $fs1
	fmul.s	$ft8, $ft8, $ft13
	fdiv.s	$ft8, $ft8, $ft9
	fcvt.d.s	$ft8, $ft8
	fmadd.d	$ft8, $ft14, $fs1, $ft8
	fsub.s	$ft9, $ft10, $ft13
	fmul.s	$ft9, $ft12, $ft9
	fdiv.s	$ft9, $ft9, $ft15
	fcvt.d.s	$ft9, $ft9
	fadd.d	$ft8, $ft8, $ft9
	fmul.s	$ft9, $ft11, $fs0
	fdiv.s	$ft9, $ft9, $fs2
	fcvt.d.s	$ft9, $ft9
	fadd.d	$ft8, $ft8, $ft9
	fcvt.s.d	$ft8, $ft8
	fstx.s	$ft8, $a0, $a5
	addi.d	$a5, $a5, 4
	beq	$t1, $a5, .LBB8_12
.LBB8_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a3, .LBB8_7
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$t2, $t0, -8
	ld.d	$t3, $t0, 0
	fldx.s	$ft9, $t2, $a5
	fldx.s	$ft8, $t3, $a5
	bne	$a3, $a7, .LBB8_9
# %bb.6:                                # %if.then38
                                        #   in Loop: Header=BB8_4 Depth=1
	fsub.s	$ft9, $ft8, $ft9
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_7:                                # %if.then
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$t2, $t0, 0
	ld.d	$t3, $a2, 8
	fldx.s	$ft8, $t2, $a5
	fldx.s	$ft9, $t3, $a5
	fsub.s	$ft9, $ft9, $ft8
.LBB8_8:                                # %if.end92
                                        #   in Loop: Header=BB8_4 Depth=1
	fdiv.s	$ft12, $ft9, $fa3
	fmadd.s	$ft8, $ft12, $fa4, $ft8
	fmov.s	$ft11, $ft0
	b	.LBB8_10
	.p2align	4, , 16
.LBB8_9:                                # %if.else56
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$t2, $t0, 8
	fldx.s	$ft10, $t2, $a5
	fsub.s	$ft11, $ft9, $ft10
	fdiv.s	$ft12, $ft11, $fa6
	fmadd.s	$ft9, $ft8, $ft1, $ft9
	fadd.s	$ft9, $ft9, $ft10
	fdiv.s	$ft11, $ft9, $fa7
	fmadd.s	$ft8, $ft12, $fa4, $ft8
	fmul.s	$ft9, $ft11, $fa4
	fmadd.s	$ft8, $ft9, $fa4, $ft8
	fadd.s	$ft9, $ft11, $ft11
	fmadd.s	$ft12, $ft9, $fa4, $ft12
.LBB8_10:                               # %if.end92
                                        #   in Loop: Header=BB8_4 Depth=1
	fldx.s	$ft9, $a1, $a5
	fld.s	$ft13, $a4, 52
	fmul.s	$ft10, $fa0, $ft9
	fcmp.clt.s	$fcc0, $ft13, $ft10
	bcnez	$fcc0, .LBB8_2
# %bb.11:                               # %if.else.i
                                        #   in Loop: Header=BB8_4 Depth=1
	fld.s	$ft13, $a4, 48
	ld.d	$t2, $a4, 40
	fdiv.s	$ft14, $ft10, $ft13
	fmadd.s	$ft13, $ft13, $ft7, $ft14
	ftintrz.w.s	$ft13, $ft13
	movfr2gr.s	$t3, $ft13
	slli.w	$t3, $t3, 1
	alsl.d	$t4, $t3, $t2, 2
	slli.d	$t3, $t3, 2
	fldx.s	$ft13, $t2, $t3
	fld.s	$ft14, $t4, 4
	fmadd.s	$ft13, $ft13, $ft10, $ft14
	b	.LBB8_3
.LBB8_12:
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB8_13:                               # %for.cond.cleanup
	ret
.Lfunc_end8:
	.size	alt_attenuate_fluxes, .Lfunc_end8-alt_attenuate_fluxes
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function renormalize_flux
.LCPI9_0:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
	.text
	.globl	renormalize_flux
	.p2align	5
	.type	renormalize_flux,@function
renormalize_flux:                       # @renormalize_flux
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a1, $a1, 72
	move	$s0, $a0
	bnez	$a1, .LBB9_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB9_2:                                # %if.end
	ld.d	$s4, $fp, 120
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$s1, $a0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	move	$s2, $a0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	move	$s3, $a0
	blt	$s4, $s5, .LBB9_11
# %bb.3:                                # %for.body.lr.ph
	move	$s6, $zero
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_4:                                # %for.cond.cleanup15
                                        #   in Loop: Header=BB9_5 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, 120
	slli.d	$a0, $s6, 2
	addi.d	$s6, $s6, 1
	fstx.s	$fa0, $s1, $a0
	bge	$s6, $s4, .LBB9_11
.LBB9_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_8 Depth 2
                                        #       Child Loop BB9_10 Depth 3
	ld.w	$a1, $fp, 12
	blt	$a1, $s5, .LBB9_4
# %bb.6:                                # %for.cond17.preheader.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a0, $s0, 16
	slli.d	$a1, $s6, 5
	alsl.d	$a1, $s6, $a1, 4
	add.d	$a2, $a0, $a1
	ldx.d	$s4, $a0, $a1
	fld.s	$fs0, $a2, 16
	ld.d	$s7, $a2, 32
	move	$s8, $zero
	b	.LBB9_8
	.p2align	4, , 16
.LBB9_7:                                # %for.cond.cleanup21
                                        #   in Loop: Header=BB9_8 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	slli.d	$a0, $s8, 2
	addi.d	$s8, $s8, 1
	fstx.s	$fa0, $s2, $a0
	bge	$s8, $a1, .LBB9_4
.LBB9_8:                                # %for.cond17.preheader
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_10 Depth 3
	ld.w	$a1, $fp, 36
	blt	$a1, $s5, .LBB9_7
# %bb.9:                                # %for.body22.lr.ph
                                        #   in Loop: Header=BB9_8 Depth=2
	slli.d	$a0, $s8, 3
	ldx.d	$a0, $s4, $a0
	move	$a2, $a1
	move	$a3, $s7
	move	$a4, $s3
	.p2align	4, , 16
.LBB9_10:                               # %for.body22
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a3, 0
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a5, 0
	fmul.s	$fa0, $fs0, $fa0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB9_10
	b	.LBB9_7
.LBB9_11:                               # %for.cond.cleanup
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	frecip.s	$fa0, $fs0
	blt	$a0, $s5, .LBB9_31
# %bb.12:                               # %for.body61.lr.ph
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB9_31
# %bb.13:                               # %for.body61.lr.ph.split.us
	move	$a2, $zero
	ld.d	$a3, $s0, 16
	pcalau12i	$a4, %pc_hi20(.LCPI9_0)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI9_0)
	vldi	$vr2, -1264
	fmul.s	$fa2, $fa0, $fa2
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa1, $fa2, $fa1
	ld.wu	$a4, $fp, 36
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	bstrpick.d	$a5, $a4, 30, 4
	slli.d	$a5, $a5, 4
	andi	$a6, $a4, 12
	bstrpick.d	$a7, $a4, 30, 2
	slli.d	$a7, $a7, 2
	sub.d	$t0, $zero, $a7
	addi.w	$t1, $a4, 0
	ori	$t2, $zero, 4
	ori	$t3, $zero, 16
	b	.LBB9_15
	.p2align	4, , 16
.LBB9_14:                               # %for.cond76.for.cond.cleanup80_crit_edge.us
                                        #   in Loop: Header=BB9_15 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a0, .LBB9_31
.LBB9_15:                               # %for.body61.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_18 Depth 2
                                        #       Child Loop BB9_23 Depth 3
                                        #       Child Loop BB9_27 Depth 3
                                        #       Child Loop BB9_30 Depth 3
	blez	$t1, .LBB9_14
# %bb.16:                               # %for.cond83.preheader.lr.ph.split.us.us
                                        #   in Loop: Header=BB9_15 Depth=1
	slli.d	$t4, $a2, 5
	alsl.d	$t4, $a2, $t4, 4
	add.d	$t5, $a3, $t4
	fld.s	$fa2, $t5, 16
	move	$t4, $zero
	fcvt.d.s	$fa2, $fa2
	fdiv.d	$fa2, $fa1, $fa2
	ld.d	$t5, $t5, 0
	fcvt.s.d	$fa2, $fa2
	xvreplve0.w	$xr3, $xr2
	vreplvei.w	$vr4, $vr2, 0
	b	.LBB9_18
	.p2align	4, , 16
.LBB9_17:                               # %for.cond83.for.cond.cleanup87_crit_edge.us.us
                                        #   in Loop: Header=BB9_18 Depth=2
	addi.d	$t4, $t4, 1
	beq	$t4, $a1, .LBB9_14
.LBB9_18:                               # %iter.check
                                        #   Parent Loop BB9_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_23 Depth 3
                                        #       Child Loop BB9_27 Depth 3
                                        #       Child Loop BB9_30 Depth 3
	slli.d	$t6, $t4, 3
	ldx.d	$t6, $t5, $t6
	bgeu	$a4, $t2, .LBB9_20
# %bb.19:                               #   in Loop: Header=BB9_18 Depth=2
	move	$t7, $zero
	b	.LBB9_29
	.p2align	4, , 16
.LBB9_20:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB9_18 Depth=2
	bgeu	$a4, $t3, .LBB9_22
# %bb.21:                               #   in Loop: Header=BB9_18 Depth=2
	move	$t8, $zero
	b	.LBB9_26
	.p2align	4, , 16
.LBB9_22:                               # %vector.body.preheader
                                        #   in Loop: Header=BB9_18 Depth=2
	addi.d	$t7, $t6, 32
	move	$t8, $a5
	.p2align	4, , 16
.LBB9_23:                               # %vector.body
                                        #   Parent Loop BB9_15 Depth=1
                                        #     Parent Loop BB9_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr5, $t7, -32
	xvld	$xr6, $t7, 0
	xvfmul.s	$xr5, $xr5, $xr3
	xvfmul.s	$xr6, $xr6, $xr3
	xvst	$xr5, $t7, -32
	xvst	$xr6, $t7, 0
	addi.d	$t8, $t8, -16
	addi.d	$t7, $t7, 64
	bnez	$t8, .LBB9_23
# %bb.24:                               # %middle.block
                                        #   in Loop: Header=BB9_18 Depth=2
	beq	$a5, $a4, .LBB9_17
# %bb.25:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB9_18 Depth=2
	move	$t8, $a5
	move	$t7, $a5
	beqz	$a6, .LBB9_29
.LBB9_26:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB9_18 Depth=2
	add.d	$t7, $t0, $t8
	alsl.d	$t8, $t8, $t6, 2
	.p2align	4, , 16
.LBB9_27:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB9_15 Depth=1
                                        #     Parent Loop BB9_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr5, $t8, 0
	vfmul.s	$vr5, $vr5, $vr4
	vst	$vr5, $t8, 0
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, 16
	bnez	$t7, .LBB9_27
# %bb.28:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB9_18 Depth=2
	move	$t7, $a7
	beq	$a7, $a4, .LBB9_17
.LBB9_29:                               # %for.body88.us.us.preheader
                                        #   in Loop: Header=BB9_18 Depth=2
	alsl.d	$t6, $t7, $t6, 2
	sub.d	$t7, $a4, $t7
	.p2align	4, , 16
.LBB9_30:                               # %for.body88.us.us
                                        #   Parent Loop BB9_15 Depth=1
                                        #     Parent Loop BB9_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa5, $t6, 0
	fmul.s	$fa5, $fa5, $fa2
	fst.s	$fa5, $t6, 0
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	bnez	$t7, .LBB9_30
	b	.LBB9_17
.LBB9_31:                               # %for.cond105.preheader
	ld.d	$a0, $fp, 80
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB9_50
# %bb.32:                               # %for.cond111.preheader.lr.ph
	ld.w	$a1, $fp, 32
	blt	$a1, $a2, .LBB9_50
# %bb.33:                               # %for.cond111.preheader.lr.ph.split.us
	ld.w	$a2, $fp, 88
	move	$a3, $zero
	xvreplve0.w	$xr1, $xr0
	ori	$a4, $zero, 8
	b	.LBB9_35
	.p2align	4, , 16
.LBB9_34:                               # %for.cond111.for.cond.cleanup114_crit_edge.us
                                        #   in Loop: Header=BB9_35 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a0, .LBB9_50
.LBB9_35:                               # %for.cond111.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_38 Depth 2
                                        #       Child Loop BB9_41 Depth 3
                                        #         Child Loop BB9_48 Depth 4
                                        #         Child Loop BB9_46 Depth 4
	blez	$a2, .LBB9_34
# %bb.36:                               # %for.cond117.preheader.lr.ph.split.us.us
                                        #   in Loop: Header=BB9_35 Depth=1
	ld.wu	$a5, $fp, 36
	move	$a6, $zero
	slli.d	$a7, $a5, 2
	bstrpick.d	$t0, $a5, 30, 3
	slli.d	$t0, $t0, 3
	addi.w	$t1, $a5, 0
	slli.d	$t2, $a3, 3
	b	.LBB9_38
	.p2align	4, , 16
.LBB9_37:                               # %for.cond117.for.cond.cleanup120_crit_edge.us.us
                                        #   in Loop: Header=BB9_38 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $a1, .LBB9_34
.LBB9_38:                               # %for.cond117.preheader.us.us
                                        #   Parent Loop BB9_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_41 Depth 3
                                        #         Child Loop BB9_48 Depth 4
                                        #         Child Loop BB9_46 Depth 4
	blez	$t1, .LBB9_37
# %bb.39:                               # %for.cond123.preheader.lr.ph.split.us.us.us
                                        #   in Loop: Header=BB9_38 Depth=2
	ld.d	$t3, $s0, 8
	ldx.d	$t3, $t3, $t2
	slli.d	$t4, $a6, 3
	ldx.d	$t3, $t3, $t4
	move	$t4, $zero
	b	.LBB9_41
	.p2align	4, , 16
.LBB9_40:                               # %for.cond123.for.cond.cleanup127_crit_edge.us.us.us
                                        #   in Loop: Header=BB9_41 Depth=3
	addi.d	$t4, $t4, 1
	beq	$t4, $a2, .LBB9_37
.LBB9_41:                               # %for.cond123.preheader.us.us.us
                                        #   Parent Loop BB9_35 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_48 Depth 4
                                        #         Child Loop BB9_46 Depth 4
	slli.d	$t5, $t4, 5
	alsl.d	$t5, $t4, $t5, 3
	add.d	$t6, $t3, $t5
	ld.d	$t5, $t6, 24
	ld.d	$t6, $t6, 32
	bltu	$a5, $a4, .LBB9_44
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB9_41 Depth=3
	add.d	$t7, $t6, $a7
	bgeu	$t5, $t7, .LBB9_47
# %bb.43:                               # %vector.memcheck
                                        #   in Loop: Header=BB9_41 Depth=3
	add.d	$t7, $t5, $a7
	bgeu	$t6, $t7, .LBB9_47
.LBB9_44:                               #   in Loop: Header=BB9_41 Depth=3
	move	$t7, $zero
.LBB9_45:                               # %for.body128.us.us.us.preheader
                                        #   in Loop: Header=BB9_41 Depth=3
	alsl.d	$t5, $t7, $t5, 2
	alsl.d	$t6, $t7, $t6, 2
	sub.d	$t7, $a5, $t7
	.p2align	4, , 16
.LBB9_46:                               # %for.body128.us.us.us
                                        #   Parent Loop BB9_35 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        #       Parent Loop BB9_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa2, $t5, 0
	fmul.s	$fa2, $fa0, $fa2
	fst.s	$fa2, $t5, 0
	fld.s	$fa2, $t6, 0
	fmul.s	$fa2, $fa0, $fa2
	fst.s	$fa2, $t6, 0
	addi.d	$t5, $t5, 4
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	bnez	$t7, .LBB9_46
	b	.LBB9_40
	.p2align	4, , 16
.LBB9_47:                               # %vector.body142.preheader
                                        #   in Loop: Header=BB9_41 Depth=3
	move	$t7, $t5
	move	$t8, $t6
	move	$s1, $t0
	.p2align	4, , 16
.LBB9_48:                               # %vector.body142
                                        #   Parent Loop BB9_35 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        #       Parent Loop BB9_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr2, $t7, 0
	xvld	$xr3, $t8, 0
	xvfmul.s	$xr2, $xr1, $xr2
	xvst	$xr2, $t7, 0
	xvfmul.s	$xr2, $xr1, $xr3
	xvst	$xr2, $t8, 0
	addi.d	$s1, $s1, -8
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	bnez	$s1, .LBB9_48
# %bb.49:                               # %middle.block147
                                        #   in Loop: Header=BB9_41 Depth=3
	move	$t7, $t0
	beq	$t0, $a5, .LBB9_40
	b	.LBB9_45
.LBB9_50:                               # %for.cond.cleanup108
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB9_52
# %bb.51:                               # %if.end163
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.LBB9_52:                               # %if.then161
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end9:
	.size	renormalize_flux, .Lfunc_end9-renormalize_flux
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function update_sources
.LCPI10_0:
	.dword	0x402921fb54442d18              # double 12.566370614359172
	.text
	.globl	update_sources
	.p2align	5
	.type	update_sources,@function
update_sources:                         # @update_sources
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
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a1, $a1, 36
	fmov.s	$fs0, $fa0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	slli.d	$s5, $a1, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	move	$fp, $a0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s0, 120
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s5, $a0
	blt	$s6, $a1, .LBB10_29
# %bb.1:                                # %for.body.lr.ph
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	frecip.s	$fs0, $fs0
	addi.d	$a0, $s5, 32
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %for.cond.cleanup22
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s0, 120
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a0, $a2, 2
	addi.d	$a2, $a2, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	bge	$a2, $s6, .LBB10_29
.LBB10_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #       Child Loop BB10_9 Depth 3
                                        #       Child Loop BB10_13 Depth 3
                                        #         Child Loop BB10_23 Depth 4
                                        #         Child Loop BB10_27 Depth 4
                                        #         Child Loop BB10_17 Depth 4
	ld.w	$a1, $s0, 12
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB10_2
# %bb.4:                                # %for.cond24.preheader.preheader
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a1, $a2, 5
	alsl.d	$a1, $a2, $a1, 4
	add.d	$a2, $a0, $a1
	ldx.d	$s7, $a0, $a1
	ld.d	$a0, $a2, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s6, $a2, 32
	ld.d	$s4, $a2, 40
	move	$s1, $zero
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_5:                               #   in Loop: Header=BB10_7 Depth=2
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
.LBB10_6:                               # %for.cond.cleanup48
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	slli.d	$a0, $s1, 2
	addi.d	$s1, $s1, 1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	bge	$s1, $a1, .LBB10_2
.LBB10_7:                               # %for.cond24.preheader
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_9 Depth 3
                                        #       Child Loop BB10_13 Depth 3
                                        #         Child Loop BB10_23 Depth 4
                                        #         Child Loop BB10_27 Depth 4
                                        #         Child Loop BB10_17 Depth 4
	ld.w	$a1, $s0, 36
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB10_10
# %bb.8:                                # %for.body29.lr.ph
                                        #   in Loop: Header=BB10_7 Depth=2
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $s7, $a0
	move	$a2, $a1
	move	$a3, $s6
	move	$a4, $s2
	.p2align	4, , 16
.LBB10_9:                               # %for.body29
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a3, 0
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a5, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB10_9
.LBB10_10:                              # %for.cond.cleanup28
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 36
	blez	$a1, .LBB10_6
# %bb.11:                               # %for.cond50.preheader.lr.ph
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$s3, $zero
	fmul.s	$fs1, $fs0, $fa0
	alsl.d	$s8, $s1, $s7, 3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$s2, $s1, $a0, 3
	b	.LBB10_13
	.p2align	4, , 16
.LBB10_12:                              # %for.cond.cleanup54
                                        #   in Loop: Header=BB10_13 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s6, $s7
	fld.s	$fa1, $a0, 8
	fmadd.s	$fa0, $fs1, $fa1, $fa0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.LCPI10_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI10_0)
	slli.d	$a2, $s3, 2
	fldx.s	$fa2, $a0, $a2
	fcvt.d.s	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fsub.s	$fa1, $fa0, $fa2
	fmul.s	$fa1, $fa1, $fa1
	fmul.s	$fa2, $fa2, $fa2
	ld.w	$a1, $s0, 36
	fdiv.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $fp, $a2
	addi.d	$s3, $s3, 1
	fstx.s	$fa0, $a0, $a2
	bge	$s3, $a1, .LBB10_5
.LBB10_13:                              # %for.cond50.preheader
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_23 Depth 4
                                        #         Child Loop BB10_27 Depth 4
                                        #         Child Loop BB10_17 Depth 4
	slli.d	$s7, $s3, 3
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB10_12
# %bb.14:                               # %iter.check
                                        #   in Loop: Header=BB10_13 Depth=3
	ldx.d	$a0, $s4, $s7
	ld.d	$a2, $s8, 0
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB10_18
# %bb.15:                               #   in Loop: Header=BB10_13 Depth=3
	move	$a3, $zero
.LBB10_16:                              # %for.body55.preheader
                                        #   in Loop: Header=BB10_13 Depth=3
	alsl.d	$a4, $a3, $s5, 2
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB10_17:                              # %for.body55
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB10_17
	b	.LBB10_12
	.p2align	4, , 16
.LBB10_18:                              # %vector.memcheck
                                        #   in Loop: Header=BB10_13 Depth=3
	sub.d	$a4, $s5, $a0
	move	$a3, $zero
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB10_16
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB10_13 Depth=3
	sub.d	$a4, $s5, $a2
	bltu	$a4, $a5, .LBB10_16
# %bb.20:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB10_13 Depth=3
	ori	$a3, $zero, 16
	bgeu	$a1, $a3, .LBB10_22
# %bb.21:                               #   in Loop: Header=BB10_13 Depth=3
	move	$a3, $zero
	b	.LBB10_26
.LBB10_22:                              # %vector.ph
                                        #   in Loop: Header=BB10_13 Depth=3
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a2, 32
	addi.d	$a5, $a0, 32
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	move	$a7, $a3
	.p2align	4, , 16
.LBB10_23:                              # %vector.body
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvfmul.s	$xr0, $xr0, $xr2
	xvfmul.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a7, .LBB10_23
# %bb.24:                               # %middle.block
                                        #   in Loop: Header=BB10_13 Depth=3
	beq	$a3, $a1, .LBB10_12
# %bb.25:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB10_13 Depth=3
	andi	$a4, $a1, 12
	beqz	$a4, .LBB10_16
.LBB10_26:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB10_13 Depth=3
	move	$a7, $a3
	bstrpick.d	$a3, $a1, 30, 2
	slli.d	$a3, $a3, 2
	sub.d	$a4, $a7, $a3
	alsl.d	$a5, $a7, $s5, 2
	alsl.d	$a6, $a7, $a2, 2
	alsl.d	$a7, $a7, $a0, 2
	.p2align	4, , 16
.LBB10_27:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a7, 0
	vld	$vr1, $a6, 0
	vfmul.s	$vr0, $vr0, $vr1
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a4, .LBB10_27
# %bb.28:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB10_13 Depth=3
	beq	$a3, $a1, .LBB10_12
	b	.LBB10_16
.LBB10_29:                              # %for.cond.cleanup
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
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
.Lfunc_end10:
	.size	update_sources, .Lfunc_end10-update_sources
                                        # -- End function
	.globl	compute_keff                    # -- Begin function compute_keff
	.p2align	5
	.type	compute_keff,@function
compute_keff:                           # @compute_keff
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	move	$s2, $a1
	ld.w	$a1, $a1, 36
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s1, $a1, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	move	$s1, $a0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s2, 120
	move	$s3, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	blt	$s5, $s6, .LBB11_28
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $zero
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $s1, 32
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 32
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s4, $zero, 4
	ori	$s7, $zero, 63
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %for.cond.cleanup26
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s2, 120
	slli.d	$a0, $s0, 2
	addi.d	$s0, $s0, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	bge	$s0, $s5, .LBB11_28
.LBB11_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_7 Depth 2
                                        #     Child Loop BB11_10 Depth 2
                                        #     Child Loop BB11_14 Depth 2
                                        #       Child Loop BB11_20 Depth 3
                                        #       Child Loop BB11_24 Depth 3
                                        #       Child Loop BB11_27 Depth 3
	ld.w	$a1, $s2, 36
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	slli.d	$a2, $s0, 5
	alsl.d	$a2, $s0, $a2, 4
	blt	$a1, $s6, .LBB11_11
# %bb.4:                                # %for.body17.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	add.d	$a3, $a0, $a2
	ld.d	$a3, $a3, 32
	ori	$a4, $zero, 8
	bgeu	$a1, $a4, .LBB11_6
# %bb.5:                                #   in Loop: Header=BB11_3 Depth=1
	move	$a4, $zero
	b	.LBB11_9
	.p2align	4, , 16
.LBB11_6:                               # %vector.ph114
                                        #   in Loop: Header=BB11_3 Depth=1
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a3, 32
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	move	$a7, $a4
	.p2align	4, , 16
.LBB11_7:                               # %vector.body117
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a5, -32
	ld.d	$t1, $a5, -24
	ld.d	$t2, $a5, -16
	ld.d	$t3, $a5, -8
	ld.d	$t4, $a5, 0
	ld.d	$t5, $a5, 8
	ld.d	$t6, $a5, 16
	fld.s	$fa0, $t0, 4
	fld.s	$fa1, $t1, 4
	fld.s	$fa2, $t2, 4
	ld.d	$t0, $a5, 24
	fld.s	$fa3, $t3, 4
	vextrins.w	$vr0, $vr1, 16
	vextrins.w	$vr0, $vr2, 32
	fld.s	$fa1, $t4, 4
	fld.s	$fa2, $t5, 4
	fld.s	$fa4, $t6, 4
	fld.s	$fa5, $t0, 4
	vextrins.w	$vr0, $vr3, 48
	vextrins.w	$vr1, $vr2, 16
	vextrins.w	$vr1, $vr4, 32
	vextrins.w	$vr1, $vr5, 48
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB11_7
# %bb.8:                                # %middle.block122
                                        #   in Loop: Header=BB11_3 Depth=1
	beq	$a4, $a1, .LBB11_11
.LBB11_9:                               # %for.body17.preheader177
                                        #   in Loop: Header=BB11_3 Depth=1
	alsl.d	$a5, $a4, $fp, 2
	alsl.d	$a3, $a4, $a3, 3
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB11_10:                              # %for.body17
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	fld.s	$fa0, $a4, 4
	fst.s	$fa0, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB11_10
.LBB11_11:                              # %for.cond22.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.w	$a1, $s2, 12
	blt	$a1, $s6, .LBB11_2
# %bb.12:                               # %for.body27.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	ldx.d	$s5, $a0, $a2
	move	$s8, $zero
	b	.LBB11_14
	.p2align	4, , 16
.LBB11_13:                              # %for.cond.cleanup36
                                        #   in Loop: Header=BB11_14 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	slli.d	$a0, $s8, 2
	addi.d	$s8, $s8, 1
	fstx.s	$fa0, $s3, $a0
	bge	$s8, $a1, .LBB11_2
.LBB11_14:                              # %for.body27
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_20 Depth 3
                                        #       Child Loop BB11_24 Depth 3
                                        #       Child Loop BB11_27 Depth 3
	ld.w	$a1, $s2, 36
	blt	$a1, $s6, .LBB11_13
# %bb.15:                               # %iter.check
                                        #   in Loop: Header=BB11_14 Depth=2
	slli.d	$a0, $s8, 3
	ldx.d	$a0, $s5, $a0
	move	$a2, $zero
	bltu	$a1, $s4, .LBB11_26
# %bb.16:                               # %iter.check
                                        #   in Loop: Header=BB11_14 Depth=2
	sub.d	$a3, $s1, $a0
	bgeu	$s7, $a3, .LBB11_26
# %bb.17:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB11_14 Depth=2
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB11_19
# %bb.18:                               #   in Loop: Header=BB11_14 Depth=2
	move	$a2, $zero
	b	.LBB11_23
.LBB11_19:                              # %vector.ph
                                        #   in Loop: Header=BB11_14 Depth=2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	move	$a6, $a2
	.p2align	4, , 16
.LBB11_20:                              # %vector.body
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvfmul.s	$xr0, $xr0, $xr2
	xvfmul.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a6, .LBB11_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB11_14 Depth=2
	beq	$a2, $a1, .LBB11_13
# %bb.22:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB11_14 Depth=2
	andi	$a3, $a1, 12
	beqz	$a3, .LBB11_26
.LBB11_23:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB11_14 Depth=2
	move	$a6, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a6, $a2
	alsl.d	$a4, $a6, $s1, 2
	alsl.d	$a5, $a6, $a0, 2
	alsl.d	$a6, $a6, $fp, 2
	.p2align	4, , 16
.LBB11_24:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vfmul.s	$vr0, $vr0, $vr1
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB11_24
# %bb.25:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB11_14 Depth=2
	beq	$a2, $a1, .LBB11_13
.LBB11_26:                              # %for.body37.preheader
                                        #   in Loop: Header=BB11_14 Depth=2
	alsl.d	$a3, $a2, $s1, 2
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a4, $a2, $fp, 2
	sub.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB11_27:                              # %for.body37
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB11_27
	b	.LBB11_13
.LBB11_28:                              # %for.cond.cleanup
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s5
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 120
	fmov.s	$fs0, $fa0
	blt	$a1, $s6, .LBB11_56
# %bb.29:                               # %for.body71.lr.ph
	move	$s5, $zero
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $s1, 32
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 32
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s6, $zero, 1
	ori	$s0, $zero, 4
	ori	$s4, $zero, 63
	b	.LBB11_31
	.p2align	4, , 16
.LBB11_30:                              # %for.cond.cleanup96
                                        #   in Loop: Header=BB11_31 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 120
	slli.d	$a0, $s5, 2
	addi.d	$s5, $s5, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	bge	$s5, $a1, .LBB11_56
.LBB11_31:                              # %for.body71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_35 Depth 2
                                        #     Child Loop BB11_38 Depth 2
                                        #     Child Loop BB11_42 Depth 2
                                        #       Child Loop BB11_48 Depth 3
                                        #       Child Loop BB11_52 Depth 3
                                        #       Child Loop BB11_55 Depth 3
	ld.w	$a1, $s2, 36
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	slli.d	$a2, $s5, 5
	alsl.d	$a2, $s5, $a2, 4
	blt	$a1, $s6, .LBB11_39
# %bb.32:                               # %for.body81.preheader
                                        #   in Loop: Header=BB11_31 Depth=1
	add.d	$a3, $a0, $a2
	ld.d	$a3, $a3, 32
	ori	$a4, $zero, 8
	bgeu	$a1, $a4, .LBB11_34
# %bb.33:                               #   in Loop: Header=BB11_31 Depth=1
	move	$a4, $zero
	b	.LBB11_37
	.p2align	4, , 16
.LBB11_34:                              # %vector.ph163
                                        #   in Loop: Header=BB11_31 Depth=1
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a3, 32
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	move	$a7, $a4
	.p2align	4, , 16
.LBB11_35:                              # %vector.body166
                                        #   Parent Loop BB11_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a5, -32
	ld.d	$t1, $a5, -24
	fld.s	$fa0, $t0, 0
	ld.d	$t0, $a5, -16
	fld.s	$fa1, $t1, 0
	ld.d	$t1, $a5, -8
	ld.d	$t2, $a5, 0
	fld.s	$fa2, $t0, 0
	ld.d	$t0, $a5, 8
	fld.s	$fa3, $t1, 0
	fld.s	$fa4, $t2, 0
	ld.d	$t1, $a5, 16
	fld.s	$fa5, $t0, 0
	ld.d	$t0, $a5, 24
	vextrins.w	$vr0, $vr1, 16
	fld.s	$fa1, $t1, 0
	vextrins.w	$vr0, $vr2, 32
	fld.s	$fa2, $t0, 0
	vextrins.w	$vr0, $vr3, 48
	vextrins.w	$vr4, $vr5, 16
	vextrins.w	$vr4, $vr1, 32
	vextrins.w	$vr4, $vr2, 48
	vst	$vr0, $a6, -16
	vst	$vr4, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB11_35
# %bb.36:                               # %middle.block171
                                        #   in Loop: Header=BB11_31 Depth=1
	beq	$a4, $a1, .LBB11_39
.LBB11_37:                              # %for.body81.preheader175
                                        #   in Loop: Header=BB11_31 Depth=1
	alsl.d	$a5, $a4, $fp, 2
	alsl.d	$a3, $a4, $a3, 3
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB11_38:                              # %for.body81
                                        #   Parent Loop BB11_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	fld.s	$fa0, $a4, 0
	fst.s	$fa0, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB11_38
.LBB11_39:                              # %for.cond92.preheader
                                        #   in Loop: Header=BB11_31 Depth=1
	ld.w	$a1, $s2, 12
	blt	$a1, $s6, .LBB11_30
# %bb.40:                               # %for.body97.preheader
                                        #   in Loop: Header=BB11_31 Depth=1
	ldx.d	$s8, $a0, $a2
	move	$s7, $zero
	b	.LBB11_42
	.p2align	4, , 16
.LBB11_41:                              # %for.cond.cleanup107
                                        #   in Loop: Header=BB11_42 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	slli.d	$a0, $s7, 2
	addi.d	$s7, $s7, 1
	fstx.s	$fa0, $s3, $a0
	bge	$s7, $a1, .LBB11_30
.LBB11_42:                              # %for.body97
                                        #   Parent Loop BB11_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_48 Depth 3
                                        #       Child Loop BB11_52 Depth 3
                                        #       Child Loop BB11_55 Depth 3
	ld.w	$a1, $s2, 36
	blt	$a1, $s6, .LBB11_41
# %bb.43:                               # %iter.check130
                                        #   in Loop: Header=BB11_42 Depth=2
	slli.d	$a0, $s7, 3
	ldx.d	$a0, $s8, $a0
	move	$a2, $zero
	bltu	$a1, $s0, .LBB11_54
# %bb.44:                               # %iter.check130
                                        #   in Loop: Header=BB11_42 Depth=2
	sub.d	$a3, $s1, $a0
	bgeu	$s4, $a3, .LBB11_54
# %bb.45:                               # %vector.main.loop.iter.check132
                                        #   in Loop: Header=BB11_42 Depth=2
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB11_47
# %bb.46:                               #   in Loop: Header=BB11_42 Depth=2
	move	$a2, $zero
	b	.LBB11_51
.LBB11_47:                              # %vector.ph133
                                        #   in Loop: Header=BB11_42 Depth=2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	move	$a6, $a2
	.p2align	4, , 16
.LBB11_48:                              # %vector.body136
                                        #   Parent Loop BB11_31 Depth=1
                                        #     Parent Loop BB11_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvfmul.s	$xr0, $xr0, $xr2
	xvfmul.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a6, .LBB11_48
# %bb.49:                               # %middle.block143
                                        #   in Loop: Header=BB11_42 Depth=2
	beq	$a2, $a1, .LBB11_41
# %bb.50:                               # %vec.epilog.iter.check148
                                        #   in Loop: Header=BB11_42 Depth=2
	andi	$a3, $a1, 12
	beqz	$a3, .LBB11_54
.LBB11_51:                              # %vec.epilog.ph147
                                        #   in Loop: Header=BB11_42 Depth=2
	move	$a6, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a6, $a2
	alsl.d	$a4, $a6, $s1, 2
	alsl.d	$a5, $a6, $a0, 2
	alsl.d	$a6, $a6, $fp, 2
	.p2align	4, , 16
.LBB11_52:                              # %vec.epilog.vector.body153
                                        #   Parent Loop BB11_31 Depth=1
                                        #     Parent Loop BB11_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vfmul.s	$vr0, $vr0, $vr1
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB11_52
# %bb.53:                               # %vec.epilog.middle.block158
                                        #   in Loop: Header=BB11_42 Depth=2
	beq	$a2, $a1, .LBB11_41
.LBB11_54:                              # %for.body108.preheader
                                        #   in Loop: Header=BB11_42 Depth=2
	alsl.d	$a3, $a2, $s1, 2
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a4, $a2, $fp, 2
	sub.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB11_55:                              # %for.body108
                                        #   Parent Loop BB11_31 Depth=1
                                        #     Parent Loop BB11_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB11_55
	b	.LBB11_41
.LBB11_56:                              # %for.cond.cleanup70
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pairwise_sum)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 32
	fld.s	$fa1, $a0, 0
	fadd.s	$fa1, $fs0, $fa1
	fdiv.s	$fs0, $fa0, $fa1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end11:
	.size	compute_keff, .Lfunc_end11-compute_keff
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Error: invalid axial expansion order"
	.size	.L.str.1, 37

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s%ld%s%ld\n"
	.size	.L.str.3, 12

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"2D Tracks Completed = "
	.size	.L.str.4, 23

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" / "
	.size	.L.str.5, 4

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Starting transport sweep ..."
	.size	.Lstr.2, 29

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"\n Please input 0 or 2"
	.size	.Lstr.3, 22

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Renormalizing Flux..."
	.size	.Lstr.4, 22

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"Renormalizing Flux Complete."
	.size	.Lstr.5, 29

	.section	".note.GNU-stack","",@progbits
	.addrsig
