	.file	"struct_copy.c"
	.text
	.globl	hypre_StructCopy                # -- Begin function hypre_StructCopy
	.p2align	5
	.type	hypre_StructCopy,@function
hypre_StructCopy:                       # @hypre_StructCopy
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a1, 8
	ld.w	$a1, $a2, 8
	ori	$a3, $zero, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	blt	$a1, $a3, .LBB0_19
# %bb.1:                                # %for.body.lr.ph
	move	$s4, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s6, $zero, 8
	ori	$s7, $zero, 64
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.end334
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB0_19
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_17 Depth 4
                                        #         Child Loop BB0_15 Depth 4
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 16
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a4, 16
	ld.d	$a2, $a2, 0
	ld.d	$s3, $a0, 0
	ld.d	$s5, $a1, 0
	ld.d	$a0, $a3, 40
	ld.d	$s8, $a3, 24
	ld.d	$a1, $a4, 40
	slli.d	$a3, $s4, 2
	ldx.w	$s2, $a0, $a3
	ld.d	$s0, $a4, 24
	ldx.w	$fp, $a1, $a3
	alsl.d	$a0, $s4, $s4, 1
	slli.d	$a0, $a0, 3
	add.d	$s1, $a2, $a0
	addi.d	$a1, $sp, 44
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 52
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_2
# %bb.4:                                # %for.cond302.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $sp, 48
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_2
# %bb.5:                                # %for.cond302.preheader.us.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a2, $s4, 4
	alsl.d	$a4, $s4, $a2, 3
	add.d	$t1, $s5, $a4
	ld.w	$t0, $t1, 4
	ld.w	$a5, $t1, 16
	move	$a2, $zero
	ld.wu	$a3, $sp, 44
	ldx.w	$t2, $s5, $a4
	sub.w	$a5, $a5, $t0
	ld.d	$t8, $sp, 8                     # 8-byte Folded Reload
	slt	$a6, $t8, $a5
	maskeqz	$a5, $a5, $a6
	ld.w	$a7, $t1, 12
	masknez	$a6, $t8, $a6
	or	$a5, $a5, $a6
	addi.d	$t3, $a5, 1
	sub.w	$a5, $a7, $t2
	slt	$a6, $t8, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t8, $a6
	add.d	$a7, $s3, $a4
	ld.w	$t4, $a7, 4
	ld.w	$t5, $a7, 16
	or	$a5, $a5, $a6
	addi.d	$t6, $a5, 1
	ldx.w	$t7, $s3, $a4
	sub.w	$a4, $t5, $t4
	slt	$a5, $t8, $a4
	maskeqz	$a4, $a4, $a5
	ld.w	$a6, $a7, 12
	masknez	$a5, $t8, $a5
	or	$a4, $a4, $a5
	addi.d	$t5, $a4, 1
	sub.w	$a4, $a6, $t7
	slt	$a5, $t8, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t8, $a5
	or	$a4, $a4, $a5
	addi.d	$s3, $a4, 1
	sub.d	$a4, $s3, $a3
	sub.d	$a5, $t6, $a3
	sub.d	$a6, $t5, $a1
	ld.w	$s5, $s1, 8
	ld.w	$a7, $a7, 8
	mulw.d.w	$a6, $a6, $s3
	ld.w	$ra, $s1, 0
	ld.w	$s1, $s1, 4
	sub.d	$a7, $s5, $a7
	mul.d	$t5, $t5, $a7
	sub.d	$a7, $t3, $a1
	mulw.d.w	$a7, $t6, $a7
	sub.d	$t7, $ra, $t7
	sub.d	$t4, $s1, $t4
	add.d	$t4, $t4, $t5
	mul.d	$t4, $t4, $s3
	ld.w	$t1, $t1, 8
	add.w	$t8, $t7, $t4
	sub.d	$t2, $ra, $t2
	sub.d	$t0, $s1, $t0
	sub.d	$t1, $s5, $t1
	mul.d	$t1, $t3, $t1
	add.d	$t0, $t0, $t1
	mul.d	$t0, $t0, $t6
	add.w	$s1, $t2, $t0
	addi.d	$t1, $a1, -1
	mul.d	$t0, $a4, $t1
	add.d	$t0, $s3, $t0
	sub.d	$t0, $t0, $a3
	mul.d	$t1, $a5, $t1
	add.d	$t1, $t6, $t1
	sub.d	$t1, $t1, $a3
	bstrpick.d	$t2, $a3, 30, 3
	slli.d	$t2, $t2, 3
	alsl.d	$t3, $fp, $s0, 3
	addi.d	$t4, $t3, 32
	alsl.d	$t5, $s2, $s8, 3
	addi.d	$t6, $t5, 32
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_6:                                # %for.cond305.preheader.us165.preheader
                                        #   in Loop: Header=BB0_8 Depth=2
	add.d	$t8, $t0, $t8
	add.d	$s1, $t1, $s1
.LBB0_7:                                # %for.cond302.for.end322_crit_edge.us
                                        #   in Loop: Header=BB0_8 Depth=2
	add.w	$t8, $t8, $a6
	addi.w	$a2, $a2, 1
	add.w	$s1, $s1, $a7
	beq	$a2, $a0, .LBB0_2
.LBB0_8:                                # %for.cond302.preheader.us
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_17 Depth 4
                                        #         Child Loop BB0_15 Depth 4
	addi.w	$t7, $a3, 0
	ori	$s3, $zero, 1
	blt	$t7, $s3, .LBB0_6
# %bb.9:                                # %for.cond305.preheader.us.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=2
	move	$t7, $zero
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %for.cond305.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB0_11 Depth=3
	add.w	$t8, $a4, $ra
	addi.w	$t7, $t7, 1
	add.w	$s1, $a5, $s5
	beq	$t7, $a1, .LBB0_7
.LBB0_11:                               # %for.cond305.preheader.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_17 Depth 4
                                        #         Child Loop BB0_15 Depth 4
	bltu	$a3, $s6, .LBB0_13
# %bb.12:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_11 Depth=3
	add.d	$s3, $fp, $s1
	alsl.d	$s3, $s3, $s0, 3
	add.d	$s5, $s2, $t8
	alsl.d	$s5, $s5, $s8, 3
	sub.d	$s3, $s3, $s5
	bgeu	$s3, $s7, .LBB0_16
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=3
	move	$s3, $zero
	move	$s5, $s1
	move	$ra, $t8
.LBB0_14:                               # %for.body307.us.us.preheader
                                        #   in Loop: Header=BB0_11 Depth=3
	alsl.d	$t8, $s5, $t3, 3
	alsl.d	$s1, $ra, $t5, 3
	sub.d	$s3, $a3, $s3
	.p2align	4, , 16
.LBB0_15:                               # %for.body307.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $s1, 0
	fst.d	$fa0, $t8, 0
	addi.d	$ra, $ra, 1
	addi.d	$s5, $s5, 1
	addi.d	$t8, $t8, 8
	addi.w	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB0_15
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_16:                               # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=3
	add.d	$s5, $t2, $s1
	add.d	$ra, $t2, $t8
	alsl.d	$s1, $s1, $t4, 3
	alsl.d	$t8, $t8, $t6, 3
	move	$s3, $t2
	.p2align	4, , 16
.LBB0_17:                               # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $t8, -32
	xvld	$xr1, $t8, 0
	xvst	$xr0, $s1, -32
	xvst	$xr1, $s1, 0
	addi.d	$s3, $s3, -8
	addi.d	$s1, $s1, 64
	addi.d	$t8, $t8, 64
	bnez	$s3, .LBB0_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$s3, $t2
	beq	$t2, $a3, .LBB0_10
	b	.LBB0_14
.LBB0_19:                               # %for.end337
	move	$a0, $zero
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end0:
	.size	hypre_StructCopy, .Lfunc_end0-hypre_StructCopy
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
