	.file	"gim_tri_collision.cpp"
	.text
	.globl	_ZNK12GIM_TRIANGLE26collide_triangle_hard_testERKS_R25GIM_TRIANGLE_CONTACT_DATA # -- Begin function _ZNK12GIM_TRIANGLE26collide_triangle_hard_testERKS_R25GIM_TRIANGLE_CONTACT_DATA
	.p2align	2
	.type	_ZNK12GIM_TRIANGLE26collide_triangle_hard_testERKS_R25GIM_TRIANGLE_CONTACT_DATA,@function
_ZNK12GIM_TRIANGLE26collide_triangle_hard_testERKS_R25GIM_TRIANGLE_CONTACT_DATA: # @_ZNK12GIM_TRIANGLE26collide_triangle_hard_testERKS_R25GIM_TRIANGLE_CONTACT_DATA
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1040
	.cfi_def_cfa_offset 1040
	st.d	$ra, $sp, 1032                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a7, $a2
	addi.d	$t0, $a0, 4
	addi.d	$a2, $a0, 20
	addi.d	$a3, $a0, 36
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	addi.d	$a4, $a1, 4
	addi.d	$a5, $a1, 20
	addi.d	$a6, $a1, 36
	addi.d	$a0, $sp, 20
	move	$a1, $t0
	pcaddu18i	$ra, %call36(_ZN30GIM_TRIANGLE_CALCULATION_CACHE18triangle_collisionERK9btVector3S2_S2_fS2_S2_S2_fR25GIM_TRIANGLE_CONTACT_DATA)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 1032                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1040
	ret
.Lfunc_end0:
	.size	_ZNK12GIM_TRIANGLE26collide_triangle_hard_testERKS_R25GIM_TRIANGLE_CONTACT_DATA, .Lfunc_end0-_ZNK12GIM_TRIANGLE26collide_triangle_hard_testERKS_R25GIM_TRIANGLE_CONTACT_DATA
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN30GIM_TRIANGLE_CALCULATION_CACHE18triangle_collisionERK9btVector3S2_S2_fS2_S2_S2_fR25GIM_TRIANGLE_CONTACT_DATA
.LCPI1_0:
	.word	0x33d6bf95                      # float 1.00000001E-7
.LCPI1_1:
	.word	0x7f7fffff                      # float 3.40282347E+38
.LCPI1_2:
	.word	0xc47a0000                      # float -1000
.LCPI1_3:
	.word	0x34000000                      # float 1.1920929E-7
	.section	.text._ZN30GIM_TRIANGLE_CALCULATION_CACHE18triangle_collisionERK9btVector3S2_S2_fS2_S2_S2_fR25GIM_TRIANGLE_CONTACT_DATA,"axG",@progbits,_ZN30GIM_TRIANGLE_CALCULATION_CACHE18triangle_collisionERK9btVector3S2_S2_fS2_S2_S2_fR25GIM_TRIANGLE_CONTACT_DATA,comdat
	.weak	_ZN30GIM_TRIANGLE_CALCULATION_CACHE18triangle_collisionERK9btVector3S2_S2_fS2_S2_S2_fR25GIM_TRIANGLE_CONTACT_DATA
	.p2align	2
	.type	_ZN30GIM_TRIANGLE_CALCULATION_CACHE18triangle_collisionERK9btVector3S2_S2_fS2_S2_S2_fR25GIM_TRIANGLE_CONTACT_DATA,@function
_ZN30GIM_TRIANGLE_CALCULATION_CACHE18triangle_collisionERK9btVector3S2_S2_fS2_S2_S2_fR25GIM_TRIANGLE_CONTACT_DATA: # @_ZN30GIM_TRIANGLE_CALCULATION_CACHE18triangle_collisionERK9btVector3S2_S2_fS2_S2_S2_fR25GIM_TRIANGLE_CONTACT_DATA
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 72                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	.cfi_offset 58, -64
	.cfi_offset 59, -72
	.cfi_offset 60, -80
	.cfi_offset 61, -88
	move	$s0, $a0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 0
	vld	$vr1, $a1, 0
	vst	$vr1, $a0, 4
	vld	$vr1, $a2, 0
	vst	$vr1, $a0, 20
	vld	$vr1, $a3, 0
	vst	$vr1, $a0, 36
	vld	$vr1, $a4, 0
	vst	$vr1, $a0, 52
	vld	$vr1, $a5, 0
	vst	$vr1, $a0, 68
	vld	$vr3, $a6, 0
	fld.s	$fa1, $a0, 68
	fld.s	$fa7, $a0, 52
	fld.s	$fa2, $a0, 72
	fld.s	$ft0, $a0, 56
	move	$fp, $a7
	vst	$vr3, $a0, 84
	fsub.s	$ft2, $fa1, $fa7
	fsub.s	$ft3, $fa2, $ft0
	fld.s	$fa4, $a0, 76
	fld.s	$ft1, $a0, 60
	fld.s	$fa3, $a0, 84
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 92
	fsub.s	$ft4, $fa4, $ft1
	fsub.s	$ft5, $fa3, $fa7
	fsub.s	$ft6, $fa5, $ft0
	fsub.s	$ft7, $fa6, $ft1
	fneg.s	$ft8, $ft6
	fmul.s	$ft8, $ft4, $ft8
	fmadd.s	$ft10, $ft3, $ft7, $ft8
	fst.s	$ft10, $a0, 116
	fneg.s	$ft7, $ft7
	fmul.s	$ft7, $ft2, $ft7
	fmadd.s	$ft12, $ft4, $ft5, $ft7
	fst.s	$ft12, $a0, 120
	fneg.s	$ft4, $ft5
	fmul.s	$ft3, $ft3, $ft4
	fmadd.s	$ft11, $ft2, $ft6, $ft3
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$ft9, $a0, %pc_lo12(.LCPI1_0)
	fmul.s	$ft2, $ft12, $ft12
	fmadd.s	$ft2, $ft10, $ft10, $ft2
	fmadd.s	$ft2, $ft11, $ft11, $ft2
	fcmp.cle.s	$fcc0, $ft2, $ft9
	fst.s	$ft11, $s0, 124
	bcnez	$fcc0, .LBB1_3
# %bb.1:                                # %if.end
	vldi	$vr11, -1056
	fmul.s	$ft3, $ft2, $ft3
	movfr2gr.s	$a0, $ft2
	bstrpick.d	$a0, $a0, 31, 1
	lu12i.w	$a1, 390005
	ori	$a1, $a1, 2527
	sub.w	$a0, $a1, $a0
	movgr2fr.w	$ft2, $a0
	fmul.s	$ft3, $ft3, $ft2
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.s	$ft4, $a0, %pc_lo12(.LCPI1_1)
	vldi	$vr13, -1160
	fmadd.s	$ft3, $ft3, $ft2, $ft5
	fmul.s	$ft2, $ft3, $ft2
	fcmp.cule.s	$fcc0, $ft4, $ft2
	bcnez	$fcc0, .LBB1_3
# %bb.2:                                # %if.then119
	fmul.s	$ft10, $ft10, $ft2
	fst.s	$ft10, $s0, 116
	fmul.s	$ft12, $ft12, $ft2
	fst.s	$ft12, $s0, 120
	fmul.s	$ft11, $ft11, $ft2
	fst.s	$ft11, $s0, 124
.LBB1_3:                                # %if.end132
	fmul.s	$ft2, $ft0, $ft12
	fmadd.s	$ft2, $fa7, $ft10, $ft2
	fmadd.s	$fs1, $ft1, $ft11, $ft2
	fld.s	$ft3, $s0, 8
	fld.s	$ft6, $s0, 4
	fld.s	$ft2, $s0, 12
	fst.s	$fs1, $s0, 128
	fmul.s	$ft4, $ft12, $ft3
	fmadd.s	$ft4, $ft10, $ft6, $ft4
	fmadd.s	$ft4, $ft11, $ft2, $ft4
	fsub.s	$ft8, $ft4, $fs1
	fld.s	$ft5, $s0, 24
	fld.s	$ft7, $s0, 20
	fld.s	$ft4, $s0, 28
	fst.s	$ft8, $s0, 196
	fmul.s	$ft13, $ft12, $ft5
	fmadd.s	$ft13, $ft10, $ft7, $ft13
	fmadd.s	$ft13, $ft11, $ft4, $ft13
	fsub.s	$fs2, $ft13, $fs1
	fld.s	$ft13, $s0, 40
	fld.s	$ft14, $s0, 36
	fld.s	$ft15, $s0, 44
	fst.s	$fs2, $s0, 200
	fmul.s	$fs0, $ft12, $ft13
	fmadd.s	$fs0, $ft10, $ft14, $fs0
	fmadd.s	$fs0, $ft11, $ft15, $fs0
	fsub.s	$fs3, $fs0, $fs1
	fst.s	$fs3, $s0, 204
	fmul.s	$fs5, $ft8, $fs2
	fst.s	$fs5, $s0, 212
	fmul.s	$fs4, $ft8, $fs3
	movgr2fr.w	$fs0, $zero
	fcmp.cule.s	$fcc0, $fs5, $fs0
	fst.s	$fs4, $s0, 216
	bcnez	$fcc0, .LBB1_8
# %bb.4:                                # %if.end132
	fcmp.cule.s	$fcc0, $fs4, $fs0
	bcnez	$fcc0, .LBB1_8
# %bb.5:                                # %if.then263
	fcmp.cule.s	$fcc0, $fs0, $ft8
	bcnez	$fcc0, .LBB1_22
# %bb.6:                                # %if.then267
	fcmp.clt.s	$fcc0, $fs2, $fs3
	fsel	$fs2, $fs2, $fs3, $fcc0
	fcmp.clt.s	$fcc0, $ft8, $fs2
	fsel	$ft8, $ft8, $fs2, $fcc0
	fneg.s	$ft8, $ft8
	fcmp.clt.s	$fcc0, $fa0, $ft8
	fst.s	$ft8, $s0, 180
	bcnez	$fcc0, .LBB1_45
# %bb.7:                                # %if.end313
	fadd.s	$fa7, $fa1, $fa7
	fsub.s	$fa1, $fa7, $fa1
	fst.s	$fa1, $s0, 68
	fsub.s	$fa7, $fa7, $fa1
	fst.s	$fa7, $s0, 52
	fadd.s	$ft0, $fa2, $ft0
	fsub.s	$fa2, $ft0, $fa2
	fst.s	$fa2, $s0, 72
	fsub.s	$ft0, $ft0, $fa2
	fst.s	$ft0, $s0, 56
	fadd.s	$ft1, $fa4, $ft1
	fsub.s	$fa4, $ft1, $fa4
	fst.s	$fa4, $s0, 76
	fsub.s	$ft1, $ft1, $fa4
	fst.s	$ft1, $s0, 60
	vextrins.w	$vr18, $vr20, 16
	vextrins.w	$vr18, $vr19, 32
	vextrins.w	$vr18, $vr25, 48
	vbitrevi.w	$vr18, $vr18, 31
	vst	$vr18, $s0, 116
	b	.LBB1_12
.LBB1_8:                                # %if.else506
	fadd.s	$fs4, $ft8, $fs2
	fadd.s	$fs4, $fs4, $fs3
	vldi	$vr29, -1272
	fdiv.s	$fs4, $fs4, $fs5
	fcmp.cule.s	$fcc0, $fs0, $fs4
	bcnez	$fcc0, .LBB1_10
# %bb.9:                                # %if.then522
	fadd.s	$fa7, $fa1, $fa7
	fsub.s	$fa1, $fa7, $fa1
	fst.s	$fa1, $s0, 68
	fsub.s	$fa7, $fa7, $fa1
	fst.s	$fa7, $s0, 52
	fadd.s	$ft0, $fa2, $ft0
	fsub.s	$fa2, $ft0, $fa2
	fst.s	$fa2, $s0, 72
	fsub.s	$ft0, $ft0, $fa2
	fst.s	$ft0, $s0, 56
	fadd.s	$ft1, $fa4, $ft1
	fsub.s	$fa4, $ft1, $fa4
	fst.s	$fa4, $s0, 76
	fsub.s	$ft1, $ft1, $fa4
	fst.s	$ft1, $s0, 60
	vextrins.w	$vr18, $vr20, 16
	vextrins.w	$vr18, $vr19, 32
	vextrins.w	$vr18, $vr25, 48
	vbitrevi.w	$vr18, $vr18, 31
	vst	$vr18, $s0, 116
	fcmp.clt.s	$fcc0, $fs2, $fs3
	fsel	$ft10, $fs2, $fs3, $fcc0
	fcmp.clt.s	$fcc0, $ft8, $ft10
	fsel	$ft8, $ft8, $ft10, $fcc0
	fneg.s	$ft8, $ft8
	b	.LBB1_11
.LBB1_10:                               # %if.else713
	fcmp.clt.s	$fcc0, $fs3, $fs2
	fsel	$ft10, $fs2, $fs3, $fcc0
	fcmp.clt.s	$fcc0, $ft10, $ft8
	fsel	$ft8, $ft8, $ft10, $fcc0
.LBB1_11:                               # %if.end753
	fst.s	$ft8, $s0, 180
.LBB1_12:                               # %if.end753
	fsub.s	$ft11, $ft7, $ft6
	fsub.s	$fs1, $ft5, $ft3
	fsub.s	$ft12, $ft4, $ft2
	fsub.s	$ft14, $ft14, $ft6
	fsub.s	$ft13, $ft13, $ft3
	fsub.s	$ft15, $ft15, $ft2
	fneg.s	$ft10, $ft13
	fmul.s	$ft10, $ft12, $ft10
	fmadd.s	$ft10, $fs1, $ft15, $ft10
	fst.s	$ft10, $s0, 100
	fneg.s	$ft15, $ft15
	fmul.s	$ft15, $ft11, $ft15
	fmadd.s	$ft12, $ft12, $ft14, $ft15
	fst.s	$ft12, $s0, 104
	fneg.s	$ft14, $ft14
	fmul.s	$ft14, $fs1, $ft14
	fmadd.s	$ft11, $ft11, $ft13, $ft14
	fmul.s	$ft13, $ft12, $ft12
	fmadd.s	$ft13, $ft10, $ft10, $ft13
	fmadd.s	$ft13, $ft11, $ft11, $ft13
	fcmp.cle.s	$fcc0, $ft13, $ft9
	fst.s	$ft11, $s0, 108
	bcnez	$fcc0, .LBB1_15
# %bb.13:                               # %if.end880
	vldi	$vr17, -1056
	fmul.s	$ft9, $ft13, $ft9
	movfr2gr.s	$a0, $ft13
	bstrpick.d	$a0, $a0, 31, 1
	lu12i.w	$a1, 390005
	ori	$a1, $a1, 2527
	sub.w	$a0, $a1, $a0
	movgr2fr.w	$ft13, $a0
	fmul.s	$ft9, $ft9, $ft13
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.s	$ft14, $a0, %pc_lo12(.LCPI1_1)
	vldi	$vr23, -1160
	fmadd.s	$ft9, $ft9, $ft13, $ft15
	fmul.s	$ft9, $ft9, $ft13
	fcmp.cule.s	$fcc0, $ft14, $ft9
	bcnez	$fcc0, .LBB1_15
# %bb.14:                               # %if.then882
	fmul.s	$ft10, $ft10, $ft9
	fst.s	$ft10, $s0, 100
	fmul.s	$ft12, $ft12, $ft9
	fst.s	$ft12, $s0, 104
	fmul.s	$ft11, $ft11, $ft9
	fst.s	$ft11, $s0, 108
.LBB1_15:                               # %if.end895
	fmul.s	$ft9, $ft3, $ft12
	fmadd.s	$ft9, $ft6, $ft10, $ft9
	fmadd.s	$ft9, $ft2, $ft11, $ft9
	fst.s	$ft9, $s0, 112
	fmul.s	$ft0, $ft12, $ft0
	fmadd.s	$fa7, $ft10, $fa7, $ft0
	fmadd.s	$fa7, $ft11, $ft1, $fa7
	fsub.s	$fa7, $fa7, $ft9
	fst.s	$fa7, $s0, 220
	fmul.s	$fa2, $ft12, $fa2
	fmadd.s	$fa1, $ft10, $fa1, $fa2
	fmadd.s	$fa1, $ft11, $fa4, $fa1
	fsub.s	$fa1, $fa1, $ft9
	fst.s	$fa1, $s0, 224
	fmul.s	$fa2, $fa5, $ft12
	fmadd.s	$fa2, $ft10, $fa3, $fa2
	fmadd.s	$fa2, $ft11, $fa6, $fa2
	fsub.s	$fa2, $fa2, $ft9
	fst.s	$fa2, $s0, 228
	fmul.s	$fa4, $fa7, $fa1
	fst.s	$fa4, $s0, 236
	fmul.s	$fa3, $fa2, $fa7
	fcmp.cule.s	$fcc0, $fa4, $fs0
	fst.s	$fa3, $s0, 240
	bcnez	$fcc0, .LBB1_20
# %bb.16:                               # %if.end895
	fcmp.cule.s	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB1_20
# %bb.17:                               # %if.then1027
	fcmp.cule.s	$fcc0, $fs0, $fa7
	bcnez	$fcc0, .LBB1_44
# %bb.18:                               # %if.then1031
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa1
	fsel	$fa1, $fa7, $fa1, $fcc0
	fneg.s	$fa1, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fst.s	$fa1, $s0, 184
	bcnez	$fcc0, .LBB1_45
# %bb.19:                               # %if.end1083
	fadd.s	$fa0, $ft6, $ft7
	fsub.s	$fa2, $fa0, $ft7
	fst.s	$fa2, $s0, 20
	fsub.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $s0, 4
	fadd.s	$fa0, $ft3, $ft5
	fsub.s	$fa2, $fa0, $ft5
	fst.s	$fa2, $s0, 24
	fsub.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $s0, 8
	fadd.s	$fa0, $ft2, $ft4
	fsub.s	$fa2, $fa0, $ft4
	fst.s	$fa2, $s0, 28
	fsub.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $s0, 12
	vextrins.w	$vr18, $vr20, 16
	vextrins.w	$vr18, $vr19, 32
	vextrins.w	$vr18, $vr17, 48
	vbitrevi.w	$vr0, $vr18, 31
	vst	$vr0, $s0, 100
	b	.LBB1_25
.LBB1_20:                               # %if.else1276
	fadd.s	$fa0, $fa7, $fa1
	fadd.s	$fa0, $fa2, $fa0
	vldi	$vr3, -1272
	fdiv.s	$fa0, $fa0, $fa3
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB1_23
# %bb.21:                               # %if.then1293
	fadd.s	$fa0, $ft6, $ft7
	fsub.s	$fa3, $fa0, $ft7
	fst.s	$fa3, $s0, 20
	fsub.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $s0, 4
	fadd.s	$fa0, $ft3, $ft5
	fsub.s	$fa3, $fa0, $ft5
	fst.s	$fa3, $s0, 24
	fsub.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $s0, 8
	fadd.s	$fa0, $ft2, $ft4
	fsub.s	$fa3, $fa0, $ft4
	fst.s	$fa3, $s0, 28
	fsub.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $s0, 12
	vextrins.w	$vr18, $vr20, 16
	vextrins.w	$vr18, $vr19, 32
	vextrins.w	$vr18, $vr17, 48
	vbitrevi.w	$vr0, $vr18, 31
	vst	$vr0, $s0, 100
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa1, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa0
	fsel	$fa0, $fa7, $fa0, $fcc0
	fneg.s	$fa1, $fa0
	b	.LBB1_24
.LBB1_22:                               # %if.else459
	fcmp.clt.s	$fcc0, $fs3, $fs2
	fsel	$ft10, $fs2, $fs3, $fcc0
	fcmp.clt.s	$fcc0, $ft10, $ft8
	fsel	$ft8, $ft8, $ft10, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $ft8
	fst.s	$ft8, $s0, 180
	bceqz	$fcc0, .LBB1_12
	b	.LBB1_45
.LBB1_23:                               # %if.else1484
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa0, $fa1, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa7
	fsel	$fa1, $fa7, $fa0, $fcc0
.LBB1_24:                               # %if.end1524
	fst.s	$fa1, $s0, 184
.LBB1_25:                               # %if.end1524
	addi.d	$a3, $s0, 4
	addi.d	$a4, $s0, 52
	fcmp.clt.s	$fcc0, $ft8, $fa1
	addi.d	$s1, $s0, 756
	bcnez	$fcc0, .LBB1_35
# %bb.26:                               # %if.then1568
	addi.d	$s2, $s0, 116
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $a4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(_ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_45
# %bb.27:                               # %for.body.lr.ph.i.i
	vld	$vr1, $s2, 0
	move	$a2, $zero
	move	$a1, $zero
	fld.s	$fa0, $s0, 0
	vst	$vr1, $fp, 8
	lu12i.w	$a3, -243808
	lu32i.d	$a3, 0
	st.d	$a3, $fp, 0
	pcalau12i	$a3, %pc_hi20(.LCPI1_2)
	fld.s	$fa2, $a3, %pc_lo12(.LCPI1_2)
	pcalau12i	$a3, %pc_hi20(.LCPI1_3)
	fld.s	$fa1, $a3, %pc_lo12(.LCPI1_3)
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a3, $s0, 764
	addi.d	$a4, $sp, 8
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_28:                               # %if.then5.i.i
                                        #   in Loop: Header=BB1_31 Depth=1
	fst.s	$fa3, $fp, 0
	st.w	$a2, $sp, 8
	ori	$a1, $zero, 1
	fmov.s	$fa2, $fa3
.LBB1_29:                               # %if.end18.sink.split.i.i
                                        #   in Loop: Header=BB1_31 Depth=1
	st.w	$a1, $fp, 4
.LBB1_30:                               # %if.end18.i.i
                                        #   in Loop: Header=BB1_31 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 16
	beqz	$a0, .LBB1_46
.LBB1_31:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $s0, 116
	fld.s	$fa4, $a3, -8
	fld.s	$fa5, $s0, 120
	fld.s	$fa6, $a3, -4
	fld.s	$fa7, $s0, 124
	fld.s	$ft0, $a3, 0
	fld.s	$ft1, $s0, 128
	fmul.s	$fa5, $fa5, $fa6
	fmadd.s	$fa3, $fa3, $fa4, $fa5
	fmadd.s	$fa3, $fa7, $ft0, $fa3
	fsub.s	$fa3, $fa3, $ft1
	fsub.s	$fa3, $fa0, $fa3
	fcmp.cult.s	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB1_30
# %bb.32:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_31 Depth=1
	fcmp.cule.s	$fcc0, $fa3, $fa2
	bceqz	$fcc0, .LBB1_28
# %bb.33:                               # %if.else.i.i
                                        #   in Loop: Header=BB1_31 Depth=1
	fadd.s	$fa3, $fa3, $fa1
	fcmp.cult.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB1_30
# %bb.34:                               # %if.then12.i.i
                                        #   in Loop: Header=BB1_31 Depth=1
	bstrpick.d	$a5, $a1, 31, 0
	slli.d	$a5, $a5, 2
	stx.w	$a2, $a5, $a4
	addi.w	$a1, $a1, 1
	b	.LBB1_29
.LBB1_35:                               # %if.else1582
	addi.d	$s2, $s0, 100
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $a3
	move	$a3, $a4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(_ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_45
# %bb.36:                               # %for.body.lr.ph.i.i97
	vld	$vr1, $s2, 0
	move	$a2, $zero
	move	$a1, $zero
	fld.s	$fa0, $s0, 0
	vst	$vr1, $fp, 8
	lu12i.w	$a3, -243808
	lu32i.d	$a3, 0
	st.d	$a3, $fp, 0
	pcalau12i	$a3, %pc_hi20(.LCPI1_2)
	fld.s	$fa2, $a3, %pc_lo12(.LCPI1_2)
	pcalau12i	$a3, %pc_hi20(.LCPI1_3)
	fld.s	$fa1, $a3, %pc_lo12(.LCPI1_3)
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a3, $s0, 764
	addi.d	$a4, $sp, 8
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_37:                               # %if.then5.i.i139
                                        #   in Loop: Header=BB1_40 Depth=1
	fst.s	$fa3, $fp, 0
	st.w	$a2, $sp, 8
	ori	$a1, $zero, 1
	fmov.s	$fa2, $fa3
.LBB1_38:                               # %if.end18.sink.split.i.i120
                                        #   in Loop: Header=BB1_40 Depth=1
	st.w	$a1, $fp, 4
.LBB1_39:                               # %if.end18.i.i123
                                        #   in Loop: Header=BB1_40 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 16
	beqz	$a0, .LBB1_49
.LBB1_40:                               # %for.body.i.i102
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $s0, 100
	fld.s	$fa4, $a3, -8
	fld.s	$fa5, $s0, 104
	fld.s	$fa6, $a3, -4
	fld.s	$fa7, $s0, 108
	fld.s	$ft0, $a3, 0
	fld.s	$ft1, $s0, 112
	fmul.s	$fa5, $fa5, $fa6
	fmadd.s	$fa3, $fa3, $fa4, $fa5
	fmadd.s	$fa3, $fa7, $ft0, $fa3
	fsub.s	$fa3, $fa3, $ft1
	fsub.s	$fa3, $fa0, $fa3
	fcmp.cult.s	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB1_39
# %bb.41:                               # %if.then.i.i111
                                        #   in Loop: Header=BB1_40 Depth=1
	fcmp.cule.s	$fcc0, $fa3, $fa2
	bceqz	$fcc0, .LBB1_37
# %bb.42:                               # %if.else.i.i113
                                        #   in Loop: Header=BB1_40 Depth=1
	fadd.s	$fa3, $fa3, $fa1
	fcmp.cult.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB1_39
# %bb.43:                               # %if.then12.i.i116
                                        #   in Loop: Header=BB1_40 Depth=1
	bstrpick.d	$a5, $a1, 31, 0
	slli.d	$a5, $a5, 2
	stx.w	$a2, $a5, $a4
	addi.w	$a1, $a1, 1
	b	.LBB1_38
.LBB1_44:                               # %if.else1229
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fa7
	fsel	$fa1, $fa7, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fst.s	$fa1, $s0, 184
	bceqz	$fcc0, .LBB1_25
.LBB1_45:
	move	$a0, $zero
	b	.LBB1_54
.LBB1_46:                               # %for.cond20.preheader.i.i
	beqz	$a1, .LBB1_53
# %bb.47:                               # %for.body23.lr.ph.i.i
	addi.d	$a0, $fp, 24
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a3, $sp, 8
	.p2align	4, , 16
.LBB1_48:                               # %for.body23.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a4, $a3, 0
	slli.d	$a4, $a4, 4
	vldx	$vr0, $s1, $a4
	vst	$vr0, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 16
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB1_48
	b	.LBB1_53
.LBB1_49:                               # %for.cond20.preheader.i.i126
	beqz	$a1, .LBB1_52
# %bb.50:                               # %for.body23.lr.ph.i.i128
	addi.d	$a0, $fp, 24
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a3, $sp, 8
	.p2align	4, , 16
.LBB1_51:                               # %for.body23.i.i131
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a4, $a3, 0
	slli.d	$a4, $a4, 4
	vldx	$vr0, $s1, $a4
	vst	$vr0, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 16
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB1_51
.LBB1_52:                               # %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit140
	fld.s	$fa0, $fp, 8
	fld.s	$fa1, $fp, 12
	fneg.s	$fa0, $fa0
	fld.s	$fa2, $fp, 16
	fst.s	$fa0, $fp, 8
	fneg.s	$fa0, $fa1
	fst.s	$fa0, $fp, 12
	fneg.s	$fa0, $fa2
	fst.s	$fa0, $fp, 16
.LBB1_53:                               # %if.end1600
	sltu	$a0, $zero, $a1
.LBB1_54:                               # %return
	fld.d	$fs5, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end1:
	.size	_ZN30GIM_TRIANGLE_CALCULATION_CACHE18triangle_collisionERK9btVector3S2_S2_fS2_S2_S2_fR25GIM_TRIANGLE_CONTACT_DATA, .Lfunc_end1-_ZN30GIM_TRIANGLE_CALCULATION_CACHE18triangle_collisionERK9btVector3S2_S2_fS2_S2_S2_fR25GIM_TRIANGLE_CONTACT_DATA
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_
.LCPI2_0:
	.word	0x33d6bf95                      # float 1.00000001E-7
.LCPI2_1:
	.word	0x7f7fffff                      # float 3.40282347E+38
	.section	.text._ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_,"axG",@progbits,_ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_,comdat
	.weak	_ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_
	.p2align	2
	.type	_ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_,@function
_ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_: # @_ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	move	$s1, $a2
	fld.s	$fa1, $a2, 16
	fld.s	$fa0, $a2, 0
	move	$fp, $a4
	move	$a4, $a3
	move	$s0, $a1
	move	$s2, $a0
	fsub.s	$fa5, $fa1, $fa0
	fld.s	$fa3, $a2, 20
	fld.s	$fa1, $a2, 4
	fld.s	$fa4, $a2, 24
	fld.s	$fa2, $a2, 8
	fld.s	$fa6, $a1, 4
	fsub.s	$fa7, $fa3, $fa1
	fld.s	$ft0, $a1, 8
	fsub.s	$fa4, $fa4, $fa2
	fneg.s	$fa3, $fa6
	fmul.s	$fa3, $fa4, $fa3
	fmadd.s	$fa3, $fa7, $ft0, $fa3
	fld.s	$ft1, $a1, 0
	fst.s	$fa3, $sp, 8
	fneg.s	$ft0, $ft0
	fmul.s	$ft0, $fa5, $ft0
	fmadd.s	$fa4, $fa4, $ft1, $ft0
	fst.s	$fa4, $sp, 12
	fneg.s	$ft0, $ft1
	fmul.s	$fa7, $fa7, $ft0
	fmadd.s	$fa5, $fa5, $fa6, $fa7
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI2_0)
	fmul.s	$fa6, $fa4, $fa4
	fmadd.s	$fa6, $fa3, $fa3, $fa6
	fmadd.s	$fa6, $fa5, $fa5, $fa6
	fcmp.cle.s	$fcc0, $fa6, $fs0
	fst.s	$fa5, $sp, 16
	bcnez	$fcc0, .LBB2_3
# %bb.1:                                # %if.end
	vldi	$vr7, -1056
	fmul.s	$fa7, $fa6, $fa7
	movfr2gr.s	$a0, $fa6
	bstrpick.d	$a0, $a0, 31, 1
	lu12i.w	$a1, 390005
	ori	$a1, $a1, 2527
	sub.w	$a0, $a1, $a0
	movgr2fr.w	$fa6, $a0
	fmul.s	$fa7, $fa7, $fa6
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.s	$ft0, $a0, %pc_lo12(.LCPI2_1)
	vldi	$vr9, -1160
	fmadd.s	$fa7, $fa7, $fa6, $ft1
	fmul.s	$fa6, $fa7, $fa6
	fcmp.cule.s	$fcc0, $ft0, $fa6
	bcnez	$fcc0, .LBB2_3
# %bb.2:                                # %if.then71
	fmul.s	$fa3, $fa3, $fa6
	fst.s	$fa3, $sp, 8
	fmul.s	$fa4, $fa4, $fa6
	fst.s	$fa4, $sp, 12
	fmul.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $sp, 16
.LBB2_3:                                # %if.end81
	fmul.s	$fa1, $fa1, $fa4
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fmadd.s	$fa0, $fa2, $fa5, $fa0
	fst.s	$fa0, $sp, 20
	addi.d	$a2, $a4, 16
	addi.d	$a3, $a4, 32
	addi.d	$s3, $s2, 244
	addi.d	$a0, $sp, 8
	move	$a1, $a4
	move	$a4, $s3
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_Z27PLANE_CLIP_TRIANGLE_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_RKT_S8_S8_PS6_T1_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_12
# %bb.4:                                # %if.end108
	move	$a2, $a0
	fld.s	$fa1, $s1, 32
	fld.s	$fa0, $s1, 16
	fsub.s	$fa5, $fa1, $fa0
	fld.s	$fa3, $s1, 36
	fld.s	$fa1, $s1, 20
	fld.s	$fa4, $s1, 40
	fld.s	$fa2, $s1, 24
	fld.s	$fa6, $s0, 4
	fsub.s	$fa7, $fa3, $fa1
	fld.s	$ft0, $s0, 8
	fsub.s	$fa4, $fa4, $fa2
	fneg.s	$fa3, $fa6
	fmul.s	$fa3, $fa4, $fa3
	fmadd.s	$fa3, $fa7, $ft0, $fa3
	fld.s	$ft1, $s0, 0
	fst.s	$fa3, $sp, 8
	fneg.s	$ft0, $ft0
	fmul.s	$ft0, $fa5, $ft0
	fmadd.s	$fa4, $fa4, $ft1, $ft0
	fst.s	$fa4, $sp, 12
	fneg.s	$ft0, $ft1
	fmul.s	$fa7, $fa7, $ft0
	fmadd.s	$fa5, $fa5, $fa6, $fa7
	fmul.s	$fa6, $fa4, $fa4
	fmadd.s	$fa6, $fa3, $fa3, $fa6
	fmadd.s	$fa6, $fa5, $fa5, $fa6
	fcmp.cle.s	$fcc0, $fa6, $fs0
	fst.s	$fa5, $sp, 16
	bcnez	$fcc0, .LBB2_7
# %bb.5:                                # %if.end196
	vldi	$vr7, -1056
	fmul.s	$fa7, $fa6, $fa7
	movfr2gr.s	$a0, $fa6
	bstrpick.d	$a0, $a0, 31, 1
	lu12i.w	$a1, 390005
	ori	$a1, $a1, 2527
	sub.w	$a0, $a1, $a0
	movgr2fr.w	$fa6, $a0
	fmul.s	$fa7, $fa7, $fa6
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.s	$ft0, $a0, %pc_lo12(.LCPI2_1)
	vldi	$vr9, -1160
	fmadd.s	$fa7, $fa7, $fa6, $ft1
	fmul.s	$fa6, $fa7, $fa6
	fcmp.cule.s	$fcc0, $ft0, $fa6
	bcnez	$fcc0, .LBB2_7
# %bb.6:                                # %if.then198
	fmul.s	$fa3, $fa3, $fa6
	fst.s	$fa3, $sp, 8
	fmul.s	$fa4, $fa4, $fa6
	fst.s	$fa4, $sp, 12
	fmul.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $sp, 16
.LBB2_7:                                # %if.end208
	fmul.s	$fa1, $fa1, $fa4
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fmadd.s	$fa0, $fa2, $fa5, $fa0
	fst.s	$fa0, $sp, 20
	addi.d	$s2, $s2, 500
	addi.d	$a0, $sp, 8
	move	$a1, $s3
	move	$a3, $s2
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_12
# %bb.8:                                # %if.end235
	move	$a2, $a0
	fld.s	$fa1, $s1, 0
	fld.s	$fa0, $s1, 32
	fsub.s	$fa5, $fa1, $fa0
	fld.s	$fa3, $s1, 4
	fld.s	$fa1, $s1, 36
	fld.s	$fa4, $s1, 8
	fld.s	$fa2, $s1, 40
	fld.s	$fa6, $s0, 4
	fsub.s	$fa7, $fa3, $fa1
	fld.s	$ft0, $s0, 8
	fsub.s	$fa4, $fa4, $fa2
	fneg.s	$fa3, $fa6
	fmul.s	$fa3, $fa4, $fa3
	fmadd.s	$fa3, $fa7, $ft0, $fa3
	fld.s	$ft1, $s0, 0
	fst.s	$fa3, $sp, 8
	fneg.s	$ft0, $ft0
	fmul.s	$ft0, $fa5, $ft0
	fmadd.s	$fa4, $fa4, $ft1, $ft0
	fst.s	$fa4, $sp, 12
	fneg.s	$ft0, $ft1
	fmul.s	$fa7, $fa7, $ft0
	fmadd.s	$fa5, $fa5, $fa6, $fa7
	fmul.s	$fa6, $fa4, $fa4
	fmadd.s	$fa6, $fa3, $fa3, $fa6
	fmadd.s	$fa6, $fa5, $fa5, $fa6
	fcmp.cle.s	$fcc0, $fa6, $fs0
	fst.s	$fa5, $sp, 16
	bcnez	$fcc0, .LBB2_11
# %bb.9:                                # %if.end323
	vldi	$vr7, -1056
	fmul.s	$fa7, $fa6, $fa7
	movfr2gr.s	$a0, $fa6
	bstrpick.d	$a0, $a0, 31, 1
	lu12i.w	$a1, 390005
	ori	$a1, $a1, 2527
	sub.w	$a0, $a1, $a0
	movgr2fr.w	$fa6, $a0
	fmul.s	$fa7, $fa7, $fa6
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.s	$ft0, $a0, %pc_lo12(.LCPI2_1)
	vldi	$vr9, -1160
	fmadd.s	$fa7, $fa7, $fa6, $ft1
	fmul.s	$fa6, $fa7, $fa6
	fcmp.cule.s	$fcc0, $ft0, $fa6
	bcnez	$fcc0, .LBB2_11
# %bb.10:                               # %if.then325
	fmul.s	$fa3, $fa3, $fa6
	fst.s	$fa3, $sp, 8
	fmul.s	$fa4, $fa4, $fa6
	fst.s	$fa4, $sp, 12
	fmul.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $sp, 16
.LBB2_11:                               # %if.end335
	fmul.s	$fa1, $fa1, $fa4
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fmadd.s	$fa0, $fa2, $fa5, $fa0
	fst.s	$fa0, $sp, 20
	addi.d	$a0, $sp, 8
	move	$a1, $s2
	move	$a3, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_)
	jirl	$ra, $ra, 0
	b	.LBB2_13
.LBB2_12:
	move	$a0, $zero
.LBB2_13:                               # %cleanup
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	_ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_, .Lfunc_end2-_ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z27PLANE_CLIP_TRIANGLE_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_RKT_S8_S8_PS6_T1_
.LCPI3_0:
	.word	0x34000000                      # float 1.1920929E-7
	.section	.text._Z27PLANE_CLIP_TRIANGLE_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_RKT_S8_S8_PS6_T1_,"axG",@progbits,_Z27PLANE_CLIP_TRIANGLE_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_RKT_S8_S8_PS6_T1_,comdat
	.weak	_Z27PLANE_CLIP_TRIANGLE_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_RKT_S8_S8_PS6_T1_
	.p2align	5
	.type	_Z27PLANE_CLIP_TRIANGLE_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_RKT_S8_S8_PS6_T1_,@function
_Z27PLANE_CLIP_TRIANGLE_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_RKT_S8_S8_PS6_T1_: # @_Z27PLANE_CLIP_TRIANGLE_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_RKT_S8_S8_PS6_T1_
	.cfi_startproc
# %bb.0:                                # %entry
	move	$a5, $a0
	fld.s	$fa2, $a0, 4
	fld.s	$fa0, $a1, 4
	fld.s	$fa3, $a0, 0
	fld.s	$fa6, $a1, 0
	fmul.s	$fa0, $fa2, $fa0
	fld.s	$fa4, $a0, 8
	fld.s	$fa7, $a1, 8
	fld.s	$fa5, $a0, 12
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI3_0)
	fmadd.s	$fa0, $fa3, $fa6, $fa0
	fmadd.s	$fa0, $fa4, $fa7, $fa0
	fsub.s	$fa0, $fa0, $fa5
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB3_2
# %bb.1:
	move	$a0, $zero
	b	.LBB3_3
.LBB3_2:                                # %if.then
	fst.s	$fa6, $a4, 0
	fld.s	$fa2, $a1, 4
	fst.s	$fa2, $a4, 4
	fld.s	$fa2, $a1, 8
	fst.s	$fa2, $a4, 8
	fld.s	$fa3, $a5, 0
	fld.s	$fa2, $a5, 4
	fld.s	$fa4, $a5, 8
	fld.s	$fa5, $a5, 12
	ori	$a0, $zero, 1
.LBB3_3:                                # %if.end
	fld.s	$fa7, $a2, 4
	fld.s	$fa6, $a2, 0
	fld.s	$ft0, $a2, 8
	fmul.s	$fa2, $fa2, $fa7
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fmadd.s	$fa2, $fa4, $ft0, $fa2
	fsub.s	$fa2, $fa2, $fa5
	fcmp.clt.s	$fcc1, $fa1, $fa2
	fcmp.cule.s	$fcc2, $fa0, $fa1
	movcf2gr	$a6, $fcc2
	movcf2gr	$a7, $fcc1
	xor	$a6, $a6, $a7
	bnez	$a6, .LBB3_5
# %bb.4:                                # %if.then.i
	fneg.s	$fa3, $fa0
	fsub.s	$fa4, $fa2, $fa0
	fdiv.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $a1, 0
	vldi	$vr5, -1168
	fsub.s	$fa5, $fa5, $fa3
	fmul.s	$fa6, $fa6, $fa3
	fmadd.s	$fa4, $fa5, $fa4, $fa6
	slli.d	$a6, $a0, 4
	fstx.s	$fa4, $a4, $a6
	fld.s	$fa4, $a2, 4
	fld.s	$fa6, $a1, 4
	alsl.d	$a6, $a0, $a4, 4
	fmul.s	$fa4, $fa3, $fa4
	fmadd.s	$fa4, $fa5, $fa6, $fa4
	fst.s	$fa4, $a6, 4
	fld.s	$fa4, $a2, 8
	fld.s	$fa6, $a1, 8
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa3, $fa5, $fa6, $fa3
	fst.s	$fa3, $a6, 8
	addi.d	$a0, $a0, 1
.LBB3_5:                                # %if.end.i
	bcnez	$fcc1, .LBB3_7
# %bb.6:                                # %if.then31.i
	fld.s	$fa3, $a2, 0
	slli.d	$a6, $a0, 4
	fstx.s	$fa3, $a4, $a6
	fld.s	$fa3, $a2, 4
	alsl.d	$a6, $a0, $a4, 4
	fst.s	$fa3, $a6, 4
	fld.s	$fa3, $a2, 8
	fst.s	$fa3, $a6, 8
	addi.d	$a0, $a0, 1
.LBB3_7:                                # %_Z26PLANE_CLIP_POLYGON_COLLECTI9btVector3EvRKT_S3_ffPS1_Rj.exit
	fld.s	$fa3, $a5, 0
	fld.s	$fa4, $a3, 0
	fld.s	$fa5, $a5, 4
	fld.s	$fa6, $a3, 4
	fld.s	$fa7, $a5, 8
	fld.s	$ft0, $a3, 8
	fld.s	$ft1, $a5, 12
	fmul.s	$fa5, $fa5, $fa6
	fmadd.s	$fa3, $fa3, $fa4, $fa5
	fmadd.s	$fa3, $fa7, $ft0, $fa3
	fsub.s	$fa3, $fa3, $ft1
	fcmp.clt.s	$fcc1, $fa1, $fa3
	fcmp.cule.s	$fcc2, $fa2, $fa1
	movcf2gr	$a5, $fcc2
	movcf2gr	$a6, $fcc1
	xor	$a5, $a5, $a6
	bnez	$a5, .LBB3_9
# %bb.8:                                # %if.then.i41
	fneg.s	$fa5, $fa2
	fsub.s	$fa2, $fa3, $fa2
	fdiv.s	$fa2, $fa5, $fa2
	fld.s	$fa5, $a2, 0
	vldi	$vr6, -1168
	fsub.s	$fa6, $fa6, $fa2
	fmul.s	$fa4, $fa4, $fa2
	fmadd.s	$fa4, $fa6, $fa5, $fa4
	slli.d	$a5, $a0, 4
	fstx.s	$fa4, $a4, $a5
	fld.s	$fa4, $a3, 4
	fld.s	$fa5, $a2, 4
	alsl.d	$a5, $a0, $a4, 4
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa4, $fa6, $fa5, $fa4
	fst.s	$fa4, $a5, 4
	fld.s	$fa4, $a3, 8
	fld.s	$fa5, $a2, 8
	fmul.s	$fa2, $fa2, $fa4
	fmadd.s	$fa2, $fa6, $fa5, $fa2
	fst.s	$fa2, $a5, 8
	addi.d	$a0, $a0, 1
.LBB3_9:                                # %if.end.i58
	bcnez	$fcc1, .LBB3_11
# %bb.10:                               # %if.then31.i59
	fld.s	$fa2, $a3, 0
	slli.d	$a2, $a0, 4
	fstx.s	$fa2, $a4, $a2
	fld.s	$fa2, $a3, 4
	alsl.d	$a2, $a0, $a4, 4
	fst.s	$fa2, $a2, 4
	fld.s	$fa2, $a3, 8
	fst.s	$fa2, $a2, 8
	addi.d	$a0, $a0, 1
.LBB3_11:                               # %_Z26PLANE_CLIP_POLYGON_COLLECTI9btVector3EvRKT_S3_ffPS1_Rj.exit67
	fcmp.cule.s	$fcc1, $fa3, $fa1
	movcf2gr	$a2, $fcc0
	movcf2gr	$a5, $fcc1
	xor	$a2, $a2, $a5
	beqz	$a2, .LBB3_14
# %bb.12:                               # %if.end.i87
	bceqz	$fcc0, .LBB3_15
.LBB3_13:                               # %_Z26PLANE_CLIP_POLYGON_COLLECTI9btVector3EvRKT_S3_ffPS1_Rj.exit96
	ret
.LBB3_14:                               # %if.then.i70
	fneg.s	$fa1, $fa3
	fsub.s	$fa0, $fa0, $fa3
	fdiv.s	$fa0, $fa1, $fa0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	vldi	$vr3, -1168
	fsub.s	$fa3, $fa3, $fa0
	fmul.s	$fa1, $fa0, $fa1
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	slli.d	$a2, $a0, 4
	fstx.s	$fa1, $a4, $a2
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a3, 4
	alsl.d	$a2, $a0, $a4, 4
	fmul.s	$fa1, $fa0, $fa1
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	fst.s	$fa1, $a2, 4
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a3, 8
	fmul.s	$fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa3, $fa2, $fa0
	fst.s	$fa0, $a2, 8
	addi.d	$a0, $a0, 1
	bcnez	$fcc0, .LBB3_13
.LBB3_15:                               # %if.then31.i88
	fld.s	$fa0, $a1, 0
	slli.d	$a2, $a0, 4
	fstx.s	$fa0, $a4, $a2
	fld.s	$fa0, $a1, 4
	alsl.d	$a2, $a0, $a4, 4
	fst.s	$fa0, $a2, 4
	fld.s	$fa0, $a1, 8
	fst.s	$fa0, $a2, 8
	addi.d	$a0, $a0, 1
	ret
.Lfunc_end3:
	.size	_Z27PLANE_CLIP_TRIANGLE_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_RKT_S8_S8_PS6_T1_, .Lfunc_end3-_Z27PLANE_CLIP_TRIANGLE_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_RKT_S8_S8_PS6_T1_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_
.LCPI4_0:
	.word	0x34000000                      # float 1.1920929E-7
	.section	.text._Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_,"axG",@progbits,_Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_,comdat
	.weak	_Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_
	.p2align	5
	.type	_Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_,@function
_Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_: # @_Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_
# %bb.0:                                # %entry
	move	$a4, $a0
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a1, 4
	fld.s	$fa3, $a0, 0
	fld.s	$fa2, $a1, 0
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $a0, 8
	fld.s	$fa5, $a1, 8
	fld.s	$fa6, $a0, 12
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI4_0)
	fmadd.s	$fa0, $fa3, $fa2, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fsub.s	$fa0, $fa0, $fa6
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB4_6
# %bb.1:
	move	$a0, $zero
	ori	$a5, $zero, 2
	bgeu	$a2, $a5, .LBB4_7
.LBB4_2:
	fmov.s	$fa3, $fa0
.LBB4_3:                                # %for.cond.cleanup
	fcmp.cule.s	$fcc1, $fa3, $fa1
	movcf2gr	$a4, $fcc0
	movcf2gr	$a5, $fcc1
	xor	$a4, $a4, $a5
	beqz	$a4, .LBB4_13
# %bb.4:                                # %if.end.i
	bceqz	$fcc0, .LBB4_14
.LBB4_5:                                # %_Z26PLANE_CLIP_POLYGON_COLLECTI9btVector3EvRKT_S3_ffPS1_Rj.exit
	ret
.LBB4_6:                                # %if.then
	fst.s	$fa2, $a3, 0
	fld.s	$fa2, $a1, 4
	fst.s	$fa2, $a3, 4
	fld.s	$fa2, $a1, 8
	fst.s	$fa2, $a3, 8
	ori	$a0, $zero, 1
	ori	$a5, $zero, 2
	bltu	$a2, $a5, .LBB4_2
.LBB4_7:                                # %for.body.preheader
	bstrpick.d	$a5, $a2, 31, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a1, 24
	vldi	$vr2, -1168
	fmov.s	$fa4, $fa0
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_8:                                # %_Z26PLANE_CLIP_POLYGON_COLLECTI9btVector3EvRKT_S3_ffPS1_Rj.exit59
                                        #   in Loop: Header=BB4_9 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 16
	fmov.s	$fa4, $fa3
	beqz	$a5, .LBB4_3
.LBB4_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a4, 0
	fld.s	$fa5, $a6, -8
	fld.s	$fa6, $a4, 4
	fld.s	$fa7, $a6, -4
	fld.s	$ft0, $a4, 8
	fld.s	$ft1, $a6, 0
	fld.s	$ft2, $a4, 12
	fmul.s	$fa6, $fa6, $fa7
	fmadd.s	$fa3, $fa3, $fa5, $fa6
	fmadd.s	$fa3, $ft0, $ft1, $fa3
	fsub.s	$fa3, $fa3, $ft2
	fcmp.clt.s	$fcc1, $fa1, $fa3
	fcmp.cule.s	$fcc2, $fa4, $fa1
	movcf2gr	$a7, $fcc2
	movcf2gr	$t0, $fcc1
	xor	$a7, $a7, $t0
	bnez	$a7, .LBB4_11
# %bb.10:                               # %if.then.i33
                                        #   in Loop: Header=BB4_9 Depth=1
	fneg.s	$fa6, $fa4
	fsub.s	$fa4, $fa3, $fa4
	fld.s	$fa7, $a6, -24
	fdiv.s	$fa4, $fa6, $fa4
	fsub.s	$fa6, $fa2, $fa4
	fmul.s	$fa5, $fa5, $fa4
	fmadd.s	$fa5, $fa6, $fa7, $fa5
	bstrpick.d	$a7, $a0, 31, 0
	slli.d	$t0, $a7, 4
	fstx.s	$fa5, $a3, $t0
	fld.s	$fa5, $a6, -4
	fld.s	$fa7, $a6, -20
	alsl.d	$a7, $a7, $a3, 4
	fmul.s	$fa5, $fa4, $fa5
	fmadd.s	$fa5, $fa6, $fa7, $fa5
	fst.s	$fa5, $a7, 4
	fld.s	$fa5, $a6, 0
	fld.s	$fa7, $a6, -16
	fmul.s	$fa4, $fa4, $fa5
	fmadd.s	$fa4, $fa6, $fa7, $fa4
	fst.s	$fa4, $a7, 8
	addi.w	$a0, $a0, 1
.LBB4_11:                               # %if.end.i50
                                        #   in Loop: Header=BB4_9 Depth=1
	bcnez	$fcc1, .LBB4_8
# %bb.12:                               # %if.then31.i51
                                        #   in Loop: Header=BB4_9 Depth=1
	fld.s	$fa4, $a6, -8
	bstrpick.d	$a7, $a0, 31, 0
	slli.d	$t0, $a7, 4
	fstx.s	$fa4, $a3, $t0
	fld.s	$fa4, $a6, -4
	alsl.d	$a7, $a7, $a3, 4
	fst.s	$fa4, $a7, 4
	fld.s	$fa4, $a6, 0
	fst.s	$fa4, $a7, 8
	addi.w	$a0, $a0, 1
	b	.LBB4_8
.LBB4_13:                               # %if.then.i
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a4, $a2, $a1, 4
	slli.d	$a2, $a2, 4
	fneg.s	$fa1, $fa3
	fsub.s	$fa0, $fa0, $fa3
	fdiv.s	$fa0, $fa1, $fa0
	fld.s	$fa1, $a1, 0
	fldx.s	$fa2, $a1, $a2
	vldi	$vr3, -1168
	fsub.s	$fa3, $fa3, $fa0
	fmul.s	$fa1, $fa0, $fa1
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	bstrpick.d	$a2, $a0, 31, 0
	slli.d	$a5, $a2, 4
	fstx.s	$fa1, $a3, $a5
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a4, 4
	alsl.d	$a2, $a2, $a3, 4
	fmul.s	$fa1, $fa0, $fa1
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	fst.s	$fa1, $a2, 4
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a4, 8
	fmul.s	$fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa3, $fa2, $fa0
	fst.s	$fa0, $a2, 8
	addi.w	$a0, $a0, 1
	bcnez	$fcc0, .LBB4_5
.LBB4_14:                               # %if.then31.i
	fld.s	$fa0, $a1, 0
	bstrpick.d	$a2, $a0, 31, 0
	slli.d	$a4, $a2, 4
	fstx.s	$fa0, $a3, $a4
	fld.s	$fa0, $a1, 4
	alsl.d	$a2, $a2, $a3, 4
	fst.s	$fa0, $a2, 4
	fld.s	$fa0, $a1, 8
	fst.s	$fa0, $a2, 8
	addi.w	$a0, $a0, 1
	ret
.Lfunc_end4:
	.size	_Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_, .Lfunc_end4-_Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
