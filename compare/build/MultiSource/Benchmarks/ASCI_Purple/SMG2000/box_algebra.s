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
	move	$s1, $a0
	ld.w	$a0, $a0, 8
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB2_203
# %bb.1:                                # %if.end
	slli.d	$s7, $a0, 1
	slli.d	$a1, $a0, 4
	alsl.w	$a0, $a0, $a1, 3
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.w	$a1, $s1, 8
	bstrpick.d	$a3, $s7, 31, 1
	alsl.d	$s4, $a3, $a0, 3
	ori	$a0, $zero, 1
	alsl.d	$s8, $a3, $s4, 3
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	move	$s2, $zero
	move	$s5, $zero
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
	stx.w	$t3, $s8, $t2
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
	blt	$s5, $a0, .LBB2_11
# %bb.6:                                # %for.body43.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t6, $s5
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
	move	$t5, $s5
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               # %if.then52
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t4, $t8, .LBB2_19
	.p2align	4, , 16
.LBB2_11:                               # %if.then67
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t5, $s5, .LBB2_18
# %bb.12:                               # %for.body73.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t7, $s5, $t5
	move	$t6, $s5
	bltu	$t7, $t1, .LBB2_16
# %bb.13:                               # %vector.ph616
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t8, $t7
	bstrins.d	$t8, $zero, 2, 0
	sub.d	$t6, $s5, $t8
	alsl.d	$fp, $s5, $a4, 2
	move	$s0, $t8
	.p2align	4, , 16
.LBB2_14:                               # %vector.body619
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $fp, 0
	xvst	$xr0, $fp, 4
	addi.d	$s0, $s0, -8
	addi.d	$fp, $fp, -32
	bnez	$s0, .LBB2_14
# %bb.15:                               # %middle.block626
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
	addi.w	$s5, $s5, 1
.LBB2_19:                               # %for.inc95
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$t4, $t3, 1
	move	$t5, $zero
	blt	$s5, $a0, .LBB2_25
# %bb.20:                               # %for.body43.lr.ph.1
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t6, $s3
	move	$t7, $s5
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
	move	$t5, $s5
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_24:                               # %if.then52.1
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t4, $t8, .LBB2_33
	.p2align	4, , 16
.LBB2_25:                               # %if.then67.1
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t5, $s5, .LBB2_32
# %bb.26:                               # %for.body73.lr.ph.1
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t6, $s5, $t5
	move	$t3, $s5
	bltu	$t6, $t1, .LBB2_30
# %bb.27:                               # %vector.ph601
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t7, $t6
	bstrins.d	$t7, $zero, 2, 0
	sub.d	$t3, $s5, $t7
	alsl.d	$t8, $s5, $a4, 2
	move	$fp, $t7
	.p2align	4, , 16
.LBB2_28:                               # %vector.body604
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t8, 0
	xvst	$xr0, $t8, 4
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, -32
	bnez	$fp, .LBB2_28
# %bb.29:                               # %middle.block611
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
	addi.w	$s5, $s5, 1
.LBB2_33:                               # %for.inc95.1
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$t4, $t2, 4
	ld.w	$t3, $t2, 16
	move	$t5, $zero
	blt	$s2, $a0, .LBB2_39
# %bb.34:                               # %for.body43.lr.ph.1263
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t6, $s4
	move	$t7, $s2
	.p2align	4, , 16
.LBB2_35:                               # %for.body43.1267
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t6, 0
	bge	$t8, $t4, .LBB2_38
# %bb.36:                               # %for.inc64.1274
                                        #   in Loop: Header=BB2_35 Depth=2
	addi.w	$t5, $t5, 1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	bnez	$t7, .LBB2_35
# %bb.37:                               #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s2
	b	.LBB2_39
	.p2align	4, , 16
.LBB2_38:                               # %if.then52.1271
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t4, $t8, .LBB2_47
	.p2align	4, , 16
.LBB2_39:                               # %if.then67.1278
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t5, $s2, .LBB2_46
# %bb.40:                               # %for.body73.lr.ph.1279
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t7, $s2, $t5
	move	$t6, $s2
	bltu	$t7, $t1, .LBB2_44
# %bb.41:                               # %vector.ph586
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t8, $t7
	bstrins.d	$t8, $zero, 2, 0
	sub.d	$t6, $s2, $t8
	alsl.d	$fp, $s2, $a5, 2
	move	$s0, $t8
	.p2align	4, , 16
.LBB2_42:                               # %vector.body589
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $fp, 0
	xvst	$xr0, $fp, 4
	addi.d	$s0, $s0, -8
	addi.d	$fp, $fp, -32
	bnez	$s0, .LBB2_42
# %bb.43:                               # %middle.block596
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t7, $t8, .LBB2_46
.LBB2_44:                               # %for.body73.1284.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t7, $t6, $a6, 2
	.p2align	4, , 16
.LBB2_45:                               # %for.body73.1284
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t7, -4
	addi.d	$fp, $t7, -4
	addi.d	$t6, $t6, -1
	st.w	$t8, $t7, 0
	move	$t7, $fp
	blt	$t5, $t6, .LBB2_45
.LBB2_46:                               # %for.end84.1289
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t5, $t5, 2
	stx.w	$t4, $s4, $t5
	addi.w	$s2, $s2, 1
.LBB2_47:                               # %for.inc95.1291
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$t4, $t3, 1
	move	$t5, $zero
	blt	$s2, $a0, .LBB2_53
# %bb.48:                               # %for.body43.lr.ph.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t6, $s4
	move	$t7, $s2
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
	move	$t5, $s2
	b	.LBB2_53
	.p2align	4, , 16
.LBB2_52:                               # %if.then52.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t4, $t8, .LBB2_61
	.p2align	4, , 16
.LBB2_53:                               # %if.then67.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t5, $s2, .LBB2_60
# %bb.54:                               # %for.body73.lr.ph.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t6, $s2, $t5
	move	$t3, $s2
	bltu	$t6, $t1, .LBB2_58
# %bb.55:                               # %vector.ph571
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t7, $t6
	bstrins.d	$t7, $zero, 2, 0
	sub.d	$t3, $s2, $t7
	alsl.d	$t8, $s2, $a5, 2
	move	$fp, $t7
	.p2align	4, , 16
.LBB2_56:                               # %vector.body574
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t8, 0
	xvst	$xr0, $t8, 4
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, -32
	bnez	$fp, .LBB2_56
# %bb.57:                               # %middle.block581
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
	addi.w	$s2, $s2, 1
.LBB2_61:                               # %for.inc95.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$t3, $t2, 8
	ld.w	$t2, $t2, 20
	move	$t4, $zero
	blt	$a1, $a0, .LBB2_67
# %bb.62:                               # %for.body43.lr.ph.2
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s8
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
# %bb.69:                               # %vector.ph556
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t7, $t6
	bstrins.d	$t7, $zero, 2, 0
	sub.d	$t5, $a1, $t7
	alsl.d	$t8, $a1, $a7, 2
	move	$fp, $t7
	.p2align	4, , 16
.LBB2_70:                               # %vector.body559
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t8, 0
	xvst	$xr0, $t8, 4
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, -32
	bnez	$fp, .LBB2_70
# %bb.71:                               # %middle.block566
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
	stx.w	$t3, $s8, $t4
	addi.w	$a1, $a1, 1
.LBB2_75:                               # %for.inc95.2
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$t3, $t2, 1
	move	$t4, $zero
	blt	$a1, $a0, .LBB2_81
# %bb.76:                               # %for.body43.lr.ph.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s8
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
	addi.w	$a2, $s5, -1
	addi.w	$a0, $s2, -1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	mul.d	$a0, $a0, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	mul.w	$a0, $a0, $a1
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	mul.w	$s6, $s2, $s5
	ori	$a1, $zero, 4
	ori	$s2, $zero, 4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	move	$s1, $a0
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	blez	$a1, .LBB2_125
# %bb.91:                               # %for.body133.lr.ph
	move	$a3, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	add.d	$a0, $s5, $s6
	addi.d	$a2, $a0, 1
	xvreplgr2vr.w	$xr0, $a2
	vreplgr2vr.w	$vr1, $a2
	addi.d	$a0, $s1, 32
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $s5, 2
	addi.d	$a6, $a0, -4
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$t0, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu32i.d	$t0, 1
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s8, $sp, 96                    # 8-byte Folded Spill
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_92:                               # %for.inc212.loopexit
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
.LBB2_93:                               # %for.inc212
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bge	$a3, $a0, .LBB2_125
.LBB2_94:                               # %for.body133
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_95 Depth 2
                                        #     Child Loop BB2_97 Depth 2
                                        #     Child Loop BB2_99 Depth 2
                                        #     Child Loop BB2_101 Depth 2
                                        #     Child Loop BB2_103 Depth 2
                                        #     Child Loop BB2_105 Depth 2
                                        #     Child Loop BB2_111 Depth 2
                                        #       Child Loop BB2_113 Depth 3
                                        #         Child Loop BB2_117 Depth 4
                                        #         Child Loop BB2_121 Depth 4
                                        #         Child Loop BB2_124 Depth 4
	slli.d	$a0, $a3, 4
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a0, $a3, $a0, 3
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a1, $a3, $a0
	move	$a4, $zero
	add.d	$a3, $a3, $a0
	move	$a0, $s3
	ld.d	$ra, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_95:                               # %while.cond
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t6, $t7
	move	$t8, $ra
	move	$t5, $a4
	ld.w	$a5, $a0, 0
	add.d	$t7, $t7, $t0
	addi.d	$ra, $ra, 1
	addi.d	$a0, $a0, 4
	addi.w	$a4, $a4, 1
	bne	$a1, $a5, .LBB2_95
# %bb.96:                               # %while.end
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.w	$a1, $a3, 12
	addi.w	$a1, $a1, 1
	addi.w	$a4, $zero, -4
	move	$a5, $t5
	.p2align	4, , 16
.LBB2_97:                               # %while.cond153
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t3, $a5
	ldx.w	$a7, $a0, $a4
	add.d	$t6, $t6, $t0
	addi.d	$t8, $t8, 1
	addi.d	$a4, $a4, 4
	addi.w	$a5, $a5, 1
	bne	$a1, $a7, .LBB2_97
# %bb.98:                               # %while.end166
                                        #   in Loop: Header=BB2_94 Depth=1
	move	$t4, $zero
	ld.w	$fp, $a3, 4
	addi.w	$a4, $zero, -1
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	move	$t1, $s4
	.p2align	4, , 16
.LBB2_99:                               # %while.cond.1
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	move	$a7, $a4
	move	$a5, $t4
	ld.w	$t2, $t1, 0
	add.d	$a1, $a1, $t0
	addi.d	$a4, $a4, 1
	addi.d	$t1, $t1, 4
	addi.w	$t4, $t4, 1
	bne	$fp, $t2, .LBB2_99
# %bb.100:                              # %while.end.1
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.w	$t2, $a3, 16
	addi.w	$t2, $t2, 1
	addi.w	$t4, $zero, -4
	.p2align	4, , 16
.LBB2_101:                              # %while.cond153.1
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$fp, $t1, $t4
	add.d	$a0, $a0, $t0
	addi.d	$a7, $a7, 1
	addi.d	$t4, $t4, 4
	bne	$t2, $fp, .LBB2_101
# %bb.102:                              # %while.end166.1
                                        #   in Loop: Header=BB2_94 Depth=1
	move	$fp, $zero
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	ld.w	$t4, $a3, 8
	addi.w	$s4, $zero, -1
	ori	$t1, $zero, 0
	lu32i.d	$t1, -1
	move	$s3, $s8
	.p2align	4, , 16
.LBB2_103:                              # %while.cond.2
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s0, $t1
	move	$s8, $s4
	move	$t2, $fp
	ld.w	$a3, $s3, 0
	add.d	$t1, $t1, $t0
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 4
	addi.w	$fp, $fp, 1
	bne	$t4, $a3, .LBB2_103
# %bb.104:                              # %while.end.2
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 20
	addi.w	$a3, $a3, 1
	addi.w	$t4, $zero, -4
	.p2align	4, , 16
.LBB2_105:                              # %while.cond153.2
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$fp, $s3, $t4
	add.d	$s0, $s0, $t0
	addi.d	$s8, $s8, 1
	addi.d	$t4, $t4, 4
	bne	$a3, $fp, .LBB2_105
# %bb.106:                              # %while.end166.2
                                        #   in Loop: Header=BB2_94 Depth=1
	bgeu	$s4, $s8, .LBB2_93
# %bb.107:                              # %while.end166.2
                                        #   in Loop: Header=BB2_94 Depth=1
	bgeu	$a4, $a7, .LBB2_93
# %bb.108:                              # %while.end166.2
                                        #   in Loop: Header=BB2_94 Depth=1
	bgeu	$ra, $t8, .LBB2_93
# %bb.109:                              # %for.body177.us.us.preheader
                                        #   in Loop: Header=BB2_94 Depth=1
	srai.d	$t4, $t7, 32
	srai.d	$a1, $a1, 32
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	srai.d	$t8, $t1, 32
	srai.d	$a1, $s0, 32
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	srai.d	$a3, $a0, 32
	srai.d	$a0, $t6, 32
	sub.d	$t6, $a0, $t4
	addi.w	$a4, $zero, -16
	and	$a7, $t6, $a4
	add.d	$a0, $t4, $a7
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	andi	$a0, $t6, 12
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.w	$t1, $zero, -4
	and	$a1, $t6, $t1
	add.d	$a0, $t4, $a1
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$t7, $t5, $t7, 2
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	mul.d	$t2, $fp, $t2
	add.d	$a5, $a5, $t2
	ld.d	$t2, $sp, 40                    # 8-byte Folded Reload
	mul.d	$t2, $t2, $a5
	add.d	$s0, $t7, $t2
	sub.d	$a5, $t3, $t5
	and	$ra, $a5, $a4
	alsl.d	$a4, $t5, $s1, 2
	add.d	$s8, $a4, $t2
	and	$a4, $a5, $t1
	sub.d	$a5, $zero, $a4
	add.d	$s4, $s1, $t2
	b	.LBB2_111
	.p2align	4, , 16
.LBB2_110:                              # %for.cond179.for.inc209_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB2_111 Depth=2
	addi.d	$t8, $t8, 1
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	add.d	$s0, $s0, $a4
	add.d	$s8, $s8, $a4
	add.d	$s4, $s4, $a4
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	beq	$t8, $a4, .LBB2_92
.LBB2_111:                              # %for.body177.us.us
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_113 Depth 3
                                        #         Child Loop BB2_117 Depth 4
                                        #         Child Loop BB2_121 Depth 4
                                        #         Child Loop BB2_124 Depth 4
	move	$fp, $s4
	move	$t5, $s8
	move	$t7, $s0
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	b	.LBB2_113
	.p2align	4, , 16
.LBB2_112:                              # %for.cond185.for.inc206_crit_edge.us.us.us
                                        #   in Loop: Header=BB2_113 Depth=3
	addi.d	$s3, $s3, 1
	add.d	$t7, $t7, $a6
	add.d	$t5, $t5, $a6
	add.d	$fp, $fp, $a6
	beq	$s3, $a3, .LBB2_110
.LBB2_113:                              # %iter.check
                                        #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_111 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_117 Depth 4
                                        #         Child Loop BB2_121 Depth 4
                                        #         Child Loop BB2_124 Depth 4
	move	$t1, $t4
	bltu	$t6, $s2, .LBB2_123
# %bb.114:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB2_113 Depth=3
	ori	$a4, $zero, 16
	bgeu	$t6, $a4, .LBB2_116
# %bb.115:                              #   in Loop: Header=BB2_113 Depth=3
	move	$a4, $zero
	b	.LBB2_120
	.p2align	4, , 16
.LBB2_116:                              # %vector.ph633
                                        #   in Loop: Header=BB2_113 Depth=3
	move	$t2, $ra
	move	$t1, $t7
	.p2align	4, , 16
.LBB2_117:                              # %vector.body636
                                        #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_111 Depth=2
                                        #       Parent Loop BB2_113 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr0, $t1, -32
	xvst	$xr0, $t1, 0
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB2_117
# %bb.118:                              # %middle.block639
                                        #   in Loop: Header=BB2_113 Depth=3
	beq	$t6, $a7, .LBB2_112
# %bb.119:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB2_113 Depth=3
	move	$a4, $a7
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 152                   # 8-byte Folded Reload
	beqz	$t2, .LBB2_123
.LBB2_120:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB2_113 Depth=3
	alsl.d	$t2, $a4, $t5, 2
	add.d	$t1, $a5, $a4
	.p2align	4, , 16
.LBB2_121:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_111 Depth=2
                                        #       Parent Loop BB2_113 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr1, $t2, 0
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 16
	bnez	$t1, .LBB2_121
# %bb.122:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB2_113 Depth=3
	move	$t1, $a0
	beq	$t6, $a1, .LBB2_112
.LBB2_123:                              # %for.body189.us.us.us.preheader
                                        #   in Loop: Header=BB2_113 Depth=3
	alsl.d	$t2, $t1, $fp, 2
	sub.d	$t1, $t3, $t1
	.p2align	4, , 16
.LBB2_124:                              # %for.body189.us.us.us
                                        #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_111 Depth=2
                                        #       Parent Loop BB2_113 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a2, $t2, 0
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 4
	bnez	$t1, .LBB2_124
	b	.LBB2_112
.LBB2_125:                              # %sw.epilog
	ori	$a0, $zero, 1
	ld.d	$t6, $sp, 24                    # 8-byte Folded Reload
	blt	$t6, $a0, .LBB2_137
# %bb.126:                              # %for.body242.lr.ph
	ori	$a1, $zero, 2
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 8                     # 8-byte Folded Reload
	blt	$s0, $a1, .LBB2_144
# %bb.127:                              # %for.body242.lr.ph.split.us
	blt	$s5, $a1, .LBB2_138
# %bb.128:                              # %for.body242.us.us.preheader
	move	$a2, $zero
	move	$a3, $zero
	mul.d	$a4, $s2, $t7
                                        # implicit-def: $r4
	b	.LBB2_130
	.p2align	4, , 16
.LBB2_129:                              # %for.cond246.for.inc313_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB2_130 Depth=1
	addi.w	$a3, $a3, 1
	add.w	$a2, $a2, $a4
	bge	$a3, $t6, .LBB2_145
.LBB2_130:                              # %for.body242.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_132 Depth 2
                                        #       Child Loop BB2_134 Depth 3
	move	$a5, $zero
	move	$a6, $a2
	b	.LBB2_132
	.p2align	4, , 16
.LBB2_131:                              # %for.cond259.for.inc307_crit_edge.us.us.us
                                        #   in Loop: Header=BB2_132 Depth=2
	addi.w	$a5, $a5, 1
	add.w	$a6, $a6, $t7
	bge	$a5, $s2, .LBB2_129
.LBB2_132:                              # %for.body255.us.us.us
                                        #   Parent Loop BB2_130 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_134 Depth 3
	move	$t2, $zero
	alsl.d	$a7, $a6, $s1, 2
	move	$t0, $t7
	move	$t1, $a6
	b	.LBB2_134
	.p2align	4, , 16
.LBB2_133:                              # %if.else.us.us.us
                                        #   in Loop: Header=BB2_134 Depth=3
	sltu	$t2, $zero, $t3
	masknez	$t4, $s7, $t2
	maskeqz	$t5, $t1, $t2
	or	$s7, $t5, $t4
	masknez	$a0, $a0, $t2
	maskeqz	$t3, $t3, $t2
	or	$a0, $t3, $a0
	addi.d	$a7, $a7, 4
	addi.w	$t0, $t0, -1
	addi.d	$t1, $t1, 1
	beqz	$t0, .LBB2_131
.LBB2_134:                              # %for.body268.us.us.us
                                        #   Parent Loop BB2_130 Depth=1
                                        #     Parent Loop BB2_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $a7, 0
	beqz	$t2, .LBB2_133
# %bb.135:                              # %for.body268.us.us.us
                                        #   in Loop: Header=BB2_134 Depth=3
	addi.w	$t2, $a0, 0
	bne	$t3, $t2, .LBB2_133
# %bb.136:                              # %if.then283.us.us.us
                                        #   in Loop: Header=BB2_134 Depth=3
	st.w	$zero, $a7, 0
	addi.w	$t2, $s7, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t3, $s1, $t2
	addi.d	$t3, $t3, 1
	stx.w	$t3, $s1, $t2
	ori	$t2, $zero, 1
	addi.d	$a7, $a7, 4
	addi.w	$t0, $t0, -1
	addi.d	$t1, $t1, 1
	bnez	$t0, .LBB2_134
	b	.LBB2_131
.LBB2_137:
                                        # implicit-def: $r4
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 8                     # 8-byte Folded Reload
	b	.LBB2_164
.LBB2_138:                              # %for.body242.us.preheader
	ori	$a0, $zero, 1
	bne	$t6, $a0, .LBB2_140
# %bb.139:
	move	$a0, $zero
	b	.LBB2_143
.LBB2_140:                              # %vector.ph652
	slt	$a2, $a0, $t6
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $t6, $a2
	or	$a2, $a2, $a0
	bstrpick.d	$a0, $a2, 30, 1
	slli.w	$a0, $a0, 1
	move	$a3, $a0
	.p2align	4, , 16
.LBB2_141:                              # %vector.body655
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $a3, -2
	bnez	$a3, .LBB2_141
# %bb.142:                              # %middle.block658
	beq	$a2, $a0, .LBB2_144
	.p2align	4, , 16
.LBB2_143:                              # %for.cond246.for.inc313_crit_edge.split.us199
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a0, 1
	blt	$a0, $t6, .LBB2_143
.LBB2_144:
                                        # implicit-def: $r4
.LBB2_145:                              # %for.body242.lr.ph.1
	blt	$s5, $a1, .LBB2_164
# %bb.146:                              # %for.body242.lr.ph.split.us.1
	ori	$a1, $zero, 2
	blt	$s0, $a1, .LBB2_156
# %bb.147:                              # %for.body242.us.us.1.preheader
	move	$a1, $zero
	move	$a2, $zero
	mul.d	$a3, $s2, $t7
	b	.LBB2_149
	.p2align	4, , 16
.LBB2_148:                              # %for.cond246.for.inc313_crit_edge.split.us.us.us.1
                                        #   in Loop: Header=BB2_149 Depth=1
	addi.w	$a2, $a2, 1
	add.w	$a1, $a1, $a3
	bge	$a2, $t6, .LBB2_164
.LBB2_149:                              # %for.body242.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_151 Depth 2
                                        #       Child Loop BB2_153 Depth 3
	move	$a4, $zero
	move	$a5, $a1
	b	.LBB2_151
	.p2align	4, , 16
.LBB2_150:                              # %for.cond259.for.inc307_crit_edge.us.us.us.1
                                        #   in Loop: Header=BB2_151 Depth=2
	addi.w	$a4, $a4, 1
	addi.w	$a5, $a5, 1
	bge	$a4, $t7, .LBB2_148
.LBB2_151:                              # %for.body255.us.us.us.1
                                        #   Parent Loop BB2_149 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_153 Depth 3
	move	$t0, $zero
	move	$a6, $s2
	move	$a7, $a5
	b	.LBB2_153
	.p2align	4, , 16
.LBB2_152:                              # %if.else.us.us.us.1
                                        #   in Loop: Header=BB2_153 Depth=3
	sltu	$t0, $zero, $t1
	masknez	$t2, $s7, $t0
	maskeqz	$t3, $a7, $t0
	or	$s7, $t3, $t2
	masknez	$a0, $a0, $t0
	maskeqz	$t1, $t1, $t0
	or	$a0, $t1, $a0
	addi.w	$a6, $a6, -1
	add.w	$a7, $a7, $t7
	beqz	$a6, .LBB2_150
.LBB2_153:                              # %for.body268.us.us.us.1
                                        #   Parent Loop BB2_149 Depth=1
                                        #     Parent Loop BB2_151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t1, $a7, 2
	ldx.w	$t1, $s1, $t1
	beqz	$t0, .LBB2_152
# %bb.154:                              # %for.body268.us.us.us.1
                                        #   in Loop: Header=BB2_153 Depth=3
	addi.w	$t0, $a0, 0
	bne	$t1, $t0, .LBB2_152
# %bb.155:                              # %if.then283.us.us.us.1
                                        #   in Loop: Header=BB2_153 Depth=3
	alsl.d	$t0, $a7, $s1, 2
	st.w	$zero, $t0, 0
	addi.w	$t0, $s7, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t1, $s1, $t0
	add.d	$t1, $t1, $s5
	stx.w	$t1, $s1, $t0
	ori	$t0, $zero, 1
	addi.w	$a6, $a6, -1
	add.w	$a7, $a7, $t7
	bnez	$a6, .LBB2_153
	b	.LBB2_150
.LBB2_156:                              # %for.body242.us.1.preheader
	move	$a1, $zero
	bstrpick.d	$a2, $t7, 30, 1
	slli.w	$a2, $a2, 1
	ori	$a3, $zero, 1
	b	.LBB2_158
	.p2align	4, , 16
.LBB2_157:                              # %for.cond246.for.inc313_crit_edge.split.us199.1
                                        #   in Loop: Header=BB2_158 Depth=1
	addi.w	$a1, $a1, 1
	bge	$a1, $t6, .LBB2_164
.LBB2_158:                              # %for.body242.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_161 Depth 2
                                        #     Child Loop BB2_163 Depth 2
	bne	$t7, $a3, .LBB2_160
# %bb.159:                              #   in Loop: Header=BB2_158 Depth=1
	move	$a4, $zero
	b	.LBB2_163
	.p2align	4, , 16
.LBB2_160:                              # %vector.body666.preheader
                                        #   in Loop: Header=BB2_158 Depth=1
	move	$a4, $a2
	.p2align	4, , 16
.LBB2_161:                              # %vector.body666
                                        #   Parent Loop BB2_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $a4, -2
	bnez	$a4, .LBB2_161
# %bb.162:                              # %middle.block669
                                        #   in Loop: Header=BB2_158 Depth=1
	move	$a4, $a2
	beq	$t7, $a2, .LBB2_157
	.p2align	4, , 16
.LBB2_163:                              # %for.body255.us196.1
                                        #   Parent Loop BB2_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $a4, 1
	blt	$a4, $t7, .LBB2_163
	b	.LBB2_157
.LBB2_164:                              # %sw.epilog.2
	ori	$a1, $zero, 2
	blt	$s5, $a1, .LBB2_182
# %bb.165:                              # %sw.epilog.2
	blt	$s0, $a1, .LBB2_182
# %bb.166:                              # %for.body242.lr.ph.split.us.2
	ori	$a1, $zero, 1
	blt	$t6, $a1, .LBB2_176
# %bb.167:                              # %for.body242.us.us.2.preheader
	move	$a1, $zero
	mul.d	$a2, $s2, $t7
	b	.LBB2_169
	.p2align	4, , 16
.LBB2_168:                              # %for.cond246.for.inc313_crit_edge.split.us.us.us.2
                                        #   in Loop: Header=BB2_169 Depth=1
	addi.w	$a1, $a1, 1
	bge	$a1, $t7, .LBB2_182
.LBB2_169:                              # %for.body242.us.us.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_171 Depth 2
                                        #       Child Loop BB2_173 Depth 3
	move	$a3, $zero
	move	$a4, $a1
	b	.LBB2_171
	.p2align	4, , 16
.LBB2_170:                              # %for.cond259.for.inc307_crit_edge.us.us.us.2
                                        #   in Loop: Header=BB2_171 Depth=2
	addi.w	$a3, $a3, 1
	add.w	$a4, $a4, $t7
	bge	$a3, $s2, .LBB2_168
.LBB2_171:                              # %for.body255.us.us.us.2
                                        #   Parent Loop BB2_169 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_173 Depth 3
	move	$a7, $zero
	move	$a5, $t6
	move	$a6, $a4
	b	.LBB2_173
	.p2align	4, , 16
.LBB2_172:                              # %if.else.us.us.us.2
                                        #   in Loop: Header=BB2_173 Depth=3
	sltu	$a7, $zero, $t0
	masknez	$t1, $s7, $a7
	maskeqz	$t2, $a6, $a7
	or	$s7, $t2, $t1
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $t0, $a7
	or	$a0, $t0, $a0
	addi.w	$a5, $a5, -1
	add.w	$a6, $a6, $a2
	beqz	$a5, .LBB2_170
.LBB2_173:                              # %for.body268.us.us.us.2
                                        #   Parent Loop BB2_169 Depth=1
                                        #     Parent Loop BB2_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t0, $a6, 2
	ldx.w	$t0, $s1, $t0
	beqz	$a7, .LBB2_172
# %bb.174:                              # %for.body268.us.us.us.2
                                        #   in Loop: Header=BB2_173 Depth=3
	addi.w	$a7, $a0, 0
	bne	$t0, $a7, .LBB2_172
# %bb.175:                              # %if.then283.us.us.us.2
                                        #   in Loop: Header=BB2_173 Depth=3
	alsl.d	$a7, $a6, $s1, 2
	st.w	$zero, $a7, 0
	addi.w	$a7, $s7, 0
	slli.d	$a7, $a7, 2
	ldx.w	$t0, $s1, $a7
	add.d	$t0, $t0, $s6
	stx.w	$t0, $s1, $a7
	ori	$a7, $zero, 1
	addi.w	$a5, $a5, -1
	add.w	$a6, $a6, $a2
	bnez	$a5, .LBB2_173
	b	.LBB2_170
.LBB2_176:                              # %for.body242.us.2.preheader
	ori	$a0, $zero, 2
	bne	$s5, $a0, .LBB2_178
# %bb.177:
	move	$a0, $zero
	b	.LBB2_181
.LBB2_178:                              # %vector.ph675
	slt	$a0, $a1, $t7
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $t7, $a0
	or	$a1, $a0, $a1
	bstrpick.d	$a0, $a1, 30, 1
	slli.w	$a0, $a0, 1
	move	$a2, $a0
	.p2align	4, , 16
.LBB2_179:                              # %vector.body678
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $a2, -2
	bnez	$a2, .LBB2_179
# %bb.180:                              # %middle.block681
	beq	$a1, $a0, .LBB2_182
	.p2align	4, , 16
.LBB2_181:                              # %for.cond246.for.inc313_crit_edge.split.us199.2
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a0, 1
	blt	$a0, $t7, .LBB2_181
.LBB2_182:                              # %for.inc319.2
	blez	$t8, .LBB2_185
# %bb.183:                              # %for.body325.preheader
	ori	$a0, $zero, 8
	bgeu	$t8, $a0, .LBB2_186
# %bb.184:
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB2_189
.LBB2_185:
	move	$a1, $zero
	b	.LBB2_191
.LBB2_186:                              # %vector.ph686
	bstrpick.d	$a0, $t8, 30, 3
	slli.d	$a0, $a0, 3
	vrepli.b	$vr0, 0
	addi.d	$a1, $s1, 16
	move	$a2, $a0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_187:                              # %vector.body689
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
	bnez	$a2, .LBB2_187
# %bb.188:                              # %middle.block695
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	beq	$a0, $t8, .LBB2_191
.LBB2_189:                              # %for.body325.preheader698
	alsl.d	$a2, $a0, $s1, 2
	sub.d	$a0, $t8, $a0
	.p2align	4, , 16
.LBB2_190:                              # %for.body325
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	sltu	$a3, $zero, $a3
	add.w	$a1, $a1, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB2_190
.LBB2_191:                              # %for.end334
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$t7, $sp, 24                    # 8-byte Folded Reload
	blt	$t7, $a0, .LBB2_202
# %bb.192:                              # %for.end334
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB2_202
# %bb.193:                              # %for.end334
	blt	$s5, $a0, .LBB2_202
# %bb.194:                              # %for.cond341.preheader.us.us.preheader
	move	$a0, $zero
	move	$a1, $zero
	move	$a7, $zero
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 0
	b	.LBB2_196
	.p2align	4, , 16
.LBB2_195:                              # %for.cond341.for.inc415_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB2_196 Depth=1
	addi.d	$a0, $a0, 1
	add.w	$a7, $a6, $a5
	beq	$a0, $t7, .LBB2_202
.LBB2_196:                              # %for.cond341.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_198 Depth 2
                                        #       Child Loop BB2_200 Depth 3
	move	$a3, $zero
	alsl.d	$a4, $a0, $s8, 2
	b	.LBB2_198
	.p2align	4, , 16
.LBB2_197:                              # %for.cond346.for.inc412_crit_edge.us.us.us
                                        #   in Loop: Header=BB2_198 Depth=2
	addi.d	$a3, $a3, 1
	add.w	$a7, $a6, $a5
	beq	$a3, $s2, .LBB2_195
.LBB2_198:                              # %for.cond346.preheader.us.us.us
                                        #   Parent Loop BB2_196 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_200 Depth 3
	move	$a5, $zero
	move	$a6, $a7
	alsl.d	$a7, $a3, $s4, 2
	alsl.d	$t0, $a6, $s1, 2
	move	$t1, $s3
	b	.LBB2_200
	.p2align	4, , 16
.LBB2_199:                              # %if.end407.us.us.us
                                        #   in Loop: Header=BB2_200 Depth=3
	addi.d	$a5, $a5, 1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	beq	$a2, $a5, .LBB2_197
.LBB2_200:                              # %for.body350.us.us.us
                                        #   Parent Loop BB2_196 Depth=1
                                        #     Parent Loop BB2_198 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	beqz	$t2, .LBB2_199
# %bb.201:                              # %if.then354.us.us.us
                                        #   in Loop: Header=BB2_200 Depth=3
	ld.d	$t3, $fp, 0
	ld.w	$t4, $t1, 0
	slli.d	$t5, $a1, 4
	alsl.d	$t5, $a1, $t5, 3
	stx.w	$t4, $t3, $t5
	ld.w	$t4, $a7, 0
	add.d	$t3, $t3, $t5
	st.w	$t4, $t3, 4
	ld.w	$t4, $a4, 0
	mod.w	$t5, $t2, $s5
	div.w	$t6, $t2, $s6
	st.w	$t4, $t3, 8
	add.d	$t4, $a5, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s3, $t4
	mul.d	$t5, $t6, $s6
	sub.w	$t2, $t2, $t5
	div.w	$t2, $t2, $s5
	addi.d	$t4, $t4, -1
	st.w	$t4, $t3, 12
	add.w	$t2, $t2, $a3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s4, $t2
	addi.d	$t2, $t2, -1
	st.w	$t2, $t3, 16
	add.w	$t2, $t6, $a0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s8, $t2
	addi.d	$t2, $t2, -1
	st.w	$t2, $t3, 20
	addi.w	$a1, $a1, 1
	b	.LBB2_199
.LBB2_202:                              # %for.end417
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB2_203:                              # %cleanup
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
.Lfunc_end2:
	.size	hypre_UnionBoxes, .Lfunc_end2-hypre_UnionBoxes
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
