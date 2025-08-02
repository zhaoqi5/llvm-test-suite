	.file	"pr53465.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_7
# %bb.1:                                # %for.body.preheader
	ld.w	$a2, $a0, 0
	beqz	$a2, .LBB0_7
# %bb.2:                                # %for.body.preheader
	ori	$a3, $zero, 1
	beq	$a1, $a3, .LBB0_7
# %bb.3:                                # %for.body.preheader18
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, -1
	.p2align	4, , 16
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	beqz	$a3, .LBB0_7
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	bge	$a2, $a3, .LBB0_8
# %bb.6:                                # %for.cond
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	move	$a2, $a3
	bnez	$a1, .LBB0_4
.LBB0_7:                                # %for.end
	ret
.LBB0_8:                                # %if.then3
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %foo.exit
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
