	.file	"980602-2.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(t)
	ld.wu	$a1, $a0, %pc_lo12(t)
	bstrpick.d	$a2, $a1, 29, 0
	addi.d	$a3, $a1, 1
	srli.d	$a1, $a1, 30
	bstrins.d	$a3, $a1, 63, 30
	st.w	$a3, $a0, %pc_lo12(t)
	bnez	$a2, .LBB0_2
# %bb.1:                                # %if.then
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_2:                                # %if.else
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	t,@object                       # @t
	.bss
	.globl	t
	.p2align	2, 0x0
t:
	.space	4
	.size	t, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
