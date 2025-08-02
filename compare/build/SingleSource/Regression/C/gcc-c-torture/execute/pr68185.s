	.file	"pr68185.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(d)
	ld.w	$t0, $a0, %pc_lo12(d)
	pcalau12i	$a1, %pc_hi20(q)
	beqz	$t0, .LBB0_13
# %bb.1:                                # %while.cond.preheader.lr.ph
	pcalau12i	$a3, %pc_hi20(o)
	ld.w	$a2, $a3, %pc_lo12(o)
	pcalau12i	$a4, %pc_hi20(e)
	ld.w	$a4, $a4, %pc_lo12(e)
	pcalau12i	$a5, %pc_hi20(t)
	ld.h	$t1, $a5, %pc_lo12(t)
	pcalau12i	$a5, %pc_hi20(w)
	ld.w	$t2, $a5, %pc_lo12(w)
	beqz	$a4, .LBB0_7
# %bb.2:                                # %while.cond.preheader.preheader
	pcalau12i	$a4, %pc_hi20(b)
	ld.w	$a4, $a4, %pc_lo12(b)
	pcalau12i	$a5, %pc_hi20(z)
	ld.w	$a5, $a5, %pc_lo12(z)
	pcalau12i	$a6, %pc_hi20(u)
	ld.w	$a6, $a6, %pc_lo12(u)
	pcalau12i	$a7, %pc_hi20(a)
	ld.w	$a7, $a7, %pc_lo12(a)
	addi.d	$t0, $t0, -1
	slti	$t1, $t1, 1
	maskeqz	$t2, $t2, $t1
	pcalau12i	$t3, %pc_hi20(f)
	addi.w	$t4, $zero, -1
	ori	$t5, $zero, 1
                                        # implicit-def: $r18
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %land.end
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$t0, $a0, %pc_lo12(d)
	addi.w	$t0, $t0, -1
	beq	$t0, $t4, .LBB0_13
.LBB0_4:                                # %while.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	bnez	$a2, .LBB0_15
# %bb.5:                                # %while.end
                                        #   in Loop: Header=BB0_4 Depth=1
	masknez	$t6, $t6, $t1
	or	$t6, $t2, $t6
	andi	$t7, $t6, 255
	ext.w.b	$t8, $t6
	st.w	$t8, $t3, %pc_lo12(f)
	beqz	$t7, .LBB0_3
# %bb.6:                                # %land.rhs
                                        #   in Loop: Header=BB0_4 Depth=1
	st.h	$t5, $a1, %pc_lo12(q)
	b	.LBB0_3
.LBB0_7:                                # %while.cond.preheader.us.preheader
	addi.d	$a3, $t0, -1
	slti	$a4, $t1, 1
	maskeqz	$a5, $t2, $a4
	pcalau12i	$a6, %pc_hi20(f)
	addi.w	$a7, $zero, -1
	ori	$t0, $zero, 1
                                        # implicit-def: $r13
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %land.end.us
                                        #   in Loop: Header=BB0_9 Depth=1
	st.w	$a3, $a0, %pc_lo12(d)
	addi.w	$a3, $a3, -1
	beq	$a3, $a7, .LBB0_13
.LBB0_9:                                # %while.cond.preheader.us
                                        # =>This Inner Loop Header: Depth=1
	bnez	$a2, .LBB0_12
# %bb.10:                               # %while.end.us
                                        #   in Loop: Header=BB0_9 Depth=1
	masknez	$t1, $t1, $a4
	or	$t1, $a5, $t1
	andi	$t2, $t1, 255
	ext.w.b	$t3, $t1
	st.w	$t3, $a6, %pc_lo12(f)
	beqz	$t2, .LBB0_8
# %bb.11:                               # %land.rhs.us
                                        #   in Loop: Header=BB0_9 Depth=1
	st.h	$t0, $a1, %pc_lo12(q)
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_12:                               # %for.cond2.preheader.us
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB0_12
.LBB0_13:                               # %for.end19
	ld.hu	$a0, $a1, %pc_lo12(q)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_20
# %bb.14:                               # %if.end24
	move	$a0, $zero
	ret
.LBB0_15:                               # %for.cond2.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(c)
	st.h	$a4, $a0, %pc_lo12(c)
	st.w	$a5, $a3, %pc_lo12(o)
	beqz	$a6, .LBB0_18
# %bb.16:                               # %for.cond2.preheader.lr.ph.split.split
	beqz	$a7, .LBB0_19
	.p2align	4, , 16
.LBB0_17:                               # %for.cond8
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_18:                               # %for.body4.us
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_19:                               # %for.cond8thread-pre-split
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB0_19
.LBB0_20:                               # %if.then23
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	d,@object                       # @d
	.data
	.globl	d
	.p2align	2, 0x0
d:
	.word	1                               # 0x1
	.size	d, 4

	.type	w,@object                       # @w
	.globl	w
	.p2align	2, 0x0
w:
	.word	1                               # 0x1
	.size	w, 4

	.type	o,@object                       # @o
	.bss
	.globl	o
	.p2align	2, 0x0
o:
	.word	0                               # 0x0
	.size	o, 4

	.type	e,@object                       # @e
	.globl	e
	.p2align	2, 0x0
e:
	.word	0                               # 0x0
	.size	e, 4

	.type	b,@object                       # @b
	.globl	b
	.p2align	2, 0x0
b:
	.word	0                               # 0x0
	.size	b, 4

	.type	c,@object                       # @c
	.globl	c
	.p2align	1, 0x0
c:
	.half	0                               # 0x0
	.size	c, 2

	.type	z,@object                       # @z
	.globl	z
	.p2align	2, 0x0
z:
	.word	0                               # 0x0
	.size	z, 4

	.type	u,@object                       # @u
	.globl	u
	.p2align	2, 0x0
u:
	.word	0                               # 0x0
	.size	u, 4

	.type	a,@object                       # @a
	.globl	a
	.p2align	2, 0x0
a:
	.word	0                               # 0x0
	.size	a, 4

	.type	t,@object                       # @t
	.globl	t
	.p2align	1, 0x0
t:
	.half	0                               # 0x0
	.size	t, 2

	.type	f,@object                       # @f
	.globl	f
	.p2align	2, 0x0
f:
	.word	0                               # 0x0
	.size	f, 4

	.type	q,@object                       # @q
	.globl	q
	.p2align	1, 0x0
q:
	.half	0                               # 0x0
	.size	q, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
