	.file	"20150611-1.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(b)
	ld.h	$a2, $a0, %pc_lo12(b)
	ori	$a1, $zero, 1
	blt	$a1, $a2, .LBB0_11
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a1, %pc_hi20(d)
	ld.w	$a1, $a1, %pc_lo12(d)
	pcalau12i	$a3, %pc_hi20(a)
	st.w	$zero, $a3, %pc_lo12(a)
	bnez	$a1, .LBB0_5
# %bb.2:                                # %for.body.lr.ph
	pcalau12i	$a1, %pc_hi20(c)
	ld.w	$a1, $a1, %pc_lo12(c)
	beqz	$a1, .LBB0_5
# %bb.3:                                # %for.body.preheader
	sub.d	$a1, $zero, $a2
	bstrpick.d	$a3, $a1, 15, 0
	ori	$a1, $zero, 1
	sub.d	$a4, $a1, $a2
	bstrpick.d	$a4, $a4, 15, 0
	sltu	$a5, $a3, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a4, $a3, $a4
	ori	$a3, $zero, 32
	bgeu	$a4, $a3, .LBB0_6
# %bb.4:
	move	$a3, $a2
	b	.LBB0_9
.LBB0_5:                                # %for.end12.sink.split
	ori	$a1, $zero, 2
	st.h	$a1, $a0, %pc_lo12(b)
	move	$a0, $zero
	ret
.LBB0_6:                                # %vector.ph
	bstrpick.d	$a4, $a4, 15, 0
	addi.d	$a4, $a4, 1
	andi	$a5, $a4, 31
	sltui	$a6, $a5, 1
	masknez	$a5, $a5, $a6
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a5
	sub.d	$a4, $a4, $a3
	add.d	$a3, $a2, $a4
	addi.d	$a5, $a2, 15
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a5
	addi.w	$a4, $a4, -32
	addi.d	$a5, $a5, 32
	bnez	$a4, .LBB0_7
# %bb.8:                                # %for.body.preheader7.loopexit
	addi.d	$a2, $a2, 17
	st.h	$a2, $a0, %pc_lo12(b)
	.p2align	4, , 16
.LBB0_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a2, $a3, 15, 0
	beqz	$a2, .LBB0_12
# %bb.10:                               # %for.inc
                                        #   in Loop: Header=BB0_9 Depth=1
	ext.w.h	$a2, $a3
	addi.d	$a3, $a3, 1
	st.h	$a3, $a0, %pc_lo12(b)
	blt	$a2, $a1, .LBB0_9
.LBB0_11:                               # %for.end12
	move	$a0, $zero
	ret
	.p2align	4, , 16
.LBB0_12:                               # %for.cond8
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB0_12
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	b,@object                       # @b
	.bss
	.globl	b
	.p2align	1, 0x0
b:
	.half	0                               # 0x0
	.size	b, 2

	.type	a,@object                       # @a
	.globl	a
	.p2align	2, 0x0
a:
	.word	0                               # 0x0
	.size	a, 4

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

	.section	".note.GNU-stack","",@progbits
	.addrsig
