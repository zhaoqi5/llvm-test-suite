	.file	"20000815-1.c"
	.text
	.globl	invalidate_memory               # -- Begin function invalidate_memory
	.p2align	5
	.type	invalidate_memory,@function
invalidate_memory:                      # @invalidate_memory
# %bb.0:                                # %entry
	ld.b	$a0, $a0, 0
	andi	$a1, $a0, 8
	bnez	$a1, .LBB0_3
# %bb.1:                                # %entry.split.us
	andi	$a0, $a0, 4
	bnez	$a0, .LBB0_8
.LBB0_2:                                # %for.end16
	ret
.LBB0_3:                                # %for.body.preheader
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(table)
	addi.d	$a1, $a1, %pc_lo12(table)
	ori	$a2, $zero, 31
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %for.inc15
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a2, .LBB0_2
.LBB0_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	slli.d	$a3, $a0, 3
	ldx.d	$a3, $a1, $a3
	beqz	$a3, .LBB0_4
	.p2align	4, , 16
.LBB0_6:                                # %for.body6
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $a3, 64
	bnez	$a4, .LBB0_14
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a3, $a3, 8
	bnez	$a3, .LBB0_6
	b	.LBB0_4
.LBB0_8:                                # %for.body.us.preheader
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(table)
	addi.d	$a1, $a1, %pc_lo12(table)
	ori	$a2, $zero, 31
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %for.inc15.us
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a2, .LBB0_2
.LBB0_10:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	slli.d	$a3, $a0, 3
	ldx.d	$a3, $a1, $a3
	bnez	$a3, .LBB0_12
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_11:                               # %for.inc.us.us19
                                        #   in Loop: Header=BB0_12 Depth=2
	move	$a3, $a4
	beqz	$a4, .LBB0_9
.LBB0_12:                               # %for.body6.us.us13
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a3, 64
	ld.d	$a4, $a3, 8
	beqz	$a5, .LBB0_11
# %bb.13:                               # %land.lhs.true.us.us18
                                        #   in Loop: Header=BB0_12 Depth=2
	ld.bu	$a3, $a3, 65
	beqz	$a3, .LBB0_11
.LBB0_14:                               # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	invalidate_memory, .Lfunc_end0-invalidate_memory
                                        # -- End function
	.globl	cse_rtx_addr_varies_p           # -- Begin function cse_rtx_addr_varies_p
	.p2align	5
	.type	cse_rtx_addr_varies_p,@function
cse_rtx_addr_varies_p:                  # @cse_rtx_addr_varies_p
# %bb.0:                                # %entry
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	cse_rtx_addr_varies_p, .Lfunc_end1-cse_rtx_addr_varies_p
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	remove_from_table               # -- Begin function remove_from_table
	.p2align	5
	.type	remove_from_table,@function
remove_from_table:                      # @remove_from_table
# %bb.0:                                # %entry
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	remove_from_table, .Lfunc_end2-remove_from_table
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry.split.us.i
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 72
	addi.d	$fp, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $sp, 72
	pcalau12i	$a1, %pc_hi20(table)
	addi.d	$a1, $a1, %pc_lo12(table)
	st.d	$fp, $a1, 0
	ori	$a2, $zero, 31
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %for.inc15.us.i
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a2, .LBB3_7
.LBB3_2:                                # %for.body.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	slli.d	$a3, $a0, 3
	ldx.d	$a3, $a1, $a3
	bnez	$a3, .LBB3_4
	b	.LBB3_1
	.p2align	4, , 16
.LBB3_3:                                # %for.inc.us.us19.i
                                        #   in Loop: Header=BB3_4 Depth=2
	move	$a3, $a4
	beqz	$a4, .LBB3_1
.LBB3_4:                                # %for.body6.us.us13.i
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a3, 64
	ld.d	$a4, $a3, 8
	beqz	$a5, .LBB3_3
# %bb.5:                                # %land.lhs.true.us.us18.i
                                        #   in Loop: Header=BB3_4 Depth=2
	ld.bu	$a3, $a3, 65
	beqz	$a3, .LBB3_3
# %bb.6:                                # %if.then.i
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB3_7:                                # %invalidate_memory.exit
	move	$a0, $zero
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.type	table,@object                   # @table
	.local	table
	.comm	table,256,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
