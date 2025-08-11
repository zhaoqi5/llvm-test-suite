	.file	"20051215-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB0_6
# %bb.1:                                # %for.body.lr.ph
	blt	$a0, $a3, .LBB0_6
# %bb.2:                                # %for.body.us.preheader
	move	$a4, $zero
	move	$a5, $zero
	move	$a3, $zero
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %if.end.us
                                        #   in Loop: Header=BB0_4 Depth=1
	mul.d	$a6, $a0, $a5
	addi.w	$a4, $a4, 1
	add.w	$a3, $a3, $a6
	beq	$a1, $a4, .LBB0_7
.LBB0_4:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a2, .LBB0_3
# %bb.5:                                # %if.then.us
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a5, $a2, 0
	mul.d	$a5, $a5, $a4
	b	.LBB0_3
.LBB0_6:
	move	$a0, $zero
	ret
.LBB0_7:                                # %for.end6
	move	$a0, $a3
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 3
	ori	$a1, $zero, 2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_2
# %bb.1:                                # %if.end
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
