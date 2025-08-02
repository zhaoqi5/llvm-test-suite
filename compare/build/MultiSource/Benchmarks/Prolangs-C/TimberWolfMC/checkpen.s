	.file	"checkpen.c"
	.text
	.globl	checkpen                        # -- Begin function checkpen
	.p2align	5
	.type	checkpen,@function
checkpen:                               # @checkpen
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$s1, $a0, %got_pc_lo12(numcells)
	ld.w	$a0, $s1, 0
	ori	$fp, $zero, 1
	blt	$a0, $fp, .LBB0_3
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$s2, $a0, %got_pc_lo12(cellarray)
	move	$s3, $zero
	move	$s0, $zero
	ori	$s4, $zero, 8
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ldx.d	$a0, $a0, $s4
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a0, 56
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a4, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(checkover)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	add.w	$s0, $a0, $s0
	addi.d	$s3, $s3, 1
	addi.w	$fp, $fp, 1
	addi.d	$s4, $s4, 8
	blt	$s3, $a1, .LBB0_2
	b	.LBB0_4
.LBB0_3:
	move	$s0, $zero
.LBB0_4:                                # %for.end
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	checkpen, .Lfunc_end0-checkpen
                                        # -- End function
	.globl	checkover                       # -- Begin function checkover
	.p2align	5
	.type	checkover,@function
checkover:                              # @checkover
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a7, %got_pc_hi20(cellarray)
	ld.d	$a7, $a7, %got_pc_lo12(cellarray)
	ld.d	$a7, $a7, 0
	slli.d	$t0, $a0, 3
	ldx.d	$s4, $a7, $t0
	alsl.d	$a3, $a3, $s4, 3
	ld.d	$s7, $a3, 152
	ld.w	$a3, $s7, 56
	ld.w	$t0, $s7, 60
	ld.w	$t1, $s7, 64
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	add.w	$t2, $a3, $a1
	add.w	$t3, $t0, $a1
	add.w	$a5, $t1, $a2
	ld.w	$a3, $s7, 68
	pcalau12i	$a6, %got_pc_hi20(binOffsetX)
	ld.d	$a6, $a6, %got_pc_lo12(binOffsetX)
	pcalau12i	$t0, %got_pc_hi20(binWidthX)
	ld.d	$t0, $t0, %got_pc_lo12(binWidthX)
	pcalau12i	$t1, %got_pc_hi20(numBinsX)
	ld.d	$t1, $t1, %got_pc_lo12(numBinsX)
	ld.w	$a6, $a6, 0
	ld.w	$t0, $t0, 0
	add.w	$t5, $a3, $a2
	ld.w	$a3, $t1, 0
	sub.w	$t1, $t2, $a6
	div.w	$t1, $t1, $t0
	slti	$t4, $t1, 1
	slt	$t6, $t1, $a3
	maskeqz	$t1, $t1, $t6
	masknez	$t6, $a3, $t6
	or	$t1, $t1, $t6
	masknez	$t1, $t1, $t4
	ori	$t7, $zero, 1
	maskeqz	$t4, $t7, $t4
	or	$fp, $t4, $t1
	sub.w	$a6, $t3, $a6
	div.w	$a6, $a6, $t0
	slt	$t0, $a3, $a6
	slt	$t1, $t7, $a6
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t7, $t1
	or	$a6, $a6, $t1
	masknez	$a6, $a6, $t0
	maskeqz	$a3, $a3, $t0
	pcalau12i	$t0, %got_pc_hi20(binOffsetY)
	ld.d	$t0, $t0, %got_pc_lo12(binOffsetY)
	pcalau12i	$t1, %got_pc_hi20(binWidthY)
	ld.d	$t1, $t1, %got_pc_lo12(binWidthY)
	pcalau12i	$t4, %got_pc_hi20(numBinsY)
	ld.d	$t4, $t4, %got_pc_lo12(numBinsY)
	ld.w	$t0, $t0, 0
	ld.w	$t1, $t1, 0
	or	$t6, $a3, $a6
	ld.w	$a3, $t4, 0
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	sub.w	$a6, $a5, $t0
	div.w	$a6, $a6, $t1
	slti	$t4, $a6, 1
	slt	$t8, $a6, $a3
	maskeqz	$a6, $a6, $t8
	masknez	$t8, $a3, $t8
	or	$a6, $a6, $t8
	masknez	$a6, $a6, $t4
	maskeqz	$t4, $t7, $t4
	or	$a5, $t4, $a6
	sub.w	$a6, $t5, $t0
	div.w	$a6, $a6, $t1
	slt	$t0, $a3, $a6
	slt	$t1, $t7, $a6
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t7, $t1
	or	$a6, $a6, $t1
	masknez	$a6, $a6, $t0
	maskeqz	$a3, $a3, $t0
	or	$a6, $a3, $a6
	xor	$a3, $fp, $t6
	sltui	$a3, $a3, 1
	xor	$t0, $a5, $a6
	sltui	$t0, $t0, 1
	and	$a3, $a3, $t0
	pcalau12i	$t0, %got_pc_hi20(binX)
	ld.d	$t0, $t0, %got_pc_lo12(binX)
	pcalau12i	$t1, %got_pc_hi20(binY)
	ld.d	$t1, $t1, %got_pc_lo12(binY)
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	maskeqz	$t4, $fp, $a3
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	maskeqz	$a3, $a5, $a3
	st.w	$t4, $t0, 0
	st.w	$a3, $t1, 0
	bltz	$t6, .LBB1_41
# %bb.1:                                # %for.body.lr.ph
	bltz	$a6, .LBB1_41
# %bb.2:                                # %for.body.preheader
	move	$a5, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(blockarray)
	ld.d	$a3, $a3, %got_pc_lo12(blockarray)
	pcalau12i	$t0, %got_pc_hi20(numcells)
	ld.d	$t0, $t0, %got_pc_lo12(numcells)
	pcalau12i	$t1, %got_pc_hi20(lapFactor)
	ld.d	$t1, $t1, %got_pc_lo12(lapFactor)
	pcalau12i	$t4, %got_pc_hi20(offset)
	ld.d	$t4, $t4, %got_pc_lo12(offset)
	ld.d	$a3, $a3, 0
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s0, $t0, 0
	fld.d	$fa0, $t1, 0
	ld.w	$a3, $t4, 0
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a3, $a6, 1
	addi.d	$a6, $t6, 1
	bstrpick.d	$a6, $a6, 31, 0
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ori	$s6, $zero, 1
	ld.d	$t8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %for.inc224
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a5, $a5, 1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	beq	$a5, $a3, .LBB1_42
.LBB1_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_14 Depth 3
                                        #         Child Loop BB1_31 Depth 4
                                        #           Child Loop BB1_33 Depth 5
	beqz	$a5, .LBB1_6
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	blt	$a5, $a3, .LBB1_3
.LBB1_6:                                # %for.cond46.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$s5, $zero
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	sltui	$a3, $a5, 1
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %for.inc221
                                        #   in Loop: Header=BB1_8 Depth=2
	addi.d	$s5, $s5, 1
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	beq	$s5, $a3, .LBB1_3
.LBB1_8:                                # %for.body48
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_14 Depth 3
                                        #         Child Loop BB1_31 Depth 4
                                        #           Child Loop BB1_33 Depth 5
	or	$a3, $s5, $a5
	bstrpick.d	$a3, $a3, 31, 0
	beqz	$a3, .LBB1_10
# %bb.9:                                # %for.body48
                                        #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	slt	$a3, $s5, $a3
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	or	$a3, $a5, $a3
	bnez	$a3, .LBB1_7
.LBB1_10:                               # %if.end57
                                        #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a6, $s5, 3
	ldx.d	$s8, $a3, $a6
	ld.w	$a3, $s8, 0
	blt	$a3, $s6, .LBB1_7
# %bb.11:                               # %for.body65.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	addi.d	$a3, $a3, 1
	bstrpick.d	$ra, $a3, 31, 0
	ori	$fp, $zero, 1
	b	.LBB1_14
.LBB1_12:                               #   in Loop: Header=BB1_14 Depth=3
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB1_13:                               # %for.inc219
                                        #   in Loop: Header=BB1_14 Depth=3
	addi.d	$fp, $fp, 1
	beq	$fp, $ra, .LBB1_7
.LBB1_14:                               # %for.body65
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_31 Depth 4
                                        #           Child Loop BB1_33 Depth 5
	slli.d	$a3, $fp, 2
	ldx.w	$a6, $s8, $a3
	beq	$a6, $a0, .LBB1_13
# %bb.15:                               # %for.body65
                                        #   in Loop: Header=BB1_14 Depth=3
	blt	$s0, $a6, .LBB1_13
# %bb.16:                               # %if.end72
                                        #   in Loop: Header=BB1_14 Depth=3
	slli.d	$a3, $a6, 3
	ldx.d	$a3, $a7, $a3
	bne	$a6, $a4, .LBB1_19
# %bb.17:                               # %if.else83
                                        #   in Loop: Header=BB1_14 Depth=3
	bnez	$t8, .LBB1_13
# %bb.18:                               # %if.then85
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a3, 3
	addi.d	$a6, $a6, 152
	move	$s1, $s4
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_19:                               # %if.then76
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.w	$a6, $a3, 56
	alsl.d	$a6, $a6, $a3, 3
	addi.d	$a6, $a6, 152
	move	$s1, $a3
.LBB1_20:                               # %if.end93
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.d	$a6, $a6, 0
	ld.w	$t6, $s1, 12
	ld.w	$t0, $a6, 56
	add.w	$t1, $t0, $t6
	bge	$t1, $t3, .LBB1_13
# %bb.21:                               # %if.end93
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.w	$t0, $a6, 60
	add.w	$t7, $t0, $t6
	bge	$t2, $t7, .LBB1_13
# %bb.22:                               # %if.end93
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.w	$s2, $s1, 16
	ld.w	$t0, $a6, 64
	add.w	$s1, $t0, $s2
	bge	$s1, $t5, .LBB1_13
# %bb.23:                               # %if.end93
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.w	$t0, $a6, 68
	add.w	$s3, $t0, $s2
	bge	$t4, $s3, .LBB1_13
# %bb.24:                               # %if.end110
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.w	$t0, $s4, 60
	bne	$t0, $s6, .LBB1_27
# %bb.25:                               # %land.lhs.true112
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.w	$a3, $a3, 60
	bne	$a3, $s6, .LBB1_27
# %bb.26:                               # %if.then115
                                        #   in Loop: Header=BB1_14 Depth=3
	slt	$a3, $t1, $t2
	masknez	$a6, $t1, $a3
	maskeqz	$a3, $t2, $a3
	or	$a3, $a3, $a6
	slt	$a6, $t3, $t7
	masknez	$t0, $t7, $a6
	maskeqz	$a6, $t3, $a6
	or	$a6, $a6, $t0
	slt	$t0, $s1, $t4
	masknez	$t1, $s1, $t0
	maskeqz	$t0, $t4, $t0
	or	$t0, $t0, $t1
	slt	$t1, $t5, $s3
	masknez	$t4, $s3, $t1
	maskeqz	$t1, $t5, $t1
	or	$t1, $t1, $t4
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	sub.d	$t0, $t1, $t0
	sub.d	$a3, $a6, $a3
	mul.d	$a3, $t0, $a3
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a3, $fa1
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a3
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	b	.LBB1_13
.LBB1_27:                               # %if.else138
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.d	$s6, $s7, 0
	beqz	$s6, .LBB1_12
# %bb.28:                               # %for.body142.lr.ph
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.d	$a3, $a6, 0
	beqz	$a3, .LBB1_12
# %bb.29:                               # %for.body142.preheader
                                        #   in Loop: Header=BB1_14 Depth=3
	move	$s1, $zero
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_30:                               # %for.cond152.for.cond139.loopexit_crit_edge
                                        #   in Loop: Header=BB1_31 Depth=4
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB1_38
.LBB1_31:                               # %for.body142
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        #       Parent Loop BB1_14 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_33 Depth 5
	ld.w	$a6, $s6, 56
	ld.w	$t0, $s6, 60
	ld.w	$t1, $s6, 64
	ld.w	$t4, $s6, 68
	add.w	$a6, $a6, $a1
	add.w	$s7, $t0, $a1
	add.w	$t1, $t1, $a2
	add.w	$s3, $t4, $a2
	move	$t7, $a3
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_32:                               # %for.inc
                                        #   in Loop: Header=BB1_33 Depth=5
	ld.d	$t7, $t7, 0
	beqz	$t7, .LBB1_30
.LBB1_33:                               # %for.body155
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        #       Parent Loop BB1_14 Depth=3
                                        #         Parent Loop BB1_31 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t0, $t7, 56
	add.w	$t8, $t0, $t6
	bge	$t8, $s7, .LBB1_32
# %bb.34:                               # %for.body155
                                        #   in Loop: Header=BB1_33 Depth=5
	ld.w	$t0, $t7, 60
	add.w	$s4, $t0, $t6
	bge	$a6, $s4, .LBB1_32
# %bb.35:                               # %for.body155
                                        #   in Loop: Header=BB1_33 Depth=5
	ld.w	$t0, $t7, 64
	add.w	$t0, $t0, $s2
	bge	$t0, $s3, .LBB1_32
# %bb.36:                               # %for.body155
                                        #   in Loop: Header=BB1_33 Depth=5
	ld.w	$t4, $t7, 68
	add.w	$t4, $t4, $s2
	bge	$t1, $t4, .LBB1_32
# %bb.37:                               # %if.end176
                                        #   in Loop: Header=BB1_33 Depth=5
	slt	$a5, $t8, $a6
	masknez	$t8, $t8, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $t8
	slt	$t8, $s7, $s4
	masknez	$s4, $s4, $t8
	maskeqz	$t8, $s7, $t8
	or	$t8, $t8, $s4
	slt	$s4, $t0, $t1
	masknez	$t0, $t0, $s4
	maskeqz	$s4, $t1, $s4
	or	$t0, $s4, $t0
	slt	$s4, $s3, $t4
	masknez	$t4, $t4, $s4
	maskeqz	$s4, $s3, $s4
	or	$t4, $s4, $t4
	sub.d	$t0, $t4, $t0
	sub.d	$a5, $t8, $a5
	mul.d	$a5, $t0, $a5
	add.w	$s1, $a5, $s1
	b	.LBB1_32
.LBB1_38:                               # %for.end208
                                        #   in Loop: Header=BB1_14 Depth=3
	ori	$s6, $zero, 1
	beqz	$s1, .LBB1_40
# %bb.39:                               # %if.then211
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.d	$a3, $a3, $s1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a3, $fa1
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a3
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
.LBB1_40:                               # %for.inc219
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	b	.LBB1_13
.LBB1_41:
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
.LBB1_42:                               # %for.end226
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end1:
	.size	checkover, .Lfunc_end1-checkover
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
