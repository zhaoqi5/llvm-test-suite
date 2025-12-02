	.file	"20010604-1.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:                                # %entry
	beqz	$a3, .LBB0_5
# %bb.1:                                # %entry
	beqz	$a4, .LBB0_5
# %bb.2:                                # %entry
	beqz	$a5, .LBB0_5
# %bb.3:                                # %entry
	ori	$a3, $zero, 1
	bne	$a6, $a3, .LBB0_5
# %bb.4:                                # %if.end
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	ret
.LBB0_5:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %if.end
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
