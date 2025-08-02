	.file	"dilateKernel.c"
	.text
	.globl	dilateKernel                    # -- Begin function dilateKernel
	.p2align	5
	.type	dilateKernel,@function
dilateKernel:                           # @dilateKernel
# %bb.0:                                # %entry
	ori	$a5, $zero, 1
	blt	$a0, $a5, .LBB0_25
# %bb.1:                                # %entry
	blt	$a1, $a5, .LBB0_25
# %bb.2:                                # %for.cond1.preheader.us.preheader
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	move	$a6, $zero
	bstrpick.d	$a7, $a1, 31, 0
	addi.d	$t0, $a2, 12
	addi.d	$t1, $a4, 8
	slli.d	$a5, $a7, 2
	ori	$t2, $zero, 1
	lu12i.w	$t3, 1
	ori	$t4, $zero, 3
	ori	$t5, $zero, 2
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                # %for.inc.us.2.peel.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$zero, $t6, 0
.LBB0_4:                                # %for.cond1.for.cond.cleanup3_crit_edge.us
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$t0, $t0, $t3
	add.d	$t1, $t1, $a5
	beq	$a6, $a0, .LBB0_13
.LBB0_5:                                # %for.inc.us.1.peel
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	mul.d	$t6, $a6, $a7
	alsl.d	$t6, $t6, $a4, 2
	beq	$a1, $t2, .LBB0_3
# %bb.6:                                # %for.inc.us.1.peel78
                                        #   in Loop: Header=BB0_5 Depth=1
	slli.d	$t7, $a6, 12
	add.d	$t7, $a2, $t7
	ld.w	$t8, $t7, 4
	srai.d	$fp, $t8, 63
	andn	$t8, $t8, $fp
	st.w	$t8, $t6, 0
	ld.w	$t8, $t7, 4
	srai.d	$fp, $t8, 63
	andn	$t8, $t8, $fp
	bltu	$a1, $t4, .LBB0_8
# %bb.7:                                # %for.inc.us.2.peel85.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$t7, $t7, 8
	slt	$fp, $t8, $t7
	masknez	$t8, $t8, $fp
	maskeqz	$t7, $t7, $fp
	or	$t7, $t7, $t8
	st.w	$t7, $t6, 4
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %for.inc.us.2.peel85
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$t8, $t6, 4
	beq	$a1, $t5, .LBB0_4
.LBB0_9:                                # %for.inc.us.1.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$t6, $zero, 2
	move	$t7, $t1
	move	$t8, $t0
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %for.inc.us.2
                                        #   in Loop: Header=BB0_11 Depth=2
	st.w	$fp, $t7, 0
	addi.d	$t8, $t8, 4
	addi.d	$t7, $t7, 4
	beq	$a7, $t6, .LBB0_4
.LBB0_11:                               # %for.inc.us.1
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$fp, $t8, -8
	ld.w	$s0, $t8, -4
	slt	$s1, $s0, $fp
	masknez	$s0, $s0, $s1
	maskeqz	$fp, $fp, $s1
	or	$fp, $fp, $s0
	srai.d	$s0, $fp, 63
	addi.d	$t6, $t6, 1
	andn	$fp, $fp, $s0
	bgeu	$t6, $a1, .LBB0_10
# %bb.12:                               # %if.then.us.2
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.w	$s0, $t8, 0
	slt	$s1, $fp, $s0
	masknez	$fp, $fp, $s1
	maskeqz	$s0, $s0, $s1
	or	$fp, $s0, $fp
	b	.LBB0_10
.LBB0_13:                               # %for.cond32.preheader
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_24
# %bb.14:                               # %for.cond37.preheader.us.preheader
	move	$a6, $zero
	sub.d	$a2, $zero, $a5
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_15:                               # %for.cond37.for.cond.cleanup39_crit_edge.us
                                        #   in Loop: Header=BB0_16 Depth=1
	add.d	$a3, $a3, $a5
	move	$a4, $t0
	move	$a6, $a7
	beq	$a7, $a0, .LBB0_24
.LBB0_16:                               # %for.cond37.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
	move	$t1, $zero
	addi.d	$a7, $a6, 1
	add.d	$t0, $a4, $a5
	add.d	$t2, $a4, $a2
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_17:                               # %for.inc69.us.2
                                        #   in Loop: Header=BB0_18 Depth=2
	stx.w	$t3, $a3, $t1
	addi.d	$t1, $t1, 4
	beq	$a5, $t1, .LBB0_15
.LBB0_18:                               # %for.cond43.preheader.us
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a1, $a6, .LBB0_20
# %bb.19:                               # %for.inc69.us.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	ldx.w	$t3, $t2, $t1
	srai.d	$t4, $t3, 63
	andn	$t4, $t3, $t4
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_20:                               # %for.inc69.us
                                        #   in Loop: Header=BB0_18 Depth=2
	move	$t4, $zero
	move	$t3, $zero
	beqz	$a6, .LBB0_22
.LBB0_21:                               # %if.then52.us.1
                                        #   in Loop: Header=BB0_18 Depth=2
	ldx.w	$t3, $a4, $t1
	slt	$t5, $t4, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t4, $t4, $t5
	or	$t3, $t3, $t4
.LBB0_22:                               # %for.inc69.us.1
                                        #   in Loop: Header=BB0_18 Depth=2
	bgeu	$a7, $a0, .LBB0_17
# %bb.23:                               # %if.then52.us.2
                                        #   in Loop: Header=BB0_18 Depth=2
	ldx.w	$t4, $t0, $t1
	slt	$t5, $t3, $t4
	maskeqz	$t4, $t4, $t5
	masknez	$t3, $t3, $t5
	or	$t3, $t4, $t3
	b	.LBB0_17
.LBB0_24:
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB0_25:                               # %for.cond.cleanup34
	ret
.Lfunc_end0:
	.size	dilateKernel, .Lfunc_end0-dilateKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
