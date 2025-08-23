	.file	"pr56799.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 16
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_4
# %bb.1:                                # %entry
	pcalau12i	$a0, %pc_hi20(lo)
	ld.w	$a0, $a0, %pc_lo12(lo)
	bnez	$a0, .LBB0_4
# %bb.2:                                # %entry
	pcalau12i	$a0, %pc_hi20(hi)
	ld.w	$a0, $a0, %pc_lo12(hi)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_4
# %bb.3:                                # %if.then
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_4:                                # %if.end
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	ld.wu	$a2, $a0, 0
	bstrpick.d	$a1, $a2, 15, 0
	beqz	$a1, .LBB1_3
# %bb.1:                                # %if.then
	ld.w	$a1, $a0, 4
	pcalau12i	$a3, %pc_hi20(lo)
	ori	$a4, $zero, 1
	st.w	$a4, $a3, %pc_lo12(lo)
	srli.d	$a2, $a2, 16
	bnez	$a2, .LBB1_4
.LBB1_2:                                # %if.end.if.end10_crit_edge
	ld.w	$a0, $a0, 4
	add.w	$a0, $a0, $a1
	ret
.LBB1_3:
	move	$a1, $zero
	srli.d	$a2, $a2, 16
	beqz	$a2, .LBB1_2
.LBB1_4:                                # %if.then7
	ld.w	$a0, $a0, 4
	pcalau12i	$a2, %pc_hi20(hi)
	ori	$a3, $zero, 1
	st.w	$a3, $a2, %pc_lo12(hi)
	add.d	$a1, $a0, $a1
	add.w	$a0, $a0, $a1
	ret
.Lfunc_end1:
	.size	foo, .Lfunc_end1-foo
                                        # -- End function
	.type	hi,@object                      # @hi
	.bss
	.globl	hi
	.p2align	2, 0x0
hi:
	.word	0                               # 0x0
	.size	hi, 4

	.type	lo,@object                      # @lo
	.globl	lo
	.p2align	2, 0x0
lo:
	.word	0                               # 0x0
	.size	lo, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
