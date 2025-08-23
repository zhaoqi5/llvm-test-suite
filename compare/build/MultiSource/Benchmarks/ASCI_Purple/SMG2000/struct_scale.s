	.file	"struct_scale.c"
	.text
	.globl	hypre_StructScale               # -- Begin function hypre_StructScale
	.p2align	5
	.type	hypre_StructScale,@function
hypre_StructScale:                      # @hypre_StructScale
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$s1, $a0, 8
	ld.w	$a0, $s1, 8
	ori	$s2, $zero, 1
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	blt	$a0, $s2, .LBB0_18
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	xvreplve0.d	$xr3, $xr0
	addi.w	$s4, $zero, -1
	ori	$s5, $zero, 8
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	xvst	$xr3, $sp, 16                   # 32-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.end203
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s1, 8
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB0_18
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_17 Depth 4
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s1, 0
	ld.d	$a2, $fp, 40
	ld.d	$s8, $a0, 0
	ld.d	$s6, $fp, 24
	slli.d	$a0, $s3, 2
	ldx.w	$s7, $a2, $a0
	alsl.d	$a0, $s3, $s3, 1
	slli.d	$a0, $a0, 3
	add.d	$s0, $a1, $a0
	addi.d	$a1, $sp, 92
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	xvld	$xr3, $sp, 16                   # 32-byte Folded Reload
	xvld	$xr0, $sp, 48                   # 32-byte Folded Reload
	ld.w	$a0, $sp, 92
	ld.w	$a1, $sp, 96
	ld.w	$a2, $sp, 100
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blt	$a3, $s2, .LBB0_2
# %bb.4:                                # %for.cond176.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	blt	$a2, $s2, .LBB0_2
# %bb.5:                                # %for.cond176.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	blt	$a1, $s2, .LBB0_2
# %bb.6:                                # %for.cond176.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	blt	$a0, $s2, .LBB0_2
# %bb.7:                                # %for.cond179.preheader.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a3, $s3, 4
	alsl.d	$a4, $s3, $a3, 3
	add.d	$a5, $s8, $a4
	ld.w	$a6, $a5, 4
	ld.w	$a7, $a5, 16
	move	$a3, $zero
	ldx.w	$a4, $s8, $a4
	sub.w	$a7, $a7, $a6
	slt	$t0, $s4, $a7
	maskeqz	$a7, $a7, $t0
	ld.w	$t1, $a5, 12
	masknez	$t0, $s4, $t0
	or	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	sub.w	$t0, $t1, $a4
	slt	$t1, $s4, $t0
	maskeqz	$t0, $t0, $t1
	ld.w	$t2, $s0, 0
	masknez	$t1, $s4, $t1
	or	$t0, $t0, $t1
	addi.d	$t0, $t0, 1
	sub.d	$t1, $t2, $a4
	ld.w	$t2, $s0, 4
	sub.d	$a4, $t0, $a0
	ld.w	$t3, $s0, 8
	ld.w	$t4, $a5, 8
	sub.d	$a6, $t2, $a6
	sub.d	$a5, $a7, $a1
	mulw.d.w	$a5, $t0, $a5
	sub.d	$t2, $t3, $t4
	mul.d	$a7, $a7, $t2
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $t0
	add.w	$t3, $t1, $a6
	bstrpick.d	$a6, $a0, 30, 3
	slli.d	$a6, $a6, 3
	alsl.d	$a7, $s7, $s6, 3
	addi.d	$t0, $a7, 32
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %for.cond179.for.end194_crit_edge.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a3, $a3, 1
	add.w	$t3, $t3, $a5
	beq	$a3, $a2, .LBB0_2
.LBB0_9:                                # %for.cond179.preheader.us.us.us.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_17 Depth 4
	move	$t1, $zero
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %for.cond182.for.end_crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB0_11 Depth=3
	addi.w	$t1, $t1, 1
	add.w	$t3, $a4, $t2
	beq	$t1, $a1, .LBB0_8
.LBB0_11:                               # %for.cond182.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_17 Depth 4
	bgeu	$a0, $s5, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	move	$t4, $zero
	move	$t2, $t3
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_13:                               # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=3
	add.d	$t2, $a6, $t3
	alsl.d	$t3, $t3, $t0, 3
	move	$t4, $a6
	.p2align	4, , 16
.LBB0_14:                               # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr2, $t3, -32
	xvld	$xr1, $t3, 0
	xvfmul.d	$xr2, $xr3, $xr2
	xvfmul.d	$xr1, $xr3, $xr1
	xvst	$xr2, $t3, -32
	xvst	$xr1, $t3, 0
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB0_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$t4, $a6
	beq	$a6, $a0, .LBB0_10
.LBB0_16:                               # %for.body184.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB0_11 Depth=3
	alsl.d	$t3, $t2, $a7, 3
	sub.d	$t4, $a0, $t4
	.p2align	4, , 16
.LBB0_17:                               # %for.body184.us.us.us.us.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $t3, 0
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $t3, 0
	addi.d	$t2, $t2, 1
	addi.w	$t4, $t4, -1
	addi.d	$t3, $t3, 8
	bnez	$t4, .LBB0_17
	b	.LBB0_10
.LBB0_18:                               # %for.end206
	move	$a0, $zero
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end0:
	.size	hypre_StructScale, .Lfunc_end0-hypre_StructScale
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
