	.file	"s7.c"
	.text
	.globl	S7_Sort                         # -- Begin function S7_Sort
	.p2align	5
	.type	S7_Sort,@function
S7_Sort:                                # @S7_Sort
# %bb.0:                                # %entry
	addi.d	$a3, $a2, -4
	ori	$a2, $zero, 10
	bltu	$a2, $a3, .LBB0_2
# %bb.1:                                # %entry
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a2, $a1, $a2
	srai.d	$a2, $a2, 1
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI0_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI0_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB0_2:                                # %sw.default
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	move	$a5, $a4
.LBB0_4:                                # %while.end184
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a3, $a5, 0
	slli.d	$a3, $a3, 2
	fstx.s	$fa0, $a0, $a3
.LBB0_5:                                # %for.cond138
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	addi.w	$a3, $a2, 0
	blez	$a3, .LBB0_7
# %bb.6:                                # %if.then140
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a3, $a2, 2
	fldx.s	$fa0, $a0, $a3
	slli.d	$a6, $a2, 1
	addi.w	$a3, $a6, 1
	move	$a5, $a2
	bge	$a3, $a1, .LBB0_4
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_7:                                # %if.else144
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_62
# %bb.8:                                # %if.end148
                                        #   in Loop: Header=BB0_5 Depth=1
	slli.d	$a3, $a1, 2
	fld.s	$fa1, $a0, 0
	fldx.s	$fa0, $a0, $a3
	fstx.s	$fa1, $a0, $a3
	slli.d	$a6, $a2, 1
	addi.w	$a3, $a6, 1
	move	$a5, $a2
	bge	$a3, $a1, .LBB0_4
.LBB0_9:                                # %while.body159.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_10:                               # %while.body159
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a6, 2
	bge	$a6, $a1, .LBB0_13
# %bb.11:                               # %land.lhs.true162
                                        #   in Loop: Header=BB0_10 Depth=2
	slli.d	$a5, $a6, 2
	fldx.s	$fa1, $a0, $a5
	slli.d	$a5, $a3, 2
	fldx.s	$fa2, $a0, $a5
	fcmp.cule.s	$fcc0, $fa1, $fa2
	move	$a5, $a3
	bcnez	$fcc0, .LBB0_14
# %bb.12:                               # %if.then169
                                        #   in Loop: Header=BB0_10 Depth=2
	move	$a3, $a6
	move	$a5, $a6
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %while.body159.if.end171_crit_edge
                                        #   in Loop: Header=BB0_10 Depth=2
	move	$a5, $a3
.LBB0_14:                               # %if.end171
                                        #   in Loop: Header=BB0_10 Depth=2
	slli.d	$a3, $a3, 2
	fldx.s	$fa1, $a0, $a3
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_3
# %bb.15:                               # %if.then175
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.w	$a3, $a4, 0
	slli.d	$a4, $a3, 2
	slli.d	$a6, $a5, 1
	addi.w	$a3, $a6, 1
	fstx.s	$fa1, $a0, $a4
	move	$a4, $a5
	blt	$a3, $a1, .LBB0_10
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=1
	move	$a5, $a4
.LBB0_17:                               # %while.end235
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.w	$a3, $a5, 0
	slli.d	$a3, $a3, 3
	fstx.d	$fa0, $a0, $a3
.LBB0_18:                               # %for.cond189
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
	addi.w	$a3, $a2, 0
	blez	$a3, .LBB0_20
# %bb.19:                               # %if.then191
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a3, $a2, 3
	fldx.d	$fa0, $a0, $a3
	slli.d	$a6, $a2, 1
	addi.w	$a3, $a6, 1
	move	$a5, $a2
	bge	$a3, $a1, .LBB0_17
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_20:                               # %if.else195
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_62
# %bb.21:                               # %if.end199
                                        #   in Loop: Header=BB0_18 Depth=1
	slli.d	$a3, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a3
	fstx.d	$fa1, $a0, $a3
	slli.d	$a6, $a2, 1
	addi.w	$a3, $a6, 1
	move	$a5, $a2
	bge	$a3, $a1, .LBB0_17
.LBB0_22:                               # %while.body210.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_23:                               # %while.body210
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a6, 2
	bge	$a6, $a1, .LBB0_26
# %bb.24:                               # %land.lhs.true213
                                        #   in Loop: Header=BB0_23 Depth=2
	slli.d	$a5, $a6, 3
	fldx.d	$fa1, $a0, $a5
	slli.d	$a5, $a3, 3
	fldx.d	$fa2, $a0, $a5
	fcmp.cule.d	$fcc0, $fa1, $fa2
	move	$a5, $a3
	bcnez	$fcc0, .LBB0_27
# %bb.25:                               # %if.then220
                                        #   in Loop: Header=BB0_23 Depth=2
	move	$a3, $a6
	move	$a5, $a6
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %while.body210.if.end222_crit_edge
                                        #   in Loop: Header=BB0_23 Depth=2
	move	$a5, $a3
.LBB0_27:                               # %if.end222
                                        #   in Loop: Header=BB0_23 Depth=2
	slli.d	$a3, $a3, 3
	fldx.d	$fa1, $a0, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_16
# %bb.28:                               # %if.then226
                                        #   in Loop: Header=BB0_23 Depth=2
	addi.w	$a3, $a4, 0
	slli.d	$a4, $a3, 3
	slli.d	$a6, $a5, 1
	addi.w	$a3, $a6, 1
	fstx.d	$fa1, $a0, $a4
	move	$a4, $a5
	blt	$a3, $a1, .LBB0_23
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_31 Depth=1
	move	$a6, $a4
.LBB0_30:                               # %while.end133
                                        #   in Loop: Header=BB0_31 Depth=1
	addi.w	$a4, $a6, 0
	slli.d	$a4, $a4, 3
	stx.d	$a3, $a0, $a4
.LBB0_31:                               # %for.cond87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
	addi.w	$a3, $a2, 0
	blez	$a3, .LBB0_33
# %bb.32:                               # %if.then89
                                        #   in Loop: Header=BB0_31 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	slli.d	$a7, $a2, 1
	addi.w	$a5, $a7, 1
	move	$a6, $a2
	bge	$a5, $a1, .LBB0_30
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_33:                               # %if.else93
                                        #   in Loop: Header=BB0_31 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_62
# %bb.34:                               # %if.end97
                                        #   in Loop: Header=BB0_31 Depth=1
	slli.d	$a4, $a1, 3
	ld.d	$a5, $a0, 0
	ldx.d	$a3, $a0, $a4
	stx.d	$a5, $a0, $a4
	slli.d	$a7, $a2, 1
	addi.w	$a5, $a7, 1
	move	$a6, $a2
	bge	$a5, $a1, .LBB0_30
.LBB0_35:                               # %while.body108.preheader
                                        #   in Loop: Header=BB0_31 Depth=1
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_36:                               # %while.body108
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a7, 2
	bge	$a6, $a1, .LBB0_38
# %bb.37:                               # %land.lhs.true111
                                        #   in Loop: Header=BB0_36 Depth=2
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a0, $a7
	slli.d	$t0, $a5, 3
	ldx.d	$t0, $a0, $t0
	slt	$a7, $t0, $a7
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $a5
	slli.d	$a5, $a6, 3
	ldx.d	$t0, $a0, $a5
	blt	$a3, $t0, .LBB0_39
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_38:                               #   in Loop: Header=BB0_36 Depth=2
	move	$a6, $a5
	slli.d	$a5, $a6, 3
	ldx.d	$t0, $a0, $a5
	bge	$a3, $t0, .LBB0_29
.LBB0_39:                               # %if.then124
                                        #   in Loop: Header=BB0_36 Depth=2
	addi.w	$a4, $a4, 0
	slli.d	$a4, $a4, 3
	slli.d	$a7, $a6, 1
	addi.w	$a5, $a7, 1
	stx.d	$t0, $a0, $a4
	move	$a4, $a6
	blt	$a5, $a1, .LBB0_36
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_40:                               #   in Loop: Header=BB0_42 Depth=1
	move	$a6, $a4
.LBB0_41:                               # %while.end
                                        #   in Loop: Header=BB0_42 Depth=1
	addi.w	$a4, $a6, 0
	slli.d	$a4, $a4, 2
	stx.w	$a3, $a0, $a4
.LBB0_42:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_47 Depth 2
	addi.w	$a3, $a2, 0
	blez	$a3, .LBB0_44
# %bb.43:                               # %if.then
                                        #   in Loop: Header=BB0_42 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a3, $a2, 2
	ldx.w	$a3, $a0, $a3
	slli.d	$a7, $a2, 1
	addi.w	$a5, $a7, 1
	move	$a6, $a2
	bge	$a5, $a1, .LBB0_41
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_44:                               # %if.else
                                        #   in Loop: Header=BB0_42 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_62
# %bb.45:                               # %if.end
                                        #   in Loop: Header=BB0_42 Depth=1
	slli.d	$a4, $a1, 2
	ld.w	$a5, $a0, 0
	ldx.w	$a3, $a0, $a4
	stx.w	$a5, $a0, $a4
	slli.d	$a7, $a2, 1
	addi.w	$a5, $a7, 1
	move	$a6, $a2
	bge	$a5, $a1, .LBB0_41
.LBB0_46:                               # %while.body.preheader
                                        #   in Loop: Header=BB0_42 Depth=1
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_47:                               # %while.body
                                        #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a7, 2
	bge	$a6, $a1, .LBB0_49
# %bb.48:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_47 Depth=2
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a0, $a7
	slli.d	$t0, $a5, 2
	ldx.w	$t0, $a0, $t0
	slt	$a7, $t0, $a7
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $a5
	slli.d	$a5, $a6, 2
	ldx.w	$t0, $a0, $a5
	blt	$a3, $t0, .LBB0_50
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=2
	move	$a6, $a5
	slli.d	$a5, $a6, 2
	ldx.w	$t0, $a0, $a5
	bge	$a3, $t0, .LBB0_40
.LBB0_50:                               # %if.then24
                                        #   in Loop: Header=BB0_47 Depth=2
	addi.w	$a4, $a4, 0
	slli.d	$a4, $a4, 2
	slli.d	$a7, $a6, 1
	addi.w	$a5, $a7, 1
	stx.w	$t0, $a0, $a4
	move	$a4, $a6
	blt	$a5, $a1, .LBB0_47
	b	.LBB0_41
	.p2align	4, , 16
.LBB0_51:                               #   in Loop: Header=BB0_53 Depth=1
	move	$a6, $a4
.LBB0_52:                               # %while.end82
                                        #   in Loop: Header=BB0_53 Depth=1
	addi.w	$a4, $a6, 0
	slli.d	$a4, $a4, 3
	stx.d	$a3, $a0, $a4
.LBB0_53:                               # %for.cond36
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
	addi.w	$a3, $a2, 0
	blez	$a3, .LBB0_55
# %bb.54:                               # %if.then38
                                        #   in Loop: Header=BB0_53 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	slli.d	$a7, $a2, 1
	addi.w	$a5, $a7, 1
	move	$a6, $a2
	bge	$a5, $a1, .LBB0_52
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_55:                               # %if.else42
                                        #   in Loop: Header=BB0_53 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_62
# %bb.56:                               # %if.end46
                                        #   in Loop: Header=BB0_53 Depth=1
	slli.d	$a4, $a1, 3
	ld.d	$a5, $a0, 0
	ldx.d	$a3, $a0, $a4
	stx.d	$a5, $a0, $a4
	slli.d	$a7, $a2, 1
	addi.w	$a5, $a7, 1
	move	$a6, $a2
	bge	$a5, $a1, .LBB0_52
.LBB0_57:                               # %while.body57.preheader
                                        #   in Loop: Header=BB0_53 Depth=1
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_58:                               # %while.body57
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a7, 2
	bge	$a6, $a1, .LBB0_60
# %bb.59:                               # %land.lhs.true60
                                        #   in Loop: Header=BB0_58 Depth=2
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a0, $a7
	slli.d	$t0, $a5, 3
	ldx.d	$t0, $a0, $t0
	slt	$a7, $t0, $a7
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $a5
	slli.d	$a5, $a6, 3
	ldx.d	$t0, $a0, $a5
	blt	$a3, $t0, .LBB0_61
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_60:                               #   in Loop: Header=BB0_58 Depth=2
	move	$a6, $a5
	slli.d	$a5, $a6, 3
	ldx.d	$t0, $a0, $a5
	bge	$a3, $t0, .LBB0_51
.LBB0_61:                               # %if.then73
                                        #   in Loop: Header=BB0_58 Depth=2
	addi.w	$a4, $a4, 0
	slli.d	$a4, $a4, 3
	slli.d	$a7, $a6, 1
	addi.w	$a5, $a7, 1
	stx.d	$t0, $a0, $a4
	move	$a4, $a6
	blt	$a5, $a1, .LBB0_58
	b	.LBB0_52
.LBB0_62:                               # %sw.epilog
	ret
.Lfunc_end0:
	.size	S7_Sort, .Lfunc_end0-S7_Sort
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_53-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
	.word	.LBB0_5-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
	.word	.LBB0_5-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
                                        # -- End function
	.text
	.globl	S7_Sort_2Arrays                 # -- Begin function S7_Sort_2Arrays
	.p2align	5
	.type	S7_Sort_2Arrays,@function
S7_Sort_2Arrays:                        # @S7_Sort_2Arrays
# %bb.0:                                # %entry
	addi.d	$a4, $a3, -4
	ori	$a3, $zero, 10
	bltu	$a3, $a4, .LBB1_2
# %bb.1:                                # %entry
	bstrpick.d	$a3, $a2, 31, 31
	add.w	$a3, $a2, $a3
	srai.d	$a3, $a3, 1
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI1_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI1_0)
	ldx.w	$a4, $a5, $a4
	add.d	$a4, $a5, $a4
	jr	$a4
.LBB1_2:                                # %sw.default
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB1_3:                                #   in Loop: Header=BB1_5 Depth=1
	move	$a6, $a5
.LBB1_4:                                # %while.end232
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a4, $a6, 0
	slli.d	$a4, $a4, 2
	fstx.s	$fa0, $a0, $a4
	fstx.s	$fa1, $a1, $a4
.LBB1_5:                                # %for.cond175
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	addi.w	$a4, $a3, 0
	blez	$a4, .LBB1_7
# %bb.6:                                # %if.then177
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a4, $a3, 2
	fldx.s	$fa0, $a0, $a4
	fldx.s	$fa1, $a1, $a4
	slli.d	$a7, $a3, 1
	addi.w	$a4, $a7, 1
	move	$a6, $a3
	bge	$a4, $a2, .LBB1_4
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_7:                                # %if.else183
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_62
# %bb.8:                                # %if.end187
                                        #   in Loop: Header=BB1_5 Depth=1
	fld.s	$fa2, $a0, 0
	slli.d	$a4, $a2, 2
	fldx.s	$fa0, $a0, $a4
	fldx.s	$fa1, $a1, $a4
	fstx.s	$fa2, $a0, $a4
	fld.s	$fa2, $a1, 0
	fstx.s	$fa2, $a1, $a4
	slli.d	$a7, $a3, 1
	addi.w	$a4, $a7, 1
	move	$a6, $a3
	bge	$a4, $a2, .LBB1_4
.LBB1_9:                                # %while.body203.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_10:                               # %while.body203
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $a7, 2
	bge	$a7, $a2, .LBB1_13
# %bb.11:                               # %land.lhs.true206
                                        #   in Loop: Header=BB1_10 Depth=2
	slli.d	$a6, $a7, 2
	fldx.s	$fa2, $a0, $a6
	slli.d	$a6, $a4, 2
	fldx.s	$fa3, $a0, $a6
	fcmp.cule.s	$fcc0, $fa2, $fa3
	move	$a6, $a4
	bcnez	$fcc0, .LBB1_14
# %bb.12:                               # %if.then213
                                        #   in Loop: Header=BB1_10 Depth=2
	move	$a4, $a7
	move	$a6, $a7
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_13:                               # %while.body203.if.end215_crit_edge
                                        #   in Loop: Header=BB1_10 Depth=2
	move	$a6, $a4
.LBB1_14:                               # %if.end215
                                        #   in Loop: Header=BB1_10 Depth=2
	slli.d	$a4, $a4, 2
	fldx.s	$fa2, $a0, $a4
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_3
# %bb.15:                               # %if.then219
                                        #   in Loop: Header=BB1_10 Depth=2
	addi.w	$a5, $a5, 0
	slli.d	$a5, $a5, 2
	fstx.s	$fa2, $a0, $a5
	fldx.s	$fa2, $a1, $a4
	slli.d	$a7, $a6, 1
	addi.w	$a4, $a7, 1
	fstx.s	$fa2, $a1, $a5
	move	$a5, $a6
	blt	$a4, $a2, .LBB1_10
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_16:                               #   in Loop: Header=BB1_18 Depth=1
	move	$a6, $a5
.LBB1_17:                               # %while.end295
                                        #   in Loop: Header=BB1_18 Depth=1
	addi.w	$a4, $a6, 0
	slli.d	$a4, $a4, 3
	fstx.d	$fa0, $a0, $a4
	fstx.d	$fa1, $a1, $a4
.LBB1_18:                               # %for.cond238
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_23 Depth 2
	addi.w	$a4, $a3, 0
	blez	$a4, .LBB1_20
# %bb.19:                               # %if.then240
                                        #   in Loop: Header=BB1_18 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a4, $a3, 3
	fldx.d	$fa0, $a0, $a4
	fldx.d	$fa1, $a1, $a4
	slli.d	$a7, $a3, 1
	addi.w	$a4, $a7, 1
	move	$a6, $a3
	bge	$a4, $a2, .LBB1_17
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_20:                               # %if.else246
                                        #   in Loop: Header=BB1_18 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_62
# %bb.21:                               # %if.end250
                                        #   in Loop: Header=BB1_18 Depth=1
	fld.d	$fa2, $a0, 0
	slli.d	$a4, $a2, 3
	fldx.d	$fa0, $a0, $a4
	fldx.d	$fa1, $a1, $a4
	fstx.d	$fa2, $a0, $a4
	fld.d	$fa2, $a1, 0
	fstx.d	$fa2, $a1, $a4
	slli.d	$a7, $a3, 1
	addi.w	$a4, $a7, 1
	move	$a6, $a3
	bge	$a4, $a2, .LBB1_17
.LBB1_22:                               # %while.body266.preheader
                                        #   in Loop: Header=BB1_18 Depth=1
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_23:                               # %while.body266
                                        #   Parent Loop BB1_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $a7, 2
	bge	$a7, $a2, .LBB1_26
# %bb.24:                               # %land.lhs.true269
                                        #   in Loop: Header=BB1_23 Depth=2
	slli.d	$a6, $a7, 3
	fldx.d	$fa2, $a0, $a6
	slli.d	$a6, $a4, 3
	fldx.d	$fa3, $a0, $a6
	fcmp.cule.d	$fcc0, $fa2, $fa3
	move	$a6, $a4
	bcnez	$fcc0, .LBB1_27
# %bb.25:                               # %if.then276
                                        #   in Loop: Header=BB1_23 Depth=2
	move	$a4, $a7
	move	$a6, $a7
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_26:                               # %while.body266.if.end278_crit_edge
                                        #   in Loop: Header=BB1_23 Depth=2
	move	$a6, $a4
.LBB1_27:                               # %if.end278
                                        #   in Loop: Header=BB1_23 Depth=2
	slli.d	$a4, $a4, 3
	fldx.d	$fa2, $a0, $a4
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_16
# %bb.28:                               # %if.then282
                                        #   in Loop: Header=BB1_23 Depth=2
	addi.w	$a5, $a5, 0
	slli.d	$a5, $a5, 3
	fstx.d	$fa2, $a0, $a5
	fldx.d	$fa2, $a1, $a4
	slli.d	$a7, $a6, 1
	addi.w	$a4, $a7, 1
	fstx.d	$fa2, $a1, $a5
	move	$a5, $a6
	blt	$a4, $a2, .LBB1_23
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_29:                               #   in Loop: Header=BB1_31 Depth=1
	move	$a7, $a6
.LBB1_30:                               # %while.end169
                                        #   in Loop: Header=BB1_31 Depth=1
	addi.w	$a6, $a7, 0
	slli.d	$a6, $a6, 3
	stx.d	$a4, $a0, $a6
	stx.d	$a5, $a1, $a6
.LBB1_31:                               # %for.cond112
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
	addi.w	$a4, $a3, 0
	blez	$a4, .LBB1_33
# %bb.32:                               # %if.then114
                                        #   in Loop: Header=BB1_31 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a5, $a3, 3
	ldx.d	$a4, $a0, $a5
	ldx.d	$a5, $a1, $a5
	slli.d	$t1, $a3, 1
	addi.w	$t0, $t1, 1
	move	$a7, $a3
	bge	$t0, $a2, .LBB1_30
	b	.LBB1_35
	.p2align	4, , 16
.LBB1_33:                               # %if.else120
                                        #   in Loop: Header=BB1_31 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_62
# %bb.34:                               # %if.end124
                                        #   in Loop: Header=BB1_31 Depth=1
	ld.d	$a6, $a0, 0
	slli.d	$a7, $a2, 3
	ldx.d	$a4, $a0, $a7
	ldx.d	$a5, $a1, $a7
	stx.d	$a6, $a0, $a7
	ld.d	$a6, $a1, 0
	stx.d	$a6, $a1, $a7
	slli.d	$t1, $a3, 1
	addi.w	$t0, $t1, 1
	move	$a7, $a3
	bge	$t0, $a2, .LBB1_30
.LBB1_35:                               # %while.body140.preheader
                                        #   in Loop: Header=BB1_31 Depth=1
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_36:                               # %while.body140
                                        #   Parent Loop BB1_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $t1, 2
	bge	$a7, $a2, .LBB1_38
# %bb.37:                               # %land.lhs.true143
                                        #   in Loop: Header=BB1_36 Depth=2
	slli.d	$t1, $a7, 3
	ldx.d	$t1, $a0, $t1
	slli.d	$t2, $t0, 3
	ldx.d	$t2, $a0, $t2
	slt	$t1, $t2, $t1
	masknez	$t0, $t0, $t1
	maskeqz	$a7, $a7, $t1
	or	$a7, $a7, $t0
	slli.d	$t0, $a7, 3
	ldx.d	$t1, $a0, $t0
	blt	$a4, $t1, .LBB1_39
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_38:                               #   in Loop: Header=BB1_36 Depth=2
	move	$a7, $t0
	slli.d	$t0, $a7, 3
	ldx.d	$t1, $a0, $t0
	bge	$a4, $t1, .LBB1_29
.LBB1_39:                               # %if.then156
                                        #   in Loop: Header=BB1_36 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 3
	stx.d	$t1, $a0, $a6
	ldx.d	$t2, $a1, $t0
	slli.d	$t1, $a7, 1
	addi.w	$t0, $t1, 1
	stx.d	$t2, $a1, $a6
	move	$a6, $a7
	blt	$t0, $a2, .LBB1_36
	b	.LBB1_30
	.p2align	4, , 16
.LBB1_40:                               #   in Loop: Header=BB1_42 Depth=1
	move	$a7, $a6
.LBB1_41:                               # %while.end
                                        #   in Loop: Header=BB1_42 Depth=1
	addi.w	$a6, $a7, 0
	slli.d	$a6, $a6, 2
	stx.w	$a4, $a0, $a6
	stx.w	$a5, $a1, $a6
.LBB1_42:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_47 Depth 2
	addi.w	$a4, $a3, 0
	blez	$a4, .LBB1_44
# %bb.43:                               # %if.then
                                        #   in Loop: Header=BB1_42 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a5, $a3, 2
	ldx.w	$a4, $a0, $a5
	ldx.w	$a5, $a1, $a5
	slli.d	$t1, $a3, 1
	addi.w	$t0, $t1, 1
	move	$a7, $a3
	bge	$t0, $a2, .LBB1_41
	b	.LBB1_46
	.p2align	4, , 16
.LBB1_44:                               # %if.else
                                        #   in Loop: Header=BB1_42 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_62
# %bb.45:                               # %if.end
                                        #   in Loop: Header=BB1_42 Depth=1
	ld.w	$a6, $a0, 0
	slli.d	$a7, $a2, 2
	ldx.w	$a4, $a0, $a7
	ldx.w	$a5, $a1, $a7
	stx.w	$a6, $a0, $a7
	ld.w	$a6, $a1, 0
	stx.w	$a6, $a1, $a7
	slli.d	$t1, $a3, 1
	addi.w	$t0, $t1, 1
	move	$a7, $a3
	bge	$t0, $a2, .LBB1_41
.LBB1_46:                               # %while.body.preheader
                                        #   in Loop: Header=BB1_42 Depth=1
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_47:                               # %while.body
                                        #   Parent Loop BB1_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $t1, 2
	bge	$a7, $a2, .LBB1_49
# %bb.48:                               # %land.lhs.true
                                        #   in Loop: Header=BB1_47 Depth=2
	slli.d	$t1, $a7, 2
	ldx.w	$t1, $a0, $t1
	slli.d	$t2, $t0, 2
	ldx.w	$t2, $a0, $t2
	slt	$t1, $t2, $t1
	masknez	$t0, $t0, $t1
	maskeqz	$a7, $a7, $t1
	or	$a7, $a7, $t0
	slli.d	$t0, $a7, 2
	ldx.w	$t1, $a0, $t0
	blt	$a4, $t1, .LBB1_50
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_49:                               #   in Loop: Header=BB1_47 Depth=2
	move	$a7, $t0
	slli.d	$t0, $a7, 2
	ldx.w	$t1, $a0, $t0
	bge	$a4, $t1, .LBB1_40
.LBB1_50:                               # %if.then31
                                        #   in Loop: Header=BB1_47 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 2
	stx.w	$t1, $a0, $a6
	ldx.w	$t2, $a1, $t0
	slli.d	$t1, $a7, 1
	addi.w	$t0, $t1, 1
	stx.w	$t2, $a1, $a6
	move	$a6, $a7
	blt	$t0, $a2, .LBB1_47
	b	.LBB1_41
	.p2align	4, , 16
.LBB1_51:                               #   in Loop: Header=BB1_53 Depth=1
	move	$a7, $a6
.LBB1_52:                               # %while.end106
                                        #   in Loop: Header=BB1_53 Depth=1
	addi.w	$a6, $a7, 0
	slli.d	$a6, $a6, 3
	stx.d	$a4, $a0, $a6
	stx.d	$a5, $a1, $a6
.LBB1_53:                               # %for.cond49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_58 Depth 2
	addi.w	$a4, $a3, 0
	blez	$a4, .LBB1_55
# %bb.54:                               # %if.then51
                                        #   in Loop: Header=BB1_53 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a5, $a3, 3
	ldx.d	$a4, $a0, $a5
	ldx.d	$a5, $a1, $a5
	slli.d	$t1, $a3, 1
	addi.w	$t0, $t1, 1
	move	$a7, $a3
	bge	$t0, $a2, .LBB1_52
	b	.LBB1_57
	.p2align	4, , 16
.LBB1_55:                               # %if.else57
                                        #   in Loop: Header=BB1_53 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_62
# %bb.56:                               # %if.end61
                                        #   in Loop: Header=BB1_53 Depth=1
	ld.d	$a6, $a0, 0
	slli.d	$a7, $a2, 3
	ldx.d	$a4, $a0, $a7
	ldx.d	$a5, $a1, $a7
	stx.d	$a6, $a0, $a7
	ld.d	$a6, $a1, 0
	stx.d	$a6, $a1, $a7
	slli.d	$t1, $a3, 1
	addi.w	$t0, $t1, 1
	move	$a7, $a3
	bge	$t0, $a2, .LBB1_52
.LBB1_57:                               # %while.body77.preheader
                                        #   in Loop: Header=BB1_53 Depth=1
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_58:                               # %while.body77
                                        #   Parent Loop BB1_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $t1, 2
	bge	$a7, $a2, .LBB1_60
# %bb.59:                               # %land.lhs.true80
                                        #   in Loop: Header=BB1_58 Depth=2
	slli.d	$t1, $a7, 3
	ldx.d	$t1, $a0, $t1
	slli.d	$t2, $t0, 3
	ldx.d	$t2, $a0, $t2
	slt	$t1, $t2, $t1
	masknez	$t0, $t0, $t1
	maskeqz	$a7, $a7, $t1
	or	$a7, $a7, $t0
	slli.d	$t0, $a7, 3
	ldx.d	$t1, $a0, $t0
	blt	$a4, $t1, .LBB1_61
	b	.LBB1_51
	.p2align	4, , 16
.LBB1_60:                               #   in Loop: Header=BB1_58 Depth=2
	move	$a7, $t0
	slli.d	$t0, $a7, 3
	ldx.d	$t1, $a0, $t0
	bge	$a4, $t1, .LBB1_51
.LBB1_61:                               # %if.then93
                                        #   in Loop: Header=BB1_58 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 3
	stx.d	$t1, $a0, $a6
	ldx.d	$t2, $a1, $t0
	slli.d	$t1, $a7, 1
	addi.w	$t0, $t1, 1
	stx.d	$t2, $a1, $a6
	move	$a6, $a7
	blt	$t0, $a2, .LBB1_58
	b	.LBB1_52
.LBB1_62:                               # %cleanup
	ret
.Lfunc_end1:
	.size	S7_Sort_2Arrays, .Lfunc_end1-S7_Sort_2Arrays
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_42-.LJTI1_0
	.word	.LBB1_53-.LJTI1_0
	.word	.LBB1_31-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_18-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_42-.LJTI1_0
	.word	.LBB1_31-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_18-.LJTI1_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function S7_Index_Sort
.LCPI2_0:
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
	blez	$a1, .LBB2_8
# %bb.1:                                # %for.body.preheader
	ori	$a4, $zero, 8
	bgeu	$a1, $a4, .LBB2_3
# %bb.2:
	move	$a4, $zero
	b	.LBB2_6
.LBB2_3:                                # %vector.ph
	pcalau12i	$a4, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_0)
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a3, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_4
# %bb.5:                                # %middle.block
	beq	$a4, $a1, .LBB2_8
.LBB2_6:                                # %for.body.preheader260
	alsl.d	$a5, $a4, $a3, 2
	sub.d	$a6, $a1, $a4
	.p2align	4, , 16
.LBB2_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a5, 0
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bnez	$a6, .LBB2_7
.LBB2_8:                                # %for.end
	addi.d	$a4, $a2, -4
	ori	$a2, $zero, 10
	bltu	$a2, $a4, .LBB2_10
# %bb.9:                                # %for.end
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a2, $a1, $a2
	srai.d	$a2, $a2, 1
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI2_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI2_0)
	ldx.w	$a4, $a5, $a4
	add.d	$a4, $a5, $a4
	jr	$a4
.LBB2_10:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB2_11:                               #   in Loop: Header=BB2_13 Depth=1
	move	$a7, $a6
.LBB2_12:                               # %while.end227
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 2
	stx.w	$a4, $a3, $a5
.LBB2_13:                               # %for.cond171
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
	addi.w	$a4, $a2, 0
	blez	$a4, .LBB2_15
# %bb.14:                               # %if.then173
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $a3, $a4
	slli.d	$a5, $a4, 2
	fldx.s	$fa0, $a0, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a2
	bge	$a5, $a1, .LBB2_12
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_15:                               # %if.else179
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_73
# %bb.16:                               # %if.end183
                                        #   in Loop: Header=BB2_13 Depth=1
	slli.d	$a5, $a1, 2
	ldx.w	$a4, $a3, $a5
	slli.d	$a6, $a4, 2
	ld.w	$a7, $a3, 0
	fldx.s	$fa0, $a0, $a6
	stx.w	$a7, $a3, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a2
	bge	$a5, $a1, .LBB2_12
.LBB2_17:                               # %while.body196.preheader
                                        #   in Loop: Header=BB2_13 Depth=1
	move	$a6, $a2
	.p2align	4, , 16
.LBB2_18:                               # %while.body196
                                        #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t0, 2
	bge	$t0, $a1, .LBB2_21
# %bb.19:                               # %land.lhs.true199
                                        #   in Loop: Header=BB2_18 Depth=2
	slli.d	$a7, $t0, 2
	ldx.w	$a7, $a3, $a7
	slli.d	$t1, $a5, 2
	ldx.w	$t1, $a3, $t1
	slli.d	$a7, $a7, 2
	fldx.s	$fa1, $a0, $a7
	slli.d	$a7, $t1, 2
	fldx.s	$fa2, $a0, $a7
	fcmp.cule.s	$fcc0, $fa1, $fa2
	move	$a7, $a5
	bcnez	$fcc0, .LBB2_22
# %bb.20:                               # %if.then210
                                        #   in Loop: Header=BB2_18 Depth=2
	move	$a5, $t0
	move	$a7, $t0
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_21:                               # %while.body196.if.end212_crit_edge
                                        #   in Loop: Header=BB2_18 Depth=2
	move	$a7, $a5
.LBB2_22:                               # %if.end212
                                        #   in Loop: Header=BB2_18 Depth=2
	slli.d	$a5, $a5, 2
	ldx.w	$t1, $a3, $a5
	slli.d	$a5, $t1, 2
	fldx.s	$fa1, $a0, $a5
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_11
# %bb.23:                               # %if.then218
                                        #   in Loop: Header=BB2_18 Depth=2
	addi.w	$a5, $a6, 0
	slli.d	$a6, $a5, 2
	slli.d	$t0, $a7, 1
	addi.w	$a5, $t0, 1
	stx.w	$t1, $a3, $a6
	move	$a6, $a7
	blt	$a5, $a1, .LBB2_18
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_24:                               #   in Loop: Header=BB2_26 Depth=1
	move	$a7, $a6
.LBB2_25:                               # %while.end287
                                        #   in Loop: Header=BB2_26 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 2
	stx.w	$a4, $a3, $a5
.LBB2_26:                               # %for.cond231
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_31 Depth 2
	addi.w	$a4, $a2, 0
	blez	$a4, .LBB2_28
# %bb.27:                               # %if.then233
                                        #   in Loop: Header=BB2_26 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $a3, $a4
	slli.d	$a5, $a4, 3
	fldx.d	$fa0, $a0, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a2
	bge	$a5, $a1, .LBB2_25
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_28:                               # %if.else239
                                        #   in Loop: Header=BB2_26 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_73
# %bb.29:                               # %if.end243
                                        #   in Loop: Header=BB2_26 Depth=1
	slli.d	$a5, $a1, 2
	ldx.w	$a4, $a3, $a5
	slli.d	$a6, $a4, 3
	ld.w	$a7, $a3, 0
	fldx.d	$fa0, $a0, $a6
	stx.w	$a7, $a3, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a2
	bge	$a5, $a1, .LBB2_25
.LBB2_30:                               # %while.body256.preheader
                                        #   in Loop: Header=BB2_26 Depth=1
	move	$a6, $a2
	.p2align	4, , 16
.LBB2_31:                               # %while.body256
                                        #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t0, 2
	bge	$t0, $a1, .LBB2_34
# %bb.32:                               # %land.lhs.true259
                                        #   in Loop: Header=BB2_31 Depth=2
	slli.d	$a7, $t0, 2
	ldx.w	$a7, $a3, $a7
	slli.d	$t1, $a5, 2
	ldx.w	$t1, $a3, $t1
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $a0, $a7
	slli.d	$a7, $t1, 3
	fldx.d	$fa2, $a0, $a7
	fcmp.cule.d	$fcc0, $fa1, $fa2
	move	$a7, $a5
	bcnez	$fcc0, .LBB2_35
# %bb.33:                               # %if.then270
                                        #   in Loop: Header=BB2_31 Depth=2
	move	$a5, $t0
	move	$a7, $t0
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %while.body256.if.end272_crit_edge
                                        #   in Loop: Header=BB2_31 Depth=2
	move	$a7, $a5
.LBB2_35:                               # %if.end272
                                        #   in Loop: Header=BB2_31 Depth=2
	slli.d	$a5, $a5, 2
	ldx.w	$t1, $a3, $a5
	slli.d	$a5, $t1, 3
	fldx.d	$fa1, $a0, $a5
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_24
# %bb.36:                               # %if.then278
                                        #   in Loop: Header=BB2_31 Depth=2
	addi.w	$a5, $a6, 0
	slli.d	$a6, $a5, 2
	slli.d	$t0, $a7, 1
	addi.w	$a5, $t0, 1
	stx.w	$t1, $a3, $a6
	move	$a6, $a7
	blt	$a5, $a1, .LBB2_31
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_37:                               #   in Loop: Header=BB2_39 Depth=1
	move	$t0, $a6
.LBB2_38:                               # %while.end167
                                        #   in Loop: Header=BB2_39 Depth=1
	addi.w	$a5, $t0, 0
	slli.d	$a5, $a5, 2
	stx.w	$a4, $a3, $a5
.LBB2_39:                               # %for.cond111
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_44 Depth 2
	addi.w	$a4, $a2, 0
	blez	$a4, .LBB2_41
# %bb.40:                               # %if.then113
                                        #   in Loop: Header=BB2_39 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $a3, $a4
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$t1, $a2, 1
	addi.w	$a7, $t1, 1
	move	$t0, $a2
	bge	$a7, $a1, .LBB2_38
	b	.LBB2_43
	.p2align	4, , 16
.LBB2_41:                               # %if.else119
                                        #   in Loop: Header=BB2_39 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_73
# %bb.42:                               # %if.end123
                                        #   in Loop: Header=BB2_39 Depth=1
	slli.d	$a6, $a1, 2
	ldx.w	$a4, $a3, $a6
	slli.d	$a5, $a4, 3
	ld.w	$a7, $a3, 0
	ldx.d	$a5, $a0, $a5
	stx.w	$a7, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a7, $t1, 1
	move	$t0, $a2
	bge	$a7, $a1, .LBB2_38
.LBB2_43:                               # %while.body136.preheader
                                        #   in Loop: Header=BB2_39 Depth=1
	move	$a6, $a2
	.p2align	4, , 16
.LBB2_44:                               # %while.body136
                                        #   Parent Loop BB2_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t1, 2
	bge	$t0, $a1, .LBB2_46
# %bb.45:                               # %land.lhs.true139
                                        #   in Loop: Header=BB2_44 Depth=2
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a3, $t1
	slli.d	$t2, $a7, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	slt	$t1, $t2, $t1
	masknez	$a7, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$t0, $t0, $a7
	b	.LBB2_47
	.p2align	4, , 16
.LBB2_46:                               #   in Loop: Header=BB2_44 Depth=2
	move	$t0, $a7
.LBB2_47:                               # %if.end152
                                        #   in Loop: Header=BB2_44 Depth=2
	slli.d	$a7, $t0, 2
	ldx.w	$t2, $a3, $a7
	slli.d	$a7, $t2, 3
	ldx.d	$a7, $a0, $a7
	bge	$a5, $a7, .LBB2_37
# %bb.48:                               # %if.then158
                                        #   in Loop: Header=BB2_44 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 2
	slli.d	$t1, $t0, 1
	addi.w	$a7, $t1, 1
	stx.w	$t2, $a3, $a6
	move	$a6, $t0
	blt	$a7, $a1, .LBB2_44
	b	.LBB2_38
	.p2align	4, , 16
.LBB2_49:                               #   in Loop: Header=BB2_51 Depth=1
	move	$t0, $a6
.LBB2_50:                               # %while.end
                                        #   in Loop: Header=BB2_51 Depth=1
	addi.w	$a5, $t0, 0
	slli.d	$a5, $a5, 2
	stx.w	$a4, $a3, $a5
.LBB2_51:                               # %for.cond1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_56 Depth 2
	addi.w	$a4, $a2, 0
	blez	$a4, .LBB2_53
# %bb.52:                               # %if.then
                                        #   in Loop: Header=BB2_51 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $a3, $a4
	slli.d	$a5, $a4, 2
	ldx.w	$a5, $a0, $a5
	slli.d	$t1, $a2, 1
	addi.w	$a7, $t1, 1
	move	$t0, $a2
	bge	$a7, $a1, .LBB2_50
	b	.LBB2_55
	.p2align	4, , 16
.LBB2_53:                               # %if.else
                                        #   in Loop: Header=BB2_51 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_73
# %bb.54:                               # %if.end
                                        #   in Loop: Header=BB2_51 Depth=1
	slli.d	$a6, $a1, 2
	ldx.w	$a4, $a3, $a6
	slli.d	$a5, $a4, 2
	ld.w	$a7, $a3, 0
	ldx.w	$a5, $a0, $a5
	stx.w	$a7, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a7, $t1, 1
	move	$t0, $a2
	bge	$a7, $a1, .LBB2_50
.LBB2_55:                               # %while.body.preheader
                                        #   in Loop: Header=BB2_51 Depth=1
	move	$a6, $a2
	.p2align	4, , 16
.LBB2_56:                               # %while.body
                                        #   Parent Loop BB2_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t1, 2
	bge	$t0, $a1, .LBB2_58
# %bb.57:                               # %land.lhs.true
                                        #   in Loop: Header=BB2_56 Depth=2
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a3, $t1
	slli.d	$t2, $a7, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a0, $t1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a0, $t2
	slt	$t1, $t2, $t1
	masknez	$a7, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$t0, $t0, $a7
	b	.LBB2_59
	.p2align	4, , 16
.LBB2_58:                               #   in Loop: Header=BB2_56 Depth=2
	move	$t0, $a7
.LBB2_59:                               # %if.end33
                                        #   in Loop: Header=BB2_56 Depth=2
	slli.d	$a7, $t0, 2
	ldx.w	$t2, $a3, $a7
	slli.d	$a7, $t2, 2
	ldx.w	$a7, $a0, $a7
	bge	$a5, $a7, .LBB2_49
# %bb.60:                               # %if.then39
                                        #   in Loop: Header=BB2_56 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 2
	slli.d	$t1, $t0, 1
	addi.w	$a7, $t1, 1
	stx.w	$t2, $a3, $a6
	move	$a6, $t0
	blt	$a7, $a1, .LBB2_56
	b	.LBB2_50
	.p2align	4, , 16
.LBB2_61:                               #   in Loop: Header=BB2_63 Depth=1
	move	$t0, $a6
.LBB2_62:                               # %while.end107
                                        #   in Loop: Header=BB2_63 Depth=1
	addi.w	$a5, $t0, 0
	slli.d	$a5, $a5, 2
	stx.w	$a4, $a3, $a5
.LBB2_63:                               # %for.cond51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_68 Depth 2
	addi.w	$a4, $a2, 0
	blez	$a4, .LBB2_65
# %bb.64:                               # %if.then53
                                        #   in Loop: Header=BB2_63 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $a3, $a4
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$t1, $a2, 1
	addi.w	$a7, $t1, 1
	move	$t0, $a2
	bge	$a7, $a1, .LBB2_62
	b	.LBB2_67
	.p2align	4, , 16
.LBB2_65:                               # %if.else59
                                        #   in Loop: Header=BB2_63 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_73
# %bb.66:                               # %if.end63
                                        #   in Loop: Header=BB2_63 Depth=1
	slli.d	$a6, $a1, 2
	ldx.w	$a4, $a3, $a6
	slli.d	$a5, $a4, 3
	ld.w	$a7, $a3, 0
	ldx.d	$a5, $a0, $a5
	stx.w	$a7, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a7, $t1, 1
	move	$t0, $a2
	bge	$a7, $a1, .LBB2_62
.LBB2_67:                               # %while.body76.preheader
                                        #   in Loop: Header=BB2_63 Depth=1
	move	$a6, $a2
	.p2align	4, , 16
.LBB2_68:                               # %while.body76
                                        #   Parent Loop BB2_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t1, 2
	bge	$t0, $a1, .LBB2_70
# %bb.69:                               # %land.lhs.true79
                                        #   in Loop: Header=BB2_68 Depth=2
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a3, $t1
	slli.d	$t2, $a7, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	slt	$t1, $t2, $t1
	masknez	$a7, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$t0, $t0, $a7
	b	.LBB2_71
	.p2align	4, , 16
.LBB2_70:                               #   in Loop: Header=BB2_68 Depth=2
	move	$t0, $a7
.LBB2_71:                               # %if.end92
                                        #   in Loop: Header=BB2_68 Depth=2
	slli.d	$a7, $t0, 2
	ldx.w	$t2, $a3, $a7
	slli.d	$a7, $t2, 3
	ldx.d	$a7, $a0, $a7
	bge	$a5, $a7, .LBB2_61
# %bb.72:                               # %if.then98
                                        #   in Loop: Header=BB2_68 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 2
	slli.d	$t1, $t0, 1
	addi.w	$a7, $t1, 1
	stx.w	$t2, $a3, $a6
	move	$a6, $t0
	blt	$a7, $a1, .LBB2_68
	b	.LBB2_62
.LBB2_73:                               # %cleanup
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	S7_Index_Sort, .Lfunc_end2-S7_Index_Sort
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_51-.LJTI2_0
	.word	.LBB2_63-.LJTI2_0
	.word	.LBB2_39-.LJTI2_0
	.word	.LBB2_13-.LJTI2_0
	.word	.LBB2_26-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_51-.LJTI2_0
	.word	.LBB2_39-.LJTI2_0
	.word	.LBB2_13-.LJTI2_0
	.word	.LBB2_26-.LJTI2_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function S7_Indexi8_Sort
.LCPI3_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	S7_Indexi8_Sort
	.p2align	5
	.type	S7_Indexi8_Sort,@function
S7_Indexi8_Sort:                        # @S7_Indexi8_Sort
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	blez	$a1, .LBB3_8
# %bb.1:                                # %for.body.preheader
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB3_3
# %bb.2:
	move	$a4, $zero
	b	.LBB3_6
.LBB3_3:                                # %vector.ph
	pcalau12i	$a4, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI3_0)
	bstrpick.d	$a4, $a1, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a3, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 2
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
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
	addi.d	$a4, $a2, -4
	ori	$a2, $zero, 10
	bltu	$a2, $a4, .LBB3_10
# %bb.9:                                # %for.end
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a2, $a1, $a2
	srai.d	$a2, $a2, 1
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI3_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI3_0)
	ldx.w	$a4, $a5, $a4
	add.d	$a4, $a5, $a4
	jr	$a4
.LBB3_10:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_11:                               #   in Loop: Header=BB3_13 Depth=1
	move	$a7, $a6
.LBB3_12:                               # %while.end231
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 3
	stx.d	$a4, $a3, $a5
.LBB3_13:                               # %for.cond174
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
	addi.w	$a4, $a2, 0
	blez	$a4, .LBB3_15
# %bb.14:                               # %if.then177
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a3, $a4
	slli.d	$a5, $a4, 2
	fldx.s	$fa0, $a0, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a2
	bge	$a5, $a1, .LBB3_12
	b	.LBB3_17
	.p2align	4, , 16
.LBB3_15:                               # %if.else182
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_73
# %bb.16:                               # %if.end187
                                        #   in Loop: Header=BB3_13 Depth=1
	slli.d	$a5, $a1, 3
	ldx.d	$a4, $a3, $a5
	slli.d	$a6, $a4, 2
	ld.d	$a7, $a3, 0
	fldx.s	$fa0, $a0, $a6
	stx.d	$a7, $a3, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a2
	bge	$a5, $a1, .LBB3_12
.LBB3_17:                               # %while.body200.preheader
                                        #   in Loop: Header=BB3_13 Depth=1
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_18:                               # %while.body200
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t0, 2
	bge	$t0, $a1, .LBB3_21
# %bb.19:                               # %land.lhs.true204
                                        #   in Loop: Header=BB3_18 Depth=2
	slli.d	$a7, $t0, 3
	ldx.d	$a7, $a3, $a7
	slli.d	$t1, $a5, 3
	ldx.d	$t1, $a3, $t1
	slli.d	$a7, $a7, 2
	fldx.s	$fa1, $a0, $a7
	slli.d	$a7, $t1, 2
	fldx.s	$fa2, $a0, $a7
	fcmp.cule.s	$fcc0, $fa1, $fa2
	move	$a7, $a5
	bcnez	$fcc0, .LBB3_22
# %bb.20:                               # %if.then214
                                        #   in Loop: Header=BB3_18 Depth=2
	move	$a5, $t0
	move	$a7, $t0
	b	.LBB3_22
	.p2align	4, , 16
.LBB3_21:                               # %while.body200.if.end216_crit_edge
                                        #   in Loop: Header=BB3_18 Depth=2
	move	$a7, $a5
.LBB3_22:                               # %if.end216
                                        #   in Loop: Header=BB3_18 Depth=2
	slli.d	$a5, $a5, 3
	ldx.d	$t1, $a3, $a5
	slli.d	$a5, $t1, 2
	fldx.s	$fa1, $a0, $a5
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_11
# %bb.23:                               # %if.then222
                                        #   in Loop: Header=BB3_18 Depth=2
	addi.w	$a5, $a6, 0
	slli.d	$a6, $a5, 3
	slli.d	$t0, $a7, 1
	addi.w	$a5, $t0, 1
	stx.d	$t1, $a3, $a6
	move	$a6, $a7
	blt	$a5, $a1, .LBB3_18
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_24:                               #   in Loop: Header=BB3_26 Depth=1
	move	$a7, $a6
.LBB3_25:                               # %while.end292
                                        #   in Loop: Header=BB3_26 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 3
	stx.d	$a4, $a3, $a5
.LBB3_26:                               # %for.cond235
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_31 Depth 2
	addi.w	$a4, $a2, 0
	blez	$a4, .LBB3_28
# %bb.27:                               # %if.then238
                                        #   in Loop: Header=BB3_26 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a3, $a4
	slli.d	$a5, $a4, 3
	fldx.d	$fa0, $a0, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a2
	bge	$a5, $a1, .LBB3_25
	b	.LBB3_30
	.p2align	4, , 16
.LBB3_28:                               # %if.else243
                                        #   in Loop: Header=BB3_26 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_73
# %bb.29:                               # %if.end248
                                        #   in Loop: Header=BB3_26 Depth=1
	slli.d	$a5, $a1, 3
	ldx.d	$a4, $a3, $a5
	slli.d	$a6, $a4, 3
	ld.d	$a7, $a3, 0
	fldx.d	$fa0, $a0, $a6
	stx.d	$a7, $a3, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a2
	bge	$a5, $a1, .LBB3_25
.LBB3_30:                               # %while.body261.preheader
                                        #   in Loop: Header=BB3_26 Depth=1
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_31:                               # %while.body261
                                        #   Parent Loop BB3_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t0, 2
	bge	$t0, $a1, .LBB3_34
# %bb.32:                               # %land.lhs.true265
                                        #   in Loop: Header=BB3_31 Depth=2
	slli.d	$a7, $t0, 3
	ldx.d	$a7, $a3, $a7
	slli.d	$t1, $a5, 3
	ldx.d	$t1, $a3, $t1
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $a0, $a7
	slli.d	$a7, $t1, 3
	fldx.d	$fa2, $a0, $a7
	fcmp.cule.d	$fcc0, $fa1, $fa2
	move	$a7, $a5
	bcnez	$fcc0, .LBB3_35
# %bb.33:                               # %if.then275
                                        #   in Loop: Header=BB3_31 Depth=2
	move	$a5, $t0
	move	$a7, $t0
	b	.LBB3_35
	.p2align	4, , 16
.LBB3_34:                               # %while.body261.if.end277_crit_edge
                                        #   in Loop: Header=BB3_31 Depth=2
	move	$a7, $a5
.LBB3_35:                               # %if.end277
                                        #   in Loop: Header=BB3_31 Depth=2
	slli.d	$a5, $a5, 3
	ldx.d	$t1, $a3, $a5
	slli.d	$a5, $t1, 3
	fldx.d	$fa1, $a0, $a5
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_24
# %bb.36:                               # %if.then283
                                        #   in Loop: Header=BB3_31 Depth=2
	addi.w	$a5, $a6, 0
	slli.d	$a6, $a5, 3
	slli.d	$t0, $a7, 1
	addi.w	$a5, $t0, 1
	stx.d	$t1, $a3, $a6
	move	$a6, $a7
	blt	$a5, $a1, .LBB3_31
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_37:                               #   in Loop: Header=BB3_39 Depth=1
	move	$t0, $a6
.LBB3_38:                               # %while.end170
                                        #   in Loop: Header=BB3_39 Depth=1
	addi.w	$a5, $t0, 0
	slli.d	$a5, $a5, 3
	stx.d	$a4, $a3, $a5
.LBB3_39:                               # %for.cond113
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_44 Depth 2
	addi.w	$a4, $a2, 0
	blez	$a4, .LBB3_41
# %bb.40:                               # %if.then116
                                        #   in Loop: Header=BB3_39 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a3, $a4
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$t1, $a2, 1
	addi.w	$a7, $t1, 1
	move	$t0, $a2
	bge	$a7, $a1, .LBB3_38
	b	.LBB3_43
	.p2align	4, , 16
.LBB3_41:                               # %if.else121
                                        #   in Loop: Header=BB3_39 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_73
# %bb.42:                               # %if.end126
                                        #   in Loop: Header=BB3_39 Depth=1
	slli.d	$a6, $a1, 3
	ldx.d	$a4, $a3, $a6
	slli.d	$a5, $a4, 3
	ld.d	$a7, $a3, 0
	ldx.d	$a5, $a0, $a5
	stx.d	$a7, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a7, $t1, 1
	move	$t0, $a2
	bge	$a7, $a1, .LBB3_38
.LBB3_43:                               # %while.body139.preheader
                                        #   in Loop: Header=BB3_39 Depth=1
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_44:                               # %while.body139
                                        #   Parent Loop BB3_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t1, 2
	bge	$t0, $a1, .LBB3_46
# %bb.45:                               # %land.lhs.true143
                                        #   in Loop: Header=BB3_44 Depth=2
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a3, $t1
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	slt	$t1, $t2, $t1
	masknez	$a7, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$t0, $t0, $a7
	b	.LBB3_47
	.p2align	4, , 16
.LBB3_46:                               #   in Loop: Header=BB3_44 Depth=2
	move	$t0, $a7
.LBB3_47:                               # %if.end155
                                        #   in Loop: Header=BB3_44 Depth=2
	slli.d	$a7, $t0, 3
	ldx.d	$t2, $a3, $a7
	slli.d	$a7, $t2, 3
	ldx.d	$a7, $a0, $a7
	bge	$a5, $a7, .LBB3_37
# %bb.48:                               # %if.then161
                                        #   in Loop: Header=BB3_44 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 3
	slli.d	$t1, $t0, 1
	addi.w	$a7, $t1, 1
	stx.d	$t2, $a3, $a6
	move	$a6, $t0
	blt	$a7, $a1, .LBB3_44
	b	.LBB3_38
	.p2align	4, , 16
.LBB3_49:                               #   in Loop: Header=BB3_51 Depth=1
	move	$t0, $a6
.LBB3_50:                               # %while.end
                                        #   in Loop: Header=BB3_51 Depth=1
	addi.w	$a5, $t0, 0
	slli.d	$a5, $a5, 3
	stx.d	$a4, $a3, $a5
.LBB3_51:                               # %for.cond1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_56 Depth 2
	addi.w	$a4, $a2, 0
	blez	$a4, .LBB3_53
# %bb.52:                               # %if.then
                                        #   in Loop: Header=BB3_51 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a3, $a4
	slli.d	$a5, $a4, 2
	ldx.w	$a5, $a0, $a5
	slli.d	$t1, $a2, 1
	addi.w	$a7, $t1, 1
	move	$t0, $a2
	bge	$a7, $a1, .LBB3_50
	b	.LBB3_55
	.p2align	4, , 16
.LBB3_53:                               # %if.else
                                        #   in Loop: Header=BB3_51 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_73
# %bb.54:                               # %if.end
                                        #   in Loop: Header=BB3_51 Depth=1
	slli.d	$a6, $a1, 3
	ldx.d	$a4, $a3, $a6
	slli.d	$a5, $a4, 2
	ld.d	$a7, $a3, 0
	ldx.w	$a5, $a0, $a5
	stx.d	$a7, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a7, $t1, 1
	move	$t0, $a2
	bge	$a7, $a1, .LBB3_50
.LBB3_55:                               # %while.body.preheader
                                        #   in Loop: Header=BB3_51 Depth=1
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_56:                               # %while.body
                                        #   Parent Loop BB3_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t1, 2
	bge	$t0, $a1, .LBB3_58
# %bb.57:                               # %land.lhs.true
                                        #   in Loop: Header=BB3_56 Depth=2
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a3, $t1
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a0, $t1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a0, $t2
	slt	$t1, $t2, $t1
	masknez	$a7, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$t0, $t0, $a7
	b	.LBB3_59
	.p2align	4, , 16
.LBB3_58:                               #   in Loop: Header=BB3_56 Depth=2
	move	$t0, $a7
.LBB3_59:                               # %if.end34
                                        #   in Loop: Header=BB3_56 Depth=2
	slli.d	$a7, $t0, 3
	ldx.d	$t2, $a3, $a7
	slli.d	$a7, $t2, 2
	ldx.w	$a7, $a0, $a7
	bge	$a5, $a7, .LBB3_49
# %bb.60:                               # %if.then40
                                        #   in Loop: Header=BB3_56 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 3
	slli.d	$t1, $t0, 1
	addi.w	$a7, $t1, 1
	stx.d	$t2, $a3, $a6
	move	$a6, $t0
	blt	$a7, $a1, .LBB3_56
	b	.LBB3_50
	.p2align	4, , 16
.LBB3_61:                               #   in Loop: Header=BB3_63 Depth=1
	move	$t0, $a6
.LBB3_62:                               # %while.end109
                                        #   in Loop: Header=BB3_63 Depth=1
	addi.w	$a5, $t0, 0
	slli.d	$a5, $a5, 3
	stx.d	$a4, $a3, $a5
.LBB3_63:                               # %for.cond52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_68 Depth 2
	addi.w	$a4, $a2, 0
	blez	$a4, .LBB3_65
# %bb.64:                               # %if.then55
                                        #   in Loop: Header=BB3_63 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a3, $a4
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$t1, $a2, 1
	addi.w	$a7, $t1, 1
	move	$t0, $a2
	bge	$a7, $a1, .LBB3_62
	b	.LBB3_67
	.p2align	4, , 16
.LBB3_65:                               # %if.else60
                                        #   in Loop: Header=BB3_63 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_73
# %bb.66:                               # %if.end65
                                        #   in Loop: Header=BB3_63 Depth=1
	slli.d	$a6, $a1, 3
	ldx.d	$a4, $a3, $a6
	slli.d	$a5, $a4, 3
	ld.d	$a7, $a3, 0
	ldx.d	$a5, $a0, $a5
	stx.d	$a7, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a7, $t1, 1
	move	$t0, $a2
	bge	$a7, $a1, .LBB3_62
.LBB3_67:                               # %while.body78.preheader
                                        #   in Loop: Header=BB3_63 Depth=1
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_68:                               # %while.body78
                                        #   Parent Loop BB3_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t1, 2
	bge	$t0, $a1, .LBB3_70
# %bb.69:                               # %land.lhs.true82
                                        #   in Loop: Header=BB3_68 Depth=2
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a3, $t1
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	slt	$t1, $t2, $t1
	masknez	$a7, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$t0, $t0, $a7
	b	.LBB3_71
	.p2align	4, , 16
.LBB3_70:                               #   in Loop: Header=BB3_68 Depth=2
	move	$t0, $a7
.LBB3_71:                               # %if.end94
                                        #   in Loop: Header=BB3_68 Depth=2
	slli.d	$a7, $t0, 3
	ldx.d	$t2, $a3, $a7
	slli.d	$a7, $t2, 3
	ldx.d	$a7, $a0, $a7
	bge	$a5, $a7, .LBB3_61
# %bb.72:                               # %if.then100
                                        #   in Loop: Header=BB3_68 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 3
	slli.d	$t1, $t0, 1
	addi.w	$a7, $t1, 1
	stx.d	$t2, $a3, $a6
	move	$a6, $t0
	blt	$a7, $a1, .LBB3_68
	b	.LBB3_62
.LBB3_73:                               # %cleanup
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	S7_Indexi8_Sort, .Lfunc_end3-S7_Indexi8_Sort
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_51-.LJTI3_0
	.word	.LBB3_63-.LJTI3_0
	.word	.LBB3_39-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_26-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_51-.LJTI3_0
	.word	.LBB3_39-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_26-.LJTI3_0
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
