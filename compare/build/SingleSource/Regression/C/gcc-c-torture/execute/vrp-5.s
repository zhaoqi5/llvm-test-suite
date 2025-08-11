	.file	"vrp-5.c"
	.text
	.globl	test                            # -- Begin function test
	.p2align	5
	.type	test,@function
test:                                   # @test
# %bb.0:                                # %entry
	ori	$a2, $zero, 4
	bgeu	$a2, $a0, .LBB0_4
# %bb.1:                                # %if.end
	bgeu	$a2, $a1, .LBB0_4
# %bb.2:                                # %if.end3
	sub.w	$a1, $zero, $a1
	bne	$a0, $a1, .LBB0_4
# %bb.3:                                # %if.end6
	ret
.LBB0_4:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
