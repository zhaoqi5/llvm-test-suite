	.file	"950714-1.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(array)
	addi.d	$a2, $a0, %pc_lo12(array)
	ld.w	$a0, $a2, 0
	beqz	$a0, .LBB0_11
# %bb.1:                                # %for.cond1
	ld.w	$a1, $a2, 4
	beqz	$a1, .LBB0_11
# %bb.2:                                # %for.cond1.1
	ld.w	$a3, $a2, 8
	beqz	$a3, .LBB0_11
# %bb.3:                                # %for.cond1.2
	ld.w	$a4, $a2, 12
	beqz	$a4, .LBB0_11
# %bb.4:                                # %for.cond1.3
	ld.w	$a5, $a2, 16
	beqz	$a5, .LBB0_11
# %bb.5:                                # %for.cond1.4
	ld.w	$a6, $a2, 20
	beqz	$a6, .LBB0_11
# %bb.6:                                # %for.cond1.5
	ld.w	$a7, $a2, 24
	beqz	$a7, .LBB0_11
# %bb.7:                                # %for.cond1.6
	ld.w	$t0, $a2, 28
	beqz	$t0, .LBB0_11
# %bb.8:                                # %for.cond1.7
	ld.w	$a2, $a2, 32
	beqz	$a2, .LBB0_11
# %bb.9:                                # %for.cond1.8
	xvinsgr2vr.w	$xr0, $a0, 0
	xvinsgr2vr.w	$xr0, $a1, 1
	xvinsgr2vr.w	$xr0, $a3, 2
	xvinsgr2vr.w	$xr0, $a4, 3
	xvinsgr2vr.w	$xr0, $a5, 4
	xvinsgr2vr.w	$xr0, $a6, 5
	xvinsgr2vr.w	$xr0, $a7, 6
	xvinsgr2vr.w	$xr0, $t0, 7
	xvseqi.w	$xr0, $xr0, 1
	xvmskltz.w	$xr0, $xr0
	xvpickve2gr.wu	$a0, $xr0, 0
	xvpickve2gr.wu	$a1, $xr0, 4
	bstrins.d	$a0, $a1, 7, 4
	bnez	$a0, .LBB0_12
# %bb.10:                               # %for.cond1.8
	ori	$a0, $zero, 1
	beq	$a2, $a0, .LBB0_12
.LBB0_11:                               # %if.then8
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB0_12:                               # %if.end9
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	array,@object                   # @array
	.data
	.globl	array
	.p2align	2, 0x0
array:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	array, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
