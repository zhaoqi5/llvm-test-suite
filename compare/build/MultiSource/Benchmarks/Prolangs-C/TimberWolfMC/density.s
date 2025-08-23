	.file	"density.c"
	.text
	.globl	density                         # -- Begin function density
	.p2align	5
	.type	density,@function
density:                                # @density
# %bb.0:                                # %entry
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
	pcalau12i	$a0, %got_pc_hi20(eNum)
	ld.d	$a6, $a0, %got_pc_lo12(eNum)
	ld.w	$a1, $a6, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_7
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a2, %got_pc_hi20(eArray)
	ld.d	$a2, $a2, %got_pc_lo12(eArray)
	ld.d	$a2, $a2, 0
	beq	$a1, $a0, .LBB0_5
# %bb.2:                                # %vector.ph
	bstrpick.d	$a0, $a1, 30, 1
	slli.d	$a3, $a0, 1
	ori	$a0, $a1, 1
	addi.d	$a4, $a2, 160
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a4, -56
	st.d	$zero, $a4, 0
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 112
	bnez	$a5, .LBB0_3
# %bb.4:                                # %middle.block
	beq	$a3, $a1, .LBB0_7
.LBB0_5:                                # %for.body.preheader
	addi.d	$a1, $a1, 1
	bstrpick.d	$a3, $a1, 31, 0
	ori	$a1, $zero, 56
	mul.d	$a1, $a0, $a1
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 48
	sub.d	$a0, $a3, $a0
	.p2align	4, , 16
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 56
	bnez	$a0, .LBB0_6
.LBB0_7:                                # %for.cond1.preheader
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(largestNet)
	ld.d	$a0, $a0, %got_pc_lo12(largestNet)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_16
# %bb.8:                                # %for.body3.preheader
	pcalau12i	$a2, %got_pc_hi20(netRoutes)
	ld.d	$a2, $a2, %got_pc_lo12(netRoutes)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(eIndexArray)
	ld.d	$s3, $a2, %got_pc_lo12(eIndexArray)
	pcalau12i	$a2, %got_pc_hi20(eArray)
	ld.d	$s4, $a2, %got_pc_lo12(eArray)
	ori	$s5, $zero, 56
	ori	$s6, $zero, 12
	ori	$s7, $zero, 8
	addi.w	$fp, $zero, -1
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_9:                                # %for.inc40.loopexit
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB0_10:                               # %for.inc40
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.d	$a1, $s8, 1
	bge	$s8, $a0, .LBB0_16
.LBB0_11:                               # %for.body3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$s8, $a1
	slli.d	$a1, $a1, 4
	alsl.d	$a1, $s8, $a1, 3
	add.d	$a3, $a2, $a1
	ld.w	$a3, $a3, 12
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	ld.d	$s2, $a1, 16
	beqz	$s2, .LBB0_10
# %bb.12:                               # %for.body12.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $s4, 0
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %for.inc38
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.d	$s2, $s2, 16
	beqz	$s2, .LBB0_9
.LBB0_14:                               # %for.body12
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s2, 0
	slli.d	$a3, $a1, 3
	ld.w	$a4, $s2, 4
	ldx.d	$a3, $a0, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	mul.d	$s0, $a3, $s5
	ldx.w	$a4, $a2, $s0
	add.d	$a3, $a2, $s0
	xor	$a1, $a1, $a4
	sltui	$a1, $a1, 1
	ld.w	$a4, $a3, 20
	masknez	$a5, $s6, $a1
	maskeqz	$a6, $s7, $a1
	or	$a5, $a6, $a5
	masknez	$a6, $s7, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a6
	ldx.w	$a6, $s2, $a1
	ldx.w	$a1, $s2, $a5
	sub.w	$s1, $a4, $a6
	bge	$a1, $s1, .LBB0_13
# %bb.15:                               # %if.then30
                                        #   in Loop: Header=BB0_14 Depth=2
	addi.d	$a0, $a3, 48
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	add.d	$a0, $a0, $s0
	addi.d	$a0, $a0, 48
	addi.w	$a1, $s1, 1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $s4, 0
	b	.LBB0_13
.LBB0_16:                               # %for.end42
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s3, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	ori	$s4, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 19
	ori	$a0, $a0, 2184
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $s2, 0
	move	$fp, $a0
	blt	$a1, $s4, .LBB0_31
# %bb.17:                               # %for.body46.preheader
	pcalau12i	$a0, %got_pc_hi20(eArray)
	ld.d	$s5, $a0, %got_pc_lo12(eArray)
	ld.d	$a0, $s5, 0
	ori	$s6, $zero, 56
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$s0, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 1
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               # %while.end
                                        #   in Loop: Header=BB0_19 Depth=1
	ld.d	$a0, $s3, 0
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a1, 4
	st.w	$a5, $a1, 40
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a2, $s2, 0
	addi.d	$a1, $s1, 1
	bge	$s1, $a2, .LBB0_31
.LBB0_19:                               # %for.body46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_28 Depth 3
	move	$s1, $a1
	mul.d	$a1, $a1, $s6
	add.d	$a1, $a0, $a1
	ld.d	$a3, $a1, 48
	beqz	$a3, .LBB0_30
# %bb.20:                               # %if.end54
                                        #   in Loop: Header=BB0_19 Depth=1
	move	$a4, $zero
	move	$a5, $zero
	move	$a2, $zero
	move	$a0, $zero
	st.d	$a3, $fp, 0
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_21:                               # %if.then72
                                        #   in Loop: Header=BB0_23 Depth=2
	addi.w	$a2, $a2, 3
	slli.d	$a6, $a2, 3
	stx.d	$a4, $fp, $a6
.LBB0_22:                               # %if.end89
                                        #   in Loop: Header=BB0_23 Depth=2
	addi.d	$a4, $a3, 1
	bge	$a3, $a2, .LBB0_18
.LBB0_23:                               # %while.body
                                        #   Parent Loop BB0_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
	move	$a3, $a4
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $fp, $a4
	ld.w	$a6, $a4, 4
	blt	$a6, $s4, .LBB0_26
# %bb.24:                               # %if.then64
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a6, $a4, 8
	alsl.d	$a7, $a2, $fp, 3
	ld.d	$t0, $a4, 16
	ld.d	$a4, $a4, 24
	st.d	$a6, $a7, 8
	addi.w	$a6, $a2, 2
	slli.d	$a7, $a6, 3
	stx.d	$t0, $fp, $a7
	bnez	$a4, .LBB0_21
# %bb.25:                               #   in Loop: Header=BB0_23 Depth=2
	move	$a2, $a6
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_26:                               # %if.else78
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a4, $a4, 56
	beqz	$a4, .LBB0_29
# %bb.27:                               # %for.body81.lr.ph
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.w	$a6, $a4, 0
	.p2align	4, , 16
.LBB0_28:                               # %for.body81
                                        #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a4, 8
	add.w	$a0, $a0, $a6
	bnez	$a4, .LBB0_28
.LBB0_29:                               # %for.end85
                                        #   in Loop: Header=BB0_23 Depth=2
	slt	$a4, $a5, $a0
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a0, $a4
	or	$a5, $a4, $a5
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_30:                               # %if.then51
                                        #   in Loop: Header=BB0_19 Depth=1
	st.w	$zero, $a1, 40
	ld.w	$a2, $s2, 0
	addi.d	$a1, $s1, 1
	blt	$s1, $a2, .LBB0_19
.LBB0_31:                               # %for.end101
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(numXnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numXnodes)
	ld.w	$a3, $a0, 0
	ori	$a2, $zero, 1
	addi.d	$a4, $a3, 1
	blt	$a3, $a2, .LBB0_54
# %bb.32:                               # %for.body104.lr.ph
	pcalau12i	$a0, %got_pc_hi20(xNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(xNodeArray)
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$a1, $a1, %got_pc_lo12(eArray)
	pcalau12i	$a5, %got_pc_hi20(defaultTracks)
	ld.d	$a5, $a5, %got_pc_lo12(defaultTracks)
	pcalau12i	$a6, %got_pc_hi20(pitch)
	ld.d	$a6, $a6, %got_pc_lo12(pitch)
	ld.d	$a0, $a0, 0
	ld.w	$t0, $a5, 0
	ld.d	$a1, $a1, 0
	ld.w	$a5, $a6, 0
	addi.d	$a6, $t0, 2
	bstrpick.d	$a7, $a4, 31, 0
	blez	$t0, .LBB0_44
# %bb.33:                               # %for.body104.us.preheader
	addi.d	$t0, $t0, 1
	mul.d	$t0, $a5, $t0
	ori	$t1, $zero, 1
	ori	$t2, $zero, 56
	ori	$t3, $zero, 1
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %for.inc148.us
                                        #   in Loop: Header=BB0_35 Depth=1
	addi.d	$t3, $t3, 1
	beq	$t3, $a7, .LBB0_54
.LBB0_35:                               # %for.body104.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
                                        #       Child Loop BB0_41 Depth 3
	slli.d	$t4, $t3, 3
	ldx.d	$t4, $a0, $t4
	bnez	$t4, .LBB0_38
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_36:                               # %for.inc145.us.us.sink.split
                                        #   in Loop: Header=BB0_38 Depth=2
	st.w	$t8, $t4, 16
.LBB0_37:                               # %for.inc145.us.us
                                        #   in Loop: Header=BB0_38 Depth=2
	ld.d	$t4, $t4, 24
	beqz	$t4, .LBB0_34
.LBB0_38:                               # %for.body109.us.us
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_41 Depth 3
	ld.w	$t5, $t4, 0
	beq	$t5, $t1, .LBB0_37
# %bb.39:                               # %if.end112.us.us
                                        #   in Loop: Header=BB0_38 Depth=2
	ld.d	$t6, $t4, 8
	st.w	$zero, $t4, 16
	ld.w	$t7, $t6, 0
	move	$t8, $t0
	blt	$t7, $t1, .LBB0_36
# %bb.40:                               # %for.body117.lr.ph.us.us
                                        #   in Loop: Header=BB0_38 Depth=2
	move	$t5, $zero
	addi.d	$t7, $t7, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, -1
	.p2align	4, , 16
.LBB0_41:                               # %for.body117.us.us
                                        #   Parent Loop BB0_35 Depth=1
                                        #     Parent Loop BB0_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t8, $t6, 0
	mul.d	$t8, $t8, $t2
	add.d	$t8, $a1, $t8
	ld.w	$t8, $t8, 40
	add.w	$t5, $t5, $t8
	st.w	$t5, $t4, 16
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	bnez	$t7, .LBB0_41
# %bb.42:                               # %for.end128.us.us
                                        #   in Loop: Header=BB0_38 Depth=2
	move	$t8, $t0
	blt	$t5, $t1, .LBB0_36
# %bb.43:                               # %if.then131.us.us
                                        #   in Loop: Header=BB0_38 Depth=2
	add.d	$t5, $t5, $a6
	mul.d	$t8, $t5, $a5
	b	.LBB0_36
.LBB0_44:                               # %for.body104.preheader
	ori	$t0, $zero, 1
	ori	$t1, $zero, 56
	ori	$t2, $zero, 1
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_45:                               # %for.inc148
                                        #   in Loop: Header=BB0_46 Depth=1
	addi.d	$t2, $t2, 1
	beq	$t2, $a7, .LBB0_54
.LBB0_46:                               # %for.body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_48 Depth 2
                                        #       Child Loop BB0_51 Depth 3
	slli.d	$t3, $t2, 3
	ldx.d	$t3, $a0, $t3
	bnez	$t3, .LBB0_48
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_47:                               # %for.inc145
                                        #   in Loop: Header=BB0_48 Depth=2
	ld.d	$t3, $t3, 24
	beqz	$t3, .LBB0_45
.LBB0_48:                               # %for.body109
                                        #   Parent Loop BB0_46 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
	ld.w	$t4, $t3, 0
	beq	$t4, $t0, .LBB0_47
# %bb.49:                               # %if.end112
                                        #   in Loop: Header=BB0_48 Depth=2
	ld.d	$t5, $t3, 8
	st.w	$zero, $t3, 16
	ld.w	$t6, $t5, 0
	blt	$t6, $t0, .LBB0_47
# %bb.50:                               # %for.body117.lr.ph
                                        #   in Loop: Header=BB0_48 Depth=2
	move	$t4, $zero
	addi.d	$t6, $t6, 1
	bstrpick.d	$t6, $t6, 31, 0
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, -1
	.p2align	4, , 16
.LBB0_51:                               # %for.body117
                                        #   Parent Loop BB0_46 Depth=1
                                        #     Parent Loop BB0_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t7, $t5, 0
	mul.d	$t7, $t7, $t1
	add.d	$t7, $a1, $t7
	ld.w	$t7, $t7, 40
	add.w	$t4, $t4, $t7
	st.w	$t4, $t3, 16
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB0_51
# %bb.52:                               # %for.end128
                                        #   in Loop: Header=BB0_48 Depth=2
	blt	$t4, $t0, .LBB0_47
# %bb.53:                               # %if.then131
                                        #   in Loop: Header=BB0_48 Depth=2
	add.d	$t4, $t4, $a6
	mul.d	$t4, $t4, $a5
	st.w	$t4, $t3, 16
	b	.LBB0_47
.LBB0_54:                               # %for.cond151.preheader
	pcalau12i	$a0, %got_pc_hi20(numYnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numYnodes)
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a1, 1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB0_77
# %bb.55:                               # %for.body153.lr.ph
	pcalau12i	$a2, %got_pc_hi20(yNodeArray)
	ld.d	$a2, $a2, %got_pc_lo12(yNodeArray)
	pcalau12i	$a5, %got_pc_hi20(eArray)
	ld.d	$a5, $a5, %got_pc_lo12(eArray)
	pcalau12i	$a6, %got_pc_hi20(defaultTracks)
	ld.d	$a6, $a6, %got_pc_lo12(defaultTracks)
	pcalau12i	$a7, %got_pc_hi20(pitch)
	ld.d	$a7, $a7, %got_pc_lo12(pitch)
	ld.d	$a2, $a2, 0
	ld.w	$t1, $a6, 0
	ld.d	$a5, $a5, 0
	ld.w	$a6, $a7, 0
	addi.d	$a7, $t1, 2
	bstrpick.d	$t0, $a0, 31, 0
	blez	$t1, .LBB0_67
# %bb.56:                               # %for.body153.us.preheader
	addi.d	$t1, $t1, 1
	mul.d	$t1, $a6, $t1
	ori	$t2, $zero, 1
	ori	$t3, $zero, 56
	ori	$t4, $zero, 1
	b	.LBB0_58
	.p2align	4, , 16
.LBB0_57:                               # %for.inc200.us
                                        #   in Loop: Header=BB0_58 Depth=1
	addi.d	$t4, $t4, 1
	beq	$t4, $t0, .LBB0_77
.LBB0_58:                               # %for.body153.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_61 Depth 2
                                        #       Child Loop BB0_64 Depth 3
	slli.d	$t5, $t4, 3
	ldx.d	$t5, $a2, $t5
	bnez	$t5, .LBB0_61
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_59:                               # %for.inc197.us.us.sink.split
                                        #   in Loop: Header=BB0_61 Depth=2
	st.w	$fp, $t5, 16
.LBB0_60:                               # %for.inc197.us.us
                                        #   in Loop: Header=BB0_61 Depth=2
	ld.d	$t5, $t5, 24
	beqz	$t5, .LBB0_57
.LBB0_61:                               # %for.body158.us.us
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_64 Depth 3
	ld.w	$t6, $t5, 0
	beq	$t6, $t2, .LBB0_60
# %bb.62:                               # %if.end162.us.us
                                        #   in Loop: Header=BB0_61 Depth=2
	ld.d	$t7, $t5, 8
	st.w	$zero, $t5, 16
	ld.w	$t8, $t7, 0
	move	$fp, $t1
	blt	$t8, $t2, .LBB0_59
# %bb.63:                               # %for.body168.lr.ph.us.us
                                        #   in Loop: Header=BB0_61 Depth=2
	move	$t6, $zero
	addi.d	$t8, $t8, 1
	bstrpick.d	$t8, $t8, 31, 0
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, -1
	.p2align	4, , 16
.LBB0_64:                               # %for.body168.us.us
                                        #   Parent Loop BB0_58 Depth=1
                                        #     Parent Loop BB0_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$fp, $t7, 0
	mul.d	$fp, $fp, $t3
	add.d	$fp, $a5, $fp
	ld.w	$fp, $fp, 40
	add.w	$t6, $t6, $fp
	st.w	$t6, $t5, 16
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 4
	bnez	$t8, .LBB0_64
# %bb.65:                               # %for.end179.us.us
                                        #   in Loop: Header=BB0_61 Depth=2
	move	$fp, $t1
	blt	$t6, $t2, .LBB0_59
# %bb.66:                               # %if.then182.us.us
                                        #   in Loop: Header=BB0_61 Depth=2
	add.d	$t6, $t6, $a7
	mul.d	$fp, $t6, $a6
	b	.LBB0_59
.LBB0_67:                               # %for.body153.preheader
	ori	$t1, $zero, 1
	ori	$t2, $zero, 56
	ori	$t3, $zero, 1
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               # %for.inc200
                                        #   in Loop: Header=BB0_69 Depth=1
	addi.d	$t3, $t3, 1
	beq	$t3, $t0, .LBB0_77
.LBB0_69:                               # %for.body153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_74 Depth 3
	slli.d	$t4, $t3, 3
	ldx.d	$t4, $a2, $t4
	bnez	$t4, .LBB0_71
	b	.LBB0_68
	.p2align	4, , 16
.LBB0_70:                               # %for.inc197
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$t4, $t4, 24
	beqz	$t4, .LBB0_68
.LBB0_71:                               # %for.body158
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_74 Depth 3
	ld.w	$t5, $t4, 0
	beq	$t5, $t1, .LBB0_70
# %bb.72:                               # %if.end162
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$t6, $t4, 8
	st.w	$zero, $t4, 16
	ld.w	$t7, $t6, 0
	blt	$t7, $t1, .LBB0_70
# %bb.73:                               # %for.body168.lr.ph
                                        #   in Loop: Header=BB0_71 Depth=2
	move	$t5, $zero
	addi.d	$t7, $t7, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, -1
	.p2align	4, , 16
.LBB0_74:                               # %for.body168
                                        #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t8, $t6, 0
	mul.d	$t8, $t8, $t2
	add.d	$t8, $a5, $t8
	ld.w	$t8, $t8, 40
	add.w	$t5, $t5, $t8
	st.w	$t5, $t4, 16
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	bnez	$t7, .LBB0_74
# %bb.75:                               # %for.end179
                                        #   in Loop: Header=BB0_71 Depth=2
	blt	$t5, $t1, .LBB0_70
# %bb.76:                               # %if.then182
                                        #   in Loop: Header=BB0_71 Depth=2
	add.d	$t5, $t5, $a7
	mul.d	$t5, $t5, $a6
	st.w	$t5, $t4, 16
	b	.LBB0_70
.LBB0_77:                               # %for.cond203.preheader
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 1
	vrepli.b	$vr0, 0
	blt	$a3, $a2, .LBB0_114
# %bb.78:                               # %for.body205.lr.ph
	pcalau12i	$a3, %got_pc_hi20(xNodeArray)
	ld.d	$a3, $a3, %got_pc_lo12(xNodeArray)
	xvrepli.b	$xr1, 0
	ld.d	$a0, $a3, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a4, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(eArray)
	ld.d	$a0, $a5, %got_pc_lo12(eArray)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(edgeList)
	ld.d	$a0, $a6, %got_pc_lo12(edgeList)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a7, %got_pc_hi20(cellList)
	ld.d	$a0, $a7, %got_pc_lo12(cellList)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$t0, $zero, 56
	ori	$t1, $zero, 40
	ori	$a5, $zero, 4
	ori	$a6, $zero, 16
	ori	$a1, $zero, 1
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_79:                               # %for.inc321
                                        #   in Loop: Header=BB0_80 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_114
.LBB0_80:                               # %for.body205
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_84 Depth 2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_98 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #       Child Loop BB0_111 Depth 3
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	slli.d	$t5, $a1, 3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$t5, $a0, $t5
	beqz	$t5, .LBB0_79
# %bb.81:                               # %for.body210.lr.ph
                                        #   in Loop: Header=BB0_80 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t7, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t8, $a0, 0
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_82:                               # %if.end303
                                        #   in Loop: Header=BB0_84 Depth=2
	slli.d	$a0, $fp, 5
	alsl.d	$a0, $fp, $a0, 3
	add.d	$a0, $t7, $a0
	ld.w	$a1, $a0, 12
	st.w	$zero, $s1, 8
	st.w	$a1, $s1, 12
	ld.d	$a0, $a0, 4
	st.d	$a0, $s1, 16
.LBB0_83:                               # %for.inc318
                                        #   in Loop: Header=BB0_84 Depth=2
	ld.d	$t5, $t5, 24
	beqz	$t5, .LBB0_79
.LBB0_84:                               # %for.body210
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_98 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #       Child Loop BB0_111 Depth 3
	ld.w	$fp, $t5, 0
	beq	$fp, $a2, .LBB0_83
# %bb.85:                               # %if.end214
                                        #   in Loop: Header=BB0_84 Depth=2
	ld.d	$fp, $t5, 8
	ld.w	$s0, $fp, 0
	blt	$s0, $a2, .LBB0_88
# %bb.86:                               # %iter.check
                                        #   in Loop: Header=BB0_84 Depth=2
	bgeu	$s0, $a5, .LBB0_89
# %bb.87:                               #   in Loop: Header=BB0_84 Depth=2
	move	$s2, $zero
	ori	$s3, $zero, 1
	b	.LBB0_101
.LBB0_88:                               #   in Loop: Header=BB0_84 Depth=2
	move	$s2, $zero
	b	.LBB0_103
.LBB0_89:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_84 Depth=2
	bgeu	$s0, $a6, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_84 Depth=2
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB0_97
.LBB0_91:                               # %vector.ph379
                                        #   in Loop: Header=BB0_84 Depth=2
	bstrpick.d	$s1, $s0, 30, 4
	slli.d	$s1, $s1, 4
	addi.d	$s2, $fp, 36
	move	$s3, $s1
	xvori.b	$xr2, $xr1, 0
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB0_92:                               # %vector.body382
                                        #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr4, $s2, -32
	xvld	$xr5, $s2, 0
	xvpermi.q	$xr6, $xr4, 1
	vpickve2gr.w	$s4, $vr6, 3
	vpickve2gr.w	$s5, $vr6, 2
	vpickve2gr.w	$s6, $vr6, 1
	vpickve2gr.w	$s7, $vr6, 0
	vpickve2gr.w	$s8, $vr4, 3
	vpickve2gr.w	$ra, $vr4, 2
	vpickve2gr.w	$a0, $vr4, 1
	vpickve2gr.w	$a1, $vr4, 0
	xvpermi.q	$xr4, $xr5, 1
	vpickve2gr.w	$a5, $vr4, 3
	vpickve2gr.w	$a6, $vr4, 2
	vpickve2gr.w	$a7, $vr4, 1
	vpickve2gr.w	$a3, $vr4, 0
	vpickve2gr.w	$a4, $vr5, 3
	vpickve2gr.w	$t3, $vr5, 2
	vpickve2gr.w	$t2, $vr5, 1
	vpickve2gr.w	$t4, $vr5, 0
	mul.d	$a1, $a1, $t0
	add.d	$a1, $t6, $a1
	mul.d	$a0, $a0, $t0
	add.d	$a0, $t6, $a0
	mul.d	$ra, $ra, $t0
	add.d	$ra, $t6, $ra
	mul.d	$s8, $s8, $t0
	add.d	$s8, $t6, $s8
	mul.d	$s7, $s7, $t0
	add.d	$s7, $t6, $s7
	mul.d	$s6, $s6, $t0
	add.d	$s6, $t6, $s6
	mul.d	$s5, $s5, $t0
	add.d	$s5, $t6, $s5
	mul.d	$s4, $s4, $t0
	add.d	$s4, $t6, $s4
	mul.d	$t4, $t4, $t0
	add.d	$t4, $t6, $t4
	mul.d	$t2, $t2, $t0
	add.d	$t2, $t6, $t2
	mul.d	$t3, $t3, $t0
	add.d	$t3, $t6, $t3
	mul.d	$a4, $a4, $t0
	add.d	$a4, $t6, $a4
	mul.d	$a3, $a3, $t0
	add.d	$a3, $t6, $a3
	mul.d	$a7, $a7, $t0
	add.d	$a7, $t6, $a7
	mul.d	$a6, $a6, $t0
	add.d	$a6, $t6, $a6
	mul.d	$a5, $a5, $t0
	add.d	$a5, $t6, $a5
	ld.w	$a1, $a1, 8
	ld.w	$a0, $a0, 8
	ld.w	$ra, $ra, 8
	ld.w	$s8, $s8, 8
	ld.w	$s7, $s7, 8
	ld.w	$s6, $s6, 8
	ld.w	$s5, $s5, 8
	ld.w	$s4, $s4, 8
	xvinsgr2vr.w	$xr4, $a1, 0
	xvinsgr2vr.w	$xr4, $a0, 1
	xvinsgr2vr.w	$xr4, $ra, 2
	xvinsgr2vr.w	$xr4, $s8, 3
	xvinsgr2vr.w	$xr4, $s7, 4
	xvinsgr2vr.w	$xr4, $s6, 5
	xvinsgr2vr.w	$xr4, $s5, 6
	xvinsgr2vr.w	$xr4, $s4, 7
	ld.w	$a0, $t4, 8
	ld.w	$a1, $t2, 8
	ld.w	$t2, $t3, 8
	ld.w	$a4, $a4, 8
	ld.w	$a3, $a3, 8
	ld.w	$a7, $a7, 8
	ld.w	$a6, $a6, 8
	ld.w	$a5, $a5, 8
	xvinsgr2vr.w	$xr5, $a0, 0
	xvinsgr2vr.w	$xr5, $a1, 1
	xvinsgr2vr.w	$xr5, $t2, 2
	xvinsgr2vr.w	$xr5, $a4, 3
	xvinsgr2vr.w	$xr5, $a3, 4
	xvinsgr2vr.w	$xr5, $a7, 5
	xvinsgr2vr.w	$xr5, $a6, 6
	xvinsgr2vr.w	$xr5, $a5, 7
	xvadd.w	$xr2, $xr4, $xr2
	xvadd.w	$xr3, $xr5, $xr3
	addi.d	$s3, $s3, -16
	addi.d	$s2, $s2, 64
	bnez	$s3, .LBB0_92
# %bb.93:                               # %middle.block387
                                        #   in Loop: Header=BB0_84 Depth=2
	xvadd.w	$xr2, $xr3, $xr2
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvadd.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$s2, $xr2, 0
	bne	$s1, $s0, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_84 Depth=2
	ori	$a5, $zero, 4
	ori	$a6, $zero, 16
	b	.LBB0_103
.LBB0_95:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_84 Depth=2
	andi	$a0, $s0, 12
	ori	$a5, $zero, 4
	beqz	$a0, .LBB0_100
# %bb.96:                               #   in Loop: Header=BB0_84 Depth=2
	ori	$a6, $zero, 16
.LBB0_97:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_84 Depth=2
	bstrpick.d	$a0, $s0, 30, 2
	slli.d	$s4, $a0, 2
	srli.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	bstrins.d	$s3, $a0, 30, 2
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $s2, 0
	alsl.d	$a0, $s1, $fp, 2
	addi.d	$s2, $a0, 4
	sub.d	$s1, $s1, $s4
	.p2align	4, , 16
.LBB0_98:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr3, $s2, 0
	vpickve2gr.w	$a0, $vr3, 3
	vpickve2gr.w	$a1, $vr3, 2
	vpickve2gr.w	$a3, $vr3, 1
	vpickve2gr.w	$a4, $vr3, 0
	mul.d	$a4, $a4, $t0
	add.d	$a4, $t6, $a4
	mul.d	$a3, $a3, $t0
	add.d	$a3, $t6, $a3
	mul.d	$a1, $a1, $t0
	add.d	$a1, $t6, $a1
	mul.d	$a0, $a0, $t0
	add.d	$a0, $t6, $a0
	ld.w	$a4, $a4, 8
	ld.w	$a3, $a3, 8
	ld.w	$a1, $a1, 8
	ld.w	$a0, $a0, 8
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a3, 1
	vinsgr2vr.w	$vr3, $a1, 2
	vinsgr2vr.w	$vr3, $a0, 3
	vadd.w	$vr2, $vr3, $vr2
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 16
	bnez	$s1, .LBB0_98
# %bb.99:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_84 Depth=2
	vshuf4i.w	$vr3, $vr2, 14
	vadd.w	$vr2, $vr2, $vr3
	vreplvei.w	$vr3, $vr2, 1
	vadd.w	$vr2, $vr2, $vr3
	vpickve2gr.w	$s2, $vr2, 0
	bne	$s4, $s0, .LBB0_101
	b	.LBB0_103
.LBB0_100:                              #   in Loop: Header=BB0_84 Depth=2
	addi.d	$s3, $s1, 1
	ori	$a6, $zero, 16
	.p2align	4, , 16
.LBB0_101:                              # %for.body235.preheader
                                        #   in Loop: Header=BB0_84 Depth=2
	addi.d	$a0, $s0, 1
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$s1, $s3, $fp, 2
	sub.d	$s3, $a0, $s3
	.p2align	4, , 16
.LBB0_102:                              # %for.body235
                                        #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s1, 0
	mul.d	$a0, $a0, $t0
	add.d	$a0, $t6, $a0
	ld.w	$a0, $a0, 8
	add.d	$s2, $a0, $s2
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 4
	bnez	$s3, .LBB0_102
.LBB0_103:                              # %for.end245
                                        #   in Loop: Header=BB0_84 Depth=2
	ld.w	$a0, $fp, 4
	slli.d	$a1, $s0, 2
	ldx.w	$a1, $fp, $a1
	mul.d	$a0, $a0, $t0
	add.d	$a0, $t6, $a0
	ld.w	$s4, $a0, 32
	mul.d	$a0, $a1, $t0
	add.d	$a0, $t6, $a0
	ld.w	$fp, $a0, 36
	mul.d	$a0, $s4, $t1
	ld.wu	$s1, $t5, 16
	ldx.w	$s6, $t7, $a0
	mul.d	$a0, $fp, $t1
	ldx.w	$s3, $t7, $a0
	srli.d	$a0, $s1, 31
	add.w	$a0, $s1, $a0
	srai.d	$s5, $a0, 1
	sub.w	$s0, $s2, $s1
	blt	$s6, $a2, .LBB0_109
# %bb.104:                              # %if.then252
                                        #   in Loop: Header=BB0_84 Depth=2
	alsl.d	$s6, $s6, $t8, 3
	.p2align	4, , 16
.LBB0_105:                              # %for.cond255
                                        #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s6, 0
	ld.w	$a0, $s2, 0
	addi.d	$s6, $s2, 32
	bne	$a0, $s4, .LBB0_105
# %bb.106:                              # %for.end261
                                        #   in Loop: Header=BB0_84 Depth=2
	ld.w	$a0, $s2, 24
	bge	$s0, $a0, .LBB0_108
# %bb.107:                              # %if.then265
                                        #   in Loop: Header=BB0_84 Depth=2
	st.w	$s0, $s2, 24
	st.w	$s5, $s2, 4
.LBB0_108:                              # %if.end269
                                        #   in Loop: Header=BB0_84 Depth=2
	slli.d	$a0, $s4, 5
	alsl.d	$a0, $s4, $a0, 3
	add.d	$a0, $t7, $a0
	ld.w	$a1, $a0, 12
	st.w	$zero, $s2, 8
	st.w	$a1, $s2, 12
	ld.d	$a0, $a0, 4
	st.d	$a0, $s2, 16
.LBB0_109:                              # %if.end281
                                        #   in Loop: Header=BB0_84 Depth=2
	blt	$s3, $a2, .LBB0_83
# %bb.110:                              # %if.then283
                                        #   in Loop: Header=BB0_84 Depth=2
	sub.d	$s2, $s1, $s5
	alsl.d	$s3, $s3, $t8, 3
	.p2align	4, , 16
.LBB0_111:                              # %for.cond286
                                        #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $s3, 0
	ld.w	$a0, $s1, 0
	addi.d	$s3, $s1, 32
	bne	$a0, $fp, .LBB0_111
# %bb.112:                              # %for.end293
                                        #   in Loop: Header=BB0_84 Depth=2
	ld.w	$a0, $s1, 24
	bge	$s0, $a0, .LBB0_82
# %bb.113:                              # %if.then298
                                        #   in Loop: Header=BB0_84 Depth=2
	st.w	$s0, $s1, 24
	st.w	$s2, $s1, 4
	b	.LBB0_82
.LBB0_114:                              # %for.cond324.preheader
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	blt	$a0, $a2, .LBB0_151
# %bb.115:                              # %for.body326.lr.ph
	pcalau12i	$a1, %got_pc_hi20(yNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(yNodeArray)
	ld.d	$a0, $a1, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(eArray)
	ld.d	$a0, $a3, %got_pc_lo12(eArray)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(edgeList)
	ld.d	$a0, $a4, %got_pc_lo12(edgeList)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(cellList)
	ld.d	$a0, $a5, %got_pc_lo12(cellList)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a6, $zero, 56
	ori	$a7, $zero, 40
	ori	$a5, $zero, 4
	ori	$t0, $zero, 16
	xvrepli.b	$xr1, 0
	ori	$a1, $zero, 1
	b	.LBB0_117
	.p2align	4, , 16
.LBB0_116:                              # %for.inc449
                                        #   in Loop: Header=BB0_117 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_151
.LBB0_117:                              # %for.body326
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_121 Depth 2
                                        #       Child Loop BB0_129 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_148 Depth 3
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	slli.d	$t3, $a1, 3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$t3, $a0, $t3
	beqz	$t3, .LBB0_116
# %bb.118:                              # %for.body331.lr.ph
                                        #   in Loop: Header=BB0_117 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t4, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t5, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t6, $a0, 0
	b	.LBB0_121
	.p2align	4, , 16
.LBB0_119:                              # %if.end431
                                        #   in Loop: Header=BB0_121 Depth=2
	slli.d	$a0, $t7, 5
	alsl.d	$a0, $t7, $a0, 3
	add.d	$a0, $t5, $a0
	ld.w	$a1, $a0, 12
	st.w	$a2, $fp, 8
	st.w	$a1, $fp, 12
	ld.d	$a0, $a0, 4
	st.d	$a0, $fp, 16
.LBB0_120:                              # %for.inc446
                                        #   in Loop: Header=BB0_121 Depth=2
	ld.d	$t3, $t3, 24
	beqz	$t3, .LBB0_116
.LBB0_121:                              # %for.body331
                                        #   Parent Loop BB0_117 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_129 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_148 Depth 3
	ld.w	$t7, $t3, 0
	beq	$t7, $a2, .LBB0_120
# %bb.122:                              # %if.end335
                                        #   in Loop: Header=BB0_121 Depth=2
	ld.d	$t7, $t3, 8
	ld.w	$t8, $t7, 0
	blt	$t8, $a2, .LBB0_125
# %bb.123:                              # %iter.check402
                                        #   in Loop: Header=BB0_121 Depth=2
	bgeu	$t8, $a5, .LBB0_126
# %bb.124:                              #   in Loop: Header=BB0_121 Depth=2
	move	$s0, $zero
	ori	$s1, $zero, 1
	b	.LBB0_138
.LBB0_125:                              #   in Loop: Header=BB0_121 Depth=2
	move	$s0, $zero
	b	.LBB0_140
.LBB0_126:                              # %vector.main.loop.iter.check404
                                        #   in Loop: Header=BB0_121 Depth=2
	bgeu	$t8, $t0, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_121 Depth=2
	move	$fp, $zero
	move	$s0, $zero
	b	.LBB0_134
.LBB0_128:                              # %vector.ph405
                                        #   in Loop: Header=BB0_121 Depth=2
	bstrpick.d	$fp, $t8, 30, 4
	slli.d	$fp, $fp, 4
	addi.d	$s0, $t7, 36
	move	$s1, $fp
	xvori.b	$xr2, $xr1, 0
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB0_129:                              # %vector.body408
                                        #   Parent Loop BB0_117 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr4, $s0, -32
	xvld	$xr5, $s0, 0
	xvpermi.q	$xr6, $xr4, 1
	vpickve2gr.w	$s2, $vr6, 3
	vpickve2gr.w	$s3, $vr6, 2
	vpickve2gr.w	$s4, $vr6, 1
	vpickve2gr.w	$s5, $vr6, 0
	vpickve2gr.w	$s6, $vr4, 3
	vpickve2gr.w	$s7, $vr4, 2
	vpickve2gr.w	$s8, $vr4, 1
	vpickve2gr.w	$ra, $vr4, 0
	xvpermi.q	$xr4, $xr5, 1
	vpickve2gr.w	$a3, $vr4, 3
	vpickve2gr.w	$a4, $vr4, 2
	vpickve2gr.w	$a5, $vr4, 1
	vpickve2gr.w	$a1, $vr4, 0
	vpickve2gr.w	$a0, $vr5, 3
	vpickve2gr.w	$t1, $vr5, 2
	vpickve2gr.w	$t0, $vr5, 1
	vpickve2gr.w	$t2, $vr5, 0
	mul.d	$ra, $ra, $a6
	add.d	$ra, $t4, $ra
	mul.d	$s8, $s8, $a6
	add.d	$s8, $t4, $s8
	mul.d	$s7, $s7, $a6
	add.d	$s7, $t4, $s7
	mul.d	$s6, $s6, $a6
	add.d	$s6, $t4, $s6
	mul.d	$s5, $s5, $a6
	add.d	$s5, $t4, $s5
	mul.d	$s4, $s4, $a6
	add.d	$s4, $t4, $s4
	mul.d	$s3, $s3, $a6
	add.d	$s3, $t4, $s3
	mul.d	$s2, $s2, $a6
	add.d	$s2, $t4, $s2
	mul.d	$t2, $t2, $a6
	add.d	$t2, $t4, $t2
	mul.d	$t0, $t0, $a6
	add.d	$t0, $t4, $t0
	mul.d	$t1, $t1, $a6
	add.d	$t1, $t4, $t1
	mul.d	$a0, $a0, $a6
	add.d	$a0, $t4, $a0
	mul.d	$a1, $a1, $a6
	add.d	$a1, $t4, $a1
	mul.d	$a5, $a5, $a6
	add.d	$a5, $t4, $a5
	mul.d	$a4, $a4, $a6
	add.d	$a4, $t4, $a4
	mul.d	$a3, $a3, $a6
	add.d	$a3, $t4, $a3
	ld.w	$ra, $ra, 8
	ld.w	$s8, $s8, 8
	ld.w	$s7, $s7, 8
	ld.w	$s6, $s6, 8
	ld.w	$s5, $s5, 8
	ld.w	$s4, $s4, 8
	ld.w	$s3, $s3, 8
	ld.w	$s2, $s2, 8
	xvinsgr2vr.w	$xr4, $ra, 0
	xvinsgr2vr.w	$xr4, $s8, 1
	xvinsgr2vr.w	$xr4, $s7, 2
	xvinsgr2vr.w	$xr4, $s6, 3
	xvinsgr2vr.w	$xr4, $s5, 4
	xvinsgr2vr.w	$xr4, $s4, 5
	xvinsgr2vr.w	$xr4, $s3, 6
	xvinsgr2vr.w	$xr4, $s2, 7
	ld.w	$t2, $t2, 8
	ld.w	$t0, $t0, 8
	ld.w	$t1, $t1, 8
	ld.w	$a0, $a0, 8
	ld.w	$a1, $a1, 8
	ld.w	$a5, $a5, 8
	ld.w	$a4, $a4, 8
	ld.w	$a3, $a3, 8
	xvinsgr2vr.w	$xr5, $t2, 0
	xvinsgr2vr.w	$xr5, $t0, 1
	xvinsgr2vr.w	$xr5, $t1, 2
	xvinsgr2vr.w	$xr5, $a0, 3
	xvinsgr2vr.w	$xr5, $a1, 4
	xvinsgr2vr.w	$xr5, $a5, 5
	xvinsgr2vr.w	$xr5, $a4, 6
	xvinsgr2vr.w	$xr5, $a3, 7
	xvadd.w	$xr2, $xr4, $xr2
	xvadd.w	$xr3, $xr5, $xr3
	addi.d	$s1, $s1, -16
	addi.d	$s0, $s0, 64
	bnez	$s1, .LBB0_129
# %bb.130:                              # %middle.block415
                                        #   in Loop: Header=BB0_121 Depth=2
	xvadd.w	$xr2, $xr3, $xr2
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvadd.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$s0, $xr2, 0
	bne	$fp, $t8, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_121 Depth=2
	ori	$a5, $zero, 4
	ori	$t0, $zero, 16
	b	.LBB0_140
.LBB0_132:                              # %vec.epilog.iter.check422
                                        #   in Loop: Header=BB0_121 Depth=2
	andi	$a0, $t8, 12
	ori	$a5, $zero, 4
	beqz	$a0, .LBB0_137
# %bb.133:                              #   in Loop: Header=BB0_121 Depth=2
	ori	$t0, $zero, 16
.LBB0_134:                              # %vec.epilog.ph421
                                        #   in Loop: Header=BB0_121 Depth=2
	bstrpick.d	$a0, $t8, 30, 2
	slli.d	$s2, $a0, 2
	srli.d	$a0, $t8, 2
	ori	$s1, $zero, 1
	bstrins.d	$s1, $a0, 30, 2
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $s0, 0
	alsl.d	$a0, $fp, $t7, 2
	addi.d	$s0, $a0, 4
	sub.d	$fp, $fp, $s2
	.p2align	4, , 16
.LBB0_135:                              # %vec.epilog.vector.body427
                                        #   Parent Loop BB0_117 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr3, $s0, 0
	vpickve2gr.w	$a0, $vr3, 3
	vpickve2gr.w	$a1, $vr3, 2
	vpickve2gr.w	$a3, $vr3, 1
	vpickve2gr.w	$a4, $vr3, 0
	mul.d	$a4, $a4, $a6
	add.d	$a4, $t4, $a4
	mul.d	$a3, $a3, $a6
	add.d	$a3, $t4, $a3
	mul.d	$a1, $a1, $a6
	add.d	$a1, $t4, $a1
	mul.d	$a0, $a0, $a6
	add.d	$a0, $t4, $a0
	ld.w	$a4, $a4, 8
	ld.w	$a3, $a3, 8
	ld.w	$a1, $a1, 8
	ld.w	$a0, $a0, 8
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a3, 1
	vinsgr2vr.w	$vr3, $a1, 2
	vinsgr2vr.w	$vr3, $a0, 3
	vadd.w	$vr2, $vr3, $vr2
	addi.d	$fp, $fp, 4
	addi.d	$s0, $s0, 16
	bnez	$fp, .LBB0_135
# %bb.136:                              # %vec.epilog.middle.block433
                                        #   in Loop: Header=BB0_121 Depth=2
	vshuf4i.w	$vr3, $vr2, 14
	vadd.w	$vr2, $vr2, $vr3
	vreplvei.w	$vr3, $vr2, 1
	vadd.w	$vr2, $vr2, $vr3
	vpickve2gr.w	$s0, $vr2, 0
	bne	$s2, $t8, .LBB0_138
	b	.LBB0_140
.LBB0_137:                              #   in Loop: Header=BB0_121 Depth=2
	addi.d	$s1, $fp, 1
	ori	$t0, $zero, 16
	.p2align	4, , 16
.LBB0_138:                              # %for.body357.preheader
                                        #   in Loop: Header=BB0_121 Depth=2
	addi.d	$a0, $t8, 1
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$fp, $s1, $t7, 2
	sub.d	$s1, $a0, $s1
	.p2align	4, , 16
.LBB0_139:                              # %for.body357
                                        #   Parent Loop BB0_117 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $fp, 0
	mul.d	$a0, $a0, $a6
	add.d	$a0, $t4, $a0
	ld.w	$a0, $a0, 8
	add.d	$s0, $a0, $s0
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 4
	bnez	$s1, .LBB0_139
.LBB0_140:                              # %for.end367
                                        #   in Loop: Header=BB0_121 Depth=2
	ld.w	$a0, $t7, 4
	slli.d	$a1, $t8, 2
	ldx.w	$a1, $t7, $a1
	mul.d	$a0, $a0, $a6
	add.d	$a0, $t4, $a0
	ld.w	$s2, $a0, 32
	mul.d	$a0, $a1, $a6
	add.d	$a0, $t4, $a0
	ld.w	$t7, $a0, 36
	mul.d	$a0, $s2, $a7
	ld.wu	$fp, $t3, 16
	ldx.w	$s4, $t5, $a0
	mul.d	$a0, $t7, $a7
	ldx.w	$s1, $t5, $a0
	srli.d	$a0, $fp, 31
	add.w	$a0, $fp, $a0
	srai.d	$s3, $a0, 1
	sub.w	$t8, $s0, $fp
	blt	$s4, $a2, .LBB0_146
# %bb.141:                              # %if.then375
                                        #   in Loop: Header=BB0_121 Depth=2
	alsl.d	$s4, $s4, $t6, 3
	.p2align	4, , 16
.LBB0_142:                              # %for.cond378
                                        #   Parent Loop BB0_117 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $s4, 0
	ld.w	$a0, $s0, 0
	addi.d	$s4, $s0, 32
	bne	$a0, $s2, .LBB0_142
# %bb.143:                              # %for.end385
                                        #   in Loop: Header=BB0_121 Depth=2
	ld.w	$a0, $s0, 24
	bge	$t8, $a0, .LBB0_145
# %bb.144:                              # %if.then390
                                        #   in Loop: Header=BB0_121 Depth=2
	st.w	$t8, $s0, 24
	st.w	$s3, $s0, 4
.LBB0_145:                              # %if.end395
                                        #   in Loop: Header=BB0_121 Depth=2
	slli.d	$a0, $s2, 5
	alsl.d	$a0, $s2, $a0, 3
	add.d	$a0, $t5, $a0
	ld.w	$a1, $a0, 12
	st.w	$a2, $s0, 8
	st.w	$a1, $s0, 12
	ld.d	$a0, $a0, 4
	st.d	$a0, $s0, 16
.LBB0_146:                              # %if.end409
                                        #   in Loop: Header=BB0_121 Depth=2
	blt	$s1, $a2, .LBB0_120
# %bb.147:                              # %if.then411
                                        #   in Loop: Header=BB0_121 Depth=2
	sub.d	$s0, $fp, $s3
	alsl.d	$s1, $s1, $t6, 3
	.p2align	4, , 16
.LBB0_148:                              # %for.cond414
                                        #   Parent Loop BB0_117 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $s1, 0
	ld.w	$a0, $fp, 0
	addi.d	$s1, $fp, 32
	bne	$a0, $t7, .LBB0_148
# %bb.149:                              # %for.end421
                                        #   in Loop: Header=BB0_121 Depth=2
	ld.w	$a0, $fp, 24
	bge	$t8, $a0, .LBB0_119
# %bb.150:                              # %if.then426
                                        #   in Loop: Header=BB0_121 Depth=2
	st.w	$t8, $fp, 24
	st.w	$s0, $fp, 4
	b	.LBB0_119
.LBB0_151:                              # %for.cond452.preheader
	pcalau12i	$a0, %got_pc_hi20(numberCells)
	ld.d	$s4, $a0, %got_pc_lo12(numberCells)
	ld.w	$a1, $s4, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_156
# %bb.152:                              # %for.body454.preheader
	pcalau12i	$a1, %got_pc_hi20(cellList)
	ld.d	$s5, $a1, %got_pc_lo12(cellList)
	pcalau12i	$a1, %got_pc_hi20(fpdebug)
	ld.d	$s6, $a1, %got_pc_lo12(fpdebug)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$fp, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$s0, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$s1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s2, $a1, %pc_lo12(.L.str.5)
	b	.LBB0_154
	.p2align	4, , 16
.LBB0_153:                              # %for.inc473
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.w	$a1, $s4, 0
	addi.d	$a0, $s3, 1
	bge	$s3, $a1, .LBB0_156
.LBB0_154:                              # %for.body454
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_155 Depth 2
	ld.d	$a1, $s5, 0
	move	$s3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s7, $a1, $a0
	ld.d	$a0, $s6, 0
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB0_153
	.p2align	4, , 16
.LBB0_155:                              # %for.body460
                                        #   Parent Loop BB0_154 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 0
	ld.w	$a2, $s7, 0
	ld.w	$a3, $s7, 4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.w	$a2, $s7, 8
	ld.w	$a3, $s7, 12
	ld.w	$a4, $s7, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.w	$a2, $s7, 20
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s7, 32
	bnez	$s7, .LBB0_155
	b	.LBB0_153
.LBB0_156:                              # %for.end475
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
	ret
.Lfunc_end0:
	.size	density, .Lfunc_end0-density
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CHANNEL DENSITIES:\n"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"channel:%d  node1:%d  node2:%d  density:%d\n"
	.size	.L.str.1, 44

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"CELL: <%d>\n"
	.size	.L.str.2, 12

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"edge:%d  extraSpace:%d  "
	.size	.L.str.3, 25

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"HorV:%d  loc:%d  start:%d  "
	.size	.L.str.4, 28

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"end:%d\n"
	.size	.L.str.5, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
