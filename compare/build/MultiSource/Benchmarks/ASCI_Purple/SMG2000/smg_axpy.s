	.file	"smg_axpy.c"
	.text
	.globl	hypre_SMGAxpy                   # -- Begin function hypre_SMGAxpy
	.p2align	5
	.type	hypre_SMGAxpy,@function
hypre_SMGAxpy:                          # @hypre_SMGAxpy
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
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
	move	$fp, $zero
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
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	addi.d	$fp, $fp, 1
	bge	$fp, $a0, .LBB0_21
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_19 Depth 4
                                        #         Child Loop BB0_16 Depth 4
	ld.d	$a0, $a2, 0
	alsl.d	$a1, $fp, $fp, 1
	slli.d	$s4, $a1, 3
	ldx.w	$a1, $a0, $s4
	add.d	$a0, $a0, $s4
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	st.w	$a1, $s5, 0
	ld.w	$a1, $a0, 4
	st.w	$a1, $s5, 4
	ld.w	$a1, $a0, 8
	st.w	$a1, $s5, 8
	ld.w	$a1, $a0, 12
	st.w	$a1, $s5, 12
	ld.w	$a1, $a0, 16
	st.w	$a1, $s5, 16
	ld.w	$a0, $a0, 20
	st.w	$a0, $s5, 20
	move	$a0, $s5
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 16
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 16
	ld.d	$s1, $a0, 0
	ld.d	$s8, $a1, 0
	ld.d	$a0, $a2, 40
	ld.d	$s6, $a2, 24
	ld.d	$a1, $a3, 40
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a2, $fp, 2
	ldx.w	$s0, $a0, $a2
	ld.d	$fp, $a3, 24
	ldx.w	$s2, $a1, $a2
	addi.d	$a2, $sp, 156
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	xvld	$xr5, $sp, 16                   # 32-byte Folded Reload
	xvld	$xr4, $sp, 80                   # 32-byte Folded Reload
	ld.w	$a0, $sp, 164
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_2
# %bb.4:                                # %for.cond340.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $sp, 160
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_2
# %bb.5:                                # %for.cond340.preheader.us.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$a2, $zero
	add.d	$a4, $s1, $s4
	add.d	$a5, $s8, $s4
	alsl.d	$a3, $s2, $fp, 3
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a6, $t2, 0
	ldx.w	$a7, $s1, $s4
	ld.w	$t0, $t2, 4
	ld.w	$t1, $a4, 4
	ld.w	$t2, $t2, 8
	ld.w	$t3, $a4, 8
	ld.w	$t4, $a4, 16
	sub.d	$t5, $a6, $a7
	sub.d	$t6, $t0, $t1
	sub.d	$t3, $t2, $t3
	sub.w	$t1, $t4, $t1
	ld.d	$t7, $sp, 8                     # 8-byte Folded Reload
	slt	$t4, $t7, $t1
	maskeqz	$t1, $t1, $t4
	masknez	$t4, $t7, $t4
	or	$t1, $t1, $t4
	ld.w	$a4, $a4, 12
	addi.d	$t1, $t1, 1
	mul.d	$t3, $t1, $t3
	add.d	$t3, $t6, $t3
	sub.w	$a4, $a4, $a7
	slt	$a7, $t7, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $t7, $a7
	or	$a4, $a4, $a7
	addi.d	$a7, $a4, 1
	mul.d	$a4, $t3, $a7
	add.w	$s7, $t5, $a4
	ldx.w	$a4, $s8, $s4
	ld.w	$t3, $a5, 4
	ld.w	$t4, $a5, 8
	ld.w	$t5, $a5, 16
	sub.d	$a6, $a6, $a4
	sub.d	$t0, $t0, $t3
	sub.d	$t2, $t2, $t4
	sub.w	$t3, $t5, $t3
	slt	$t4, $t7, $t3
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $t7, $t4
	or	$t3, $t3, $t4
	ld.w	$a5, $a5, 12
	addi.d	$t3, $t3, 1
	mul.d	$t2, $t3, $t2
	add.d	$t0, $t0, $t2
	sub.w	$a4, $a5, $a4
	slt	$a5, $t7, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t7, $a5
	or	$a4, $a4, $a5
	addi.d	$t2, $a4, 1
	ld.d	$t6, $sp, 120                   # 8-byte Folded Reload
	ld.w	$t4, $t6, 4
	mul.d	$a4, $t0, $t2
	add.w	$a4, $a6, $a4
	ld.w	$a5, $t6, 0
	mul.d	$t5, $t4, $a7
	ld.w	$t0, $t6, 8
	mul.d	$t4, $t2, $t4
	ld.wu	$a6, $sp, 156
	mul.d	$t2, $t2, $t3
	mul.d	$t2, $t2, $t0
	mul.d	$a7, $a7, $t1
	mul.d	$t1, $a7, $t0
	mul.d	$t3, $a5, $a6
	sub.d	$a7, $t5, $t3
	sub.d	$t0, $t4, $t3
	mul.d	$t6, $a1, $t5
	sub.d	$t1, $t1, $t6
	mul.d	$t6, $a1, $t4
	sub.d	$t2, $t2, $t6
	addi.d	$t6, $a1, -1
	mul.d	$t7, $a7, $t6
	add.d	$t5, $t7, $t5
	sub.d	$t5, $t5, $t3
	st.d	$t5, $sp, 144                   # 8-byte Folded Spill
	mul.d	$t5, $t0, $t6
	add.d	$t4, $t5, $t4
	sub.d	$t4, $t4, $t3
	addi.d	$t3, $a6, -1
	bstrpick.d	$t3, $t3, 31, 0
	alsl.d	$t5, $t3, $a3, 3
	addi.d	$t5, $t5, 8
	alsl.d	$t6, $s0, $s6, 3
	alsl.d	$t3, $t3, $t6, 3
	addi.d	$t7, $t3, 8
	ori	$t3, $zero, 7
	sltu	$t3, $t3, $a6
	addi.d	$t8, $a5, -1
	sltui	$t8, $t8, 1
	and	$t8, $t3, $t8
	bstrpick.d	$t3, $a6, 30, 3
	slli.d	$s0, $t3, 3
	mul.d	$s4, $s0, $a5
	slli.d	$s8, $a5, 6
	addi.d	$ra, $t6, 32
	slli.d	$s2, $a5, 3
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_6:                                # %for.cond343.preheader.us186.preheader
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	add.d	$s7, $t3, $s7
	add.d	$a4, $t4, $a4
.LBB0_7:                                # %for.cond340.for.end361_crit_edge.us
                                        #   in Loop: Header=BB0_8 Depth=2
	add.w	$s7, $t1, $s7
	addi.w	$a2, $a2, 1
	add.w	$a4, $t2, $a4
	beq	$a2, $a0, .LBB0_2
.LBB0_8:                                # %for.cond340.preheader.us
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_19 Depth 4
                                        #         Child Loop BB0_16 Depth 4
	addi.w	$t3, $a6, 0
	ori	$fp, $zero, 1
	blt	$t3, $fp, .LBB0_6
# %bb.9:                                # %for.cond343.preheader.us.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=2
	move	$fp, $zero
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %for.cond343.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB0_11 Depth=3
	add.w	$s7, $a7, $s1
	addi.w	$fp, $fp, 1
	add.w	$a4, $t0, $a4
	beq	$fp, $a1, .LBB0_7
.LBB0_11:                               # %for.cond343.preheader.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_19 Depth 4
                                        #         Child Loop BB0_16 Depth 4
	beqz	$t8, .LBB0_14
# %bb.12:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_11 Depth=3
	alsl.d	$s5, $a4, $a3, 3
	alsl.d	$t3, $s7, $t7, 3
	bgeu	$s5, $t3, .LBB0_18
# %bb.13:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_11 Depth=3
	alsl.d	$t3, $a4, $t5, 3
	alsl.d	$s1, $s7, $t6, 3
	bgeu	$s1, $t3, .LBB0_18
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=3
	move	$s5, $zero
	move	$s1, $s7
.LBB0_15:                               # %for.body345.us.us.preheader
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$s7, $zero
	move	$s6, $zero
	alsl.d	$s3, $a4, $a3, 3
	alsl.d	$t3, $s1, $t6, 3
	sub.d	$s5, $a6, $s5
	.p2align	4, , 16
.LBB0_16:                               # %for.body345.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t3, $s6
	fldx.d	$fa1, $s3, $s6
	fmadd.d	$fa0, $fa4, $fa0, $fa1
	fstx.d	$fa0, $s3, $s6
	add.d	$s6, $s6, $s2
	addi.w	$s5, $s5, -1
	sub.d	$s7, $s7, $a5
	bnez	$s5, .LBB0_16
# %bb.17:                               # %for.cond343.for.end_crit_edge.us.us.loopexit
                                        #   in Loop: Header=BB0_11 Depth=3
	sub.d	$a4, $a4, $s7
	sub.d	$s1, $s1, $s7
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_18:                               # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$s6, $zero
	add.d	$a4, $s4, $a4
	add.d	$s1, $s4, $s7
	alsl.d	$s7, $s7, $ra, 3
	move	$s3, $s0
	.p2align	4, , 16
.LBB0_19:                               # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$t3, $s7, $s6
	xvld	$xr0, $t3, -32
	xvldx	$xr1, $s7, $s6
	add.d	$t3, $s5, $s6
	xvldx	$xr2, $s5, $s6
	xvld	$xr3, $t3, 32
	xvfmadd.d	$xr0, $xr5, $xr0, $xr2
	xvfmadd.d	$xr1, $xr5, $xr1, $xr3
	xvstx	$xr0, $s5, $s6
	xvst	$xr1, $t3, 32
	addi.d	$s3, $s3, -8
	add.d	$s6, $s6, $s8
	bnez	$s3, .LBB0_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$s5, $s0
	beq	$s0, $a6, .LBB0_10
	b	.LBB0_15
.LBB0_21:                               # %for.end376
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end0:
	.size	hypre_SMGAxpy, .Lfunc_end0-hypre_SMGAxpy
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
