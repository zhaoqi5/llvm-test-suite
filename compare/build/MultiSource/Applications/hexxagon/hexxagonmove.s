	.file	"hexxagonmove.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN16HexxagonMoveList7addMoveER12HexxagonMove # -- Begin function _ZN16HexxagonMoveList7addMoveER12HexxagonMove
	.p2align	2
	.type	_ZN16HexxagonMoveList7addMoveER12HexxagonMove,@function
_ZN16HexxagonMoveList7addMoveER12HexxagonMove: # @_ZN16HexxagonMoveList7addMoveER12HexxagonMove
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.w	$s3, $a0, 0
	andi	$a0, $s3, 15
	move	$s0, $a1
	bnez	$a0, .LBB0_2
# %bb.1:                                # %entry
	ori	$s4, $zero, 16
	bge	$s3, $s4, .LBB0_4
.LBB0_2:                                # %if.end11
	ld.d	$a0, $fp, 8
	ld.d	$a1, $s0, 0
	slli.d	$a2, $s3, 3
	stx.d	$a1, $a0, $a2
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
	.p2align	4, , 16
.LBB0_3:                                # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	slli.w	$s4, $s4, 1
	blt	$s3, $s4, .LBB0_2
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bne	$s3, $s4, .LBB0_3
# %bb.5:                                # %if.then5
                                        #   in Loop: Header=BB0_4 Depth=1
	slli.w	$a0, $s3, 1
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 8
	move	$s2, $a0
	slli.d	$a2, $s3, 3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 0
	st.d	$s2, $fp, 8
	b	.LBB0_3
.Lfunc_end0:
	.size	_ZN16HexxagonMoveList7addMoveER12HexxagonMove, .Lfunc_end0-_ZN16HexxagonMoveList7addMoveER12HexxagonMove
	.cfi_endproc
                                        # -- End function
	.globl	_Z7comparePKvS0_                # -- Begin function _Z7comparePKvS0_
	.p2align	5
	.type	_Z7comparePKvS0_,@function
_Z7comparePKvS0_:                       # @_Z7comparePKvS0_
# %bb.0:                                # %entry
	ld.w	$a1, $a1, 4
	ld.w	$a0, $a0, 4
	sub.w	$a0, $a1, $a0
	ret
.Lfunc_end1:
	.size	_Z7comparePKvS0_, .Lfunc_end1-_Z7comparePKvS0_
                                        # -- End function
	.globl	_ZN16HexxagonMoveList13sortListQuickEv # -- Begin function _ZN16HexxagonMoveList13sortListQuickEv
	.p2align	2
	.type	_ZN16HexxagonMoveList13sortListQuickEv,@function
_ZN16HexxagonMoveList13sortListQuickEv: # @_ZN16HexxagonMoveList13sortListQuickEv
	.cfi_startproc
# %bb.0:                                # %entry
	ld.d	$a4, $a0, 8
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(_Z7comparePKvS0_)
	addi.d	$a3, $a0, %pc_lo12(_Z7comparePKvS0_)
	ori	$a2, $zero, 8
	move	$a0, $a4
	pcaddu18i	$t8, %call36(qsort)
	jr	$t8
.Lfunc_end2:
	.size	_ZN16HexxagonMoveList13sortListQuickEv, .Lfunc_end2-_ZN16HexxagonMoveList13sortListQuickEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16HexxagonMoveList8sortListEv # -- Begin function _ZN16HexxagonMoveList8sortListEv
	.p2align	2
	.type	_ZN16HexxagonMoveList8sortListEv,@function
_ZN16HexxagonMoveList8sortListEv:       # @_ZN16HexxagonMoveList8sortListEv
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 0
	ori	$a1, $zero, 2
	bge	$a2, $a1, .LBB3_3
.LBB3_1:                                # %while.end
	ret
	.p2align	4, , 16
.LBB3_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB3_3 Depth=1
	beqz	$a5, .LBB3_1
.LBB3_3:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	blt	$a2, $a1, .LBB3_1
# %bb.4:                                # %for.body.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                # %for.inc
                                        #   in Loop: Header=BB3_6 Depth=2
	addi.d	$a4, $a4, 1
	addi.w	$a6, $a2, -1
	addi.d	$a3, $a3, 8
	bge	$a4, $a6, .LBB3_2
.LBB3_6:                                # %for.body
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a0, 8
	add.d	$a7, $a6, $a3
	ld.w	$t0, $a7, 4
	ld.w	$t1, $a7, 12
	bge	$t0, $t1, .LBB3_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB3_6 Depth=2
	ld.d	$a2, $a7, 8
	ldx.d	$a5, $a6, $a3
	stx.d	$a2, $a6, $a3
	ld.d	$a2, $a0, 8
	add.d	$a2, $a2, $a3
	st.d	$a5, $a2, 8
	ld.w	$a2, $a0, 0
	ori	$a5, $zero, 1
	b	.LBB3_5
.Lfunc_end3:
	.size	_ZN16HexxagonMoveList8sortListEv, .Lfunc_end3-_ZN16HexxagonMoveList8sortListEv
                                        # -- End function
	.globl	_Z7getTimev                     # -- Begin function _Z7getTimev
	.p2align	5
	.type	_Z7getTimev,@function
_Z7getTimev:                            # @_Z7getTimev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(ftime)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	ld.hu	$a1, $sp, 16
	ori	$a2, $zero, 1000
	mul.d	$a0, $a0, $a2
	add.w	$a0, $a0, $a1
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	_Z7getTimev, .Lfunc_end4-_Z7getTimev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16HexxagonMoveList7getMoveEi # -- Begin function _ZN16HexxagonMoveList7getMoveEi
	.p2align	2
	.type	_ZN16HexxagonMoveList7getMoveEi,@function
_ZN16HexxagonMoveList7getMoveEi:        # @_ZN16HexxagonMoveList7getMoveEi
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 8
	alsl.d	$a0, $a1, $a0, 3
	ret
.Lfunc_end5:
	.size	_ZN16HexxagonMoveList7getMoveEi, .Lfunc_end5-_ZN16HexxagonMoveList7getMoveEi
                                        # -- End function
	.globl	_ZN16HexxagonMoveList10getNrMovesEv # -- Begin function _ZN16HexxagonMoveList10getNrMovesEv
	.p2align	2
	.type	_ZN16HexxagonMoveList10getNrMovesEv,@function
_ZN16HexxagonMoveList10getNrMovesEv:    # @_ZN16HexxagonMoveList10getNrMovesEv
# %bb.0:                                # %entry
	ld.w	$a0, $a0, 0
	ret
.Lfunc_end6:
	.size	_ZN16HexxagonMoveList10getNrMovesEv, .Lfunc_end6-_ZN16HexxagonMoveList10getNrMovesEv
                                        # -- End function
	.globl	_Z9alphaBetaR13HexxagonBoardiiiPFvvE # -- Begin function _Z9alphaBetaR13HexxagonBoardiiiPFvvE
	.p2align	5
	.type	_Z9alphaBetaR13HexxagonBoardiiiPFvvE,@function
_Z9alphaBetaR13HexxagonBoardiiiPFvvE:   # @_Z9alphaBetaR13HexxagonBoardiiiPFvvE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	move	$fp, $a0
	beqz	$a1, .LBB7_18
# %bb.1:                                # %if.end
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s5, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard16generateMoveListEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_13
# %bb.2:                                # %if.end10
	move	$s0, $a0
	pcalau12i	$a1, %pc_hi20(hexx_count)
	ld.bu	$a0, $a1, %pc_lo12(hexx_count)
	addi.d	$a0, $a0, 1
	st.b	$a0, $a1, %pc_lo12(hexx_count)
	beqz	$s1, .LBB7_5
# %bb.3:                                # %if.end10
	srli.d	$a0, $a0, 8
	beqz	$a0, .LBB7_5
# %bb.4:                                # %if.then13
	jirl	$ra, $s1, 0
.LBB7_5:                                # %if.end14
	ld.w	$a1, $s0, 0
	lu12i.w	$a0, -8
	ori	$a2, $zero, 1
	ori	$s4, $a0, 768
	blt	$a1, $a2, .LBB7_10
# %bb.6:                                # %if.end14
	ori	$a1, $a0, 769
	blt	$s2, $a1, .LBB7_10
# %bb.7:                                # %for.body.lr.ph
	move	$s7, $zero
	addi.w	$s5, $s5, -1
	sub.w	$s6, $zero, $s2
	ori	$s8, $zero, 1
	ori	$s4, $a0, 768
	.p2align	4, , 16
.LBB7_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slt	$a0, $s3, $s4
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$s3, $a0, $a1
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoardC1ERKS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	add.d	$a1, $a0, $s7
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard9applyMoveER12HexxagonMove)
	jirl	$ra, $ra, 0
	sub.w	$a3, $zero, $s3
	addi.d	$a0, $sp, 8
	move	$a1, $s5
	move	$a2, $s6
	move	$a4, $s1
	pcaddu18i	$ra, %call36(_Z9alphaBetaR13HexxagonBoardiiiPFvvE)
	jirl	$ra, $ra, 0
	sub.w	$a0, $zero, $a0
	ld.w	$a1, $s0, 0
	slt	$a2, $a0, $s4
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s4, $a2
	or	$s4, $a2, $a0
	bge	$s8, $a1, .LBB7_10
# %bb.9:                                # %for.body
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$s7, $s7, 8
	addi.d	$s8, $s8, 1
	blt	$s4, $s2, .LBB7_8
.LBB7_10:                               # %delete.notnull
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB7_12
# %bb.11:                               # %delete.notnull.i
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_12:                               # %_ZN16HexxagonMoveListD2Ev.exit
	ori	$a1, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_16
.LBB7_13:                               # %if.then3
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard11countBricksEi)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB7_17
# %bb.14:                               # %if.then5
	lu12i.w	$a1, 4
	ori	$a1, $a1, 3616
.LBB7_15:                               # %cleanup34
	add.w	$s4, $a0, $a1
.LBB7_16:                               # %cleanup34
	move	$a0, $s4
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
.LBB7_17:                               # %if.else
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB7_19
.LBB7_18:                               # %if.then
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_ZN13HexxagonBoard8evaluateEv)
	jr	$t8
.LBB7_19:                               # %if.then7
	lu12i.w	$a1, -5
	ori	$a1, $a1, 480
	b	.LBB7_15
.Lfunc_end7:
	.size	_Z9alphaBetaR13HexxagonBoardiiiPFvvE, .Lfunc_end7-_Z9alphaBetaR13HexxagonBoardiiiPFvvE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16HexxagonMoveList13scoreAllMovesE13HexxagonBoardiPFvvEi # -- Begin function _ZN16HexxagonMoveList13scoreAllMovesE13HexxagonBoardiPFvvEi
	.p2align	2
	.type	_ZN16HexxagonMoveList13scoreAllMovesE13HexxagonBoardiPFvvEi,@function
_ZN16HexxagonMoveList13scoreAllMovesE13HexxagonBoardiPFvvEi: # @_ZN16HexxagonMoveList13scoreAllMovesE13HexxagonBoardiPFvvEi
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(ftime)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	blt	$s0, $a0, .LBB8_14
# %bb.1:                                # %for.cond2.preheader.lr.ph
	ld.w	$a0, $s2, 0
	lu12i.w	$a1, -8
	ori	$s5, $a1, 768
	lu12i.w	$a1, 7
	ori	$s7, $a1, 3328
	ori	$s4, $zero, 1
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                # %_ZN16HexxagonMoveList8sortListEv.exit
                                        #   in Loop: Header=BB8_3 Depth=1
	addi.w	$s4, $s4, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$s4, $a1, .LBB8_14
.LBB8_3:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
                                        #     Child Loop BB8_9 Depth 2
                                        #       Child Loop BB8_12 Depth 3
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_2
# %bb.4:                                # %for.body7.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	move	$s8, $zero
	ori	$s6, $zero, 1
	move	$s3, $s5
	move	$s0, $s5
	.p2align	4, , 16
.LBB8_5:                                # %for.body7
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slt	$a0, $s3, $s0
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s0, $a0
	or	$s3, $a0, $a1
	addi.d	$a0, $sp, 24
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoardC1ERKS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	add.d	$a1, $a0, $s8
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard9applyMoveER12HexxagonMove)
	jirl	$ra, $ra, 0
	sub.w	$a3, $zero, $s3
	addi.d	$a0, $sp, 24
	move	$a1, $s4
	move	$a2, $s5
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_Z9alphaBetaR13HexxagonBoardiiiPFvvE)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 8
	sub.w	$a1, $zero, $a0
	add.d	$a0, $a2, $s8
	st.w	$a1, $a0, 4
	ld.w	$a0, $s2, 0
	bge	$s6, $a0, .LBB8_7
# %bb.6:                                # %for.body7
                                        #   in Loop: Header=BB8_5 Depth=2
	slt	$a2, $a1, $s0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s0, $a2
	or	$s0, $a2, $a1
	addi.d	$s8, $s8, 8
	addi.d	$s6, $s6, 1
	blt	$s0, $s7, .LBB8_5
.LBB8_7:                                # %for.cond.cleanup6
                                        #   in Loop: Header=BB8_3 Depth=1
	ori	$t0, $zero, 2
	bge	$a0, $t0, .LBB8_9
	b	.LBB8_2
	.p2align	4, , 16
.LBB8_8:                                # %while.cond.loopexit.i
                                        #   in Loop: Header=BB8_9 Depth=2
	beqz	$a3, .LBB8_2
.LBB8_9:                                # %for.cond.preheader.i
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_12 Depth 3
	blt	$a0, $t0, .LBB8_2
# %bb.10:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB8_9 Depth=2
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB8_12
	.p2align	4, , 16
.LBB8_11:                               # %for.inc.i
                                        #   in Loop: Header=BB8_12 Depth=3
	addi.d	$a2, $a2, 1
	addi.w	$a4, $a0, -1
	addi.d	$a1, $a1, 8
	bge	$a2, $a4, .LBB8_8
.LBB8_12:                               # %for.body.i
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $s2, 8
	add.d	$a5, $a4, $a1
	ld.w	$a6, $a5, 4
	ld.w	$a7, $a5, 12
	bge	$a6, $a7, .LBB8_11
# %bb.13:                               # %if.then.i
                                        #   in Loop: Header=BB8_12 Depth=3
	ld.d	$a0, $a5, 8
	ldx.d	$a3, $a4, $a1
	stx.d	$a0, $a4, $a1
	ld.d	$a0, $s2, 8
	add.d	$a0, $a0, $a1
	st.d	$a3, $a0, 8
	ld.w	$a0, $s2, 0
	ori	$a3, $zero, 1
	b	.LBB8_11
.LBB8_14:                               # %for.cond.cleanup
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
.Lfunc_end8:
	.size	_ZN16HexxagonMoveList13scoreAllMovesE13HexxagonBoardiPFvvEi, .Lfunc_end8-_ZN16HexxagonMoveList13scoreAllMovesE13HexxagonBoardiPFvvEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16HexxagonMoveList11getBestMoveEv # -- Begin function _ZN16HexxagonMoveList11getBestMoveEv
	.p2align	2
	.type	_ZN16HexxagonMoveList11getBestMoveEv,@function
_ZN16HexxagonMoveList11getBestMoveEv:   # @_ZN16HexxagonMoveList11getBestMoveEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(ftime)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	ld.hu	$a1, $sp, 8
	ori	$a2, $zero, 1000
	mul.d	$a0, $a0, $a2
	add.w	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(srandom)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	sltui	$a0, $a0, 1
	masknez	$a0, $a1, $a0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	_ZN16HexxagonMoveList11getBestMoveEv, .Lfunc_end9-_ZN16HexxagonMoveList11getBestMoveEv
	.cfi_endproc
                                        # -- End function
	.type	hexx_count,@object              # @hexx_count
	.bss
	.globl	hexx_count
hexx_count:
	.byte	0                               # 0x0
	.size	hexx_count, 1

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z7comparePKvS0_
