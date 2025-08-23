	.file	"pr43560.c"
	.text
	.globl	test                            # -- Begin function test
	.p2align	5
	.type	test,@function
test:                                   # @test
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 4
	ori	$a1, $zero, 2
	blt	$a2, $a1, .LBB0_4
# %bb.1:                                # %land.rhs.preheader
	addi.d	$a3, $a2, -1
	addi.d	$a4, $a0, 7
	ori	$a5, $zero, 47
	.p2align	4, , 16
.LBB0_2:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a6, $a4, $a2
	bne	$a6, $a5, .LBB0_4
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB0_2 Depth=1
	st.w	$a3, $a0, 4
	stx.b	$zero, $a4, $a2
	addi.d	$a2, $a2, -1
	addi.d	$a6, $a2, 1
	addi.d	$a3, $a3, -1
	bltu	$a1, $a6, .LBB0_2
.LBB0_4:                                # %while.end
	ret
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(s)
	addi.d	$a0, $a0, %pc_lo12(s)
	#APP
	#NO_APP
	pcaddu18i	$ra, %call36(test)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	s,@object                       # @s
	.section	.rodata,"a",@progbits
	.globl	s
	.p2align	2, 0x0
s:
	.space	20
	.size	s, 20

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym s
