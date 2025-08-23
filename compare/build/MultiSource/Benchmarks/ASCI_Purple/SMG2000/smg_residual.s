	.file	"smg_residual.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_SMGResidualCreate
.LCPI0_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.text
	.globl	hypre_SMGResidualCreate
	.p2align	5
	.type	hypre_SMGResidualCreate,@function
hypre_SMGResidualCreate:                # @hypre_SMGResidualCreate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(hypre_InitializeTiming)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	st.w	$a0, $fp, 72
	vst	$vr0, $fp, 0
	lu32i.d	$s0, 1
	st.d	$s0, $fp, 16
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	hypre_SMGResidualCreate, .Lfunc_end0-hypre_SMGResidualCreate
                                        # -- End function
	.globl	hypre_SMGResidualSetup          # -- Begin function hypre_SMGResidualSetup
	.p2align	5
	.type	hypre_SMGResidualSetup,@function
hypre_SMGResidualSetup:                 # @hypre_SMGResidualSetup
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
	move	$s2, $a4
	move	$s3, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$s5, $a0, 12
	ld.d	$s6, $a1, 8
	ld.d	$s7, $a1, 24
	ori	$s8, $zero, 1
	ori	$a1, $zero, 1
	ld.d	$a0, $s6, 8
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 108
	st.w	$s8, $sp, 116
	pcaddu18i	$ra, %call36(hypre_BoxArrayDuplicate)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a1, $fp
	move	$a2, $s5
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArray)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 88
	addi.d	$a4, $sp, 80
	addi.d	$a5, $sp, 72
	addi.d	$a6, $sp, 64
	addi.d	$a7, $sp, 56
	move	$a0, $s6
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	move	$a1, $fp
	move	$a2, $s5
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	move	$a1, $fp
	move	$a2, $s5
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 88
	ld.d	$a4, $sp, 80
	ld.d	$a5, $sp, 72
	ld.d	$a6, $sp, 64
	ld.d	$a7, $sp, 56
	ld.d	$a2, $s0, 16
	addi.d	$a3, $sp, 48
	st.d	$a3, $sp, 32
	st.d	$s8, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$s6, $sp, 8
	addi.d	$a2, $sp, 108
	addi.d	$a3, $sp, 108
	st.d	$s5, $sp, 0
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	st.d	$s4, $fp, 56
	ld.d	$a0, $sp, 48
	ld.w	$a1, $s1, 112
	ld.w	$a2, $s0, 72
	ld.w	$a3, $fp, 12
	ld.w	$a4, $fp, 16
	ld.w	$a5, $fp, 20
	st.d	$a0, $fp, 64
	add.w	$a0, $a2, $a1
	mul.d	$a1, $a4, $a3
	mul.w	$a1, $a1, $a5
	div.w	$a0, $a0, $a1
	st.w	$a0, $fp, 76
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
.Lfunc_end1:
	.size	hypre_SMGResidualSetup, .Lfunc_end1-hypre_SMGResidualSetup
                                        # -- End function
	.globl	hypre_SMGResidual               # -- Begin function hypre_SMGResidual
	.p2align	5
	.type	hypre_SMGResidual,@function
hypre_SMGResidual:                      # @hypre_SMGResidual
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	move	$a5, $a0
	ld.d	$fp, $a0, 56
	ld.d	$a0, $a0, 64
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $a5, 72
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	move	$s0, $a1
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a1, $a5, 12
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BeginTiming)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $s0, 24
	move	$a0, $zero
	ld.d	$a2, $a1, 0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a1, $a1, 8
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_1:                                # %for.inc929
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 1
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	beqz	$a1, .LBB2_54
.LBB2_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #       Child Loop BB2_13 Depth 3
                                        #         Child Loop BB2_15 Depth 4
                                        #           Child Loop BB2_22 Depth 5
                                        #           Child Loop BB2_19 Depth 5
                                        #     Child Loop BB2_29 Depth 2
                                        #       Child Loop BB2_33 Depth 3
                                        #         Child Loop BB2_35 Depth 4
                                        #           Child Loop BB2_41 Depth 5
                                        #             Child Loop BB2_43 Depth 6
                                        #               Child Loop BB2_47 Depth 7
                                        #               Child Loop BB2_52 Depth 7
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_4
# %bb.3:                                # %sw.bb345
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(hypre_FinalizeIndtComputations)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 16
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_4:                                # %sw.bb
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	addi.d	$a2, $sp, 304
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_InitializeIndtComputations)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ld.d	$a2, $s0, 8
	blt	$a0, $s1, .LBB2_25
# %bb.5:                                # %for.body9.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	move	$a4, $zero
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %for.end341
                                        #   in Loop: Header=BB2_7 Depth=2
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 8
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	bge	$a4, $a0, .LBB2_24
.LBB2_7:                                # %for.body9
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_13 Depth 3
                                        #         Child Loop BB2_15 Depth 4
                                        #           Child Loop BB2_22 Depth 5
                                        #           Child Loop BB2_19 Depth 5
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 16
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 16
	ld.d	$s7, $fp, 0
	ld.d	$s8, $a0, 0
	ld.d	$s3, $a1, 0
	ld.d	$a0, $a2, 40
	ld.d	$s0, $a2, 24
	ld.d	$a1, $a3, 40
	slli.d	$a2, $a4, 2
	ldx.w	$s1, $a0, $a2
	ld.d	$s2, $a3, 24
	ldx.w	$s5, $a1, $a2
	st.d	$a4, $sp, 272                   # 8-byte Folded Spill
	alsl.d	$a0, $a4, $a4, 1
	slli.d	$s4, $a0, 3
	add.d	$s6, $s7, $s4
	addi.d	$a2, $sp, 292
	move	$a0, $s6
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 292
	ld.w	$a1, $sp, 296
	ld.w	$a4, $sp, 300
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB2_6
# %bb.8:                                # %for.cond306.preheader.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=2
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	blt	$a3, $a2, .LBB2_6
# %bb.9:                                # %for.cond306.preheader.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=2
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB2_6
# %bb.10:                               # %for.cond306.preheader.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=2
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB2_6
# %bb.11:                               # %for.cond309.preheader.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$a3, $zero
	add.d	$a2, $s8, $s4
	add.d	$a5, $s3, $s4
	alsl.d	$a4, $s5, $s2, 3
	ldx.w	$a6, $s7, $s4
	ldx.w	$a7, $s8, $s4
	ld.w	$t0, $s6, 4
	ld.w	$t1, $a2, 4
	ld.w	$t2, $s6, 8
	ld.w	$t3, $a2, 8
	ld.w	$t4, $a2, 16
	sub.d	$t5, $a6, $a7
	sub.d	$t6, $t0, $t1
	sub.d	$t3, $t2, $t3
	sub.w	$t1, $t4, $t1
	addi.w	$t4, $zero, -1
	slt	$t7, $t4, $t1
	maskeqz	$t1, $t1, $t7
	masknez	$t7, $t4, $t7
	or	$t1, $t1, $t7
	ld.w	$a2, $a2, 12
	addi.d	$t1, $t1, 1
	mul.d	$t3, $t1, $t3
	add.d	$t3, $t6, $t3
	sub.w	$a2, $a2, $a7
	slt	$a7, $t4, $a2
	maskeqz	$a2, $a2, $a7
	masknez	$a7, $t4, $a7
	or	$a2, $a2, $a7
	addi.d	$a2, $a2, 1
	mul.d	$a7, $t3, $a2
	add.w	$s6, $t5, $a7
	ldx.w	$a7, $s3, $s4
	ld.w	$t3, $a5, 4
	ld.w	$t5, $a5, 8
	ld.w	$t6, $a5, 16
	sub.d	$a6, $a6, $a7
	sub.d	$t0, $t0, $t3
	sub.d	$t2, $t2, $t5
	sub.w	$t3, $t6, $t3
	slt	$t5, $t4, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $t4, $t5
	or	$t3, $t3, $t5
	ld.w	$a5, $a5, 12
	addi.d	$t3, $t3, 1
	mul.d	$t2, $t3, $t2
	add.d	$t0, $t0, $t2
	sub.w	$a5, $a5, $a7
	slt	$a7, $t4, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t4, $a7
	or	$a5, $a5, $a7
	addi.d	$a7, $a5, 1
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.w	$t2, $t5, 16
	mul.d	$a5, $t0, $a7
	add.w	$s4, $a6, $a5
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	mul.d	$t0, $a7, $t2
	mul.d	$t4, $a1, $t0
	mul.d	$a6, $t2, $a2
	ld.w	$t2, $t5, 20
	mul.d	$t5, $a1, $a6
	mul.d	$t6, $a5, $a0
	mul.d	$a7, $a7, $t3
	mul.d	$t3, $a7, $t2
	mul.d	$a2, $a2, $t1
	mul.d	$a2, $a2, $t2
	sub.d	$a6, $a6, $t6
	sub.d	$a7, $t0, $t6
	sub.d	$t0, $a2, $t5
	sub.d	$t1, $t3, $t4
	ori	$a2, $zero, 7
	sltu	$a2, $a2, $a0
	addi.d	$t2, $a5, -1
	sltui	$t2, $t2, 1
	and	$t2, $a2, $t2
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$t3, $a2, 3
	mul.d	$t4, $t3, $a5
	slli.d	$t5, $a5, 6
	alsl.d	$t6, $s1, $s0, 3
	addi.d	$t7, $t6, 32
	slli.d	$t8, $a5, 3
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %for.cond309.for.end329_crit_edge.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_13 Depth=3
	add.w	$s6, $t0, $s6
	addi.w	$a3, $a3, 1
	add.w	$s4, $t1, $s4
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	beq	$a3, $a2, .LBB2_6
.LBB2_13:                               # %for.cond309.preheader.us.us.us.us.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_15 Depth 4
                                        #           Child Loop BB2_22 Depth 5
                                        #           Child Loop BB2_19 Depth 5
	move	$s3, $zero
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %for.cond312.for.end_crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_15 Depth=4
	add.w	$s6, $a6, $s8
	addi.w	$s3, $s3, 1
	add.w	$s4, $a7, $s7
	beq	$s3, $a1, .LBB2_12
.LBB2_15:                               # %for.cond312.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_13 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_22 Depth 5
                                        #           Child Loop BB2_19 Depth 5
	beqz	$t2, .LBB2_17
# %bb.16:                               # %vector.memcheck611
                                        #   in Loop: Header=BB2_15 Depth=4
	add.d	$a2, $s5, $s4
	alsl.d	$a2, $a2, $s2, 3
	add.d	$fp, $s1, $s6
	alsl.d	$fp, $fp, $s0, 3
	sub.d	$a2, $a2, $fp
	ori	$fp, $zero, 64
	bgeu	$a2, $fp, .LBB2_21
.LBB2_17:                               #   in Loop: Header=BB2_15 Depth=4
	move	$ra, $zero
	move	$s7, $s4
	move	$s8, $s6
.LBB2_18:                               # %for.body314.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_15 Depth=4
	move	$s4, $zero
	move	$s6, $zero
	alsl.d	$fp, $s7, $a4, 3
	alsl.d	$a2, $s8, $t6, 3
	sub.d	$ra, $a0, $ra
	.p2align	4, , 16
.LBB2_19:                               # %for.body314.us.us.us.us.us.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_13 Depth=3
                                        #         Parent Loop BB2_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fldx.d	$fa0, $a2, $s6
	fstx.d	$fa0, $fp, $s6
	add.d	$s6, $s6, $t8
	addi.w	$ra, $ra, -1
	sub.d	$s4, $s4, $a5
	bnez	$ra, .LBB2_19
# %bb.20:                               # %for.cond312.for.end_crit_edge.us.us.us.us.us.us.loopexit
                                        #   in Loop: Header=BB2_15 Depth=4
	sub.d	$s7, $s7, $s4
	sub.d	$s8, $s8, $s4
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_21:                               # %vector.ph614
                                        #   in Loop: Header=BB2_15 Depth=4
	move	$ra, $zero
	add.d	$s7, $t4, $s4
	add.d	$s8, $t4, $s6
	alsl.d	$s4, $s4, $a4, 3
	alsl.d	$fp, $s6, $t7, 3
	move	$a2, $t3
	.p2align	4, , 16
.LBB2_22:                               # %vector.body617
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_13 Depth=3
                                        #         Parent Loop BB2_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.d	$s6, $fp, $ra
	xvld	$xr0, $s6, -32
	xvldx	$xr1, $fp, $ra
	add.d	$s6, $s4, $ra
	xvstx	$xr0, $s4, $ra
	xvst	$xr1, $s6, 32
	addi.d	$a2, $a2, -8
	add.d	$ra, $ra, $t5
	bnez	$a2, .LBB2_22
# %bb.23:                               # %middle.block624
                                        #   in Loop: Header=BB2_15 Depth=4
	move	$ra, $t3
	beq	$t3, $a0, .LBB2_14
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_24:                               #   in Loop: Header=BB2_2 Depth=1
	ori	$s1, $zero, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB2_25:                               # %sw.epilog
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.w	$a0, $a2, 8
	blt	$a0, $s1, .LBB2_1
# %bb.26:                               # %for.body350.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$a5, $zero
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_27:                               # %for.inc926.loopexit
                                        #   in Loop: Header=BB2_29 Depth=2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ori	$s1, $zero, 1
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
.LBB2_28:                               # %for.inc926
                                        #   in Loop: Header=BB2_29 Depth=2
	addi.d	$a5, $a5, 1
	bge	$a5, $a0, .LBB2_1
.LBB2_29:                               # %for.body350
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_33 Depth 3
                                        #         Child Loop BB2_35 Depth 4
                                        #           Child Loop BB2_41 Depth 5
                                        #             Child Loop BB2_43 Depth 6
                                        #               Child Loop BB2_47 Depth 7
                                        #               Child Loop BB2_52 Depth 7
	ld.d	$a1, $a2, 0
	slli.d	$a3, $a5, 3
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	ldx.d	$a6, $a1, $a3
	ld.w	$a1, $a6, 8
	blt	$a1, $s1, .LBB2_28
# %bb.30:                               # %for.body374.lr.ph
                                        #   in Loop: Header=BB2_29 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	blt	$a1, $s1, .LBB2_28
# %bb.31:                               # %for.body374.us.preheader
                                        #   in Loop: Header=BB2_29 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	move	$a7, $zero
	ld.d	$a0, $a0, 0
	alsl.d	$a2, $a5, $a5, 1
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a2, 3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $a4, 16
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	add.d	$t0, $a1, $a2
	ld.d	$a0, $a4, 40
	ld.d	$a1, $a3, 0
	ld.d	$a3, $a4, 24
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a4, $a5, 2
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	ldx.w	$a0, $a0, $a4
	ld.w	$a4, $t0, 16
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	ld.w	$a4, $t0, 4
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	ld.w	$a4, $t0, 12
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	st.d	$t0, $sp, 168                   # 8-byte Folded Spill
	ld.w	$a4, $t0, 0
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$s5, $a0, $a3, 3
	addi.d	$a0, $s5, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	b	.LBB2_33
	.p2align	4, , 16
.LBB2_32:                               # %for.cond380.for.inc923_crit_edge.us
                                        #   in Loop: Header=BB2_33 Depth=3
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a6, 8
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	bge	$a7, $a0, .LBB2_27
.LBB2_33:                               # %for.body374.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_35 Depth 4
                                        #           Child Loop BB2_41 Depth 5
                                        #             Child Loop BB2_43 Depth 6
                                        #               Child Loop BB2_47 Depth 7
                                        #               Child Loop BB2_52 Depth 7
	ld.d	$a0, $a6, 0
	move	$a4, $zero
	slli.d	$a1, $a7, 4
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a1, $a7, $a1, 3
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %for.end919.us
                                        #   in Loop: Header=BB2_35 Depth=4
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB2_32
.LBB2_35:                               # %for.body382.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_41 Depth 5
                                        #             Child Loop BB2_43 Depth 6
                                        #               Child Loop BB2_47 Depth 7
                                        #               Child Loop BB2_52 Depth 7
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 64
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	ld.d	$s1, $a1, 48
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a3, 40
	slli.d	$a2, $a4, 2
	ldx.w	$a0, $a0, $a2
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$fp, $a3, 24
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$s3, $a1, $a0
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	alsl.d	$a0, $a4, $a4, 1
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a0
	ldx.w	$a0, $a2, $a0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.w	$s0, $a1, 4
	ld.w	$s6, $a1, 8
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 292
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.w	$a1, $a0, 4
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.w	$a4, $sp, 292
	ld.w	$a5, $sp, 296
	ld.w	$a1, $a0, 16
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 12
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.w	$a2, $sp, 300
	slt	$a0, $a4, $a5
	masknez	$a1, $a4, $a0
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	blez	$a0, .LBB2_34
# %bb.36:                               # %for.cond871.preheader.lr.ph.us
                                        #   in Loop: Header=BB2_35 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_34
# %bb.37:                               # %for.cond871.preheader.lr.ph.us
                                        #   in Loop: Header=BB2_35 Depth=4
	ori	$a0, $zero, 1
	blt	$a5, $a0, .LBB2_34
# %bb.38:                               # %for.cond871.preheader.lr.ph.us
                                        #   in Loop: Header=BB2_35 Depth=4
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB2_34
# %bb.39:                               # %for.cond874.preheader.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_35 Depth=4
	move	$ra, $zero
	sub.w	$a0, $s2, $s7
	addi.w	$a2, $zero, -1
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	mul.d	$a0, $a0, $s6
	add.d	$a0, $a0, $s0
	sub.w	$a1, $s4, $s8
	slt	$a3, $a2, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a7, $t1, 0
	ld.d	$t6, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a6, $t6, 0
	ld.w	$t0, $t1, 4
	ld.w	$a3, $t6, 4
	ld.w	$t1, $t1, 8
	ld.w	$t2, $t6, 8
	ld.w	$t3, $t6, 16
	sub.d	$t4, $a7, $a6
	sub.d	$t5, $t0, $a3
	sub.d	$t2, $t1, $t2
	sub.w	$a3, $t3, $a3
	slt	$t3, $a2, $a3
	maskeqz	$a3, $a3, $t3
	masknez	$t3, $a2, $t3
	or	$a3, $a3, $t3
	ld.w	$t3, $t6, 12
	addi.d	$a3, $a3, 1
	mul.d	$t2, $a3, $t2
	add.d	$t2, $t5, $t2
	sub.w	$a6, $t3, $a6
	slt	$t3, $a2, $a6
	maskeqz	$a6, $a6, $t3
	masknez	$t3, $a2, $t3
	or	$a6, $a6, $t3
	addi.d	$a6, $a6, 1
	mul.d	$t2, $t2, $a6
	ld.d	$t3, $sp, 168                   # 8-byte Folded Reload
	ld.w	$t3, $t3, 8
	add.w	$t6, $t4, $t2
	ld.d	$t8, $sp, 224                   # 8-byte Folded Reload
	sub.d	$t2, $a7, $t8
	ld.d	$t5, $sp, 216                   # 8-byte Folded Reload
	sub.d	$t4, $t0, $t5
	sub.d	$t3, $t1, $t3
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	sub.w	$t5, $t7, $t5
	slt	$t7, $a2, $t5
	maskeqz	$t5, $t5, $t7
	masknez	$t7, $a2, $t7
	or	$t5, $t5, $t7
	addi.d	$t7, $t5, 1
	mul.d	$t3, $t7, $t3
	add.d	$t3, $t4, $t3
	ld.d	$t4, $sp, 200                   # 8-byte Folded Reload
	sub.w	$t4, $t4, $t8
	slt	$t5, $a2, $t4
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	addi.d	$t4, $t4, 1
	mul.d	$t3, $t3, $t4
	add.w	$t5, $t2, $t3
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$t2, $s0, 0
	ld.w	$t3, $s0, 4
	ld.w	$t8, $s0, 8
	move	$s7, $fp
	ld.w	$fp, $s0, 16
	sub.d	$a7, $a7, $t2
	sub.d	$t0, $t0, $t3
	sub.d	$t1, $t1, $t8
	sub.w	$t3, $fp, $t3
	slt	$t8, $a2, $t3
	maskeqz	$t3, $t3, $t8
	masknez	$t8, $a2, $t8
	or	$t3, $t3, $t8
	ld.w	$t8, $s0, 12
	addi.d	$t3, $t3, 1
	mul.d	$t1, $t3, $t1
	add.d	$t0, $t0, $t1
	sub.w	$t1, $t8, $t2
	slt	$t2, $a2, $t1
	maskeqz	$t1, $t1, $t2
	masknez	$a2, $a2, $t2
	or	$a2, $t1, $a2
	addi.d	$a2, $a2, 1
	move	$s4, $s1
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$t2, $s1, 16
	mul.d	$t0, $t0, $a2
	add.w	$t0, $a7, $t0
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ld.w	$t1, $a7, 0
	mul.d	$a7, $a2, $t2
	mul.d	$t8, $a5, $a7
	mul.d	$fp, $t2, $t4
	mul.d	$s0, $a5, $fp
	mul.d	$t2, $t2, $a6
	mul.d	$a2, $a2, $t3
	ld.w	$t3, $s1, 20
	mul.d	$s1, $a5, $t2
	mul.d	$t4, $t4, $t7
	mul.d	$t7, $t1, $a4
	mul.d	$a2, $a2, $t3
	mul.d	$s2, $t4, $t3
	mul.d	$a3, $a6, $a3
	mul.d	$a3, $a3, $t3
	sub.d	$t2, $t2, $t7
	sub.d	$t3, $fp, $t7
	sub.d	$t4, $a7, $t7
	sub.d	$a3, $a3, $s1
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	sub.d	$a3, $s2, $s0
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $t8
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	addi.d	$a2, $a4, -1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$t8, $a2, $a3, 3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$s4, $a3, $s4, 3
	alsl.d	$a3, $a2, $s4, 3
	addi.d	$s8, $a3, 8
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	add.d	$a0, $s3, $a1
	alsl.d	$s2, $a0, $s7, 3
	alsl.d	$a0, $a2, $s2, 3
	addi.d	$s0, $a0, 8
	ori	$a0, $zero, 7
	sltu	$a0, $a0, $a4
	addi.d	$a2, $t1, -1
	sltui	$a2, $a2, 1
	and	$s6, $a0, $a2
	bstrpick.d	$a0, $a4, 30, 3
	slli.d	$a0, $a0, 3
	mul.d	$a2, $a0, $t1
	slli.d	$a3, $t1, 6
	addi.d	$a6, $s4, 32
	st.d	$a6, $sp, 280                   # 8-byte Folded Spill
	slli.d	$a6, $s3, 3
	alsl.d	$a1, $a1, $a6, 3
	add.d	$s3, $s7, $a1
	addi.d	$a1, $s3, 32
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	slli.d	$a1, $t1, 3
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_40:                               # %for.cond874.for.end904_crit_edge.split.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_41 Depth=5
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	add.w	$t6, $a6, $t6
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	add.w	$t5, $a6, $t5
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.w	$ra, $ra, 1
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	add.w	$t0, $a6, $t0
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	beq	$ra, $a6, .LBB2_34
.LBB2_41:                               # %for.cond874.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        #         Parent Loop BB2_35 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_43 Depth 6
                                        #               Child Loop BB2_47 Depth 7
                                        #               Child Loop BB2_52 Depth 7
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	move	$s1, $zero
	b	.LBB2_43
	.p2align	4, , 16
.LBB2_42:                               # %for.cond877.for.end892_crit_edge.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_43 Depth=6
	add.w	$t6, $t2, $fp
	add.w	$t5, $t3, $a6
	addi.w	$s1, $s1, 1
	add.w	$t0, $t4, $t0
	beq	$s1, $a5, .LBB2_40
.LBB2_43:                               # %for.cond877.preheader.us.us.us.us.us.us.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        #         Parent Loop BB2_35 Depth=4
                                        #           Parent Loop BB2_41 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_47 Depth 7
                                        #               Child Loop BB2_52 Depth 7
	beqz	$s6, .LBB2_49
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_43 Depth=6
	alsl.d	$t7, $t0, $s5, 3
	alsl.d	$a6, $t0, $t8, 3
	alsl.d	$a7, $t6, $s4, 3
	alsl.d	$fp, $t6, $s8, 3
	sltu	$fp, $t7, $fp
	sltu	$a7, $a7, $a6
	and	$a7, $fp, $a7
	move	$ra, $zero
	bnez	$a7, .LBB2_50
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_43 Depth=6
	alsl.d	$a7, $t5, $s2, 3
	alsl.d	$fp, $t5, $s0, 3
	sltu	$fp, $t7, $fp
	sltu	$a6, $a7, $a6
	and	$a6, $fp, $a6
	bnez	$a6, .LBB2_50
# %bb.46:                               # %vector.ph
                                        #   in Loop: Header=BB2_43 Depth=6
	move	$ra, $zero
	add.d	$t0, $a2, $t0
	add.d	$a6, $a2, $t5
	add.d	$fp, $a2, $t6
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$t6, $t6, $a7, 3
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t5, $t5, $a7, 3
	move	$a7, $a0
	.p2align	4, , 16
.LBB2_47:                               # %vector.body
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        #         Parent Loop BB2_35 Depth=4
                                        #           Parent Loop BB2_41 Depth=5
                                        #             Parent Loop BB2_43 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	add.d	$s7, $t6, $ra
	xvld	$xr0, $s7, -32
	xvldx	$xr1, $t6, $ra
	add.d	$s7, $t5, $ra
	xvld	$xr2, $s7, -32
	xvldx	$xr3, $t5, $ra
	add.d	$s7, $t7, $ra
	xvldx	$xr4, $t7, $ra
	xvld	$xr5, $s7, 32
	xvbitrevi.d	$xr0, $xr0, 63
	xvbitrevi.d	$xr1, $xr1, 63
	xvfmadd.d	$xr0, $xr0, $xr2, $xr4
	xvfmadd.d	$xr1, $xr1, $xr3, $xr5
	xvstx	$xr0, $t7, $ra
	xvst	$xr1, $s7, 32
	addi.d	$a7, $a7, -8
	add.d	$ra, $ra, $a3
	bnez	$a7, .LBB2_47
# %bb.48:                               # %middle.block
                                        #   in Loop: Header=BB2_43 Depth=6
	move	$ra, $a0
	beq	$a0, $a4, .LBB2_42
	b	.LBB2_51
	.p2align	4, , 16
.LBB2_49:                               #   in Loop: Header=BB2_43 Depth=6
	move	$ra, $zero
.LBB2_50:                               #   in Loop: Header=BB2_43 Depth=6
	move	$a6, $t5
	move	$fp, $t6
.LBB2_51:                               # %for.body879.us.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_43 Depth=6
	move	$t5, $zero
	move	$a7, $zero
	alsl.d	$t6, $t0, $s5, 3
	alsl.d	$t7, $a6, $s3, 3
	alsl.d	$s7, $fp, $s4, 3
	sub.d	$ra, $a4, $ra
	.p2align	4, , 16
.LBB2_52:                               # %for.body879.us.us.us.us.us.us.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        #         Parent Loop BB2_35 Depth=4
                                        #           Parent Loop BB2_41 Depth=5
                                        #             Parent Loop BB2_43 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s7, $a7
	fldx.d	$fa1, $t7, $a7
	fldx.d	$fa2, $t6, $a7
	fneg.d	$fa0, $fa0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fstx.d	$fa0, $t6, $a7
	add.d	$a7, $a7, $a1
	addi.w	$ra, $ra, -1
	sub.d	$t5, $t5, $t1
	bnez	$ra, .LBB2_52
# %bb.53:                               # %for.cond877.for.end892_crit_edge.us.us.us.us.us.us.us.loopexit
                                        #   in Loop: Header=BB2_43 Depth=6
	sub.d	$t0, $t0, $t5
	sub.d	$a6, $a6, $t5
	sub.d	$fp, $fp, $t5
	b	.LBB2_42
.LBB2_54:                               # %for.end931
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 76
	pcaddu18i	$ra, %call36(hypre_IncFLOPCount)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 72
	pcaddu18i	$ra, %call36(hypre_EndTiming)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.Lfunc_end2:
	.size	hypre_SMGResidual, .Lfunc_end2-hypre_SMGResidual
                                        # -- End function
	.globl	hypre_SMGResidualSetBase        # -- Begin function hypre_SMGResidualSetBase
	.p2align	5
	.type	hypre_SMGResidualSetBase,@function
hypre_SMGResidualSetBase:               # @hypre_SMGResidualSetBase
# %bb.0:                                # %entry
	ld.w	$a3, $a1, 0
	st.w	$a3, $a0, 0
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 12
	ld.w	$a3, $a1, 4
	st.w	$a3, $a0, 4
	ld.w	$a3, $a2, 4
	st.w	$a3, $a0, 16
	ld.w	$a1, $a1, 8
	st.w	$a1, $a0, 8
	ld.w	$a1, $a2, 8
	st.w	$a1, $a0, 20
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	hypre_SMGResidualSetBase, .Lfunc_end3-hypre_SMGResidualSetBase
                                        # -- End function
	.globl	hypre_SMGResidualDestroy        # -- Begin function hypre_SMGResidualDestroy
	.p2align	5
	.type	hypre_SMGResidualDestroy,@function
hypre_SMGResidualDestroy:               # @hypre_SMGResidualDestroy
# %bb.0:                                # %entry
	beqz	$a0, .LBB4_2
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 24
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 72
	pcaddu18i	$ra, %call36(hypre_FinalizeTiming)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB4_2:                                # %if.end
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	hypre_SMGResidualDestroy, .Lfunc_end4-hypre_SMGResidualDestroy
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SMGResidual"
	.size	.L.str, 12

	.section	".note.GNU-stack","",@progbits
	.addrsig
