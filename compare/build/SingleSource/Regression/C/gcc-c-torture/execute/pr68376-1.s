	.file	"pr68376-1.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(a)
	ld.w	$a7, $a1, %pc_lo12(a)
	pcalau12i	$a2, %pc_hi20(d)
	ld.b	$a0, $a2, %pc_lo12(d)
	bgtz	$a7, .LBB0_10
# %bb.1:                                # %for.cond1thread-pre-split.lr.ph
	pcalau12i	$a3, %pc_hi20(b)
	pcalau12i	$a4, %pc_hi20(c)
	ld.w	$a4, $a4, %pc_lo12(c)
	ld.w	$a6, $a3, %pc_lo12(b)
	beqz	$a4, .LBB0_8
# %bb.2:
	ori	$a4, $zero, 0
	lu32i.d	$a4, 1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.inc10
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$a7, $a5, 1
	beqz	$a5, .LBB0_9
.LBB0_4:                                # %for.cond1thread-pre-split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	move	$a5, $a7
	bgtz	$a6, .LBB0_3
# %bb.5:                                # %for.body3.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$a6, $a6, -1
	.p2align	4, , 16
.LBB0_6:                                # %for.body3
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a7, $a0
	slt	$a7, $zero, $a7
	sub.d	$a7, $zero, $a7
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$a6, $a6, 1
	and	$t0, $a6, $a4
	xor	$a0, $a0, $a7
	beqz	$t0, .LBB0_6
# %bb.7:                                # %for.cond1.for.inc10_crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a6, $zero, 1
	st.w	$a6, $a3, %pc_lo12(b)
	st.b	$a0, $a2, %pc_lo12(d)
	b	.LBB0_3
.LBB0_8:                                # %for.cond1thread-pre-split.lr.ph.split.us
	ori	$a3, $zero, 1
	blt	$a6, $a3, .LBB0_12
.LBB0_9:                                # %for.end12.sink.split
	ori	$a2, $zero, 1
	st.w	$a2, $a1, %pc_lo12(a)
.LBB0_10:                               # %for.end12
	andi	$a0, $a0, 255
	bnez	$a0, .LBB0_13
# %bb.11:                               # %if.end17
	move	$a0, $zero
	ret
.LBB0_12:                               # %for.body3.us
	slt	$a1, $zero, $a0
	sub.d	$a1, $zero, $a1
	xor	$a0, $a0, $a1
	st.b	$a0, $a2, %pc_lo12(d)
.LBB0_13:                               # %if.then16
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	c,@object                       # @c
	.data
	.globl	c
	.p2align	2, 0x0
c:
	.word	1                               # 0x1
	.size	c, 4

	.type	a,@object                       # @a
	.bss
	.globl	a
	.p2align	2, 0x0
a:
	.word	0                               # 0x0
	.size	a, 4

	.type	b,@object                       # @b
	.globl	b
	.p2align	2, 0x0
b:
	.word	0                               # 0x0
	.size	b, 4

	.type	d,@object                       # @d
	.globl	d
d:
	.byte	0                               # 0x0
	.size	d, 1

	.section	".note.GNU-stack","",@progbits
	.addrsig
