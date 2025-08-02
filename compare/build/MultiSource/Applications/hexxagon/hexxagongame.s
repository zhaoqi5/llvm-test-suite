	.file	"hexxagongame.cpp"
	.text
	.globl	_ZN12HexxagonGameC2Ev           # -- Begin function _ZN12HexxagonGameC2Ev
	.p2align	2
	.type	_ZN12HexxagonGameC2Ev,@function
_ZN12HexxagonGameC2Ev:                  # @_ZN12HexxagonGameC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	pcalau12i	$a1, %got_pc_hi20(clone_lookups)
	ld.d	$a1, $a1, %got_pc_lo12(clone_lookups)
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	beqz	$a1, .LBB0_3
# %bb.1:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(jump_lookups)
	ld.d	$a0, $a0, %got_pc_lo12(jump_lookups)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_4
.LBB0_2:                                # %invoke.cont
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard4initEv)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 8
	st.d	$s0, $fp, 16
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_3:                                # %if.then
	pcaddu18i	$ra, %call36(_Z16initCloneLookupsv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(jump_lookups)
	ld.d	$a0, $a0, %got_pc_lo12(jump_lookups)
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB0_2
.LBB0_4:                                # %if.then3
	pcaddu18i	$ra, %call36(_Z15initJumpLookupsv)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.Lfunc_end0:
	.size	_ZN12HexxagonGameC2Ev, .Lfunc_end0-_ZN12HexxagonGameC2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12HexxagonGame4nextEv        # -- Begin function _ZN12HexxagonGame4nextEv
	.p2align	2
	.type	_ZN12HexxagonGame4nextEv,@function
_ZN12HexxagonGame4nextEv:               # @_ZN12HexxagonGame4nextEv
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a1, 16
	beqz	$a2, .LBB1_2
# %bb.1:                                # %if.then
	ld.w	$a3, $a0, 0
	sltui	$a3, $a3, 1
	st.w	$a3, $a0, 0
	st.d	$a2, $a0, 16
	move	$a0, $zero
	ret
.LBB1_2:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end1:
	.size	_ZN12HexxagonGame4nextEv, .Lfunc_end1-_ZN12HexxagonGame4nextEv
                                        # -- End function
	.globl	_ZN12HexxagonGame4prevEv        # -- Begin function _ZN12HexxagonGame4prevEv
	.p2align	2
	.type	_ZN12HexxagonGame4prevEv,@function
_ZN12HexxagonGame4prevEv:               # @_ZN12HexxagonGame4prevEv
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a1, 24
	beqz	$a2, .LBB2_2
# %bb.1:                                # %if.then
	ld.w	$a3, $a0, 0
	sltui	$a3, $a3, 1
	st.w	$a3, $a0, 0
	st.d	$a2, $a0, 16
	move	$a0, $zero
	ret
.LBB2_2:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end2:
	.size	_ZN12HexxagonGame4prevEv, .Lfunc_end2-_ZN12HexxagonGame4prevEv
                                        # -- End function
	.globl	_ZN12HexxagonGame5resetEv       # -- Begin function _ZN12HexxagonGame5resetEv
	.p2align	2
	.type	_ZN12HexxagonGame5resetEv,@function
_ZN12HexxagonGame5resetEv:              # @_ZN12HexxagonGame5resetEv
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 24
	beqz	$a1, .LBB3_4
# %bb.1:                                # %_ZN12HexxagonGame4prevEv.exit.preheader
	ld.w	$a2, $fp, 0
	.p2align	4, , 16
.LBB3_2:                                # %_ZN12HexxagonGame4prevEv.exit
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 24
	sltui	$a2, $a2, 1
	bnez	$a1, .LBB3_2
# %bb.3:                                # %while.cond.while.end_crit_edge
	st.w	$a2, $fp, 0
	st.d	$a0, $fp, 16
.LBB3_4:                                # %while.end
	ld.d	$s0, $a0, 16
	beqz	$s0, .LBB3_7
	.p2align	4, , 16
.LBB3_5:                                # %delete.notnull.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB3_5
# %bb.6:                                # %while.end.loopexit.i
	ld.d	$a0, $fp, 16
.LBB3_7:                                # %_ZN12HexxagonGame11destroyRestEv.exit
	st.d	$zero, $a0, 16
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_ZN12HexxagonGame5resetEv, .Lfunc_end3-_ZN12HexxagonGame5resetEv
                                        # -- End function
	.globl	_ZN12HexxagonGame11destroyRestEv # -- Begin function _ZN12HexxagonGame11destroyRestEv
	.p2align	2
	.type	_ZN12HexxagonGame11destroyRestEv,@function
_ZN12HexxagonGame11destroyRestEv:       # @_ZN12HexxagonGame11destroyRestEv
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$s0, $a0, 16
	beqz	$s0, .LBB4_3
	.p2align	4, , 16
.LBB4_1:                                # %delete.notnull
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB4_1
# %bb.2:                                # %while.end.loopexit
	ld.d	$a0, $fp, 16
.LBB4_3:                                # %while.end
	st.d	$zero, $a0, 16
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	_ZN12HexxagonGame11destroyRestEv, .Lfunc_end4-_ZN12HexxagonGame11destroyRestEv
                                        # -- End function
	.globl	_ZN12HexxagonGame9applyMoveER12HexxagonMove # -- Begin function _ZN12HexxagonGame9applyMoveER12HexxagonMove
	.p2align	2
	.type	_ZN12HexxagonGame9applyMoveER12HexxagonMove,@function
_ZN12HexxagonGame9applyMoveER12HexxagonMove: # @_ZN12HexxagonGame9applyMoveER12HexxagonMove
	.cfi_startproc
# %bb.0:                                # %invoke.cont
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s1, $a1
	move	$fp, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	move	$s0, $a0
	st.d	$a2, $a0, 24
	st.d	$zero, $a0, 16
	addi.d	$a0, $sp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoardaSERKS_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard9applyMoveER12HexxagonMove)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_2
# %bb.1:                                # %delete.notnull
	ori	$a1, $zero, 32
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB5_3
.LBB5_2:                                # %_ZN12HexxagonGame4nextEv.exit
	ld.d	$a1, $fp, 16
	ld.w	$a2, $fp, 0
	st.d	$s0, $a1, 16
	sltui	$a1, $a2, 1
	st.w	$a1, $fp, 0
	st.d	$s0, $fp, 16
.LBB5_3:                                # %if.end
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	_ZN12HexxagonGame9applyMoveER12HexxagonMove, .Lfunc_end5-_ZN12HexxagonGame9applyMoveER12HexxagonMove
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12HexxagonGame12computerMoveEiPFvvEi # -- Begin function _ZN12HexxagonGame12computerMoveEiPFvvEi
	.p2align	2
	.type	_ZN12HexxagonGame12computerMoveEiPFvvEi,@function
_ZN12HexxagonGame12computerMoveEiPFvvEi: # @_ZN12HexxagonGame12computerMoveEiPFvvEi
	.cfi_startproc
# %bb.0:                                # %invoke.cont
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$fp, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	move	$s0, $a0
	st.d	$a2, $a0, 24
	st.d	$zero, $a0, 16
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoardaSERKS_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard12computerMoveEiPFvvEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_2
# %bb.1:                                # %delete.notnull
	ori	$a1, $zero, 32
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB6_3
.LBB6_2:                                # %_ZN12HexxagonGame4nextEv.exit
	ld.d	$a1, $fp, 16
	ld.w	$a2, $fp, 0
	st.d	$s0, $a1, 16
	sltui	$a1, $a2, 1
	st.w	$a1, $fp, 0
	st.d	$s0, $fp, 16
.LBB6_3:                                # %if.end
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end6:
	.size	_ZN12HexxagonGame12computerMoveEiPFvvEi, .Lfunc_end6-_ZN12HexxagonGame12computerMoveEiPFvvEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12HexxagonGame8noBoardsEv    # -- Begin function _ZN12HexxagonGame8noBoardsEv
	.p2align	2
	.type	_ZN12HexxagonGame8noBoardsEv,@function
_ZN12HexxagonGame8noBoardsEv:           # @_ZN12HexxagonGame8noBoardsEv
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB7_4
# %bb.1:                                # %while.body.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB7_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB7_2
# %bb.3:                                # %while.end
	ret
.LBB7_4:
	move	$a0, $zero
	ret
.Lfunc_end7:
	.size	_ZN12HexxagonGame8noBoardsEv, .Lfunc_end7-_ZN12HexxagonGame8noBoardsEv
                                        # -- End function
	.globl	_ZN12HexxagonGame8loadGameEPc   # -- Begin function _ZN12HexxagonGame8loadGameEPc
	.p2align	2
	.type	_ZN12HexxagonGame8loadGameEPc,@function
_ZN12HexxagonGame8loadGameEPc:          # @_ZN12HexxagonGame8loadGameEPc
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$a2, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_4
# %bb.1:                                # %if.end
	move	$s0, $a0
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB8_9
# %bb.2:                                # %if.end5
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 48
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_5
# %bb.3:                                # %if.then9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -3
	b	.LBB8_10
.LBB8_4:
	addi.w	$a0, $zero, -1
	b	.LBB8_10
.LBB8_5:                                # %if.end11
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB8_9
# %bb.6:                                # %if.end16
	ld.d	$a0, $fp, 8
	ld.d	$s1, $a0, 16
	ld.d	$s2, $sp, 40
	st.d	$a0, $fp, 16
	beqz	$s1, .LBB8_11
	.p2align	4, , 16
.LBB8_7:                                # %delete.notnull.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 16
	bnez	$s1, .LBB8_7
# %bb.8:                                # %_ZN12HexxagonGame11destroyRestEv.exit
	ld.d	$a1, $fp, 16
	ld.d	$a0, $fp, 8
	st.d	$zero, $a1, 16
	bnez	$a0, .LBB8_12
	b	.LBB8_13
.LBB8_9:                                # %if.then3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -2
.LBB8_10:                               # %cleanup46
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB8_11:                               # %_ZN12HexxagonGame11destroyRestEv.exit.thread
	st.d	$zero, $a0, 16
.LBB8_12:                               # %delete.notnull
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_13:                               # %delete.end
	addi.w	$a0, $s2, 0
	st.d	$zero, $fp, 8
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 0
	beqz	$a0, .LBB8_19
# %bb.14:                               # %while.body.preheader
	move	$s3, $zero
	revb.2w	$a0, $s2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s1, $a0, -1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB8_16
	.p2align	4, , 16
.LBB8_15:                               # %_ZN12HexxagonGame4nextEv.exit
	ld.d	$a1, $fp, 16
	ld.w	$a2, $fp, 0
	st.d	$a1, $a0, 24
	st.d	$zero, $a0, 16
	st.d	$a0, $a1, 16
	sltui	$a1, $a2, 1
	st.w	$a1, $fp, 0
	st.d	$a0, $fp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard12readFromFileEP8_IO_FILE)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_17
	b	.LBB8_20
	.p2align	4, , 16
.LBB8_16:                               # %invoke.cont
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$a0, $fp, 8
	st.d	$a0, $fp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard12readFromFileEP8_IO_FILE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_20
.LBB8_17:                               # %while.cond
	beqz	$s1, .LBB8_19
# %bb.18:                               # %while.bodythread-pre-split
	ld.d	$s3, $fp, 8
	addi.d	$s1, $s1, -1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB8_15
	b	.LBB8_16
.LBB8_19:                               # %while.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB8_10
.LBB8_20:                               # %if.then37
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a1, 24
	beqz	$a2, .LBB8_22
# %bb.21:                               # %if.then.i21
	ld.w	$a1, $fp, 0
	sltui	$a1, $a1, 1
	st.w	$a1, $fp, 0
	st.d	$a2, $fp, 16
	move	$a1, $a2
.LBB8_22:                               # %_ZN12HexxagonGame4prevEv.exit
	ld.d	$s0, $a1, 16
	beqz	$s0, .LBB8_26
# %bb.23:                               # %delete.notnull.i29.preheader
	move	$s1, $a0
	.p2align	4, , 16
.LBB8_24:                               # %delete.notnull.i29
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB8_24
# %bb.25:                               # %while.end.loopexit.i34
	ld.d	$a1, $fp, 16
	move	$a0, $s1
.LBB8_26:                               # %cleanup.thread
	st.d	$zero, $a1, 16
	b	.LBB8_10
.Lfunc_end8:
	.size	_ZN12HexxagonGame8loadGameEPc, .Lfunc_end8-_ZN12HexxagonGame8loadGameEPc
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12HexxagonGame8saveGameEPc   # -- Begin function _ZN12HexxagonGame8saveGameEPc
	.p2align	2
	.type	_ZN12HexxagonGame8saveGameEPc,@function
_ZN12HexxagonGame8saveGameEPc:          # @_ZN12HexxagonGame8saveGameEPc
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$a2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_5
# %bb.1:                                # %if.end
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB9_6
# %bb.2:                                # %if.end5
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB9_7
# %bb.3:                                # %while.body.i.preheader
	move	$a1, $zero
	.p2align	4, , 16
.LBB9_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	addi.w	$a1, $a1, 1
	bnez	$a0, .LBB9_4
	b	.LBB9_8
.LBB9_5:
	addi.w	$a0, $zero, -1
	b	.LBB9_14
.LBB9_6:                                # %if.then3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -2
	b	.LBB9_14
.LBB9_7:
	move	$a1, $zero
.LBB9_8:                                # %_ZN12HexxagonGame8noBoardsEv.exit
	revb.2w	$a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 0
	addi.d	$a0, $sp, 0
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -2
	bne	$a0, $s2, .LBB9_13
# %bb.9:                                # %while.cond.preheader
	ld.d	$s0, $s0, 8
	beqz	$s0, .LBB9_12
	.p2align	4, , 16
.LBB9_10:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard11writeToFileEP8_IO_FILE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_13
# %bb.11:                               # %while.cond
                                        #   in Loop: Header=BB9_10 Depth=1
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB9_10
.LBB9_12:
	move	$s1, $zero
.LBB9_13:                               # %cleanup20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB9_14:                               # %cleanup21
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	_ZN12HexxagonGame8saveGameEPc, .Lfunc_end9-_ZN12HexxagonGame8saveGameEPc
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Hex2agon 1.1\n"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"wb"
	.size	.L.str.2, 3

	.globl	_ZN12HexxagonGameC1Ev
	.type	_ZN12HexxagonGameC1Ev,@function
_ZN12HexxagonGameC1Ev = _ZN12HexxagonGameC2Ev
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
