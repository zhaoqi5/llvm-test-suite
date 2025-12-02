	.file	"990525-1.c"
	.text
	.globl	die                             # -- Begin function die
	.p2align	5
	.type	die,@function
die:                                    # @die
# %bb.0:                                # %entry
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_2
# %bb.1:                                # %if.end
	ret
.LBB0_2:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	die, .Lfunc_end0-die
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
