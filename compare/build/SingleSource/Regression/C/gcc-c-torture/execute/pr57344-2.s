	.file	"pr57344-2.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	lu12i.w	$a1, -1
	ori	$a1, $a1, 935
	bne	$a0, $a1, .LBB0_2
# %bb.1:                                # %if.end
	#APP
	#NO_APP
	ret
.LBB0_2:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(s)
	pcalau12i	$fp, %pc_hi20(i)
	ld.w	$a1, $fp, %pc_lo12(i)
	addi.d	$s0, $a0, %pc_lo12(s)
	lu12i.w	$a0, 229376
	lu32i.d	$a0, 130973
	st.d	$a0, $s0, 8
	bgtz	$a1, .LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 12
	ld.b	$a1, $s0, 14
	ld.wu	$a2, $s0, 8
	slli.d	$a0, $a0, 32
	slli.d	$a1, $a1, 48
	or	$a0, $a1, $a0
	or	$a0, $a2, $a0
	slli.d	$a0, $a0, 15
	srai.d	$a0, $a0, 42
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(i)
	addi.d	$a1, $a0, 1
	st.w	$a1, $fp, %pc_lo12(i)
	bltz	$a0, .LBB1_1
.LBB1_2:                                # %for.end
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	s,@object                       # @s
	.bss
	.globl	s
s:
	.space	16
	.size	s, 16

	.type	i,@object                       # @i
	.globl	i
	.p2align	2, 0x0
i:
	.word	0                               # 0x0
	.size	i, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
