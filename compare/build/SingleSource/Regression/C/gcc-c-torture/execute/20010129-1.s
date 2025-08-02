	.file	"20010129-1.c"
	.text
	.globl	baz1                            # -- Begin function baz1
	.p2align	5
	.type	baz1,@function
baz1:                                   # @baz1
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(baz1.l)
	ld.d	$a0, $a1, %pc_lo12(baz1.l)
	addi.d	$a2, $a0, 1
	st.d	$a2, $a1, %pc_lo12(baz1.l)
	ret
.Lfunc_end0:
	.size	baz1, .Lfunc_end0-baz1
                                        # -- End function
	.globl	baz2                            # -- Begin function baz2
	.p2align	5
	.type	baz2,@function
baz2:                                   # @baz2
# %bb.0:                                # %entry
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	baz2, .Lfunc_end1-baz2
                                        # -- End function
	.globl	baz3                            # -- Begin function baz3
	.p2align	5
	.type	baz3,@function
baz3:                                   # @baz3
# %bb.0:                                # %entry
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.end
	ori	$a0, $zero, 1
	ret
.LBB2_2:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	baz3, .Lfunc_end2-baz3
                                        # -- End function
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(baz1.l)
	ld.d	$a3, $a0, %pc_lo12(baz1.l)
	addi.d	$a4, $a3, 1
	bge	$a3, $a1, .LBB3_3
# %bb.1:                                # %if.then.lr.ph
	andi	$a5, $a2, 16
	bnez	$a5, .LBB3_4
# %bb.2:                                # %while.end.loopexit
	addi.d	$a4, $a1, 1
.LBB3_3:                                # %while.end
	st.d	$a4, $a0, %pc_lo12(baz1.l)
	move	$a0, $zero
	ret
.LBB3_4:                                # %if.then.lr.ph.split
	lu12i.w	$a5, 3
	ori	$a5, $a5, 1544
	and	$a6, $a2, $a5
	addi.d	$a5, $a1, 1
	beqz	$a6, .LBB3_6
# %bb.5:
	move	$a4, $a5
	st.d	$a4, $a0, %pc_lo12(baz1.l)
	move	$a0, $zero
	ret
.LBB3_6:                                # %if.end17.us26.peel
	pcalau12i	$a6, %pc_hi20(bar)
	ld.d	$a6, $a6, %pc_lo12(bar)
	andi	$a7, $a2, 128
	beqz	$a7, .LBB3_9
# %bb.7:                                # %if.end17.us26.peel
	lu12i.w	$a7, 4
	ori	$a7, $a7, 2
	and	$a7, $a2, $a7
	ori	$t0, $zero, 2
	beq	$a7, $t0, .LBB3_9
# %bb.8:                                # %if.end17.us26.peel
	bnez	$a6, .LBB3_16
.LBB3_9:                                # %while.cond.backedge.us29.peel
	bne	$a4, $a1, .LBB3_11
# %bb.10:
	move	$a4, $a5
	st.d	$a4, $a0, %pc_lo12(baz1.l)
	move	$a0, $zero
	ret
.LBB3_11:                               # %if.end17.us26.preheader.peel.newph
	sltui	$a4, $a6, 1
	andi	$a2, $a2, 130
	addi.d	$a2, $a2, -128
	sltu	$a2, $zero, $a2
	or	$a2, $a2, $a4
	addi.d	$a1, $a1, -1
	.p2align	4, , 16
.LBB3_12:                               # %if.end17.us26
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a2, .LBB3_15
# %bb.13:                               # %while.cond.backedge.us29
                                        #   in Loop: Header=BB3_12 Depth=1
	addi.d	$a3, $a3, 1
	bne	$a1, $a3, .LBB3_12
# %bb.14:
	move	$a4, $a5
	st.d	$a4, $a0, %pc_lo12(baz1.l)
	move	$a0, $zero
	ret
.LBB3_15:                               # %for.body.loopexit
	addi.d	$a4, $a3, 2
.LBB3_16:                               # %for.body
	st.d	$a4, $a0, %pc_lo12(baz1.l)
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	foo, .Lfunc_end3-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(bar)
	addi.d	$a1, $sp, 0
	st.d	$a1, $a0, %pc_lo12(bar)
	lu12i.w	$a0, 12
	ori	$a2, $a0, 2065
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	baz1.l,@object                  # @baz1.l
	.local	baz1.l
	.comm	baz1.l,8,8
	.type	bar,@object                     # @bar
	.bss
	.globl	bar
	.p2align	3, 0x0
bar:
	.dword	0
	.size	bar, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
