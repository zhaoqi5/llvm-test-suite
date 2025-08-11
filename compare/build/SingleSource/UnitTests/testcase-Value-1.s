	.file	"testcase-Value-1.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(f)
	ld.w	$a1, $a0, %pc_lo12(f)
	beqz	$a1, .LBB0_7
# %bb.1:                                # %for.cond1.preheader.lr.ph
	pcalau12i	$a1, %pc_hi20(j)
	ld.w	$a2, $a1, %pc_lo12(j)
	pcalau12i	$a1, %pc_hi20(a)
	ld.b	$a1, $a1, %pc_lo12(a)
	st.w	$a1, $a0, %pc_lo12(f)
	beqz	$a2, .LBB0_4
# %bb.2:                                # %for.cond1.preheader.lr.ph.split
	andi	$a0, $a1, 255
	beqz	$a0, .LBB0_5
	.p2align	4, , 16
.LBB0_3:                                # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB0_3
.LBB0_4:
	ori	$a0, $zero, 33
	b	.LBB0_6
.LBB0_5:
	ori	$a0, $zero, 5
.LBB0_6:                                # %for.cond.for.cond18_crit_edge
	pcalau12i	$a1, %pc_hi20(g)
	st.w	$a0, $a1, %pc_lo12(g)
.LBB0_7:                                # %for.cond18
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(e)
	st.w	$zero, $a0, %pc_lo12(e)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	b,@object                       # @b
	.data
	.globl	b
	.p2align	1, 0x0
b:
	.half	1                               # 0x1
	.size	b, 2

	.type	d,@object                       # @d
	.globl	d
	.p2align	1, 0x0
d:
	.half	5                               # 0x5
	.size	d, 2

	.type	h,@object                       # @h
	.globl	h
	.p2align	1, 0x0
h:
	.half	1                               # 0x1
	.size	h, 2

	.type	e,@object                       # @e
	.globl	e
	.p2align	2, 0x0
e:
	.word	1                               # 0x1
	.size	e, 4

	.type	f,@object                       # @f
	.globl	f
	.p2align	2, 0x0
f:
	.word	20                              # 0x14
	.size	f, 4

	.type	g,@object                       # @g
	.globl	g
	.p2align	2, 0x0
g:
	.word	1                               # 0x1
	.size	g, 4

	.type	j,@object                       # @j
	.globl	j
	.p2align	2, 0x0
j:
	.word	1                               # 0x1
	.size	j, 4

	.type	c,@object                       # @c
	.bss
	.globl	c
c:
	.space	6
	.size	c, 6

	.type	a,@object                       # @a
	.globl	a
a:
	.byte	0                               # 0x0
	.size	a, 1

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
