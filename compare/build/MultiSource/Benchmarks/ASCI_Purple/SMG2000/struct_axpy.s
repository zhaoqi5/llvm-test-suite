	.file	"struct_axpy.c"
	.text
	.globl	hypre_StructAxpy                # -- Begin function hypre_StructAxpy
	.p2align	5
	.type	hypre_StructAxpy,@function
hypre_StructAxpy:                       # @hypre_StructAxpy
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a1, 8
	ld.w	$a1, $a2, 8
	ori	$s3, $zero, 1
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	blt	$a1, $s3, .LBB0_20
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $a0
	move	$s4, $zero
	xvreplve0.d	$xr5, $xr0
	addi.w	$s5, $zero, -1
	ori	$s6, $zero, 8
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	xvst	$xr5, $sp, 16                   # 32-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.end335
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB0_20
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_18 Depth 4
                                        #         Child Loop BB0_16 Depth 4
	ld.d	$a0, $s0, 16
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a4, 16
	ld.d	$a2, $a2, 0
	ld.d	$s8, $a0, 0
	ld.d	$s2, $a1, 0
	ld.d	$a0, $s0, 40
	ld.d	$fp, $s0, 24
	ld.d	$a1, $a4, 40
	slli.d	$a3, $s4, 2
	ldx.w	$a0, $a0, $a3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a4, 24
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ldx.w	$s7, $a1, $a3
	alsl.d	$a0, $s4, $s4, 1
	slli.d	$a0, $a0, 3
	add.d	$s1, $a2, $a0
	addi.d	$a1, $sp, 124
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	xvld	$xr5, $sp, 16                   # 32-byte Folded Reload
	xvld	$xr0, $sp, 48                   # 32-byte Folded Reload
	ld.w	$a0, $sp, 132
	blt	$a0, $s3, .LBB0_2
# %bb.4:                                # %for.cond302.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $sp, 128
	blt	$a1, $s3, .LBB0_2
# %bb.5:                                # %for.cond302.preheader.us.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a2, $s4, 4
	alsl.d	$a4, $s4, $a2, 3
	add.d	$t1, $s2, $a4
	ld.w	$t0, $t1, 4
	ld.w	$a5, $t1, 16
	move	$a2, $zero
	ld.wu	$a3, $sp, 124
	ldx.w	$t2, $s2, $a4
	sub.w	$a5, $a5, $t0
	slt	$a6, $s5, $a5
	maskeqz	$a5, $a5, $a6
	ld.w	$a7, $t1, 12
	masknez	$a6, $s5, $a6
	or	$a5, $a5, $a6
	addi.d	$t3, $a5, 1
	sub.w	$a5, $a7, $t2
	slt	$a6, $s5, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s5, $a6
	add.d	$a7, $s8, $a4
	ld.w	$t4, $a7, 4
	ld.w	$t5, $a7, 16
	or	$a5, $a5, $a6
	addi.d	$t6, $a5, 1
	ldx.w	$t7, $s8, $a4
	sub.w	$a4, $t5, $t4
	slt	$a5, $s5, $a4
	maskeqz	$a4, $a4, $a5
	ld.w	$a6, $a7, 12
	masknez	$a5, $s5, $a5
	or	$a4, $a4, $a5
	addi.d	$t5, $a4, 1
	sub.w	$a4, $a6, $t7
	slt	$a5, $s5, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $s5, $a5
	or	$a4, $a4, $a5
	addi.d	$t8, $a4, 1
	sub.d	$a4, $t8, $a3
	sub.d	$a5, $t6, $a3
	sub.d	$a6, $t5, $a1
	move	$ra, $fp
	ld.w	$fp, $s1, 8
	ld.w	$a7, $a7, 8
	mulw.d.w	$a6, $a6, $t8
	ld.w	$s8, $s1, 0
	ld.w	$s1, $s1, 4
	sub.d	$a7, $fp, $a7
	mul.d	$t5, $t5, $a7
	sub.d	$a7, $t3, $a1
	mulw.d.w	$a7, $t6, $a7
	sub.d	$t7, $s8, $t7
	sub.d	$t4, $s1, $t4
	add.d	$t4, $t4, $t5
	mul.d	$t4, $t4, $t8
	ld.w	$t1, $t1, 8
	add.w	$s2, $t7, $t4
	sub.d	$t2, $s8, $t2
	sub.d	$t0, $s1, $t0
	sub.d	$t1, $fp, $t1
	mul.d	$t1, $t3, $t1
	add.d	$t0, $t0, $t1
	mul.d	$t0, $t0, $t6
	add.w	$s8, $t2, $t0
	addi.d	$t1, $a1, -1
	mul.d	$t0, $a4, $t1
	add.d	$t0, $t8, $t0
	sub.d	$t0, $t0, $a3
	mul.d	$t1, $a5, $t1
	add.d	$t1, $t6, $t1
	sub.d	$t1, $t1, $a3
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$t2, $s7, $t2, 3
	addi.d	$t3, $a3, -1
	bstrpick.d	$t5, $t3, 31, 0
	alsl.d	$t3, $t5, $t2, 3
	addi.d	$t3, $t3, 8
	ld.d	$t4, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$t4, $t4, $ra, 3
	alsl.d	$t5, $t5, $t4, 3
	addi.d	$t5, $t5, 8
	bstrpick.d	$t6, $a3, 30, 3
	slli.d	$t6, $t6, 3
	addi.d	$t7, $t2, 32
	addi.d	$t8, $t4, 32
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_6:                                # %for.cond305.preheader.us165.preheader
                                        #   in Loop: Header=BB0_8 Depth=2
	add.d	$s2, $t0, $s2
	add.d	$s8, $t1, $s8
.LBB0_7:                                # %for.cond302.for.end323_crit_edge.us
                                        #   in Loop: Header=BB0_8 Depth=2
	add.w	$s2, $s2, $a6
	addi.w	$a2, $a2, 1
	add.w	$s8, $s8, $a7
	beq	$a2, $a0, .LBB0_2
.LBB0_8:                                # %for.cond302.preheader.us
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_18 Depth 4
                                        #         Child Loop BB0_16 Depth 4
	addi.w	$fp, $a3, 0
	blt	$fp, $s3, .LBB0_6
# %bb.9:                                # %for.cond305.preheader.us.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=2
	move	$s1, $zero
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %for.cond305.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB0_11 Depth=3
	add.w	$s2, $a4, $ra
	addi.w	$s1, $s1, 1
	add.w	$s8, $a5, $s7
	beq	$s1, $a1, .LBB0_7
.LBB0_11:                               # %for.cond305.preheader.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_18 Depth 4
                                        #         Child Loop BB0_16 Depth 4
	bltu	$a3, $s6, .LBB0_14
# %bb.12:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_11 Depth=3
	alsl.d	$fp, $s8, $t2, 3
	alsl.d	$s7, $s2, $t5, 3
	bgeu	$fp, $s7, .LBB0_17
# %bb.13:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_11 Depth=3
	alsl.d	$fp, $s8, $t3, 3
	alsl.d	$s7, $s2, $t4, 3
	bgeu	$s7, $fp, .LBB0_17
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=3
	move	$fp, $zero
	move	$s7, $s8
	move	$ra, $s2
.LBB0_15:                               # %for.body307.us.us.preheader
                                        #   in Loop: Header=BB0_11 Depth=3
	alsl.d	$s2, $s7, $t2, 3
	alsl.d	$s8, $ra, $t4, 3
	sub.d	$fp, $a3, $fp
	.p2align	4, , 16
.LBB0_16:                               # %for.body307.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa2, $s8, 0
	fld.d	$fa1, $s2, 0
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	fst.d	$fa1, $s2, 0
	addi.d	$ra, $ra, 1
	addi.d	$s7, $s7, 1
	addi.d	$s2, $s2, 8
	addi.w	$fp, $fp, -1
	addi.d	$s8, $s8, 8
	bnez	$fp, .LBB0_16
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_17:                               # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=3
	add.d	$s7, $t6, $s8
	add.d	$ra, $t6, $s2
	alsl.d	$fp, $s8, $t7, 3
	alsl.d	$s2, $s2, $t8, 3
	move	$s8, $t6
	.p2align	4, , 16
.LBB0_18:                               # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr4, $s2, -32
	xvld	$xr1, $s2, 0
	xvld	$xr2, $fp, -32
	xvld	$xr3, $fp, 0
	xvfmadd.d	$xr2, $xr5, $xr4, $xr2
	xvfmadd.d	$xr1, $xr5, $xr1, $xr3
	xvst	$xr2, $fp, -32
	xvst	$xr1, $fp, 0
	addi.d	$s8, $s8, -8
	addi.d	$fp, $fp, 64
	addi.d	$s2, $s2, 64
	bnez	$s8, .LBB0_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$fp, $t6
	beq	$t6, $a3, .LBB0_10
	b	.LBB0_15
.LBB0_20:                               # %for.end338
	move	$a0, $zero
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end0:
	.size	hypre_StructAxpy, .Lfunc_end0-hypre_StructAxpy
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
