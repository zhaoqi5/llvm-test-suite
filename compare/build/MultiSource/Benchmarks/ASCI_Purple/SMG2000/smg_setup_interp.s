	.file	"smg_setup_interp.c"
	.text
	.globl	hypre_SMGCreateInterpOp         # -- Begin function hypre_SMGCreateInterpOp
	.p2align	5
	.type	hypre_SMGCreateInterpOp,@function
hypre_SMGCreateInterpOp:                # @hypre_SMGCreateInterpOp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(.L__const.hypre_SMGCreateInterpOp.num_ghost)
	addi.d	$a3, $a3, %pc_lo12(.L__const.hypre_SMGCreateInterpOp.num_ghost)
	ld.d	$a4, $a3, 16
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	st.d	$a4, $sp, 32
	vld	$vr0, $a3, 0
	ld.w	$s0, $a0, 16
	move	$s1, $a2
	move	$s2, $a1
	vst	$vr0, $sp, 16
	ori	$a0, $zero, 2
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	alsl.d	$a0, $s1, $a0, 2
	slli.d	$a1, $s1, 2
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	stx.w	$a3, $a2, $a1
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 12
	ori	$a1, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructStencilCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixCreate)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(hypre_StructMatrixSetNumGhost)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_StructStencilDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end0:
	.size	hypre_SMGCreateInterpOp, .Lfunc_end0-hypre_SMGCreateInterpOp
                                        # -- End function
	.globl	hypre_SMGSetupInterpOp          # -- Begin function hypre_SMGSetupInterpOp
	.p2align	5
	.type	hypre_SMGSetupInterpOp,@function
hypre_SMGSetupInterpOp:                 # @hypre_SMGSetupInterpOp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 400                  # 8-byte Folded Spill
	ld.d	$t0, $a1, 24
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a4, $a4, 24
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 8
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$fp, $t0, 0
	ld.wu	$a1, $t0, 8
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $a4, 0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	ld.w	$s0, $a4, 8
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	move	$s3, $a5
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	move	$s1, $a0
	ori	$a1, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetMaxIter)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetNumPreSpaces)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetNumRegSpaces)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetRegSpaceRank)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_StructStencilCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	blt	$s0, $s2, .LBB1_37
# %bb.1:                                # %for.body.lr.ph
	move	$s6, $zero
	ld.d	$a0, $sp, 496
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.w	$a0, $a0, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	ori	$s5, $zero, 64
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %for.end481
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB1_37
.LBB1_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #     Child Loop BB1_11 Depth 2
                                        #       Child Loop BB1_18 Depth 3
                                        #         Child Loop BB1_21 Depth 4
                                        #           Child Loop BB1_26 Depth 5
                                        #             Child Loop BB1_29 Depth 6
                                        #               Child Loop BB1_35 Depth 7
                                        #               Child Loop BB1_33 Depth 7
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	slli.d	$fp, $s6, 3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB1_8
# %bb.4:                                # %for.body16.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	alsl.d	$a2, $s6, $fp, 2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=2
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 12
	beqz	$a3, .LBB1_9
.LBB1_6:                                # %for.body16
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	ld.w	$a6, $a2, 0
	beq	$a5, $a6, .LBB1_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB1_6 Depth=2
	slli.d	$a5, $a1, 2
	stx.w	$a0, $s1, $a5
	addi.w	$a1, $a1, 1
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=1
	move	$a1, $zero
.LBB1_9:                                # %for.end
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixCreateMask)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructVectorClearGhostValues)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructVectorSetConstantValues)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $s3
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(hypre_StructVectorSetConstantValues)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetNewMatrixStencil)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetup)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(hypre_SMGRelax)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s6, $fp, 2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a0
	add.d	$a3, $a2, $a0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	ld.w	$a0, $a3, 4
	st.w	$a0, $a2, 4
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	ld.w	$a0, $a3, 8
	st.w	$a0, $a2, 8
	addi.d	$a2, $sp, 384
	addi.d	$a3, $sp, 376
	addi.d	$a4, $sp, 368
	addi.d	$a5, $sp, 360
	addi.d	$a6, $sp, 352
	addi.d	$a7, $sp, 344
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352
	ld.d	$s0, $sp, 240                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384
	ld.d	$a1, $sp, 376
	ld.d	$a4, $sp, 368
	ld.d	$a5, $sp, 360
	ld.d	$a6, $sp, 352
	ld.d	$a7, $sp, 344
	ld.d	$a2, $s1, 16
	addi.d	$a3, $sp, 392
	st.d	$a3, $sp, 32
	ori	$t0, $zero, 1
	ori	$a3, $zero, 1
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	st.d	$t0, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$fp, $sp, 8
	st.d	$s2, $sp, 0
	move	$a2, $s2
	move	$a3, $s2
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               # %for.inc479
                                        #   in Loop: Header=BB1_11 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 1
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	beqz	$a1, .LBB1_2
.LBB1_11:                               # %for.body61
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_18 Depth 3
                                        #         Child Loop BB1_21 Depth 4
                                        #           Child Loop BB1_26 Depth 5
                                        #             Child Loop BB1_29 Depth 6
                                        #               Child Loop BB1_35 Depth 7
                                        #               Child Loop BB1_33 Depth 7
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_13
# %bb.12:                               # %sw.bb64
                                        #   in Loop: Header=BB1_11 Depth=2
	ld.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(hypre_FinalizeIndtComputations)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_13:                               # %sw.bb
                                        #   in Loop: Header=BB1_11 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	ld.d	$a0, $sp, 392
	addi.d	$a2, $sp, 336
	pcaddu18i	$ra, %call36(hypre_InitializeIndtComputations)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
.LBB1_14:                               # %sw.epilog
                                        #   in Loop: Header=BB1_11 Depth=2
	ld.d	$a1, $sp, 392
	ldx.d	$a4, $a1, $a0
	ld.w	$a1, $a4, 8
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB1_10
# %bb.15:                               # %for.body71.preheader
                                        #   in Loop: Header=BB1_11 Depth=2
	move	$a7, $zero
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_16:                               # %for.inc476.loopexit
                                        #   in Loop: Header=BB1_18 Depth=3
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a1, $a4, 8
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
.LBB1_17:                               # %for.inc476
                                        #   in Loop: Header=BB1_18 Depth=3
	addi.d	$a7, $a7, 1
	bge	$a7, $a1, .LBB1_10
.LBB1_18:                               # %for.body71
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_21 Depth 4
                                        #           Child Loop BB1_26 Depth 5
                                        #             Child Loop BB1_29 Depth 6
                                        #               Child Loop BB1_35 Depth 7
                                        #               Child Loop BB1_33 Depth 7
	ld.d	$a2, $a4, 0
	slli.d	$a0, $a7, 3
	ldx.d	$t0, $a2, $a0
	ld.w	$a2, $t0, 8
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB1_17
# %bb.19:                               # %for.body96.lr.ph
                                        #   in Loop: Header=BB1_18 Depth=3
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a5, 16
	move	$t1, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a6, 40
	alsl.d	$a3, $a7, $a7, 1
	slli.d	$a3, $a3, 3
	add.d	$a1, $a1, $a3
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a6, 64
	ld.d	$a4, $a5, 40
	ld.d	$fp, $a5, 24
	st.d	$a7, $sp, 208                   # 8-byte Folded Spill
	slli.d	$a5, $a7, 2
	ldx.d	$a0, $a2, $a0
	ldx.w	$s4, $a4, $a5
	ld.d	$s8, $a6, 48
	slli.d	$a2, $s6, 2
	ldx.w	$s6, $a0, $a2
	add.d	$a0, $a1, $a3
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$s0, $s4, $fp, 3
	addi.d	$s2, $s0, 32
	alsl.d	$s3, $s6, $s8, 3
	addi.d	$s7, $s3, 32
	st.d	$t0, $sp, 248                   # 8-byte Folded Spill
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_20:                               # %for.end472
                                        #   in Loop: Header=BB1_21 Depth=4
	ld.d	$t0, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a0, $t0, 8
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	addi.d	$t1, $t1, 1
	bge	$t1, $a0, .LBB1_16
.LBB1_21:                               # %for.body96
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_11 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_26 Depth 5
                                        #             Child Loop BB1_29 Depth 6
                                        #               Child Loop BB1_35 Depth 7
                                        #               Child Loop BB1_33 Depth 7
	ld.d	$a0, $t0, 0
	slli.d	$a1, $t1, 4
	st.d	$t1, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a1, $t1, $a1, 3
	ldx.w	$a2, $a0, $a1
	add.d	$s1, $a0, $a1
	st.w	$a2, $sp, 312
	ld.w	$a0, $s1, 4
	st.w	$a0, $sp, 316
	ld.w	$a0, $s1, 8
	st.w	$a0, $sp, 320
	addi.d	$a0, $sp, 312
	addi.d	$a3, $sp, 300
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 0
	ld.w	$a1, $sp, 312
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 312
	ld.w	$a0, $a2, 4
	ld.w	$a1, $sp, 316
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 316
	ld.w	$a0, $a2, 8
	ld.w	$a1, $sp, 320
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 320
	addi.d	$a2, $sp, 324
	move	$a0, $s1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 332
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB1_20
# %bb.22:                               # %for.cond435.preheader.lr.ph
                                        #   in Loop: Header=BB1_21 Depth=4
	ld.w	$a1, $sp, 328
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB1_20
# %bb.23:                               # %for.cond435.preheader.us.preheader
                                        #   in Loop: Header=BB1_21 Depth=4
	move	$a2, $zero
	ld.w	$a0, $sp, 312
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a3, $t1, 0
	ld.w	$a4, $sp, 316
	ld.w	$a5, $t1, 4
	ld.w	$a6, $sp, 320
	ld.w	$a7, $t1, 8
	ld.w	$t0, $t1, 16
	sub.d	$a0, $a0, $a3
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.w	$a5, $t0, $a5
	addi.w	$a7, $zero, -1
	slt	$t0, $a7, $a5
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $a7, $t0
	or	$a5, $a5, $t0
	ld.w	$t0, $t1, 12
	addi.d	$a5, $a5, 1
	mul.d	$a6, $a5, $a6
	add.d	$a4, $a4, $a6
	sub.w	$a3, $t0, $a3
	slt	$a6, $a7, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $a7, $a6
	or	$a3, $a3, $a6
	addi.d	$a6, $a3, 1
	mul.d	$a3, $a4, $a6
	add.w	$t1, $a0, $a3
	ld.w	$a0, $sp, 300
	ld.d	$t5, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a3, $t5, 0
	ld.w	$a4, $sp, 304
	ld.w	$t0, $t5, 4
	ld.w	$t2, $sp, 308
	ld.w	$t3, $t5, 8
	ld.w	$t4, $t5, 16
	sub.d	$a0, $a0, $a3
	sub.d	$a4, $a4, $t0
	sub.d	$t2, $t2, $t3
	sub.w	$t0, $t4, $t0
	slt	$t3, $a7, $t0
	maskeqz	$t0, $t0, $t3
	masknez	$t3, $a7, $t3
	or	$t0, $t0, $t3
	ld.w	$t3, $t5, 12
	addi.d	$t0, $t0, 1
	mul.d	$t2, $t0, $t2
	add.d	$a4, $a4, $t2
	sub.w	$a3, $t3, $a3
	slt	$t2, $a7, $a3
	maskeqz	$a3, $a3, $t2
	masknez	$a7, $a7, $t2
	or	$a3, $a3, $a7
	addi.d	$t3, $a3, 1
	mul.d	$a3, $a4, $t3
	add.w	$t2, $a0, $a3
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 4
	ld.w	$a3, $a4, 0
	ld.w	$a7, $a4, 8
	ld.wu	$a4, $sp, 324
	mul.d	$a0, $a0, $a6
	mul.d	$a5, $a6, $a5
	mul.d	$a7, $a5, $a7
	mul.d	$t4, $a4, $a3
	sub.d	$a5, $a0, $t4
	sub.d	$a6, $t3, $a4
	mul.d	$t5, $a1, $a0
	sub.d	$a7, $a7, $t5
	sub.d	$t0, $t0, $a1
	mul.d	$t0, $t0, $t3
	addi.d	$t5, $a1, -1
	mul.d	$t6, $a5, $t5
	add.d	$a0, $t6, $a0
	sub.d	$a0, $a0, $t4
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	mul.d	$a0, $a6, $t5
	add.d	$a0, $t3, $a0
	sub.d	$a0, $a0, $a4
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ori	$a0, $zero, 7
	sltu	$a0, $a0, $a4
	addi.d	$t3, $a3, -1
	sltui	$t3, $t3, 1
	and	$t3, $a0, $t3
	bstrpick.d	$a0, $a4, 30, 3
	slli.d	$t4, $a0, 3
	mul.d	$t5, $t4, $a3
	slli.d	$t6, $a3, 6
	slli.d	$t7, $a3, 3
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_24:                               # %for.cond439.preheader.us237.preheader
                                        #   in Loop: Header=BB1_26 Depth=5
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	add.d	$t1, $a0, $t1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	add.d	$t2, $a0, $t2
.LBB1_25:                               # %for.cond435.for.end460_crit_edge.us
                                        #   in Loop: Header=BB1_26 Depth=5
	add.w	$t1, $a7, $t1
	addi.w	$a2, $a2, 1
	add.w	$t2, $t2, $t0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB1_20
.LBB1_26:                               # %for.cond435.preheader.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_11 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        #         Parent Loop BB1_21 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB1_29 Depth 6
                                        #               Child Loop BB1_35 Depth 7
                                        #               Child Loop BB1_33 Depth 7
	addi.w	$a0, $a4, 0
	ori	$t8, $zero, 1
	blt	$a0, $t8, .LBB1_24
# %bb.27:                               # %for.cond439.preheader.us.us.preheader
                                        #   in Loop: Header=BB1_26 Depth=5
	move	$s1, $zero
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_28:                               # %for.cond439.for.end451_crit_edge.us.us
                                        #   in Loop: Header=BB1_29 Depth=6
	add.w	$t1, $a5, $t8
	addi.w	$s1, $s1, 1
	add.w	$t2, $a6, $ra
	beq	$s1, $a1, .LBB1_25
.LBB1_29:                               # %for.cond439.preheader.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_11 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        #         Parent Loop BB1_21 Depth=4
                                        #           Parent Loop BB1_26 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB1_35 Depth 7
                                        #               Child Loop BB1_33 Depth 7
	beqz	$t3, .LBB1_31
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_29 Depth=6
	add.d	$a0, $s6, $t2
	alsl.d	$a0, $a0, $s8, 3
	add.d	$t8, $s4, $t1
	alsl.d	$t8, $t8, $fp, 3
	sub.d	$a0, $a0, $t8
	bgeu	$a0, $s5, .LBB1_34
.LBB1_31:                               #   in Loop: Header=BB1_29 Depth=6
	move	$a0, $zero
	move	$t8, $t1
	move	$ra, $t2
.LBB1_32:                               # %for.body442.us.us.preheader
                                        #   in Loop: Header=BB1_29 Depth=6
	alsl.d	$t1, $t8, $s0, 3
	alsl.d	$t2, $ra, $s3, 3
	sub.d	$a0, $a4, $a0
	.p2align	4, , 16
.LBB1_33:                               # %for.body442.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_11 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        #         Parent Loop BB1_21 Depth=4
                                        #           Parent Loop BB1_26 Depth=5
                                        #             Parent Loop BB1_29 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fld.d	$fa0, $t1, 0
	fst.d	$fa0, $t2, 0
	add.d	$t8, $t8, $a3
	addi.d	$ra, $ra, 1
	add.d	$t1, $t1, $t7
	addi.w	$a0, $a0, -1
	addi.d	$t2, $t2, 8
	bnez	$a0, .LBB1_33
	b	.LBB1_28
	.p2align	4, , 16
.LBB1_34:                               # %vector.ph
                                        #   in Loop: Header=BB1_29 Depth=6
	add.d	$t8, $t5, $t1
	add.d	$ra, $t4, $t2
	alsl.d	$a0, $t1, $s2, 3
	alsl.d	$t1, $t2, $s7, 3
	move	$t2, $t4
	.p2align	4, , 16
.LBB1_35:                               # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_11 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        #         Parent Loop BB1_21 Depth=4
                                        #           Parent Loop BB1_26 Depth=5
                                        #             Parent Loop BB1_29 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	xvld	$xr0, $a0, -32
	xvld	$xr1, $a0, 0
	xvst	$xr0, $t1, -32
	xvst	$xr1, $t1, 0
	add.d	$a0, $a0, $t6
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB1_35
# %bb.36:                               # %middle.block
                                        #   in Loop: Header=BB1_29 Depth=6
	move	$a0, $t4
	beq	$t4, $a4, .LBB1_28
	b	.LBB1_32
.LBB1_37:                               # %for.end485
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetNewMatrixStencil)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructStencilDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 400                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end1:
	.size	hypre_SMGSetupInterpOp, .Lfunc_end1-hypre_SMGSetupInterpOp
                                        # -- End function
	.type	.L__const.hypre_SMGCreateInterpOp.num_ghost,@object # @__const.hypre_SMGCreateInterpOp.num_ghost
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.hypre_SMGCreateInterpOp.num_ghost:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	.L__const.hypre_SMGCreateInterpOp.num_ghost, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
