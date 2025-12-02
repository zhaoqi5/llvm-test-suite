	.file	"960218-1.c"
	.text
	.globl	g                               # -- Begin function g
	.p2align	5
	.type	g,@function
g:                                      # @g
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(glob)
	st.w	$a0, $a1, %pc_lo12(glob)
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	g, .Lfunc_end0-g
                                        # -- End function
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:                                # %entry
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB1_2
# %bb.1:                                # %while.cond.while.end_crit_edge
	nor	$a0, $a0, $zero
	pcalau12i	$a1, %pc_hi20(glob)
	st.w	$a0, $a1, %pc_lo12(glob)
.LBB1_2:                                # %while.end
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	f, .Lfunc_end1-f
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %if.end
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(glob)
	addi.w	$a1, $zero, -4
	lu32i.d	$a1, 0
	st.w	$a1, $a0, %pc_lo12(glob)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	glob,@object                    # @glob
	.bss
	.globl	glob
	.p2align	2, 0x0
glob:
	.word	0                               # 0x0
	.size	glob, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
