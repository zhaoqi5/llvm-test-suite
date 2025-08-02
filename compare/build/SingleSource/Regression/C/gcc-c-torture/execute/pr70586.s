	.file	"pr70586.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	beqz	$a1, .LBB0_3
# %bb.1:                                # %lor.lhs.false
	beqz	$a0, .LBB0_4
# %bb.2:                                # %lor.lhs.false
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_4
.LBB0_3:                                # %cond.end
	ret
.LBB0_4:                                # %cond.false
	mod.w	$a0, $a0, $a1
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(c)
	ld.h	$a1, $a0, %pc_lo12(c)
	pcalau12i	$a4, %pc_hi20(f)
	ld.w	$a5, $a4, %pc_lo12(f)
	bstrpick.d	$a2, $a1, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	move	$a3, $a1
	beqz	$a5, .LBB1_5
# %bb.1:                                # %lor.lhs.false.i.i
	beqz	$a2, .LBB1_4
# %bb.2:                                # %lor.lhs.false.i.i
	ori	$a3, $zero, 1
	bne	$a5, $a3, .LBB1_4
# %bb.3:                                # %foo.exit.thread.i
	pcalau12i	$a3, %pc_hi20(d)
	ld.hu	$a3, $a3, %pc_lo12(d)
	srli.d	$a5, $a3, 15
	add.d	$a5, $a3, $a5
	bstrpick.d	$a5, $a5, 15, 1
	slli.d	$a5, $a5, 1
	sub.d	$a3, $a3, $a5
	ext.w.h	$a3, $a3
	st.w	$a3, $a4, %pc_lo12(f)
	move	$a3, $a1
	b	.LBB1_6
.LBB1_4:                                # %cond.false.i.i
	mod.w	$a3, $a1, $a5
.LBB1_5:                                # %foo.exit.i
	pcalau12i	$a5, %pc_hi20(d)
	ld.hu	$a5, $a5, %pc_lo12(d)
	srli.d	$a6, $a5, 15
	add.d	$a6, $a5, $a6
	bstrpick.d	$a6, $a6, 15, 1
	slli.d	$a6, $a6, 1
	sub.d	$a5, $a5, $a6
	ext.w.h	$a5, $a5
	st.w	$a5, $a4, %pc_lo12(f)
	beqz	$a2, .LBB1_9
.LBB1_6:                                # %lor.lhs.false.i8.i
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB1_8
# %bb.7:                                # %lor.lhs.false.i8.i
	bnez	$a3, .LBB1_9
.LBB1_8:                                # %cond.false.i30.i
	mod.w	$a3, $a3, $a1
.LBB1_9:                                # %bar.exit
	ori	$a1, $zero, 5
	slt	$a1, $a1, $a3
	st.h	$a1, $a0, %pc_lo12(c)
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	a,@object                       # @a
	.bss
	.globl	a
	.p2align	2, 0x0
a:
	.word	0                               # 0x0
	.size	a, 4

	.type	e,@object                       # @e
	.globl	e
	.p2align	2, 0x0
e:
	.word	0                               # 0x0
	.size	e, 4

	.type	f,@object                       # @f
	.globl	f
	.p2align	2, 0x0
f:
	.word	0                               # 0x0
	.size	f, 4

	.type	b,@object                       # @b
	.globl	b
	.p2align	1, 0x0
b:
	.half	0                               # 0x0
	.size	b, 2

	.type	c,@object                       # @c
	.globl	c
	.p2align	1, 0x0
c:
	.half	0                               # 0x0
	.size	c, 2

	.type	d,@object                       # @d
	.globl	d
	.p2align	1, 0x0
d:
	.half	0                               # 0x0
	.size	d, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
