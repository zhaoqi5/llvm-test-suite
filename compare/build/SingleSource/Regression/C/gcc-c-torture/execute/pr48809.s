	.file	"pr48809.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	addi.d	$a1, $a0, 62
	ori	$a2, $zero, 160
	move	$a0, $zero
	bltu	$a2, $a1, .LBB0_20
# %bb.1:                                # %entry
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB0_2:                                # %sw.bb6
	ori	$a0, $zero, 31
	ret
.LBB0_3:                                # %sw.bb5
	ori	$a0, $zero, 17
	ret
.LBB0_4:                                # %sw.bb3
	ori	$a0, $zero, 19
	ret
.LBB0_5:                                # %sw.bb15
	ori	$a0, $zero, 10
	ret
.LBB0_6:                                # %sw.bb7
	ori	$a0, $zero, 8
	ret
.LBB0_7:                                # %sw.bb8
	ori	$a0, $zero, 28
	ret
.LBB0_8:                                # %sw.bb13
	ori	$a0, $zero, 111
	ret
.LBB0_9:                                # %sw.bb2
	ori	$a0, $zero, 2
	ret
.LBB0_10:                               # %sw.bb1
	ori	$a0, $zero, 7
	ret
.LBB0_11:                               # %sw.bb4
	ori	$a0, $zero, 5
	ret
.LBB0_12:                               # %sw.bb12
	ori	$a0, $zero, 15
	ret
.LBB0_13:                               # %sw.bb28
	ori	$a0, $zero, 105
	ret
.LBB0_14:                               # %sw.bb9
	ori	$a0, $zero, 16
	ret
.LBB0_15:                               # %sw.bb25
	ori	$a0, $zero, 106
	ret
.LBB0_16:                               # %sw.bb
	ori	$a0, $zero, 1
	ret
.LBB0_17:                               # %sw.bb11
	ori	$a0, $zero, 12
	ret
.LBB0_18:                               # %sw.bb21
	ori	$a0, $zero, 107
	ret
.LBB0_19:                               # %sw.bb33
	ori	$a0, $zero, 18
.LBB0_20:                               # %sw.epilog
	ret
.LBB0_21:                               # %sw.bb27
	ori	$a0, $zero, 102
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_4-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_16-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_4-.LJTI0_0
	.word	.LBB0_11-.LJTI0_0
	.word	.LBB0_3-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_7-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_17-.LJTI0_0
	.word	.LBB0_12-.LJTI0_0
	.word	.LBB0_8-.LJTI0_0
	.word	.LBB0_3-.LJTI0_0
	.word	.LBB0_5-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_4-.LJTI0_0
	.word	.LBB0_11-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_7-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_13-.LJTI0_0
	.word	.LBB0_8-.LJTI0_0
	.word	.LBB0_3-.LJTI0_0
	.word	.LBB0_5-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %if.end25
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
