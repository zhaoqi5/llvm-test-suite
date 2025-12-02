	.file	"20070212-1.c"
	.text
	.globl	g                               # -- Begin function g
	.p2align	5
	.type	g,@function
g:                                      # @g
# %bb.0:                                # %entry
	st.w	$zero, $a3, 0
	beqz	$a1, .LBB0_2
# %bb.1:                                # %entry.cont
	ret
.LBB0_2:                                # %entry.then
	ld.w	$a0, $a2, 0
	ret
.Lfunc_end0:
	.size	g, .Lfunc_end0-g
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %if.end
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
