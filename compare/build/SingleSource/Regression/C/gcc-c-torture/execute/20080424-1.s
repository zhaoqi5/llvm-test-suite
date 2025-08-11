	.file	"20080424-1.c"
	.text
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:                                # %entry
	pcalau12i	$a2, %pc_hi20(bar.i)
	ld.w	$a3, $a2, %pc_lo12(bar.i)
	addi.w	$a4, $a3, 8
	slli.d	$a5, $a4, 5
	alsl.d	$a5, $a4, $a5, 2
	pcalau12i	$a4, %pc_hi20(g)
	addi.d	$a4, $a4, %pc_lo12(g)
	add.d	$a5, $a4, $a5
	bne	$a0, $a5, .LBB0_3
# %bb.1:                                # %lor.lhs.false
	addi.d	$a0, $a3, 1
	slli.d	$a5, $a3, 5
	alsl.d	$a3, $a3, $a5, 2
	add.d	$a3, $a4, $a3
	st.w	$a0, $a2, %pc_lo12(bar.i)
	bne	$a1, $a3, .LBB0_3
# %bb.2:                                # %if.end
	ret
.LBB0_3:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	bar, .Lfunc_end0-bar
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(g)
	addi.d	$fp, $a0, %pc_lo12(g)
	addi.d	$a0, $fp, 288
	move	$a1, $fp
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 324
	addi.d	$a1, $fp, 36
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 360
	addi.d	$a1, $fp, 72
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 396
	addi.d	$a1, $fp, 108
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 432
	addi.d	$a1, $fp, 144
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 468
	addi.d	$a1, $fp, 180
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 504
	addi.d	$a1, $fp, 216
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 540
	addi.d	$a1, $fp, 252
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	bar.i,@object                   # @bar.i
	.local	bar.i
	.comm	bar.i,4,4
	.type	g,@object                       # @g
	.bss
	.globl	g
	.p2align	2, 0x0
g:
	.space	1728
	.size	g, 1728

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym g
