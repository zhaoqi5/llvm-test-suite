	.file	"perimeter.c"
	.text
	.globl	perimeter                       # -- Begin function perimeter
	.p2align	5
	.type	perimeter,@function
perimeter:                              # @perimeter
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(A)
	ld.d	$a0, $a0, %got_pc_lo12(A)
	ld.d	$a1, $a0, 0
	ld.wu	$a5, $a1, 0
	addi.w	$a2, $a5, 0
	ori	$a4, $zero, 1
	blt	$a2, $a4, .LBB0_4
# %bb.1:                                # %for.body.lr.ph
	alsl.d	$a3, $a2, $a1, 3
	move	$a0, $zero
	bne	$a2, $a4, .LBB0_5
.LBB0_2:                                # %for.body.peel
	bne	$a4, $a2, .LBB0_10
# %bb.3:                                # %if.then.peel
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a3, 0
	vinsgr2vr.d	$vr0, $a1, 0
	vinsgr2vr.d	$vr1, $a2, 0
	vabsd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	vpickve2gr.w	$a2, $vr0, 1
	add.d	$a1, $a2, $a1
	add.w	$a0, $a1, $a0
	ret
.LBB0_4:
	move	$a0, $zero
	ret
.LBB0_5:                                # %for.body.lr.ph.split
	addi.d	$a6, $a1, 20
	ori	$a4, $zero, 1
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_6:                                # %if.then
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a7, $a1, 8
	ld.d	$t0, $a3, 0
	vinsgr2vr.d	$vr0, $a7, 0
	vinsgr2vr.d	$vr1, $t0, 0
	vabsd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a7, $vr0, 0
	vpickve2gr.w	$t0, $vr0, 1
.LBB0_7:                                # %for.inc
                                        #   in Loop: Header=BB0_8 Depth=1
	add.d	$a7, $t0, $a7
	add.d	$a0, $a7, $a0
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, 8
	beq	$a5, $a4, .LBB0_2
.LBB0_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beq	$a5, $a4, .LBB0_6
# %bb.9:                                # %if.else
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a7, $a6, -4
	ld.w	$t0, $a6, -12
	sub.w	$a7, $a7, $t0
	ld.w	$t0, $a6, 0
	ld.w	$t1, $a6, -8
	srai.d	$t2, $a7, 31
	xor	$a7, $a7, $t2
	sub.d	$a7, $a7, $t2
	sub.w	$t0, $t0, $t1
	srai.d	$t1, $t0, 31
	xor	$t0, $t0, $t1
	sub.d	$t0, $t0, $t1
	b	.LBB0_7
.LBB0_10:                               # %if.else.peel
	alsl.d	$a2, $a4, $a1, 3
	ld.w	$a3, $a2, 8
	slli.d	$a4, $a4, 3
	ldx.w	$a1, $a1, $a4
	sub.w	$a1, $a3, $a1
	ld.w	$a3, $a2, 12
	ld.w	$a2, $a2, 4
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	sub.d	$a1, $a1, $a4
	sub.w	$a2, $a3, $a2
	srai.d	$a3, $a2, 31
	xor	$a2, $a2, $a3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	add.w	$a0, $a1, $a0
	ret
.Lfunc_end0:
	.size	perimeter, .Lfunc_end0-perimeter
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
