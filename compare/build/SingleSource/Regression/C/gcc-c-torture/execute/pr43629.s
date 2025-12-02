	.file	"pr43629.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(flag)
	ld.w	$a0, $a0, %pc_lo12(flag)
	bnez	$a0, .LBB0_2
# %bb.1:                                # %if.end4
	move	$a0, $zero
	ret
.LBB0_2:                                # %if.then3
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	flag,@object                    # @flag
	.bss
	.globl	flag
	.p2align	2, 0x0
flag:
	.word	0                               # 0x0
	.size	flag, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
