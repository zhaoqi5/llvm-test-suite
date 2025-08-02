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
	addi.d	$sp, $sp, -432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
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
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BeginTiming)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $s0, 24
	move	$a0, $zero
	ld.d	$a2, $a1, 0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a1, $a1, 8
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_1:                                # %for.inc929
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 1
	move	$a2, $zero
	beqz	$a1, .LBB2_54
.LBB2_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #       Child Loop BB2_12 Depth 3
                                        #         Child Loop BB2_15 Depth 4
                                        #           Child Loop BB2_22 Depth 5
                                        #           Child Loop BB2_19 Depth 5
                                        #     Child Loop BB2_29 Depth 2
                                        #       Child Loop BB2_33 Depth 3
                                        #         Child Loop BB2_35 Depth 4
                                        #           Child Loop BB2_40 Depth 5
                                        #             Child Loop BB2_44 Depth 6
                                        #               Child Loop BB2_48 Depth 7
                                        #               Child Loop BB2_53 Depth 7
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_4
# %bb.3:                                # %sw.bb345
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(hypre_FinalizeIndtComputations)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 16
	ori	$t3, $zero, 1
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_4:                                # %sw.bb
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	addi.d	$a2, $sp, 336
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_InitializeIndtComputations)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ld.d	$a2, $s0, 8
	ori	$t3, $zero, 1
	blt	$a0, $t3, .LBB2_25
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
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	bge	$a4, $a0, .LBB2_24
.LBB2_7:                                # %for.body9
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
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
	st.d	$a4, $sp, 288                   # 8-byte Folded Spill
	alsl.d	$a0, $a4, $a4, 1
	slli.d	$s4, $a0, 3
	add.d	$s6, $s7, $s4
	addi.d	$a2, $sp, 324
	move	$a0, $s6
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ori	$t3, $zero, 1
	ld.w	$a0, $sp, 332
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	blt	$a0, $t3, .LBB2_6
# %bb.8:                                # %for.cond309.preheader.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=2
	ld.w	$a1, $sp, 328
	blt	$a1, $t3, .LBB2_6
# %bb.9:                                # %for.cond309.preheader.us.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$a2, $zero
	add.d	$a0, $s8, $s4
	add.d	$a4, $s3, $s4
	alsl.d	$a3, $s5, $s2, 3
	ldx.w	$a5, $s7, $s4
	ldx.w	$a6, $s8, $s4
	ld.w	$a7, $s6, 4
	ld.w	$t0, $a0, 4
	ld.w	$t1, $s6, 8
	ld.w	$t2, $a0, 8
	ld.w	$t3, $a0, 16
	sub.d	$t4, $a5, $a6
	sub.d	$t5, $a7, $t0
	sub.d	$t2, $t1, $t2
	sub.w	$t0, $t3, $t0
	addi.w	$t3, $zero, -1
	slt	$t6, $t3, $t0
	maskeqz	$t0, $t0, $t6
	masknez	$t6, $t3, $t6
	or	$t0, $t0, $t6
	ld.w	$a0, $a0, 12
	addi.d	$t0, $t0, 1
	mul.d	$t2, $t0, $t2
	add.d	$t2, $t5, $t2
	sub.w	$a0, $a0, $a6
	slt	$a6, $t3, $a0
	maskeqz	$a0, $a0, $a6
	masknez	$a6, $t3, $a6
	or	$a0, $a0, $a6
	addi.d	$a0, $a0, 1
	mul.d	$a6, $t2, $a0
	add.w	$fp, $t4, $a6
	ldx.w	$a6, $s3, $s4
	ld.w	$t2, $a4, 4
	ld.w	$t4, $a4, 8
	ld.w	$t5, $a4, 16
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t2
	sub.d	$t1, $t1, $t4
	sub.w	$t2, $t5, $t2
	slt	$t4, $t3, $t2
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $t3, $t4
	or	$t2, $t2, $t4
	ld.w	$a4, $a4, 12
	addi.d	$t2, $t2, 1
	mul.d	$t1, $t2, $t1
	add.d	$a7, $a7, $t1
	sub.w	$a4, $a4, $a6
	slt	$a6, $t3, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $t3, $a6
	or	$a4, $a4, $a6
	addi.d	$a6, $a4, 1
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ld.w	$t1, $t4, 16
	mul.d	$a4, $a7, $a6
	add.w	$s8, $a5, $a4
	ld.w	$a4, $t4, 12
	mul.d	$t3, $t1, $a0
	ld.w	$a7, $t4, 20
	mul.d	$t4, $a6, $t1
	ld.wu	$a5, $sp, 324
	mul.d	$a6, $a6, $t2
	mul.d	$t1, $a6, $a7
	mul.d	$a0, $a0, $t0
	mul.d	$a0, $a0, $a7
	mul.d	$t2, $a4, $a5
	sub.d	$a6, $t3, $t2
	sub.d	$a7, $t4, $t2
	mul.d	$t0, $a1, $t3
	sub.d	$t0, $a0, $t0
	mul.d	$a0, $a1, $t4
	sub.d	$t1, $t1, $a0
	addi.d	$a0, $a1, -1
	mul.d	$t5, $a6, $a0
	add.d	$t3, $t5, $t3
	sub.d	$t3, $t3, $t2
	st.d	$t3, $sp, 304                   # 8-byte Folded Spill
	ori	$t3, $zero, 1
	mul.d	$a0, $a7, $a0
	add.d	$a0, $a0, $t4
	sub.d	$a0, $a0, $t2
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ori	$a0, $zero, 7
	sltu	$a0, $a0, $a5
	addi.d	$t2, $a4, -1
	sltui	$t2, $t2, 1
	and	$t4, $a0, $t2
	bstrpick.d	$a0, $a5, 30, 3
	slli.d	$t2, $a0, 3
	mul.d	$t6, $t2, $a4
	slli.d	$t7, $a4, 6
	alsl.d	$t8, $s1, $s0, 3
	addi.d	$s3, $t8, 32
	slli.d	$s4, $a4, 3
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_10:                               # %for.cond312.preheader.us406.preheader
                                        #   in Loop: Header=BB2_12 Depth=3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	add.d	$fp, $a0, $fp
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	add.d	$s8, $a0, $s8
.LBB2_11:                               # %for.cond309.for.end329_crit_edge.us
                                        #   in Loop: Header=BB2_12 Depth=3
	add.w	$fp, $t0, $fp
	addi.w	$a2, $a2, 1
	add.w	$s8, $t1, $s8
	ori	$t3, $zero, 1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB2_6
.LBB2_12:                               # %for.cond309.preheader.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_15 Depth 4
                                        #           Child Loop BB2_22 Depth 5
                                        #           Child Loop BB2_19 Depth 5
	addi.w	$a0, $a5, 0
	blt	$a0, $t3, .LBB2_10
# %bb.13:                               # %for.cond312.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_12 Depth=3
	move	$s7, $zero
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %for.cond312.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB2_15 Depth=4
	add.w	$fp, $a6, $s6
	addi.w	$s7, $s7, 1
	add.w	$s8, $a7, $ra
	beq	$s7, $a1, .LBB2_11
.LBB2_15:                               # %for.cond312.preheader.us.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_12 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_22 Depth 5
                                        #           Child Loop BB2_19 Depth 5
	beqz	$t4, .LBB2_17
# %bb.16:                               # %vector.memcheck555
                                        #   in Loop: Header=BB2_15 Depth=4
	add.d	$a0, $s5, $s8
	alsl.d	$a0, $a0, $s2, 3
	add.d	$t3, $s1, $fp
	alsl.d	$t3, $t3, $s0, 3
	sub.d	$a0, $a0, $t3
	ori	$t3, $zero, 64
	bgeu	$a0, $t3, .LBB2_21
.LBB2_17:                               #   in Loop: Header=BB2_15 Depth=4
	move	$t5, $zero
	move	$ra, $s8
	move	$s6, $fp
.LBB2_18:                               # %for.body314.us.us.preheader
                                        #   in Loop: Header=BB2_15 Depth=4
	move	$fp, $zero
	move	$s8, $zero
	alsl.d	$t3, $ra, $a3, 3
	alsl.d	$a0, $s6, $t8, 3
	sub.d	$t5, $a5, $t5
	.p2align	4, , 16
.LBB2_19:                               # %for.body314.us.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_12 Depth=3
                                        #         Parent Loop BB2_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fldx.d	$fa0, $a0, $s8
	fstx.d	$fa0, $t3, $s8
	add.d	$s8, $s8, $s4
	addi.w	$t5, $t5, -1
	sub.d	$fp, $fp, $a4
	bnez	$t5, .LBB2_19
# %bb.20:                               # %for.cond312.for.end_crit_edge.us.us.loopexit
                                        #   in Loop: Header=BB2_15 Depth=4
	sub.d	$ra, $ra, $fp
	sub.d	$s6, $s6, $fp
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_21:                               # %vector.ph558
                                        #   in Loop: Header=BB2_15 Depth=4
	move	$t5, $zero
	add.d	$ra, $t6, $s8
	add.d	$s6, $t6, $fp
	alsl.d	$s8, $s8, $a3, 3
	alsl.d	$t3, $fp, $s3, 3
	move	$a0, $t2
	.p2align	4, , 16
.LBB2_22:                               # %vector.body561
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_12 Depth=3
                                        #         Parent Loop BB2_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.d	$fp, $t3, $t5
	xvld	$xr0, $fp, -32
	xvldx	$xr1, $t3, $t5
	add.d	$fp, $s8, $t5
	xvstx	$xr0, $s8, $t5
	xvst	$xr1, $fp, 32
	addi.d	$a0, $a0, -8
	add.d	$t5, $t5, $t7
	bnez	$a0, .LBB2_22
# %bb.23:                               # %middle.block568
                                        #   in Loop: Header=BB2_15 Depth=4
	move	$t5, $t2
	beq	$t2, $a5, .LBB2_14
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_24:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB2_25:                               # %sw.epilog
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.w	$a0, $a2, 8
	blt	$a0, $t3, .LBB2_1
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
	ori	$t3, $zero, 1
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
                                        #           Child Loop BB2_40 Depth 5
                                        #             Child Loop BB2_44 Depth 6
                                        #               Child Loop BB2_48 Depth 7
                                        #               Child Loop BB2_53 Depth 7
	ld.d	$a1, $a2, 0
	slli.d	$a3, $a5, 3
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	ldx.d	$a6, $a1, $a3
	ld.w	$a1, $a6, 8
	blt	$a1, $t3, .LBB2_28
# %bb.30:                               # %for.body374.lr.ph
                                        #   in Loop: Header=BB2_29 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	blt	$a1, $t3, .LBB2_28
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
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	ld.w	$a4, $t0, 4
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	ld.w	$a4, $t0, 12
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	ld.w	$a4, $t0, 0
	st.d	$a4, $sp, 232                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$s1, $a0, $a3, 3
	addi.d	$a0, $s1, 8
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
                                        #           Child Loop BB2_40 Depth 5
                                        #             Child Loop BB2_44 Depth 6
                                        #               Child Loop BB2_48 Depth 7
                                        #               Child Loop BB2_53 Depth 7
	ld.d	$a0, $a6, 0
	move	$a4, $zero
	slli.d	$a1, $a7, 4
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a1, $a7, $a1, 3
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %for.end919.us
                                        #   in Loop: Header=BB2_35 Depth=4
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB2_32
.LBB2_35:                               # %for.body382.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_40 Depth 5
                                        #             Child Loop BB2_44 Depth 6
                                        #               Child Loop BB2_48 Depth 7
                                        #               Child Loop BB2_53 Depth 7
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 64
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	ld.d	$s8, $a1, 48
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a3, 40
	slli.d	$a2, $a4, 2
	ldx.w	$s2, $a0, $a2
	ld.d	$a0, $a3, 24
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	alsl.d	$a0, $a4, $a4, 1
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a0
	ldx.w	$fp, $a2, $a0
	ld.w	$s0, $a1, 4
	ld.w	$s3, $a1, 8
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 324
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.w	$a1, $a0, 4
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.w	$a1, $a0, 16
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.w	$a1, $sp, 332
	ld.w	$a0, $a0, 12
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	blez	$a1, .LBB2_34
# %bb.36:                               # %for.cond874.preheader.lr.ph.us
                                        #   in Loop: Header=BB2_35 Depth=4
	ld.w	$a5, $sp, 328
	ori	$a0, $zero, 1
	blt	$a5, $a0, .LBB2_34
# %bb.37:                               # %for.cond874.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_35 Depth=4
	st.d	$zero, $sp, 296                 # 8-byte Folded Spill
	sub.w	$a0, $s6, $s7
	addi.w	$a1, $zero, -1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a1, $a2
	or	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	mul.d	$a0, $a0, $s3
	add.d	$a0, $a0, $s0
	sub.w	$a2, $s4, $s5
	slt	$a3, $a1, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a1, $a3
	or	$a2, $a2, $a3
	addi.d	$a3, $a2, 1
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a6, $t0, 0
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a4, $t5, 0
	ld.w	$a7, $t0, 4
	ld.w	$a2, $t5, 4
	ld.w	$t0, $t0, 8
	ld.w	$t1, $t5, 8
	ld.w	$t2, $t5, 16
	sub.d	$t3, $a6, $a4
	sub.d	$t4, $a7, $a2
	sub.d	$t1, $t0, $t1
	sub.w	$a2, $t2, $a2
	slt	$t2, $a1, $a2
	maskeqz	$a2, $a2, $t2
	masknez	$t2, $a1, $t2
	or	$a2, $a2, $t2
	ld.w	$t2, $t5, 12
	addi.d	$a2, $a2, 1
	mul.d	$t1, $a2, $t1
	add.d	$t1, $t4, $t1
	sub.w	$a4, $t2, $a4
	slt	$t2, $a1, $a4
	maskeqz	$a4, $a4, $t2
	masknez	$t2, $a1, $t2
	or	$a4, $a4, $t2
	addi.d	$a4, $a4, 1
	mul.d	$t1, $t1, $a4
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	ld.w	$t2, $t2, 8
	add.w	$t6, $t3, $t1
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	sub.d	$t1, $a6, $t7
	ld.d	$t4, $sp, 224                   # 8-byte Folded Reload
	sub.d	$t3, $a7, $t4
	sub.d	$t2, $t0, $t2
	ld.d	$t5, $sp, 216                   # 8-byte Folded Reload
	sub.w	$t4, $t5, $t4
	slt	$t5, $a1, $t4
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a1, $t5
	or	$t4, $t4, $t5
	addi.d	$t4, $t4, 1
	mul.d	$t2, $t4, $t2
	add.d	$t2, $t3, $t2
	ld.d	$t3, $sp, 208                   # 8-byte Folded Reload
	sub.w	$t3, $t3, $t7
	slt	$t5, $a1, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a1, $t5
	or	$t3, $t3, $t5
	addi.d	$t3, $t3, 1
	mul.d	$t2, $t2, $t3
	add.w	$t5, $t1, $t2
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$t1, $s0, 0
	ld.w	$t2, $s0, 4
	ld.w	$t7, $s0, 8
	ld.w	$t8, $s0, 16
	sub.d	$a6, $a6, $t1
	sub.d	$a7, $a7, $t2
	sub.d	$t0, $t0, $t7
	sub.w	$t2, $t8, $t2
	slt	$t7, $a1, $t2
	maskeqz	$t2, $t2, $t7
	masknez	$t7, $a1, $t7
	or	$t2, $t2, $t7
	ld.w	$t7, $s0, 12
	addi.d	$t2, $t2, 1
	mul.d	$t0, $t2, $t0
	add.d	$a7, $a7, $t0
	sub.w	$t0, $t7, $t1
	slt	$t1, $a1, $t0
	maskeqz	$t0, $t0, $t1
	masknez	$a1, $a1, $t1
	or	$a1, $t0, $a1
	addi.d	$a1, $a1, 1
	ld.d	$t8, $sp, 88                    # 8-byte Folded Reload
	ld.w	$t1, $t8, 16
	mul.d	$a7, $a7, $a1
	add.w	$a7, $a6, $a7
	ld.w	$t0, $t8, 12
	mul.d	$a6, $t1, $a4
	mul.d	$t7, $t1, $t3
	ld.w	$t8, $t8, 20
	mul.d	$s0, $a1, $t1
	ld.wu	$t1, $sp, 324
	mul.d	$a1, $a1, $t2
	mul.d	$a1, $a1, $t8
	mul.d	$t2, $t3, $t4
	mul.d	$s3, $t2, $t8
	mul.d	$a2, $a4, $a2
	mul.d	$a2, $a2, $t8
	mul.d	$a4, $t0, $t1
	sub.d	$t2, $a6, $a4
	sub.d	$t3, $t7, $a4
	sub.d	$t4, $s0, $a4
	mul.d	$t8, $a5, $a6
	sub.d	$a2, $a2, $t8
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	mul.d	$a2, $a5, $t7
	sub.d	$a2, $s3, $a2
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	mul.d	$a2, $a5, $s0
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a1, $a5, -1
	mul.d	$a2, $t2, $a1
	add.d	$a2, $a2, $a6
	sub.d	$a2, $a2, $a4
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	mul.d	$a2, $t3, $a1
	add.d	$a2, $a2, $t7
	sub.d	$a2, $a2, $a4
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	mul.d	$a1, $t4, $a1
	add.d	$a1, $a1, $s0
	sub.d	$a1, $a1, $a4
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a1, $t1, -1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$s2, $s2, $s8, 3
	alsl.d	$a4, $a1, $s2, 3
	addi.d	$s8, $a4, 8
	mul.d	$a0, $a0, $a3
	add.w	$a4, $fp, $a0
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $t7, $a4
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$fp, $a0, $a6, 3
	alsl.d	$a0, $a1, $fp, 3
	addi.d	$a3, $a0, 8
	ori	$a0, $zero, 7
	sltu	$a0, $a0, $t1
	addi.d	$a1, $t0, -1
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	bstrpick.d	$a1, $t1, 30, 3
	slli.d	$s5, $a1, 3
	mul.d	$s4, $s5, $t0
	slli.d	$s7, $t0, 6
	addi.d	$a1, $s2, 32
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	slli.d	$a1, $t7, 3
	alsl.d	$a1, $a4, $a1, 3
	add.d	$s0, $a6, $a1
	addi.d	$a1, $s0, 32
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	slli.d	$ra, $t0, 3
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_38:                               # %for.cond877.preheader.us447.us.preheader
                                        #   in Loop: Header=BB2_40 Depth=5
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$t6, $a1, $t6
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	add.d	$t5, $a1, $t5
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$a7, $a1, $a7
.LBB2_39:                               # %for.cond874.for.end904_crit_edge.us.us
                                        #   in Loop: Header=BB2_40 Depth=5
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.w	$t6, $a1, $t6
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.w	$t5, $a1, $t5
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	add.w	$a7, $a1, $a7
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a4, $sp, 296                   # 8-byte Folded Spill
	beq	$a4, $a1, .LBB2_34
.LBB2_40:                               # %for.cond874.preheader.us.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        #         Parent Loop BB2_35 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_44 Depth 6
                                        #               Child Loop BB2_48 Depth 7
                                        #               Child Loop BB2_53 Depth 7
	addi.w	$a1, $t1, 0
	ori	$a4, $zero, 1
	blt	$a1, $a4, .LBB2_38
# %bb.41:                               # %for.cond877.preheader.us.us.us.preheader
                                        #   in Loop: Header=BB2_40 Depth=5
	move	$a4, $zero
	b	.LBB2_44
	.p2align	4, , 16
.LBB2_42:                               # %for.cond877.for.end892_crit_edge.us.us.us.loopexit
                                        #   in Loop: Header=BB2_44 Depth=6
	sub.d	$a7, $a7, $t5
	sub.d	$s6, $s6, $t5
	sub.d	$a1, $a1, $t5
.LBB2_43:                               # %for.cond877.for.end892_crit_edge.us.us.us
                                        #   in Loop: Header=BB2_44 Depth=6
	add.w	$t6, $t2, $a1
	add.w	$t5, $t3, $s6
	addi.w	$a4, $a4, 1
	add.w	$a7, $t4, $a7
	beq	$a4, $a5, .LBB2_39
.LBB2_44:                               # %for.cond877.preheader.us.us.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        #         Parent Loop BB2_35 Depth=4
                                        #           Parent Loop BB2_40 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_48 Depth 7
                                        #               Child Loop BB2_53 Depth 7
	beqz	$a0, .LBB2_50
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_44 Depth=6
	alsl.d	$t7, $a7, $s1, 3
	alsl.d	$a1, $a7, $a2, 3
	alsl.d	$a6, $t6, $s2, 3
	alsl.d	$t8, $t6, $s8, 3
	sltu	$t8, $t7, $t8
	sltu	$a6, $a6, $a1
	and	$a6, $t8, $a6
	move	$s3, $zero
	bnez	$a6, .LBB2_51
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_44 Depth=6
	alsl.d	$a6, $t5, $fp, 3
	alsl.d	$t8, $t5, $a3, 3
	sltu	$t8, $t7, $t8
	sltu	$a1, $a6, $a1
	and	$a1, $t8, $a1
	bnez	$a1, .LBB2_51
# %bb.47:                               # %vector.ph
                                        #   in Loop: Header=BB2_44 Depth=6
	move	$s3, $zero
	add.d	$a7, $s4, $a7
	add.d	$s6, $s4, $t5
	add.d	$a1, $s4, $t6
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$t6, $t6, $a6, 3
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$t5, $t5, $a6, 3
	move	$a6, $s5
	.p2align	4, , 16
.LBB2_48:                               # %vector.body
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        #         Parent Loop BB2_35 Depth=4
                                        #           Parent Loop BB2_40 Depth=5
                                        #             Parent Loop BB2_44 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	add.d	$t8, $t6, $s3
	xvld	$xr0, $t8, -32
	xvldx	$xr1, $t6, $s3
	add.d	$t8, $t5, $s3
	xvld	$xr2, $t8, -32
	xvldx	$xr3, $t5, $s3
	add.d	$t8, $t7, $s3
	xvldx	$xr4, $t7, $s3
	xvld	$xr5, $t8, 32
	xvbitrevi.d	$xr0, $xr0, 63
	xvbitrevi.d	$xr1, $xr1, 63
	xvfmadd.d	$xr0, $xr0, $xr2, $xr4
	xvfmadd.d	$xr1, $xr1, $xr3, $xr5
	xvstx	$xr0, $t7, $s3
	xvst	$xr1, $t8, 32
	addi.d	$a6, $a6, -8
	add.d	$s3, $s3, $s7
	bnez	$a6, .LBB2_48
# %bb.49:                               # %middle.block
                                        #   in Loop: Header=BB2_44 Depth=6
	move	$s3, $s5
	beq	$s5, $t1, .LBB2_43
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_50:                               #   in Loop: Header=BB2_44 Depth=6
	move	$s3, $zero
.LBB2_51:                               #   in Loop: Header=BB2_44 Depth=6
	move	$s6, $t5
	move	$a1, $t6
.LBB2_52:                               # %for.body879.us.us.us.preheader
                                        #   in Loop: Header=BB2_44 Depth=6
	move	$t5, $zero
	move	$a6, $zero
	alsl.d	$t6, $a7, $s1, 3
	alsl.d	$t7, $s6, $s0, 3
	alsl.d	$t8, $a1, $s2, 3
	sub.d	$s3, $t1, $s3
	.p2align	4, , 16
.LBB2_53:                               # %for.body879.us.us.us
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        #         Parent Loop BB2_35 Depth=4
                                        #           Parent Loop BB2_40 Depth=5
                                        #             Parent Loop BB2_44 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $t8, $a6
	fldx.d	$fa1, $t7, $a6
	fldx.d	$fa2, $t6, $a6
	fneg.d	$fa0, $fa0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fstx.d	$fa0, $t6, $a6
	add.d	$a6, $a6, $ra
	addi.w	$s3, $s3, -1
	sub.d	$t5, $t5, $t0
	bnez	$s3, .LBB2_53
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
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
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
