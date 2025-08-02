	.file	"pr54937.c"
	.text
	.globl	t                               # -- Begin function t
	.p2align	5
	.type	t,@function
t:                                      # @t
# %bb.0:                                # %entry
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_5
# %bb.1:                                # %if.end.peel
	pcalau12i	$a2, %pc_hi20(a)
	addi.d	$a2, $a2, %pc_lo12(a)
	st.w	$zero, $a2, 0
	beq	$a0, $a1, .LBB0_5
# %bb.2:                                # %if.end.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $a2, 4
	addi.d	$s0, $a0, -1
	pcalau12i	$s1, %pc_hi20(terminate_me)
	.p2align	4, , 16
.LBB0_3:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, %pc_lo12(terminate_me)
	move	$a0, $zero
	jirl	$ra, $a1, 0
	st.w	$zero, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 4
	bnez	$s0, .LBB0_3
# %bb.4:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB0_5:                                # %for.end
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	t, .Lfunc_end0-t
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(exit)
	ld.d	$a0, $a0, %got_pc_lo12(exit)
	pcalau12i	$a1, %pc_hi20(terminate_me)
	st.d	$a0, $a1, %pc_lo12(terminate_me)
	ori	$a0, $zero, 100
	pcaddu18i	$ra, %call36(t)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	terminate_me,@object            # @terminate_me
	.bss
	.globl	terminate_me
	.p2align	3, 0x0
terminate_me:
	.dword	0
	.size	terminate_me, 8

	.type	a,@object                       # @a
	.globl	a
	.p2align	2, 0x0
a:
	.space	4
	.size	a, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exit
