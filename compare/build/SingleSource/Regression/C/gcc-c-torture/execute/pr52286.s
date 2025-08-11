	.file	"pr52286.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	move	$a0, $zero
	#APP
	#NO_APP
	addi.w	$a0, $a0, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB0_2
# %bb.1:                                # %if.end
	move	$a0, $zero
	ret
.LBB0_2:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
