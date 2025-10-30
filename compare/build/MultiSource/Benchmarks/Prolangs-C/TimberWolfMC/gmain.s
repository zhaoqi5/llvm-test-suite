	.file	"gmain.c"
	.text
	.globl	gmain                           # -- Begin function gmain
	.p2align	5
	.type	gmain,@function
gmain:                                  # @gmain
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1136
	st.d	$ra, $sp, 1128                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1056                  # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cktName)
	ld.d	$fp, $a0, %got_pc_lo12(cktName)
	ld.d	$a2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(fpdebug)
	ld.d	$s1, $a1, %got_pc_lo12(fpdebug)
	st.d	$a0, $s1, 0
	beqz	$a0, .LBB0_52
# %bb.1:                                # %if.end
	ld.d	$a2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_53
# %bb.2:                                # %if.end13
	move	$fp, $a0
	pcaddu18i	$ra, %call36(readgeo)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(makelink)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hprobes)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(vprobes)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(Vptrs)
	ld.d	$s2, $a0, %got_pc_lo12(Vptrs)
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(Hptrs)
	ld.d	$s3, $a0, %got_pc_lo12(Hptrs)
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(Vroot)
	ld.d	$s4, $a0, %got_pc_lo12(Vroot)
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB0_5
# %bb.3:                                # %for.cond.preheader
	pcalau12i	$a0, %got_pc_hi20(Vroot)
	ld.d	$s0, $a0, %got_pc_lo12(Vroot)
	.p2align	4, , 16
.LBB0_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 1048
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1048
	bnez	$a0, .LBB0_4
.LBB0_5:                                # %if.end19
	pcalau12i	$a0, %got_pc_hi20(Hroot)
	ld.d	$s5, $a0, %got_pc_lo12(Hroot)
	ld.d	$a0, $s5, 0
	beqz	$a0, .LBB0_8
# %bb.6:                                # %for.cond22.preheader
	pcalau12i	$a0, %got_pc_hi20(Hroot)
	ld.d	$s0, $a0, %got_pc_lo12(Hroot)
	.p2align	4, , 16
.LBB0_7:                                # %for.cond22
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 1048
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1048
	bnez	$a0, .LBB0_7
.LBB0_8:                                # %if.end27
	pcaddu18i	$ra, %call36(fulllink)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(findnodes)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(changraph)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(xgraph)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ygraph)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(reduceg)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(printgph)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(gentwf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$a0, $a0, %got_pc_lo12(rectArray)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(HRlist)
	ld.d	$a0, $a0, %got_pc_lo12(HRlist)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB0_9
.LBB0_10:                               # %while.end
	pcalau12i	$a0, %got_pc_hi20(VRlist)
	ld.d	$a0, $a0, %got_pc_lo12(VRlist)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %while.body31
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB0_11
.LBB0_12:                               # %while.end33
	pcalau12i	$a0, %got_pc_hi20(LEptrs)
	ld.d	$a0, $a0, %got_pc_lo12(LEptrs)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(BEptrs)
	ld.d	$a0, $a0, %got_pc_lo12(BEptrs)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(LEroot)
	ld.d	$a0, $a0, %got_pc_lo12(LEroot)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_15
# %bb.13:                               # %for.cond36.preheader
	pcalau12i	$a0, %got_pc_hi20(LEroot)
	ld.d	$s0, $a0, %got_pc_lo12(LEroot)
	.p2align	4, , 16
.LBB0_14:                               # %for.cond36
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 1048
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1048
	bnez	$a0, .LBB0_14
.LBB0_15:                               # %if.end41
	pcalau12i	$a0, %got_pc_hi20(BEroot)
	ld.d	$a0, $a0, %got_pc_lo12(BEroot)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_18
# %bb.16:                               # %for.cond44.preheader
	pcalau12i	$a0, %got_pc_hi20(BEroot)
	ld.d	$s0, $a0, %got_pc_lo12(BEroot)
	.p2align	4, , 16
.LBB0_17:                               # %for.cond44
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 1048
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1048
	bnez	$a0, .LBB0_17
.LBB0_18:                               # %if.end49
	pcalau12i	$a0, %got_pc_hi20(Hlist)
	ld.d	$a0, $a0, %got_pc_lo12(Hlist)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_20
	.p2align	4, , 16
.LBB0_19:                               # %while.body52
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB0_19
.LBB0_20:                               # %while.end54
	pcalau12i	$a0, %got_pc_hi20(Vlist)
	ld.d	$a0, $a0, %got_pc_lo12(Vlist)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %while.body57
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB0_21
.LBB0_22:                               # %while.end59
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB0_25
# %bb.23:                               # %for.cond62.preheader
	pcalau12i	$a0, %got_pc_hi20(Vroot)
	ld.d	$s0, $a0, %got_pc_lo12(Vroot)
	.p2align	4, , 16
.LBB0_24:                               # %for.cond62
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 1048
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1048
	bnez	$a0, .LBB0_24
.LBB0_25:                               # %if.end67
	ld.d	$a0, $s5, 0
	beqz	$a0, .LBB0_28
# %bb.26:                               # %for.cond70.preheader
	pcalau12i	$a0, %got_pc_hi20(Hroot)
	ld.d	$s0, $a0, %got_pc_lo12(Hroot)
	.p2align	4, , 16
.LBB0_27:                               # %for.cond70
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 1048
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1048
	bnez	$a0, .LBB0_27
.LBB0_28:                               # %if.end75
	pcalau12i	$a0, %got_pc_hi20(VDptrs)
	ld.d	$a0, $a0, %got_pc_lo12(VDptrs)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(HRptrs)
	ld.d	$a0, $a0, %got_pc_lo12(HRptrs)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(VDroot)
	ld.d	$a0, $a0, %got_pc_lo12(VDroot)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_31
# %bb.29:                               # %for.cond78.preheader
	pcalau12i	$a0, %got_pc_hi20(VDroot)
	ld.d	$s0, $a0, %got_pc_lo12(VDroot)
	.p2align	4, , 16
.LBB0_30:                               # %for.cond78
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 1048
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1048
	bnez	$a0, .LBB0_30
.LBB0_31:                               # %if.end83
	pcalau12i	$a0, %got_pc_hi20(HRroot)
	ld.d	$a0, $a0, %got_pc_lo12(HRroot)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_34
# %bb.32:                               # %for.cond86.preheader
	pcalau12i	$a0, %got_pc_hi20(HRroot)
	ld.d	$s0, $a0, %got_pc_lo12(HRroot)
	.p2align	4, , 16
.LBB0_33:                               # %for.cond86
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 1048
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1048
	bnez	$a0, .LBB0_33
.LBB0_34:                               # %if.end91
	pcalau12i	$a0, %got_pc_hi20(hFixedList)
	ld.d	$a0, $a0, %got_pc_lo12(hFixedList)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_36
	.p2align	4, , 16
.LBB0_35:                               # %while.body94
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB0_35
.LBB0_36:                               # %while.end96
	pcalau12i	$a0, %got_pc_hi20(vFixedList)
	ld.d	$a0, $a0, %got_pc_lo12(vFixedList)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_38
	.p2align	4, , 16
.LBB0_37:                               # %while.body99
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB0_37
.LBB0_38:                               # %for.cond102.preheader
	pcalau12i	$a0, %got_pc_hi20(numberCells)
	ld.d	$s2, $a0, %got_pc_lo12(numberCells)
	ld.w	$a0, $s2, 0
	addi.w	$a1, $zero, -1
	bge	$a0, $a1, .LBB0_40
.LBB0_39:                               # %for.end135
	pcalau12i	$a0, %got_pc_hi20(xNodules)
	ld.d	$a0, $a0, %got_pc_lo12(xNodules)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(yNodules)
	ld.d	$a0, $a0, %got_pc_lo12(yNodules)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1128                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1136
	ret
.LBB0_40:                               # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(xNodules)
	ld.d	$s3, $a0, %got_pc_lo12(xNodules)
	pcalau12i	$a0, %got_pc_hi20(yNodules)
	ld.d	$s4, $a0, %got_pc_lo12(yNodules)
	move	$a1, $zero
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_41:                               # %for.inc
                                        #   in Loop: Header=BB0_42 Depth=1
	ld.w	$a0, $s2, 0
	addi.d	$a1, $s5, 1
	blt	$a0, $s5, .LBB0_39
.LBB0_42:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_46 Depth 2
                                        #     Child Loop BB0_48 Depth 2
                                        #     Child Loop BB0_51 Depth 2
	ld.d	$a0, $s3, 0
	move	$s5, $a1
	slli.d	$a1, $a1, 4
	alsl.d	$s6, $s5, $a1, 3
	add.d	$a1, $a0, $s6
	ld.d	$s0, $a1, 8
	beqz	$s0, .LBB0_45
	.p2align	4, , 16
.LBB0_43:                               # %while.body106
                                        #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s0, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $s7
	bnez	$s7, .LBB0_43
# %bb.44:                               # %while.end108.loopexit
                                        #   in Loop: Header=BB0_42 Depth=1
	ld.d	$a0, $s3, 0
.LBB0_45:                               # %while.end108
                                        #   in Loop: Header=BB0_42 Depth=1
	ldx.d	$s0, $a0, $s6
	beqz	$s0, .LBB0_47
	.p2align	4, , 16
.LBB0_46:                               # %while.body113
                                        #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s0, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $s7
	bnez	$s7, .LBB0_46
.LBB0_47:                               # %while.end116
                                        #   in Loop: Header=BB0_42 Depth=1
	ld.d	$a0, $s4, 0
	add.d	$a1, $a0, $s6
	ld.d	$s0, $a1, 8
	beqz	$s0, .LBB0_50
	.p2align	4, , 16
.LBB0_48:                               # %while.body122
                                        #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s0, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $s7
	bnez	$s7, .LBB0_48
# %bb.49:                               # %while.end125.loopexit
                                        #   in Loop: Header=BB0_42 Depth=1
	ld.d	$a0, $s4, 0
.LBB0_50:                               # %while.end125
                                        #   in Loop: Header=BB0_42 Depth=1
	ldx.d	$s0, $a0, $s6
	beqz	$s0, .LBB0_41
	.p2align	4, , 16
.LBB0_51:                               # %while.body131
                                        #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s0, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $s6
	bnez	$s6, .LBB0_51
	b	.LBB0_41
.LBB0_52:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_53:                               # %if.then10
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 24
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	gmain, .Lfunc_end0-gmain
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.debug"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"can't open %s\n"
	.size	.L.str.2, 15

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s.geo"
	.size	.L.str.3, 7

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"r"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Error: file: %s not present\n"
	.size	.L.str.5, 29

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Vroot
	.addrsig_sym Hroot
	.addrsig_sym LEroot
	.addrsig_sym BEroot
	.addrsig_sym VDroot
	.addrsig_sym HRroot
