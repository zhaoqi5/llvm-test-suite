	.file	"parsing.c"
	.text
	.globl	buildEntranceList               # -- Begin function buildEntranceList
	.p2align	5
	.type	buildEntranceList,@function
buildEntranceList:                      # @buildEntranceList
# %bb.0:                                # %entry
	beqz	$a0, .LBB0_10
# %bb.1:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	beqz	$a1, .LBB0_9
# %bb.2:                                # %if.end
	move	$s0, $a0
	ld.d	$a0, $fp, 8
	ld.w	$a0, $a0, 4
	beqz	$a0, .LBB0_9
# %bb.3:                                # %if.end3
	ld.w	$a1, $fp, 0
	addi.w	$a1, $a1, -2
	bne	$a0, $a1, .LBB0_11
# %bb.4:                                # %if.end6
	ld.d	$a0, $s0, 40
	bnez	$a0, .LBB0_6
.LBB0_5:                                # %if.then8
	pcaddu18i	$ra, %call36(EdgeList_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 40
	beqz	$a0, .LBB0_9
.LBB0_6:                                # %for.cond.preheader
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB0_9
# %bb.7:                                # %for.body.lr.ph
	ori	$s1, $zero, 2
	ori	$s2, $zero, 8
	.p2align	4, , 16
.LBB0_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 8
	ld.d	$a0, $s0, 40
	ldx.w	$a1, $a1, $s2
	pcaddu18i	$ra, %call36(EdgeList_insertNodeId)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 52
	ld.w	$a1, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 52
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 4
	blt	$s1, $a1, .LBB0_8
.LBB0_9:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB0_10:                               # %cleanup
	ret
.LBB0_11:                               # %if.then5
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.w	$a2, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	bnez	$a0, .LBB0_6
	b	.LBB0_5
.Lfunc_end0:
	.size	buildEntranceList, .Lfunc_end0-buildEntranceList
                                        # -- End function
	.globl	buildNodeFromData               # -- Begin function buildNodeFromData
	.p2align	5
	.type	buildNodeFromData,@function
buildNodeFromData:                      # @buildNodeFromData
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB1_9
# %bb.1:                                # %lor.lhs.false
	move	$s0, $a0
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_9
# %bb.2:                                # %if.end
	ld.d	$a0, $s0, 8
	ld.w	$a0, $a0, 0
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(Node_new)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_9
# %bb.3:                                # %if.end3
	move	$fp, $a0
	ld.d	$a1, $s0, 8
	ld.w	$a0, $s0, 0
	ld.w	$s1, $a1, 4
	addi.w	$a0, $a0, -2
	bne	$s1, $a0, .LBB1_11
# %bb.4:                                # %if.end12
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB1_10
.LBB1_5:                                # %if.then14
	pcaddu18i	$ra, %call36(EdgeList_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 40
	beqz	$a0, .LBB1_10
# %bb.6:                                # %for.cond.preheader
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB1_10
# %bb.7:                                # %for.body.lr.ph
	ori	$s1, $zero, 2
	ori	$s2, $zero, 8
	.p2align	4, , 16
.LBB1_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	ld.d	$a0, $fp, 40
	ldx.w	$a1, $a1, $s2
	pcaddu18i	$ra, %call36(EdgeList_insertNodeId)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	ld.w	$a1, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 48
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 4
	blt	$s1, $a1, .LBB1_8
	b	.LBB1_10
.LBB1_9:
	move	$fp, $zero
.LBB1_10:                               # %cleanup29
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_11:                               # %if.then8
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bge	$s1, $a0, .LBB1_5
	b	.LBB1_10
.Lfunc_end1:
	.size	buildNodeFromData, .Lfunc_end1-buildNodeFromData
                                        # -- End function
	.globl	resolveNodeEdges                # -- Begin function resolveNodeEdges
	.p2align	5
	.type	resolveNodeEdges,@function
resolveNodeEdges:                       # @resolveNodeEdges
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s4, $a1, 40
	beqz	$s4, .LBB2_15
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a2, .LBB2_10
# %bb.2:                                # %for.body.us.preheader
	ori	$s5, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s6, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s1, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s7, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s8, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s3, $a0, %pc_lo12(.L.str.3)
	.p2align	4, , 16
.LBB2_3:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s4, 0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Graph_findNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_8
# %bb.4:                                # %if.then2.us
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.w	$a1, $a0, 20
	addi.w	$a1, $a1, -1
	bltu	$s5, $a1, .LBB2_6
# %bb.5:                                # %if.then6.us
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $a0, 24
	bne	$a1, $fp, .LBB2_9
.LBB2_6:                                # %if.then18.us
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$a0, $s4, 8
.LBB2_7:                                # %for.inc.us
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s4, $s4, 16
	bnez	$s4, .LBB2_3
	b	.LBB2_15
.LBB2_8:                                # %if.else.us
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $s6, 0
	ld.w	$a2, $fp, 0
	ld.w	$a3, $s4, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB2_7
.LBB2_9:                                # %if.then8.us
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $s6, 0
	ld.w	$a2, $fp, 0
	ld.w	$a3, $s4, 0
	move	$s2, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s2, 20
	ld.d	$a0, $s6, 0
	ld.w	$a2, $s2, 0
	addi.d	$a1, $a4, -1
	sltui	$a1, $a1, 1
	masknez	$a3, $s7, $a1
	maskeqz	$a1, $s8, $a1
	or	$a3, $a1, $a3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB2_7
.LBB2_10:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s2, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s1, $a0, %pc_lo12(.L.str.7)
	.p2align	4, , 16
.LBB2_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s4, 0
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(Graph_findNode)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_13
# %bb.12:                               # %if.else30
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a0, $fp, 24
	ld.w	$a1, $s4, 0
	pcaddu18i	$ra, %call36(Graph_findContainedNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_14
.LBB2_13:                               # %if.then28
                                        #   in Loop: Header=BB2_11 Depth=1
	st.d	$a0, $s4, 8
	ld.d	$s4, $s4, 16
	bnez	$s4, .LBB2_11
	b	.LBB2_15
.LBB2_14:                               # %if.else37
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a2, $fp, 0
	ld.w	$a3, $s4, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 16
	bnez	$s4, .LBB2_11
.LBB2_15:                               # %for.end
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end2:
	.size	resolveNodeEdges, .Lfunc_end2-resolveNodeEdges
                                        # -- End function
	.globl	parseFile                       # -- Begin function parseFile
	.p2align	5
	.type	parseFile,@function
parseFile:                              # @parseFile
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
	beqz	$a0, .LBB3_57
# %bb.1:                                # %if.end
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_20
# %bb.2:                                # %if.end4
	move	$s0, $a0
	pcaddu18i	$ra, %call36(Graph_new)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_57
# %bb.3:                                # %if.end8
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(CharVector_new)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(CharVector_getLineFromFile)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_52
# %bb.4:                                # %land.lhs.true
	ld.d	$s2, $s1, 8
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 10
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_52
# %bb.5:                                # %if.then16
	addi.d	$a0, $s2, 10
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(YAMLWriteInt)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(CharVector_getLineFromFile)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_52
# %bb.6:                                # %land.lhs.true25
	ld.d	$s3, $s1, 8
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 13
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_52
# %bb.7:                                # %if.then29
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s3, 13
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(YAMLWriteInt)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(IntVector_new)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_22
.LBB3_8:                                # %while.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_29
.LBB3_9:                                # %while.end126
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(SystemCallMap_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	beqz	$a0, .LBB3_56
.LBB3_10:                               # %if.end193
	move	$a0, $s1
	pcaddu18i	$ra, %call36(CharVector_delete)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 16
	beqz	$s1, .LBB3_21
# %bb.11:                               # %for.body197.preheader
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s2, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s0, $a0, %pc_lo12(.L.str.7)
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_12:                               # %for.inc206
                                        #   in Loop: Header=BB3_13 Depth=1
	ld.d	$s1, $s1, 8
	beqz	$s1, .LBB3_21
.LBB3_13:                               # %for.body197
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
                                        #       Child Loop BB3_16 Depth 3
	ld.d	$a1, $s1, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(resolveNodeEdges)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$s3, $a0, 32
	bnez	$s3, .LBB3_15
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_14:                               # %resolveNodeEdges.exit
                                        #   in Loop: Header=BB3_15 Depth=2
	ld.d	$s3, $s3, 8
	beqz	$s3, .LBB3_12
.LBB3_15:                               # %for.body202
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_16 Depth 3
	ld.d	$s4, $s3, 0
	ld.d	$s5, $s4, 40
	beqz	$s5, .LBB3_14
	.p2align	4, , 16
.LBB3_16:                               # %for.body.i113
                                        #   Parent Loop BB3_13 Depth=1
                                        #     Parent Loop BB3_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a1, $s5, 0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(Graph_findNode)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_18
# %bb.17:                               # %if.else30.i
                                        #   in Loop: Header=BB3_16 Depth=3
	ld.d	$a0, $s4, 24
	ld.w	$a1, $s5, 0
	pcaddu18i	$ra, %call36(Graph_findContainedNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_19
.LBB3_18:                               # %if.then28.i
                                        #   in Loop: Header=BB3_16 Depth=3
	st.d	$a0, $s5, 8
	ld.d	$s5, $s5, 16
	bnez	$s5, .LBB3_16
	b	.LBB3_14
.LBB3_19:                               # %if.else37.i
                                        #   in Loop: Header=BB3_16 Depth=3
	ld.d	$a0, $s2, 0
	ld.w	$a2, $s4, 0
	ld.w	$a3, $s5, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 16
	bnez	$s5, .LBB3_16
	b	.LBB3_14
.LBB3_20:                               # %if.then2
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB3_57
.LBB3_21:                               # %for.end208
	ld.d	$a0, $fp, 32
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(YAMLWriteInt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.w	$a1, $fp, 8
	pcaddu18i	$ra, %call36(SearchDiagram_build)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB3_58
.LBB3_22:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$s4, $a0, %pc_lo12(.L.str.17)
	ori	$s6, $zero, 1
	b	.LBB3_24
	.p2align	4, , 16
.LBB3_23:                               # %if.end60
                                        #   in Loop: Header=BB3_24 Depth=1
	st.w	$zero, $s3, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_8
.LBB3_24:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(CharVector_getLineFromFile)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_8
# %bb.25:                               # %if.end44
                                        #   in Loop: Header=BB3_24 Depth=1
	ld.d	$s5, $s1, 8
	ori	$a2, $zero, 10
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_8
# %bb.26:                               # %if.end49
                                        #   in Loop: Header=BB3_24 Depth=1
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(IntVector_createFromString)
	jirl	$ra, $ra, 0
	blt	$a0, $s6, .LBB3_23
# %bb.27:                               # %if.then53
                                        #   in Loop: Header=BB3_24 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(buildNodeFromData)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_23
# %bb.28:                               # %if.then56
                                        #   in Loop: Header=BB3_24 Depth=1
	move	$s5, $a0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(Graph_addOuterNode)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	st.w	$a0, $s5, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 8
	b	.LBB3_23
.LBB3_29:                               # %while.body65.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$s4, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$s5, $a0, %pc_lo12(.L.str.17)
	ori	$s6, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB3_31
	.p2align	4, , 16
.LBB3_30:                               # %while.end125
                                        #   in Loop: Header=BB3_31 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_9
.LBB3_31:                               # %while.body65
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_38 Depth 2
                                        #       Child Loop BB3_48 Depth 3
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(CharVector_getLineFromFile)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_9
# %bb.32:                               # %if.end70
                                        #   in Loop: Header=BB3_31 Depth=1
	ld.d	$s7, $s1, 8
	ori	$a2, $zero, 12
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_53
# %bb.33:                               # %if.end75
                                        #   in Loop: Header=BB3_31 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a1, $a0, 2048
	addi.d	$a0, $zero, -1
	beqz	$a1, .LBB3_35
# %bb.34:                               # %if.then81
                                        #   in Loop: Header=BB3_31 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
.LBB3_35:                               # %if.end85
                                        #   in Loop: Header=BB3_31 Depth=1
	addi.w	$s8, $a0, 0
	move	$a0, $fp
	move	$a1, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(Graph_findNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_72
# %bb.36:                               # %while.cond92.preheader
                                        #   in Loop: Header=BB3_31 Depth=1
	move	$s7, $a0
	b	.LBB3_38
	.p2align	4, , 16
.LBB3_37:                               # %if.end123
                                        #   in Loop: Header=BB3_38 Depth=2
	st.w	$zero, $s3, 0
.LBB3_38:                               # %while.cond92.preheader
                                        #   Parent Loop BB3_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_48 Depth 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_30
# %bb.39:                               # %while.body96
                                        #   in Loop: Header=BB3_38 Depth=2
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(CharVector_getLineFromFile)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s1, 8
	ori	$a2, $zero, 10
	move	$a0, $s5
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_30
# %bb.40:                               # %if.end103
                                        #   in Loop: Header=BB3_38 Depth=2
	move	$a0, $s3
	move	$a1, $s8
	pcaddu18i	$ra, %call36(IntVector_createFromString)
	jirl	$ra, $ra, 0
	blt	$a0, $s6, .LBB3_37
# %bb.41:                               # %if.then108
                                        #   in Loop: Header=BB3_38 Depth=2
	ld.d	$a0, $s3, 8
	ld.w	$a2, $a0, 0
	ld.w	$a1, $s7, 0
	bne	$a2, $a1, .LBB3_49
# %bb.42:                               # %if.end.i
                                        #   in Loop: Header=BB3_38 Depth=2
	ld.w	$a0, $a0, 4
	beqz	$a0, .LBB3_37
# %bb.43:                               # %if.end3.i
                                        #   in Loop: Header=BB3_38 Depth=2
	ld.w	$a1, $s3, 0
	addi.w	$a1, $a1, -2
	bne	$a0, $a1, .LBB3_51
# %bb.44:                               # %if.end6.i
                                        #   in Loop: Header=BB3_38 Depth=2
	ld.d	$a0, $s7, 40
	bnez	$a0, .LBB3_46
.LBB3_45:                               # %if.then8.i
                                        #   in Loop: Header=BB3_38 Depth=2
	pcaddu18i	$ra, %call36(EdgeList_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 40
	beqz	$a0, .LBB3_37
.LBB3_46:                               # %for.cond.preheader.i
                                        #   in Loop: Header=BB3_38 Depth=2
	ld.w	$a0, $s3, 0
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB3_37
# %bb.47:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB3_38 Depth=2
	ori	$s8, $zero, 2
	ori	$s2, $zero, 8
	.p2align	4, , 16
.LBB3_48:                               # %for.body.i
                                        #   Parent Loop BB3_31 Depth=1
                                        #     Parent Loop BB3_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s7, 40
	ldx.w	$a1, $a1, $s2
	pcaddu18i	$ra, %call36(EdgeList_insertNodeId)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 52
	ld.w	$a1, $s3, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s7, 52
	addi.d	$s8, $s8, 1
	addi.d	$s2, $s2, 4
	blt	$s8, $a1, .LBB3_48
	b	.LBB3_37
	.p2align	4, , 16
.LBB3_49:                               # %if.else113
                                        #   in Loop: Header=BB3_38 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(buildNodeFromData)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_37
# %bb.50:                               # %if.then116
                                        #   in Loop: Header=BB3_38 Depth=2
	move	$s8, $a0
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(Node_addInteriorNode)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	st.w	$a0, $s8, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 8
	b	.LBB3_37
.LBB3_51:                               # %if.then5.i
                                        #   in Loop: Header=BB3_38 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 40
	bnez	$a0, .LBB3_46
	b	.LBB3_45
.LBB3_52:                               # %if.else
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 59
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB3_57
.LBB3_53:                               # %while.end126.thread
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(SystemCallMap_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	beqz	$a0, .LBB3_56
# %bb.54:                               # %while.cond135.preheader
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_10
# %bb.55:                               # %while.body139.preheader
	ori	$s2, $zero, 10
	ori	$s3, $zero, 32
	ori	$s4, $zero, 13
	b	.LBB3_62
.LBB3_56:                               # %if.then131
	move	$a0, $s3
	pcaddu18i	$ra, %call36(IntVector_delete)
	jirl	$ra, $ra, 0
.LBB3_57:                               # %cleanup
	move	$fp, $zero
.LBB3_58:                               # %cleanup
	move	$a0, $fp
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
.LBB3_59:                               # %cleanup.sink.split.i
                                        #   in Loop: Header=BB3_62 Depth=1
	stx.b	$zero, $a1, $a0
	ld.d	$a1, $s1, 8
.LBB3_60:                               # %pruneLine.exit
                                        #   in Loop: Header=BB3_62 Depth=1
	ld.d	$a0, $fp, 32
	add.d	$a1, $a1, $a3
	pcaddu18i	$ra, %call36(SystemCallMap_insert)
	jirl	$ra, $ra, 0
.LBB3_61:                               # %if.end191
                                        #   in Loop: Header=BB3_62 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_10
.LBB3_62:                               # %while.body139
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_66 Depth 2
                                        #     Child Loop BB3_69 Depth 2
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(CharVector_getLineFromFile)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_10
# %bb.63:                               # %if.end144
                                        #   in Loop: Header=BB3_62 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	ld.b	$a2, $a1, 0
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a0, $a0, $a2
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB3_61
# %bb.64:                               # %if.end158
                                        #   in Loop: Header=BB3_62 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	bltz	$a1, .LBB3_61
# %bb.65:                               # %for.cond.preheader
                                        #   in Loop: Header=BB3_62 Depth=1
	ld.d	$a0, $s1, 8
	move	$a2, $zero
	ori	$s5, $zero, 1
	ldx.bu	$a3, $a0, $a2
	beqz	$a3, .LBB3_61
	.p2align	4, , 16
.LBB3_66:                               # %for.cond
                                        #   Parent Loop BB3_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a3, $s3, .LBB3_68
# %bb.67:                               # %for.inc
                                        #   in Loop: Header=BB3_66 Depth=2
	addi.d	$a2, $a2, 1
	addi.w	$s5, $s5, 1
	ldx.bu	$a3, $a0, $a2
	bnez	$a3, .LBB3_66
	b	.LBB3_61
.LBB3_68:                               # %if.then180
                                        #   in Loop: Header=BB3_62 Depth=1
	addi.d	$s6, $a2, 1
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Graph_findNode)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	move	$a2, $a0
	bstrpick.d	$a3, $s6, 31, 0
	bstrpick.d	$a0, $s5, 31, 0
	ldx.bu	$a4, $a1, $a0
	beqz	$a4, .LBB3_60
.LBB3_69:                               # %for.cond.i
                                        #   Parent Loop BB3_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a4, $s2, .LBB3_59
# %bb.70:                               # %for.cond.i
                                        #   in Loop: Header=BB3_69 Depth=2
	beq	$a4, $s4, .LBB3_59
# %bb.71:                               # %for.inc.i
                                        #   in Loop: Header=BB3_69 Depth=2
	addi.d	$a0, $a0, 1
	ldx.bu	$a4, $a1, $a0
	bnez	$a4, .LBB3_69
	b	.LBB3_60
.LBB3_72:                               # %if.then89
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.Lfunc_end3:
	.size	parseFile, .Lfunc_end3-parseFile
                                        # -- End function
	.globl	parseSignature                  # -- Begin function parseSignature
	.p2align	5
	.type	parseSignature,@function
parseSignature:                         # @parseSignature
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB4_11
# %bb.1:                                # %for.cond.preheader
	move	$fp, $a0
	move	$s2, $zero
	ori	$a0, $zero, 32
	move	$a1, $fp
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                # %if.then7
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s2, $s2, 1
	st.b	$zero, $a1, 0
.LBB4_3:                                # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a1, $a1, 1
.LBB4_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	beq	$a2, $a0, .LBB4_2
# %bb.5:                                # %for.cond
                                        #   in Loop: Header=BB4_4 Depth=1
	bnez	$a2, .LBB4_3
# %bb.6:                                # %for.end
	slli.d	$s3, $s2, 3
	addi.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_11
# %bb.7:                                # %for.cond15.preheader
	move	$s0, $a0
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB4_10
# %bb.8:                                # %for.body18.preheader
	move	$s5, $zero
	move	$s4, $s0
	.p2align	4, , 16
.LBB4_9:                                # %for.body18
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s1, $fp, $s5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s5, $a0
	addi.w	$s5, $a0, 1
	addi.d	$s2, $s2, -1
	addi.d	$s4, $s4, 8
	bnez	$s2, .LBB4_9
.LBB4_10:                               # %for.end35
	stx.d	$zero, $s0, $s3
	b	.LBB4_12
.LBB4_11:
	move	$s0, $zero
.LBB4_12:                               # %cleanup
	move	$a0, $s0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end4:
	.size	parseSignature, .Lfunc_end4-parseSignature
                                        # -- End function
	.globl	parseConfigFile                 # -- Begin function parseConfigFile
	.p2align	5
	.type	parseConfigFile,@function
parseConfigFile:                        # @parseConfigFile
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1104
	st.d	$ra, $sp, 1096                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1016                  # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_5
# %bb.1:                                # %if.else
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1000
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_3
# %bb.2:                                # %lor.lhs.false
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 24
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_8
.LBB5_3:                                # %if.then8
	pcalau12i	$a0, %pc_hi20(.Lstr.10)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.10)
.LBB5_4:                                # %cleanup
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB5_6
.LBB5_5:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %cleanup
	move	$a0, $zero
.LBB5_7:                                # %cleanup
	ld.d	$s8, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1096                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1104
	ret
.LBB5_8:                                # %if.end10
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1000
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_10
# %bb.9:                                # %lor.lhs.false15
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_11
.LBB5_10:                               # %if.then19
	pcalau12i	$a0, %pc_hi20(.Lstr.9)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.9)
	b	.LBB5_4
.LBB5_11:                               # %if.end21
	addi.d	$a0, $sp, 22
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s1, $a0, 0
	beqz	$s1, .LBB5_15
# %bb.12:                               # %if.end26
	move	$s2, $a0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1000
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_14
# %bb.13:                               # %lor.lhs.false31
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_16
.LBB5_14:                               # %if.then35
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	b	.LBB5_4
.LBB5_15:                               # %if.then24
	pcalau12i	$a0, %pc_hi20(.Lstr.8)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.8)
	b	.LBB5_4
.LBB5_16:                               # %if.end37
	addi.d	$a0, $sp, 27
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s4, $a0, 0
	beqz	$s4, .LBB5_44
# %bb.17:                               # %if.end43
	move	$s3, $a0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1000
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_14
# %bb.18:                               # %lor.lhs.false48
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 11
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_14
# %bb.19:                               # %if.end54
	ld.w	$a0, $sp, 28
	lu12i.w	$a1, 415319
	ld.d	$a2, $fp, 16
	ori	$a1, $a1, 628
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.w	$a0, $a2, 0
	slli.d	$a1, $s2, 32
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 29
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	beqz	$a0, .LBB5_45
# %bb.20:                               # %for.cond.preheader
	move	$a1, $a0
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB5_31
# %bb.21:                               # %for.body.lr.ph
	move	$s6, $zero
	addi.d	$s1, $sp, 21
	bstrpick.d	$s7, $s2, 30, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$s2, $a0, %pc_lo12(.L.str.36)
	ori	$s8, $zero, 10
	ori	$s5, $zero, 13
.LBB5_22:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_25 Depth 2
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1000
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_46
# %bb.23:                               # %lor.lhs.false75
                                        #   in Loop: Header=BB5_22 Depth=1
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 5
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bnez	$a0, .LBB5_46
# %bb.24:                               # %for.cond.i
                                        #   in Loop: Header=BB5_22 Depth=1
	ld.bu	$a0, $a1, 0
	beqz	$a0, .LBB5_29
.LBB5_25:                               # %for.cond.i
                                        #   Parent Loop BB5_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s8, .LBB5_28
# %bb.26:                               # %for.cond.i
                                        #   in Loop: Header=BB5_25 Depth=2
	beq	$a0, $s5, .LBB5_28
# %bb.27:                               # %for.inc.i
                                        #   in Loop: Header=BB5_25 Depth=2
	addi.d	$a1, $a1, 1
	ld.bu	$a0, $a1, 0
	bnez	$a0, .LBB5_25
	b	.LBB5_29
.LBB5_28:                               # %cleanup.sink.split.i
                                        #   in Loop: Header=BB5_22 Depth=1
	st.b	$zero, $a1, 0
.LBB5_29:                               # %pruneLine.exit
                                        #   in Loop: Header=BB5_22 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(parseFile)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	slli.d	$a2, $s6, 3
	stx.d	$a0, $a1, $a2
	beqz	$a0, .LBB5_48
# %bb.30:                               # %for.cond
                                        #   in Loop: Header=BB5_22 Depth=1
	addi.d	$s6, $s6, 1
	bne	$s6, $s7, .LBB5_22
.LBB5_31:                               # %for.end
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	srai.d	$a0, $a0, 29
	stx.d	$zero, $a1, $a0
	slli.d	$s5, $s3, 32
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	add.d	$a0, $s5, $a0
	srai.d	$a0, $a0, 29
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB5_47
# %bb.32:                               # %for.cond109.preheader
	move	$a1, $a0
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB5_43
# %bb.33:                               # %for.body112.lr.ph
	move	$s4, $zero
	addi.d	$s1, $sp, 26
	bstrpick.d	$s3, $s3, 30, 0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$s2, $a0, %pc_lo12(.L.str.40)
	ori	$s6, $zero, 10
	ori	$s7, $zero, 13
.LBB5_34:                               # %for.body112
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_37 Depth 2
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1000
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_49
# %bb.35:                               # %lor.lhs.false117
                                        #   in Loop: Header=BB5_34 Depth=1
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 10
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bnez	$a0, .LBB5_49
# %bb.36:                               # %for.cond.i59
                                        #   in Loop: Header=BB5_34 Depth=1
	ld.bu	$a0, $a1, 0
	beqz	$a0, .LBB5_41
.LBB5_37:                               # %for.cond.i59
                                        #   Parent Loop BB5_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s6, .LBB5_40
# %bb.38:                               # %for.cond.i59
                                        #   in Loop: Header=BB5_37 Depth=2
	beq	$a0, $s7, .LBB5_40
# %bb.39:                               # %for.inc.i64
                                        #   in Loop: Header=BB5_37 Depth=2
	addi.d	$a1, $a1, 1
	ld.bu	$a0, $a1, 0
	bnez	$a0, .LBB5_37
	b	.LBB5_41
.LBB5_40:                               # %cleanup.sink.split.i62
                                        #   in Loop: Header=BB5_34 Depth=1
	st.b	$zero, $a1, 0
.LBB5_41:                               # %pruneLine.exit66
                                        #   in Loop: Header=BB5_34 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(parseSignature)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	slli.d	$a2, $s4, 3
	stx.d	$a0, $a1, $a2
	beqz	$a0, .LBB5_50
# %bb.42:                               # %for.cond109
                                        #   in Loop: Header=BB5_34 Depth=1
	addi.d	$s4, $s4, 1
	bne	$s4, $s3, .LBB5_34
.LBB5_43:                               # %for.end143
	srai.d	$a0, $s5, 29
	stx.d	$zero, $a1, $a0
	ori	$a0, $zero, 1
	b	.LBB5_7
.LBB5_44:                               # %if.then41
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	b	.LBB5_4
.LBB5_45:                               # %if.then66
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	b	.LBB5_4
.LBB5_46:                               # %if.then80
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	b	.LBB5_4
.LBB5_47:                               # %if.then106
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	b	.LBB5_4
.LBB5_48:                               # %if.then92
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	b	.LBB5_51
.LBB5_49:                               # %if.then122
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	b	.LBB5_4
.LBB5_50:                               # %if.then135
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
.LBB5_51:                               # %cleanup
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB5_6
.Lfunc_end5:
	.size	parseConfigFile, .Lfunc_end5-parseConfigFile
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Specified entrance edge length does not match data size for node: %d\n"
	.size	.L.str, 70

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Specified edge length does not match data size for node: %d\n"
	.size	.L.str.1, 61

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"resolveNodeEdges: Outer node %d edge to non-contained node: %d\n"
	.size	.L.str.2, 64

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\t%d is type: %s (%d)\n"
	.size	.L.str.3, 22

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"interior"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"entrance"
	.size	.L.str.5, 9

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"resolveNodeEdges: Outer node %d has edge reference to undefined node: %d\n"
	.size	.L.str.6, 74

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"resolveNodeEdges: Interior node %d has edge reference to undefined node: %d\n"
	.size	.L.str.7, 77

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"r"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Could not open data file: %s (parsing.c:parseFile)\n"
	.size	.L.str.9, 52

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Functions:"
	.size	.L.str.10, 11

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\t%d functions specified\n"
	.size	.L.str.11, 25

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Functions"
	.size	.L.str.12, 10

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Malformed file, Function count not specified in first line\n"
	.size	.L.str.13, 60

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Basic blocks:"
	.size	.L.str.14, 14

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"\t%d basic blocks specified\n"
	.size	.L.str.15, 28

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Basic Blocks"
	.size	.L.str.16, 13

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"----------"
	.size	.L.str.17, 11

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"SYSTEM CALLS"
	.size	.L.str.18, 13

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Error in parseFile: Node %d undefined as an outer node\n"
	.size	.L.str.19, 56

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\t%d total System Call Map elements\n"
	.size	.L.str.20, 36

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"System Calls"
	.size	.L.str.21, 13

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Could not open %s\n"
	.size	.L.str.23, 19

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Opened %s\n\n"
	.size	.L.str.24, 12

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Pathfinder Configuration"
	.size	.L.str.25, 25

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"files"
	.size	.L.str.27, 6

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"signatures"
	.size	.L.str.30, 11

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"search type"
	.size	.L.str.33, 12

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"tree"
	.size	.L.str.34, 5

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"file "
	.size	.L.str.36, 6

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Error parsing %s"
	.size	.L.str.38, 17

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"signature "
	.size	.L.str.40, 11

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"\t...parsing complete."
	.size	.Lstr, 22

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Could not allocate graph storage. Exiting"
	.size	.Lstr.1, 42

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Could not allocate signature storage. Exiting"
	.size	.Lstr.2, 46

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Error in config file: mismatch of signature count"
	.size	.Lstr.3, 50

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Error in config file: mismatch of file count"
	.size	.Lstr.4, 45

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"No signatures to search, exiting."
	.size	.Lstr.6, 34

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"Error in config file: third line is not signature count"
	.size	.Lstr.7, 56

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"No files to parse, exiting."
	.size	.Lstr.8, 28

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"Error in config file: second line is not file count"
	.size	.Lstr.9, 52

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"Error in config file: doesn't start with \"Pathfinder Configuration\""
	.size	.Lstr.10, 68

	.section	".note.GNU-stack","",@progbits
	.addrsig
