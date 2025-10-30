	.file	"cols.c"
	.text
	.globl	sm_col_alloc                    # -- Begin function sm_col_alloc
	.p2align	5
	.type	sm_col_alloc,@function
sm_col_alloc:                           # @sm_col_alloc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 0
	st.w	$zero, $a0, 8
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 24
	vst	$vr0, $a0, 40
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	sm_col_alloc, .Lfunc_end0-sm_col_alloc
                                        # -- End function
	.globl	sm_col_free                     # -- Begin function sm_col_free
	.p2align	5
	.type	sm_col_free,@function
sm_col_free:                            # @sm_col_free
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB1_1
.LBB1_2:                                # %if.end3
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	sm_col_free, .Lfunc_end1-sm_col_free
                                        # -- End function
	.globl	sm_col_dup                      # -- Begin function sm_col_dup
	.p2align	5
	.type	sm_col_dup,@function
sm_col_dup:                             # @sm_col_dup
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$zero, $a0, 0
	st.w	$zero, $a0, 8
	ld.d	$s0, $s0, 16
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 24
	vst	$vr0, $a0, 40
	beqz	$s0, .LBB2_2
	.p2align	4, , 16
.LBB2_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sm_col_insert)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 8
	bnez	$s0, .LBB2_1
.LBB2_2:                                # %for.end
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	sm_col_dup, .Lfunc_end2-sm_col_dup
                                        # -- End function
	.globl	sm_col_insert                   # -- Begin function sm_col_insert
	.p2align	5
	.type	sm_col_insert,@function
sm_col_insert:                          # @sm_col_insert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	st.d	$zero, $a0, 40
	beqz	$a1, .LBB3_3
# %bb.1:                                # %if.else
	ld.w	$a2, $a1, 0
	bge	$a2, $s0, .LBB3_4
# %bb.2:                                # %if.then5
	st.w	$s0, $a0, 0
	st.d	$a0, $a1, 8
	ld.w	$a2, $fp, 4
	st.d	$a1, $a0, 16
	st.d	$a0, $fp, 24
	st.d	$zero, $a0, 8
	addi.d	$a1, $a2, 1
	b	.LBB3_7
.LBB3_3:                                # %if.then
	st.w	$s0, $a0, 0
	st.d	$a0, $fp, 16
	ld.w	$a1, $fp, 4
	st.d	$a0, $fp, 24
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	b	.LBB3_6
.LBB3_4:                                # %if.else15
	ld.d	$s1, $fp, 16
	ld.w	$a1, $s1, 0
	bge	$s0, $a1, .LBB3_9
# %bb.5:                                # %if.then19
	st.w	$s0, $a0, 0
	st.d	$a0, $s1, 16
	ld.w	$a1, $fp, 4
	st.d	$s1, $a0, 8
	st.d	$a0, $fp, 16
	st.d	$zero, $a0, 16
.LBB3_6:                                # %if.end55
	addi.d	$a1, $a1, 1
.LBB3_7:                                # %if.end55
	st.w	$a1, $fp, 4
.LBB3_8:                                # %if.end55
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_9:                                # %for.cond.preheader
	bge	$a1, $s0, .LBB3_13
	.p2align	4, , 16
.LBB3_10:                               # %for.inc
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 8
	ld.w	$a1, $s1, 0
	blt	$a1, $s0, .LBB3_10
# %bb.11:                               # %for.end
	bge	$s0, $a1, .LBB3_13
# %bb.12:                               # %if.then36
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a1, 8
	st.w	$s0, $a0, 0
	st.d	$a0, $a2, 16
	ld.w	$a3, $fp, 4
	st.d	$a2, $a0, 8
	st.d	$a0, $a1, 8
	st.d	$a1, $a0, 16
	addi.d	$a1, $a3, 1
	b	.LBB3_7
.LBB3_13:                               # %if.end50
	beq	$a0, $s1, .LBB3_15
# %bb.14:                               # %if.then53
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_15:                               # %if.end55
	move	$a0, $s1
	b	.LBB3_8
.Lfunc_end3:
	.size	sm_col_insert, .Lfunc_end3-sm_col_insert
                                        # -- End function
	.globl	sm_col_remove                   # -- Begin function sm_col_remove
	.p2align	5
	.type	sm_col_remove,@function
sm_col_remove:                          # @sm_col_remove
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 16
	beqz	$a2, .LBB4_7
	.p2align	4, , 16
.LBB4_1:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	bge	$a3, $a1, .LBB4_3
# %bb.2:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a2, $a2, 8
	bnez	$a2, .LBB4_1
	b	.LBB4_7
.LBB4_3:                                # %land.lhs.true
	bne	$a3, $a1, .LBB4_7
# %bb.4:                                # %if.then
	ld.d	$a1, $a2, 16
	ld.d	$a3, $a2, 8
	beqz	$a1, .LBB4_8
# %bb.5:                                # %if.else
	st.d	$a3, $a1, 8
	beqz	$a3, .LBB4_9
.LBB4_6:                                # %if.else16
	st.d	$a1, $a3, 16
	b	.LBB4_10
.LBB4_7:                                # %if.end23
	ret
.LBB4_8:                                # %if.then6
	st.d	$a3, $a0, 16
	bnez	$a3, .LBB4_6
.LBB4_9:                                # %if.then14
	st.d	$a1, $a0, 24
.LBB4_10:                               # %if.end20
	ld.w	$a1, $a0, 4
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 4
	move	$a0, $a2
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end4:
	.size	sm_col_remove, .Lfunc_end4-sm_col_remove
                                        # -- End function
	.globl	sm_col_find                     # -- Begin function sm_col_find
	.p2align	5
	.type	sm_col_find,@function
sm_col_find:                            # @sm_col_find
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB5_4
	.p2align	4, , 16
.LBB5_1:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	bge	$a2, $a1, .LBB5_3
# %bb.2:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a0, $a0, 8
	bnez	$a0, .LBB5_1
	b	.LBB5_4
.LBB5_3:                                # %land.lhs.true
	beq	$a2, $a1, .LBB5_5
.LBB5_4:                                # %if.else
	move	$a0, $zero
.LBB5_5:                                # %cleanup
	ret
.Lfunc_end5:
	.size	sm_col_find, .Lfunc_end5-sm_col_find
                                        # -- End function
	.globl	sm_col_contains                 # -- Begin function sm_col_contains
	.p2align	5
	.type	sm_col_contains,@function
sm_col_contains:                        # @sm_col_contains
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 16
	ori	$a0, $zero, 1
	beqz	$a2, .LBB6_7
# %bb.1:                                # %while.body.preheader
	addi.d	$a1, $a1, 16
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %if.end12
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$a1, $a1, 8
	beqz	$a2, .LBB6_7
.LBB6_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB6_8
# %bb.4:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a3, $a2, 0
	ld.w	$a4, $a1, 0
	blt	$a3, $a4, .LBB6_8
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB6_3 Depth=1
	bne	$a3, $a4, .LBB6_2
# %bb.6:                                # %if.then8
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a2, $a2, 8
	b	.LBB6_2
.LBB6_7:                                # %cleanup
	ret
.LBB6_8:
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	sm_col_contains, .Lfunc_end6-sm_col_contains
                                        # -- End function
	.globl	sm_col_intersects               # -- Begin function sm_col_intersects
	.p2align	5
	.type	sm_col_intersects,@function
sm_col_intersects:                      # @sm_col_intersects
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 16
	move	$a0, $zero
	beqz	$a2, .LBB7_9
# %bb.1:                                # %entry
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB7_9
.LBB7_2:                                # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	ld.w	$a0, $a2, 0
	.p2align	4, , 16
.LBB7_3:                                # %for.cond
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	blt	$a0, $a3, .LBB7_6
# %bb.4:                                # %if.else
                                        #   in Loop: Header=BB7_3 Depth=2
	bge	$a3, $a0, .LBB7_7
# %bb.5:                                # %if.then12
                                        #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a1, $a1, 8
	bnez	$a1, .LBB7_3
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_6:                                # %if.then5
                                        #   in Loop: Header=BB7_2 Depth=1
	ld.d	$a2, $a2, 8
	move	$a0, $zero
	bnez	$a2, .LBB7_2
	b	.LBB7_9
.LBB7_7:
	ori	$a0, $zero, 1
	ret
.LBB7_8:
	move	$a0, $zero
.LBB7_9:                                # %cleanup
	ret
.Lfunc_end7:
	.size	sm_col_intersects, .Lfunc_end7-sm_col_intersects
                                        # -- End function
	.globl	sm_col_compare                  # -- Begin function sm_col_compare
	.p2align	5
	.type	sm_col_compare,@function
sm_col_compare:                         # @sm_col_compare
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	sltu	$a2, $zero, $a0
	sltu	$a3, $zero, $a1
	beqz	$a0, .LBB8_5
# %bb.1:                                # %entry
	beqz	$a1, .LBB8_5
	.p2align	4, , 16
.LBB8_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a1, 0
	bne	$a2, $a3, .LBB8_6
# %bb.3:                                # %if.end
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	sltu	$a2, $zero, $a0
	sltu	$a3, $zero, $a1
	beqz	$a0, .LBB8_5
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB8_2 Depth=1
	bnez	$a1, .LBB8_2
.LBB8_5:                                # %while.end
	sub.d	$a0, $zero, $a3
	ori	$a1, $zero, 1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	ret
.LBB8_6:                                # %if.then
	sub.w	$a0, $a2, $a3
	ret
.Lfunc_end8:
	.size	sm_col_compare, .Lfunc_end8-sm_col_compare
                                        # -- End function
	.globl	sm_col_and                      # -- Begin function sm_col_and
	.p2align	5
	.type	sm_col_and,@function
sm_col_and:                             # @sm_col_and
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 0
	st.w	$zero, $a0, 8
	ld.d	$s0, $s0, 16
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 24
	vst	$vr0, $a0, 40
	beqz	$s0, .LBB9_9
# %bb.1:                                # %entry
	ld.d	$s1, $fp, 16
	beqz	$s1, .LBB9_9
.LBB9_2:                                # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	ld.w	$a1, $s0, 0
	.p2align	4, , 16
.LBB9_3:                                # %for.cond
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $s1, 0
	blt	$a1, $a2, .LBB9_6
# %bb.4:                                # %if.else
                                        #   in Loop: Header=BB9_3 Depth=2
	bge	$a2, $a1, .LBB9_7
# %bb.5:                                # %if.then12
                                        #   in Loop: Header=BB9_3 Depth=2
	ld.d	$s1, $s1, 8
	bnez	$s1, .LBB9_3
	b	.LBB9_9
	.p2align	4, , 16
.LBB9_6:                                # %if.then5
                                        #   in Loop: Header=BB9_2 Depth=1
	ld.d	$s0, $s0, 8
	bnez	$s0, .LBB9_2
	b	.LBB9_9
	.p2align	4, , 16
.LBB9_7:                                # %if.else17
                                        #   in Loop: Header=BB9_2 Depth=1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(sm_col_insert)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s0, $s0, 8
	beqz	$s0, .LBB9_9
# %bb.8:                                # %if.end23
                                        #   in Loop: Header=BB9_2 Depth=1
	ld.d	$s1, $s1, 8
	bnez	$s1, .LBB9_2
.LBB9_9:                                # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	sm_col_and, .Lfunc_end9-sm_col_and
                                        # -- End function
	.globl	sm_col_hash                     # -- Begin function sm_col_hash
	.p2align	5
	.type	sm_col_hash,@function
sm_col_hash:                            # @sm_col_hash
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 16
	beqz	$a2, .LBB10_4
# %bb.1:                                # %for.body.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	ld.d	$a2, $a2, 8
	alsl.d	$a0, $a0, $a0, 4
	add.w	$a0, $a3, $a0
	mod.w	$a0, $a0, $a1
	bnez	$a2, .LBB10_2
# %bb.3:                                # %for.end
	ret
.LBB10_4:
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	sm_col_hash, .Lfunc_end10-sm_col_hash
                                        # -- End function
	.globl	sm_col_remove_element           # -- Begin function sm_col_remove_element
	.p2align	5
	.type	sm_col_remove_element,@function
sm_col_remove_element:                  # @sm_col_remove_element
# %bb.0:                                # %entry
	ld.d	$a2, $a1, 16
	ld.d	$a3, $a1, 8
	beqz	$a2, .LBB11_3
# %bb.1:                                # %if.else
	st.d	$a3, $a2, 8
	beqz	$a3, .LBB11_4
.LBB11_2:                               # %if.else8
	st.d	$a2, $a3, 16
	b	.LBB11_5
.LBB11_3:                               # %if.then
	st.d	$a3, $a0, 16
	bnez	$a3, .LBB11_2
.LBB11_4:                               # %if.then6
	st.d	$a2, $a0, 24
.LBB11_5:                               # %if.end14
	ld.w	$a2, $a0, 4
	addi.d	$a2, $a2, -1
	st.w	$a2, $a0, 4
	move	$a0, $a1
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end11:
	.size	sm_col_remove_element, .Lfunc_end11-sm_col_remove_element
                                        # -- End function
	.globl	sm_col_print                    # -- Begin function sm_col_print
	.p2align	5
	.type	sm_col_print,@function
sm_col_print:                           # @sm_col_print
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s1, $a1, 16
	beqz	$s1, .LBB12_3
# %bb.1:                                # %for.body.preheader
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	.p2align	4, , 16
.LBB12_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s1, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 8
	bnez	$s1, .LBB12_2
.LBB12_3:                               # %for.end
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	sm_col_print, .Lfunc_end12-sm_col_print
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %d"
	.size	.L.str, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
