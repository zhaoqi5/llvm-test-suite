	.file	"20000622-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	ori	$a3, $zero, 12
	bne	$a0, $a3, .LBB0_4
# %bb.1:                                # %entry
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB0_4
# %bb.2:                                # %entry
	ori	$a0, $zero, 11
	bne	$a2, $a0, .LBB0_4
# %bb.3:                                # %if.end
	move	$a0, $zero
	ret
.LBB0_4:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:                                # %entry
	move	$a0, $a1
	ret
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar
                                        # -- End function
	.globl	baz                             # -- Begin function baz
	.p2align	5
	.type	baz,@function
baz:                                    # @baz
# %bb.0:                                # %entry
	ori	$a0, $zero, 11
	bne	$a1, $a0, .LBB2_3
# %bb.1:                                # %entry
	ori	$a0, $zero, 12
	bne	$a2, $a0, .LBB2_3
# %bb.2:                                # %foo.exit
	ret
.LBB2_3:                                # %if.then.i
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	baz, .Lfunc_end2-baz
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
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
