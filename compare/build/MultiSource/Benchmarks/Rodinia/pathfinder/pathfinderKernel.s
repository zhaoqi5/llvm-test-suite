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
	ori	$a5, $zero, 1
	blt	$a1, $a5, .LBB0_24
# %bb.2:                                # %for.cond1.preheader.us.preheader
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$a6, $zero
	bstrpick.d	$a7, $a1, 31, 0
	addi.w	$a0, $a0, -1
	alsl.d	$t0, $a1, $a4, 2
	addi.d	$t0, $t0, -8
	addi.d	$t1, $a1, -1
	bstrpick.d	$t1, $t1, 31, 0
	alsl.d	$t2, $t1, $a4, 2
	alsl.d	$t3, $t1, $a3, 2
	sub.d	$t4, $a4, $a3
	sltui	$t5, $a1, 4
	sltui	$t4, $t4, 64
	or	$t4, $t5, $t4
	bstrpick.d	$t5, $a7, 30, 4
	slli.d	$t5, $t5, 4
	andi	$a5, $a7, 12
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$t6, $a7, 30, 2
	slli.d	$t7, $t6, 2
	addi.d	$a5, $a4, 32
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a5, $a3, 32
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	sub.d	$a5, $zero, $t7
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	slli.d	$s1, $a7, 2
	alsl.d	$t6, $a7, $a2, 2
	addi.d	$fp, $t6, 4
	addi.d	$a5, $a4, 8
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a5, $a3, 4
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a5, $t1, -1
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	addi.d	$s6, $a7, -1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.cond8.for.cond.cleanup10_crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	add.d	$fp, $fp, $s1
	beq	$a6, $a0, .LBB0_23
.LBB0_4:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_21 Depth 2
	beqz	$t4, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$s4, $zero
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a5, $zero, 16
	bgeu	$a1, $a5, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	move	$s5, $zero
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_8:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	move	$s4, $t5
	.p2align	4, , 16
.LBB0_9:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s2, -32
	xvld	$xr1, $s2, 0
	xvst	$xr0, $s3, -32
	xvst	$xr1, $s3, 0
	addi.d	$s4, $s4, -16
	addi.d	$s3, $s3, 64
	addi.d	$s2, $s2, 64
	bnez	$s4, .LBB0_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	beq	$t5, $a7, .LBB0_17
# %bb.11:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s4, $t5
	move	$s5, $t5
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	beqz	$a5, .LBB0_15
.LBB0_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	add.d	$s2, $a5, $s5
	alsl.d	$s3, $s5, $a4, 2
	alsl.d	$s4, $s5, $a3, 2
	.p2align	4, , 16
.LBB0_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s4, 0
	vst	$vr0, $s3, 0
	addi.d	$s2, $s2, 4
	addi.d	$s3, $s3, 16
	addi.d	$s4, $s4, 16
	bnez	$s2, .LBB0_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s4, $t7
	beq	$t7, $a7, .LBB0_17
.LBB0_15:                               # %for.body4.us.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$s2, $s4, $a3, 2
	alsl.d	$s3, $s4, $a4, 2
	sub.d	$s4, $a7, $s4
	.p2align	4, , 16
.LBB0_16:                               # %for.body4.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $s2, 0
	st.w	$a5, $s3, 0
	addi.d	$s2, $s2, 4
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 4
	bnez	$s4, .LBB0_16
.LBB0_17:                               # %for.inc110.us.peel
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a6, $a6, 1
	ld.w	$a5, $a4, 0
	ld.w	$t6, $a4, 4
	mul.d	$s2, $a6, $a7
	slli.d	$t8, $s2, 2
	ldx.w	$t8, $a2, $t8
	slt	$s0, $a5, $t6
	masknez	$t6, $t6, $s0
	maskeqz	$a5, $a5, $s0
	or	$a5, $a5, $t6
	add.d	$a5, $a5, $t8
	st.w	$a5, $a3, 0
	ori	$a5, $zero, 1
	beq	$a1, $a5, .LBB0_3
# %bb.18:                               # %for.body11.us.peel.next
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$a5, $s2, $a2, 2
	alsl.d	$s8, $t1, $a5, 2
	move	$ra, $s6
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	move	$s2, $fp
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_19:                               # %if.then33.us
                                        #   in Loop: Header=BB0_21 Depth=2
	ld.w	$a5, $t2, 0
	ld.w	$t6, $t0, 0
	ld.w	$t8, $s8, 0
	slt	$s0, $a5, $t6
	masknez	$t6, $t6, $s0
	maskeqz	$a5, $a5, $s0
	or	$a5, $a5, $t6
	add.d	$a5, $a5, $t8
	st.w	$a5, $t3, 0
.LBB0_20:                               # %for.inc110.us
                                        #   in Loop: Header=BB0_21 Depth=2
	addi.d	$s2, $s2, 4
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 4
	addi.d	$ra, $ra, -1
	addi.d	$s5, $s5, -1
	beqz	$ra, .LBB0_3
.LBB0_21:                               # %if.else.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s5, .LBB0_19
# %bb.22:                               # %if.else57.us
                                        #   in Loop: Header=BB0_21 Depth=2
	ld.w	$s0, $s3, -8
	ld.w	$a5, $s3, 0
	ld.w	$t8, $s2, 0
	ld.w	$s7, $s3, -4
	slt	$t6, $s0, $a5
	masknez	$a5, $a5, $t6
	maskeqz	$t6, $s0, $t6
	or	$a5, $t6, $a5
	slt	$t6, $s7, $a5
	masknez	$a5, $a5, $t6
	maskeqz	$t6, $s7, $t6
	or	$a5, $t6, $a5
	add.d	$a5, $a5, $t8
	st.w	$a5, $s4, 0
	b	.LBB0_20
.LBB0_23:
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
.LBB0_24:                               # %for.cond.cleanup
	ret
.Lfunc_end0:
	.size	pathFinderKernel, .Lfunc_end0-pathFinderKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
