	.file	"HPC_sparsemv.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd # -- Begin function _Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd
	.p2align	5
	.type	_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd,@function
_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd: # @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd
# %bb.0:                                # %entry
	ld.w	$a3, $a0, 32
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB0_6
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a5, $a0, 56
	ld.d	$a6, $a0, 64
	ld.d	$a0, $a0, 48
	move	$a7, $zero
	movgr2fr.d	$fa0, $zero
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.cond.cleanup7
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a7, $a7, 1
	fstx.d	$fa1, $a2, $t0
	beq	$a7, $a3, .LBB0_6
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	slli.d	$t0, $a7, 2
	ldx.w	$t1, $a0, $t0
	slli.d	$t0, $a7, 3
	fmov.d	$fa1, $fa0
	blt	$t1, $a4, .LBB0_2
# %bb.4:                                # %for.body8.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	ldx.d	$t2, $a5, $t0
	ldx.d	$t3, $a6, $t0
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB0_5:                                # %for.body8
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t3, 0
	fld.d	$fa2, $t2, 0
	slli.d	$t4, $t4, 3
	fldx.d	$fa3, $a1, $t4
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$t3, $t3, 4
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 8
	bnez	$t1, .LBB0_5
	b	.LBB0_2
.LBB0_6:                                # %for.cond.cleanup
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd, .Lfunc_end0-_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
