	.file	"warshall.c"
	.text
	.globl	TC                              # -- Begin function TC
	.p2align	5
	.type	TC,@function
TC:                                     # @TC
# %bb.0:                                # %entry
	addi.w	$a2, $a1, 31
	bstrpick.d	$a3, $a2, 62, 58
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	mul.w	$a5, $a2, $a1
	ori	$a3, $zero, 1
	blt	$a5, $a3, .LBB0_17
# %bb.1:                                # %while.cond4.preheader.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	move	$a4, $zero
	add.d	$a5, $a0, $a5
	addi.d	$a6, $a0, 4
	ori	$a7, $zero, 60
	move	$t0, $a0
	move	$t1, $a0
	ori	$t2, $zero, 1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %while.cond4.while.end19_crit_edge.us
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.w	$t2, $t2, 1
	sltui	$t3, $t2, 1
	sltu	$t4, $a3, $t2
	masknez	$t5, $a3, $t4
	maskeqz	$t2, $t2, $t4
	or	$t2, $t2, $t5
	alsl.d	$t1, $t3, $t1, 2
	add.d	$t0, $t0, $a2
	addi.d	$a4, $a4, 1
	bgeu	$t0, $a5, .LBB0_16
.LBB0_3:                                # %while.cond4.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_14 Depth 3
                                        #       Child Loop BB0_12 Depth 3
	mul.d	$t3, $a4, $a2
	add.d	$t3, $a6, $t3
	move	$t4, $t1
	move	$t6, $a0
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %if.end.us
                                        #   in Loop: Header=BB0_5 Depth=2
	add.d	$t4, $t4, $a2
	move	$t6, $t7
	bgeu	$t7, $a5, .LBB0_2
.LBB0_5:                                # %while.body7.us
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
                                        #       Child Loop BB0_12 Depth 3
	ld.w	$t5, $t4, 0
	and	$t8, $t5, $t2
	sltui	$t7, $t8, 1
	add.d	$t5, $t6, $a2
	maskeqz	$fp, $t5, $t7
	masknez	$t7, $t6, $t7
	or	$t7, $fp, $t7
	beqz	$t8, .LBB0_4
# %bb.6:                                # %while.body7.us
                                        #   in Loop: Header=BB0_5 Depth=2
	blt	$a1, $a3, .LBB0_4
# %bb.7:                                # %while.body13.us.preheader
                                        #   in Loop: Header=BB0_5 Depth=2
	add.d	$t7, $a2, $t6
	addi.d	$t8, $t6, 4
	sltu	$fp, $t8, $t7
	maskeqz	$t7, $t7, $fp
	masknez	$fp, $t8, $fp
	or	$fp, $t7, $fp
	nor	$t7, $t6, $zero
	add.d	$t7, $fp, $t7
	bltu	$t7, $a7, .LBB0_10
# %bb.8:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_5 Depth=2
	sub.d	$fp, $t6, $fp
	addi.w	$s0, $zero, -4
	andn	$fp, $s0, $fp
	add.d	$s0, $t3, $fp
	bgeu	$t6, $s0, .LBB0_13
# %bb.9:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_5 Depth=2
	add.d	$t8, $t8, $fp
	bgeu	$t0, $t8, .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=2
	move	$t7, $t6
	move	$t8, $t0
.LBB0_11:                               # %while.body13.us.preheader42
                                        #   in Loop: Header=BB0_5 Depth=2
	move	$t6, $t7
	.p2align	4, , 16
.LBB0_12:                               # %while.body13.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$fp, $t8, 0
	ld.w	$s0, $t6, 0
	addi.d	$t8, $t8, 4
	addi.d	$t7, $t6, 4
	or	$fp, $s0, $fp
	st.w	$fp, $t6, 0
	move	$t6, $t7
	bltu	$t7, $t5, .LBB0_12
	b	.LBB0_4
.LBB0_13:                               # %vector.ph
                                        #   in Loop: Header=BB0_5 Depth=2
	move	$s1, $zero
	srli.d	$t7, $t7, 2
	addi.d	$fp, $t7, 1
	bstrpick.d	$t7, $fp, 62, 4
	slli.d	$s0, $t7, 4
	slli.d	$t8, $t7, 6
	add.d	$t7, $t6, $t8
	add.d	$t8, $t0, $t8
	move	$s2, $s0
	.p2align	4, , 16
.LBB0_14:                               # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s3, $t6, $s1
	add.d	$s4, $t0, $s1
	xvldx	$xr0, $t0, $s1
	xvld	$xr1, $s4, 32
	xvldx	$xr2, $t6, $s1
	xvld	$xr3, $s3, 32
	xvor.v	$xr0, $xr2, $xr0
	xvor.v	$xr1, $xr3, $xr1
	xvstx	$xr0, $t6, $s1
	xvst	$xr1, $s3, 32
	addi.d	$s2, $s2, -16
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB0_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB0_5 Depth=2
	beq	$fp, $s0, .LBB0_4
	b	.LBB0_11
.LBB0_16:
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB0_17:                               # %while.end27
	ret
.Lfunc_end0:
	.size	TC, .Lfunc_end0-TC
                                        # -- End function
	.globl	RTC                             # -- Begin function RTC
	.p2align	5
	.type	RTC,@function
RTC:                                    # @RTC
# %bb.0:                                # %entry
	addi.w	$a2, $a1, 31
	bstrpick.d	$a3, $a2, 62, 58
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	mul.w	$a3, $a2, $a1
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB1_20
# %bb.1:                                # %while.cond4.preheader.lr.ph.i
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	move	$a5, $zero
	add.d	$a3, $a0, $a3
	addi.d	$a6, $a0, 4
	ori	$a7, $zero, 60
	move	$t0, $a0
	move	$t1, $a0
	ori	$t2, $zero, 1
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %while.cond4.while.end19_crit_edge.us.i
                                        #   in Loop: Header=BB1_3 Depth=1
	slli.w	$t2, $t2, 1
	sltui	$t3, $t2, 1
	sltu	$t4, $a4, $t2
	masknez	$t5, $a4, $t4
	maskeqz	$t2, $t2, $t4
	or	$t2, $t2, $t5
	alsl.d	$t1, $t3, $t1, 2
	add.d	$t0, $t0, $a2
	addi.d	$a5, $a5, 1
	bgeu	$t0, $a3, .LBB1_17
.LBB1_3:                                # %while.cond4.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #       Child Loop BB1_15 Depth 3
                                        #       Child Loop BB1_13 Depth 3
	blt	$a1, $a4, .LBB1_2
# %bb.4:                                # %while.body7.us.i.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	mul.d	$t3, $a5, $a2
	add.d	$t3, $a6, $t3
	move	$t4, $t1
	move	$t6, $a0
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=2
	move	$t7, $t5
.LBB1_6:                                # %if.end.us.i
                                        #   in Loop: Header=BB1_7 Depth=2
	add.d	$t4, $t4, $a2
	move	$t6, $t7
	bgeu	$t7, $a3, .LBB1_2
.LBB1_7:                                # %while.body7.us.i
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_15 Depth 3
                                        #       Child Loop BB1_13 Depth 3
	ld.w	$t5, $t4, 0
	and	$t7, $t5, $t2
	add.d	$t5, $t6, $a2
	beqz	$t7, .LBB1_5
# %bb.8:                                # %while.body13.us.i.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	add.d	$t7, $a2, $t6
	addi.d	$t8, $t6, 4
	sltu	$fp, $t8, $t7
	maskeqz	$t7, $t7, $fp
	masknez	$fp, $t8, $fp
	or	$fp, $t7, $fp
	nor	$t7, $t6, $zero
	add.d	$t7, $fp, $t7
	bltu	$t7, $a7, .LBB1_11
# %bb.9:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_7 Depth=2
	sub.d	$fp, $t6, $fp
	addi.w	$s0, $zero, -4
	andn	$fp, $s0, $fp
	add.d	$s0, $t3, $fp
	bgeu	$t6, $s0, .LBB1_14
# %bb.10:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_7 Depth=2
	add.d	$t8, $t8, $fp
	bgeu	$t0, $t8, .LBB1_14
.LBB1_11:                               #   in Loop: Header=BB1_7 Depth=2
	move	$t7, $t6
	move	$t8, $t0
.LBB1_12:                               # %while.body13.us.i.preheader27
                                        #   in Loop: Header=BB1_7 Depth=2
	move	$t6, $t7
	.p2align	4, , 16
.LBB1_13:                               # %while.body13.us.i
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$fp, $t8, 0
	ld.w	$s0, $t6, 0
	addi.d	$t8, $t8, 4
	addi.d	$t7, $t6, 4
	or	$fp, $s0, $fp
	st.w	$fp, $t6, 0
	move	$t6, $t7
	bltu	$t7, $t5, .LBB1_13
	b	.LBB1_6
.LBB1_14:                               # %vector.ph
                                        #   in Loop: Header=BB1_7 Depth=2
	move	$s1, $zero
	srli.d	$t7, $t7, 2
	addi.d	$fp, $t7, 1
	bstrpick.d	$t7, $fp, 62, 4
	slli.d	$s0, $t7, 4
	slli.d	$t8, $t7, 6
	add.d	$t7, $t6, $t8
	add.d	$t8, $t0, $t8
	move	$s2, $s0
	.p2align	4, , 16
.LBB1_15:                               # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s3, $t6, $s1
	add.d	$s4, $t0, $s1
	xvldx	$xr0, $t0, $s1
	xvld	$xr1, $s4, 32
	xvldx	$xr2, $t6, $s1
	xvld	$xr3, $s3, 32
	xvor.v	$xr0, $xr2, $xr0
	xvor.v	$xr1, $xr3, $xr1
	xvstx	$xr0, $t6, $s1
	xvst	$xr1, $s3, 32
	addi.d	$s2, $s2, -16
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB1_15
# %bb.16:                               # %middle.block
                                        #   in Loop: Header=BB1_7 Depth=2
	beq	$fp, $s0, .LBB1_6
	b	.LBB1_12
.LBB1_17:                               # %while.body.lr.ph
	ori	$a1, $zero, 1
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB1_18:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a0, 0
	or	$a5, $a5, $a4
	st.w	$a5, $a0, 0
	slli.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	alsl.d	$a0, $a5, $a0, 2
	sltu	$a5, $a1, $a4
	masknez	$a6, $a1, $a5
	maskeqz	$a4, $a4, $a5
	add.d	$a0, $a0, $a2
	or	$a4, $a4, $a6
	bltu	$a0, $a3, .LBB1_18
# %bb.19:
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB1_20:                               # %while.end
	ret
.Lfunc_end1:
	.size	RTC, .Lfunc_end1-RTC
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
