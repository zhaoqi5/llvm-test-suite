	.file	"splay.c"
	.text
	.globl	find                            # -- Begin function find
	.p2align	5
	.type	find,@function
find:                                   # @find
# %bb.0:                                # %entry
	move	$a2, $a0
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a2, $a0, 32
	beqz	$a2, .LBB0_3
.LBB0_2:                                # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a2
	ld.d	$a3, $a2, 0
	blt	$a3, $a1, .LBB0_1
.LBB0_3:                                # %if.else
                                        #   in Loop: Header=BB0_2 Depth=1
	bge	$a1, $a3, .LBB0_5
# %bb.4:                                # %land.lhs.true7
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a2, $a0, 24
	bnez	$a2, .LBB0_2
.LBB0_5:                                # %return
	ret
.Lfunc_end0:
	.size	find, .Lfunc_end0-find
                                        # -- End function
	.globl	rotate                          # -- Begin function rotate
	.p2align	5
	.type	rotate,@function
rotate:                                 # @rotate
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a1, 24
	beq	$a2, $a0, .LBB1_5
# %bb.1:                                # %if.else
	ld.d	$a2, $a0, 24
	st.d	$a2, $a1, 32
	beqz	$a2, .LBB1_3
# %bb.2:                                # %if.then16
	st.d	$a1, $a2, 16
	ld.d	$a1, $a0, 16
.LBB1_3:                                # %if.end20
	st.d	$a1, $a0, 24
	ld.d	$a2, $a1, 16
	st.d	$a0, $a1, 16
	bnez	$a2, .LBB1_8
.LBB1_4:                                # %if.end38
	st.d	$a2, $a0, 16
	ret
.LBB1_5:                                # %if.then
	ld.d	$a2, $a0, 32
	st.d	$a2, $a1, 24
	beqz	$a2, .LBB1_7
# %bb.6:                                # %if.then5
	st.d	$a1, $a2, 16
	ld.d	$a1, $a0, 16
.LBB1_7:                                # %if.end
	st.d	$a1, $a0, 32
	ld.d	$a2, $a1, 16
	st.d	$a0, $a1, 16
	beqz	$a2, .LBB1_4
.LBB1_8:                                # %if.then29
	ld.d	$a1, $a2, 24
	ld.d	$a3, $a0, 16
	beq	$a1, $a3, .LBB1_10
# %bb.9:                                # %if.else35
	st.d	$a0, $a2, 32
	st.d	$a2, $a0, 16
	ret
.LBB1_10:                               # %if.then33
	st.d	$a0, $a2, 24
	st.d	$a2, $a0, 16
	ret
.Lfunc_end1:
	.size	rotate, .Lfunc_end1-rotate
                                        # -- End function
	.globl	splay                           # -- Begin function splay
	.p2align	5
	.type	splay,@function
splay:                                  # @splay
# %bb.0:                                # %entry
	ld.d	$a3, $a0, 0
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_1:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a3, $a2, 32
	beqz	$a3, .LBB2_3
.LBB2_2:                                # %tailrecurse.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a4, $a3, 0
	blt	$a4, $a1, .LBB2_1
.LBB2_3:                                # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	bge	$a1, $a4, .LBB2_5
# %bb.4:                                # %land.lhs.true7.i
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a3, $a2, 24
	bnez	$a3, .LBB2_2
.LBB2_5:                                # %find.exit
	ld.d	$a1, $a2, 16
	bnez	$a1, .LBB2_9
.LBB2_6:                                # %while.end
	st.d	$a2, $a0, 0
	ret
	.p2align	4, , 16
.LBB2_7:                                # %if.then33.i
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a2, $a1, 24
.LBB2_8:                                # %if.end33
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a1, $a2, 16
	beqz	$a1, .LBB2_6
.LBB2_9:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 16
	ld.d	$a4, $a1, 24
	beqz	$a3, .LBB2_20
# %bb.10:                               # %if.else
                                        #   in Loop: Header=BB2_9 Depth=1
	bne	$a4, $a2, .LBB2_12
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a5, $a3, 24
	beq	$a5, $a1, .LBB2_32
.LBB2_12:                               # %if.else16
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a5, $a1, 32
	bne	$a5, $a2, .LBB2_14
# %bb.13:                               # %land.lhs.true19
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a6, $a3, 32
	beq	$a6, $a1, .LBB2_37
.LBB2_14:                               # %if.else29
                                        #   in Loop: Header=BB2_9 Depth=1
	beq	$a4, $a2, .LBB2_24
# %bb.15:                               # %if.else.i140
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a3, $a2, 24
	st.d	$a3, $a1, 32
	beqz	$a3, .LBB2_17
# %bb.16:                               # %if.then16.i144
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a1, $a3, 16
	ld.d	$a1, $a2, 16
.LBB2_17:                               # %if.end20.i147
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a1, $a2, 24
	ld.d	$a3, $a1, 16
	st.d	$a2, $a1, 16
	beqz	$a3, .LBB2_27
.LBB2_18:                               # %if.then29.i151
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a1, $a3, 24
	ld.d	$a4, $a2, 16
	beq	$a1, $a4, .LBB2_31
# %bb.19:                               # %if.else35.i154
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a2, $a3, 32
	st.d	$a3, $a2, 16
	bne	$a1, $a2, .LBB2_48
	b	.LBB2_43
	.p2align	4, , 16
.LBB2_20:                               # %if.then
                                        #   in Loop: Header=BB2_9 Depth=1
	beq	$a4, $a2, .LBB2_28
# %bb.21:                               # %if.else.i23
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a3, $a2, 24
	st.d	$a3, $a1, 32
	beqz	$a3, .LBB2_23
# %bb.22:                               # %if.then16.i
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a1, $a3, 16
	ld.d	$a1, $a2, 16
.LBB2_23:                               # %if.end20.i
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a1, $a2, 24
	move	$a3, $a1
	ld.d	$a1, $a1, 16
	st.d	$a2, $a3, 16
	bnez	$a1, .LBB2_51
	b	.LBB2_8
.LBB2_24:                               # %if.then.i157
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a3, $a2, 32
	st.d	$a3, $a1, 24
	beqz	$a3, .LBB2_26
# %bb.25:                               # %if.then5.i160
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a1, $a3, 16
	ld.d	$a1, $a2, 16
.LBB2_26:                               # %if.end.i163
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a1, $a2, 32
	ld.d	$a3, $a1, 16
	st.d	$a2, $a1, 16
	bnez	$a3, .LBB2_18
.LBB2_27:                               # %if.end23.i148.rotate.exit164_crit_edge
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a1, $zero, 24
	st.d	$a3, $a2, 16
	bne	$a1, $a2, .LBB2_48
	b	.LBB2_43
.LBB2_28:                               # %if.then.i
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a3, $a2, 32
	st.d	$a3, $a1, 24
	beqz	$a3, .LBB2_30
# %bb.29:                               # %if.then5.i
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a1, $a3, 16
	ld.d	$a1, $a2, 16
.LBB2_30:                               # %if.end.i
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a1, $a2, 32
	move	$a3, $a1
	ld.d	$a1, $a1, 16
	st.d	$a2, $a3, 16
	bnez	$a1, .LBB2_51
	b	.LBB2_8
.LBB2_31:                               # %rotate.exit164.thread
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a3, $a2, 16
	b	.LBB2_43
.LBB2_32:                               # %if.then.i45
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a4, $a1, 32
	st.d	$a4, $a3, 24
	beqz	$a4, .LBB2_34
# %bb.33:                               # %if.then5.i48
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a3, $a4, 16
	ld.d	$a3, $a1, 16
.LBB2_34:                               # %if.end23.i36
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a4, $a3, 16
	st.d	$a3, $a1, 32
	st.d	$a1, $a3, 16
	beqz	$a4, .LBB2_47
# %bb.35:                               # %if.then29.i39
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a3, $a4, 24
	ld.d	$a5, $a1, 16
	beq	$a3, $a5, .LBB2_42
.LBB2_36:                               # %if.else35.i42
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a1, $a4, 32
	b	.LBB2_47
.LBB2_37:                               # %if.then25
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a6, $a3, 24
	beq	$a6, $a1, .LBB2_46
# %bb.38:                               # %if.else.i84
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a4, $a3, 32
	beqz	$a4, .LBB2_40
# %bb.39:                               # %if.then16.i88
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a3, $a4, 16
	ld.d	$a3, $a1, 16
.LBB2_40:                               # %if.end20.i91
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a3, $a1, 24
	ld.d	$a4, $a3, 16
	st.d	$a1, $a3, 16
	beqz	$a4, .LBB2_47
.LBB2_41:                               # %if.then29.i95
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a3, $a4, 24
	ld.d	$a5, $a1, 16
	bne	$a3, $a5, .LBB2_36
.LBB2_42:                               # %if.then33.i100
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a1, $a4, 24
	st.d	$a4, $a1, 16
	ld.d	$a3, $a2, 16
	ld.d	$a1, $a3, 24
	bne	$a1, $a2, .LBB2_48
	.p2align	4, , 16
.LBB2_43:                               # %if.then.i185
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a1, $a2, 32
	st.d	$a1, $a3, 24
	beqz	$a1, .LBB2_45
# %bb.44:                               # %if.then5.i188
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a3, $a1, 16
	ld.d	$a3, $a2, 16
.LBB2_45:                               # %if.end.i191
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a3, $a2, 32
	ld.d	$a1, $a3, 16
	st.d	$a2, $a3, 16
	bnez	$a1, .LBB2_51
	b	.LBB2_8
.LBB2_46:                               # %if.end.i107
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a5, $a3, 24
	st.d	$a3, $a5, 16
	ld.d	$a3, $a1, 16
	st.d	$a3, $a1, 32
	ld.d	$a4, $a3, 16
	st.d	$a1, $a3, 16
	bnez	$a4, .LBB2_41
.LBB2_47:                               # %rotate.exit52
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a4, $a1, 16
	ld.d	$a3, $a2, 16
	ld.d	$a1, $a3, 24
	beq	$a1, $a2, .LBB2_43
.LBB2_48:                               # %if.else.i168
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a1, $a2, 24
	st.d	$a1, $a3, 32
	beqz	$a1, .LBB2_50
# %bb.49:                               # %if.then16.i172
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a3, $a1, 16
	ld.d	$a3, $a2, 16
.LBB2_50:                               # %if.end20.i175
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a3, $a2, 24
	ld.d	$a1, $a3, 16
	st.d	$a2, $a3, 16
	beqz	$a1, .LBB2_8
.LBB2_51:                               # %if.then29.i
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a3, $a1, 24
	ld.d	$a4, $a2, 16
	beq	$a3, $a4, .LBB2_7
# %bb.52:                               # %if.else35.i182
                                        #   in Loop: Header=BB2_9 Depth=1
	st.d	$a2, $a1, 32
	b	.LBB2_8
.Lfunc_end2:
	.size	splay, .Lfunc_end2-splay
                                        # -- End function
	.globl	free_tree                       # -- Begin function free_tree
	.p2align	5
	.type	free_tree,@function
free_tree:                              # @free_tree
# %bb.0:                                # %entry
	beqz	$a0, .LBB3_2
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 24
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(free_tree)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB3_2:                                # %common.ret4
	ret
.Lfunc_end3:
	.size	free_tree, .Lfunc_end3-free_tree
                                        # -- End function
	.globl	create_node                     # -- Begin function create_node
	.p2align	5
	.type	create_node,@function
create_node:                            # @create_node
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_2
# %bb.1:                                # %if.end
	ori	$a1, $zero, 1
	lu32i.d	$a1, 10000
	mul.d	$a1, $fp, $a1
	srai.d	$a1, $a1, 32
	st.d	$zero, $a0, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 16
	st.d	$a1, $a0, 0
	st.d	$fp, $a0, 8
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB4_2:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	create_node, .Lfunc_end4-create_node
                                        # -- End function
	.globl	init                            # -- Begin function init
	.p2align	5
	.type	init,@function
init:                                   # @init
# %bb.0:                                # %entry
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	init, .Lfunc_end5-init
                                        # -- End function
	.globl	insert                          # -- Begin function insert
	.p2align	5
	.type	insert,@function
insert:                                 # @insert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_13
# %bb.1:                                # %create_node.exit
	move	$s0, $a0
	ori	$a0, $zero, 1
	lu32i.d	$a0, 10000
	mul.d	$a0, $s1, $a0
	srai.d	$a1, $a0, 32
	st.d	$zero, $s0, 32
	ld.d	$a0, $fp, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 16
	st.d	$a1, $s0, 0
	st.d	$s1, $s0, 8
	beqz	$a0, .LBB6_11
# %bb.2:                                # %if.then
	move	$a0, $fp
	pcaddu18i	$ra, %call36(splay)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	beq	$a1, $a2, .LBB6_12
# %bb.3:                                # %if.else
	bge	$a1, $a2, .LBB6_7
# %bb.4:                                # %if.then13
	ld.d	$a1, $a0, 24
	st.d	$a1, $s0, 24
	beqz	$a1, .LBB6_6
# %bb.5:                                # %if.then17
	st.d	$s0, $a1, 16
	ld.d	$a0, $fp, 0
.LBB6_6:                                # %if.end
	st.d	$a0, $s0, 32
	st.d	$zero, $a0, 24
	b	.LBB6_10
.LBB6_7:                                # %if.else20
	ld.d	$a1, $a0, 32
	st.d	$a1, $s0, 32
	beqz	$a1, .LBB6_9
# %bb.8:                                # %if.then25
	st.d	$s0, $a1, 16
	ld.d	$a0, $fp, 0
.LBB6_9:                                # %if.end28
	st.d	$a0, $s0, 24
	st.d	$zero, $a0, 32
.LBB6_10:                               # %if.end32
	ld.d	$a0, $fp, 0
	st.d	$s0, $a0, 16
.LBB6_11:                               # %if.end34
	st.d	$s0, $fp, 0
.LBB6_12:                               # %cleanup
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_13:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	insert, .Lfunc_end6-insert
                                        # -- End function
	.globl	delete_min                      # -- Begin function delete_min
	.p2align	5
	.type	delete_min,@function
delete_min:                             # @delete_min
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB7_4
# %bb.1:                                # %if.then
	addi.w	$a1, $zero, -1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(splay)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 32
	ld.d	$fp, $a0, 8
	st.d	$a1, $s0, 0
	beqz	$a1, .LBB7_3
# %bb.2:                                # %if.then1
	st.d	$zero, $a1, 16
.LBB7_3:                                # %if.end
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB7_5
.LBB7_4:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
                                        # implicit-def: $r22
.LBB7_5:                                # %cleanup
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	delete_min, .Lfunc_end7-delete_min
                                        # -- End function
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Can't create node"
	.size	.Lstr, 18

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"No elements in tree! [delete_min]"
	.size	.Lstr.1, 34

	.section	".note.GNU-stack","",@progbits
	.addrsig
