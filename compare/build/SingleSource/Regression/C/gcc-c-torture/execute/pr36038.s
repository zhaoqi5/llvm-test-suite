	.file	"pr36038.c"
	.text
	.globl	doit                            # -- Begin function doit
	.p2align	5
	.type	doit,@function
doit:                                   # @doit
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(markstack_ptr)
	ld.d	$a0, $a0, %pc_lo12(markstack_ptr)
	ld.w	$a1, $a0, -4
	ori	$a2, $zero, 6
	beq	$a1, $a2, .LBB0_9
# %bb.1:                                # %while.body.preheader
	pcalau12i	$a3, %pc_hi20(stack_base)
	ld.d	$a3, $a3, %pc_lo12(stack_base)
	ld.w	$a4, $a0, -8
	sub.d	$a0, $a2, $a1
	addi.d	$a3, $a3, 40
	sub.d	$a2, $a4, $a1
	addi.w	$a4, $a2, 2
	ori	$a2, $zero, 5
	sub.w	$a2, $a2, $a1
	ori	$a5, $zero, 3
	alsl.d	$a1, $a4, $a3, 3
	bltu	$a2, $a5, .LBB0_7
# %bb.2:                                # %while.body.preheader
	slli.d	$a4, $a4, 3
	sub.d	$a5, $zero, $a4
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB0_6
# %bb.3:                                # %vector.ph
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a2, 1
	bstrpick.d	$a2, $a5, 32, 2
	slli.d	$a6, $a2, 2
	sub.d	$a0, $a0, $a6
	slli.d	$a7, $a2, 5
	sub.d	$a2, $a3, $a7
	sub.d	$a1, $a1, $a7
	addi.d	$a3, $a3, -24
	move	$a7, $a6
	.p2align	4, , 16
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, 0
	xvstx	$xr0, $a3, $a4
	addi.d	$a7, $a7, -4
	addi.d	$a3, $a3, -32
	bnez	$a7, .LBB0_4
# %bb.5:                                # %middle.block
	bne	$a5, $a6, .LBB0_8
	b	.LBB0_9
.LBB0_6:
	move	$a2, $a3
	b	.LBB0_8
.LBB0_7:
	move	$a2, $a3
	.p2align	4, , 16
.LBB0_8:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a2, -8
	addi.d	$a4, $a1, -8
	addi.w	$a0, $a0, -1
	st.d	$a3, $a1, 0
	move	$a1, $a4
	bnez	$a0, .LBB0_8
.LBB0_9:                                # %while.end
	ret
.Lfunc_end0:
	.size	doit, .Lfunc_end0-doit
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI1_1:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(list)
	addi.d	$a1, $a0, %pc_lo12(list)
	xvst	$xr0, $a1, 0
	xvst	$xr1, $a1, 32
	pcalau12i	$a0, %pc_hi20(indices)
	addi.d	$a0, $a0, %pc_lo12(indices)
	addi.d	$a2, $a0, 36
	pcalau12i	$a3, %pc_hi20(markstack_ptr)
	st.d	$a2, $a3, %pc_lo12(markstack_ptr)
	ori	$a2, $zero, 9
	ori	$a3, $zero, 1
	lu32i.d	$a3, 2
	st.d	$a3, $a0, 28
	addi.d	$a0, $a1, 16
	pcalau12i	$a3, %pc_hi20(stack_base)
	st.d	$a0, $a3, %pc_lo12(stack_base)
	vld	$vr0, $a1, 40
	ld.d	$a0, $a1, 32
	ld.d	$a3, $a1, 56
	st.d	$a2, $a1, 72
	vst	$vr0, $a1, 48
	st.d	$a0, $a1, 40
	st.d	$a3, $a1, 64
	pcalau12i	$a0, %pc_hi20(expect)
	addi.d	$a0, $a0, %pc_lo12(expect)
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_2
# %bb.1:                                # %if.end
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	expect,@object                  # @expect
	.data
	.globl	expect
	.p2align	3, 0x0
expect:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	9                               # 0x9
	.size	expect, 80

	.type	stack_base,@object              # @stack_base
	.bss
	.globl	stack_base
	.p2align	3, 0x0
stack_base:
	.dword	0
	.size	stack_base, 8

	.type	markstack_ptr,@object           # @markstack_ptr
	.globl	markstack_ptr
	.p2align	3, 0x0
markstack_ptr:
	.dword	0
	.size	markstack_ptr, 8

	.type	list,@object                    # @list
	.globl	list
	.p2align	5, 0x0
list:
	.space	80
	.size	list, 80

	.type	indices,@object                 # @indices
	.globl	indices
	.p2align	2, 0x0
indices:
	.space	40
	.size	indices, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym expect
	.addrsig_sym list
	.addrsig_sym indices
