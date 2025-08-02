	.file	"pr77766.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(f)
	ld.w	$a1, $a0, %pc_lo12(f)
	beqz	$a1, .LBB0_6
# %bb.1:                                # %for.cond1.preheader.lr.ph
	pcalau12i	$a1, %pc_hi20(d)
	ld.h	$a2, $a1, %pc_lo12(d)
	pcalau12i	$a1, %pc_hi20(j)
	ld.w	$a3, $a1, %pc_lo12(j)
	pcalau12i	$a1, %pc_hi20(a)
	ld.b	$a1, $a1, %pc_lo12(a)
	blez	$a2, .LBB0_3
# %bb.2:                                # %for.cond1.preheader.lr.ph.split
	sltui	$a2, $a3, 1
	st.w	$a1, $a0, %pc_lo12(f)
	ori	$a0, $zero, 33
	maskeqz	$a0, $a0, $a2
	pcalau12i	$a1, %pc_hi20(g)
	st.w	$a0, $a1, %pc_lo12(g)
	pcalau12i	$a0, %pc_hi20(e)
	st.w	$zero, $a0, %pc_lo12(e)
	move	$a0, $zero
	ret
.LBB0_3:                                # %for.cond1.preheader.lr.ph.split.us
	andi	$a2, $a1, 255
	pcalau12i	$a4, %pc_hi20(b)
	ld.h	$a4, $a4, %pc_lo12(b)
	sltui	$a5, $a3, 1
	pcalau12i	$a3, %pc_hi20(c)
	addi.d	$a3, $a3, %pc_lo12(c)
	ldx.bu	$a3, $a3, $a4
	ori	$a4, $zero, 33
	maskeqz	$a5, $a4, $a5
	pcalau12i	$a4, %pc_hi20(g)
	.p2align	4, , 16
.LBB0_4:                                # %for.cond1.preheader.us
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a3, .LBB0_7
# %bb.5:                                # %while.cond.us.us.us.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$a5, $a4, %pc_lo12(g)
	st.w	$a1, $a0, %pc_lo12(f)
	bnez	$a2, .LBB0_4
.LBB0_6:                                # %for.cond18
	pcalau12i	$a0, %pc_hi20(e)
	st.w	$zero, $a0, %pc_lo12(e)
	move	$a0, $zero
	ret
.LBB0_7:                                # %while.body.preheader.split.split.us
	st.w	$zero, $a4, %pc_lo12(g)
	.p2align	4, , 16
.LBB0_8:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB0_8
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	d,@object                       # @d
	.data
	.globl	d
	.p2align	1, 0x0
d:
	.half	5                               # 0x5
	.size	d, 2

	.type	f,@object                       # @f
	.globl	f
	.p2align	2, 0x0
f:
	.word	4                               # 0x4
	.size	f, 4

	.type	g,@object                       # @g
	.bss
	.globl	g
	.p2align	2, 0x0
g:
	.word	0                               # 0x0
	.size	g, 4

	.type	c,@object                       # @c
	.globl	c
c:
	.space	1
	.size	c, 1

	.type	b,@object                       # @b
	.globl	b
	.p2align	1, 0x0
b:
	.half	0                               # 0x0
	.size	b, 2

	.type	j,@object                       # @j
	.globl	j
	.p2align	2, 0x0
j:
	.word	0                               # 0x0
	.size	j, 4

	.type	a,@object                       # @a
	.globl	a
a:
	.byte	0                               # 0x0
	.size	a, 1

	.type	e,@object                       # @e
	.globl	e
	.p2align	2, 0x0
e:
	.word	0                               # 0x0
	.size	e, 4

	.type	h,@object                       # @h
	.globl	h
	.p2align	1, 0x0
h:
	.half	0                               # 0x0
	.size	h, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
