	.file	"woverlapf.c"
	.text
	.globl	woverlapf                       # -- Begin function woverlapf
	.p2align	5
	.type	woverlapf,@function
woverlapf:                              # @woverlapf
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a7, %got_pc_hi20(cellarray)
	ld.d	$s5, $a7, %got_pc_lo12(cellarray)
	ld.d	$a7, $s5, 0
	slli.d	$t0, $a0, 3
	ldx.d	$s6, $a7, $t0
	alsl.d	$a3, $a3, $s6, 3
	ld.d	$t2, $a3, 152
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	move	$s8, $a5
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	ld.w	$a5, $t2, 56
	pcalau12i	$a3, %got_pc_hi20(numcells)
	ld.d	$a4, $a3, %got_pc_lo12(numcells)
	ld.w	$a7, $t2, 60
	ld.w	$a6, $t2, 64
	ld.w	$a3, $t2, 68
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	ld.w	$a4, $a4, 0
	add.w	$t0, $a5, $a1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	add.w	$t1, $a7, $a1
	add.w	$s1, $a6, $a2
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	add.w	$s2, $a3, $a2
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	st.d	$t2, $sp, 112                   # 8-byte Folded Spill
	blt	$a4, $a0, .LBB0_2
# %bb.1:                                # %if.then
	fld.d	$fa0, $t2, 8
	move	$a0, $t0
	move	$a1, $s1
	move	$a2, $s2
	move	$s3, $t2
	move	$fp, $t0
	move	$s0, $t1
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 16
	sub.w	$fp, $fp, $a0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 24
	add.w	$s0, $a0, $s0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 32
	sub.w	$s1, $s1, $a0
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	move	$t1, $s0
	move	$t0, $fp
	add.w	$s2, $a0, $s2
.LBB0_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(binOffsetX)
	ld.d	$a0, $a0, %got_pc_lo12(binOffsetX)
	pcalau12i	$a1, %got_pc_hi20(binWidthX)
	ld.d	$a1, $a1, %got_pc_lo12(binWidthX)
	pcalau12i	$a2, %got_pc_hi20(numBinsX)
	ld.d	$a2, $a2, %got_pc_lo12(numBinsX)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	ld.w	$a2, $a2, 0
	sub.w	$a3, $t0, $a0
	div.w	$a3, $a3, $a1
	slti	$a4, $a3, 1
	slt	$a5, $a3, $a2
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a2, $a5
	or	$a3, $a3, $a5
	masknez	$a3, $a3, $a4
	ori	$a5, $zero, 1
	maskeqz	$a4, $a5, $a4
	or	$t2, $a4, $a3
	sub.w	$a0, $t1, $a0
	div.w	$a0, $a0, $a1
	slt	$a1, $a2, $a0
	slt	$a3, $a5, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a5, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	pcalau12i	$a2, %got_pc_hi20(binOffsetY)
	ld.d	$a2, $a2, %got_pc_lo12(binOffsetY)
	pcalau12i	$a3, %got_pc_hi20(binWidthY)
	ld.d	$a3, $a3, %got_pc_lo12(binWidthY)
	pcalau12i	$a4, %got_pc_hi20(numBinsY)
	ld.d	$a4, $a4, %got_pc_lo12(numBinsY)
	ld.w	$a2, $a2, 0
	ld.w	$a3, $a3, 0
	or	$a0, $a1, $a0
	ld.w	$a1, $a4, 0
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	sub.w	$a4, $s1, $a2
	div.w	$a4, $a4, $a3
	slti	$a6, $a4, 1
	slt	$a7, $a4, $a1
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $a1, $a7
	or	$a4, $a4, $a7
	masknez	$a4, $a4, $a6
	maskeqz	$a6, $a5, $a6
	or	$a6, $a6, $a4
	st.d	$s2, $sp, 160                   # 8-byte Folded Spill
	sub.w	$a2, $s2, $a2
	div.w	$a2, $a2, $a3
	slt	$a3, $a1, $a2
	slt	$a4, $a5, $a2
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a5, $a4
	or	$a2, $a2, $a4
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	xor	$a2, $t2, $a0
	sltui	$a2, $a2, 1
	xor	$a3, $a6, $a1
	sltui	$a3, $a3, 1
	and	$a2, $a2, $a3
	pcalau12i	$a3, %got_pc_hi20(binX)
	ld.d	$a3, $a3, %got_pc_lo12(binX)
	pcalau12i	$a4, %got_pc_hi20(binY)
	ld.d	$a4, $a4, %got_pc_lo12(binY)
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$a5, $t2, $a2
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	maskeqz	$a2, $a6, $a2
	st.w	$a5, $a3, 0
	st.w	$a2, $a4, 0
	bltz	$a0, .LBB0_55
# %bb.3:                                # %for.body.lr.ph
	bltz	$a1, .LBB0_55
# %bb.4:                                # %for.body.preheader
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1
	pcalau12i	$a2, %got_pc_hi20(blockarray)
	ld.d	$a2, $a2, %got_pc_lo12(blockarray)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a1, $zero
	st.d	$t0, $sp, 144                   # 8-byte Folded Spill
	st.d	$t1, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %for.inc297
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_56
.LBB0_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_19 Depth 3
                                        #         Child Loop BB0_35 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #           Child Loop BB0_41 Depth 5
	beqz	$a1, .LBB0_8
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB0_5
.LBB0_8:                                # %for.cond56.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a2, $zero
	sltui	$a0, $a1, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %for.inc294
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB0_5
.LBB0_10:                               # %for.body58
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_19 Depth 3
                                        #         Child Loop BB0_35 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #           Child Loop BB0_41 Depth 5
	or	$a0, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_12
# %bb.11:                               # %for.body58
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slt	$a0, $a2, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a1, $a0
	bnez	$a0, .LBB0_9
.LBB0_12:                               # %if.end67
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ldx.d	$a5, $a0, $a1
	ld.w	$a0, $a5, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_9
# %bb.13:                               # %for.body75.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	ori	$a0, $zero, 1
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	b	.LBB0_19
.LBB0_14:                               # %if.then138
                                        #   in Loop: Header=BB0_19 Depth=3
	slt	$a0, $s3, $t0
	move	$a4, $a1
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $t0, $a0
	or	$a0, $a0, $a1
	slt	$a1, $t1, $fp
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $t1, $a1
	or	$a1, $a1, $a2
	slt	$a2, $s2, $a4
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	slt	$a3, $a5, $s1
	masknez	$a4, $s1, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	sub.d	$a2, $a3, $a2
	sub.d	$a0, $a1, $a0
	mulw.d.w	$t0, $a2, $a0
.LBB0_15:                               # %for.inc292.sink.split
                                        #   in Loop: Header=BB0_19 Depth=3
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$fp, $a0, %got_pc_lo12(offset)
	pcalau12i	$a0, %got_pc_hi20(lapFactor)
	ld.d	$s0, $a0, %got_pc_lo12(lapFactor)
	ld.w	$a0, $fp, 0
	fld.d	$fa0, $s0, 0
	add.d	$a0, $a0, $t0
	pcalau12i	$a1, %got_pc_hi20(fpo)
	ld.d	$s1, $a1, %got_pc_lo12(fpo)
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ld.d	$a0, $s1, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a1
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	move	$a3, $a6
	move	$s2, $t0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a0, $s1, 0
	fld.d	$fa0, $s0, 0
	add.d	$a1, $a1, $s2
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	addi.w	$a3, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_16:                               # %for.inc292
                                        #   in Loop: Header=BB0_19 Depth=3
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
.LBB0_17:                               # %for.inc292
                                        #   in Loop: Header=BB0_19 Depth=3
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
.LBB0_18:                               # %for.inc292
                                        #   in Loop: Header=BB0_19 Depth=3
	ld.w	$a1, $a5, 0
	addi.d	$a0, $a2, 1
	bge	$a2, $a1, .LBB0_9
.LBB0_19:                               # %for.body75
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_35 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #           Child Loop BB0_41 Depth 5
	move	$a2, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a6, $a5, $a0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	beq	$a6, $a0, .LBB0_18
# %bb.20:                               # %if.end80
                                        #   in Loop: Header=BB0_19 Depth=3
	ld.d	$a0, $s5, 0
	slli.d	$a1, $a6, 3
	ldx.d	$s4, $a0, $a1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bne	$a6, $a0, .LBB0_23
# %bb.21:                               # %if.else91
                                        #   in Loop: Header=BB0_19 Depth=3
	bnez	$s8, .LBB0_18
# %bb.22:                               # %if.then93
                                        #   in Loop: Header=BB0_19 Depth=3
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s4, 3
	addi.d	$a0, $a0, 152
	move	$a1, $s6
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               # %if.then84
                                        #   in Loop: Header=BB0_19 Depth=3
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ld.w	$a0, $s4, 56
	alsl.d	$a0, $a0, $s4, 3
	addi.d	$a0, $a0, 152
	move	$a1, $s4
.LBB0_24:                               # %if.end101
                                        #   in Loop: Header=BB0_19 Depth=3
	ld.d	$s7, $a0, 0
	ld.w	$a7, $a1, 16
	ld.w	$s0, $a1, 12
	ld.w	$a0, $s7, 56
	ld.w	$a1, $s7, 60
	ld.w	$a2, $s7, 64
	ld.w	$a3, $s7, 68
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	add.w	$s3, $a0, $s0
	add.w	$fp, $a1, $s0
	add.w	$s2, $a2, $a7
	add.w	$s1, $a3, $a7
	st.d	$a6, $sp, 256                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$a7, $sp, 248                   # 8-byte Folded Spill
	blt	$a4, $a6, .LBB0_26
# %bb.25:                               # %if.then111
                                        #   in Loop: Header=BB0_19 Depth=3
	fld.d	$fa0, $s7, 8
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s7, 16
	sub.w	$s3, $s3, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s7, 24
	add.w	$fp, $a0, $fp
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s7, 32
	sub.w	$s2, $s2, $a0
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	add.w	$s1, $a0, $s1
.LBB0_26:                               # %if.end124
                                        #   in Loop: Header=BB0_19 Depth=3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bge	$s3, $t1, .LBB0_17
# %bb.27:                               # %if.end124
                                        #   in Loop: Header=BB0_19 Depth=3
	bge	$t0, $fp, .LBB0_17
# %bb.28:                               # %if.end124
                                        #   in Loop: Header=BB0_19 Depth=3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bge	$s2, $a0, .LBB0_17
# %bb.29:                               # %if.end124
                                        #   in Loop: Header=BB0_19 Depth=3
	bge	$a1, $s1, .LBB0_17
# %bb.30:                               # %if.end133
                                        #   in Loop: Header=BB0_19 Depth=3
	ld.w	$a0, $s6, 60
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_32
# %bb.31:                               # %land.lhs.true135
                                        #   in Loop: Header=BB0_19 Depth=3
	ld.w	$a0, $s4, 60
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB0_14
.LBB0_32:                               # %if.else173
                                        #   in Loop: Header=BB0_19 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $a0, 0
	beqz	$s2, .LBB0_17
# %bb.33:                               # %for.body177.preheader
                                        #   in Loop: Header=BB0_19 Depth=3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	move	$t0, $zero
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %for.cond174.loopexit
                                        #   in Loop: Header=BB0_35 Depth=4
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB0_54
.LBB0_35:                               # %for.body177
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_47 Depth 5
                                        #           Child Loop BB0_41 Depth 5
	ld.w	$a0, $s2, 56
	ld.w	$a2, $s2, 60
	ld.w	$a3, $s2, 64
	ld.w	$a4, $s2, 68
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	add.w	$s1, $a0, $a5
	add.w	$s7, $a2, $a5
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	add.w	$s8, $a3, $a0
	add.w	$s5, $a4, $a0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB0_37
# %bb.36:                               # %if.then188
                                        #   in Loop: Header=BB0_35 Depth=4
	fld.d	$fa0, $s2, 8
	move	$a0, $s1
	move	$a1, $s8
	move	$a2, $s5
	move	$fp, $t0
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, 16
	sub.w	$s1, $s1, $a0
	move	$a0, $s7
	move	$a1, $s8
	move	$a2, $s5
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, 24
	add.w	$s7, $a0, $s7
	move	$a0, $s8
	move	$a1, $s1
	move	$a2, $s7
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, 32
	sub.w	$s8, $s8, $a0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s7
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	move	$t0, $fp
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.w	$s5, $a0, $s5
.LBB0_37:                               # %if.end201
                                        #   in Loop: Header=BB0_35 Depth=4
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	st.d	$s2, $sp, 224                   # 8-byte Folded Spill
	beqz	$s4, .LBB0_34
# %bb.38:                               # %for.body206.lr.ph
                                        #   in Loop: Header=BB0_35 Depth=4
	blt	$a1, $a6, .LBB0_41
# %bb.39:                               #   in Loop: Header=BB0_35 Depth=4
	st.d	$s7, $sp, 232                   # 8-byte Folded Spill
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_40:                               # %for.inc.us
                                        #   in Loop: Header=BB0_41 Depth=5
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB0_34
.LBB0_41:                               # %for.body206.us
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        #         Parent Loop BB0_35 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a0, $s4, 56
	add.w	$a0, $a0, $s0
	bge	$a0, $s7, .LBB0_40
# %bb.42:                               # %for.body206.us
                                        #   in Loop: Header=BB0_41 Depth=5
	ld.w	$a2, $s4, 60
	add.w	$a2, $a2, $s0
	bge	$s1, $a2, .LBB0_40
# %bb.43:                               # %for.body206.us
                                        #   in Loop: Header=BB0_41 Depth=5
	ld.w	$a3, $s4, 64
	add.w	$a3, $a3, $a7
	bge	$a3, $s5, .LBB0_40
# %bb.44:                               # %for.body206.us
                                        #   in Loop: Header=BB0_41 Depth=5
	ld.w	$a4, $s4, 68
	add.w	$a4, $a4, $a7
	bge	$s8, $a4, .LBB0_40
# %bb.45:                               # %if.end243.us
                                        #   in Loop: Header=BB0_41 Depth=5
	slt	$a5, $a0, $s1
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $s1, $a5
	or	$a0, $a5, $a0
	slt	$a5, $s7, $a2
	masknez	$a2, $a2, $a5
	maskeqz	$a5, $s7, $a5
	or	$a2, $a5, $a2
	slt	$a5, $a3, $s8
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $s8, $a5
	or	$a3, $a5, $a3
	slt	$a5, $s5, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $s5, $a5
	or	$a4, $a5, $a4
	sub.d	$a3, $a4, $a3
	sub.d	$a0, $a2, $a0
	mul.d	$a0, $a3, $a0
	add.w	$t0, $a0, $t0
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_46:                               # %for.inc
                                        #   in Loop: Header=BB0_47 Depth=5
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB0_34
.LBB0_47:                               # %for.body206
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        #         Parent Loop BB0_35 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a0, $s4, 56
	ld.w	$a2, $s4, 60
	ld.w	$a3, $s4, 64
	ld.w	$a4, $s4, 68
	add.w	$s3, $a0, $s0
	add.w	$fp, $a2, $s0
	add.w	$s2, $a3, $a7
	add.w	$s6, $a4, $a7
	blt	$a1, $a6, .LBB0_49
# %bb.48:                               # %if.then217
                                        #   in Loop: Header=BB0_47 Depth=5
	fld.d	$fa0, $s4, 8
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s6
	move	$s7, $s1
	move	$s1, $s5
	move	$s5, $s8
	move	$s8, $s0
	move	$s0, $t0
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s4, 16
	sub.w	$s3, $s3, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s4, 24
	add.w	$fp, $a0, $fp
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s4, 32
	sub.w	$s2, $s2, $a0
	move	$a0, $s6
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	move	$t0, $s0
	move	$s0, $s8
	move	$s8, $s5
	move	$s5, $s1
	move	$s1, $s7
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.w	$s6, $a0, $s6
.LBB0_49:                               # %if.end230
                                        #   in Loop: Header=BB0_47 Depth=5
	bge	$s3, $s7, .LBB0_46
# %bb.50:                               # %if.end230
                                        #   in Loop: Header=BB0_47 Depth=5
	bge	$s1, $fp, .LBB0_46
# %bb.51:                               # %if.end230
                                        #   in Loop: Header=BB0_47 Depth=5
	bge	$s2, $s5, .LBB0_46
# %bb.52:                               # %if.end230
                                        #   in Loop: Header=BB0_47 Depth=5
	bge	$s8, $s6, .LBB0_46
# %bb.53:                               # %if.end243
                                        #   in Loop: Header=BB0_47 Depth=5
	slt	$a0, $s3, $s1
	masknez	$a2, $s3, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a2
	slt	$a2, $s7, $fp
	masknez	$a3, $fp, $a2
	maskeqz	$a2, $s7, $a2
	or	$a2, $a2, $a3
	slt	$a3, $s2, $s8
	masknez	$a4, $s2, $a3
	maskeqz	$a3, $s8, $a3
	or	$a3, $a3, $a4
	slt	$a4, $s5, $s6
	masknez	$a5, $s6, $a4
	maskeqz	$a4, $s5, $a4
	or	$a4, $a4, $a5
	sub.d	$a3, $a4, $a3
	sub.d	$a0, $a2, $a0
	mul.d	$a0, $a3, $a0
	add.w	$t0, $a0, $t0
	b	.LBB0_46
.LBB0_54:                               # %for.end275
                                        #   in Loop: Header=BB0_19 Depth=3
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	bnez	$t0, .LBB0_15
	b	.LBB0_16
.LBB0_55:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
.LBB0_56:                               # %for.end299
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end0:
	.size	woverlapf, .Lfunc_end0-woverlapf
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Overlap condition: cell1:%d cell2:%d"
	.size	.L.str, 37

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"   value:%d   amount:%d\n"
	.size	.L.str.1, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
