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
	blt	$a0, $a1, .LBB2_199
# %bb.1:                                # %if.end
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
	slli.d	$s7, $a0, 1
	slli.d	$a1, $a0, 4
	alsl.w	$a0, $a0, $a1, 3
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $s0, 8
	move	$s3, $a0
	bstrpick.d	$a2, $s7, 31, 1
	alsl.d	$s4, $a2, $a0, 3
	alsl.d	$s2, $a2, $s4, 3
	move	$s1, $zero
	move	$s5, $zero
	blez	$a1, .LBB2_89
# %bb.2:                                # %for.body18.lr.ph
	move	$a0, $zero
	move	$a1, $zero
	slli.d	$a7, $a2, 1
	ld.d	$a2, $s0, 0
	addi.d	$a3, $s3, -16
	alsl.d	$a4, $a7, $a3, 2
	alsl.d	$a5, $a7, $s3, 2
	alsl.d	$a6, $a7, $a3, 3
	alsl.d	$a7, $a7, $s3, 3
	ori	$t0, $zero, 4
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_3:                                # %for.end84.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t1, $t3, 2
	stx.w	$t2, $s2, $t1
	addi.w	$a0, $a0, 1
.LBB2_4:                                # %for.inc95.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$t1, $s0, 8
	addi.d	$a1, $a1, 1
	bge	$a1, $t1, .LBB2_88
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
	slli.d	$t1, $a1, 4
	alsl.d	$t2, $a1, $t1, 3
	add.d	$t1, $a2, $t2
	ldx.w	$t3, $a2, $t2
	ld.w	$t2, $t1, 12
	move	$t4, $zero
	blez	$s5, .LBB2_11
# %bb.6:                                # %for.body43.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s5
	move	$t6, $s3
	.p2align	4, , 16
.LBB2_7:                                # %for.body43
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, 0
	bge	$t7, $t3, .LBB2_10
# %bb.8:                                # %for.inc64
                                        #   in Loop: Header=BB2_7 Depth=2
	addi.w	$t4, $t4, 1
	addi.d	$t5, $t5, -1
	addi.d	$t6, $t6, 4
	bnez	$t5, .LBB2_7
# %bb.9:                                #   in Loop: Header=BB2_5 Depth=1
	move	$t4, $s5
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               # %if.then52
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t3, $t7, .LBB2_19
	.p2align	4, , 16
.LBB2_11:                               # %if.then67
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t4, $s5, .LBB2_18
# %bb.12:                               # %for.body73.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t6, $s5, $t4
	move	$t5, $s5
	bltu	$t6, $t0, .LBB2_16
# %bb.13:                               # %vector.ph615
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t7, $t6
	bstrins.d	$t7, $zero, 1, 0
	sub.d	$t5, $s5, $t7
	alsl.d	$t8, $s5, $a3, 2
	move	$fp, $t7
	.p2align	4, , 16
.LBB2_14:                               # %vector.body618
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t8, 0
	vst	$vr0, $t8, 4
	addi.d	$fp, $fp, -4
	addi.d	$t8, $t8, -16
	bnez	$fp, .LBB2_14
# %bb.15:                               # %middle.block625
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t6, $t7, .LBB2_18
.LBB2_16:                               # %for.body73.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t6, $t5, $s3, 2
	.p2align	4, , 16
.LBB2_17:                               # %for.body73
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, -4
	addi.d	$t8, $t6, -4
	addi.d	$t5, $t5, -1
	st.w	$t7, $t6, 0
	move	$t6, $t8
	blt	$t4, $t5, .LBB2_17
.LBB2_18:                               # %for.end84
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t4, $t4, 2
	stx.w	$t3, $s3, $t4
	addi.w	$s5, $s5, 1
.LBB2_19:                               # %for.inc95
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$t3, $t2, 1
	move	$t4, $zero
	blez	$s5, .LBB2_25
# %bb.20:                               # %for.body43.lr.ph.1
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s3
	move	$t6, $s5
	.p2align	4, , 16
.LBB2_21:                               # %for.body43.1
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t5, 0
	blt	$t2, $t7, .LBB2_24
# %bb.22:                               # %for.inc64.1
                                        #   in Loop: Header=BB2_21 Depth=2
	addi.w	$t4, $t4, 1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB2_21
# %bb.23:                               #   in Loop: Header=BB2_5 Depth=1
	move	$t4, $s5
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_24:                               # %if.then52.1
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t3, $t7, .LBB2_33
	.p2align	4, , 16
.LBB2_25:                               # %if.then67.1
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t4, $s5, .LBB2_32
# %bb.26:                               # %for.body73.lr.ph.1
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t5, $s5, $t4
	move	$t2, $s5
	bltu	$t5, $t0, .LBB2_30
# %bb.27:                               # %vector.ph600
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t6, $t5
	bstrins.d	$t6, $zero, 1, 0
	sub.d	$t2, $s5, $t6
	alsl.d	$t7, $s5, $a3, 2
	move	$t8, $t6
	.p2align	4, , 16
.LBB2_28:                               # %vector.body603
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t7, 0
	vst	$vr0, $t7, 4
	addi.d	$t8, $t8, -4
	addi.d	$t7, $t7, -16
	bnez	$t8, .LBB2_28
# %bb.29:                               # %middle.block610
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t5, $t6, .LBB2_32
.LBB2_30:                               # %for.body73.1.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t5, $t2, $s3, 2
	.p2align	4, , 16
.LBB2_31:                               # %for.body73.1
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t5, -4
	addi.d	$t7, $t5, -4
	addi.d	$t2, $t2, -1
	st.w	$t6, $t5, 0
	move	$t5, $t7
	blt	$t4, $t2, .LBB2_31
.LBB2_32:                               # %for.end84.1
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t2, $t4, 2
	stx.w	$t3, $s3, $t2
	addi.w	$s5, $s5, 1
.LBB2_33:                               # %for.inc95.1
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$t3, $t1, 4
	ld.w	$t2, $t1, 16
	move	$t4, $zero
	blez	$s1, .LBB2_39
# %bb.34:                               # %for.body43.lr.ph.1262
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s4
	move	$t6, $s1
	.p2align	4, , 16
.LBB2_35:                               # %for.body43.1266
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t5, 0
	bge	$t7, $t3, .LBB2_38
# %bb.36:                               # %for.inc64.1273
                                        #   in Loop: Header=BB2_35 Depth=2
	addi.w	$t4, $t4, 1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB2_35
# %bb.37:                               #   in Loop: Header=BB2_5 Depth=1
	move	$t4, $s1
	b	.LBB2_39
	.p2align	4, , 16
.LBB2_38:                               # %if.then52.1270
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t3, $t7, .LBB2_47
	.p2align	4, , 16
.LBB2_39:                               # %if.then67.1277
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t4, $s1, .LBB2_46
# %bb.40:                               # %for.body73.lr.ph.1278
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t6, $s1, $t4
	move	$t5, $s1
	bltu	$t6, $t0, .LBB2_44
# %bb.41:                               # %vector.ph585
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t7, $t6
	bstrins.d	$t7, $zero, 1, 0
	sub.d	$t5, $s1, $t7
	alsl.d	$t8, $s1, $a4, 2
	move	$fp, $t7
	.p2align	4, , 16
.LBB2_42:                               # %vector.body588
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t8, 0
	vst	$vr0, $t8, 4
	addi.d	$fp, $fp, -4
	addi.d	$t8, $t8, -16
	bnez	$fp, .LBB2_42
# %bb.43:                               # %middle.block595
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t6, $t7, .LBB2_46
.LBB2_44:                               # %for.body73.1283.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t6, $t5, $a5, 2
	.p2align	4, , 16
.LBB2_45:                               # %for.body73.1283
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, -4
	addi.d	$t8, $t6, -4
	addi.d	$t5, $t5, -1
	st.w	$t7, $t6, 0
	move	$t6, $t8
	blt	$t4, $t5, .LBB2_45
.LBB2_46:                               # %for.end84.1288
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t4, $t4, 2
	stx.w	$t3, $s4, $t4
	addi.w	$s1, $s1, 1
.LBB2_47:                               # %for.inc95.1290
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$t3, $t2, 1
	move	$t4, $zero
	blez	$s1, .LBB2_53
# %bb.48:                               # %for.body43.lr.ph.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $s4
	move	$t6, $s1
	.p2align	4, , 16
.LBB2_49:                               # %for.body43.1.1
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t5, 0
	blt	$t2, $t7, .LBB2_52
# %bb.50:                               # %for.inc64.1.1
                                        #   in Loop: Header=BB2_49 Depth=2
	addi.w	$t4, $t4, 1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB2_49
# %bb.51:                               #   in Loop: Header=BB2_5 Depth=1
	move	$t4, $s1
	b	.LBB2_53
	.p2align	4, , 16
.LBB2_52:                               # %if.then52.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t3, $t7, .LBB2_61
	.p2align	4, , 16
.LBB2_53:                               # %if.then67.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t4, $s1, .LBB2_60
# %bb.54:                               # %for.body73.lr.ph.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t5, $s1, $t4
	move	$t2, $s1
	bltu	$t5, $t0, .LBB2_58
# %bb.55:                               # %vector.ph570
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t6, $t5
	bstrins.d	$t6, $zero, 1, 0
	sub.d	$t2, $s1, $t6
	alsl.d	$t7, $s1, $a4, 2
	move	$t8, $t6
	.p2align	4, , 16
.LBB2_56:                               # %vector.body573
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t7, 0
	vst	$vr0, $t7, 4
	addi.d	$t8, $t8, -4
	addi.d	$t7, $t7, -16
	bnez	$t8, .LBB2_56
# %bb.57:                               # %middle.block580
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t5, $t6, .LBB2_60
.LBB2_58:                               # %for.body73.1.1.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t5, $t2, $a5, 2
	.p2align	4, , 16
.LBB2_59:                               # %for.body73.1.1
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t5, -4
	addi.d	$t7, $t5, -4
	addi.d	$t2, $t2, -1
	st.w	$t6, $t5, 0
	move	$t5, $t7
	blt	$t4, $t2, .LBB2_59
.LBB2_60:                               # %for.end84.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t2, $t4, 2
	stx.w	$t3, $s4, $t2
	addi.w	$s1, $s1, 1
.LBB2_61:                               # %for.inc95.1.1
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$t2, $t1, 8
	ld.w	$t1, $t1, 20
	move	$t3, $zero
	blez	$a0, .LBB2_67
# %bb.62:                               # %for.body43.lr.ph.2
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t4, $s2
	move	$t5, $a0
	.p2align	4, , 16
.LBB2_63:                               # %for.body43.2
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t4, 0
	bge	$t6, $t2, .LBB2_66
# %bb.64:                               # %for.inc64.2
                                        #   in Loop: Header=BB2_63 Depth=2
	addi.w	$t3, $t3, 1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 4
	bnez	$t5, .LBB2_63
# %bb.65:                               #   in Loop: Header=BB2_5 Depth=1
	move	$t3, $a0
	b	.LBB2_67
	.p2align	4, , 16
.LBB2_66:                               # %if.then52.2
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t2, $t6, .LBB2_75
	.p2align	4, , 16
.LBB2_67:                               # %if.then67.2
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t3, $a0, .LBB2_74
# %bb.68:                               # %for.body73.lr.ph.2
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t5, $a0, $t3
	move	$t4, $a0
	bltu	$t5, $t0, .LBB2_72
# %bb.69:                               # %vector.ph555
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t6, $t5
	bstrins.d	$t6, $zero, 1, 0
	sub.d	$t4, $a0, $t6
	alsl.d	$t7, $a0, $a6, 2
	move	$t8, $t6
	.p2align	4, , 16
.LBB2_70:                               # %vector.body558
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t7, 0
	vst	$vr0, $t7, 4
	addi.d	$t8, $t8, -4
	addi.d	$t7, $t7, -16
	bnez	$t8, .LBB2_70
# %bb.71:                               # %middle.block565
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t5, $t6, .LBB2_74
.LBB2_72:                               # %for.body73.2.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t5, $t4, $a7, 2
	.p2align	4, , 16
.LBB2_73:                               # %for.body73.2
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t5, -4
	addi.d	$t7, $t5, -4
	addi.d	$t4, $t4, -1
	st.w	$t6, $t5, 0
	move	$t5, $t7
	blt	$t3, $t4, .LBB2_73
.LBB2_74:                               # %for.end84.2
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$t3, $t3, 2
	stx.w	$t2, $s2, $t3
	addi.w	$a0, $a0, 1
.LBB2_75:                               # %for.inc95.2
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$t2, $t1, 1
	move	$t3, $zero
	blez	$a0, .LBB2_81
# %bb.76:                               # %for.body43.lr.ph.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t4, $s2
	move	$t5, $a0
	.p2align	4, , 16
.LBB2_77:                               # %for.body43.1.2
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t4, 0
	blt	$t1, $t6, .LBB2_80
# %bb.78:                               # %for.inc64.1.2
                                        #   in Loop: Header=BB2_77 Depth=2
	addi.w	$t3, $t3, 1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 4
	bnez	$t5, .LBB2_77
# %bb.79:                               #   in Loop: Header=BB2_5 Depth=1
	move	$t3, $a0
	b	.LBB2_81
	.p2align	4, , 16
.LBB2_80:                               # %if.then52.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t2, $t6, .LBB2_4
	.p2align	4, , 16
.LBB2_81:                               # %if.then67.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$t3, $a0, .LBB2_3
# %bb.82:                               # %for.body73.lr.ph.1.2
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t4, $a0, $t3
	move	$t1, $a0
	bltu	$t4, $t0, .LBB2_86
# %bb.83:                               # %vector.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$t5, $t4
	bstrins.d	$t5, $zero, 1, 0
	sub.d	$t1, $a0, $t5
	alsl.d	$t6, $a0, $a6, 2
	move	$t7, $t5
	.p2align	4, , 16
.LBB2_84:                               # %vector.body
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t6, 0
	vst	$vr0, $t6, 4
	addi.d	$t7, $t7, -4
	addi.d	$t6, $t6, -16
	bnez	$t7, .LBB2_84
# %bb.85:                               # %middle.block
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$t4, $t5, .LBB2_3
.LBB2_86:                               # %for.body73.1.2.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$t4, $t1, $a7, 2
	.p2align	4, , 16
.LBB2_87:                               # %for.body73.1.2
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t4, -4
	addi.d	$t6, $t4, -4
	addi.d	$t1, $t1, -1
	st.w	$t5, $t4, 0
	move	$t4, $t6
	blt	$t3, $t1, .LBB2_87
	b	.LBB2_3
.LBB2_88:                               # %for.cond104.preheader.loopexit
	addi.w	$a1, $a0, -1
	b	.LBB2_90
.LBB2_89:
	addi.w	$a1, $zero, -1
.LBB2_90:                               # %for.cond104.preheader
	addi.w	$a2, $s5, -1
	addi.w	$a0, $s1, -1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	mul.d	$a0, $a0, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	mul.w	$a0, $a0, $a1
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	mul.w	$s6, $s1, $s5
	ori	$a1, $zero, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	move	$s1, $a0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	blez	$a1, .LBB2_120
# %bb.91:                               # %for.body133.lr.ph
	move	$s8, $zero
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	add.d	$a0, $s5, $s6
	addi.d	$a2, $a0, 1
	vreplgr2vr.w	$vr0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	slli.d	$s0, $a0, 2
	slli.d	$a0, $s5, 2
	addi.d	$a6, $a0, -4
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$t0, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu32i.d	$t0, 1
	ori	$t2, $zero, 8
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_92:                               # %for.inc212.loopexit
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
.LBB2_93:                               # %for.inc212
                                        #   in Loop: Header=BB2_94 Depth=1
	addi.d	$s8, $s8, 1
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bge	$s8, $a0, .LBB2_120
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
                                        #         Child Loop BB2_115 Depth 4
                                        #         Child Loop BB2_118 Depth 4
	slli.d	$a0, $s8, 4
	alsl.d	$a0, $s8, $a0, 3
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a1, $a4, $a0
	move	$a3, $zero
	add.d	$a0, $a4, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$a0, $s3
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_95:                               # %while.cond
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t6, $t7
	move	$t8, $ra
	move	$t5, $a3
	ld.w	$a4, $a0, 0
	add.d	$t7, $t7, $t0
	addi.d	$ra, $ra, 1
	addi.d	$a0, $a0, 4
	addi.w	$a3, $a3, 1
	bne	$a1, $a4, .LBB2_95
# %bb.96:                               # %while.end
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 12
	addi.w	$a1, $a1, 1
	addi.w	$a3, $zero, -4
	move	$a4, $t5
	.p2align	4, , 16
.LBB2_97:                               # %while.cond153
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t4, $a4
	ldx.w	$a5, $a0, $a3
	add.d	$t6, $t6, $t0
	addi.d	$t8, $t8, 1
	addi.d	$a3, $a3, 4
	addi.w	$a4, $a4, 1
	bne	$a1, $a5, .LBB2_97
# %bb.98:                               # %while.end166
                                        #   in Loop: Header=BB2_94 Depth=1
	move	$a5, $zero
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 4
	addi.w	$a1, $zero, -1
	ori	$t1, $zero, 0
	lu32i.d	$t1, -1
	move	$a0, $s4
	.p2align	4, , 16
.LBB2_99:                               # %while.cond.1
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a7, $t1
	move	$t3, $a1
	move	$a4, $a5
	ld.w	$fp, $a0, 0
	add.d	$t1, $t1, $t0
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	addi.w	$a5, $a5, 1
	bne	$a3, $fp, .LBB2_99
# %bb.100:                              # %while.end.1
                                        #   in Loop: Header=BB2_94 Depth=1
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 16
	addi.w	$a3, $a3, 1
	addi.w	$a5, $zero, -4
	.p2align	4, , 16
.LBB2_101:                              # %while.cond153.1
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$fp, $a0, $a5
	add.d	$a7, $a7, $t0
	addi.d	$t3, $t3, 1
	addi.d	$a5, $a5, 4
	bne	$a3, $fp, .LBB2_101
# %bb.102:                              # %while.end166.1
                                        #   in Loop: Header=BB2_94 Depth=1
	move	$a0, $zero
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$s8, $a3, 8
	addi.w	$fp, $zero, -1
	ori	$a5, $zero, 0
	lu32i.d	$a5, -1
	move	$s4, $s2
	.p2align	4, , 16
.LBB2_103:                              # %while.cond.2
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s2, $a5
	move	$a3, $fp
	move	$s0, $a0
	ld.w	$s3, $s4, 0
	add.d	$a5, $a5, $t0
	addi.d	$fp, $fp, 1
	addi.d	$s4, $s4, 4
	addi.w	$a0, $a0, 1
	bne	$s8, $s3, .LBB2_103
# %bb.104:                              # %while.end.2
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 20
	addi.w	$a0, $a0, 1
	addi.w	$s8, $zero, -4
	.p2align	4, , 16
.LBB2_105:                              # %while.cond153.2
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$s3, $s4, $s8
	add.d	$s2, $s2, $t0
	addi.d	$a3, $a3, 1
	addi.d	$s8, $s8, 4
	bne	$a0, $s3, .LBB2_105
# %bb.106:                              # %while.end166.2
                                        #   in Loop: Header=BB2_94 Depth=1
	bgeu	$fp, $a3, .LBB2_119
# %bb.107:                              # %while.end166.2
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	bgeu	$a1, $t3, .LBB2_93
# %bb.108:                              # %while.end166.2
                                        #   in Loop: Header=BB2_94 Depth=1
	bgeu	$ra, $t8, .LBB2_93
# %bb.109:                              # %for.body177.us.us.preheader
                                        #   in Loop: Header=BB2_94 Depth=1
	srai.d	$a3, $t7, 32
	srai.d	$a0, $t1, 32
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	srai.d	$t1, $a5, 32
	srai.d	$t3, $s2, 32
	srai.d	$a7, $a7, 32
	srai.d	$a0, $t6, 32
	sub.d	$t6, $a0, $a3
	addi.w	$a0, $zero, -8
	and	$t7, $t6, $a0
	add.d	$t8, $a3, $t7
	addi.d	$a1, $s1, 16
	alsl.d	$a1, $t5, $a1, 2
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a5, $a5, $s0
	add.d	$a4, $a4, $a5
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a4, $a5, $a4
	add.d	$s2, $a1, $a4
	sub.d	$a1, $t4, $t5
	and	$t5, $a1, $a0
	add.d	$a0, $s1, $a4
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_111
	.p2align	4, , 16
.LBB2_110:                              # %for.cond179.for.inc209_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB2_111 Depth=2
	addi.d	$t1, $t1, 1
	add.d	$s2, $s2, $s0
	add.d	$a0, $a0, $s0
	beq	$t1, $t3, .LBB2_92
.LBB2_111:                              # %for.body177.us.us
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_113 Depth 3
                                        #         Child Loop BB2_115 Depth 4
                                        #         Child Loop BB2_118 Depth 4
	move	$ra, $a0
	move	$a4, $s2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	b	.LBB2_113
	.p2align	4, , 16
.LBB2_112:                              # %for.cond185.for.inc206_crit_edge.us.us.us
                                        #   in Loop: Header=BB2_113 Depth=3
	addi.d	$a1, $a1, 1
	add.d	$a4, $a4, $a6
	add.d	$ra, $ra, $a6
	beq	$a1, $a7, .LBB2_110
.LBB2_113:                              # %for.body183.us.us.us
                                        #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_111 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_115 Depth 4
                                        #         Child Loop BB2_118 Depth 4
	move	$fp, $a3
	bltu	$t6, $t2, .LBB2_117
# %bb.114:                              # %vector.ph630
                                        #   in Loop: Header=BB2_113 Depth=3
	move	$a5, $t5
	move	$fp, $a4
	.p2align	4, , 16
.LBB2_115:                              # %vector.body633
                                        #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_111 Depth=2
                                        #       Parent Loop BB2_113 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr0, $fp, -16
	vst	$vr0, $fp, 0
	addi.d	$a5, $a5, -8
	addi.d	$fp, $fp, 32
	bnez	$a5, .LBB2_115
# %bb.116:                              # %middle.block637
                                        #   in Loop: Header=BB2_113 Depth=3
	move	$fp, $t8
	beq	$t6, $t7, .LBB2_112
.LBB2_117:                              # %for.body189.us.us.us.preheader
                                        #   in Loop: Header=BB2_113 Depth=3
	alsl.d	$a5, $fp, $ra, 2
	sub.d	$fp, $t4, $fp
	.p2align	4, , 16
.LBB2_118:                              # %for.body189.us.us.us
                                        #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_111 Depth=2
                                        #       Parent Loop BB2_113 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a2, $a5, 0
	addi.d	$fp, $fp, -1
	addi.d	$a5, $a5, 4
	bnez	$fp, .LBB2_118
	b	.LBB2_112
.LBB2_119:                              #   in Loop: Header=BB2_94 Depth=1
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	b	.LBB2_93
.LBB2_120:                              # %sw.epilog
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	blez	$t8, .LBB2_132
# %bb.121:                              # %for.body242.lr.ph
	ori	$a1, $zero, 2
	ld.d	$t7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	blt	$t7, $a1, .LBB2_133
# %bb.122:                              # %for.body242.lr.ph.split.us
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	blt	$s5, $a1, .LBB2_145
# %bb.123:                              # %for.body242.us.us.preheader
	move	$a2, $zero
	move	$a3, $zero
	mul.d	$a4, $fp, $s0
                                        # implicit-def: $r4
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB2_125
	.p2align	4, , 16
.LBB2_124:                              # %for.cond246.for.inc313_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB2_125 Depth=1
	addi.w	$a3, $a3, 1
	add.w	$a2, $a2, $a4
	bge	$a3, $t8, .LBB2_134
.LBB2_125:                              # %for.body242.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_127 Depth 2
                                        #       Child Loop BB2_129 Depth 3
	move	$a5, $zero
	move	$a6, $a2
	b	.LBB2_127
	.p2align	4, , 16
.LBB2_126:                              # %for.cond259.for.inc307_crit_edge.us.us.us
                                        #   in Loop: Header=BB2_127 Depth=2
	addi.w	$a5, $a5, 1
	add.w	$a6, $a6, $s0
	bge	$a5, $fp, .LBB2_124
.LBB2_127:                              # %for.body255.us.us.us
                                        #   Parent Loop BB2_125 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_129 Depth 3
	move	$t2, $zero
	alsl.d	$a7, $a6, $s1, 2
	move	$t0, $s0
	move	$t1, $a6
	b	.LBB2_129
	.p2align	4, , 16
.LBB2_128:                              # %if.else.us.us.us
                                        #   in Loop: Header=BB2_129 Depth=3
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
	beqz	$t0, .LBB2_126
.LBB2_129:                              # %for.body268.us.us.us
                                        #   Parent Loop BB2_125 Depth=1
                                        #     Parent Loop BB2_127 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $a7, 0
	beqz	$t2, .LBB2_128
# %bb.130:                              # %for.body268.us.us.us
                                        #   in Loop: Header=BB2_129 Depth=3
	addi.w	$t2, $a0, 0
	bne	$t3, $t2, .LBB2_128
# %bb.131:                              # %if.then283.us.us.us
                                        #   in Loop: Header=BB2_129 Depth=3
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
	bnez	$t0, .LBB2_129
	b	.LBB2_126
.LBB2_132:
                                        # implicit-def: $r4
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB2_160
.LBB2_133:
                                        # implicit-def: $r4
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
.LBB2_134:                              # %for.body242.lr.ph.1
	blt	$s5, $a1, .LBB2_160
.LBB2_135:                              # %for.body242.lr.ph.split.us.1
	ori	$a1, $zero, 2
	blt	$t7, $a1, .LBB2_147
# %bb.136:                              # %for.body242.us.us.1.preheader
	move	$a1, $zero
	move	$a2, $zero
	mul.d	$a3, $fp, $s0
	b	.LBB2_138
	.p2align	4, , 16
.LBB2_137:                              # %for.cond246.for.inc313_crit_edge.split.us.us.us.1
                                        #   in Loop: Header=BB2_138 Depth=1
	addi.w	$a2, $a2, 1
	add.w	$a1, $a1, $a3
	bge	$a2, $t8, .LBB2_160
.LBB2_138:                              # %for.body242.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_140 Depth 2
                                        #       Child Loop BB2_142 Depth 3
	move	$a4, $zero
	move	$a5, $a1
	b	.LBB2_140
	.p2align	4, , 16
.LBB2_139:                              # %for.cond259.for.inc307_crit_edge.us.us.us.1
                                        #   in Loop: Header=BB2_140 Depth=2
	addi.w	$a4, $a4, 1
	addi.w	$a5, $a5, 1
	bge	$a4, $s0, .LBB2_137
.LBB2_140:                              # %for.body255.us.us.us.1
                                        #   Parent Loop BB2_138 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_142 Depth 3
	move	$t0, $zero
	move	$a6, $fp
	move	$a7, $a5
	b	.LBB2_142
	.p2align	4, , 16
.LBB2_141:                              # %if.else.us.us.us.1
                                        #   in Loop: Header=BB2_142 Depth=3
	sltu	$t0, $zero, $t1
	masknez	$t2, $s7, $t0
	maskeqz	$t3, $a7, $t0
	or	$s7, $t3, $t2
	masknez	$a0, $a0, $t0
	maskeqz	$t1, $t1, $t0
	or	$a0, $t1, $a0
	addi.w	$a6, $a6, -1
	add.w	$a7, $a7, $s0
	beqz	$a6, .LBB2_139
.LBB2_142:                              # %for.body268.us.us.us.1
                                        #   Parent Loop BB2_138 Depth=1
                                        #     Parent Loop BB2_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t1, $a7, 2
	ldx.w	$t1, $s1, $t1
	beqz	$t0, .LBB2_141
# %bb.143:                              # %for.body268.us.us.us.1
                                        #   in Loop: Header=BB2_142 Depth=3
	addi.w	$t0, $a0, 0
	bne	$t1, $t0, .LBB2_141
# %bb.144:                              # %if.then283.us.us.us.1
                                        #   in Loop: Header=BB2_142 Depth=3
	alsl.d	$t0, $a7, $s1, 2
	st.w	$zero, $t0, 0
	addi.w	$t0, $s7, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t1, $s1, $t0
	add.d	$t1, $t1, $s5
	stx.w	$t1, $s1, $t0
	ori	$t0, $zero, 1
	addi.w	$a6, $a6, -1
	add.w	$a7, $a7, $s0
	bnez	$a6, .LBB2_142
	b	.LBB2_139
.LBB2_145:                              # %for.body242.us.preheader
	ori	$a0, $zero, 1
	bne	$t8, $a0, .LBB2_155
# %bb.146:
	move	$a0, $zero
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB2_158
.LBB2_147:                              # %for.body242.us.1.preheader
	move	$a1, $zero
	bstrpick.d	$a2, $s0, 30, 1
	slli.w	$a2, $a2, 1
	ori	$a3, $zero, 1
	b	.LBB2_149
	.p2align	4, , 16
.LBB2_148:                              # %for.cond246.for.inc313_crit_edge.split.us199.1
                                        #   in Loop: Header=BB2_149 Depth=1
	addi.w	$a1, $a1, 1
	bge	$a1, $t8, .LBB2_160
.LBB2_149:                              # %for.body242.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_152 Depth 2
                                        #     Child Loop BB2_154 Depth 2
	bne	$s0, $a3, .LBB2_151
# %bb.150:                              #   in Loop: Header=BB2_149 Depth=1
	move	$a4, $zero
	b	.LBB2_154
	.p2align	4, , 16
.LBB2_151:                              # %vector.body656.preheader
                                        #   in Loop: Header=BB2_149 Depth=1
	move	$a4, $a2
	.p2align	4, , 16
.LBB2_152:                              # %vector.body656
                                        #   Parent Loop BB2_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $a4, -2
	bnez	$a4, .LBB2_152
# %bb.153:                              # %middle.block659
                                        #   in Loop: Header=BB2_149 Depth=1
	move	$a4, $a2
	beq	$s0, $a2, .LBB2_148
	.p2align	4, , 16
.LBB2_154:                              # %for.body255.us196.1
                                        #   Parent Loop BB2_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $a4, 1
	blt	$a4, $s0, .LBB2_154
	b	.LBB2_148
.LBB2_155:                              # %vector.ph642
	slt	$a2, $a0, $t8
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $t8, $a2
	or	$a2, $a2, $a0
	bstrpick.d	$a0, $a2, 30, 1
	slli.w	$a0, $a0, 1
	move	$a3, $a0
	.p2align	4, , 16
.LBB2_156:                              # %vector.body645
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $a3, -2
	bnez	$a3, .LBB2_156
# %bb.157:                              # %middle.block648
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB2_159
	.p2align	4, , 16
.LBB2_158:                              # %for.cond246.for.inc313_crit_edge.split.us199
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a0, 1
	blt	$a0, $t8, .LBB2_158
.LBB2_159:
                                        # implicit-def: $r4
	bge	$s5, $a1, .LBB2_135
.LBB2_160:                              # %sw.epilog.2
	ori	$a1, $zero, 2
	blt	$s5, $a1, .LBB2_178
# %bb.161:                              # %sw.epilog.2
	blt	$t7, $a1, .LBB2_178
# %bb.162:                              # %for.body242.lr.ph.split.us.2
	blez	$t8, .LBB2_172
# %bb.163:                              # %for.body242.us.us.2.preheader
	move	$a1, $zero
	mul.d	$a2, $fp, $s0
	b	.LBB2_165
	.p2align	4, , 16
.LBB2_164:                              # %for.cond246.for.inc313_crit_edge.split.us.us.us.2
                                        #   in Loop: Header=BB2_165 Depth=1
	addi.w	$a1, $a1, 1
	bge	$a1, $s0, .LBB2_178
.LBB2_165:                              # %for.body242.us.us.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_167 Depth 2
                                        #       Child Loop BB2_169 Depth 3
	move	$a3, $zero
	move	$a4, $a1
	b	.LBB2_167
	.p2align	4, , 16
.LBB2_166:                              # %for.cond259.for.inc307_crit_edge.us.us.us.2
                                        #   in Loop: Header=BB2_167 Depth=2
	addi.w	$a3, $a3, 1
	add.w	$a4, $a4, $s0
	bge	$a3, $fp, .LBB2_164
.LBB2_167:                              # %for.body255.us.us.us.2
                                        #   Parent Loop BB2_165 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_169 Depth 3
	move	$a7, $zero
	move	$a5, $t8
	move	$a6, $a4
	b	.LBB2_169
	.p2align	4, , 16
.LBB2_168:                              # %if.else.us.us.us.2
                                        #   in Loop: Header=BB2_169 Depth=3
	sltu	$a7, $zero, $t0
	masknez	$t1, $s7, $a7
	maskeqz	$t2, $a6, $a7
	or	$s7, $t2, $t1
	masknez	$a0, $a0, $a7
	maskeqz	$t0, $t0, $a7
	or	$a0, $t0, $a0
	addi.w	$a5, $a5, -1
	add.w	$a6, $a6, $a2
	beqz	$a5, .LBB2_166
.LBB2_169:                              # %for.body268.us.us.us.2
                                        #   Parent Loop BB2_165 Depth=1
                                        #     Parent Loop BB2_167 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t0, $a6, 2
	ldx.w	$t0, $s1, $t0
	beqz	$a7, .LBB2_168
# %bb.170:                              # %for.body268.us.us.us.2
                                        #   in Loop: Header=BB2_169 Depth=3
	addi.w	$a7, $a0, 0
	bne	$t0, $a7, .LBB2_168
# %bb.171:                              # %if.then283.us.us.us.2
                                        #   in Loop: Header=BB2_169 Depth=3
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
	bnez	$a5, .LBB2_169
	b	.LBB2_166
.LBB2_172:                              # %for.body242.us.2.preheader
	ori	$a0, $zero, 2
	bne	$s5, $a0, .LBB2_174
# %bb.173:
	move	$a0, $zero
	b	.LBB2_177
.LBB2_174:                              # %vector.ph665
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a0
	bstrpick.d	$a0, $a1, 30, 1
	slli.w	$a0, $a0, 1
	move	$a2, $a0
	.p2align	4, , 16
.LBB2_175:                              # %vector.body668
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $a2, -2
	bnez	$a2, .LBB2_175
# %bb.176:                              # %middle.block671
	beq	$a1, $a0, .LBB2_178
	.p2align	4, , 16
.LBB2_177:                              # %for.cond246.for.inc313_crit_edge.split.us199.2
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a0, 1
	blt	$a0, $s0, .LBB2_177
.LBB2_178:                              # %for.inc319.2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	blez	$a3, .LBB2_181
# %bb.179:                              # %for.body325.preheader
	ori	$a0, $zero, 8
	bgeu	$a3, $a0, .LBB2_182
# %bb.180:
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB2_185
.LBB2_181:
	move	$a1, $zero
	b	.LBB2_187
.LBB2_182:                              # %vector.ph676
	bstrpick.d	$a0, $a3, 30, 3
	slli.d	$a0, $a0, 3
	vrepli.b	$vr0, 0
	addi.d	$a1, $s1, 16
	move	$a2, $a0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_183:                              # %vector.body679
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
	bnez	$a2, .LBB2_183
# %bb.184:                              # %middle.block685
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a0, $a3, .LBB2_187
.LBB2_185:                              # %for.body325.preheader688
	alsl.d	$a2, $a0, $s1, 2
	sub.d	$a0, $a3, $a0
	.p2align	4, , 16
.LBB2_186:                              # %for.body325
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	sltu	$a3, $zero, $a3
	add.d	$a1, $a1, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB2_186
.LBB2_187:                              # %for.end334
	addi.w	$a1, $a1, 0
	move	$a0, $t6
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$t7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	blez	$t8, .LBB2_198
# %bb.188:                              # %for.end334
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_198
# %bb.189:                              # %for.end334
	blt	$s5, $a0, .LBB2_198
# %bb.190:                              # %for.cond341.preheader.us.us.preheader
	move	$a0, $zero
	move	$a1, $zero
	move	$a7, $zero
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 0
	b	.LBB2_192
	.p2align	4, , 16
.LBB2_191:                              # %for.cond341.for.inc415_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB2_192 Depth=1
	addi.d	$a0, $a0, 1
	add.w	$a7, $a6, $a5
	beq	$a0, $t8, .LBB2_198
.LBB2_192:                              # %for.cond341.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_194 Depth 2
                                        #       Child Loop BB2_196 Depth 3
	move	$a3, $zero
	alsl.d	$a4, $a0, $s2, 2
	b	.LBB2_194
	.p2align	4, , 16
.LBB2_193:                              # %for.cond346.for.inc412_crit_edge.us.us.us
                                        #   in Loop: Header=BB2_194 Depth=2
	addi.d	$a3, $a3, 1
	add.w	$a7, $a6, $a5
	beq	$a3, $fp, .LBB2_191
.LBB2_194:                              # %for.cond346.preheader.us.us.us
                                        #   Parent Loop BB2_192 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_196 Depth 3
	move	$a5, $zero
	move	$a6, $a7
	alsl.d	$a7, $a3, $s4, 2
	alsl.d	$t0, $a6, $s1, 2
	move	$t1, $s3
	b	.LBB2_196
	.p2align	4, , 16
.LBB2_195:                              # %if.end407.us.us.us
                                        #   in Loop: Header=BB2_196 Depth=3
	addi.d	$a5, $a5, 1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	beq	$a2, $a5, .LBB2_193
.LBB2_196:                              # %for.body350.us.us.us
                                        #   Parent Loop BB2_192 Depth=1
                                        #     Parent Loop BB2_194 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	beqz	$t2, .LBB2_195
# %bb.197:                              # %if.then354.us.us.us
                                        #   in Loop: Header=BB2_196 Depth=3
	ld.d	$t3, $t7, 0
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
	ldx.w	$t2, $s2, $t2
	addi.d	$t2, $t2, -1
	st.w	$t2, $t3, 20
	addi.w	$a1, $a1, 1
	b	.LBB2_195
.LBB2_198:                              # %for.end417
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
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
.LBB2_199:                              # %cleanup
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	hypre_UnionBoxes, .Lfunc_end2-hypre_UnionBoxes
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
