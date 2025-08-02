	.file	"box_algebra.c"
	.text
	.globl	hypre_IntersectBoxes            # -- Begin function hypre_IntersectBoxes
	.p2align	5
	.type	hypre_IntersectBoxes,@function
hypre_IntersectBoxes:                   # @hypre_IntersectBoxes
# %bb.0:                                # %entry
	ld.w	$a3, $a0, 0
	ld.w	$a4, $a1, 0
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $a2, 0
	ld.w	$a3, $a0, 12
	ld.w	$a4, $a1, 12
	slt	$a5, $a3, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $a2, 12
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a1, 4
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $a2, 4
	ld.w	$a3, $a0, 16
	ld.w	$a4, $a1, 16
	slt	$a5, $a3, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $a2, 16
	ld.w	$a3, $a0, 8
	ld.w	$a4, $a1, 8
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $a2, 8
	ld.w	$a0, $a0, 20
	ld.w	$a1, $a1, 20
	slt	$a3, $a0, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	st.w	$a0, $a2, 20
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	hypre_IntersectBoxes, .Lfunc_end0-hypre_IntersectBoxes
                                        # -- End function
	.globl	hypre_SubtractBoxes             # -- Begin function hypre_SubtractBoxes
	.p2align	5
	.type	hypre_SubtractBoxes,@function
hypre_SubtractBoxes:                    # @hypre_SubtractBoxes
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a1, $zero, 7
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a6, $s1, 0
	st.w	$a6, $a0, 144
	ld.w	$a3, $s1, 4
	st.w	$a3, $a0, 148
	ld.w	$a4, $s1, 8
	st.w	$a4, $a0, 152
	ld.w	$a7, $s1, 12
	st.w	$a7, $a0, 156
	ld.w	$a2, $s1, 16
	st.w	$a2, $a0, 160
	ld.w	$a5, $s1, 20
	st.w	$a5, $a0, 164
	ld.w	$a1, $s0, 0
	blt	$a7, $a1, .LBB1_14
# %bb.1:                                # %lor.lhs.false
	ld.w	$t0, $s0, 12
	blt	$t0, $a6, .LBB1_14
# %bb.2:                                # %if.else
	bge	$a6, $a1, .LBB1_4
# %bb.3:                                # %if.then79
	st.w	$a6, $a0, 0
	st.w	$a3, $a0, 4
	st.w	$a4, $a0, 8
	st.w	$a7, $a0, 12
	st.w	$a2, $a0, 16
	st.w	$a5, $a0, 20
	ld.w	$a1, $s0, 0
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 12
	ld.w	$a6, $s0, 0
	st.w	$a6, $a0, 144
	ld.w	$t0, $s0, 12
	ori	$a1, $zero, 1
	blt	$t0, $a7, .LBB1_5
	b	.LBB1_6
.LBB1_4:
	move	$a1, $zero
	bge	$t0, $a7, .LBB1_6
.LBB1_5:                                # %if.then126
	slli.d	$t0, $a1, 3
	slli.d	$t1, $a1, 4
	or	$t0, $t1, $t0
	add.d	$t1, $a0, $t0
	stx.w	$a6, $a0, $t0
	st.w	$a3, $t1, 4
	st.w	$a4, $t1, 8
	st.w	$a7, $t1, 12
	st.w	$a2, $t1, 16
	st.w	$a5, $t1, 20
	ld.w	$a7, $s0, 12
	addi.d	$a7, $a7, 1
	stx.w	$a7, $a0, $t0
	ld.w	$a7, $s0, 12
	st.w	$a7, $a0, 156
	addi.d	$a1, $a1, 1
.LBB1_6:                                # %for.inc
	ld.w	$t1, $s0, 4
	blt	$a2, $t1, .LBB1_14
# %bb.7:                                # %lor.lhs.false.1
	ld.w	$t0, $s0, 16
	blt	$t0, $a3, .LBB1_14
# %bb.8:                                # %if.else.1
	bge	$a3, $t1, .LBB1_10
# %bb.9:                                # %if.then79.1
	slli.d	$t0, $a1, 4
	alsl.d	$t0, $a1, $t0, 3
	add.d	$t1, $a0, $t0
	stx.w	$a6, $a0, $t0
	st.w	$a3, $t1, 4
	st.w	$a4, $t1, 8
	st.w	$a7, $t1, 12
	st.w	$a2, $t1, 16
	st.w	$a5, $t1, 20
	ld.w	$a2, $s0, 4
	addi.d	$a2, $a2, -1
	st.w	$a2, $t1, 16
	ld.w	$a3, $s0, 4
	st.w	$a3, $a0, 148
	ld.w	$t0, $s0, 16
	ld.w	$a2, $a0, 160
	addi.d	$a1, $a1, 1
.LBB1_10:                               # %if.end.1
	bge	$t0, $a2, .LBB1_12
# %bb.11:                               # %if.then126.1
	ld.w	$a4, $a0, 144
	slli.d	$a5, $a1, 4
	alsl.d	$a5, $a1, $a5, 3
	stx.w	$a4, $a0, $a5
	ld.d	$a6, $a0, 152
	add.d	$a5, $a0, $a5
	ld.w	$a4, $a0, 164
	st.w	$a3, $a5, 4
	st.d	$a6, $a5, 8
	st.w	$a2, $a5, 16
	st.w	$a4, $a5, 20
	ld.w	$a2, $s0, 16
	addi.d	$a2, $a2, 1
	st.w	$a2, $a5, 4
	ld.w	$a2, $s0, 16
	st.w	$a2, $a0, 160
	addi.d	$a1, $a1, 1
	ld.w	$a6, $s0, 8
	bge	$a4, $a6, .LBB1_13
	b	.LBB1_14
.LBB1_12:                               # %if.end.1.for.inc.1_crit_edge
	ld.w	$a4, $a0, 164
	ld.w	$a6, $s0, 8
	blt	$a4, $a6, .LBB1_14
.LBB1_13:                               # %lor.lhs.false.2
	ld.w	$a5, $s0, 20
	ld.w	$a3, $a0, 152
	bge	$a5, $a3, .LBB1_16
.LBB1_14:                               # %if.then
	ld.w	$a1, $s1, 0
	st.w	$a1, $a0, 0
	ld.w	$a1, $s1, 4
	st.w	$a1, $a0, 4
	ld.w	$a1, $s1, 8
	st.w	$a1, $a0, 8
	ld.w	$a1, $s1, 12
	st.w	$a1, $a0, 12
	ld.w	$a1, $s1, 16
	st.w	$a1, $a0, 16
	ld.w	$a1, $s1, 20
	st.w	$a1, $a0, 20
	ori	$a1, $zero, 1
.LBB1_15:                               # %for.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_16:                               # %if.else.2
	bge	$a3, $a6, .LBB1_18
# %bb.17:                               # %if.then79.2
	ld.d	$a5, $a0, 144
	slli.d	$a6, $a1, 4
	alsl.d	$a6, $a1, $a6, 3
	ld.w	$a7, $a0, 156
	stx.d	$a5, $a0, $a6
	add.d	$a5, $a0, $a6
	st.w	$a3, $a5, 8
	st.w	$a7, $a5, 12
	st.w	$a2, $a5, 16
	st.w	$a4, $a5, 20
	ld.w	$a2, $s0, 8
	addi.d	$a2, $a2, -1
	st.w	$a2, $a5, 20
	ld.w	$a3, $s0, 8
	st.w	$a3, $a0, 152
	ld.w	$a5, $s0, 20
	ld.w	$a4, $a0, 164
	addi.d	$a1, $a1, 1
.LBB1_18:                               # %if.end.2
	bge	$a5, $a4, .LBB1_15
# %bb.19:                               # %if.then126.2
	ld.d	$a2, $a0, 144
	slli.d	$a5, $a1, 4
	alsl.d	$a5, $a1, $a5, 3
	ld.d	$a6, $a0, 156
	stx.d	$a2, $a0, $a5
	add.d	$a2, $a0, $a5
	st.w	$a3, $a2, 8
	st.d	$a6, $a2, 12
	st.w	$a4, $a2, 20
	ld.w	$a3, $s0, 20
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 8
	ld.w	$a2, $s0, 20
	st.w	$a2, $a0, 164
	addi.d	$a1, $a1, 1
	b	.LBB1_15
.Lfunc_end1:
	.size	hypre_SubtractBoxes, .Lfunc_end1-hypre_SubtractBoxes
                                        # -- End function
	.globl	hypre_UnionBoxes                # -- Begin function hypre_UnionBoxes
	.p2align	5
	.type	hypre_UnionBoxes,@function
hypre_UnionBoxes:                       # @hypre_UnionBoxes
# %bb.0:                                # %entry
	move	$a2, $a0
	ld.w	$a0, $a0, 8
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB2_200
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	slli.d	$s7, $a0, 1
	slli.d	$a1, $a0, 4
	alsl.w	$a0, $a0, $a1, 3
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	move	$s3, $a0
	ld.w	$a1, $s1, 8
	bstrpick.d	$a3, $s7, 31, 1
	alsl.d	$s4, $a3, $a0, 3
	ori	$a0, $zero, 1
	alsl.d	$s5, $a3, $s4, 3
	move	$s6, $zero
	move	$s2, $zero
	blt	$a1, $a0, .LBB2_89
# %bb.2:                                # %for.body18.lr.ph
	move	$a1, $zero
	move	$a2, $zero
	slli.d	$t0, $a3, 1
	ld.d	$a3, $s1, 0
	addi.d	$a4, $s3, -32
	alsl.d	$a5, $t0, $a4, 2
	alsl.d	$a6, $t0, $s3, 2
	alsl.d	$a7, $t0, $a4, 3
	alsl.d	$t0, $t0, $s3, 3
	ori	$t1, $zero, 8
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_3:                                # %for.end84.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t2, $t4, 2
	stx.w	$t3, $s5, $t2
	addi.w	$a1, $a1, 1
.LBB2_4:                                # %for.inc95.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$t2, $s1, 8
	addi.d	$a2, $a2, 1
	bge	$a2, $t2, .LBB2_88
.LBB2_5:                                # %for.body18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_14 Depth 2
                                        #     Child Loop BB2_17 Depth 2
                                        #     Child Loop BB2_21 Depth 2
                                        #     Child Loop BB2_28 Depth 2
                                        #     Child Loop BB2_31 Depth 2
                                        #     Child Loop BB2_35 Depth 2
                                        #     Child Loop BB2_42 Depth 2
                                        #     Child Loop BB2_45 Depth 2
                                        #     Child Loop BB2_49 Depth 2
                                        #     Child Loop BB2_56 Depth 2
                                        #     Child Loop BB2_59 Depth 2
                                        #     Child Loop BB2_63 Depth 2
                                        #     Child Loop BB2_70 Depth 2
                                        #     Child Loop BB2_73 Depth 2
                                        #     Child Loop BB2_77 Depth 2
                                        #     Child Loop BB2_84 Depth 2
                                        #     Child Loop BB2_87 Depth 2
	slli.d	$t2, $a2, 4
	alsl.d	$t3, $a2, $t2, 3
	add.d	$t2, $a3, $t3
	ldx.w	$t4, $a3, $t3
	ld.w	$t3, $t2, 12
	move	$t5, $zero
	blt	$s2, $a0, .LBB2_11
# %bb.6:                                # %for.body43.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t6, $s2
	move	$t7, $s3
	.p2align	4, , 16
.LBB2_7:                                # %for.body43
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t7, 0
	bge	$t8, $t4, .LBB2_10
# %bb.8:                                # %for.inc64
                                        #   in Loop: Header=BB2_7 Depth=2
	addi.w	$t5, $t5, 1
	addi.d	$t6, $t6, -1
	addi.d	$t7, $t7, 4
	bnez	$t6, .LBB2_7
# %bb.9:                                #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s2
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               # %if.then52
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t4, $t8, .LBB2_19
	.p2align	4, , 16
.LBB2_11:                               # %if.then67
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t5, $s2, .LBB2_18
# %bb.12:                               # %for.body73.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t7, $s2, $t5
	move	$t6, $s2
	bltu	$t7, $t1, .LBB2_16
# %bb.13:                               # %vector.ph597
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t8, $t7
	bstrins.d	$t8, $zero, 2, 0
	sub.d	$t6, $s2, $t8
	alsl.d	$fp, $s2, $a4, 2
	move	$s0, $t8
	.p2align	4, , 16
.LBB2_14:                               # %vector.body600
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $fp, 0
	xvst	$xr0, $fp, 4
	addi.d	$s0, $s0, -8
	addi.d	$fp, $fp, -32
	bnez	$s0, .LBB2_14
# %bb.15:                               # %middle.block607
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t7, $t8, .LBB2_18
.LBB2_16:                               # %for.body73.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t7, $t6, $s3, 2
	.p2align	4, , 16
.LBB2_17:                               # %for.body73
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t7, -4
	addi.d	$fp, $t7, -4
	addi.d	$t6, $t6, -1
	st.w	$t8, $t7, 0
	move	$t7, $fp
	blt	$t5, $t6, .LBB2_17
.LBB2_18:                               # %for.end84
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t5, $t5, 2
	stx.w	$t4, $s3, $t5
	addi.w	$s2, $s2, 1
.LBB2_19:                               # %for.inc95
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$t4, $t3, 1
	move	$t5, $zero
	blt	$s2, $a0, .LBB2_25
# %bb.20:                               # %for.body43.lr.ph.1
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t6, $s3
	move	$t7, $s2
	.p2align	4, , 16
.LBB2_21:                               # %for.body43.1
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t6, 0
	blt	$t3, $t8, .LBB2_24
# %bb.22:                               # %for.inc64.1
                                        #   in Loop: Header=BB2_21 Depth=2
	addi.w	$t5, $t5, 1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	bnez	$t7, .LBB2_21
# %bb.23:                               #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s2
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_24:                               # %if.then52.1
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t4, $t8, .LBB2_33
	.p2align	4, , 16
.LBB2_25:                               # %if.then67.1
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t5, $s2, .LBB2_32
# %bb.26:                               # %for.body73.lr.ph.1
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t6, $s2, $t5
	move	$t3, $s2
	bltu	$t6, $t1, .LBB2_30
# %bb.27:                               # %vector.ph582
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t7, $t6
	bstrins.d	$t7, $zero, 2, 0
	sub.d	$t3, $s2, $t7
	alsl.d	$t8, $s2, $a4, 2
	move	$fp, $t7
	.p2align	4, , 16
.LBB2_28:                               # %vector.body585
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t8, 0
	xvst	$xr0, $t8, 4
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, -32
	bnez	$fp, .LBB2_28
# %bb.29:                               # %middle.block592
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t6, $t7, .LBB2_32
.LBB2_30:                               # %for.body73.1.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t6, $t3, $s3, 2
	.p2align	4, , 16
.LBB2_31:                               # %for.body73.1
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, -4
	addi.d	$t8, $t6, -4
	addi.d	$t3, $t3, -1
	st.w	$t7, $t6, 0
	move	$t6, $t8
	blt	$t5, $t3, .LBB2_31
.LBB2_32:                               # %for.end84.1
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t3, $t5, 2
	stx.w	$t4, $s3, $t3
	addi.w	$s2, $s2, 1
.LBB2_33:                               # %for.inc95.1
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$t4, $t2, 4
	ld.w	$t3, $t2, 16
	move	$t5, $zero
	blt	$s6, $a0, .LBB2_39
# %bb.34:                               # %for.body43.lr.ph.1262
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t6, $s4
	move	$t7, $s6
	.p2align	4, , 16
.LBB2_35:                               # %for.body43.1266
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t6, 0
	bge	$t8, $t4, .LBB2_38
# %bb.36:                               # %for.inc64.1273
                                        #   in Loop: Header=BB2_35 Depth=2
	addi.w	$t5, $t5, 1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	bnez	$t7, .LBB2_35
# %bb.37:                               #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s6
	b	.LBB2_39
	.p2align	4, , 16
.LBB2_38:                               # %if.then52.1270
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t4, $t8, .LBB2_47
	.p2align	4, , 16
.LBB2_39:                               # %if.then67.1277
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t5, $s6, .LBB2_46
# %bb.40:                               # %for.body73.lr.ph.1278
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t7, $s6, $t5
	move	$t6, $s6
	bltu	$t7, $t1, .LBB2_44
# %bb.41:                               # %vector.ph567
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t8, $t7
	bstrins.d	$t8, $zero, 2, 0
	sub.d	$t6, $s6, $t8
	alsl.d	$fp, $s6, $a5, 2
	move	$s0, $t8
	.p2align	4, , 16
.LBB2_42:                               # %vector.body570
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $fp, 0
	xvst	$xr0, $fp, 4
	addi.d	$s0, $s0, -8
	addi.d	$fp, $fp, -32
	bnez	$s0, .LBB2_42
# %bb.43:                               # %middle.block577
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t7, $t8, .LBB2_46
.LBB2_44:                               # %for.body73.1283.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t7, $t6, $a6, 2
	.p2align	4, , 16
.LBB2_45:                               # %for.body73.1283
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t7, -4
	addi.d	$fp, $t7, -4
	addi.d	$t6, $t6, -1
	st.w	$t8, $t7, 0
	move	$t7, $fp
	blt	$t5, $t6, .LBB2_45
.LBB2_46:                               # %for.end84.1288
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t5, $t5, 2
	stx.w	$t4, $s4, $t5
	addi.w	$s6, $s6, 1
.LBB2_47:                               # %for.inc95.1290
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$t4, $t3, 1
	move	$t5, $zero
	blt	$s6, $a0, .LBB2_53
# %bb.48:                               # %for.body43.lr.ph.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t6, $s4
	move	$t7, $s6
	.p2align	4, , 16
.LBB2_49:                               # %for.body43.1.1
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t6, 0
	blt	$t3, $t8, .LBB2_52
# %bb.50:                               # %for.inc64.1.1
                                        #   in Loop: Header=BB2_49 Depth=2
	addi.w	$t5, $t5, 1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	bnez	$t7, .LBB2_49
# %bb.51:                               #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s6
	b	.LBB2_53
	.p2align	4, , 16
.LBB2_52:                               # %if.then52.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t4, $t8, .LBB2_61
	.p2align	4, , 16
.LBB2_53:                               # %if.then67.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t5, $s6, .LBB2_60
# %bb.54:                               # %for.body73.lr.ph.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t6, $s6, $t5
	move	$t3, $s6
	bltu	$t6, $t1, .LBB2_58
# %bb.55:                               # %vector.ph552
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t7, $t6
	bstrins.d	$t7, $zero, 2, 0
	sub.d	$t3, $s6, $t7
	alsl.d	$t8, $s6, $a5, 2
	move	$fp, $t7
	.p2align	4, , 16
.LBB2_56:                               # %vector.body555
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t8, 0
	xvst	$xr0, $t8, 4
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, -32
	bnez	$fp, .LBB2_56
# %bb.57:                               # %middle.block562
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t6, $t7, .LBB2_60
.LBB2_58:                               # %for.body73.1.1.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t6, $t3, $a6, 2
	.p2align	4, , 16
.LBB2_59:                               # %for.body73.1.1
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, -4
	addi.d	$t8, $t6, -4
	addi.d	$t3, $t3, -1
	st.w	$t7, $t6, 0
	move	$t6, $t8
	blt	$t5, $t3, .LBB2_59
.LBB2_60:                               # %for.end84.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t3, $t5, 2
	stx.w	$t4, $s4, $t3
	addi.w	$s6, $s6, 1
.LBB2_61:                               # %for.inc95.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$t3, $t2, 8
	ld.w	$t2, $t2, 20
	move	$t4, $zero
	blt	$a1, $a0, .LBB2_67
# %bb.62:                               # %for.body43.lr.ph.2
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s5
	move	$t6, $a1
	.p2align	4, , 16
.LBB2_63:                               # %for.body43.2
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t5, 0
	bge	$t7, $t3, .LBB2_66
# %bb.64:                               # %for.inc64.2
                                        #   in Loop: Header=BB2_63 Depth=2
	addi.w	$t4, $t4, 1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB2_63
# %bb.65:                               #   in Loop: Header=BB2_5 Depth=1
	move	$t4, $a1
	b	.LBB2_67
	.p2align	4, , 16
.LBB2_66:                               # %if.then52.2
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t3, $t7, .LBB2_75
	.p2align	4, , 16
.LBB2_67:                               # %if.then67.2
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t4, $a1, .LBB2_74
# %bb.68:                               # %for.body73.lr.ph.2
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t6, $a1, $t4
	move	$t5, $a1
	bltu	$t6, $t1, .LBB2_72
# %bb.69:                               # %vector.ph537
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t7, $t6
	bstrins.d	$t7, $zero, 2, 0
	sub.d	$t5, $a1, $t7
	alsl.d	$t8, $a1, $a7, 2
	move	$fp, $t7
	.p2align	4, , 16
.LBB2_70:                               # %vector.body540
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t8, 0
	xvst	$xr0, $t8, 4
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, -32
	bnez	$fp, .LBB2_70
# %bb.71:                               # %middle.block547
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t6, $t7, .LBB2_74
.LBB2_72:                               # %for.body73.2.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t6, $t5, $t0, 2
	.p2align	4, , 16
.LBB2_73:                               # %for.body73.2
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, -4
	addi.d	$t8, $t6, -4
	addi.d	$t5, $t5, -1
	st.w	$t7, $t6, 0
	move	$t6, $t8
	blt	$t4, $t5, .LBB2_73
.LBB2_74:                               # %for.end84.2
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t4, $t4, 2
	stx.w	$t3, $s5, $t4
	addi.w	$a1, $a1, 1
.LBB2_75:                               # %for.inc95.2
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$t3, $t2, 1
	move	$t4, $zero
	blt	$a1, $a0, .LBB2_81
# %bb.76:                               # %for.body43.lr.ph.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s5
	move	$t6, $a1
	.p2align	4, , 16
.LBB2_77:                               # %for.body43.1.2
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t5, 0
	blt	$t2, $t7, .LBB2_80
# %bb.78:                               # %for.inc64.1.2
                                        #   in Loop: Header=BB2_77 Depth=2
	addi.w	$t4, $t4, 1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB2_77
# %bb.79:                               #   in Loop: Header=BB2_5 Depth=1
	move	$t4, $a1
	b	.LBB2_81
	.p2align	4, , 16
.LBB2_80:                               # %if.then52.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t3, $t7, .LBB2_4
	.p2align	4, , 16
.LBB2_81:                               # %if.then67.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t4, $a1, .LBB2_3
# %bb.82:                               # %for.body73.lr.ph.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t5, $a1, $t4
	move	$t2, $a1
	bltu	$t5, $t1, .LBB2_86
# %bb.83:                               # %vector.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t6, $t5
	bstrins.d	$t6, $zero, 2, 0
	sub.d	$t2, $a1, $t6
	alsl.d	$t7, $a1, $a7, 2
	move	$t8, $t6
	.p2align	4, , 16
.LBB2_84:                               # %vector.body
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t7, 0
	xvst	$xr0, $t7, 4
	addi.d	$t8, $t8, -8
	addi.d	$t7, $t7, -32
	bnez	$t8, .LBB2_84
# %bb.85:                               # %middle.block
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t5, $t6, .LBB2_3
.LBB2_86:                               # %for.body73.1.2.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t5, $t2, $t0, 2
	.p2align	4, , 16
.LBB2_87:                               # %for.body73.1.2
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t5, -4
	addi.d	$t7, $t5, -4
	addi.d	$t2, $t2, -1
	st.w	$t6, $t5, 0
	move	$t5, $t7
	blt	$t4, $t2, .LBB2_87
	b	.LBB2_3
.LBB2_88:                               # %for.cond104.preheader.loopexit
	addi.w	$a1, $a1, -1
	b	.LBB2_90
.LBB2_89:
	addi.w	$a1, $zero, -1
.LBB2_90:                               # %for.cond104.preheader
	addi.w	$fp, $s2, -1
	addi.w	$s0, $s6, -1
	mul.d	$a0, $s0, $fp
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	mul.w	$a0, $a0, $a1
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	mul.w	$s2, $s6, $s2
	ori	$a1, $zero, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	move	$s1, $a0
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	mul.d	$s6, $s0, $fp
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	blez	$a1, .LBB2_124
# %bb.91:                               # %for.body133.lr.ph
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $a0, $s2
	addi.d	$a3, $a1, 1
	xvreplgr2vr.w	$xr0, $a3
	vreplgr2vr.w	$vr1, $a3
	addi.d	$a1, $s1, 32
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a1, $s6, 2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a1, $a0, 2
	move	$a0, $zero
	addi.d	$a7, $a1, -4
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ori	$t1, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	lu32i.d	$t1, 1
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_92:                               # %for.inc212.loopexit
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
.LBB2_93:                               # %for.inc212
                                        #   in Loop: Header=BB2_94 Depth=1
	addi.d	$a0, $a0, 1
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB2_124
.LBB2_94:                               # %for.body133
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_95 Depth 2
                                        #     Child Loop BB2_97 Depth 2
                                        #     Child Loop BB2_99 Depth 2
                                        #     Child Loop BB2_101 Depth 2
                                        #     Child Loop BB2_103 Depth 2
                                        #     Child Loop BB2_105 Depth 2
                                        #     Child Loop BB2_110 Depth 2
                                        #       Child Loop BB2_112 Depth 3
                                        #         Child Loop BB2_116 Depth 4
                                        #         Child Loop BB2_120 Depth 4
                                        #         Child Loop BB2_123 Depth 4
	slli.d	$a1, $a0, 4
	alsl.d	$a2, $a0, $a1, 3
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a2
	move	$a1, $zero
	add.d	$s0, $a5, $a2
	move	$a2, $s3
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_95:                               # %while.cond
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$ra, $t2
	move	$t4, $t5
	move	$t8, $a1
	ld.w	$a5, $a2, 0
	add.d	$t2, $t2, $t1
	addi.d	$t5, $t5, 1
	addi.d	$a2, $a2, 4
	addi.w	$a1, $a1, 1
	bne	$a4, $a5, .LBB2_95
# %bb.96:                               # %while.end
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.w	$a1, $s0, 12
	addi.w	$a4, $a1, 1
	addi.w	$a5, $zero, -4
	move	$a1, $t8
	.p2align	4, , 16
.LBB2_97:                               # %while.cond153
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t6, $a1
	ldx.w	$a6, $a2, $a5
	add.d	$ra, $ra, $t1
	addi.d	$t4, $t4, 1
	addi.d	$a5, $a5, 4
	addi.w	$a1, $a1, 1
	bne	$a4, $a6, .LBB2_97
# %bb.98:                               # %while.end166
                                        #   in Loop: Header=BB2_94 Depth=1
	move	$t7, $zero
	ld.w	$fp, $s0, 4
	addi.w	$a5, $zero, -1
	ori	$a4, $zero, 0
	lu32i.d	$a4, -1
	move	$t0, $s4
	.p2align	4, , 16
.LBB2_99:                               # %while.cond.1
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a4
	move	$a6, $a5
	move	$t3, $t7
	ld.w	$a1, $t0, 0
	add.d	$a4, $a4, $t1
	addi.d	$a5, $a5, 1
	addi.d	$t0, $t0, 4
	addi.w	$t7, $t7, 1
	bne	$fp, $a1, .LBB2_99
# %bb.100:                              # %while.end.1
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.w	$a1, $s0, 16
	addi.w	$a1, $a1, 1
	addi.w	$t7, $zero, -4
	.p2align	4, , 16
.LBB2_101:                              # %while.cond153.1
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$fp, $t0, $t7
	add.d	$a2, $a2, $t1
	addi.d	$a6, $a6, 1
	addi.d	$t7, $t7, 4
	bne	$a1, $fp, .LBB2_101
# %bb.102:                              # %while.end166.1
                                        #   in Loop: Header=BB2_94 Depth=1
	move	$fp, $zero
	st.d	$s0, $sp, 192                   # 8-byte Folded Spill
	ld.w	$t7, $s0, 8
	addi.w	$s4, $zero, -1
	ori	$t0, $zero, 0
	lu32i.d	$t0, -1
	move	$s3, $s5
	.p2align	4, , 16
.LBB2_103:                              # %while.cond.2
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s0, $t0
	move	$s8, $s4
	move	$a1, $fp
	ld.w	$s5, $s3, 0
	add.d	$t0, $t0, $t1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 4
	addi.w	$fp, $fp, 1
	bne	$t7, $s5, .LBB2_103
# %bb.104:                              # %while.end.2
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.w	$t7, $t7, 20
	addi.w	$t7, $t7, 1
	addi.w	$fp, $zero, -4
	.p2align	4, , 16
.LBB2_105:                              # %while.cond153.2
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$s5, $s3, $fp
	add.d	$s0, $s0, $t1
	addi.d	$s8, $s8, 1
	addi.d	$fp, $fp, 4
	bne	$t7, $s5, .LBB2_105
# %bb.106:                              # %while.end166.2
                                        #   in Loop: Header=BB2_94 Depth=1
	bgeu	$s4, $s8, .LBB2_93
# %bb.107:                              # %for.body177.lr.ph
                                        #   in Loop: Header=BB2_94 Depth=1
	bgeu	$a5, $a6, .LBB2_93
# %bb.108:                              # %for.body177.us.preheader
                                        #   in Loop: Header=BB2_94 Depth=1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	srai.d	$t2, $t2, 32
	srai.d	$a0, $a4, 32
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	srai.d	$a5, $t0, 32
	srai.d	$a0, $s0, 32
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	srai.d	$a4, $a2, 32
	srai.d	$a2, $ra, 32
	sub.d	$ra, $a2, $t2
	addi.w	$a2, $zero, -16
	and	$t0, $ra, $a2
	add.d	$a0, $t2, $t0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	andi	$a0, $ra, 12
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.w	$fp, $zero, -4
	and	$a0, $ra, $fp
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	add.d	$a6, $t2, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$t7, $t8, $a0, 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	add.d	$a1, $t3, $a1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	mul.d	$t3, $a0, $a1
	add.d	$a1, $t7, $t3
	sub.d	$s0, $t6, $t8
	and	$a0, $s0, $a2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	alsl.d	$a2, $t8, $s1, 2
	add.d	$t7, $a2, $t3
	and	$a2, $s0, $fp
	sub.d	$s4, $zero, $a2
	add.d	$s3, $s1, $t3
	ori	$a0, $zero, 4
	b	.LBB2_110
	.p2align	4, , 16
.LBB2_109:                              # %for.cond179.for.inc209_crit_edge.us
                                        #   in Loop: Header=BB2_110 Depth=2
	addi.d	$a5, $a5, 1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	add.d	$t7, $t7, $a2
	add.d	$s3, $s3, $a2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	beq	$a5, $a2, .LBB2_92
.LBB2_110:                              # %for.body177.us
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_112 Depth 3
                                        #         Child Loop BB2_116 Depth 4
                                        #         Child Loop BB2_120 Depth 4
                                        #         Child Loop BB2_123 Depth 4
	move	$s0, $s3
	move	$t8, $t7
	move	$fp, $a1
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	bltu	$t5, $t4, .LBB2_112
	b	.LBB2_109
	.p2align	4, , 16
.LBB2_111:                              # %for.cond185.for.inc206_crit_edge.us.us
                                        #   in Loop: Header=BB2_112 Depth=3
	addi.d	$s8, $s8, 1
	add.d	$fp, $fp, $a7
	add.d	$t8, $t8, $a7
	add.d	$s0, $s0, $a7
	beq	$s8, $a4, .LBB2_109
.LBB2_112:                              # %iter.check
                                        #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_110 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_116 Depth 4
                                        #         Child Loop BB2_120 Depth 4
                                        #         Child Loop BB2_123 Depth 4
	move	$s5, $t2
	bltu	$ra, $a0, .LBB2_122
# %bb.113:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB2_112 Depth=3
	ori	$a2, $zero, 16
	bgeu	$ra, $a2, .LBB2_115
# %bb.114:                              #   in Loop: Header=BB2_112 Depth=3
	move	$a2, $zero
	b	.LBB2_119
	.p2align	4, , 16
.LBB2_115:                              # %vector.ph614
                                        #   in Loop: Header=BB2_112 Depth=3
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	move	$s5, $fp
	.p2align	4, , 16
.LBB2_116:                              # %vector.body617
                                        #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_110 Depth=2
                                        #       Parent Loop BB2_112 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr0, $s5, -32
	xvst	$xr0, $s5, 0
	addi.d	$t3, $t3, -16
	addi.d	$s5, $s5, 64
	bnez	$t3, .LBB2_116
# %bb.117:                              # %middle.block620
                                        #   in Loop: Header=BB2_112 Depth=3
	beq	$ra, $t0, .LBB2_111
# %bb.118:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB2_112 Depth=3
	move	$a2, $t0
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 168                   # 8-byte Folded Reload
	beqz	$t3, .LBB2_122
.LBB2_119:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB2_112 Depth=3
	alsl.d	$t3, $a2, $t8, 2
	add.d	$s5, $s4, $a2
	.p2align	4, , 16
.LBB2_120:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_110 Depth=2
                                        #       Parent Loop BB2_112 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr1, $t3, 0
	addi.d	$s5, $s5, 4
	addi.d	$t3, $t3, 16
	bnez	$s5, .LBB2_120
# %bb.121:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB2_112 Depth=3
	move	$s5, $a6
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	beq	$ra, $a2, .LBB2_111
.LBB2_122:                              # %for.body189.us.us.preheader
                                        #   in Loop: Header=BB2_112 Depth=3
	alsl.d	$t3, $s5, $s0, 2
	sub.d	$s5, $t6, $s5
	.p2align	4, , 16
.LBB2_123:                              # %for.body189.us.us
                                        #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_110 Depth=2
                                        #       Parent Loop BB2_112 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a3, $t3, 0
	addi.d	$s5, $s5, -1
	addi.d	$t3, $t3, 4
	bnez	$s5, .LBB2_123
	b	.LBB2_111
.LBB2_124:                              # %sw.epilog
	ori	$a1, $zero, 1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	blt	$s0, $a1, .LBB2_142
# %bb.125:                              # %for.body242.lr.ph
	ori	$a2, $zero, 2
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	blt	$fp, $a2, .LBB2_143
# %bb.126:                              # %for.body242.lr.ph.split.us
	move	$a3, $zero
	move	$a4, $zero
	bstrpick.d	$a1, $ra, 30, 1
	slli.w	$a5, $a1, 1
	ori	$a6, $zero, 1
                                        # implicit-def: $r5
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	b	.LBB2_128
	.p2align	4, , 16
.LBB2_127:                              # %for.cond246.for.inc313_crit_edge.us
                                        #   in Loop: Header=BB2_128 Depth=1
	addi.w	$a4, $a4, 1
	add.w	$a3, $a3, $s6
	bge	$a4, $s0, .LBB2_144
.LBB2_128:                              # %for.body242.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_139 Depth 2
                                        #     Child Loop BB2_141 Depth 2
                                        #     Child Loop BB2_131 Depth 2
                                        #       Child Loop BB2_133 Depth 3
	bge	$a6, $t8, .LBB2_136
# %bb.129:                              # %for.body255.us.us.preheader
                                        #   in Loop: Header=BB2_128 Depth=1
	move	$a7, $zero
	move	$t0, $a3
	b	.LBB2_131
	.p2align	4, , 16
.LBB2_130:                              # %for.cond259.for.inc307_crit_edge.us.us
                                        #   in Loop: Header=BB2_131 Depth=2
	addi.w	$a7, $a7, 1
	add.w	$t0, $t0, $s8
	bge	$a7, $ra, .LBB2_127
.LBB2_131:                              # %for.body255.us.us
                                        #   Parent Loop BB2_128 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_133 Depth 3
	move	$t4, $zero
	alsl.d	$t1, $t0, $s1, 2
	move	$t2, $s8
	move	$t3, $t0
	b	.LBB2_133
	.p2align	4, , 16
.LBB2_132:                              # %if.else.us.us
                                        #   in Loop: Header=BB2_133 Depth=3
	sltu	$t4, $zero, $t5
	masknez	$t6, $s7, $t4
	maskeqz	$t7, $t3, $t4
	or	$s7, $t7, $t6
	masknez	$a1, $a1, $t4
	maskeqz	$t5, $t5, $t4
	or	$a1, $t5, $a1
	addi.d	$t1, $t1, 4
	addi.w	$t2, $t2, -1
	addi.d	$t3, $t3, 1
	beqz	$t2, .LBB2_130
.LBB2_133:                              # %for.body268.us.us
                                        #   Parent Loop BB2_128 Depth=1
                                        #     Parent Loop BB2_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t5, $t1, 0
	beqz	$t4, .LBB2_132
# %bb.134:                              # %for.body268.us.us
                                        #   in Loop: Header=BB2_133 Depth=3
	addi.w	$t4, $a1, 0
	bne	$t5, $t4, .LBB2_132
# %bb.135:                              # %if.then283.us.us
                                        #   in Loop: Header=BB2_133 Depth=3
	st.w	$zero, $t1, 0
	addi.w	$t4, $s7, 0
	slli.d	$t4, $t4, 2
	ldx.w	$t5, $s1, $t4
	addi.d	$t5, $t5, 1
	stx.w	$t5, $s1, $t4
	ori	$t4, $zero, 1
	addi.d	$t1, $t1, 4
	addi.w	$t2, $t2, -1
	addi.d	$t3, $t3, 1
	bnez	$t2, .LBB2_133
	b	.LBB2_130
	.p2align	4, , 16
.LBB2_136:                              # %for.body255.us196.preheader
                                        #   in Loop: Header=BB2_128 Depth=1
	bne	$ra, $a6, .LBB2_138
# %bb.137:                              #   in Loop: Header=BB2_128 Depth=1
	move	$a7, $zero
	b	.LBB2_141
	.p2align	4, , 16
.LBB2_138:                              # %vector.body636.preheader
                                        #   in Loop: Header=BB2_128 Depth=1
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_139:                              # %vector.body636
                                        #   Parent Loop BB2_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $a7, -2
	bnez	$a7, .LBB2_139
# %bb.140:                              # %middle.block639
                                        #   in Loop: Header=BB2_128 Depth=1
	move	$a7, $a5
	beq	$ra, $a5, .LBB2_127
	.p2align	4, , 16
.LBB2_141:                              # %for.body255.us196
                                        #   Parent Loop BB2_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $a7, 1
	blt	$a7, $ra, .LBB2_141
	b	.LBB2_127
.LBB2_142:
                                        # implicit-def: $r5
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	b	.LBB2_161
.LBB2_143:
                                        # implicit-def: $r5
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
.LBB2_144:                              # %for.body242.lr.ph.1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blt	$t8, $a2, .LBB2_161
# %bb.145:                              # %for.body242.lr.ph.split.us.1
	move	$a2, $zero
	move	$a3, $zero
	bstrpick.d	$a4, $s8, 30, 1
	slli.w	$a4, $a4, 1
	ori	$a5, $zero, 1
	b	.LBB2_147
	.p2align	4, , 16
.LBB2_146:                              # %for.cond246.for.inc313_crit_edge.us.1
                                        #   in Loop: Header=BB2_147 Depth=1
	addi.w	$a3, $a3, 1
	add.w	$a2, $a2, $s6
	bge	$a3, $s0, .LBB2_161
.LBB2_147:                              # %for.body242.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_158 Depth 2
                                        #     Child Loop BB2_160 Depth 2
                                        #     Child Loop BB2_150 Depth 2
                                        #       Child Loop BB2_152 Depth 3
	bge	$a5, $fp, .LBB2_155
# %bb.148:                              # %for.body255.us.us.preheader.1
                                        #   in Loop: Header=BB2_147 Depth=1
	move	$a6, $zero
	move	$a7, $a2
	b	.LBB2_150
	.p2align	4, , 16
.LBB2_149:                              # %for.cond259.for.inc307_crit_edge.us.us.1
                                        #   in Loop: Header=BB2_150 Depth=2
	addi.w	$a6, $a6, 1
	addi.w	$a7, $a7, 1
	bge	$a6, $s8, .LBB2_146
.LBB2_150:                              # %for.body255.us.us.1
                                        #   Parent Loop BB2_147 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_152 Depth 3
	move	$t2, $zero
	move	$t0, $ra
	move	$t1, $a7
	b	.LBB2_152
	.p2align	4, , 16
.LBB2_151:                              # %if.else.us.us.1
                                        #   in Loop: Header=BB2_152 Depth=3
	sltu	$t2, $zero, $t3
	masknez	$t4, $s7, $t2
	maskeqz	$t5, $t1, $t2
	or	$s7, $t5, $t4
	masknez	$a1, $a1, $t2
	maskeqz	$t3, $t3, $t2
	or	$a1, $t3, $a1
	addi.w	$t0, $t0, -1
	add.w	$t1, $t1, $s8
	beqz	$t0, .LBB2_149
.LBB2_152:                              # %for.body268.us.us.1
                                        #   Parent Loop BB2_147 Depth=1
                                        #     Parent Loop BB2_150 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t3, $t1, 2
	ldx.w	$t3, $s1, $t3
	beqz	$t2, .LBB2_151
# %bb.153:                              # %for.body268.us.us.1
                                        #   in Loop: Header=BB2_152 Depth=3
	addi.w	$t2, $a1, 0
	bne	$t3, $t2, .LBB2_151
# %bb.154:                              # %if.then283.us.us.1
                                        #   in Loop: Header=BB2_152 Depth=3
	alsl.d	$t2, $t1, $s1, 2
	st.w	$zero, $t2, 0
	addi.w	$t2, $s7, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t3, $s1, $t2
	add.d	$t3, $t3, $t8
	stx.w	$t3, $s1, $t2
	ori	$t2, $zero, 1
	addi.w	$t0, $t0, -1
	add.w	$t1, $t1, $s8
	bnez	$t0, .LBB2_152
	b	.LBB2_149
	.p2align	4, , 16
.LBB2_155:                              # %for.body255.us196.1.preheader
                                        #   in Loop: Header=BB2_147 Depth=1
	bne	$s8, $a5, .LBB2_157
# %bb.156:                              #   in Loop: Header=BB2_147 Depth=1
	move	$a6, $zero
	b	.LBB2_160
	.p2align	4, , 16
.LBB2_157:                              # %vector.body647.preheader
                                        #   in Loop: Header=BB2_147 Depth=1
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_158:                              # %vector.body647
                                        #   Parent Loop BB2_147 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a6, -2
	bnez	$a6, .LBB2_158
# %bb.159:                              # %middle.block650
                                        #   in Loop: Header=BB2_147 Depth=1
	move	$a6, $a4
	beq	$s8, $a4, .LBB2_146
	.p2align	4, , 16
.LBB2_160:                              # %for.body255.us196.1
                                        #   Parent Loop BB2_147 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a6, 1
	blt	$a6, $s8, .LBB2_160
	b	.LBB2_146
.LBB2_161:                              # %sw.epilog.2
	ori	$a2, $zero, 2
	blt	$t8, $a2, .LBB2_179
# %bb.162:                              # %sw.epilog.2
	blt	$fp, $a2, .LBB2_179
# %bb.163:                              # %for.body242.lr.ph.split.us.2
	move	$a2, $zero
	bstrpick.d	$a3, $ra, 30, 1
	slli.w	$a3, $a3, 1
	ori	$a4, $zero, 1
	b	.LBB2_165
	.p2align	4, , 16
.LBB2_164:                              # %for.cond246.for.inc313_crit_edge.us.2
                                        #   in Loop: Header=BB2_165 Depth=1
	addi.w	$a2, $a2, 1
	bge	$a2, $s8, .LBB2_179
.LBB2_165:                              # %for.body242.us.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_176 Depth 2
                                        #     Child Loop BB2_178 Depth 2
                                        #     Child Loop BB2_168 Depth 2
                                        #       Child Loop BB2_170 Depth 3
	blt	$s0, $a4, .LBB2_173
# %bb.166:                              # %for.body255.us.us.2.preheader
                                        #   in Loop: Header=BB2_165 Depth=1
	move	$a5, $zero
	move	$a6, $a2
	b	.LBB2_168
	.p2align	4, , 16
.LBB2_167:                              # %for.cond259.for.inc307_crit_edge.us.us.2
                                        #   in Loop: Header=BB2_168 Depth=2
	addi.w	$a5, $a5, 1
	add.w	$a6, $a6, $s8
	bge	$a5, $ra, .LBB2_164
.LBB2_168:                              # %for.body255.us.us.2
                                        #   Parent Loop BB2_165 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_170 Depth 3
	move	$t1, $zero
	move	$a7, $s0
	move	$t0, $a6
	b	.LBB2_170
	.p2align	4, , 16
.LBB2_169:                              # %if.else.us.us.2
                                        #   in Loop: Header=BB2_170 Depth=3
	sltu	$t1, $zero, $t2
	masknez	$t3, $s7, $t1
	maskeqz	$t4, $t0, $t1
	or	$s7, $t4, $t3
	masknez	$a1, $a1, $t1
	maskeqz	$t2, $t2, $t1
	or	$a1, $t2, $a1
	addi.w	$a7, $a7, -1
	add.w	$t0, $t0, $s6
	beqz	$a7, .LBB2_167
.LBB2_170:                              # %for.body268.us.us.2
                                        #   Parent Loop BB2_165 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t2, $t0, 2
	ldx.w	$t2, $s1, $t2
	beqz	$t1, .LBB2_169
# %bb.171:                              # %for.body268.us.us.2
                                        #   in Loop: Header=BB2_170 Depth=3
	addi.w	$t1, $a1, 0
	bne	$t2, $t1, .LBB2_169
# %bb.172:                              # %if.then283.us.us.2
                                        #   in Loop: Header=BB2_170 Depth=3
	alsl.d	$t1, $t0, $s1, 2
	st.w	$zero, $t1, 0
	addi.w	$t1, $s7, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t2, $s1, $t1
	add.d	$t2, $t2, $s2
	stx.w	$t2, $s1, $t1
	ori	$t1, $zero, 1
	addi.w	$a7, $a7, -1
	add.w	$t0, $t0, $s6
	bnez	$a7, .LBB2_170
	b	.LBB2_167
	.p2align	4, , 16
.LBB2_173:                              # %for.body255.us196.2.preheader
                                        #   in Loop: Header=BB2_165 Depth=1
	bne	$ra, $a4, .LBB2_175
# %bb.174:                              #   in Loop: Header=BB2_165 Depth=1
	move	$a5, $zero
	b	.LBB2_178
.LBB2_175:                              # %vector.body658.preheader
                                        #   in Loop: Header=BB2_165 Depth=1
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_176:                              # %vector.body658
                                        #   Parent Loop BB2_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a5, $a5, -2
	bnez	$a5, .LBB2_176
# %bb.177:                              # %middle.block661
                                        #   in Loop: Header=BB2_165 Depth=1
	move	$a5, $a3
	beq	$ra, $a3, .LBB2_164
	.p2align	4, , 16
.LBB2_178:                              # %for.body255.us196.2
                                        #   Parent Loop BB2_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a5, $a5, 1
	blt	$a5, $ra, .LBB2_178
	b	.LBB2_164
.LBB2_179:                              # %for.inc319.2
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	blez	$a4, .LBB2_182
# %bb.180:                              # %for.body325.preheader
	ori	$a1, $zero, 8
	bgeu	$a4, $a1, .LBB2_183
# %bb.181:
	move	$a3, $zero
	move	$a1, $zero
	b	.LBB2_186
.LBB2_182:
	move	$a1, $zero
	b	.LBB2_188
.LBB2_183:                              # %vector.ph666
	bstrpick.d	$a1, $a4, 30, 3
	slli.d	$a3, $a1, 3
	vrepli.b	$vr0, 0
	addi.d	$a1, $s1, 16
	move	$a2, $a3
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_184:                              # %vector.body669
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vseqi.w	$vr2, $vr2, 0
	vseqi.w	$vr3, $vr3, 0
	vadd.w	$vr0, $vr0, $vr2
	vaddi.wu	$vr0, $vr0, 1
	vadd.w	$vr1, $vr1, $vr3
	vaddi.wu	$vr1, $vr1, 1
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB2_184
# %bb.185:                              # %middle.block675
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	beq	$a3, $a4, .LBB2_188
.LBB2_186:                              # %for.body325.preheader678
	alsl.d	$a2, $a3, $s1, 2
	sub.d	$a4, $a4, $a3
	.p2align	4, , 16
.LBB2_187:                              # %for.body325
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	sltu	$a3, $zero, $a3
	add.w	$a1, $a1, $a3
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB2_187
.LBB2_188:                              # %for.end334
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	blt	$s6, $a0, .LBB2_199
# %bb.189:                              # %for.cond341.preheader.lr.ph
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_199
# %bb.190:                              # %for.cond341.preheader.us.preheader
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 31, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 31, 0
	b	.LBB2_192
	.p2align	4, , 16
.LBB2_191:                              # %for.cond341.for.inc415_crit_edge.us
                                        #   in Loop: Header=BB2_192 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s6, .LBB2_199
.LBB2_192:                              # %for.cond341.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_195 Depth 2
                                        #       Child Loop BB2_197 Depth 3
	blt	$s0, $a0, .LBB2_191
# %bb.193:                              # %for.cond346.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_192 Depth=1
	move	$a6, $zero
	alsl.d	$a7, $a1, $s5, 2
	b	.LBB2_195
	.p2align	4, , 16
.LBB2_194:                              # %for.cond346.for.inc412_crit_edge.us.us
                                        #   in Loop: Header=BB2_195 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $a4, .LBB2_191
.LBB2_195:                              # %for.cond346.preheader.us.us
                                        #   Parent Loop BB2_192 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_197 Depth 3
	move	$t0, $zero
	alsl.d	$t1, $a6, $s4, 2
	alsl.d	$t2, $a3, $s1, 2
	move	$t3, $s3
	b	.LBB2_197
	.p2align	4, , 16
.LBB2_196:                              # %if.end407.us.us
                                        #   in Loop: Header=BB2_197 Depth=3
	addi.d	$t0, $t0, 1
	addi.d	$t2, $t2, 4
	addi.w	$a3, $a3, 1
	addi.d	$t3, $t3, 4
	beq	$a5, $t0, .LBB2_194
.LBB2_197:                              # %for.body350.us.us
                                        #   Parent Loop BB2_192 Depth=1
                                        #     Parent Loop BB2_195 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t4, $t2, 0
	beqz	$t4, .LBB2_196
# %bb.198:                              # %if.then354.us.us
                                        #   in Loop: Header=BB2_197 Depth=3
	ld.d	$t5, $fp, 0
	ld.w	$t6, $t3, 0
	slli.d	$t7, $a2, 4
	alsl.d	$t7, $a2, $t7, 3
	stx.w	$t6, $t5, $t7
	ld.w	$t6, $t1, 0
	add.d	$t5, $t5, $t7
	st.w	$t6, $t5, 4
	ld.w	$t6, $a7, 0
	mod.w	$t7, $t4, $s0
	div.w	$t8, $t4, $s2
	st.w	$t6, $t5, 8
	add.d	$t6, $t0, $t7
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $s3, $t6
	mul.d	$t7, $t8, $s2
	sub.w	$t4, $t4, $t7
	div.w	$t4, $t4, $s0
	addi.d	$t6, $t6, -1
	st.w	$t6, $t5, 12
	add.w	$t4, $t4, $a6
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s4, $t4
	addi.d	$t4, $t4, -1
	st.w	$t4, $t5, 16
	add.w	$t4, $t8, $a1
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s5, $t4
	addi.d	$t4, $t4, -1
	st.w	$t4, $t5, 20
	addi.w	$a2, $a2, 1
	b	.LBB2_196
.LBB2_199:                              # %for.end417
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
.LBB2_200:                              # %cleanup
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	hypre_UnionBoxes, .Lfunc_end2-hypre_UnionBoxes
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
