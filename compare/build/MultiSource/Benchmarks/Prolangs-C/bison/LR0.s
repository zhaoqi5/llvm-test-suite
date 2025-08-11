	.file	"LR0.c"
	.text
	.globl	allocate_itemsets               # -- Begin function allocate_itemsets
	.p2align	5
	.type	allocate_itemsets,@function
allocate_itemsets:                      # @allocate_itemsets
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nsyms)
	ld.d	$s1, $a0, %got_pc_lo12(nsyms)
	ld.w	$a0, $s1, 0
	slli.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ritem)
	ld.d	$a1, $a1, %got_pc_lo12(ritem)
	ld.d	$a1, $a1, 0
	ld.hu	$a2, $a1, 0
	move	$fp, $a0
	beqz	$a2, .LBB0_6
# %bb.1:                                # %while.body.preheader
	move	$a0, $zero
	addi.d	$a1, $a1, 2
	ori	$a3, $zero, 1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.hu	$a2, $a1, 0
	addi.d	$a1, $a1, 2
	beqz	$a2, .LBB0_5
.LBB0_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ext.w.h	$a4, $a2
	blt	$a4, $a3, .LBB0_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a2, $a2, 1
	ldx.h	$a4, $fp, $a2
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 1
	stx.h	$a4, $fp, $a2
	b	.LBB0_2
.LBB0_5:                                # %while.end.loopexit
	slli.w	$s0, $a0, 1
	b	.LBB0_7
.LBB0_6:
	move	$s0, $zero
.LBB0_7:                                # %while.end
	ld.w	$a0, $s1, 0
	slli.w	$a0, $a0, 3
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(kernel_base)
	st.d	$a0, $s2, %pc_lo12(kernel_base)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	pcalau12i	$a2, %pc_hi20(kernel_items)
	ori	$a3, $zero, 1
	st.d	$a0, $a2, %pc_lo12(kernel_items)
	blt	$a1, $a3, .LBB0_10
# %bb.8:                                # %for.body.lr.ph
	ld.d	$a2, $s2, %pc_lo12(kernel_base)
	move	$a3, $zero
	move	$a4, $a1
	move	$a5, $fp
	.p2align	4, , 16
.LBB0_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a6, $a5, 0
	alsl.d	$a7, $a3, $a0, 1
	st.d	$a7, $a2, 0
	add.w	$a3, $a3, $a6
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB0_9
.LBB0_10:                               # %for.end
	pcalau12i	$a0, %pc_hi20(shift_symbol)
	st.d	$fp, $a0, %pc_lo12(shift_symbol)
	slli.w	$a0, $a1, 3
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(kernel_end)
	st.d	$a0, $a1, %pc_lo12(kernel_end)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	allocate_itemsets, .Lfunc_end0-allocate_itemsets
                                        # -- End function
	.globl	allocate_storage                # -- Begin function allocate_storage
	.p2align	5
	.type	allocate_storage,@function
allocate_storage:                       # @allocate_storage
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nsyms)
	ld.d	$s1, $a0, %got_pc_lo12(nsyms)
	ld.w	$a0, $s1, 0
	slli.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ritem)
	ld.d	$a1, $a1, %got_pc_lo12(ritem)
	ld.d	$a1, $a1, 0
	ld.hu	$a2, $a1, 0
	move	$fp, $a0
	beqz	$a2, .LBB1_6
# %bb.1:                                # %while.body.i.preheader
	move	$a0, $zero
	addi.d	$a1, $a1, 2
	ori	$a3, $zero, 1
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %if.end.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.hu	$a2, $a1, 0
	addi.d	$a1, $a1, 2
	beqz	$a2, .LBB1_5
.LBB1_3:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.h	$a4, $a2
	blt	$a4, $a3, .LBB1_2
# %bb.4:                                # %if.then.i
                                        #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a2, $a2, 1
	ldx.h	$a4, $fp, $a2
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 1
	stx.h	$a4, $fp, $a2
	b	.LBB1_2
.LBB1_5:                                # %while.end.loopexit.i
	slli.w	$s0, $a0, 1
	b	.LBB1_7
.LBB1_6:
	move	$s0, $zero
.LBB1_7:                                # %while.end.i
	ld.w	$a0, $s1, 0
	slli.w	$a0, $a0, 3
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(kernel_base)
	st.d	$a0, $s2, %pc_lo12(kernel_base)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	pcalau12i	$a2, %pc_hi20(kernel_items)
	ori	$a3, $zero, 1
	st.d	$a0, $a2, %pc_lo12(kernel_items)
	blt	$a1, $a3, .LBB1_10
# %bb.8:                                # %for.body.lr.ph.i
	ld.d	$a2, $s2, %pc_lo12(kernel_base)
	move	$a3, $zero
	move	$a4, $fp
	move	$a5, $a1
	.p2align	4, , 16
.LBB1_9:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a6, $a4, 0
	alsl.d	$a7, $a3, $a0, 1
	st.d	$a7, $a2, 0
	add.w	$a3, $a3, $a6
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 2
	addi.d	$a2, $a2, 8
	bnez	$a5, .LBB1_9
.LBB1_10:                               # %allocate_itemsets.exit
	pcalau12i	$a0, %pc_hi20(shift_symbol)
	st.d	$fp, $a0, %pc_lo12(shift_symbol)
	slli.w	$a0, $a1, 3
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	pcalau12i	$a2, %pc_hi20(kernel_end)
	st.d	$a0, $a2, %pc_lo12(kernel_end)
	slli.w	$a0, $a1, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(nrules)
	ld.d	$a1, $a1, %got_pc_lo12(nrules)
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(shiftset)
	st.d	$a0, $a2, %pc_lo12(shiftset)
	ori	$a0, $zero, 2
	alsl.w	$a0, $a1, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(redset)
	st.d	$a0, $a1, %pc_lo12(redset)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3976
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(state_table)
	st.d	$a0, $a1, %pc_lo12(state_table)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	allocate_storage, .Lfunc_end1-allocate_storage
                                        # -- End function
	.globl	free_storage                    # -- Begin function free_storage
	.p2align	5
	.type	free_storage,@function
free_storage:                           # @free_storage
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(shift_symbol)
	ld.d	$a0, $a0, %pc_lo12(shift_symbol)
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %if.end
	pcalau12i	$a0, %pc_hi20(redset)
	ld.d	$a0, $a0, %pc_lo12(redset)
	beqz	$a0, .LBB2_4
# %bb.3:                                # %if.then2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %if.end3
	pcalau12i	$a0, %pc_hi20(shiftset)
	ld.d	$a0, $a0, %pc_lo12(shiftset)
	beqz	$a0, .LBB2_6
# %bb.5:                                # %if.then5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %if.end6
	pcalau12i	$a0, %pc_hi20(kernel_base)
	ld.d	$a0, $a0, %pc_lo12(kernel_base)
	beqz	$a0, .LBB2_8
# %bb.7:                                # %if.then8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %if.end9
	pcalau12i	$a0, %pc_hi20(kernel_end)
	ld.d	$a0, $a0, %pc_lo12(kernel_end)
	beqz	$a0, .LBB2_10
# %bb.9:                                # %if.then11
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_10:                               # %if.end12
	pcalau12i	$a0, %pc_hi20(kernel_items)
	ld.d	$a0, $a0, %pc_lo12(kernel_items)
	beqz	$a0, .LBB2_12
# %bb.11:                               # %if.then14
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_12:                               # %if.end15
	pcalau12i	$a0, %pc_hi20(state_table)
	ld.d	$a0, $a0, %pc_lo12(state_table)
	beqz	$a0, .LBB2_14
# %bb.13:                               # %if.then17
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB2_14:                               # %if.end18
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	free_storage, .Lfunc_end2-free_storage
                                        # -- End function
	.globl	generate_states                 # -- Begin function generate_states
	.p2align	5
	.type	generate_states,@function
generate_states:                        # @generate_states
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
	pcaddu18i	$ra, %call36(allocate_storage)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nitems)
	ld.d	$a0, $a0, %got_pc_lo12(nitems)
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(initialize_closure)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(this_state)
	st.d	$a0, $fp, %pc_lo12(this_state)
	pcalau12i	$a1, %pc_hi20(last_state)
	st.d	$a0, $a1, %pc_lo12(last_state)
	pcalau12i	$a1, %pc_hi20(first_state)
	st.d	$a0, $a1, %pc_lo12(first_state)
	pcalau12i	$a1, %pc_hi20(nstates)
	ori	$s0, $zero, 1
	st.w	$s0, $a1, %pc_lo12(nstates)
	beqz	$a0, .LBB3_64
# %bb.1:                                # %while.body.preheader
	pcalau12i	$a1, %got_pc_hi20(itemset)
	ld.d	$s7, $a1, %got_pc_lo12(itemset)
	pcalau12i	$a1, %got_pc_hi20(itemsetend)
	ld.d	$s2, $a1, %got_pc_lo12(itemsetend)
	pcalau12i	$a1, %got_pc_hi20(ritem)
	ld.d	$s3, $a1, %got_pc_lo12(ritem)
	pcalau12i	$a1, %pc_hi20(redset)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.w	$s5, $zero, -1
	pcalau12i	$a1, %got_pc_hi20(nsyms)
	ld.d	$a1, $a1, %got_pc_lo12(nsyms)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(shift_symbol)
	pcalau12i	$s4, %pc_hi20(shiftset)
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_2:                                # %append_states.exit.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	st.w	$zero, $s8, %pc_lo12(nshifts)
.LBB3_3:                                # %if.end
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $fp, %pc_lo12(this_state)
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, %pc_lo12(this_state)
	beqz	$a0, .LBB3_64
.LBB3_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #     Child Loop BB3_49 Depth 2
                                        #     Child Loop BB3_53 Depth 2
                                        #     Child Loop BB3_15 Depth 2
                                        #     Child Loop BB3_23 Depth 2
                                        #     Child Loop BB3_30 Depth 2
                                        #       Child Loop BB3_31 Depth 3
                                        #     Child Loop BB3_35 Depth 2
                                        #     Child Loop BB3_56 Depth 2
                                        #     Child Loop BB3_60 Depth 2
                                        #     Child Loop BB3_42 Depth 2
	ld.h	$a1, $a0, 20
	addi.d	$a0, $a0, 22
	pcaddu18i	$ra, %call36(closure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s2, 0
	bgeu	$a0, $a1, .LBB3_17
# %bb.5:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $s3, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(redset)
	move	$s8, $zero
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                # %for.inc.i
                                        #   in Loop: Header=BB3_7 Depth=2
	addi.d	$a0, $a0, 2
	bgeu	$a0, $a1, .LBB3_9
.LBB3_7:                                # %for.body.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a4, $a0, 0
	slli.d	$a4, $a4, 1
	ldx.h	$a4, $a2, $a4
	blt	$s5, $a4, .LBB3_6
# %bb.8:                                # %if.then.i
                                        #   in Loop: Header=BB3_7 Depth=2
	sub.d	$a4, $zero, $a4
	slli.d	$a5, $s8, 1
	addi.w	$s8, $s8, 1
	stx.h	$a4, $a3, $a5
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_9:                                # %for.end.i
                                        #   in Loop: Header=BB3_4 Depth=1
	beqz	$s8, .LBB3_17
# %bb.10:                               # %if.then6.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 14
	alsl.w	$a0, $s8, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(this_state)
	ld.h	$a1, $a1, 16
	st.h	$a1, $a0, 8
	st.h	$s8, $a0, 10
	blt	$s8, $s0, .LBB3_16
# %bb.11:                               # %iter.check63
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(redset)
	slli.d	$a1, $s8, 1
	nor	$a3, $a2, $zero
	add.d	$a1, $a1, $a2
	addi.d	$a4, $a2, 2
	sltu	$a5, $a4, $a1
	maskeqz	$a1, $a1, $a5
	masknez	$a4, $a4, $a5
	or	$a1, $a1, $a4
	add.d	$a4, $a1, $a3
	addi.d	$a1, $a0, 12
	ori	$a3, $zero, 14
	bltu	$a4, $a3, .LBB3_13
# %bb.12:                               # %vector.memcheck57
                                        #   in Loop: Header=BB3_4 Depth=1
	sub.d	$a3, $a0, $a2
	addi.d	$a3, $a3, 12
	ori	$a5, $zero, 64
	bgeu	$a3, $a5, .LBB3_44
.LBB3_13:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a4, $a2
.LBB3_14:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	alsl.d	$a2, $s8, $a2, 1
	.p2align	4, , 16
.LBB3_15:                               # %while.body.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a4, 0
	addi.d	$a5, $a4, 2
	addi.d	$a6, $a1, 2
	st.h	$a3, $a1, 0
	move	$a4, $a5
	move	$a1, $a6
	bltu	$a5, $a2, .LBB3_15
.LBB3_16:                               # %while.end.i
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a1, %pc_hi20(last_reduction)
	ld.d	$a2, $a1, %pc_lo12(last_reduction)
	sltui	$a3, $a2, 1
	masknez	$a2, $a2, $a3
	pcalau12i	$a4, %pc_hi20(first_reduction)
	addi.d	$a4, $a4, %pc_lo12(first_reduction)
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.d	$a0, $a2, 0
	st.d	$a0, $a1, %pc_lo12(last_reduction)
.LBB3_17:                               # %save_reductions.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	pcalau12i	$s1, %pc_hi20(kernel_end)
	blt	$a1, $s0, .LBB3_19
# %bb.18:                               # %for.body.lr.ph.i10
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s1, %pc_lo12(kernel_end)
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_19:                               # %for.end.i2
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $s7, 0
	ld.d	$a5, $s2, 0
	pcalau12i	$s8, %pc_hi20(nshifts)
	bgeu	$a2, $a5, .LBB3_2
# %bb.20:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a3, $s1, %pc_lo12(kernel_end)
	ld.d	$a0, $s6, %pc_lo12(shift_symbol)
	pcalau12i	$a1, %pc_hi20(kernel_base)
	ld.d	$a4, $a1, %pc_lo12(kernel_base)
	ld.d	$a6, $s3, 0
	move	$a1, $zero
	b	.LBB3_23
	.p2align	4, , 16
.LBB3_21:                               # %if.end.i
                                        #   in Loop: Header=BB3_23 Depth=2
	alsl.d	$a5, $t1, $a3, 3
	addi.d	$a6, $t0, 2
	st.d	$a6, $a5, 0
	ld.d	$a6, $s3, 0
	ld.d	$a5, $s2, 0
	bstrpick.d	$a7, $a7, 15, 0
	addi.d	$a7, $a7, 1
	st.h	$a7, $t0, 0
.LBB3_22:                               # %if.end20.i
                                        #   in Loop: Header=BB3_23 Depth=2
	addi.d	$a2, $a2, 2
	bgeu	$a2, $a5, .LBB3_26
.LBB3_23:                               # %while.body.i4
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a7, $a2, 0
	slli.d	$t0, $a7, 1
	ldx.h	$t1, $a6, $t0
	blt	$t1, $s0, .LBB3_22
# %bb.24:                               # %if.then.i7
                                        #   in Loop: Header=BB3_23 Depth=2
	slli.d	$a5, $t1, 3
	ldx.d	$t0, $a3, $a5
	bnez	$t0, .LBB3_21
# %bb.25:                               # %if.then9.i
                                        #   in Loop: Header=BB3_23 Depth=2
	ldx.d	$t0, $a4, $a5
	slli.d	$a5, $a1, 1
	addi.w	$a1, $a1, 1
	stx.h	$t1, $a0, $a5
	b	.LBB3_21
	.p2align	4, , 16
.LBB3_26:                               # %new_itemsets.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	st.w	$a1, $s8, %pc_lo12(nshifts)
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB3_33
# %bb.27:                               # %for.body.lr.ph.i13
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 1
	b	.LBB3_30
	.p2align	4, , 16
.LBB3_28:                               #   in Loop: Header=BB3_30 Depth=2
	move	$a4, $zero
.LBB3_29:                               # %while.end.i16
                                        #   in Loop: Header=BB3_30 Depth=2
	addi.w	$a4, $a4, 0
	slli.d	$a4, $a4, 1
	addi.d	$a2, $a2, 1
	stx.h	$a3, $a0, $a4
	beq	$a2, $a1, .LBB3_33
.LBB3_30:                               # %for.body.i14
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_31 Depth 3
	slli.d	$a3, $a2, 1
	ldx.h	$a3, $a0, $a3
	move	$a4, $a2
	.p2align	4, , 16
.LBB3_31:                               # %land.rhs.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a5, $a4, 0
	alsl.d	$a6, $a5, $a0, 1
	ld.h	$a7, $a6, -2
	bge	$a3, $a7, .LBB3_29
# %bb.32:                               # %while.body.i18
                                        #   in Loop: Header=BB3_31 Depth=3
	st.h	$a7, $a6, 0
	addi.d	$a4, $a4, -1
	blt	$s0, $a5, .LBB3_31
	b	.LBB3_28
	.p2align	4, , 16
.LBB3_33:                               # %for.cond16.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	blt	$a1, $s0, .LBB3_3
# %bb.34:                               # %for.body19.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$fp, $s7
	move	$s7, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB3_35:                               # %for.body19.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, %pc_lo12(shift_symbol)
	ldx.h	$a0, $a0, $s7
	pcaddu18i	$ra, %call36(get_state)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s4, %pc_lo12(shiftset)
	ld.w	$a1, $s8, %pc_lo12(nshifts)
	stx.h	$a0, $a2, $s7
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 2
	blt	$s1, $a1, .LBB3_35
# %bb.36:                               # %append_states.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s7, $fp
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	blt	$a1, $s0, .LBB3_3
# %bb.37:                               # %if.then
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 14
	alsl.w	$a0, $a1, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(this_state)
	ld.h	$a2, $a1, 16
	ld.w	$a1, $s8, %pc_lo12(nshifts)
	st.h	$a2, $a0, 8
	st.h	$a1, $a0, 10
	blt	$a1, $s0, .LBB3_43
# %bb.38:                               # %iter.check
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a3, $s4, %pc_lo12(shiftset)
	slli.d	$a2, $a1, 1
	add.d	$a2, $a2, $a3
	addi.d	$a4, $a3, 2
	sltu	$a5, $a4, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a4, $a4, $a5
	or	$a2, $a2, $a4
	nor	$a4, $a3, $zero
	add.d	$a5, $a2, $a4
	addi.d	$a2, $a0, 12
	ori	$a4, $zero, 14
	bltu	$a5, $a4, .LBB3_40
# %bb.39:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_4 Depth=1
	sub.d	$a4, $a0, $a3
	addi.d	$a4, $a4, 12
	ori	$a6, $zero, 64
	bgeu	$a4, $a6, .LBB3_46
.LBB3_40:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a5, $a3
.LBB3_41:                               # %while.body.i30.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	alsl.d	$a1, $a1, $a3, 1
	.p2align	4, , 16
.LBB3_42:                               # %while.body.i30
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a5, 0
	addi.d	$a4, $a5, 2
	addi.d	$a6, $a2, 2
	st.h	$a3, $a2, 0
	move	$a5, $a4
	move	$a2, $a6
	bltu	$a4, $a1, .LBB3_42
.LBB3_43:                               # %save_shifts.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a1, %pc_hi20(last_shift)
	ld.d	$a2, $a1, %pc_lo12(last_shift)
	sltui	$a3, $a2, 1
	masknez	$a2, $a2, $a3
	pcalau12i	$a4, %pc_hi20(first_shift)
	addi.d	$a4, $a4, %pc_lo12(first_shift)
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.d	$a0, $a2, 0
	st.d	$a0, $a1, %pc_lo12(last_shift)
	b	.LBB3_3
.LBB3_44:                               # %vector.main.loop.iter.check65
                                        #   in Loop: Header=BB3_4 Depth=1
	srli.d	$a3, $a4, 1
	addi.d	$a3, $a3, 1
	ori	$a5, $zero, 62
	bgeu	$a4, $a5, .LBB3_48
# %bb.45:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a5, $zero
	b	.LBB3_52
.LBB3_46:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_4 Depth=1
	srli.d	$a4, $a5, 1
	addi.d	$a4, $a4, 1
	ori	$a6, $zero, 62
	bgeu	$a5, $a6, .LBB3_55
# %bb.47:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
	b	.LBB3_59
.LBB3_48:                               # %vector.ph66
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a5, $a3
	bstrins.d	$a5, $zero, 4, 0
	addi.d	$a4, $a0, 44
	addi.d	$a6, $a2, 32
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_49:                               # %vector.body69
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -32
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB3_49
# %bb.50:                               # %middle.block76
                                        #   in Loop: Header=BB3_4 Depth=1
	beq	$a3, $a5, .LBB3_16
# %bb.51:                               # %vec.epilog.iter.check81
                                        #   in Loop: Header=BB3_4 Depth=1
	andi	$a4, $a3, 24
	beqz	$a4, .LBB3_62
.LBB3_52:                               # %vec.epilog.ph80
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $a3
	bstrins.d	$a6, $zero, 2, 0
	alsl.d	$a4, $a6, $a2, 1
	alsl.d	$a1, $a6, $a1, 1
	alsl.d	$a7, $a5, $a0, 1
	addi.d	$a7, $a7, 12
	alsl.d	$t0, $a5, $a2, 1
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_53:                               # %vec.epilog.vector.body86
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB3_53
# %bb.54:                               # %vec.epilog.middle.block94
                                        #   in Loop: Header=BB3_4 Depth=1
	bne	$a3, $a6, .LBB3_14
	b	.LBB3_16
.LBB3_55:                               # %vector.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $a4
	bstrins.d	$a6, $zero, 4, 0
	addi.d	$a5, $a0, 44
	addi.d	$a7, $a3, 32
	move	$t0, $a6
	.p2align	4, , 16
.LBB3_56:                               # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a5, $a5, 64
	addi.d	$t0, $t0, -32
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB3_56
# %bb.57:                               # %middle.block
                                        #   in Loop: Header=BB3_4 Depth=1
	beq	$a4, $a6, .LBB3_43
# %bb.58:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_4 Depth=1
	andi	$a5, $a4, 24
	beqz	$a5, .LBB3_63
.LBB3_59:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a7, $a4
	bstrins.d	$a7, $zero, 2, 0
	alsl.d	$a5, $a7, $a3, 1
	alsl.d	$a2, $a7, $a2, 1
	alsl.d	$t0, $a6, $a0, 1
	addi.d	$t0, $t0, 12
	alsl.d	$t1, $a6, $a3, 1
	sub.d	$a6, $a6, $a7
	.p2align	4, , 16
.LBB3_60:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, 0
	vst	$vr0, $t0, 0
	addi.d	$t0, $t0, 16
	addi.d	$a6, $a6, 8
	addi.d	$t1, $t1, 16
	bnez	$a6, .LBB3_60
# %bb.61:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_4 Depth=1
	bne	$a4, $a7, .LBB3_41
	b	.LBB3_43
.LBB3_62:                               #   in Loop: Header=BB3_4 Depth=1
	alsl.d	$a4, $a5, $a2, 1
	alsl.d	$a1, $a5, $a1, 1
	b	.LBB3_14
.LBB3_63:                               #   in Loop: Header=BB3_4 Depth=1
	alsl.d	$a5, $a6, $a3, 1
	alsl.d	$a2, $a6, $a2, 1
	b	.LBB3_41
.LBB3_64:                               # %while.end
	pcaddu18i	$ra, %call36(finalize_closure)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(free_storage)
	jirl	$ra, $ra, 0
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
	pcaddu18i	$t8, %call36(augment_automaton)
	jr	$t8
.Lfunc_end3:
	.size	generate_states, .Lfunc_end3-generate_states
                                        # -- End function
	.globl	initialize_states               # -- Begin function initialize_states
	.p2align	5
	.type	initialize_states,@function
initialize_states:                      # @initialize_states
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(this_state)
	st.d	$a0, $a1, %pc_lo12(this_state)
	pcalau12i	$a1, %pc_hi20(last_state)
	st.d	$a0, $a1, %pc_lo12(last_state)
	pcalau12i	$a1, %pc_hi20(first_state)
	st.d	$a0, $a1, %pc_lo12(first_state)
	pcalau12i	$a0, %pc_hi20(nstates)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(nstates)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	initialize_states, .Lfunc_end4-initialize_states
                                        # -- End function
	.globl	save_reductions                 # -- Begin function save_reductions
	.p2align	5
	.type	save_reductions,@function
save_reductions:                        # @save_reductions
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(itemset)
	ld.d	$a0, $a0, %got_pc_lo12(itemset)
	pcalau12i	$a1, %got_pc_hi20(itemsetend)
	ld.d	$a1, $a1, %got_pc_lo12(itemsetend)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	bgeu	$a0, $a1, .LBB5_13
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a2, %got_pc_hi20(ritem)
	ld.d	$a2, $a2, %got_pc_lo12(ritem)
	ld.d	$a2, $a2, 0
	pcalau12i	$s0, %pc_hi20(redset)
	ld.d	$a3, $s0, %pc_lo12(redset)
	move	$fp, $zero
	addi.w	$a4, $zero, -1
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.d	$a0, $a0, 2
	bgeu	$a0, $a1, .LBB5_5
.LBB5_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a0, 0
	slli.d	$a5, $a5, 1
	ldx.h	$a5, $a2, $a5
	blt	$a4, $a5, .LBB5_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB5_3 Depth=1
	sub.d	$a5, $zero, $a5
	slli.d	$a6, $fp, 1
	addi.w	$fp, $fp, 1
	stx.h	$a5, $a3, $a6
	b	.LBB5_2
.LBB5_5:                                # %for.end
	beqz	$fp, .LBB5_13
# %bb.6:                                # %if.then6
	ori	$s1, $zero, 14
	alsl.w	$a0, $fp, $s1, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(this_state)
	ld.d	$a1, $a1, %pc_lo12(this_state)
	ld.h	$a1, $a1, 16
	st.h	$a1, $a0, 8
	ori	$a1, $zero, 1
	st.h	$fp, $a0, 10
	blt	$fp, $a1, .LBB5_12
# %bb.7:                                # %iter.check
	ld.d	$a2, $s0, %pc_lo12(redset)
	slli.d	$a1, $fp, 1
	nor	$a3, $a2, $zero
	add.d	$a1, $a1, $a2
	addi.d	$a4, $a2, 2
	sltu	$a5, $a4, $a1
	maskeqz	$a1, $a1, $a5
	masknez	$a4, $a4, $a5
	or	$a1, $a1, $a4
	add.d	$a4, $a1, $a3
	addi.d	$a1, $a0, 12
	bltu	$a4, $s1, .LBB5_9
# %bb.8:                                # %vector.memcheck
	sub.d	$a3, $a0, $a2
	addi.d	$a3, $a3, 12
	ori	$a5, $zero, 64
	bgeu	$a3, $a5, .LBB5_14
.LBB5_9:
	move	$a4, $a2
.LBB5_10:                               # %while.body.preheader
	alsl.d	$a2, $fp, $a2, 1
	.p2align	4, , 16
.LBB5_11:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a4, 0
	addi.d	$a5, $a4, 2
	addi.d	$a6, $a1, 2
	st.h	$a3, $a1, 0
	move	$a4, $a5
	move	$a1, $a6
	bltu	$a5, $a2, .LBB5_11
.LBB5_12:                               # %while.end
	pcalau12i	$a1, %pc_hi20(last_reduction)
	ld.d	$a2, $a1, %pc_lo12(last_reduction)
	sltui	$a3, $a2, 1
	masknez	$a2, $a2, $a3
	pcalau12i	$a4, %pc_hi20(first_reduction)
	addi.d	$a4, $a4, %pc_lo12(first_reduction)
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.d	$a0, $a2, 0
	st.d	$a0, $a1, %pc_lo12(last_reduction)
.LBB5_13:                               # %if.end19
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB5_14:                               # %vector.main.loop.iter.check
	srli.d	$a3, $a4, 1
	ori	$a5, $zero, 62
	addi.d	$a3, $a3, 1
	bgeu	$a4, $a5, .LBB5_16
# %bb.15:
	move	$a5, $zero
	b	.LBB5_20
.LBB5_16:                               # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 4, 0
	addi.d	$a4, $a0, 44
	addi.d	$a6, $a2, 32
	move	$a7, $a5
	.p2align	4, , 16
.LBB5_17:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -32
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB5_17
# %bb.18:                               # %middle.block
	beq	$a3, $a5, .LBB5_12
# %bb.19:                               # %vec.epilog.iter.check
	andi	$a4, $a3, 24
	beqz	$a4, .LBB5_23
.LBB5_20:                               # %vec.epilog.ph
	move	$a6, $a3
	bstrins.d	$a6, $zero, 2, 0
	alsl.d	$a4, $a6, $a2, 1
	alsl.d	$a1, $a6, $a1, 1
	alsl.d	$a7, $a5, $a0, 1
	addi.d	$a7, $a7, 12
	alsl.d	$t0, $a5, $a2, 1
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB5_21:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, 0
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB5_21
# %bb.22:                               # %vec.epilog.middle.block
	bne	$a3, $a6, .LBB5_10
	b	.LBB5_12
.LBB5_23:
	alsl.d	$a4, $a5, $a2, 1
	alsl.d	$a1, $a5, $a1, 1
	b	.LBB5_10
.Lfunc_end5:
	.size	save_reductions, .Lfunc_end5-save_reductions
                                        # -- End function
	.globl	new_itemsets                    # -- Begin function new_itemsets
	.p2align	5
	.type	new_itemsets,@function
new_itemsets:                           # @new_itemsets
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nsyms)
	ld.d	$a0, $a0, %got_pc_lo12(nsyms)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	pcalau12i	$fp, %pc_hi20(kernel_end)
	blt	$a1, $a0, .LBB6_2
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a0, $fp, %pc_lo12(kernel_end)
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_2:                                # %for.end
	pcalau12i	$a0, %got_pc_hi20(itemset)
	ld.d	$a1, $a0, %got_pc_lo12(itemset)
	pcalau12i	$a0, %got_pc_hi20(itemsetend)
	ld.d	$a0, $a0, %got_pc_lo12(itemsetend)
	ld.d	$a1, $a1, 0
	ld.d	$t0, $a0, 0
	bgeu	$a1, $t0, .LBB6_9
# %bb.3:                                # %while.body.lr.ph
	ld.d	$a2, $fp, %pc_lo12(kernel_end)
	pcalau12i	$a4, %pc_hi20(shift_symbol)
	pcalau12i	$a3, %got_pc_hi20(ritem)
	ld.d	$a3, $a3, %got_pc_lo12(ritem)
	ld.d	$a4, $a4, %pc_lo12(shift_symbol)
	pcalau12i	$a5, %pc_hi20(kernel_base)
	ld.d	$a5, $a5, %pc_lo12(kernel_base)
	ld.d	$t1, $a3, 0
	move	$a6, $zero
	ori	$a7, $zero, 1
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_4:                                # %if.end
                                        #   in Loop: Header=BB6_6 Depth=1
	alsl.d	$t0, $t4, $a2, 3
	addi.d	$t1, $t3, 2
	st.d	$t1, $t0, 0
	ld.d	$t1, $a3, 0
	ld.d	$t0, $a0, 0
	bstrpick.d	$t2, $t2, 15, 0
	addi.d	$t2, $t2, 1
	st.h	$t2, $t3, 0
.LBB6_5:                                # %if.end20
                                        #   in Loop: Header=BB6_6 Depth=1
	addi.d	$a1, $a1, 2
	bgeu	$a1, $t0, .LBB6_10
.LBB6_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t2, $a1, 0
	slli.d	$t3, $t2, 1
	ldx.h	$t4, $t1, $t3
	blt	$t4, $a7, .LBB6_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB6_6 Depth=1
	slli.d	$t0, $t4, 3
	ldx.d	$t3, $a2, $t0
	bnez	$t3, .LBB6_4
# %bb.8:                                # %if.then9
                                        #   in Loop: Header=BB6_6 Depth=1
	ldx.d	$t3, $a5, $t0
	slli.d	$t0, $a6, 1
	addi.w	$a6, $a6, 1
	stx.h	$t4, $a4, $t0
	b	.LBB6_4
.LBB6_9:
	move	$a6, $zero
.LBB6_10:                               # %while.end
	pcalau12i	$a0, %pc_hi20(nshifts)
	st.w	$a6, $a0, %pc_lo12(nshifts)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	new_itemsets, .Lfunc_end6-new_itemsets
                                        # -- End function
	.globl	append_states                   # -- Begin function append_states
	.p2align	5
	.type	append_states,@function
append_states:                          # @append_states
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(nshifts)
	ld.w	$a0, $fp, %pc_lo12(nshifts)
	ori	$a1, $zero, 2
	pcalau12i	$s0, %pc_hi20(shift_symbol)
	blt	$a0, $a1, .LBB7_7
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a2, $s0, %pc_lo12(shift_symbol)
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	move	$a6, $zero
.LBB7_3:                                # %while.end
                                        #   in Loop: Header=BB7_4 Depth=1
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a2, $a6
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 1
	beq	$a4, $a0, .LBB7_7
.LBB7_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	slli.d	$a5, $a4, 1
	ldx.h	$a5, $a2, $a5
	move	$a6, $a1
	.p2align	4, , 16
.LBB7_5:                                # %land.rhs
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a6, -1
	alsl.d	$a7, $a6, $a2, 1
	ld.h	$t0, $a7, -2
	bge	$a5, $t0, .LBB7_3
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB7_5 Depth=2
	st.h	$t0, $a7, 0
	blt	$a3, $a6, .LBB7_5
	b	.LBB7_2
.LBB7_7:                                # %for.cond16.preheader
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB7_10
# %bb.8:                                # %for.body19.preheader
	move	$s1, $zero
	move	$s2, $zero
	pcalau12i	$s3, %pc_hi20(shiftset)
	.p2align	4, , 16
.LBB7_9:                                # %for.body19
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, %pc_lo12(shift_symbol)
	ldx.h	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(get_state)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(shiftset)
	ld.w	$a2, $fp, %pc_lo12(nshifts)
	stx.h	$a0, $a1, $s1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 2
	blt	$s2, $a2, .LBB7_9
.LBB7_10:                               # %for.end28
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	append_states, .Lfunc_end7-append_states
                                        # -- End function
	.globl	save_shifts                     # -- Begin function save_shifts
	.p2align	5
	.type	save_shifts,@function
save_shifts:                            # @save_shifts
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(nshifts)
	ld.w	$a0, $s0, %pc_lo12(nshifts)
	ori	$fp, $zero, 14
	alsl.w	$a0, $a0, $fp, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(this_state)
	ld.d	$a1, $a1, %pc_lo12(this_state)
	ld.h	$a2, $a1, 16
	ld.w	$a1, $s0, %pc_lo12(nshifts)
	st.h	$a2, $a0, 8
	ori	$a2, $zero, 1
	st.h	$a1, $a0, 10
	blt	$a1, $a2, .LBB8_6
# %bb.1:                                # %iter.check
	pcalau12i	$a2, %pc_hi20(shiftset)
	ld.d	$a3, $a2, %pc_lo12(shiftset)
	slli.d	$a2, $a1, 1
	add.d	$a2, $a2, $a3
	addi.d	$a4, $a3, 2
	sltu	$a5, $a4, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a4, $a4, $a5
	or	$a2, $a2, $a4
	nor	$a4, $a3, $zero
	add.d	$a5, $a2, $a4
	addi.d	$a2, $a0, 12
	bltu	$a5, $fp, .LBB8_3
# %bb.2:                                # %vector.memcheck
	sub.d	$a4, $a0, $a3
	addi.d	$a4, $a4, 12
	ori	$a6, $zero, 64
	bgeu	$a4, $a6, .LBB8_7
.LBB8_3:
	move	$a5, $a3
.LBB8_4:                                # %while.body.preheader
	alsl.d	$a1, $a1, $a3, 1
	.p2align	4, , 16
.LBB8_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a5, 0
	addi.d	$a4, $a5, 2
	addi.d	$a6, $a2, 2
	st.h	$a3, $a2, 0
	move	$a5, $a4
	move	$a2, $a6
	bltu	$a4, $a1, .LBB8_5
.LBB8_6:                                # %while.end
	pcalau12i	$a1, %pc_hi20(last_shift)
	ld.d	$a2, $a1, %pc_lo12(last_shift)
	sltui	$a3, $a2, 1
	masknez	$a2, $a2, $a3
	pcalau12i	$a4, %pc_hi20(first_shift)
	addi.d	$a4, $a4, %pc_lo12(first_shift)
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.d	$a0, $a2, 0
	st.d	$a0, $a1, %pc_lo12(last_shift)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB8_7:                                # %vector.main.loop.iter.check
	srli.d	$a4, $a5, 1
	ori	$a6, $zero, 62
	addi.d	$a4, $a4, 1
	bgeu	$a5, $a6, .LBB8_9
# %bb.8:
	move	$a6, $zero
	b	.LBB8_13
.LBB8_9:                                # %vector.ph
	move	$a6, $a4
	bstrins.d	$a6, $zero, 4, 0
	addi.d	$a5, $a0, 44
	addi.d	$a7, $a3, 32
	move	$t0, $a6
	.p2align	4, , 16
.LBB8_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a5, $a5, 64
	addi.d	$t0, $t0, -32
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB8_10
# %bb.11:                               # %middle.block
	beq	$a4, $a6, .LBB8_6
# %bb.12:                               # %vec.epilog.iter.check
	andi	$a5, $a4, 24
	beqz	$a5, .LBB8_16
.LBB8_13:                               # %vec.epilog.ph
	move	$a7, $a4
	bstrins.d	$a7, $zero, 2, 0
	alsl.d	$a5, $a7, $a3, 1
	alsl.d	$a2, $a7, $a2, 1
	alsl.d	$t0, $a6, $a0, 1
	addi.d	$t0, $t0, 12
	alsl.d	$t1, $a6, $a3, 1
	sub.d	$a6, $a6, $a7
	.p2align	4, , 16
.LBB8_14:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t1, 0
	vst	$vr0, $t0, 0
	addi.d	$t0, $t0, 16
	addi.d	$a6, $a6, 8
	addi.d	$t1, $t1, 16
	bnez	$a6, .LBB8_14
# %bb.15:                               # %vec.epilog.middle.block
	bne	$a4, $a7, .LBB8_4
	b	.LBB8_6
.LBB8_16:
	alsl.d	$a5, $a6, $a3, 1
	alsl.d	$a2, $a6, $a2, 1
	b	.LBB8_4
.Lfunc_end8:
	.size	save_shifts, .Lfunc_end8-save_shifts
                                        # -- End function
	.globl	augment_automaton               # -- Begin function augment_automaton
	.p2align	5
	.type	augment_automaton,@function
augment_automaton:                      # @augment_automaton
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
	pcalau12i	$s3, %pc_hi20(first_shift)
	ld.d	$fp, $s3, %pc_lo12(first_shift)
	pcalau12i	$s1, %pc_hi20(nstates)
	pcalau12i	$s0, %pc_hi20(last_state)
	pcalau12i	$s2, %pc_hi20(last_shift)
	beqz	$fp, .LBB9_3
# %bb.1:                                # %if.then
	ld.hu	$a0, $fp, 8
	beqz	$a0, .LBB9_7
# %bb.2:                                # %if.else126
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(first_shift)
	ld.h	$a2, $s1, %pc_lo12(nstates)
	st.d	$a1, $a0, 0
	ori	$fp, $zero, 1
	st.h	$fp, $a0, 10
	st.h	$a2, $a0, 12
	st.d	$a0, $s3, %pc_lo12(first_shift)
	b	.LBB9_4
.LBB9_3:                                # %if.else134
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s1, %pc_lo12(nstates)
	ori	$fp, $zero, 1
	st.h	$fp, $a0, 10
	st.h	$a1, $a0, 12
	st.d	$a0, $s3, %pc_lo12(first_shift)
	st.d	$a0, $s2, %pc_lo12(last_shift)
.LBB9_4:                                # %if.end140
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(start_symbol)
	ld.d	$a1, $a1, %got_pc_lo12(start_symbol)
	ld.h	$a2, $s1, %pc_lo12(nstates)
	ld.h	$a1, $a1, 0
	ld.d	$a3, $s0, %pc_lo12(last_state)
	st.h	$a2, $a0, 16
	st.h	$a1, $a0, 18
	st.d	$a0, $a3, 0
	st.d	$a0, $s0, %pc_lo12(last_state)
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(nstates)
	addi.d	$a2, $a1, 1
	st.w	$a2, $s1, %pc_lo12(nstates)
	ld.d	$a3, $s2, %pc_lo12(last_shift)
	st.h	$a1, $a0, 8
	st.h	$fp, $a0, 10
	st.h	$a2, $a0, 12
	st.d	$a0, $a3, 0
.LBB9_5:                                # %if.end140
	st.d	$a0, $s2, %pc_lo12(last_shift)
.LBB9_6:                                # %if.end140
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s1, %pc_lo12(nstates)
	ld.d	$a2, $s0, %pc_lo12(last_state)
	st.h	$a1, $a0, 16
	st.d	$a0, $a2, 0
	st.d	$a0, $s0, %pc_lo12(last_state)
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(nstates)
	addi.d	$a2, $a1, 1
	st.w	$a2, $s1, %pc_lo12(nstates)
	st.h	$a1, $a0, 8
	ld.d	$a1, $s2, %pc_lo12(last_shift)
	ori	$a3, $zero, 1
	st.h	$a3, $a0, 10
	st.h	$a2, $a0, 12
	st.d	$a0, $a1, 0
	st.d	$a0, $s2, %pc_lo12(last_shift)
	pcalau12i	$a0, %pc_hi20(final_state)
	st.w	$a2, $a0, %pc_lo12(final_state)
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(nstates)
	ld.d	$a2, $s0, %pc_lo12(last_state)
	addi.d	$a3, $a1, 1
	st.w	$a3, $s1, %pc_lo12(nstates)
	st.h	$a1, $a0, 16
	st.d	$a0, $a2, 0
	st.d	$a0, $s0, %pc_lo12(last_state)
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
.LBB9_7:                                # %if.then2
	pcalau12i	$a0, %got_pc_hi20(start_symbol)
	ld.d	$s5, $a0, %got_pc_lo12(start_symbol)
	ld.h	$a0, $fp, 10
	pcalau12i	$a1, %pc_hi20(first_state)
	ld.d	$a2, $a1, %pc_lo12(first_state)
	ld.w	$a1, $s5, 0
	.p2align	4, , 16
.LBB9_8:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a2, 0
	ld.h	$a3, $a2, 18
	bge	$a3, $a1, .LBB9_10
# %bb.9:                                # %land.rhs
                                        #   in Loop: Header=BB9_8 Depth=1
	ld.h	$a4, $a2, 16
	blt	$a4, $a0, .LBB9_8
.LBB9_10:                               # %while.end
	ld.h	$s4, $a2, 16
	bne	$a1, $a3, .LBB9_21
# %bb.11:                               # %if.then16
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB9_26
	.p2align	4, , 16
.LBB9_12:                               # %while.body24
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $fp
	ld.d	$fp, $fp, 0
	ld.h	$a0, $fp, 8
	blt	$a0, $s4, .LBB9_12
# %bb.13:                               # %while.end26
	bne	$a0, $s4, .LBB9_27
.LBB9_14:                               # %if.then31
	ld.h	$a0, $fp, 10
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.h	$a1, $fp, 10
	ld.h	$a2, $s1, %pc_lo12(nstates)
	ld.d	$a3, $fp, 0
	addi.d	$a1, $a1, 1
	st.h	$a1, $a0, 10
	st.h	$a2, $a0, 12
	ld.hu	$a1, $fp, 10
	st.d	$a3, $a0, 0
	ext.w.h	$a2, $a1
	ori	$a3, $zero, 1
	st.h	$s4, $a0, 8
	blt	$a2, $a3, .LBB9_20
# %bb.15:                               # %iter.check148
	ori	$a2, $zero, 8
	bltu	$a1, $a2, .LBB9_17
# %bb.16:                               # %vector.memcheck142
	sub.d	$a2, $fp, $a0
	addi.d	$a2, $a2, -2
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB9_43
.LBB9_17:
	move	$a2, $a1
.LBB9_18:                               # %for.body.preheader
	addi.d	$a1, $a2, 1
	alsl.d	$a3, $a2, $a0, 1
	addi.d	$a3, $a3, 12
	alsl.d	$a2, $a2, $fp, 1
	addi.d	$a2, $a2, 10
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB9_19:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a2, 0
	st.h	$a5, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, -2
	bltu	$a4, $a1, .LBB9_19
.LBB9_20:                               # %for.end
	st.d	$a0, $s3, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB9_6
.LBB9_21:                               # %if.else70
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.h	$a2, $fp, 10
	st.d	$a1, $a0, 0
	addi.d	$a1, $a2, 1
	ori	$a2, $zero, 1
	st.h	$a1, $a0, 10
	blt	$s4, $a2, .LBB9_37
# %bb.22:                               # %iter.check
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s4, $a2, .LBB9_35
# %bb.23:                               # %iter.check
	sub.d	$a2, $a0, $fp
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB9_35
# %bb.24:                               # %vector.main.loop.iter.check
	ori	$a1, $zero, 32
	bgeu	$s4, $a1, .LBB9_28
# %bb.25:
	move	$a1, $zero
	b	.LBB9_32
.LBB9_26:
	move	$a0, $zero
                                        # implicit-def: $r26
	beq	$a0, $s4, .LBB9_14
.LBB9_27:                               # %if.else
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
	ld.h	$a1, $s1, %pc_lo12(nstates)
	st.h	$s4, $a0, 8
	ori	$a2, $zero, 1
	st.h	$a2, $a0, 10
	st.h	$a1, $a0, 12
	st.d	$a0, $s3, 0
	b	.LBB9_6
.LBB9_28:                               # %vector.ph
	bstrpick.d	$a1, $s4, 14, 5
	slli.d	$a1, $a1, 5
	addi.d	$a2, $a0, 44
	addi.d	$a3, $fp, 44
	move	$a4, $a1
	.p2align	4, , 16
.LBB9_29:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -32
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB9_29
# %bb.30:                               # %middle.block
	beq	$a1, $s4, .LBB9_37
# %bb.31:                               # %vec.epilog.iter.check
	andi	$a2, $s4, 24
	beqz	$a2, .LBB9_35
.LBB9_32:                               # %vec.epilog.ph
	move	$a3, $a1
	bstrpick.d	$a1, $s4, 14, 3
	slli.d	$a1, $a1, 3
	sub.d	$a2, $a3, $a1
	slli.d	$a3, $a3, 1
	addi.d	$a4, $a3, 12
	add.d	$a3, $a0, $a4
	add.d	$a4, $fp, $a4
	.p2align	4, , 16
.LBB9_33:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB9_33
# %bb.34:                               # %vec.epilog.middle.block
	beq	$a1, $s4, .LBB9_37
.LBB9_35:                               # %for.body89.preheader
	slli.d	$a2, $a1, 1
	addi.d	$a3, $a2, 12
	add.d	$a2, $a0, $a3
	add.d	$a3, $fp, $a3
	sub.d	$a1, $s4, $a1
	.p2align	4, , 16
.LBB9_36:                               # %for.body89
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a3, 0
	st.h	$a4, $a2, 0
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 2
	bnez	$a1, .LBB9_36
.LBB9_37:                               # %for.end97
	ld.h	$a1, $s1, %pc_lo12(nstates)
	alsl.d	$a2, $s4, $a0, 1
	st.h	$a1, $a2, 12
	ld.h	$a1, $fp, 10
	bge	$s4, $a1, .LBB9_40
# %bb.38:                               # %for.body107.lr.ph
	alsl.d	$a1, $s4, $fp, 1
	addi.d	$a1, $a1, 12
	addi.d	$a2, $a2, 14
	.p2align	4, , 16
.LBB9_39:                               # %for.body107
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a1, 0
	st.h	$a3, $a2, 0
	ld.h	$a3, $fp, 10
	addi.d	$s4, $s4, 1
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 2
	blt	$s4, $a3, .LBB9_39
.LBB9_40:                               # %for.end117
	ld.d	$a1, $s2, %pc_lo12(last_shift)
	st.d	$a0, $s3, %pc_lo12(first_shift)
	bne	$a1, $fp, .LBB9_42
# %bb.41:                               # %if.then120
	st.d	$a0, $s2, %pc_lo12(last_shift)
.LBB9_42:                               # %if.then123
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s1, %pc_lo12(nstates)
	ld.h	$a2, $s5, 0
	ld.d	$a3, $s0, %pc_lo12(last_state)
	st.h	$a1, $a0, 16
	st.h	$a2, $a0, 18
	st.d	$a0, $a3, 0
	st.d	$a0, $s0, %pc_lo12(last_state)
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(nstates)
	addi.d	$a2, $a1, 1
	st.w	$a2, $s1, %pc_lo12(nstates)
	st.h	$a1, $a0, 8
	ld.d	$a1, $s2, %pc_lo12(last_shift)
	ori	$a3, $zero, 1
	st.h	$a3, $a0, 10
	st.h	$a2, $a0, 12
	st.d	$a0, $a1, 0
	b	.LBB9_5
.LBB9_43:                               # %vector.main.loop.iter.check150
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB9_48
# %bb.44:
	move	$a3, $zero
.LBB9_45:                               # %vec.epilog.ph163
	bstrpick.d	$a2, $a1, 14, 3
	slli.d	$a4, $a2, 3
	andi	$a2, $a1, 7
	sub.d	$a5, $a3, $a4
	slli.d	$a6, $a1, 1
	slli.d	$a3, $a3, 1
	sub.d	$a6, $a6, $a3
	add.d	$a3, $a6, $a0
	addi.d	$a3, $a3, -2
	add.d	$a6, $a6, $fp
	addi.d	$a6, $a6, -4
.LBB9_46:                               # %vec.epilog.vector.body169
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vst	$vr0, $a3, 0
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, -16
	addi.d	$a6, $a6, -16
	bnez	$a5, .LBB9_46
# %bb.47:                               # %vec.epilog.middle.block175
	bne	$a4, $a1, .LBB9_18
	b	.LBB9_20
.LBB9_48:                               # %vector.ph151
	bstrpick.d	$a2, $a1, 14, 4
	slli.d	$a3, $a2, 4
	alsl.d	$a2, $a1, $a0, 1
	addi.d	$a2, $a2, -18
	alsl.d	$a4, $a1, $fp, 1
	addi.d	$a4, $a4, -20
	move	$a5, $a3
.LBB9_49:                               # %vector.body154
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, 0
	xvst	$xr0, $a2, 0
	addi.d	$a5, $a5, -16
	addi.d	$a2, $a2, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB9_49
# %bb.50:                               # %middle.block159
	beq	$a3, $a1, .LBB9_20
# %bb.51:                               # %vec.epilog.iter.check164
	andi	$a2, $a1, 8
	bnez	$a2, .LBB9_45
# %bb.52:
	andi	$a2, $a1, 15
	b	.LBB9_18
.Lfunc_end9:
	.size	augment_automaton, .Lfunc_end9-augment_automaton
                                        # -- End function
	.globl	get_state                       # -- Begin function get_state
	.p2align	5
	.type	get_state,@function
get_state:                              # @get_state
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(kernel_base)
	ld.d	$a1, $s3, %pc_lo12(kernel_base)
	pcalau12i	$s4, %pc_hi20(kernel_end)
	ld.d	$a2, $s4, %pc_lo12(kernel_end)
	move	$fp, $a0
	slli.d	$s2, $a0, 3
	ldx.d	$s1, $a1, $s2
	ldx.d	$s0, $a2, $s2
	sub.d	$a0, $s0, $s1
	bgeu	$s1, $s0, .LBB10_3
# %bb.1:                                # %iter.check
	addi.d	$a1, $s1, 2
	sltu	$a2, $a1, $s0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s0, $a2
	or	$a1, $a2, $a1
	nor	$a2, $s1, $zero
	add.d	$a2, $a1, $a2
	ori	$a1, $zero, 6
	bgeu	$a2, $a1, .LBB10_4
# %bb.2:
	move	$a3, $zero
	move	$a4, $s1
	b	.LBB10_14
.LBB10_3:
	move	$a1, $zero
	b	.LBB10_16
.LBB10_4:                               # %vector.main.loop.iter.check
	srli.d	$a1, $a2, 1
	ori	$a3, $zero, 30
	addi.d	$a1, $a1, 1
	bgeu	$a2, $a3, .LBB10_6
# %bb.5:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB10_10
.LBB10_6:                               # %vector.ph
	move	$a2, $a1
	bstrins.d	$a2, $zero, 3, 0
	xvrepli.b	$xr0, 0
	addi.d	$a3, $s1, 16
	move	$a4, $a2
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB10_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vpickve2gr.h	$a5, $vr2, 0
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr4, $a5, 0
	vpickve2gr.h	$a5, $vr2, 1
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr4, $a5, 1
	vpickve2gr.h	$a5, $vr2, 2
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr4, $a5, 2
	vpickve2gr.h	$a5, $vr2, 3
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr4, $a5, 3
	vpickve2gr.h	$a5, $vr2, 4
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr4, $a5, 4
	vpickve2gr.h	$a5, $vr2, 5
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr4, $a5, 5
	vpickve2gr.h	$a5, $vr2, 6
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr4, $a5, 6
	vpickve2gr.h	$a5, $vr2, 7
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr4, $a5, 7
	vpickve2gr.h	$a5, $vr3, 0
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 0
	vpickve2gr.h	$a5, $vr3, 1
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 1
	vpickve2gr.h	$a5, $vr3, 2
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 2
	vpickve2gr.h	$a5, $vr3, 3
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 3
	vpickve2gr.h	$a5, $vr3, 4
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 4
	vpickve2gr.h	$a5, $vr3, 5
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 5
	vpickve2gr.h	$a5, $vr3, 6
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 6
	vpickve2gr.h	$a5, $vr3, 7
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 7
	xvadd.w	$xr0, $xr0, $xr4
	xvadd.w	$xr1, $xr1, $xr2
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB10_7
# %bb.8:                                # %middle.block
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a3, $xr0, 0
	beq	$a1, $a2, .LBB10_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a4, $a1, 12
	beqz	$a4, .LBB10_13
.LBB10_10:                              # %vec.epilog.ph
	move	$a5, $a1
	bstrins.d	$a5, $zero, 1, 0
	alsl.d	$a4, $a5, $s1, 1
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a3, 0
	alsl.d	$a3, $a2, $s1, 1
	sub.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB10_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	vinsgr2vr.d	$vr1, $a6, 0
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB10_11
# %bb.12:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	bne	$a1, $a5, .LBB10_14
	b	.LBB10_15
.LBB10_13:
	alsl.d	$a4, $a2, $s1, 1
	.p2align	4, , 16
.LBB10_14:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a1, $a4, 0
	addi.d	$a2, $a4, 2
	add.w	$a3, $a3, $a1
	move	$a4, $a2
	bltu	$a2, $s0, .LBB10_14
.LBB10_15:                              # %while.end.loopexit
	lu12i.w	$a1, -516494
	ori	$a1, $a1, 707
	mul.d	$a1, $a3, $a1
	srli.d	$a1, $a1, 32
	add.w	$a1, $a1, $a3
	bstrpick.d	$a2, $a1, 31, 31
	srli.d	$a1, $a1, 9
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1009
	mul.d	$a1, $a1, $a2
	sub.w	$a1, $a3, $a1
.LBB10_16:                              # %while.end
	pcalau12i	$s6, %pc_hi20(state_table)
	ld.d	$a2, $s6, %pc_lo12(state_table)
	slli.d	$s5, $a1, 3
	ldx.d	$a2, $a2, $s5
	srli.d	$s8, $a0, 1
	beqz	$a2, .LBB10_25
# %bb.17:                               # %while.cond7.preheader
	ld.d	$a0, $s3, %pc_lo12(kernel_base)
	alsl.d	$a0, $fp, $a0, 3
	addi.w	$a1, $s8, 0
	b	.LBB10_20
	.p2align	4, , 16
.LBB10_18:                              # %if.end29
                                        #   in Loop: Header=BB10_20 Depth=1
	beq	$a3, $a4, .LBB10_30
.LBB10_19:                              # %if.then31
                                        #   in Loop: Header=BB10_20 Depth=1
	ld.d	$a2, $s1, 8
	beqz	$a2, .LBB10_31
.LBB10_20:                              # %while.body9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_23 Depth 2
	move	$s1, $a2
	ld.h	$a2, $a2, 20
	bne	$a2, $a1, .LBB10_19
# %bb.21:                               # %if.then13
                                        #   in Loop: Header=BB10_20 Depth=1
	ld.d	$a3, $a0, 0
	bgeu	$a3, $s0, .LBB10_30
# %bb.22:                               # %while.body20.preheader
                                        #   in Loop: Header=BB10_20 Depth=1
	addi.d	$a2, $s1, 22
	addi.d	$a6, $a3, 2
	.p2align	4, , 16
.LBB10_23:                              # %while.body20
                                        #   Parent Loop BB10_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a3, $a6, -2
	ld.hu	$a4, $a2, 0
	bne	$a3, $a4, .LBB10_18
# %bb.24:                               # %while.body20
                                        #   in Loop: Header=BB10_23 Depth=2
	move	$a5, $a6
	addi.d	$a2, $a2, 2
	addi.d	$a6, $a6, 2
	bltu	$a5, $s0, .LBB10_23
	b	.LBB10_18
.LBB10_25:                              # %if.else39
	pcalau12i	$s7, %pc_hi20(nstates)
	ld.w	$a1, $s7, %pc_lo12(nstates)
	lu12i.w	$a2, 7
	ori	$a2, $a2, 4095
	blt	$a1, $a2, .LBB10_27
# %bb.26:                               # %if.then.i51
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(toomany)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(kernel_base)
	ld.d	$a1, $s4, %pc_lo12(kernel_end)
	ldx.d	$s1, $a0, $s2
	ldx.d	$s0, $a1, $s2
	sub.d	$a0, $s0, $s1
	srli.d	$s8, $a0, 1
.LBB10_27:                              # %if.end.i25
	bstrpick.d	$a0, $a0, 31, 1
	ori	$a1, $zero, 22
	alsl.w	$a0, $a0, $a1, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, %pc_lo12(nstates)
	st.h	$fp, $a0, 18
	st.h	$a1, $a0, 16
	st.h	$s8, $a0, 20
	bgeu	$s1, $s0, .LBB10_60
# %bb.28:                               # %iter.check136
	addi.d	$a2, $s1, 2
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s0, $a3
	or	$a2, $a3, $a2
	nor	$a3, $s1, $zero
	add.d	$a4, $a2, $a3
	ori	$a3, $zero, 14
	addi.d	$a2, $a0, 22
	bgeu	$a4, $a3, .LBB10_36
# %bb.29:
	move	$a4, $s1
	b	.LBB10_59
.LBB10_30:
	move	$a0, $s1
	b	.LBB10_64
.LBB10_31:                              # %if.else
	pcalau12i	$s0, %pc_hi20(nstates)
	ld.w	$a0, $s0, %pc_lo12(nstates)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 4095
	blt	$a0, $a1, .LBB10_33
# %bb.32:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(toomany)
	jirl	$ra, $ra, 0
.LBB10_33:                              # %if.end.i
	ld.d	$a0, $s3, %pc_lo12(kernel_base)
	ld.d	$a1, $s4, %pc_lo12(kernel_end)
	ldx.d	$s3, $a0, $s2
	ldx.d	$s2, $a1, $s2
	sub.d	$a0, $s2, $s3
	srli.d	$s4, $a0, 1
	bstrpick.d	$a0, $a0, 31, 1
	ori	$a1, $zero, 22
	alsl.w	$a0, $a0, $a1, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(nstates)
	st.h	$fp, $a0, 18
	st.h	$a1, $a0, 16
	st.h	$s4, $a0, 20
	bgeu	$s3, $s2, .LBB10_63
# %bb.34:                               # %iter.check93
	addi.d	$a2, $s3, 2
	sltu	$a3, $a2, $s2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s2, $a3
	or	$a2, $a3, $a2
	nor	$a3, $s3, $zero
	add.d	$a4, $a2, $a3
	ori	$a3, $zero, 14
	addi.d	$a2, $a0, 22
	bgeu	$a4, $a3, .LBB10_38
# %bb.35:
	move	$a4, $s3
	b	.LBB10_62
.LBB10_36:                              # %vector.memcheck130
	sub.d	$a3, $a0, $s1
	addi.d	$a3, $a3, 22
	ori	$a5, $zero, 64
	bgeu	$a3, $a5, .LBB10_40
# %bb.37:
	move	$a4, $s1
	b	.LBB10_59
.LBB10_38:                              # %vector.memcheck
	sub.d	$a3, $a0, $s3
	addi.d	$a3, $a3, 22
	ori	$a5, $zero, 64
	bgeu	$a3, $a5, .LBB10_42
# %bb.39:
	move	$a4, $s3
	b	.LBB10_62
.LBB10_40:                              # %vector.main.loop.iter.check138
	srli.d	$a3, $a4, 1
	ori	$a5, $zero, 62
	addi.d	$a3, $a3, 1
	bgeu	$a4, $a5, .LBB10_44
# %bb.41:
	move	$a5, $zero
	b	.LBB10_48
.LBB10_42:                              # %vector.main.loop.iter.check95
	srli.d	$a3, $a4, 1
	ori	$a5, $zero, 62
	addi.d	$a3, $a3, 1
	bgeu	$a4, $a5, .LBB10_51
# %bb.43:
	move	$a5, $zero
	b	.LBB10_55
.LBB10_44:                              # %vector.ph139
	move	$a5, $a3
	bstrins.d	$a5, $zero, 4, 0
	addi.d	$a4, $a0, 54
	addi.d	$a6, $s1, 32
	move	$a7, $a5
	.p2align	4, , 16
.LBB10_45:                              # %vector.body142
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -32
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB10_45
# %bb.46:                               # %middle.block149
	beq	$a3, $a5, .LBB10_60
# %bb.47:                               # %vec.epilog.iter.check154
	andi	$a4, $a3, 24
	beqz	$a4, .LBB10_58
.LBB10_48:                              # %vec.epilog.ph153
	move	$a6, $a3
	bstrins.d	$a6, $zero, 2, 0
	alsl.d	$a4, $a6, $s1, 1
	alsl.d	$a2, $a6, $a2, 1
	alsl.d	$a7, $a5, $a0, 1
	addi.d	$a7, $a7, 22
	alsl.d	$t0, $a5, $s1, 1
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB10_49:                              # %vec.epilog.vector.body159
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, 0
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB10_49
# %bb.50:                               # %vec.epilog.middle.block167
	bne	$a3, $a6, .LBB10_59
	b	.LBB10_60
.LBB10_51:                              # %vector.ph96
	move	$a5, $a3
	bstrins.d	$a5, $zero, 4, 0
	addi.d	$a4, $a0, 54
	addi.d	$a6, $s3, 32
	move	$a7, $a5
	.p2align	4, , 16
.LBB10_52:                              # %vector.body99
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -32
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB10_52
# %bb.53:                               # %middle.block106
	beq	$a3, $a5, .LBB10_63
# %bb.54:                               # %vec.epilog.iter.check111
	andi	$a4, $a3, 24
	beqz	$a4, .LBB10_61
.LBB10_55:                              # %vec.epilog.ph110
	move	$a6, $a3
	bstrins.d	$a6, $zero, 2, 0
	alsl.d	$a4, $a6, $s3, 1
	alsl.d	$a2, $a6, $a2, 1
	alsl.d	$a7, $a5, $a0, 1
	addi.d	$a7, $a7, 22
	alsl.d	$t0, $a5, $s3, 1
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB10_56:                              # %vec.epilog.vector.body116
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, 0
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB10_56
# %bb.57:                               # %vec.epilog.middle.block124
	bne	$a3, $a6, .LBB10_62
	b	.LBB10_63
.LBB10_58:
	alsl.d	$a4, $a5, $s1, 1
	alsl.d	$a2, $a5, $a2, 1
	.p2align	4, , 16
.LBB10_59:                              # %while.body.i45
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a4, 0
	addi.d	$a5, $a4, 2
	addi.d	$a6, $a2, 2
	st.h	$a3, $a2, 0
	move	$a4, $a5
	move	$a2, $a6
	bltu	$a5, $s0, .LBB10_59
.LBB10_60:                              # %new_state.exit52
	pcalau12i	$a2, %pc_hi20(last_state)
	ld.d	$a3, $a2, %pc_lo12(last_state)
	st.d	$a0, $a3, 0
	ld.d	$a3, $s6, %pc_lo12(state_table)
	st.d	$a0, $a2, %pc_lo12(last_state)
	addi.d	$a1, $a1, 1
	st.w	$a1, $s7, %pc_lo12(nstates)
	stx.d	$a0, $a3, $s5
	b	.LBB10_64
.LBB10_61:
	alsl.d	$a4, $a5, $s3, 1
	alsl.d	$a2, $a5, $a2, 1
	.p2align	4, , 16
.LBB10_62:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a4, 0
	addi.d	$a5, $a4, 2
	addi.d	$a6, $a2, 2
	st.h	$a3, $a2, 0
	move	$a4, $a5
	move	$a2, $a6
	bltu	$a5, $s2, .LBB10_62
.LBB10_63:                              # %new_state.exit
	pcalau12i	$a2, %pc_hi20(last_state)
	ld.d	$a3, $a2, %pc_lo12(last_state)
	st.d	$a0, $a3, 0
	st.d	$a0, $a2, %pc_lo12(last_state)
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, %pc_lo12(nstates)
	st.d	$a0, $s1, 8
.LBB10_64:                              # %if.end43
	ld.h	$a0, $a0, 16
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end10:
	.size	get_state, .Lfunc_end10-get_state
                                        # -- End function
	.globl	new_state                       # -- Begin function new_state
	.p2align	5
	.type	new_state,@function
new_state:                              # @new_state
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(nstates)
	ld.w	$a1, $s0, %pc_lo12(nstates)
	lu12i.w	$a2, 7
	ori	$a2, $a2, 4095
	move	$fp, $a0
	blt	$a1, $a2, .LBB11_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(toomany)
	jirl	$ra, $ra, 0
.LBB11_2:                               # %if.end
	pcalau12i	$a0, %pc_hi20(kernel_base)
	ld.d	$a0, $a0, %pc_lo12(kernel_base)
	pcalau12i	$a1, %pc_hi20(kernel_end)
	ld.d	$a1, $a1, %pc_lo12(kernel_end)
	slli.d	$a2, $fp, 3
	ldx.d	$s2, $a0, $a2
	ldx.d	$s1, $a1, $a2
	sub.d	$a0, $s1, $s2
	srli.d	$s3, $a0, 1
	bstrpick.d	$a0, $a0, 31, 1
	ori	$a1, $zero, 22
	alsl.w	$a0, $a0, $a1, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(nstates)
	st.h	$fp, $a0, 18
	st.h	$a1, $a0, 16
	st.h	$s3, $a0, 20
	bgeu	$s2, $s1, .LBB11_18
# %bb.3:                                # %iter.check
	addi.d	$a2, $s2, 2
	sltu	$a3, $a2, $s1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s1, $a3
	or	$a2, $a3, $a2
	nor	$a3, $s2, $zero
	add.d	$a4, $a2, $a3
	ori	$a3, $zero, 14
	addi.d	$a2, $a0, 22
	bgeu	$a4, $a3, .LBB11_5
# %bb.4:
	move	$a4, $s2
	b	.LBB11_17
.LBB11_5:                               # %vector.memcheck
	sub.d	$a3, $a0, $s2
	addi.d	$a3, $a3, 22
	ori	$a5, $zero, 64
	bgeu	$a3, $a5, .LBB11_7
# %bb.6:
	move	$a4, $s2
	b	.LBB11_17
.LBB11_7:                               # %vector.main.loop.iter.check
	srli.d	$a3, $a4, 1
	ori	$a5, $zero, 62
	addi.d	$a3, $a3, 1
	bgeu	$a4, $a5, .LBB11_9
# %bb.8:
	move	$a5, $zero
	b	.LBB11_13
.LBB11_9:                               # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 4, 0
	addi.d	$a4, $a0, 54
	addi.d	$a6, $s2, 32
	move	$a7, $a5
	.p2align	4, , 16
.LBB11_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -32
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB11_10
# %bb.11:                               # %middle.block
	beq	$a3, $a5, .LBB11_18
# %bb.12:                               # %vec.epilog.iter.check
	andi	$a4, $a3, 24
	beqz	$a4, .LBB11_16
.LBB11_13:                              # %vec.epilog.ph
	move	$a6, $a3
	bstrins.d	$a6, $zero, 2, 0
	alsl.d	$a4, $a6, $s2, 1
	alsl.d	$a2, $a6, $a2, 1
	alsl.d	$a7, $a5, $a0, 1
	addi.d	$a7, $a7, 22
	alsl.d	$t0, $a5, $s2, 1
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB11_14:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, 0
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB11_14
# %bb.15:                               # %vec.epilog.middle.block
	bne	$a3, $a6, .LBB11_17
	b	.LBB11_18
.LBB11_16:
	alsl.d	$a4, $a5, $s2, 1
	alsl.d	$a2, $a5, $a2, 1
	.p2align	4, , 16
.LBB11_17:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a4, 0
	addi.d	$a5, $a4, 2
	addi.d	$a6, $a2, 2
	st.h	$a3, $a2, 0
	move	$a4, $a5
	move	$a2, $a6
	bltu	$a5, $s1, .LBB11_17
.LBB11_18:                              # %while.end
	pcalau12i	$a2, %pc_hi20(last_state)
	ld.d	$a3, $a2, %pc_lo12(last_state)
	st.d	$a0, $a3, 0
	st.d	$a0, $a2, %pc_lo12(last_state)
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, %pc_lo12(nstates)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	new_state, .Lfunc_end11-new_state
                                        # -- End function
	.globl	insert_start_shift              # -- Begin function insert_start_shift
	.p2align	5
	.type	insert_start_shift,@function
insert_start_shift:                     # @insert_start_shift
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(start_symbol)
	ld.d	$a1, $a1, %got_pc_lo12(start_symbol)
	pcalau12i	$fp, %pc_hi20(nstates)
	ld.h	$a2, $fp, %pc_lo12(nstates)
	ld.h	$a1, $a1, 0
	pcalau12i	$a3, %pc_hi20(last_state)
	ld.d	$a4, $a3, %pc_lo12(last_state)
	st.h	$a2, $a0, 16
	st.h	$a1, $a0, 18
	st.d	$a0, $a4, 0
	st.d	$a0, $a3, %pc_lo12(last_state)
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(nstates)
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, %pc_lo12(nstates)
	st.h	$a1, $a0, 8
	pcalau12i	$a1, %pc_hi20(last_shift)
	ld.d	$a3, $a1, %pc_lo12(last_shift)
	ori	$a4, $zero, 1
	st.h	$a4, $a0, 10
	st.h	$a2, $a0, 12
	st.d	$a0, $a3, 0
	st.d	$a0, $a1, %pc_lo12(last_shift)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end12:
	.size	insert_start_shift, .Lfunc_end12-insert_start_shift
                                        # -- End function
	.type	kernel_base,@object             # @kernel_base
	.local	kernel_base
	.comm	kernel_base,8,8
	.type	kernel_items,@object            # @kernel_items
	.local	kernel_items
	.comm	kernel_items,8,8
	.type	shift_symbol,@object            # @shift_symbol
	.local	shift_symbol
	.comm	shift_symbol,8,8
	.type	kernel_end,@object              # @kernel_end
	.local	kernel_end
	.comm	kernel_end,8,8
	.type	shiftset,@object                # @shiftset
	.local	shiftset
	.comm	shiftset,8,8
	.type	redset,@object                  # @redset
	.local	redset
	.comm	redset,8,8
	.type	state_table,@object             # @state_table
	.local	state_table
	.comm	state_table,8,8
	.type	this_state,@object              # @this_state
	.local	this_state
	.comm	this_state,8,8
	.type	nshifts,@object                 # @nshifts
	.local	nshifts
	.comm	nshifts,4,4
	.type	nstates,@object                 # @nstates
	.bss
	.globl	nstates
	.p2align	2, 0x0
nstates:
	.word	0                               # 0x0
	.size	nstates, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"states"
	.size	.L.str, 7

	.type	last_state,@object              # @last_state
	.local	last_state
	.comm	last_state,8,8
	.type	first_state,@object             # @first_state
	.bss
	.globl	first_state
	.p2align	3, 0x0
first_state:
	.dword	0
	.size	first_state, 8

	.type	last_shift,@object              # @last_shift
	.local	last_shift
	.comm	last_shift,8,8
	.type	first_shift,@object             # @first_shift
	.globl	first_shift
	.p2align	3, 0x0
first_shift:
	.dword	0
	.size	first_shift, 8

	.type	last_reduction,@object          # @last_reduction
	.local	last_reduction
	.comm	last_reduction,8,8
	.type	first_reduction,@object         # @first_reduction
	.globl	first_reduction
	.p2align	3, 0x0
first_reduction:
	.dword	0
	.size	first_reduction, 8

	.type	final_state,@object             # @final_state
	.globl	final_state
	.p2align	2, 0x0
final_state:
	.word	0                               # 0x0
	.size	final_state, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
