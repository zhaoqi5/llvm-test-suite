	.file	"20020510-1.c"
	.text
	.globl	testc                           # -- Begin function testc
	.p2align	5
	.type	testc,@function
testc:                                  # @testc
# %bb.0:                                # %entry
	ext.w.b	$a0, $a0
	blez	$a0, .LBB0_3
# %bb.1:                                # %if.then
	beqz	$a1, .LBB0_4
.LBB0_2:                                # %if.end9
	ret
.LBB0_3:                                # %if.else
	beqz	$a1, .LBB0_2
.LBB0_4:                                # %if.then5
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	testc, .Lfunc_end0-testc
                                        # -- End function
	.globl	tests                           # -- Begin function tests
	.p2align	5
	.type	tests,@function
tests:                                  # @tests
# %bb.0:                                # %entry
	ext.w.h	$a0, $a0
	blez	$a0, .LBB1_3
# %bb.1:                                # %if.then
	beqz	$a1, .LBB1_4
.LBB1_2:                                # %if.end9
	ret
.LBB1_3:                                # %if.else
	beqz	$a1, .LBB1_2
.LBB1_4:                                # %if.then5
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	tests, .Lfunc_end1-tests
                                        # -- End function
	.globl	testi                           # -- Begin function testi
	.p2align	5
	.type	testi,@function
testi:                                  # @testi
# %bb.0:                                # %entry
	blez	$a0, .LBB2_3
# %bb.1:                                # %if.then
	beqz	$a1, .LBB2_4
.LBB2_2:                                # %if.end6
	ret
.LBB2_3:                                # %if.else
	beqz	$a1, .LBB2_2
.LBB2_4:                                # %if.then2
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	testi, .Lfunc_end2-testi
                                        # -- End function
	.globl	testl                           # -- Begin function testl
	.p2align	5
	.type	testl,@function
testl:                                  # @testl
# %bb.0:                                # %entry
	blez	$a0, .LBB3_3
# %bb.1:                                # %if.then
	beqz	$a1, .LBB3_4
.LBB3_2:                                # %if.end6
	ret
.LBB3_3:                                # %if.else
	beqz	$a1, .LBB3_2
.LBB3_4:                                # %if.then2
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	testl, .Lfunc_end3-testl
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
