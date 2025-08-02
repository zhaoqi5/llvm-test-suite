	.file	"pr57875.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(i)
	ld.w	$a6, $a1, %pc_lo12(i)
	pcalau12i	$a2, %pc_hi20(e)
	ld.bu	$a0, $a2, %pc_lo12(e)
	bgtz	$a6, .LBB0_8
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a3, %pc_hi20(d)
	ld.w	$a3, $a3, %pc_lo12(d)
	bnez	$a3, .LBB0_7
# %bb.2:                                # %for.body.us.preheader
	pcalau12i	$a3, %pc_hi20(c)
	ld.w	$a3, $a3, %pc_lo12(c)
	pcalau12i	$a4, %pc_hi20(f)
	ld.w	$a5, $a4, %pc_lo12(f)
	addi.w	$a7, $a6, -1
	ori	$a6, $zero, 0
	lu32i.d	$a6, 1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %if.end.us
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, 1
	and	$t0, $a7, $a6
	and	$a0, $a0, $a5
	bnez	$t0, .LBB0_6
.LBB0_4:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	bnez	$a3, .LBB0_3
# %bb.5:                                # %if.then2.us
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a5, $zero, 2
	st.w	$a5, $a4, %pc_lo12(f)
	b	.LBB0_3
.LBB0_6:                                # %for.cond.for.end_crit_edge.split.us
	st.b	$a0, $a2, %pc_lo12(e)
.LBB0_7:                                # %for.cond.for.end_crit_edge
	ori	$a2, $zero, 1
	st.w	$a2, $a1, %pc_lo12(i)
.LBB0_8:                                # %for.end
	slli.d	$a0, $a0, 1
	andi	$a0, $a0, 4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	ldx.w	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(b)
	st.w	$a0, $a1, %pc_lo12(b)
	bnez	$a0, .LBB0_10
# %bb.9:                                # %if.end10
	move	$a0, $zero
	ret
.LBB0_10:                               # %if.then9
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	i,@object                       # @i
	.bss
	.globl	i
	.p2align	2, 0x0
i:
	.word	0                               # 0x0
	.size	i, 4

	.type	d,@object                       # @d
	.globl	d
	.p2align	2, 0x0
d:
	.word	0                               # 0x0
	.size	d, 4

	.type	c,@object                       # @c
	.globl	c
	.p2align	2, 0x0
c:
	.word	0                               # 0x0
	.size	c, 4

	.type	f,@object                       # @f
	.globl	f
	.p2align	2, 0x0
f:
	.word	0                               # 0x0
	.size	f, 4

	.type	e,@object                       # @e
	.globl	e
e:
	.space	1
	.size	e, 1

	.type	a,@object                       # @a
	.globl	a
	.p2align	2, 0x0
a:
	.space	4
	.size	a, 4

	.type	b,@object                       # @b
	.globl	b
	.p2align	2, 0x0
b:
	.word	0                               # 0x0
	.size	b, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
