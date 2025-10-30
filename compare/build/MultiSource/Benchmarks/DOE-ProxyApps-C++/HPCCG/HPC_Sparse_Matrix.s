	.file	"HPC_Sparse_Matrix.cpp"
	.text
	.globl	_Z13destroyMatrixRP24HPC_Sparse_Matrix_STRUCT # -- Begin function _Z13destroyMatrixRP24HPC_Sparse_Matrix_STRUCT
	.p2align	5
	.type	_Z13destroyMatrixRP24HPC_Sparse_Matrix_STRUCT,@function
_Z13destroyMatrixRP24HPC_Sparse_Matrix_STRUCT: # @_Z13destroyMatrixRP24HPC_Sparse_Matrix_STRUCT
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_2
# %bb.1:                                # %delete.notnull
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.LBB0_2:                                # %if.end
	ld.d	$a1, $a0, 48
	beqz	$a1, .LBB0_4
# %bb.3:                                # %delete.notnull6
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.LBB0_4:                                # %if.end8
	ld.d	$a1, $a0, 80
	beqz	$a1, .LBB0_6
# %bb.5:                                # %delete.notnull13
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.LBB0_6:                                # %if.end15
	ld.d	$a1, $a0, 56
	beqz	$a1, .LBB0_8
# %bb.7:                                # %delete.notnull19
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.LBB0_8:                                # %if.end21
	ld.d	$a1, $a0, 88
	beqz	$a1, .LBB0_10
# %bb.9:                                # %delete.notnull26
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.LBB0_10:                               # %if.end28
	ld.d	$a1, $a0, 64
	beqz	$a1, .LBB0_12
# %bb.11:                               # %delete.notnull33
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.LBB0_12:                               # %if.end35
	ld.d	$a1, $a0, 72
	beqz	$a1, .LBB0_14
# %bb.13:                               # %if.end42
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB0_15
.LBB0_14:                               # %delete.notnull44
	ori	$a1, $zero, 96
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_15:                               # %delete.end45
	st.d	$zero, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_Z13destroyMatrixRP24HPC_Sparse_Matrix_STRUCT, .Lfunc_end0-_Z13destroyMatrixRP24HPC_Sparse_Matrix_STRUCT
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
