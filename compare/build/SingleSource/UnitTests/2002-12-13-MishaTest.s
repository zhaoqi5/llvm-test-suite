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
	ld.hu	$a3, $a0, 0
	ext.w.h	$a2, $a2
	ori	$a4, $zero, 8
	bltu	$a2, $a4, .LBB0_4
# %bb.2:                                # %vector.memcheck
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	alsl.d	$a4, $a4, $a1, 1
	addi.d	$a4, $a4, 2
	bgeu	$a0, $a4, .LBB0_8
# %bb.3:                                # %vector.memcheck
	addi.d	$a4, $a0, 2
	bgeu	$a1, $a4, .LBB0_8
.LBB0_4:
	move	$a7, $zero
	move	$a6, $a1
.LBB0_5:                                # %for.body.preheader
	sub.d	$a1, $a2, $a7
	.p2align	4, , 16
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a2, $a6, 0
	addi.d	$a6, $a6, 2
	add.d	$a3, $a3, $a2
	addi.w	$a1, $a1, -1
	st.h	$a3, $a0, 0
	bnez	$a1, .LBB0_6
.LBB0_7:                                # %for.end
	move	$a0, $zero
	ret
.LBB0_8:                                # %vector.main.loop.iter.check
	ori	$a5, $zero, 32
	bstrpick.d	$a4, $a2, 31, 0
	bgeu	$a2, $a5, .LBB0_10
# %bb.9:
	move	$a5, $zero
	b	.LBB0_14
.LBB0_10:                               # %vector.ph
	andi	$a6, $a4, 24
	bstrpick.d	$a5, $a4, 31, 5
	slli.d	$a5, $a5, 5
	xvrepli.b	$xr0, 0
	xvreplgr2vr.h	$xr2, $a3
	xvpermi.q	$xr2, $xr0, 18
	xvori.b	$xr1, $xr0, 0
	xvextrins.h	$xr1, $xr2, 0
	addi.d	$a3, $a1, 32
	move	$a7, $a5
	.p2align	4, , 16
.LBB0_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvadd.h	$xr1, $xr1, $xr2
	xvadd.h	$xr0, $xr0, $xr3
	addi.d	$a7, $a7, -32
	addi.d	$a3, $a3, 64
	bnez	$a7, .LBB0_11
# %bb.12:                               # %middle.block
	xvadd.h	$xr0, $xr0, $xr1
	xvhaddw.w.h	$xr0, $xr0, $xr0
	xvhaddw.d.w	$xr0, $xr0, $xr0
	xvhaddw.q.d	$xr0, $xr0, $xr0
	xvpermi.d	$xr1, $xr0, 2
	xvadd.d	$xr0, $xr1, $xr0
	xvpickve2gr.d	$a3, $xr0, 0
	st.h	$a3, $a0, 0
	beq	$a5, $a4, .LBB0_7
# %bb.13:                               # %vec.epilog.iter.check
	beqz	$a6, .LBB0_17
.LBB0_14:                               # %vec.epilog.ph
	bstrpick.d	$a6, $a4, 31, 3
	slli.d	$a7, $a6, 3
	alsl.d	$a6, $a6, $a1, 4
	vrepli.b	$vr0, 0
	vinsgr2vr.h	$vr0, $a3, 0
	alsl.d	$a1, $a5, $a1, 1
	sub.d	$a3, $a5, $a7
	.p2align	4, , 16
.LBB0_15:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, 0
	vadd.h	$vr0, $vr0, $vr1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 16
	bnez	$a3, .LBB0_15
# %bb.16:                               # %vec.epilog.middle.block
	vhaddw.w.h	$vr0, $vr0, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	st.h	$a3, $a0, 0
	bne	$a7, $a4, .LBB0_5
	b	.LBB0_7
.LBB0_17:
	alsl.d	$a6, $a5, $a1, 1
	move	$a7, $a5
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
