	.file	"930603-3.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:                                # %entry
	ori	$a2, $zero, 107
	beq	$a1, $a2, .LBB0_3
# %bb.1:                                # %entry
	ori	$a2, $zero, 100
	bne	$a1, $a2, .LBB0_4
# %bb.2:                                # %sw.bb
	ld.bu	$a0, $a0, 0
	srli.d	$a0, $a0, 1
	ret
.LBB0_3:                                # %sw.bb3
	ld.bu	$a0, $a0, 3
	srli.d	$a0, $a0, 4
	ret
.LBB0_4:                                # %sw.default
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
