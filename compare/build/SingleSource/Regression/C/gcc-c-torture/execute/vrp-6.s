	.file	"vrp-6.c"
	.text
	.globl	test01                          # -- Begin function test01
	.p2align	5
	.type	test01,@function
test01:                                 # @test01
# %bb.0:                                # %entry
	ori	$a2, $zero, 4
	bgeu	$a2, $a0, .LBB0_4
# %bb.1:                                # %if.end
	bgeu	$a2, $a1, .LBB0_4
# %bb.2:                                # %if.end3
	sub.w	$a0, $a0, $a1
	ori	$a1, $zero, 5
	bne	$a0, $a1, .LBB0_4
# %bb.3:                                # %if.end6
	ret
.LBB0_4:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	test01, .Lfunc_end0-test01
                                        # -- End function
	.globl	test02                          # -- Begin function test02
	.p2align	5
	.type	test02,@function
test02:                                 # @test02
# %bb.0:                                # %entry
	ori	$a2, $zero, 12
	bltu	$a0, $a2, .LBB1_3
# %bb.1:                                # %entry
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB1_3
# %bb.2:                                # %entry
	sub.w	$a0, $a0, $a1
	addi.w	$a1, $zero, -17
	bgeu	$a1, $a0, .LBB1_4
.LBB1_3:                                # %if.end6
	ret
.LBB1_4:                                # %if.then4
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	test02, .Lfunc_end1-test02
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
