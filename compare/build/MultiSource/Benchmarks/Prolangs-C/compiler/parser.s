	.file	"parser.c"
	.text
	.globl	term                            # -- Begin function term
	.p2align	5
	.type	term,@function
term:                                   # @term
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(factor)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(ErrorFlag)
	ld.w	$a1, $s1, %pc_lo12(ErrorFlag)
	move	$fp, $a0
	addi.w	$a0, $zero, -99
	bnez	$a1, .LBB0_17
# %bb.1:                                # %while.cond.preheader
	move	$s2, $a0
	pcalau12i	$s3, %pc_hi20(lookahead)
	ori	$s4, $zero, 47
	ori	$s6, $zero, 2033
	ori	$s7, $zero, 2036
	ori	$s8, $zero, 2034
	movgr2fr.w	$fs0, $zero
	ori	$s5, $zero, 42
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_2:                                # %if.then10
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$fp, .LBB0_13
# %bb.3:                                # %if.then12
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $s0, -42
	sltui	$a0, $a0, 1
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
.LBB0_4:                                # %if.end35
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$fp, $zero, 1
.LBB0_5:                                # %if.end35
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
.LBB0_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s0, $s3, %pc_lo12(lookahead)
	beq	$s0, $s4, .LBB0_8
# %bb.7:                                # %while.cond
                                        #   in Loop: Header=BB0_6 Depth=1
	bne	$s0, $s5, .LBB0_16
.LBB0_8:                                # %while.body
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB0_15
# %bb.9:                                # %if.end4
                                        #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(factor)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB0_15
# %bb.10:                               # %if.end8
                                        #   in Loop: Header=BB0_6 Depth=1
	beq	$fp, $a0, .LBB0_2
# %bb.11:                               # %if.else22
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $s0, -42
	beqz	$fp, .LBB0_14
# %bb.12:                               # %if.then24
                                        #   in Loop: Header=BB0_6 Depth=1
	sltui	$fp, $a0, 1
	ori	$a0, $zero, 2003
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	masknez	$a0, $s7, $fp
	maskeqz	$a1, $s8, $fp
	or	$a0, $a1, $a0
	b	.LBB0_4
.LBB0_13:                               # %if.else16
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$fp, $zero
	addi.d	$a0, $s0, -42
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 2035
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
	b	.LBB0_5
.LBB0_14:                               # %if.else29
                                        #   in Loop: Header=BB0_6 Depth=1
	sltui	$s0, $a0, 1
	ori	$a0, $zero, 256
	ori	$a1, $zero, 1
	ori	$fp, $zero, 1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2028
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2003
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	ori	$a1, $zero, 1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2023
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	masknez	$a0, $s7, $s0
	maskeqz	$a1, $s8, $s0
	or	$a0, $a1, $a0
	b	.LBB0_5
.LBB0_15:
	move	$a0, $s2
	b	.LBB0_17
.LBB0_16:                               # %while.end
	pcalau12i	$a0, %pc_hi20(FloatFlag)
	ld.w	$a0, $a0, %pc_lo12(FloatFlag)
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
.LBB0_17:                               # %cleanup
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end0:
	.size	term, .Lfunc_end0-term
                                        # -- End function
	.globl	factor                          # -- Begin function factor
	.p2align	5
	.type	factor,@function
factor:                                 # @factor
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(lookahead)
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 258
	bge	$a1, $a0, .LBB1_6
# %bb.1:                                # %entry
	addi.d	$a1, $a0, -2001
	ori	$a2, $zero, 45
	bltu	$a2, $a1, .LBB1_29
# %bb.2:                                # %entry
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_3:                                # %sw.bb40
	pcalau12i	$s0, %pc_hi20(tokenval)
	ld.w	$a1, $s0, %pc_lo12(tokenval)
	pcalau12i	$fp, %pc_hi20(ftokenval)
	fld.s	$fa0, $fp, %pc_lo12(ftokenval)
	ori	$a0, $zero, 2001
	ori	$s2, $zero, 2001
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	bne	$a0, $s2, .LBB1_77
# %bb.4:                                # %if.then.i51
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	ld.w	$a1, $s0, %pc_lo12(tokenval)
	st.w	$s2, $a0, %pc_lo12(PreviousLookahead)
	fld.s	$fa0, $fp, %pc_lo12(ftokenval)
	pcalau12i	$a0, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a0, %pc_lo12(PreviousTokenval)
	pcalau12i	$a0, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a0, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s2, %pc_hi20(NextLookahead)
	ld.w	$a0, $s2, %pc_lo12(NextLookahead)
	pcalau12i	$a1, %pc_hi20(NextTokenval)
	ld.w	$a1, $a1, %pc_lo12(NextTokenval)
	pcalau12i	$a2, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a2, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s0, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $fp, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB1_81
# %bb.5:                                # %if.then2.i53
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, %pc_lo12(NextLookahead)
	b	.LBB1_81
.LBB1_6:                                # %entry
	ori	$a1, $zero, 40
	beq	$a0, $a1, .LBB1_12
# %bb.7:                                # %entry
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB1_22
# %bb.8:                                # %entry
	ori	$s0, $zero, 256
	bne	$a0, $s0, .LBB1_36
# %bb.9:                                # %sw.bb36
	pcalau12i	$fp, %pc_hi20(tokenval)
	ld.w	$a1, $fp, %pc_lo12(tokenval)
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 256
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	bne	$a0, $s0, .LBB1_72
# %bb.10:                               # %if.then.i37
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	ori	$a1, $zero, 256
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	ld.w	$a0, $fp, %pc_lo12(tokenval)
	pcalau12i	$a1, %pc_hi20(ftokenval)
	fld.s	$fa0, $a1, %pc_lo12(ftokenval)
	pcalau12i	$a2, %pc_hi20(PreviousTokenval)
	st.w	$a0, $a2, %pc_lo12(PreviousTokenval)
	pcalau12i	$a0, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a0, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s0, %pc_hi20(NextLookahead)
	ld.w	$a0, $s0, %pc_lo12(NextLookahead)
	pcalau12i	$a2, %pc_hi20(NextTokenval)
	ld.w	$a2, $a2, %pc_lo12(NextTokenval)
	pcalau12i	$a3, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a3, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a2, $fp, %pc_lo12(tokenval)
	ori	$a2, $zero, 260
	fst.s	$fa0, $a1, %pc_lo12(ftokenval)
	beq	$a0, $a2, .LBB1_76
# %bb.11:                               # %if.then2.i39
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
	b	.LBB1_76
.LBB1_12:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$fp, %pc_hi20(NextLookahead)
	ld.w	$a1, $fp, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s1, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB1_14
# %bb.13:                               # %if.then2.i
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, %pc_lo12(NextLookahead)
.LBB1_14:                               # %match.exit
	pcalau12i	$fp, %pc_hi20(ErrorFlag)
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	addi.w	$a0, $zero, -99
	bnez	$a1, .LBB1_136
# %bb.15:                               # %if.end
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	move	$s0, $a0
	ori	$a2, $zero, 2003
	beq	$a1, $a2, .LBB1_129
# %bb.16:                               # %if.end
	ori	$a0, $zero, 2002
	bne	$a1, $a0, .LBB1_134
# %bb.17:                               # %sw.bb1
	ori	$a0, $zero, 2002
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_135
# %bb.18:                               # %if.end4
	ori	$a0, $zero, 41
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_135
# %bb.19:                               # %if.end7
	pcaddu18i	$ra, %call36(factor)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, %pc_lo12(ErrorFlag)
	move	$a1, $a0
	move	$a0, $s0
	bnez	$a2, .LBB1_136
# %bb.20:                               # %if.end10
	beqz	$a1, .LBB1_37
# %bb.21:                               # %if.then12
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2002
	b	.LBB1_146
.LBB1_22:                               # %if.then.i93
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$fp, %pc_hi20(NextLookahead)
	ld.w	$a1, $fp, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s1, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB1_24
# %bb.23:                               # %if.then2.i95
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, %pc_lo12(NextLookahead)
.LBB1_24:                               # %match.exit97
	pcalau12i	$fp, %pc_hi20(ErrorFlag)
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	addi.w	$a0, $zero, -99
	bnez	$a1, .LBB1_136
# %bb.25:                               # %if.end158
	move	$s0, $a0
	pcaddu18i	$ra, %call36(factor)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	move	$fp, $a0
	move	$a0, $s0
	bnez	$a1, .LBB1_136
# %bb.26:                               # %if.end162
	movgr2fr.w	$fa0, $zero
	beqz	$fp, .LBB1_145
# %bb.27:                               # %if.then164
	ori	$a0, $zero, 2039
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
.LBB1_28:                               # %cleanup
	move	$a0, $fp
	b	.LBB1_136
.LBB1_29:                               # %entry
	ori	$a1, $zero, 259
	bne	$a0, $a1, .LBB1_36
# %bb.30:                               # %sw.bb44
	pcalau12i	$s2, %pc_hi20(NextLookahead)
	ld.w	$a0, $s2, %pc_lo12(NextLookahead)
	pcalau12i	$fp, %pc_hi20(LocalIndex)
	ld.w	$s0, $fp, %pc_lo12(LocalIndex)
	ori	$s3, $zero, 40
	bne	$a0, $s3, .LBB1_82
# %bb.31:                               # %match.exit69
	pcalau12i	$a0, %pc_hi20(GlobalIndex)
	ld.w	$fp, $a0, %pc_lo12(GlobalIndex)
	pcalau12i	$a0, %pc_hi20(lexbuf)
	addi.d	$a1, $a0, %pc_lo12(lexbuf)
	addi.d	$a0, $sp, 18
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	ori	$a1, $zero, 259
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(ftokenval)
	fld.s	$fa0, $a0, %pc_lo12(ftokenval)
	pcalau12i	$a1, %pc_hi20(tokenval)
	ld.w	$a2, $a1, %pc_lo12(tokenval)
	pcalau12i	$a3, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a3, %pc_lo12(PreviousFtokenval)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	pcalau12i	$a4, %pc_hi20(PreviousTokenval)
	st.w	$a2, $a4, %pc_lo12(PreviousTokenval)
	st.w	$s3, $s1, %pc_lo12(lookahead)
	st.w	$a3, $a1, %pc_lo12(tokenval)
	fst.s	$fa0, $a0, %pc_lo12(ftokenval)
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(ErrorFlag)
	ld.w	$a1, $s3, %pc_lo12(ErrorFlag)
	st.w	$a0, $s2, %pc_lo12(NextLookahead)
	addi.w	$a0, $zero, -99
	bnez	$a1, .LBB1_136
# %bb.32:                               # %if.end49
	move	$s4, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_35
# %bb.33:                               # %if.end52
	pcaddu18i	$ra, %call36(ExprList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_35
# %bb.34:                               # %if.end55
	ori	$a0, $zero, 41
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB1_160
.LBB1_35:
	move	$a0, $s4
	b	.LBB1_136
.LBB1_36:                               # %sw.default229
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_37:                               # %cleanup
	move	$a0, $zero
	b	.LBB1_136
.LBB1_38:                               # %if.then.i163
	pcalau12i	$s4, %pc_hi20(PreviousLookahead)
	ori	$a0, $zero, 2045
	st.w	$a0, $s4, %pc_lo12(PreviousLookahead)
	pcalau12i	$s2, %pc_hi20(tokenval)
	ld.w	$a0, $s2, %pc_lo12(tokenval)
	pcalau12i	$s3, %pc_hi20(ftokenval)
	fld.s	$fa0, $s3, %pc_lo12(ftokenval)
	pcalau12i	$s6, %pc_hi20(PreviousTokenval)
	st.w	$a0, $s6, %pc_lo12(PreviousTokenval)
	pcalau12i	$s5, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $s5, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s0, %pc_hi20(NextLookahead)
	ld.w	$a0, $s0, %pc_lo12(NextLookahead)
	pcalau12i	$s7, %pc_hi20(NextTokenval)
	ld.w	$a1, $s7, %pc_lo12(NextTokenval)
	pcalau12i	$s8, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s2, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s3, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB1_40
# %bb.39:                               # %if.then2.i165
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
.LBB1_40:                               # %match.exit167
	pcalau12i	$fp, %pc_hi20(ErrorFlag)
	ld.w	$a2, $fp, %pc_lo12(ErrorFlag)
	addi.w	$a0, $zero, -99
	bnez	$a2, .LBB1_136
# %bb.41:                               # %if.end190
	ld.w	$a3, $s1, %pc_lo12(lookahead)
	ori	$a2, $zero, 40
	bne	$a3, $a2, .LBB1_87
# %bb.42:                               # %if.then.i177
	ld.w	$a3, $s2, %pc_lo12(tokenval)
	fld.s	$fa0, $s3, %pc_lo12(ftokenval)
	st.w	$a2, $s4, %pc_lo12(PreviousLookahead)
	st.w	$a3, $s6, %pc_lo12(PreviousTokenval)
	ld.w	$a2, $s7, %pc_lo12(NextTokenval)
	fst.s	$fa0, $s5, %pc_lo12(PreviousFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a1, $s1, %pc_lo12(lookahead)
	st.w	$a2, $s2, %pc_lo12(tokenval)
	ori	$a2, $zero, 260
	fst.s	$fa0, $s3, %pc_lo12(ftokenval)
	beq	$a1, $a2, .LBB1_90
# %bb.43:                               # %if.then2.i179
	move	$s1, $a0
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	st.w	$a1, $s0, %pc_lo12(NextLookahead)
	b	.LBB1_90
.LBB1_44:                               # %if.then.i135
	pcalau12i	$s4, %pc_hi20(PreviousLookahead)
	ori	$a0, $zero, 2044
	st.w	$a0, $s4, %pc_lo12(PreviousLookahead)
	pcalau12i	$s2, %pc_hi20(tokenval)
	ld.w	$a0, $s2, %pc_lo12(tokenval)
	pcalau12i	$s3, %pc_hi20(ftokenval)
	fld.s	$fa0, $s3, %pc_lo12(ftokenval)
	pcalau12i	$s6, %pc_hi20(PreviousTokenval)
	st.w	$a0, $s6, %pc_lo12(PreviousTokenval)
	pcalau12i	$s5, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $s5, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s0, %pc_hi20(NextLookahead)
	ld.w	$a0, $s0, %pc_lo12(NextLookahead)
	pcalau12i	$s7, %pc_hi20(NextTokenval)
	ld.w	$a1, $s7, %pc_lo12(NextTokenval)
	pcalau12i	$s8, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s2, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s3, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB1_46
# %bb.45:                               # %if.then2.i137
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
.LBB1_46:                               # %match.exit139
	pcalau12i	$fp, %pc_hi20(ErrorFlag)
	ld.w	$a2, $fp, %pc_lo12(ErrorFlag)
	addi.w	$a0, $zero, -99
	bnez	$a2, .LBB1_136
# %bb.47:                               # %if.end180
	ld.w	$a3, $s1, %pc_lo12(lookahead)
	ori	$a2, $zero, 40
	bne	$a3, $a2, .LBB1_96
# %bb.48:                               # %if.then.i149
	ld.w	$a3, $s2, %pc_lo12(tokenval)
	fld.s	$fa0, $s3, %pc_lo12(ftokenval)
	st.w	$a2, $s4, %pc_lo12(PreviousLookahead)
	st.w	$a3, $s6, %pc_lo12(PreviousTokenval)
	ld.w	$a2, $s7, %pc_lo12(NextTokenval)
	fst.s	$fa0, $s5, %pc_lo12(PreviousFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a1, $s1, %pc_lo12(lookahead)
	st.w	$a2, $s2, %pc_lo12(tokenval)
	ori	$a2, $zero, 260
	fst.s	$fa0, $s3, %pc_lo12(ftokenval)
	beq	$a1, $a2, .LBB1_99
# %bb.49:                               # %if.then2.i151
	move	$s1, $a0
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	st.w	$a1, $s0, %pc_lo12(NextLookahead)
	b	.LBB1_99
.LBB1_50:                               # %if.then.i219
	pcalau12i	$s4, %pc_hi20(PreviousLookahead)
	ori	$a0, $zero, 2011
	st.w	$a0, $s4, %pc_lo12(PreviousLookahead)
	pcalau12i	$s2, %pc_hi20(tokenval)
	ld.w	$a0, $s2, %pc_lo12(tokenval)
	pcalau12i	$s3, %pc_hi20(ftokenval)
	fld.s	$fa0, $s3, %pc_lo12(ftokenval)
	pcalau12i	$s6, %pc_hi20(PreviousTokenval)
	st.w	$a0, $s6, %pc_lo12(PreviousTokenval)
	pcalau12i	$s5, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $s5, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s0, %pc_hi20(NextLookahead)
	ld.w	$a0, $s0, %pc_lo12(NextLookahead)
	pcalau12i	$s7, %pc_hi20(NextTokenval)
	ld.w	$a1, $s7, %pc_lo12(NextTokenval)
	pcalau12i	$s8, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s2, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s3, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB1_52
# %bb.51:                               # %if.then2.i221
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
.LBB1_52:                               # %match.exit223
	pcalau12i	$fp, %pc_hi20(ErrorFlag)
	ld.w	$a2, $fp, %pc_lo12(ErrorFlag)
	addi.w	$a0, $zero, -99
	bnez	$a2, .LBB1_136
# %bb.53:                               # %if.end222
	ld.w	$a3, $s1, %pc_lo12(lookahead)
	ori	$a2, $zero, 40
	bne	$a3, $a2, .LBB1_102
# %bb.54:                               # %if.then.i233
	ld.w	$a3, $s2, %pc_lo12(tokenval)
	fld.s	$fa0, $s3, %pc_lo12(ftokenval)
	st.w	$a2, $s4, %pc_lo12(PreviousLookahead)
	st.w	$a3, $s6, %pc_lo12(PreviousTokenval)
	ld.w	$a2, $s7, %pc_lo12(NextTokenval)
	fst.s	$fa0, $s5, %pc_lo12(PreviousFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a1, $s1, %pc_lo12(lookahead)
	st.w	$a2, $s2, %pc_lo12(tokenval)
	ori	$a2, $zero, 260
	fst.s	$fa0, $s3, %pc_lo12(ftokenval)
	beq	$a1, $a2, .LBB1_105
# %bb.55:                               # %if.then2.i235
	move	$s1, $a0
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	st.w	$a1, $s0, %pc_lo12(NextLookahead)
	b	.LBB1_105
.LBB1_56:                               # %if.then.i107
	pcalau12i	$s4, %pc_hi20(PreviousLookahead)
	ori	$a0, $zero, 2043
	st.w	$a0, $s4, %pc_lo12(PreviousLookahead)
	pcalau12i	$s2, %pc_hi20(tokenval)
	ld.w	$a0, $s2, %pc_lo12(tokenval)
	pcalau12i	$s3, %pc_hi20(ftokenval)
	fld.s	$fa0, $s3, %pc_lo12(ftokenval)
	pcalau12i	$s6, %pc_hi20(PreviousTokenval)
	st.w	$a0, $s6, %pc_lo12(PreviousTokenval)
	pcalau12i	$s5, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $s5, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s0, %pc_hi20(NextLookahead)
	ld.w	$a0, $s0, %pc_lo12(NextLookahead)
	pcalau12i	$s7, %pc_hi20(NextTokenval)
	ld.w	$a1, $s7, %pc_lo12(NextTokenval)
	pcalau12i	$s8, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s2, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s3, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB1_58
# %bb.57:                               # %if.then2.i109
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
.LBB1_58:                               # %match.exit111
	pcalau12i	$fp, %pc_hi20(ErrorFlag)
	ld.w	$a2, $fp, %pc_lo12(ErrorFlag)
	addi.w	$a0, $zero, -99
	bnez	$a2, .LBB1_136
# %bb.59:                               # %if.end170
	ld.w	$a3, $s1, %pc_lo12(lookahead)
	ori	$a2, $zero, 40
	bne	$a3, $a2, .LBB1_108
# %bb.60:                               # %if.then.i121
	ld.w	$a3, $s2, %pc_lo12(tokenval)
	fld.s	$fa0, $s3, %pc_lo12(ftokenval)
	st.w	$a2, $s4, %pc_lo12(PreviousLookahead)
	st.w	$a3, $s6, %pc_lo12(PreviousTokenval)
	ld.w	$a2, $s7, %pc_lo12(NextTokenval)
	fst.s	$fa0, $s5, %pc_lo12(PreviousFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a1, $s1, %pc_lo12(lookahead)
	st.w	$a2, $s2, %pc_lo12(tokenval)
	ori	$a2, $zero, 260
	fst.s	$fa0, $s3, %pc_lo12(ftokenval)
	beq	$a1, $a2, .LBB1_111
# %bb.61:                               # %if.then2.i123
	move	$s1, $a0
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	st.w	$a1, $s0, %pc_lo12(NextLookahead)
	b	.LBB1_111
.LBB1_62:                               # %sw.bb125
	pcalau12i	$a0, %pc_hi20(LocalIndex)
	ld.w	$s0, $a0, %pc_lo12(LocalIndex)
	pcalau12i	$a0, %pc_hi20(GlobalIndex)
	ld.w	$fp, $a0, %pc_lo12(GlobalIndex)
	pcaddu18i	$ra, %call36(PushArrayCellAddr)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(ErrorFlag)
	ld.w	$a1, $s2, %pc_lo12(ErrorFlag)
	addi.w	$a0, $zero, -99
	bnez	$a1, .LBB1_136
# %bb.63:                               # %if.end128
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a3, %pc_hi20(ArrayParsed)
	ori	$a2, $zero, 2006
	st.w	$zero, $a3, %pc_lo12(ArrayParsed)
	bne	$a1, $a2, .LBB1_115
# %bb.64:                               # %if.then.i79
	pcalau12i	$a1, %pc_hi20(PreviousLookahead)
	st.w	$a2, $a1, %pc_lo12(PreviousLookahead)
	pcalau12i	$a1, %pc_hi20(tokenval)
	ld.w	$a2, $a1, %pc_lo12(tokenval)
	pcalau12i	$a3, %pc_hi20(ftokenval)
	fld.s	$fa0, $a3, %pc_lo12(ftokenval)
	pcalau12i	$a4, %pc_hi20(PreviousTokenval)
	st.w	$a2, $a4, %pc_lo12(PreviousTokenval)
	pcalau12i	$a2, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a2, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s3, %pc_hi20(NextLookahead)
	ld.w	$a2, $s3, %pc_lo12(NextLookahead)
	pcalau12i	$a4, %pc_hi20(NextTokenval)
	ld.w	$a4, $a4, %pc_lo12(NextTokenval)
	pcalau12i	$a5, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a5, %pc_lo12(NextFtokenval)
	st.w	$a2, $s1, %pc_lo12(lookahead)
	st.w	$a4, $a1, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $a3, %pc_lo12(ftokenval)
	beq	$a2, $a1, .LBB1_138
# %bb.65:                               # %if.then2.i81
	move	$s1, $a0
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	st.w	$a1, $s3, %pc_lo12(NextLookahead)
	b	.LBB1_138
.LBB1_66:                               # %if.then.i191
	pcalau12i	$s4, %pc_hi20(PreviousLookahead)
	ori	$a0, $zero, 2046
	st.w	$a0, $s4, %pc_lo12(PreviousLookahead)
	pcalau12i	$s2, %pc_hi20(tokenval)
	ld.w	$a0, $s2, %pc_lo12(tokenval)
	pcalau12i	$s3, %pc_hi20(ftokenval)
	fld.s	$fa0, $s3, %pc_lo12(ftokenval)
	pcalau12i	$s6, %pc_hi20(PreviousTokenval)
	st.w	$a0, $s6, %pc_lo12(PreviousTokenval)
	pcalau12i	$s5, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $s5, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s0, %pc_hi20(NextLookahead)
	ld.w	$a0, $s0, %pc_lo12(NextLookahead)
	pcalau12i	$s7, %pc_hi20(NextTokenval)
	ld.w	$a1, $s7, %pc_lo12(NextTokenval)
	pcalau12i	$s8, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s2, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s3, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB1_68
# %bb.67:                               # %if.then2.i193
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
.LBB1_68:                               # %match.exit195
	pcalau12i	$fp, %pc_hi20(ErrorFlag)
	ld.w	$a2, $fp, %pc_lo12(ErrorFlag)
	addi.w	$a0, $zero, -99
	bnez	$a2, .LBB1_136
# %bb.69:                               # %if.end206
	ld.w	$a3, $s1, %pc_lo12(lookahead)
	ori	$a2, $zero, 40
	bne	$a3, $a2, .LBB1_118
# %bb.70:                               # %if.then.i205
	ld.w	$a3, $s2, %pc_lo12(tokenval)
	fld.s	$fa0, $s3, %pc_lo12(ftokenval)
	st.w	$a2, $s4, %pc_lo12(PreviousLookahead)
	st.w	$a3, $s6, %pc_lo12(PreviousTokenval)
	ld.w	$a2, $s7, %pc_lo12(NextTokenval)
	fst.s	$fa0, $s5, %pc_lo12(PreviousFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a1, $s1, %pc_lo12(lookahead)
	st.w	$a2, $s2, %pc_lo12(tokenval)
	ori	$a2, $zero, 260
	fst.s	$fa0, $s3, %pc_lo12(ftokenval)
	beq	$a1, $a2, .LBB1_121
# %bb.71:                               # %if.then2.i207
	move	$s1, $a0
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	st.w	$a1, $s0, %pc_lo12(NextLookahead)
	b	.LBB1_121
.LBB1_72:                               # %if.else.i29
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB1_74
# %bb.73:                               # %sw.bb.i36
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_74:                               # %sw.epilog.i32
	pcalau12i	$a0, %pc_hi20(ErrorFlag)
	ld.w	$a0, $a0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_76
# %bb.75:                               # %if.end4.i34
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_76:                               # %match.exit41
	pcalau12i	$a0, %pc_hi20(ErrorFlag)
	ld.w	$a0, $a0, %pc_lo12(ErrorFlag)
	sltui	$a0, $a0, 1
	addi.w	$a1, $zero, -99
	masknez	$a0, $a1, $a0
	b	.LBB1_136
.LBB1_77:                               # %if.else.i43
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB1_79
# %bb.78:                               # %sw.bb.i50
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_79:                               # %sw.epilog.i46
	pcalau12i	$a0, %pc_hi20(ErrorFlag)
	ld.w	$a0, $a0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_81
# %bb.80:                               # %if.end4.i48
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_81:                               # %match.exit55
	pcalau12i	$a0, %pc_hi20(ErrorFlag)
	ld.w	$a0, $a0, %pc_lo12(ErrorFlag)
	sltui	$a0, $a0, 1
	addi.w	$a1, $zero, -99
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	b	.LBB1_136
.LBB1_82:                               # %if.else93
	pcalau12i	$s1, %pc_hi20(GlobalIndex)
	ld.w	$a1, $s1, %pc_lo12(GlobalIndex)
	or	$a0, $s0, $a1
	beqz	$a0, .LBB1_85
# %bb.83:                               # %if.end98
	beqz	$s0, .LBB1_141
# %bb.84:                               # %if.then100
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2051
	move	$a1, $s0
	b	.LBB1_143
.LBB1_85:                               # %if.then96
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
.LBB1_86:                               # %cleanup
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -99
	b	.LBB1_136
.LBB1_87:                               # %if.else.i169
	move	$s0, $a0
	addi.w	$a0, $a3, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB1_89
# %bb.88:                               # %sw.epilog.i172
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_135
.LBB1_89:                               # %if.end4.i174
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB1_90:                               # %match.exit181
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB1_136
# %bb.91:                               # %if.end193
	move	$s0, $a0
	pcalau12i	$s1, %pc_hi20(FloatFlag)
	st.w	$zero, $s1, %pc_lo12(FloatFlag)
	pcaddu18i	$ra, %call36(exprAssg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_135
# %bb.92:                               # %if.end196
	ld.w	$a0, $s1, %pc_lo12(FloatFlag)
	bnez	$a0, .LBB1_94
# %bb.93:                               # %if.then198
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2003
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s1, %pc_lo12(FloatFlag)
.LBB1_94:                               # %if.end199
	ori	$a0, $zero, 41
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	move	$a0, $s0
	bnez	$a1, .LBB1_136
# %bb.95:                               # %if.end202
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2045
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2001
	ori	$a1, $zero, 1
	vldi	$vr0, -1168
	b	.LBB1_114
.LBB1_96:                               # %if.else.i141
	move	$s0, $a0
	addi.w	$a0, $a3, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB1_98
# %bb.97:                               # %sw.epilog.i144
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_135
.LBB1_98:                               # %if.end4.i146
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB1_99:                               # %match.exit153
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB1_136
# %bb.100:                              # %if.end183
	move	$s0, $a0
	ori	$a0, $zero, 41
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB1_136
# %bb.101:                              # %if.end186
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2009
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2002
	move	$a1, $zero
	b	.LBB1_128
.LBB1_102:                              # %if.else.i225
	move	$s0, $a0
	addi.w	$a0, $a3, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB1_104
# %bb.103:                              # %sw.epilog.i228
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_135
.LBB1_104:                              # %if.end4.i230
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB1_105:                              # %match.exit237
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB1_136
# %bb.106:                              # %if.end225
	move	$s0, $a0
	ori	$a0, $zero, 41
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB1_136
# %bb.107:                              # %if.end228
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2011
	b	.LBB1_127
.LBB1_108:                              # %if.else.i113
	move	$s0, $a0
	addi.w	$a0, $a3, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB1_110
# %bb.109:                              # %sw.epilog.i116
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_135
.LBB1_110:                              # %if.end4.i118
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB1_111:                              # %match.exit125
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB1_136
# %bb.112:                              # %if.end173
	move	$s0, $a0
	ori	$a0, $zero, 41
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB1_136
# %bb.113:                              # %if.end176
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2009
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2003
	move	$a1, $zero
	fmov.s	$fa0, $fs0
.LBB1_114:                              # %cleanup
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB1_136
.LBB1_115:                              # %if.else.i71
	move	$s3, $a0
	addi.w	$a0, $a1, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB1_137
# %bb.116:                              # %sw.epilog.i74
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB1_137
# %bb.117:
	move	$a0, $s3
	b	.LBB1_136
.LBB1_118:                              # %if.else.i197
	move	$s0, $a0
	addi.w	$a0, $a3, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB1_120
# %bb.119:                              # %sw.epilog.i200
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_135
.LBB1_120:                              # %if.end4.i202
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB1_121:                              # %match.exit209
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB1_136
# %bb.122:                              # %if.end209
	move	$s0, $a0
	pcalau12i	$s1, %pc_hi20(FloatFlag)
	st.w	$zero, $s1, %pc_lo12(FloatFlag)
	pcaddu18i	$ra, %call36(exprAssg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_135
# %bb.123:                              # %if.end212
	ld.w	$a0, $s1, %pc_lo12(FloatFlag)
	beqz	$a0, .LBB1_125
# %bb.124:                              # %if.then214
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2002
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	st.w	$zero, $s1, %pc_lo12(FloatFlag)
.LBB1_125:                              # %if.end215
	ori	$a0, $zero, 41
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	move	$a0, $s0
	bnez	$a1, .LBB1_136
# %bb.126:                              # %if.end218
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2046
.LBB1_127:                              # %cleanup
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	ori	$a1, $zero, 1
.LBB1_128:                              # %cleanup
	fmov.s	$fa0, $fs0
	b	.LBB1_147
.LBB1_129:                              # %sw.bb14
	ori	$a0, $zero, 2003
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_135
# %bb.130:                              # %if.end17
	ori	$a0, $zero, 41
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB1_135
# %bb.131:                              # %if.end20
	pcaddu18i	$ra, %call36(factor)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, %pc_lo12(ErrorFlag)
	move	$a1, $a0
	move	$a0, $s0
	bnez	$a2, .LBB1_136
# %bb.132:                              # %if.end24
	ori	$a0, $zero, 1
	bnez	$a1, .LBB1_136
# %bb.133:                              # %if.then26
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2003
	move	$a1, $zero
	b	.LBB1_114
.LBB1_134:                              # %sw.default
	pcalau12i	$s1, %pc_hi20(FloatFlag)
	st.w	$zero, $s1, %pc_lo12(FloatFlag)
	pcaddu18i	$ra, %call36(exprAssg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB1_148
.LBB1_135:
	move	$a0, $s0
.LBB1_136:                              # %cleanup
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB1_137:                              # %if.end4.i76
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB1_138:                              # %match.exit83
	ld.w	$a1, $s2, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB1_136
# %bb.139:                              # %if.end131
	beqz	$s0, .LBB1_153
# %bb.140:                              # %if.then141
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2063
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 5
	b	.LBB1_152
.LBB1_141:                              # %if.else101
	beqz	$a1, .LBB1_155
# %bb.142:                              # %if.then103
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2052
.LBB1_143:                              # %if.end106
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$fp, $fp, %pc_lo12(LocalIndex)
	ld.w	$s0, $s1, %pc_lo12(GlobalIndex)
	ori	$a0, $zero, 259
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ErrorFlag)
	ld.w	$a0, $a0, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB1_150
# %bb.144:
	addi.w	$a0, $zero, -99
	b	.LBB1_136
.LBB1_145:                              # %if.else165
	ori	$a0, $zero, 2038
.LBB1_146:                              # %cleanup
	move	$a1, $zero
.LBB1_147:                              # %cleanup
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB1_136
.LBB1_148:                              # %if.end30
	ori	$a0, $zero, 41
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(ErrorFlag)
	move	$a0, $s0
	bnez	$a1, .LBB1_136
# %bb.149:                              # %if.end33
	ld.w	$a0, $s1, %pc_lo12(FloatFlag)
	sltu	$a0, $zero, $a0
	b	.LBB1_136
.LBB1_150:                              # %if.end109
	beqz	$fp, .LBB1_156
# %bb.151:                              # %if.then111
	slli.d	$a0, $fp, 5
.LBB1_152:                              # %cleanup
	pcalau12i	$a1, %pc_hi20(LocalTable)
	addi.d	$a1, $a1, %pc_lo12(LocalTable)
	b	.LBB1_158
.LBB1_153:                              # %if.else134
	beqz	$fp, .LBB1_159
# %bb.154:                              # %if.else148
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2023
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	slli.d	$a0, $fp, 5
	b	.LBB1_157
.LBB1_155:                              # %if.else104
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	b	.LBB1_86
.LBB1_156:                              # %if.else118
	slli.d	$a0, $s0, 5
.LBB1_157:                              # %cleanup
	pcalau12i	$a1, %pc_hi20(GlobalTable)
	addi.d	$a1, $a1, %pc_lo12(GlobalTable)
.LBB1_158:                              # %cleanup
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 12
	addi.d	$a0, $a0, -2003
	sltui	$a0, $a0, 1
	b	.LBB1_136
.LBB1_159:                              # %if.else137
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB1_28
.LBB1_160:                              # %if.end58
	pcalau12i	$s5, %pc_hi20(LabelCounter)
	ld.w	$a1, $s5, %pc_lo12(LabelCounter)
	pcalau12i	$s1, %pc_hi20(CallReturnAddr)
	st.w	$a1, $s1, %pc_lo12(CallReturnAddr)
	addi.d	$a0, $a1, 1
	st.w	$a0, $s5, %pc_lo12(LabelCounter)
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2015
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(FuncNameIndex)
	ld.w	$a1, $s2, %pc_lo12(FuncNameIndex)
	ori	$a0, $zero, 2059
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2060
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB1_163
# %bb.161:                              # %if.then60
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
.LBB1_162:                              # %cleanup
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB1_136
.LBB1_163:                              # %if.else61
	beqz	$fp, .LBB1_166
# %bb.164:                              # %if.then63
	slli.d	$a0, $fp, 5
	pcalau12i	$a1, %pc_hi20(GlobalTable)
	addi.d	$a1, $a1, %pc_lo12(GlobalTable)
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 20
	bnez	$a1, .LBB1_169
# %bb.165:                              # %if.then65
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	b	.LBB1_162
.LBB1_166:                              # %if.else70
	ld.w	$a5, $s5, %pc_lo12(LabelCounter)
	addi.d	$a0, $sp, 18
	ori	$a1, $zero, 259
	ori	$a2, $zero, 2002
	ori	$a4, $zero, 1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(GlobalInsert)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(ErrorFlag)
	move	$fp, $a0
	beqz	$a1, .LBB1_168
# %bb.167:                              # %if.then74
	st.w	$zero, $s3, %pc_lo12(ErrorFlag)
.LBB1_168:                              # %if.end75
	ld.w	$a0, $s5, %pc_lo12(LabelCounter)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(LabelCounter)
	slli.d	$a0, $fp, 5
	pcalau12i	$a1, %pc_hi20(GlobalTable)
	addi.d	$a1, $a1, %pc_lo12(GlobalTable)
	add.d	$a0, $a1, $a0
.LBB1_169:                              # %if.end81
	addi.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2015
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2018
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(CallReturnAddr)
	ori	$a0, $zero, 2014
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(FuncNameIndex)
	ori	$a0, $zero, 2059
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2061
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	slli.d	$a0, $fp, 5
	pcalau12i	$a1, %pc_hi20(GlobalTable)
	addi.d	$a1, $a1, %pc_lo12(GlobalTable)
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 20
	addi.w	$a2, $zero, -1
	blt	$a2, $a1, .LBB1_37
# %bb.170:                              # %if.then86
	ld.w	$a0, $a0, 12
	addi.d	$a0, $a0, -2002
	sltu	$a0, $zero, $a0
	b	.LBB1_136
.Lfunc_end1:
	.size	factor, .Lfunc_end1-factor
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_62-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_50-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_56-.LJTI1_0
	.word	.LBB1_44-.LJTI1_0
	.word	.LBB1_38-.LJTI1_0
	.word	.LBB1_66-.LJTI1_0
                                        # -- End function
	.text
	.globl	match                           # -- Begin function match
	.p2align	5
	.type	match,@function
match:                                  # @match
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(lookahead)
	ld.w	$a1, $fp, %pc_lo12(lookahead)
	bne	$a1, $a0, .LBB2_3
# %bb.1:                                # %if.then
	pcalau12i	$a1, %pc_hi20(PreviousLookahead)
	st.w	$a0, $a1, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s0, %pc_hi20(NextLookahead)
	ld.w	$a1, $s0, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $fp, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB2_6
# %bb.2:                                # %if.then2
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
	b	.LBB2_6
.LBB2_3:                                # %if.else
	addi.w	$a1, $a1, -2007
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB2_5
# %bb.4:                                # %sw.bb
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB2_5:                                # %sw.epilog
	pcalau12i	$a1, %pc_hi20(ErrorFlag)
	ld.w	$a1, $a1, %pc_lo12(ErrorFlag)
	beqz	$a1, .LBB2_7
.LBB2_6:                                # %if.end8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_7:                                # %if.end4
	ori	$a1, $zero, 41
	bne	$a0, $a1, .LBB2_9
# %bb.8:                                # %sw.bb5
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB2_10
.LBB2_9:                                # %sw.default
	ld.w	$a1, $fp, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
.LBB2_10:                               # %sw.bb5
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.Lfunc_end2:
	.size	match, .Lfunc_end2-match
                                        # -- End function
	.globl	expr                            # -- Begin function expr
	.p2align	5
	.type	expr,@function
expr:                                   # @expr
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(term)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(ErrorFlag)
	ld.w	$a1, $s1, %pc_lo12(ErrorFlag)
	move	$fp, $a0
	addi.w	$a0, $zero, -99
	bnez	$a1, .LBB3_17
# %bb.1:                                # %while.cond.preheader
	move	$s2, $a0
	pcalau12i	$s3, %pc_hi20(lookahead)
	ori	$s4, $zero, 45
	ori	$s6, $zero, 2029
	ori	$s7, $zero, 2032
	ori	$s8, $zero, 2030
	movgr2fr.w	$fs0, $zero
	ori	$s5, $zero, 43
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_2:                                # %if.then10
                                        #   in Loop: Header=BB3_6 Depth=1
	beqz	$fp, .LBB3_13
# %bb.3:                                # %if.then12
                                        #   in Loop: Header=BB3_6 Depth=1
	addi.d	$a0, $s0, -43
	sltui	$a0, $a0, 1
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
.LBB3_4:                                # %if.end35
                                        #   in Loop: Header=BB3_6 Depth=1
	ori	$fp, $zero, 1
.LBB3_5:                                # %if.end35
                                        #   in Loop: Header=BB3_6 Depth=1
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
.LBB3_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s0, $s3, %pc_lo12(lookahead)
	beq	$s0, $s4, .LBB3_8
# %bb.7:                                # %while.cond
                                        #   in Loop: Header=BB3_6 Depth=1
	bne	$s0, $s5, .LBB3_16
.LBB3_8:                                # %while.body
                                        #   in Loop: Header=BB3_6 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB3_15
# %bb.9:                                # %if.end4
                                        #   in Loop: Header=BB3_6 Depth=1
	pcaddu18i	$ra, %call36(term)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB3_15
# %bb.10:                               # %if.end8
                                        #   in Loop: Header=BB3_6 Depth=1
	beq	$fp, $a0, .LBB3_2
# %bb.11:                               # %if.else22
                                        #   in Loop: Header=BB3_6 Depth=1
	addi.d	$a0, $s0, -43
	beqz	$fp, .LBB3_14
# %bb.12:                               # %if.then24
                                        #   in Loop: Header=BB3_6 Depth=1
	sltui	$fp, $a0, 1
	ori	$a0, $zero, 2003
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	masknez	$a0, $s7, $fp
	maskeqz	$a1, $s8, $fp
	or	$a0, $a1, $a0
	b	.LBB3_4
.LBB3_13:                               # %if.else16
                                        #   in Loop: Header=BB3_6 Depth=1
	move	$fp, $zero
	addi.d	$a0, $s0, -43
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 2031
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
	b	.LBB3_5
.LBB3_14:                               # %if.else29
                                        #   in Loop: Header=BB3_6 Depth=1
	sltui	$s0, $a0, 1
	ori	$a0, $zero, 256
	ori	$a1, $zero, 1
	ori	$fp, $zero, 1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2028
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2003
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	ori	$a1, $zero, 1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2023
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	masknez	$a0, $s7, $s0
	maskeqz	$a1, $s8, $s0
	or	$a0, $a1, $a0
	b	.LBB3_5
.LBB3_15:
	move	$a0, $s2
	b	.LBB3_17
.LBB3_16:                               # %while.end
	pcalau12i	$a0, %pc_hi20(FloatFlag)
	ld.w	$a0, $a0, %pc_lo12(FloatFlag)
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
.LBB3_17:                               # %cleanup
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end3:
	.size	expr, .Lfunc_end3-expr
                                        # -- End function
	.globl	PushArrayCellAddr               # -- Begin function PushArrayCellAddr
	.p2align	5
	.type	PushArrayCellAddr,@function
PushArrayCellAddr:                      # @PushArrayCellAddr
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ArrayParsed)
	ld.w	$a1, $a0, %pc_lo12(ArrayParsed)
	beqz	$a1, .LBB4_3
# %bb.1:                                # %if.else21
	st.w	$zero, $a0, %pc_lo12(ArrayParsed)
.LBB4_2:                                # %cleanup
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_3:                                # %if.then
	pcalau12i	$fp, %pc_hi20(tokenval)
	pcalau12i	$a1, %pc_hi20(LocalIndex)
	ld.w	$a1, $a1, %pc_lo12(LocalIndex)
	ld.w	$s0, $fp, %pc_lo12(tokenval)
	ori	$a2, $zero, 1
	st.w	$a2, $a0, %pc_lo12(ArrayParsed)
	beqz	$a1, .LBB4_5
# %bb.4:                                # %if.then2
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2049
	b	.LBB4_7
.LBB4_5:                                # %if.else
	pcalau12i	$a0, %pc_hi20(GlobalIndex)
	ld.w	$a1, $a0, %pc_lo12(GlobalIndex)
	beqz	$a1, .LBB4_18
# %bb.6:                                # %if.then4
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2050
.LBB4_7:                                # %if.end6
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(lookahead)
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 2006
	pcalau12i	$s2, %pc_hi20(ErrorFlag)
	bne	$a0, $a1, .LBB4_11
# %bb.8:                                # %if.then.i
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	ld.w	$a0, $fp, %pc_lo12(tokenval)
	pcalau12i	$a1, %pc_hi20(ftokenval)
	fld.s	$fa0, $a1, %pc_lo12(ftokenval)
	pcalau12i	$a2, %pc_hi20(PreviousTokenval)
	st.w	$a0, $a2, %pc_lo12(PreviousTokenval)
	pcalau12i	$a0, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a0, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s3, %pc_hi20(NextLookahead)
	ld.w	$a0, $s3, %pc_lo12(NextLookahead)
	pcalau12i	$a2, %pc_hi20(NextTokenval)
	ld.w	$a2, $a2, %pc_lo12(NextTokenval)
	pcalau12i	$a3, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a3, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a2, $fp, %pc_lo12(tokenval)
	ori	$a2, $zero, 260
	fst.s	$fa0, $a1, %pc_lo12(ftokenval)
	beq	$a0, $a2, .LBB4_10
# %bb.9:                                # %if.then2.i
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s3, %pc_lo12(NextLookahead)
.LBB4_10:                               # %match.exit
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB4_2
	b	.LBB4_15
.LBB4_11:                               # %if.else.i
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB4_13
# %bb.12:                               # %sw.bb.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB4_13:                               # %sw.epilog.i
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB4_2
# %bb.14:                               # %if.end4.i
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB4_2
.LBB4_15:                               # %if.end9
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 91
	bne	$a0, $a1, .LBB4_20
# %bb.16:                               # %if.then.i11
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	ld.w	$a0, $fp, %pc_lo12(tokenval)
	pcalau12i	$a1, %pc_hi20(ftokenval)
	fld.s	$fa0, $a1, %pc_lo12(ftokenval)
	pcalau12i	$a2, %pc_hi20(PreviousTokenval)
	st.w	$a0, $a2, %pc_lo12(PreviousTokenval)
	pcalau12i	$a0, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a0, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s3, %pc_hi20(NextLookahead)
	ld.w	$a0, $s3, %pc_lo12(NextLookahead)
	pcalau12i	$a2, %pc_hi20(NextTokenval)
	ld.w	$a2, $a2, %pc_lo12(NextTokenval)
	pcalau12i	$a3, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a3, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a2, $fp, %pc_lo12(tokenval)
	ori	$a2, $zero, 260
	fst.s	$fa0, $a1, %pc_lo12(ftokenval)
	beq	$a0, $a2, .LBB4_23
# %bb.17:                               # %if.then2.i13
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s3, %pc_lo12(NextLookahead)
	b	.LBB4_23
.LBB4_18:                               # %if.else5
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
.LBB4_19:                               # %if.else5
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB4_20:                               # %if.else.i3
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB4_22
# %bb.21:                               # %sw.epilog.i6
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB4_2
.LBB4_22:                               # %if.end4.i8
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB4_23:                               # %match.exit15
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB4_2
# %bb.24:                               # %if.end12
	pcalau12i	$s3, %pc_hi20(FloatFlag)
	st.w	$zero, $s3, %pc_lo12(FloatFlag)
	pcaddu18i	$ra, %call36(expr)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(ErrorFlag)
	st.w	$a0, $s3, %pc_lo12(FloatFlag)
	bnez	$a1, .LBB4_2
# %bb.25:                               # %if.end15
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	ori	$a2, $zero, 93
	bne	$a1, $a2, .LBB4_28
# %bb.26:                               # %if.end17
	beqz	$a0, .LBB4_29
# %bb.27:                               # %if.then19
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	b	.LBB4_19
.LBB4_28:                               # %if.then16
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	b	.LBB4_19
.LBB4_29:                               # %if.end20
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2029
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2006
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$s0, $fp, %pc_lo12(tokenval)
	b	.LBB4_2
.Lfunc_end4:
	.size	PushArrayCellAddr, .Lfunc_end4-PushArrayCellAddr
                                        # -- End function
	.globl	DeclOrF                         # -- Begin function DeclOrF
	.p2align	5
	.type	DeclOrF,@function
DeclOrF:                                # @DeclOrF
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Scope)
	st.w	$zero, $a0, %pc_lo12(Scope)
	pcalau12i	$s6, %pc_hi20(lookahead)
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(tokenval)
	pcalau12i	$fp, %pc_hi20(PreviousTokenval)
	pcalau12i	$s0, %pc_hi20(ftokenval)
	pcalau12i	$s7, %pc_hi20(PreviousFtokenval)
	pcalau12i	$s1, %pc_hi20(NextLookahead)
	pcalau12i	$s2, %pc_hi20(NextTokenval)
	pcalau12i	$s4, %pc_hi20(NextFtokenval)
	pcalau12i	$s5, %pc_hi20(ErrorFlag)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_1:                                # %if.end4.i27
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a1, $s6, %pc_lo12(lookahead)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB5_2:                                # %match.exit34
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $s5, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB5_40
.LBB5_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_20 Depth 2
	ld.w	$a0, $s6, %pc_lo12(lookahead)
	ori	$a1, $zero, 2002
	beq	$a0, $a1, .LBB5_14
# %bb.4:                                # %while.cond
                                        #   in Loop: Header=BB5_3 Depth=1
	ori	$a2, $zero, 2003
	beq	$a0, $a2, .LBB5_10
# %bb.5:                                # %while.cond
                                        #   in Loop: Header=BB5_3 Depth=1
	ori	$a1, $zero, 259
	beq	$a0, $a1, .LBB5_39
# %bb.6:                                # %if.else.i5
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB5_8
# %bb.7:                                # %sw.bb.i12
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB5_8:                                # %sw.epilog.i8
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $s5, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB5_40
# %bb.9:                                # %if.end4.i10
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a1, $s6, %pc_lo12(lookahead)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB5_12
	.p2align	4, , 16
.LBB5_10:                               # %if.then.i13
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $s8, %pc_lo12(tokenval)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a2, $a1, %pc_lo12(PreviousLookahead)
	st.w	$a0, $fp, %pc_lo12(PreviousTokenval)
	fld.s	$fa0, $s0, %pc_lo12(ftokenval)
	ld.w	$a0, $s1, %pc_lo12(NextLookahead)
	ld.w	$a1, $s2, %pc_lo12(NextTokenval)
	fld.s	$fa1, $s4, %pc_lo12(NextFtokenval)
	fst.s	$fa0, $s7, %pc_lo12(PreviousFtokenval)
	st.w	$a0, $s6, %pc_lo12(lookahead)
	st.w	$a1, $s8, %pc_lo12(tokenval)
	fst.s	$fa1, $s0, %pc_lo12(ftokenval)
	ori	$a1, $zero, 260
	beq	$a0, $a1, .LBB5_12
# %bb.11:                               # %if.then2.i15
                                        #   in Loop: Header=BB5_3 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, %pc_lo12(NextLookahead)
.LBB5_12:                               # %match.exit17
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $s5, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB5_40
# %bb.13:                               # %match.exit17.if.end19_crit_edge
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $s1, %pc_lo12(NextLookahead)
	b	.LBB5_17
	.p2align	4, , 16
.LBB5_14:                               # %if.then.i
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $s8, %pc_lo12(tokenval)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ori	$a2, $zero, 2002
	st.w	$a2, $a1, %pc_lo12(PreviousLookahead)
	fld.s	$fa0, $s0, %pc_lo12(ftokenval)
	st.w	$a0, $fp, %pc_lo12(PreviousTokenval)
	ld.w	$a1, $s1, %pc_lo12(NextLookahead)
	ld.w	$a0, $s2, %pc_lo12(NextTokenval)
	fst.s	$fa0, $s7, %pc_lo12(PreviousFtokenval)
	fld.s	$fa0, $s4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s6, %pc_lo12(lookahead)
	st.w	$a0, $s8, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $s0, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB5_16
# %bb.15:                               # %if.then2.i
                                        #   in Loop: Header=BB5_3 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, %pc_lo12(NextLookahead)
.LBB5_16:                               # %match.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a1, $s5, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB5_40
.LBB5_17:                               # %if.end19
                                        #   in Loop: Header=BB5_3 Depth=1
	ori	$a1, $zero, 40
	beq	$a0, $a1, .LBB5_34
# %bb.18:                               # %if.else33
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(PreviousLookahead)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(GlobalScopeAndInsert)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 44
	ld.w	$a0, $s5, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB5_40
# %bb.19:                               # %if.end36
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $s6, %pc_lo12(lookahead)
	bne	$a0, $a2, .LBB5_29
	.p2align	4, , 16
.LBB5_20:                               # %if.then.i.i
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s8, %pc_lo12(tokenval)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a2, $a1, %pc_lo12(PreviousLookahead)
	st.w	$a0, $fp, %pc_lo12(PreviousTokenval)
	fld.s	$fa0, $s0, %pc_lo12(ftokenval)
	ld.w	$a0, $s1, %pc_lo12(NextLookahead)
	ld.w	$a1, $s2, %pc_lo12(NextTokenval)
	fld.s	$fa1, $s4, %pc_lo12(NextFtokenval)
	fst.s	$fa0, $s7, %pc_lo12(PreviousFtokenval)
	st.w	$a0, $s6, %pc_lo12(lookahead)
	st.w	$a1, $s8, %pc_lo12(tokenval)
	fst.s	$fa1, $s0, %pc_lo12(ftokenval)
	ori	$a1, $zero, 260
	beq	$a0, $a1, .LBB5_22
# %bb.21:                               # %match.exit.i
                                        #   in Loop: Header=BB5_20 Depth=2
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(ErrorFlag)
	st.w	$a0, $s1, %pc_lo12(NextLookahead)
	bnez	$a1, .LBB5_40
.LBB5_22:                               # %if.end.i
                                        #   in Loop: Header=BB5_20 Depth=2
	ld.w	$a0, $s6, %pc_lo12(lookahead)
	ori	$a1, $zero, 2006
	beq	$a0, $a1, .LBB5_24
# %bb.23:                               # %if.end.i
                                        #   in Loop: Header=BB5_20 Depth=2
	ori	$a1, $zero, 259
	bne	$a0, $a1, .LBB5_26
.LBB5_24:                               # %if.then3.i
                                        #   in Loop: Header=BB5_20 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(GlobalScopeAndInsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB5_27
# %bb.25:                               # %if.then3.i
                                        #   in Loop: Header=BB5_20 Depth=2
	ld.w	$a1, $s6, %pc_lo12(lookahead)
	ori	$a2, $zero, 44
	beq	$a1, $a2, .LBB5_20
	b	.LBB5_27
.LBB5_26:                               # %if.else.i20
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(ErrorFlag)
.LBB5_27:                               # %GlobalVarList.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	bnez	$a0, .LBB5_40
# %bb.28:                               # %if.end39thread-pre-split
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $s6, %pc_lo12(lookahead)
.LBB5_29:                               # %if.end39
                                        #   in Loop: Header=BB5_3 Depth=1
	ori	$a2, $zero, 59
	bne	$a0, $a2, .LBB5_32
# %bb.30:                               # %if.then.i30
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $s8, %pc_lo12(tokenval)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a2, $a1, %pc_lo12(PreviousLookahead)
	st.w	$a0, $fp, %pc_lo12(PreviousTokenval)
	fld.s	$fa0, $s0, %pc_lo12(ftokenval)
	ld.w	$a0, $s1, %pc_lo12(NextLookahead)
	ld.w	$a1, $s2, %pc_lo12(NextTokenval)
	fld.s	$fa1, $s4, %pc_lo12(NextFtokenval)
	fst.s	$fa0, $s7, %pc_lo12(PreviousFtokenval)
	st.w	$a0, $s6, %pc_lo12(lookahead)
	st.w	$a1, $s8, %pc_lo12(tokenval)
	fst.s	$fa1, $s0, %pc_lo12(ftokenval)
	ori	$a1, $zero, 260
	beq	$a0, $a1, .LBB5_2
# %bb.31:                               # %if.then2.i32
                                        #   in Loop: Header=BB5_3 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, %pc_lo12(NextLookahead)
	b	.LBB5_2
	.p2align	4, , 16
.LBB5_32:                               # %if.else.i22
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB5_1
# %bb.33:                               # %sw.epilog.i25
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB5_1
	b	.LBB5_40
.LBB5_34:                               # %if.then21
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2026
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(LabelCounter)
	ori	$a1, $zero, 4
	st.w	$a1, $a0, %pc_lo12(LabelCounter)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 259
	ori	$a2, $zero, 2002
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(GlobalInsert)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(ErrorFlag)
	bnez	$a1, .LBB5_40
# %bb.35:                               # %if.end25
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a1, %pc_hi20(lexbuf)
	addi.d	$a1, $a1, %pc_lo12(lexbuf)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_37
# %bb.36:                               # %if.then28
	pcalau12i	$a0, %pc_hi20(GlobalIndex)
	st.w	$fp, $a0, %pc_lo12(GlobalIndex)
.LBB5_37:                               # %if.end29
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$fp, $a0, %pc_lo12(PreviousLookahead)
.LBB5_38:                               # %cleanup.sink.split
	move	$a0, $fp
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	pcaddu18i	$t8, %call36(FunctionDef)
	jr	$t8
.LBB5_39:                               # %if.then
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2026
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(LabelCounter)
	ori	$a1, $zero, 4
	st.w	$a1, $a0, %pc_lo12(LabelCounter)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 259
	ori	$a2, $zero, 2002
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	ori	$fp, $zero, 2002
	move	$a3, $zero
	pcaddu18i	$ra, %call36(GlobalInsert)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(ErrorFlag)
	beqz	$a1, .LBB5_41
.LBB5_40:                               # %cleanup
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB5_41:                               # %if.end
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a1, %pc_hi20(lexbuf)
	addi.d	$a1, $a1, %pc_lo12(lexbuf)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_38
# %bb.42:                               # %if.then4
	pcalau12i	$a0, %pc_hi20(GlobalIndex)
	st.w	$s0, $a0, %pc_lo12(GlobalIndex)
	b	.LBB5_38
.Lfunc_end5:
	.size	DeclOrF, .Lfunc_end5-DeclOrF
                                        # -- End function
	.globl	FunctionDef                     # -- Begin function FunctionDef
	.p2align	5
	.type	FunctionDef,@function
FunctionDef:                            # @FunctionDef
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$a2, $a0
	pcalau12i	$s0, %pc_hi20(lookahead)
	ld.w	$a0, $s0, %pc_lo12(lookahead)
	pcalau12i	$a1, %pc_hi20(offset)
	ori	$a3, $zero, 1
	ori	$a4, $zero, 259
	st.w	$a3, $a1, %pc_lo12(offset)
	bne	$a0, $a4, .LBB6_3
# %bb.1:                                # %if.end
	pcalau12i	$a0, %pc_hi20(LocalIndex)
	ld.w	$a0, $a0, %pc_lo12(LocalIndex)
	beqz	$a0, .LBB6_5
# %bb.2:                                # %if.then1
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	b	.LBB6_4
.LBB6_3:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
.LBB6_4:                                # %if.then
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB6_5:                                # %if.else
	pcalau12i	$s2, %pc_hi20(GlobalIndex)
	ld.w	$a1, $s2, %pc_lo12(GlobalIndex)
	pcalau12i	$a0, %pc_hi20(GlobalTable)
	addi.d	$fp, $a0, %pc_lo12(GlobalTable)
	beqz	$a1, .LBB6_9
# %bb.6:                                # %if.then3
	slli.d	$a0, $a1, 5
	add.d	$a0, $fp, $a0
	ld.w	$a4, $a0, 20
	beqz	$a4, .LBB6_35
# %bb.7:                                # %if.else6
	addi.w	$a3, $zero, -1
	bge	$a3, $a4, .LBB6_54
# %bb.8:                                # %if.then17
	st.w	$a2, $a0, 12
	pcalau12i	$a2, %pc_hi20(FuncNameIndex)
	st.w	$a1, $a2, %pc_lo12(FuncNameIndex)
	lu32i.d	$a3, 0
	st.w	$a3, $a0, 20
	b	.LBB6_12
.LBB6_9:                                # %if.else28
	pcalau12i	$s1, %pc_hi20(LabelCounter)
	ld.w	$a5, $s1, %pc_lo12(LabelCounter)
	pcalau12i	$a0, %pc_hi20(lexbuf)
	addi.d	$a0, $a0, %pc_lo12(lexbuf)
	addi.w	$a4, $zero, -1
	ori	$a1, $zero, 259
	move	$a3, $zero
	pcaddu18i	$ra, %call36(GlobalInsert)
	jirl	$ra, $ra, 0
	pcalau12i	$a2, %pc_hi20(ErrorFlag)
	ld.w	$a3, $a2, %pc_lo12(ErrorFlag)
	move	$a1, $a0
	st.w	$a0, $s2, %pc_lo12(GlobalIndex)
	beqz	$a3, .LBB6_11
# %bb.10:                               # %if.then30
	st.w	$zero, $a2, %pc_lo12(ErrorFlag)
.LBB6_11:                               # %if.end31
	ld.w	$a0, $s1, %pc_lo12(LabelCounter)
	pcalau12i	$a2, %pc_hi20(FuncNameIndex)
	st.w	$a1, $a2, %pc_lo12(FuncNameIndex)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, %pc_lo12(LabelCounter)
.LBB6_12:                               # %if.end33
	slli.d	$a0, $a1, 5
	add.d	$a0, $fp, $a0
	ld.w	$a0, $a0, 24
	pcalau12i	$s1, %pc_hi20(Scope)
	st.w	$a0, $s1, %pc_lo12(Scope)
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2054
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(Scope)
	ori	$a0, $zero, 2014
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(FuncNameIndex)
	ld.w	$a1, $s1, %pc_lo12(FuncNameIndex)
	ori	$a0, $zero, 2056
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(LabelCounter)
	ld.w	$a0, $a1, %pc_lo12(LabelCounter)
	pcalau12i	$s2, %pc_hi20(ReturnLabel)
	st.w	$a0, $s2, %pc_lo12(ReturnLabel)
	addi.d	$a2, $a0, 1
	ld.w	$a0, $s0, %pc_lo12(lookahead)
	st.w	$a2, $a1, %pc_lo12(LabelCounter)
	ori	$a1, $zero, 259
	pcalau12i	$s3, %pc_hi20(ErrorFlag)
	pcalau12i	$s4, %pc_hi20(PreviousLookahead)
	bne	$a0, $a1, .LBB6_15
# %bb.13:                               # %if.then.i
	st.w	$a1, $s4, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s5, %pc_hi20(NextLookahead)
	ld.w	$a1, $s5, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s0, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB6_19
# %bb.14:                               # %if.then2.i
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, %pc_lo12(NextLookahead)
	b	.LBB6_19
.LBB6_15:                               # %if.else.i
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB6_17
# %bb.16:                               # %sw.bb.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB6_17:                               # %sw.epilog.i
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB6_20
# %bb.18:                               # %if.end4.i
	ld.w	$a1, $s0, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB6_19:                               # %match.exit
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB6_21
.LBB6_20:                               # %if.then38
	st.w	$zero, $s3, %pc_lo12(ErrorFlag)
.LBB6_21:                               # %if.end39
	ld.w	$a0, $s0, %pc_lo12(lookahead)
	ori	$a1, $zero, 40
	bne	$a0, $a1, .LBB6_24
# %bb.22:                               # %if.then.i12
	st.w	$a1, $s4, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s5, %pc_hi20(NextLookahead)
	ld.w	$a1, $s5, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s0, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB6_27
# %bb.23:                               # %if.then2.i14
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, %pc_lo12(NextLookahead)
	b	.LBB6_27
.LBB6_24:                               # %if.else.i4
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB6_26
# %bb.25:                               # %sw.epilog.i7
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB6_28
.LBB6_26:                               # %if.end4.i9
	ld.w	$a1, $s0, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB6_27:                               # %match.exit16
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB6_29
.LBB6_28:                               # %if.then41
	st.w	$zero, $s3, %pc_lo12(ErrorFlag)
.LBB6_29:                               # %if.end42
	ld.w	$a0, $s1, %pc_lo12(FuncNameIndex)
	slli.d	$a0, $a0, 5
	ldx.d	$a0, $fp, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_36
# %bb.30:                               # %if.else55
	pcaddu18i	$ra, %call36(ParamList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB6_32
# %bb.31:                               # %if.then57
	st.w	$zero, $s3, %pc_lo12(ErrorFlag)
.LBB6_32:                               # %if.end58
	ld.w	$a0, $s0, %pc_lo12(lookahead)
	ori	$a1, $zero, 41
	bne	$a0, $a1, .LBB6_39
# %bb.33:                               # %if.then.i38
	st.w	$a1, $s4, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s5, %pc_hi20(NextLookahead)
	ld.w	$a1, $s5, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s0, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB6_42
# %bb.34:                               # %if.then2.i40
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, %pc_lo12(NextLookahead)
	b	.LBB6_42
.LBB6_35:                               # %if.then5
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	b	.LBB6_4
.LBB6_36:                               # %if.then47
	ld.w	$a1, $s0, %pc_lo12(lookahead)
	ori	$a0, $zero, 41
	bne	$a1, $a0, .LBB6_55
# %bb.37:                               # %if.then.i25
	st.w	$a0, $s4, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s5, %pc_hi20(NextLookahead)
	ld.w	$a1, $s5, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s0, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB6_44
# %bb.38:                               # %match.exit29
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(ErrorFlag)
	st.w	$a0, $s5, %pc_lo12(NextLookahead)
	bnez	$a1, .LBB6_51
	b	.LBB6_44
.LBB6_39:                               # %if.else.i31
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB6_41
# %bb.40:                               # %sw.epilog.i34
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB6_43
.LBB6_41:                               # %if.end4.i36
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB6_42:                               # %match.exit42
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB6_44
.LBB6_43:                               # %if.then60
	st.w	$zero, $s3, %pc_lo12(ErrorFlag)
.LBB6_44:                               # %while.cond.i.preheader
	ori	$s5, $zero, 2002
	.p2align	4, , 16
.LBB6_45:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $s0, %pc_lo12(lookahead)
	bstrpick.d	$a1, $a0, 31, 1
	slli.w	$a1, $a1, 1
	bne	$a1, $s5, .LBB6_48
# %bb.46:                               # %while.body.i
                                        #   in Loop: Header=BB6_45 Depth=1
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB6_49
# %bb.47:                               # %if.end.i
                                        #   in Loop: Header=BB6_45 Depth=1
	ld.w	$a0, $s4, %pc_lo12(PreviousLookahead)
	pcaddu18i	$ra, %call36(VarList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB6_45
	b	.LBB6_49
.LBB6_48:                               # %DecList.exit
	pcaddu18i	$ra, %call36(ParamInt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB6_50
.LBB6_49:                               # %if.then64
	st.w	$zero, $s3, %pc_lo12(ErrorFlag)
.LBB6_50:                               # %if.end65
	ld.w	$a1, $s1, %pc_lo12(FuncNameIndex)
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2057
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FstmtList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB6_52
.LBB6_51:                               # %return
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB6_52:                               # %if.end68
	ld.w	$a0, $s1, %pc_lo12(FuncNameIndex)
	slli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	ld.w	$a0, $a0, 12
	ori	$a1, $zero, 2002
	bne	$a0, $a1, .LBB6_56
# %bb.53:                               # %if.then73
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 256
	ori	$a1, $zero, 1
	b	.LBB6_57
.LBB6_54:                               # %if.then11
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	b	.LBB6_4
.LBB6_55:                               # %if.else53
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	b	.LBB6_4
.LBB6_56:                               # %if.else74
	ori	$a0, $zero, 2001
	vldi	$vr0, -1168
	move	$a1, $zero
.LBB6_57:                               # %if.end75
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(ReturnLabel)
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2014
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(FuncNameIndex)
	ori	$a0, $zero, 2058
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2018
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(emit)
	jr	$t8
.Lfunc_end6:
	.size	FunctionDef, .Lfunc_end6-FunctionDef
                                        # -- End function
	.globl	GlobalScopeAndInsert            # -- Begin function GlobalScopeAndInsert
	.p2align	5
	.type	GlobalScopeAndInsert,@function
GlobalScopeAndInsert:                   # @GlobalScopeAndInsert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(LocalIndex)
	ld.w	$a1, $a1, %pc_lo12(LocalIndex)
	beqz	$a1, .LBB7_3
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
.LBB7_2:                                # %if.then
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB7_3:                                # %if.else
	move	$a2, $a0
	pcalau12i	$s2, %pc_hi20(GlobalIndex)
	ld.w	$a0, $s2, %pc_lo12(GlobalIndex)
	beqz	$a0, .LBB7_6
# %bb.4:                                # %if.then2
	slli.d	$a0, $a0, 5
	pcalau12i	$a1, %pc_hi20(GlobalTable)
	addi.d	$a1, $a1, %pc_lo12(GlobalTable)
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 20
	beqz	$a0, .LBB7_11
# %bb.5:                                # %if.then4
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	b	.LBB7_2
.LBB7_6:                                # %if.else6
	pcalau12i	$s0, %pc_hi20(NextLookahead)
	ld.w	$a0, $s0, %pc_lo12(NextLookahead)
	ori	$a1, $zero, 91
	bne	$a0, $a1, .LBB7_12
# %bb.7:                                # %if.then7
	pcalau12i	$a0, %pc_hi20(lexbuf)
	addi.d	$a0, $a0, %pc_lo12(lexbuf)
	ori	$a1, $zero, 2006
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(GlobalInsert)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(ErrorFlag)
	ld.w	$a1, $s1, %pc_lo12(ErrorFlag)
	st.w	$a0, $s2, %pc_lo12(GlobalIndex)
	bnez	$a1, .LBB7_27
# %bb.8:                                # %if.end
	move	$fp, $a0
	pcalau12i	$s2, %pc_hi20(lookahead)
	ld.w	$a0, $s2, %pc_lo12(lookahead)
	ori	$a1, $zero, 259
	bne	$a0, $a1, .LBB7_16
# %bb.9:                                # %if.then.i
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	ld.w	$a1, $s0, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s2, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB7_19
# %bb.10:                               # %if.then2.i
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
	b	.LBB7_19
.LBB7_11:                               # %if.else5
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	b	.LBB7_2
.LBB7_12:                               # %if.else28
	pcalau12i	$a0, %pc_hi20(lexbuf)
	addi.d	$a0, $a0, %pc_lo12(lexbuf)
	ori	$a1, $zero, 259
	ori	$a3, $zero, 1
	ori	$s3, $zero, 259
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(GlobalInsert)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(ErrorFlag)
	ld.w	$a2, $s1, %pc_lo12(ErrorFlag)
	st.w	$a0, $s2, %pc_lo12(GlobalIndex)
	bnez	$a2, .LBB7_27
# %bb.13:                               # %if.end32
	move	$a1, $a0
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2048
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(DecCount)
	ld.w	$a2, $a1, %pc_lo12(DecCount)
	pcalau12i	$fp, %pc_hi20(lookahead)
	ld.w	$a0, $fp, %pc_lo12(lookahead)
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, %pc_lo12(DecCount)
	bne	$a0, $s3, .LBB7_24
# %bb.14:                               # %if.then.i13
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	ori	$a1, $zero, 259
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	ld.w	$a1, $s0, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $fp, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB7_27
# %bb.15:                               # %if.then2.i15
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
	b	.LBB7_27
.LBB7_16:                               # %if.else.i
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB7_18
# %bb.17:                               # %sw.epilog.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB7_27
.LBB7_18:                               # %if.end4.i
	ld.w	$a1, $s2, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB7_19:                               # %match.exit
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB7_27
# %bb.20:                               # %if.end12
	ori	$a0, $zero, 91
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB7_27
# %bb.21:                               # %if.end15
	ld.w	$a0, $s2, %pc_lo12(lookahead)
	ori	$a1, $zero, 256
	bne	$a0, $a1, .LBB7_29
# %bb.22:                               # %if.then17
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a0, $a0, %pc_lo12(tokenval)
	slli.d	$a1, $fp, 5
	pcalau12i	$a2, %pc_hi20(GlobalTable)
	addi.d	$a2, $a2, %pc_lo12(GlobalTable)
	add.d	$s0, $a2, $a1
	st.w	$a0, $s0, 16
	ori	$a0, $zero, 256
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 93
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB7_27
# %bb.23:                               # %if.end24
	addi.d	$s0, $s0, 16
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2048
	move	$a1, $fp
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(DecCount)
	ld.w	$a2, $a1, %pc_lo12(DecCount)
	add.d	$a0, $a2, $a0
	st.w	$a0, $a1, %pc_lo12(DecCount)
	b	.LBB7_27
.LBB7_24:                               # %if.else.i5
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB7_26
# %bb.25:                               # %sw.bb.i12
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB7_26:                               # %sw.epilog.i8
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB7_28
.LBB7_27:                               # %cleanup
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB7_28:                               # %if.end4.i10
	ld.w	$a1, $fp, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB7_2
.LBB7_29:                               # %if.else20
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	b	.LBB7_2
.Lfunc_end7:
	.size	GlobalScopeAndInsert, .Lfunc_end7-GlobalScopeAndInsert
                                        # -- End function
	.globl	GlobalVarList                   # -- Begin function GlobalVarList
	.p2align	5
	.type	GlobalVarList,@function
GlobalVarList:                          # @GlobalVarList
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(lookahead)
	ld.w	$a1, $s0, %pc_lo12(lookahead)
	ori	$a2, $zero, 44
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bne	$a1, $a2, .LBB8_9
# %bb.1:                                # %if.then.i.preheader
	pcalau12i	$s2, %pc_hi20(PreviousLookahead)
	pcalau12i	$s3, %pc_hi20(tokenval)
	pcalau12i	$s4, %pc_hi20(PreviousTokenval)
	pcalau12i	$s5, %pc_hi20(ftokenval)
	pcalau12i	$s6, %pc_hi20(PreviousFtokenval)
	pcalau12i	$s7, %pc_hi20(NextLookahead)
	pcalau12i	$s8, %pc_hi20(NextTokenval)
	pcalau12i	$s1, %pc_hi20(NextFtokenval)
	pcalau12i	$fp, %pc_hi20(ErrorFlag)
	.p2align	4, , 16
.LBB8_2:                                # %if.then.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, %pc_lo12(tokenval)
	ori	$a1, $zero, 44
	st.w	$a1, $s2, %pc_lo12(PreviousLookahead)
	st.w	$a0, $s4, %pc_lo12(PreviousTokenval)
	fld.s	$fa0, $s5, %pc_lo12(ftokenval)
	ld.w	$a0, $s7, %pc_lo12(NextLookahead)
	ld.w	$a1, $s8, %pc_lo12(NextTokenval)
	fld.s	$fa1, $s1, %pc_lo12(NextFtokenval)
	fst.s	$fa0, $s6, %pc_lo12(PreviousFtokenval)
	st.w	$a0, $s0, %pc_lo12(lookahead)
	st.w	$a1, $s3, %pc_lo12(tokenval)
	fst.s	$fa1, $s5, %pc_lo12(ftokenval)
	ori	$a1, $zero, 260
	beq	$a0, $a1, .LBB8_4
# %bb.3:                                # %if.then2.i
                                        #   in Loop: Header=BB8_2 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s7, %pc_lo12(NextLookahead)
.LBB8_4:                                # %match.exit
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB8_9
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.w	$a0, $s0, %pc_lo12(lookahead)
	ori	$a1, $zero, 2006
	beq	$a0, $a1, .LBB8_7
# %bb.6:                                # %if.end
                                        #   in Loop: Header=BB8_2 Depth=1
	ori	$a1, $zero, 259
	bne	$a0, $a1, .LBB8_10
.LBB8_7:                                # %if.then3
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(GlobalScopeAndInsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB8_9
# %bb.8:                                # %if.then3
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.w	$a0, $s0, %pc_lo12(lookahead)
	ori	$a1, $zero, 44
	beq	$a0, $a1, .LBB8_2
.LBB8_9:                                # %while.end
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB8_10:                               # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.Lfunc_end8:
	.size	GlobalVarList, .Lfunc_end8-GlobalVarList
                                        # -- End function
	.globl	exprTest                        # -- Begin function exprTest
	.p2align	5
	.type	exprTest,@function
exprTest:                               # @exprTest
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(FloatFlag)
	st.w	$zero, $s1, %pc_lo12(FloatFlag)
	pcaddu18i	$ra, %call36(expr)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(ErrorFlag)
	ld.w	$a1, $s2, %pc_lo12(ErrorFlag)
	st.w	$a0, $s1, %pc_lo12(FloatFlag)
	bnez	$a1, .LBB9_16
# %bb.1:                                # %while.cond.preheader
	pcalau12i	$s3, %pc_hi20(lookahead)
	ld.wu	$a0, $s3, %pc_lo12(lookahead)
	bstrpick.d	$a1, $a0, 31, 1
	slli.w	$a1, $a1, 1
	ori	$s0, $zero, 2012
	bne	$a1, $s0, .LBB9_16
# %bb.2:                                # %while.body.preheader
	pcalau12i	$a1, %pc_hi20(PreviousLookahead)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(tokenval)
	pcalau12i	$a1, %pc_hi20(PreviousTokenval)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(ftokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(NextLookahead)
	pcalau12i	$a1, %pc_hi20(NextTokenval)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(NextFtokenval)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	pcalau12i	$s5, %pc_hi20(LabelCounter)
	.p2align	4, , 16
.LBB9_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$fp, $a0, 0
	bne	$fp, $s0, .LBB9_5
# %bb.4:                                # %if.then.i
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.w	$a0, $s6, %pc_lo12(tokenval)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$s0, $a1, %pc_lo12(PreviousLookahead)
	b	.LBB9_6
	.p2align	4, , 16
.LBB9_5:                                # %if.then.i12
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.w	$a0, $s6, %pc_lo12(tokenval)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ori	$a2, $zero, 2013
	st.w	$a2, $a1, %pc_lo12(PreviousLookahead)
.LBB9_6:                                # %if.then.i12
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(PreviousTokenval)
	fld.s	$fa0, $s8, %pc_lo12(ftokenval)
	ld.w	$a0, $s7, %pc_lo12(NextLookahead)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(NextTokenval)
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	fld.s	$fa1, $a2, %pc_lo12(NextFtokenval)
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	fst.s	$fa0, $a2, %pc_lo12(PreviousFtokenval)
	st.w	$a0, $s3, %pc_lo12(lookahead)
	st.w	$a1, $s6, %pc_lo12(tokenval)
	fst.s	$fa1, $s8, %pc_lo12(ftokenval)
	ori	$a1, $zero, 260
	beq	$a0, $a1, .LBB9_8
# %bb.7:                                # %if.end4.sink.split
                                        #   in Loop: Header=BB9_3 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s7, %pc_lo12(NextLookahead)
.LBB9_8:                                # %if.end4
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB9_16
# %bb.9:                                # %if.end7
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.w	$a0, $s1, %pc_lo12(FloatFlag)
	beqz	$a0, .LBB9_12
# %bb.10:                               # %if.then9
                                        #   in Loop: Header=BB9_3 Depth=1
	st.w	$zero, $s1, %pc_lo12(FloatFlag)
	pcaddu18i	$ra, %call36(expr)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, %pc_lo12(FloatFlag)
	bnez	$a0, .LBB9_14
# %bb.11:                               # %if.then12
                                        #   in Loop: Header=BB9_3 Depth=1
	ori	$a0, $zero, 2003
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s1, %pc_lo12(FloatFlag)
	b	.LBB9_14
	.p2align	4, , 16
.LBB9_12:                               # %if.else14
                                        #   in Loop: Header=BB9_3 Depth=1
	pcaddu18i	$ra, %call36(expr)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, %pc_lo12(FloatFlag)
	beqz	$a0, .LBB9_14
# %bb.13:                               # %if.then17
                                        #   in Loop: Header=BB9_3 Depth=1
	ori	$a0, $zero, 256
	ori	$a1, $zero, 1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2028
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2003
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	ori	$a1, $zero, 1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2023
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
.LBB9_14:                               # %if.end19
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB9_16
# %bb.15:                               # %if.end22
                                        #   in Loop: Header=BB9_3 Depth=1
	addi.d	$a0, $fp, -2012
	sltui	$s4, $a0, 1
	ori	$a0, $zero, 2016
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s5, %pc_lo12(LabelCounter)
	addi.w	$s0, $fp, 1
	addi.d	$a0, $fp, 2
	st.w	$a0, $s5, %pc_lo12(LabelCounter)
	ori	$a0, $zero, 2015
	move	$a1, $fp
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2025
	masknez	$a0, $a0, $s4
	ori	$a1, $zero, 2017
	maskeqz	$a1, $a1, $s4
	or	$a0, $a1, $a0
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2015
	move	$a1, $s0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2018
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2014
	move	$a1, $fp
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	ori	$a1, $zero, 1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2014
	move	$a1, $s0
	ori	$s0, $zero, 2012
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, %pc_lo12(lookahead)
	bstrpick.d	$a1, $a0, 31, 1
	slli.w	$a1, $a1, 1
	beq	$a1, $s0, .LBB9_3
.LBB9_16:                               # %cleanup
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end9:
	.size	exprTest, .Lfunc_end9-exprTest
                                        # -- End function
	.globl	exprAssg                        # -- Begin function exprAssg
	.p2align	5
	.type	exprAssg,@function
exprAssg:                               # @exprAssg
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(lookahead)
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 259
	beq	$a0, $a1, .LBB10_6
# %bb.1:                                # %entry
	ori	$a1, $zero, 2006
	bne	$a0, $a1, .LBB10_12
# %bb.2:                                # %sw.bb
	pcalau12i	$a0, %pc_hi20(LocalIndex)
	ld.w	$s0, $a0, %pc_lo12(LocalIndex)
	pcalau12i	$a0, %pc_hi20(GlobalIndex)
	ld.w	$fp, $a0, %pc_lo12(GlobalIndex)
	pcaddu18i	$ra, %call36(PushArrayCellAddr)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(ErrorFlag)
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB10_43
# %bb.3:                                # %if.end
	pcalau12i	$s3, %pc_hi20(NextLookahead)
	ld.w	$a0, $s3, %pc_lo12(NextLookahead)
	ori	$a1, $zero, 61
	bne	$a0, $a1, .LBB10_12
# %bb.4:                                # %if.then1
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	pcalau12i	$a2, %pc_hi20(ArrayParsed)
	ori	$a1, $zero, 2006
	st.w	$zero, $a2, %pc_lo12(ArrayParsed)
	bne	$a0, $a1, .LBB10_22
# %bb.5:                                # %if.then2.i
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$a1, %pc_hi20(NextTokenval)
	ld.w	$a1, $a1, %pc_lo12(NextTokenval)
	pcalau12i	$a3, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a3, %pc_lo12(NextFtokenval)
	ori	$a3, $zero, 61
	st.w	$a3, $s1, %pc_lo12(lookahead)
	st.w	$a1, $a0, %pc_lo12(tokenval)
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s3, %pc_lo12(NextLookahead)
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB10_43
	b	.LBB10_25
.LBB10_6:                               # %sw.bb52
	pcalau12i	$s2, %pc_hi20(NextLookahead)
	ld.w	$a0, $s2, %pc_lo12(NextLookahead)
	ori	$a1, $zero, 61
	bne	$a0, $a1, .LBB10_12
# %bb.7:                                # %if.then54
	pcalau12i	$a0, %pc_hi20(LocalIndex)
	ld.w	$s0, $a0, %pc_lo12(LocalIndex)
	pcalau12i	$a0, %pc_hi20(GlobalIndex)
	ld.w	$fp, $a0, %pc_lo12(GlobalIndex)
	beqz	$s0, .LBB10_13
# %bb.8:                                # %if.then56
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2049
	move	$a1, $s0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 259
	bne	$a0, $a1, .LBB10_15
.LBB10_9:                               # %if.then.i45
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	ld.w	$a1, $s2, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s1, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB10_11
# %bb.10:                               # %if.then2.i47
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, %pc_lo12(NextLookahead)
.LBB10_11:                              # %match.exit49
	pcalau12i	$s3, %pc_hi20(ErrorFlag)
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB10_43
	b	.LBB10_19
.LBB10_12:                              # %if.else47
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(exprTest)
	jr	$t8
.LBB10_13:                              # %if.else57
	beqz	$fp, .LBB10_28
# %bb.14:                               # %if.then59
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2050
	move	$a1, $fp
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 259
	beq	$a0, $a1, .LBB10_9
.LBB10_15:                              # %if.else.i37
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB10_17
# %bb.16:                               # %sw.bb.i44
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB10_17:                              # %sw.epilog.i40
	pcalau12i	$a0, %pc_hi20(ErrorFlag)
	ld.w	$a0, $a0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB10_43
# %bb.18:                               # %if.end4.i42
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(ErrorFlag)
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB10_43
.LBB10_19:                              # %if.end65
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 61
	bne	$a0, $a1, .LBB10_29
# %bb.20:                               # %if.then.i59
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	ld.w	$a1, $s2, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s1, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB10_32
# %bb.21:                               # %if.then2.i61
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, %pc_lo12(NextLookahead)
	b	.LBB10_32
.LBB10_22:                              # %if.else.i
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB10_24
# %bb.23:                               # %sw.epilog.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB10_43
.LBB10_24:                              # %if.end4.i
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB10_43
.LBB10_25:                              # %if.end4
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 61
	bne	$a0, $a1, .LBB10_38
# %bb.26:                               # %if.then.i31
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	ld.w	$a1, $s3, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s1, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB10_41
# %bb.27:                               # %if.then2.i33
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s3, %pc_lo12(NextLookahead)
	b	.LBB10_41
.LBB10_28:                              # %if.else60
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB10_29:                              # %if.else.i51
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB10_31
# %bb.30:                               # %sw.epilog.i54
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB10_43
.LBB10_31:                              # %if.end4.i56
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB10_32:                              # %match.exit63
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB10_43
# %bb.33:                               # %if.end68
	pcalau12i	$s1, %pc_hi20(FloatFlag)
	st.w	$zero, $s1, %pc_lo12(FloatFlag)
	pcaddu18i	$ra, %call36(exprAssg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB10_43
# %bb.34:                               # %if.end71
	beqz	$s0, .LBB10_45
.LBB10_35:                              # %if.then73
	slli.d	$a0, $s0, 5
	pcalau12i	$a1, %pc_hi20(LocalTable)
	addi.d	$a1, $a1, %pc_lo12(LocalTable)
	add.d	$a0, $a1, $a0
	ld.w	$a2, $a0, 12
	ld.w	$a1, $s1, %pc_lo12(FloatFlag)
	ori	$a0, $zero, 2002
	bne	$a2, $a0, .LBB10_49
# %bb.36:                               # %if.then12
	beqz	$a1, .LBB10_49
# %bb.37:
	move	$s0, $zero
	ori	$fp, $zero, 2053
	b	.LBB10_52
.LBB10_38:                              # %if.else.i23
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB10_40
# %bb.39:                               # %sw.epilog.i26
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB10_43
.LBB10_40:                              # %if.end4.i28
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB10_41:                              # %match.exit35
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB10_43
# %bb.42:                               # %if.end7
	pcalau12i	$s1, %pc_hi20(FloatFlag)
	st.w	$zero, $s1, %pc_lo12(FloatFlag)
	pcaddu18i	$ra, %call36(exprAssg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB10_44
.LBB10_43:                              # %cleanup
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB10_44:                              # %if.end10
	bnez	$s0, .LBB10_35
.LBB10_45:                              # %if.else91
	beqz	$fp, .LBB10_54
# %bb.46:                               # %if.then93
	slli.d	$a0, $fp, 5
	pcalau12i	$a1, %pc_hi20(GlobalTable)
	addi.d	$a1, $a1, %pc_lo12(GlobalTable)
	add.d	$a0, $a1, $a0
	ld.w	$a2, $a0, 12
	ld.w	$a1, $s1, %pc_lo12(FloatFlag)
	ori	$a0, $zero, 2002
	bne	$a2, $a0, .LBB10_50
# %bb.47:                               # %if.then27
	beqz	$a1, .LBB10_50
# %bb.48:
	move	$s0, $zero
	ori	$fp, $zero, 2022
	b	.LBB10_52
.LBB10_49:                              # %if.else
	ori	$a0, $zero, 2003
	ori	$fp, $zero, 2053
	beq	$a2, $a0, .LBB10_51
	b	.LBB10_53
.LBB10_50:                              # %if.else35
	ori	$a0, $zero, 2003
	ori	$fp, $zero, 2022
	bne	$a2, $a0, .LBB10_53
.LBB10_51:                              # %if.else35
	ori	$s0, $zero, 1
	bnez	$a1, .LBB10_53
.LBB10_52:                              # %if.end46.sink.split.sink.split
	movgr2fr.w	$fa0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	st.w	$s0, $s1, %pc_lo12(FloatFlag)
.LBB10_53:                              # %if.end46.sink.split
	movgr2fr.w	$fa0, $zero
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
.LBB10_54:                              # %if.end46
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2037
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2004
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(emit)
	jr	$t8
.Lfunc_end10:
	.size	exprAssg, .Lfunc_end10-exprAssg
                                        # -- End function
	.globl	parseAStmt                      # -- Begin function parseAStmt
	.p2align	5
	.type	parseAStmt,@function
parseAStmt:                             # @parseAStmt
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(lookahead)
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 2007
	blt	$a1, $a0, .LBB11_9
# %bb.1:                                # %entry
	ori	$a1, $zero, 123
	beq	$a0, $a1, .LBB11_19
# %bb.2:                                # %entry
	ori	$a1, $zero, 2007
	bne	$a0, $a1, .LBB11_16
# %bb.3:                                # %if.then.i
	pcalau12i	$s6, %pc_hi20(PreviousLookahead)
	st.w	$a1, $s6, %pc_lo12(PreviousLookahead)
	pcalau12i	$s4, %pc_hi20(tokenval)
	ld.w	$a0, $s4, %pc_lo12(tokenval)
	pcalau12i	$s5, %pc_hi20(ftokenval)
	fld.s	$fa0, $s5, %pc_lo12(ftokenval)
	pcalau12i	$s8, %pc_hi20(PreviousTokenval)
	st.w	$a0, $s8, %pc_lo12(PreviousTokenval)
	pcalau12i	$s7, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $s7, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s3, %pc_hi20(NextLookahead)
	ld.w	$a0, $s3, %pc_lo12(NextLookahead)
	pcalau12i	$fp, %pc_hi20(NextTokenval)
	ld.w	$a1, $fp, %pc_lo12(NextTokenval)
	pcalau12i	$s0, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $s0, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s4, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s5, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB11_5
# %bb.4:                                # %if.then2.i
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s3, %pc_lo12(NextLookahead)
.LBB11_5:                               # %match.exit
	pcalau12i	$a1, %pc_hi20(ErrorFlag)
	ld.w	$a0, $a1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.6:                                # %if.end
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(LabelCounter)
	ld.w	$a1, $a0, %pc_lo12(LabelCounter)
	addi.w	$s2, $a1, 1
	addi.d	$a2, $a1, 2
	st.w	$a2, $a0, %pc_lo12(LabelCounter)
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2014
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2015
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $s2
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	ori	$a0, $zero, 40
	bne	$a1, $a0, .LBB11_45
# %bb.7:                                # %if.then.i17
	ld.w	$a1, $s4, %pc_lo12(tokenval)
	st.w	$a0, $s6, %pc_lo12(PreviousLookahead)
	fld.s	$fa0, $s5, %pc_lo12(ftokenval)
	st.w	$a1, $s8, %pc_lo12(PreviousTokenval)
	ld.w	$a0, $s3, %pc_lo12(NextLookahead)
	ld.w	$a1, $fp, %pc_lo12(NextTokenval)
	fst.s	$fa0, $s7, %pc_lo12(PreviousFtokenval)
	fld.s	$fa0, $s0, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s4, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s5, %pc_lo12(ftokenval)
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB11_49
# %bb.8:                                # %if.then2.i19
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s3, %pc_lo12(NextLookahead)
	b	.LBB11_49
.LBB11_9:                               # %entry
	ori	$a1, $zero, 2008
	beq	$a0, $a1, .LBB11_28
# %bb.10:                               # %entry
	ori	$a1, $zero, 2042
	bne	$a0, $a1, .LBB11_16
# %bb.11:                               # %sw.bb57
	pcalau12i	$fp, %pc_hi20(NextLookahead)
	ld.w	$a0, $fp, %pc_lo12(NextLookahead)
	pcalau12i	$s4, %pc_hi20(PreviousLookahead)
	st.w	$a1, $s4, %pc_lo12(PreviousLookahead)
	pcalau12i	$s3, %pc_hi20(tokenval)
	ld.w	$a1, $s3, %pc_lo12(tokenval)
	pcalau12i	$s5, %pc_hi20(PreviousTokenval)
	pcalau12i	$s2, %pc_hi20(ftokenval)
	fld.s	$fa0, $s2, %pc_lo12(ftokenval)
	st.w	$a1, $s5, %pc_lo12(PreviousTokenval)
	pcalau12i	$s6, %pc_hi20(PreviousFtokenval)
	ori	$a1, $zero, 59
	fst.s	$fa0, $s6, %pc_lo12(PreviousFtokenval)
	bne	$a0, $a1, .LBB11_34
# %bb.12:                               # %match.exit91
	pcalau12i	$s7, %pc_hi20(NextTokenval)
	ld.w	$a0, $s7, %pc_lo12(NextTokenval)
	pcalau12i	$s8, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a1, $s1, %pc_lo12(lookahead)
	st.w	$a0, $s3, %pc_lo12(tokenval)
	fst.s	$fa0, $s2, %pc_lo12(ftokenval)
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(ErrorFlag)
	ld.w	$a1, $s0, %pc_lo12(ErrorFlag)
	st.w	$a0, $fp, %pc_lo12(NextLookahead)
	bnez	$a1, .LBB11_70
# %bb.13:                               # %if.end62
	ld.w	$a2, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 59
	bne	$a2, $a1, .LBB11_66
# %bb.14:                               # %if.then.i101
	ld.w	$a2, $s3, %pc_lo12(tokenval)
	fld.s	$fa0, $s2, %pc_lo12(ftokenval)
	st.w	$a1, $s4, %pc_lo12(PreviousLookahead)
	st.w	$a2, $s5, %pc_lo12(PreviousTokenval)
	ld.w	$a1, $s7, %pc_lo12(NextTokenval)
	fst.s	$fa0, $s6, %pc_lo12(PreviousFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s3, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s2, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB11_69
# %bb.15:                               # %if.then2.i103
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, %pc_lo12(NextLookahead)
	b	.LBB11_69
.LBB11_16:                              # %sw.default
	pcaddu18i	$ra, %call36(exprAssg)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(ErrorFlag)
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.17:                               # %if.end83
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2004
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 59
	bne	$a0, $a1, .LBB11_41
# %bb.18:                               # %if.then.i129
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$fp, %pc_hi20(NextLookahead)
	ld.w	$a1, $fp, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s1, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	bne	$a1, $a0, .LBB11_27
	b	.LBB11_70
.LBB11_19:                              # %if.then.i59
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$s0, %pc_hi20(tokenval)
	ld.w	$a0, $s0, %pc_lo12(tokenval)
	pcalau12i	$s2, %pc_hi20(ftokenval)
	fld.s	$fa0, $s2, %pc_lo12(ftokenval)
	pcalau12i	$s5, %pc_hi20(PreviousTokenval)
	st.w	$a0, $s5, %pc_lo12(PreviousTokenval)
	pcalau12i	$a0, %pc_hi20(PreviousFtokenval)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	fst.s	$fa0, $a0, %pc_lo12(PreviousFtokenval)
	pcalau12i	$fp, %pc_hi20(NextLookahead)
	ld.w	$a0, $fp, %pc_lo12(NextLookahead)
	pcalau12i	$s6, %pc_hi20(NextTokenval)
	ld.w	$a1, $s6, %pc_lo12(NextTokenval)
	pcalau12i	$s7, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $s7, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s0, %pc_lo12(tokenval)
	ori	$s8, $zero, 260
	fst.s	$fa0, $s2, %pc_lo12(ftokenval)
	beq	$a0, $s8, .LBB11_21
# %bb.20:                               # %if.then2.i61
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, %pc_lo12(NextLookahead)
.LBB11_21:                              # %do.body.preheader
	pcalau12i	$s3, %pc_hi20(ErrorFlag)
	ori	$s4, $zero, 125
	.p2align	4, , 16
.LBB11_22:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(parseAStmt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB11_24
# %bb.23:                               # %if.then50
                                        #   in Loop: Header=BB11_22 Depth=1
	st.w	$zero, $s3, %pc_lo12(ErrorFlag)
.LBB11_24:                              # %do.cond
                                        #   in Loop: Header=BB11_22 Depth=1
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	beq	$a0, $s8, .LBB11_39
# %bb.25:                               # %do.cond
                                        #   in Loop: Header=BB11_22 Depth=1
	bne	$a0, $s4, .LBB11_22
# %bb.26:                               # %if.then.i73
	ld.w	$a0, $s0, %pc_lo12(tokenval)
	ori	$a1, $zero, 125
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(PreviousLookahead)
	fld.s	$fa0, $s2, %pc_lo12(ftokenval)
	st.w	$a0, $s5, %pc_lo12(PreviousTokenval)
	ld.w	$a0, $fp, %pc_lo12(NextLookahead)
	ld.w	$a1, $s6, %pc_lo12(NextTokenval)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	fst.s	$fa0, $a2, %pc_lo12(PreviousFtokenval)
	fld.s	$fa0, $s7, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s0, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s2, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB11_70
.LBB11_27:                              # %if.then2.i75
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, %pc_lo12(NextLookahead)
	b	.LBB11_70
.LBB11_28:                              # %if.then.i31
	pcalau12i	$s6, %pc_hi20(PreviousLookahead)
	st.w	$a1, $s6, %pc_lo12(PreviousLookahead)
	pcalau12i	$s4, %pc_hi20(tokenval)
	ld.w	$a0, $s4, %pc_lo12(tokenval)
	pcalau12i	$s5, %pc_hi20(ftokenval)
	fld.s	$fa0, $s5, %pc_lo12(ftokenval)
	pcalau12i	$s8, %pc_hi20(PreviousTokenval)
	st.w	$a0, $s8, %pc_lo12(PreviousTokenval)
	pcalau12i	$s7, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $s7, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s0, %pc_hi20(NextLookahead)
	ld.w	$a0, $s0, %pc_lo12(NextLookahead)
	pcalau12i	$fp, %pc_hi20(NextTokenval)
	ld.w	$a1, $fp, %pc_lo12(NextTokenval)
	pcalau12i	$s3, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $s3, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s4, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s5, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB11_30
# %bb.29:                               # %if.then2.i33
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
.LBB11_30:                              # %match.exit35
	pcalau12i	$s2, %pc_hi20(ErrorFlag)
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.31:                               # %if.end20
	pcalau12i	$a2, %pc_hi20(LabelCounter)
	ld.w	$a1, $a2, %pc_lo12(LabelCounter)
	addi.d	$a0, $a1, 1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.w	$a0, $a2, %pc_lo12(LabelCounter)
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2015
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	ori	$a0, $zero, 40
	bne	$a1, $a0, .LBB11_54
# %bb.32:                               # %if.then.i45
	ld.w	$a1, $s4, %pc_lo12(tokenval)
	st.w	$a0, $s6, %pc_lo12(PreviousLookahead)
	fld.s	$fa0, $s5, %pc_lo12(ftokenval)
	st.w	$a1, $s8, %pc_lo12(PreviousTokenval)
	ld.w	$a0, $s0, %pc_lo12(NextLookahead)
	ld.w	$a1, $fp, %pc_lo12(NextTokenval)
	fst.s	$fa0, $s7, %pc_lo12(PreviousFtokenval)
	fld.s	$fa0, $s3, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s4, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s5, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB11_58
# %bb.33:                               # %if.then2.i47
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
	b	.LBB11_58
.LBB11_34:                              # %if.then.i115
	pcalau12i	$a1, %pc_hi20(NextTokenval)
	ld.w	$a1, $a1, %pc_lo12(NextTokenval)
	pcalau12i	$a2, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a2, %pc_lo12(NextFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s3, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s2, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB11_36
# %bb.35:                               # %if.then2.i117
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, %pc_lo12(NextLookahead)
.LBB11_36:                              # %match.exit119
	pcalau12i	$fp, %pc_hi20(ErrorFlag)
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.37:                               # %if.end73
	pcaddu18i	$ra, %call36(exprAssg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.38:                               # %if.end76
	ori	$a0, $zero, 59
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
	b	.LBB11_75
.LBB11_39:                              # %if.end4.i70
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 260
.LBB11_40:                              # %if.end4.i70
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB11_41:                              # %if.else.i121
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB11_43
# %bb.42:                               # %sw.bb.i128
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB11_43:                              # %sw.epilog.i124
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.44:                               # %if.end4.i126
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	b	.LBB11_40
.LBB11_45:                              # %if.else.i9
	addi.w	$a0, $a1, -2007
	ori	$a1, $zero, 1
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB11_47
# %bb.46:                               # %sw.bb.i16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB11_47:                              # %sw.epilog.i12
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.48:                               # %if.end4.i14
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB11_49:                              # %match.exit21
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.50:                               # %if.end4
	pcalau12i	$fp, %pc_hi20(FloatFlag)
	st.w	$zero, $fp, %pc_lo12(FloatFlag)
	pcaddu18i	$ra, %call36(exprAssg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.51:                               # %if.end7
	ori	$a0, $zero, 41
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.52:                               # %if.end10
	ld.w	$a0, $fp, %pc_lo12(FloatFlag)
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 2001
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 256
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	movgr2fr.w	$fs0, $zero
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2016
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2017
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(parseAStmt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.53:                               # %if.end16
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2015
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2018
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2014
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	b	.LBB11_76
.LBB11_54:                              # %if.else.i37
	addi.w	$a0, $a1, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB11_56
# %bb.55:                               # %sw.bb.i44
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB11_56:                              # %sw.epilog.i40
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.57:                               # %if.end4.i42
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB11_58:                              # %match.exit49
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.59:                               # %if.end24
	pcalau12i	$fp, %pc_hi20(FloatFlag)
	st.w	$zero, $fp, %pc_lo12(FloatFlag)
	pcaddu18i	$ra, %call36(exprAssg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.60:                               # %if.end27
	ori	$a0, $zero, 41
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.61:                               # %if.end30
	ld.w	$a0, $fp, %pc_lo12(FloatFlag)
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 2001
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 256
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	movgr2fr.w	$fs0, $zero
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2016
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2017
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(parseAStmt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.62:                               # %if.end37
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 2024
	bne	$a0, $a1, .LBB11_78
# %bb.63:                               # %if.then38
	ori	$a0, $zero, 2024
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.64:                               # %if.end41
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s0, $a1, %pc_lo12(LabelCounter)
	addi.d	$a0, $s0, 1
	st.w	$a0, $a1, %pc_lo12(LabelCounter)
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2015
	move	$a1, $s0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2018
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2014
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(parseAStmt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
# %bb.65:                               # %if.end45
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2014
	move	$a1, $s0
	b	.LBB11_77
.LBB11_66:                              # %if.else.i93
	addi.w	$a0, $a2, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB11_68
# %bb.67:                               # %sw.epilog.i96
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB11_70
.LBB11_68:                              # %if.end4.i98
	ld.w	$a1, $s1, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB11_69:                              # %match.exit105
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB11_71
.LBB11_70:                              # %cleanup
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB11_71:                              # %if.end65
	pcalau12i	$a0, %pc_hi20(FuncNameIndex)
	ld.w	$a0, $a0, %pc_lo12(FuncNameIndex)
	slli.d	$a0, $a0, 5
	pcalau12i	$a1, %pc_hi20(GlobalTable)
	addi.d	$a1, $a1, %pc_lo12(GlobalTable)
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 12
	ori	$a1, $zero, 2002
	bne	$a0, $a1, .LBB11_73
# %bb.72:                               # %if.then67
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 256
	ori	$a1, $zero, 1
	b	.LBB11_74
.LBB11_73:                              # %if.else68
	ori	$a0, $zero, 2001
	vldi	$vr0, -1168
	move	$a1, $zero
.LBB11_74:                              # %if.end80
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
.LBB11_75:                              # %if.end80
	pcalau12i	$a0, %pc_hi20(ReturnLabel)
	ld.w	$a1, $a0, %pc_lo12(ReturnLabel)
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2015
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2018
	move	$a1, $zero
.LBB11_76:                              # %if.end80
	fmov.s	$fa0, $fs0
.LBB11_77:                              # %if.end80
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(emit)
	jr	$t8
.LBB11_78:                              # %if.else46
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2014
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB11_77
.Lfunc_end11:
	.size	parseAStmt, .Lfunc_end11-parseAStmt
                                        # -- End function
	.globl	parse                           # -- Begin function parse
	.p2align	5
	.type	parse,@function
parse:                                  # @parse
# %bb.0:                                # %if.then.i
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
	pcalau12i	$s3, %pc_hi20(PreviousLookahead)
	ori	$a0, $zero, 1
	st.w	$a0, $s3, %pc_lo12(PreviousLookahead)
	pcalau12i	$s1, %pc_hi20(tokenval)
	ld.w	$a0, $s1, %pc_lo12(tokenval)
	pcalau12i	$s2, %pc_hi20(ftokenval)
	fld.s	$fa0, $s2, %pc_lo12(ftokenval)
	pcalau12i	$s6, %pc_hi20(PreviousTokenval)
	st.w	$a0, $s6, %pc_lo12(PreviousTokenval)
	pcalau12i	$s4, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $s4, %pc_lo12(PreviousFtokenval)
	pcalau12i	$fp, %pc_hi20(NextLookahead)
	ld.w	$a1, $fp, %pc_lo12(NextLookahead)
	pcalau12i	$s5, %pc_hi20(lookahead)
	pcalau12i	$s7, %pc_hi20(NextTokenval)
	ld.w	$a0, $s7, %pc_lo12(NextTokenval)
	pcalau12i	$s8, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a1, $s5, %pc_lo12(lookahead)
	st.w	$a0, $s1, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $s2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB12_2
# %bb.1:                                # %if.then2.i
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, %pc_lo12(NextLookahead)
.LBB12_2:                               # %match.exit
	pcalau12i	$s0, %pc_hi20(ErrorFlag)
	ld.w	$a1, $s0, %pc_lo12(ErrorFlag)
	beqz	$a1, .LBB12_4
# %bb.3:                                # %if.then
	st.w	$zero, $s0, %pc_lo12(ErrorFlag)
.LBB12_4:                               # %if.then.i10
	ld.w	$a1, $s1, %pc_lo12(tokenval)
	ori	$a2, $zero, 1
	fld.s	$fa0, $s2, %pc_lo12(ftokenval)
	st.w	$a2, $s3, %pc_lo12(PreviousLookahead)
	st.w	$a1, $s6, %pc_lo12(PreviousTokenval)
	ld.w	$a1, $s7, %pc_lo12(NextTokenval)
	fst.s	$fa0, $s4, %pc_lo12(PreviousFtokenval)
	fld.s	$fa0, $s8, %pc_lo12(NextFtokenval)
	st.w	$a0, $s5, %pc_lo12(lookahead)
	st.w	$a1, $s1, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s2, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB12_7
# %bb.5:                                # %match.exit14
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(ErrorFlag)
	st.w	$a0, $fp, %pc_lo12(NextLookahead)
	beqz	$a1, .LBB12_7
# %bb.6:                                # %if.then2
	st.w	$zero, $s0, %pc_lo12(ErrorFlag)
.LBB12_7:                               # %if.end3
	pcaddu18i	$ra, %call36(DeclOrF)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB12_10
# %bb.8:                                # %if.end6
	pcaddu18i	$ra, %call36(FunctionList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB12_10
# %bb.9:                                # %if.end9
	pcaddu18i	$ra, %call36(CheckMain)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(AllBodsParsed)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB12_11
.LBB12_10:                              # %return
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
	ret
.LBB12_11:                              # %if.end12
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 2027
	move	$a1, $zero
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
	pcaddu18i	$t8, %call36(emit)
	jr	$t8
.Lfunc_end12:
	.size	parse, .Lfunc_end12-parse
                                        # -- End function
	.globl	FunctionList                    # -- Begin function FunctionList
	.p2align	5
	.type	FunctionList,@function
FunctionList:                           # @FunctionList
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(ErrorFlag)
	pcalau12i	$s0, %pc_hi20(FloatFlag)
	pcalau12i	$s1, %pc_hi20(lookahead)
	ori	$s5, $zero, 260
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(tokenval)
	pcalau12i	$a0, %pc_hi20(PreviousTokenval)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(ftokenval)
	pcalau12i	$s4, %pc_hi20(PreviousFtokenval)
	pcalau12i	$s2, %pc_hi20(NextLookahead)
	pcalau12i	$s6, %pc_hi20(NextTokenval)
	pcalau12i	$s8, %pc_hi20(NextFtokenval)
	.p2align	4, , 16
.LBB13_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $fp, %pc_lo12(ErrorFlag)
	st.w	$zero, $s0, %pc_lo12(FloatFlag)
	pcaddu18i	$ra, %call36(LocalReset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	ori	$a1, $zero, 2001
	bge	$a1, $a0, .LBB13_8
# %bb.2:                                # %do.body
                                        #   in Loop: Header=BB13_1 Depth=1
	ori	$a1, $zero, 2002
	beq	$a0, $a1, .LBB13_9
# %bb.3:                                # %do.body
                                        #   in Loop: Header=BB13_1 Depth=1
	ori	$a1, $zero, 2003
	bne	$a0, $a1, .LBB13_16
# %bb.4:                                # %if.then.i10
                                        #   in Loop: Header=BB13_1 Depth=1
	ld.w	$a0, $s7, %pc_lo12(tokenval)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ori	$a2, $zero, 2003
	st.w	$a2, $a1, %pc_lo12(PreviousLookahead)
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(PreviousTokenval)
	fld.s	$fa0, $s3, %pc_lo12(ftokenval)
	ld.w	$a0, $s2, %pc_lo12(NextLookahead)
	ld.w	$a1, $s6, %pc_lo12(NextTokenval)
	fld.s	$fa1, $s8, %pc_lo12(NextFtokenval)
	fst.s	$fa0, $s4, %pc_lo12(PreviousFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s7, %pc_lo12(tokenval)
	fst.s	$fa1, $s3, %pc_lo12(ftokenval)
	beq	$a0, $s5, .LBB13_6
# %bb.5:                                # %if.then2.i12
                                        #   in Loop: Header=BB13_1 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, %pc_lo12(NextLookahead)
.LBB13_6:                               # %match.exit14
                                        #   in Loop: Header=BB13_1 Depth=1
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB13_15
# %bb.7:                                # %if.end11
                                        #   in Loop: Header=BB13_1 Depth=1
	ori	$a0, $zero, 2003
	pcaddu18i	$ra, %call36(FunctionDef)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB13_13
	b	.LBB13_15
	.p2align	4, , 16
.LBB13_8:                               # %do.body
                                        #   in Loop: Header=BB13_1 Depth=1
	ori	$a1, $zero, 259
	beq	$a0, $a1, .LBB13_12
	b	.LBB13_14
	.p2align	4, , 16
.LBB13_9:                               # %if.then.i
                                        #   in Loop: Header=BB13_1 Depth=1
	ld.w	$a0, $s7, %pc_lo12(tokenval)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(PreviousLookahead)
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(PreviousTokenval)
	fld.s	$fa0, $s3, %pc_lo12(ftokenval)
	ld.w	$a0, $s2, %pc_lo12(NextLookahead)
	ld.w	$a1, $s6, %pc_lo12(NextTokenval)
	fld.s	$fa1, $s8, %pc_lo12(NextFtokenval)
	fst.s	$fa0, $s4, %pc_lo12(PreviousFtokenval)
	st.w	$a0, $s1, %pc_lo12(lookahead)
	st.w	$a1, $s7, %pc_lo12(tokenval)
	fst.s	$fa1, $s3, %pc_lo12(ftokenval)
	beq	$a0, $s5, .LBB13_11
# %bb.10:                               # %if.then2.i
                                        #   in Loop: Header=BB13_1 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, %pc_lo12(NextLookahead)
.LBB13_11:                              # %match.exit
                                        #   in Loop: Header=BB13_1 Depth=1
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB13_15
.LBB13_12:                              # %sw.bb
                                        #   in Loop: Header=BB13_1 Depth=1
	ori	$a0, $zero, 2002
	pcaddu18i	$ra, %call36(FunctionDef)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB13_15
.LBB13_13:                              # %do.cond
                                        #   in Loop: Header=BB13_1 Depth=1
	ld.w	$a0, $s1, %pc_lo12(lookahead)
	bne	$a0, $s5, .LBB13_1
	b	.LBB13_15
.LBB13_14:                              # %do.body
	ori	$a1, $zero, 260
	bne	$a0, $a1, .LBB13_16
.LBB13_15:                              # %do.end
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB13_16:                              # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.Lfunc_end13:
	.size	FunctionList, .Lfunc_end13-FunctionList
                                        # -- End function
	.globl	ExprList                        # -- Begin function ExprList
	.p2align	5
	.type	ExprList,@function
ExprList:                               # @ExprList
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
	pcalau12i	$fp, %pc_hi20(lookahead)
	ld.w	$a0, $fp, %pc_lo12(lookahead)
	ori	$a1, $zero, 41
	bne	$a0, $a1, .LBB14_2
.LBB14_1:                               # %if.end9
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
	ret
.LBB14_2:                               # %if.then
	pcaddu18i	$ra, %call36(exprAssg)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(ErrorFlag)
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB14_1
# %bb.3:                                # %if.then
	ld.w	$a0, $fp, %pc_lo12(lookahead)
	ori	$a1, $zero, 44
	bne	$a0, $a1, .LBB14_1
# %bb.4:                                # %if.then.i.preheader
	pcalau12i	$s2, %pc_hi20(PreviousLookahead)
	pcalau12i	$s3, %pc_hi20(tokenval)
	pcalau12i	$s4, %pc_hi20(PreviousTokenval)
	pcalau12i	$s5, %pc_hi20(ftokenval)
	pcalau12i	$s6, %pc_hi20(PreviousFtokenval)
	pcalau12i	$s7, %pc_hi20(NextLookahead)
	pcalau12i	$s8, %pc_hi20(NextTokenval)
	pcalau12i	$s1, %pc_hi20(NextFtokenval)
	.p2align	4, , 16
.LBB14_5:                               # %if.then.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, %pc_lo12(tokenval)
	ori	$a1, $zero, 44
	st.w	$a1, $s2, %pc_lo12(PreviousLookahead)
	st.w	$a0, $s4, %pc_lo12(PreviousTokenval)
	fld.s	$fa0, $s5, %pc_lo12(ftokenval)
	ld.w	$a0, $s7, %pc_lo12(NextLookahead)
	ld.w	$a1, $s8, %pc_lo12(NextTokenval)
	fld.s	$fa1, $s1, %pc_lo12(NextFtokenval)
	fst.s	$fa0, $s6, %pc_lo12(PreviousFtokenval)
	st.w	$a0, $fp, %pc_lo12(lookahead)
	st.w	$a1, $s3, %pc_lo12(tokenval)
	fst.s	$fa1, $s5, %pc_lo12(ftokenval)
	ori	$a1, $zero, 260
	beq	$a0, $a1, .LBB14_7
# %bb.6:                                # %match.exit
                                        #   in Loop: Header=BB14_5 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(ErrorFlag)
	st.w	$a0, $s7, %pc_lo12(NextLookahead)
	bnez	$a1, .LBB14_1
.LBB14_7:                               # %if.end5
                                        #   in Loop: Header=BB14_5 Depth=1
	pcaddu18i	$ra, %call36(exprAssg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB14_1
# %bb.8:                                # %if.end5
                                        #   in Loop: Header=BB14_5 Depth=1
	ld.w	$a0, $fp, %pc_lo12(lookahead)
	ori	$a1, $zero, 44
	beq	$a0, $a1, .LBB14_5
	b	.LBB14_1
.Lfunc_end14:
	.size	ExprList, .Lfunc_end14-ExprList
                                        # -- End function
	.globl	ParamList                       # -- Begin function ParamList
	.p2align	5
	.type	ParamList,@function
ParamList:                              # @ParamList
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(lookahead)
	ld.w	$a0, $s0, %pc_lo12(lookahead)
	ori	$a1, $zero, 259
	bne	$a0, $a1, .LBB15_17
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(GlobalIndex)
	ld.w	$a0, $a0, %pc_lo12(GlobalIndex)
	beqz	$a0, .LBB15_4
# %bb.2:                                # %if.then1
	slli.d	$a0, $a0, 5
	pcalau12i	$a1, %pc_hi20(GlobalTable)
	addi.d	$a1, $a1, %pc_lo12(GlobalTable)
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 20
	beqz	$a0, .LBB15_4
# %bb.3:                                # %if.then3
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	b	.LBB15_6
.LBB15_4:                               # %if.end4
	pcalau12i	$s2, %pc_hi20(LocalIndex)
	ld.w	$a0, $s2, %pc_lo12(LocalIndex)
	beqz	$a0, .LBB15_7
# %bb.5:                                # %if.then6
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
.LBB15_6:                               # %if.then3
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB15_7:                               # %if.else
	pcalau12i	$a0, %pc_hi20(lexbuf)
	addi.d	$a0, $a0, %pc_lo12(lexbuf)
	ori	$a1, $zero, 259
	ori	$a2, $zero, 2041
	ori	$a3, $zero, 1
	ori	$s3, $zero, 259
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(LocalInsert)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(ErrorFlag)
	ld.w	$a1, $s1, %pc_lo12(ErrorFlag)
	st.w	$a0, $s2, %pc_lo12(LocalIndex)
	bnez	$a1, .LBB15_17
# %bb.8:                                # %if.end10
	move	$fp, $a0
	ld.w	$a0, $s0, %pc_lo12(lookahead)
	bne	$a0, $s3, .LBB15_11
# %bb.9:                                # %if.then.i
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	ori	$a1, $zero, 259
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s2, %pc_hi20(NextLookahead)
	ld.w	$a1, $s2, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $s0, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB15_14
# %bb.10:                               # %if.then2.i
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, %pc_lo12(NextLookahead)
	b	.LBB15_14
.LBB15_11:                              # %if.else.i
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB15_13
# %bb.12:                               # %sw.epilog.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB15_17
.LBB15_13:                              # %if.end4.i
	ld.w	$a1, $s0, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB15_14:                              # %match.exit
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB15_17
# %bb.15:                               # %if.end13
	pcaddu18i	$ra, %call36(MoreParams)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB15_17
# %bb.16:                               # %if.end16
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2047
	move	$a1, $fp
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2049
	move	$a1, $fp
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2055
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(offset)
	ld.w	$a1, $a0, %pc_lo12(offset)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(offset)
.LBB15_17:                              # %cleanup
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end15:
	.size	ParamList, .Lfunc_end15-ParamList
                                        # -- End function
	.globl	DecList                         # -- Begin function DecList
	.p2align	5
	.type	DecList,@function
DecList:                                # @DecList
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(lookahead)
	ori	$s0, $zero, 2002
	pcalau12i	$s1, %pc_hi20(ErrorFlag)
	pcalau12i	$s2, %pc_hi20(PreviousLookahead)
	.p2align	4, , 16
.LBB16_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $fp, %pc_lo12(lookahead)
	bstrpick.d	$a1, $a0, 31, 1
	slli.w	$a1, $a1, 1
	bne	$a1, $s0, .LBB16_5
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB16_1 Depth=1
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB16_4
# %bb.3:                                # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	ld.w	$a0, $s2, %pc_lo12(PreviousLookahead)
	pcaddu18i	$ra, %call36(VarList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB16_1
.LBB16_4:                               # %return
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB16_5:                               # %while.end
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(ParamInt)
	jr	$t8
.Lfunc_end16:
	.size	DecList, .Lfunc_end16-DecList
                                        # -- End function
	.globl	FstmtList                       # -- Begin function FstmtList
	.p2align	5
	.type	FstmtList,@function
FstmtList:                              # @FstmtList
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(lookahead)
	ld.w	$a0, $fp, %pc_lo12(lookahead)
	ori	$a1, $zero, 123
	pcalau12i	$s0, %pc_hi20(ErrorFlag)
	bne	$a0, $a1, .LBB17_4
# %bb.1:                                # %if.then.i
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s1, %pc_hi20(NextLookahead)
	ld.w	$a1, $s1, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $fp, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB17_3
# %bb.2:                                # %if.then2.i
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, %pc_lo12(NextLookahead)
.LBB17_3:                               # %match.exit
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB17_8
	b	.LBB17_9
.LBB17_4:                               # %if.else.i
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB17_6
# %bb.5:                                # %sw.bb.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB17_6:                               # %sw.epilog.i
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB17_8
# %bb.7:                                # %if.end4.i
	ld.w	$a1, $fp, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB17_9
.LBB17_8:                               # %if.then
	st.w	$zero, $s0, %pc_lo12(ErrorFlag)
.LBB17_9:                               # %do.body.preheader
	ori	$s1, $zero, 125
	ori	$s2, $zero, 260
	.p2align	4, , 16
.LBB17_10:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(parseAStmt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB17_12
# %bb.11:                               # %if.then2
                                        #   in Loop: Header=BB17_10 Depth=1
	st.w	$zero, $s0, %pc_lo12(ErrorFlag)
.LBB17_12:                              # %do.cond
                                        #   in Loop: Header=BB17_10 Depth=1
	ld.w	$a0, $fp, %pc_lo12(lookahead)
	beq	$a0, $s1, .LBB17_15
# %bb.13:                               # %do.cond
                                        #   in Loop: Header=BB17_10 Depth=1
	bne	$a0, $s2, .LBB17_10
# %bb.14:                               # %if.then6
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB17_15:                              # %if.then.i10
	pcalau12i	$a0, %pc_hi20(PreviousLookahead)
	ori	$a1, $zero, 125
	st.w	$a1, $a0, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s0, %pc_hi20(NextLookahead)
	ld.w	$a1, $s0, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $fp, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB17_17
# %bb.16:                               # %if.then2.i12
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
.LBB17_17:                              # %if.end10
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	FstmtList, .Lfunc_end17-FstmtList
                                        # -- End function
	.globl	MoreParams                      # -- Begin function MoreParams
	.p2align	5
	.type	MoreParams,@function
MoreParams:                             # @MoreParams
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(lookahead)
	ld.w	$a1, $fp, %pc_lo12(lookahead)
	ori	$a0, $zero, 44
	bne	$a1, $a0, .LBB18_4
# %bb.1:                                # %if.then.i
	pcalau12i	$a1, %pc_hi20(PreviousLookahead)
	st.w	$a0, $a1, %pc_lo12(PreviousLookahead)
	pcalau12i	$a0, %pc_hi20(tokenval)
	ld.w	$a1, $a0, %pc_lo12(tokenval)
	pcalau12i	$a2, %pc_hi20(ftokenval)
	fld.s	$fa0, $a2, %pc_lo12(ftokenval)
	pcalau12i	$a3, %pc_hi20(PreviousTokenval)
	st.w	$a1, $a3, %pc_lo12(PreviousTokenval)
	pcalau12i	$a1, %pc_hi20(PreviousFtokenval)
	fst.s	$fa0, $a1, %pc_lo12(PreviousFtokenval)
	pcalau12i	$s0, %pc_hi20(NextLookahead)
	ld.w	$a1, $s0, %pc_lo12(NextLookahead)
	pcalau12i	$a3, %pc_hi20(NextTokenval)
	ld.w	$a3, $a3, %pc_lo12(NextTokenval)
	pcalau12i	$a4, %pc_hi20(NextFtokenval)
	fld.s	$fa0, $a4, %pc_lo12(NextFtokenval)
	st.w	$a1, $fp, %pc_lo12(lookahead)
	st.w	$a3, $a0, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $a2, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB18_3
# %bb.2:                                # %if.then2.i
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, %pc_lo12(NextLookahead)
.LBB18_3:                               # %match.exit
	pcalau12i	$s0, %pc_hi20(ErrorFlag)
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	beqz	$a0, .LBB18_5
.LBB18_4:                               # %cleanup
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB18_5:                               # %if.end
	ld.w	$a0, $fp, %pc_lo12(lookahead)
	ori	$a1, $zero, 259
	bne	$a0, $a1, .LBB18_9
# %bb.6:                                # %if.end4
	pcalau12i	$a0, %pc_hi20(GlobalIndex)
	ld.w	$a0, $a0, %pc_lo12(GlobalIndex)
	beqz	$a0, .LBB18_10
# %bb.7:                                # %if.then6
	slli.d	$a0, $a0, 5
	pcalau12i	$a1, %pc_hi20(GlobalTable)
	addi.d	$a1, $a1, %pc_lo12(GlobalTable)
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 20
	beqz	$a0, .LBB18_10
# %bb.8:                                # %if.then8
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	b	.LBB18_12
.LBB18_9:                               # %if.then3
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB18_12
.LBB18_10:                              # %if.end10
	pcalau12i	$s1, %pc_hi20(LocalIndex)
	ld.w	$a0, $s1, %pc_lo12(LocalIndex)
	beqz	$a0, .LBB18_13
# %bb.11:                               # %if.then12
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
.LBB18_12:                              # %if.then3
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB18_13:                              # %if.else
	pcalau12i	$a0, %pc_hi20(lexbuf)
	addi.d	$a0, $a0, %pc_lo12(lexbuf)
	ori	$a1, $zero, 259
	ori	$a2, $zero, 2041
	ori	$a3, $zero, 1
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(LocalInsert)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(ErrorFlag)
	st.w	$a0, $s1, %pc_lo12(LocalIndex)
	bnez	$a1, .LBB18_4
# %bb.14:                               # %if.end16
	move	$fp, $a0
	ori	$a0, $zero, 259
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB18_4
# %bb.15:                               # %if.end19
	pcaddu18i	$ra, %call36(MoreParams)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB18_4
# %bb.16:                               # %if.end22
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 2047
	move	$a1, $fp
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2049
	move	$a1, $fp
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2055
	move	$a1, $zero
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(offset)
	ld.w	$a1, $a0, %pc_lo12(offset)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(offset)
	b	.LBB18_4
.Lfunc_end18:
	.size	MoreParams, .Lfunc_end18-MoreParams
                                        # -- End function
	.globl	VarList                         # -- Begin function VarList
	.p2align	5
	.type	VarList,@function
VarList:                                # @VarList
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(GlobalIndex)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(LocalIndex)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(NextLookahead)
	ori	$a2, $zero, 91
	pcalau12i	$a0, %pc_hi20(lexbuf)
	addi.d	$a0, $a0, %pc_lo12(lexbuf)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(ErrorFlag)
	pcalau12i	$fp, %pc_hi20(PreviousLookahead)
	pcalau12i	$s7, %pc_hi20(tokenval)
	pcalau12i	$s3, %pc_hi20(PreviousTokenval)
	pcalau12i	$s6, %pc_hi20(ftokenval)
	pcalau12i	$a0, %pc_hi20(PreviousFtokenval)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(lookahead)
	pcalau12i	$s0, %pc_hi20(NextTokenval)
	pcalau12i	$a0, %pc_hi20(NextFtokenval)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(LocalTable)
	addi.d	$a0, $a0, %pc_lo12(LocalTable)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(offset)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a4, $zero, 259
	.p2align	4, , 16
.LBB19_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(GlobalIndex)
	beqz	$a0, .LBB19_3
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB19_1 Depth=1
	slli.d	$a0, $a0, 5
	pcalau12i	$a1, %pc_hi20(GlobalTable)
	addi.d	$a1, $a1, %pc_lo12(GlobalTable)
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 20
	bnez	$a0, .LBB19_57
.LBB19_3:                               # %if.end3
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(LocalIndex)
	beqz	$a0, .LBB19_7
# %bb.4:                                # %if.then5
                                        #   in Loop: Header=BB19_1 Depth=1
	slli.d	$a0, $a0, 5
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.w	$a0, $a1, 12
	ori	$a3, $zero, 2041
	bne	$a0, $a3, .LBB19_58
# %bb.5:                                # %if.then9
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s5, %pc_lo12(NextLookahead)
	bne	$a0, $a2, .LBB19_14
# %bb.6:                                # %if.then11
                                        #   in Loop: Header=BB19_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, %pc_lo12(lookahead)
	ori	$a2, $zero, 44
	beq	$a1, $a2, .LBB19_32
	b	.LBB19_52
	.p2align	4, , 16
.LBB19_7:                               # %if.else21
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s5, %pc_lo12(NextLookahead)
	bne	$a0, $a2, .LBB19_16
# %bb.8:                                # %if.then23
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$a1, $zero, 2006
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(LocalInsert)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(ErrorFlag)
	move	$s4, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$s4, $a0, %pc_lo12(LocalIndex)
	bnez	$a1, .LBB19_55
# %bb.9:                                # %if.then.i15
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s7, %pc_lo12(tokenval)
	ori	$a1, $zero, 2006
	st.w	$a1, $fp, %pc_lo12(PreviousLookahead)
	fld.s	$fa0, $s6, %pc_lo12(ftokenval)
	st.w	$a0, $s3, %pc_lo12(PreviousTokenval)
	ld.w	$a1, $s5, %pc_lo12(NextLookahead)
	ld.w	$a0, $s0, %pc_lo12(NextTokenval)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	fst.s	$fa0, $a2, %pc_lo12(PreviousFtokenval)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	fld.s	$fa0, $a2, %pc_lo12(NextFtokenval)
	st.w	$a1, $s8, %pc_lo12(lookahead)
	st.w	$a0, $s7, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $s6, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB19_11
# %bb.10:                               # %match.exit19
                                        #   in Loop: Header=BB19_1 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(ErrorFlag)
	st.w	$a0, $s5, %pc_lo12(NextLookahead)
	bnez	$a1, .LBB19_55
.LBB19_11:                              # %if.end29
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a1, $s8, %pc_lo12(lookahead)
	ori	$a2, $zero, 91
	bne	$a1, $a2, .LBB19_37
# %bb.12:                               # %if.then.i29
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a1, $s7, %pc_lo12(tokenval)
	st.w	$a2, $fp, %pc_lo12(PreviousLookahead)
	fld.s	$fa0, $s6, %pc_lo12(ftokenval)
	st.w	$a1, $s3, %pc_lo12(PreviousTokenval)
	ld.w	$a1, $s0, %pc_lo12(NextTokenval)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	fld.s	$fa1, $a2, %pc_lo12(NextFtokenval)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	fst.s	$fa0, $a2, %pc_lo12(PreviousFtokenval)
	st.w	$a0, $s8, %pc_lo12(lookahead)
	st.w	$a1, $s7, %pc_lo12(tokenval)
	fst.s	$fa1, $s6, %pc_lo12(ftokenval)
	ori	$a1, $zero, 260
	beq	$a0, $a1, .LBB19_40
# %bb.13:                               # %if.then2.i31
                                        #   in Loop: Header=BB19_1 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, %pc_lo12(NextLookahead)
	b	.LBB19_40
	.p2align	4, , 16
.LBB19_14:                              # %if.else
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a2, $s8, %pc_lo12(lookahead)
	addi.d	$a1, $a1, 12
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.w	$a3, $a1, 0
	bne	$a2, $a4, .LBB19_21
# %bb.15:                               # %if.then.i
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a1, $s7, %pc_lo12(tokenval)
	st.w	$a4, $fp, %pc_lo12(PreviousLookahead)
	fld.s	$fa0, $s6, %pc_lo12(ftokenval)
	st.w	$a1, $s3, %pc_lo12(PreviousTokenval)
	b	.LBB19_19
.LBB19_16:                              # %if.else51
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$a1, $zero, 259
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(LocalInsert)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, %pc_lo12(ErrorFlag)
	move	$a1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a1, $a0, %pc_lo12(LocalIndex)
	bnez	$a2, .LBB19_55
# %bb.17:                               # %if.end55
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$a0, $zero, 2047
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a2, %pc_lo12(offset)
	ld.w	$a0, $s8, %pc_lo12(lookahead)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a2, %pc_lo12(offset)
	ori	$a1, $zero, 259
	bne	$a0, $a1, .LBB19_25
# %bb.18:                               # %if.then.i71
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s7, %pc_lo12(tokenval)
	st.w	$a1, $fp, %pc_lo12(PreviousLookahead)
	st.w	$a0, $s3, %pc_lo12(PreviousTokenval)
	fld.s	$fa0, $s6, %pc_lo12(ftokenval)
	ld.w	$a0, $s5, %pc_lo12(NextLookahead)
.LBB19_19:                              # %if.then.i
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a1, $s0, %pc_lo12(NextTokenval)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	fld.s	$fa1, $a2, %pc_lo12(NextFtokenval)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	fst.s	$fa0, $a2, %pc_lo12(PreviousFtokenval)
	st.w	$a0, $s8, %pc_lo12(lookahead)
	st.w	$a1, $s7, %pc_lo12(tokenval)
	fst.s	$fa1, $s6, %pc_lo12(ftokenval)
	ori	$a1, $zero, 260
	beq	$a0, $a1, .LBB19_30
# %bb.20:                               # %if.then2.i
                                        #   in Loop: Header=BB19_1 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, %pc_lo12(NextLookahead)
	b	.LBB19_30
.LBB19_21:                              # %if.else.i
                                        #   in Loop: Header=BB19_1 Depth=1
	addi.w	$a0, $a2, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB19_23
# %bb.22:                               # %sw.bb.i
                                        #   in Loop: Header=BB19_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB19_23:                              # %sw.epilog.i
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB19_55
# %bb.24:                               # %if.end4.i
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a1, $s8, %pc_lo12(lookahead)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB19_29
.LBB19_25:                              # %if.else.i63
                                        #   in Loop: Header=BB19_1 Depth=1
	addi.w	$a0, $a0, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB19_27
# %bb.26:                               # %sw.bb.i70
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB19_27:                              # %sw.epilog.i66
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB19_55
# %bb.28:                               # %if.end4.i68
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a1, $s8, %pc_lo12(lookahead)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
.LBB19_29:                              # %match.exit75
                                        #   in Loop: Header=BB19_1 Depth=1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB19_30:                              # %match.exit75
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB19_55
# %bb.31:                               # %if.end60
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a1, $s8, %pc_lo12(lookahead)
	ori	$a2, $zero, 44
	bne	$a1, $a2, .LBB19_52
.LBB19_32:                              # %if.then.i85
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s7, %pc_lo12(tokenval)
	st.w	$a2, $fp, %pc_lo12(PreviousLookahead)
	st.w	$a0, $s3, %pc_lo12(PreviousTokenval)
	fld.s	$fa0, $s6, %pc_lo12(ftokenval)
	ld.w	$a0, $s5, %pc_lo12(NextLookahead)
	ld.w	$a1, $s0, %pc_lo12(NextTokenval)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	fld.s	$fa1, $a2, %pc_lo12(NextFtokenval)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	fst.s	$fa0, $a2, %pc_lo12(PreviousFtokenval)
	st.w	$a0, $s8, %pc_lo12(lookahead)
	st.w	$a1, $s7, %pc_lo12(tokenval)
	fst.s	$fa1, $s6, %pc_lo12(ftokenval)
	ori	$a1, $zero, 260
	beq	$a0, $a1, .LBB19_34
# %bb.33:                               # %if.then2.i87
                                        #   in Loop: Header=BB19_1 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, %pc_lo12(NextLookahead)
.LBB19_34:                              # %match.exit89
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB19_55
# %bb.35:                               # %do.cond
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s8, %pc_lo12(lookahead)
	ori	$a2, $zero, 91
	ori	$a4, $zero, 259
	beq	$a0, $a4, .LBB19_1
# %bb.36:                               # %do.cond
                                        #   in Loop: Header=BB19_1 Depth=1
	ori	$a1, $zero, 2006
	beq	$a0, $a1, .LBB19_1
	b	.LBB19_59
.LBB19_37:                              # %if.else.i21
                                        #   in Loop: Header=BB19_1 Depth=1
	addi.w	$a0, $a1, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB19_39
# %bb.38:                               # %sw.epilog.i24
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB19_55
.LBB19_39:                              # %if.end4.i26
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a1, $s8, %pc_lo12(lookahead)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB19_40:                              # %match.exit33
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB19_55
# %bb.41:                               # %if.end32
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s8, %pc_lo12(lookahead)
	ori	$a2, $zero, 256
	bne	$a0, $a2, .LBB19_60
# %bb.42:                               # %if.then.i43
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s7, %pc_lo12(tokenval)
	slli.d	$a1, $s4, 5
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	add.d	$s2, $a3, $a1
	st.w	$a0, $s2, 16
	st.w	$a2, $fp, %pc_lo12(PreviousLookahead)
	fld.s	$fa0, $s6, %pc_lo12(ftokenval)
	st.w	$a0, $s3, %pc_lo12(PreviousTokenval)
	ld.w	$a1, $s5, %pc_lo12(NextLookahead)
	ld.w	$a0, $s0, %pc_lo12(NextTokenval)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	fst.s	$fa0, $a2, %pc_lo12(PreviousFtokenval)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	fld.s	$fa0, $a2, %pc_lo12(NextFtokenval)
	st.w	$a1, $s8, %pc_lo12(lookahead)
	st.w	$a0, $s7, %pc_lo12(tokenval)
	ori	$a0, $zero, 260
	fst.s	$fa0, $s6, %pc_lo12(ftokenval)
	beq	$a1, $a0, .LBB19_44
# %bb.43:                               # %match.exit47
                                        #   in Loop: Header=BB19_1 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(ErrorFlag)
	st.w	$a0, $s5, %pc_lo12(NextLookahead)
	bnez	$a1, .LBB19_55
.LBB19_44:                              # %if.end44
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a1, $s8, %pc_lo12(lookahead)
	ori	$a2, $zero, 93
	bne	$a1, $a2, .LBB19_47
# %bb.45:                               # %if.then.i57
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a1, $s7, %pc_lo12(tokenval)
	st.w	$a2, $fp, %pc_lo12(PreviousLookahead)
	fld.s	$fa0, $s6, %pc_lo12(ftokenval)
	st.w	$a1, $s3, %pc_lo12(PreviousTokenval)
	ld.w	$a1, $s0, %pc_lo12(NextTokenval)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	fld.s	$fa1, $a2, %pc_lo12(NextFtokenval)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	fst.s	$fa0, $a2, %pc_lo12(PreviousFtokenval)
	st.w	$a0, $s8, %pc_lo12(lookahead)
	st.w	$a1, $s7, %pc_lo12(tokenval)
	fst.s	$fa1, $s6, %pc_lo12(ftokenval)
	ori	$a1, $zero, 260
	beq	$a0, $a1, .LBB19_50
# %bb.46:                               # %if.then2.i59
                                        #   in Loop: Header=BB19_1 Depth=1
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, %pc_lo12(NextLookahead)
	b	.LBB19_50
.LBB19_47:                              # %if.else.i49
                                        #   in Loop: Header=BB19_1 Depth=1
	addi.w	$a0, $a1, -2007
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB19_49
# %bb.48:                               # %sw.epilog.i52
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB19_55
.LBB19_49:                              # %if.end4.i54
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a1, $s8, %pc_lo12(lookahead)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB19_50:                              # %match.exit61
                                        #   in Loop: Header=BB19_1 Depth=1
	ld.w	$a0, $s1, %pc_lo12(ErrorFlag)
	bnez	$a0, .LBB19_55
# %bb.51:                               # %if.end47
                                        #   in Loop: Header=BB19_1 Depth=1
	addi.d	$s2, $s2, 16
	ori	$a0, $zero, 2047
	move	$a1, $s4
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(emit)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a2, %pc_lo12(offset)
	add.d	$a0, $a1, $a0
	st.w	$a0, $a2, %pc_lo12(offset)
	ld.w	$a1, $s8, %pc_lo12(lookahead)
	ori	$a2, $zero, 44
	beq	$a1, $a2, .LBB19_32
.LBB19_52:                              # %if.end60
	ori	$a0, $zero, 59
	bne	$a1, $a0, .LBB19_56
# %bb.53:                               # %if.then.i99
	ld.w	$a1, $s7, %pc_lo12(tokenval)
	st.w	$a0, $fp, %pc_lo12(PreviousLookahead)
	fld.s	$fa0, $s6, %pc_lo12(ftokenval)
	st.w	$a1, $s3, %pc_lo12(PreviousTokenval)
	ld.w	$a0, $s5, %pc_lo12(NextLookahead)
	ld.w	$a1, $s0, %pc_lo12(NextTokenval)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	fst.s	$fa0, $a2, %pc_lo12(PreviousFtokenval)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	fld.s	$fa0, $a2, %pc_lo12(NextFtokenval)
	st.w	$a0, $s8, %pc_lo12(lookahead)
	st.w	$a1, $s7, %pc_lo12(tokenval)
	ori	$a1, $zero, 260
	fst.s	$fa0, $s6, %pc_lo12(ftokenval)
	beq	$a0, $a1, .LBB19_55
# %bb.54:                               # %if.then2.i101
	pcaddu18i	$ra, %call36(lexan)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, %pc_lo12(NextLookahead)
.LBB19_55:                              # %cleanup
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.LBB19_56:                              # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	b	.LBB19_61
.LBB19_57:                              # %if.then2
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	b	.LBB19_61
.LBB19_58:                              # %if.else19
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	b	.LBB19_61
.LBB19_59:                              # %do.end
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	b	.LBB19_61
.LBB19_60:                              # %if.else40
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
.LBB19_61:                              # %if.then2
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.Lfunc_end19:
	.size	VarList, .Lfunc_end19-VarList
                                        # -- End function
	.type	ErrorFlag,@object               # @ErrorFlag
	.comm	ErrorFlag,4,4
	.type	lookahead,@object               # @lookahead
	.comm	lookahead,4,4
	.type	FloatFlag,@object               # @FloatFlag
	.comm	FloatFlag,4,4
	.type	PreviousLookahead,@object       # @PreviousLookahead
	.comm	PreviousLookahead,4,4
	.type	tokenval,@object                # @tokenval
	.comm	tokenval,4,4
	.type	PreviousTokenval,@object        # @PreviousTokenval
	.comm	PreviousTokenval,4,4
	.type	ftokenval,@object               # @ftokenval
	.comm	ftokenval,4,4
	.type	PreviousFtokenval,@object       # @PreviousFtokenval
	.comm	PreviousFtokenval,4,4
	.type	NextLookahead,@object           # @NextLookahead
	.comm	NextLookahead,4,4
	.type	NextTokenval,@object            # @NextTokenval
	.comm	NextTokenval,4,4
	.type	NextFtokenval,@object           # @NextFtokenval
	.comm	NextFtokenval,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Missing ; at end of previous statement"
	.size	.L.str, 39

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Missing right parenthesis or illegal operator"
	.size	.L.str.1, 46

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n In default of match lookahead = %d"
	.size	.L.str.2, 37

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"syntax error"
	.size	.L.str.3, 13

	.type	ArrayParsed,@object             # @ArrayParsed
	.comm	ArrayParsed,4,4
	.type	LocalIndex,@object              # @LocalIndex
	.comm	LocalIndex,4,4
	.type	GlobalIndex,@object             # @GlobalIndex
	.comm	GlobalIndex,4,4
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Compiler error, array lexeme not found in any table"
	.size	.L.str.4, 52

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Missing ']'"
	.size	.L.str.5, 12

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Array index must be an integer value"
	.size	.L.str.6, 37

	.type	Scope,@object                   # @Scope
	.comm	Scope,4,4
	.type	LabelCounter,@object            # @LabelCounter
	.comm	LabelCounter,4,4
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"main"
	.size	.L.str.7, 5

	.type	lexbuf,@object                  # @lexbuf
	.comm	lexbuf,128,1
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Compiler error! global lexeme found in local symbol table"
	.size	.L.str.8, 58

	.type	GlobalTable,@object             # @GlobalTable
	.comm	GlobalTable,3200,8
	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.size	.L.str.9, 54

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Attempting to define a global variable twice"
	.size	.L.str.10, 45

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Improperly formed array definition"
	.size	.L.str.11, 35

	.type	DecCount,@object                # @DecCount
	.comm	DecCount,4,4
	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.size	.L.str.12, 32

	.type	LocalTable,@object              # @LocalTable
	.comm	LocalTable,3200,8
	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Compiler error, variable lexeme not found in any table"
	.size	.L.str.13, 55

	.type	FuncNameIndex,@object           # @FuncNameIndex
	.comm	FuncNameIndex,4,4
	.type	ReturnLabel,@object             # @ReturnLabel
	.comm	ReturnLabel,4,4
	.type	CallReturnAddr,@object          # @CallReturnAddr
	.comm	CallReturnAddr,4,4
	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Function called is to a local variable"
	.size	.L.str.14, 39

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Function called is to a global variable"
	.size	.L.str.15, 40

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"attempting to use an undefined variable"
	.size	.L.str.16, 40

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Compiler error, lexeme was not found in any table"
	.size	.L.str.17, 50

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"using an undefined array referance"
	.size	.L.str.18, 35

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Illegal operator"
	.size	.L.str.19, 17

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Unexpected token found"
	.size	.L.str.20, 23

	.type	offset,@object                  # @offset
	.comm	offset,4,4
	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Invalid function defintion structure. Expected ID"
	.size	.L.str.21, 50

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Compiler error, function name in local symbol table"
	.size	.L.str.22, 52

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Attempting to redefine a global variable as a function name"
	.size	.L.str.23, 60

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Redefining a function."
	.size	.L.str.24, 23

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Function main cannot have parameters."
	.size	.L.str.26, 38

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Improperly formed parameter list"
	.size	.L.str.27, 33

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Cannot use a function name as parameter"
	.size	.L.str.28, 40

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Trying to use a prameter twice"
	.size	.L.str.29, 31

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Trying to use a parameter twice"
	.size	.L.str.30, 32

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Cannot use a function name as a parameter"
	.size	.L.str.31, 42

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Cannot pass an array as a parameter"
	.size	.L.str.32, 36

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Trying to redefine a variable"
	.size	.L.str.33, 30

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Array declarations requires an integer within []"
	.size	.L.str.34, 49

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"badly formed declarations"
	.size	.L.str.35, 26

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"can only use ID  or ARRAAY"
	.size	.L.str.36, 27

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Unexpected end of file"
	.size	.L.str.37, 23

	.type	lineno,@object                  # @lineno
	.comm	lineno,4,4
	.type	NumberC,@object                 # @NumberC
	.comm	NumberC,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lexbuf
