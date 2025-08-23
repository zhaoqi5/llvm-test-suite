	.file	"smg_axpy.c"
	.text
	.globl	hypre_SMGAxpy                   # -- Begin function hypre_SMGAxpy
	.p2align	5
	.type	hypre_SMGAxpy,@function
hypre_SMGAxpy:                          # @hypre_SMGAxpy
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	xvst	$xr0, $sp, 80                   # 32-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	xvld	$xr4, $sp, 80                   # 32-byte Folded Reload
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $fp, 8
	ld.d	$a2, $a1, 8
	ld.w	$a1, $a2, 8
	ori	$a3, $zero, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	blt	$a1, $a3, .LBB0_21
# %bb.1:                                # %for.body.lr.ph
	move	$s6, $zero
	xvreplve0.d	$xr5, $xr4
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	xvst	$xr5, $sp, 16                   # 32-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.end373
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	addi.d	$s6, $s6, 1
	bge	$s6, $a0, .LBB0_21
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_19 Depth 4
                                        #         Child Loop BB0_16 Depth 4
	ld.d	$a0, $a2, 0
	alsl.d	$a1, $s6, $s6, 1
	slli.d	$s5, $a1, 3
	ldx.w	$a1, $a0, $s5
	add.d	$a0, $a0, $s5
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a1, $s1, 0
	ld.w	$a1, $a0, 4
	st.w	$a1, $s1, 4
	ld.w	$a1, $a0, 8
	st.w	$a1, $s1, 8
	ld.w	$a1, $a0, 12
	st.w	$a1, $s1, 12
	ld.w	$a1, $a0, 16
	st.w	$a1, $s1, 16
	ld.w	$a0, $a0, 20
	st.w	$a0, $s1, 20
	move	$a0, $s1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 16
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 16
	ld.d	$s8, $a0, 0
	ld.d	$s4, $a1, 0
	ld.d	$a0, $a2, 40
	ld.d	$s2, $a2, 24
	ld.d	$a1, $a3, 40
	slli.d	$a2, $s6, 2
	ldx.w	$s3, $a0, $a2
	ld.d	$s0, $a3, 24
	ldx.w	$s7, $a1, $a2
	addi.d	$a2, $sp, 140
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	xvld	$xr5, $sp, 16                   # 32-byte Folded Reload
	xvld	$xr4, $sp, 80                   # 32-byte Folded Reload
	ld.w	$a0, $sp, 140
	ld.w	$a1, $sp, 144
	ld.w	$a2, $sp, 148
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB0_2
# %bb.4:                                # %for.cond337.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB0_2
# %bb.5:                                # %for.cond337.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB0_2
# %bb.6:                                # %for.cond337.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB0_2
# %bb.7:                                # %for.cond340.preheader.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$a3, $zero
	add.d	$a5, $s8, $s5
	add.d	$a6, $s4, $s5
	alsl.d	$a4, $s7, $s0, 3
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a7, $t3, 0
	ldx.w	$t0, $s8, $s5
	ld.w	$t1, $t3, 4
	ld.w	$t2, $a5, 4
	ld.w	$t3, $t3, 8
	ld.w	$t4, $a5, 8
	ld.w	$t5, $a5, 16
	sub.d	$t6, $a7, $t0
	sub.d	$t7, $t1, $t2
	sub.d	$t4, $t3, $t4
	sub.w	$t2, $t5, $t2
	ld.d	$t8, $sp, 8                     # 8-byte Folded Reload
	slt	$t5, $t8, $t2
	maskeqz	$t2, $t2, $t5
	masknez	$t5, $t8, $t5
	or	$t2, $t2, $t5
	ld.w	$a5, $a5, 12
	addi.d	$t2, $t2, 1
	mul.d	$t4, $t2, $t4
	add.d	$t4, $t7, $t4
	sub.w	$a5, $a5, $t0
	slt	$t0, $t8, $a5
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $t8, $t0
	or	$a5, $a5, $t0
	addi.d	$t0, $a5, 1
	mul.d	$a5, $t4, $t0
	add.w	$s7, $t6, $a5
	ldx.w	$a5, $s4, $s5
	ld.w	$t4, $a6, 4
	ld.w	$t5, $a6, 8
	ld.w	$t6, $a6, 16
	sub.d	$a7, $a7, $a5
	sub.d	$t1, $t1, $t4
	sub.d	$t3, $t3, $t5
	sub.w	$t4, $t6, $t4
	slt	$t5, $t8, $t4
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t8, $t5
	or	$t4, $t4, $t5
	ld.w	$a6, $a6, 12
	addi.d	$t4, $t4, 1
	mul.d	$t3, $t4, $t3
	add.d	$t1, $t1, $t3
	sub.w	$a5, $a6, $a5
	slt	$a6, $t8, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t8, $a6
	or	$a5, $a5, $a6
	addi.d	$t3, $a5, 1
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	ld.w	$t5, $t7, 4
	mul.d	$a5, $t1, $t3
	add.w	$a5, $a7, $a5
	ld.w	$a6, $t7, 0
	mul.d	$t1, $t3, $t5
	mul.d	$t6, $a1, $t1
	mul.d	$a7, $t5, $t0
	ld.w	$t5, $t7, 8
	mul.d	$t7, $a1, $a7
	mul.d	$t8, $a6, $a0
	mul.d	$t3, $t3, $t4
	mul.d	$t3, $t3, $t5
	mul.d	$t0, $t0, $t2
	mul.d	$t2, $t0, $t5
	sub.d	$a7, $a7, $t8
	sub.d	$t0, $t1, $t8
	sub.d	$t1, $t2, $t7
	sub.d	$t2, $t3, $t6
	addi.d	$t3, $a0, -1
	bstrpick.d	$t5, $t3, 31, 0
	alsl.d	$t3, $t5, $a4, 3
	addi.d	$t3, $t3, 8
	alsl.d	$t4, $s3, $s2, 3
	alsl.d	$t5, $t5, $t4, 3
	addi.d	$t5, $t5, 8
	ori	$t6, $zero, 7
	sltu	$t6, $t6, $a0
	addi.d	$t7, $a6, -1
	sltui	$t7, $t7, 1
	and	$t6, $t6, $t7
	bstrpick.d	$t7, $a0, 30, 3
	slli.d	$t7, $t7, 3
	mul.d	$t8, $t7, $a6
	slli.d	$s0, $a6, 6
	addi.d	$s4, $t4, 32
	slli.d	$s5, $a6, 3
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %for.cond340.for.end361_crit_edge.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB0_9 Depth=2
	add.w	$s7, $t1, $s7
	addi.w	$a3, $a3, 1
	add.w	$a5, $t2, $a5
	beq	$a3, $a2, .LBB0_2
.LBB0_9:                                # %for.cond340.preheader.us.us.us.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_19 Depth 4
                                        #         Child Loop BB0_16 Depth 4
	move	$s8, $zero
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %for.cond343.for.end_crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB0_11 Depth=3
	add.w	$s7, $a7, $ra
	addi.w	$s8, $s8, 1
	add.w	$a5, $t0, $a5
	beq	$s8, $a1, .LBB0_8
.LBB0_11:                               # %for.cond343.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_19 Depth 4
                                        #         Child Loop BB0_16 Depth 4
	beqz	$t6, .LBB0_14
# %bb.12:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_11 Depth=3
	alsl.d	$fp, $a5, $a4, 3
	alsl.d	$s1, $s7, $t5, 3
	bgeu	$fp, $s1, .LBB0_18
# %bb.13:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_11 Depth=3
	alsl.d	$s1, $a5, $t3, 3
	alsl.d	$s2, $s7, $t4, 3
	bgeu	$s2, $s1, .LBB0_18
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=3
	move	$fp, $zero
	move	$ra, $s7
.LBB0_15:                               # %for.body345.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$s7, $zero
	move	$s2, $zero
	alsl.d	$s1, $a5, $a4, 3
	alsl.d	$s3, $ra, $t4, 3
	sub.d	$fp, $a0, $fp
	.p2align	4, , 16
.LBB0_16:                               # %for.body345.us.us.us.us.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $s3, $s2
	fldx.d	$fa1, $s1, $s2
	fmadd.d	$fa0, $fa4, $fa0, $fa1
	fstx.d	$fa0, $s1, $s2
	add.d	$s2, $s2, $s5
	addi.w	$fp, $fp, -1
	sub.d	$s7, $s7, $a6
	bnez	$fp, .LBB0_16
# %bb.17:                               # %for.cond343.for.end_crit_edge.us.us.us.us.us.us.loopexit
                                        #   in Loop: Header=BB0_11 Depth=3
	sub.d	$a5, $a5, $s7
	sub.d	$ra, $ra, $s7
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_18:                               # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$s2, $zero
	add.d	$a5, $t8, $a5
	add.d	$ra, $t8, $s7
	alsl.d	$s7, $s7, $s4, 3
	move	$s1, $t7
	.p2align	4, , 16
.LBB0_19:                               # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$s3, $s7, $s2
	xvld	$xr0, $s3, -32
	xvldx	$xr1, $s7, $s2
	add.d	$s3, $fp, $s2
	xvldx	$xr2, $fp, $s2
	xvld	$xr3, $s3, 32
	xvfmadd.d	$xr0, $xr5, $xr0, $xr2
	xvfmadd.d	$xr1, $xr5, $xr1, $xr3
	xvstx	$xr0, $fp, $s2
	xvst	$xr1, $s3, 32
	addi.d	$s1, $s1, -8
	add.d	$s2, $s2, $s0
	bnez	$s1, .LBB0_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$fp, $t7
	beq	$t7, $a0, .LBB0_10
	b	.LBB0_15
.LBB0_21:                               # %for.end376
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end0:
	.size	hypre_SMGAxpy, .Lfunc_end0-hypre_SMGAxpy
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
