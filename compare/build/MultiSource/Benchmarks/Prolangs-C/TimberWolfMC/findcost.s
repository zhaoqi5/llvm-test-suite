	.file	"findcost.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function findcost
.LCPI0_0:
	.dword	0x40f86a0000000000              # double 1.0E+5
	.text
	.globl	findcost
	.p2align	5
	.type	findcost,@function
findcost:                               # @findcost
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$s1, $a0, %got_pc_lo12(numcells)
	pcalau12i	$a0, %got_pc_hi20(numpads)
	ld.d	$s2, $a0, %got_pc_lo12(numpads)
	ld.w	$a1, $s1, 0
	ld.w	$a2, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(Tsave)
	ld.d	$a3, $a0, %got_pc_lo12(Tsave)
	add.w	$a0, $a2, $a1
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB0_10
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a5, %got_pc_hi20(cellarray)
	ld.d	$a5, $a5, %got_pc_lo12(cellarray)
	pcalau12i	$a6, %got_pc_hi20(termarray)
	ld.d	$a6, $a6, %got_pc_lo12(termarray)
	ld.d	$a5, $a5, 0
	ld.d	$a6, $a6, 0
	addi.d	$a7, $a0, 1
	bstrpick.d	$a7, $a7, 31, 0
	ori	$t0, $zero, 1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.inc56
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$t0, $t0, 1
	beq	$t0, $a7, .LBB0_10
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_9 Depth 2
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a5, $t1
	ld.w	$t2, $t1, 56
	alsl.d	$t2, $t2, $t1, 3
	ld.d	$t2, $t2, 152
	ld.d	$t3, $t2, 88
	beqz	$t3, .LBB0_6
# %bb.4:                                # %for.body6.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$t4, $t1, 12
	ld.w	$t5, $t1, 16
	.p2align	4, , 16
.LBB0_5:                                # %for.body6
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t3, 24
	slli.d	$t6, $t6, 3
	ldx.d	$t6, $a6, $t6
	ld.w	$t7, $t3, 8
	ld.d	$t6, $t6, 8
	ld.w	$t8, $t3, 12
	ld.d	$t3, $t3, 0
	add.d	$t7, $t4, $t7
	st.w	$t7, $t6, 8
	add.d	$t7, $t5, $t8
	st.w	$t7, $t6, 12
	bnez	$t3, .LBB0_5
.LBB0_6:                                # %for.end
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$t3, $t1, 76
	bne	$t3, $a4, .LBB0_2
# %bb.7:                                # %for.cond19.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$t4, $t1, 132
	blt	$t4, $a4, .LBB0_2
# %bb.8:                                # %for.body21.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$t5, $t1, 144
	ld.d	$t2, $t2, 96
	ld.w	$t3, $t1, 12
	ld.w	$t1, $t1, 16
	addi.d	$t4, $t4, 1
	bstrpick.d	$t6, $t4, 31, 0
	addi.d	$t4, $t5, 48
	addi.d	$t5, $t6, -1
	.p2align	4, , 16
.LBB0_9:                                # %for.body21
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t4, -4
	ld.w	$t7, $t4, 0
	slli.d	$t6, $t6, 3
	ldx.d	$t6, $a6, $t6
	alsl.d	$t8, $t7, $t2, 4
	slli.d	$t7, $t7, 4
	ldx.w	$t7, $t2, $t7
	ld.d	$t6, $t6, 8
	ld.w	$t8, $t8, 4
	add.d	$t7, $t3, $t7
	st.w	$t7, $t6, 8
	add.d	$t7, $t1, $t8
	st.w	$t7, $t6, 12
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 44
	bnez	$t5, .LBB0_9
	b	.LBB0_2
.LBB0_10:                               # %for.end58
	pcalau12i	$a4, %got_pc_hi20(finalShot)
	ld.d	$a4, $a4, %got_pc_lo12(finalShot)
	pcalau12i	$a5, %got_pc_hi20(numnets)
	ld.d	$a5, $a5, %got_pc_lo12(numnets)
	ld.w	$a4, $a4, 0
	ld.w	$a5, $a5, 0
	fld.d	$fs0, $a3, 0
	slt	$a3, $zero, $a4
	maskeqz	$a3, $a1, $a3
	add.w	$a5, $a3, $a5
	ori	$a3, $zero, 1
	blt	$a5, $a3, .LBB0_30
# %bb.11:                               # %for.body65.lr.ph
	pcalau12i	$a4, %got_pc_hi20(netarray)
	ld.d	$a4, $a4, %got_pc_lo12(netarray)
	move	$fp, $zero
	ld.d	$a4, $a4, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_12:                               # %for.end122
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.w	$t0, $a7, 20
	ld.w	$t1, $a7, 12
	fld.d	$fa0, $a7, 48
	sub.d	$t0, $t0, $t1
	movgr2fr.w	$fa1, $t0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ld.w	$t0, $a7, 40
	ld.w	$t1, $a7, 28
	ftintrz.w.d	$fa0, $fa0
	fld.d	$fa1, $a7, 56
	movfr2gr.s	$a7, $fa0
	sub.d	$t0, $t0, $t1
	movgr2fr.w	$fa0, $t0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t0, $fa0
	add.d	$a7, $fp, $a7
	add.w	$fp, $a7, $t0
.LBB0_13:                               # %for.inc134
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $a5, .LBB0_31
.LBB0_14:                               # %for.body65
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_22 Depth 2
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a4, $a7
	beqz	$a7, .LBB0_13
# %bb.15:                               # %if.end70
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.w	$t0, $a7, 8
	beq	$t0, $a3, .LBB0_13
# %bb.16:                               # %for.cond75.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$t0, $a7
	.p2align	4, , 16
.LBB0_17:                               # %for.cond75
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $t0, 0
	beqz	$t0, .LBB0_12
# %bb.18:                               # %if.end78
                                        #   in Loop: Header=BB0_17 Depth=2
	ld.w	$t1, $t0, 40
	beq	$t1, $a3, .LBB0_17
# %bb.19:                               # %for.end88
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.w	$t1, $t0, 8
	ld.w	$t2, $t0, 12
	ld.d	$t0, $t0, 0
	st.w	$t1, $a7, 20
	st.w	$t1, $a7, 12
	st.w	$t2, $a7, 40
	st.w	$t2, $a7, 28
	bnez	$t0, .LBB0_22
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_20:                               # %if.then111
                                        #   in Loop: Header=BB0_22 Depth=2
	st.w	$t1, $a7, 28
.LBB0_21:                               # %for.inc120
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$t0, $t0, 0
	beqz	$t0, .LBB0_12
.LBB0_22:                               # %for.body91
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $t0, 40
	beq	$t1, $a3, .LBB0_21
# %bb.23:                               # %if.end95
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.w	$t2, $t0, 8
	ld.w	$t3, $a7, 12
	ld.w	$t1, $t0, 12
	bge	$t2, $t3, .LBB0_25
# %bb.24:                               # %if.then100
                                        #   in Loop: Header=BB0_22 Depth=2
	st.w	$t2, $a7, 12
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_25:                               # %if.else102
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.w	$t3, $a7, 20
	bge	$t3, $t2, .LBB0_27
# %bb.26:                               # %if.then105
                                        #   in Loop: Header=BB0_22 Depth=2
	st.w	$t2, $a7, 20
.LBB0_27:                               # %if.end108
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.w	$t2, $a7, 28
	blt	$t1, $t2, .LBB0_20
# %bb.28:                               # %if.else113
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.w	$t2, $a7, 40
	bge	$t2, $t1, .LBB0_21
# %bb.29:                               # %if.then116
                                        #   in Loop: Header=BB0_22 Depth=2
	st.w	$t1, $a7, 40
	b	.LBB0_21
.LBB0_30:
	move	$fp, $zero
.LBB0_31:                               # %for.end136
	pcalau12i	$a3, %got_pc_hi20(penalty)
	ld.d	$s3, $a3, %got_pc_lo12(penalty)
	addi.w	$a4, $zero, -3
	st.w	$zero, $s3, 0
	bge	$a0, $a4, .LBB0_33
# %bb.32:
	move	$a3, $zero
	b	.LBB0_39
.LBB0_33:                               # %for.body142.preheader
	pcalau12i	$a3, %got_pc_hi20(overlap)
	ld.d	$s4, $a3, %got_pc_lo12(overlap)
	pcalau12i	$a3, %got_pc_hi20(cellarray)
	ld.d	$s5, $a3, %got_pc_lo12(cellarray)
	move	$s6, $zero
	move	$a3, $zero
	ori	$s0, $zero, 1
	ori	$s7, $zero, 8
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_34:                               # %if.end149
                                        #   in Loop: Header=BB0_36 Depth=1
	ld.d	$a0, $s5, 0
	ldx.d	$a0, $a0, $s7
	ld.d	$a7, $s4, 0
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a0, 56
	ori	$a5, $zero, 1
	move	$a0, $s0
	move	$a4, $zero
	move	$a6, $zero
	jirl	$ra, $a7, 0
	ld.w	$a3, $s3, 0
	ld.w	$a1, $s1, 0
	ld.w	$a2, $s2, 0
	add.w	$a3, $a3, $a0
	st.w	$a3, $s3, 0
.LBB0_35:                               # %for.inc160
                                        #   in Loop: Header=BB0_36 Depth=1
	add.w	$a0, $a2, $a1
	addi.w	$a4, $a0, 4
	addi.w	$s0, $s0, 1
	addi.d	$s7, $s7, 8
	bge	$s6, $a4, .LBB0_38
.LBB0_36:                               # %for.body142
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s6, $s6, 1
	bge	$a1, $s6, .LBB0_34
# %bb.37:                               # %for.body142
                                        #   in Loop: Header=BB0_36 Depth=1
	bge	$a0, $s6, .LBB0_35
	b	.LBB0_34
.LBB0_38:                               # %for.end162.loopexit
	bstrpick.d	$a0, $a3, 31, 31
	add.w	$a0, $a3, $a0
	srai.d	$a3, $a0, 1
.LBB0_39:                               # %for.end162
	pcalau12i	$a0, %got_pc_hi20(overfill)
	ld.d	$a0, $a0, %got_pc_lo12(overfill)
	st.w	$a3, $s3, 0
	ori	$a2, $zero, 1
	st.w	$zero, $a0, 0
	blt	$a1, $a2, .LBB0_48
# %bb.40:                               # %for.body167.lr.ph
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	pcalau12i	$a3, %got_pc_hi20(cellarray)
	ld.d	$a4, $a3, %got_pc_lo12(cellarray)
	move	$a3, $zero
	fdiv.d	$fa0, $fs0, $fa0
	ld.d	$a4, $a4, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a5, $zero, 1
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_41:                               # %for.inc202
                                        #   in Loop: Header=BB0_42 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a5, $a1, .LBB0_48
.LBB0_42:                               # %for.body167
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
	slli.d	$a6, $a5, 3
	ldx.d	$a7, $a4, $a6
	ld.w	$a6, $a7, 76
	beqz	$a6, .LBB0_41
# %bb.43:                               # %for.cond177.preheader
                                        #   in Loop: Header=BB0_42 Depth=1
	ld.w	$a6, $a7, 128
	blt	$a6, $a2, .LBB0_41
# %bb.44:                               # %for.body180.lr.ph
                                        #   in Loop: Header=BB0_42 Depth=1
	ld.d	$t0, $a7, 136
	move	$a7, $zero
	addi.d	$t0, $t0, 28
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_45:                               # %for.inc199
                                        #   in Loop: Header=BB0_46 Depth=2
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 20
	bgeu	$a7, $a6, .LBB0_41
.LBB0_46:                               # %for.body180
                                        #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $t0, -8
	ld.w	$t2, $t0, 0
	bge	$t2, $t1, .LBB0_45
# %bb.47:                               # %if.then190
                                        #   in Loop: Header=BB0_46 Depth=2
	sub.d	$t1, $t1, $t2
	mul.d	$t1, $t1, $t1
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa1, $t1
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t1, $fa1
	add.d	$a3, $a3, $t1
	st.w	$a3, $a0, 0
	b	.LBB0_45
.LBB0_48:                               # %for.end204
	move	$a0, $fp
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	findcost, .Lfunc_end0-findcost
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
