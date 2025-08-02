	.file	"HYPRE_struct_pcg.c"
	.text
	.globl	HYPRE_StructPCGCreate           # -- Begin function HYPRE_StructPCGCreate
	.p2align	5
	.type	HYPRE_StructPCGCreate,@function
HYPRE_StructPCGCreate:                  # @HYPRE_StructPCGCreate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$a0, %got_pc_hi20(hypre_StructKrylovIdentity)
	ld.d	$a0, $a0, %got_pc_lo12(hypre_StructKrylovIdentity)
	pcalau12i	$a1, %got_pc_hi20(hypre_StructKrylovIdentitySetup)
	ld.d	$a1, $a1, %got_pc_lo12(hypre_StructKrylovIdentitySetup)
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 32
	pcalau12i	$a0, %got_pc_hi20(hypre_StructKrylovAxpy)
	ld.d	$t0, $a0, %got_pc_lo12(hypre_StructKrylovAxpy)
	pcalau12i	$a0, %got_pc_hi20(hypre_StructKrylovScaleVector)
	ld.d	$t1, $a0, %got_pc_lo12(hypre_StructKrylovScaleVector)
	pcalau12i	$a0, %got_pc_hi20(hypre_StructKrylovClearVector)
	ld.d	$t2, $a0, %got_pc_lo12(hypre_StructKrylovClearVector)
	pcalau12i	$a0, %got_pc_hi20(hypre_StructKrylovCopyVector)
	ld.d	$t3, $a0, %got_pc_lo12(hypre_StructKrylovCopyVector)
	pcalau12i	$a0, %got_pc_hi20(hypre_CAlloc)
	ld.d	$a0, $a0, %got_pc_lo12(hypre_CAlloc)
	pcalau12i	$a1, %got_pc_hi20(hypre_StructKrylovFree)
	ld.d	$a1, $a1, %got_pc_lo12(hypre_StructKrylovFree)
	pcalau12i	$a2, %got_pc_hi20(hypre_StructKrylovCreateVector)
	ld.d	$a2, $a2, %got_pc_lo12(hypre_StructKrylovCreateVector)
	pcalau12i	$a3, %got_pc_hi20(hypre_StructKrylovDestroyVector)
	ld.d	$a3, $a3, %got_pc_lo12(hypre_StructKrylovDestroyVector)
	pcalau12i	$a4, %got_pc_hi20(hypre_StructKrylovMatvecCreate)
	ld.d	$a4, $a4, %got_pc_lo12(hypre_StructKrylovMatvecCreate)
	pcalau12i	$a5, %got_pc_hi20(hypre_StructKrylovMatvec)
	ld.d	$a5, $a5, %got_pc_lo12(hypre_StructKrylovMatvec)
	pcalau12i	$a6, %got_pc_hi20(hypre_StructKrylovMatvecDestroy)
	ld.d	$a6, $a6, %got_pc_lo12(hypre_StructKrylovMatvecDestroy)
	pcalau12i	$a7, %got_pc_hi20(hypre_StructKrylovInnerProd)
	ld.d	$a7, $a7, %got_pc_lo12(hypre_StructKrylovInnerProd)
	st.d	$t0, $sp, 24
	st.d	$t1, $sp, 16
	st.d	$t2, $sp, 8
	st.d	$t3, $sp, 0
	pcaddu18i	$ra, %call36(hypre_PCGFunctionsCreate)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_PCGCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end0:
	.size	HYPRE_StructPCGCreate, .Lfunc_end0-HYPRE_StructPCGCreate
                                        # -- End function
	.globl	HYPRE_StructPCGDestroy          # -- Begin function HYPRE_StructPCGDestroy
	.p2align	5
	.type	HYPRE_StructPCGDestroy,@function
HYPRE_StructPCGDestroy:                 # @HYPRE_StructPCGDestroy
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(hypre_PCGDestroy)
	jr	$t8
.Lfunc_end1:
	.size	HYPRE_StructPCGDestroy, .Lfunc_end1-HYPRE_StructPCGDestroy
                                        # -- End function
	.globl	HYPRE_StructPCGSetup            # -- Begin function HYPRE_StructPCGSetup
	.p2align	5
	.type	HYPRE_StructPCGSetup,@function
HYPRE_StructPCGSetup:                   # @HYPRE_StructPCGSetup
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(HYPRE_PCGSetup)
	jr	$t8
.Lfunc_end2:
	.size	HYPRE_StructPCGSetup, .Lfunc_end2-HYPRE_StructPCGSetup
                                        # -- End function
	.globl	HYPRE_StructPCGSolve            # -- Begin function HYPRE_StructPCGSolve
	.p2align	5
	.type	HYPRE_StructPCGSolve,@function
HYPRE_StructPCGSolve:                   # @HYPRE_StructPCGSolve
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(HYPRE_PCGSolve)
	jr	$t8
.Lfunc_end3:
	.size	HYPRE_StructPCGSolve, .Lfunc_end3-HYPRE_StructPCGSolve
                                        # -- End function
	.globl	HYPRE_StructPCGSetTol           # -- Begin function HYPRE_StructPCGSetTol
	.p2align	5
	.type	HYPRE_StructPCGSetTol,@function
HYPRE_StructPCGSetTol:                  # @HYPRE_StructPCGSetTol
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(HYPRE_PCGSetTol)
	jr	$t8
.Lfunc_end4:
	.size	HYPRE_StructPCGSetTol, .Lfunc_end4-HYPRE_StructPCGSetTol
                                        # -- End function
	.globl	HYPRE_StructPCGSetMaxIter       # -- Begin function HYPRE_StructPCGSetMaxIter
	.p2align	5
	.type	HYPRE_StructPCGSetMaxIter,@function
HYPRE_StructPCGSetMaxIter:              # @HYPRE_StructPCGSetMaxIter
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(HYPRE_PCGSetMaxIter)
	jr	$t8
.Lfunc_end5:
	.size	HYPRE_StructPCGSetMaxIter, .Lfunc_end5-HYPRE_StructPCGSetMaxIter
                                        # -- End function
	.globl	HYPRE_StructPCGSetTwoNorm       # -- Begin function HYPRE_StructPCGSetTwoNorm
	.p2align	5
	.type	HYPRE_StructPCGSetTwoNorm,@function
HYPRE_StructPCGSetTwoNorm:              # @HYPRE_StructPCGSetTwoNorm
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(HYPRE_PCGSetTwoNorm)
	jr	$t8
.Lfunc_end6:
	.size	HYPRE_StructPCGSetTwoNorm, .Lfunc_end6-HYPRE_StructPCGSetTwoNorm
                                        # -- End function
	.globl	HYPRE_StructPCGSetRelChange     # -- Begin function HYPRE_StructPCGSetRelChange
	.p2align	5
	.type	HYPRE_StructPCGSetRelChange,@function
HYPRE_StructPCGSetRelChange:            # @HYPRE_StructPCGSetRelChange
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(HYPRE_PCGSetRelChange)
	jr	$t8
.Lfunc_end7:
	.size	HYPRE_StructPCGSetRelChange, .Lfunc_end7-HYPRE_StructPCGSetRelChange
                                        # -- End function
	.globl	HYPRE_StructPCGSetPrecond       # -- Begin function HYPRE_StructPCGSetPrecond
	.p2align	5
	.type	HYPRE_StructPCGSetPrecond,@function
HYPRE_StructPCGSetPrecond:              # @HYPRE_StructPCGSetPrecond
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(HYPRE_PCGSetPrecond)
	jr	$t8
.Lfunc_end8:
	.size	HYPRE_StructPCGSetPrecond, .Lfunc_end8-HYPRE_StructPCGSetPrecond
                                        # -- End function
	.globl	HYPRE_StructPCGSetLogging       # -- Begin function HYPRE_StructPCGSetLogging
	.p2align	5
	.type	HYPRE_StructPCGSetLogging,@function
HYPRE_StructPCGSetLogging:              # @HYPRE_StructPCGSetLogging
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(HYPRE_PCGSetLogging)
	jr	$t8
.Lfunc_end9:
	.size	HYPRE_StructPCGSetLogging, .Lfunc_end9-HYPRE_StructPCGSetLogging
                                        # -- End function
	.globl	HYPRE_StructPCGGetNumIterations # -- Begin function HYPRE_StructPCGGetNumIterations
	.p2align	5
	.type	HYPRE_StructPCGGetNumIterations,@function
HYPRE_StructPCGGetNumIterations:        # @HYPRE_StructPCGGetNumIterations
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(HYPRE_PCGGetNumIterations)
	jr	$t8
.Lfunc_end10:
	.size	HYPRE_StructPCGGetNumIterations, .Lfunc_end10-HYPRE_StructPCGGetNumIterations
                                        # -- End function
	.globl	HYPRE_StructPCGGetFinalRelativeResidualNorm # -- Begin function HYPRE_StructPCGGetFinalRelativeResidualNorm
	.p2align	5
	.type	HYPRE_StructPCGGetFinalRelativeResidualNorm,@function
HYPRE_StructPCGGetFinalRelativeResidualNorm: # @HYPRE_StructPCGGetFinalRelativeResidualNorm
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(HYPRE_PCGGetFinalRelativeResidualNorm)
	jr	$t8
.Lfunc_end11:
	.size	HYPRE_StructPCGGetFinalRelativeResidualNorm, .Lfunc_end11-HYPRE_StructPCGGetFinalRelativeResidualNorm
                                        # -- End function
	.globl	HYPRE_StructDiagScaleSetup      # -- Begin function HYPRE_StructDiagScaleSetup
	.p2align	5
	.type	HYPRE_StructDiagScaleSetup,@function
HYPRE_StructDiagScaleSetup:             # @HYPRE_StructDiagScaleSetup
# %bb.0:                                # %entry
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	HYPRE_StructDiagScaleSetup, .Lfunc_end12-HYPRE_StructDiagScaleSetup
                                        # -- End function
	.globl	HYPRE_StructDiagScale           # -- Begin function HYPRE_StructDiagScale
	.p2align	5
	.type	HYPRE_StructDiagScale,@function
HYPRE_StructDiagScale:                  # @HYPRE_StructDiagScale
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
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a0, 8
	ld.w	$a0, $a1, 8
	ori	$a4, $zero, 1
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	blt	$a0, $a4, .LBB13_21
# %bb.1:                                # %for.body.lr.ph
	move	$s2, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s8, $zero, 8
	ori	$s5, $zero, 64
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %for.end466
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB13_21
.LBB13_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_8 Depth 2
                                        #       Child Loop BB13_11 Depth 3
                                        #         Child Loop BB13_19 Depth 4
                                        #         Child Loop BB13_15 Depth 4
	ld.d	$a5, $a1, 0
	alsl.d	$a1, $s2, $s2, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 40
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $fp, 16
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $s0, 16
	slli.d	$a1, $a1, 3
	ld.d	$s1, $a2, 0
	ld.d	$s7, $a3, 0
	ld.d	$s6, $a4, 0
	add.d	$s4, $a5, $a1
	st.d	$zero, $sp, 108
	st.w	$zero, $sp, 116
	addi.d	$a2, $sp, 108
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 24
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a2, $s0, 40
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a3, $s2, 2
	ldx.w	$s2, $a1, $a3
	ld.d	$fp, $s0, 24
	ldx.w	$s0, $a2, $a3
	move	$s3, $a0
	addi.d	$a1, $sp, 96
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 104
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	blt	$a1, $a0, .LBB13_2
# %bb.4:                                # %for.cond424.preheader.lr.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.w	$a1, $sp, 100
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB13_2
# %bb.5:                                # %for.cond424.preheader.us.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a2, 4
	alsl.d	$a3, $a2, $a0, 3
	add.d	$t3, $s6, $a3
	ld.w	$t4, $t3, 4
	ld.w	$a4, $t3, 16
	move	$a2, $zero
	ldx.w	$t0, $s6, $a3
	sub.w	$a0, $a4, $t4
	move	$ra, $s2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	slt	$a4, $s2, $a0
	ld.w	$a5, $t3, 12
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $s2, $a4
	or	$a0, $a0, $a4
	sub.w	$a4, $a5, $t0
	slt	$a5, $s2, $a4
	maskeqz	$a4, $a4, $a5
	add.d	$a6, $s7, $a3
	ld.w	$a7, $a6, 4
	ld.w	$t1, $a6, 16
	masknez	$a5, $s2, $a5
	or	$a5, $a4, $a5
	ldx.w	$t2, $s7, $a3
	sub.w	$a4, $t1, $a7
	slt	$t1, $s2, $a4
	ld.w	$t5, $a6, 12
	maskeqz	$a4, $a4, $t1
	masknez	$t1, $s2, $t1
	or	$t1, $a4, $t1
	sub.w	$a4, $t5, $t2
	slt	$t5, $s2, $a4
	maskeqz	$a4, $a4, $t5
	add.d	$t6, $s1, $a3
	ld.w	$t7, $t6, 4
	ld.w	$t8, $t6, 16
	masknez	$t5, $s2, $t5
	or	$t5, $a4, $t5
	ldx.w	$a3, $s1, $a3
	sub.w	$a4, $t8, $t7
	slt	$t8, $s2, $a4
	ld.w	$s1, $t6, 12
	maskeqz	$a4, $a4, $t8
	masknez	$t8, $s2, $t8
	or	$a4, $a4, $t8
	sub.w	$t8, $s1, $a3
	slt	$s1, $s2, $t8
	maskeqz	$t8, $t8, $s1
	masknez	$s1, $s2, $s1
	or	$t8, $t8, $s1
	ld.w	$s1, $s4, 4
	ld.w	$s2, $s4, 8
	ld.w	$t6, $t6, 8
	addi.d	$s6, $a4, 1
	ld.w	$s4, $s4, 0
	sub.d	$a4, $s1, $t7
	sub.d	$t6, $s2, $t6
	mul.d	$t6, $s6, $t6
	add.d	$a4, $a4, $t6
	addi.d	$t6, $t8, 1
	sub.d	$a3, $s4, $a3
	mul.d	$a4, $a4, $t6
	add.w	$a3, $a3, $a4
	ld.wu	$a4, $sp, 96
	addi.d	$a0, $a0, 1
	addi.d	$t7, $a5, 1
	ld.w	$a5, $a6, 8
	addi.d	$t8, $t1, 1
	addi.d	$t5, $t5, 1
	sub.d	$a6, $s1, $a7
	sub.d	$a5, $s2, $a5
	mul.d	$a5, $t8, $a5
	add.d	$a6, $a6, $a5
	sub.d	$a5, $t6, $a4
	sub.d	$a7, $s4, $t2
	mul.d	$a6, $a6, $t5
	add.w	$a6, $a7, $a6
	sub.d	$a7, $t5, $a4
	sub.d	$s4, $s4, $t0
	sub.d	$t0, $t7, $a4
	sub.d	$t1, $s6, $a1
	mulw.d.w	$t1, $t1, $t6
	sub.d	$t2, $t8, $a1
	mulw.d.w	$t2, $t2, $t5
	ld.w	$t8, $t3, 8
	sub.d	$t4, $s1, $t4
	sub.d	$t3, $a0, $a1
	mulw.d.w	$t3, $t7, $t3
	sub.d	$t8, $s2, $t8
	mul.d	$a0, $a0, $t8
	add.d	$a0, $t4, $a0
	mul.d	$a0, $a0, $t7
	add.w	$t4, $s4, $a0
	addi.d	$a0, $a1, -1
	mul.d	$t8, $a5, $a0
	add.d	$t6, $t6, $t8
	sub.d	$t6, $t6, $a4
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	mul.d	$t6, $a7, $a0
	add.d	$t5, $t5, $t6
	sub.d	$t5, $t5, $a4
	st.d	$t5, $sp, 72                    # 8-byte Folded Spill
	mul.d	$a0, $t0, $a0
	add.d	$a0, $t7, $a0
	sub.d	$a0, $a0, $a4
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$t7, $ra, $a0, 3
	bstrpick.d	$a0, $a4, 30, 3
	slli.d	$t8, $a0, 3
	addi.d	$s4, $t7, 32
	alsl.d	$ra, $s0, $fp, 3
	addi.d	$s1, $ra, 32
	addi.d	$s7, $s3, 32
	b	.LBB13_8
	.p2align	4, , 16
.LBB13_6:                               # %for.cond427.preheader.us218.preheader
                                        #   in Loop: Header=BB13_8 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a6, $a0, $a6
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$t4, $a0, $t4
.LBB13_7:                               # %for.cond424.for.end451_crit_edge.us
                                        #   in Loop: Header=BB13_8 Depth=2
	add.w	$a3, $a3, $t1
	add.w	$a6, $a6, $t2
	addi.w	$a2, $a2, 1
	add.w	$t4, $t4, $t3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB13_2
.LBB13_8:                               # %for.cond424.preheader.us
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_11 Depth 3
                                        #         Child Loop BB13_19 Depth 4
                                        #         Child Loop BB13_15 Depth 4
	addi.w	$a0, $a4, 0
	ori	$t5, $zero, 1
	blt	$a0, $t5, .LBB13_6
# %bb.9:                                # %for.cond427.preheader.us.us.preheader
                                        #   in Loop: Header=BB13_8 Depth=2
	move	$s6, $zero
	b	.LBB13_11
	.p2align	4, , 16
.LBB13_10:                              # %for.cond427.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB13_11 Depth=3
	add.w	$a3, $a5, $a3
	add.w	$a6, $a7, $a6
	addi.w	$s6, $s6, 1
	add.w	$t4, $t0, $s2
	beq	$s6, $a1, .LBB13_7
.LBB13_11:                              # %for.cond427.preheader.us.us
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_19 Depth 4
                                        #         Child Loop BB13_15 Depth 4
	bgeu	$a4, $s8, .LBB13_16
# %bb.12:                               #   in Loop: Header=BB13_11 Depth=3
	move	$a0, $zero
.LBB13_13:                              # %for.body429.us.us.preheader
                                        #   in Loop: Header=BB13_11 Depth=3
	move	$s2, $t4
.LBB13_14:                              # %for.body429.us.us.preheader
                                        #   in Loop: Header=BB13_11 Depth=3
	alsl.d	$t4, $a6, $t7, 3
	alsl.d	$t5, $s2, $ra, 3
	alsl.d	$t6, $a3, $s3, 3
	sub.d	$a0, $a4, $a0
	.p2align	4, , 16
.LBB13_15:                              # %for.body429.us.us
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_8 Depth=2
                                        #       Parent Loop BB13_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $t5, 0
	fld.d	$fa1, $t6, 0
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t4, 0
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 1
	addi.d	$s2, $s2, 1
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 8
	addi.w	$a0, $a0, -1
	addi.d	$t6, $t6, 8
	bnez	$a0, .LBB13_15
	b	.LBB13_10
	.p2align	4, , 16
.LBB13_16:                              # %vector.memcheck
                                        #   in Loop: Header=BB13_11 Depth=3
	alsl.d	$t5, $a6, $t7, 3
	add.d	$a0, $s0, $t4
	alsl.d	$a0, $a0, $fp, 3
	sub.d	$t6, $t5, $a0
	move	$a0, $zero
	bltu	$t6, $s5, .LBB13_13
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB13_11 Depth=3
	alsl.d	$t6, $a3, $s3, 3
	sub.d	$t5, $t5, $t6
	bltu	$t5, $s5, .LBB13_13
# %bb.18:                               # %vector.ph
                                        #   in Loop: Header=BB13_11 Depth=3
	slli.d	$a0, $a6, 3
	slli.d	$t5, $a3, 3
	add.d	$a6, $t8, $a6
	add.d	$s2, $t8, $t4
	add.d	$a3, $t8, $a3
	add.d	$a0, $s4, $a0
	alsl.d	$t4, $t4, $s1, 3
	add.d	$t5, $s7, $t5
	move	$t6, $t8
	.p2align	4, , 16
.LBB13_19:                              # %vector.body
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_8 Depth=2
                                        #       Parent Loop BB13_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $t4, -32
	xvld	$xr1, $t4, 0
	xvld	$xr2, $t5, -32
	xvld	$xr3, $t5, 0
	xvfdiv.d	$xr0, $xr0, $xr2
	xvfdiv.d	$xr1, $xr1, $xr3
	xvst	$xr0, $a0, -32
	xvst	$xr1, $a0, 0
	addi.d	$t6, $t6, -8
	addi.d	$a0, $a0, 64
	addi.d	$t4, $t4, 64
	addi.d	$t5, $t5, 64
	bnez	$t6, .LBB13_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB13_11 Depth=3
	move	$a0, $t8
	beq	$t8, $a4, .LBB13_10
	b	.LBB13_14
.LBB13_21:                              # %for.end469
	move	$a0, $zero
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
.Lfunc_end13:
	.size	HYPRE_StructDiagScale, .Lfunc_end13-HYPRE_StructDiagScale
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hypre_CAlloc
	.addrsig_sym hypre_StructKrylovFree
	.addrsig_sym hypre_StructKrylovCreateVector
	.addrsig_sym hypre_StructKrylovDestroyVector
	.addrsig_sym hypre_StructKrylovMatvecCreate
	.addrsig_sym hypre_StructKrylovMatvec
	.addrsig_sym hypre_StructKrylovMatvecDestroy
	.addrsig_sym hypre_StructKrylovInnerProd
	.addrsig_sym hypre_StructKrylovCopyVector
	.addrsig_sym hypre_StructKrylovClearVector
	.addrsig_sym hypre_StructKrylovScaleVector
	.addrsig_sym hypre_StructKrylovAxpy
	.addrsig_sym hypre_StructKrylovIdentitySetup
	.addrsig_sym hypre_StructKrylovIdentity
