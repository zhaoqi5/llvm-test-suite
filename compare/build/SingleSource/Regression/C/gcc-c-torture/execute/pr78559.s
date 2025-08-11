	.file	"pr78559.c"
	.text
	.globl	fn2                             # -- Begin function fn2
	.p2align	5
	.type	fn2,@function
fn2:                                    # @fn2
# %bb.0:                                # %entry
	srai.d	$a2, $a1, 63
	and	$a1, $a2, $a1
	sll.w	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	ret
.Lfunc_end0:
	.size	fn2, .Lfunc_end0-fn2
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(g)
	pcalau12i	$a1, %pc_hi20(d)
	ld.w	$a1, $a1, %pc_lo12(d)
	ld.w	$a0, $a0, %pc_lo12(g)
	beqz	$a1, .LBB1_5
# %bb.1:                                # %lbl_2582.preheader
	beqz	$a0, .LBB1_4
# %bb.2:                                # %for.cond.preheader
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB1_6
.LBB1_3:                                # %if.end14
	move	$a0, $zero
	ret
	.p2align	4, , 16
.LBB1_4:                                # %lbl_2582
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB1_4
.LBB1_5:                                # %lbl_2582.us
	bgtz	$a0, .LBB1_3
.LBB1_6:                                # %if.then13
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	g,@object                       # @g
	.data
	.globl	g
	.p2align	2, 0x0
g:
	.word	20                              # 0x14
	.size	g, 4

	.type	d,@object                       # @d
	.bss
	.globl	d
	.p2align	2, 0x0
d:
	.word	0                               # 0x0
	.size	d, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
