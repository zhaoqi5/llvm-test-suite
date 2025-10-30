	.file	"searchDiagram.c"
	.text
	.globl	SearchDiagram_findNode          # -- Begin function SearchDiagram_findNode
	.p2align	5
	.type	SearchDiagram_findNode,@function
SearchDiagram_findNode:                 # @SearchDiagram_findNode
# %bb.0:                                # %entry
	beqz	$a0, .LBB0_4
# %bb.1:                                # %for.cond.preheader
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beq	$a2, $a1, .LBB0_5
# %bb.3:                                # %for.cond
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a2, $a0, 16
	addi.d	$a0, $a0, 16
	bnez	$a2, .LBB0_2
.LBB0_4:
	move	$a0, $zero
.LBB0_5:                                # %cleanup
	ret
.Lfunc_end0:
	.size	SearchDiagram_findNode, .Lfunc_end0-SearchDiagram_findNode
                                        # -- End function
	.globl	SearchDiagram_build             # -- Begin function SearchDiagram_build
	.p2align	5
	.type	SearchDiagram_build,@function
SearchDiagram_build:                    # @SearchDiagram_build
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $zero
	beqz	$a0, .LBB1_31
# %bb.1:                                # %entry
	move	$s1, $a1
	beqz	$a1, .LBB1_31
# %bb.2:                                # %if.end
	move	$fp, $a0
	slli.d	$s2, $s1, 4
	addi.d	$a0, $s2, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_30
# %bb.3:                                # %for.body.preheader
	move	$s0, $a0
	move	$s4, $zero
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	addi.w	$s3, $s1, -1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vstx	$vr0, $a0, $s2
	addi.d	$s5, $a0, 8
	move	$s2, $s3
	move	$s6, $fp
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %for.inc78
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$s6, $s6, 8
	addi.d	$s4, $s4, 1
	beqz	$s6, .LBB1_13
.LBB1_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	ld.d	$s7, $s6, 0
	ld.w	$a0, $s7, 48
	ld.w	$a1, $s7, 52
	slli.d	$a2, $s4, 4
	add.w	$a0, $a1, $a0
	stx.d	$s7, $s0, $a2
	blez	$a0, .LBB1_7
# %bb.6:                                # %if.then17
                                        #   in Loop: Header=BB1_5 Depth=1
	slli.d	$s8, $a0, 4
	addi.d	$a0, $s8, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vstx	$vr0, $a0, $s8
	ld.d	$s7, $s7, 32
	alsl.d	$a1, $s4, $s0, 4
	st.d	$a0, $a1, 8
	bnez	$s7, .LBB1_8
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_7:                                #   in Loop: Header=BB1_5 Depth=1
	move	$a0, $zero
	ld.d	$s7, $s7, 32
	alsl.d	$a1, $s4, $s0, 4
	st.d	$a0, $a1, 8
	beqz	$s7, .LBB1_4
.LBB1_8:                                # %for.body42.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	alsl.d	$s8, $s2, $s5, 4
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_9:                                # %if.then53
                                        #   in Loop: Header=BB1_11 Depth=2
	ld.w	$a0, $a0, 52
	add.w	$a0, $a0, $a1
	slli.d	$s1, $a0, 4
	addi.d	$a0, $s1, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vstx	$vr0, $a0, $s1
.LBB1_10:                               # %if.end77
                                        #   in Loop: Header=BB1_11 Depth=2
	ld.d	$s7, $s7, 8
	st.d	$a0, $s8, 0
	addi.d	$s8, $s8, -16
	addi.w	$s2, $s2, -1
	beqz	$s7, .LBB1_4
.LBB1_11:                               # %for.body42
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	ld.w	$a1, $a0, 48
	st.d	$a0, $s8, -8
	bgtz	$a1, .LBB1_9
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=2
	move	$a0, $zero
	b	.LBB1_10
.LBB1_13:                               # %for.end80
	addi.w	$a1, $s4, 0
	addi.w	$a0, $s2, 1
	beq	$a0, $a1, .LBB1_15
# %bb.14:                               # %if.then84
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a2, $s2
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_15:                               # %for.body91.preheader
	move	$a0, $zero
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_16:                               # %for.inc152
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$fp, $fp, 8
	addi.d	$a0, $a0, 1
	beqz	$fp, .LBB1_31
.LBB1_17:                               # %for.body91
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
                                        #       Child Loop BB1_20 Depth 3
                                        #     Child Loop BB1_25 Depth 2
                                        #       Child Loop BB1_27 Depth 3
                                        #         Child Loop BB1_28 Depth 4
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a1, 40
	beqz	$a2, .LBB1_22
# %bb.18:                               # %for.cond.preheader.i.lr.ph
                                        #   in Loop: Header=BB1_17 Depth=1
	alsl.d	$a3, $a0, $s0, 4
	ld.d	$a3, $a3, 8
	move	$a4, $zero
	.p2align	4, , 16
.LBB1_19:                               # %for.cond.preheader.i
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_20 Depth 3
	ld.d	$a5, $a2, 8
	move	$a6, $s0
	.p2align	4, , 16
.LBB1_20:                               # %for.body.i
                                        #   Parent Loop BB1_17 Depth=1
                                        #     Parent Loop BB1_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $a6, 0
	addi.d	$a6, $a6, 16
	bne	$a7, $a5, .LBB1_20
# %bb.21:                               # %cleanup.loopexit.split.loop.exit12.i
                                        #   in Loop: Header=BB1_19 Depth=2
	alsl.d	$a7, $a4, $a3, 4
	ld.d	$a6, $a6, -8
	ld.d	$a2, $a2, 16
	slli.d	$t0, $a4, 4
	stx.d	$a5, $a3, $t0
	st.d	$a6, $a7, 8
	addi.d	$a4, $a4, 1
	bnez	$a2, .LBB1_19
.LBB1_22:                               # %for.end115
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a1, $a1, 32
	beqz	$a1, .LBB1_16
# %bb.23:                               # %for.body121.preheader
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.w	$s3, $s3, 0
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_24:                               # %for.end147
                                        #   in Loop: Header=BB1_25 Depth=2
	ld.d	$a1, $a1, 8
	addi.d	$s3, $s3, -1
	beqz	$a1, .LBB1_16
.LBB1_25:                               # %for.body121
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_27 Depth 3
                                        #         Child Loop BB1_28 Depth 4
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 40
	beqz	$a2, .LBB1_24
# %bb.26:                               # %for.cond.preheader.i89.lr.ph
                                        #   in Loop: Header=BB1_25 Depth=2
	alsl.d	$a3, $s3, $s0, 4
	ld.d	$a3, $a3, 8
	move	$a4, $zero
	.p2align	4, , 16
.LBB1_27:                               # %for.cond.preheader.i89
                                        #   Parent Loop BB1_17 Depth=1
                                        #     Parent Loop BB1_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_28 Depth 4
	ld.d	$a5, $a2, 8
	move	$a6, $s0
	.p2align	4, , 16
.LBB1_28:                               # %for.body.i91
                                        #   Parent Loop BB1_17 Depth=1
                                        #     Parent Loop BB1_25 Depth=2
                                        #       Parent Loop BB1_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a6, 0
	addi.d	$a6, $a6, 16
	bne	$a7, $a5, .LBB1_28
# %bb.29:                               # %cleanup.loopexit.split.loop.exit12.i99
                                        #   in Loop: Header=BB1_27 Depth=3
	alsl.d	$a7, $a4, $a3, 4
	ld.d	$a6, $a6, -8
	ld.d	$a2, $a2, 16
	slli.d	$t0, $a4, 4
	stx.d	$a5, $a3, $t0
	st.d	$a6, $a7, 8
	addi.d	$a4, $a4, 1
	bnez	$a2, .LBB1_27
	b	.LBB1_24
.LBB1_30:
	move	$s0, $zero
.LBB1_31:                               # %cleanup
	move	$a0, $s0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end1:
	.size	SearchDiagram_build, .Lfunc_end1-SearchDiagram_build
                                        # -- End function
	.globl	SearchDiagram_findSignatureAlongEdges # -- Begin function SearchDiagram_findSignatureAlongEdges
	.p2align	5
	.type	SearchDiagram_findSignatureAlongEdges,@function
SearchDiagram_findSignatureAlongEdges:  # @SearchDiagram_findSignatureAlongEdges
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $a0
	move	$a0, $zero
	beqz	$s3, .LBB2_20
# %bb.1:                                # %entry
	move	$s2, $a1
	beqz	$a1, .LBB2_20
# %bb.2:                                # %entry
	move	$s1, $a2
	beqz	$a2, .LBB2_20
# %bb.3:                                # %entry
	move	$fp, $a3
	beqz	$a3, .LBB2_20
# %bb.4:                                # %entry
	move	$s0, $a4
	beqz	$a4, .LBB2_20
# %bb.5:                                # %if.end
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(Bitfield_nodeVisited)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_19
# %bb.6:                                # %if.end9
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s2, 0
	beqz	$s4, .LBB2_18
# %bb.7:                                # %for.body.lr.ph
	addi.d	$s3, $s1, 8
	addi.d	$s7, $s2, 8
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_8:                                # %for.inc
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$s4, $s7, 8
	addi.d	$s7, $s7, 16
	beqz	$s4, .LBB2_14
.LBB2_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 8
	beqz	$a0, .LBB2_8
# %bb.10:                               # %if.then15
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_8
# %bb.11:                               # %if.then23
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB2_22
# %bb.12:                               # %if.else
                                        #   in Loop: Header=BB2_9 Depth=1
	ori	$a0, $zero, 50
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s7, -8
	ld.d	$a1, $s7, 0
	move	$s5, $a0
	move	$a0, $a2
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $s5
	pcaddu18i	$ra, %call36(SearchDiagram_findSignatureAlongEdges)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB2_8
# %bb.13:                               # %if.then40
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(NodePtrVec_appendVectors)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(NodePtrVec_delete)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB2_20
.LBB2_14:                               # %for.cond45.preheader
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB2_18
# %bb.15:                               # %for.body50.preheader
	addi.d	$s2, $s2, 16
	.p2align	4, , 16
.LBB2_16:                               # %for.body50
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, -8
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(SearchDiagram_findSignatureAlongEdges)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_21
# %bb.17:                               # %for.cond45
                                        #   in Loop: Header=BB2_16 Depth=1
	ld.d	$a0, $s2, 0
	addi.d	$s2, $s2, 16
	bnez	$a0, .LBB2_16
.LBB2_18:                               # %for.end64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(NodePtrVec_pop)
	jirl	$ra, $ra, 0
.LBB2_19:                               # %cleanup
	move	$a0, $zero
.LBB2_20:                               # %cleanup
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB2_21:
	ori	$a0, $zero, 1
	b	.LBB2_20
.LBB2_22:                               # %if.then26
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB2_20
.Lfunc_end2:
	.size	SearchDiagram_findSignatureAlongEdges, .Lfunc_end2-SearchDiagram_findSignatureAlongEdges
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Bummer. outerIdx: %d, innerIdx: %d, node count: %d\n"
	.size	.L.str, 52

	.section	".note.GNU-stack","",@progbits
	.addrsig
