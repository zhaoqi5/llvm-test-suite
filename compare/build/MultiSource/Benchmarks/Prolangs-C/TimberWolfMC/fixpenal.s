	.file	"fixpenal.c"
	.text
	.globl	fixpenal                        # -- Begin function fixpenal
	.p2align	5
	.type	fixpenal,@function
fixpenal:                               # @fixpenal
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$s0, $a0, %got_pc_lo12(numcells)
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_28
# %bb.1:
	pcalau12i	$a1, %got_pc_hi20(blockr)
	ld.d	$a1, $a1, %got_pc_lo12(blockr)
	pcalau12i	$a2, %got_pc_hi20(blockl)
	ld.d	$a2, $a2, %got_pc_lo12(blockl)
	ld.w	$a1, $a1, 0
	ld.w	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(blockt)
	ld.d	$a3, $a3, %got_pc_lo12(blockt)
	pcalau12i	$a4, %got_pc_hi20(blockb)
	ld.d	$a4, $a4, %got_pc_lo12(blockb)
	add.d	$a1, $a2, $a1
	ld.w	$a2, $a3, 0
	ld.w	$a3, $a4, 0
	bstrpick.d	$a4, $a1, 31, 31
	add.w	$a1, $a1, $a4
	srai.d	$s2, $a1, 1
	add.d	$a1, $a3, $a2
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	srai.d	$s3, $a1, 1
	pcalau12i	$a1, %got_pc_hi20(cellarray)
	ld.d	$s4, $a1, %got_pc_lo12(cellarray)
	pcalau12i	$s5, %pc_hi20(dx)
	lu12i.w	$a1, 244
	ori	$s6, $a1, 576
	pcalau12i	$s7, %pc_hi20(dy)
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	beqz	$s8, .LBB0_28
.LBB0_3:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_28
# %bb.4:                                # %for.body.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s8, $zero
	ori	$fp, $zero, 1
	b	.LBB0_9
.LBB0_5:                                # %if.else244
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.d	$a1, $t0, $a7
.LBB0_6:                                # %if.end251
                                        #   in Loop: Header=BB0_9 Depth=2
	st.w	$a1, $a0, 16
.LBB0_7:                                # %if.end251
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$fp, $fp, -1
	ori	$s8, $zero, 1
.LBB0_8:                                # %for.inc
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a0, $s0, 0
	move	$a1, $fp
	addi.w	$fp, $fp, 1
	bge	$a1, $a0, .LBB0_2
.LBB0_9:                                # %for.body
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 0
	slli.d	$s1, $fp, 3
	ldx.d	$a0, $a0, $s1
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a0, 56
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a4, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(whoOverlaps)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_8
# %bb.10:                               # %if.then
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a3, $s4, 0
	ldx.d	$a1, $a3, $s1
	slli.d	$a0, $a0, 3
	ld.w	$a2, $s5, %pc_lo12(dx)
	ldx.d	$a0, $a3, $a0
	beqz	$a2, .LBB0_19
# %bb.11:                               # %if.end
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a5, $s7, %pc_lo12(dy)
	beqz	$a5, .LBB0_20
.LBB0_12:                               # %if.end167
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a3, $a1, 12
	ld.w	$a4, $a1, 16
	sub.d	$a6, $a3, $s2
	mul.d	$a6, $a6, $a6
	sub.d	$a7, $a4, $s3
	mul.d	$a7, $a7, $a7
	add.d	$a6, $a7, $a6
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	fsqrt.d	$fa0, $fa0
	ld.w	$a6, $a0, 12
	ftintrz.w.d	$fa0, $fa0
	ld.w	$t0, $a0, 16
	movfr2gr.s	$t1, $fa0
	sub.d	$a7, $a6, $s2
	mul.d	$a7, $a7, $a7
	sub.d	$t2, $t0, $s3
	mul.d	$t2, $t2, $t2
	add.d	$a7, $t2, $a7
	bstrpick.d	$a7, $a7, 31, 0
	movgr2fr.d	$fa0, $a7
	ffint.d.l	$fa0, $fa0
	fsqrt.d	$fa0, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t2, $fa0
	slt	$a7, $a2, $a5
	masknez	$t3, $a5, $a7
	maskeqz	$a7, $a2, $a7
	or	$a7, $a7, $t3
	bge	$a5, $a2, .LBB0_16
# %bb.13:                               # %if.else213
                                        #   in Loop: Header=BB0_9 Depth=2
	bge	$t2, $t1, .LBB0_21
# %bb.14:                               # %if.then216
                                        #   in Loop: Header=BB0_9 Depth=2
	bge	$s3, $a4, .LBB0_25
# %bb.15:                               # %if.then222
                                        #   in Loop: Header=BB0_9 Depth=2
	add.d	$a0, $a4, $a7
	st.w	$a0, $a1, 16
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_16:                               # %if.then176
                                        #   in Loop: Header=BB0_9 Depth=2
	bge	$t2, $t1, .LBB0_23
# %bb.17:                               # %if.then179
                                        #   in Loop: Header=BB0_9 Depth=2
	bge	$s2, $a3, .LBB0_26
# %bb.18:                               # %if.then185
                                        #   in Loop: Header=BB0_9 Depth=2
	add.d	$a0, $a3, $a7
	st.w	$a0, $a1, 12
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_19:                               # %if.then163
                                        #   in Loop: Header=BB0_9 Depth=2
	st.w	$s6, $s5, %pc_lo12(dx)
	move	$a2, $s6
	ld.w	$a5, $s7, %pc_lo12(dy)
	bnez	$a5, .LBB0_12
.LBB0_20:                               # %if.then166
                                        #   in Loop: Header=BB0_9 Depth=2
	st.w	$s6, $s7, %pc_lo12(dy)
	move	$a5, $s6
	b	.LBB0_12
.LBB0_21:                               # %if.else233
                                        #   in Loop: Header=BB0_9 Depth=2
	bge	$s3, $t0, .LBB0_5
# %bb.22:                               # %if.then239
                                        #   in Loop: Header=BB0_9 Depth=2
	add.d	$a1, $t0, $a7
	b	.LBB0_6
.LBB0_23:                               # %if.else195
                                        #   in Loop: Header=BB0_9 Depth=2
	bge	$s2, $a6, .LBB0_27
# %bb.24:                               # %if.then201
                                        #   in Loop: Header=BB0_9 Depth=2
	add.d	$a1, $a6, $a7
	st.w	$a1, $a0, 12
	b	.LBB0_7
.LBB0_25:                               # %if.else227
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.d	$a0, $a4, $a7
	st.w	$a0, $a1, 16
	b	.LBB0_7
.LBB0_26:                               # %if.else
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.d	$a0, $a3, $a7
	st.w	$a0, $a1, 12
	b	.LBB0_7
.LBB0_27:                               # %if.else206
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.d	$a1, $a6, $a7
	st.w	$a1, $a0, 12
	b	.LBB0_7
.LBB0_28:                               # %while.end
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(padOverlaps)
	jr	$t8
.Lfunc_end0:
	.size	fixpenal, .Lfunc_end0-fixpenal
                                        # -- End function
	.globl	whoOverlaps                     # -- Begin function whoOverlaps
	.p2align	5
	.type	whoOverlaps,@function
whoOverlaps:                            # @whoOverlaps
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a7, %got_pc_hi20(cellarray)
	ld.d	$a7, $a7, %got_pc_lo12(cellarray)
	ld.d	$t6, $a7, 0
	move	$fp, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s0, $t6, $a0
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	move	$s2, $a5
	move	$s4, $a4
	alsl.d	$a0, $a3, $s0, 3
	ld.d	$s8, $a0, 152
	pcalau12i	$a7, %pc_hi20(dx)
	st.w	$zero, $a7, %pc_lo12(dx)
	pcalau12i	$t0, %pc_hi20(dy)
	ld.w	$a0, $s8, 56
	ld.w	$a3, $s8, 60
	ld.w	$a4, $s8, 64
	st.w	$zero, $t0, %pc_lo12(dy)
	add.w	$s7, $a0, $a1
	add.w	$t7, $a3, $a1
	add.w	$t2, $a4, $a2
	ld.w	$a0, $s8, 68
	pcalau12i	$a3, %got_pc_hi20(binOffsetX)
	ld.d	$a3, $a3, %got_pc_lo12(binOffsetX)
	pcalau12i	$a4, %got_pc_hi20(binWidthX)
	ld.d	$a4, $a4, %got_pc_lo12(binWidthX)
	pcalau12i	$a5, %got_pc_hi20(numBinsX)
	ld.d	$a5, $a5, %got_pc_lo12(numBinsX)
	ld.w	$a3, $a3, 0
	ld.w	$a4, $a4, 0
	add.w	$t4, $a0, $a2
	ld.w	$a0, $a5, 0
	sub.w	$a5, $s7, $a3
	div.w	$a5, $a5, $a4
	slti	$a6, $a5, 1
	slt	$t1, $a5, $a0
	maskeqz	$a5, $a5, $t1
	masknez	$t1, $a0, $t1
	or	$a5, $a5, $t1
	masknez	$a5, $a5, $a6
	ori	$t1, $zero, 1
	maskeqz	$a6, $t1, $a6
	or	$t5, $a6, $a5
	sub.w	$a3, $t7, $a3
	div.w	$a3, $a3, $a4
	slt	$a4, $a0, $a3
	slt	$a5, $t1, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $t1, $a5
	or	$a3, $a3, $a5
	masknez	$a3, $a3, $a4
	maskeqz	$a0, $a0, $a4
	pcalau12i	$a4, %got_pc_hi20(binOffsetY)
	ld.d	$a4, $a4, %got_pc_lo12(binOffsetY)
	pcalau12i	$a5, %got_pc_hi20(binWidthY)
	ld.d	$a5, $a5, %got_pc_lo12(binWidthY)
	pcalau12i	$a6, %got_pc_hi20(numBinsY)
	ld.d	$a6, $a6, %got_pc_lo12(numBinsY)
	ld.w	$a4, $a4, 0
	ld.w	$a5, $a5, 0
	or	$a3, $a0, $a3
	ld.w	$a0, $a6, 0
	st.d	$t2, $sp, 144                   # 8-byte Folded Spill
	sub.w	$a6, $t2, $a4
	div.w	$a6, $a6, $a5
	slti	$t2, $a6, 1
	slt	$t3, $a6, $a0
	maskeqz	$a6, $a6, $t3
	masknez	$t3, $a0, $t3
	or	$a6, $a6, $t3
	masknez	$a6, $a6, $t2
	maskeqz	$t2, $t1, $t2
	or	$t2, $t2, $a6
	st.d	$t4, $sp, 152                   # 8-byte Folded Spill
	sub.w	$a4, $t4, $a4
	div.w	$a4, $a4, $a5
	slt	$a5, $a0, $a4
	slt	$a6, $t1, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $t1, $a6
	or	$a4, $a4, $a6
	masknez	$a4, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a5, $a0, $a4
	xor	$a0, $t5, $a3
	sltui	$a0, $a0, 1
	xor	$a4, $t2, $a5
	sltui	$a4, $a4, 1
	and	$a0, $a0, $a4
	pcalau12i	$a4, %got_pc_hi20(binX)
	ld.d	$a4, $a4, %got_pc_lo12(binX)
	pcalau12i	$a6, %got_pc_hi20(binY)
	ld.d	$a6, $a6, %got_pc_lo12(binY)
	st.d	$t5, $sp, 24                    # 8-byte Folded Spill
	maskeqz	$t1, $t5, $a0
	st.d	$t2, $sp, 96                    # 8-byte Folded Spill
	maskeqz	$a0, $t2, $a0
	st.w	$t1, $a4, 0
	st.w	$a0, $a6, 0
	bltz	$a3, .LBB1_43
# %bb.1:                                # %for.body.lr.ph
	bltz	$a5, .LBB1_43
# %bb.2:                                # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(blockarray)
	ld.d	$a0, $a0, %got_pc_lo12(blockarray)
	pcalau12i	$a4, %got_pc_hi20(numcells)
	ld.d	$a4, $a4, %got_pc_lo12(numcells)
	move	$a6, $zero
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $a4, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a4, $a5, 1
	addi.d	$a3, $a3, 1
	bstrpick.d	$a0, $a3, 31, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a4, 31, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	st.d	$t7, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %for.inc222
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a6, $a6, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$a6, $a0, .LBB1_43
.LBB1_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_15 Depth 3
                                        #         Child Loop BB1_31 Depth 4
                                        #           Child Loop BB1_33 Depth 5
	beqz	$a6, .LBB1_6
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	blt	$a6, $a0, .LBB1_3
.LBB1_6:                                # %for.cond46.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$s6, $zero
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	sltui	$a0, $a6, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %for.inc219
                                        #   in Loop: Header=BB1_8 Depth=2
	addi.d	$s6, $s6, 1
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB1_3
.LBB1_8:                                # %for.body48
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_15 Depth 3
                                        #         Child Loop BB1_31 Depth 4
                                        #           Child Loop BB1_33 Depth 5
	or	$a3, $s6, $a6
	bstrpick.d	$a3, $a3, 31, 0
	beqz	$a3, .LBB1_10
# %bb.9:                                # %for.body48
                                        #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	slt	$a3, $s6, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	or	$a3, $a0, $a3
	bnez	$a3, .LBB1_7
.LBB1_10:                               # %if.end57
                                        #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	slli.d	$a4, $s6, 3
	ldx.d	$ra, $a3, $a4
	ld.w	$a5, $ra, 0
	blt	$a5, $s5, .LBB1_7
# %bb.11:                               # %for.body65.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	ori	$a3, $zero, 1
	b	.LBB1_15
.LBB1_12:                               # %for.end210
                                        #   in Loop: Header=BB1_15 Depth=3
	or	$a0, $fp, $a6
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB1_45
.LBB1_13:                               # %for.end210.for.inc217_crit_edge
                                        #   in Loop: Header=BB1_15 Depth=3
	ld.w	$a5, $ra, 0
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_14:                               # %for.inc217
                                        #   in Loop: Header=BB1_15 Depth=3
	addi.d	$a3, $s1, 1
	bge	$s1, $a5, .LBB1_7
.LBB1_15:                               # %for.body65
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_31 Depth 4
                                        #           Child Loop BB1_33 Depth 5
	move	$s1, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $ra, $a3
	beq	$a3, $fp, .LBB1_14
# %bb.16:                               # %for.body65
                                        #   in Loop: Header=BB1_15 Depth=3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB1_14
# %bb.17:                               # %if.end72
                                        #   in Loop: Header=BB1_15 Depth=3
	slli.d	$a4, $a3, 3
	ldx.d	$a6, $t6, $a4
	bne	$a3, $s4, .LBB1_20
# %bb.18:                               # %if.else83
                                        #   in Loop: Header=BB1_15 Depth=3
	bnez	$s2, .LBB1_14
# %bb.19:                               # %if.then85
                                        #   in Loop: Header=BB1_15 Depth=3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a6, 3
	addi.d	$a4, $a4, 152
	move	$t4, $s0
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_20:                               # %if.then76
                                        #   in Loop: Header=BB1_15 Depth=3
	ld.w	$a4, $a6, 56
	alsl.d	$a4, $a4, $a6, 3
	addi.d	$a4, $a4, 152
	move	$t4, $a6
.LBB1_21:                               # %if.end93
                                        #   in Loop: Header=BB1_15 Depth=3
	ld.d	$t1, $a4, 0
	ld.w	$s3, $t4, 12
	ld.w	$a4, $t1, 56
	add.w	$t2, $a4, $s3
	bge	$t2, $t7, .LBB1_14
# %bb.22:                               # %if.end93
                                        #   in Loop: Header=BB1_15 Depth=3
	ld.w	$a4, $t1, 60
	add.w	$t3, $a4, $s3
	bge	$s7, $t3, .LBB1_14
# %bb.23:                               # %if.end93
                                        #   in Loop: Header=BB1_15 Depth=3
	ld.w	$t8, $t4, 16
	ld.w	$a4, $t1, 64
	add.w	$t4, $a4, $t8
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bge	$t4, $a0, .LBB1_14
# %bb.24:                               # %if.end93
                                        #   in Loop: Header=BB1_15 Depth=3
	ld.w	$a4, $t1, 68
	add.w	$t5, $a4, $t8
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bge	$a0, $t5, .LBB1_14
# %bb.25:                               # %if.end110
                                        #   in Loop: Header=BB1_15 Depth=3
	ld.w	$a4, $s0, 60
	bne	$a4, $s5, .LBB1_27
# %bb.26:                               # %land.lhs.true112
                                        #   in Loop: Header=BB1_15 Depth=3
	ld.w	$a4, $a6, 60
	beq	$a4, $s5, .LBB1_44
.LBB1_27:                               # %if.else134
                                        #   in Loop: Header=BB1_15 Depth=3
	ld.d	$s7, $s8, 0
	beqz	$s7, .LBB1_13
# %bb.28:                               # %for.body137.lr.ph
                                        #   in Loop: Header=BB1_15 Depth=3
	ld.d	$t7, $t1, 0
	beqz	$t7, .LBB1_13
# %bb.29:                               # %for.body137.preheader
                                        #   in Loop: Header=BB1_15 Depth=3
	move	$a6, $zero
	move	$fp, $zero
	move	$t5, $zero
	move	$t3, $zero
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_30:                               # %for.cond147.for.cond135.loopexit_crit_edge
                                        #   in Loop: Header=BB1_31 Depth=4
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB1_12
.LBB1_31:                               # %for.body137
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        #       Parent Loop BB1_15 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_33 Depth 5
	ld.w	$a4, $s7, 56
	ld.w	$a5, $s7, 60
	ld.w	$t1, $s7, 64
	ld.w	$t6, $s7, 68
	add.w	$t2, $a4, $a1
	add.w	$t4, $a5, $a1
	add.w	$a5, $t1, $a2
	add.w	$s0, $t6, $a2
	move	$s8, $t7
	move	$t6, $t5
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_32:                               #   in Loop: Header=BB1_33 Depth=5
	move	$s4, $t6
	ld.d	$s8, $s8, 0
	move	$t6, $s4
	beqz	$s8, .LBB1_30
.LBB1_33:                               # %for.body149
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        #       Parent Loop BB1_15 Depth=3
                                        #         Parent Loop BB1_31 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a4, $s8, 56
	add.w	$s2, $a4, $s3
	bge	$s2, $t4, .LBB1_32
# %bb.34:                               # %for.body149
                                        #   in Loop: Header=BB1_33 Depth=5
	ld.w	$a4, $s8, 60
	add.w	$a4, $a4, $s3
	bge	$t2, $a4, .LBB1_32
# %bb.35:                               # %for.body149
                                        #   in Loop: Header=BB1_33 Depth=5
	ld.w	$t1, $s8, 64
	add.w	$s4, $t1, $t8
	bge	$s4, $s0, .LBB1_32
# %bb.36:                               # %for.body149
                                        #   in Loop: Header=BB1_33 Depth=5
	ld.w	$t1, $s8, 68
	add.w	$t1, $t1, $t8
	bge	$a5, $t1, .LBB1_32
# %bb.37:                               # %if.end166
                                        #   in Loop: Header=BB1_33 Depth=5
	slt	$a0, $s2, $t2
	masknez	$s2, $s2, $a0
	maskeqz	$a0, $t2, $a0
	or	$a0, $a0, $s2
	slt	$s2, $t4, $a4
	masknez	$a4, $a4, $s2
	maskeqz	$s2, $t4, $s2
	or	$a4, $s2, $a4
	sub.w	$a4, $a4, $a0
	blt	$t3, $s5, .LBB1_39
# %bb.38:                               # %if.end166
                                        #   in Loop: Header=BB1_33 Depth=5
	bge	$a4, $t3, .LBB1_40
.LBB1_39:                               # %if.end196.sink.split
                                        #   in Loop: Header=BB1_33 Depth=5
	st.w	$a4, $a7, %pc_lo12(dx)
	move	$fp, $a4
	move	$t3, $a4
.LBB1_40:                               # %if.end196
                                        #   in Loop: Header=BB1_33 Depth=5
	slt	$a0, $s4, $a5
	masknez	$a4, $s4, $a0
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a4
	slt	$a4, $s0, $t1
	masknez	$t1, $t1, $a4
	maskeqz	$a4, $s0, $a4
	or	$a4, $a4, $t1
	sub.w	$s4, $a4, $a0
	blt	$t6, $s5, .LBB1_42
# %bb.41:                               # %if.end196
                                        #   in Loop: Header=BB1_33 Depth=5
	bge	$s4, $t6, .LBB1_32
.LBB1_42:                               # %for.inc.sink.split
                                        #   in Loop: Header=BB1_33 Depth=5
	st.w	$s4, $t0, %pc_lo12(dy)
	move	$a6, $s4
	move	$t5, $s4
	ld.d	$s8, $s8, 0
	move	$t6, $s4
	bnez	$s8, .LBB1_33
	b	.LBB1_30
.LBB1_43:
	move	$a3, $zero
	b	.LBB1_45
.LBB1_44:                               # %if.then115
	slt	$a0, $t2, $s7
	masknez	$a1, $t2, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
	slt	$a1, $t7, $t3
	masknez	$a2, $t3, $a1
	maskeqz	$a1, $t7, $a1
	or	$a1, $a1, $a2
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	slt	$a2, $t4, $a5
	masknez	$a4, $t4, $a2
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	slt	$a4, $a6, $t5
	masknez	$a5, $t5, $a4
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	sub.d	$a0, $a1, $a0
	st.w	$a0, $a7, %pc_lo12(dx)
	sub.d	$a0, $a4, $a2
	st.w	$a0, $t0, %pc_lo12(dy)
.LBB1_45:                               # %cleanup
	move	$a0, $a3
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end1:
	.size	whoOverlaps, .Lfunc_end1-whoOverlaps
                                        # -- End function
	.globl	padOverlaps                     # -- Begin function padOverlaps
	.p2align	5
	.type	padOverlaps,@function
padOverlaps:                            # @padOverlaps
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_47
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a2, $a2, %got_pc_lo12(cellarray)
	pcalau12i	$a3, %got_pc_hi20(blockl)
	ld.d	$a3, $a3, %got_pc_lo12(blockl)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(blockr)
	ld.d	$a5, $a4, %got_pc_lo12(blockr)
	pcalau12i	$a4, %got_pc_hi20(blockb)
	pcalau12i	$a6, %got_pc_hi20(numpads)
	ld.d	$a6, $a6, %got_pc_lo12(numpads)
	ld.d	$a7, $a4, %got_pc_lo12(blockb)
	pcalau12i	$a4, %got_pc_hi20(blockt)
	ld.d	$t0, $a4, %got_pc_lo12(blockt)
	ld.w	$a4, $a6, 0
	ld.w	$a5, $a5, 0
	ld.w	$a6, $a7, 0
	ld.w	$a7, $t0, 0
	add.w	$t0, $a4, $a0
	addi.d	$t1, $a0, 1
	bstrpick.d	$t1, $t1, 31, 0
	addi.d	$t2, $a0, -1
	alsl.d	$t3, $a0, $a2, 3
	addi.d	$t3, $t3, 8
	ori	$t4, $zero, 3
	ori	$t5, $zero, 4
	ori	$t6, $zero, 2
	ori	$t7, $zero, 1
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %for.inc187
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.d	$t7, $t7, 1
	beq	$t7, $t1, .LBB2_47
.LBB2_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_39 Depth 2
                                        #     Child Loop BB2_45 Depth 2
                                        #     Child Loop BB2_29 Depth 2
                                        #     Child Loop BB2_35 Depth 2
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_25 Depth 2
                                        #     Child Loop BB2_9 Depth 2
                                        #     Child Loop BB2_15 Depth 2
	slli.d	$t8, $t7, 3
	ldx.d	$t8, $a2, $t8
	ld.w	$fp, $t8, 56
	alsl.d	$fp, $fp, $t8, 3
	ld.d	$fp, $fp, 152
	ld.w	$s0, $t8, 12
	ld.w	$s1, $fp, 56
	ld.w	$s2, $fp, 60
	ld.w	$t8, $t8, 16
	ld.w	$s3, $fp, 64
	ld.w	$s4, $fp, 68
	add.w	$s1, $s1, $s0
	add.w	$s0, $s2, $s0
	add.w	$fp, $s3, $t8
	add.w	$t8, $s4, $t8
	blt	$s1, $a3, .LBB2_7
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	blt	$a5, $s0, .LBB2_7
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	blt	$fp, $a6, .LBB2_7
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	bge	$a7, $t8, .LBB2_2
.LBB2_7:                                # %if.end
                                        #   in Loop: Header=BB2_3 Depth=1
	bge	$s1, $a3, .LBB2_17
# %bb.8:                                # %for.cond17.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t8, $t3
	move	$fp, $t2
	.p2align	4, , 16
.LBB2_9:                                # %for.cond17
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$fp, $fp, 1
	bge	$fp, $t0, .LBB2_2
# %bb.10:                               # %for.body20
                                        #   in Loop: Header=BB2_9 Depth=2
	ld.d	$s0, $t8, 0
	ld.w	$s2, $s0, 80
	addi.d	$t8, $t8, 8
	bne	$s2, $a1, .LBB2_9
# %bb.11:                               # %if.end25
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.w	$t8, $s0, 56
	alsl.d	$t8, $t8, $s0, 3
	ld.d	$t8, $t8, 152
	ld.w	$fp, $s0, 12
	ld.w	$t8, $t8, 60
	sub.d	$fp, $fp, $s1
	add.w	$t8, $fp, $t8
	blt	$t8, $a1, .LBB2_2
# %bb.12:                               # %if.end25
                                        #   in Loop: Header=BB2_3 Depth=1
	blt	$a4, $a1, .LBB2_2
# %bb.13:                               # %for.body40.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$fp, $a0
	move	$s0, $t3
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %for.inc
                                        #   in Loop: Header=BB2_15 Depth=2
	addi.w	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	bge	$fp, $t0, .LBB2_2
.LBB2_15:                               # %for.body40
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s0, 0
	ld.w	$s2, $s1, 80
	bne	$s2, $a1, .LBB2_14
# %bb.16:                               # %if.then45
                                        #   in Loop: Header=BB2_15 Depth=2
	ld.w	$s2, $s1, 12
	sub.d	$s2, $s2, $t8
	st.w	$s2, $s1, 12
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_17:                               # %if.else
                                        #   in Loop: Header=BB2_3 Depth=1
	bge	$a5, $s0, .LBB2_27
# %bb.18:                               # %for.cond55.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t8, $t3
	move	$fp, $t2
	.p2align	4, , 16
.LBB2_19:                               # %for.cond55
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$fp, $fp, 1
	bge	$fp, $t0, .LBB2_2
# %bb.20:                               # %for.body58
                                        #   in Loop: Header=BB2_19 Depth=2
	ld.d	$s1, $t8, 0
	ld.w	$s2, $s1, 80
	addi.d	$t8, $t8, 8
	bne	$s2, $t4, .LBB2_19
# %bb.21:                               # %if.end64
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.w	$t8, $s1, 56
	alsl.d	$t8, $t8, $s1, 3
	ld.d	$t8, $t8, 152
	ld.w	$fp, $s1, 12
	ld.w	$t8, $t8, 56
	add.d	$t8, $fp, $t8
	sub.w	$t8, $s0, $t8
	blt	$t8, $a1, .LBB2_2
# %bb.22:                               # %if.end64
                                        #   in Loop: Header=BB2_3 Depth=1
	blt	$a4, $a1, .LBB2_2
# %bb.23:                               # %for.body80.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$fp, $a0
	move	$s0, $t3
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_24:                               # %for.inc89
                                        #   in Loop: Header=BB2_25 Depth=2
	addi.w	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	bge	$fp, $t0, .LBB2_2
.LBB2_25:                               # %for.body80
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s0, 0
	ld.w	$s2, $s1, 80
	bne	$s2, $t4, .LBB2_24
# %bb.26:                               # %if.then85
                                        #   in Loop: Header=BB2_25 Depth=2
	ld.w	$s2, $s1, 12
	add.d	$s2, $s2, $t8
	st.w	$s2, $s1, 12
	b	.LBB2_24
.LBB2_27:                               # %if.else95
                                        #   in Loop: Header=BB2_3 Depth=1
	bge	$fp, $a6, .LBB2_37
# %bb.28:                               # %for.cond99.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t8, $t3
	move	$s0, $t2
	.p2align	4, , 16
.LBB2_29:                               # %for.cond99
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $t0, .LBB2_2
# %bb.30:                               # %for.body102
                                        #   in Loop: Header=BB2_29 Depth=2
	ld.d	$s1, $t8, 0
	ld.w	$s2, $s1, 80
	addi.d	$t8, $t8, 8
	bne	$s2, $t5, .LBB2_29
# %bb.31:                               # %if.end108
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.w	$t8, $s1, 56
	alsl.d	$t8, $t8, $s1, 3
	ld.d	$t8, $t8, 152
	ld.w	$s0, $s1, 16
	ld.w	$t8, $t8, 68
	sub.d	$fp, $s0, $fp
	add.w	$t8, $fp, $t8
	blt	$t8, $a1, .LBB2_2
# %bb.32:                               # %if.end108
                                        #   in Loop: Header=BB2_3 Depth=1
	blt	$a4, $a1, .LBB2_2
# %bb.33:                               # %for.body124.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$fp, $a0
	move	$s0, $t3
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %for.inc133
                                        #   in Loop: Header=BB2_35 Depth=2
	addi.w	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	bge	$fp, $t0, .LBB2_2
.LBB2_35:                               # %for.body124
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s0, 0
	ld.w	$s2, $s1, 80
	bne	$s2, $t5, .LBB2_34
# %bb.36:                               # %if.then129
                                        #   in Loop: Header=BB2_35 Depth=2
	ld.w	$s2, $s1, 16
	sub.d	$s2, $s2, $t8
	st.w	$s2, $s1, 16
	b	.LBB2_34
.LBB2_37:                               # %if.else139
                                        #   in Loop: Header=BB2_3 Depth=1
	bge	$a7, $t8, .LBB2_2
# %bb.38:                               # %for.cond143.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$fp, $t3
	move	$s0, $t2
	.p2align	4, , 16
.LBB2_39:                               # %for.cond143
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $t0, .LBB2_2
# %bb.40:                               # %for.body146
                                        #   in Loop: Header=BB2_39 Depth=2
	ld.d	$s1, $fp, 0
	ld.w	$s2, $s1, 80
	addi.d	$fp, $fp, 8
	bne	$s2, $t6, .LBB2_39
# %bb.41:                               # %if.end152
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.w	$fp, $s1, 56
	alsl.d	$fp, $fp, $s1, 3
	ld.d	$fp, $fp, 152
	ld.w	$s0, $s1, 16
	ld.w	$fp, $fp, 64
	add.d	$fp, $s0, $fp
	sub.w	$t8, $t8, $fp
	blt	$t8, $a1, .LBB2_2
# %bb.42:                               # %if.end152
                                        #   in Loop: Header=BB2_3 Depth=1
	blt	$a4, $a1, .LBB2_2
# %bb.43:                               # %for.body168.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$fp, $a0
	move	$s0, $t3
	b	.LBB2_45
	.p2align	4, , 16
.LBB2_44:                               # %for.inc177
                                        #   in Loop: Header=BB2_45 Depth=2
	addi.w	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	bge	$fp, $t0, .LBB2_2
.LBB2_45:                               # %for.body168
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s0, 0
	ld.w	$s2, $s1, 80
	bne	$s2, $t6, .LBB2_44
# %bb.46:                               # %if.then173
                                        #   in Loop: Header=BB2_45 Depth=2
	ld.w	$s2, $s1, 16
	add.d	$s2, $s2, $t8
	st.w	$s2, $s1, 16
	b	.LBB2_44
.LBB2_47:                               # %for.end189
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	padOverlaps, .Lfunc_end2-padOverlaps
                                        # -- End function
	.type	dx,@object                      # @dx
	.comm	dx,4,4
	.type	dy,@object                      # @dy
	.comm	dy,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
