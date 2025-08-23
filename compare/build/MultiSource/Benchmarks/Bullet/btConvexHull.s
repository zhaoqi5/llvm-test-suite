	.file	"btConvexHull.cpp"
	.text
	.globl	_Z22ThreePlaneIntersectionRK7btPlaneS1_S1_ # -- Begin function _Z22ThreePlaneIntersectionRK7btPlaneS1_S1_
	.p2align	5
	.type	_Z22ThreePlaneIntersectionRK7btPlaneS1_S1_,@function
_Z22ThreePlaneIntersectionRK7btPlaneS1_S1_: # @_Z22ThreePlaneIntersectionRK7btPlaneS1_S1_
# %bb.0:                                # %entry
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a0, 8
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a1, 4
	fld.s	$fa5, $a2, 4
	fld.s	$fa6, $a1, 8
	fld.s	$fa7, $a2, 8
	fld.s	$ft0, $a2, 0
	fneg.s	$ft1, $fa5
	fmul.s	$ft1, $fa6, $ft1
	fmadd.s	$ft1, $fa4, $fa7, $ft1
	fneg.s	$ft2, $fa7
	fmul.s	$ft2, $fa3, $ft2
	fmadd.s	$ft2, $fa6, $ft0, $ft2
	fneg.s	$ft3, $ft0
	fmul.s	$ft3, $fa4, $ft3
	fmadd.s	$ft3, $fa3, $fa5, $ft3
	fneg.s	$ft4, $fa1
	fmul.s	$ft4, $fa7, $ft4
	fmadd.s	$ft4, $fa5, $fa2, $ft4
	fneg.s	$ft5, $fa2
	fmul.s	$ft5, $ft0, $ft5
	fmadd.s	$fa7, $fa7, $fa0, $ft5
	fneg.s	$ft5, $fa0
	fmul.s	$fa5, $fa5, $ft5
	fmadd.s	$fa5, $ft0, $fa1, $fa5
	fneg.s	$ft0, $fa4
	fmul.s	$ft0, $fa2, $ft0
	fmadd.s	$ft0, $fa1, $fa6, $ft0
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $fa0, $fa6
	fmadd.s	$fa6, $fa2, $fa3, $fa6
	fneg.s	$fa3, $fa3
	fmul.s	$fa3, $fa1, $fa3
	fmadd.s	$fa3, $fa0, $fa4, $fa3
	fmul.s	$fa1, $fa1, $ft2
	fmadd.s	$fa0, $fa0, $ft1, $fa1
	fld.s	$fa1, $a0, 16
	fmadd.s	$fa0, $fa2, $ft3, $fa0
	vldi	$vr2, -1040
	fdiv.s	$fa0, $fa2, $fa0
	fmul.s	$fa2, $fa1, $ft1
	fld.s	$fa4, $a1, 16
	fmul.s	$ft1, $fa1, $ft2
	fmul.s	$fa1, $ft3, $fa1
	fld.s	$ft2, $a2, 16
	fmul.s	$ft3, $fa4, $ft4
	fmul.s	$fa7, $fa7, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fmul.s	$fa5, $ft0, $ft2
	fmul.s	$fa6, $fa6, $ft2
	fmul.s	$fa3, $fa3, $ft2
	fadd.s	$fa2, $fa2, $ft3
	fadd.s	$fa7, $fa7, $ft1
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa5, $fa2
	fadd.s	$fa4, $fa6, $fa7
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa2, $fa2, $fa0
	fmul.s	$fa3, $fa4, $fa0
	fmul.s	$fa0, $fa1, $fa0
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	ret
.Lfunc_end0:
	.size	_Z22ThreePlaneIntersectionRK7btPlaneS1_S1_, .Lfunc_end0-_Z22ThreePlaneIntersectionRK7btPlaneS1_S1_
                                        # -- End function
	.globl	_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_ # -- Begin function _Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_
	.p2align	5
	.type	_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_,@function
_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_: # @_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_
	.cfi_startproc
# %bb.0:                                # %entry
	pcalau12i	$a3, %pc_hi20(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	ld.b	$a3, $a3, %pc_lo12(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	dbar	20
	beqz	$a3, .LBB1_2
.LBB1_1:                                # %init.end
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 4
	fld.s	$fa3, $a1, 4
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fld.s	$fa4, $a2, 8
	fld.s	$fa5, $a1, 8
	fld.s	$fa6, $a0, 4
	fld.s	$fa7, $a0, 0
	fld.s	$ft0, $a0, 8
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$ft1, $fa6, $fa2
	fmadd.s	$ft1, $fa7, $fa0, $ft1
	fmadd.s	$ft1, $ft0, $fa4, $ft1
	fld.s	$ft2, $a0, 16
	fmul.s	$fa6, $fa6, $fa3
	fmadd.s	$fa6, $fa7, $fa1, $fa6
	fmadd.s	$fa6, $ft0, $fa5, $fa6
	fadd.s	$fa6, $ft2, $fa6
	fneg.s	$fa6, $fa6
	fdiv.s	$fa6, $fa6, $ft1
	fmul.s	$fa0, $fa0, $fa6
	fmul.s	$fa2, $fa2, $fa6
	fmul.s	$fa4, $fa4, $fa6
	fadd.s	$fa0, $fa1, $fa0
	fadd.s	$fa1, $fa3, $fa2
	fadd.s	$fa2, $fa5, $fa4
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ret
.LBB1_2:                                # %init.check
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	pcalau12i	$a3, %pc_hi20(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	addi.d	$a3, $a3, %pc_lo12(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	move	$fp, $a0
	move	$a0, $a3
	move	$s0, $a1
	move	$s1, $a2
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	move	$a1, $s0
	move	$a3, $a0
	move	$a0, $fp
	addi.w	$a3, $a3, 0
	beqz	$a3, .LBB1_4
# %bb.3:                                # %init
	pcalau12i	$a0, %pc_hi20(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	move	$a1, $s0
	move	$a0, $fp
.LBB1_4:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	b	.LBB1_1
.Lfunc_end1:
	.size	_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_, .Lfunc_end1-_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_Z12PlaneProjectRK7btPlaneRK9btVector3 # -- Begin function _Z12PlaneProjectRK7btPlaneRK9btVector3
	.p2align	5
	.type	_Z12PlaneProjectRK7btPlaneRK9btVector3,@function
_Z12PlaneProjectRK7btPlaneRK9btVector3: # @_Z12PlaneProjectRK7btPlaneRK9btVector3
# %bb.0:                                # %entry
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a0, 4
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a0, 8
	fld.s	$fa6, $a0, 16
	fmul.s	$fa7, $fa2, $fa3
	fmadd.s	$fa7, $fa0, $fa1, $fa7
	fmadd.s	$fa7, $fa4, $fa5, $fa7
	fadd.s	$fa6, $fa7, $fa6
	fmul.s	$fa1, $fa1, $fa6
	fmul.s	$fa3, $fa3, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ret
.Lfunc_end2:
	.size	_Z12PlaneProjectRK7btPlaneRK9btVector3, .Lfunc_end2-_Z12PlaneProjectRK7btPlaneRK9btVector3
                                        # -- End function
	.globl	_Z9TriNormalRK9btVector3S1_S1_  # -- Begin function _Z9TriNormalRK9btVector3S1_S1_
	.p2align	5
	.type	_Z9TriNormalRK9btVector3S1_S1_,@function
_Z9TriNormalRK9btVector3S1_S1_:         # @_Z9TriNormalRK9btVector3S1_S1_
# %bb.0:                                # %entry
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a0, 0
	fsub.s	$fa2, $fa0, $fa1
	fld.s	$fa1, $a1, 4
	fld.s	$fa3, $a0, 4
	fld.s	$fa4, $a2, 0
	fld.s	$fa5, $a1, 8
	fld.s	$fa6, $a0, 8
	fld.s	$fa7, $a2, 4
	fsub.s	$fa4, $fa4, $fa0
	fld.s	$fa0, $a2, 8
	fsub.s	$fa3, $fa1, $fa3
	fsub.s	$fa7, $fa7, $fa1
	fsub.s	$fa1, $fa5, $fa6
	fsub.s	$fa5, $fa0, $fa5
	fneg.s	$fa0, $fa7
	fmul.s	$fa0, $fa1, $fa0
	fmadd.s	$fa0, $fa3, $fa5, $fa0
	fneg.s	$fa5, $fa5
	fmul.s	$fa5, $fa2, $fa5
	fmadd.s	$fa1, $fa1, $fa4, $fa5
	fneg.s	$fa4, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa2, $fa2, $fa7, $fa3
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	movgr2fr.w	$fa4, $zero
	fcmp.ceq.s	$fcc0, $fa3, $fa4
	bceqz	$fcc0, .LBB3_2
# %bb.1:
	move	$a1, $zero
	lu12i.w	$a0, 260096
	ret
.LBB3_2:                                # %if.end
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ret
.Lfunc_end3:
	.size	_Z9TriNormalRK9btVector3S1_S1_, .Lfunc_end3-_Z9TriNormalRK9btVector3S1_S1_
                                        # -- End function
	.globl	_Z20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_ # -- Begin function _Z20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_
	.p2align	5
	.type	_Z20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_,@function
_Z20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_: # @_Z20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 40                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	.cfi_offset 57, -88
	.cfi_offset 58, -96
	.cfi_offset 59, -104
	.cfi_offset 60, -112
	.cfi_offset 61, -120
	.cfi_offset 62, -128
	.cfi_offset 63, -136
	pcalau12i	$a6, %pc_hi20(_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp)
	ld.b	$a6, $a6, %pc_lo12(_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp)
	dbar	20
	beqz	$a6, .LBB4_8
.LBB4_1:                                # %init.end
	fld.s	$fa0, $a3, 4
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a3, 8
	fneg.s	$fa4, $fa0
	fmul.s	$fa4, $fa1, $fa4
	fld.s	$fa5, $a1, 0
	fld.s	$fa6, $a3, 0
	fmadd.s	$fa4, $fa2, $fa3, $fa4
	fneg.s	$fa3, $fa3
	fmul.s	$fa3, $fa5, $fa3
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fneg.s	$fa3, $fa6
	fmul.s	$fa2, $fa2, $fa3
	fmadd.s	$fa0, $fa5, $fa0, $fa2
	fmul.s	$fa2, $fa1, $fa1
	fmadd.s	$fa2, $fa4, $fa4, $fa2
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$ft0, $fa4, $fa2
	fmul.s	$fs2, $fa1, $fa2
	fmul.s	$fs1, $fa0, $fa2
	movfr2gr.s	$a6, $ft0
	movfr2gr.s	$a7, $fs2
	bstrins.d	$a6, $a7, 63, 32
	movfr2gr.s	$a7, $fs1
	bstrpick.d	$a7, $a7, 31, 0
	pcalau12i	$t0, %pc_hi20(_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp)
	addi.d	$s0, $t0, %pc_lo12(_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp)
	st.d	$a6, $s0, 0
	st.d	$a7, $s0, 8
	fld.s	$ft1, $a0, 0
	fld.s	$ft3, $a0, 4
	fld.s	$ft2, $a0, 8
	fld.s	$ft4, $a2, 0
	fld.s	$ft6, $a2, 4
	fld.s	$ft5, $a2, 8
	pcalau12i	$fp, %pc_hi20(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	beqz	$a4, .LBB4_4
# %bb.2:                                # %if.then
	fld.s	$fa0, $a3, 8
	fld.s	$fa1, $a3, 4
	fneg.s	$fa2, $fs2
	fld.s	$fa3, $a3, 0
	fmul.s	$fa2, $fa0, $fa2
	fmadd.s	$fa2, $fa1, $fs1, $fa2
	fneg.s	$fa4, $fs1
	fmul.s	$fa4, $fa3, $fa4
	fmadd.s	$fa0, $fa0, $ft0, $fa4
	fneg.s	$fa4, $ft0
	fmul.s	$fa1, $fa1, $fa4
	fmadd.s	$fa1, $fa3, $fs2, $fa1
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fs4, $fa2, $fa3
	fmul.s	$fs6, $fa0, $fa3
	fmul.s	$fs5, $fa1, $fa3
	fmul.s	$fa0, $ft6, $fs6
	fmadd.s	$fa0, $fs4, $ft4, $fa0
	fmadd.s	$ft7, $fs5, $ft5, $fa0
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a1, 8
	ld.b	$a6, $fp, %pc_lo12(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	fadd.s	$fs3, $ft1, $fa0
	fadd.s	$fs7, $ft3, $fa1
	fadd.s	$fs0, $ft2, $fa2
	dbar	20
	beqz	$a6, .LBB4_10
.LBB4_3:                                # %_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a0, 8
	fsub.s	$fa3, $fs3, $fa0
	fsub.s	$fa4, $fs7, $fa1
	fsub.s	$fa5, $fs0, $fa2
	fmul.s	$fa6, $fs6, $fa4
	fmadd.s	$fa6, $fs4, $fa3, $fa6
	fmadd.s	$fa6, $fs5, $fa5, $fa6
	fmul.s	$fa7, $fs6, $fa1
	fmadd.s	$fa7, $fs4, $fa0, $fa7
	fmadd.s	$fa7, $fs5, $fa2, $fa7
	fsub.s	$fa7, $fa7, $ft7
	fneg.s	$fa7, $fa7
	fdiv.s	$fa6, $fa7, $fa6
	fmul.s	$fa3, $fa3, $fa6
	fmul.s	$fa4, $fa4, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	movfr2gr.s	$a6, $fa0
	movfr2gr.s	$a7, $fa1
	bstrins.d	$a6, $a7, 63, 32
	movfr2gr.s	$a7, $fa2
	bstrpick.d	$a7, $a7, 31, 0
	st.d	$a6, $a4, 0
	st.d	$a7, $a4, 8
.LBB4_4:                                # %if.end
	beqz	$a5, .LBB4_7
# %bb.5:                                # %if.then26
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $s0, 8
	fneg.s	$fa4, $fa0
	fmul.s	$fa4, $fa1, $fa4
	fld.s	$fa5, $a1, 0
	fld.s	$fa6, $s0, 0
	fmadd.s	$fa4, $fa2, $fa3, $fa4
	fneg.s	$fa3, $fa3
	fmul.s	$fa3, $fa5, $fa3
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fneg.s	$fa3, $fa6
	fmul.s	$fa2, $fa2, $fa3
	fmadd.s	$fa0, $fa5, $fa0, $fa2
	fmul.s	$fa2, $fa1, $fa1
	fmadd.s	$fa2, $fa4, $fa4, $fa2
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fs4, $fa4, $fa2
	fmul.s	$fs5, $fa1, $fa2
	fld.s	$fa1, $a0, 4
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $a0, 8
	fmul.s	$fs6, $fa0, $fa2
	fmul.s	$fa0, $fa1, $fs5
	fmadd.s	$fa0, $fs4, $fa3, $fa0
	fmadd.s	$ft7, $fs6, $fa4, $fa0
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a2, 4
	fld.s	$fa3, $a3, 4
	fld.s	$fa4, $a2, 8
	fld.s	$fa5, $a3, 8
	ld.b	$a0, $fp, %pc_lo12(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	fadd.s	$fs0, $fa0, $fa1
	fadd.s	$fs3, $fa2, $fa3
	fadd.s	$fs7, $fa4, $fa5
	dbar	20
	beqz	$a0, .LBB4_12
.LBB4_6:                                # %_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit143
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a2, 8
	fsub.s	$fa3, $fs0, $fa0
	fsub.s	$fa4, $fs3, $fa1
	fsub.s	$fa5, $fs7, $fa2
	fmul.s	$fa6, $fs5, $fa4
	fmadd.s	$fa6, $fs4, $fa3, $fa6
	fmadd.s	$fa6, $fs6, $fa5, $fa6
	fmul.s	$fa7, $fs5, $fa1
	fmadd.s	$fa7, $fs4, $fa0, $fa7
	fmadd.s	$fa7, $fs6, $fa2, $fa7
	fsub.s	$fa7, $fa7, $ft7
	fneg.s	$fa7, $fa7
	fdiv.s	$fa6, $fa7, $fa6
	fmul.s	$fa3, $fa3, $fa6
	fmul.s	$fa4, $fa4, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $a5, 0
	st.d	$a1, $a5, 8
.LBB4_7:                                # %if.end45
	fmul.s	$fa0, $fs2, $ft6
	fmadd.s	$fa0, $ft0, $ft4, $fa0
	fmadd.s	$fa0, $fs1, $ft5, $fa0
	fmul.s	$fa1, $fs2, $ft3
	fmadd.s	$fa1, $ft0, $ft1, $fa1
	fmadd.s	$fa1, $fs1, $ft2, $fa1
	fsub.s	$fa0, $fa0, $fa1
	fabs.s	$fa0, $fa0
	fld.d	$fs7, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.LBB4_8:                                # %init.check
	pcalau12i	$a6, %pc_hi20(_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp)
	addi.d	$a6, $a6, %pc_lo12(_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp)
	move	$fp, $a0
	move	$a0, $a6
	move	$s2, $a5
	move	$s4, $a2
	move	$s1, $a3
	move	$s3, $a1
	move	$s0, $a4
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	move	$a4, $s0
	move	$a1, $s3
	move	$a3, $s1
	move	$a2, $s4
	move	$a5, $s2
	move	$a6, $a0
	move	$a0, $fp
	addi.w	$a6, $a6, 0
	beqz	$a6, .LBB4_1
# %bb.9:                                # %init
	pcalau12i	$a0, %pc_hi20(_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	move	$a4, $s0
	move	$a1, $s3
	move	$a0, $fp
	move	$a3, $s1
	move	$a2, $s4
	move	$a5, $s2
	b	.LBB4_1
.LBB4_10:                               # %init.check.i
	pcalau12i	$a6, %pc_hi20(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	addi.d	$a6, $a6, %pc_lo12(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	move	$s1, $a0
	move	$a0, $a6
	move	$s4, $a5
	move	$s6, $a2
	move	$s3, $a3
	move	$s5, $a1
	move	$s2, $a4
	fst.s	$ft0, $sp, 36                   # 4-byte Folded Spill
	fst.s	$ft1, $sp, 32                   # 4-byte Folded Spill
	fst.s	$ft2, $sp, 28                   # 4-byte Folded Spill
	fst.s	$ft3, $sp, 24                   # 4-byte Folded Spill
	fst.s	$ft4, $sp, 20                   # 4-byte Folded Spill
	fst.s	$ft5, $sp, 16                   # 4-byte Folded Spill
	fst.s	$ft6, $sp, 12                   # 4-byte Folded Spill
	fst.s	$ft7, $sp, 8                    # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	fld.s	$ft7, $sp, 8                    # 4-byte Folded Reload
	fld.s	$ft6, $sp, 12                   # 4-byte Folded Reload
	fld.s	$ft5, $sp, 16                   # 4-byte Folded Reload
	fld.s	$ft4, $sp, 20                   # 4-byte Folded Reload
	fld.s	$ft3, $sp, 24                   # 4-byte Folded Reload
	fld.s	$ft2, $sp, 28                   # 4-byte Folded Reload
	fld.s	$ft1, $sp, 32                   # 4-byte Folded Reload
	fld.s	$ft0, $sp, 36                   # 4-byte Folded Reload
	move	$a4, $s2
	move	$a1, $s5
	move	$a3, $s3
	move	$a2, $s6
	move	$a5, $s4
	move	$a6, $a0
	move	$a0, $s1
	addi.w	$a6, $a6, 0
	beqz	$a6, .LBB4_3
# %bb.11:                               # %init.i
	pcalau12i	$a0, %pc_hi20(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	fld.s	$ft7, $sp, 8                    # 4-byte Folded Reload
	fld.s	$ft6, $sp, 12                   # 4-byte Folded Reload
	fld.s	$ft5, $sp, 16                   # 4-byte Folded Reload
	fld.s	$ft4, $sp, 20                   # 4-byte Folded Reload
	fld.s	$ft3, $sp, 24                   # 4-byte Folded Reload
	fld.s	$ft2, $sp, 28                   # 4-byte Folded Reload
	fld.s	$ft1, $sp, 32                   # 4-byte Folded Reload
	fld.s	$ft0, $sp, 36                   # 4-byte Folded Reload
	move	$a4, $s2
	move	$a1, $s5
	move	$a0, $s1
	move	$a3, $s3
	move	$a2, $s6
	move	$a5, $s4
	b	.LBB4_3
.LBB4_12:                               # %init.check.i140
	pcalau12i	$a0, %pc_hi20(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	move	$fp, $a5
	move	$s0, $a2
	fst.s	$ft0, $sp, 36                   # 4-byte Folded Spill
	fst.s	$ft1, $sp, 32                   # 4-byte Folded Spill
	fst.s	$ft2, $sp, 28                   # 4-byte Folded Spill
	fst.s	$ft3, $sp, 24                   # 4-byte Folded Spill
	fst.s	$ft4, $sp, 20                   # 4-byte Folded Spill
	fst.s	$ft5, $sp, 16                   # 4-byte Folded Spill
	fst.s	$ft6, $sp, 12                   # 4-byte Folded Spill
	fst.s	$ft7, $sp, 8                    # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	fld.s	$ft7, $sp, 8                    # 4-byte Folded Reload
	fld.s	$ft6, $sp, 12                   # 4-byte Folded Reload
	fld.s	$ft5, $sp, 16                   # 4-byte Folded Reload
	fld.s	$ft4, $sp, 20                   # 4-byte Folded Reload
	fld.s	$ft3, $sp, 24                   # 4-byte Folded Reload
	fld.s	$ft2, $sp, 28                   # 4-byte Folded Reload
	fld.s	$ft1, $sp, 32                   # 4-byte Folded Reload
	fld.s	$ft0, $sp, 36                   # 4-byte Folded Reload
	move	$a2, $s0
	move	$a5, $fp
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB4_6
# %bb.13:                               # %init.i142
	pcalau12i	$a0, %pc_hi20(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	fld.s	$ft7, $sp, 8                    # 4-byte Folded Reload
	fld.s	$ft6, $sp, 12                   # 4-byte Folded Reload
	fld.s	$ft5, $sp, 16                   # 4-byte Folded Reload
	fld.s	$ft4, $sp, 20                   # 4-byte Folded Reload
	fld.s	$ft3, $sp, 24                   # 4-byte Folded Reload
	fld.s	$ft2, $sp, 28                   # 4-byte Folded Reload
	fld.s	$ft1, $sp, 32                   # 4-byte Folded Reload
	fld.s	$ft0, $sp, 36                   # 4-byte Folded Reload
	move	$a2, $s0
	move	$a5, $fp
	b	.LBB4_6
.Lfunc_end4:
	.size	_Z20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_, .Lfunc_end4-_Z20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7ConvexHC2Eiii               # -- Begin function _ZN7ConvexHC2Eiii
	.p2align	2
	.type	_ZN7ConvexHC2Eiii,@function
_ZN7ConvexHC2Eiii:                      # @_ZN7ConvexHC2Eiii
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %invoke.cont3
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	st.b	$a0, $fp, 56
	st.d	$zero, $fp, 48
	st.d	$zero, $fp, 36
	st.b	$a0, $fp, 88
	st.d	$zero, $fp, 80
	st.d	$zero, $fp, 68
	blt	$a1, $a0, .LBB5_9
# %bb.1:                                # %if.then.i.i.i
	slli.d	$a0, $s2, 4
.Ltmp0:                                 # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:                                # %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
	move	$s3, $a0
	ld.w	$a1, $fp, 4
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB5_5
# %bb.3:                                # %for.body.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB5_4:                                # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 16
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $s3, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB5_4
.LBB5_5:                                # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB5_8
# %bb.6:                                # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_8
# %bb.7:                                # %if.then2.i.i.i
.Ltmp2:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
.LBB5_8:                                # %for.body10.lr.ph.i
	ori	$a1, $zero, 1
	ld.w	$a0, $fp, 36
	st.b	$a1, $fp, 24
	st.d	$s3, $fp, 16
	st.w	$s2, $fp, 8
	st.w	$s2, $fp, 4
	blt	$a0, $s1, .LBB5_10
	b	.LBB5_21
.LBB5_9:
	move	$a0, $zero
	st.w	$s2, $fp, 4
	bge	$a0, $s1, .LBB5_21
.LBB5_10:                               # %invoke.cont7
	ld.w	$a1, $fp, 40
	bge	$a1, $s1, .LBB5_21
# %bb.11:                               # %if.then.i.i27
	beqz	$s1, .LBB5_14
# %bb.12:                               # %if.then.i.i.i29
	slli.d	$a0, $s1, 2
.Ltmp5:                                 # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.13:                               # %call.i.i.i.i.noexc50
	move	$s2, $a0
	ld.w	$a0, $fp, 36
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB5_15
	b	.LBB5_17
.LBB5_14:
	move	$s2, $zero
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_17
.LBB5_15:                               # %for.body.lr.ph.i.i.i41
	move	$a1, $zero
	slli.d	$a0, $a0, 2
	.p2align	4, , 16
.LBB5_16:                               # %for.body.i.i.i44
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 48
	ldx.w	$a2, $a2, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bne	$a0, $a1, .LBB5_16
.LBB5_17:                               # %_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB5_20
# %bb.18:                               # %_ZNK20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE4copyEiiPS1_.exit.i.i
	ld.b	$a1, $fp, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_20
# %bb.19:                               # %if.then2.i.i.i40
.Ltmp7:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
.LBB5_20:                               # %_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 56
	st.d	$s2, $fp, 48
	st.w	$s1, $fp, 40
.LBB5_21:                               # %invoke.cont16
	ld.w	$s2, $fp, 68
	st.w	$s1, $fp, 36
	bge	$s2, $s0, .LBB5_40
# %bb.22:                               # %if.then5.i55
	ld.w	$a0, $fp, 72
	bge	$a0, $s0, .LBB5_26
# %bb.23:                               # %if.then.i.i66
	beqz	$s0, .LBB5_28
# %bb.24:                               # %if.then.i.i.i68
	slli.d	$a0, $s0, 4
	alsl.d	$a0, $s0, $a0, 2
.Ltmp10:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.25:                               # %call.i.i.i.i.noexc89
	move	$s1, $a0
	ld.w	$a1, $fp, 68
	ori	$a0, $zero, 1
	bge	$a1, $a0, .LBB5_29
	b	.LBB5_31
.LBB5_26:                               # %if.then5.i55.for.body10.lr.ph.i58_crit_edge
	ld.d	$s1, $fp, 80
	sub.d	$a1, $s0, $s2
	ori	$a0, $zero, 2
	bgeu	$a1, $a0, .LBB5_35
.LBB5_27:
	move	$a0, $s2
	b	.LBB5_38
.LBB5_28:
	move	$s1, $zero
	move	$a1, $s2
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB5_31
.LBB5_29:                               # %for.body.lr.ph.i.i.i80
	move	$a0, $zero
	slli.d	$a2, $a1, 4
	alsl.d	$a1, $a1, $a2, 2
	.p2align	4, , 16
.LBB5_30:                               # %for.body.i.i.i83
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 80
	vldx	$vr0, $a2, $a0
	add.d	$a2, $a2, $a0
	vstx	$vr0, $s1, $a0
	ld.w	$a2, $a2, 16
	add.d	$a3, $s1, $a0
	addi.d	$a0, $a0, 20
	st.w	$a2, $a3, 16
	bne	$a1, $a0, .LBB5_30
.LBB5_31:                               # %_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB5_34
# %bb.32:                               # %_ZNK20btAlignedObjectArrayI7btPlaneE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 88
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_34
# %bb.33:                               # %if.then2.i.i.i79
.Ltmp12:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
.LBB5_34:                               # %_ZN20btAlignedObjectArrayI7btPlaneE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 88
	st.d	$s1, $fp, 80
	st.w	$s0, $fp, 72
	sub.d	$a1, $s0, $s2
	ori	$a0, $zero, 2
	bltu	$a1, $a0, .LBB5_27
.LBB5_35:                               # %vector.ph
	move	$a2, $a1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$a0, $a2, $s2
	slli.d	$a3, $s2, 4
	alsl.d	$a3, $s2, $a3, 2
	add.d	$a3, $a3, $s1
	addi.d	$a3, $a3, 36
	move	$a4, $a2
	.p2align	4, , 16
.LBB5_36:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a3, -20
	st.w	$zero, $a3, 0
	addi.d	$a4, $a4, -2
	addi.d	$a3, $a3, 40
	bnez	$a4, .LBB5_36
# %bb.37:                               # %middle.block
	beq	$a1, $a2, .LBB5_40
.LBB5_38:                               # %for.body10.i61.preheader
	slli.d	$a1, $a0, 4
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a1, $a1, $s1
	addi.d	$a1, $a1, 16
	sub.d	$a0, $s0, $a0
	.p2align	4, , 16
.LBB5_39:                               # %for.body10.i61
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 20
	bnez	$a0, .LBB5_39
.LBB5_40:                               # %invoke.cont17
	st.w	$s0, $fp, 68
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB5_41:                               # %lpad15
.Ltmp14:                                # EH_LABEL
	b	.LBB5_44
.LBB5_42:                               # %lpad10
.Ltmp9:                                 # EH_LABEL
	b	.LBB5_44
.LBB5_43:                               # %lpad5
.Ltmp4:                                 # EH_LABEL
.LBB5_44:                               # %ehcleanup
	move	$s0, $a0
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI7btPlaneED2Ev)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.45:                               # %ehcleanup19
.Ltmp17:                                # EH_LABEL
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEED2Ev)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.46:                               # %ehcleanup21
.Ltmp19:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI9btVector3ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.47:                               # %eh.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_48:                               # %terminate.lpad
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN7ConvexHC2Eiii, .Lfunc_end5-_ZN7ConvexHC2Eiii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp13-.Ltmp10                #   Call between .Ltmp10 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp20-.Ltmp15                #   Call between .Ltmp15 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Lfunc_end5-.Ltmp20            #   Call between .Ltmp20 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI7btPlaneED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI7btPlaneED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI7btPlaneED2Ev # -- Begin function _ZN20btAlignedObjectArrayI7btPlaneED2Ev
	.p2align	2
	.type	_ZN20btAlignedObjectArrayI7btPlaneED2Ev,@function
_ZN20btAlignedObjectArrayI7btPlaneED2Ev: # @_ZN20btAlignedObjectArrayI7btPlaneED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB6_3
# %bb.1:                                # %entry
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_3
# %bb.2:                                # %if.then2.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB6_3:                                # %_ZN20btAlignedObjectArrayI7btPlaneE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	_ZN20btAlignedObjectArrayI7btPlaneED2Ev, .Lfunc_end6-_ZN20btAlignedObjectArrayI7btPlaneED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	__clang_call_terminate, .Lfunc_end7-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEED2Ev # -- Begin function _ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEED2Ev
	.p2align	2
	.type	_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEED2Ev,@function
_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEED2Ev: # @_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB8_3
# %bb.1:                                # %entry
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB8_3
# %bb.2:                                # %if.then2.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB8_3:                                # %_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEED2Ev, .Lfunc_end8-_ZN20btAlignedObjectArrayIN7ConvexH8HalfEdgeEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI9btVector3ED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI9btVector3ED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI9btVector3ED2Ev # -- Begin function _ZN20btAlignedObjectArrayI9btVector3ED2Ev
	.p2align	2
	.type	_ZN20btAlignedObjectArrayI9btVector3ED2Ev,@function
_ZN20btAlignedObjectArrayI9btVector3ED2Ev: # @_ZN20btAlignedObjectArrayI9btVector3ED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB9_3
# %bb.1:                                # %entry
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB9_3
# %bb.2:                                # %if.then2.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB9_3:                                # %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	_ZN20btAlignedObjectArrayI9btVector3ED2Ev, .Lfunc_end9-_ZN20btAlignedObjectArrayI9btVector3ED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z9PlaneTestRK7btPlaneRK9btVector3 # -- Begin function _Z9PlaneTestRK7btPlaneRK9btVector3
	.p2align	5
	.type	_Z9PlaneTestRK7btPlaneRK9btVector3,@function
_Z9PlaneTestRK7btPlaneRK9btVector3:     # @_Z9PlaneTestRK7btPlaneRK9btVector3
# %bb.0:                                # %entry
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a1, 0
	fld.s	$fa3, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a1, 8
	fld.s	$fa4, $a0, 8
	fld.s	$fa5, $a0, 16
	pcalau12i	$a0, %pc_hi20(planetestepsilon)
	fld.s	$fa6, $a0, %pc_lo12(planetestepsilon)
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	fadd.s	$fa0, $fa0, $fa5
	fcmp.clt.s	$fcc0, $fa6, $fa0
	fneg.s	$fa1, $fa6
	fcmp.clt.s	$fcc1, $fa0, $fa1
	movcf2gr	$a0, $fcc1
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 2
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end10:
	.size	_Z9PlaneTestRK7btPlaneRK9btVector3, .Lfunc_end10-_Z9PlaneTestRK7btPlaneRK9btVector3
                                        # -- End function
	.globl	_Z9SplitTestR7ConvexHRK7btPlane # -- Begin function _Z9SplitTestR7ConvexHRK7btPlane
	.p2align	5
	.type	_Z9SplitTestR7ConvexHRK7btPlane,@function
_Z9SplitTestR7ConvexHRK7btPlane:        # @_Z9SplitTestR7ConvexHRK7btPlane
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 4
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB11_3
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a0, $a0, 16
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a1, 8
	pcalau12i	$a3, %pc_hi20(planetestepsilon)
	fld.s	$fa3, $a3, %pc_lo12(planetestepsilon)
	fld.s	$fa4, $a1, 16
	ori	$a1, $zero, 8
	fneg.s	$fa5, $fa3
	bgeu	$a2, $a1, .LBB11_4
# %bb.2:
	move	$a1, $zero
	move	$a3, $zero
	b	.LBB11_7
.LBB11_3:
	move	$a3, $zero
	addi.w	$a0, $a3, 0
	ret
.LBB11_4:                               # %vector.ph
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a1, $a1, 3
	vreplvei.w	$vr6, $vr0, 0
	vreplvei.w	$vr7, $vr1, 0
	vreplvei.w	$vr8, $vr2, 0
	vreplvei.w	$vr9, $vr4, 0
	vreplvei.w	$vr10, $vr3, 0
	vreplvei.w	$vr11, $vr5, 0
	addi.d	$a3, $a0, 64
	vrepli.b	$vr12, 0
	vrepli.w	$vr13, 1
	vrepli.w	$vr14, 2
	move	$a4, $a1
	vori.b	$vr15, $vr12, 0
	.p2align	4, , 16
.LBB11_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$ft8, $a3, -64
	fld.s	$ft9, $a3, -48
	fld.s	$ft10, $a3, -32
	fld.s	$ft11, $a3, -16
	vextrins.w	$vr16, $vr17, 16
	vextrins.w	$vr16, $vr18, 32
	fld.s	$ft9, $a3, 0
	fld.s	$ft10, $a3, 16
	fld.s	$ft12, $a3, 32
	vextrins.w	$vr16, $vr19, 48
	fld.s	$ft11, $a3, 48
	vextrins.w	$vr17, $vr18, 16
	vextrins.w	$vr17, $vr20, 32
	fld.s	$ft10, $a3, -60
	fld.s	$ft12, $a3, -44
	fld.s	$ft13, $a3, -28
	vextrins.w	$vr17, $vr19, 48
	fld.s	$ft11, $a3, -12
	vextrins.w	$vr18, $vr20, 16
	vextrins.w	$vr18, $vr21, 32
	fld.s	$ft12, $a3, 4
	fld.s	$ft13, $a3, 20
	fld.s	$ft14, $a3, 36
	fld.s	$ft15, $a3, 52
	vextrins.w	$vr18, $vr19, 48
	vextrins.w	$vr20, $vr21, 16
	vextrins.w	$vr20, $vr22, 32
	vextrins.w	$vr20, $vr23, 48
	vfmul.s	$vr18, $vr18, $vr7
	vfmul.s	$vr19, $vr20, $vr7
	vfmadd.s	$vr16, $vr16, $vr6, $vr18
	fld.s	$ft10, $a3, -56
	fld.s	$ft12, $a3, -40
	fld.s	$ft13, $a3, -24
	vfmadd.s	$vr17, $vr17, $vr6, $vr19
	fld.s	$ft11, $a3, -8
	vextrins.w	$vr18, $vr20, 16
	vextrins.w	$vr18, $vr21, 32
	fld.s	$ft12, $a3, 8
	fld.s	$ft13, $a3, 24
	fld.s	$ft14, $a3, 40
	fld.s	$ft15, $a3, 56
	vextrins.w	$vr18, $vr19, 48
	vextrins.w	$vr20, $vr21, 16
	vextrins.w	$vr20, $vr22, 32
	vextrins.w	$vr20, $vr23, 48
	vfmadd.s	$vr16, $vr18, $vr8, $vr16
	vfmadd.s	$vr17, $vr20, $vr8, $vr17
	vfadd.s	$vr16, $vr16, $vr9
	vfadd.s	$vr17, $vr17, $vr9
	vfcmp.clt.s	$vr18, $vr10, $vr16
	vfcmp.clt.s	$vr19, $vr10, $vr17
	vfcmp.clt.s	$vr16, $vr16, $vr11
	vand.v	$vr16, $vr16, $vr13
	vfcmp.clt.s	$vr17, $vr17, $vr11
	vand.v	$vr17, $vr17, $vr13
	vbitsel.v	$vr16, $vr16, $vr14, $vr18
	vbitsel.v	$vr17, $vr17, $vr14, $vr19
	vor.v	$vr12, $vr16, $vr12
	vor.v	$vr15, $vr17, $vr15
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 128
	bnez	$a4, .LBB11_5
# %bb.6:                                # %middle.block
	vor.v	$vr6, $vr15, $vr12
	vshuf4i.w	$vr7, $vr6, 14
	vor.v	$vr6, $vr6, $vr7
	vreplvei.w	$vr7, $vr6, 1
	vor.v	$vr6, $vr6, $vr7
	vpickve2gr.w	$a3, $vr6, 0
	beq	$a1, $a2, .LBB11_9
.LBB11_7:                               # %for.body.preheader
	alsl.d	$a0, $a1, $a0, 4
	addi.d	$a0, $a0, 8
	sub.d	$a1, $a2, $a1
	ori	$a2, $zero, 2
	.p2align	4, , 16
.LBB11_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa6, $a0, -4
	fld.s	$fa7, $a0, -8
	fld.s	$ft0, $a0, 0
	fmul.s	$fa6, $fa6, $fa1
	fmadd.s	$fa6, $fa7, $fa0, $fa6
	fmadd.s	$fa6, $ft0, $fa2, $fa6
	fadd.s	$fa6, $fa6, $fa4
	fcmp.clt.s	$fcc0, $fa3, $fa6
	fcmp.clt.s	$fcc1, $fa6, $fa5
	movcf2gr	$a4, $fcc1
	movcf2gr	$a5, $fcc0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a2, $a5
	or	$a4, $a5, $a4
	or	$a3, $a4, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB11_8
.LBB11_9:                               # %for.cond.cleanup
	addi.w	$a0, $a3, 0
	ret
.Lfunc_end11:
	.size	_Z9SplitTestR7ConvexHRK7btPlane, .Lfunc_end11-_Z9SplitTestR7ConvexHRK7btPlane
                                        # -- End function
	.globl	_Z4orthRK9btVector3             # -- Begin function _Z4orthRK9btVector3
	.p2align	5
	.type	_Z4orthRK9btVector3,@function
_Z4orthRK9btVector3:                    # @_Z4orthRK9btVector3
# %bb.0:                                # %entry
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a0, 8
	movgr2fr.w	$fa2, $zero
	fld.s	$fa3, $a0, 0
	fneg.s	$fa4, $fa2
	fmul.s	$fa5, $fa1, $fa4
	fadd.s	$fa5, $fa0, $fa5
	fmsub.s	$fa6, $fa1, $fa2, $fa3
	fmul.s	$fa7, $fa0, $fa4
	fmadd.s	$ft0, $fa3, $fa2, $fa7
	fmsub.s	$fa0, $fa0, $fa2, $fa1
	fmul.s	$fa4, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa2, $fa4
	fadd.s	$fa2, $fa7, $fa3
	fmul.s	$fa3, $fa6, $fa6
	fmadd.s	$fa3, $fa5, $fa5, $fa3
	fmadd.s	$fa3, $ft0, $ft0, $fa3
	fsqrt.s	$fa3, $fa3
	fmul.s	$fa4, $fa1, $fa1
	fmadd.s	$fa4, $fa0, $fa0, $fa4
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fsqrt.s	$fa4, $fa4
	fcmp.clt.s	$fcc0, $fa4, $fa3
	fsel	$fa3, $fa4, $fa3, $fcc0
	fsel	$fa0, $fa0, $fa5, $fcc0
	fsel	$fa1, $fa1, $fa6, $fcc0
	fsel	$fa2, $fa2, $ft0, $fcc0
	frecip.s	$fa3, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ret
.Lfunc_end12:
	.size	_Z4orthRK9btVector3, .Lfunc_end12-_Z4orthRK9btVector3
                                        # -- End function
	.globl	_ZeqRK4int3S1_                  # -- Begin function _ZeqRK4int3S1_
	.p2align	5
	.type	_ZeqRK4int3S1_,@function
_ZeqRK4int3S1_:                         # @_ZeqRK4int3S1_
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a1, 0
	bne	$a2, $a3, .LBB13_3
# %bb.1:                                # %for.cond
	ld.w	$a2, $a0, 4
	ld.w	$a3, $a1, 4
	bne	$a2, $a3, .LBB13_3
# %bb.2:                                # %for.cond.1
	ld.w	$a0, $a0, 8
	ld.w	$a1, $a1, 8
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ret
.LBB13_3:
	move	$a0, $zero
	ret
.Lfunc_end13:
	.size	_ZeqRK4int3S1_, .Lfunc_end13-_ZeqRK4int3S1_
                                        # -- End function
	.globl	_Z5aboveP9btVector3RK4int3RKS_f # -- Begin function _Z5aboveP9btVector3RK4int3RKS_f
	.p2align	5
	.type	_Z5aboveP9btVector3RK4int3RKS_f,@function
_Z5aboveP9btVector3RK4int3RKS_f:        # @_Z5aboveP9btVector3RK4int3RKS_f
# %bb.0:                                # %entry
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a1, 4
	alsl.d	$a5, $a3, $a0, 4
	slli.d	$a3, $a3, 4
	slli.d	$a6, $a4, 4
	ld.w	$a1, $a1, 8
	fldx.s	$fa4, $a0, $a6
	fldx.s	$fa1, $a0, $a3
	alsl.d	$a3, $a4, $a0, 4
	alsl.d	$a4, $a1, $a0, 4
	slli.d	$a1, $a1, 4
	fsub.s	$fa7, $fa4, $fa1
	fld.s	$fa5, $a3, 4
	fld.s	$fa2, $a5, 4
	fldx.s	$fa6, $a0, $a1
	fld.s	$ft0, $a3, 8
	fld.s	$fa3, $a5, 8
	fld.s	$ft1, $a4, 4
	fsub.s	$fa4, $fa6, $fa4
	fld.s	$fa6, $a4, 8
	fsub.s	$ft2, $fa5, $fa2
	fsub.s	$ft1, $ft1, $fa5
	fsub.s	$ft3, $ft0, $fa3
	fsub.s	$fa6, $fa6, $ft0
	fneg.s	$fa5, $ft1
	fmul.s	$fa5, $ft3, $fa5
	fmadd.s	$fa5, $ft2, $fa6, $fa5
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $fa7, $fa6
	fmadd.s	$fa6, $ft3, $fa4, $fa6
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $ft2, $fa4
	fmadd.s	$fa7, $fa7, $ft1, $fa4
	fmul.s	$fa4, $fa6, $fa6
	fmadd.s	$fa4, $fa5, $fa5, $fa4
	fmadd.s	$ft0, $fa7, $fa7, $fa4
	movgr2fr.w	$fa4, $zero
	fcmp.ceq.s	$fcc0, $ft0, $fa4
	bceqz	$fcc0, .LBB14_2
# %bb.1:
	lu12i.w	$a0, 260096
	b	.LBB14_3
.LBB14_2:                               # %if.end.i
	frsqrt.s	$fa4, $ft0
	fmul.s	$fa5, $fa5, $fa4
	fmul.s	$fa6, $fa6, $fa4
	fmul.s	$fa4, $fa7, $fa4
	movfr2gr.s	$a0, $fa5
	movfr2gr.s	$a1, $fa6
	bstrins.d	$a0, $a1, 63, 32
.LBB14_3:                               # %_Z9TriNormalRK9btVector3S1_S1_.exit
	movgr2fr.w	$fa5, $a0
	srli.d	$a0, $a0, 32
	fld.s	$fa6, $a2, 0
	fld.s	$fa7, $a2, 4
	fld.s	$ft0, $a2, 8
	movgr2fr.w	$ft1, $a0
	fsub.s	$fa1, $fa6, $fa1
	fsub.s	$fa2, $fa7, $fa2
	fsub.s	$fa3, $ft0, $fa3
	fmul.s	$fa2, $fa2, $ft1
	fmadd.s	$fa1, $fa5, $fa1, $fa2
	fmadd.s	$fa1, $fa4, $fa3, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	ret
.Lfunc_end14:
	.size	_Z5aboveP9btVector3RK4int3RKS_f, .Lfunc_end14-_Z5aboveP9btVector3RK4int3RKS_f
                                        # -- End function
	.globl	_Z7hasedgeRK4int3ii             # -- Begin function _Z7hasedgeRK4int3ii
	.p2align	5
	.type	_Z7hasedgeRK4int3ii,@function
_Z7hasedgeRK4int3ii:                    # @_Z7hasedgeRK4int3ii
# %bb.0:                                # %entry
	move	$a3, $a0
	ld.w	$a4, $a0, 0
	ld.w	$a5, $a0, 4
	ori	$a0, $zero, 1
	bne	$a4, $a1, .LBB15_3
# %bb.1:                                # %entry
	bne	$a5, $a2, .LBB15_3
.LBB15_2:                               # %cleanup4
	ret
.LBB15_3:                               # %if.end
	ld.w	$a3, $a3, 8
	bne	$a5, $a1, .LBB15_5
# %bb.4:                                # %if.end
	beq	$a3, $a2, .LBB15_2
.LBB15_5:                               # %if.end.1
	xor	$a0, $a3, $a1
	sltui	$a0, $a0, 1
	xor	$a1, $a4, $a2
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	ret
.Lfunc_end15:
	.size	_Z7hasedgeRK4int3ii, .Lfunc_end15-_Z7hasedgeRK4int3ii
                                        # -- End function
	.globl	_Z7hasvertRK4int3i              # -- Begin function _Z7hasvertRK4int3i
	.p2align	5
	.type	_Z7hasvertRK4int3i,@function
_Z7hasvertRK4int3i:                     # @_Z7hasvertRK4int3i
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 4
	xor	$a2, $a2, $a1
	sltui	$a2, $a2, 1
	ld.w	$a0, $a0, 8
	xor	$a3, $a3, $a1
	sltui	$a3, $a3, 1
	or	$a2, $a2, $a3
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	or	$a0, $a2, $a0
	ret
.Lfunc_end16:
	.size	_Z7hasvertRK4int3i, .Lfunc_end16-_Z7hasvertRK4int3i
                                        # -- End function
	.globl	_Z9shareedgeRK4int3S1_          # -- Begin function _Z9shareedgeRK4int3S1_
	.p2align	5
	.type	_Z9shareedgeRK4int3S1_,@function
_Z9shareedgeRK4int3S1_:                 # @_Z9shareedgeRK4int3S1_
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 0
	ld.w	$a5, $a0, 4
	ld.w	$a3, $a0, 8
	ld.w	$a6, $a1, 4
	ld.w	$a4, $a1, 0
	ori	$a0, $zero, 1
	bne	$a2, $a6, .LBB17_3
# %bb.1:                                # %entry
	bne	$a5, $a4, .LBB17_3
.LBB17_2:                               # %cleanup3
	ret
.LBB17_3:                               # %if.end.i
	bne	$a5, $a6, .LBB17_5
# %bb.4:                                # %if.end.i
	beq	$a3, $a4, .LBB17_2
.LBB17_5:                               # %_Z7hasedgeRK4int3ii.exit
	bne	$a2, $a4, .LBB17_7
# %bb.6:                                # %_Z7hasedgeRK4int3ii.exit
	beq	$a3, $a6, .LBB17_2
.LBB17_7:                               # %for.cond.1
	ld.w	$a1, $a1, 8
	bne	$a2, $a1, .LBB17_9
# %bb.8:                                # %for.cond.1
	beq	$a5, $a6, .LBB17_2
.LBB17_9:                               # %if.end.i.1
	bne	$a5, $a1, .LBB17_11
# %bb.10:                               # %if.end.i.1
	beq	$a3, $a6, .LBB17_2
.LBB17_11:                              # %_Z7hasedgeRK4int3ii.exit.1
	xor	$a7, $a3, $a1
	sltui	$a7, $a7, 1
	xor	$a6, $a2, $a6
	sltui	$a6, $a6, 1
	and	$a6, $a6, $a7
	bnez	$a6, .LBB17_2
# %bb.12:                               # %_Z7hasedgeRK4int3ii.exit.1
	xor	$a6, $a5, $a1
	sltui	$a6, $a6, 1
	xor	$t0, $a2, $a4
	sltui	$t0, $t0, 1
	and	$a6, $t0, $a6
	bnez	$a6, .LBB17_2
# %bb.13:                               # %_Z7hasedgeRK4int3ii.exit.1
	xor	$a5, $a5, $a4
	sltui	$a5, $a5, 1
	and	$a5, $a5, $a7
	bnez	$a5, .LBB17_2
# %bb.14:                               # %_Z7hasedgeRK4int3ii.exit.2
	xor	$a0, $a3, $a4
	sltui	$a0, $a0, 1
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	and	$a0, $a1, $a0
	ret
.Lfunc_end17:
	.size	_Z9shareedgeRK4int3S1_, .Lfunc_end17-_Z9shareedgeRK4int3S1_
                                        # -- End function
	.globl	_ZN14btHullTriangle4neibEii     # -- Begin function _ZN14btHullTriangle4neibEii
	.p2align	2
	.type	_ZN14btHullTriangle4neibEii,@function
_ZN14btHullTriangle4neibEii:            # @_ZN14btHullTriangle4neibEii
# %bb.0:                                # %entry
	ld.w	$a4, $a0, 0
	bne	$a4, $a1, .LBB18_3
# %bb.1:                                # %entry
	ld.w	$a5, $a0, 4
	ori	$a3, $zero, 2
	bne	$a5, $a2, .LBB18_3
.LBB18_2:                               # %if.then
	alsl.d	$a0, $a3, $a0, 2
	addi.d	$a0, $a0, 12
	ret
.LBB18_3:                               # %if.end
	ld.w	$a3, $a0, 4
	bne	$a4, $a2, .LBB18_6
# %bb.4:                                # %if.end
	ori	$a5, $zero, 2
	bne	$a3, $a1, .LBB18_6
.LBB18_5:                               # %if.then13
	alsl.d	$a0, $a5, $a0, 2
	addi.d	$a0, $a0, 12
	ret
.LBB18_6:                               # %cleanup
	bne	$a3, $a1, .LBB18_9
# %bb.7:                                # %cleanup
	ld.w	$a5, $a0, 8
	bne	$a5, $a2, .LBB18_9
# %bb.8:
	move	$a3, $zero
	alsl.d	$a0, $a3, $a0, 2
	addi.d	$a0, $a0, 12
	ret
.LBB18_9:                               # %if.end.1
	ld.w	$a5, $a0, 8
	bne	$a3, $a2, .LBB18_12
# %bb.10:                               # %if.end.1
	bne	$a5, $a1, .LBB18_12
# %bb.11:
	move	$a5, $zero
	alsl.d	$a0, $a5, $a0, 2
	addi.d	$a0, $a0, 12
	ret
.LBB18_12:                              # %cleanup.1
	bne	$a5, $a1, .LBB18_14
# %bb.13:                               # %cleanup.1
	ori	$a3, $zero, 1
	beq	$a4, $a2, .LBB18_2
.LBB18_14:                              # %if.end.2
	pcalau12i	$a3, %pc_hi20(_ZZN14btHullTriangle4neibEiiE2er)
	addi.d	$a3, $a3, %pc_lo12(_ZZN14btHullTriangle4neibEiiE2er)
	bne	$a5, $a2, .LBB18_16
# %bb.15:                               # %if.end.2
	ori	$a5, $zero, 1
	beq	$a4, $a1, .LBB18_5
.LBB18_16:                              # %cleanup18
	move	$a0, $a3
	ret
.Lfunc_end18:
	.size	_ZN14btHullTriangle4neibEii, .Lfunc_end18-_ZN14btHullTriangle4neibEii
                                        # -- End function
	.globl	_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_ # -- Begin function _ZN11HullLibrary6b2bfixEP14btHullTriangleS1_
	.p2align	2
	.type	_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_,@function
_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_: # @_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 16
	addi.d	$a3, $a2, 12
	addi.d	$a4, $a1, 12
	addi.w	$a6, $zero, -3
	ori	$a5, $zero, 0
	lu32i.d	$a5, 1
	.p2align	4, , 16
.LBB19_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a7, $a6, 4
	addi.w	$t0, $a6, 0
	addi.d	$t1, $t0, 1
	sltui	$t1, $t1, 1
	masknez	$a7, $a7, $t1
	addi.w	$t1, $a6, 2
	addi.d	$t0, $t0, 3
	sltui	$t0, $t0, 1
	masknez	$t1, $t1, $t0
	ori	$t3, $zero, 2
	maskeqz	$t0, $t3, $t0
	or	$t1, $t0, $t1
	slli.d	$a7, $a7, 2
	ldx.w	$t0, $a1, $a7
	slli.d	$a7, $t1, 2
	ldx.w	$a7, $a1, $a7
	ld.w	$t1, $a2, 0
	ld.w	$t4, $a2, 4
	bne	$t1, $a7, .LBB19_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t4, $t0, .LBB19_4
.LBB19_3:                               # %if.then.i
                                        #   in Loop: Header=BB19_1 Depth=1
	alsl.d	$t3, $t3, $a3, 2
	b	.LBB19_12
	.p2align	4, , 16
.LBB19_4:                               # %if.end.i
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t1, $t0, .LBB19_7
# %bb.5:                                # %if.end.i
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t5, $zero, 2
	bne	$t4, $a7, .LBB19_7
.LBB19_6:                               # %if.then13.i
                                        #   in Loop: Header=BB19_1 Depth=1
	alsl.d	$t3, $t5, $a3, 2
	b	.LBB19_12
	.p2align	4, , 16
.LBB19_7:                               # %cleanup.i
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$t2, $a2, 8
	bne	$t4, $a7, .LBB19_9
# %bb.8:                                # %cleanup.i
                                        #   in Loop: Header=BB19_1 Depth=1
	beq	$t2, $t0, .LBB19_11
.LBB19_9:                               # %if.end.1.i
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t4, $t0, .LBB19_63
# %bb.10:                               # %if.end.1.i
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t2, $a7, .LBB19_63
.LBB19_11:                              #   in Loop: Header=BB19_1 Depth=1
	alsl.d	$t3, $zero, $a3, 2
	.p2align	4, , 16
.LBB19_12:                              # %_ZN14btHullTriangle4neibEii.exit
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$t1, $t3, 0
	ld.w	$t2, $a1, 0
	ld.w	$t4, $a1, 4
	bne	$t2, $t0, .LBB19_14
# %bb.13:                               # %_ZN14btHullTriangle4neibEii.exit
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t5, $zero, 2
	beq	$t4, $a7, .LBB19_16
.LBB19_14:                              # %if.end.i24
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t2, $a7, .LBB19_48
# %bb.15:                               # %if.end.i24
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t5, $zero, 2
	bne	$t4, $t0, .LBB19_48
.LBB19_16:                              # %if.then.i50
                                        #   in Loop: Header=BB19_1 Depth=1
	alsl.d	$t4, $t5, $a4, 2
.LBB19_17:                              # %_ZN14btHullTriangle4neibEii.exit54
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$t2, $t4, 0
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	ld.w	$t3, $t2, 0
	ld.w	$t5, $t2, 4
	bne	$t3, $a7, .LBB19_19
# %bb.18:                               # %_ZN14btHullTriangle4neibEii.exit54
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t6, $zero, 2
	beq	$t5, $t0, .LBB19_26
.LBB19_19:                              # %if.end.i61
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t3, $t0, .LBB19_21
# %bb.20:                               # %if.end.i61
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t6, $zero, 2
	beq	$t5, $a7, .LBB19_26
.LBB19_21:                              # %cleanup.i66
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$t4, $t2, 8
	bne	$t5, $a7, .LBB19_23
# %bb.22:                               # %cleanup.i66
                                        #   in Loop: Header=BB19_1 Depth=1
	beq	$t4, $t0, .LBB19_25
.LBB19_23:                              # %if.end.1.i71
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t5, $t0, .LBB19_67
# %bb.24:                               # %if.end.1.i71
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t4, $a7, .LBB19_67
.LBB19_25:                              #   in Loop: Header=BB19_1 Depth=1
	move	$t6, $zero
	.p2align	4, , 16
.LBB19_26:                              # %if.then.i87
                                        #   in Loop: Header=BB19_1 Depth=1
	alsl.d	$t2, $t6, $t2, 2
	addi.d	$t5, $t2, 12
.LBB19_27:                              # %_ZN14btHullTriangle4neibEii.exit91
                                        #   in Loop: Header=BB19_1 Depth=1
	st.w	$t1, $t5, 0
	ld.w	$t1, $a1, 0
	ld.w	$t3, $a1, 4
	bne	$t1, $t0, .LBB19_29
# %bb.28:                               # %_ZN14btHullTriangle4neibEii.exit91
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t4, $zero, 2
	beq	$t3, $a7, .LBB19_31
.LBB19_29:                              # %if.end.i96
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t1, $a7, .LBB19_53
# %bb.30:                               # %if.end.i96
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t4, $zero, 2
	bne	$t3, $t0, .LBB19_53
.LBB19_31:                              # %if.then.i122
                                        #   in Loop: Header=BB19_1 Depth=1
	alsl.d	$t3, $t4, $a4, 2
.LBB19_32:                              # %_ZN14btHullTriangle4neibEii.exit126
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$t1, $t3, 0
	ld.w	$t2, $a2, 0
	ld.w	$t4, $a2, 4
	bne	$t2, $a7, .LBB19_34
# %bb.33:                               # %_ZN14btHullTriangle4neibEii.exit126
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t5, $zero, 2
	beq	$t4, $t0, .LBB19_36
.LBB19_34:                              # %if.end.i131
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t2, $t0, .LBB19_58
# %bb.35:                               # %if.end.i131
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t5, $zero, 2
	bne	$t4, $a7, .LBB19_58
.LBB19_36:                              # %if.then.i157
                                        #   in Loop: Header=BB19_1 Depth=1
	alsl.d	$t4, $t5, $a3, 2
.LBB19_37:                              # %_ZN14btHullTriangle4neibEii.exit161
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$t2, $t4, 0
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	ld.w	$t3, $t2, 0
	ld.w	$t5, $t2, 4
	bne	$t3, $t0, .LBB19_39
# %bb.38:                               # %_ZN14btHullTriangle4neibEii.exit161
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t6, $zero, 2
	beq	$t5, $a7, .LBB19_46
.LBB19_39:                              # %if.end.i169
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t3, $a7, .LBB19_41
# %bb.40:                               # %if.end.i169
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t6, $zero, 2
	beq	$t5, $t0, .LBB19_46
.LBB19_41:                              # %cleanup.i174
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$t4, $t2, 8
	bne	$t5, $t0, .LBB19_43
# %bb.42:                               # %cleanup.i174
                                        #   in Loop: Header=BB19_1 Depth=1
	beq	$t4, $a7, .LBB19_45
.LBB19_43:                              # %if.end.1.i179
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t5, $a7, .LBB19_71
# %bb.44:                               # %if.end.1.i179
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t4, $t0, .LBB19_71
.LBB19_45:                              #   in Loop: Header=BB19_1 Depth=1
	move	$t6, $zero
	.p2align	4, , 16
.LBB19_46:                              # %if.then.i195
                                        #   in Loop: Header=BB19_1 Depth=1
	alsl.d	$a7, $t6, $t2, 2
	addi.d	$t5, $a7, 12
.LBB19_47:                              # %_ZN14btHullTriangle4neibEii.exit199
                                        #   in Loop: Header=BB19_1 Depth=1
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$a6, $a6, 1
	and	$a7, $a6, $a5
	st.w	$t1, $t5, 0
	beqz	$a7, .LBB19_1
	b	.LBB19_87
	.p2align	4, , 16
.LBB19_48:                              # %cleanup.i29
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$t3, $a1, 8
	bne	$t4, $t0, .LBB19_50
# %bb.49:                               # %cleanup.i29
                                        #   in Loop: Header=BB19_1 Depth=1
	beq	$t3, $a7, .LBB19_52
.LBB19_50:                              # %if.end.1.i34
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t4, $a7, .LBB19_75
# %bb.51:                               # %if.end.1.i34
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t3, $t0, .LBB19_75
.LBB19_52:                              #   in Loop: Header=BB19_1 Depth=1
	alsl.d	$t4, $zero, $a4, 2
	b	.LBB19_17
	.p2align	4, , 16
.LBB19_53:                              # %cleanup.i101
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$t2, $a1, 8
	bne	$t3, $t0, .LBB19_55
# %bb.54:                               # %cleanup.i101
                                        #   in Loop: Header=BB19_1 Depth=1
	beq	$t2, $a7, .LBB19_57
.LBB19_55:                              # %if.end.1.i106
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t3, $a7, .LBB19_79
# %bb.56:                               # %if.end.1.i106
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t2, $t0, .LBB19_79
.LBB19_57:                              #   in Loop: Header=BB19_1 Depth=1
	alsl.d	$t3, $zero, $a4, 2
	b	.LBB19_32
	.p2align	4, , 16
.LBB19_58:                              # %cleanup.i136
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$t3, $a2, 8
	bne	$t4, $a7, .LBB19_60
# %bb.59:                               # %cleanup.i136
                                        #   in Loop: Header=BB19_1 Depth=1
	beq	$t3, $t0, .LBB19_62
.LBB19_60:                              # %if.end.1.i141
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t4, $t0, .LBB19_83
# %bb.61:                               # %if.end.1.i141
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t3, $a7, .LBB19_83
.LBB19_62:                              #   in Loop: Header=BB19_1 Depth=1
	alsl.d	$t4, $zero, $a3, 2
	b	.LBB19_37
.LBB19_63:                              # %cleanup.1.i
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t1, $t0, .LBB19_65
# %bb.64:                               # %cleanup.1.i
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t3, $zero, 1
	beq	$t2, $a7, .LBB19_3
.LBB19_65:                              # %if.end.2.i
                                        #   in Loop: Header=BB19_1 Depth=1
	pcalau12i	$t3, %pc_hi20(_ZZN14btHullTriangle4neibEiiE2er)
	addi.d	$t3, $t3, %pc_lo12(_ZZN14btHullTriangle4neibEiiE2er)
	bne	$t1, $a7, .LBB19_12
# %bb.66:                               # %if.end.2.i
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t5, $zero, 1
	beq	$t2, $t0, .LBB19_6
	b	.LBB19_12
.LBB19_67:                              # %cleanup.1.i76
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t3, $t0, .LBB19_69
# %bb.68:                               # %cleanup.1.i76
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t6, $zero, 1
	beq	$t4, $a7, .LBB19_26
.LBB19_69:                              # %if.end.2.i79
                                        #   in Loop: Header=BB19_1 Depth=1
	pcalau12i	$t5, %pc_hi20(_ZZN14btHullTriangle4neibEiiE2er)
	addi.d	$t5, $t5, %pc_lo12(_ZZN14btHullTriangle4neibEiiE2er)
	bne	$t3, $a7, .LBB19_27
# %bb.70:                               # %if.end.2.i79
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t6, $zero, 1
	beq	$t4, $t0, .LBB19_26
	b	.LBB19_27
.LBB19_71:                              # %cleanup.1.i184
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t3, $a7, .LBB19_73
# %bb.72:                               # %cleanup.1.i184
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t6, $zero, 1
	beq	$t4, $t0, .LBB19_46
.LBB19_73:                              # %if.end.2.i187
                                        #   in Loop: Header=BB19_1 Depth=1
	pcalau12i	$t5, %pc_hi20(_ZZN14btHullTriangle4neibEiiE2er)
	addi.d	$t5, $t5, %pc_lo12(_ZZN14btHullTriangle4neibEiiE2er)
	bne	$t3, $t0, .LBB19_47
# %bb.74:                               # %if.end.2.i187
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t6, $zero, 1
	beq	$t4, $a7, .LBB19_46
	b	.LBB19_47
.LBB19_75:                              # %cleanup.1.i39
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t2, $a7, .LBB19_77
# %bb.76:                               # %cleanup.1.i39
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t5, $zero, 1
	beq	$t3, $t0, .LBB19_16
.LBB19_77:                              # %if.end.2.i42
                                        #   in Loop: Header=BB19_1 Depth=1
	pcalau12i	$t4, %pc_hi20(_ZZN14btHullTriangle4neibEiiE2er)
	addi.d	$t4, $t4, %pc_lo12(_ZZN14btHullTriangle4neibEiiE2er)
	bne	$t2, $t0, .LBB19_17
# %bb.78:                               # %if.end.2.i42
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t5, $zero, 1
	beq	$t3, $a7, .LBB19_16
	b	.LBB19_17
.LBB19_79:                              # %cleanup.1.i111
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t1, $a7, .LBB19_81
# %bb.80:                               # %cleanup.1.i111
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t4, $zero, 1
	beq	$t2, $t0, .LBB19_31
.LBB19_81:                              # %if.end.2.i114
                                        #   in Loop: Header=BB19_1 Depth=1
	pcalau12i	$t3, %pc_hi20(_ZZN14btHullTriangle4neibEiiE2er)
	addi.d	$t3, $t3, %pc_lo12(_ZZN14btHullTriangle4neibEiiE2er)
	bne	$t1, $t0, .LBB19_32
# %bb.82:                               # %if.end.2.i114
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t4, $zero, 1
	beq	$t2, $a7, .LBB19_31
	b	.LBB19_32
.LBB19_83:                              # %cleanup.1.i146
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$t2, $t0, .LBB19_85
# %bb.84:                               # %cleanup.1.i146
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t5, $zero, 1
	beq	$t3, $a7, .LBB19_36
.LBB19_85:                              # %if.end.2.i149
                                        #   in Loop: Header=BB19_1 Depth=1
	pcalau12i	$t4, %pc_hi20(_ZZN14btHullTriangle4neibEiiE2er)
	addi.d	$t4, $t4, %pc_lo12(_ZZN14btHullTriangle4neibEiiE2er)
	bne	$t2, $a7, .LBB19_37
# %bb.86:                               # %if.end.2.i149
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$t5, $zero, 1
	beq	$t3, $t0, .LBB19_36
	b	.LBB19_37
.LBB19_87:                              # %for.end
	ret
.Lfunc_end19:
	.size	_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_, .Lfunc_end19-_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_
                                        # -- End function
	.globl	_ZN11HullLibrary9removeb2bEP14btHullTriangleS1_ # -- Begin function _ZN11HullLibrary9removeb2bEP14btHullTriangleS1_
	.p2align	2
	.type	_ZN11HullLibrary9removeb2bEP14btHullTriangleS1_,@function
_ZN11HullLibrary9removeb2bEP14btHullTriangleS1_: # @_ZN11HullLibrary9removeb2bEP14btHullTriangleS1_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 24
	ld.d	$a1, $s1, 16
	slli.d	$a0, $a0, 3
	stx.d	$zero, $a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	ld.d	$a1, $s1, 16
	slli.d	$a0, $a0, 3
	stx.d	$zero, $a1, $a0
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.Lfunc_end20:
	.size	_ZN11HullLibrary9removeb2bEP14btHullTriangleS1_, .Lfunc_end20-_ZN11HullLibrary9removeb2bEP14btHullTriangleS1_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle # -- Begin function _ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle
	.p2align	2
	.type	_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle,@function
_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle: # @_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle
	.cfi_startproc
# %bb.0:                                # %entry
	ld.w	$a2, $a1, 24
	ld.d	$a0, $a0, 16
	slli.d	$a2, $a2, 3
	stx.d	$zero, $a0, $a2
	move	$a0, $a1
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.Lfunc_end21:
	.size	_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle, .Lfunc_end21-_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11HullLibrary7checkitEP14btHullTriangle # -- Begin function _ZN11HullLibrary7checkitEP14btHullTriangle
	.p2align	2
	.type	_ZN11HullLibrary7checkitEP14btHullTriangle,@function
_ZN11HullLibrary7checkitEP14btHullTriangle: # @_ZN11HullLibrary7checkitEP14btHullTriangle
# %bb.0:                                # %entry
	ret
.Lfunc_end22:
	.size	_ZN11HullLibrary7checkitEP14btHullTriangle, .Lfunc_end22-_ZN11HullLibrary7checkitEP14btHullTriangle
                                        # -- End function
	.globl	_ZN11HullLibrary16allocateTriangleEiii # -- Begin function _ZN11HullLibrary16allocateTriangleEiii
	.p2align	2
	.type	_ZN11HullLibrary16allocateTriangleEiii,@function
_ZN11HullLibrary16allocateTriangleEiii: # @_ZN11HullLibrary16allocateTriangleEiii
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	ori	$a0, $zero, 36
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 4
	xvrepli.b	$xr0, -1
	xvinsgr2vr.w	$xr0, $s2, 0
	xvinsgr2vr.w	$xr0, $s1, 1
	xvinsgr2vr.w	$xr0, $s0, 2
	xvinsgr2vr.w	$xr0, $a2, 6
	xvst	$xr0, $a0, 0
	ld.w	$a1, $fp, 8
	st.w	$zero, $a0, 32
	bne	$a2, $a1, .LBB23_17
# %bb.1:                                # %if.then.i
	sltui	$a1, $a2, 1
	slli.w	$a3, $a2, 1
	masknez	$a3, $a3, $a1
	ori	$a4, $zero, 1
	maskeqz	$a1, $a4, $a1
	or	$s1, $a1, $a3
	bge	$a2, $s1, .LBB23_17
# %bb.2:                                # %if.then.i.i
	move	$s2, $a0
	beqz	$s1, .LBB23_12
# %bb.3:                                # %if.then.i.i.i
	slli.d	$a0, $s1, 3
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 4
	move	$s0, $a0
	ld.d	$a1, $fp, 16
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB23_13
.LBB23_4:                               # %for.body.lr.ph.i.i.i
	ori	$a4, $zero, 8
	move	$a3, $zero
	move	$a0, $s2
	bltu	$a2, $a4, .LBB23_9
# %bb.5:                                # %for.body.lr.ph.i.i.i
	sub.d	$a4, $s0, $a1
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB23_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a1, 32
	addi.d	$a5, $s0, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB23_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB23_7
# %bb.8:                                # %middle.block
	beq	$a3, $a2, .LBB23_11
.LBB23_9:                               # %for.body.i.i.i.preheader
	sub.d	$a4, $a2, $a3
	alsl.d	$a5, $a3, $a1, 3
	alsl.d	$a3, $a3, $s0, 3
	.p2align	4, , 16
.LBB23_10:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.d	$a6, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB23_10
.LBB23_11:                              # %if.then.i7.i.i
	ld.bu	$a3, $fp, 24
	ori	$a4, $zero, 1
	beq	$a3, $a4, .LBB23_15
	b	.LBB23_16
.LBB23_12:
	move	$s0, $zero
	ld.d	$a1, $fp, 16
	ori	$a0, $zero, 1
	bge	$a2, $a0, .LBB23_4
.LBB23_13:                              # %_ZNK20btAlignedObjectArrayIP14btHullTriangleE4copyEiiPS1_.exit.i.i
	move	$a0, $s2
	beqz	$a1, .LBB23_16
# %bb.14:                               # %_ZNK20btAlignedObjectArrayIP14btHullTriangleE4copyEiiPS1_.exit.i.i
	ld.b	$a3, $fp, 24
	andi	$a3, $a3, 1
	beqz	$a3, .LBB23_16
.LBB23_15:                              # %if.then2.i.i.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.w	$a2, $fp, 4
.LBB23_16:                              # %_ZN20btAlignedObjectArrayIP14btHullTriangleE10deallocateEv.exit.i.i
	ori	$a1, $zero, 1
	st.b	$a1, $fp, 24
	st.d	$s0, $fp, 16
	st.w	$s1, $fp, 8
.LBB23_17:                              # %_ZN20btAlignedObjectArrayIP14btHullTriangleE9push_backERKS1_.exit
	ld.d	$a1, $fp, 16
	slli.d	$a3, $a2, 3
	stx.d	$a0, $a1, $a3
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 4
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end23:
	.size	_ZN11HullLibrary16allocateTriangleEiii, .Lfunc_end23-_ZN11HullLibrary16allocateTriangleEiii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11HullLibrary7extrudeEP14btHullTrianglei # -- Begin function _ZN11HullLibrary7extrudeEP14btHullTrianglei
	.p2align	2
	.type	_ZN11HullLibrary7extrudeEP14btHullTrianglei,@function
_ZN11HullLibrary7extrudeEP14btHullTrianglei: # @_ZN11HullLibrary7extrudeEP14btHullTrianglei
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	move	$fp, $a1
	move	$s0, $a0
	ld.w	$s5, $a1, 0
	ld.w	$s3, $a1, 4
	ld.w	$s6, $a1, 8
	ld.w	$s8, $a0, 4
	move	$s1, $a2
	move	$a1, $a2
	move	$a2, $s3
	move	$a3, $s6
	pcaddu18i	$ra, %call36(_ZN11HullLibrary16allocateTriangleEiii)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$s2, $a0
	addi.d	$s7, $s8, 1
	addi.d	$a0, $s8, 2
	st.w	$a1, $s2, 12
	st.w	$s7, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.w	$a0, $s2, 20
	ld.w	$a0, $fp, 12
	ld.d	$a1, $s0, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 0
	ld.w	$a3, $a0, 4
	bne	$a1, $s3, .LBB24_2
# %bb.1:                                # %entry
	ori	$a4, $zero, 2
	beq	$a3, $s6, .LBB24_9
.LBB24_2:                               # %if.end.i
	bne	$a1, $s6, .LBB24_4
# %bb.3:                                # %if.end.i
	ori	$a4, $zero, 2
	beq	$a3, $s3, .LBB24_9
.LBB24_4:                               # %cleanup.i
	ld.w	$a2, $a0, 8
	bne	$a3, $s3, .LBB24_6
# %bb.5:                                # %cleanup.i
	beq	$a2, $s6, .LBB24_8
.LBB24_6:                               # %if.end.1.i
	bne	$a3, $s6, .LBB24_43
# %bb.7:                                # %if.end.1.i
	bne	$a2, $s3, .LBB24_43
.LBB24_8:
	move	$a4, $zero
.LBB24_9:                               # %if.then.i
	alsl.d	$a0, $a4, $a0, 2
	addi.d	$a3, $a0, 12
.LBB24_10:                              # %_ZN14btHullTriangle4neibEii.exit
	st.w	$s8, $a3, 0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s5
	pcaddu18i	$ra, %call36(_ZN11HullLibrary16allocateTriangleEiii)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	move	$s4, $a0
	st.w	$a1, $a0, 12
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $s4, 16
	st.w	$s8, $s4, 20
	ld.w	$a0, $fp, 16
	ld.d	$a1, $s0, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 0
	ld.w	$a3, $a0, 4
	bne	$a1, $s6, .LBB24_12
# %bb.11:                               # %_ZN14btHullTriangle4neibEii.exit
	ori	$a4, $zero, 2
	beq	$a3, $s5, .LBB24_19
.LBB24_12:                              # %if.end.i54
	bne	$a1, $s5, .LBB24_14
# %bb.13:                               # %if.end.i54
	ori	$a4, $zero, 2
	beq	$a3, $s6, .LBB24_19
.LBB24_14:                              # %cleanup.i59
	ld.w	$a2, $a0, 8
	bne	$a3, $s6, .LBB24_16
# %bb.15:                               # %cleanup.i59
	beq	$a2, $s5, .LBB24_18
.LBB24_16:                              # %if.end.1.i64
	bne	$a3, $s5, .LBB24_47
# %bb.17:                               # %if.end.1.i64
	bne	$a2, $s6, .LBB24_47
.LBB24_18:
	move	$a4, $zero
.LBB24_19:                              # %if.then.i80
	alsl.d	$a0, $a4, $a0, 2
	addi.d	$a3, $a0, 12
.LBB24_20:                              # %_ZN14btHullTriangle4neibEii.exit84
	st.w	$s7, $a3, 0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZN11HullLibrary16allocateTriangleEiii)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 20
	move	$s6, $a0
	st.w	$a1, $a0, 12
	st.w	$s8, $a0, 16
	st.w	$s7, $a0, 20
	ld.w	$a1, $fp, 20
	ld.d	$a0, $s0, 16
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 0
	ld.w	$a4, $a1, 4
	bne	$a2, $s5, .LBB24_22
# %bb.21:                               # %_ZN14btHullTriangle4neibEii.exit84
	ori	$a5, $zero, 2
	beq	$a4, $s3, .LBB24_29
.LBB24_22:                              # %if.end.i100
	bne	$a2, $s3, .LBB24_24
# %bb.23:                               # %if.end.i100
	ori	$a5, $zero, 2
	beq	$a4, $s5, .LBB24_29
.LBB24_24:                              # %cleanup.i105
	ld.w	$a3, $a1, 8
	bne	$a4, $s5, .LBB24_26
# %bb.25:                               # %cleanup.i105
	beq	$a3, $s3, .LBB24_28
.LBB24_26:                              # %if.end.1.i110
	bne	$a4, $s3, .LBB24_51
# %bb.27:                               # %if.end.1.i110
	bne	$a3, $s5, .LBB24_51
.LBB24_28:
	move	$a5, $zero
.LBB24_29:                              # %if.then.i126
	alsl.d	$a1, $a5, $a1, 2
	addi.d	$a4, $a1, 12
.LBB24_30:                              # %_ZN14btHullTriangle4neibEii.exit130
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $a4, 0
	ld.w	$a1, $s2, 12
	slli.d	$a1, $a1, 3
	ldx.d	$s3, $a0, $a1
	ld.w	$a1, $s3, 0
	beq	$a1, $s1, .LBB24_33
# %bb.31:                               # %_ZN14btHullTriangle4neibEii.exit130
	ld.w	$a1, $s3, 4
	beq	$a1, $s1, .LBB24_33
# %bb.32:                               # %_ZN14btHullTriangle4neibEii.exit130
	ld.w	$a1, $s3, 8
	bne	$a1, $s1, .LBB24_34
.LBB24_33:                              # %if.then
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 24
	ld.d	$a1, $s0, 16
	slli.d	$a0, $a0, 3
	stx.d	$zero, $a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 24
	ld.d	$a1, $s0, 16
	slli.d	$a0, $a0, 3
	stx.d	$zero, $a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
.LBB24_34:                              # %if.end
	ld.w	$a1, $s4, 12
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a0, $a1
	ld.w	$a1, $s2, 0
	beq	$a1, $s1, .LBB24_37
# %bb.35:                               # %if.end
	ld.w	$a1, $s2, 4
	beq	$a1, $s1, .LBB24_37
# %bb.36:                               # %if.end
	ld.w	$a1, $s2, 8
	bne	$a1, $s1, .LBB24_38
.LBB24_37:                              # %if.then66
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 24
	ld.d	$a1, $s0, 16
	slli.d	$a0, $a0, 3
	stx.d	$zero, $a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 24
	ld.d	$a1, $s0, 16
	slli.d	$a0, $a0, 3
	stx.d	$zero, $a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
.LBB24_38:                              # %if.end71
	ld.w	$a1, $s6, 12
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a0, $a1
	ld.w	$a1, $s2, 0
	beq	$a1, $s1, .LBB24_41
# %bb.39:                               # %if.end71
	ld.w	$a1, $s2, 4
	beq	$a1, $s1, .LBB24_41
# %bb.40:                               # %if.end71
	ld.w	$a1, $s2, 8
	bne	$a1, $s1, .LBB24_42
.LBB24_41:                              # %if.then78
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN11HullLibrary6b2bfixEP14btHullTriangleS1_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 24
	ld.d	$a1, $s0, 16
	slli.d	$a0, $a0, 3
	stx.d	$zero, $a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 24
	ld.d	$a1, $s0, 16
	slli.d	$a0, $a0, 3
	stx.d	$zero, $a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
.LBB24_42:                              # %if.end83
	ld.w	$a1, $fp, 24
	slli.d	$a1, $a1, 3
	stx.d	$zero, $a0, $a1
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB24_43:                              # %cleanup.1.i
	bne	$a1, $s6, .LBB24_45
# %bb.44:                               # %cleanup.1.i
	ori	$a4, $zero, 1
	beq	$a2, $s3, .LBB24_9
.LBB24_45:                              # %if.end.2.i
	pcalau12i	$a3, %pc_hi20(_ZZN14btHullTriangle4neibEiiE2er)
	addi.d	$a3, $a3, %pc_lo12(_ZZN14btHullTriangle4neibEiiE2er)
	bne	$a1, $s3, .LBB24_10
# %bb.46:                               # %if.end.2.i
	ori	$a4, $zero, 1
	beq	$a2, $s6, .LBB24_9
	b	.LBB24_10
.LBB24_47:                              # %cleanup.1.i69
	bne	$a1, $s5, .LBB24_49
# %bb.48:                               # %cleanup.1.i69
	ori	$a4, $zero, 1
	beq	$a2, $s6, .LBB24_19
.LBB24_49:                              # %if.end.2.i72
	pcalau12i	$a3, %pc_hi20(_ZZN14btHullTriangle4neibEiiE2er)
	addi.d	$a3, $a3, %pc_lo12(_ZZN14btHullTriangle4neibEiiE2er)
	bne	$a1, $s6, .LBB24_20
# %bb.50:                               # %if.end.2.i72
	ori	$a4, $zero, 1
	beq	$a2, $s5, .LBB24_19
	b	.LBB24_20
.LBB24_51:                              # %cleanup.1.i115
	bne	$a2, $s3, .LBB24_53
# %bb.52:                               # %cleanup.1.i115
	ori	$a5, $zero, 1
	beq	$a3, $s5, .LBB24_29
.LBB24_53:                              # %if.end.2.i118
	pcalau12i	$a4, %pc_hi20(_ZZN14btHullTriangle4neibEiiE2er)
	addi.d	$a4, $a4, %pc_lo12(_ZZN14btHullTriangle4neibEiiE2er)
	bne	$a2, $s5, .LBB24_30
# %bb.54:                               # %if.end.2.i118
	ori	$a5, $zero, 1
	beq	$a3, $s3, .LBB24_29
	b	.LBB24_30
.Lfunc_end24:
	.size	_ZN11HullLibrary7extrudeEP14btHullTrianglei, .Lfunc_end24-_ZN11HullLibrary7extrudeEP14btHullTrianglei
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11HullLibrary10extrudableEf  # -- Begin function _ZN11HullLibrary10extrudableEf
	.p2align	2
	.type	_ZN11HullLibrary10extrudableEf,@function
_ZN11HullLibrary10extrudableEf:         # @_ZN11HullLibrary10extrudableEf
# %bb.0:                                # %entry
	ld.wu	$a1, $a0, 4
	ld.d	$a0, $a0, 16
	move	$a2, $zero
	b	.LBB25_3
	.p2align	4, , 16
.LBB25_1:                               # %if.then
                                        #   in Loop: Header=BB25_3 Depth=1
	move	$a2, $a3
.LBB25_2:                               # %for.inc
                                        #   in Loop: Header=BB25_3 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	beqz	$a1, .LBB25_6
.LBB25_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	beqz	$a2, .LBB25_1
# %bb.4:                                # %lor.lhs.false
                                        #   in Loop: Header=BB25_3 Depth=1
	beqz	$a3, .LBB25_2
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB25_3 Depth=1
	fld.s	$fa1, $a2, 32
	fld.s	$fa2, $a3, 32
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB25_1
	b	.LBB25_2
.LBB25_6:                               # %for.end
	fld.s	$fa1, $a2, 32
	fcmp.clt.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	maskeqz	$a0, $a2, $a0
	ret
.Lfunc_end25:
	.size	_ZN11HullLibrary10extrudableEf, .Lfunc_end25-_ZN11HullLibrary10extrudableEf
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE
.LCPI26_0:
	.word	0x3c23d70a                      # float 0.00999999977
	.word	0x3ca3d70a                      # float 0.0199999996
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI26_1:
	.word	0x3ca3d70a                      # float 0.0199999996
.LCPI26_2:
	.word	0xbca3d70a                      # float -0.0199999996
	.text
	.globl	_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE
	.p2align	2
	.type	_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE,@function
_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE: # @_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	pcalau12i	$a0, %pc_hi20(.LCPI26_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_0)
	move	$s2, $a3
	move	$s3, $a2
	move	$s1, $a1
	vst	$vr0, $sp, 32
	addi.d	$a2, $sp, 32
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.wu	$a0, $sp, 32
	ld.w	$a1, $sp, 36
	ld.wu	$a2, $sp, 40
	lu12i.w	$s8, -524288
	lu32i.d	$s8, 0
	xor	$a0, $a0, $s8
	xor	$a1, $a1, $s8
	slli.d	$a1, $a1, 32
	or	$a0, $a1, $a0
	xor	$a1, $a2, $s8
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	move	$a1, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	alsl.d	$s7, $fp, $s1, 4
	slli.d	$a0, $fp, 4
	alsl.d	$s6, $s0, $s1, 4
	slli.d	$a1, $s0, 4
	fldx.s	$fa0, $s1, $a0
	fldx.s	$fa1, $s1, $a1
	fld.s	$fa2, $s7, 4
	fld.s	$fa4, $s6, 4
	fld.s	$fa5, $s7, 8
	fld.s	$fa6, $s6, 8
	fsub.s	$fa3, $fa0, $fa1
	fsub.s	$fa4, $fa2, $fa4
	fsub.s	$fa5, $fa5, $fa6
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	addi.w	$a2, $zero, -1
	beq	$fp, $s0, .LBB26_21
# %bb.1:                                # %lor.rhs
	movgr2fr.w	$fs0, $zero
	fcmp.cune.s	$fcc0, $fa5, $fs0
	bcnez	$fcc0, .LBB26_4
# %bb.2:                                # %lor.rhs
	fcmp.cune.s	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB26_4
# %bb.3:                                # %lor.rhs
	fcmp.ceq.s	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB26_21
.LBB26_4:                               # %if.end
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	fneg.s	$fa0, $fs0
	pcalau12i	$a0, %pc_hi20(.LCPI26_1)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI26_1)
	pcalau12i	$a0, %pc_hi20(.LCPI26_2)
	fld.s	$fa7, $a0, %pc_lo12(.LCPI26_2)
	fmul.s	$ft0, $fa4, $fa0
	fmadd.s	$fa1, $fa5, $fa6, $ft0
	fmsub.s	$fa0, $fa3, $fs0, $fa5
	fmul.s	$fa2, $fa3, $fa7
	fadd.s	$fa2, $fa4, $fa2
	movfr2gr.s	$a0, $fa2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a2, $sp, 48
	st.d	$a0, $sp, 56
	fadd.s	$ft0, $fa5, $ft0
	fmul.s	$fa5, $fa5, $fa6
	fmadd.s	$fa5, $fa3, $fs0, $fa5
	fmsub.s	$fa4, $fa4, $fa7, $fa3
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a1, $fa5
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$s5, $sp, 64
	st.d	$a0, $sp, 64
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fsqrt.s	$fa3, $fa3
	fmul.s	$fa5, $fa5, $fa5
	fmadd.s	$fa5, $ft0, $ft0, $fa5
	fmadd.s	$fa4, $fa4, $fa4, $fa5
	fsqrt.s	$fa4, $fa4
	fcmp.clt.s	$fcc0, $fa4, $fa3
	st.d	$a1, $sp, 72
	bcnez	$fcc0, .LBB26_6
# %bb.5:                                # %if.else
	vld	$vr0, $s5, 0
	vst	$vr0, $a2, 0
	fld.s	$fa0, $sp, 52
	fld.s	$fa1, $sp, 48
	fld.s	$fa2, $sp, 56
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fsqrt.s	$fa3, $fa3
.LBB26_6:                               # %if.end53
	frecip.s	$fa3, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa2, $fa2, $fa3
	fst.s	$fa1, $sp, 48
	fst.s	$fa0, $sp, 52
	fst.s	$fa2, $sp, 56
	move	$a0, $s1
	move	$a1, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE)
	jirl	$ra, $ra, 0
	beq	$a0, $fp, .LBB26_8
# %bb.7:                                # %if.end53
	move	$s4, $a0
	bne	$a0, $s0, .LBB26_9
.LBB26_8:                               # %if.then58
	ld.wu	$a0, $sp, 48
	ld.w	$a1, $sp, 52
	ld.wu	$a2, $sp, 56
	xor	$a0, $a0, $s8
	xor	$a1, $a1, $s8
	slli.d	$a1, $a1, 32
	or	$a0, $a1, $a0
	xor	$a1, $a2, $s8
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	move	$a1, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB26_9:                               # %if.end64
	beq	$s4, $fp, .LBB26_20
# %bb.10:                               # %if.end64
	beq	$s4, $s0, .LBB26_20
# %bb.11:                               # %if.end69
	move	$a2, $s5
	alsl.d	$s5, $s4, $s1, 4
	slli.d	$a0, $s4, 4
	fldx.s	$fa0, $s1, $a0
	fld.s	$fa1, $s7, 0
	fld.s	$fa2, $s5, 4
	fld.s	$fa3, $s7, 4
	fld.s	$fa4, $s5, 8
	fld.s	$fa5, $s7, 8
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fa3, $sp, 36
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	fld.s	$fa4, $sp, 40
	fneg.s	$fa5, $fa3
	fmul.s	$fa5, $fa2, $fa5
	fld.s	$fa6, $sp, 32
	fmadd.s	$fa5, $fa1, $fa4, $fa5
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa0, $fa4
	fmadd.s	$fa2, $fa2, $fa6, $fa4
	fneg.s	$fa4, $fa6
	fmul.s	$fa1, $fa1, $fa4
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fmul.s	$fa1, $fa2, $fa2
	fmadd.s	$fa1, $fa5, $fa5, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa3, $fa5, $fa1
	fmul.s	$fa2, $fa2, $fa1
	fmul.s	$fa0, $fa0, $fa1
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	move	$a0, $s1
	move	$a1, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB26_14
# %bb.12:                               # %if.end69
	beq	$a0, $fp, .LBB26_14
# %bb.13:                               # %if.end69
	bne	$a0, $s0, .LBB26_15
.LBB26_14:                              # %if.then94
	ld.wu	$a0, $sp, 64
	ld.w	$a1, $sp, 68
	ld.wu	$a2, $sp, 72
	xor	$a0, $a0, $s8
	xor	$a1, $a1, $s8
	slli.d	$a1, $a1, 32
	or	$a0, $a1, $a0
	xor	$a1, $a2, $s8
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	move	$a1, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE)
	jirl	$ra, $ra, 0
.LBB26_15:                              # %if.end100
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $s4, .LBB26_21
# %bb.16:                               # %if.end100
	beq	$a0, $fp, .LBB26_21
# %bb.17:                               # %if.end100
	move	$a3, $a2
	move	$a1, $a2
	move	$a4, $a2
	beq	$a0, $s0, .LBB26_22
# %bb.18:                               # %if.end107
	alsl.d	$a1, $a0, $s1, 4
	slli.d	$a2, $a0, 4
	fldx.s	$fa0, $s1, $a2
	fld.s	$fa1, $s7, 0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $s7, 4
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fld.s	$fa4, $s6, 0
	fld.s	$fa5, $a1, 8
	fld.s	$fa6, $s6, 4
	fld.s	$fa7, $s7, 8
	fsub.s	$fa4, $fa4, $fa1
	fld.s	$ft0, $s5, 0
	fsub.s	$fa6, $fa6, $fa3
	fld.s	$ft1, $s5, 4
	fld.s	$ft2, $s6, 8
	fsub.s	$fa1, $ft0, $fa1
	fld.s	$ft0, $s5, 8
	fsub.s	$fa3, $ft1, $fa3
	fsub.s	$fa5, $fa5, $fa7
	fsub.s	$ft1, $ft2, $fa7
	fsub.s	$fa7, $ft0, $fa7
	fneg.s	$ft0, $fa3
	fmul.s	$ft0, $ft1, $ft0
	fmadd.s	$ft0, $fa6, $fa7, $ft0
	fneg.s	$fa7, $fa7
	fmul.s	$fa7, $fa4, $fa7
	fmadd.s	$fa7, $ft1, $fa1, $fa7
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa6, $fa1
	fmadd.s	$fa1, $fa4, $fa3, $fa1
	fmul.s	$fa2, $fa2, $fa7
	fmadd.s	$fa0, $fa0, $ft0, $fa2
	fmadd.s	$fa0, $fa5, $fa1, $fa0
	move	$a2, $fp
	move	$a3, $s0
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB26_23
# %bb.19:                               # %if.then134
	move	$a1, $a0
	move	$a4, $s4
	b	.LBB26_22
.LBB26_20:
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
.LBB26_21:
	move	$a3, $a2
	move	$a1, $a2
	move	$a4, $a2
.LBB26_22:                              # %cleanup137
	bstrins.d	$a2, $a3, 63, 32
	bstrins.d	$a1, $a4, 63, 32
	move	$a0, $a2
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
.LBB26_23:
	move	$a1, $s4
	move	$a4, $a0
	b	.LBB26_22
.Lfunc_end26:
	.size	_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE, .Lfunc_end26-_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE
.LCPI27_0:
	.word	0x3c8efa35                      # float 0.0174532924
.LCPI27_1:
	.word	0x3ccccccd                      # float 0.0250000004
	.section	.text._Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE,"axG",@progbits,_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE,comdat
	.weak	_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE
	.p2align	5
	.type	_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE,@function
_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE: # @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 72                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	move	$s0, $a1
	move	$s1, $a0
	ld.d	$a7, $a3, 16
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	fld.s	$ft2, $a2, 4
	fld.s	$fs3, $a2, 8
	movgr2fr.w	$fa0, $zero
	fld.s	$fs4, $a2, 0
	fneg.s	$fa1, $fa0
	fmul.s	$fa2, $fs3, $fa1
	fadd.s	$fa2, $ft2, $fa2
	fneg.s	$fa3, $fs4
	fmsub.s	$fa4, $fs3, $fa0, $fs4
	fmul.s	$fa5, $ft2, $fa1
	fmadd.s	$fa6, $fs4, $fa0, $fa5
	fneg.s	$fa7, $fs3
	fmsub.s	$ft0, $ft2, $fa0, $fs3
	fmul.s	$fa1, $fs4, $fa1
	fmadd.s	$fa0, $fs3, $fa0, $fa1
	fadd.s	$fa1, $fa5, $fs4
	fmul.s	$fa5, $fa4, $fa4
	fmadd.s	$fa5, $fa2, $fa2, $fa5
	fmadd.s	$fa5, $fa6, $fa6, $fa5
	fsqrt.s	$fa5, $fa5
	fmul.s	$ft1, $fa0, $fa0
	fmadd.s	$ft1, $ft0, $ft0, $ft1
	fmadd.s	$ft1, $fa1, $fa1, $ft1
	fsqrt.s	$ft1, $ft1
	fcmp.clt.s	$fcc0, $ft1, $fa5
	fsel	$fa5, $ft1, $fa5, $fcc0
	fsel	$fa2, $ft0, $fa2, $fcc0
	fsel	$fa0, $fa0, $fa4, $fcc0
	fsel	$fa1, $fa1, $fa6, $fcc0
	frecip.s	$fa4, $fa5
	fmul.s	$fa2, $fa2, $fa4
	fmul.s	$fa5, $fa0, $fa4
	fmul.s	$fa1, $fa1, $fa4
	fneg.s	$fa0, $ft2
	fmul.s	$fa0, $fa1, $fa0
	fmadd.s	$fa0, $fa5, $fs3, $fa0
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	fmul.s	$fa0, $fa2, $fa7
	fst.s	$fa1, $sp, 40                   # 4-byte Folded Spill
	fmadd.s	$fa0, $fa1, $fs4, $fa0
	fst.s	$fa0, $sp, 32                   # 4-byte Folded Spill
	fst.s	$fa5, $sp, 44                   # 4-byte Folded Spill
	fmul.s	$fa0, $fa5, $fa3
	fst.s	$ft2, $sp, 52                   # 4-byte Folded Spill
	fst.s	$fa2, $sp, 48                   # 4-byte Folded Spill
	fmadd.s	$fa0, $fa2, $ft2, $fa0
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	addi.d	$a0, $s1, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$s7, $zero, -1
	ori	$s3, $zero, 1
	pcalau12i	$a0, %pc_hi20(.LCPI27_0)
	fld.s	$fs5, $a0, %pc_lo12(.LCPI27_0)
	pcalau12i	$a0, %pc_hi20(.LCPI27_1)
	fld.s	$fs6, $a0, %pc_lo12(.LCPI27_1)
	ori	$t0, $zero, 3
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $s7
	blt	$s0, $s3, .LBB27_7
.LBB27_1:                               # %for.body.lr.ph.i
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a2, 8
	move	$a0, $zero
	move	$a1, $a7
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$s2, $s7
	b	.LBB27_4
	.p2align	4, , 16
.LBB27_2:                               # %if.then7.i
                                        #   in Loop: Header=BB27_4 Depth=1
	move	$s2, $a0
.LBB27_3:                               # %for.inc.i
                                        #   in Loop: Header=BB27_4 Depth=1
	addi.w	$a0, $a0, 1
	addi.d	$a3, $a3, -1
	addi.d	$a6, $a6, 16
	addi.d	$a1, $a1, 4
	beqz	$a3, .LBB27_7
.LBB27_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	beqz	$a4, .LBB27_3
# %bb.5:                                # %if.then.i
                                        #   in Loop: Header=BB27_4 Depth=1
	beq	$s2, $s7, .LBB27_2
# %bb.6:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB27_4 Depth=1
	fld.s	$fa3, $a6, -4
	fld.s	$fa4, $a6, -8
	fmul.s	$fa3, $fa1, $fa3
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fld.s	$fa4, $a6, 0
	alsl.d	$a4, $s2, $s1, 4
	slli.d	$a5, $s2, 4
	fld.s	$fa5, $a4, 4
	fldx.s	$fa6, $s1, $a5
	fld.s	$fa7, $a4, 8
	fmadd.s	$fa3, $fa4, $fa2, $fa3
	fmul.s	$fa4, $fa1, $fa5
	fmadd.s	$fa4, $fa6, $fa0, $fa4
	fmadd.s	$fa4, $fa7, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bceqz	$fcc0, .LBB27_2
	b	.LBB27_3
	.p2align	4, , 16
.LBB27_7:                               # %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_10 Depth 2
                                        #       Child Loop BB27_14 Depth 3
                                        #       Child Loop BB27_24 Depth 3
                                        #       Child Loop BB27_27 Depth 3
                                        #         Child Loop BB27_30 Depth 4
	slli.d	$a0, $s2, 2
	ldx.w	$a0, $a7, $a0
	beq	$a0, $t0, .LBB27_37
# %bb.8:                                # %for.body.preheader
                                        #   in Loop: Header=BB27_7 Depth=1
	move	$a0, $zero
	move	$s5, $a7
	alsl.d	$a1, $s2, $a7, 2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $s7
	b	.LBB27_10
	.p2align	4, , 16
.LBB27_9:                               # %for.inc81
                                        #   in Loop: Header=BB27_10 Depth=2
	addi.w	$a0, $s8, 45
	move	$s0, $s3
	ori	$s3, $zero, 1
	ori	$a1, $zero, 316
	bgeu	$s8, $a1, .LBB27_35
.LBB27_10:                              # %for.body
                                        #   Parent Loop BB27_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_14 Depth 3
                                        #       Child Loop BB27_24 Depth 3
                                        #       Child Loop BB27_27 Depth 3
                                        #         Child Loop BB27_30 Depth 4
	move	$s6, $fp
	move	$s8, $a0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fs7, $fa0
	fmul.s	$fs1, $fs7, $fs5
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	move	$fp, $s7
	blt	$s0, $s3, .LBB27_17
# %bb.11:                               # %for.body.i110.preheader
                                        #   in Loop: Header=BB27_10 Depth=2
	move	$a0, $zero
	fld.s	$fa1, $sp, 48                   # 4-byte Folded Reload
	fmul.s	$fa1, $fa1, $fs0
	fld.s	$fa2, $sp, 44                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa2, $fs0
	fld.s	$fa3, $sp, 40                   # 4-byte Folded Reload
	fmul.s	$fa3, $fa3, $fs0
	fld.s	$fa4, $sp, 36                   # 4-byte Folded Reload
	fmul.s	$fa4, $fa4, $fa0
	fld.s	$fa5, $sp, 32                   # 4-byte Folded Reload
	fmul.s	$fa5, $fa5, $fa0
	fld.s	$fa6, $sp, 28                   # 4-byte Folded Reload
	fmul.s	$fa0, $fa6, $fa0
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa3, $fa0
	fmul.s	$fa1, $fa1, $fs6
	fmul.s	$fa2, $fa2, $fs6
	fmul.s	$fa3, $fa0, $fs6
	fadd.s	$fa0, $fs4, $fa1
	fld.s	$fa1, $sp, 52                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa2, $fs3, $fa3
	move	$a1, $s5
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$fp, $s7
	b	.LBB27_14
	.p2align	4, , 16
.LBB27_12:                              # %if.then7.i132
                                        #   in Loop: Header=BB27_14 Depth=3
	move	$fp, $a0
.LBB27_13:                              # %for.inc.i128
                                        #   in Loop: Header=BB27_14 Depth=3
	addi.w	$a0, $a0, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 16
	addi.d	$a1, $a1, 4
	beqz	$a3, .LBB27_17
.LBB27_14:                              # %for.body.i110
                                        #   Parent Loop BB27_7 Depth=1
                                        #     Parent Loop BB27_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a1, 0
	beqz	$a4, .LBB27_13
# %bb.15:                               # %if.then.i115
                                        #   in Loop: Header=BB27_14 Depth=3
	addi.w	$a4, $zero, -1
	beq	$fp, $a4, .LBB27_12
# %bb.16:                               # %lor.lhs.false.i117
                                        #   in Loop: Header=BB27_14 Depth=3
	fld.s	$fa3, $a2, -4
	fld.s	$fa4, $a2, -8
	fmul.s	$fa3, $fa1, $fa3
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fld.s	$fa4, $a2, 0
	alsl.d	$a4, $fp, $s1, 4
	slli.d	$a5, $fp, 4
	fld.s	$fa5, $a4, 4
	fldx.s	$fa6, $s1, $a5
	fld.s	$fa7, $a4, 8
	fmadd.s	$fa3, $fa4, $fa2, $fa3
	fmul.s	$fa4, $fa1, $fa5
	fmadd.s	$fa4, $fa6, $fa0, $fa4
	fmadd.s	$fa4, $fa7, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bceqz	$fcc0, .LBB27_12
	b	.LBB27_13
	.p2align	4, , 16
.LBB27_17:                              # %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit133
                                        #   in Loop: Header=BB27_10 Depth=2
	ori	$a1, $zero, 1
	move	$s3, $s0
	bne	$s6, $s2, .LBB27_19
# %bb.18:                               # %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit133
                                        #   in Loop: Header=BB27_10 Depth=2
	beq	$fp, $s2, .LBB27_36
.LBB27_19:                              # %if.end30
                                        #   in Loop: Header=BB27_10 Depth=2
	addi.w	$s0, $zero, -1
	beq	$s6, $s0, .LBB27_9
# %bb.20:                               # %if.end30
                                        #   in Loop: Header=BB27_10 Depth=2
	beq	$s6, $fp, .LBB27_9
# %bb.21:                               # %if.then34
                                        #   in Loop: Header=BB27_10 Depth=2
	addi.d	$a0, $s8, -40
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fs2, $fa0
	fcmp.cult.s	$fcc0, $fs7, $fs2
	bcnez	$fcc0, .LBB27_9
# %bb.22:                               # %for.body38.lr.ph
                                        #   in Loop: Header=BB27_10 Depth=2
	bge	$s3, $a1, .LBB27_27
# %bb.23:                               # %for.inc.peel
                                        #   in Loop: Header=BB27_10 Depth=2
	fmul.s	$fs0, $fs2, $fs5
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, -35
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fs1, $fa0
	fcmp.cult.s	$fcc0, $fs7, $fs1
	bcnez	$fcc0, .LBB27_9
	.p2align	4, , 16
.LBB27_24:                              # %for.body38
                                        #   Parent Loop BB27_7 Depth=1
                                        #     Parent Loop BB27_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fmul.s	$fs0, $fs1, $fs5
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	beq	$s2, $s0, .LBB27_36
# %bb.25:                               # %for.inc
                                        #   in Loop: Header=BB27_24 Depth=3
	vldi	$vr0, -1260
	fadd.s	$fs1, $fs1, $fa0
	fcmp.cle.s	$fcc0, $fs1, $fs7
	bcnez	$fcc0, .LBB27_24
	b	.LBB27_9
	.p2align	4, , 16
.LBB27_26:                              # %for.inc.us
                                        #   in Loop: Header=BB27_27 Depth=3
	vldi	$vr0, -1260
	fadd.s	$fs2, $fs2, $fa0
	fcmp.cult.s	$fcc0, $fs7, $fs2
	bcnez	$fcc0, .LBB27_9
.LBB27_27:                              # %for.body38.us
                                        #   Parent Loop BB27_7 Depth=1
                                        #     Parent Loop BB27_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB27_30 Depth 4
	move	$s4, $s6
	fmul.s	$fs0, $fs2, $fs5
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fs1, $fa0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.s	$fa1, $sp, 48                   # 4-byte Folded Reload
	fmul.s	$fa1, $fa1, $fs1
	fld.s	$fa2, $sp, 44                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa2, $fs1
	fld.s	$fa3, $sp, 40                   # 4-byte Folded Reload
	fmul.s	$fa3, $fa3, $fs1
	fld.s	$fa4, $sp, 36                   # 4-byte Folded Reload
	fmul.s	$fa4, $fa4, $fa0
	fld.s	$fa5, $sp, 32                   # 4-byte Folded Reload
	fmul.s	$fa5, $fa5, $fa0
	fld.s	$fa6, $sp, 28                   # 4-byte Folded Reload
	fmul.s	$fa0, $fa6, $fa0
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa3, $fa0
	fmul.s	$fa1, $fa1, $fs6
	fmul.s	$fa2, $fa2, $fs6
	fmul.s	$fa3, $fa0, $fs6
	fadd.s	$fa0, $fs4, $fa1
	fld.s	$fa1, $sp, 52                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa2, $fs3, $fa3
	move	$a1, $s5
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$s6, $s0
	b	.LBB27_30
	.p2align	4, , 16
.LBB27_28:                              # %if.then7.i232.us
                                        #   in Loop: Header=BB27_30 Depth=4
	move	$s6, $a0
.LBB27_29:                              # %for.inc.i228.us
                                        #   in Loop: Header=BB27_30 Depth=4
	addi.d	$a3, $a3, -1
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 16
	addi.d	$a1, $a1, 4
	beqz	$a3, .LBB27_33
.LBB27_30:                              # %for.body.i210.us
                                        #   Parent Loop BB27_7 Depth=1
                                        #     Parent Loop BB27_10 Depth=2
                                        #       Parent Loop BB27_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $a1, 0
	beqz	$a4, .LBB27_29
# %bb.31:                               # %if.then.i215.us
                                        #   in Loop: Header=BB27_30 Depth=4
	addi.w	$a4, $zero, -1
	beq	$s6, $a4, .LBB27_28
# %bb.32:                               # %lor.lhs.false.i217.us
                                        #   in Loop: Header=BB27_30 Depth=4
	fld.s	$fa3, $a2, -4
	fld.s	$fa4, $a2, -8
	fmul.s	$fa3, $fa1, $fa3
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fld.s	$fa4, $a2, 0
	alsl.d	$a4, $s6, $s1, 4
	slli.d	$a5, $s6, 4
	fld.s	$fa5, $a4, 4
	fldx.s	$fa6, $s1, $a5
	fld.s	$fa7, $a4, 8
	fmadd.s	$fa3, $fa4, $fa2, $fa3
	fmul.s	$fa4, $fa1, $fa5
	fmadd.s	$fa4, $fa6, $fa0, $fa4
	fmadd.s	$fa4, $fa7, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bceqz	$fcc0, .LBB27_28
	b	.LBB27_29
	.p2align	4, , 16
.LBB27_33:                              # %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit233.us
                                        #   in Loop: Header=BB27_27 Depth=3
	bne	$s4, $s2, .LBB27_26
# %bb.34:                               # %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit233.us
                                        #   in Loop: Header=BB27_27 Depth=3
	bne	$s6, $s2, .LBB27_26
	b	.LBB27_36
.LBB27_35:                              # %for.end85
                                        #   in Loop: Header=BB27_7 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	move	$a7, $s5
	ori	$t0, $zero, 3
	move	$s2, $s7
	bge	$s0, $s3, .LBB27_1
	b	.LBB27_7
.LBB27_36:                              # %cleanup92.sink.split
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB27_37:                              # %cleanup92
	move	$a0, $s2
	fld.d	$fs7, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end27:
	.size	_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE, .Lfunc_end27-_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN11HullLibrary11calchullgenEP9btVector3ii
.LCPI28_0:
	.word	0x3a83126f                      # float 0.00100000005
.LCPI28_1:
	.word	0x3c23d70a                      # float 0.00999999977
.LCPI28_2:
	.word	0x3dcccccd                      # float 0.100000001
	.text
	.globl	_ZN11HullLibrary11calchullgenEP9btVector3ii
	.p2align	2
	.type	_ZN11HullLibrary11calchullgenEP9btVector3ii,@function
_ZN11HullLibrary11calchullgenEP9btVector3ii: # @_ZN11HullLibrary11calchullgenEP9btVector3ii
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -288
	.cfi_def_cfa_offset 288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 136                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	ori	$a4, $zero, 4
	bge	$a2, $a4, .LBB28_2
# %bb.1:
	move	$s4, $zero
	b	.LBB28_131
.LBB28_2:                               # %if.then.i.i
	move	$s5, $a3
	move	$s6, $a2
	move	$s0, $a1
	move	$s1, $a0
	fld.s	$fs0, $a1, 0
	fld.s	$fs1, $a1, 4
	fld.s	$fs2, $a1, 8
	slli.d	$s3, $a2, 2
	ori	$a1, $zero, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$fp, $zero, 1
	st.b	$fp, $sp, 128
	st.d	$zero, $sp, 120
	st.d	$zero, $sp, 108
.Ltmp22:                                # EH_LABEL
	ori	$a1, $zero, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.3:                                # %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i122
	move	$s4, $a0
	ld.w	$a1, $sp, 108
	ld.d	$a0, $sp, 120
	blt	$a1, $fp, .LBB28_8
# %bb.4:                                # %iter.check
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB28_17
# %bb.5:                                # %iter.check
	sub.d	$a3, $s4, $a0
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB28_17
# %bb.6:                                # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB28_10
# %bb.7:
	move	$a2, $zero
	b	.LBB28_14
.LBB28_8:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i127
	beqz	$a0, .LBB28_21
# %bb.9:                                # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i127
	ld.b	$a1, $sp, 128
	andi	$a1, $a1, 1
	bnez	$a1, .LBB28_20
	b	.LBB28_21
.LBB28_10:                              # %vector.ph
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s4, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB28_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB28_11
# %bb.12:                               # %middle.block
	beq	$a2, $a1, .LBB28_19
# %bb.13:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 12
	beqz	$a3, .LBB28_17
.LBB28_14:                              # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a0, 2
	alsl.d	$a5, $a5, $s4, 2
	.p2align	4, , 16
.LBB28_15:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB28_15
# %bb.16:                               # %vec.epilog.middle.block
	beq	$a2, $a1, .LBB28_19
.LBB28_17:                              # %for.body.i.i141.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s4, 2
	.p2align	4, , 16
.LBB28_18:                              # %for.body.i.i141
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB28_18
.LBB28_19:                              # %if.then.i7.i130
	ld.bu	$a1, $sp, 128
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB28_21
.LBB28_20:                              # %if.then2.i.i138
.Ltmp24:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
.LBB28_21:                              # %for.body.preheader
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	move	$s8, $zero
	ori	$s3, $zero, 1
	st.b	$s3, $sp, 128
	st.d	$s4, $sp, 120
	st.w	$s6, $sp, 112
	ori	$s5, $zero, 4
	fmov.s	$fs3, $fs2
	fmov.s	$fs4, $fs1
	fmov.s	$fs5, $fs0
	move	$fp, $s6
	b	.LBB28_24
	.p2align	4, , 16
.LBB28_22:                              #   in Loop: Header=BB28_24 Depth=1
	move	$s2, $s4
	move	$s7, $fp
.LBB28_23:                              # %invoke.cont14
                                        #   in Loop: Header=BB28_24 Depth=1
	slli.d	$a0, $s8, 2
	stx.w	$zero, $s2, $a0
	slli.d	$a0, $s8, 4
	fldx.s	$fa0, $s0, $a0
	addi.d	$a0, $s8, 1
	alsl.d	$a1, $s8, $s0, 4
	fld.s	$fa1, $a1, 4
	fcmp.clt.s	$fcc0, $fa0, $fs0
	fld.s	$fa2, $a1, 8
	fsel	$fs0, $fs0, $fa0, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fs1
	fsel	$fs1, $fs1, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $fs2
	fsel	$fs2, $fs2, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fs5, $fa0
	fsel	$fs5, $fs5, $fa0, $fcc0
	fcmp.clt.s	$fcc0, $fs4, $fa1
	fsel	$fs4, $fs4, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $fs3, $fa2
	fsel	$fs3, $fs3, $fa2, $fcc0
	move	$s8, $a0
	move	$fp, $s7
	beq	$a0, $s6, .LBB28_68
.LBB28_24:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_36 Depth 2
                                        #     Child Loop BB28_40 Depth 2
                                        #     Child Loop BB28_43 Depth 2
                                        #     Child Loop BB28_59 Depth 2
                                        #     Child Loop BB28_63 Depth 2
                                        #     Child Loop BB28_66 Depth 2
	ld.w	$a1, $sp, 108
	ld.w	$a0, $sp, 112
	move	$s4, $s2
	bne	$a1, $a0, .LBB28_48
# %bb.25:                               # %if.then.i156
                                        #   in Loop: Header=BB28_24 Depth=1
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $s3, $a0
	or	$s7, $a0, $a2
	bge	$a1, $s7, .LBB28_48
# %bb.26:                               # %if.then.i.i158
                                        #   in Loop: Header=BB28_24 Depth=1
	beqz	$s7, .LBB28_33
# %bb.27:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB28_24 Depth=1
	slli.d	$a0, $s7, 2
.Ltmp27:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.28:                               # %call.i.i.i.i.noexc
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$s2, $a0
	ld.w	$a1, $sp, 108
	ld.d	$a0, $sp, 120
	blt	$a1, $s3, .LBB28_34
.LBB28_29:                              # %iter.check789
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$a2, $zero
	bltu	$a1, $s5, .LBB28_42
# %bb.30:                               # %iter.check789
                                        #   in Loop: Header=BB28_24 Depth=1
	sub.d	$a3, $s2, $a0
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB28_42
# %bb.31:                               # %vector.main.loop.iter.check791
                                        #   in Loop: Header=BB28_24 Depth=1
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB28_35
# %bb.32:                               #   in Loop: Header=BB28_24 Depth=1
	move	$a2, $zero
	b	.LBB28_39
.LBB28_33:                              #   in Loop: Header=BB28_24 Depth=1
	move	$s2, $zero
	ld.d	$a0, $sp, 120
	bge	$a1, $s3, .LBB28_29
.LBB28_34:                              # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
                                        #   in Loop: Header=BB28_24 Depth=1
	bnez	$a0, .LBB28_44
	b	.LBB28_47
.LBB28_35:                              # %vector.ph792
                                        #   in Loop: Header=BB28_24 Depth=1
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s2, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB28_36:                              # %vector.body795
                                        #   Parent Loop BB28_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB28_36
# %bb.37:                               # %middle.block800
                                        #   in Loop: Header=BB28_24 Depth=1
	beq	$a2, $a1, .LBB28_44
# %bb.38:                               # %vec.epilog.iter.check805
                                        #   in Loop: Header=BB28_24 Depth=1
	andi	$a3, $a1, 12
	beqz	$a3, .LBB28_42
.LBB28_39:                              # %vec.epilog.ph804
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a0, 2
	alsl.d	$a5, $a5, $s2, 2
	.p2align	4, , 16
.LBB28_40:                              # %vec.epilog.vector.body810
                                        #   Parent Loop BB28_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vst	$vr0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB28_40
# %bb.41:                               # %vec.epilog.middle.block814
                                        #   in Loop: Header=BB28_24 Depth=1
	beq	$a2, $a1, .LBB28_44
.LBB28_42:                              # %for.body.i.i.i.preheader
                                        #   in Loop: Header=BB28_24 Depth=1
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s2, 2
	.p2align	4, , 16
.LBB28_43:                              # %for.body.i.i.i
                                        #   Parent Loop BB28_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB28_43
.LBB28_44:                              # %if.then.i7.i.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.bu	$a1, $sp, 128
	bne	$a1, $s3, .LBB28_46
# %bb.45:                               # %if.then2.i.i.i
                                        #   in Loop: Header=BB28_24 Depth=1
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
.LBB28_46:                              # %if.end.i.i.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.w	$a1, $sp, 108
.LBB28_47:                              # %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB28_24 Depth=1
	st.b	$s3, $sp, 128
	st.d	$s2, $sp, 120
	st.w	$s7, $sp, 112
.LBB28_48:                              # %invoke.cont11
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.d	$a0, $sp, 120
	slli.d	$a1, $a1, 2
	stx.w	$s3, $a0, $a1
	ld.w	$a0, $sp, 108
	addi.d	$a0, $a0, 1
	bstrpick.d	$a1, $fp, 31, 0
	st.w	$a0, $sp, 108
	bne	$s8, $a1, .LBB28_22
# %bb.49:                               # %if.then.i169
                                        #   in Loop: Header=BB28_24 Depth=1
	sltui	$a0, $s8, 1
	slli.d	$a1, $s8, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$s7, $a0, $a1
	bstrpick.d	$a0, $s7, 31, 0
	bgeu	$s8, $a0, .LBB28_22
# %bb.50:                               # %if.then.i.i.i176
                                        #   in Loop: Header=BB28_24 Depth=1
	slli.d	$a0, $a0, 2
.Ltmp32:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.51:                               # %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i180
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$s2, $a0
	beqz	$s8, .LBB28_56
# %bb.52:                               # %iter.check756
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$a0, $zero
	bltu	$s8, $s5, .LBB28_65
# %bb.53:                               # %iter.check756
                                        #   in Loop: Header=BB28_24 Depth=1
	sub.d	$a1, $s2, $s4
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB28_65
# %bb.54:                               # %vector.main.loop.iter.check758
                                        #   in Loop: Header=BB28_24 Depth=1
	ori	$a0, $zero, 16
	bgeu	$s8, $a0, .LBB28_58
# %bb.55:                               #   in Loop: Header=BB28_24 Depth=1
	move	$a0, $zero
	b	.LBB28_62
.LBB28_56:                              # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i184
                                        #   in Loop: Header=BB28_24 Depth=1
	bnez	$s4, .LBB28_67
# %bb.57:                               #   in Loop: Header=BB28_24 Depth=1
	ori	$s7, $zero, 1
	b	.LBB28_23
.LBB28_58:                              # %vector.ph759
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$a1, $s8
	bstrins.d	$a1, $zero, 3, 0
	bstrpick.d	$a0, $s8, 62, 4
	slli.d	$a0, $a0, 4
	addi.d	$a2, $s4, 32
	addi.d	$a3, $s2, 32
	.p2align	4, , 16
.LBB28_59:                              # %vector.body762
                                        #   Parent Loop BB28_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a1, $a1, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a1, .LBB28_59
# %bb.60:                               # %middle.block767
                                        #   in Loop: Header=BB28_24 Depth=1
	beq	$s8, $a0, .LBB28_67
# %bb.61:                               # %vec.epilog.iter.check772
                                        #   in Loop: Header=BB28_24 Depth=1
	andi	$a1, $s8, 12
	beqz	$a1, .LBB28_65
.LBB28_62:                              # %vec.epilog.ph771
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$a1, $s8
	bstrins.d	$a1, $zero, 1, 0
	bstrpick.d	$a4, $s8, 62, 2
	sub.d	$a1, $a0, $a1
	alsl.d	$a2, $a0, $s4, 2
	alsl.d	$a3, $a0, $s2, 2
	slli.d	$a0, $a4, 2
	.p2align	4, , 16
.LBB28_63:                              # %vec.epilog.vector.body777
                                        #   Parent Loop BB28_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vst	$vr0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB28_63
# %bb.64:                               # %vec.epilog.middle.block781
                                        #   in Loop: Header=BB28_24 Depth=1
	beq	$s8, $a0, .LBB28_67
.LBB28_65:                              # %for.body.i.i.i197.preheader
                                        #   in Loop: Header=BB28_24 Depth=1
	alsl.d	$a1, $a0, $s4, 2
	alsl.d	$a2, $a0, $s2, 2
	.p2align	4, , 16
.LBB28_66:                              # %for.body.i.i.i197
                                        #   Parent Loop BB28_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	st.w	$a3, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bne	$s8, $a0, .LBB28_66
.LBB28_67:                              # %if.then2.i.i.i194
                                        #   in Loop: Header=BB28_24 Depth=1
.Ltmp34:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
	b	.LBB28_23
.LBB28_68:                              # %invoke.cont22
.Ltmp37:                                # EH_LABEL
	addi.d	$a3, $sp, 104
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.69:                               # %invoke.cont25
	move	$s4, $a0
	addi.w	$a0, $a0, 0
	addi.w	$s7, $zero, -1
	beq	$a0, $s7, .LBB28_125
# %bb.70:                               # %invoke.cont61
	move	$s3, $a1
	addi.w	$s5, $s4, 0
	alsl.d	$a0, $s5, $s0, 4
	slli.d	$a1, $s5, 4
	srai.d	$a3, $s4, 32
	alsl.d	$a2, $a3, $s0, 4
	slli.d	$a4, $a3, 4
	fldx.s	$fs7, $s0, $a1
	fldx.s	$fs6, $s0, $a4
	fld.s	$fa0, $a0, 4
	fst.s	$fa0, $sp, 52                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 4
	fst.s	$fa0, $sp, 48                   # 4-byte Folded Spill
	fld.s	$fa0, $a0, 8
	fst.s	$fa0, $sp, 44                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 8
	fst.s	$fa0, $sp, 40                   # 4-byte Folded Spill
	addi.w	$a1, $s3, 0
	alsl.d	$a0, $a1, $s0, 4
	slli.d	$a2, $a1, 4
	fldx.s	$fa0, $s0, $a2
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	fld.s	$fa0, $a0, 4
	fst.s	$fa0, $sp, 32                   # 4-byte Folded Spill
	fld.s	$fa0, $a0, 8
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	srai.d	$s8, $s3, 32
	alsl.d	$a0, $s8, $s0, 4
	slli.d	$a2, $s8, 4
	fldx.s	$fa0, $s0, $a2
	fst.s	$fa0, $sp, 24                   # 4-byte Folded Spill
	fld.s	$fa0, $a0, 4
	fst.s	$fa0, $sp, 20                   # 4-byte Folded Spill
	fld.s	$fa0, $a0, 8
	fst.s	$fa0, $sp, 16                   # 4-byte Folded Spill
.Ltmp40:                                # EH_LABEL
	move	$a0, $s1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	move	$a2, $s8
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN11HullLibrary16allocateTriangleEiii)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.71:                               # %invoke.cont73
	srli.d	$a1, $s3, 32
	ori	$a2, $zero, 2
	lu32i.d	$a2, 3
	st.d	$a2, $a0, 12
	ori	$a2, $zero, 1
	st.w	$a2, $a0, 20
.Ltmp43:                                # EH_LABEL
	addi.w	$fp, $a1, 0
	addi.w	$s3, $s3, 0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s5
	pcaddu18i	$ra, %call36(_ZN11HullLibrary16allocateTriangleEiii)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.72:                               # %invoke.cont86
	srli.d	$a1, $s4, 32
	ori	$a2, $zero, 3
	lu32i.d	$a2, 2
	st.d	$a2, $a0, 12
	st.w	$zero, $a0, 20
.Ltmp46:                                # EH_LABEL
	addi.w	$s4, $a1, 0
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN11HullLibrary16allocateTriangleEiii)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.73:                               # %invoke.cont100
	fst.s	$fs6, $sp, 12                   # 4-byte Folded Spill
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 12
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 20
.Ltmp49:                                # EH_LABEL
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s5
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZN11HullLibrary16allocateTriangleEiii)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.74:                               # %invoke.cont139
	ori	$s4, $zero, 1
	st.d	$s4, $a0, 12
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 20
	slli.d	$a0, $s8, 2
	stx.w	$s4, $s2, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	stx.w	$s4, $s2, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	stx.w	$s4, $s2, $a0
	slli.d	$a0, $s5, 2
	stx.w	$s4, $s2, $a0
	ld.w	$a0, $s1, 4
	blt	$a0, $s4, .LBB28_81
# %bb.75:                               # %for.body145.lr.ph
	move	$fp, $zero
	move	$s3, $zero
	lu12i.w	$s5, 260096
	movgr2fr.w	$fs6, $zero
	.p2align	4, , 16
.LBB28_76:                              # %for.body145
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 16
	ldx.d	$s8, $a0, $fp
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s8, 4
	alsl.d	$a2, $a0, $s0, 4
	slli.d	$a0, $a0, 4
	slli.d	$a3, $a1, 4
	ld.w	$a4, $s8, 8
	fldx.s	$fa0, $s0, $a3
	fldx.s	$fa1, $s0, $a0
	alsl.d	$a0, $a1, $s0, 4
	alsl.d	$a1, $a4, $s0, 4
	slli.d	$a3, $a4, 4
	fsub.s	$fa2, $fa0, $fa1
	fld.s	$fa1, $a0, 4
	fld.s	$fa3, $a2, 4
	fldx.s	$fa4, $s0, $a3
	fld.s	$fa5, $a0, 8
	fld.s	$fa6, $a2, 8
	fld.s	$fa7, $a1, 4
	fsub.s	$fa4, $fa4, $fa0
	fld.s	$fa0, $a1, 8
	fsub.s	$fa3, $fa1, $fa3
	fsub.s	$fa7, $fa7, $fa1
	fsub.s	$fa1, $fa5, $fa6
	fsub.s	$fa5, $fa0, $fa5
	fneg.s	$fa0, $fa7
	fmul.s	$fa0, $fa1, $fa0
	fmadd.s	$fa0, $fa3, $fa5, $fa0
	fneg.s	$fa5, $fa5
	fmul.s	$fa5, $fa2, $fa5
	fmadd.s	$fa1, $fa1, $fa4, $fa5
	fneg.s	$fa4, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa2, $fa2, $fa7, $fa3
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fcmp.ceq.s	$fcc0, $fa3, $fs6
	bceqz	$fcc0, .LBB28_78
# %bb.77:                               #   in Loop: Header=BB28_76 Depth=1
	move	$a1, $zero
	move	$a0, $s5
	b	.LBB28_79
	.p2align	4, , 16
.LBB28_78:                              # %if.end.i
                                        #   in Loop: Header=BB28_76 Depth=1
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
.LBB28_79:                              # %invoke.cont164
                                        #   in Loop: Header=BB28_76 Depth=1
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
.Ltmp52:                                # EH_LABEL
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 104
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.80:                               # %invoke.cont178
                                        #   in Loop: Header=BB28_76 Depth=1
	ld.w	$a1, $s8, 0
	st.w	$a0, $s8, 28
	alsl.d	$a2, $a0, $s0, 4
	slli.d	$a0, $a0, 4
	alsl.d	$a3, $a1, $s0, 4
	slli.d	$a1, $a1, 4
	fldx.s	$fa0, $s0, $a0
	fldx.s	$fa1, $s0, $a1
	fld.s	$fa2, $a2, 4
	fld.s	$fa3, $a3, 4
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fld.s	$fa2, $a2, 8
	fld.s	$fa3, $a3, 8
	fld.s	$fa4, $sp, 92
	fld.s	$fa5, $sp, 88
	fld.s	$fa6, $sp, 96
	fsub.s	$fa2, $fa2, $fa3
	fmul.s	$fa1, $fa1, $fa4
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fmadd.s	$fa0, $fa6, $fa2, $fa0
	fst.s	$fa0, $s8, 32
	ld.w	$a0, $s1, 4
	addi.d	$s3, $s3, 1
	addi.d	$fp, $fp, 8
	blt	$s3, $a0, .LBB28_76
.LBB28_81:                              # %for.end188
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	sltui	$a0, $a1, 1
	addi.w	$a1, $a1, -4
	lu12i.w	$a2, 244140
	ori	$a2, $a2, 2556
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	blt	$a0, $s4, .LBB28_126
# %bb.82:                               # %land.rhs.lr.ph
	fsub.s	$fa0, $fs5, $fs0
	fsub.s	$fa1, $fs4, $fs1
	fsub.s	$fa2, $fs3, $fs2
	fmul.s	$fa1, $fa1, $fa1
	pcalau12i	$a1, %pc_hi20(.LCPI28_0)
	fld.s	$fa3, $a1, %pc_lo12(.LCPI28_0)
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	fsqrt.s	$fa0, $fa0
	fmul.s	$fs0, $fa0, $fa3
	fld.s	$fa0, $sp, 12                   # 4-byte Folded Reload
	fadd.s	$fa0, $fs7, $fa0
	fld.s	$fa1, $sp, 52                   # 4-byte Folded Reload
	fld.s	$fa2, $sp, 48                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $sp, 44                   # 4-byte Folded Reload
	fld.s	$fa3, $sp, 40                   # 4-byte Folded Reload
	fadd.s	$fa2, $fa2, $fa3
	fld.s	$fa3, $sp, 36                   # 4-byte Folded Reload
	fadd.s	$fa0, $fa0, $fa3
	fld.s	$fa3, $sp, 32                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $sp, 28                   # 4-byte Folded Reload
	fadd.s	$fa2, $fa2, $fa3
	fld.s	$fa3, $sp, 24                   # 4-byte Folded Reload
	fadd.s	$fa0, $fa0, $fa3
	fld.s	$fa3, $sp, 20                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $sp, 16                   # 4-byte Folded Reload
	fadd.s	$fa2, $fa2, $fa3
	vldi	$vr3, -1200
	fmul.s	$fs1, $fa0, $fa3
	fmul.s	$fs2, $fa1, $fa3
	fmul.s	$fs3, $fa2, $fa3
	lu12i.w	$s5, 260096
	pcalau12i	$a1, %pc_hi20(.LCPI28_1)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI28_1)
	pcalau12i	$a1, %pc_hi20(.LCPI28_2)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI28_2)
	movgr2fr.w	$fs4, $zero
	fmul.s	$fs5, $fs0, $fa0
	fmul.s	$fa0, $fs0, $fs0
	fmul.s	$fs6, $fa0, $fa1
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	b	.LBB28_84
	.p2align	4, , 16
.LBB28_83:                              # %while.end377
                                        #   in Loop: Header=BB28_84 Depth=1
	ori	$s4, $zero, 1
	addi.w	$a0, $s8, -1
	bge	$s4, $s8, .LBB28_126
.LBB28_84:                              # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_87 Depth 2
                                        #     Child Loop BB28_95 Depth 2
                                        #     Child Loop BB28_105 Depth 2
                                        #     Child Loop BB28_117 Depth 2
	ld.wu	$a2, $s1, 4
	ld.d	$a3, $s1, 16
	move	$a1, $zero
	move	$s8, $a0
	b	.LBB28_87
	.p2align	4, , 16
.LBB28_85:                              # %if.then.i343
                                        #   in Loop: Header=BB28_87 Depth=2
	move	$a1, $a0
.LBB28_86:                              # %for.inc.i
                                        #   in Loop: Header=BB28_87 Depth=2
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	beqz	$a2, .LBB28_90
.LBB28_87:                              # %for.body.i
                                        #   Parent Loop BB28_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a3, 0
	beqz	$a1, .LBB28_85
# %bb.88:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB28_87 Depth=2
	beqz	$a0, .LBB28_86
# %bb.89:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB28_87 Depth=2
	fld.s	$fa0, $a1, 32
	fld.s	$fa1, $a0, 32
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB28_85
	b	.LBB28_86
	.p2align	4, , 16
.LBB28_90:                              # %invoke.cont191
                                        #   in Loop: Header=BB28_84 Depth=1
	fld.s	$fa0, $a1, 32
	fcmp.cule.s	$fcc0, $fa0, $fs0
	ori	$s4, $zero, 1
	bcnez	$fcc0, .LBB28_126
# %bb.91:                               # %invoke.cont191
                                        #   in Loop: Header=BB28_84 Depth=1
	beqz	$a1, .LBB28_126
# %bb.92:                               # %while.body
                                        #   in Loop: Header=BB28_84 Depth=1
	ld.w	$s3, $a1, 28
	slli.d	$a0, $s3, 2
	ori	$a1, $zero, 1
	stx.w	$a1, $s2, $a0
	ld.w	$fp, $s1, 4
	beqz	$fp, .LBB28_83
# %bb.93:                               # %while.body202.lr.ph
                                        #   in Loop: Header=BB28_84 Depth=1
	move	$s6, $s7
	move	$s7, $s8
	alsl.d	$s4, $s3, $s0, 4
	slli.d	$a0, $fp, 3
	addi.d	$s8, $a0, -8
	b	.LBB28_95
	.p2align	4, , 16
.LBB28_94:                              # %while.cond201.backedge
                                        #   in Loop: Header=BB28_95 Depth=2
	addi.d	$fp, $fp, -1
	addi.d	$s8, $s8, -8
	beqz	$fp, .LBB28_100
.LBB28_95:                              # %while.body202
                                        #   Parent Loop BB28_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 16
	ldx.d	$a1, $a0, $s8
	beqz	$a1, .LBB28_94
# %bb.96:                               # %if.end208
                                        #   in Loop: Header=BB28_95 Depth=2
	ld.w	$a0, $a1, 0
	ld.w	$a2, $a1, 4
	ld.w	$a3, $a1, 8
	alsl.d	$a4, $a0, $s0, 4
	slli.d	$a0, $a0, 4
	slli.d	$a5, $a2, 4
	fldx.s	$fa3, $s0, $a5
	fldx.s	$fa0, $s0, $a0
	alsl.d	$a0, $a2, $s0, 4
	alsl.d	$a2, $a3, $s0, 4
	slli.d	$a3, $a3, 4
	fsub.s	$fa6, $fa3, $fa0
	fld.s	$fa4, $a0, 4
	fld.s	$fa1, $a4, 4
	fldx.s	$fa5, $s0, $a3
	fld.s	$fa7, $a0, 8
	fld.s	$fa2, $a4, 8
	fld.s	$ft0, $a2, 4
	fsub.s	$fa3, $fa5, $fa3
	fld.s	$fa5, $a2, 8
	fsub.s	$ft1, $fa4, $fa1
	fsub.s	$ft0, $ft0, $fa4
	fsub.s	$ft2, $fa7, $fa2
	fsub.s	$fa5, $fa5, $fa7
	fneg.s	$fa4, $ft0
	fmul.s	$fa4, $ft2, $fa4
	fmadd.s	$fa4, $ft1, $fa5, $fa4
	fneg.s	$fa5, $fa5
	fmul.s	$fa5, $fa6, $fa5
	fmadd.s	$fa5, $ft2, $fa3, $fa5
	fneg.s	$fa3, $fa3
	fmul.s	$fa3, $ft1, $fa3
	fmadd.s	$fa6, $fa6, $ft0, $fa3
	fmul.s	$fa3, $fa5, $fa5
	fmadd.s	$fa3, $fa4, $fa4, $fa3
	fmadd.s	$fa7, $fa6, $fa6, $fa3
	movgr2fr.w	$fa3, $zero
	fcmp.ceq.s	$fcc0, $fa7, $fa3
	move	$a0, $s5
	bcnez	$fcc0, .LBB28_98
# %bb.97:                               # %if.end.i.i359
                                        #   in Loop: Header=BB28_95 Depth=2
	frsqrt.s	$fa3, $fa7
	fmul.s	$fa4, $fa4, $fa3
	fmul.s	$fa5, $fa5, $fa3
	fmul.s	$fa3, $fa6, $fa3
	movfr2gr.s	$a0, $fa4
	movfr2gr.s	$a2, $fa5
	bstrins.d	$a0, $a2, 63, 32
.LBB28_98:                              # %invoke.cont217
                                        #   in Loop: Header=BB28_95 Depth=2
	movgr2fr.w	$fa4, $a0
	srli.d	$a0, $a0, 32
	fld.s	$fa5, $s4, 0
	fld.s	$fa6, $s4, 4
	fld.s	$fa7, $s4, 8
	movgr2fr.w	$ft0, $a0
	fsub.s	$fa0, $fa5, $fa0
	fsub.s	$fa1, $fa6, $fa1
	fsub.s	$fa2, $fa7, $fa2
	fmul.s	$fa1, $fa1, $ft0
	fmadd.s	$fa0, $fa4, $fa0, $fa1
	fmadd.s	$fa0, $fa3, $fa2, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB28_94
# %bb.99:                               # %if.then220
                                        #   in Loop: Header=BB28_95 Depth=2
.Ltmp55:                                # EH_LABEL
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN11HullLibrary7extrudeEP14btHullTrianglei)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
	b	.LBB28_94
	.p2align	4, , 16
.LBB28_100:                             # %while.end
                                        #   in Loop: Header=BB28_84 Depth=1
	ld.w	$s4, $s1, 4
	move	$s8, $s7
	move	$s7, $s6
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	beqz	$s4, .LBB28_83
# %bb.101:                              # %while.body233.preheader
                                        #   in Loop: Header=BB28_84 Depth=1
	move	$a0, $s4
	b	.LBB28_105
	.p2align	4, , 16
.LBB28_102:                             # %if.then294
                                        #   in Loop: Header=BB28_105 Depth=2
	ld.w	$a0, $a2, 12
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $a1, $a0
.Ltmp58:                                # EH_LABEL
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN11HullLibrary7extrudeEP14btHullTrianglei)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.103:                              # %invoke.cont305
                                        #   in Loop: Header=BB28_105 Depth=2
	ld.w	$s4, $s1, 4
	move	$a0, $s4
.LBB28_104:                             # %while.cond230.backedge
                                        #   in Loop: Header=BB28_105 Depth=2
	beqz	$a0, .LBB28_113
.LBB28_105:                             # %while.body233
                                        #   Parent Loop BB28_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s1, 16
	addi.w	$a0, $a0, -1
	slli.d	$a2, $a0, 3
	ldx.d	$a2, $a1, $a2
	beqz	$a2, .LBB28_104
# %bb.106:                              # %invoke.cont243
                                        #   in Loop: Header=BB28_105 Depth=2
	ld.w	$a5, $a2, 0
	ld.w	$a4, $a2, 4
	ld.w	$a3, $a2, 8
	beq	$a5, $s3, .LBB28_109
# %bb.107:                              # %invoke.cont243
                                        #   in Loop: Header=BB28_105 Depth=2
	beq	$a4, $s3, .LBB28_109
# %bb.108:                              # %invoke.cont243
                                        #   in Loop: Header=BB28_105 Depth=2
	bne	$a3, $s3, .LBB28_113
.LBB28_109:                             # %if.end247
                                        #   in Loop: Header=BB28_105 Depth=2
	alsl.d	$a6, $a5, $s0, 4
	slli.d	$a5, $a5, 4
	slli.d	$a7, $a4, 4
	fldx.s	$fa3, $s0, $a7
	fldx.s	$fa0, $s0, $a5
	alsl.d	$a4, $a4, $s0, 4
	alsl.d	$a5, $a3, $s0, 4
	slli.d	$a3, $a3, 4
	fsub.s	$fa4, $fa3, $fa0
	fld.s	$fa5, $a4, 4
	fld.s	$fa1, $a6, 4
	fldx.s	$fa6, $s0, $a3
	fld.s	$fa7, $a4, 8
	fld.s	$fa2, $a6, 8
	fld.s	$ft0, $a5, 4
	fsub.s	$fa3, $fa6, $fa3
	fld.s	$fa6, $a5, 8
	fsub.s	$ft1, $fa5, $fa1
	fsub.s	$ft0, $ft0, $fa5
	fsub.s	$ft2, $fa7, $fa2
	fsub.s	$fa6, $fa6, $fa7
	fneg.s	$fa5, $ft0
	fmul.s	$fa5, $ft2, $fa5
	fmadd.s	$fa5, $ft1, $fa6, $fa5
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $fa4, $fa6
	fmadd.s	$fa6, $ft2, $fa3, $fa6
	fneg.s	$fa3, $fa3
	fmul.s	$fa3, $ft1, $fa3
	fmadd.s	$fa7, $fa4, $ft0, $fa3
	fmul.s	$fa3, $fa6, $fa6
	fmadd.s	$fa3, $fa5, $fa5, $fa3
	fmadd.s	$fa3, $fa7, $fa7, $fa3
	fcmp.ceq.s	$fcc0, $fa3, $fs4
	fmov.s	$fa4, $fs4
	move	$a3, $s5
	bcnez	$fcc0, .LBB28_111
# %bb.110:                              # %if.end.i.i410
                                        #   in Loop: Header=BB28_105 Depth=2
	frsqrt.s	$fa4, $fa3
	fmul.s	$fa5, $fa5, $fa4
	fmul.s	$fa6, $fa6, $fa4
	fmul.s	$fa4, $fa7, $fa4
	movfr2gr.s	$a3, $fa5
	movfr2gr.s	$a4, $fa6
	bstrins.d	$a3, $a4, 63, 32
.LBB28_111:                             # %invoke.cont253
                                        #   in Loop: Header=BB28_105 Depth=2
	movgr2fr.w	$fa5, $a3
	srli.d	$a3, $a3, 32
	movgr2fr.w	$fa6, $a3
	fsub.s	$fa0, $fs1, $fa0
	fsub.s	$fa1, $fs2, $fa1
	fsub.s	$fa2, $fs3, $fa2
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fmadd.s	$fa0, $fa4, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fs5, $fa0
	bcnez	$fcc0, .LBB28_102
# %bb.112:                              # %invoke.cont253
                                        #   in Loop: Header=BB28_105 Depth=2
	fsqrt.s	$fa0, $fa3
	fcmp.cule.s	$fcc0, $fs6, $fa0
	bcnez	$fcc0, .LBB28_104
	b	.LBB28_102
	.p2align	4, , 16
.LBB28_113:                             # %while.end312
                                        #   in Loop: Header=BB28_84 Depth=1
	beqz	$s4, .LBB28_83
# %bb.114:                              # %while.body319.preheader
                                        #   in Loop: Header=BB28_84 Depth=1
	slli.d	$a0, $s4, 3
	addi.d	$s3, $a0, -8
	b	.LBB28_117
	.p2align	4, , 16
.LBB28_115:                             # %invoke.cont367
                                        #   in Loop: Header=BB28_117 Depth=2
	ld.w	$a1, $fp, 0
	alsl.d	$a2, $a0, $s0, 4
	slli.d	$a0, $a0, 4
	alsl.d	$a3, $a1, $s0, 4
	slli.d	$a1, $a1, 4
	fldx.s	$fa0, $s0, $a0
	fldx.s	$fa1, $s0, $a1
	fld.s	$fa2, $a2, 4
	fld.s	$fa3, $a3, 4
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fld.s	$fa2, $a2, 8
	fld.s	$fa3, $a3, 8
	fld.s	$fa4, $sp, 92
	fld.s	$fa5, $sp, 88
	fld.s	$fa6, $sp, 96
	fsub.s	$fa2, $fa2, $fa3
	fmul.s	$fa1, $fa1, $fa4
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fmadd.s	$fa0, $fa6, $fa2, $fa0
	fst.s	$fa0, $fp, 32
.LBB28_116:                             # %cleanup
                                        #   in Loop: Header=BB28_117 Depth=2
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, -8
	beqz	$s4, .LBB28_83
.LBB28_117:                             # %while.body319
                                        #   Parent Loop BB28_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 16
	ldx.d	$fp, $a0, $s3
	beqz	$fp, .LBB28_116
# %bb.118:                              # %if.end327
                                        #   in Loop: Header=BB28_117 Depth=2
	ld.w	$a0, $fp, 28
	blt	$s7, $a0, .LBB28_83
# %bb.119:                              # %if.end331
                                        #   in Loop: Header=BB28_117 Depth=2
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	alsl.d	$a2, $a0, $s0, 4
	slli.d	$a0, $a0, 4
	slli.d	$a3, $a1, 4
	ld.w	$a4, $fp, 8
	fldx.s	$fa0, $s0, $a3
	fldx.s	$fa1, $s0, $a0
	alsl.d	$a0, $a1, $s0, 4
	alsl.d	$a1, $a4, $s0, 4
	slli.d	$a3, $a4, 4
	fsub.s	$fa2, $fa0, $fa1
	fld.s	$fa1, $a0, 4
	fld.s	$fa3, $a2, 4
	fldx.s	$fa4, $s0, $a3
	fld.s	$fa5, $a0, 8
	fld.s	$fa6, $a2, 8
	fld.s	$fa7, $a1, 4
	fsub.s	$fa4, $fa4, $fa0
	fld.s	$fa0, $a1, 8
	fsub.s	$fa3, $fa1, $fa3
	fsub.s	$fa7, $fa7, $fa1
	fsub.s	$fa1, $fa5, $fa6
	fsub.s	$fa5, $fa0, $fa5
	fneg.s	$fa0, $fa7
	fmul.s	$fa0, $fa1, $fa0
	fmadd.s	$fa0, $fa3, $fa5, $fa0
	fneg.s	$fa5, $fa5
	fmul.s	$fa5, $fa2, $fa5
	fmadd.s	$fa1, $fa1, $fa4, $fa5
	fneg.s	$fa4, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa2, $fa2, $fa7, $fa3
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fcmp.ceq.s	$fcc0, $fa3, $fs4
	bceqz	$fcc0, .LBB28_121
# %bb.120:                              #   in Loop: Header=BB28_117 Depth=2
	move	$a1, $zero
	move	$a0, $s5
	b	.LBB28_122
	.p2align	4, , 16
.LBB28_121:                             # %if.end.i508
                                        #   in Loop: Header=BB28_117 Depth=2
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
.LBB28_122:                             # %invoke.cont346
                                        #   in Loop: Header=BB28_117 Depth=2
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
.Ltmp61:                                # EH_LABEL
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 104
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.123:                              # %invoke.cont349
                                        #   in Loop: Header=BB28_117 Depth=2
	st.w	$a0, $fp, 28
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s2, $a1
	beqz	$a1, .LBB28_115
# %bb.124:                              # %if.then356
                                        #   in Loop: Header=BB28_117 Depth=2
	move	$a0, $s7
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 28
	b	.LBB28_116
.LBB28_125:
	move	$s4, $zero
.LBB28_126:                             # %cleanup394
	ld.d	$a0, $sp, 120
	beqz	$a0, .LBB28_129
# %bb.127:                              # %cleanup394
	ld.b	$a1, $sp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB28_129
# %bb.128:                              # %if.then2.i.i.i546
.Ltmp66:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
.LBB28_129:                             # %invoke.cont399
	beqz	$s2, .LBB28_131
# %bb.130:                              # %if.then2.i.i.i555
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB28_131:                             # %return
	move	$a0, $s4
	fld.d	$fs7, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB28_132:                             # %lpad5
.Ltmp68:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB28_150
.LBB28_133:                             # %lpad107
.Ltmp51:                                # EH_LABEL
	b	.LBB28_146
.LBB28_134:                             # %lpad93
.Ltmp48:                                # EH_LABEL
	b	.LBB28_146
.LBB28_135:                             # %lpad79
.Ltmp45:                                # EH_LABEL
	b	.LBB28_146
.LBB28_136:                             # %lpad66
.Ltmp42:                                # EH_LABEL
	b	.LBB28_146
.LBB28_137:                             # %lpad24
.Ltmp39:                                # EH_LABEL
	b	.LBB28_146
.LBB28_138:                             # %lpad7
.Ltmp26:                                # EH_LABEL
	b	.LBB28_146
.LBB28_139:                             # %lpad10
.Ltmp31:                                # EH_LABEL
	b	.LBB28_143
.LBB28_140:                             # %lpad151
.Ltmp54:                                # EH_LABEL
	b	.LBB28_146
.LBB28_141:                             # %lpad297
.Ltmp60:                                # EH_LABEL
	b	.LBB28_146
.LBB28_142:                             # %lpad13
.Ltmp36:                                # EH_LABEL
.LBB28_143:                             # %ehcleanup400
	move	$fp, $a0
	move	$s2, $s4
	b	.LBB28_147
.LBB28_144:                             # %lpad333
.Ltmp63:                                # EH_LABEL
	b	.LBB28_146
.LBB28_145:                             # %lpad211
.Ltmp57:                                # EH_LABEL
.LBB28_146:                             # %ehcleanup400
	move	$fp, $a0
.LBB28_147:                             # %ehcleanup400
	ld.d	$a0, $sp, 120
	beqz	$a0, .LBB28_150
# %bb.148:                              # %ehcleanup400
	ld.b	$a1, $sp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB28_150
# %bb.149:                              # %if.then2.i.i.i564
.Ltmp64:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
.LBB28_150:                             # %ehcleanup405
	beqz	$s2, .LBB28_152
# %bb.151:                              # %if.then2.i.i.i574
.Ltmp69:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
.LBB28_152:                             # %invoke.cont406
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB28_153:                             # %terminate.lpad
.Ltmp71:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN11HullLibrary11calchullgenEP9btVector3ii, .Lfunc_end28-_ZN11HullLibrary11calchullgenEP9btVector3ii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table28:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp22-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp22                #   Call between .Ltmp22 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp30-.Ltmp27                #   Call between .Ltmp27 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin1          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp35-.Ltmp32                #   Call between .Ltmp32 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin1          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin1          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin1          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin1          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin1          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin1          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin1          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin1          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin1          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp64-.Ltmp67                #   Call between .Ltmp67 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp70-.Ltmp64                #   Call between .Ltmp64 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin1          #     jumps to .Ltmp71
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp70-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Lfunc_end28-.Ltmp70           #   Call between .Ltmp70 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii # -- Begin function _ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii
	.p2align	2
	.type	_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii,@function
_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii: # @_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	move	$s0, $a4
	move	$fp, $a3
	move	$s6, $a0
	move	$a3, $a5
	pcaddu18i	$ra, %call36(_ZN11HullLibrary11calchullgenEP9btVector3ii)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_71
# %bb.1:                                # %for.cond.preheader
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $s6, 4
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB29_72
# %bb.2:                                # %for.body.lr.ph
	move	$s7, $zero
	move	$s3, $zero
	move	$s0, $zero
	move	$s5, $zero
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	b	.LBB29_4
	.p2align	4, , 16
.LBB29_3:                               #   in Loop: Header=BB29_4 Depth=1
	move	$s2, $s3
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB29_73
.LBB29_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_18 Depth 2
                                        #     Child Loop BB29_22 Depth 2
                                        #     Child Loop BB29_25 Depth 2
                                        #     Child Loop BB29_39 Depth 2
                                        #     Child Loop BB29_43 Depth 2
                                        #     Child Loop BB29_46 Depth 2
                                        #     Child Loop BB29_60 Depth 2
                                        #     Child Loop BB29_64 Depth 2
                                        #     Child Loop BB29_67 Depth 2
	ld.d	$a1, $s6, 16
	slli.d	$s8, $s7, 3
	ldx.d	$s4, $a1, $s8
	beqz	$s4, .LBB29_3
# %bb.5:                                # %for.body10.preheader
                                        #   in Loop: Header=BB29_4 Depth=1
	bne	$s5, $s0, .LBB29_14
# %bb.6:                                # %if.then.i
                                        #   in Loop: Header=BB29_4 Depth=1
	sltui	$a0, $s5, 1
	slli.w	$a1, $s5, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$s1, $a0, $a1
	bge	$s5, $s1, .LBB29_14
# %bb.7:                                # %if.then.i.i
                                        #   in Loop: Header=BB29_4 Depth=1
	beqz	$s1, .LBB29_15
# %bb.8:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB29_4 Depth=1
	slli.d	$a0, $s1, 2
.Ltmp72:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.9:                                #   in Loop: Header=BB29_4 Depth=1
	move	$s2, $a0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB29_16
.LBB29_10:                              # %iter.check231
                                        #   in Loop: Header=BB29_4 Depth=1
	move	$a0, $zero
	ori	$a1, $zero, 4
	bltu	$s5, $a1, .LBB29_24
# %bb.11:                               # %iter.check231
                                        #   in Loop: Header=BB29_4 Depth=1
	sub.d	$a1, $s2, $s3
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB29_24
# %bb.12:                               # %vector.main.loop.iter.check233
                                        #   in Loop: Header=BB29_4 Depth=1
	ori	$a0, $zero, 16
	bgeu	$s5, $a0, .LBB29_17
# %bb.13:                               #   in Loop: Header=BB29_4 Depth=1
	move	$a0, $zero
	b	.LBB29_21
	.p2align	4, , 16
.LBB29_14:                              #   in Loop: Header=BB29_4 Depth=1
	move	$s1, $s0
	move	$s2, $s3
	b	.LBB29_27
.LBB29_15:                              #   in Loop: Header=BB29_4 Depth=1
	move	$s2, $zero
	ori	$a0, $zero, 1
	bge	$s5, $a0, .LBB29_10
.LBB29_16:                              # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
                                        #   in Loop: Header=BB29_4 Depth=1
	bnez	$s3, .LBB29_26
	b	.LBB29_27
.LBB29_17:                              # %vector.ph234
                                        #   in Loop: Header=BB29_4 Depth=1
	bstrpick.d	$a0, $s5, 30, 4
	slli.d	$a0, $a0, 4
	addi.d	$a1, $s3, 32
	addi.d	$a2, $s2, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB29_18:                              # %vector.body237
                                        #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB29_18
# %bb.19:                               # %middle.block242
                                        #   in Loop: Header=BB29_4 Depth=1
	beq	$a0, $s5, .LBB29_26
# %bb.20:                               # %vec.epilog.iter.check247
                                        #   in Loop: Header=BB29_4 Depth=1
	andi	$a1, $s5, 12
	beqz	$a1, .LBB29_24
.LBB29_21:                              # %vec.epilog.ph246
                                        #   in Loop: Header=BB29_4 Depth=1
	move	$a3, $a0
	bstrpick.d	$a0, $s5, 30, 2
	slli.d	$a0, $a0, 2
	sub.d	$a1, $a3, $a0
	alsl.d	$a2, $a3, $s3, 2
	alsl.d	$a3, $a3, $s2, 2
	.p2align	4, , 16
.LBB29_22:                              # %vec.epilog.vector.body252
                                        #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vst	$vr0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB29_22
# %bb.23:                               # %vec.epilog.middle.block256
                                        #   in Loop: Header=BB29_4 Depth=1
	beq	$a0, $s5, .LBB29_26
.LBB29_24:                              # %for.body.i.i.i.preheader
                                        #   in Loop: Header=BB29_4 Depth=1
	sub.d	$a1, $s5, $a0
	alsl.d	$a2, $a0, $s3, 2
	alsl.d	$a0, $a0, $s2, 2
	.p2align	4, , 16
.LBB29_25:                              # %for.body.i.i.i
                                        #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB29_25
.LBB29_26:                              # %if.then2.i.i.i
                                        #   in Loop: Header=BB29_4 Depth=1
.Ltmp74:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
.LBB29_27:                              # %for.inc
                                        #   in Loop: Header=BB29_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	slli.d	$a1, $s5, 2
	ld.w	$a2, $s4, 0
	ldx.d	$s6, $a0, $s8
	addi.d	$fp, $s5, 1
	addi.w	$a0, $fp, 0
	stx.w	$a2, $s2, $a1
	bne	$s1, $a0, .LBB29_32
# %bb.28:                               # %if.then.i.1
                                        #   in Loop: Header=BB29_4 Depth=1
	sltui	$a0, $fp, 1
	slli.w	$a1, $fp, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$s4, $a0, $a1
	bge	$fp, $s4, .LBB29_32
# %bb.29:                               # %if.then.i.i.1
                                        #   in Loop: Header=BB29_4 Depth=1
	beqz	$s4, .LBB29_33
# %bb.30:                               # %if.then.i.i.i.1
                                        #   in Loop: Header=BB29_4 Depth=1
	slli.d	$a0, $s4, 2
.Ltmp76:                                # EH_LABEL
	ori	$a1, $zero, 16
	move	$s3, $s2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.31:                               #   in Loop: Header=BB29_4 Depth=1
	move	$s0, $a0
	bgez	$s5, .LBB29_34
	b	.LBB29_47
	.p2align	4, , 16
.LBB29_32:                              #   in Loop: Header=BB29_4 Depth=1
	move	$s4, $s1
	move	$s0, $s2
	b	.LBB29_48
.LBB29_33:                              #   in Loop: Header=BB29_4 Depth=1
	move	$s0, $zero
	bltz	$s5, .LBB29_47
.LBB29_34:                              # %iter.check197
                                        #   in Loop: Header=BB29_4 Depth=1
	move	$a0, $zero
	ori	$a1, $zero, 3
	bltu	$s5, $a1, .LBB29_45
# %bb.35:                               # %iter.check197
                                        #   in Loop: Header=BB29_4 Depth=1
	sub.d	$a1, $s0, $s2
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB29_45
# %bb.36:                               # %vector.main.loop.iter.check199
                                        #   in Loop: Header=BB29_4 Depth=1
	ori	$a0, $zero, 15
	bgeu	$s5, $a0, .LBB29_38
# %bb.37:                               #   in Loop: Header=BB29_4 Depth=1
	move	$a0, $zero
	b	.LBB29_42
.LBB29_38:                              # %vector.ph200
                                        #   in Loop: Header=BB29_4 Depth=1
	bstrpick.d	$a0, $fp, 31, 4
	slli.d	$a0, $a0, 4
	addi.d	$a1, $s2, 32
	addi.d	$a2, $s0, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB29_39:                              # %vector.body203
                                        #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB29_39
# %bb.40:                               # %middle.block208
                                        #   in Loop: Header=BB29_4 Depth=1
	beq	$fp, $a0, .LBB29_47
# %bb.41:                               # %vec.epilog.iter.check213
                                        #   in Loop: Header=BB29_4 Depth=1
	andi	$a1, $fp, 12
	beqz	$a1, .LBB29_45
.LBB29_42:                              # %vec.epilog.ph212
                                        #   in Loop: Header=BB29_4 Depth=1
	move	$a3, $a0
	bstrpick.d	$a0, $fp, 31, 2
	slli.d	$a0, $a0, 2
	sub.d	$a1, $a3, $a0
	alsl.d	$a2, $a3, $s2, 2
	alsl.d	$a3, $a3, $s0, 2
	.p2align	4, , 16
.LBB29_43:                              # %vec.epilog.vector.body218
                                        #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vst	$vr0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB29_43
# %bb.44:                               # %vec.epilog.middle.block222
                                        #   in Loop: Header=BB29_4 Depth=1
	beq	$fp, $a0, .LBB29_47
.LBB29_45:                              # %for.body.i.i.i.1.preheader
                                        #   in Loop: Header=BB29_4 Depth=1
	sub.d	$a1, $s5, $a0
	addi.d	$a1, $a1, 1
	alsl.d	$a2, $a0, $s2, 2
	alsl.d	$a0, $a0, $s0, 2
	.p2align	4, , 16
.LBB29_46:                              # %for.body.i.i.i.1
                                        #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB29_46
.LBB29_47:                              # %if.then2.i.i.i.1
                                        #   in Loop: Header=BB29_4 Depth=1
.Ltmp78:                                # EH_LABEL
	move	$s3, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
.LBB29_48:                              # %for.inc.1
                                        #   in Loop: Header=BB29_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	move	$s3, $s0
	slli.d	$a1, $fp, 2
	ld.w	$a2, $s6, 4
	ldx.d	$s1, $a0, $s8
	addi.d	$fp, $s5, 2
	addi.w	$a0, $fp, 0
	stx.w	$a2, $s0, $a1
	bne	$s4, $a0, .LBB29_53
# %bb.49:                               # %if.then.i.2
                                        #   in Loop: Header=BB29_4 Depth=1
	sltui	$a0, $fp, 1
	slli.w	$a1, $fp, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	bge	$fp, $s0, .LBB29_53
# %bb.50:                               # %if.then.i.i.2
                                        #   in Loop: Header=BB29_4 Depth=1
	beqz	$s0, .LBB29_54
# %bb.51:                               # %if.then.i.i.i.2
                                        #   in Loop: Header=BB29_4 Depth=1
	slli.d	$a0, $s0, 2
.Ltmp80:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.52:                               #   in Loop: Header=BB29_4 Depth=1
	move	$s2, $a0
	addi.w	$a0, $zero, -1
	bge	$s5, $a0, .LBB29_55
	b	.LBB29_68
	.p2align	4, , 16
.LBB29_53:                              #   in Loop: Header=BB29_4 Depth=1
	move	$s0, $s4
	move	$s2, $s3
	b	.LBB29_69
.LBB29_54:                              #   in Loop: Header=BB29_4 Depth=1
	move	$s2, $zero
	addi.w	$a0, $zero, -1
	blt	$s5, $a0, .LBB29_68
.LBB29_55:                              # %iter.check
                                        #   in Loop: Header=BB29_4 Depth=1
	move	$a0, $zero
	ori	$a1, $zero, 4
	bltu	$fp, $a1, .LBB29_66
# %bb.56:                               # %iter.check
                                        #   in Loop: Header=BB29_4 Depth=1
	sub.d	$a1, $s2, $s3
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB29_66
# %bb.57:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB29_4 Depth=1
	ori	$a0, $zero, 16
	bgeu	$fp, $a0, .LBB29_59
# %bb.58:                               #   in Loop: Header=BB29_4 Depth=1
	move	$a0, $zero
	b	.LBB29_63
.LBB29_59:                              # %vector.ph
                                        #   in Loop: Header=BB29_4 Depth=1
	move	$a0, $fp
	bstrins.d	$a0, $zero, 3, 0
	addi.d	$a1, $s3, 32
	addi.d	$a2, $s2, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB29_60:                              # %vector.body
                                        #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB29_60
# %bb.61:                               # %middle.block
                                        #   in Loop: Header=BB29_4 Depth=1
	beq	$fp, $a0, .LBB29_68
# %bb.62:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB29_4 Depth=1
	andi	$a1, $fp, 12
	beqz	$a1, .LBB29_66
.LBB29_63:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB29_4 Depth=1
	move	$a3, $a0
	move	$a0, $fp
	bstrins.d	$a0, $zero, 1, 0
	sub.d	$a1, $a3, $a0
	alsl.d	$a2, $a3, $s3, 2
	alsl.d	$a3, $a3, $s2, 2
	.p2align	4, , 16
.LBB29_64:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vst	$vr0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB29_64
# %bb.65:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB29_4 Depth=1
	beq	$fp, $a0, .LBB29_68
.LBB29_66:                              # %for.body.i.i.i.2.preheader
                                        #   in Loop: Header=BB29_4 Depth=1
	sub.d	$a1, $s5, $a0
	addi.d	$a1, $a1, 2
	alsl.d	$a2, $a0, $s3, 2
	alsl.d	$a0, $a0, $s2, 2
	.p2align	4, , 16
.LBB29_67:                              # %for.body.i.i.i.2
                                        #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB29_67
.LBB29_68:                              # %if.then2.i.i.i.2
                                        #   in Loop: Header=BB29_4 Depth=1
.Ltmp82:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
.LBB29_69:                              # %for.inc.2
                                        #   in Loop: Header=BB29_4 Depth=1
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $s6, 16
	ld.w	$a2, $s1, 8
	ldx.d	$a0, $a1, $s8
	slli.d	$a3, $fp, 2
	stx.w	$a2, $s2, $a3
	ld.w	$a2, $a0, 24
	slli.d	$a2, $a2, 3
	stx.d	$zero, $a1, $a2
.Ltmp85:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.70:                               # %for.inc.2.for.inc23_crit_edge
                                        #   in Loop: Header=BB29_4 Depth=1
	ld.w	$a0, $s6, 4
	addi.w	$s5, $s5, 3
	move	$s3, $s2
	addi.d	$s7, $s7, 1
	blt	$s7, $a0, .LBB29_4
	b	.LBB29_73
.LBB29_71:
	move	$fp, $zero
	b	.LBB29_122
.LBB29_72:
	move	$s5, $zero
	move	$s2, $zero
.LBB29_73:                              # %for.end25
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1366
	mul.d	$a0, $s5, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.w	$s3, $fp, 4
	bge	$s3, $s5, .LBB29_99
# %bb.74:                               # %if.then5.i
	ld.w	$a0, $fp, 8
	bge	$a0, $s5, .LBB29_82
# %bb.75:                               # %if.then.i.i33
	beqz	$s5, .LBB29_83
# %bb.76:                               # %if.then.i.i.i35
	slli.d	$a0, $s5, 2
.Ltmp88:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.77:                               # %call.i.i.i.i.noexc56
	move	$s1, $a0
	ld.w	$a1, $fp, 4
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB29_84
.LBB29_78:                              # %iter.check264
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB29_93
# %bb.79:                               # %iter.check264
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB29_93
# %bb.80:                               # %vector.main.loop.iter.check266
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB29_86
# %bb.81:
	move	$a2, $zero
	b	.LBB29_90
.LBB29_82:                              # %if.then5.i.for.body10.lr.ph.i_crit_edge
	ld.d	$s1, $fp, 16
	b	.LBB29_98
.LBB29_83:
	move	$s1, $zero
	move	$a1, $s3
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 1
	bge	$a1, $a2, .LBB29_78
.LBB29_84:                              # %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i
	beqz	$a0, .LBB29_97
# %bb.85:                               # %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	bnez	$a1, .LBB29_96
	b	.LBB29_97
.LBB29_86:                              # %vector.ph267
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s1, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB29_87:                              # %vector.body270
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB29_87
# %bb.88:                               # %middle.block275
	beq	$a2, $a1, .LBB29_95
# %bb.89:                               # %vec.epilog.iter.check280
	andi	$a3, $a1, 12
	beqz	$a3, .LBB29_93
.LBB29_90:                              # %vec.epilog.ph279
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a0, 2
	alsl.d	$a5, $a5, $s1, 2
	.p2align	4, , 16
.LBB29_91:                              # %vec.epilog.vector.body285
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB29_91
# %bb.92:                               # %vec.epilog.middle.block289
	beq	$a2, $a1, .LBB29_95
.LBB29_93:                              # %for.body.i.i.i49.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s1, 2
	.p2align	4, , 16
.LBB29_94:                              # %for.body.i.i.i49
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB29_94
.LBB29_95:                              # %if.then.i7.i.i55
	ld.bu	$a1, $fp, 24
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB29_97
.LBB29_96:                              # %if.then2.i.i.i46
.Ltmp90:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
.LBB29_97:                              # %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$s1, $fp, 16
	st.w	$s5, $fp, 8
.LBB29_98:                              # %for.body10.lr.ph.i
	alsl.d	$a0, $s3, $s1, 2
	sub.d	$a1, $s5, $s3
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_99:                              # %invoke.cont31
	ori	$a0, $zero, 1
	st.w	$s5, $fp, 4
	blt	$s5, $a0, .LBB29_113
# %bb.100:                              # %iter.check297
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s5, $a2, .LBB29_111
# %bb.101:                              # %iter.check297
	sub.d	$a2, $a0, $s2
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB29_111
# %bb.102:                              # %vector.main.loop.iter.check299
	ori	$a1, $zero, 16
	bgeu	$s5, $a1, .LBB29_104
# %bb.103:
	move	$a1, $zero
	b	.LBB29_108
.LBB29_104:                             # %vector.ph300
	bstrpick.d	$a1, $s5, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $a0, 32
	addi.d	$a3, $s2, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB29_105:                             # %vector.body303
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB29_105
# %bb.106:                              # %middle.block308
	beq	$a1, $s5, .LBB29_113
# %bb.107:                              # %vec.epilog.iter.check313
	andi	$a2, $s5, 12
	beqz	$a2, .LBB29_111
.LBB29_108:                             # %vec.epilog.ph312
	move	$a4, $a1
	bstrpick.d	$a1, $s5, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $a0, 2
	alsl.d	$a4, $a4, $s2, 2
	.p2align	4, , 16
.LBB29_109:                             # %vec.epilog.vector.body318
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB29_109
# %bb.110:                              # %vec.epilog.middle.block322
	beq	$a1, $s5, .LBB29_113
.LBB29_111:                             # %for.body36.preheader
	alsl.d	$a0, $a1, $a0, 2
	alsl.d	$a2, $a1, $s2, 2
	sub.d	$a1, $s5, $a1
	.p2align	4, , 16
.LBB29_112:                             # %for.body36
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB29_112
.LBB29_113:                             # %for.end43
	ld.w	$fp, $s6, 4
	addi.w	$a1, $zero, -1
	blt	$a1, $fp, .LBB29_120
# %bb.114:                              # %if.then5.i68
	ld.w	$a2, $s6, 8
	ld.d	$a0, $s6, 16
	blt	$a1, $a2, .LBB29_119
# %bb.115:                              # %_ZNK20btAlignedObjectArrayIP14btHullTriangleE4copyEiiPS1_.exit.i.i
	beqz	$a0, .LBB29_118
# %bb.116:                              # %_ZNK20btAlignedObjectArrayIP14btHullTriangleE4copyEiiPS1_.exit.i.i
	ld.b	$a1, $s6, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB29_118
# %bb.117:                              # %if.then2.i.i.i88
.Ltmp93:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
.LBB29_118:                             # %_ZN20btAlignedObjectArrayIP14btHullTriangleE10deallocateEv.exit.i.i
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $s6, 24
	st.d	$zero, $s6, 16
	st.w	$zero, $s6, 8
.LBB29_119:                             # %for.body10.lr.ph.i71
	slli.d	$a1, $fp, 3
	alsl.d	$a0, $fp, $a0, 3
	sub.d	$a2, $zero, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_120:                             # %invoke.cont47
	st.w	$zero, $s6, 4
	ori	$fp, $zero, 1
	beqz	$s2, .LBB29_122
# %bb.121:                              # %if.then2.i.i.i107
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB29_122:                             # %cleanup
	move	$a0, $fp
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
.LBB29_123:                             # %lpad46
.Ltmp95:                                # EH_LABEL
	b	.LBB29_125
.LBB29_124:                             # %lpad30
.Ltmp92:                                # EH_LABEL
.LBB29_125:                             # %ehcleanup
	move	$fp, $a0
	b	.LBB29_128
.LBB29_126:                             # %ehcleanup.thread
.Ltmp87:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB29_129
.LBB29_127:                             # %lpad12
.Ltmp84:                                # EH_LABEL
	move	$fp, $a0
	move	$s2, $s3
.LBB29_128:                             # %ehcleanup
	beqz	$s2, .LBB29_130
.LBB29_129:                             # %if.then2.i.i.i115
.Ltmp96:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
.LBB29_130:                             # %invoke.cont49
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB29_131:                             # %terminate.lpad
.Ltmp98:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii, .Lfunc_end29-_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table29:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp72-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp83-.Ltmp72                #   Call between .Ltmp72 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin2          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin2          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp91-.Ltmp88                #   Call between .Ltmp88 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin2          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp93-.Ltmp91                #   Call between .Ltmp91 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin2          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp96-.Ltmp94                #   Call between .Ltmp94 and .Ltmp96
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin2          #     jumps to .Ltmp98
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp97-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Lfunc_end29-.Ltmp97           #   Call between .Ltmp97 and .Lfunc_end29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN11HullLibrary11ComputeHullEjPK9btVector3R11PHullResultj # -- Begin function _ZN11HullLibrary11ComputeHullEjPK9btVector3R11PHullResultj
	.p2align	2
	.type	_ZN11HullLibrary11ComputeHullEjPK9btVector3R11PHullResultj,@function
_ZN11HullLibrary11ComputeHullEjPK9btVector3R11PHullResultj: # @_ZN11HullLibrary11ComputeHullEjPK9btVector3R11PHullResultj
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$a5, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	addi.d	$a3, $a3, 24
	addi.d	$a4, $sp, 12
	move	$a1, $a2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_2
# %bb.1:                                # %if.end
	ld.w	$a1, $sp, 12
	alsl.d	$a2, $a1, $a1, 1
	st.w	$a2, $fp, 4
	st.w	$a1, $fp, 8
	st.d	$s0, $fp, 16
	st.w	$s1, $fp, 0
.LBB30_2:                               # %cleanup
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end30:
	.size	_ZN11HullLibrary11ComputeHullEjPK9btVector3R11PHullResultj, .Lfunc_end30-_ZN11HullLibrary11ComputeHullEjPK9btVector3R11PHullResultj
	.cfi_endproc
                                        # -- End function
	.globl	_Z11ReleaseHullR11PHullResult   # -- Begin function _Z11ReleaseHullR11PHullResult
	.p2align	5
	.type	_Z11ReleaseHullR11PHullResult,@function
_Z11ReleaseHullR11PHullResult:          # @_Z11ReleaseHullR11PHullResult
	.cfi_startproc
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 28
	beqz	$a1, .LBB31_5
# %bb.1:                                # %if.then
	ld.d	$a1, $a0, 40
	beqz	$a1, .LBB31_4
# %bb.2:                                # %if.then
	ld.b	$a2, $a0, 48
	andi	$a2, $a2, 1
	beqz	$a2, .LBB31_4
# %bb.3:                                # %if.then2.i.i
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB31_4:                               # %_ZN20btAlignedObjectArrayIjE5clearEv.exit
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 48
	st.d	$zero, $a0, 40
	st.d	$zero, $a0, 28
.LBB31_5:                               # %if.end
	st.d	$zero, $a0, 0
	st.d	$zero, $a0, 16
	ret
.Lfunc_end31:
	.size	_Z11ReleaseHullR11PHullResult, .Lfunc_end31-_Z11ReleaseHullR11PHullResult
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult # -- Begin function _ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult
	.p2align	2
	.type	_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult,@function
_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult: # @_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %invoke.cont
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	move	$s1, $a2
	move	$s0, $a1
	move	$s5, $a0
	ori	$a2, $zero, 1
	st.b	$a2, $sp, 88
	st.d	$zero, $sp, 80
	st.d	$zero, $sp, 68
	ld.w	$a1, $a1, 4
	st.d	$zero, $sp, 40
	st.w	$zero, $sp, 48
	ori	$a0, $zero, 8
	sltu	$a3, $a0, $a1
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a0, $a3, $a0
	st.d	$zero, $sp, 56
	blt	$a0, $a2, .LBB32_3
# %bb.1:                                # %if.then.i.i
	slli.d	$a0, $a0, 4
.Ltmp99:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.2:                                # %for.body10.lr.ph.i
	move	$fp, $a0
	ld.w	$a1, $s0, 4
	b	.LBB32_4
.LBB32_3:
	move	$fp, $zero
.LBB32_4:                               # %invoke.cont4
	ld.d	$a2, $s0, 8
	ld.w	$a3, $s0, 16
	fld.s	$fa0, $s0, 20
.Ltmp102:                               # EH_LABEL
	addi.d	$a4, $sp, 20
	addi.d	$a6, $sp, 24
	move	$a0, $s5
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.5:                                # %invoke.cont10
	ori	$s2, $zero, 1
	beqz	$a0, .LBB32_112
# %bb.6:                                # %for.cond.preheader
	ld.w	$s6, $sp, 20
	beqz	$s6, .LBB32_9
# %bb.7:                                # %for.body.lr.ph
	fld.s	$fa0, $sp, 24
	fld.s	$fa1, $sp, 28
	fld.s	$fa2, $sp, 32
	move	$a0, $zero
	.p2align	4, , 16
.LBB32_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a1, $a0, 4
	fldx.s	$fa3, $fp, $a1
	alsl.d	$a2, $a0, $fp, 4
	fld.s	$fa4, $a2, 4
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa5, $a2, 8
	fstx.s	$fa3, $fp, $a1
	fmul.s	$fa3, $fa1, $fa4
	fst.s	$fa3, $a2, 4
	fmul.s	$fa3, $fa2, $fa5
	addi.w	$a0, $a0, 1
	fst.s	$fa3, $a2, 8
	bne	$s6, $a0, .LBB32_8
.LBB32_9:                               # %for.cond.cleanup
	ld.w	$a5, $s0, 24
	addi.d	$a3, $sp, 64
.Ltmp104:                               # EH_LABEL
	addi.d	$a4, $sp, 100
	move	$a0, $s5
	move	$a1, $fp
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.10:                               # %call.i.noexc
	beqz	$a0, .LBB32_112
# %bb.11:                               # %invoke.cont44
	ld.w	$s7, $sp, 100
	alsl.d	$a0, $s7, $s7, 1
	st.w	$a0, $sp, 44
	st.w	$s7, $sp, 48
	st.d	$fp, $sp, 56
	ori	$a0, $zero, 1
	st.w	$s6, $sp, 40
	blt	$s6, $a0, .LBB32_14
# %bb.12:                               # %if.then.i.i.i
	slli.d	$a0, $s6, 4
.Ltmp107:                               # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.13:
	move	$s2, $a0
	b	.LBB32_15
.LBB32_14:
	move	$s2, $zero
.LBB32_15:                              # %invoke.cont49
	ld.d	$s3, $sp, 80
	alsl.w	$s4, $s7, $s7, 1
.Ltmp110:                               # EH_LABEL
	addi.d	$a4, $sp, 20
	move	$a0, $s5
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s2
	move	$a5, $s3
	move	$a6, $s4
	pcaddu18i	$ra, %call36(_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.16:                               # %invoke.cont57
	ld.bu	$a0, $s0, 0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB32_22
# %bb.17:                               # %if.else114
	ld.wu	$s5, $sp, 20
	ld.w	$a0, $s1, 12
	ori	$a1, $zero, 1
	st.b	$a1, $s1, 0
	addi.w	$s6, $s5, 0
	st.w	$s5, $s1, 4
	bge	$a0, $s6, .LBB32_35
# %bb.18:                               # %if.then5.i216
	ld.w	$a1, $s1, 16
	bge	$a1, $s6, .LBB32_35
# %bb.19:                               # %if.then.i.i227
	beqz	$s6, .LBB32_27
# %bb.20:                               # %if.then.i.i.i229
	slli.d	$a0, $s6, 4
.Ltmp123:                               # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.21:                               # %call.i.i.i.i.noexc253
	move	$s4, $a0
	ld.w	$a0, $s1, 12
	b	.LBB32_28
.LBB32_22:                              # %if.then60
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $s3
	ld.wu	$s6, $sp, 20
	ld.w	$a0, $s1, 12
	st.b	$zero, $s1, 0
	addi.w	$s3, $s6, 0
	st.w	$s6, $s1, 4
	bge	$a0, $s3, .LBB32_53
# %bb.23:                               # %if.then5.i121
	ld.w	$a1, $s1, 16
	bge	$a1, $s3, .LBB32_53
# %bb.24:                               # %if.then.i.i132
	beqz	$s3, .LBB32_45
# %bb.25:                               # %if.then.i.i.i134
	slli.d	$a0, $s3, 4
.Ltmp113:                               # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.26:                               # %call.i.i.i.i.noexc158
	move	$s5, $a0
	ld.w	$a0, $s1, 12
	b	.LBB32_46
.LBB32_27:
	move	$s4, $zero
.LBB32_28:                              # %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i233
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB32_31
# %bb.29:                               # %for.body.lr.ph.i.i.i244
	move	$a1, $zero
	slli.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB32_30:                              # %for.body.i.i.i247
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s1, 24
	vldx	$vr0, $a2, $a1
	vstx	$vr0, $s4, $a1
	addi.d	$a1, $a1, 16
	bne	$a0, $a1, .LBB32_30
.LBB32_31:                              # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i236
	ld.d	$a0, $s1, 24
	beqz	$a0, .LBB32_34
# %bb.32:                               # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i236
	ld.b	$a1, $s1, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB32_34
# %bb.33:                               # %if.then2.i.i.i243
.Ltmp125:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
.LBB32_34:                              # %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i242
	ori	$a0, $zero, 1
	st.b	$a0, $s1, 32
	st.d	$s4, $s1, 24
	st.w	$s6, $s1, 16
.LBB32_35:                              # %invoke.cont121
	ld.w	$s8, $s1, 52
	st.w	$s6, $s1, 12
	st.w	$s7, $s1, 40
	slli.w	$s6, $s7, 2
	st.w	$s6, $s1, 44
	bge	$s8, $s6, .LBB32_82
# %bb.36:                               # %if.then5.i259
	ld.w	$a0, $s1, 56
	bge	$a0, $s6, .LBB32_44
# %bb.37:                               # %if.then.i.i271
	beqz	$s6, .LBB32_63
# %bb.38:                               # %if.then.i.i.i273
	slli.d	$a0, $s6, 2
.Ltmp128:                               # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.39:                               # %call.i.i.i.i.noexc301
	move	$s4, $a0
	ld.w	$a1, $s1, 52
	ld.d	$a0, $s1, 64
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB32_64
.LBB32_40:                              # %iter.check468
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB32_76
# %bb.41:                               # %iter.check468
	sub.d	$a3, $s4, $a0
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB32_76
# %bb.42:                               # %vector.main.loop.iter.check470
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB32_69
# %bb.43:
	move	$a2, $zero
	b	.LBB32_73
.LBB32_44:                              # %if.then5.i259.for.body10.lr.ph.i262_crit_edge
	ld.d	$s4, $s1, 64
	b	.LBB32_81
.LBB32_45:
	move	$s5, $zero
.LBB32_46:                              # %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i138
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB32_49
# %bb.47:                               # %for.body.lr.ph.i.i.i149
	move	$a1, $zero
	slli.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB32_48:                              # %for.body.i.i.i152
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s1, 24
	vldx	$vr0, $a2, $a1
	vstx	$vr0, $s5, $a1
	addi.d	$a1, $a1, 16
	bne	$a0, $a1, .LBB32_48
.LBB32_49:                              # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i141
	ld.d	$a0, $s1, 24
	beqz	$a0, .LBB32_52
# %bb.50:                               # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i141
	ld.b	$a1, $s1, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB32_52
# %bb.51:                               # %if.then2.i.i.i148
.Ltmp115:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
.LBB32_52:                              # %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i147
	ori	$a0, $zero, 1
	st.b	$a0, $s1, 32
	st.d	$s5, $s1, 24
	st.w	$s3, $s1, 16
.LBB32_53:                              # %invoke.cont64
	ld.w	$s8, $s1, 52
	st.w	$s3, $s1, 12
	st.w	$s7, $s1, 40
	st.w	$s4, $s1, 44
	move	$s3, $s2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	bge	$s8, $s4, .LBB32_101
# %bb.54:                               # %if.then5.i164
	ld.w	$a0, $s1, 56
	bge	$a0, $s4, .LBB32_62
# %bb.55:                               # %if.then.i.i175
	beqz	$s7, .LBB32_66
# %bb.56:                               # %if.then.i.i.i177
	slli.d	$a0, $s4, 2
.Ltmp118:                               # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.57:                               # %call.i.i.i.i.noexc197
	move	$s5, $a0
	ld.w	$a1, $s1, 52
	ld.d	$a0, $s1, 64
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB32_67
.LBB32_58:                              # %iter.check
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB32_95
# %bb.59:                               # %iter.check
	sub.d	$a3, $s5, $a0
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB32_95
# %bb.60:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB32_88
# %bb.61:
	move	$a2, $zero
	b	.LBB32_92
.LBB32_62:                              # %if.then5.i164.for.body10.lr.ph.i167_crit_edge
	ld.d	$s5, $s1, 64
	b	.LBB32_100
.LBB32_63:
	move	$s4, $zero
	move	$a1, $s8
	ld.d	$a0, $s1, 64
	ori	$a2, $zero, 1
	bge	$a1, $a2, .LBB32_40
.LBB32_64:                              # %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i281
	beqz	$a0, .LBB32_80
# %bb.65:                               # %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i281
	ld.b	$a1, $s1, 72
	andi	$a1, $a1, 1
	bnez	$a1, .LBB32_79
	b	.LBB32_80
.LBB32_66:
	move	$s5, $zero
	move	$a1, $s8
	ld.d	$a0, $s1, 64
	ori	$a2, $zero, 1
	bge	$a1, $a2, .LBB32_58
.LBB32_67:                              # %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i
	beqz	$a0, .LBB32_99
# %bb.68:                               # %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i
	ld.b	$a1, $s1, 72
	andi	$a1, $a1, 1
	bnez	$a1, .LBB32_98
	b	.LBB32_99
.LBB32_69:                              # %vector.ph471
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s4, 32
	move	$a5, $a2
.LBB32_70:                              # %vector.body474
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB32_70
# %bb.71:                               # %middle.block479
	beq	$a2, $a1, .LBB32_78
# %bb.72:                               # %vec.epilog.iter.check484
	andi	$a3, $a1, 12
	beqz	$a3, .LBB32_76
.LBB32_73:                              # %vec.epilog.ph483
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a0, 2
	alsl.d	$a5, $a5, $s4, 2
	.p2align	4, , 16
.LBB32_74:                              # %vec.epilog.vector.body489
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB32_74
# %bb.75:                               # %vec.epilog.middle.block493
	beq	$a2, $a1, .LBB32_78
.LBB32_76:                              # %for.body.i.i.i291.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s4, 2
	.p2align	4, , 16
.LBB32_77:                              # %for.body.i.i.i291
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB32_77
.LBB32_78:                              # %if.then.i7.i.i297
	ld.bu	$a1, $s1, 72
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB32_80
.LBB32_79:                              # %if.then2.i.i.i288
.Ltmp130:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
.LBB32_80:                              # %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i286
	ori	$a0, $zero, 1
	st.b	$a0, $s1, 72
	st.d	$s4, $s1, 64
	st.w	$s6, $s1, 56
.LBB32_81:                              # %for.body10.lr.ph.i262
	alsl.d	$a0, $s8, $s4, 2
	sub.d	$a1, $s6, $s8
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB32_82:                              # %invoke.cont132
	ld.d	$a0, $s1, 24
	st.w	$s6, $s1, 52
	slli.d	$a2, $s5, 4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB32_106
# %bb.83:                               # %for.body156.preheader
	ld.d	$a0, $s1, 64
	addi.d	$a0, $a0, 8
	ori	$a1, $zero, 3
	move	$a2, $s3
	b	.LBB32_86
	.p2align	4, , 16
.LBB32_84:                              # %if.else168
                                        #   in Loop: Header=BB32_86 Depth=1
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, -4
	ld.w	$a3, $a2, 4
	st.w	$a3, $a0, 0
	addi.d	$a3, $a2, 8
.LBB32_85:                              # %if.end175
                                        #   in Loop: Header=BB32_86 Depth=1
	ld.w	$a3, $a3, 0
	st.w	$a3, $a0, 4
	addi.d	$a2, $a2, 12
	addi.w	$s7, $s7, -1
	addi.d	$a0, $a0, 16
	beqz	$s7, .LBB32_106
.LBB32_86:                              # %for.body156
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a0, -8
	ld.bu	$a3, $s0, 0
	andi	$a3, $a3, 2
	beqz	$a3, .LBB32_84
# %bb.87:                               # %if.then161
                                        #   in Loop: Header=BB32_86 Depth=1
	ld.w	$a3, $a2, 8
	st.w	$a3, $a0, -4
	ld.w	$a3, $a2, 4
	st.w	$a3, $a0, 0
	move	$a3, $a2
	b	.LBB32_85
.LBB32_88:                              # %vector.ph
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s5, 32
	move	$a5, $a2
.LBB32_89:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB32_89
# %bb.90:                               # %middle.block
	beq	$a2, $a1, .LBB32_97
# %bb.91:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 12
	beqz	$a3, .LBB32_95
.LBB32_92:                              # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a0, 2
	alsl.d	$a5, $a5, $s5, 2
	.p2align	4, , 16
.LBB32_93:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB32_93
# %bb.94:                               # %vec.epilog.middle.block
	beq	$a2, $a1, .LBB32_97
.LBB32_95:                              # %for.body.i.i.i191.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s5, 2
	.p2align	4, , 16
.LBB32_96:                              # %for.body.i.i.i191
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB32_96
.LBB32_97:                              # %if.then.i7.i.i
	ld.bu	$a1, $s1, 72
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB32_99
.LBB32_98:                              # %if.then2.i.i.i188
.Ltmp120:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
.LBB32_99:                              # %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s1, 72
	st.d	$s5, $s1, 64
	st.w	$s4, $s1, 56
.LBB32_100:                             # %for.body10.lr.ph.i167
	alsl.d	$a0, $s8, $s5, 2
	sub.d	$a1, $s4, $s8
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB32_101:                             # %invoke.cont70
	ld.d	$a0, $s1, 24
	st.w	$s4, $s1, 52
	slli.d	$a2, $s6, 4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	andi	$a0, $a0, 2
	bnez	$a0, .LBB32_103
# %bb.102:                              # %if.else
	ld.d	$a0, $s1, 64
	bstrpick.d	$a1, $s4, 31, 0
	slli.d	$a2, $a1, 2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB32_106
.LBB32_103:                             # %if.then79
	beqz	$s7, .LBB32_106
# %bb.104:                              # %for.body93.preheader
	ld.d	$a0, $s1, 64
	addi.d	$a1, $s3, 8
	.p2align	4, , 16
.LBB32_105:                             # %for.body93
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 0
	ld.w	$a2, $a1, -4
	st.w	$a2, $a0, 4
	ld.w	$a2, $a1, -8
	st.w	$a2, $a0, 8
	addi.d	$a0, $a0, 12
	addi.w	$s7, $s7, -1
	addi.d	$a1, $a1, 12
	bnez	$s7, .LBB32_105
.LBB32_106:                             # %if.end184
	ld.w	$a0, $sp, 68
	beqz	$a0, .LBB32_110
# %bb.107:                              # %if.then.i
	ld.bu	$a0, $sp, 88
	ori	$s0, $zero, 1
	bne	$a0, $s0, .LBB32_109
# %bb.108:                              # %if.then2.i.i.i326
.Ltmp133:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
.LBB32_109:                             # %_ZN20btAlignedObjectArrayIjE5clearEv.exit.i
	st.b	$s0, $sp, 88
	st.d	$zero, $sp, 80
.LBB32_110:                             # %if.then2.i.i.i335
.Ltmp138:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.111:
	move	$s2, $zero
.LBB32_112:                             # %if.then2.i.i.i354
.Ltmp143:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.113:                              # %invoke.cont195
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB32_116
# %bb.114:                              # %invoke.cont195
	ld.b	$a1, $sp, 88
	andi	$a1, $a1, 1
	beqz	$a1, .LBB32_116
# %bb.115:                              # %if.then2.i.i.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB32_116:                             # %_ZN11PHullResultD2Ev.exit
	move	$a0, $s2
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB32_117:                             # %lpad69
.Ltmp122:                               # EH_LABEL
	b	.LBB32_126
.LBB32_118:                             # %lpad131
.Ltmp132:                               # EH_LABEL
	b	.LBB32_125
.LBB32_119:                             # %lpad62
.Ltmp117:                               # EH_LABEL
	b	.LBB32_126
.LBB32_120:                             # %lpad119
.Ltmp127:                               # EH_LABEL
	b	.LBB32_125
.LBB32_121:                             # %ehcleanup187
.Ltmp135:                               # EH_LABEL
	b	.LBB32_125
.LBB32_122:                             # %ehcleanup187.thread405
.Ltmp109:                               # EH_LABEL
	b	.LBB32_130
.LBB32_123:                             # %lpad43
.Ltmp140:                               # EH_LABEL
	b	.LBB32_130
.LBB32_124:                             # %ehcleanup187.thread409
.Ltmp112:                               # EH_LABEL
.LBB32_125:                             # %if.then2.i.i.i344
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
.LBB32_126:                             # %if.then2.i.i.i344
	move	$s0, $a0
.Ltmp136:                               # EH_LABEL
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
	b	.LBB32_131
.LBB32_127:                             # %ehcleanup196.thread
.Ltmp101:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB32_132
.LBB32_128:                             # %lpad
.Ltmp145:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB32_132
.LBB32_129:                             # %lpad8
.Ltmp106:                               # EH_LABEL
.LBB32_130:                             # %if.then2.i.i.i364
	move	$s0, $a0
.LBB32_131:                             # %if.then2.i.i.i364
.Ltmp141:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
.LBB32_132:                             # %ehcleanup198
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB32_135
# %bb.133:                              # %ehcleanup198
	ld.b	$a1, $sp, 88
	andi	$a1, $a1, 1
	beqz	$a1, .LBB32_135
# %bb.134:                              # %if.then2.i.i.i.i374
.Ltmp146:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
.LBB32_135:                             # %invoke.cont201
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB32_136:                             # %terminate.lpad
.Ltmp148:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult, .Lfunc_end32-_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table32:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp99-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin3         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp105-.Ltmp102              #   Call between .Ltmp102 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin3         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin3         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin3         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp127-.Lfunc_begin3         #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp117-.Lfunc_begin3         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin3         #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp132-.Lfunc_begin3         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin3         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp122-.Lfunc_begin3         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin3         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp120-.Ltmp131              #   Call between .Ltmp131 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin3         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp133-.Ltmp121              #   Call between .Ltmp121 and .Ltmp133
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin3         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin3         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin3         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp136-.Ltmp144              #   Call between .Ltmp144 and .Ltmp136
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp147-.Ltmp136              #   Call between .Ltmp136 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin3         #     jumps to .Ltmp148
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp147-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Lfunc_end32-.Ltmp147          #   Call between .Ltmp147 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_
.LCPI33_0:
	.word	0xff7fffff                      # float -3.40282347E+38
.LCPI33_1:
	.word	0x7f7fffff                      # float 3.40282347E+38
.LCPI33_2:
	.word	0x358637bd                      # float 9.99999997E-7
.LCPI33_3:
	.word	0x3c23d70a                      # float 0.00999999977
.LCPI33_4:
	.word	0x3d4ccccd                      # float 0.0500000007
	.text
	.globl	_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_
	.p2align	2
	.type	_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_,@function
_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_: # @_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 40                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	move	$fp, $a4
	move	$a4, $a1
	beqz	$a1, .LBB33_65
# %bb.1:                                # %if.end
	fmov.s	$fs0, $fa0
	move	$s0, $a5
	move	$s2, $a2
	move	$s3, $a0
	ld.w	$s4, $a0, 36
	addi.w	$a1, $zero, -1
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	blt	$a1, $s4, .LBB33_8
# %bb.2:                                # %if.then5.i
	ld.w	$a2, $s3, 40
	ld.d	$a0, $s3, 48
	move	$s1, $a3
	move	$s5, $a6
	blt	$a1, $a2, .LBB33_7
# %bb.3:                                # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
	beqz	$a0, .LBB33_6
# %bb.4:                                # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
	ld.b	$a1, $s3, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB33_6
# %bb.5:                                # %if.then2.i.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB33_6:                               # %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $s3, 56
	st.d	$zero, $s3, 48
	st.w	$zero, $s3, 40
.LBB33_7:                               # %for.body10.lr.ph.i
	slli.d	$a1, $s4, 2
	alsl.d	$a0, $s4, $a0, 2
	sub.d	$a2, $zero, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a6, $s5
	move	$a3, $s1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
.LBB33_8:                               # %if.end8
	st.w	$zero, $s3, 36
	st.w	$zero, $fp, 0
	lu12i.w	$a0, 260096
	lu52i.d	$a1, $a0, 1016
	pcalau12i	$a5, %pc_hi20(.LCPI33_0)
	fld.s	$fa1, $a5, %pc_lo12(.LCPI33_0)
	pcalau12i	$a2, %pc_hi20(.LCPI33_1)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI33_1)
	st.d	$a1, $a6, 0
	st.w	$a0, $a6, 8
	bstrpick.d	$s7, $a3, 31, 0
	addi.d	$a0, $s2, 8
	move	$a1, $a4
	fmov.s	$fa6, $fa0
	fmov.s	$fa2, $fa0
	fmov.s	$fa3, $fa1
	fmov.s	$fa4, $fa1
	.p2align	4, , 16
.LBB33_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa5, $a0, -8
	fcmp.clt.s	$fcc0, $fa5, $fa2
	fld.s	$fa7, $a0, -4
	fsel	$fa2, $fa2, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa5
	fsel	$fa4, $fa4, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa6
	fld.s	$fa5, $a0, 0
	fsel	$fa6, $fa6, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa7
	fsel	$fa3, $fa3, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa0
	fsel	$fa0, $fa0, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fa5
	fsel	$fa1, $fa1, $fa5, $fcc0
	addi.w	$a1, $a1, -1
	add.d	$a0, $a0, $s7
	bnez	$a1, .LBB33_9
# %bb.10:                               # %for.cond.cleanup
	fsub.s	$fa5, $fa4, $fa2
	fsub.s	$fa4, $fa3, $fa6
	fsub.s	$fa3, $fa1, $fa0
	vldi	$vr7, -1184
	fmadd.s	$fa2, $fa5, $fa7, $fa2
	fmadd.s	$fa1, $fa4, $fa7, $fa6
	fmadd.s	$fa0, $fa3, $fa7, $fa0
	ori	$a1, $zero, 3
	pcalau12i	$a0, %pc_hi20(.LCPI33_2)
	bltu	$a4, $a1, .LBB33_53
# %bb.11:                               # %for.cond.cleanup
	fld.s	$fs1, $a0, %pc_lo12(.LCPI33_2)
	fcmp.clt.s	$fcc0, $fa5, $fs1
	bcnez	$fcc0, .LBB33_53
# %bb.12:                               # %for.cond.cleanup
	fcmp.clt.s	$fcc0, $fa4, $fs1
	bcnez	$fcc0, .LBB33_53
# %bb.13:                               # %for.cond.cleanup
	fcmp.clt.s	$fcc0, $fa3, $fs1
	bcnez	$fcc0, .LBB33_53
# %bb.14:                               # %if.end135
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	move	$s8, $zero
	fst.s	$fa5, $a6, 0
	fst.s	$fa4, $a6, 4
	fst.s	$fa3, $a6, 8
	frecip.s	$fs2, $fa5
	frecip.s	$fs3, $fa4
	frecip.s	$fs4, $fa3
	fmul.s	$fs5, $fa2, $fs2
	fmul.s	$fs6, $fa1, $fs3
	fmul.s	$fs7, $fa0, $fs4
	addi.d	$s6, $s0, 8
	ori	$a6, $zero, 1
	b	.LBB33_18
	.p2align	4, , 16
.LBB33_15:                              # %if.end.i.i.i
                                        #   in Loop: Header=BB33_18 Depth=1
	ld.w	$a1, $s3, 36
.LBB33_16:                              # %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i291
                                        #   in Loop: Header=BB33_18 Depth=1
	st.b	$a6, $s3, 56
	st.d	$s4, $s3, 48
	st.w	$s5, $s3, 40
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
.LBB33_17:                              # %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
                                        #   in Loop: Header=BB33_18 Depth=1
	ld.d	$a0, $s3, 48
	slli.d	$a1, $a1, 2
	stx.w	$s1, $a0, $a1
	ld.w	$a0, $s3, 36
	add.d	$s2, $s2, $s7
	addi.d	$a0, $a0, 1
	addi.w	$s8, $s8, 1
	st.w	$a0, $s3, 36
	beq	$s8, $a4, .LBB33_50
.LBB33_18:                              # %for.body140
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_21 Depth 2
                                        #     Child Loop BB33_40 Depth 2
                                        #     Child Loop BB33_44 Depth 2
                                        #     Child Loop BB33_47 Depth 2
	fld.s	$fa0, $s2, 0
	fld.s	$fa1, $s2, 4
	fld.s	$fa2, $s2, 8
	ld.w	$a0, $fp, 0
	fmul.s	$fa0, $fs2, $fa0
	fmul.s	$fa1, $fs3, $fa1
	fmul.s	$fa2, $fs4, $fa2
	bstrpick.d	$a1, $a0, 31, 0
	move	$s1, $zero
	beqz	$a0, .LBB33_26
# %bb.19:                               # %for.body160.preheader
                                        #   in Loop: Header=BB33_18 Depth=1
	move	$a3, $a1
	move	$a2, $s6
	b	.LBB33_21
	.p2align	4, , 16
.LBB33_20:                              # %for.inc207
                                        #   in Loop: Header=BB33_21 Depth=2
	addi.w	$s1, $s1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 16
	beqz	$a3, .LBB33_28
.LBB33_21:                              # %for.body160
                                        #   Parent Loop BB33_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a2, -8
	fsub.s	$fa4, $fa3, $fa0
	fabs.s	$fa4, $fa4
	fcmp.cule.s	$fcc0, $fs0, $fa4
	bcnez	$fcc0, .LBB33_20
# %bb.22:                               # %land.lhs.true176
                                        #   in Loop: Header=BB33_21 Depth=2
	fld.s	$fa4, $a2, -4
	fsub.s	$fa5, $fa4, $fa1
	fabs.s	$fa5, $fa5
	fcmp.cule.s	$fcc0, $fs0, $fa5
	bcnez	$fcc0, .LBB33_20
# %bb.23:                               # %land.lhs.true176
                                        #   in Loop: Header=BB33_21 Depth=2
	fld.s	$fa5, $a2, 0
	fsub.s	$fa6, $fa5, $fa2
	fabs.s	$fa6, $fa6
	fcmp.cule.s	$fcc0, $fs0, $fa6
	bcnez	$fcc0, .LBB33_20
# %bb.24:                               # %if.then180
                                        #   in Loop: Header=BB33_18 Depth=1
	fsub.s	$fa6, $fa0, $fs5
	fsub.s	$fa7, $fa1, $fs6
	fsub.s	$ft0, $fa2, $fs7
	fmul.s	$fa7, $fa7, $fa7
	fmadd.s	$fa6, $fa6, $fa6, $fa7
	fmadd.s	$fa6, $ft0, $ft0, $fa6
	fsub.s	$fa3, $fa3, $fs5
	fsub.s	$fa4, $fa4, $fs6
	fsub.s	$fa5, $fa5, $fs7
	fmul.s	$fa4, $fa4, $fa4
	fmadd.s	$fa3, $fa3, $fa3, $fa4
	fmadd.s	$fa3, $fa5, $fa5, $fa3
	fcmp.cule.s	$fcc0, $fa6, $fa3
	bcnez	$fcc0, .LBB33_26
# %bb.25:                               # %if.then192
                                        #   in Loop: Header=BB33_18 Depth=1
	fst.s	$fa0, $a2, -8
	fst.s	$fa1, $a2, -4
	fst.s	$fa2, $a2, 0
	.p2align	4, , 16
.LBB33_26:                              # %for.end209
                                        #   in Loop: Header=BB33_18 Depth=1
	beq	$s1, $a0, .LBB33_29
# %bb.27:                               # %if.end221
                                        #   in Loop: Header=BB33_18 Depth=1
	ld.w	$a1, $s3, 36
	ld.w	$a0, $s3, 40
	bne	$a1, $a0, .LBB33_17
	b	.LBB33_30
	.p2align	4, , 16
.LBB33_28:                              #   in Loop: Header=BB33_18 Depth=1
	move	$s1, $a0
.LBB33_29:                              # %if.then211
                                        #   in Loop: Header=BB33_18 Depth=1
	alsl.d	$a2, $a1, $s0, 4
	slli.d	$a1, $a1, 4
	fstx.s	$fa0, $s0, $a1
	fst.s	$fa1, $a2, 4
	fst.s	$fa2, $a2, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	ld.w	$a1, $s3, 36
	ld.w	$a0, $s3, 40
	bne	$a1, $a0, .LBB33_17
.LBB33_30:                              # %if.then.i
                                        #   in Loop: Header=BB33_18 Depth=1
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a6, $a0
	or	$s5, $a0, $a2
	bge	$a1, $s5, .LBB33_17
# %bb.31:                               # %if.then.i.i283
                                        #   in Loop: Header=BB33_18 Depth=1
	beqz	$s5, .LBB33_37
# %bb.32:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB33_18 Depth=1
	slli.d	$a0, $s5, 2
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 1
	ld.w	$a1, $s3, 36
	move	$s4, $a0
	ld.d	$a0, $s3, 48
	blt	$a1, $a6, .LBB33_38
.LBB33_33:                              # %iter.check
                                        #   in Loop: Header=BB33_18 Depth=1
	move	$a2, $zero
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB33_46
# %bb.34:                               # %iter.check
                                        #   in Loop: Header=BB33_18 Depth=1
	sub.d	$a3, $s4, $a0
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB33_46
# %bb.35:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB33_18 Depth=1
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB33_39
# %bb.36:                               #   in Loop: Header=BB33_18 Depth=1
	move	$a2, $zero
	b	.LBB33_43
.LBB33_37:                              #   in Loop: Header=BB33_18 Depth=1
	move	$s4, $zero
	ld.d	$a0, $s3, 48
	bge	$a1, $a6, .LBB33_33
.LBB33_38:                              # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i286
                                        #   in Loop: Header=BB33_18 Depth=1
	bnez	$a0, .LBB33_48
	b	.LBB33_16
.LBB33_39:                              # %vector.ph
                                        #   in Loop: Header=BB33_18 Depth=1
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s4, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB33_40:                              # %vector.body
                                        #   Parent Loop BB33_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB33_40
# %bb.41:                               # %middle.block
                                        #   in Loop: Header=BB33_18 Depth=1
	beq	$a2, $a1, .LBB33_48
# %bb.42:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB33_18 Depth=1
	andi	$a3, $a1, 12
	beqz	$a3, .LBB33_46
.LBB33_43:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB33_18 Depth=1
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a0, 2
	alsl.d	$a5, $a5, $s4, 2
	.p2align	4, , 16
.LBB33_44:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB33_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vst	$vr0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB33_44
# %bb.45:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB33_18 Depth=1
	beq	$a2, $a1, .LBB33_48
.LBB33_46:                              # %for.body.i.i.i296.preheader
                                        #   in Loop: Header=BB33_18 Depth=1
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s4, 2
	.p2align	4, , 16
.LBB33_47:                              # %for.body.i.i.i296
                                        #   Parent Loop BB33_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB33_47
.LBB33_48:                              # %if.then.i7.i.i288
                                        #   in Loop: Header=BB33_18 Depth=1
	ld.bu	$a1, $s3, 56
	bne	$a1, $a6, .LBB33_15
# %bb.49:                               # %if.then2.i.i.i293
                                        #   in Loop: Header=BB33_18 Depth=1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 1
	b	.LBB33_15
.LBB33_50:                              # %for.cond.cleanup139
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB33_55
# %bb.51:                               # %for.body234.preheader
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	fld.s	$fa3, $a1, %pc_lo12(.LCPI33_0)
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	fld.s	$fa0, $a3, %pc_lo12(.LCPI33_1)
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a2, $s0, 8
	fmov.s	$fa1, $fa0
	fmov.s	$fa2, $fa0
	fmov.s	$fa4, $fa3
	fmov.s	$fa5, $fa3
	.p2align	4, , 16
.LBB33_52:                              # %for.body234
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa6, $a2, -8
	fcmp.clt.s	$fcc0, $fa6, $fa2
	fld.s	$fa7, $a2, -4
	fsel	$fa2, $fa2, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa6
	fsel	$fa5, $fa5, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa1
	fld.s	$fa6, $a2, 0
	fsel	$fa1, $fa1, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa7
	fsel	$fa4, $fa4, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $fa6, $fa0
	fsel	$fa0, $fa0, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa6
	fsel	$fa3, $fa3, $fa6, $fcc0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB33_52
	b	.LBB33_56
.LBB33_53:                              # %if.then61
	fld.s	$ft0, $a2, %pc_lo12(.LCPI33_1)
	fld.s	$fa7, $a0, %pc_lo12(.LCPI33_2)
	fcmp.clt.s	$fcc0, $fa5, $ft0
	fsel	$fa6, $ft0, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa5
	fsel	$fa6, $ft0, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa6
	fsel	$ft1, $fa6, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa4
	fsel	$fa6, $fa6, $ft1, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa6
	fsel	$ft1, $fa6, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa3
	fsel	$fa6, $fa6, $ft1, $fcc0
	fcmp.ceq.s	$fcc0, $fa6, $ft0
	bceqz	$fcc0, .LBB33_62
# %bb.54:
	pcalau12i	$a0, %pc_hi20(.LCPI33_3)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI33_3)
	fmov.s	$fa7, $fa6
	fmov.s	$fa5, $fa6
	b	.LBB33_64
.LBB33_55:
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	fld.s	$fa3, $a1, %pc_lo12(.LCPI33_0)
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	fld.s	$fa0, $a3, %pc_lo12(.LCPI33_1)
	fmov.s	$fa1, $fa0
	fmov.s	$fa2, $fa0
	fmov.s	$fa4, $fa3
	fmov.s	$fa5, $fa3
.LBB33_56:                              # %for.cond.cleanup233
	fsub.s	$fa5, $fa5, $fa2
	fsub.s	$fa4, $fa4, $fa1
	ori	$a1, $zero, 3
	fsub.s	$fa3, $fa3, $fa0
	bltu	$a0, $a1, .LBB33_60
# %bb.57:                               # %for.cond.cleanup233
	fcmp.clt.s	$fcc0, $fa5, $fs1
	bcnez	$fcc0, .LBB33_60
# %bb.58:                               # %for.cond.cleanup233
	fcmp.clt.s	$fcc0, $fa4, $fs1
	bcnez	$fcc0, .LBB33_60
# %bb.59:                               # %for.cond.cleanup233
	fcmp.clt.s	$fcc0, $fa3, $fs1
	bceqz	$fcc0, .LBB33_65
.LBB33_60:                              # %if.then296
	fld.s	$fa7, $a3, %pc_lo12(.LCPI33_1)
	fcmp.clt.s	$fcc0, $fa5, $fa7
	fsel	$fa6, $fa7, $fa5, $fcc0
	fcmp.cle.s	$fcc0, $fs1, $fa5
	fsel	$fa6, $fa7, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa6
	fsel	$ft0, $fa6, $fa4, $fcc0
	fcmp.cle.s	$fcc0, $fs1, $fa4
	fsel	$fa6, $fa6, $ft0, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa6
	fsel	$ft0, $fa6, $fa3, $fcc0
	fcmp.cle.s	$fcc0, $fs1, $fa3
	fsel	$fa6, $fa6, $ft0, $fcc0
	vldi	$vr8, -1184
	fmadd.s	$fa2, $fa5, $ft0, $fa2
	fmadd.s	$fa1, $fa4, $ft0, $fa1
	fcmp.ceq.s	$fcc0, $fa6, $fa7
	fmadd.s	$fa0, $fa3, $ft0, $fa0
	bceqz	$fcc0, .LBB33_66
# %bb.61:
	pcalau12i	$a0, %pc_hi20(.LCPI33_3)
	fld.s	$fa5, $a0, %pc_lo12(.LCPI33_3)
	fmov.s	$fa7, $fa5
	fmov.s	$fa6, $fa5
	b	.LBB33_64
.LBB33_62:                              # %if.else
	pcalau12i	$a0, %pc_hi20(.LCPI33_4)
	fld.s	$ft0, $a0, %pc_lo12(.LCPI33_4)
	fmul.s	$fa6, $fa6, $ft0
	fcmp.clt.s	$fcc0, $fa5, $fa7
	fsel	$fa5, $fa5, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa7
	fcmp.cule.s	$fcc1, $fa7, $fa3
	fsel	$fa7, $fa4, $fa6, $fcc0
	bceqz	$fcc1, .LBB33_64
.LBB33_63:
	fmov.s	$fa6, $fa3
.LBB33_64:                              # %if.end334
	fsub.s	$fa3, $fa2, $fa5
	fadd.s	$fa2, $fa2, $fa5
	fsub.s	$fa4, $fa1, $fa7
	fadd.s	$fa1, $fa1, $fa7
	fsub.s	$fa5, $fa0, $fa6
	fadd.s	$fa0, $fa0, $fa6
	fst.s	$fa3, $s0, 0
	fst.s	$fa4, $s0, 4
	fst.s	$fa5, $s0, 8
	fst.s	$fa2, $s0, 16
	fst.s	$fa4, $s0, 20
	fst.s	$fa5, $s0, 24
	fst.s	$fa2, $s0, 32
	fst.s	$fa1, $s0, 36
	fst.s	$fa5, $s0, 40
	fst.s	$fa3, $s0, 48
	fst.s	$fa1, $s0, 52
	fst.s	$fa5, $s0, 56
	fst.s	$fa3, $s0, 64
	fst.s	$fa4, $s0, 68
	fst.s	$fa0, $s0, 72
	fst.s	$fa2, $s0, 80
	fst.s	$fa4, $s0, 84
	fst.s	$fa0, $s0, 88
	fst.s	$fa2, $s0, 96
	fst.s	$fa1, $s0, 100
	fst.s	$fa0, $s0, 104
	fst.s	$fa3, $s0, 112
	fst.s	$fa1, $s0, 116
	fst.s	$fa0, $s0, 120
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 0
.LBB33_65:                              # %return
	sltu	$a0, $zero, $a4
	fld.d	$fs7, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB33_66:                              # %if.else321
	pcalau12i	$a0, %pc_hi20(.LCPI33_4)
	fld.s	$fa7, $a0, %pc_lo12(.LCPI33_4)
	fmul.s	$fa6, $fa6, $fa7
	fcmp.clt.s	$fcc0, $fa5, $fs1
	fsel	$fa5, $fa5, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fs1
	fcmp.cule.s	$fcc1, $fs1, $fa3
	fsel	$fa7, $fa4, $fa6, $fcc0
	bcnez	$fcc1, .LBB33_63
	b	.LBB33_64
.Lfunc_end33:
	.size	_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_, .Lfunc_end33-_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj # -- Begin function _ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj
	.p2align	2
	.type	_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj,@function
_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj: # @_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	move	$s0, $a0
	ld.w	$a0, $a0, 36
	ori	$s8, $zero, 1
	move	$s1, $a6
	move	$s2, $a5
	move	$s3, $a4
	move	$s4, $a3
	move	$s6, $a2
	move	$s5, $a1
	blt	$a0, $s8, .LBB34_11
# %bb.1:                                # %invoke.cont3
	slli.d	$s7, $a0, 2
	ori	$a1, $zero, 16
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a1, $zero
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 36
	blt	$a0, $s8, .LBB34_4
# %bb.2:                                # %for.body.lr.ph
	ld.d	$a0, $s0, 48
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB34_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $a0, $a1
	stx.w	$a3, $fp, $a1
	ld.w	$a3, $s0, 36
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $a3, .LBB34_3
.LBB34_4:                               # %invoke.cont14
	blt	$s6, $s8, .LBB34_12
.LBB34_5:                               # %if.then.i.i.i61
.Ltmp149:                               # EH_LABEL
	bstrpick.d	$a0, $s6, 31, 0
	slli.d	$s7, $a0, 2
	ori	$a1, $zero, 16
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.6:                                # %invoke.cont17
	move	$s6, $a0
	move	$a1, $zero
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$zero, $s3, 0
	bgtz	$s1, .LBB34_13
# %bb.7:                                # %for.end86
	beqz	$s6, .LBB34_9
.LBB34_8:                               # %if.then2.i.i.i121
.Ltmp152:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
.LBB34_9:                               # %invoke.cont87
	beqz	$fp, .LBB34_22
# %bb.10:                               # %if.then2.i.i.i131
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB34_11:
	move	$fp, $zero
	bge	$s6, $s8, .LBB34_5
.LBB34_12:                              # %invoke.cont17.thread
	move	$s6, $zero
	ori	$a0, $zero, 1
	st.w	$zero, $s3, 0
	blt	$s1, $a0, .LBB34_9
.LBB34_13:                              # %for.body23.lr.ph
	move	$a0, $zero
	ori	$a1, $zero, 1
	b	.LBB34_15
	.p2align	4, , 16
.LBB34_14:                              # %for.cond.cleanup
                                        #   in Loop: Header=BB34_15 Depth=1
	alsl.d	$a2, $a2, $s6, 2
	addi.d	$a3, $a3, 1
	st.w	$a3, $s3, 0
	st.w	$a3, $a2, 0
	addi.d	$a0, $a0, 1
	beq	$a0, $s1, .LBB34_8
.LBB34_15:                              # %for.body23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_20 Depth 2
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $s2, $a2
	slli.d	$a3, $a2, 2
	ldx.w	$a3, $s6, $a3
	alsl.d	$a4, $a0, $s2, 2
	beqz	$a3, .LBB34_17
# %bb.16:                               # %if.then
                                        #   in Loop: Header=BB34_15 Depth=1
	addi.d	$a2, $a3, -1
	st.w	$a2, $a4, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s1, .LBB34_15
	b	.LBB34_8
	.p2align	4, , 16
.LBB34_17:                              # %if.else
                                        #   in Loop: Header=BB34_15 Depth=1
	bstrpick.d	$a5, $a2, 31, 0
	ld.wu	$a3, $s3, 0
	slli.d	$a6, $a5, 4
	fldx.s	$fa0, $s5, $a6
	alsl.d	$a5, $a5, $s5, 4
	slli.d	$a6, $a3, 4
	fstx.s	$fa0, $s4, $a6
	fld.s	$fa0, $a5, 4
	st.w	$a3, $a4, 0
	alsl.d	$a6, $a3, $s4, 4
	fst.s	$fa0, $a6, 4
	fld.s	$fa0, $a5, 8
	ld.w	$a4, $s0, 36
	fst.s	$fa0, $a6, 8
	blt	$a4, $a1, .LBB34_14
# %bb.18:                               # %for.body69.lr.ph
                                        #   in Loop: Header=BB34_15 Depth=1
	ld.d	$a5, $s0, 48
	move	$a6, $zero
	move	$a7, $fp
	b	.LBB34_20
	.p2align	4, , 16
.LBB34_19:                              # %for.inc77
                                        #   in Loop: Header=BB34_20 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 4
	addi.d	$a7, $a7, 4
	bge	$a6, $a4, .LBB34_14
.LBB34_20:                              # %for.body69
                                        #   Parent Loop BB34_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a7, 0
	bne	$t0, $a2, .LBB34_19
# %bb.21:                               # %if.then73
                                        #   in Loop: Header=BB34_20 Depth=2
	st.w	$a3, $a5, 0
	ld.w	$a4, $s0, 36
	b	.LBB34_19
.LBB34_22:                              # %_ZN20btAlignedObjectArrayIiED2Ev.exit
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
.LBB34_23:                              # %_ZN20btAlignedObjectArrayIjED2Ev.exit
.Ltmp151:                               # EH_LABEL
	b	.LBB34_25
.LBB34_24:                              # %lpad13
.Ltmp154:                               # EH_LABEL
.LBB34_25:                              # %ehcleanup92
	move	$s0, $a0
	beqz	$fp, .LBB34_27
# %bb.26:                               # %if.then2.i.i.i139
.Ltmp155:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
.LBB34_27:                              # %invoke.cont93
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB34_28:                              # %terminate.lpad
.Ltmp157:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end34:
	.size	_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj, .Lfunc_end34-_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table34:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp149-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp149
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin4         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp152-.Ltmp150              #   Call between .Ltmp150 and .Ltmp152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin4         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp155-.Ltmp153              #   Call between .Ltmp153 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin4         #     jumps to .Ltmp157
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp156-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Lfunc_end34-.Ltmp156          #   Call between .Ltmp156 and .Lfunc_end34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN11HullLibrary13ReleaseResultER10HullResult # -- Begin function _ZN11HullLibrary13ReleaseResultER10HullResult
	.p2align	2
	.type	_ZN11HullLibrary13ReleaseResultER10HullResult,@function
_ZN11HullLibrary13ReleaseResultER10HullResult: # @_ZN11HullLibrary13ReleaseResultER10HullResult
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a1
	ld.w	$a0, $a1, 12
	beqz	$a0, .LBB35_5
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 24
	st.w	$zero, $fp, 4
	beqz	$a0, .LBB35_4
# %bb.2:                                # %if.then
	ld.b	$a1, $fp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB35_4
# %bb.3:                                # %if.then2.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB35_4:                               # %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 32
	st.d	$zero, $fp, 24
	st.d	$zero, $fp, 12
.LBB35_5:                               # %if.end
	ld.w	$a0, $fp, 52
	beqz	$a0, .LBB35_10
# %bb.6:                                # %if.then5
	ld.d	$a0, $fp, 64
	st.w	$zero, $fp, 44
	beqz	$a0, .LBB35_9
# %bb.7:                                # %if.then5
	ld.b	$a1, $fp, 72
	andi	$a1, $a1, 1
	beqz	$a1, .LBB35_9
# %bb.8:                                # %if.then2.i.i15
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB35_9:                               # %_ZN20btAlignedObjectArrayIjE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 72
	st.d	$zero, $fp, 64
	st.d	$zero, $fp, 52
.LBB35_10:                              # %if.end7
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end35:
	.size	_ZN11HullLibrary13ReleaseResultER10HullResult, .Lfunc_end35-_ZN11HullLibrary13ReleaseResultER10HullResult
	.cfi_endproc
                                        # -- End function
	.globl	_Z7GetDistfffPKf                # -- Begin function _Z7GetDistfffPKf
	.p2align	5
	.type	_Z7GetDistfffPKf,@function
_Z7GetDistfffPKf:                       # @_Z7GetDistfffPKf
# %bb.0:                                # %entry
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $a0, 4
	fld.s	$fa5, $a0, 8
	fsub.s	$fa0, $fa0, $fa3
	fsub.s	$fa1, $fa1, $fa4
	fsub.s	$fa2, $fa2, $fa5
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	ret
.Lfunc_end36:
	.size	_Z7GetDistfffPKf, .Lfunc_end36-_Z7GetDistfffPKf
                                        # -- End function
	.type	_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif,@object # @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif
	.local	_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif
	.comm	_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif,8,8
	.type	_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp,@object # @_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp
	.local	_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp
	.comm	_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp,16,8
	.type	_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp,@object # @_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp
	.local	_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp
	.comm	_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp,8,8
	.type	planetestepsilon,@object        # @planetestepsilon
	.data
	.globl	planetestepsilon
	.p2align	2, 0x0
planetestepsilon:
	.word	0x3a83126f                      # float 0.00100000005
	.size	planetestepsilon, 4

	.type	_ZZN14btHullTriangle4neibEiiE2er,@object # @_ZZN14btHullTriangle4neibEiiE2er
	.p2align	2, 0x0
_ZZN14btHullTriangle4neibEiiE2er:
	.word	4294967295                      # 0xffffffff
	.size	_ZZN14btHullTriangle4neibEiiE2er, 4

	.globl	_ZN7ConvexHC1Eiii
	.type	_ZN7ConvexHC1Eiii,@function
_ZN7ConvexHC1Eiii = _ZN7ConvexHC2Eiii
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif
	.addrsig_sym _ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp
	.addrsig_sym _ZZN14btHullTriangle4neibEiiE2er
