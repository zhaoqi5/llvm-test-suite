	.file	"fp-cmp-3.c"
	.text
	.globl	leave                           # -- Begin function leave
	.p2align	5
	.type	leave,@function
leave:                                  # @leave
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	leave, .Lfunc_end0-leave
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(leave)
	addi.d	$a1, $a0, %pc_lo12(leave)
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(signal)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(dnan)
	addi.d	$a0, $a0, %pc_lo12(dnan)
	ld.d	$fp, $a0, 8
	ld.d	$s0, $a0, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__unordtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_7
# %bb.1:                                # %if.end
	pcalau12i	$a0, %pc_hi20(x)
	addi.d	$s2, $a0, %pc_lo12(x)
	ld.d	$a2, $s2, 0
	ld.d	$a3, $s2, 8
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_7
# %bb.2:                                # %if.then2
	st.d	$zero, $s2, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$s1, $a0, 1023
	st.d	$s1, $s2, 8
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB1_7
# %bb.3:                                # %if.end6
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__gttf2)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB1_7
# %bb.4:                                # %if.end9
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$s1, $a0, 1023
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__letf2)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB1_7
# %bb.5:                                # %if.end12
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__getf2)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB1_7
# %bb.6:                                # %if.end15
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a3, $a0, 1023
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__netf2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_8
.LBB1_7:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB1_8:                                # %if.end18
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	dnan,@object                    # @dnan
	.data
	.globl	dnan
	.p2align	4, 0x0
dnan:
	.dword	0x0000000000000000              # fp128 NaN
	.dword	0x7fff800000000000
	.size	dnan, 16

	.type	x,@object                       # @x
	.globl	x
	.p2align	4, 0x0
x:
	.dword	0x0000000000000000              # fp128 1
	.dword	0x3fff000000000000
	.size	x, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym leave
