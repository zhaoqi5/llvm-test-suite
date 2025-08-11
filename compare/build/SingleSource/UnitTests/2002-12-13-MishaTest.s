	.file	"2002-12-13-MishaTest.c"
	.text
	.globl	sum                             # -- Begin function sum
	.p2align	5
	.type	sum,@function
sum:                                    # @sum
# %bb.0:                                # %entry
	slli.w	$a3, $a2, 16
	beqz	$a3, .LBB0_7
# %bb.1:                                # %iter.check
	ld.hu	$a4, $a0, 0
	ext.w.h	$a2, $a2
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB0_4
# %bb.2:                                # %vector.memcheck
	addi.d	$a3, $a2, -1
	bstrpick.d	$a3, $a3, 31, 0
	alsl.d	$a3, $a3, $a1, 1
	addi.d	$a3, $a3, 2
	bgeu	$a0, $a3, .LBB0_8
# %bb.3:                                # %vector.memcheck
	addi.d	$a3, $a0, 2
	bgeu	$a1, $a3, .LBB0_8
.LBB0_4:
	move	$a5, $zero
.LBB0_5:                                # %for.body.preheader
	sub.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a1, 0
	addi.d	$a1, $a1, 2
	add.d	$a4, $a4, $a3
	addi.w	$a2, $a2, -1
	st.h	$a4, $a0, 0
	bnez	$a2, .LBB0_6
.LBB0_7:                                # %for.end
	move	$a0, $zero
	ret
.LBB0_8:                                # %vector.main.loop.iter.check
	ori	$a5, $zero, 32
	bstrpick.d	$a3, $a2, 31, 0
	bgeu	$a2, $a5, .LBB0_10
# %bb.9:
	move	$a5, $zero
	b	.LBB0_14
.LBB0_10:                               # %vector.ph
	bstrpick.d	$a5, $a3, 31, 5
	xvrepli.b	$xr0, 0
	slli.d	$a5, $a5, 5
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	addi.d	$a4, $a1, 32
	move	$a6, $a5
	.p2align	4, , 16
.LBB0_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.h	$xr1, $xr1, $xr2
	xvadd.h	$xr0, $xr0, $xr3
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 64
	bnez	$a6, .LBB0_11
# %bb.12:                               # %middle.block
	xvadd.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.h	$xr1, $xr1, 228
	xvadd.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvbsrl.v	$xr1, $xr1, 8
	xvadd.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.h	$xr1, $xr1, 14
	xvadd.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.h	$xr1, $xr1, 1
	xvadd.h	$xr0, $xr0, $xr1
	xvstelm.h	$xr0, $a0, 0, 0
	beq	$a5, $a3, .LBB0_7
# %bb.13:                               # %vec.epilog.iter.check
	andi	$a6, $a3, 24
	vpickve2gr.h	$a4, $vr0, 0
	beqz	$a6, .LBB0_18
.LBB0_14:                               # %vec.epilog.ph
	bstrpick.d	$a6, $a3, 31, 3
	slli.d	$a7, $a6, 3
	alsl.d	$a6, $a6, $a1, 4
	vrepli.b	$vr0, 0
	vinsgr2vr.h	$vr0, $a4, 0
	alsl.d	$a1, $a5, $a1, 1
	sub.d	$a4, $a5, $a7
	.p2align	4, , 16
.LBB0_15:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, 0
	vadd.h	$vr0, $vr0, $vr1
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, 16
	bnez	$a4, .LBB0_15
# %bb.16:                               # %vec.epilog.middle.block
	vbsrl.v	$vr1, $vr0, 8
	vadd.h	$vr0, $vr0, $vr1
	vshuf4i.h	$vr1, $vr0, 14
	vadd.h	$vr0, $vr0, $vr1
	vreplvei.h	$vr1, $vr0, 1
	vadd.h	$vr0, $vr0, $vr1
	vstelm.h	$vr0, $a0, 0, 0
	beq	$a7, $a3, .LBB0_7
# %bb.17:
	vpickve2gr.h	$a4, $vr0, 0
	move	$a5, $a7
	move	$a1, $a6
	b	.LBB0_5
.LBB0_18:
	alsl.d	$a1, $a5, $a1, 1
	b	.LBB0_5
.Lfunc_end0:
	.size	sum, .Lfunc_end0-sum
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Sum is %d\n"
	.size	.L.str, 11

	.section	".note.GNU-stack","",@progbits
	.addrsig
