	.file	"20120427-1.c"
	.text
	.globl	sreal_compare                   # -- Begin function sreal_compare
	.p2align	5
	.type	sreal_compare,@function
sreal_compare:                          # @sreal_compare
# %bb.0:                                # %entry
	move	$a2, $a0
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a1, 4
	ori	$a0, $zero, 1
	bge	$a4, $a3, .LBB0_2
.LBB0_1:                                # %return
	ret
.LBB0_2:                                # %if.end
	bge	$a3, $a4, .LBB0_4
# %bb.3:
	addi.w	$a0, $zero, -1
	ret
.LBB0_4:                                # %if.end6
	ld.w	$a2, $a2, 0
	ld.w	$a1, $a1, 0
	bltu	$a1, $a2, .LBB0_1
# %bb.5:                                # %if.end10
	sltu	$a0, $a2, $a1
	sub.d	$a0, $zero, $a0
	ret
.Lfunc_end0:
	.size	sreal_compare, .Lfunc_end0-sreal_compare
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %land.lhs.true.1
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$a0, $a0, %pc_lo12(a)
	ld.w	$a1, $a0, 4
	ld.w	$a2, $a0, 12
	blt	$a2, $a1, .LBB1_28
# %bb.1:                                # %if.end.i.1
	blt	$a1, $a2, .LBB1_3
# %bb.2:                                # %if.end6.i.1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 8
	bgeu	$a1, $a2, .LBB1_28
.LBB1_3:                                # %land.lhs.true.2
	ld.w	$a1, $a0, 4
	ld.w	$a2, $a0, 20
	blt	$a2, $a1, .LBB1_28
# %bb.4:                                # %if.end.i.2
	blt	$a1, $a2, .LBB1_6
# %bb.5:                                # %if.end6.i.2
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 16
	bgeu	$a1, $a2, .LBB1_28
.LBB1_6:                                # %land.lhs.true19.166
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 4
	blt	$a2, $a1, .LBB1_9
# %bb.7:                                # %if.end.i30.168
	blt	$a1, $a2, .LBB1_28
# %bb.8:                                # %if.end6.i32.170
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 0
	bgeu	$a2, $a1, .LBB1_28
.LBB1_9:                                # %land.lhs.true.2.1
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 20
	blt	$a2, $a1, .LBB1_28
# %bb.10:                               # %if.end.i.2.1
	blt	$a1, $a2, .LBB1_12
# %bb.11:                               # %if.end6.i.2.1
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 16
	bgeu	$a1, $a2, .LBB1_28
.LBB1_12:                               # %land.lhs.true19.287
	ld.w	$a1, $a0, 20
	ld.w	$a2, $a0, 4
	blt	$a2, $a1, .LBB1_15
# %bb.13:                               # %if.end.i30.289
	blt	$a1, $a2, .LBB1_28
# %bb.14:                               # %if.end6.i32.291
	ld.w	$a1, $a0, 16
	ld.w	$a2, $a0, 0
	bgeu	$a2, $a1, .LBB1_28
.LBB1_15:                               # %land.lhs.true19.1.2
	ld.w	$a1, $a0, 20
	ld.w	$a2, $a0, 12
	blt	$a2, $a1, .LBB1_18
# %bb.16:                               # %if.end.i30.1.2
	blt	$a1, $a2, .LBB1_28
# %bb.17:                               # %if.end6.i32.1.2
	ld.w	$a1, $a0, 16
	ld.w	$a2, $a0, 8
	bgeu	$a2, $a1, .LBB1_28
.LBB1_18:                               # %land.lhs.true19.3
	ld.w	$a1, $a0, 28
	ld.w	$a2, $a0, 4
	blt	$a2, $a1, .LBB1_21
# %bb.19:                               # %if.end.i30.3
	blt	$a1, $a2, .LBB1_28
# %bb.20:                               # %if.end6.i32.3
	ld.w	$a1, $a0, 24
	ld.w	$a2, $a0, 0
	bgeu	$a2, $a1, .LBB1_28
.LBB1_21:                               # %land.lhs.true19.1.3
	ld.w	$a1, $a0, 28
	ld.w	$a2, $a0, 12
	blt	$a2, $a1, .LBB1_24
# %bb.22:                               # %if.end.i30.1.3
	blt	$a1, $a2, .LBB1_28
# %bb.23:                               # %if.end6.i32.1.3
	ld.w	$a1, $a0, 24
	ld.w	$a2, $a0, 8
	bgeu	$a2, $a1, .LBB1_28
.LBB1_24:                               # %land.lhs.true19.2.3
	ld.w	$a1, $a0, 28
	ld.w	$a2, $a0, 20
	blt	$a2, $a1, .LBB1_27
# %bb.25:                               # %if.end.i30.2.3
	blt	$a1, $a2, .LBB1_28
# %bb.26:                               # %if.end6.i32.2.3
	ld.w	$a1, $a0, 24
	ld.w	$a0, $a0, 16
	bgeu	$a0, $a1, .LBB1_28
.LBB1_27:                               # %for.inc.2.3
	move	$a0, $zero
	ret
.LBB1_28:                               # %if.then26
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	a,@object                       # @a
	.data
	.globl	a
	.p2align	2, 0x0
a:
	.space	8
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	a, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
