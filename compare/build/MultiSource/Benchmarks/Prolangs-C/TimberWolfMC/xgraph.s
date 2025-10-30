	.file	"xgraph.c"
	.text
	.globl	xgraph                          # -- Begin function xgraph
	.p2align	5
	.type	xgraph,@function
xgraph:                                 # @xgraph
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numberCells)
	ld.d	$a0, $a0, %got_pc_lo12(numberCells)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s0, $a0, 0
	addi.w	$fp, $s0, 2
	slli.d	$a0, $fp, 4
	alsl.d	$a0, $fp, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(xNodules)
	ld.d	$a2, $a1, %got_pc_lo12(xNodules)
	addi.w	$a1, $zero, -1
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $a2, 0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	blt	$s0, $a1, .LBB0_3
# %bb.1:                                # %for.body.preheader
	bstrpick.d	$a1, $fp, 31, 0
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 16
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 24
	bnez	$a1, .LBB0_2
.LBB0_3:                                # %for.end
	pcalau12i	$a0, %got_pc_hi20(Vlist)
	ld.d	$a0, $a0, %got_pc_lo12(Vlist)
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(edgeList)
	ld.d	$a0, $a0, %got_pc_lo12(edgeList)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a2, 5
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a1, 3
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 12
	ld.w	$s3, $a0, 8
	ld.w	$s4, $a0, 4
	pcalau12i	$a0, %got_pc_hi20(vChanBeginRoot)
	ld.d	$fp, $a0, %got_pc_lo12(vChanBeginRoot)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(tplist)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_9
# %bb.4:                                # %for.body17.lr.ph
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(eArray)
	ld.d	$a0, $a0, %got_pc_lo12(eArray)
	ld.d	$s5, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	ori	$s7, $zero, 56
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %for.inc49
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s0, $s0, 8
	beqz	$s0, .LBB0_9
.LBB0_6:                                # %for.body17
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s8, $s0, 0
	st.w	$s8, $sp, 96
	mul.d	$a0, $s8, $s7
	add.d	$a0, $s5, $a0
	ld.w	$a1, $a0, 28
	blt	$a1, $s4, .LBB0_5
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $a0, 24
	blt	$s3, $a0, .LBB0_5
# %bb.8:                                # %if.end
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $s6, 8
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s6, 8
	st.d	$s2, $a0, 16
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $s1, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	st.w	$s8, $a0, 4
	st.w	$a1, $s6, 16
	b	.LBB0_5
.LBB0_9:                                # %for.end50
	pcalau12i	$a0, %got_pc_hi20(Vend)
	ld.d	$a0, $a0, %got_pc_lo12(Vend)
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a2, 5
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a1, 3
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 12
	st.w	$a1, $sp, 100
	ld.w	$s8, $a0, 8
	ld.w	$s5, $a0, 4
	pcalau12i	$a0, %got_pc_hi20(vChanEndRoot)
	ld.d	$s3, $a0, %got_pc_lo12(vChanEndRoot)
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(tplist)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_15
# %bb.10:                               # %for.body65.lr.ph
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(eArray)
	ld.d	$a0, $a0, %got_pc_lo12(eArray)
	ld.d	$s6, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a2, $zero, 56
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %for.inc121
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.d	$s0, $s0, 8
	beqz	$s0, .LBB0_15
.LBB0_12:                               # %for.body65
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s7, $s0, 0
	st.w	$s7, $sp, 96
	mul.d	$a0, $s7, $a2
	add.d	$a0, $s6, $a0
	ld.w	$a1, $a0, 28
	blt	$a1, $s5, .LBB0_11
# %bb.13:                               # %land.lhs.true75
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a0, $a0, 24
	blt	$s8, $a0, .LBB0_11
# %bb.14:                               # %if.end79
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 24
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s2, $a1, $a0
	ld.d	$s4, $s2, 24
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s2, 24
	st.d	$s4, $a0, 16
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $s1, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 56
	st.d	$a0, $s1, 8
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	st.w	$s7, $a0, 4
	st.w	$a1, $s2, 40
	b	.LBB0_11
.LBB0_15:                               # %for.end123
	pcalau12i	$a0, %got_pc_hi20(vFixedList)
	ld.d	$a0, $a0, %got_pc_lo12(vFixedList)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 16
	ld.d	$a1, $a2, 16
	beqz	$a1, .LBB0_33
# %bb.16:                               # %for.body129.preheader
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a5, $a2, 16
	ori	$s1, $zero, 1
	pcalau12i	$a3, %got_pc_hi20(eArray)
	ld.d	$a3, $a3, %got_pc_lo12(eArray)
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	ori	$s8, $zero, 56
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_17:                               # %for.inc253.loopexit
                                        #   in Loop: Header=BB0_19 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
.LBB0_18:                               # %for.inc253
                                        #   in Loop: Header=BB0_19 Depth=1
	move	$a2, $a1
	ld.d	$a1, $a1, 16
	addi.d	$a5, $a2, 16
	beqz	$a1, .LBB0_33
.LBB0_19:                               # %for.body129
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #       Child Loop BB0_31 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	ld.w	$a6, $a2, 0
	slli.d	$a2, $a6, 5
	alsl.d	$a2, $a6, $a2, 3
	ldx.w	$a2, $a0, $a2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a2, 4
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	add.d	$a2, $a3, $a2
	ld.w	$a3, $a2, 16
	beq	$a3, $s1, .LBB0_18
# %bb.20:                               # %if.end140
                                        #   in Loop: Header=BB0_19 Depth=1
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.w	$s1, $a2, 16
	move	$s4, $a6
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %if.end245
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 40
	mul.d	$a1, $s4, $a2
	add.d	$a1, $a0, $a1
	ld.w	$a1, $a1, 32
	mul.d	$a1, $a1, $a2
	add.d	$a1, $a0, $a1
	ld.w	$s4, $a1, 32
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	beq	$s4, $a6, .LBB0_17
.LBB0_22:                               # %do.body
                                        #   Parent Loop BB0_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_31 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	slli.d	$a1, $s4, 5
	alsl.d	$a1, $s4, $a1, 3
	add.d	$a0, $a0, $a1
	ld.w	$a2, $a0, 20
	ld.w	$a1, $a0, 12
	st.w	$a1, $sp, 100
	blez	$a2, .LBB0_28
# %bb.23:                               # %if.then148
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(tplist)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_21
# %bb.24:                               # %for.body156.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=2
	move	$s0, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $a1, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               # %for.inc194
                                        #   in Loop: Header=BB0_26 Depth=3
	ld.d	$s0, $s0, 8
	beqz	$s0, .LBB0_21
.LBB0_26:                               # %for.body156
                                        #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s7, $s0, 0
	st.w	$s7, $sp, 96
	mul.d	$a0, $s7, $s8
	add.d	$a0, $s5, $a0
	ld.w	$a0, $a0, 36
	bne	$a0, $s4, .LBB0_25
# %bb.27:                               # %if.end163
                                        #   in Loop: Header=BB0_26 Depth=3
	ld.d	$s6, $s2, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s2, 0
	st.d	$s6, $a0, 16
	st.w	$s4, $a0, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	ori	$s1, $zero, 1
	st.w	$s1, $a0, 0
	st.w	$s7, $a0, 4
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_28:                               # %if.else
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(tplist)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_21
# %bb.29:                               # %for.body204.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=2
	move	$s0, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $a1, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               # %for.inc242
                                        #   in Loop: Header=BB0_31 Depth=3
	ld.d	$s0, $s0, 8
	beqz	$s0, .LBB0_21
.LBB0_31:                               # %for.body204
                                        #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s7, $s0, 0
	st.w	$s7, $sp, 96
	mul.d	$a0, $s7, $s8
	add.d	$a0, $s5, $a0
	ld.w	$a0, $a0, 32
	bne	$a0, $s4, .LBB0_30
# %bb.32:                               # %if.end211
                                        #   in Loop: Header=BB0_31 Depth=3
	ld.d	$s6, $s2, 8
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s2, 8
	st.d	$s6, $a0, 16
	st.w	$s4, $a0, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	ori	$s1, $zero, 1
	st.w	$s1, $a0, 0
	st.w	$s7, $a0, 4
	b	.LBB0_30
.LBB0_33:                               # %for.cond256.preheader
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_38
.LBB0_34:                               # %for.end415
	pcalau12i	$a0, %got_pc_hi20(numXnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numXnodes)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.w	$zero, $a0, 0
	beqz	$a1, .LBB0_66
# %bb.35:                               # %for.body419.lr.ph
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	.p2align	4, , 16
.LBB0_36:                               # %for.body419
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	addi.d	$a3, $a3, 1
	st.w	$a3, $a0, 0
	ld.w	$a4, $a1, 0
	ld.d	$a1, $a1, 16
	slli.d	$a5, $a4, 5
	alsl.d	$a4, $a4, $a5, 3
	add.d	$a4, $a2, $a4
	st.w	$a3, $a4, 36
	bnez	$a1, .LBB0_36
# %bb.37:                               # %for.end426.loopexit
	ld.w	$s2, $a0, 0
	b	.LBB0_67
.LBB0_38:                               # %for.body260.preheader
	pcalau12i	$a0, %got_pc_hi20(eArray)
	ld.d	$s8, $a0, %got_pc_lo12(eArray)
	move	$a1, $zero
	ori	$s7, $zero, 56
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_39:                               # %for.inc413
                                        #   in Loop: Header=BB0_40 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	blt	$a0, $a2, .LBB0_34
.LBB0_40:                               # %for.body260
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_46 Depth 3
                                        #         Child Loop BB0_49 Depth 4
                                        #     Child Loop BB0_56 Depth 2
                                        #       Child Loop BB0_59 Depth 3
                                        #         Child Loop BB0_62 Depth 4
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a2, $a1
	slli.d	$a1, $a1, 4
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a1, 3
	ldx.d	$s4, $a0, $a1
	beqz	$s4, .LBB0_54
# %bb.41:                               # %for.body275.preheader.preheader
                                        #   in Loop: Header=BB0_40 Depth=1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               # %for.inc335
                                        #   in Loop: Header=BB0_43 Depth=2
	ld.d	$s4, $s4, 16
	beqz	$s4, .LBB0_53
.LBB0_43:                               # %for.body275.preheader
                                        #   Parent Loop BB0_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_46 Depth 3
                                        #         Child Loop BB0_49 Depth 4
	ld.d	$a0, $s4, 8
	ld.w	$a1, $a0, 0
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_44:                               # %if.end323
                                        #   in Loop: Header=BB0_46 Depth=3
	slli.d	$a1, $a1, 2
	stx.w	$s0, $a0, $a1
.LBB0_45:                               # %for.inc332
                                        #   in Loop: Header=BB0_46 Depth=3
	ld.d	$a0, $s4, 8
	ld.w	$a2, $a0, 0
	addi.d	$a1, $s5, 1
	bge	$s5, $a2, .LBB0_42
.LBB0_46:                               # %for.body275
                                        #   Parent Loop BB0_40 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_49 Depth 4
	move	$s5, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	ld.d	$a1, $s8, 0
	st.w	$a0, $sp, 96
	mul.d	$a0, $a0, $s7
	add.d	$a0, $a1, $a0
	ld.w	$s1, $a0, 12
	st.w	$s1, $sp, 100
	ld.w	$s6, $a0, 24
	ld.w	$s2, $a0, 28
	ld.d	$a0, $s3, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(tplist)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_45
# %bb.47:                               # %for.body294.lr.ph
                                        #   in Loop: Header=BB0_46 Depth=3
	ld.d	$a1, $s8, 0
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_48:                               # %for.inc329
                                        #   in Loop: Header=BB0_49 Depth=4
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB0_45
.LBB0_49:                               # %for.body294
                                        #   Parent Loop BB0_40 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        #       Parent Loop BB0_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s0, $a0, 0
	st.w	$s0, $sp, 96
	mul.d	$a2, $s0, $s7
	add.d	$a2, $a1, $a2
	ld.w	$a3, $a2, 28
	blt	$a3, $s2, .LBB0_48
# %bb.50:                               # %land.lhs.true304
                                        #   in Loop: Header=BB0_49 Depth=4
	ld.w	$a2, $a2, 24
	blt	$s6, $a2, .LBB0_48
# %bb.51:                               # %if.end308
                                        #   in Loop: Header=BB0_46 Depth=3
	pcalau12i	$a0, %got_pc_hi20(vChanEndRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vChanEndRoot)
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 8
	ld.w	$a2, $a0, 0
	addi.w	$a1, $a2, 1
	andi	$a3, $a2, 1
	st.w	$a1, $a0, 0
	beqz	$a3, .LBB0_44
# %bb.52:                               # %if.then314
                                        #   in Loop: Header=BB0_46 Depth=3
	slli.d	$a1, $a2, 2
	addi.d	$a1, $a1, 12
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 0
	st.d	$a0, $s4, 8
	b	.LBB0_44
	.p2align	4, , 16
.LBB0_53:                               # %for.end337.loopexit
                                        #   in Loop: Header=BB0_40 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
.LBB0_54:                               # %for.end337
                                        #   in Loop: Header=BB0_40 Depth=1
	add.d	$a0, $a0, $a1
	ld.d	$s2, $a0, 8
	bnez	$s2, .LBB0_56
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_55:                               # %for.inc410
                                        #   in Loop: Header=BB0_56 Depth=2
	ld.d	$s2, $s2, 16
	beqz	$s2, .LBB0_39
.LBB0_56:                               # %for.body352.preheader
                                        #   Parent Loop BB0_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_59 Depth 3
                                        #         Child Loop BB0_62 Depth 4
	ld.d	$a0, $s2, 8
	ld.w	$a1, $a0, 0
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_57:                               # %if.end398
                                        #   in Loop: Header=BB0_59 Depth=3
	slli.d	$a1, $a1, 2
	stx.w	$s0, $a0, $a1
.LBB0_58:                               # %for.inc407
                                        #   in Loop: Header=BB0_59 Depth=3
	ld.d	$a0, $s2, 8
	ld.w	$a2, $a0, 0
	addi.d	$a1, $s4, 1
	bge	$s4, $a2, .LBB0_55
.LBB0_59:                               # %for.body352
                                        #   Parent Loop BB0_40 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_62 Depth 4
	move	$s4, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	ld.d	$a1, $s8, 0
	st.w	$a0, $sp, 96
	mul.d	$a0, $a0, $s7
	add.d	$a0, $a1, $a0
	ld.w	$s1, $a0, 16
	st.w	$s1, $sp, 100
	ld.w	$s5, $a0, 24
	ld.w	$s6, $a0, 28
	ld.d	$a0, $fp, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(tplist)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_58
# %bb.60:                               # %for.body368.lr.ph
                                        #   in Loop: Header=BB0_59 Depth=3
	ld.d	$a1, $s8, 0
	b	.LBB0_62
	.p2align	4, , 16
.LBB0_61:                               # %for.inc404
                                        #   in Loop: Header=BB0_62 Depth=4
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB0_58
.LBB0_62:                               # %for.body368
                                        #   Parent Loop BB0_40 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        #       Parent Loop BB0_59 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s0, $a0, 0
	st.w	$s0, $sp, 96
	mul.d	$a2, $s0, $s7
	add.d	$a2, $a1, $a2
	ld.w	$a3, $a2, 28
	blt	$a3, $s6, .LBB0_61
# %bb.63:                               # %land.lhs.true378
                                        #   in Loop: Header=BB0_62 Depth=4
	ld.w	$a2, $a2, 24
	blt	$s5, $a2, .LBB0_61
# %bb.64:                               # %if.end382
                                        #   in Loop: Header=BB0_59 Depth=3
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	ld.w	$a2, $a0, 0
	addi.w	$a1, $a2, 1
	andi	$a3, $a2, 1
	st.w	$a1, $a0, 0
	beqz	$a3, .LBB0_57
# %bb.65:                               # %if.then389
                                        #   in Loop: Header=BB0_59 Depth=3
	slli.d	$a1, $a2, 2
	addi.d	$a1, $a1, 12
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 0
	st.d	$a0, $s2, 8
	b	.LBB0_57
.LBB0_66:
	move	$s2, $zero
.LBB0_67:                               # %for.end426
	slli.d	$s1, $s2, 3
	addi.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(xNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(xNodeArray)
	st.d	$s0, $a0, 0
	blez	$s2, .LBB0_69
# %bb.68:                               # %for.body434.preheader
	addi.d	$a0, $s0, 8
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_69:                               # %for.cond440.preheader
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	blez	$a0, .LBB0_77
# %bb.70:                               # %for.body443.lr.ph
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s6, $zero, 1
	ori	$a1, $zero, 1
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_71:                               # %for.inc495
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_77
.LBB0_72:                               # %for.body443
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_75 Depth 3
	slli.d	$a0, $a1, 4
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$s8, $a1, $a0
	beqz	$s8, .LBB0_71
# %bb.73:                               # %for.body450.lr.ph
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_71
	.p2align	4, , 16
.LBB0_74:                               # %for.body450
                                        #   Parent Loop BB0_72 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_75 Depth 3
	ld.w	$a0, $s8, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a0, $s4, $a0
	ld.w	$a1, $a0, 36
	slli.d	$a2, $a1, 3
	ld.w	$s2, $a0, 12
	ldx.d	$a0, $s0, $a2
	alsl.d	$a1, $a1, $s0, 3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_75:                               # %for.body461
                                        #   Parent Loop BB0_72 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a1, $s1, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	add.d	$s7, $s4, $a1
	ld.w	$s0, $s7, 36
	move	$s5, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 24
	st.w	$s6, $a0, 0
	ld.w	$a1, $s7, 12
	ld.d	$s1, $s1, 16
	st.w	$s0, $a0, 4
	st.d	$zero, $a0, 8
	sub.d	$a1, $a1, $s2
	st.w	$a1, $a0, 16
	bnez	$s1, .LBB0_75
# %bb.76:                               # %for.cond458.for.inc492_crit_edge
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$s8, $s8, 16
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	bnez	$s8, .LBB0_74
	b	.LBB0_71
.LBB0_77:                               # %for.cond498.preheader
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_85
.LBB0_78:                               # %for.end573
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB0_81
# %bb.79:                               # %for.cond577.preheader
	pcalau12i	$a0, %got_pc_hi20(vChanBeginRoot)
	ld.d	$fp, $a0, %got_pc_lo12(vChanBeginRoot)
	.p2align	4, , 16
.LBB0_80:                               # %for.cond577
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 100
	addi.d	$a3, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	bnez	$a0, .LBB0_80
.LBB0_81:                               # %if.end583
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB0_84
# %bb.82:                               # %for.cond587.preheader
	pcalau12i	$a0, %got_pc_hi20(vChanEndRoot)
	ld.d	$fp, $a0, %got_pc_lo12(vChanEndRoot)
	.p2align	4, , 16
.LBB0_83:                               # %for.cond587
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 100
	addi.d	$a3, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	bnez	$a0, .LBB0_83
.LBB0_84:                               # %if.end593
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB0_85:                               # %for.body502.lr.ph
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(eArray)
	ld.d	$a0, $a0, %got_pc_lo12(eArray)
	move	$a2, $zero
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 2
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_87
	.p2align	4, , 16
.LBB0_86:                               # %for.inc571
                                        #   in Loop: Header=BB0_87 Depth=1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB0_78
.LBB0_87:                               # %for.body502
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_89 Depth 2
                                        #       Child Loop BB0_91 Depth 3
	slli.d	$a0, $a2, 4
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$s7, $a0, 8
	bnez	$s7, .LBB0_89
	b	.LBB0_86
	.p2align	4, , 16
.LBB0_88:                               # %for.inc568
                                        #   in Loop: Header=BB0_89 Depth=2
	ld.d	$s7, $s7, 16
	beqz	$s7, .LBB0_86
.LBB0_89:                               # %for.body509
                                        #   Parent Loop BB0_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_91 Depth 3
	ld.d	$s5, $s7, 8
	ld.w	$a0, $s5, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s5, $a0
	ld.w	$a1, $s7, 0
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 36
	ori	$a2, $zero, 40
	mul.d	$a1, $a1, $a2
	add.d	$a1, $s4, $a1
	ld.w	$a1, $a1, 36
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s4, $a0
	ld.w	$s0, $a0, 36
	slli.d	$s2, $a1, 3
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$s6, $s8, $s2
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.w	$zero, $a0, 0
	st.w	$zero, $a0, 16
	st.w	$s0, $a0, 4
	ld.w	$s0, $s5, 0
	stx.d	$a0, $s8, $s2
	st.d	$s6, $a0, 24
	slli.d	$a0, $s0, 2
	addi.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	bltz	$s0, .LBB0_88
# %bb.90:                               # %for.body556.preheader
                                        #   in Loop: Header=BB0_89 Depth=2
	move	$a1, $zero
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_91:                               # %for.body556
                                        #   Parent Loop BB0_87 Depth=1
                                        #     Parent Loop BB0_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a3, $s5, $a1
	stx.w	$a3, $a0, $a1
	ld.w	$a3, $s5, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $a3, .LBB0_91
	b	.LBB0_88
.Lfunc_end0:
	.size	xgraph, .Lfunc_end0-xgraph
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vChanBeginRoot
	.addrsig_sym vChanEndRoot
