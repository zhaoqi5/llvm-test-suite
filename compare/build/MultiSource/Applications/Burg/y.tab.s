	.file	"y.tab.c"
	.text
	.globl	yyparse                         # -- Begin function yyparse
	.p2align	5
	.type	yyparse,@function
yyparse:                                # @yyparse
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(yynerrs)
	st.w	$zero, $s2, %pc_lo12(yynerrs)
	pcalau12i	$s1, %pc_hi20(yyerrflag)
	st.w	$zero, $s1, %pc_lo12(yyerrflag)
	addi.w	$s6, $zero, -1
	pcalau12i	$a0, %pc_hi20(yystack.1)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a1, $a0, %pc_lo12(yystack.1)
	pcalau12i	$s5, %pc_hi20(yychar)
	st.d	$s6, $sp, 128                   # 8-byte Folded Spill
	lu32i.d	$s6, 0
	st.w	$s6, $s5, %pc_lo12(yychar)
	pcalau12i	$a0, %pc_hi20(yystack.0)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	beqz	$a1, .LBB0_97
# %bb.1:                                # %entry.if.end_crit_edge
	pcalau12i	$a0, %pc_hi20(yystack.4)
	ld.d	$a0, $a0, %pc_lo12(yystack.4)
.LBB0_2:                                # %if.end
	move	$s8, $zero
	pcalau12i	$s7, %pc_hi20(yystack.2)
	st.d	$a1, $s7, %pc_lo12(yystack.2)
	pcalau12i	$a2, %pc_hi20(yystack.5)
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(yystack.5)
	st.h	$zero, $a1, 0
	ori	$s3, $zero, 1
	lu12i.w	$a0, -66138
	ori	$a2, $a0, 3150
	lu32i.d	$a2, 371
	pcalau12i	$a0, %pc_hi20(yydefred)
	addi.d	$a0, $a0, %pc_lo12(yydefred)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(yylen)
	addi.d	$a0, $a0, %pc_lo12(yylen)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 1284
	ori	$a0, $a0, 2576
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(yyval)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(yylhs)
	addi.d	$a0, $a0, %pc_lo12(yylhs)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(yydgoto)
	addi.d	$a0, $a0, %pc_lo12(yydgoto)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(yystack.3)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1808
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 66137
	ori	$a0, $a0, 947
	lu32i.d	$a0, 1676
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a0, -33795
	ori	$a0, $a0, 1015
	lu32i.d	$a0, 1773
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$s0, $zero, 2
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
.LBB0_3:                                # %yyloop.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_23 Depth 2
	sll.d	$a0, $s3, $s8
	and	$a1, $a0, $a2
	beqz	$a1, .LBB0_7
# %bb.4:                                # %if.end4.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	and	$a1, $a0, $a1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	and	$s3, $a0, $a2
	pcalau12i	$a0, %pc_hi20(yyrindex)
	addi.d	$a2, $a0, %pc_lo12(yyrindex)
	ld.w	$a0, $s5, %pc_lo12(yychar)
	alsl.d	$s4, $s8, $a2, 1
	pcalau12i	$a2, %pc_hi20(yycheck)
	addi.d	$s7, $a2, %pc_lo12(yycheck)
	beqz	$a1, .LBB0_10
# %bb.5:                                # %if.end4.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_36
# %bb.6:                                # %if.end13.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	bnez	$s3, .LBB0_40
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_7:                                # %yyreduce.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 1
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
.LBB0_8:                                # %yyreduce
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.h	$fp, $a0, 0
	slli.d	$s7, $fp, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.h	$s4, $a0, $s7
	sll.d	$a0, $s3, $fp
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	beqz	$a0, .LBB0_32
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $zero
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_10:                               # %if.end4.us.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB0_12
# %bb.11:                               # %if.then7.us.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(yylex)
	jirl	$ra, $ra, 0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	st.w	$a0, $s5, %pc_lo12(yychar)
.LBB0_12:                               # %if.end13.us.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a1, %pc_hi20(yysindex)
	addi.d	$a1, $a1, %pc_lo12(yysindex)
	alsl.d	$s8, $s8, $a1, 1
	ld.h	$a1, $s8, 0
	add.w	$s0, $a0, $a1
	ori	$a1, $zero, 262
	bltu	$a1, $s0, .LBB0_16
# %bb.13:                               # %land.lhs.true24.us.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a1, $s0, 1
	ldx.h	$a1, $s7, $a1
	bne	$a0, $a1, .LBB0_16
.LBB0_14:                               # %if.then30.split.us
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $s7, %pc_lo12(yystack.2)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(yystack.3)
	bgeu	$s3, $a0, .LBB0_52
# %bb.15:                               # %if.then30.split.us.if.end37_crit_edge
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a4, %pc_lo12(yystack.5)
	b	.LBB0_95
.LBB0_16:                               # %if.end48.us.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	bnez	$s3, .LBB0_19
# %bb.17:                               # %land.lhs.true53.us.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.h	$a1, $s4, 0
	add.w	$a1, $a0, $a1
	ori	$a2, $zero, 262
	bltu	$a2, $a1, .LBB0_19
# %bb.18:                               # %land.lhs.true60.us.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $s7, $a2
	beq	$a0, $a2, .LBB0_39
.LBB0_19:                               # %if.end70.us.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s1, %pc_lo12(yyerrflag)
	bnez	$a0, .LBB0_21
# %bb.20:                               # %if.end73.us.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(yynerrs)
	ld.w	$a0, $s1, %pc_lo12(yyerrflag)
	addi.d	$a1, $a1, 1
	st.w	$a1, $s2, %pc_lo12(yynerrs)
.LBB0_21:                               # %yyinrecovery.us.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB0_100
# %bb.22:                               # %if.else116.us.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s5, %pc_lo12(yychar)
	ori	$fp, $zero, 1
	beqz	$a0, .LBB0_109
	.p2align	4, , 16
.LBB0_23:                               # %if.end120.us.peel
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$s6, $s5, %pc_lo12(yychar)
	pcaddu18i	$ra, %call36(yylex)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s8, 0
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	add.w	$s0, $a0, $a1
	st.w	$a0, $s5, %pc_lo12(yychar)
	ori	$a1, $zero, 262
	bltu	$a1, $s0, .LBB0_25
# %bb.24:                               # %land.lhs.true24.us
                                        #   in Loop: Header=BB0_23 Depth=2
	slli.d	$a1, $s0, 1
	ldx.h	$a1, $s7, $a1
	beq	$a0, $a1, .LBB0_14
.LBB0_25:                               # %if.end48.us
                                        #   in Loop: Header=BB0_23 Depth=2
	bnez	$s3, .LBB0_28
# %bb.26:                               # %land.lhs.true53.us
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.h	$a1, $s4, 0
	add.w	$a1, $a0, $a1
	ori	$a2, $zero, 262
	bltu	$a2, $a1, .LBB0_28
# %bb.27:                               # %land.lhs.true60.us
                                        #   in Loop: Header=BB0_23 Depth=2
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $s7, $a2
	beq	$a0, $a2, .LBB0_39
	.p2align	4, , 16
.LBB0_28:                               # %if.end70.us
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.w	$a0, $s1, %pc_lo12(yyerrflag)
	bnez	$a0, .LBB0_30
# %bb.29:                               # %if.end73.us
                                        #   in Loop: Header=BB0_23 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(yynerrs)
	ld.w	$a0, $s1, %pc_lo12(yyerrflag)
	addi.d	$a1, $a1, 1
	st.w	$a1, $s2, %pc_lo12(yynerrs)
.LBB0_30:                               # %yyinrecovery.us
                                        #   in Loop: Header=BB0_23 Depth=2
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB0_100
# %bb.31:                               # %if.else116.us
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.w	$a0, $s5, %pc_lo12(yychar)
	bnez	$a0, .LBB0_23
	b	.LBB0_109
.LBB0_32:                               # %if.then125
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s8, %pc_lo12(yystack.5)
	sub.d	$a1, $s3, $s4
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
.LBB0_33:                               # %if.end129
                                        #   in Loop: Header=BB0_3 Depth=1
	bstrpick.d	$s3, $fp, 15, 0
	addi.d	$a1, $s3, -2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(yyval)
	ori	$a0, $zero, 22
	bltu	$a0, $a1, .LBB0_71
# %bb.34:                               # %if.end129
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_35:                               # %sw.bb133
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(yyval)
	b	.LBB0_71
.LBB0_36:                               # %if.then7.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(yylex)
	jirl	$ra, $ra, 0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	st.w	$a0, $s5, %pc_lo12(yychar)
	bnez	$s3, .LBB0_40
.LBB0_37:                               # %land.lhs.true53.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.h	$a1, $s4, 0
	add.w	$a1, $a0, $a1
	ori	$a2, $zero, 262
	bltu	$a2, $a1, .LBB0_40
# %bb.38:                               # %land.lhs.true60.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $s7, $a2
	bne	$a0, $a2, .LBB0_40
.LBB0_39:                               # %if.then66
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a0, %pc_hi20(yytable)
	addi.d	$a0, $a0, %pc_lo12(yytable)
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	ori	$s3, $zero, 1
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_40:                               # %if.end70.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s1, %pc_lo12(yyerrflag)
	bnez	$a0, .LBB0_42
# %bb.41:                               # %if.end73.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(yynerrs)
	ld.w	$a0, $s1, %pc_lo12(yyerrflag)
	addi.d	$a1, $a1, 1
	st.w	$a1, $s2, %pc_lo12(yynerrs)
.LBB0_42:                               # %yyinrecovery.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB0_100
# %bb.43:                               # %if.else116.peel
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s5, %pc_lo12(yychar)
	ori	$fp, $zero, 1
	beqz	$a0, .LBB0_109
	.p2align	4, , 16
.LBB0_44:                               # %if.end120.peel
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$s6, $s5, %pc_lo12(yychar)
	pcaddu18i	$ra, %call36(yylex)
	jirl	$ra, $ra, 0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	st.w	$a0, $s5, %pc_lo12(yychar)
	bnez	$s3, .LBB0_47
# %bb.45:                               # %land.lhs.true53
                                        #   in Loop: Header=BB0_44 Depth=2
	ld.h	$a1, $s4, 0
	add.w	$a1, $a0, $a1
	ori	$a2, $zero, 262
	bltu	$a2, $a1, .LBB0_47
# %bb.46:                               # %land.lhs.true60
                                        #   in Loop: Header=BB0_44 Depth=2
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $s7, $a2
	beq	$a0, $a2, .LBB0_39
	.p2align	4, , 16
.LBB0_47:                               # %if.end70
                                        #   in Loop: Header=BB0_44 Depth=2
	ld.w	$a0, $s1, %pc_lo12(yyerrflag)
	bnez	$a0, .LBB0_49
# %bb.48:                               # %if.end73
                                        #   in Loop: Header=BB0_44 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(yynerrs)
	ld.w	$a0, $s1, %pc_lo12(yyerrflag)
	addi.d	$a1, $a1, 1
	st.w	$a1, $s2, %pc_lo12(yynerrs)
.LBB0_49:                               # %yyinrecovery
                                        #   in Loop: Header=BB0_44 Depth=2
	bge	$s0, $a0, .LBB0_100
# %bb.50:                               # %if.else116
                                        #   in Loop: Header=BB0_44 Depth=2
	ld.w	$a0, $s5, %pc_lo12(yychar)
	bnez	$a0, .LBB0_44
	b	.LBB0_109
.LBB0_51:                               # %sw.bb134
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $s8, %pc_lo12(yystack.5)
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, -8
	pcaddu18i	$ra, %call36(newList)
	jirl	$ra, $ra, 0
	b	.LBB0_70
.LBB0_52:                               # %land.lhs.true33
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(yystack.0)
	beqz	$a0, .LBB0_91
# %bb.53:                               # %if.else.i41
                                        #   in Loop: Header=BB0_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 4
	ori	$a2, $zero, 624
	bltu	$a2, $a1, .LBB0_108
# %bb.54:                               # %if.else3.i43
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.w	$a0, $a0, 1
	srli.d	$a1, $a0, 4
	sltui	$a1, $a1, 625
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s4, $a0, $a2
	b	.LBB0_92
.LBB0_55:                               # %sw.bb195
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $s8, %pc_lo12(yystack.5)
	ld.w	$a0, $a1, -8
	ld.d	$a1, $a1, 0
	b	.LBB0_64
.LBB0_56:                               # %sw.bb164
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a3, $s8, %pc_lo12(yystack.5)
	ld.d	$a0, $a3, -48
	ld.d	$a1, $a3, -32
	ld.w	$a2, $a3, -16
	ld.d	$a3, $a3, -8
	pcaddu18i	$ra, %call36(newRuleAST)
	jirl	$ra, $ra, 0
	b	.LBB0_70
.LBB0_57:                               # %sw.bb143
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s8, %pc_lo12(yystack.5)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$zero, $a1, %pc_lo12(yyval)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(doStart)
	jirl	$ra, $ra, 0
	b	.LBB0_71
.LBB0_58:                               # %sw.bb138
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s8, %pc_lo12(yystack.5)
	ld.d	$a1, $a0, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(newArity)
	jirl	$ra, $ra, 0
	b	.LBB0_70
.LBB0_59:                               # %sw.bb155
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $s8, %pc_lo12(yystack.5)
	ld.d	$a0, $a1, -16
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(newBinding)
	jirl	$ra, $ra, 0
	b	.LBB0_70
.LBB0_60:                               # %sw.bb
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(yyfinished)
	jirl	$ra, $ra, 0
	b	.LBB0_71
.LBB0_61:                               # %sw.bb130
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $s8, %pc_lo12(yystack.5)
	ld.d	$a0, $a1, -16
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(doSpec)
	jirl	$ra, $ra, 0
	b	.LBB0_71
.LBB0_62:                               # %sw.bb170
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s8, %pc_lo12(yystack.5)
	ld.d	$a0, $a0, 0
	move	$a1, $zero
	b	.LBB0_69
.LBB0_63:                               # %sw.bb186
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $s8, %pc_lo12(yystack.5)
	ld.w	$a0, $a1, -16
	ld.d	$a1, $a1, -8
.LBB0_64:                               # %sw.epilog
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(newIntList)
	jirl	$ra, $ra, 0
	b	.LBB0_70
.LBB0_65:                               # %sw.bb141
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s8, %pc_lo12(yystack.5)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$zero, $a1, %pc_lo12(yyval)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(doGram)
	jirl	$ra, $ra, 0
	b	.LBB0_71
.LBB0_66:                               # %sw.bb173
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s8, %pc_lo12(yystack.5)
	ld.d	$s0, $a0, -24
	ld.d	$a0, $a0, -8
	move	$a1, $zero
	b	.LBB0_68
.LBB0_67:                               # %sw.bb178
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s8, %pc_lo12(yystack.5)
	ld.d	$s0, $a0, -40
	ld.d	$a1, $a0, -24
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a0, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(newList)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
.LBB0_68:                               # %sw.epilog
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(newList)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB0_69:                               # %sw.epilog
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(newPatternAST)
	jirl	$ra, $ra, 0
.LBB0_70:                               # %sw.epilog
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(yyval)
.LBB0_71:                               # %sw.epilog
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a2, %pc_lo12(yystack.2)
	slli.d	$a1, $s4, 1
	sub.d	$s0, $a0, $a1
	ld.d	$a0, $s8, %pc_lo12(yystack.5)
	st.d	$s0, $a2, %pc_lo12(yystack.2)
	ld.hu	$a1, $s0, 0
	slli.d	$a2, $s4, 3
	sub.d	$a0, $a0, $a2
	addi.d	$a2, $s3, -1
	bstrpick.d	$a2, $a2, 15, 0
	st.d	$a0, $s8, %pc_lo12(yystack.5)
	ori	$a3, $zero, 1
	bltu	$a3, $a2, .LBB0_75
# %bb.72:                               # %sw.epilog
                                        #   in Loop: Header=BB0_3 Depth=1
	bnez	$a1, .LBB0_75
# %bb.73:                               # %if.then211
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $s0, 2
	ori	$s3, $zero, 1
	st.h	$s3, $s0, 2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(yyval)
	ld.w	$a1, $s5, %pc_lo12(yychar)
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	st.d	$a2, $s7, %pc_lo12(yystack.2)
	addi.d	$a2, $a0, 8
	st.d	$a2, $s8, %pc_lo12(yystack.5)
	st.d	$a3, $a0, 8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_85
# %bb.74:                               # %if.end222
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$s8, $zero, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ori	$s0, $zero, 2
	bnez	$a1, .LBB0_3
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_75:                               # %if.end227
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.h	$a2, $a2, $s7
	bstrpick.d	$a3, $s3, 15, 0
	ori	$a4, $zero, 21
	bltu	$a4, $a3, .LBB0_77
# %bb.76:                               # %if.end227
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a3, $fp, -20
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bltu	$a3, $a4, .LBB0_80
.LBB0_77:                               # %land.lhs.true232
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a3, $a2, 1
	pcalau12i	$a4, %pc_hi20(yygindex)
	addi.d	$a4, $a4, %pc_lo12(yygindex)
	ldx.h	$a3, $a4, $a3
	ext.w.h	$a4, $a1
	add.d	$a3, $a3, $a4
	ori	$a4, $zero, 262
	bltu	$a4, $a3, .LBB0_80
# %bb.78:                               # %land.lhs.true239
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a4, $a3, 1
	pcalau12i	$a5, %pc_hi20(yycheck)
	addi.d	$a5, $a5, %pc_lo12(yycheck)
	ldx.hu	$a4, $a5, $a4
	bne	$a4, $a1, .LBB0_80
# %bb.79:                               # %if.then245
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a1, %pc_hi20(yytable)
	addi.d	$a1, $a1, %pc_lo12(yytable)
	alsl.d	$a1, $a3, $a1, 1
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_80:                               # %if.else249
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 1
.LBB0_81:                               # %if.end253
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ori	$s3, $zero, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(yystack.3)
	ld.h	$s8, $a1, 0
	bltu	$s0, $a2, .LBB0_90
# %bb.82:                               # %land.lhs.true256
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(yystack.0)
	beqz	$a0, .LBB0_86
# %bb.83:                               # %if.else.i69
                                        #   in Loop: Header=BB0_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 4
	ori	$a2, $zero, 624
	bltu	$a2, $a1, .LBB0_108
# %bb.84:                               # %if.else3.i71
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.w	$a0, $a0, 1
	srli.d	$a1, $a0, 4
	sltui	$a1, $a1, 625
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s3, $a0, $a2
	b	.LBB0_87
.LBB0_85:                               # %if.then216
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(yylex)
	jirl	$ra, $ra, 0
	srai.d	$a1, $a0, 63
	andn	$a1, $a0, $a1
	st.w	$a1, $s5, %pc_lo12(yychar)
	ori	$s8, $zero, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ori	$s0, $zero, 2
	bnez	$a1, .LBB0_3
	b	.LBB0_110
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	ori	$s3, $zero, 200
.LBB0_87:                               # %if.end7.i74
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(yystack.1)
	slli.d	$a1, $s3, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_108
# %bb.88:                               # %if.end14.i80
                                        #   in Loop: Header=BB0_3 Depth=1
	sub.d	$a1, $s0, $fp
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(yystack.1)
	slli.d	$a1, $a1, 31
	srai.d	$fp, $a1, 32
	pcalau12i	$s0, %pc_hi20(yystack.4)
	ld.d	$a2, $s0, %pc_lo12(yystack.4)
	alsl.d	$a0, $fp, $a0, 1
	st.d	$a0, $s7, %pc_lo12(yystack.2)
	slli.d	$a1, $s3, 3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_108
# %bb.89:                               # %yygrowstack.exit95
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$a0, $s0, %pc_lo12(yystack.4)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(yystack.1)
	alsl.d	$a0, $fp, $a0, 3
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$s3, $a2, %pc_lo12(yystack.0)
	ld.d	$s0, $s7, %pc_lo12(yystack.2)
	alsl.d	$a1, $s3, $a1, 1
	addi.d	$a1, $a1, -2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(yystack.3)
	ori	$s3, $zero, 1
.LBB0_90:                               # %if.end260
                                        #   in Loop: Header=BB0_3 Depth=1
	bstrpick.d	$a1, $s8, 15, 0
	addi.d	$a2, $s0, 2
	st.h	$a1, $s0, 2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(yyval)
	st.d	$a2, $s7, %pc_lo12(yystack.2)
	addi.d	$a2, $a0, 8
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $a3, %pc_lo12(yystack.5)
	st.d	$a1, $a0, 8
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ori	$s0, $zero, 2
	b	.LBB0_3
.LBB0_91:                               #   in Loop: Header=BB0_3 Depth=1
	ori	$s4, $zero, 200
.LBB0_92:                               # %if.end7.i46
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(yystack.1)
	slli.d	$a1, $s4, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_108
# %bb.93:                               # %if.end14.i52
                                        #   in Loop: Header=BB0_3 Depth=1
	sub.d	$a1, $s3, $fp
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(yystack.1)
	slli.d	$a1, $a1, 31
	srai.d	$fp, $a1, 32
	pcalau12i	$s3, %pc_hi20(yystack.4)
	ld.d	$a2, $s3, %pc_lo12(yystack.4)
	alsl.d	$a0, $fp, $a0, 1
	st.d	$a0, $s7, %pc_lo12(yystack.2)
	slli.d	$a1, $s4, 3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_108
# %bb.94:                               # %yygrowstack.exit67
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$a0, $s3, %pc_lo12(yystack.4)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(yystack.1)
	alsl.d	$a0, $fp, $a0, 3
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$s4, $a2, %pc_lo12(yystack.0)
	ld.d	$s3, $s7, %pc_lo12(yystack.2)
	alsl.d	$a1, $s4, $a1, 1
	addi.d	$a1, $a1, -2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(yystack.3)
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
.LBB0_95:                               # %if.end37
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a1, $s0, 1
	pcalau12i	$a2, %pc_hi20(yytable)
	addi.d	$a2, $a2, %pc_lo12(yytable)
	ldx.h	$s8, $a2, $a1
	addi.d	$a1, $s3, 2
	st.d	$a1, $s7, %pc_lo12(yystack.2)
	st.h	$s8, $s3, 2
	pcalau12i	$a1, %pc_hi20(yylval)
	ld.d	$a2, $a1, %pc_lo12(yylval)
	ld.w	$a1, $s1, %pc_lo12(yyerrflag)
	addi.d	$a3, $a0, 8
	st.d	$a3, $a4, %pc_lo12(yystack.5)
	st.d	$a2, $a0, 8
	st.w	$s6, $s5, %pc_lo12(yychar)
	ori	$s3, $zero, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ori	$s0, $zero, 2
	blt	$a1, $s3, .LBB0_3
# %bb.96:                               # %if.then46
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a0, $a1, -1
	st.w	$a0, $s1, %pc_lo12(yyerrflag)
	b	.LBB0_3
.LBB0_97:                               # %land.lhs.true
	ld.w	$a0, $a0, %pc_lo12(yystack.0)
	beqz	$a0, .LBB0_104
# %bb.98:                               # %if.else.i
	bstrpick.d	$a1, $a0, 31, 4
	ori	$a2, $zero, 624
	bltu	$a2, $a1, .LBB0_108
# %bb.99:                               # %if.else3.i
	slli.w	$a0, $a0, 1
	srli.d	$a1, $a0, 4
	sltui	$a1, $a1, 625
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1808
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$fp, $a0, $a2
	b	.LBB0_105
.LBB0_100:                              # %if.then76
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(yystack.1)
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a3, %pc_lo12(yystack.2)
	ori	$a2, $zero, 3
	st.w	$a2, $s1, %pc_lo12(yyerrflag)
	ori	$fp, $zero, 1
	bgeu	$a1, $a0, .LBB0_109
# %bb.101:                              # %if.end112.preheader
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a4, %pc_lo12(yystack.5)
	.p2align	4, , 16
.LBB0_102:                              # %if.end112
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a0, -2
	addi.d	$a2, $a2, -8
	bltu	$a1, $a0, .LBB0_102
# %bb.103:                              # %for.cond.cleanup.loopexit_crit_edge
	st.d	$a0, $a3, %pc_lo12(yystack.2)
	st.d	$a2, $a4, %pc_lo12(yystack.5)
	b	.LBB0_109
.LBB0_104:
	ori	$fp, $zero, 200
.LBB0_105:                              # %if.end7.i
	pcalau12i	$s0, %pc_hi20(yystack.2)
	ld.d	$s3, $s0, %pc_lo12(yystack.2)
	slli.d	$a0, $fp, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_108
# %bb.106:                              # %if.end14.i
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(yystack.1)
	slli.d	$a1, $s3, 31
	srai.d	$a1, $a1, 32
	pcalau12i	$s3, %pc_hi20(yystack.4)
	ld.d	$a2, $s3, %pc_lo12(yystack.4)
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a0, $s0, %pc_lo12(yystack.2)
	slli.d	$a1, $fp, 3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_108
# %bb.107:                              # %yygrowstack.exit
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(yystack.1)
	st.d	$a0, $s3, %pc_lo12(yystack.4)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$fp, $a2, %pc_lo12(yystack.0)
	alsl.d	$a2, $fp, $a1, 1
	addi.d	$a2, $a2, -2
	pcalau12i	$a3, %pc_hi20(yystack.3)
	st.d	$a2, $a3, %pc_lo12(yystack.3)
	b	.LBB0_2
.LBB0_108:                              # %yyoverflow
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
.LBB0_109:                              # %cleanup
	move	$a0, $fp
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB0_110:
	move	$fp, $zero
	b	.LBB0_109
.Lfunc_end0:
	.size	yyparse, .Lfunc_end0-yyparse
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_61-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
	.word	.LBB0_58-.LJTI0_0
	.word	.LBB0_65-.LJTI0_0
	.word	.LBB0_57-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
	.word	.LBB0_59-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
	.word	.LBB0_56-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_67-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_63-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_55-.LJTI0_0
	.word	.LBB0_55-.LJTI0_0
                                        # -- End function
	.type	rcsid_gram,@object              # @rcsid_gram
	.data
	.globl	rcsid_gram
rcsid_gram:
	.asciz	"$Id$"
	.size	rcsid_gram, 5

	.type	yynerrs,@object                 # @yynerrs
	.bss
	.globl	yynerrs
	.p2align	2, 0x0
yynerrs:
	.word	0                               # 0x0
	.size	yynerrs, 4

	.type	yyerrflag,@object               # @yyerrflag
	.globl	yyerrflag
	.p2align	2, 0x0
yyerrflag:
	.word	0                               # 0x0
	.size	yyerrflag, 4

	.type	yychar,@object                  # @yychar
	.globl	yychar
	.p2align	2, 0x0
yychar:
	.word	0                               # 0x0
	.size	yychar, 4

	.type	yystack.0,@object               # @yystack.0
	.local	yystack.0
	.comm	yystack.0,4,8
	.type	yystack.1,@object               # @yystack.1
	.local	yystack.1
	.comm	yystack.1,8,8
	.type	yystack.2,@object               # @yystack.2
	.local	yystack.2
	.comm	yystack.2,8,8
	.type	yystack.3,@object               # @yystack.3
	.local	yystack.3
	.comm	yystack.3,8,8
	.type	yystack.4,@object               # @yystack.4
	.local	yystack.4
	.comm	yystack.4,8,8
	.type	yystack.5,@object               # @yystack.5
	.local	yystack.5
	.comm	yystack.5,8,8
	.type	yydefred,@object                # @yydefred
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
yydefred:
	.half	4                               # 0x4
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	11                              # 0xb
	.half	9                               # 0x9
	.half	0                               # 0x0
	.half	14                              # 0xe
	.half	5                               # 0x5
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	12                              # 0xc
	.half	10                              # 0xa
	.half	0                               # 0x0
	.half	15                              # 0xf
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	13                              # 0xd
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	18                              # 0x12
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	16                              # 0x10
	.half	19                              # 0x13
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	24                              # 0x18
	.half	0                               # 0x0
	.half	21                              # 0x15
	.half	23                              # 0x17
	.size	yydefred, 86

	.type	yysindex,@object                # @yysindex
	.p2align	1, 0x0
yysindex:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65289                           # 0xff09
	.half	65284                           # 0xff04
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65292                           # 0xff0c
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65294                           # 0xff0e
	.half	65300                           # 0xff14
	.half	0                               # 0x0
	.half	65302                           # 0xff16
	.half	65495                           # 0xffd7
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65508                           # 0xffe4
	.half	0                               # 0x0
	.half	65305                           # 0xff19
	.half	65306                           # 0xff1a
	.half	0                               # 0x0
	.half	65524                           # 0xfff4
	.half	65507                           # 0xffe3
	.half	65306                           # 0xff1a
	.half	65308                           # 0xff1c
	.half	65499                           # 0xffdb
	.half	65531                           # 0xfffb
	.half	0                               # 0x0
	.half	65306                           # 0xff1a
	.half	65310                           # 0xff1e
	.half	65514                           # 0xffea
	.half	65533                           # 0xfffd
	.half	65492                           # 0xffd4
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65492                           # 0xffd4
	.half	65313                           # 0xff21
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65492                           # 0xffd4
	.half	0                               # 0x0
	.half	0                               # 0x0
	.size	yysindex, 86

	.type	yycheck,@object                 # @yycheck
	.p2align	1, 0x0
yycheck:
	.half	44                              # 0x2c
	.half	0                               # 0x0
	.half	41                              # 0x29
	.half	24                              # 0x18
	.half	41                              # 0x29
	.half	44                              # 0x2c
	.half	36                              # 0x24
	.half	44                              # 0x2c
	.half	29                              # 0x1d
	.half	261                             # 0x105
	.half	40                              # 0x28
	.half	258                             # 0x102
	.half	259                             # 0x103
	.half	260                             # 0x104
	.half	261                             # 0x105
	.half	258                             # 0x102
	.half	259                             # 0x103
	.half	260                             # 0x104
	.half	261                             # 0x105
	.half	263                             # 0x107
	.half	61                              # 0x3d
	.half	263                             # 0x107
	.half	61                              # 0x3d
	.half	258                             # 0x102
	.half	259                             # 0x103
	.half	260                             # 0x104
	.half	261                             # 0x105
	.half	263                             # 0x107
	.half	40                              # 0x28
	.half	263                             # 0x107
	.half	58                              # 0x3a
	.half	262                             # 0x106
	.half	61                              # 0x3d
	.half	263                             # 0x107
	.half	262                             # 0x106
	.half	40                              # 0x28
	.half	262                             # 0x106
	.half	59                              # 0x3b
	.half	41                              # 0x29
	.half	262                             # 0x106
	.half	41                              # 0x29
	.half	0                               # 0x0
	.half	59                              # 0x3b
	.half	41                              # 0x29
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	262                             # 0x106
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	261                             # 0x105
	.size	yycheck, 526

	.type	yytable,@object                 # @yytable
	.p2align	1, 0x0
yytable:
	.half	37                              # 0x25
	.half	3                               # 0x3
	.half	17                              # 0x11
	.half	26                              # 0x1a
	.half	28                              # 0x1c
	.half	17                              # 0x11
	.half	39                              # 0x27
	.half	29                              # 0x1d
	.half	32                              # 0x20
	.half	9                               # 0x9
	.half	42                              # 0x2a
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	6                               # 0x6
	.half	6                               # 0x6
	.half	6                               # 0x6
	.half	6                               # 0x6
	.half	12                              # 0xc
	.half	19                              # 0x13
	.half	14                              # 0xe
	.half	17                              # 0x11
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	16                              # 0x10
	.half	24                              # 0x18
	.half	17                              # 0x11
	.half	20                              # 0x14
	.half	21                              # 0x15
	.half	25                              # 0x19
	.half	22                              # 0x16
	.half	27                              # 0x1b
	.half	30                              # 0x1e
	.half	33                              # 0x21
	.half	34                              # 0x22
	.half	35                              # 0x23
	.half	40                              # 0x28
	.half	41                              # 0x29
	.half	1                               # 0x1
	.half	20                              # 0x14
	.half	22                              # 0x16
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	36                              # 0x24
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	3                               # 0x3
	.size	yytable, 526

	.type	yylval,@object                  # @yylval
	.bss
	.globl	yylval
	.p2align	3, 0x0
yylval:
	.space	8
	.size	yylval, 8

	.type	yyrindex,@object                # @yyrindex
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
yyrindex:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	41                              # 0x29
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65293                           # 0xff0d
	.half	65301                           # 0xff15
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65497                           # 0xffd9
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65519                           # 0xffef
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.size	yyrindex, 86

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"syntax error"
	.size	.L.str, 13

	.type	yylen,@object                   # @yylen
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
yylen:
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	7                               # 0x7
	.half	1                               # 0x1
	.half	4                               # 0x4
	.half	6                               # 0x6
	.half	0                               # 0x0
	.half	4                               # 0x4
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	2                               # 0x2
	.size	yylen, 50

	.type	yyval,@object                   # @yyval
	.bss
	.globl	yyval
	.p2align	3, 0x0
yyval:
	.space	8
	.size	yyval, 8

	.type	yylhs,@object                   # @yylhs
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
yylhs:
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	11                              # 0xb
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	10                              # 0xa
	.half	10                              # 0xa
	.half	9                               # 0x9
	.half	9                               # 0x9
	.half	2                               # 0x2
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	6                               # 0x6
	.half	6                               # 0x6
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	4                               # 0x4
	.half	4                               # 0x4
	.size	yylhs, 50

	.type	yygindex,@object                # @yygindex
	.p2align	1, 0x0
yygindex:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65506                           # 0xffe2
	.half	0                               # 0x0
	.half	65515                           # 0xffeb
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.size	yygindex, 24

	.type	yydgoto,@object                 # @yydgoto
	.p2align	1, 0x0
yydgoto:
	.half	1                               # 0x1
	.half	8                               # 0x8
	.half	15                              # 0xf
	.half	31                              # 0x1f
	.half	38                              # 0x26
	.half	18                              # 0x12
	.half	23                              # 0x17
	.half	2                               # 0x2
	.half	13                              # 0xd
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	3                               # 0x3
	.size	yydgoto, 24

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"yacc stack overflow"
	.size	.L.str.1, 20

	.type	yydebug,@object                 # @yydebug
	.bss
	.globl	yydebug
	.p2align	2, 0x0
yydebug:
	.word	0                               # 0x0
	.size	yydebug, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
