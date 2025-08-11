	.file	"goverlapf.c"
	.text
	.globl	goverlapf                       # -- Begin function goverlapf
	.p2align	5
	.type	goverlapf,@function
goverlapf:                              # @goverlapf
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
	ld.d	$t8, $a7, %got_pc_lo12(cellarray)
	ld.d	$a7, $t8, 0
	move	$fp, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$t6, $a7, $a0
	alsl.d	$a0, $a3, $t6, 3
	ld.d	$ra, $a0, 152
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	move	$s2, $a5
	move	$s0, $a4
	move	$s3, $a2
	move	$s4, $a1
	ld.w	$a0, $ra, 56
	pcalau12i	$a1, %got_pc_hi20(numcells)
	ld.d	$s5, $a1, %got_pc_lo12(numcells)
	ld.w	$a1, $ra, 60
	ld.w	$a2, $ra, 64
	ld.w	$a3, $ra, 68
	ld.w	$a4, $s5, 0
	add.w	$t7, $a0, $s4
	add.w	$s6, $a1, $s4
	add.w	$s8, $a2, $s3
	add.w	$t0, $a3, $s3
	blt	$a4, $fp, .LBB0_2
# %bb.1:                                # %if.then
	ld.w	$a0, $ra, 40
	ld.w	$a1, $ra, 44
	ld.w	$a2, $ra, 48
	ld.w	$a3, $ra, 52
	sub.w	$t7, $t7, $a0
	add.w	$s6, $a1, $s6
	sub.w	$s8, $s8, $a2
	add.w	$t0, $a3, $t0
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
	sub.w	$a3, $t7, $a0
	div.w	$a3, $a3, $a1
	slti	$a4, $a3, 1
	slt	$a5, $a3, $a2
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a2, $a5
	or	$a3, $a3, $a5
	masknez	$a3, $a3, $a4
	ori	$a5, $zero, 1
	maskeqz	$a4, $a5, $a4
	or	$t1, $a4, $a3
	sub.w	$a0, $s6, $a0
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
	sub.w	$a4, $s8, $a2
	div.w	$a4, $a4, $a3
	slti	$a6, $a4, 1
	slt	$a7, $a4, $a1
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $a1, $a7
	or	$a4, $a4, $a7
	masknez	$a4, $a4, $a6
	maskeqz	$a6, $a5, $a6
	or	$a6, $a6, $a4
	sub.w	$a2, $t0, $a2
	div.w	$a2, $a2, $a3
	slt	$a3, $a1, $a2
	slt	$a4, $a5, $a2
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a5, $a4
	or	$a2, $a2, $a4
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	xor	$a2, $t1, $a0
	sltui	$a2, $a2, 1
	xor	$a3, $a6, $a1
	sltui	$a3, $a3, 1
	and	$a2, $a2, $a3
	pcalau12i	$a3, %got_pc_hi20(binX)
	ld.d	$a3, $a3, %got_pc_lo12(binX)
	pcalau12i	$a4, %got_pc_hi20(binY)
	ld.d	$a4, $a4, %got_pc_lo12(binY)
	st.d	$t1, $sp, 8                     # 8-byte Folded Spill
	maskeqz	$a5, $t1, $a2
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	maskeqz	$a2, $a6, $a2
	st.w	$a5, $a3, 0
	st.w	$a2, $a4, 0
	bltz	$a0, .LBB0_55
# %bb.3:                                # %for.body.lr.ph
	bltz	$a1, .LBB0_55
# %bb.4:                                # %for.body.preheader
	st.d	$t0, $sp, 160                   # 8-byte Folded Spill
	move	$a3, $zero
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1
	pcalau12i	$a2, %got_pc_hi20(blockarray)
	ld.d	$a2, $a2, %got_pc_lo12(blockarray)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$t6, $sp, 112                   # 8-byte Folded Spill
	st.d	$t7, $sp, 104                   # 8-byte Folded Spill
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$ra, $sp, 64                    # 8-byte Folded Spill
	st.d	$t8, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %for.inc281
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a3, $a3, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$a3, $a0, .LBB0_56
.LBB0_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_37 Depth 5
	beqz	$a3, .LBB0_8
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	blt	$a3, $a0, .LBB0_5
.LBB0_8:                                # %for.cond53.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a1, $zero
	sltui	$a0, $a3, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $a3, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %for.inc278
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_5
.LBB0_10:                               # %for.body55
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_37 Depth 5
	or	$a0, $a1, $a3
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_12
# %bb.11:                               # %for.body55
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	slt	$a0, $a1, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	or	$a0, $a2, $a0
	bnez	$a0, .LBB0_9
.LBB0_12:                               # %if.end64
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	slli.d	$a1, $a1, 3
	ldx.d	$s1, $a0, $a1
	ld.w	$a0, $s1, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_9
# %bb.13:                               # %for.body72.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	ori	$a0, $zero, 1
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               # %if.else88
                                        #   in Loop: Header=BB0_16 Depth=3
	beqz	$s2, .LBB0_19
	.p2align	4, , 16
.LBB0_15:                               # %for.inc276
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a1, $s1, 0
	addi.d	$a0, $s7, 1
	bge	$s7, $a1, .LBB0_9
.LBB0_16:                               # %for.body72
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_37 Depth 5
	move	$s7, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a3, $s1, $a0
	beq	$a3, $fp, .LBB0_15
# %bb.17:                               # %if.end77
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a0, $t8, 0
	slli.d	$a1, $a3, 3
	ldx.d	$a4, $a0, $a1
	beq	$a3, $s0, .LBB0_14
# %bb.18:                               # %if.then81
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a0, $a4, 56
	alsl.d	$a0, $a0, $a4, 3
	addi.d	$a0, $a0, 152
	move	$a1, $a4
	b	.LBB0_20
.LBB0_19:                               # %if.then90
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a4, 3
	addi.d	$a0, $a0, 152
	move	$a1, $t6
.LBB0_20:                               # %if.end98
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a5, $a0, 0
	ld.w	$a0, $a1, 16
	ld.w	$a1, $a1, 12
	ld.w	$a6, $a5, 56
	ld.w	$a7, $a5, 60
	ld.w	$t2, $a5, 64
	ld.w	$t3, $a5, 68
	ld.w	$a2, $s5, 0
	add.w	$t1, $a6, $a1
	add.w	$t0, $a7, $a1
	add.w	$a7, $t2, $a0
	add.w	$a6, $t3, $a0
	blt	$a2, $a3, .LBB0_22
# %bb.21:                               # %if.then108
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$t2, $a5, 40
	ld.w	$t3, $a5, 44
	ld.w	$t4, $a5, 48
	ld.w	$t5, $a5, 52
	sub.w	$t1, $t1, $t2
	add.w	$t0, $t3, $t0
	sub.w	$a7, $a7, $t4
	add.w	$a6, $t5, $a6
.LBB0_22:                               # %if.end117
                                        #   in Loop: Header=BB0_16 Depth=3
	bge	$t1, $s6, .LBB0_15
# %bb.23:                               # %if.end117
                                        #   in Loop: Header=BB0_16 Depth=3
	bge	$t7, $t0, .LBB0_15
# %bb.24:                               # %if.end117
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t2, $sp, 160                   # 8-byte Folded Reload
	bge	$a7, $t2, .LBB0_15
# %bb.25:                               # %if.end117
                                        #   in Loop: Header=BB0_16 Depth=3
	bge	$s8, $a6, .LBB0_15
# %bb.26:                               # %if.end126
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$t2, $t6, 60
	ori	$t3, $zero, 1
	bne	$t2, $t3, .LBB0_29
# %bb.27:                               # %land.lhs.true128
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a4, $a4, 60
	ori	$t2, $zero, 1
	bne	$a4, $t2, .LBB0_29
# %bb.28:                               # %if.then131
                                        #   in Loop: Header=BB0_16 Depth=3
	slt	$a0, $t1, $t7
	masknez	$a1, $t1, $a0
	maskeqz	$a0, $t7, $a0
	or	$a0, $a0, $a1
	slt	$a1, $s6, $t0
	masknez	$a2, $t0, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a7, $s8
	masknez	$a4, $a7, $a2
	maskeqz	$a2, $s8, $a2
	or	$a2, $a2, $a4
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	slt	$a4, $a7, $a6
	masknez	$a5, $a6, $a4
	maskeqz	$a4, $a7, $a4
	or	$a4, $a4, $a5
	sub.d	$a2, $a4, $a2
	sub.d	$a0, $a1, $a0
	mulw.d.w	$s8, $a2, $a0
	b	.LBB0_53
.LBB0_29:                               # %if.else165
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a4, $ra, 0
	beqz	$a4, .LBB0_15
# %bb.30:                               # %for.body169.lr.ph
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a5, $a5, 0
	beqz	$a5, .LBB0_15
# %bb.31:                               # %for.body169.lr.ph.split
                                        #   in Loop: Header=BB0_16 Depth=3
	move	$s8, $zero
	bge	$a2, $a3, .LBB0_43
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_32:                               # %for.cond191.for.cond166.loopexit_crit_edge.split.us.us
                                        #   in Loop: Header=BB0_33 Depth=4
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_52
.LBB0_33:                               # %for.body169.us190
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_37 Depth 5
	ld.w	$a6, $a4, 56
	ld.w	$a7, $a4, 60
	ld.w	$t0, $a4, 64
	ld.w	$t1, $a4, 68
	add.w	$a6, $a6, $s4
	add.w	$a7, $a7, $s4
	add.w	$t0, $t0, $s3
	add.w	$t1, $t1, $s3
	blt	$a2, $fp, .LBB0_35
# %bb.34:                               # %if.then180.us201
                                        #   in Loop: Header=BB0_33 Depth=4
	ld.w	$t2, $a4, 40
	ld.w	$t3, $a4, 44
	ld.w	$t4, $a4, 48
	ld.w	$t5, $a4, 52
	sub.w	$a6, $a6, $t2
	add.w	$a7, $t3, $a7
	sub.w	$t0, $t0, $t4
	add.w	$t1, $t5, $t1
.LBB0_35:                               # %if.end189.us210
                                        #   in Loop: Header=BB0_33 Depth=4
	move	$t2, $a5
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               # %for.inc.us.us
                                        #   in Loop: Header=BB0_37 Depth=5
	ld.d	$t2, $t2, 0
	beqz	$t2, .LBB0_32
.LBB0_37:                               # %for.body194.us.us
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_33 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t3, $t2, 56
	add.w	$t3, $t3, $a1
	bge	$t3, $a7, .LBB0_36
# %bb.38:                               # %for.body194.us.us
                                        #   in Loop: Header=BB0_37 Depth=5
	ld.w	$t4, $t2, 60
	add.w	$t4, $t4, $a1
	bge	$a6, $t4, .LBB0_36
# %bb.39:                               # %for.body194.us.us
                                        #   in Loop: Header=BB0_37 Depth=5
	ld.w	$t5, $t2, 64
	add.w	$t5, $t5, $a0
	bge	$t5, $t1, .LBB0_36
# %bb.40:                               # %for.body194.us.us
                                        #   in Loop: Header=BB0_37 Depth=5
	ld.w	$t6, $t2, 68
	add.w	$t6, $t6, $a0
	bge	$t0, $t6, .LBB0_36
# %bb.41:                               # %if.end227.us.us
                                        #   in Loop: Header=BB0_37 Depth=5
	slt	$t7, $t3, $a6
	masknez	$t3, $t3, $t7
	maskeqz	$t7, $a6, $t7
	or	$t3, $t7, $t3
	slt	$t7, $a7, $t4
	masknez	$t4, $t4, $t7
	maskeqz	$t7, $a7, $t7
	or	$t4, $t7, $t4
	slt	$t7, $t5, $t0
	masknez	$t5, $t5, $t7
	maskeqz	$t7, $t0, $t7
	or	$t5, $t7, $t5
	slt	$t7, $t1, $t6
	masknez	$t6, $t6, $t7
	maskeqz	$t7, $t1, $t7
	or	$t6, $t7, $t6
	sub.d	$t5, $t6, $t5
	sub.d	$t3, $t4, $t3
	mul.d	$t3, $t5, $t3
	add.w	$s8, $t3, $s8
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_42:                               # %for.cond191.for.cond166.loopexit_crit_edge.split
                                        #   in Loop: Header=BB0_43 Depth=4
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_52
.LBB0_43:                               # %for.body169
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_47 Depth 5
	ld.w	$a6, $a4, 56
	ld.w	$a7, $a4, 60
	ld.w	$t0, $a4, 64
	ld.w	$t1, $a4, 68
	add.w	$a6, $a6, $s4
	add.w	$a7, $a7, $s4
	add.w	$t0, $t0, $s3
	add.w	$t1, $t1, $s3
	blt	$a2, $fp, .LBB0_45
# %bb.44:                               # %if.then180
                                        #   in Loop: Header=BB0_43 Depth=4
	ld.w	$t2, $a4, 40
	ld.w	$t3, $a4, 44
	ld.w	$t4, $a4, 48
	ld.w	$t5, $a4, 52
	sub.w	$a6, $a6, $t2
	add.w	$a7, $t3, $a7
	sub.w	$t0, $t0, $t4
	add.w	$t1, $t5, $t1
.LBB0_45:                               # %if.end189
                                        #   in Loop: Header=BB0_43 Depth=4
	move	$t2, $a5
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_46:                               # %for.inc
                                        #   in Loop: Header=BB0_47 Depth=5
	ld.d	$t2, $t2, 0
	beqz	$t2, .LBB0_42
.LBB0_47:                               # %for.body194
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_43 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t3, $t2, 56
	ld.w	$t4, $t2, 40
	add.d	$t3, $t3, $a1
	sub.w	$t3, $t3, $t4
	bge	$t3, $a7, .LBB0_46
# %bb.48:                               # %for.body194
                                        #   in Loop: Header=BB0_47 Depth=5
	ld.w	$t4, $t2, 60
	ld.w	$t5, $t2, 44
	add.d	$t4, $t4, $a1
	add.w	$t4, $t5, $t4
	bge	$a6, $t4, .LBB0_46
# %bb.49:                               # %for.body194
                                        #   in Loop: Header=BB0_47 Depth=5
	ld.w	$t5, $t2, 64
	ld.w	$t6, $t2, 48
	add.d	$t5, $t5, $a0
	sub.w	$t5, $t5, $t6
	bge	$t5, $t1, .LBB0_46
# %bb.50:                               # %for.body194
                                        #   in Loop: Header=BB0_47 Depth=5
	ld.w	$t6, $t2, 68
	ld.w	$t7, $t2, 52
	add.d	$t6, $t6, $a0
	add.w	$t6, $t7, $t6
	bge	$t0, $t6, .LBB0_46
# %bb.51:                               # %if.end227
                                        #   in Loop: Header=BB0_47 Depth=5
	slt	$t7, $t3, $a6
	masknez	$t3, $t3, $t7
	maskeqz	$t7, $a6, $t7
	or	$t3, $t7, $t3
	slt	$t7, $a7, $t4
	masknez	$t4, $t4, $t7
	maskeqz	$t7, $a7, $t7
	or	$t4, $t7, $t4
	slt	$t7, $t5, $t0
	masknez	$t5, $t5, $t7
	maskeqz	$t7, $t0, $t7
	or	$t5, $t7, $t5
	slt	$t7, $t1, $t6
	masknez	$t6, $t6, $t7
	maskeqz	$t7, $t1, $t7
	or	$t6, $t7, $t6
	sub.d	$t5, $t6, $t5
	sub.d	$t3, $t4, $t3
	mul.d	$t3, $t5, $t3
	add.w	$s8, $t3, $s8
	b	.LBB0_46
.LBB0_52:                               # %for.end259
                                        #   in Loop: Header=BB0_16 Depth=3
	beqz	$s8, .LBB0_54
.LBB0_53:                               # %for.inc276.sink.split
                                        #   in Loop: Header=BB0_16 Depth=3
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$s5, $a0, %got_pc_lo12(offset)
	pcalau12i	$a0, %got_pc_hi20(lapFactor)
	ld.d	$s6, $a0, %got_pc_lo12(lapFactor)
	ld.w	$a0, $s5, 0
	fld.d	$fa0, $s6, 0
	add.d	$a0, $a0, $s8
	pcalau12i	$a1, %got_pc_hi20(fpo)
	move	$s0, $s2
	ld.d	$s2, $a1, %got_pc_lo12(fpo)
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ld.d	$a0, $s2, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	move	$s2, $s0
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fa0, $s6, 0
	add.d	$a1, $a1, $s8
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	addi.w	$a3, $s8, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 64                    # 8-byte Folded Reload
.LBB0_54:                               # %for.inc276
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_15
.LBB0_55:
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
.LBB0_56:                               # %for.end283
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	goverlapf, .Lfunc_end0-goverlapf
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
