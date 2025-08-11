	.file	"20000412-6.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(buf)
	addi.d	$a0, $a0, %pc_lo12(buf)
	ld.h	$a1, $a0, 0
	ld.h	$a2, $a0, 2
	ld.h	$a0, $a0, 4
	add.d	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 15, 0
	ori	$a1, $zero, 21
	bne	$a0, $a1, .LBB0_2
# %bb.1:                                # %if.end
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_2:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	bug                             # -- Begin function bug
	.p2align	5
	.type	bug,@function
bug:                                    # @bug
# %bb.0:                                # %entry
	bgeu	$a1, $a2, .LBB1_14
# %bb.1:                                # %iter.check
	addi.d	$a3, $a1, 2
	sltu	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	nor	$a4, $a1, $zero
	add.d	$a4, $a3, $a4
	ori	$a3, $zero, 14
	bgeu	$a4, $a3, .LBB1_3
# %bb.2:
	move	$a5, $a1
	b	.LBB1_13
.LBB1_3:                                # %vector.main.loop.iter.check
	srli.d	$a3, $a4, 1
	ori	$a5, $zero, 62
	addi.d	$a3, $a3, 1
	bgeu	$a4, $a5, .LBB1_5
# %bb.4:
	move	$a4, $zero
	b	.LBB1_9
.LBB1_5:                                # %vector.ph
	move	$a4, $a3
	xvrepli.b	$xr0, 0
	bstrins.d	$a4, $zero, 4, 0
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	addi.d	$a0, $a1, 32
	move	$a5, $a4
	.p2align	4, , 16
.LBB1_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a0, -32
	xvld	$xr3, $a0, 0
	xvsub.h	$xr1, $xr1, $xr2
	xvsub.h	$xr0, $xr0, $xr3
	addi.d	$a5, $a5, -32
	addi.d	$a0, $a0, 64
	bnez	$a5, .LBB1_6
# %bb.7:                                # %middle.block
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
	vpickve2gr.h	$a0, $vr0, 0
	beq	$a3, $a4, .LBB1_14
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a5, $a3, 24
	beqz	$a5, .LBB1_12
.LBB1_9:                                # %vec.epilog.ph
	move	$a6, $a3
	bstrins.d	$a6, $zero, 2, 0
	alsl.d	$a5, $a6, $a1, 1
	vrepli.b	$vr0, 0
	vinsgr2vr.h	$vr0, $a0, 0
	alsl.d	$a0, $a4, $a1, 1
	sub.d	$a1, $a4, $a6
	.p2align	4, , 16
.LBB1_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a0, 0
	vsub.h	$vr0, $vr0, $vr1
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB1_10
# %bb.11:                               # %vec.epilog.middle.block
	vbsrl.v	$vr1, $vr0, 8
	vadd.h	$vr0, $vr0, $vr1
	vshuf4i.h	$vr1, $vr0, 14
	vadd.h	$vr0, $vr0, $vr1
	vreplvei.h	$vr1, $vr0, 1
	vadd.h	$vr0, $vr0, $vr1
	vpickve2gr.h	$a0, $vr0, 0
	bne	$a3, $a6, .LBB1_13
	b	.LBB1_14
.LBB1_12:
	alsl.d	$a5, $a4, $a1, 1
	.p2align	4, , 16
.LBB1_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a1, $a5, 0
	addi.d	$a5, $a5, 2
	sub.d	$a0, $a0, $a1
	bltu	$a5, $a2, .LBB1_13
.LBB1_14:                               # %for.end
	bstrpick.d	$a0, $a0, 15, 0
	ret
.Lfunc_end1:
	.size	bug, .Lfunc_end1-bug
                                        # -- End function
	.type	buf,@object                     # @buf
	.data
	.globl	buf
	.p2align	1, 0x0
buf:
	.half	1                               # 0x1
	.half	4                               # 0x4
	.half	16                              # 0x10
	.half	64                              # 0x40
	.half	256                             # 0x100
	.size	buf, 10

	.section	".note.GNU-stack","",@progbits
	.addrsig
