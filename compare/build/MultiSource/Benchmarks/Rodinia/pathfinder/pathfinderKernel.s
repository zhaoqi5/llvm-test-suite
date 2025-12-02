	.file	"pathfinderKernel.c"
	.text
	.globl	pathFinderKernel                # -- Begin function pathFinderKernel
	.p2align	5
	.type	pathFinderKernel,@function
pathFinderKernel:                       # @pathFinderKernel
# %bb.0:                                # %entry
	ori	$a5, $zero, 2
	blt	$a0, $a5, .LBB0_24
# %bb.1:                                # %for.cond1.preheader.lr.ph
	blez	$a1, .LBB0_24
# %bb.2:                                # %for.cond1.preheader.us.preheader
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$a5, $zero
	bstrpick.d	$a6, $a1, 31, 0
	addi.w	$a0, $a0, -1
	alsl.d	$a7, $a1, $a4, 2
	addi.d	$t0, $a1, -1
	bstrpick.d	$t0, $t0, 31, 0
	alsl.d	$t1, $t0, $a4, 2
	alsl.d	$t2, $t0, $a3, 2
	sub.d	$t3, $a4, $a3
	sltui	$t4, $a1, 4
	sltui	$t3, $t3, 64
	or	$t3, $t4, $t3
	andi	$t4, $a6, 12
	st.d	$t4, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$t4, $a6, 30, 4
	slli.d	$t5, $t4, 4
	bstrpick.d	$t4, $a6, 30, 2
	slli.d	$t6, $t4, 2
	sub.d	$t4, $zero, $t6
	st.d	$t4, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s0, $a6, 2
	alsl.d	$t4, $a6, $a2, 2
	addi.d	$t4, $t4, 4
	ori	$s6, $zero, 1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.cond8.for.cond.cleanup10_crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	add.d	$t4, $t4, $s0
	beq	$a5, $a0, .LBB0_23
.LBB0_4:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_21 Depth 2
	beqz	$t3, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$s3, $zero
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$t7, $zero, 16
	bgeu	$a1, $t7, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	move	$s4, $zero
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_8:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s1, $a3, 32
	addi.d	$s2, $a4, 32
	move	$s3, $t5
	.p2align	4, , 16
.LBB0_9:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s1, -32
	xvld	$xr1, $s1, 0
	xvst	$xr0, $s2, -32
	xvst	$xr1, $s2, 0
	addi.d	$s3, $s3, -16
	addi.d	$s2, $s2, 64
	addi.d	$s1, $s1, 64
	bnez	$s3, .LBB0_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	beq	$t5, $a6, .LBB0_17
# %bb.11:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s4, $t5
	move	$s3, $t5
	ld.d	$t7, $sp, 8                     # 8-byte Folded Reload
	beqz	$t7, .LBB0_15
.LBB0_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	add.d	$s1, $t7, $s4
	alsl.d	$s2, $s4, $a4, 2
	alsl.d	$s3, $s4, $a3, 2
	.p2align	4, , 16
.LBB0_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s3, 0
	vst	$vr0, $s2, 0
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 16
	addi.d	$s3, $s3, 16
	bnez	$s1, .LBB0_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s3, $t6
	beq	$t6, $a6, .LBB0_17
.LBB0_15:                               # %for.body4.us.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$s1, $s3, $a3, 2
	alsl.d	$s2, $s3, $a4, 2
	sub.d	$s3, $a6, $s3
	.p2align	4, , 16
.LBB0_16:                               # %for.body4.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $s1, 0
	st.w	$t7, $s2, 0
	addi.d	$s1, $s1, 4
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 4
	bnez	$s3, .LBB0_16
.LBB0_17:                               # %for.inc110.us.peel
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a5, $a5, 1
	ld.w	$t7, $a4, 0
	ld.w	$t8, $a4, 4
	mul.d	$s1, $a5, $a6
	slli.d	$fp, $s1, 2
	ldx.w	$fp, $a2, $fp
	slt	$s2, $t7, $t8
	masknez	$t8, $t8, $s2
	maskeqz	$t7, $t7, $s2
	or	$t7, $t7, $t8
	add.d	$t7, $t7, $fp
	st.w	$t7, $a3, 0
	beq	$a1, $s6, .LBB0_3
# %bb.18:                               # %for.body11.us.peel.next
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$t7, $s1, $a2, 2
	alsl.d	$s8, $t0, $t7, 2
	addi.d	$ra, $a6, -1
	addi.d	$s4, $t0, -1
	addi.d	$s3, $a3, 4
	addi.d	$s2, $a4, 8
	move	$s1, $t4
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_19:                               # %if.then33.us
                                        #   in Loop: Header=BB0_21 Depth=2
	ld.w	$t7, $t1, 0
	ld.w	$t8, $a7, -8
	ld.w	$fp, $s8, 0
	slt	$s5, $t7, $t8
	masknez	$t8, $t8, $s5
	maskeqz	$t7, $t7, $s5
	or	$t7, $t7, $t8
	add.d	$t7, $t7, $fp
	st.w	$t7, $t2, 0
.LBB0_20:                               # %for.inc110.us
                                        #   in Loop: Header=BB0_21 Depth=2
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 4
	addi.d	$s3, $s3, 4
	addi.d	$ra, $ra, -1
	addi.d	$s4, $s4, -1
	beqz	$ra, .LBB0_3
.LBB0_21:                               # %if.else.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB0_19
# %bb.22:                               # %if.else57.us
                                        #   in Loop: Header=BB0_21 Depth=2
	ld.w	$t8, $s2, -8
	ld.w	$t7, $s2, 0
	ld.w	$s7, $s1, 0
	ld.w	$s5, $s2, -4
	slt	$fp, $t8, $t7
	masknez	$t7, $t7, $fp
	maskeqz	$t8, $t8, $fp
	or	$t7, $t8, $t7
	slt	$t8, $s5, $t7
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $s5, $t8
	or	$t7, $t8, $t7
	add.d	$t7, $t7, $s7
	st.w	$t7, $s3, 0
	b	.LBB0_20
.LBB0_23:
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
.LBB0_24:                               # %for.cond.cleanup
	ret
.Lfunc_end0:
	.size	pathFinderKernel, .Lfunc_end0-pathFinderKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
