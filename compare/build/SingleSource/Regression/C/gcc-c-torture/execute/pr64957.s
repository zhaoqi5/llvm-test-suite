	.file	"pr64957.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	ori	$a0, $a0, 1
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:                                # %entry
	bstrins.d	$a0, $zero, 0, 0
	ret
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_33
# %bb.1:                                # %lor.lhs.false
	move	$a0, $zero
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_33
# %bb.2:                                # %for.cond
	ori	$a0, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.3:                                # %lor.lhs.false.1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_33
# %bb.4:                                # %for.cond.1
	ori	$a0, $zero, 2
	ori	$fp, $zero, 2
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB2_33
# %bb.5:                                # %lor.lhs.false.2
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.6:                                # %for.cond.2
	ori	$a0, $zero, 3
	ori	$fp, $zero, 3
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.7:                                # %lor.lhs.false.3
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB2_33
# %bb.8:                                # %for.cond.3
	ori	$a0, $zero, 4
	ori	$fp, $zero, 4
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	bne	$a0, $a1, .LBB2_33
# %bb.9:                                # %lor.lhs.false.4
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.10:                               # %for.cond.4
	ori	$a0, $zero, 5
	ori	$fp, $zero, 5
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.11:                               # %lor.lhs.false.5
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB2_33
# %bb.12:                               # %for.cond.5
	ori	$a0, $zero, 6
	ori	$fp, $zero, 6
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB2_33
# %bb.13:                               # %lor.lhs.false.6
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.14:                               # %for.cond.6
	ori	$a0, $zero, 7
	ori	$fp, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.15:                               # %lor.lhs.false.7
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB2_33
# %bb.16:                               # %for.cond.7
	ori	$a0, $zero, 8
	ori	$fp, $zero, 8
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	bne	$a0, $a1, .LBB2_33
# %bb.17:                               # %lor.lhs.false.8
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.18:                               # %for.cond.8
	ori	$a0, $zero, 9
	ori	$fp, $zero, 9
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.19:                               # %lor.lhs.false.9
	ori	$a0, $zero, 9
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB2_33
# %bb.20:                               # %for.cond.9
	ori	$a0, $zero, 10
	ori	$fp, $zero, 10
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_33
# %bb.21:                               # %lor.lhs.false.10
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.22:                               # %for.cond.10
	ori	$a0, $zero, 11
	ori	$fp, $zero, 11
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.23:                               # %lor.lhs.false.11
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB2_33
# %bb.24:                               # %for.cond.11
	ori	$a0, $zero, 12
	ori	$fp, $zero, 12
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB2_33
# %bb.25:                               # %lor.lhs.false.12
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.26:                               # %for.cond.12
	ori	$a0, $zero, 13
	ori	$fp, $zero, 13
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.27:                               # %lor.lhs.false.13
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 12
	bne	$a0, $a1, .LBB2_33
# %bb.28:                               # %for.cond.13
	ori	$a0, $zero, 14
	ori	$fp, $zero, 14
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 15
	bne	$a0, $a1, .LBB2_33
# %bb.29:                               # %lor.lhs.false.14
	ori	$a0, $zero, 14
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.30:                               # %for.cond.14
	ori	$a0, $zero, 15
	ori	$fp, $zero, 15
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_33
# %bb.31:                               # %lor.lhs.false.15
	ori	$a0, $zero, 15
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB2_33
# %bb.32:                               # %for.cond.15
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_33:                               # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
