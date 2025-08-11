	.file	"struct_innerprod.c"
	.text
	.globl	hypre_StructInnerProd           # -- Begin function hypre_StructInnerProd
	.p2align	5
	.type	hypre_StructInnerProd,@function
hypre_StructInnerProd:                  # @hypre_StructInnerProd
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
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
	move	$s0, $a1
	ld.d	$a1, $a1, 8
	ld.d	$s2, $a1, 8
	ld.w	$a1, $s2, 8
	ori	$s3, $zero, 1
	move	$fp, $a0
	blt	$a1, $s3, .LBB0_15
# %bb.1:                                # %for.body.lr.ph
	move	$s4, $zero
	movgr2fr.d	$fs0, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$s2, $s5
.LBB0_3:                                # %for.end335
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $s2, 8
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB0_16
.LBB0_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_13 Depth 4
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s0, 16
	move	$s5, $s2
	ld.d	$s8, $s2, 0
	ld.d	$s2, $a0, 0
	ld.d	$s6, $a1, 0
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 24
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $s0, 40
	slli.d	$a2, $s4, 2
	ldx.w	$a0, $a0, $a2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 24
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$a0, $a1, $a2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	alsl.d	$a0, $s4, $s4, 1
	slli.d	$s7, $a0, 3
	add.d	$s1, $s8, $s7
	addi.d	$a1, $sp, 60
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 60
	ld.w	$a1, $sp, 64
	ld.w	$a2, $sp, 68
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blt	$a3, $s3, .LBB0_2
# %bb.5:                                # %for.cond299.preheader.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	blt	$a2, $s3, .LBB0_2
# %bb.6:                                # %for.cond299.preheader.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	blt	$a1, $s3, .LBB0_2
# %bb.7:                                # %for.cond302.preheader.us.us.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a3, $zero
	add.d	$a4, $s2, $s7
	add.d	$a6, $s6, $s7
	ldx.w	$a7, $s8, $s7
	ldx.w	$a5, $s2, $s7
	ld.w	$t0, $a4, 4
	ld.w	$t1, $a4, 16
	ld.w	$t2, $s1, 4
	ld.w	$t3, $s1, 8
	ld.w	$t4, $a4, 8
	sub.w	$t1, $t1, $t0
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	slt	$t5, $t7, $t1
	maskeqz	$t1, $t1, $t5
	masknez	$t5, $t7, $t5
	or	$t1, $t1, $t5
	sub.d	$t5, $a7, $a5
	sub.d	$t0, $t2, $t0
	sub.d	$t4, $t3, $t4
	ld.w	$a4, $a4, 12
	addi.d	$t1, $t1, 1
	mul.d	$t4, $t1, $t4
	add.d	$t0, $t0, $t4
	sub.w	$a4, $a4, $a5
	slt	$a5, $t7, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t7, $a5
	or	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	mul.d	$a5, $t0, $a4
	add.w	$a5, $t5, $a5
	ldx.w	$t0, $s6, $s7
	ld.w	$t4, $a6, 4
	ld.w	$t5, $a6, 8
	ld.w	$t6, $a6, 16
	sub.d	$a7, $a7, $t0
	sub.d	$t2, $t2, $t4
	sub.d	$t3, $t3, $t5
	sub.w	$t4, $t6, $t4
	slt	$t5, $t7, $t4
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t7, $t5
	or	$t4, $t4, $t5
	ld.w	$a6, $a6, 12
	addi.d	$t4, $t4, 1
	mul.d	$t3, $t4, $t3
	add.d	$t2, $t2, $t3
	sub.w	$a6, $a6, $t0
	slt	$t0, $t7, $a6
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $t7, $t0
	or	$a6, $a6, $t0
	addi.d	$a6, $a6, 1
	mul.d	$t0, $t2, $a6
	add.w	$a7, $a7, $t0
	sub.d	$t0, $t1, $a1
	mul.d	$t0, $t0, $a4
	sub.d	$t1, $t4, $a1
	mul.d	$t1, $a6, $t1
	sub.d	$t3, $a6, $a0
	sub.d	$t2, $a4, $a0
	addi.d	$t4, $a1, -1
	mul.d	$t2, $t2, $t4
	add.d	$t2, $a4, $t2
	sub.d	$t2, $t2, $a0
	mul.d	$t3, $t3, $t4
	add.d	$t3, $a6, $t3
	sub.d	$t3, $t3, $a0
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$t4, $t5, $t4, 3
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$t5, $t6, $t5, 3
	move	$s2, $s5
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_8:                                # %for.cond305.preheader.us174.us.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	add.d	$a5, $t2, $a5
	add.d	$a7, $t3, $a7
.LBB0_9:                                # %for.cond302.for.end323_crit_edge.us.us
                                        #   in Loop: Header=BB0_10 Depth=2
	add.w	$a5, $a5, $t0
	addi.w	$a3, $a3, 1
	add.w	$a7, $a7, $t1
	beq	$a3, $a2, .LBB0_3
.LBB0_10:                               # %for.cond302.preheader.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_13 Depth 4
	blt	$a0, $s3, .LBB0_8
# %bb.11:                               # %for.cond305.preheader.us.us.us.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	move	$t6, $zero
	.p2align	4, , 16
.LBB0_12:                               # %for.cond305.preheader.us.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_13 Depth 4
	alsl.d	$t7, $a7, $t4, 3
	alsl.d	$t8, $a5, $t5, 3
	move	$s1, $a0
	.p2align	4, , 16
.LBB0_13:                               # %for.body307.us.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $t8, 0
	fld.d	$fa1, $t7, 0
	fmadd.d	$fs0, $fa0, $fa1, $fs0
	addi.d	$t7, $t7, 8
	addi.w	$s1, $s1, -1
	addi.d	$t8, $t8, 8
	bnez	$s1, .LBB0_13
# %bb.14:                               # %for.cond305.for.end_crit_edge.us.us.us
                                        #   in Loop: Header=BB0_12 Depth=3
	add.w	$a5, $a5, $a4
	addi.w	$t6, $t6, 1
	add.w	$a7, $a7, $a6
	bne	$t6, $a1, .LBB0_12
	b	.LBB0_9
.LBB0_15:
	movgr2fr.d	$fs0, $zero
.LBB0_16:                               # %for.end338
	ld.w	$a5, $fp, 0
	fst.d	$fs0, $sp, 72
	pcalau12i	$a0, %pc_hi20(final_innerprod_result)
	addi.d	$s0, $a0, %pc_lo12(final_innerprod_result)
	addi.d	$a0, $sp, 72
	ori	$a2, $zero, 1
	move	$a1, $s0
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(hypre_MPI_Allreduce)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 72
	slli.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(hypre_IncFLOPCount)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s0, 0
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
.Lfunc_end0:
	.size	hypre_StructInnerProd, .Lfunc_end0-hypre_StructInnerProd
                                        # -- End function
	.type	final_innerprod_result,@object  # @final_innerprod_result
	.bss
	.globl	final_innerprod_result
	.p2align	3, 0x0
final_innerprod_result:
	.dword	0x0000000000000000              # double 0
	.size	final_innerprod_result, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym final_innerprod_result
