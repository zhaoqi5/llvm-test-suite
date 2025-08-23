	.file	"s7.c"
	.text
	.globl	S7_Sort                         # -- Begin function S7_Sort
	.p2align	5
	.type	S7_Sort,@function
S7_Sort:                                # @S7_Sort
# %bb.0:                                # %entry
	addi.d	$a2, $a2, -4
	ori	$a3, $zero, 10
	bltu	$a3, $a2, .LBB0_67
# %bb.1:                                # %entry
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_0)
	ldx.w	$a2, $a3, $a2
	bstrpick.d	$a4, $a1, 31, 31
	add.w	$a4, $a1, $a4
	add.d	$a3, $a3, $a2
	srai.d	$a2, $a4, 1
	jr	$a3
.LBB0_2:                                # %for.cond.preheader
	ori	$a3, $zero, 1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	move	$a7, $a5
.LBB0_4:                                # %while.end
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 2
	stx.w	$a4, $a0, $a5
.LBB0_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	addi.w	$a4, $a2, 0
	blt	$a4, $a3, .LBB0_7
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $a0, $a4
	slli.d	$t0, $a2, 1
	addi.w	$a6, $t0, 1
	move	$a7, $a2
	bge	$a6, $a1, .LBB0_4
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_7:                                # %if.else
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_66
# %bb.8:                                # %if.end
                                        #   in Loop: Header=BB0_5 Depth=1
	slli.d	$a5, $a1, 2
	ld.w	$a6, $a0, 0
	ldx.w	$a4, $a0, $a5
	stx.w	$a6, $a0, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a6, $t0, 1
	move	$a7, $a2
	bge	$a6, $a1, .LBB0_4
.LBB0_9:                                # %while.body.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_10:                               # %while.body
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $t0, 2
	bge	$a7, $a1, .LBB0_12
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_10 Depth=2
	slli.d	$t0, $a7, 2
	ldx.w	$t0, $a0, $t0
	slli.d	$t1, $a6, 2
	ldx.w	$t1, $a0, $t1
	slt	$t0, $t1, $t0
	masknez	$a6, $a6, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $a6
	slli.d	$a6, $a7, 2
	ldx.w	$t1, $a0, $a6
	blt	$a4, $t1, .LBB0_13
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=2
	move	$a7, $a6
	slli.d	$a6, $a7, 2
	ldx.w	$t1, $a0, $a6
	bge	$a4, $t1, .LBB0_3
.LBB0_13:                               # %if.then24
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.w	$a5, $a5, 0
	slli.d	$a5, $a5, 2
	slli.d	$t0, $a7, 1
	addi.w	$a6, $t0, 1
	stx.w	$t1, $a0, $a5
	move	$a5, $a7
	blt	$a6, $a1, .LBB0_10
	b	.LBB0_4
.LBB0_14:                               # %for.cond138.preheader
	ori	$a3, $zero, 1
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=1
	move	$a6, $a5
.LBB0_16:                               # %while.end184
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a4, $a6, 0
	slli.d	$a4, $a4, 2
	fstx.s	$fa0, $a0, $a4
.LBB0_17:                               # %for.cond138
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	addi.w	$a4, $a2, 0
	blt	$a4, $a3, .LBB0_19
# %bb.18:                               # %if.then140
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 2
	fldx.s	$fa0, $a0, $a4
	slli.d	$a7, $a2, 1
	addi.w	$a4, $a7, 1
	move	$a6, $a2
	bge	$a4, $a1, .LBB0_16
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_19:                               # %if.else144
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_66
# %bb.20:                               # %if.end148
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$a4, $a1, 2
	fld.s	$fa1, $a0, 0
	fldx.s	$fa0, $a0, $a4
	fstx.s	$fa1, $a0, $a4
	slli.d	$a7, $a2, 1
	addi.w	$a4, $a7, 1
	move	$a6, $a2
	bge	$a4, $a1, .LBB0_16
.LBB0_21:                               # %while.body159.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_22:                               # %while.body159
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $a7, 2
	bge	$a7, $a1, .LBB0_25
# %bb.23:                               # %land.lhs.true162
                                        #   in Loop: Header=BB0_22 Depth=2
	slli.d	$a6, $a7, 2
	fldx.s	$fa1, $a0, $a6
	slli.d	$a6, $a4, 2
	fldx.s	$fa2, $a0, $a6
	fcmp.cule.s	$fcc0, $fa1, $fa2
	move	$a6, $a4
	bcnez	$fcc0, .LBB0_26
# %bb.24:                               # %if.then169
                                        #   in Loop: Header=BB0_22 Depth=2
	move	$a4, $a7
	move	$a6, $a7
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               # %while.body159.if.end171_crit_edge
                                        #   in Loop: Header=BB0_22 Depth=2
	move	$a6, $a4
.LBB0_26:                               # %if.end171
                                        #   in Loop: Header=BB0_22 Depth=2
	slli.d	$a4, $a4, 2
	fldx.s	$fa1, $a0, $a4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_15
# %bb.27:                               # %if.then175
                                        #   in Loop: Header=BB0_22 Depth=2
	addi.w	$a4, $a5, 0
	slli.d	$a5, $a4, 2
	slli.d	$a7, $a6, 1
	addi.w	$a4, $a7, 1
	fstx.s	$fa1, $a0, $a5
	move	$a5, $a6
	blt	$a4, $a1, .LBB0_22
	b	.LBB0_16
.LBB0_28:                               # %for.cond189.preheader
	ori	$a3, $zero, 1
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_31 Depth=1
	move	$a6, $a5
.LBB0_30:                               # %while.end235
                                        #   in Loop: Header=BB0_31 Depth=1
	addi.w	$a4, $a6, 0
	slli.d	$a4, $a4, 3
	fstx.d	$fa0, $a0, $a4
.LBB0_31:                               # %for.cond189
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
	addi.w	$a4, $a2, 0
	blt	$a4, $a3, .LBB0_33
# %bb.32:                               # %if.then191
                                        #   in Loop: Header=BB0_31 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 3
	fldx.d	$fa0, $a0, $a4
	slli.d	$a7, $a2, 1
	addi.w	$a4, $a7, 1
	move	$a6, $a2
	bge	$a4, $a1, .LBB0_30
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_33:                               # %if.else195
                                        #   in Loop: Header=BB0_31 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_66
# %bb.34:                               # %if.end199
                                        #   in Loop: Header=BB0_31 Depth=1
	slli.d	$a4, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a4
	fstx.d	$fa1, $a0, $a4
	slli.d	$a7, $a2, 1
	addi.w	$a4, $a7, 1
	move	$a6, $a2
	bge	$a4, $a1, .LBB0_30
.LBB0_35:                               # %while.body210.preheader
                                        #   in Loop: Header=BB0_31 Depth=1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_36:                               # %while.body210
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $a7, 2
	bge	$a7, $a1, .LBB0_39
# %bb.37:                               # %land.lhs.true213
                                        #   in Loop: Header=BB0_36 Depth=2
	slli.d	$a6, $a7, 3
	fldx.d	$fa1, $a0, $a6
	slli.d	$a6, $a4, 3
	fldx.d	$fa2, $a0, $a6
	fcmp.cule.d	$fcc0, $fa1, $fa2
	move	$a6, $a4
	bcnez	$fcc0, .LBB0_40
# %bb.38:                               # %if.then220
                                        #   in Loop: Header=BB0_36 Depth=2
	move	$a4, $a7
	move	$a6, $a7
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_39:                               # %while.body210.if.end222_crit_edge
                                        #   in Loop: Header=BB0_36 Depth=2
	move	$a6, $a4
.LBB0_40:                               # %if.end222
                                        #   in Loop: Header=BB0_36 Depth=2
	slli.d	$a4, $a4, 3
	fldx.d	$fa1, $a0, $a4
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_29
# %bb.41:                               # %if.then226
                                        #   in Loop: Header=BB0_36 Depth=2
	addi.w	$a4, $a5, 0
	slli.d	$a5, $a4, 3
	slli.d	$a7, $a6, 1
	addi.w	$a4, $a7, 1
	fstx.d	$fa1, $a0, $a5
	move	$a5, $a6
	blt	$a4, $a1, .LBB0_36
	b	.LBB0_30
.LBB0_42:                               # %for.cond87.preheader
	ori	$a3, $zero, 1
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_43:                               #   in Loop: Header=BB0_45 Depth=1
	move	$a7, $a5
.LBB0_44:                               # %while.end133
                                        #   in Loop: Header=BB0_45 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 3
	stx.d	$a4, $a0, $a5
.LBB0_45:                               # %for.cond87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_50 Depth 2
	addi.w	$a4, $a2, 0
	blt	$a4, $a3, .LBB0_47
# %bb.46:                               # %if.then89
                                        #   in Loop: Header=BB0_45 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$t0, $a2, 1
	addi.w	$a6, $t0, 1
	move	$a7, $a2
	bge	$a6, $a1, .LBB0_44
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_47:                               # %if.else93
                                        #   in Loop: Header=BB0_45 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_66
# %bb.48:                               # %if.end97
                                        #   in Loop: Header=BB0_45 Depth=1
	slli.d	$a5, $a1, 3
	ld.d	$a6, $a0, 0
	ldx.d	$a4, $a0, $a5
	stx.d	$a6, $a0, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a6, $t0, 1
	move	$a7, $a2
	bge	$a6, $a1, .LBB0_44
.LBB0_49:                               # %while.body108.preheader
                                        #   in Loop: Header=BB0_45 Depth=1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_50:                               # %while.body108
                                        #   Parent Loop BB0_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $t0, 2
	bge	$a7, $a1, .LBB0_52
# %bb.51:                               # %land.lhs.true111
                                        #   in Loop: Header=BB0_50 Depth=2
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a0, $t0
	slli.d	$t1, $a6, 3
	ldx.d	$t1, $a0, $t1
	slt	$t0, $t1, $t0
	masknez	$a6, $a6, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $a6
	slli.d	$a6, $a7, 3
	ldx.d	$t1, $a0, $a6
	blt	$a4, $t1, .LBB0_53
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_52:                               #   in Loop: Header=BB0_50 Depth=2
	move	$a7, $a6
	slli.d	$a6, $a7, 3
	ldx.d	$t1, $a0, $a6
	bge	$a4, $t1, .LBB0_43
.LBB0_53:                               # %if.then124
                                        #   in Loop: Header=BB0_50 Depth=2
	addi.w	$a5, $a5, 0
	slli.d	$a5, $a5, 3
	slli.d	$t0, $a7, 1
	addi.w	$a6, $t0, 1
	stx.d	$t1, $a0, $a5
	move	$a5, $a7
	blt	$a6, $a1, .LBB0_50
	b	.LBB0_44
.LBB0_54:                               # %for.cond36.preheader
	ori	$a3, $zero, 1
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_55:                               #   in Loop: Header=BB0_57 Depth=1
	move	$a7, $a5
.LBB0_56:                               # %while.end82
                                        #   in Loop: Header=BB0_57 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 3
	stx.d	$a4, $a0, $a5
.LBB0_57:                               # %for.cond36
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_62 Depth 2
	addi.w	$a4, $a2, 0
	blt	$a4, $a3, .LBB0_59
# %bb.58:                               # %if.then38
                                        #   in Loop: Header=BB0_57 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$t0, $a2, 1
	addi.w	$a6, $t0, 1
	move	$a7, $a2
	bge	$a6, $a1, .LBB0_56
	b	.LBB0_61
	.p2align	4, , 16
.LBB0_59:                               # %if.else42
                                        #   in Loop: Header=BB0_57 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_66
# %bb.60:                               # %if.end46
                                        #   in Loop: Header=BB0_57 Depth=1
	slli.d	$a5, $a1, 3
	ld.d	$a6, $a0, 0
	ldx.d	$a4, $a0, $a5
	stx.d	$a6, $a0, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a6, $t0, 1
	move	$a7, $a2
	bge	$a6, $a1, .LBB0_56
.LBB0_61:                               # %while.body57.preheader
                                        #   in Loop: Header=BB0_57 Depth=1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_62:                               # %while.body57
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $t0, 2
	bge	$a7, $a1, .LBB0_64
# %bb.63:                               # %land.lhs.true60
                                        #   in Loop: Header=BB0_62 Depth=2
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a0, $t0
	slli.d	$t1, $a6, 3
	ldx.d	$t1, $a0, $t1
	slt	$t0, $t1, $t0
	masknez	$a6, $a6, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $a6
	slli.d	$a6, $a7, 3
	ldx.d	$t1, $a0, $a6
	blt	$a4, $t1, .LBB0_65
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_64:                               #   in Loop: Header=BB0_62 Depth=2
	move	$a7, $a6
	slli.d	$a6, $a7, 3
	ldx.d	$t1, $a0, $a6
	bge	$a4, $t1, .LBB0_55
.LBB0_65:                               # %if.then73
                                        #   in Loop: Header=BB0_62 Depth=2
	addi.w	$a5, $a5, 0
	slli.d	$a5, $a5, 3
	slli.d	$t0, $a7, 1
	addi.w	$a6, $t0, 1
	stx.d	$t1, $a0, $a5
	move	$a5, $a7
	blt	$a6, $a1, .LBB0_62
	b	.LBB0_56
.LBB0_66:                               # %sw.epilog
	ret
.LBB0_67:                               # %sw.default
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	S7_Sort, .Lfunc_end0-S7_Sort
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_54-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_28-.LJTI0_0
	.word	.LBB0_67-.LJTI0_0
	.word	.LBB0_67-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_28-.LJTI0_0
                                        # -- End function
	.text
	.globl	S7_Sort_2Arrays                 # -- Begin function S7_Sort_2Arrays
	.p2align	5
	.type	S7_Sort_2Arrays,@function
S7_Sort_2Arrays:                        # @S7_Sort_2Arrays
# %bb.0:                                # %entry
	addi.d	$a3, $a3, -4
	ori	$a4, $zero, 10
	bltu	$a4, $a3, .LBB1_67
# %bb.1:                                # %entry
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI1_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI1_0)
	ldx.w	$a3, $a4, $a3
	bstrpick.d	$a5, $a2, 31, 31
	add.w	$a5, $a2, $a5
	add.d	$a4, $a4, $a3
	srai.d	$a3, $a5, 1
	jr	$a4
.LBB1_2:                                # %for.cond.preheader
	ori	$a4, $zero, 1
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_3:                                #   in Loop: Header=BB1_5 Depth=1
	move	$t0, $a7
.LBB1_4:                                # %while.end
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a7, $t0, 0
	slli.d	$a7, $a7, 2
	stx.w	$a5, $a0, $a7
	stx.w	$a6, $a1, $a7
.LBB1_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	addi.w	$a5, $a3, 0
	blt	$a5, $a4, .LBB1_7
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a6, $a3, 2
	ldx.w	$a5, $a0, $a6
	ldx.w	$a6, $a1, $a6
	slli.d	$t2, $a3, 1
	addi.w	$t1, $t2, 1
	move	$t0, $a3
	bge	$t1, $a2, .LBB1_4
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_7:                                # %if.else
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_66
# %bb.8:                                # %if.end
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a7, $a0, 0
	slli.d	$t0, $a2, 2
	ldx.w	$a5, $a0, $t0
	ldx.w	$a6, $a1, $t0
	stx.w	$a7, $a0, $t0
	ld.w	$a7, $a1, 0
	stx.w	$a7, $a1, $t0
	slli.d	$t2, $a3, 1
	addi.w	$t1, $t2, 1
	move	$t0, $a3
	bge	$t1, $a2, .LBB1_4
.LBB1_9:                                # %while.body.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a7, $a3
	.p2align	4, , 16
.LBB1_10:                               # %while.body
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t2, 2
	bge	$t0, $a2, .LBB1_12
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB1_10 Depth=2
	slli.d	$t2, $t0, 2
	ldx.w	$t2, $a0, $t2
	slli.d	$t3, $t1, 2
	ldx.w	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t1, $t1, $t2
	maskeqz	$t0, $t0, $t2
	or	$t0, $t0, $t1
	slli.d	$t1, $t0, 2
	ldx.w	$t2, $a0, $t1
	blt	$a5, $t2, .LBB1_13
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_10 Depth=2
	move	$t0, $t1
	slli.d	$t1, $t0, 2
	ldx.w	$t2, $a0, $t1
	bge	$a5, $t2, .LBB1_3
.LBB1_13:                               # %if.then31
                                        #   in Loop: Header=BB1_10 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 2
	stx.w	$t2, $a0, $a7
	ldx.w	$t3, $a1, $t1
	slli.d	$t2, $t0, 1
	addi.w	$t1, $t2, 1
	stx.w	$t3, $a1, $a7
	move	$a7, $t0
	blt	$t1, $a2, .LBB1_10
	b	.LBB1_4
.LBB1_14:                               # %for.cond175.preheader
	ori	$a4, $zero, 1
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_15:                               #   in Loop: Header=BB1_17 Depth=1
	move	$a7, $a6
.LBB1_16:                               # %while.end232
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 2
	fstx.s	$fa0, $a0, $a5
	fstx.s	$fa1, $a1, $a5
.LBB1_17:                               # %for.cond175
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
	addi.w	$a5, $a3, 0
	blt	$a5, $a4, .LBB1_19
# %bb.18:                               # %if.then177
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a5, $a3, 2
	fldx.s	$fa0, $a0, $a5
	fldx.s	$fa1, $a1, $a5
	slli.d	$t0, $a3, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a3
	bge	$a5, $a2, .LBB1_16
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_19:                               # %if.else183
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_66
# %bb.20:                               # %if.end187
                                        #   in Loop: Header=BB1_17 Depth=1
	fld.s	$fa2, $a0, 0
	slli.d	$a5, $a2, 2
	fldx.s	$fa0, $a0, $a5
	fldx.s	$fa1, $a1, $a5
	fstx.s	$fa2, $a0, $a5
	fld.s	$fa2, $a1, 0
	fstx.s	$fa2, $a1, $a5
	slli.d	$t0, $a3, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a3
	bge	$a5, $a2, .LBB1_16
.LBB1_21:                               # %while.body203.preheader
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_22:                               # %while.body203
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t0, 2
	bge	$t0, $a2, .LBB1_25
# %bb.23:                               # %land.lhs.true206
                                        #   in Loop: Header=BB1_22 Depth=2
	slli.d	$a7, $t0, 2
	fldx.s	$fa2, $a0, $a7
	slli.d	$a7, $a5, 2
	fldx.s	$fa3, $a0, $a7
	fcmp.cule.s	$fcc0, $fa2, $fa3
	move	$a7, $a5
	bcnez	$fcc0, .LBB1_26
# %bb.24:                               # %if.then213
                                        #   in Loop: Header=BB1_22 Depth=2
	move	$a5, $t0
	move	$a7, $t0
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_25:                               # %while.body203.if.end215_crit_edge
                                        #   in Loop: Header=BB1_22 Depth=2
	move	$a7, $a5
.LBB1_26:                               # %if.end215
                                        #   in Loop: Header=BB1_22 Depth=2
	slli.d	$a5, $a5, 2
	fldx.s	$fa2, $a0, $a5
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_15
# %bb.27:                               # %if.then219
                                        #   in Loop: Header=BB1_22 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 2
	fstx.s	$fa2, $a0, $a6
	fldx.s	$fa2, $a1, $a5
	slli.d	$t0, $a7, 1
	addi.w	$a5, $t0, 1
	fstx.s	$fa2, $a1, $a6
	move	$a6, $a7
	blt	$a5, $a2, .LBB1_22
	b	.LBB1_16
.LBB1_28:                               # %for.cond238.preheader
	ori	$a4, $zero, 1
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_29:                               #   in Loop: Header=BB1_31 Depth=1
	move	$a7, $a6
.LBB1_30:                               # %while.end295
                                        #   in Loop: Header=BB1_31 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 3
	fstx.d	$fa0, $a0, $a5
	fstx.d	$fa1, $a1, $a5
.LBB1_31:                               # %for.cond238
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
	addi.w	$a5, $a3, 0
	blt	$a5, $a4, .LBB1_33
# %bb.32:                               # %if.then240
                                        #   in Loop: Header=BB1_31 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a5, $a3, 3
	fldx.d	$fa0, $a0, $a5
	fldx.d	$fa1, $a1, $a5
	slli.d	$t0, $a3, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a3
	bge	$a5, $a2, .LBB1_30
	b	.LBB1_35
	.p2align	4, , 16
.LBB1_33:                               # %if.else246
                                        #   in Loop: Header=BB1_31 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_66
# %bb.34:                               # %if.end250
                                        #   in Loop: Header=BB1_31 Depth=1
	fld.d	$fa2, $a0, 0
	slli.d	$a5, $a2, 3
	fldx.d	$fa0, $a0, $a5
	fldx.d	$fa1, $a1, $a5
	fstx.d	$fa2, $a0, $a5
	fld.d	$fa2, $a1, 0
	fstx.d	$fa2, $a1, $a5
	slli.d	$t0, $a3, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a3
	bge	$a5, $a2, .LBB1_30
.LBB1_35:                               # %while.body266.preheader
                                        #   in Loop: Header=BB1_31 Depth=1
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_36:                               # %while.body266
                                        #   Parent Loop BB1_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t0, 2
	bge	$t0, $a2, .LBB1_39
# %bb.37:                               # %land.lhs.true269
                                        #   in Loop: Header=BB1_36 Depth=2
	slli.d	$a7, $t0, 3
	fldx.d	$fa2, $a0, $a7
	slli.d	$a7, $a5, 3
	fldx.d	$fa3, $a0, $a7
	fcmp.cule.d	$fcc0, $fa2, $fa3
	move	$a7, $a5
	bcnez	$fcc0, .LBB1_40
# %bb.38:                               # %if.then276
                                        #   in Loop: Header=BB1_36 Depth=2
	move	$a5, $t0
	move	$a7, $t0
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_39:                               # %while.body266.if.end278_crit_edge
                                        #   in Loop: Header=BB1_36 Depth=2
	move	$a7, $a5
.LBB1_40:                               # %if.end278
                                        #   in Loop: Header=BB1_36 Depth=2
	slli.d	$a5, $a5, 3
	fldx.d	$fa2, $a0, $a5
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_29
# %bb.41:                               # %if.then282
                                        #   in Loop: Header=BB1_36 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 3
	fstx.d	$fa2, $a0, $a6
	fldx.d	$fa2, $a1, $a5
	slli.d	$t0, $a7, 1
	addi.w	$a5, $t0, 1
	fstx.d	$fa2, $a1, $a6
	move	$a6, $a7
	blt	$a5, $a2, .LBB1_36
	b	.LBB1_30
.LBB1_42:                               # %for.cond112.preheader
	ori	$a4, $zero, 1
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_43:                               #   in Loop: Header=BB1_45 Depth=1
	move	$t0, $a7
.LBB1_44:                               # %while.end169
                                        #   in Loop: Header=BB1_45 Depth=1
	addi.w	$a7, $t0, 0
	slli.d	$a7, $a7, 3
	stx.d	$a5, $a0, $a7
	stx.d	$a6, $a1, $a7
.LBB1_45:                               # %for.cond112
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_50 Depth 2
	addi.w	$a5, $a3, 0
	blt	$a5, $a4, .LBB1_47
# %bb.46:                               # %if.then114
                                        #   in Loop: Header=BB1_45 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a6, $a3, 3
	ldx.d	$a5, $a0, $a6
	ldx.d	$a6, $a1, $a6
	slli.d	$t2, $a3, 1
	addi.w	$t1, $t2, 1
	move	$t0, $a3
	bge	$t1, $a2, .LBB1_44
	b	.LBB1_49
	.p2align	4, , 16
.LBB1_47:                               # %if.else120
                                        #   in Loop: Header=BB1_45 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_66
# %bb.48:                               # %if.end124
                                        #   in Loop: Header=BB1_45 Depth=1
	ld.d	$a7, $a0, 0
	slli.d	$t0, $a2, 3
	ldx.d	$a5, $a0, $t0
	ldx.d	$a6, $a1, $t0
	stx.d	$a7, $a0, $t0
	ld.d	$a7, $a1, 0
	stx.d	$a7, $a1, $t0
	slli.d	$t2, $a3, 1
	addi.w	$t1, $t2, 1
	move	$t0, $a3
	bge	$t1, $a2, .LBB1_44
.LBB1_49:                               # %while.body140.preheader
                                        #   in Loop: Header=BB1_45 Depth=1
	move	$a7, $a3
	.p2align	4, , 16
.LBB1_50:                               # %while.body140
                                        #   Parent Loop BB1_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t2, 2
	bge	$t0, $a2, .LBB1_52
# %bb.51:                               # %land.lhs.true143
                                        #   in Loop: Header=BB1_50 Depth=2
	slli.d	$t2, $t0, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t1, 3
	ldx.d	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t1, $t1, $t2
	maskeqz	$t0, $t0, $t2
	or	$t0, $t0, $t1
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $a0, $t1
	blt	$a5, $t2, .LBB1_53
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_52:                               #   in Loop: Header=BB1_50 Depth=2
	move	$t0, $t1
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $a0, $t1
	bge	$a5, $t2, .LBB1_43
.LBB1_53:                               # %if.then156
                                        #   in Loop: Header=BB1_50 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 3
	stx.d	$t2, $a0, $a7
	ldx.d	$t3, $a1, $t1
	slli.d	$t2, $t0, 1
	addi.w	$t1, $t2, 1
	stx.d	$t3, $a1, $a7
	move	$a7, $t0
	blt	$t1, $a2, .LBB1_50
	b	.LBB1_44
.LBB1_54:                               # %for.cond49.preheader
	ori	$a4, $zero, 1
	b	.LBB1_57
	.p2align	4, , 16
.LBB1_55:                               #   in Loop: Header=BB1_57 Depth=1
	move	$t0, $a7
.LBB1_56:                               # %while.end106
                                        #   in Loop: Header=BB1_57 Depth=1
	addi.w	$a7, $t0, 0
	slli.d	$a7, $a7, 3
	stx.d	$a5, $a0, $a7
	stx.d	$a6, $a1, $a7
.LBB1_57:                               # %for.cond49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_62 Depth 2
	addi.w	$a5, $a3, 0
	blt	$a5, $a4, .LBB1_59
# %bb.58:                               # %if.then51
                                        #   in Loop: Header=BB1_57 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a6, $a3, 3
	ldx.d	$a5, $a0, $a6
	ldx.d	$a6, $a1, $a6
	slli.d	$t2, $a3, 1
	addi.w	$t1, $t2, 1
	move	$t0, $a3
	bge	$t1, $a2, .LBB1_56
	b	.LBB1_61
	.p2align	4, , 16
.LBB1_59:                               # %if.else57
                                        #   in Loop: Header=BB1_57 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_66
# %bb.60:                               # %if.end61
                                        #   in Loop: Header=BB1_57 Depth=1
	ld.d	$a7, $a0, 0
	slli.d	$t0, $a2, 3
	ldx.d	$a5, $a0, $t0
	ldx.d	$a6, $a1, $t0
	stx.d	$a7, $a0, $t0
	ld.d	$a7, $a1, 0
	stx.d	$a7, $a1, $t0
	slli.d	$t2, $a3, 1
	addi.w	$t1, $t2, 1
	move	$t0, $a3
	bge	$t1, $a2, .LBB1_56
.LBB1_61:                               # %while.body77.preheader
                                        #   in Loop: Header=BB1_57 Depth=1
	move	$a7, $a3
	.p2align	4, , 16
.LBB1_62:                               # %while.body77
                                        #   Parent Loop BB1_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t2, 2
	bge	$t0, $a2, .LBB1_64
# %bb.63:                               # %land.lhs.true80
                                        #   in Loop: Header=BB1_62 Depth=2
	slli.d	$t2, $t0, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t1, 3
	ldx.d	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t1, $t1, $t2
	maskeqz	$t0, $t0, $t2
	or	$t0, $t0, $t1
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $a0, $t1
	blt	$a5, $t2, .LBB1_65
	b	.LBB1_55
	.p2align	4, , 16
.LBB1_64:                               #   in Loop: Header=BB1_62 Depth=2
	move	$t0, $t1
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $a0, $t1
	bge	$a5, $t2, .LBB1_55
.LBB1_65:                               # %if.then93
                                        #   in Loop: Header=BB1_62 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 3
	stx.d	$t2, $a0, $a7
	ldx.d	$t3, $a1, $t1
	slli.d	$t2, $t0, 1
	addi.w	$t1, $t2, 1
	stx.d	$t3, $a1, $a7
	move	$a7, $t0
	blt	$t1, $a2, .LBB1_62
	b	.LBB1_56
.LBB1_66:                               # %cleanup
	ret
.LBB1_67:                               # %sw.default
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	S7_Sort_2Arrays, .Lfunc_end1-S7_Sort_2Arrays
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_54-.LJTI1_0
	.word	.LBB1_42-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_28-.LJTI1_0
	.word	.LBB1_67-.LJTI1_0
	.word	.LBB1_67-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_42-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_28-.LJTI1_0
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function S7_Index_Sort
.LCPI2_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	S7_Index_Sort
	.p2align	5
	.type	S7_Index_Sort,@function
S7_Index_Sort:                          # @S7_Index_Sort
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a4, $zero, 1
	blt	$a1, $a4, .LBB2_14
# %bb.1:                                # %iter.check
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB2_3
# %bb.2:
	move	$a4, $zero
	b	.LBB2_12
.LBB2_3:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a1, $a4, .LBB2_5
# %bb.4:
	move	$a4, $zero
	b	.LBB2_9
.LBB2_5:                                # %vector.ph
	pcalau12i	$a4, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a4, %pc_lo12(.LCPI2_0)
	bstrpick.d	$a4, $a1, 30, 4
	slli.d	$a4, $a4, 4
	addi.d	$a5, $a3, 32
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.wu	$xr1, $xr0, 8
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB2_6
# %bb.7:                                # %middle.block
	beq	$a4, $a1, .LBB2_14
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a5, $a1, 12
	beqz	$a5, .LBB2_12
.LBB2_9:                                # %vec.epilog.ph
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_1)
	bstrpick.d	$a4, $a1, 30, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a3, 2
	.p2align	4, , 16
.LBB2_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB2_10
# %bb.11:                               # %vec.epilog.middle.block
	beq	$a4, $a1, .LBB2_14
.LBB2_12:                               # %for.body.preheader
	alsl.d	$a5, $a4, $a3, 2
	sub.d	$a6, $a1, $a4
	.p2align	4, , 16
.LBB2_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a5, 0
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bnez	$a6, .LBB2_13
.LBB2_14:                               # %for.end
	addi.d	$a2, $a2, -4
	ori	$a4, $zero, 10
	bltu	$a4, $a2, .LBB2_84
# %bb.15:                               # %for.end
	slli.d	$a2, $a2, 2
	pcalau12i	$a4, %pc_hi20(.LJTI2_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI2_0)
	ldx.w	$a2, $a4, $a2
	bstrpick.d	$a5, $a1, 31, 31
	add.w	$a5, $a1, $a5
	add.d	$a4, $a4, $a2
	srai.d	$a2, $a5, 1
	jr	$a4
.LBB2_16:                               # %for.cond1.preheader
	ori	$a4, $zero, 1
	b	.LBB2_19
	.p2align	4, , 16
.LBB2_17:                               #   in Loop: Header=BB2_19 Depth=1
	move	$t1, $a7
.LBB2_18:                               # %while.end
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a3, $a6
.LBB2_19:                               # %for.cond1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_24 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB2_21
# %bb.20:                               # %if.then
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB2_18
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_21:                               # %if.else
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_83
# %bb.22:                               # %if.end
                                        #   in Loop: Header=BB2_19 Depth=1
	slli.d	$a7, $a1, 2
	ldx.w	$a5, $a3, $a7
	slli.d	$a6, $a5, 2
	ld.w	$t0, $a3, 0
	ldx.w	$a6, $a0, $a6
	stx.w	$t0, $a3, $a7
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB2_18
.LBB2_23:                               # %while.body.preheader
                                        #   in Loop: Header=BB2_19 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB2_24:                               # %while.body
                                        #   Parent Loop BB2_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t2, 2
	bge	$t1, $a1, .LBB2_26
# %bb.25:                               # %land.lhs.true
                                        #   in Loop: Header=BB2_24 Depth=2
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t3, $t0, 2
	ldx.w	$t3, $a3, $t3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a0, $t2
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t0
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_24 Depth=2
	move	$t1, $t0
.LBB2_27:                               # %if.end33
                                        #   in Loop: Header=BB2_24 Depth=2
	slli.d	$t0, $t1, 2
	ldx.w	$t3, $a3, $t0
	slli.d	$t0, $t3, 2
	ldx.w	$t0, $a0, $t0
	bge	$a6, $t0, .LBB2_17
# %bb.28:                               # %if.then39
                                        #   in Loop: Header=BB2_24 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 2
	slli.d	$t2, $t1, 1
	addi.w	$t0, $t2, 1
	stx.w	$t3, $a3, $a7
	move	$a7, $t1
	blt	$t0, $a1, .LBB2_24
	b	.LBB2_18
.LBB2_29:                               # %for.cond171.preheader
	ori	$a4, $zero, 1
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_30:                               #   in Loop: Header=BB2_32 Depth=1
	move	$t0, $a7
.LBB2_31:                               # %while.end227
                                        #   in Loop: Header=BB2_32 Depth=1
	addi.w	$a6, $t0, 0
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a3, $a6
.LBB2_32:                               # %for.cond171
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_37 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB2_34
# %bb.33:                               # %if.then173
                                        #   in Loop: Header=BB2_32 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a6, $a5, 2
	fldx.s	$fa0, $a0, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB2_31
	b	.LBB2_36
	.p2align	4, , 16
.LBB2_34:                               # %if.else179
                                        #   in Loop: Header=BB2_32 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_83
# %bb.35:                               # %if.end183
                                        #   in Loop: Header=BB2_32 Depth=1
	slli.d	$a6, $a1, 2
	ldx.w	$a5, $a3, $a6
	slli.d	$a7, $a5, 2
	ld.w	$t0, $a3, 0
	fldx.s	$fa0, $a0, $a7
	stx.w	$t0, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB2_31
.LBB2_36:                               # %while.body196.preheader
                                        #   in Loop: Header=BB2_32 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB2_37:                               # %while.body196
                                        #   Parent Loop BB2_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t1, 2
	bge	$t1, $a1, .LBB2_40
# %bb.38:                               # %land.lhs.true199
                                        #   in Loop: Header=BB2_37 Depth=2
	slli.d	$t0, $t1, 2
	ldx.w	$t0, $a3, $t0
	slli.d	$t2, $a6, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t0, $t0, 2
	fldx.s	$fa1, $a0, $t0
	slli.d	$t0, $t2, 2
	fldx.s	$fa2, $a0, $t0
	fcmp.cule.s	$fcc0, $fa1, $fa2
	move	$t0, $a6
	bcnez	$fcc0, .LBB2_41
# %bb.39:                               # %if.then210
                                        #   in Loop: Header=BB2_37 Depth=2
	move	$a6, $t1
	move	$t0, $t1
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_40:                               # %while.body196.if.end212_crit_edge
                                        #   in Loop: Header=BB2_37 Depth=2
	move	$t0, $a6
.LBB2_41:                               # %if.end212
                                        #   in Loop: Header=BB2_37 Depth=2
	slli.d	$a6, $a6, 2
	ldx.w	$t2, $a3, $a6
	slli.d	$a6, $t2, 2
	fldx.s	$fa1, $a0, $a6
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_30
# %bb.42:                               # %if.then218
                                        #   in Loop: Header=BB2_37 Depth=2
	addi.w	$a6, $a7, 0
	slli.d	$a7, $a6, 2
	slli.d	$t1, $t0, 1
	addi.w	$a6, $t1, 1
	stx.w	$t2, $a3, $a7
	move	$a7, $t0
	blt	$a6, $a1, .LBB2_37
	b	.LBB2_31
.LBB2_43:                               # %for.cond231.preheader
	ori	$a4, $zero, 1
	b	.LBB2_46
	.p2align	4, , 16
.LBB2_44:                               #   in Loop: Header=BB2_46 Depth=1
	move	$t0, $a7
.LBB2_45:                               # %while.end287
                                        #   in Loop: Header=BB2_46 Depth=1
	addi.w	$a6, $t0, 0
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a3, $a6
.LBB2_46:                               # %for.cond231
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_51 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB2_48
# %bb.47:                               # %if.then233
                                        #   in Loop: Header=BB2_46 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a6, $a5, 3
	fldx.d	$fa0, $a0, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB2_45
	b	.LBB2_50
	.p2align	4, , 16
.LBB2_48:                               # %if.else239
                                        #   in Loop: Header=BB2_46 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_83
# %bb.49:                               # %if.end243
                                        #   in Loop: Header=BB2_46 Depth=1
	slli.d	$a6, $a1, 2
	ldx.w	$a5, $a3, $a6
	slli.d	$a7, $a5, 3
	ld.w	$t0, $a3, 0
	fldx.d	$fa0, $a0, $a7
	stx.w	$t0, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB2_45
.LBB2_50:                               # %while.body256.preheader
                                        #   in Loop: Header=BB2_46 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB2_51:                               # %while.body256
                                        #   Parent Loop BB2_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t1, 2
	bge	$t1, $a1, .LBB2_54
# %bb.52:                               # %land.lhs.true259
                                        #   in Loop: Header=BB2_51 Depth=2
	slli.d	$t0, $t1, 2
	ldx.w	$t0, $a3, $t0
	slli.d	$t2, $a6, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t0, $t0, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$t0, $t2, 3
	fldx.d	$fa2, $a0, $t0
	fcmp.cule.d	$fcc0, $fa1, $fa2
	move	$t0, $a6
	bcnez	$fcc0, .LBB2_55
# %bb.53:                               # %if.then270
                                        #   in Loop: Header=BB2_51 Depth=2
	move	$a6, $t1
	move	$t0, $t1
	b	.LBB2_55
	.p2align	4, , 16
.LBB2_54:                               # %while.body256.if.end272_crit_edge
                                        #   in Loop: Header=BB2_51 Depth=2
	move	$t0, $a6
.LBB2_55:                               # %if.end272
                                        #   in Loop: Header=BB2_51 Depth=2
	slli.d	$a6, $a6, 2
	ldx.w	$t2, $a3, $a6
	slli.d	$a6, $t2, 3
	fldx.d	$fa1, $a0, $a6
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_44
# %bb.56:                               # %if.then278
                                        #   in Loop: Header=BB2_51 Depth=2
	addi.w	$a6, $a7, 0
	slli.d	$a7, $a6, 2
	slli.d	$t1, $t0, 1
	addi.w	$a6, $t1, 1
	stx.w	$t2, $a3, $a7
	move	$a7, $t0
	blt	$a6, $a1, .LBB2_51
	b	.LBB2_45
.LBB2_57:                               # %for.cond111.preheader
	ori	$a4, $zero, 1
	b	.LBB2_60
	.p2align	4, , 16
.LBB2_58:                               #   in Loop: Header=BB2_60 Depth=1
	move	$t1, $a7
.LBB2_59:                               # %while.end167
                                        #   in Loop: Header=BB2_60 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a3, $a6
.LBB2_60:                               # %for.cond111
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_65 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB2_62
# %bb.61:                               # %if.then113
                                        #   in Loop: Header=BB2_60 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB2_59
	b	.LBB2_64
	.p2align	4, , 16
.LBB2_62:                               # %if.else119
                                        #   in Loop: Header=BB2_60 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_83
# %bb.63:                               # %if.end123
                                        #   in Loop: Header=BB2_60 Depth=1
	slli.d	$a7, $a1, 2
	ldx.w	$a5, $a3, $a7
	slli.d	$a6, $a5, 3
	ld.w	$t0, $a3, 0
	ldx.d	$a6, $a0, $a6
	stx.w	$t0, $a3, $a7
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB2_59
.LBB2_64:                               # %while.body136.preheader
                                        #   in Loop: Header=BB2_60 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB2_65:                               # %while.body136
                                        #   Parent Loop BB2_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t2, 2
	bge	$t1, $a1, .LBB2_67
# %bb.66:                               # %land.lhs.true139
                                        #   in Loop: Header=BB2_65 Depth=2
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t3, $t0, 2
	ldx.w	$t3, $a3, $t3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t0
	b	.LBB2_68
	.p2align	4, , 16
.LBB2_67:                               #   in Loop: Header=BB2_65 Depth=2
	move	$t1, $t0
.LBB2_68:                               # %if.end152
                                        #   in Loop: Header=BB2_65 Depth=2
	slli.d	$t0, $t1, 2
	ldx.w	$t3, $a3, $t0
	slli.d	$t0, $t3, 3
	ldx.d	$t0, $a0, $t0
	bge	$a6, $t0, .LBB2_58
# %bb.69:                               # %if.then158
                                        #   in Loop: Header=BB2_65 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 2
	slli.d	$t2, $t1, 1
	addi.w	$t0, $t2, 1
	stx.w	$t3, $a3, $a7
	move	$a7, $t1
	blt	$t0, $a1, .LBB2_65
	b	.LBB2_59
.LBB2_70:                               # %for.cond51.preheader
	ori	$a4, $zero, 1
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_71:                               #   in Loop: Header=BB2_73 Depth=1
	move	$t1, $a7
.LBB2_72:                               # %while.end107
                                        #   in Loop: Header=BB2_73 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a3, $a6
.LBB2_73:                               # %for.cond51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_78 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB2_75
# %bb.74:                               # %if.then53
                                        #   in Loop: Header=BB2_73 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB2_72
	b	.LBB2_77
	.p2align	4, , 16
.LBB2_75:                               # %if.else59
                                        #   in Loop: Header=BB2_73 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_83
# %bb.76:                               # %if.end63
                                        #   in Loop: Header=BB2_73 Depth=1
	slli.d	$a7, $a1, 2
	ldx.w	$a5, $a3, $a7
	slli.d	$a6, $a5, 3
	ld.w	$t0, $a3, 0
	ldx.d	$a6, $a0, $a6
	stx.w	$t0, $a3, $a7
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB2_72
.LBB2_77:                               # %while.body76.preheader
                                        #   in Loop: Header=BB2_73 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB2_78:                               # %while.body76
                                        #   Parent Loop BB2_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t2, 2
	bge	$t1, $a1, .LBB2_80
# %bb.79:                               # %land.lhs.true79
                                        #   in Loop: Header=BB2_78 Depth=2
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t3, $t0, 2
	ldx.w	$t3, $a3, $t3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t0
	b	.LBB2_81
	.p2align	4, , 16
.LBB2_80:                               #   in Loop: Header=BB2_78 Depth=2
	move	$t1, $t0
.LBB2_81:                               # %if.end92
                                        #   in Loop: Header=BB2_78 Depth=2
	slli.d	$t0, $t1, 2
	ldx.w	$t3, $a3, $t0
	slli.d	$t0, $t3, 3
	ldx.d	$t0, $a0, $t0
	bge	$a6, $t0, .LBB2_71
# %bb.82:                               # %if.then98
                                        #   in Loop: Header=BB2_78 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 2
	slli.d	$t2, $t1, 1
	addi.w	$t0, $t2, 1
	stx.w	$t3, $a3, $a7
	move	$a7, $t1
	blt	$t0, $a1, .LBB2_78
	b	.LBB2_72
.LBB2_83:                               # %cleanup
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_84:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	S7_Index_Sort, .Lfunc_end2-S7_Index_Sort
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_70-.LJTI2_0
	.word	.LBB2_57-.LJTI2_0
	.word	.LBB2_29-.LJTI2_0
	.word	.LBB2_43-.LJTI2_0
	.word	.LBB2_84-.LJTI2_0
	.word	.LBB2_84-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_57-.LJTI2_0
	.word	.LBB2_29-.LJTI2_0
	.word	.LBB2_43-.LJTI2_0
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function S7_Indexi8_Sort
.LCPI3_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	S7_Indexi8_Sort
	.p2align	5
	.type	S7_Indexi8_Sort,@function
S7_Indexi8_Sort:                        # @S7_Indexi8_Sort
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a4, $zero, 1
	blt	$a1, $a4, .LBB3_8
# %bb.1:                                # %for.body.preheader
	ori	$a4, $zero, 8
	bgeu	$a1, $a4, .LBB3_3
# %bb.2:
	move	$a4, $zero
	b	.LBB3_6
.LBB3_3:                                # %vector.ph
	pcalau12i	$a4, %pc_hi20(.LCPI3_0)
	xvld	$xr0, $a4, %pc_lo12(.LCPI3_0)
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a3, 32
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr1, $xr0, 4
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_4
# %bb.5:                                # %middle.block
	beq	$a4, $a1, .LBB3_8
.LBB3_6:                                # %for.body.preheader260
	alsl.d	$a5, $a4, $a3, 3
	.p2align	4, , 16
.LBB3_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a4, $a5, 0
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 8
	bne	$a1, $a4, .LBB3_7
.LBB3_8:                                # %for.end
	addi.d	$a2, $a2, -4
	ori	$a4, $zero, 10
	bltu	$a4, $a2, .LBB3_78
# %bb.9:                                # %for.end
	slli.d	$a2, $a2, 2
	pcalau12i	$a4, %pc_hi20(.LJTI3_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI3_0)
	ldx.w	$a2, $a4, $a2
	bstrpick.d	$a5, $a1, 31, 31
	add.w	$a5, $a1, $a5
	add.d	$a4, $a4, $a2
	srai.d	$a2, $a5, 1
	jr	$a4
.LBB3_10:                               # %for.cond1.preheader
	ori	$a4, $zero, 1
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_11:                               #   in Loop: Header=BB3_13 Depth=1
	move	$t1, $a7
.LBB3_12:                               # %while.end
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a3, $a6
.LBB3_13:                               # %for.cond1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB3_15
# %bb.14:                               # %if.then
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB3_12
	b	.LBB3_17
	.p2align	4, , 16
.LBB3_15:                               # %if.else
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_77
# %bb.16:                               # %if.end
                                        #   in Loop: Header=BB3_13 Depth=1
	slli.d	$a7, $a1, 3
	ldx.d	$a5, $a3, $a7
	slli.d	$a6, $a5, 2
	ld.d	$t0, $a3, 0
	ldx.w	$a6, $a0, $a6
	stx.d	$t0, $a3, $a7
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB3_12
.LBB3_17:                               # %while.body.preheader
                                        #   in Loop: Header=BB3_13 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_18:                               # %while.body
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t2, 2
	bge	$t1, $a1, .LBB3_20
# %bb.19:                               # %land.lhs.true
                                        #   in Loop: Header=BB3_18 Depth=2
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t3, $t0, 3
	ldx.d	$t3, $a3, $t3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a0, $t2
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t0
	b	.LBB3_21
	.p2align	4, , 16
.LBB3_20:                               #   in Loop: Header=BB3_18 Depth=2
	move	$t1, $t0
.LBB3_21:                               # %if.end34
                                        #   in Loop: Header=BB3_18 Depth=2
	slli.d	$t0, $t1, 3
	ldx.d	$t3, $a3, $t0
	slli.d	$t0, $t3, 2
	ldx.w	$t0, $a0, $t0
	bge	$a6, $t0, .LBB3_11
# %bb.22:                               # %if.then40
                                        #   in Loop: Header=BB3_18 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 3
	slli.d	$t2, $t1, 1
	addi.w	$t0, $t2, 1
	stx.d	$t3, $a3, $a7
	move	$a7, $t1
	blt	$t0, $a1, .LBB3_18
	b	.LBB3_12
.LBB3_23:                               # %for.cond174.preheader
	ori	$a4, $zero, 1
	b	.LBB3_26
	.p2align	4, , 16
.LBB3_24:                               #   in Loop: Header=BB3_26 Depth=1
	move	$t0, $a7
.LBB3_25:                               # %while.end231
                                        #   in Loop: Header=BB3_26 Depth=1
	addi.w	$a6, $t0, 0
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a3, $a6
.LBB3_26:                               # %for.cond174
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_31 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB3_28
# %bb.27:                               # %if.then177
                                        #   in Loop: Header=BB3_26 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	slli.d	$a6, $a5, 2
	fldx.s	$fa0, $a0, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB3_25
	b	.LBB3_30
	.p2align	4, , 16
.LBB3_28:                               # %if.else182
                                        #   in Loop: Header=BB3_26 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_77
# %bb.29:                               # %if.end187
                                        #   in Loop: Header=BB3_26 Depth=1
	slli.d	$a6, $a1, 3
	ldx.d	$a5, $a3, $a6
	slli.d	$a7, $a5, 2
	ld.d	$t0, $a3, 0
	fldx.s	$fa0, $a0, $a7
	stx.d	$t0, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB3_25
.LBB3_30:                               # %while.body200.preheader
                                        #   in Loop: Header=BB3_26 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_31:                               # %while.body200
                                        #   Parent Loop BB3_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t1, 2
	bge	$t1, $a1, .LBB3_34
# %bb.32:                               # %land.lhs.true204
                                        #   in Loop: Header=BB3_31 Depth=2
	slli.d	$t0, $t1, 3
	ldx.d	$t0, $a3, $t0
	slli.d	$t2, $a6, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t0, $t0, 2
	fldx.s	$fa1, $a0, $t0
	slli.d	$t0, $t2, 2
	fldx.s	$fa2, $a0, $t0
	fcmp.cule.s	$fcc0, $fa1, $fa2
	move	$t0, $a6
	bcnez	$fcc0, .LBB3_35
# %bb.33:                               # %if.then214
                                        #   in Loop: Header=BB3_31 Depth=2
	move	$a6, $t1
	move	$t0, $t1
	b	.LBB3_35
	.p2align	4, , 16
.LBB3_34:                               # %while.body200.if.end216_crit_edge
                                        #   in Loop: Header=BB3_31 Depth=2
	move	$t0, $a6
.LBB3_35:                               # %if.end216
                                        #   in Loop: Header=BB3_31 Depth=2
	slli.d	$a6, $a6, 3
	ldx.d	$t2, $a3, $a6
	slli.d	$a6, $t2, 2
	fldx.s	$fa1, $a0, $a6
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_24
# %bb.36:                               # %if.then222
                                        #   in Loop: Header=BB3_31 Depth=2
	addi.w	$a6, $a7, 0
	slli.d	$a7, $a6, 3
	slli.d	$t1, $t0, 1
	addi.w	$a6, $t1, 1
	stx.d	$t2, $a3, $a7
	move	$a7, $t0
	blt	$a6, $a1, .LBB3_31
	b	.LBB3_25
.LBB3_37:                               # %for.cond235.preheader
	ori	$a4, $zero, 1
	b	.LBB3_40
	.p2align	4, , 16
.LBB3_38:                               #   in Loop: Header=BB3_40 Depth=1
	move	$t0, $a7
.LBB3_39:                               # %while.end292
                                        #   in Loop: Header=BB3_40 Depth=1
	addi.w	$a6, $t0, 0
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a3, $a6
.LBB3_40:                               # %for.cond235
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_45 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB3_42
# %bb.41:                               # %if.then238
                                        #   in Loop: Header=BB3_40 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	slli.d	$a6, $a5, 3
	fldx.d	$fa0, $a0, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB3_39
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_42:                               # %if.else243
                                        #   in Loop: Header=BB3_40 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_77
# %bb.43:                               # %if.end248
                                        #   in Loop: Header=BB3_40 Depth=1
	slli.d	$a6, $a1, 3
	ldx.d	$a5, $a3, $a6
	slli.d	$a7, $a5, 3
	ld.d	$t0, $a3, 0
	fldx.d	$fa0, $a0, $a7
	stx.d	$t0, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB3_39
.LBB3_44:                               # %while.body261.preheader
                                        #   in Loop: Header=BB3_40 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_45:                               # %while.body261
                                        #   Parent Loop BB3_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t1, 2
	bge	$t1, $a1, .LBB3_48
# %bb.46:                               # %land.lhs.true265
                                        #   in Loop: Header=BB3_45 Depth=2
	slli.d	$t0, $t1, 3
	ldx.d	$t0, $a3, $t0
	slli.d	$t2, $a6, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t0, $t0, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$t0, $t2, 3
	fldx.d	$fa2, $a0, $t0
	fcmp.cule.d	$fcc0, $fa1, $fa2
	move	$t0, $a6
	bcnez	$fcc0, .LBB3_49
# %bb.47:                               # %if.then275
                                        #   in Loop: Header=BB3_45 Depth=2
	move	$a6, $t1
	move	$t0, $t1
	b	.LBB3_49
	.p2align	4, , 16
.LBB3_48:                               # %while.body261.if.end277_crit_edge
                                        #   in Loop: Header=BB3_45 Depth=2
	move	$t0, $a6
.LBB3_49:                               # %if.end277
                                        #   in Loop: Header=BB3_45 Depth=2
	slli.d	$a6, $a6, 3
	ldx.d	$t2, $a3, $a6
	slli.d	$a6, $t2, 3
	fldx.d	$fa1, $a0, $a6
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_38
# %bb.50:                               # %if.then283
                                        #   in Loop: Header=BB3_45 Depth=2
	addi.w	$a6, $a7, 0
	slli.d	$a7, $a6, 3
	slli.d	$t1, $t0, 1
	addi.w	$a6, $t1, 1
	stx.d	$t2, $a3, $a7
	move	$a7, $t0
	blt	$a6, $a1, .LBB3_45
	b	.LBB3_39
.LBB3_51:                               # %for.cond113.preheader
	ori	$a4, $zero, 1
	b	.LBB3_54
	.p2align	4, , 16
.LBB3_52:                               #   in Loop: Header=BB3_54 Depth=1
	move	$t1, $a7
.LBB3_53:                               # %while.end170
                                        #   in Loop: Header=BB3_54 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a3, $a6
.LBB3_54:                               # %for.cond113
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_59 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB3_56
# %bb.55:                               # %if.then116
                                        #   in Loop: Header=BB3_54 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB3_53
	b	.LBB3_58
	.p2align	4, , 16
.LBB3_56:                               # %if.else121
                                        #   in Loop: Header=BB3_54 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_77
# %bb.57:                               # %if.end126
                                        #   in Loop: Header=BB3_54 Depth=1
	slli.d	$a7, $a1, 3
	ldx.d	$a5, $a3, $a7
	slli.d	$a6, $a5, 3
	ld.d	$t0, $a3, 0
	ldx.d	$a6, $a0, $a6
	stx.d	$t0, $a3, $a7
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB3_53
.LBB3_58:                               # %while.body139.preheader
                                        #   in Loop: Header=BB3_54 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_59:                               # %while.body139
                                        #   Parent Loop BB3_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t2, 2
	bge	$t1, $a1, .LBB3_61
# %bb.60:                               # %land.lhs.true143
                                        #   in Loop: Header=BB3_59 Depth=2
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t3, $t0, 3
	ldx.d	$t3, $a3, $t3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t0
	b	.LBB3_62
	.p2align	4, , 16
.LBB3_61:                               #   in Loop: Header=BB3_59 Depth=2
	move	$t1, $t0
.LBB3_62:                               # %if.end155
                                        #   in Loop: Header=BB3_59 Depth=2
	slli.d	$t0, $t1, 3
	ldx.d	$t3, $a3, $t0
	slli.d	$t0, $t3, 3
	ldx.d	$t0, $a0, $t0
	bge	$a6, $t0, .LBB3_52
# %bb.63:                               # %if.then161
                                        #   in Loop: Header=BB3_59 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 3
	slli.d	$t2, $t1, 1
	addi.w	$t0, $t2, 1
	stx.d	$t3, $a3, $a7
	move	$a7, $t1
	blt	$t0, $a1, .LBB3_59
	b	.LBB3_53
.LBB3_64:                               # %for.cond52.preheader
	ori	$a4, $zero, 1
	b	.LBB3_67
	.p2align	4, , 16
.LBB3_65:                               #   in Loop: Header=BB3_67 Depth=1
	move	$t1, $a7
.LBB3_66:                               # %while.end109
                                        #   in Loop: Header=BB3_67 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a3, $a6
.LBB3_67:                               # %for.cond52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_72 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB3_69
# %bb.68:                               # %if.then55
                                        #   in Loop: Header=BB3_67 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB3_66
	b	.LBB3_71
	.p2align	4, , 16
.LBB3_69:                               # %if.else60
                                        #   in Loop: Header=BB3_67 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_77
# %bb.70:                               # %if.end65
                                        #   in Loop: Header=BB3_67 Depth=1
	slli.d	$a7, $a1, 3
	ldx.d	$a5, $a3, $a7
	slli.d	$a6, $a5, 3
	ld.d	$t0, $a3, 0
	ldx.d	$a6, $a0, $a6
	stx.d	$t0, $a3, $a7
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB3_66
.LBB3_71:                               # %while.body78.preheader
                                        #   in Loop: Header=BB3_67 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_72:                               # %while.body78
                                        #   Parent Loop BB3_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t2, 2
	bge	$t1, $a1, .LBB3_74
# %bb.73:                               # %land.lhs.true82
                                        #   in Loop: Header=BB3_72 Depth=2
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t3, $t0, 3
	ldx.d	$t3, $a3, $t3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t0
	b	.LBB3_75
	.p2align	4, , 16
.LBB3_74:                               #   in Loop: Header=BB3_72 Depth=2
	move	$t1, $t0
.LBB3_75:                               # %if.end94
                                        #   in Loop: Header=BB3_72 Depth=2
	slli.d	$t0, $t1, 3
	ldx.d	$t3, $a3, $t0
	slli.d	$t0, $t3, 3
	ldx.d	$t0, $a0, $t0
	bge	$a6, $t0, .LBB3_65
# %bb.76:                               # %if.then100
                                        #   in Loop: Header=BB3_72 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 3
	slli.d	$t2, $t1, 1
	addi.w	$t0, $t2, 1
	stx.d	$t3, $a3, $a7
	move	$a7, $t1
	blt	$t0, $a1, .LBB3_72
	b	.LBB3_66
.LBB3_77:                               # %cleanup
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB3_78:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	S7_Indexi8_Sort, .Lfunc_end3-S7_Indexi8_Sort
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_64-.LJTI3_0
	.word	.LBB3_51-.LJTI3_0
	.word	.LBB3_23-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_78-.LJTI3_0
	.word	.LBB3_78-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_51-.LJTI3_0
	.word	.LBB3_23-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
                                        # -- End function
	.type	.Lstr.1,@object                 # @str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.1:
	.asciz	"Error -- S7_Datatype not supported in S7_Sort"
	.size	.Lstr.1, 46

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Error -- S7_Datatype not supported in S7_Index_Sort"
	.size	.Lstr.2, 52

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Error -- S7_Datatype not supported in S7_Indexi8_Sort"
	.size	.Lstr.3, 54

	.section	".note.GNU-stack","",@progbits
	.addrsig
