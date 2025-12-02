	.file	"pr63302.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	bstrins.d	$a0, $zero, 62, 11
	or	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	lu52i.d	$a3, $zero, -2048
	xor	$a0, $a0, $a3
	orn	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	or	$a0, $a2, $a0
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:                                # %entry
	bstrins.d	$a0, $zero, 30, 11
	sltui	$a1, $a0, 1
	lu12i.w	$a2, -524288
	xor	$a0, $a0, $a2
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
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
	move	$a1, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_19
# %bb.1:                                # %lor.lhs.false
	ori	$a0, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_19
# %bb.2:                                # %lor.lhs.false3
	ori	$a0, $zero, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_19
# %bb.3:                                # %lor.lhs.false6
	ori	$a0, $zero, 2049
	move	$a1, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_19
# %bb.4:                                # %lor.lhs.false9
	lu52i.d	$a0, $zero, -2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_19
# %bb.5:                                # %lor.lhs.false12
	lu52i.d	$a0, $zero, -2048
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_19
# %bb.6:                                # %lor.lhs.false15
	ori	$a0, $zero, 1
	lu52i.d	$a0, $a0, -2048
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_19
# %bb.7:                                # %lor.lhs.false18
	ori	$a0, $zero, 2048
	lu52i.d	$a0, $a0, -2048
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_19
# %bb.8:                                # %lor.lhs.false21
	ori	$a0, $zero, 2049
	lu52i.d	$a0, $a0, -2048
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_19
# %bb.9:                                # %if.end
	move	$a0, $zero
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_19
# %bb.10:                               # %lor.lhs.false26
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_19
# %bb.11:                               # %lor.lhs.false29
	ori	$a0, $zero, 2048
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_19
# %bb.12:                               # %lor.lhs.false32
	ori	$a0, $zero, 2049
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_19
# %bb.13:                               # %lor.lhs.false35
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_19
# %bb.14:                               # %lor.lhs.false38
	lu12i.w	$fp, -524288
	move	$a0, $fp
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_19
# %bb.15:                               # %lor.lhs.false41
	ori	$a0, $fp, 1
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_19
# %bb.16:                               # %lor.lhs.false44
	ori	$a0, $fp, 2048
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_19
# %bb.17:                               # %lor.lhs.false47
	ori	$a0, $fp, 2049
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_19
# %bb.18:                               # %if.end51
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_19:                               # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
