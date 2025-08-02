	.file	"SOR.c"
	.text
	.globl	SOR_num_flops                   # -- Begin function SOR_num_flops
	.p2align	5
	.type	SOR_num_flops,@function
SOR_num_flops:                          # @SOR_num_flops
# %bb.0:                                # %entry
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	vldi	$vr3, -784
	fadd.d	$fa0, $fa0, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	vldi	$vr1, -1000
	fmul.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end0:
	.size	SOR_num_flops, .Lfunc_end0-SOR_num_flops
                                        # -- End function
	.globl	SOR_execute                     # -- Begin function SOR_execute
	.p2align	5
	.type	SOR_execute,@function
SOR_execute:                            # @SOR_execute
# %bb.0:                                # %entry
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB1_9
# %bb.1:                                # %for.cond3.preheader.lr.ph
	ori	$a4, $zero, 3
	blt	$a0, $a4, .LBB1_9
# %bb.2:                                # %for.cond3.preheader.us.preheader
	move	$a5, $zero
	vldi	$vr1, -944
	fmul.d	$fa1, $fa0, $fa1
	vldi	$vr2, -912
	fsub.d	$fa0, $fa2, $fa0
	addi.w	$a0, $a0, -1
	addi.w	$a7, $a1, -1
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a6, $a2, -8
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a7, $a7, 3
	addi.d	$a7, $a7, -8
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %for.cond3.for.inc36_crit_edge.us
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.w	$a5, $a5, 1
	beq	$a5, $a3, .LBB1_9
.LBB1_4:                                # %for.cond3.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_7 Depth 3
	blt	$a1, $a4, .LBB1_3
# %bb.5:                                # %for.body5.us.us.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$t1, $a2, 8
	ori	$t0, $zero, 1
	.p2align	4, , 16
.LBB1_6:                                # %for.body5.us.us
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
	slli.d	$t2, $t0, 3
	ldx.d	$t4, $a6, $t2
	addi.d	$t0, $t0, 1
	slli.d	$t2, $t0, 3
	ldx.d	$t2, $a2, $t2
	fld.d	$fa3, $t1, 8
	fld.d	$fa2, $t1, 0
	move	$t3, $zero
	addi.d	$t4, $t4, 8
	.p2align	4, , 16
.LBB1_7:                                # %for.body13.us.us
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa4, $t4, $t3
	add.d	$t5, $t2, $t3
	fld.d	$fa5, $t5, 8
	add.d	$t5, $t1, $t3
	fld.d	$fa6, $t5, 16
	fmul.d	$fa3, $fa0, $fa3
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$fa2, $fa4, $fa2
	fadd.d	$fa2, $fa2, $fa6
	fmadd.d	$fa2, $fa1, $fa2, $fa3
	addi.d	$t3, $t3, 8
	fst.d	$fa2, $t5, 8
	fmov.d	$fa3, $fa6
	bne	$a7, $t3, .LBB1_7
# %bb.8:                                # %for.cond11.for.cond3.loopexit_crit_edge.us.us
                                        #   in Loop: Header=BB1_6 Depth=2
	move	$t1, $t2
	bne	$t0, $a0, .LBB1_6
	b	.LBB1_3
.LBB1_9:                                # %for.end38
	ret
.Lfunc_end1:
	.size	SOR_execute, .Lfunc_end1-SOR_execute
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
