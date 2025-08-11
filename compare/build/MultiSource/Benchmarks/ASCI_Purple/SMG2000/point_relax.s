	.file	"point_relax.c"
	.text
	.globl	hypre_PointRelaxCreate          # -- Begin function hypre_PointRelaxCreate
	.p2align	5
	.type	hypre_PointRelaxCreate,@function
hypre_PointRelaxCreate:                 # @hypre_PointRelaxCreate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 144
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(hypre_InitializeTiming)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 132
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 1000
	st.d	$a0, $fp, 16
	st.w	$zero, $fp, 24
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $fp, 32
	st.w	$zero, $fp, 40
	st.d	$zero, $fp, 104
	xvrepli.b	$xr0, 0
	xvst	$xr0, $fp, 48
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_PointRelaxSetNumPointsets)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 72
	st.d	$a0, $a1, 0
	ld.d	$a1, $fp, 48
	ld.d	$a2, $fp, 64
	st.w	$s1, $a1, 0
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $a2, 0
	st.w	$s1, $a2, 8
	st.d	$zero, $a0, 0
	st.w	$zero, $a0, 8
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	hypre_PointRelaxCreate, .Lfunc_end0-hypre_PointRelaxCreate
                                        # -- End function
	.globl	hypre_PointRelaxSetNumPointsets # -- Begin function hypre_PointRelaxSetNumPointsets
	.p2align	5
	.type	hypre_PointRelaxSetNumPointsets,@function
hypre_PointRelaxSetNumPointsets:        # @hypre_PointRelaxSetNumPointsets
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 40
	ori	$s2, $zero, 1
	move	$s0, $a1
	blt	$a0, $s2, .LBB1_3
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a0, $fp, 72
	move	$s1, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.w	$a1, $fp, 40
	stx.d	$zero, $a0, $s1
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 8
	blt	$s3, $a1, .LBB1_2
.LBB1_3:                                # %for.end
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	st.d	$zero, $fp, 48
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	st.d	$zero, $fp, 56
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	st.d	$zero, $fp, 64
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 72
	st.w	$s0, $fp, 40
	slli.d	$s3, $s0, 2
	addi.w	$s1, $s3, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 56
	slli.w	$s1, $s0, 3
	alsl.w	$a0, $s0, $s1, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	blt	$s0, $s2, .LBB1_6
# %bb.4:                                # %for.body31.preheader
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_5:                                # %for.body31
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $fp, 48
	ld.d	$a4, $fp, 56
	stx.w	$zero, $a3, $a1
	stx.w	$a2, $a4, $a1
	st.d	$zero, $a0, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 8
	bne	$s3, $a1, .LBB1_5
.LBB1_6:                                # %for.end43
	move	$a0, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	hypre_PointRelaxSetNumPointsets, .Lfunc_end1-hypre_PointRelaxSetNumPointsets
                                        # -- End function
	.globl	hypre_PointRelaxSetPointset     # -- Begin function hypre_PointRelaxSetPointset
	.p2align	5
	.type	hypre_PointRelaxSetPointset,@function
hypre_PointRelaxSetPointset:            # @hypre_PointRelaxSetPointset
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.d	$a0, $a0, 72
	move	$s2, $a1
	slli.d	$s4, $a1, 3
	ldx.d	$a0, $a0, $s4
	move	$s0, $a4
	move	$s3, $a3
	move	$fp, $a2
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 72
	stx.d	$zero, $a0, $s4
	slli.d	$a0, $fp, 3
	alsl.w	$a0, $fp, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 72
	stx.d	$a0, $a1, $s4
	ld.d	$a1, $s1, 48
	slli.d	$a2, $s2, 2
	stx.w	$fp, $a1, $a2
	ld.w	$a1, $s3, 0
	ld.d	$a2, $s1, 64
	alsl.d	$a3, $s2, $s4, 2
	stx.w	$a1, $a2, $a3
	ld.w	$a1, $s3, 4
	add.d	$a2, $a2, $a3
	st.w	$a1, $a2, 4
	ld.w	$a1, $s3, 8
	ori	$a3, $zero, 1
	st.w	$a1, $a2, 8
	blt	$fp, $a3, .LBB2_3
# %bb.1:                                # %for.body.preheader
	addi.d	$a0, $a0, 8
	addi.d	$a1, $s0, 8
	.p2align	4, , 16
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, -8
	st.w	$a2, $a0, -8
	ld.w	$a2, $a1, -4
	st.w	$a2, $a0, -4
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 0
	addi.d	$a0, $a0, 12
	addi.d	$fp, $fp, -1
	addi.d	$a1, $a1, 12
	bnez	$fp, .LBB2_2
.LBB2_3:                                # %for.end
	move	$a0, $zero
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	hypre_PointRelaxSetPointset, .Lfunc_end2-hypre_PointRelaxSetPointset
                                        # -- End function
	.globl	hypre_PointRelaxDestroy         # -- Begin function hypre_PointRelaxDestroy
	.p2align	5
	.type	hypre_PointRelaxDestroy,@function
hypre_PointRelaxDestroy:                # @hypre_PointRelaxDestroy
# %bb.0:                                # %entry
	beqz	$a0, .LBB3_5
# %bb.1:                                # %for.cond.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 40
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_4
# %bb.2:                                # %for.body.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB3_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 72
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	ld.d	$a1, $fp, 72
	ldx.d	$a0, $a0, $s0
	stx.d	$zero, $a1, $s0
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB3_3
.LBB3_4:                                # %for.end
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	st.d	$zero, $fp, 48
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	st.d	$zero, $fp, 56
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	st.d	$zero, $fp, 64
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $fp, 72
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 104
	st.d	$zero, $fp, 120
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 132
	pcaddu18i	$ra, %call36(hypre_FinalizeTiming)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB3_5:                                # %if.end
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	hypre_PointRelaxDestroy, .Lfunc_end3-hypre_PointRelaxDestroy
                                        # -- End function
	.globl	hypre_PointRelaxSetup           # -- Begin function hypre_PointRelaxSetup
	.p2align	5
	.type	hypre_PointRelaxSetup,@function
hypre_PointRelaxSetup:                  # @hypre_PointRelaxSetup
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$s1, $a0, 40
	ld.d	$s2, $a0, 48
	ld.d	$a0, $a0, 64
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 104
	ld.d	$a4, $s0, 72
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	move	$s4, $a2
	bnez	$a0, .LBB4_2
# %bb.1:                                # %if.then
	ld.w	$a0, $s4, 0
	move	$s3, $a1
	ld.d	$a1, $s4, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorCreate)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $s4, 48
	pcaddu18i	$ra, %call36(hypre_StructVectorSetNumGhost)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_StructVectorInitialize)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	st.d	$fp, $s0, 104
.LBB4_2:                                # %if.end
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$fp, $a1, 8
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 24
	st.d	$zero, $sp, 256
	st.w	$zero, $sp, 264
	addi.d	$a1, $sp, 256
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_StructStencilElementRank)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s5, $zero, 1
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 268
	st.w	$s5, $sp, 276
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	blt	$s1, $s5, .LBB4_23
# %bb.3:                                # %for.body.lr.ph
	move	$s0, $zero
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_4:                                # %for.end89.1
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $sp, 248
	ld.d	$a1, $sp, 240
	ld.d	$a4, $sp, 232
	ld.d	$a5, $sp, 224
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 16
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a3, $s0, $a3, 3
	st.d	$a3, $sp, 32
	st.d	$s5, $sp, 24
	st.d	$a2, $sp, 16
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	st.d	$fp, $sp, 8
	addi.d	$a2, $sp, 268
	addi.d	$a3, $sp, 268
	st.d	$s8, $sp, 0
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayDestroy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	beq	$s0, $s1, .LBB4_23
.LBB4_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #       Child Loop BB4_11 Depth 3
                                        #         Child Loop BB4_12 Depth 4
                                        #     Child Loop BB4_17 Depth 2
                                        #       Child Loop BB4_20 Depth 3
                                        #         Child Loop BB4_21 Depth 4
	addi.d	$a2, $sp, 248
	addi.d	$a3, $sp, 240
	addi.d	$a4, $sp, 232
	addi.d	$a5, $sp, 224
	addi.d	$a6, $sp, 216
	addi.d	$a7, $sp, 208
	move	$a0, $fp
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216
	slli.d	$a0, $s0, 3
	alsl.d	$a0, $s0, $a0, 2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.w	$fp, $a1, 8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	alsl.d	$a0, $s0, $s2, 2
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	blt	$fp, $s5, .LBB4_14
# %bb.6:                                # %for.body32.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	move	$a2, $zero
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %for.inc87
                                        #   in Loop: Header=BB4_8 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ori	$s5, $zero, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB4_14
.LBB4_8:                                # %for.body32
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_11 Depth 3
                                        #         Child Loop BB4_12 Depth 4
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	ldx.d	$s4, $a1, $a2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$s7, $s4, 8
	ldx.d	$s2, $a1, $a2
	mul.w	$a1, $a0, $s7
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	blt	$a0, $s5, .LBB4_7
# %bb.9:                                # %for.body32
                                        #   in Loop: Header=BB4_8 Depth=2
	blt	$s7, $s5, .LBB4_7
# %bb.10:                               # %for.body46.us.preheader
                                        #   in Loop: Header=BB4_8 Depth=2
	move	$s0, $zero
	move	$s3, $zero
	slli.d	$a0, $s7, 4
	alsl.d	$s5, $s7, $a0, 3
	.p2align	4, , 16
.LBB4_11:                               # %for.body46.us
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_12 Depth 4
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s1, $zero
	slli.d	$a1, $s0, 3
	alsl.d	$a1, $s0, $a1, 2
	add.d	$fp, $a0, $a1
	slli.d	$a0, $s3, 4
	alsl.d	$s6, $s3, $a0, 3
	add.w	$s3, $s7, $s3
	.p2align	4, , 16
.LBB4_12:                               # %for.body54.us
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        #       Parent Loop BB4_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	ldx.w	$a2, $a0, $s1
	add.d	$a3, $a0, $s1
	add.d	$a0, $a1, $s6
	stx.w	$a2, $a0, $s1
	ld.w	$a1, $a3, 4
	add.d	$a0, $a0, $s1
	st.w	$a1, $a0, 4
	ld.w	$a1, $a3, 8
	st.w	$a1, $a0, 8
	ld.w	$a1, $a3, 12
	st.w	$a1, $a0, 12
	ld.w	$a1, $a3, 16
	st.w	$a1, $a0, 16
	ld.w	$a1, $a3, 20
	st.w	$a1, $a0, 20
	move	$a1, $fp
	move	$a2, $s8
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 24
	bne	$s5, $s1, .LBB4_12
# %bb.13:                               # %for.cond52.for.inc84_crit_edge.us
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.d	$s0, $s0, 1
	blt	$s0, $a0, .LBB4_11
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_14:                               # %for.end89
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $sp, 208
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.w	$fp, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	blt	$fp, $s5, .LBB4_4
# %bb.15:                               # %for.body32.preheader.1
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	move	$a2, $zero
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_16:                               # %for.inc87.1
                                        #   in Loop: Header=BB4_17 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ori	$s5, $zero, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB4_4
.LBB4_17:                               # %for.body32.1
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_20 Depth 3
                                        #         Child Loop BB4_21 Depth 4
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	ldx.d	$s7, $a1, $a2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$s3, $s7, 8
	ldx.d	$fp, $a1, $a2
	mul.w	$a1, $a0, $s3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	blt	$a0, $s5, .LBB4_16
# %bb.18:                               # %for.body32.1
                                        #   in Loop: Header=BB4_17 Depth=2
	blt	$s3, $s5, .LBB4_16
# %bb.19:                               # %for.body46.us.preheader.1
                                        #   in Loop: Header=BB4_17 Depth=2
	move	$s5, $zero
	move	$s2, $zero
	slli.d	$a0, $s3, 4
	alsl.d	$s4, $s3, $a0, 3
	.p2align	4, , 16
.LBB4_20:                               # %for.body46.us.1
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_21 Depth 4
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s1, $zero
	slli.d	$a1, $s5, 3
	alsl.d	$a1, $s5, $a1, 2
	add.d	$s0, $a0, $a1
	slli.d	$a0, $s2, 4
	alsl.d	$s6, $s2, $a0, 3
	add.w	$s2, $s3, $s2
	.p2align	4, , 16
.LBB4_21:                               # %for.body54.us.1
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_17 Depth=2
                                        #       Parent Loop BB4_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	ldx.w	$a2, $a0, $s1
	add.d	$a3, $a0, $s1
	add.d	$a0, $a1, $s6
	stx.w	$a2, $a0, $s1
	ld.w	$a1, $a3, 4
	add.d	$a0, $a0, $s1
	st.w	$a1, $a0, 4
	ld.w	$a1, $a3, 8
	st.w	$a1, $a0, 8
	ld.w	$a1, $a3, 12
	st.w	$a1, $a0, 12
	ld.w	$a1, $a3, 16
	st.w	$a1, $a0, 16
	ld.w	$a1, $a3, 20
	st.w	$a1, $a0, 20
	move	$a1, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 24
	bne	$s4, $s1, .LBB4_21
# %bb.22:                               # %for.cond52.for.inc84_crit_edge.us.1
                                        #   in Loop: Header=BB4_20 Depth=3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.d	$s5, $s5, 1
	blt	$s5, $a0, .LBB4_20
	b	.LBB4_16
.LBB4_23:                               # %for.end105
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $fp, 80
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 96
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 88
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $fp, 112
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $fp, 120
	blt	$s1, $s5, .LBB4_26
# %bb.24:                               # %for.body116.preheader
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB4_25:                               # %for.body116
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, -8
	ld.w	$a2, $a0, -4
	ld.w	$a3, $a0, 0
	ld.w	$a4, $s2, 0
	mul.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $a3
	div.w	$a1, $a4, $a1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, -1
	addi.d	$a0, $a0, 12
	bnez	$s1, .LBB4_25
	b	.LBB4_27
.LBB4_26:
	movgr2fr.d	$fa0, $zero
.LBB4_27:                               # %for.end129
	ld.w	$a0, $s0, 112
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 72
	add.d	$a0, $a1, $a0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 136
	move	$a0, $zero
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end4:
	.size	hypre_PointRelaxSetup, .Lfunc_end4-hypre_PointRelaxSetup
                                        # -- End function
	.globl	hypre_PointRelax                # -- Begin function hypre_PointRelax
	.p2align	5
	.type	hypre_PointRelax,@function
hypre_PointRelax:                       # @hypre_PointRelax
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 616                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 608                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 600                  # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$s1, $a0, 16
	ld.w	$fp, $a0, 24
	fld.d	$fs0, $a0, 32
	ld.w	$a0, $a0, 40
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 56
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 64
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 104
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a0, $s0, 112
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 120
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $s0, 132
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	pcaddu18i	$ra, %call36(hypre_BeginTiming)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 80
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 88
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 96
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 80
	st.d	$s2, $sp, 272                   # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 96
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 88
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.w	$zero, $s0, 128
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	beqz	$s1, .LBB5_33
# %bb.1:                                # %if.end26
	ld.d	$a0, $s4, 24
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s4, $sp, 288                   # 8-byte Folded Spill
	beqz	$fp, .LBB5_36
# %bb.2:                                # %if.then29
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a1
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a1, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                # %for.inc522
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 16
	move	$a2, $zero
	beqz	$a1, .LBB5_30
.LBB5_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #       Child Loop BB5_11 Depth 3
                                        #         Child Loop BB5_16 Depth 4
                                        #           Child Loop BB5_19 Depth 5
                                        #             Child Loop BB5_23 Depth 6
                                        #             Child Loop BB5_28 Depth 6
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ldx.d	$a4, $a1, $a0
	ld.w	$a1, $a4, 8
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB5_3
# %bb.5:                                # %for.body39.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$a7, $zero
	st.d	$a4, $sp, 432                   # 8-byte Folded Spill
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_6:                                # %for.inc519.loopexit
                                        #   in Loop: Header=BB5_8 Depth=2
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	ld.w	$a1, $a4, 8
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
.LBB5_7:                                # %for.inc519
                                        #   in Loop: Header=BB5_8 Depth=2
	addi.d	$a7, $a7, 1
	bge	$a7, $a1, .LBB5_3
.LBB5_8:                                # %for.body39
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_11 Depth 3
                                        #         Child Loop BB5_16 Depth 4
                                        #           Child Loop BB5_19 Depth 5
                                        #             Child Loop BB5_23 Depth 6
                                        #             Child Loop BB5_28 Depth 6
	ld.d	$a2, $a4, 0
	slli.d	$a0, $a7, 3
	ldx.d	$t0, $a2, $a0
	ld.w	$a2, $t0, 8
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB5_7
# %bb.9:                                # %for.body71.lr.ph
                                        #   in Loop: Header=BB5_8 Depth=2
	ld.d	$a1, $s4, 40
	move	$t1, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a6, 16
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $a5, 16
	alsl.d	$a4, $a7, $a7, 1
	slli.d	$a4, $a4, 3
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a1, $s4, 64
	add.d	$a2, $a2, $a4
	st.d	$a2, $sp, 456                   # 8-byte Folded Spill
	add.d	$a2, $a3, $a4
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	ld.d	$t2, $s4, 48
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $a5, 40
	ld.d	$a2, $a6, 40
	st.d	$a7, $sp, 440                   # 8-byte Folded Spill
	slli.d	$a3, $a7, 2
	ld.d	$a4, $a5, 24
	ldx.w	$a1, $a1, $a3
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a5
	ld.d	$s0, $a6, 24
	ldx.w	$s2, $a2, $a3
	alsl.d	$s8, $a1, $a4, 3
	st.d	$t2, $sp, 568                   # 8-byte Folded Spill
	move	$s4, $a0
	alsl.d	$s3, $a0, $t2, 3
	addi.d	$a0, $s3, 32
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	alsl.d	$s5, $s2, $s0, 3
	addi.d	$a0, $s5, 32
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	st.d	$t0, $sp, 472                   # 8-byte Folded Spill
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               # %for.end515
                                        #   in Loop: Header=BB5_11 Depth=3
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a0, $t0, 8
	ld.d	$t1, $sp, 488                   # 8-byte Folded Reload
	addi.d	$t1, $t1, 1
	bge	$t1, $a0, .LBB5_6
.LBB5_11:                               # %for.body71
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_16 Depth 4
                                        #           Child Loop BB5_19 Depth 5
                                        #             Child Loop BB5_23 Depth 6
                                        #             Child Loop BB5_28 Depth 6
	ld.d	$s1, $t0, 0
	slli.d	$a0, $t1, 4
	st.d	$t1, $sp, 488                   # 8-byte Folded Spill
	alsl.d	$s6, $t1, $a0, 3
	add.d	$fp, $s1, $s6
	addi.d	$a2, $sp, 580
	move	$a0, $fp
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 588
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 544                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB5_10
# %bb.12:                               # %for.cond473.preheader.lr.ph
                                        #   in Loop: Header=BB5_11 Depth=3
	ld.w	$a1, $sp, 584
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB5_10
# %bb.13:                               # %for.cond473.preheader.us.preheader
                                        #   in Loop: Header=BB5_11 Depth=3
	move	$a2, $zero
	ldx.w	$a4, $s1, $s6
	ld.d	$t4, $sp, 464                   # 8-byte Folded Reload
	ld.w	$a5, $t4, 0
	ld.w	$a7, $fp, 4
	ld.w	$a0, $t4, 4
	ld.w	$t0, $fp, 8
	ld.w	$a3, $t4, 8
	ld.w	$a6, $t4, 16
	sub.d	$t1, $a4, $a5
	sub.d	$t2, $a7, $a0
	sub.d	$t3, $t0, $a3
	sub.w	$a0, $a6, $a0
	addi.w	$a3, $zero, -1
	slt	$a6, $a3, $a0
	maskeqz	$a0, $a0, $a6
	masknez	$a6, $a3, $a6
	or	$a0, $a0, $a6
	ld.w	$a6, $t4, 12
	addi.d	$a0, $a0, 1
	mul.d	$t3, $a0, $t3
	add.d	$t2, $t2, $t3
	sub.w	$a5, $a6, $a5
	slt	$a6, $a3, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a3, $a6
	or	$a5, $a5, $a6
	addi.d	$a6, $a5, 1
	mul.d	$a5, $t2, $a6
	add.w	$t3, $t1, $a5
	ld.d	$t7, $sp, 456                   # 8-byte Folded Reload
	ld.w	$a5, $t7, 0
	ld.w	$t1, $t7, 4
	ld.w	$t2, $t7, 8
	ld.w	$t4, $t7, 16
	sub.d	$t5, $a4, $a5
	sub.d	$t6, $a7, $t1
	sub.d	$t2, $t0, $t2
	sub.w	$t1, $t4, $t1
	slt	$t4, $a3, $t1
	maskeqz	$t1, $t1, $t4
	masknez	$t4, $a3, $t4
	or	$t1, $t1, $t4
	ld.w	$t4, $t7, 12
	addi.d	$t1, $t1, 1
	mul.d	$t2, $t1, $t2
	add.d	$t2, $t6, $t2
	sub.w	$a5, $t4, $a5
	slt	$t4, $a3, $a5
	maskeqz	$a5, $a5, $t4
	masknez	$t4, $a3, $t4
	or	$a5, $a5, $t4
	addi.d	$t4, $a5, 1
	mul.d	$a5, $t2, $t4
	add.w	$t2, $t5, $a5
	ld.d	$t8, $sp, 448                   # 8-byte Folded Reload
	ld.w	$a5, $t8, 0
	ld.w	$t5, $t8, 4
	ld.w	$t6, $t8, 8
	ld.w	$t7, $t8, 16
	sub.d	$a4, $a4, $a5
	sub.d	$a7, $a7, $t5
	sub.d	$t0, $t0, $t6
	sub.w	$t5, $t7, $t5
	slt	$t6, $a3, $t5
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a3, $t6
	or	$t5, $t5, $t6
	ld.w	$t6, $t8, 12
	addi.d	$t5, $t5, 1
	mul.d	$t0, $t5, $t0
	add.d	$a7, $a7, $t0
	sub.w	$a5, $t6, $a5
	slt	$t0, $a3, $a5
	maskeqz	$a5, $a5, $t0
	masknez	$a3, $a3, $t0
	or	$a3, $a5, $a3
	addi.d	$t0, $a3, 1
	ld.d	$t8, $sp, 480                   # 8-byte Folded Reload
	ld.w	$a5, $t8, 4
	mul.d	$a3, $a7, $t0
	add.w	$a3, $a4, $a3
	ld.w	$a4, $t8, 0
	mul.d	$t6, $a5, $a6
	mul.d	$t7, $a5, $t4
	ld.w	$a7, $t8, 8
	mul.d	$t8, $t0, $a5
	ld.wu	$a5, $sp, 580
	mul.d	$t0, $t0, $t5
	mul.d	$t5, $t0, $a7
	mul.d	$t0, $t4, $t1
	mul.d	$t1, $t0, $a7
	mul.d	$a0, $a6, $a0
	mul.d	$a0, $a0, $a7
	mul.d	$t4, $a4, $a5
	sub.d	$a6, $t6, $t4
	sub.d	$a7, $t7, $t4
	sub.d	$t0, $t8, $t4
	mul.d	$fp, $a1, $t6
	sub.d	$a0, $a0, $fp
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	mul.d	$a0, $a1, $t7
	sub.d	$a0, $t1, $a0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	mul.d	$a0, $a1, $t8
	sub.d	$a0, $t5, $a0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	addi.d	$a0, $a1, -1
	mul.d	$t1, $a6, $a0
	add.d	$t1, $t1, $t6
	sub.d	$t1, $t1, $t4
	st.d	$t1, $sp, 512                   # 8-byte Folded Spill
	mul.d	$t1, $a7, $a0
	add.d	$t1, $t1, $t7
	sub.d	$t1, $t1, $t4
	st.d	$t1, $sp, 504                   # 8-byte Folded Spill
	mul.d	$a0, $t0, $a0
	add.d	$a0, $a0, $t8
	sub.d	$a0, $a0, $t4
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ori	$a0, $zero, 7
	sltu	$a0, $a0, $a5
	addi.d	$t1, $a4, -1
	sltui	$t1, $t1, 1
	and	$t7, $a0, $t1
	bstrpick.d	$a0, $a5, 30, 3
	slli.d	$s6, $a0, 3
	mul.d	$t4, $s6, $a4
	slli.d	$t5, $a4, 6
	slli.d	$t6, $a4, 3
	b	.LBB5_16
	.p2align	4, , 16
.LBB5_14:                               # %for.cond476.preheader.us829.preheader
                                        #   in Loop: Header=BB5_16 Depth=4
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	add.d	$t3, $a0, $t3
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	add.d	$t2, $a0, $t2
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	add.d	$a3, $a0, $a3
.LBB5_15:                               # %for.cond473.for.end500_crit_edge.us
                                        #   in Loop: Header=BB5_16 Depth=4
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	add.w	$t3, $a0, $t3
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	add.w	$t2, $a0, $t2
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	add.w	$a3, $a0, $a3
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB5_10
.LBB5_16:                               # %for.cond473.preheader.us
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        #       Parent Loop BB5_11 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB5_19 Depth 5
                                        #             Child Loop BB5_23 Depth 6
                                        #             Child Loop BB5_28 Depth 6
	addi.w	$a0, $a5, 0
	ori	$t1, $zero, 1
	blt	$a0, $t1, .LBB5_14
# %bb.17:                               # %for.cond476.preheader.us.us.preheader
                                        #   in Loop: Header=BB5_16 Depth=4
	move	$t1, $zero
	b	.LBB5_19
	.p2align	4, , 16
.LBB5_18:                               # %for.cond476.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB5_19 Depth=5
	add.w	$t3, $a6, $ra
	add.w	$t2, $a7, $a0
	addi.w	$t1, $t1, 1
	add.w	$a3, $t0, $a3
	beq	$t1, $a1, .LBB5_15
.LBB5_19:                               # %for.cond476.preheader.us.us
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        #       Parent Loop BB5_11 Depth=3
                                        #         Parent Loop BB5_16 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB5_23 Depth 6
                                        #             Child Loop BB5_28 Depth 6
	beqz	$t7, .LBB5_25
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_19 Depth=5
	alsl.d	$s1, $a3, $s8, 3
	add.d	$a0, $s2, $t2
	alsl.d	$a0, $a0, $s0, 3
	sub.d	$a0, $s1, $a0
	move	$t8, $zero
	ori	$fp, $zero, 64
	bltu	$a0, $fp, .LBB5_26
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_19 Depth=5
	add.d	$a0, $s4, $t3
	ld.d	$s7, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s7, 3
	sub.d	$a0, $s1, $a0
	bltu	$a0, $fp, .LBB5_26
# %bb.22:                               # %vector.ph
                                        #   in Loop: Header=BB5_19 Depth=5
	move	$t8, $zero
	add.d	$a3, $t4, $a3
	add.d	$a0, $t4, $t2
	add.d	$ra, $t4, $t3
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$t3, $t3, $fp, 3
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$t2, $t2, $fp, 3
	move	$s7, $s6
	.p2align	4, , 16
.LBB5_23:                               # %vector.body
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        #       Parent Loop BB5_11 Depth=3
                                        #         Parent Loop BB5_16 Depth=4
                                        #           Parent Loop BB5_19 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	add.d	$fp, $t2, $t8
	xvld	$xr0, $fp, -32
	xvldx	$xr1, $t2, $t8
	add.d	$fp, $t3, $t8
	xvld	$xr2, $fp, -32
	xvldx	$xr3, $t3, $t8
	xvfdiv.d	$xr0, $xr0, $xr2
	xvfdiv.d	$xr1, $xr1, $xr3
	add.d	$fp, $s1, $t8
	xvstx	$xr0, $s1, $t8
	xvst	$xr1, $fp, 32
	addi.d	$s7, $s7, -8
	add.d	$t8, $t8, $t5
	bnez	$s7, .LBB5_23
# %bb.24:                               # %middle.block
                                        #   in Loop: Header=BB5_19 Depth=5
	move	$t8, $s6
	beq	$s6, $a5, .LBB5_18
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_25:                               #   in Loop: Header=BB5_19 Depth=5
	move	$t8, $zero
.LBB5_26:                               #   in Loop: Header=BB5_19 Depth=5
	move	$a0, $t2
	move	$ra, $t3
.LBB5_27:                               # %for.body478.us.us.preheader
                                        #   in Loop: Header=BB5_19 Depth=5
	move	$t2, $zero
	move	$t3, $zero
	alsl.d	$s1, $a3, $s8, 3
	alsl.d	$s7, $a0, $s5, 3
	alsl.d	$fp, $ra, $s3, 3
	sub.d	$t8, $a5, $t8
	.p2align	4, , 16
.LBB5_28:                               # %for.body478.us.us
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        #       Parent Loop BB5_11 Depth=3
                                        #         Parent Loop BB5_16 Depth=4
                                        #           Parent Loop BB5_19 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fldx.d	$fa0, $s7, $t3
	fldx.d	$fa1, $fp, $t3
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s1, $t3
	add.d	$t3, $t3, $t6
	addi.w	$t8, $t8, -1
	sub.d	$t2, $t2, $a4
	bnez	$t8, .LBB5_28
# %bb.29:                               # %for.cond476.for.end_crit_edge.us.us.loopexit
                                        #   in Loop: Header=BB5_19 Depth=5
	sub.d	$a3, $a3, $t2
	sub.d	$a0, $a0, $t2
	sub.d	$ra, $ra, $t2
	b	.LBB5_18
.LBB5_30:                               # %for.end524
	vldi	$vr0, -912
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB5_32
# %bb.31:                               # %if.then526
	fmov.d	$fa0, $fs0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructScale)
	jirl	$ra, $ra, 0
.LBB5_32:                               # %if.end528
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mod.w	$a2, $a0, $a1
	xori	$a1, $a2, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB5_37
	b	.LBB5_111
.LBB5_33:                               # %if.then
	beqz	$fp, .LBB5_35
# %bb.34:                               # %if.then22
	movgr2fr.d	$fa0, $zero
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorSetConstantValues)
	jirl	$ra, $ra, 0
.LBB5_35:                               # %if.end
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 132
	b	.LBB5_112
.LBB5_36:
	move	$a2, $zero
	move	$a1, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB5_111
.LBB5_37:                               # %while.body.lr.ph
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a3, 31, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	vldi	$vr0, -912
	fsub.d	$fs1, $fa0, $fs0
	slli.d	$a0, $a3, 2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	b	.LBB5_41
	.p2align	4, , 16
.LBB5_38:                               # %for.end1960
                                        #   in Loop: Header=BB5_41 Depth=1
	ld.d	$a0, $sp, 24
	movgr2cf	$fcc0, $a0
	bcnez	$fcc0, .LBB5_110
# %bb.39:                               # %if.then1963
                                        #   in Loop: Header=BB5_41 Depth=1
	fmov.d	$fa0, $fs1
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_StructScale)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructAxpy)
	jirl	$ra, $ra, 0
.LBB5_40:                               # %if.end1969
                                        #   in Loop: Header=BB5_41 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mod.w	$a2, $a0, $a1
	sltui	$a0, $a2, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB5_111
.LBB5_41:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_43 Depth 2
                                        #       Child Loop BB5_49 Depth 3
                                        #         Child Loop BB5_52 Depth 4
                                        #           Child Loop BB5_57 Depth 5
                                        #             Child Loop BB5_60 Depth 6
                                        #               Child Loop BB5_67 Depth 7
                                        #               Child Loop BB5_64 Depth 7
                                        #           Child Loop BB5_72 Depth 5
                                        #             Child Loop BB5_78 Depth 6
                                        #               Child Loop BB5_81 Depth 7
                                        #                 Child Loop BB5_85 Depth 8
                                        #                 Child Loop BB5_90 Depth 8
                                        #           Child Loop BB5_97 Depth 5
                                        #             Child Loop BB5_100 Depth 6
                                        #               Child Loop BB5_108 Depth 7
                                        #               Child Loop BB5_105 Depth 7
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$fp, $a2, $a1
	alsl.d	$a0, $a0, $a1, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructCopy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $fp, 8
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a1, $fp, 16
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	b	.LBB5_43
	.p2align	4, , 16
.LBB5_42:                               # %for.inc1958
                                        #   in Loop: Header=BB5_43 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 1
	move	$a2, $zero
	beqz	$a1, .LBB5_38
.LBB5_43:                               # %for.body547
                                        #   Parent Loop BB5_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_49 Depth 3
                                        #         Child Loop BB5_52 Depth 4
                                        #           Child Loop BB5_57 Depth 5
                                        #             Child Loop BB5_60 Depth 6
                                        #               Child Loop BB5_67 Depth 7
                                        #               Child Loop BB5_64 Depth 7
                                        #           Child Loop BB5_72 Depth 5
                                        #             Child Loop BB5_78 Depth 6
                                        #               Child Loop BB5_81 Depth 7
                                        #                 Child Loop BB5_85 Depth 8
                                        #                 Child Loop BB5_90 Depth 8
                                        #           Child Loop BB5_97 Depth 5
                                        #             Child Loop BB5_100 Depth 6
                                        #               Child Loop BB5_108 Depth 7
                                        #               Child Loop BB5_105 Depth 7
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	andi	$a0, $a0, 1
	beqz	$a0, .LBB5_45
# %bb.44:                               # %sw.bb552
                                        #   in Loop: Header=BB5_43 Depth=2
	ld.d	$a0, $sp, 592
	pcaddu18i	$ra, %call36(hypre_FinalizeIndtComputations)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.w	$a0, $a3, 8
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB5_46
	b	.LBB5_42
	.p2align	4, , 16
.LBB5_45:                               # %sw.bb548
                                        #   in Loop: Header=BB5_43 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	addi.d	$a2, $sp, 592
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_InitializeIndtComputations)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.w	$a0, $a3, 8
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_42
.LBB5_46:                               # %for.body560.preheader
                                        #   in Loop: Header=BB5_43 Depth=2
	move	$a7, $zero
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	b	.LBB5_49
	.p2align	4, , 16
.LBB5_47:                               # %for.inc1955.loopexit
                                        #   in Loop: Header=BB5_49 Depth=3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 8
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
.LBB5_48:                               # %for.inc1955
                                        #   in Loop: Header=BB5_49 Depth=3
	addi.d	$a7, $a7, 1
	bge	$a7, $a0, .LBB5_42
.LBB5_49:                               # %for.body560
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_52 Depth 4
                                        #           Child Loop BB5_57 Depth 5
                                        #             Child Loop BB5_60 Depth 6
                                        #               Child Loop BB5_67 Depth 7
                                        #               Child Loop BB5_64 Depth 7
                                        #           Child Loop BB5_72 Depth 5
                                        #             Child Loop BB5_78 Depth 6
                                        #               Child Loop BB5_81 Depth 7
                                        #                 Child Loop BB5_85 Depth 8
                                        #                 Child Loop BB5_90 Depth 8
                                        #           Child Loop BB5_97 Depth 5
                                        #             Child Loop BB5_100 Depth 6
                                        #               Child Loop BB5_108 Depth 7
                                        #               Child Loop BB5_105 Depth 7
	ld.d	$a1, $a3, 0
	slli.d	$a2, $a7, 3
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	ldx.d	$t0, $a1, $a2
	ld.w	$a1, $t0, 8
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB5_48
# %bb.50:                               # %for.body596.lr.ph
                                        #   in Loop: Header=BB5_49 Depth=3
	ld.d	$a0, $s4, 40
	move	$t1, $zero
	ld.d	$a0, $a0, 0
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a6, 16
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 16
	alsl.d	$a3, $a7, $a7, 1
	slli.d	$a3, $a3, 3
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $a5, 16
	add.d	$a0, $a0, $a3
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a3
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	add.d	$a0, $a2, $a3
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a5, 40
	ld.d	$a2, $a6, 40
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a4, $a7, 2
	ld.d	$a5, $a5, 24
	ldx.w	$a1, $a1, $a4
	ld.d	$a6, $a6, 24
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	ldx.w	$a2, $a2, $a4
	add.d	$a0, $a0, $a3
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$a5, $sp, 496                   # 8-byte Folded Spill
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	alsl.d	$fp, $a1, $a5, 3
	addi.d	$a0, $fp, 8
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$a6, $sp, 480                   # 8-byte Folded Spill
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	alsl.d	$a0, $a2, $a6, 3
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 32
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	b	.LBB5_52
	.p2align	4, , 16
.LBB5_51:                               # %for.end1951
                                        #   in Loop: Header=BB5_52 Depth=4
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $t0, 8
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	addi.d	$t1, $t1, 1
	bge	$t1, $a0, .LBB5_47
.LBB5_52:                               # %for.body596
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB5_57 Depth 5
                                        #             Child Loop BB5_60 Depth 6
                                        #               Child Loop BB5_67 Depth 7
                                        #               Child Loop BB5_64 Depth 7
                                        #           Child Loop BB5_72 Depth 5
                                        #             Child Loop BB5_78 Depth 6
                                        #               Child Loop BB5_81 Depth 7
                                        #                 Child Loop BB5_85 Depth 8
                                        #                 Child Loop BB5_90 Depth 8
                                        #           Child Loop BB5_97 Depth 5
                                        #             Child Loop BB5_100 Depth 6
                                        #               Child Loop BB5_108 Depth 7
                                        #               Child Loop BB5_105 Depth 7
	ld.d	$s0, $t0, 0
	slli.d	$a0, $t1, 4
	st.d	$t1, $sp, 200                   # 8-byte Folded Spill
	alsl.d	$s1, $t1, $a0, 3
	add.d	$s6, $s0, $s1
	addi.d	$a2, $sp, 580
	move	$a0, $s6
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ldx.w	$a4, $s0, $s1
	ld.w	$a5, $s6, 4
	ld.w	$t0, $s6, 8
	addi.w	$a7, $zero, -1
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a6, 0
	ld.w	$a1, $a6, 4
	ld.w	$a2, $a6, 8
	ld.w	$a3, $a6, 16
	st.d	$a4, $sp, 344                   # 8-byte Folded Spill
	sub.d	$a4, $a4, $a0
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	sub.d	$a5, $a5, $a1
	st.d	$t0, $sp, 328                   # 8-byte Folded Spill
	sub.d	$a2, $t0, $a2
	sub.w	$a1, $a3, $a1
	slt	$a3, $a7, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a7, $a3
	or	$a1, $a1, $a3
	ld.w	$a3, $a6, 12
	addi.d	$a6, $a1, 1
	mul.d	$a1, $a6, $a2
	add.d	$a1, $a5, $a1
	sub.w	$a0, $a3, $a0
	slt	$a2, $a7, $a0
	maskeqz	$a0, $a0, $a2
	st.d	$a7, $sp, 352                   # 8-byte Folded Spill
	masknez	$a2, $a7, $a2
	or	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	mul.d	$a1, $a1, $a0
	ld.w	$a2, $s2, 4
	add.w	$s7, $a1, $a4
	ld.w	$a1, $s2, 0
	ld.w	$a4, $s2, 8
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	mul.d	$a5, $a0, $a2
	mulw.d.w	$a0, $a0, $a6
	ld.wu	$a2, $sp, 580
	ld.w	$a3, $sp, 584
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	mul.d	$a0, $a0, $a4
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.w	$a4, $sp, 588
	mul.d	$a0, $a2, $a1
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	st.d	$a5, $sp, 240                   # 8-byte Folded Spill
	mul.d	$a0, $a3, $a5
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a0, $a3, -1
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$a0, $zero, 7
	sltu	$a0, $a0, $a2
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.w	$a0, $a2, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$s6, $zero, 64
	st.d	$a4, $sp, 536                   # 8-byte Folded Spill
	blt	$a4, $a0, .LBB5_69
# %bb.53:                               # %for.cond943.preheader.lr.ph
                                        #   in Loop: Header=BB5_52 Depth=4
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB5_69
# %bb.54:                               # %for.cond943.preheader.us.preheader
                                        #   in Loop: Header=BB5_52 Depth=4
	move	$a0, $zero
	ld.d	$t2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a4, $t2, 0
	ld.w	$a5, $t2, 4
	ld.w	$a6, $t2, 8
	ld.w	$a7, $t2, 16
	ld.d	$t0, $sp, 344                   # 8-byte Folded Reload
	sub.d	$t0, $t0, $a4
	ld.d	$t1, $sp, 336                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $a5
	ld.d	$t3, $sp, 328                   # 8-byte Folded Reload
	sub.d	$a6, $t3, $a6
	sub.w	$a5, $a7, $a5
	ld.d	$t3, $sp, 352                   # 8-byte Folded Reload
	slt	$a7, $t3, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t3, $a7
	or	$a5, $a5, $a7
	ld.w	$a7, $t2, 12
	addi.d	$a5, $a5, 1
	mul.d	$a6, $a5, $a6
	add.d	$a6, $t1, $a6
	sub.w	$a4, $a7, $a4
	slt	$a7, $t3, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $t3, $a7
	or	$a4, $a4, $a7
	addi.d	$a4, $a4, 1
	mul.d	$a6, $a6, $a4
	add.w	$t8, $t0, $a6
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	mul.d	$t0, $a6, $a4
	mul.d	$a4, $a4, $a5
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	mul.d	$a6, $a4, $a5
	ld.d	$t3, $sp, 384                   # 8-byte Folded Reload
	sub.d	$a4, $t0, $t3
	ld.d	$t2, $sp, 240                   # 8-byte Folded Reload
	sub.d	$a5, $t2, $t3
	mul.d	$a7, $a3, $t0
	sub.d	$a6, $a6, $a7
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	sub.d	$a7, $a7, $t1
	ld.d	$t4, $sp, 368                   # 8-byte Folded Reload
	mul.d	$t1, $a4, $t4
	add.d	$t0, $t1, $t0
	sub.d	$t0, $t0, $t3
	mul.d	$t1, $a5, $t4
	add.d	$t1, $t1, $t2
	sub.d	$t1, $t1, $t3
	addi.d	$t2, $a1, -1
	sltui	$t2, $t2, 1
	ld.d	$t3, $sp, 232                   # 8-byte Folded Reload
	and	$t2, $t3, $t2
	bstrpick.d	$t3, $a2, 30, 3
	slli.d	$t3, $t3, 3
	mul.d	$t4, $t3, $a1
	slli.d	$t5, $a1, 6
	slli.d	$t6, $a1, 3
	move	$s1, $s7
	b	.LBB5_57
	.p2align	4, , 16
.LBB5_55:                               # %for.cond947.preheader.us869.preheader
                                        #   in Loop: Header=BB5_57 Depth=5
	add.d	$t8, $t0, $t8
	add.d	$s1, $t1, $s1
.LBB5_56:                               # %for.cond943.for.end968_crit_edge.us
                                        #   in Loop: Header=BB5_57 Depth=5
	add.w	$t8, $a6, $t8
	addi.w	$a0, $a0, 1
	add.w	$s1, $a7, $s1
	ld.d	$t7, $sp, 536                   # 8-byte Folded Reload
	beq	$a0, $t7, .LBB5_69
.LBB5_57:                               # %for.cond943.preheader.us
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB5_60 Depth 6
                                        #               Child Loop BB5_67 Depth 7
                                        #               Child Loop BB5_64 Depth 7
	ori	$t7, $zero, 1
	ld.d	$s0, $sp, 528                   # 8-byte Folded Reload
	blt	$s0, $t7, .LBB5_55
# %bb.58:                               # %for.cond947.preheader.us.us.preheader
                                        #   in Loop: Header=BB5_57 Depth=5
	move	$t7, $zero
	b	.LBB5_60
	.p2align	4, , 16
.LBB5_59:                               # %for.cond947.for.end959_crit_edge.us.us
                                        #   in Loop: Header=BB5_60 Depth=6
	add.w	$t8, $a4, $s2
	addi.w	$t7, $t7, 1
	add.w	$s1, $a5, $s0
	beq	$t7, $a3, .LBB5_56
.LBB5_60:                               # %for.cond947.preheader.us.us
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        #           Parent Loop BB5_57 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB5_67 Depth 7
                                        #               Child Loop BB5_64 Depth 7
	beqz	$t2, .LBB5_62
# %bb.61:                               # %vector.memcheck1122
                                        #   in Loop: Header=BB5_60 Depth=6
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	add.d	$s0, $s0, $s1
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$s0, $s0, $s2, 3
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	add.d	$s2, $s2, $t8
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$s2, $s2, $s3, 3
	sub.d	$s0, $s0, $s2
	bgeu	$s0, $s6, .LBB5_66
.LBB5_62:                               #   in Loop: Header=BB5_60 Depth=6
	move	$s3, $zero
	move	$s0, $s1
	move	$s2, $t8
.LBB5_63:                               # %for.body950.us.us.preheader
                                        #   in Loop: Header=BB5_60 Depth=6
	move	$t8, $zero
	move	$s1, $zero
	alsl.d	$s4, $s0, $fp, 3
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$s5, $s2, $s5, 3
	sub.d	$s3, $a2, $s3
	.p2align	4, , 16
.LBB5_64:                               # %for.body950.us.us
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        #           Parent Loop BB5_57 Depth=5
                                        #             Parent Loop BB5_60 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s5, $s1
	fstx.d	$fa0, $s4, $s1
	add.d	$s1, $s1, $t6
	addi.w	$s3, $s3, -1
	sub.d	$t8, $t8, $a1
	bnez	$s3, .LBB5_64
# %bb.65:                               # %for.cond947.for.end959_crit_edge.us.us.loopexit
                                        #   in Loop: Header=BB5_60 Depth=6
	sub.d	$s0, $s0, $t8
	sub.d	$s2, $s2, $t8
	b	.LBB5_59
	.p2align	4, , 16
.LBB5_66:                               # %vector.ph1126
                                        #   in Loop: Header=BB5_60 Depth=6
	move	$s3, $zero
	add.d	$s0, $t4, $s1
	add.d	$s2, $t4, $t8
	alsl.d	$s1, $s1, $fp, 3
	ld.d	$s4, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$t8, $t8, $s4, 3
	move	$s4, $t3
	.p2align	4, , 16
.LBB5_67:                               # %vector.body1129
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        #           Parent Loop BB5_57 Depth=5
                                        #             Parent Loop BB5_60 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	add.d	$s5, $t8, $s3
	xvld	$xr0, $s5, -32
	xvldx	$xr1, $t8, $s3
	add.d	$s5, $s1, $s3
	xvstx	$xr0, $s1, $s3
	xvst	$xr1, $s5, 32
	addi.d	$s4, $s4, -8
	add.d	$s3, $s3, $t5
	bnez	$s4, .LBB5_67
# %bb.68:                               # %middle.block1136
                                        #   in Loop: Header=BB5_60 Depth=6
	move	$s3, $t3
	beq	$t3, $a2, .LBB5_59
	b	.LBB5_63
	.p2align	4, , 16
.LBB5_69:                               # %for.end980
                                        #   in Loop: Header=BB5_52 Depth=4
	st.d	$s7, $sp, 360                   # 8-byte Folded Spill
	addi.d	$a0, $a2, -1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB5_92
# %bb.70:                               # %for.body984.lr.ph
                                        #   in Loop: Header=BB5_52 Depth=4
	move	$a7, $zero
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a3
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	sub.d	$s6, $a4, $a5
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a6
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	mul.d	$a0, $s6, $a0
	add.d	$a0, $a0, $a4
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a4, $a0, 3
	st.d	$a4, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a4, 3
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	addi.d	$a0, $a1, -1
	sltui	$a0, $a0, 1
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	and	$t1, $a4, $a0
	bstrpick.d	$a0, $a2, 30, 3
	slli.d	$a5, $a0, 3
	mul.d	$t8, $a5, $a1
	slli.d	$t5, $a1, 6
	slli.d	$t7, $a1, 3
	b	.LBB5_72
	.p2align	4, , 16
.LBB5_71:                               # %for.inc1563
                                        #   in Loop: Header=BB5_72 Depth=5
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	beq	$a7, $a0, .LBB5_92
.LBB5_72:                               # %for.body984
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB5_78 Depth 6
                                        #               Child Loop BB5_81 Depth 7
                                        #                 Child Loop BB5_85 Depth 8
                                        #                 Child Loop BB5_90 Depth 8
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	st.d	$a7, $sp, 432                   # 8-byte Folded Spill
	beq	$a7, $a0, .LBB5_71
# %bb.73:                               # %if.then987
                                        #   in Loop: Header=BB5_72 Depth=5
	ori	$a0, $zero, 1
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	blt	$a4, $a0, .LBB5_71
# %bb.74:                               # %for.cond1514.preheader.lr.ph
                                        #   in Loop: Header=BB5_72 Depth=5
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB5_71
# %bb.75:                               # %for.cond1514.preheader.us.preheader
                                        #   in Loop: Header=BB5_72 Depth=5
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a4, 64
	st.d	$zero, $sp, 552                 # 8-byte Folded Spill
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a6
	ld.d	$a4, $a4, 48
	st.d	$a4, $sp, 560                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $t0, 40
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	slli.d	$a6, $a7, 2
	ldx.w	$a0, $a0, $a6
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a0, $t0, 24
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ldx.w	$a0, $a4, $a6
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	alsl.d	$a6, $a7, $a7, 1
	slli.d	$a6, $a6, 2
	ld.d	$t3, $sp, 248                   # 8-byte Folded Reload
	add.d	$t0, $t3, $a6
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	ld.w	$t4, $ra, 16
	ld.w	$t6, $ra, 4
	ldx.w	$t3, $t3, $a6
	ld.w	$a6, $t0, 4
	ld.w	$t0, $t0, 8
	sub.w	$t4, $t4, $t6
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	slt	$s0, $a0, $t4
	maskeqz	$t4, $t4, $s0
	masknez	$s0, $a0, $s0
	or	$t4, $t4, $s0
	ld.w	$s1, $ra, 12
	ld.w	$s2, $ra, 0
	addi.d	$t4, $t4, 1
	mul.d	$t0, $t4, $t0
	add.d	$s0, $t0, $a6
	sub.w	$a6, $s1, $s2
	slt	$t0, $a0, $a6
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $a0, $t0
	or	$t2, $a6, $t0
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a6, $s8, 0
	ld.w	$s1, $s8, 4
	ld.w	$s3, $s8, 8
	ld.w	$s4, $s8, 16
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	sub.d	$s5, $a4, $a6
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	sub.d	$s7, $a7, $s1
	ld.d	$t0, $sp, 328                   # 8-byte Folded Reload
	sub.d	$s3, $t0, $s3
	sub.w	$s1, $s4, $s1
	slt	$s4, $a0, $s1
	maskeqz	$s1, $s1, $s4
	masknez	$s4, $a0, $s4
	or	$s1, $s1, $s4
	ld.w	$s4, $s8, 12
	addi.d	$s8, $s1, 1
	mul.d	$s1, $s8, $s3
	add.d	$s1, $s7, $s1
	sub.w	$a6, $s4, $a6
	slt	$s3, $a0, $a6
	maskeqz	$a6, $a6, $s3
	masknez	$s3, $a0, $s3
	or	$s3, $a6, $s3
	addi.d	$s4, $s3, 1
	mul.d	$a6, $s1, $s4
	add.w	$s1, $s5, $a6
	ld.w	$a6, $ra, 8
	addi.d	$s5, $t2, 1
	sub.d	$s2, $a4, $s2
	sub.d	$t6, $a7, $t6
	sub.d	$a6, $t0, $a6
	mul.d	$a6, $a6, $t4
	add.d	$a6, $t6, $a6
	mul.d	$a6, $a6, $s5
	add.w	$a6, $s2, $a6
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	mul.d	$t6, $s4, $a0
	mul.d	$s7, $s5, $a0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	mul.d	$t4, $t4, $a0
	mul.d	$ra, $t4, $s5
	mul.d	$t4, $s8, $a0
	mul.d	$s2, $t4, $s4
	nor	$t4, $s3, $zero
	nor	$t0, $t2, $zero
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	mul.d	$t0, $a0, $t0
	mul.d	$s3, $a0, $t4
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	sub.d	$t4, $t6, $a0
	add.d	$a4, $s3, $s2
	st.d	$a4, $sp, 520                   # 8-byte Folded Spill
	sub.d	$s2, $s7, $a0
	add.d	$a4, $t0, $ra
	st.d	$a4, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.d	$t0, $a4, $t4
	sub.d	$t0, $t0, $a0
	add.d	$a7, $t0, $t6
	st.d	$a7, $sp, 456                   # 8-byte Folded Spill
	mul.d	$t0, $a4, $s2
	sub.d	$t0, $t0, $a0
	add.d	$a0, $t0, $s7
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$s8, $a4, $a0, 3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	add.d	$a7, $s8, $a0
	addi.d	$s3, $a7, 8
	mul.d	$a7, $s0, $s5
	add.w	$a7, $t3, $a7
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	add.d	$t0, $a4, $a7
	ld.d	$t2, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$s5, $t0, $t2, 3
	add.d	$t0, $s5, $a0
	addi.d	$s7, $t0, 8
	addi.d	$a0, $s8, 32
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	slli.d	$a4, $a4, 3
	alsl.d	$a4, $a7, $a4, 3
	add.d	$a4, $t2, $a4
	addi.d	$s0, $a4, 32
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	b	.LBB5_78
	.p2align	4, , 16
.LBB5_76:                               # %for.cond1518.preheader.us910.preheader
                                        #   in Loop: Header=BB5_78 Depth=6
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	add.d	$s1, $a7, $s1
	ld.d	$a7, $sp, 448                   # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
	add.d	$a0, $a7, $a0
.LBB5_77:                               # %for.cond1514.for.end1546_crit_edge.us
                                        #   in Loop: Header=BB5_78 Depth=6
	ld.d	$a7, $sp, 520                   # 8-byte Folded Reload
	add.w	$s1, $a7, $s1
	ld.d	$a7, $sp, 512                   # 8-byte Folded Reload
	add.w	$a6, $a7, $a6
	ld.d	$t0, $sp, 552                   # 8-byte Folded Reload
	addi.w	$t0, $t0, 1
	ld.d	$a7, $sp, 504                   # 8-byte Folded Reload
	add.w	$a0, $a7, $a0
	ld.d	$a7, $sp, 536                   # 8-byte Folded Reload
	st.d	$t0, $sp, 552                   # 8-byte Folded Spill
	beq	$t0, $a7, .LBB5_71
.LBB5_78:                               # %for.cond1514.preheader.us
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        #           Parent Loop BB5_72 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB5_81 Depth 7
                                        #                 Child Loop BB5_85 Depth 8
                                        #                 Child Loop BB5_90 Depth 8
	ori	$a7, $zero, 1
	ld.d	$t0, $sp, 528                   # 8-byte Folded Reload
	blt	$t0, $a7, .LBB5_76
# %bb.79:                               # %for.cond1518.preheader.us.us.preheader
                                        #   in Loop: Header=BB5_78 Depth=6
	move	$t2, $zero
	b	.LBB5_81
	.p2align	4, , 16
.LBB5_80:                               # %for.cond1518.for.end1534_crit_edge.us.us
                                        #   in Loop: Header=BB5_81 Depth=7
	add.w	$s1, $t4, $ra
	add.w	$a6, $s2, $t3
	addi.w	$t2, $t2, 1
	add.w	$a0, $s6, $a0
	beq	$t2, $a3, .LBB5_77
.LBB5_81:                               # %for.cond1518.preheader.us.us
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        #           Parent Loop BB5_72 Depth=5
                                        #             Parent Loop BB5_78 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB5_85 Depth 8
                                        #                 Child Loop BB5_90 Depth 8
	beqz	$t1, .LBB5_87
# %bb.82:                               # %vector.memcheck1071
                                        #   in Loop: Header=BB5_81 Depth=7
	alsl.d	$s4, $a0, $fp, 3
	ld.d	$a7, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a7, $a0, $a7, 3
	alsl.d	$t0, $s1, $s8, 3
	alsl.d	$t3, $s1, $s3, 3
	sltu	$t3, $s4, $t3
	sltu	$t0, $t0, $a7
	and	$t0, $t3, $t0
	move	$t6, $zero
	bnez	$t0, .LBB5_88
# %bb.83:                               # %vector.memcheck1071
                                        #   in Loop: Header=BB5_81 Depth=7
	alsl.d	$t0, $a6, $s5, 3
	alsl.d	$t3, $a6, $s7, 3
	sltu	$t3, $s4, $t3
	sltu	$a7, $t0, $a7
	and	$a7, $t3, $a7
	bnez	$a7, .LBB5_88
# %bb.84:                               # %vector.ph1099
                                        #   in Loop: Header=BB5_81 Depth=7
	move	$t6, $zero
	add.d	$a0, $t8, $a0
	add.d	$t3, $t8, $a6
	add.d	$ra, $t8, $s1
	ld.d	$a7, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$s1, $s1, $a7, 3
	alsl.d	$a6, $a6, $s0, 3
	move	$a7, $a5
	.p2align	4, , 16
.LBB5_85:                               # %vector.body1102
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        #           Parent Loop BB5_72 Depth=5
                                        #             Parent Loop BB5_78 Depth=6
                                        #               Parent Loop BB5_81 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	add.d	$t0, $s1, $t6
	xvld	$xr0, $t0, -32
	xvldx	$xr1, $s1, $t6
	add.d	$t0, $a6, $t6
	xvld	$xr2, $t0, -32
	xvldx	$xr3, $a6, $t6
	add.d	$t0, $s4, $t6
	xvldx	$xr4, $s4, $t6
	xvld	$xr5, $t0, 32
	xvbitrevi.d	$xr0, $xr0, 63
	xvbitrevi.d	$xr1, $xr1, 63
	xvfmadd.d	$xr0, $xr0, $xr2, $xr4
	xvfmadd.d	$xr1, $xr1, $xr3, $xr5
	xvstx	$xr0, $s4, $t6
	xvst	$xr1, $t0, 32
	addi.d	$a7, $a7, -8
	add.d	$t6, $t6, $t5
	bnez	$a7, .LBB5_85
# %bb.86:                               # %middle.block1114
                                        #   in Loop: Header=BB5_81 Depth=7
	move	$t6, $a5
	beq	$a5, $a2, .LBB5_80
	b	.LBB5_89
	.p2align	4, , 16
.LBB5_87:                               #   in Loop: Header=BB5_81 Depth=7
	move	$t6, $zero
.LBB5_88:                               #   in Loop: Header=BB5_81 Depth=7
	move	$t3, $a6
	move	$ra, $s1
.LBB5_89:                               # %for.body1521.us.us.preheader
                                        #   in Loop: Header=BB5_81 Depth=7
	move	$a6, $zero
	move	$a7, $zero
	alsl.d	$s1, $a0, $fp, 3
	alsl.d	$s4, $t3, $a4, 3
	alsl.d	$t0, $ra, $s8, 3
	sub.d	$t6, $a2, $t6
	.p2align	4, , 16
.LBB5_90:                               # %for.body1521.us.us
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        #           Parent Loop BB5_72 Depth=5
                                        #             Parent Loop BB5_78 Depth=6
                                        #               Parent Loop BB5_81 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	fldx.d	$fa0, $t0, $a7
	fldx.d	$fa1, $s4, $a7
	fldx.d	$fa2, $s1, $a7
	fneg.d	$fa0, $fa0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fstx.d	$fa0, $s1, $a7
	add.d	$a7, $a7, $t7
	addi.w	$t6, $t6, -1
	sub.d	$a6, $a6, $a1
	bnez	$t6, .LBB5_90
# %bb.91:                               # %for.cond1518.for.end1534_crit_edge.us.us.loopexit
                                        #   in Loop: Header=BB5_81 Depth=7
	sub.d	$a0, $a0, $a6
	sub.d	$t3, $t3, $a6
	sub.d	$ra, $ra, $a6
	b	.LBB5_80
	.p2align	4, , 16
.LBB5_92:                               # %for.end1565
                                        #   in Loop: Header=BB5_52 Depth=4
	ori	$a0, $zero, 1
	ld.d	$s7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	blt	$a4, $a0, .LBB5_51
# %bb.93:                               # %for.cond1913.preheader.lr.ph
                                        #   in Loop: Header=BB5_52 Depth=4
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB5_51
# %bb.94:                               # %for.cond1913.preheader.us.preheader
                                        #   in Loop: Header=BB5_52 Depth=4
	ld.d	$t2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $t2, 64
	move	$a6, $zero
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a4, $t3, 8
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a5
	ld.w	$a5, $t3, 4
	ld.w	$a7, $t3, 16
	ld.d	$t0, $sp, 328                   # 8-byte Folded Reload
	sub.d	$a4, $t0, $a4
	ld.w	$t0, $t3, 0
	ld.d	$t1, $sp, 336                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $a5
	sub.w	$a5, $a7, $a5
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	slt	$a7, $t5, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t5, $a7
	or	$a5, $a5, $a7
	addi.d	$a5, $a5, 1
	mul.d	$a4, $a5, $a4
	add.d	$a4, $t1, $a4
	ld.w	$a7, $t3, 12
	ld.d	$t3, $t2, 48
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$t4, $a0, $t1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $t0
	sub.w	$a7, $a7, $t0
	slt	$t0, $t5, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t5, $t0
	or	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	mul.d	$a4, $a4, $a7
	add.w	$s3, $a0, $a4
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	mul.d	$t0, $a7, $a0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	mul.d	$a0, $a5, $a0
	mul.d	$a5, $a0, $a7
	ld.d	$t5, $sp, 384                   # 8-byte Folded Reload
	sub.d	$a0, $t0, $t5
	ld.d	$t2, $sp, 240                   # 8-byte Folded Reload
	sub.d	$a4, $t2, $t5
	mul.d	$a7, $t0, $a3
	sub.d	$a5, $a5, $a7
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	sub.d	$a7, $a7, $t1
	ld.d	$t6, $sp, 368                   # 8-byte Folded Reload
	mul.d	$t1, $a0, $t6
	add.d	$t0, $t1, $t0
	sub.d	$t0, $t0, $t5
	mul.d	$t1, $a4, $t6
	add.d	$t1, $t1, $t2
	sub.d	$t1, $t1, $t5
	ld.d	$t2, $sp, 208                   # 8-byte Folded Reload
	bstrpick.d	$t5, $t2, 31, 0
	ld.d	$t2, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$t2, $t5, $t2, 3
	alsl.d	$t3, $t4, $t3, 3
	alsl.d	$t4, $t5, $t3, 3
	addi.d	$t4, $t4, 8
	addi.d	$t5, $a1, -1
	sltui	$t5, $t5, 1
	ld.d	$t6, $sp, 232                   # 8-byte Folded Reload
	and	$t5, $t6, $t5
	bstrpick.d	$t6, $a2, 30, 3
	slli.d	$t6, $t6, 3
	mul.d	$t7, $t6, $a1
	slli.d	$t8, $a1, 6
	addi.d	$s0, $t3, 32
	slli.d	$s1, $a1, 3
	b	.LBB5_97
	.p2align	4, , 16
.LBB5_95:                               # %for.cond1917.preheader.us954.preheader
                                        #   in Loop: Header=BB5_97 Depth=5
	add.d	$s3, $t0, $s3
	add.d	$s7, $t1, $s7
.LBB5_96:                               # %for.cond1913.for.end1939_crit_edge.us
                                        #   in Loop: Header=BB5_97 Depth=5
	add.w	$s3, $a5, $s3
	addi.w	$a6, $a6, 1
	add.w	$s7, $a7, $s7
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	beq	$a6, $s2, .LBB5_51
.LBB5_97:                               # %for.cond1913.preheader.us
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB5_100 Depth 6
                                        #               Child Loop BB5_108 Depth 7
                                        #               Child Loop BB5_105 Depth 7
	ori	$s2, $zero, 1
	ld.d	$s4, $sp, 528                   # 8-byte Folded Reload
	blt	$s4, $s2, .LBB5_95
# %bb.98:                               # %for.cond1917.preheader.us.us.preheader
                                        #   in Loop: Header=BB5_97 Depth=5
	move	$s2, $zero
	b	.LBB5_100
	.p2align	4, , 16
.LBB5_99:                               # %for.cond1917.for.end1930_crit_edge.us.us
                                        #   in Loop: Header=BB5_100 Depth=6
	add.w	$s3, $a0, $s5
	addi.w	$s2, $s2, 1
	add.w	$s7, $a4, $s7
	beq	$s2, $a3, .LBB5_96
.LBB5_100:                              # %for.cond1917.preheader.us.us
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        #           Parent Loop BB5_97 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB5_108 Depth 7
                                        #               Child Loop BB5_105 Depth 7
	beqz	$t5, .LBB5_103
# %bb.101:                              # %vector.memcheck1039
                                        #   in Loop: Header=BB5_100 Depth=6
	alsl.d	$s4, $s7, $fp, 3
	alsl.d	$s5, $s3, $t4, 3
	bgeu	$s4, $s5, .LBB5_107
# %bb.102:                              # %vector.memcheck1039
                                        #   in Loop: Header=BB5_100 Depth=6
	alsl.d	$s5, $s7, $t2, 3
	alsl.d	$s6, $s3, $t3, 3
	bgeu	$s6, $s5, .LBB5_107
.LBB5_103:                              #   in Loop: Header=BB5_100 Depth=6
	move	$s4, $zero
	move	$s5, $s3
.LBB5_104:                              # %for.body1920.us.us.preheader
                                        #   in Loop: Header=BB5_100 Depth=6
	move	$s3, $zero
	move	$s6, $zero
	move	$ra, $s7
	alsl.d	$s7, $s7, $fp, 3
	alsl.d	$s8, $s5, $t3, 3
	sub.d	$s4, $a2, $s4
	.p2align	4, , 16
.LBB5_105:                              # %for.body1920.us.us
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        #           Parent Loop BB5_97 Depth=5
                                        #             Parent Loop BB5_100 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s8, $s6
	fldx.d	$fa1, $s7, $s6
	fdiv.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $s7, $s6
	add.d	$s6, $s6, $s1
	addi.w	$s4, $s4, -1
	sub.d	$s3, $s3, $a1
	bnez	$s4, .LBB5_105
# %bb.106:                              # %for.cond1917.for.end1930_crit_edge.us.us.loopexit
                                        #   in Loop: Header=BB5_100 Depth=6
	sub.d	$s7, $ra, $s3
	sub.d	$s5, $s5, $s3
	b	.LBB5_99
	.p2align	4, , 16
.LBB5_107:                              # %vector.ph1052
                                        #   in Loop: Header=BB5_100 Depth=6
	move	$s6, $zero
	add.d	$ra, $t7, $s7
	add.d	$s5, $t7, $s3
	alsl.d	$s3, $s3, $s0, 3
	move	$s7, $t6
	.p2align	4, , 16
.LBB5_108:                              # %vector.body1055
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        #       Parent Loop BB5_49 Depth=3
                                        #         Parent Loop BB5_52 Depth=4
                                        #           Parent Loop BB5_97 Depth=5
                                        #             Parent Loop BB5_100 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	add.d	$s8, $s3, $s6
	xvld	$xr0, $s8, -32
	xvldx	$xr1, $s3, $s6
	add.d	$s8, $s4, $s6
	xvldx	$xr2, $s4, $s6
	xvld	$xr3, $s8, 32
	xvfdiv.d	$xr0, $xr2, $xr0
	xvfdiv.d	$xr1, $xr3, $xr1
	xvstx	$xr0, $s4, $s6
	xvst	$xr1, $s8, 32
	addi.d	$s7, $s7, -8
	add.d	$s6, $s6, $t8
	bnez	$s7, .LBB5_108
# %bb.109:                              # %middle.block1064
                                        #   in Loop: Header=BB5_100 Depth=6
	move	$s4, $t6
	move	$s7, $ra
	beq	$t6, $a2, .LBB5_99
	b	.LBB5_104
	.p2align	4, , 16
.LBB5_110:                              # %if.else1967
                                        #   in Loop: Header=BB5_41 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructCopy)
	jirl	$ra, $ra, 0
	b	.LBB5_40
.LBB5_111:                              # %while.end
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 136
	st.w	$a1, $fp, 128
	pcaddu18i	$ra, %call36(hypre_IncFLOPCount)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 132
.LBB5_112:                              # %cleanup
	pcaddu18i	$ra, %call36(hypre_EndTiming)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs1, $sp, 600                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 608                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
	ret
.Lfunc_end5:
	.size	hypre_PointRelax, .Lfunc_end5-hypre_PointRelax
                                        # -- End function
	.globl	hypre_PointRelaxSetTol          # -- Begin function hypre_PointRelaxSetTol
	.p2align	5
	.type	hypre_PointRelaxSetTol,@function
hypre_PointRelaxSetTol:                 # @hypre_PointRelaxSetTol
# %bb.0:                                # %entry
	fst.d	$fa0, $a0, 8
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	hypre_PointRelaxSetTol, .Lfunc_end6-hypre_PointRelaxSetTol
                                        # -- End function
	.globl	hypre_PointRelaxSetMaxIter      # -- Begin function hypre_PointRelaxSetMaxIter
	.p2align	5
	.type	hypre_PointRelaxSetMaxIter,@function
hypre_PointRelaxSetMaxIter:             # @hypre_PointRelaxSetMaxIter
# %bb.0:                                # %entry
	st.w	$a1, $a0, 16
	move	$a0, $zero
	ret
.Lfunc_end7:
	.size	hypre_PointRelaxSetMaxIter, .Lfunc_end7-hypre_PointRelaxSetMaxIter
                                        # -- End function
	.globl	hypre_PointRelaxSetZeroGuess    # -- Begin function hypre_PointRelaxSetZeroGuess
	.p2align	5
	.type	hypre_PointRelaxSetZeroGuess,@function
hypre_PointRelaxSetZeroGuess:           # @hypre_PointRelaxSetZeroGuess
# %bb.0:                                # %entry
	st.w	$a1, $a0, 24
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	hypre_PointRelaxSetZeroGuess, .Lfunc_end8-hypre_PointRelaxSetZeroGuess
                                        # -- End function
	.globl	hypre_PointRelaxSetWeight       # -- Begin function hypre_PointRelaxSetWeight
	.p2align	5
	.type	hypre_PointRelaxSetWeight,@function
hypre_PointRelaxSetWeight:              # @hypre_PointRelaxSetWeight
# %bb.0:                                # %entry
	fst.d	$fa0, $a0, 32
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	hypre_PointRelaxSetWeight, .Lfunc_end9-hypre_PointRelaxSetWeight
                                        # -- End function
	.globl	hypre_PointRelaxSetPointsetRank # -- Begin function hypre_PointRelaxSetPointsetRank
	.p2align	5
	.type	hypre_PointRelaxSetPointsetRank,@function
hypre_PointRelaxSetPointsetRank:        # @hypre_PointRelaxSetPointsetRank
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 56
	slli.d	$a1, $a1, 2
	stx.w	$a2, $a0, $a1
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	hypre_PointRelaxSetPointsetRank, .Lfunc_end10-hypre_PointRelaxSetPointsetRank
                                        # -- End function
	.globl	hypre_PointRelaxSetTempVec      # -- Begin function hypre_PointRelaxSetTempVec
	.p2align	5
	.type	hypre_PointRelaxSetTempVec,@function
hypre_PointRelaxSetTempVec:             # @hypre_PointRelaxSetTempVec
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 104
	move	$s0, $a1
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 104
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	hypre_PointRelaxSetTempVec, .Lfunc_end11-hypre_PointRelaxSetTempVec
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"PointRelax"
	.size	.L.str, 11

	.section	".note.GNU-stack","",@progbits
	.addrsig
