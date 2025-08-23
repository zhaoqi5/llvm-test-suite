	.file	"ddot.cpp"
	.text
	.globl	_Z4ddotiPKdS0_PdRd              # -- Begin function _Z4ddotiPKdS0_PdRd
	.p2align	5
	.type	_Z4ddotiPKdS0_PdRd,@function
_Z4ddotiPKdS0_PdRd:                     # @_Z4ddotiPKdS0_PdRd
# %bb.0:                                # %entry
	movgr2fr.d	$fa0, $zero
	beq	$a2, $a1, .LBB0_3
# %bb.1:                                # %for.cond5.preheader
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB0_5
	.p2align	4, , 16
.LBB0_2:                                # %for.body8
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB0_2
	b	.LBB0_5
.LBB0_3:                                # %for.cond.preheader
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB0_4
.LBB0_5:                                # %if.end
	fst.d	$fa0, $a3, 0
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	_Z4ddotiPKdS0_PdRd, .Lfunc_end0-_Z4ddotiPKdS0_PdRd
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
