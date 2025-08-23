	.file	"pr59358.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 0
	ori	$a0, $zero, 16
	blt	$a0, $a1, .LBB0_4
# %bb.1:                                # %entry
	bge	$a2, $a1, .LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a2
	slli.w	$a2, $a2, 1
	blt	$a0, $a1, .LBB0_2
# %bb.3:                                # %if.end
	ret
.LBB0_4:
	move	$a0, $a2
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %if.end15.peel
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	ori	$fp, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.1:                                # %if.end34.peel
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB1_33
# %bb.2:                                # %if.end15.peel20
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	ori	$fp, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.3:                                # %if.end34.peel33
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB1_33
# %bb.4:                                # %if.end15.peel52
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 24
	bne	$a0, $a1, .LBB1_33
# %bb.5:                                # %if.end34.peel65
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 12
	bne	$a0, $a1, .LBB1_33
# %bb.6:                                # %if.end15.peel84
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	ori	$fp, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.7:                                # %if.end34.peel97
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB1_33
# %bb.8:                                # %if.end15.peel116
	ori	$a0, $zero, 5
	st.w	$a0, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 20
	bne	$a0, $a1, .LBB1_33
# %bb.9:                                # %if.end34.peel129
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB1_33
# %bb.10:                               # %if.end15.peel148
	ori	$a0, $zero, 6
	st.w	$a0, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 24
	bne	$a0, $a1, .LBB1_33
# %bb.11:                               # %if.end34.peel161
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	ori	$fp, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 12
	bne	$a0, $a1, .LBB1_33
# %bb.12:                               # %for.body.peel.next135
	st.w	$fp, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 28
	bne	$a0, $a1, .LBB1_33
# %bb.13:                               # %if.end34
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	ori	$fp, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.14:                               # %for.cond
	ori	$fp, $zero, 8
	st.w	$fp, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	ori	$s0, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB1_33
# %bb.15:                               # %if.end34.1
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.16:                               # %for.cond.1
	ori	$fp, $zero, 9
	st.w	$fp, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 18
	bne	$a0, $a1, .LBB1_33
# %bb.17:                               # %if.end34.2
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.18:                               # %for.cond.2
	ori	$fp, $zero, 10
	st.w	$fp, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 20
	bne	$a0, $a1, .LBB1_33
# %bb.19:                               # %if.end34.3
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.20:                               # %for.cond.3
	ori	$fp, $zero, 11
	st.w	$fp, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 22
	bne	$a0, $a1, .LBB1_33
# %bb.21:                               # %if.end34.4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.22:                               # %for.cond.4
	ori	$fp, $zero, 12
	st.w	$fp, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 24
	bne	$a0, $a1, .LBB1_33
# %bb.23:                               # %if.end34.5
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.24:                               # %for.cond.5
	ori	$fp, $zero, 13
	st.w	$fp, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 26
	bne	$a0, $a1, .LBB1_33
# %bb.25:                               # %if.end34.6
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.26:                               # %for.cond.6
	ori	$fp, $zero, 14
	st.w	$fp, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 28
	bne	$a0, $a1, .LBB1_33
# %bb.27:                               # %if.end34.7
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.28:                               # %for.cond.7
	ori	$fp, $zero, 15
	st.w	$fp, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 30
	bne	$a0, $a1, .LBB1_33
# %bb.29:                               # %if.end34.8
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.30:                               # %for.cond.8
	ori	$fp, $zero, 16
	st.w	$fp, $sp, 4
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.31:                               # %if.end34.9
	addi.d	$a0, $sp, 4
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_33
# %bb.32:                               # %for.cond.9
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_33:                               # %if.then17
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
