	.file	"pr88714.c"
	.text
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:                                # %entry
	beqz	$a3, .LBB0_4
# %bb.1:                                # %entry
	addi.w	$a4, $zero, -1
	bne	$a3, $a4, .LBB0_8
# %bb.2:                                # %if.then
	bnez	$a0, .LBB0_8
# %bb.3:                                # %if.then
	or	$a0, $a2, $a1
	beqz	$a0, .LBB0_7
	b	.LBB0_8
.LBB0_4:                                # %lor.lhs.false7
	ori	$a3, $zero, 12
	bne	$a2, $a3, .LBB0_8
# %bb.5:                                # %lor.lhs.false7
	bnez	$a1, .LBB0_8
# %bb.6:                                # %lor.lhs.false7
	pcalau12i	$a1, %pc_hi20(t)
	ld.d	$a1, $a1, %pc_lo12(t)
	ld.d	$a1, $a1, 16
	bne	$a0, $a1, .LBB0_8
.LBB0_7:                                # %if.end15
	ret
.LBB0_8:                                # %if.then5
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	bar, .Lfunc_end0-bar
                                        # -- End function
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	pcalau12i	$a4, %pc_hi20(o)
	ld.d	$a4, $a4, %pc_lo12(o)
	st.w	$a3, $a4, 0
	st.d	$a2, $a0, 16
	ld.d	$a2, $a1, 16
	ld.w	$a0, $a1, 8
	beqz	$a2, .LBB1_2
# %bb.1:                                # %if.then3
	ld.w	$a2, $a2, 0
	add.w	$a0, $a2, $a0
	st.w	$a0, $a1, 8
.LBB1_2:                                # %if.end6
	ori	$a1, $zero, 12
	bne	$a0, $a1, .LBB1_4
# %bb.3:                                # %bar.exit
	ret
.LBB1_4:                                # %if.then13.i
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	foo, .Lfunc_end1-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %if.end
	addi.d	$sp, $sp, -48
	addi.d	$a0, $sp, 40
	pcalau12i	$a1, %pc_hi20(o)
	st.d	$a0, $a1, %pc_lo12(o)
	pcalau12i	$a0, %pc_hi20(t)
	addi.d	$a1, $sp, 8
	st.d	$a1, $a0, %pc_lo12(t)
	move	$a0, $zero
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	t,@object                       # @t
	.bss
	.globl	t
	.p2align	3, 0x0
t:
	.dword	0
	.size	t, 8

	.type	o,@object                       # @o
	.globl	o
	.p2align	3, 0x0
o:
	.dword	0
	.size	o, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
