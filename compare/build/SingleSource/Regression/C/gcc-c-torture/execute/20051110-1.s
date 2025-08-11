	.file	"20051110-1.c"
	.text
	.globl	add_unwind_adjustsp             # -- Begin function add_unwind_adjustsp
	.p2align	5
	.type	add_unwind_adjustsp,@function
add_unwind_adjustsp:                    # @add_unwind_adjustsp
# %bb.0:                                # %entry
	addi.d	$a0, $a0, -516
	ori	$a1, $zero, 4
	bltu	$a0, $a1, .LBB0_3
# %bb.1:                                # %while.body.preheader
	srai.d	$a1, $a0, 2
	pcalau12i	$a0, %pc_hi20(bytes)
	addi.d	$a0, $a0, %pc_lo12(bytes)
	ori	$a2, $zero, 127
	.p2align	4, , 16
.LBB0_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a1
	srli.d	$a1, $a1, 7
	sltu	$a4, $a2, $a3
	move	$a5, $a3
	bstrins.d	$a5, $a4, 63, 7
	st.b	$a5, $a0, 0
	addi.d	$a0, $a0, 1
	bltu	$a2, $a3, .LBB0_2
.LBB0_3:                                # %while.end
	ret
.Lfunc_end0:
	.size	add_unwind_adjustsp, .Lfunc_end0-add_unwind_adjustsp
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %if.end
	pcalau12i	$a0, %pc_hi20(bytes)
	ori	$a1, $zero, 1928
	st.h	$a1, $a0, %pc_lo12(bytes)
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	bytes,@object                   # @bytes
	.bss
	.globl	bytes
bytes:
	.space	5
	.size	bytes, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
