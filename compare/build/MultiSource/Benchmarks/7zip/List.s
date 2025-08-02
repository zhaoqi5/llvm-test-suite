	.file	"List.cpp"
	.text
	.globl	_ZN13CFieldPrinter4InitEPK14CFieldInfoIniti # -- Begin function _ZN13CFieldPrinter4InitEPK14CFieldInfoIniti
	.p2align	2
	.type	_ZN13CFieldPrinter4InitEPK14CFieldInfoIniti,@function
_ZN13CFieldPrinter4InitEPK14CFieldInfoIniti: # @_ZN13CFieldPrinter4InitEPK14CFieldInfoIniti
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
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
	move	$fp, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	blt	$fp, $a0, .LBB0_13
# %bb.1:                                # %for.body.lr.ph
	move	$s6, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_10 Depth 2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s6, 5
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$fp, $a2, $a1
	ldx.w	$a1, $a2, $a1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s4, $fp, 8
	move	$s2, $a0
	st.w	$zero, $a0, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$s7, $a0, 1
	addi.w	$s8, $a0, 0
	slli.d	$s0, $s7, 2
	ori	$a0, $zero, 4
	beq	$s7, $a0, .LBB0_5
# %bb.3:                                # %if.end.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	slti	$a0, $s8, -1
	masknez	$a1, $s0, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.4:                                # %if.end9.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$s5, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.w	$zero, $s5, 0
	move	$s2, $s5
.LBB0_5:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB0_6:                                # %while.cond.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a1, $s4, $a0
	stx.w	$a1, $s2, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_6
# %bb.7:                                # %invoke.cont
                                        #   in Loop: Header=BB0_2 Depth=1
	vld	$vr0, $fp, 16
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
.Ltmp2:                                 # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.8:                                # %call.i.noexc
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$s4, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $s4, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s4, 8
	slti	$a0, $s8, -1
	masknez	$a1, $s0, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.9:                                # %call.i.i.i.noexc.i
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a1, $zero
	st.d	$a0, $s4, 8
	st.w	$zero, $a0, 0
	st.w	$s7, $s4, 20
	.p2align	4, , 16
.LBB0_10:                               # %while.cond.i.i.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s2, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_10
# %bb.11:                               # %invoke.cont.i
                                        #   in Loop: Header=BB0_2 Depth=1
	st.w	$s3, $s4, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $s4, 24
.Ltmp8:                                 # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.12:                               # %_ZN10CFieldInfoD2Ev.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.w	$a0, $s1, 12
	ld.d	$a1, $s1, 16
	slli.d	$a2, $a0, 3
	stx.d	$s4, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bne	$s6, $a0, .LBB0_2
.LBB0_13:                               # %for.cond.cleanup
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB0_14:                               # %lpad.i
.Ltmp7:                                 # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 40
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_15:                               # %lpad39
.Ltmp10:                                # EH_LABEL
	b	.LBB0_17
.LBB0_16:                               # %lpad40
.Ltmp4:                                 # EH_LABEL
.LBB0_17:                               # %_ZN10CFieldInfoD2Ev.exit16
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN13CFieldPrinter4InitEPK14CFieldInfoIniti, .Lfunc_end0-_ZN13CFieldPrinter4InitEPK14CFieldInfoIniti
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp2-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Lfunc_end0-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN13CFieldPrinter4InitEP10IInArchive # -- Begin function _ZN13CFieldPrinter4InitEP10IInArchive
	.p2align	2
	.type	_ZN13CFieldPrinter4InitEP10IInArchive,@function
_ZN13CFieldPrinter4InitEP10IInArchive:  # @_ZN13CFieldPrinter4InitEP10IInArchive
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
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
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 88
	addi.d	$a1, $sp, 84
	move	$a0, $fp
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB1_24
# %bb.1:                                # %for.cond.preheader
	ld.w	$a0, $sp, 84
	beqz	$a0, .LBB1_21
# %bb.2:                                # %for.body.lr.ph
	move	$s1, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
                                        #     Child Loop BB1_17 Depth 2
	ld.d	$a0, $fp, 0
	ld.d	$a5, $a0, 96
	st.d	$zero, $sp, 72
.Ltmp11:                                # EH_LABEL
	addi.d	$a2, $sp, 72
	addi.d	$a3, $sp, 68
	addi.d	$a4, $sp, 66
	move	$a0, $fp
	move	$a1, $s1
	jirl	$ra, $a5, 0
.Ltmp12:                                # EH_LABEL
# %bb.4:                                # %invoke.cont7
                                        #   in Loop: Header=BB1_3 Depth=1
	bnez	$a0, .LBB1_22
# %bb.5:                                # %cleanup.cont14
                                        #   in Loop: Header=BB1_3 Depth=1
.Ltmp17:                                # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.6:                                # %invoke.cont16
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s2, $a0
	ld.w	$s3, $sp, 68
	ld.d	$a2, $sp, 72
	st.w	$zero, $a0, 0
.Ltmp20:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZL11GetPropNamejPw)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.7:                                # %invoke.cont20
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s7, $sp, 56
	st.w	$zero, $s2, 0
	addi.w	$s8, $s7, 1
	slti	$s5, $s7, -1
	slli.d	$s6, $s8, 2
	ori	$a0, $zero, 4
	beq	$s8, $a0, .LBB1_10
# %bb.8:                                # %if.end.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	masknez	$a0, $s6, $s5
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s5
	or	$a0, $a1, $a0
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.9:                                # %if.end9.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.w	$zero, $s4, 0
	move	$s2, $s4
.LBB1_10:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 48
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_11:                               # %while.cond.i.i
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_11
# %bb.12:                               # %invoke.cont22
                                        #   in Loop: Header=BB1_3 Depth=1
	beqz	$a0, .LBB1_14
# %bb.13:                               # %delete.notnull.i
                                        #   in Loop: Header=BB1_3 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %_ZN11CStringBaseIwED2Ev.exit
                                        #   in Loop: Header=BB1_3 Depth=1
.Ltmp26:                                # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.15:                               # %call.i.noexc
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s4, $a0
	st.w	$s3, $a0, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	masknez	$a0, $s6, $s5
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s5
	or	$a0, $a1, $a0
.Ltmp28:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.16:                               # %call.i.i.i.noexc.i
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a1, $zero
	st.d	$a0, $s4, 8
	st.w	$zero, $a0, 0
	st.w	$s8, $s4, 20
	.p2align	4, , 16
.LBB1_17:                               # %while.cond.i.i.i.i
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s2, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_17
# %bb.18:                               # %invoke.cont.i
                                        #   in Loop: Header=BB1_3 Depth=1
	st.w	$s7, $s4, 16
.Ltmp31:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.19:                               # %_ZN10CFieldInfoD2Ev.exit
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$s4, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.20:                               # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $sp, 84
	addi.w	$s1, $s1, 1
	bltu	$s1, $a0, .LBB1_3
.LBB1_21:
	move	$a0, $zero
	b	.LBB1_24
.LBB1_22:                               # %cleanup39.critedge
	move	$fp, $a0
	ld.d	$a0, $sp, 72
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.23:                               # %_ZN10CMyComBSTRD2Ev.exit36
	move	$a0, $fp
.LBB1_24:                               # %cleanup42
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB1_25:                               # %terminate.lpad.i34
.Ltmp16:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_26:                               # %lpad21
.Ltmp25:                                # EH_LABEL
	ld.d	$a1, $sp, 48
	move	$fp, $a0
	beqz	$a1, .LBB1_35
# %bb.27:                               # %delete.notnull.i25
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB1_35
.LBB1_28:                               # %lpad15
.Ltmp19:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB1_36
.LBB1_29:                               # %lpad17
.Ltmp22:                                # EH_LABEL
	b	.LBB1_34
.LBB1_30:                               # %lpad.i
.Ltmp30:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 40
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_35
.LBB1_31:                               # %terminate.lpad.i
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_32:                               # %lpad
.Ltmp13:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB1_36
.LBB1_33:                               # %lpad24
.Ltmp33:                                # EH_LABEL
.LBB1_34:                               # %_ZN10CFieldInfoD2Ev.exit30
	move	$fp, $a0
.LBB1_35:                               # %_ZN10CFieldInfoD2Ev.exit30
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_36:                               # %ehcleanup30
	ld.d	$a0, $sp, 72
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.37:                               # %_ZN10CMyComBSTRD2Ev.exit33
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_38:                               # %terminate.lpad.i31
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN13CFieldPrinter4InitEP10IInArchive, .Lfunc_end1-_ZN13CFieldPrinter4InitEP10IInArchive
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp11-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin1          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin1          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp26-.Ltmp24                #   Call between .Ltmp24 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp33-.Lfunc_begin1          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin1          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp37-.Ltmp32                #   Call between .Ltmp32 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin1          #     jumps to .Ltmp16
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp34-.Ltmp15                #   Call between .Ltmp15 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin1          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Lfunc_end1-.Ltmp35            #   Call between .Ltmp35 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL11GetPropNamejPw
	.type	_ZL11GetPropNamejPw,@function
_ZL11GetPropNamejPw:                    # @_ZL11GetPropNamejPw
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	addi.d	$a3, $a1, -3
	ori	$a4, $zero, 52
	move	$fp, $a0
	bltu	$a4, $a3, .LBB2_3
# %bb.1:                                # %entry
	slli.d	$a0, $a3, 2
	pcalau12i	$a3, %pc_hi20(.LJTI2_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI2_0)
	ldx.w	$a0, $a3, $a0
	pcalau12i	$a4, %pc_hi20(_ZL13kPropIdToName)
	add.d	$a3, $a3, $a0
	addi.d	$a0, $a4, %pc_lo12(_ZL13kPropIdToName)
	jr	$a3
.LBB2_2:                                # %if.then.fold.split
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+16)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+16)
	b	.LBB2_61
.LBB2_3:                                # %entry
	lu12i.w	$a0, -2
	ori	$a0, $a0, 3840
	add.d	$a0, $a1, $a0
	ori	$a3, $zero, 3
	bltu	$a3, $a0, .LBB2_6
# %bb.4:                                # %entry
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI2_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB2_5:                                # %if.then.fold.split93
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+816)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+816)
	b	.LBB2_61
.LBB2_6:                                # %for.cond.54
	beqz	$a2, .LBB2_65
# %bb.7:                                # %if.then4
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	move	$a0, $a2
	move	$s1, $a2
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a0, $a0, 0
	addi.w	$s2, $s0, 1
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $fp, 12
	.p2align	4, , 16
.LBB2_8:                                # %while.cond.i.i15
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB2_8
	b	.LBB2_67
.LBB2_9:                                # %if.then.fold.split86
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+704)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+704)
	b	.LBB2_61
.LBB2_10:                               # %if.then.fold.split81
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+624)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+624)
	b	.LBB2_61
.LBB2_11:                               # %if.then.fold.split89
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+752)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+752)
	b	.LBB2_61
.LBB2_12:                               # %if.then.fold.split82
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+640)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+640)
	b	.LBB2_61
.LBB2_13:                               # %if.then.fold.split87
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+720)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+720)
	b	.LBB2_61
.LBB2_14:                               # %if.then.fold.split74
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+512)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+512)
	b	.LBB2_61
.LBB2_15:                               # %if.then.fold.split70
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+448)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+448)
	b	.LBB2_61
.LBB2_16:                               # %if.then.fold.split65
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+368)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+368)
	b	.LBB2_61
.LBB2_17:                               # %if.then.fold.split91
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+784)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+784)
	b	.LBB2_61
.LBB2_18:                               # %if.then.fold.split72
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+480)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+480)
	b	.LBB2_61
.LBB2_19:                               # %if.then.fold.split63
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+336)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+336)
	b	.LBB2_61
.LBB2_20:                               # %if.then.fold.split67
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+400)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+400)
	b	.LBB2_61
.LBB2_21:                               # %if.then.fold.split90
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+768)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+768)
	b	.LBB2_61
.LBB2_22:                               # %if.then.fold.split66
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+384)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+384)
	b	.LBB2_61
.LBB2_23:                               # %if.then.fold.split78
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+576)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+576)
	b	.LBB2_61
.LBB2_24:                               # %if.then.fold.split51
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+144)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+144)
	b	.LBB2_61
.LBB2_25:                               # %if.then.fold.split59
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+272)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+272)
	b	.LBB2_61
.LBB2_26:                               # %if.then.fold.split69
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+432)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+432)
	b	.LBB2_61
.LBB2_27:                               # %if.then.fold.split92
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+800)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+800)
	b	.LBB2_61
.LBB2_28:                               # %if.then.fold.split49
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+112)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+112)
	b	.LBB2_61
.LBB2_29:                               # %if.then.fold.split79
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+592)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+592)
	b	.LBB2_61
.LBB2_30:                               # %if.then.fold.split53
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+176)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+176)
	b	.LBB2_61
.LBB2_31:                               # %if.then.fold.split54
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+192)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+192)
	b	.LBB2_61
.LBB2_32:                               # %if.then.fold.split47
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+80)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+80)
	b	.LBB2_61
.LBB2_33:                               # %if.then.fold.split50
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+128)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+128)
	b	.LBB2_61
.LBB2_34:                               # %if.then.fold.split85
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+688)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+688)
	b	.LBB2_61
.LBB2_35:                               # %if.then.fold.split58
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+256)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+256)
	b	.LBB2_61
.LBB2_36:                               # %if.then.fold.split56
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+224)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+224)
	b	.LBB2_61
.LBB2_37:                               # %if.then.fold.split61
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+304)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+304)
	b	.LBB2_61
.LBB2_38:                               # %if.then.fold.split48
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+96)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+96)
	b	.LBB2_61
.LBB2_39:                               # %if.then.fold.split62
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+320)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+320)
	b	.LBB2_61
.LBB2_40:                               # %if.then.fold.split52
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+160)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+160)
	b	.LBB2_61
.LBB2_41:                               # %if.then.fold.split84
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+672)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+672)
	b	.LBB2_61
.LBB2_42:                               # %if.then.fold.split76
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+544)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+544)
	b	.LBB2_61
.LBB2_43:                               # %if.then.fold.split71
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+464)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+464)
	b	.LBB2_61
.LBB2_44:                               # %if.then.fold.split46
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+64)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+64)
	b	.LBB2_61
.LBB2_45:                               # %if.then.fold.split45
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+48)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+48)
	b	.LBB2_61
.LBB2_46:                               # %if.then.fold.split83
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+656)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+656)
	b	.LBB2_61
.LBB2_47:                               # %if.then.fold.split44
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+32)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+32)
	b	.LBB2_61
.LBB2_48:                               # %if.then.fold.split60
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+288)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+288)
	b	.LBB2_61
.LBB2_49:                               # %if.then.fold.split64
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+352)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+352)
	b	.LBB2_61
.LBB2_50:                               # %if.then.fold.split55
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+208)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+208)
	b	.LBB2_61
.LBB2_51:                               # %if.then.fold.split57
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+240)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+240)
	b	.LBB2_61
.LBB2_52:                               # %if.then.fold.split73
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+496)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+496)
	b	.LBB2_61
.LBB2_53:                               # %if.then.fold.split68
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+416)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+416)
	b	.LBB2_61
.LBB2_54:                               # %if.then.fold.split80
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+608)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+608)
	b	.LBB2_61
.LBB2_55:                               # %if.then.fold.split88
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+736)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+736)
	b	.LBB2_61
.LBB2_56:                               # %if.then.fold.split75
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+528)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+528)
	b	.LBB2_61
.LBB2_57:                               # %if.then.fold.split77
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+560)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+560)
	b	.LBB2_61
.LBB2_58:                               # %if.then.fold.split95
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+848)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+848)
	b	.LBB2_61
.LBB2_59:                               # %if.then.fold.split96
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+864)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+864)
	b	.LBB2_61
.LBB2_60:                               # %if.then.fold.split94
	pcalau12i	$a0, %pc_hi20(_ZL13kPropIdToName+832)
	addi.d	$a0, $a0, %pc_lo12(_ZL13kPropIdToName+832)
.LBB2_61:                               # %if.then
	ld.d	$s0, $a0, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	addi.w	$s2, $s1, 1
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $fp, 12
	.p2align	4, , 16
.LBB2_62:                               # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$a2, $a0, 4
	st.w	$a1, $a0, 0
	move	$a0, $a2
	bnez	$a1, .LBB2_62
# %bb.63:                               # %cleanup2
	st.w	$s1, $fp, 8
.LBB2_64:                               # %return
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB2_65:                               # %if.end5
	move	$a0, $a1
	addi.d	$a1, $sp, 8
	addi.d	$s1, $sp, 8
	pcaddu18i	$ra, %call36(_Z21ConvertUInt32ToStringjPw)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a0, $a0, 0
	addi.w	$s2, $s0, 1
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $fp, 12
	.p2align	4, , 16
.LBB2_66:                               # %while.cond.i.i31
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s1, 0
	addi.d	$s1, $s1, 4
	addi.d	$a2, $a0, 4
	st.w	$a1, $a0, 0
	move	$a0, $a2
	bnez	$a1, .LBB2_66
.LBB2_67:                               # %_ZN11CStringBaseIwEC2EPKw.exit38
	st.w	$s0, $fp, 8
	b	.LBB2_64
.Lfunc_end2:
	.size	_ZL11GetPropNamejPw, .Lfunc_end2-_ZL11GetPropNamejPw
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_61-.LJTI2_0
	.word	.LBB2_2-.LJTI2_0
	.word	.LBB2_6-.LJTI2_0
	.word	.LBB2_47-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_44-.LJTI2_0
	.word	.LBB2_32-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_28-.LJTI2_0
	.word	.LBB2_33-.LJTI2_0
	.word	.LBB2_24-.LJTI2_0
	.word	.LBB2_40-.LJTI2_0
	.word	.LBB2_30-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_50-.LJTI2_0
	.word	.LBB2_36-.LJTI2_0
	.word	.LBB2_51-.LJTI2_0
	.word	.LBB2_35-.LJTI2_0
	.word	.LBB2_25-.LJTI2_0
	.word	.LBB2_48-.LJTI2_0
	.word	.LBB2_37-.LJTI2_0
	.word	.LBB2_39-.LJTI2_0
	.word	.LBB2_19-.LJTI2_0
	.word	.LBB2_49-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_22-.LJTI2_0
	.word	.LBB2_20-.LJTI2_0
	.word	.LBB2_53-.LJTI2_0
	.word	.LBB2_26-.LJTI2_0
	.word	.LBB2_15-.LJTI2_0
	.word	.LBB2_43-.LJTI2_0
	.word	.LBB2_18-.LJTI2_0
	.word	.LBB2_52-.LJTI2_0
	.word	.LBB2_14-.LJTI2_0
	.word	.LBB2_56-.LJTI2_0
	.word	.LBB2_42-.LJTI2_0
	.word	.LBB2_57-.LJTI2_0
	.word	.LBB2_6-.LJTI2_0
	.word	.LBB2_23-.LJTI2_0
	.word	.LBB2_29-.LJTI2_0
	.word	.LBB2_54-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_46-.LJTI2_0
	.word	.LBB2_41-.LJTI2_0
	.word	.LBB2_34-.LJTI2_0
	.word	.LBB2_9-.LJTI2_0
	.word	.LBB2_13-.LJTI2_0
	.word	.LBB2_55-.LJTI2_0
	.word	.LBB2_11-.LJTI2_0
	.word	.LBB2_21-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_27-.LJTI2_0
.LJTI2_1:
	.word	.LBB2_5-.LJTI2_1
	.word	.LBB2_60-.LJTI2_1
	.word	.LBB2_58-.LJTI2_1
	.word	.LBB2_59-.LJTI2_1
                                        # -- End function
	.text
	.globl	_ZN13CFieldPrinter10PrintTitleEv # -- Begin function _ZN13CFieldPrinter10PrintTitleEv
	.p2align	2
	.type	_ZN13CFieldPrinter10PrintTitleEv,@function
_ZN13CFieldPrinter10PrintTitleEv:       # @_ZN13CFieldPrinter10PrintTitleEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
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
	ld.w	$a0, $a0, 12
	ori	$s8, $zero, 1
	blt	$a0, $s8, .LBB3_16
# %bb.1:                                # %for.body.lr.ph
	move	$s2, $zero
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$s0, $a0, %got_pc_lo12(g_StdOut)
	ori	$s4, $zero, 0
	lu32i.d	$s4, 1
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a0, $fp, 12
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB3_16
.LBB3_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
                                        #     Child Loop BB3_10 Depth 2
                                        #     Child Loop BB3_15 Depth 2
	ld.d	$a0, $fp, 16
	slli.d	$a1, $s2, 3
	ldx.d	$s5, $a0, $a1
	ld.w	$s3, $s5, 32
	blt	$s3, $s8, .LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %for.body.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	bnez	$s3, .LBB3_4
.LBB3_5:                                # %_ZL11PrintSpacesi.exit
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a1, $s5, 0
	ld.w	$a0, $s5, 24
	ld.w	$a2, $s5, 36
	ld.w	$s6, $s5, 16
	addi.d	$a1, $a1, -3
	sltui	$a1, $a1, 1
	masknez	$s7, $a2, $a1
	sub.w	$s1, $s7, $s6
	move	$s3, $s1
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB3_8
# %bb.6:                                # %_ZL11PrintSpacesi.exit
                                        #   in Loop: Header=BB3_3 Depth=1
	bne	$a0, $s8, .LBB3_12
# %bb.7:                                # %sw.bb1.i
                                        #   in Loop: Header=BB3_3 Depth=1
	bstrpick.d	$a0, $s1, 31, 31
	add.w	$a0, $s1, $a0
	srai.d	$s3, $a0, 1
.LBB3_8:                                # %sw.epilog.i
                                        #   in Loop: Header=BB3_3 Depth=1
	blt	$s3, $s8, .LBB3_13
# %bb.9:                                # %for.body.i.i.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	move	$s8, $s3
	.p2align	4, , 16
.LBB3_10:                               # %for.body.i.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, -1
	bnez	$s8, .LBB3_10
# %bb.11:                               #   in Loop: Header=BB3_3 Depth=1
	ori	$s8, $zero, 1
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_12:                               #   in Loop: Header=BB3_3 Depth=1
	move	$s3, $zero
.LBB3_13:                               # %_ZL11PrintSpacesi.exit.i
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a1, $s5, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
	sub.w	$a0, $s1, $s3
	blt	$a0, $s8, .LBB3_2
# %bb.14:                               # %for.body.i6.i.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	add.d	$a0, $s3, $s6
	sub.w	$s3, $a0, $s7
	.p2align	4, , 16
.LBB3_15:                               # %for.body.i6.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$s3, $a0, 1
	and	$a0, $s3, $s4
	beqz	$a0, .LBB3_15
	b	.LBB3_2
.LBB3_16:                               # %for.cond.cleanup
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
.Lfunc_end3:
	.size	_ZN13CFieldPrinter10PrintTitleEv, .Lfunc_end3-_ZN13CFieldPrinter10PrintTitleEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13CFieldPrinter15PrintTitleLinesEv # -- Begin function _ZN13CFieldPrinter15PrintTitleLinesEv
	.p2align	2
	.type	_ZN13CFieldPrinter15PrintTitleLinesEv,@function
_ZN13CFieldPrinter15PrintTitleLinesEv:  # @_ZN13CFieldPrinter15PrintTitleLinesEv
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
	ld.w	$a0, $a0, 12
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB4_8
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$s0, $a0, %got_pc_lo12(g_StdOut)
	move	$s2, $zero
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %for.cond.cleanup7
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $fp, 12
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB4_8
.LBB4_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
                                        #     Child Loop BB4_7 Depth 2
	ld.d	$a0, $fp, 16
	slli.d	$a1, $s2, 3
	ldx.d	$s3, $a0, $a1
	ld.w	$s4, $s3, 32
	blt	$s4, $s1, .LBB4_5
	.p2align	4, , 16
.LBB4_4:                                # %for.body.i
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB4_4
.LBB4_5:                                # %_ZL11PrintSpacesi.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s3, 36
	blt	$a0, $s1, .LBB4_2
# %bb.6:                                # %for.body8.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$s4, $zero
	.p2align	4, , 16
.LBB4_7:                                # %for.body8
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a1, $zero, 45
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 36
	addi.w	$s4, $s4, 1
	blt	$s4, $a0, .LBB4_7
	b	.LBB4_2
.LBB4_8:                                # %for.cond.cleanup
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end4:
	.size	_ZN13CFieldPrinter15PrintTitleLinesEv, .Lfunc_end4-_ZN13CFieldPrinter15PrintTitleLinesEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb # -- Begin function _ZN13CFieldPrinter13PrintItemInfoERK4CArcjb
	.p2align	2
	.type	_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb,@function
_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb: # @_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
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
	ld.w	$a0, $a0, 12
	ori	$s8, $zero, 1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	blt	$a0, $s8, .LBB5_106
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $a3
	move	$s6, $zero
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$s4, $a0, %got_pc_lo12(g_StdOut)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a0, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s5, $zero, 0
	lu32i.d	$s5, 1
                                        # implicit-def: $r4
                                        # kill: killed $r4
	.p2align	4, , 16
.LBB5_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
                                        #     Child Loop BB5_71 Depth 2
                                        #     Child Loop BB5_44 Depth 2
                                        #       Child Loop BB5_46 Depth 3
                                        #     Child Loop BB5_51 Depth 2
                                        #       Child Loop BB5_53 Depth 3
                                        #     Child Loop BB5_66 Depth 2
                                        #     Child Loop BB5_96 Depth 2
                                        #     Child Loop BB5_76 Depth 2
                                        #     Child Loop BB5_82 Depth 2
                                        #     Child Loop BB5_88 Depth 2
	ld.d	$a0, $fp, 16
	slli.d	$a1, $s6, 3
	ldx.d	$s7, $a0, $a1
	bnez	$s0, .LBB5_5
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.w	$s1, $s7, 32
	blt	$s1, $s8, .LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %for.body.i
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a1, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	bnez	$s1, .LBB5_4
.LBB5_5:                                # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	st.w	$zero, $sp, 64
	ld.w	$a2, $s7, 0
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB5_12
# %bb.6:                                # %if.then5
                                        #   in Loop: Header=BB5_2 Depth=1
	st.d	$zero, $sp, 88
.Ltmp43:                                # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.7:                                # %invoke.cont
                                        #   in Loop: Header=BB5_2 Depth=1
	st.d	$a0, $sp, 80
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 92
.Ltmp46:                                # EH_LABEL
	addi.d	$a2, $sp, 80
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNK4CArc11GetItemPathEjR11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.8:                                # %invoke.cont7
                                        #   in Loop: Header=BB5_2 Depth=1
	move	$s3, $a0
	ld.d	$a1, $sp, 80
	beqz	$a0, .LBB5_15
# %bb.9:                                # %cleanup156.critedge
                                        #   in Loop: Header=BB5_2 Depth=1
	beqz	$a1, .LBB5_11
# %bb.10:                               # %delete.notnull.i149
                                        #   in Loop: Header=BB5_2 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_11:                               # %_ZN11CStringBaseIwED2Ev.exit150
                                        #   in Loop: Header=BB5_2 Depth=1
	move	$s2, $zero
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	b	.LBB5_103
	.p2align	4, , 16
.LBB5_12:                               # %if.else
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 64
.Ltmp40:                                # EH_LABEL
	addi.d	$a3, $sp, 64
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	jirl	$ra, $a4, 0
.Ltmp41:                                # EH_LABEL
# %bb.13:                               # %invoke.cont27
                                        #   in Loop: Header=BB5_2 Depth=1
	beqz	$a0, .LBB5_18
.LBB5_14:                               #   in Loop: Header=BB5_2 Depth=1
	move	$s2, $zero
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB5_103
.LBB5_15:                               # %cleanup.cont
                                        #   in Loop: Header=BB5_2 Depth=1
.Ltmp49:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.16:                               # %cleanup17
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB5_18
# %bb.17:                               # %delete.notnull.i
                                        #   in Loop: Header=BB5_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_18:                               # %if.end36
                                        #   in Loop: Header=BB5_2 Depth=1
	beqz	$s0, .LBB5_21
# %bb.19:                               # %if.then38
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a1, $s7, 8
.Ltmp52:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.20:                               # %invoke.cont42
                                        #   in Loop: Header=BB5_2 Depth=1
.Ltmp54:                                # EH_LABEL
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
.LBB5_21:                               # %if.end46
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.w	$a2, $s7, 0
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB5_24
# %bb.22:                               # %if.else91.thread166
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.hu	$s2, $sp, 64
	beqz	$s2, .LBB5_101
# %bb.23:                               #   in Loop: Header=BB5_2 Depth=1
	move	$s1, $zero
	b	.LBB5_38
.LBB5_24:                               # %cond.end
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.w	$s1, $s7, 36
	ld.hu	$s2, $sp, 64
	ori	$a0, $zero, 9
	bne	$a2, $a0, .LBB5_30
# %bb.25:                               # %land.lhs.true
                                        #   in Loop: Header=BB5_2 Depth=1
	ori	$a0, $zero, 19
	beq	$s2, $a0, .LBB5_27
# %bb.26:                               # %land.lhs.true
                                        #   in Loop: Header=BB5_2 Depth=1
	bnez	$s2, .LBB5_38
.LBB5_27:                               # %if.then55
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.w	$s1, $sp, 72
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
.Ltmp71:                                # EH_LABEL
	addi.d	$a2, $sp, 112
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z19IsArchiveItemFolderP10IInArchivejRb)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.28:                               # %invoke.cont68
                                        #   in Loop: Header=BB5_2 Depth=1
	bnez	$a0, .LBB5_14
# %bb.29:                               # %cleanup.cont75
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.bu	$a0, $sp, 112
	sltui	$a1, $s2, 1
	masknez	$a1, $s1, $a1
	bstrpick.d	$a2, $a1, 4, 4
	ori	$a4, $zero, 46
	masknez	$a3, $a4, $a0
	ori	$a5, $zero, 68
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a5, $a2
	or	$a0, $a2, $a0
	st.b	$a0, $sp, 80
	andi	$a0, $a1, 1
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 82
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a2
	st.b	$a0, $sp, 81
	andi	$a0, $a1, 2
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 72
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a2
	st.b	$a0, $sp, 82
	andi	$a0, $a1, 4
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 83
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a2
	st.b	$a0, $sp, 83
	andi	$a0, $a1, 32
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 65
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	st.b	$a0, $sp, 84
	st.b	$zero, $sp, 85
.Ltmp74:                                # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
	b	.LBB5_101
.LBB5_30:                               # %if.else91
                                        #   in Loop: Header=BB5_2 Depth=1
	beqz	$s2, .LBB5_69
# %bb.31:                               # %if.else101
                                        #   in Loop: Header=BB5_2 Depth=1
	ori	$a0, $zero, 12
	bne	$a2, $a0, .LBB5_38
# %bb.32:                               # %if.then104
                                        #   in Loop: Header=BB5_2 Depth=1
	ori	$a0, $zero, 64
	bne	$s2, $a0, .LBB5_109
# %bb.33:                               # %if.end.i
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.w	$a0, $sp, 72
	ld.w	$a1, $sp, 76
	or	$a0, $a0, $a1
	beqz	$a0, .LBB5_100
# %bb.34:                               # %if.else.i
                                        #   in Loop: Header=BB5_2 Depth=1
.Ltmp59:                                # EH_LABEL
	addi.d	$a1, $sp, 112
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(FileTimeToLocalFileTime)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.35:                               # %call3.i.noexc
                                        #   in Loop: Header=BB5_2 Depth=1
	beqz	$a0, .LBB5_110
# %bb.36:                               # %if.end7.i
                                        #   in Loop: Header=BB5_2 Depth=1
.Ltmp61:                                # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(_Z23ConvertFileTimeToStringRK9_FILETIMEPcbb)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.37:                               # %call8.i.noexc
                                        #   in Loop: Header=BB5_2 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.72)
	addi.d	$a1, $a1, %pc_lo12(.L.str.72)
	masknez	$a1, $a1, $a0
	addi.d	$a2, $sp, 80
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.Ltmp63:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
	b	.LBB5_101
.LBB5_38:                               # %if.else106
                                        #   in Loop: Header=BB5_2 Depth=1
	ori	$a0, $zero, 8
	bne	$s2, $a0, .LBB5_41
# %bb.39:                               # %if.then110
                                        #   in Loop: Header=BB5_2 Depth=1
	beqz	$s0, .LBB5_59
# %bb.40:                               # %if.then112
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a1, $sp, 72
.Ltmp103:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
	b	.LBB5_102
.LBB5_41:                               # %if.else123
                                        #   in Loop: Header=BB5_2 Depth=1
.Ltmp77:                                # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 64
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.42:                               # %invoke.cont127
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.w	$s3, $sp, 88
	blt	$s3, $s8, .LBB5_57
# %bb.43:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a0, $sp, 80
	move	$a1, $zero
.LBB5_44:                               # %while.body.i
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_46 Depth 3
	slli.d	$a2, $a1, 2
	ldx.w	$a2, $a0, $a2
	alsl.d	$a1, $a1, $a0, 2
	ori	$a3, $zero, 10
	bne	$a2, $a3, .LBB5_46
# %bb.45:                               #   in Loop: Header=BB5_44 Depth=2
	move	$a3, $a1
	b	.LBB5_48
	.p2align	4, , 16
.LBB5_46:                               # %if.end.i.i
                                        #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a2, .LBB5_50
# %bb.47:                               # %if.end5.i.i
                                        #   in Loop: Header=BB5_46 Depth=3
	ld.w	$a2, $a1, 4
	addi.d	$a3, $a1, 4
	move	$a1, $a3
	ori	$a4, $zero, 10
	bne	$a2, $a4, .LBB5_46
.LBB5_48:                               # %_ZNK11CStringBaseIwE4FindEwi.exit.i
                                        #   in Loop: Header=BB5_44 Depth=2
	sub.d	$a2, $a3, $a0
	srli.d	$a1, $a2, 2
	addi.w	$a3, $a1, 0
	bltz	$a3, .LBB5_50
# %bb.49:                               # %if.end6.i
                                        #   in Loop: Header=BB5_44 Depth=2
	bstrpick.d	$a2, $a2, 33, 2
	bstrpick.d	$a1, $a1, 30, 0
	slli.d	$a3, $a1, 2
	addi.d	$a1, $a2, 1
	addi.w	$a2, $a1, 0
	ori	$a4, $zero, 32
	stx.w	$a4, $a0, $a3
	blt	$a2, $s3, .LBB5_44
.LBB5_50:                               # %while.body.i90.preheader
                                        #   in Loop: Header=BB5_2 Depth=1
	move	$a1, $zero
.LBB5_51:                               # %while.body.i90
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_53 Depth 3
	slli.d	$a2, $a1, 2
	ldx.w	$a2, $a0, $a2
	alsl.d	$a1, $a1, $a0, 2
	ori	$a3, $zero, 13
	bne	$a2, $a3, .LBB5_53
# %bb.52:                               #   in Loop: Header=BB5_51 Depth=2
	move	$a3, $a1
	b	.LBB5_55
	.p2align	4, , 16
.LBB5_53:                               # %if.end.i.i96
                                        #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a2, .LBB5_57
# %bb.54:                               # %if.end5.i.i99
                                        #   in Loop: Header=BB5_53 Depth=3
	ld.w	$a2, $a1, 4
	addi.d	$a3, $a1, 4
	move	$a1, $a3
	ori	$a4, $zero, 13
	bne	$a2, $a4, .LBB5_53
.LBB5_55:                               # %_ZNK11CStringBaseIwE4FindEwi.exit.i102
                                        #   in Loop: Header=BB5_51 Depth=2
	sub.d	$a2, $a3, $a0
	srli.d	$a1, $a2, 2
	addi.w	$a3, $a1, 0
	bltz	$a3, .LBB5_57
# %bb.56:                               # %if.end6.i109
                                        #   in Loop: Header=BB5_51 Depth=2
	bstrpick.d	$a2, $a2, 33, 2
	bstrpick.d	$a1, $a1, 30, 0
	slli.d	$a3, $a1, 2
	addi.d	$a1, $a2, 1
	addi.w	$a2, $a1, 0
	ori	$a4, $zero, 32
	stx.w	$a4, $a0, $a3
	blt	$a2, $s3, .LBB5_51
.LBB5_57:                               # %invoke.cont131
                                        #   in Loop: Header=BB5_2 Depth=1
	beqz	$s0, .LBB5_61
# %bb.58:                               # %if.then134
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a1, $sp, 80
.Ltmp88:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
	b	.LBB5_98
.LBB5_59:                               # %if.else115
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.w	$s8, $s7, 28
	ld.d	$s3, $sp, 72
	move	$a0, $s3
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	and	$a1, $a0, $s5
	beqz	$a1, .LBB5_73
# %bb.60:                               #   in Loop: Header=BB5_2 Depth=1
	move	$s7, $zero
	b	.LBB5_75
.LBB5_61:                               # %if.else139
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.w	$a0, $s7, 28
	sub.w	$s2, $s1, $s3
	move	$s7, $s2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB5_64
# %bb.62:                               # %if.else139
                                        #   in Loop: Header=BB5_2 Depth=1
	bne	$a0, $s8, .LBB5_92
# %bb.63:                               # %sw.bb1.i121
                                        #   in Loop: Header=BB5_2 Depth=1
	bstrpick.d	$a0, $s2, 31, 31
	add.w	$a0, $s2, $a0
	srai.d	$s7, $a0, 1
.LBB5_64:                               # %sw.epilog.i123
                                        #   in Loop: Header=BB5_2 Depth=1
	blt	$s7, $s8, .LBB5_93
# %bb.65:                               # %for.body.i.i134.preheader
                                        #   in Loop: Header=BB5_2 Depth=1
	move	$s8, $s7
	.p2align	4, , 16
.LBB5_66:                               # %for.body.i.i134
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp80:                                # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.67:                               # %call.i.i.noexc138
                                        #   in Loop: Header=BB5_66 Depth=2
	addi.w	$s8, $s8, -1
	bnez	$s8, .LBB5_66
# %bb.68:                               #   in Loop: Header=BB5_2 Depth=1
	ori	$s8, $zero, 1
	b	.LBB5_93
.LBB5_69:                               # %if.then95
                                        #   in Loop: Header=BB5_2 Depth=1
	bnez	$s0, .LBB5_102
# %bb.70:                               # %if.then97
                                        #   in Loop: Header=BB5_2 Depth=1
	ori	$s2, $zero, 1
	blt	$s1, $s2, .LBB5_103
	.p2align	4, , 16
.LBB5_71:                               # %for.body.i55
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp68:                                # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.72:                               # %call.i57.noexc
                                        #   in Loop: Header=BB5_71 Depth=2
	addi.w	$s1, $s1, -1
	bnez	$s1, .LBB5_71
	b	.LBB5_101
.LBB5_73:                               # %if.end9.i.i
                                        #   in Loop: Header=BB5_2 Depth=1
	addi.w	$a1, $s2, 0
	addi.w	$a0, $a0, 0
	slti	$a1, $a1, -1
	slli.d	$a0, $a0, 2
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
.Ltmp91:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.74:                               # %call.i.i.noexc
                                        #   in Loop: Header=BB5_2 Depth=1
	move	$s7, $a0
	st.w	$zero, $a0, 0
.LBB5_75:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        #   in Loop: Header=BB5_2 Depth=1
	move	$a3, $s8
	ori	$a2, $zero, 1
	move	$a0, $zero
	.p2align	4, , 16
.LBB5_76:                               # %while.cond.i.i
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a1, $s3, $a0
	stx.w	$a1, $s7, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB5_76
# %bb.77:                               # %invoke.cont117
                                        #   in Loop: Header=BB5_2 Depth=1
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	sub.w	$s8, $s1, $s2
	move	$s2, $s8
	ori	$a0, $zero, 2
	beq	$a3, $a0, .LBB5_80
# %bb.78:                               # %invoke.cont117
                                        #   in Loop: Header=BB5_2 Depth=1
	bne	$a3, $a2, .LBB5_84
# %bb.79:                               # %sw.bb1.i
                                        #   in Loop: Header=BB5_2 Depth=1
	bstrpick.d	$a0, $s8, 31, 31
	add.w	$a0, $s8, $a0
	srai.d	$s2, $a0, 1
.LBB5_80:                               # %sw.epilog.i
                                        #   in Loop: Header=BB5_2 Depth=1
	blt	$s2, $a2, .LBB5_85
# %bb.81:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB5_2 Depth=1
	move	$s3, $s2
	.p2align	4, , 16
.LBB5_82:                               # %for.body.i.i
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp94:                                # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.83:                               # %call.i.i.noexc70
                                        #   in Loop: Header=BB5_82 Depth=2
	addi.w	$s3, $s3, -1
	bnez	$s3, .LBB5_82
	b	.LBB5_85
.LBB5_84:                               #   in Loop: Header=BB5_2 Depth=1
	move	$s2, $zero
.LBB5_85:                               # %_ZL11PrintSpacesi.exit.i
                                        #   in Loop: Header=BB5_2 Depth=1
.Ltmp97:                                # EH_LABEL
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.86:                               # %call4.i.noexc
                                        #   in Loop: Header=BB5_2 Depth=1
	sub.w	$a0, $s8, $s2
	ori	$s8, $zero, 1
	blt	$a0, $s8, .LBB5_90
# %bb.87:                               # %for.body.i6.i.preheader
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $s2, $a0
	sub.w	$s1, $a0, $s1
	.p2align	4, , 16
.LBB5_88:                               # %for.body.i6.i
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp100:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.89:                               # %call.i8.i.noexc
                                        #   in Loop: Header=BB5_88 Depth=2
	bstrpick.d	$a0, $s1, 31, 0
	addi.d	$s1, $a0, 1
	and	$a0, $s1, $s5
	beqz	$a0, .LBB5_88
.LBB5_90:                               # %invoke.cont119
                                        #   in Loop: Header=BB5_2 Depth=1
	beqz	$s7, .LBB5_101
# %bb.91:                               # %delete.notnull.i75
                                        #   in Loop: Header=BB5_2 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB5_101
.LBB5_92:                               #   in Loop: Header=BB5_2 Depth=1
	move	$s7, $zero
.LBB5_93:                               # %_ZL11PrintSpacesi.exit.i126
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a1, $sp, 80
.Ltmp83:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.94:                               # %call4.i.noexc140
                                        #   in Loop: Header=BB5_2 Depth=1
	sub.w	$a0, $s2, $s7
	blt	$a0, $s8, .LBB5_98
# %bb.95:                               # %for.body.i6.i130.preheader
                                        #   in Loop: Header=BB5_2 Depth=1
	add.d	$a0, $s7, $s3
	sub.w	$s1, $a0, $s1
	.p2align	4, , 16
.LBB5_96:                               # %for.body.i6.i130
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp85:                                # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.97:                               # %call.i8.i.noexc142
                                        #   in Loop: Header=BB5_96 Depth=2
	bstrpick.d	$a0, $s1, 31, 0
	addi.d	$s1, $a0, 1
	and	$a0, $s1, $s5
	beqz	$a0, .LBB5_96
.LBB5_98:                               # %if.end142
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB5_101
# %bb.99:                               # %delete.notnull.i146
                                        #   in Loop: Header=BB5_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB5_101
.LBB5_100:                              # %if.then1.i
                                        #   in Loop: Header=BB5_2 Depth=1
.Ltmp57:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
	.p2align	4, , 16
.LBB5_101:                              # %if.then95.thread
                                        #   in Loop: Header=BB5_2 Depth=1
	ori	$s2, $zero, 1
	beqz	$s0, .LBB5_103
.LBB5_102:                              # %if.then150
                                        #   in Loop: Header=BB5_2 Depth=1
	ori	$s2, $zero, 1
.Ltmp105:                               # EH_LABEL
	move	$a0, $s4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
	.p2align	4, , 16
.LBB5_103:                              # %cleanup156
                                        #   in Loop: Header=BB5_2 Depth=1
.Ltmp111:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.104:                              # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
                                        #   in Loop: Header=BB5_2 Depth=1
	beqz	$s2, .LBB5_107
# %bb.105:                              # %for.cond
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.w	$a0, $fp, 12
	addi.d	$s6, $s6, 1
	blt	$s6, $a0, .LBB5_2
.LBB5_106:
	move	$a0, $zero
	b	.LBB5_108
.LBB5_107:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
.LBB5_108:                              # %cleanup164
	addi.w	$a0, $a0, 0
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB5_109:
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$fp, $a0, %pc_lo12(.L.str.70)
	b	.LBB5_111
.LBB5_110:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$fp, $a0, %pc_lo12(.L.str.71)
.LBB5_111:                              # %if.then5.i.invoke
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
.Ltmp65:                                # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.112:                              # %if.then5.i.cont
.LBB5_113:                              # %lpad116
.Ltmp93:                                # EH_LABEL
	b	.LBB5_126
.LBB5_114:                              # %lpad79
.Ltmp76:                                # EH_LABEL
	b	.LBB5_126
.LBB5_115:                              # %lpad98.loopexit.split-lp.loopexit.split-lp
.Ltmp67:                                # EH_LABEL
	b	.LBB5_126
.LBB5_116:                              # %lpad118.loopexit.split-lp.loopexit.split-lp
.Ltmp99:                                # EH_LABEL
	b	.LBB5_131
.LBB5_117:                              # %lpad65
.Ltmp73:                                # EH_LABEL
	b	.LBB5_126
.LBB5_118:                              # %lpad128.loopexit.split-lp.loopexit.split-lp
.Ltmp90:                                # EH_LABEL
	b	.LBB5_134
.LBB5_119:                              # %lpad126
.Ltmp79:                                # EH_LABEL
	b	.LBB5_126
.LBB5_120:                              # %lpad12
.Ltmp51:                                # EH_LABEL
	b	.LBB5_134
.LBB5_121:                              # %lpad98.loopexit.split-lp.loopexit
.Ltmp107:                               # EH_LABEL
	b	.LBB5_126
.LBB5_122:                              # %lpad98.loopexit
.Ltmp70:                                # EH_LABEL
	b	.LBB5_126
.LBB5_123:                              # %lpad39
.Ltmp56:                                # EH_LABEL
	b	.LBB5_126
.LBB5_124:                              # %lpad
.Ltmp45:                                # EH_LABEL
	b	.LBB5_126
.LBB5_125:                              # %lpad23
.Ltmp42:                                # EH_LABEL
.LBB5_126:                              # %ehcleanup157
	move	$fp, $a0
	b	.LBB5_136
.LBB5_127:                              # %lpad6
.Ltmp48:                                # EH_LABEL
	b	.LBB5_134
.LBB5_128:                              # %lpad118.loopexit.split-lp.loopexit
.Ltmp96:                                # EH_LABEL
	b	.LBB5_131
.LBB5_129:                              # %lpad128.loopexit.split-lp.loopexit
.Ltmp82:                                # EH_LABEL
	b	.LBB5_134
.LBB5_130:                              # %lpad118.loopexit
.Ltmp102:                               # EH_LABEL
.LBB5_131:                              # %lpad118
	move	$fp, $a0
	beqz	$s7, .LBB5_136
# %bb.132:                              # %delete.notnull.i78
	move	$a0, $s7
	b	.LBB5_135
.LBB5_133:                              # %lpad128.loopexit
.Ltmp87:                                # EH_LABEL
.LBB5_134:                              # %lpad128
	move	$fp, $a0
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB5_136
.LBB5_135:                              # %delete.notnull.i117
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_136:                              # %ehcleanup157
.Ltmp108:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.137:                              # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit154
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_138:                              # %terminate.lpad.i
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_139:                              # %terminate.lpad.i153
.Ltmp110:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb, .Lfunc_end5-_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp43-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp40-.Ltmp47                #   Call between .Ltmp47 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin2          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin2          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp52-.Ltmp50                #   Call between .Ltmp50 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp55-.Ltmp52                #   Call between .Ltmp52 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin2          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin2          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin2          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp104-.Ltmp59               #   Call between .Ltmp59 and .Ltmp104
	.uleb128 .Ltmp107-.Lfunc_begin2         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin2          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin2          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp80-.Ltmp89                #   Call between .Ltmp89 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin2          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin2          # >> Call Site 16 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin2          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin2          # >> Call Site 17 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin2          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin2          # >> Call Site 18 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin2          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin2          # >> Call Site 19 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin2          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin2         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp83-.Ltmp101               #   Call between .Ltmp101 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin2          # >> Call Site 22 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp90-.Lfunc_begin2          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin2          # >> Call Site 23 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin2          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin2          # >> Call Site 24 <<
	.uleb128 .Ltmp57-.Ltmp86                #   Call between .Ltmp86 and .Ltmp57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin2          # >> Call Site 25 <<
	.uleb128 .Ltmp106-.Ltmp57               #   Call between .Ltmp57 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin2         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin2         #     jumps to .Ltmp113
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp112-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp65-.Ltmp112               #   Call between .Ltmp112 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin2          # >> Call Site 28 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin2          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin2          # >> Call Site 29 <<
	.uleb128 .Ltmp108-.Ltmp66               #   Call between .Ltmp66 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin2         #     jumps to .Ltmp110
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp109-.Lfunc_begin2         # >> Call Site 31 <<
	.uleb128 .Lfunc_end5-.Ltmp109           #   Call between .Ltmp109 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_ # -- Begin function _ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_
	.p2align	2
	.type	_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_,@function
_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_: # @_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -352
	.cfi_def_cfa_offset 352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
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
	ld.w	$a0, $a0, 12
	ori	$s2, $zero, 1
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	blt	$a0, $s2, .LBB6_48
# %bb.1:                                # %for.body.lr.ph
	move	$s1, $a3
	move	$s3, $zero
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$s4, $a0, %got_pc_lo12(g_StdOut)
	addi.d	$s7, $sp, 120
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB6_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #     Child Loop BB6_38 Depth 2
                                        #     Child Loop BB6_42 Depth 2
                                        #     Child Loop BB6_12 Depth 2
                                        #     Child Loop BB6_25 Depth 2
                                        #     Child Loop BB6_29 Depth 2
	ld.d	$a0, $fp, 16
	slli.d	$a1, $s3, 3
	ldx.d	$s8, $a0, $a1
	ld.w	$s0, $s8, 32
	blt	$s0, $s2, .LBB6_4
	.p2align	4, , 16
.LBB6_3:                                # %for.body.i
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a1, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB6_3
.LBB6_4:                                # %_ZL11PrintSpacesi.exit
                                        #   in Loop: Header=BB6_2 Depth=1
	st.w	$zero, $sp, 248
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB6_9
# %bb.5:                                # %_ZL11PrintSpacesi.exit
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$a2, $s1
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB6_8
# %bb.6:                                # %_ZL11PrintSpacesi.exit
                                        #   in Loop: Header=BB6_2 Depth=1
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB6_32
# %bb.7:                                # %if.then7
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
.LBB6_8:                                # %if.then7.invoke
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.w	$a0, $s8, 28
	ld.w	$a1, $s8, 36
.Ltmp143:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZL17PrintNumberString11EAdjustmentiPKy)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
	b	.LBB6_46
	.p2align	4, , 16
.LBB6_9:                                # %if.then14
                                        #   in Loop: Header=BB6_2 Depth=1
.Ltmp114:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z21ConvertUInt64ToStringyPw)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.10:                               # %invoke.cont16
                                        #   in Loop: Header=BB6_2 Depth=1
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 104
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a0, $a0, 0
	addi.w	$s6, $s0, 1
	slti	$a0, $a0, -1
	slli.d	$a1, $s6, 2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
.Ltmp117:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.11:                               # %call.i.i.noexc
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$a1, $zero
	st.d	$a0, $sp, 104
	st.w	$zero, $a0, 0
	st.w	$s6, $sp, 116
	.p2align	4, , 16
.LBB6_12:                               # %while.cond.i.i
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $a1, $s7
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_12
# %bb.13:                               # %invoke.cont19
                                        #   in Loop: Header=BB6_2 Depth=1
	st.w	$s0, $sp, 112
.Ltmp120:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.14:                               # %invoke.cont21
                                        #   in Loop: Header=BB6_2 Depth=1
.Ltmp122:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.15:                               # %invoke.cont23
                                        #   in Loop: Header=BB6_2 Depth=1
.Ltmp124:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.16:                               # %invoke.cont25
                                        #   in Loop: Header=BB6_2 Depth=1
.Ltmp126:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z21ConvertUInt64ToStringyPw)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.17:                               # %invoke.cont28
                                        #   in Loop: Header=BB6_2 Depth=1
.Ltmp128:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.18:                               # %invoke.cont30
                                        #   in Loop: Header=BB6_2 Depth=1
.Ltmp130:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.19:                               # %invoke.cont32
                                        #   in Loop: Header=BB6_2 Depth=1
.Ltmp132:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.20:                               # %invoke.cont34
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.w	$a0, $sp, 112
	ld.w	$a1, $s8, 28
	sub.w	$s0, $zero, $a0
	move	$s8, $s0
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB6_23
# %bb.21:                               # %invoke.cont34
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$s8, $zero
	bne	$a1, $s2, .LBB6_27
# %bb.22:                               # %sw.bb1.i
                                        #   in Loop: Header=BB6_2 Depth=1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	sub.d	$s8, $zero, $a0
.LBB6_23:                               # %sw.epilog.i
                                        #   in Loop: Header=BB6_2 Depth=1
	blt	$s8, $s2, .LBB6_27
# %bb.24:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$s5, $s8
	.p2align	4, , 16
.LBB6_25:                               # %for.body.i.i
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp134:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.26:                               # %call.i.i.noexc20
                                        #   in Loop: Header=BB6_25 Depth=2
	addi.w	$s5, $s5, -1
	bnez	$s5, .LBB6_25
.LBB6_27:                               # %_ZL11PrintSpacesi.exit.i
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.d	$a1, $sp, 104
.Ltmp137:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.28:                               # %call4.i.noexc
                                        #   in Loop: Header=BB6_2 Depth=1
	sub.w	$s0, $s0, $s8
	blt	$s0, $s2, .LBB6_31
	.p2align	4, , 16
.LBB6_29:                               # %for.body.i6.i
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp140:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.30:                               # %call.i8.i.noexc
                                        #   in Loop: Header=BB6_29 Depth=2
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB6_29
.LBB6_31:                               # %invoke.cont37
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.d	$a0, $sp, 104
	bnez	$a0, .LBB6_45
	b	.LBB6_46
	.p2align	4, , 16
.LBB6_32:                               # %if.else39
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.w	$s5, $s8, 28
	ld.w	$s8, $s8, 36
.Ltmp146:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.33:                               # %call.i.i.noexc41
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$s0, $a0
	st.w	$zero, $a0, 0
	move	$s6, $s8
	ori	$a0, $zero, 2
	beq	$s5, $a0, .LBB6_36
# %bb.34:                               # %call.i.i.noexc41
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$s6, $zero
	bne	$s5, $s2, .LBB6_40
# %bb.35:                               # %sw.bb1.i46
                                        #   in Loop: Header=BB6_2 Depth=1
	bstrpick.d	$a0, $s8, 31, 31
	add.w	$a0, $s8, $a0
	srai.d	$s6, $a0, 1
.LBB6_36:                               # %sw.epilog.i48
                                        #   in Loop: Header=BB6_2 Depth=1
	addi.w	$a0, $s6, 0
	blt	$a0, $s2, .LBB6_40
# %bb.37:                               # %for.body.i.i59.preheader
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$s5, $s6
	.p2align	4, , 16
.LBB6_38:                               # %for.body.i.i59
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp149:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.39:                               # %call.i.i.noexc63
                                        #   in Loop: Header=BB6_38 Depth=2
	addi.w	$s5, $s5, -1
	bnez	$s5, .LBB6_38
.LBB6_40:                               # %_ZL11PrintSpacesi.exit.i51
                                        #   in Loop: Header=BB6_2 Depth=1
.Ltmp152:                               # EH_LABEL
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.41:                               # %call4.i.noexc65
                                        #   in Loop: Header=BB6_2 Depth=1
	sub.w	$s6, $s8, $s6
	blt	$s6, $s2, .LBB6_44
	.p2align	4, , 16
.LBB6_42:                               # %for.body.i6.i55
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp155:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.43:                               # %call.i8.i.noexc67
                                        #   in Loop: Header=BB6_42 Depth=2
	addi.w	$s6, $s6, -1
	bnez	$s6, .LBB6_42
.LBB6_44:                               # %invoke.cont45
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$a0, $s0
.LBB6_45:                               # %if.end49
                                        #   in Loop: Header=BB6_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_46:                               # %if.end49
                                        #   in Loop: Header=BB6_2 Depth=1
.Ltmp161:                               # EH_LABEL
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp162:                               # EH_LABEL
# %bb.47:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.w	$a0, $fp, 12
	addi.d	$s3, $s3, 1
	blt	$s3, $a0, .LBB6_2
.LBB6_48:                               # %for.cond.cleanup
	move	$a0, $zero
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB6_49:                               # %lpad15
.Ltmp116:                               # EH_LABEL
	b	.LBB6_54
.LBB6_50:                               # %lpad42
.Ltmp148:                               # EH_LABEL
	b	.LBB6_54
.LBB6_51:                               # %lpad44.loopexit.split-lp.loopexit.split-lp
.Ltmp154:                               # EH_LABEL
	b	.LBB6_62
.LBB6_52:                               # %lpad18
.Ltmp119:                               # EH_LABEL
	b	.LBB6_54
.LBB6_53:                               # %lpad
.Ltmp145:                               # EH_LABEL
.LBB6_54:                               # %ehcleanup50
	move	$fp, $a0
	b	.LBB6_64
.LBB6_55:                               # %terminate.lpad.i
.Ltmp163:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_56:                               # %lpad20.loopexit.split-lp.loopexit.split-lp
.Ltmp139:                               # EH_LABEL
	b	.LBB6_60
.LBB6_57:                               # %lpad20.loopexit.split-lp.loopexit
.Ltmp136:                               # EH_LABEL
	b	.LBB6_60
.LBB6_58:                               # %lpad44.loopexit.split-lp.loopexit
.Ltmp151:                               # EH_LABEL
	b	.LBB6_62
.LBB6_59:                               # %lpad20.loopexit
.Ltmp142:                               # EH_LABEL
.LBB6_60:                               # %lpad20
	move	$fp, $a0
	ld.d	$a0, $sp, 104
	bnez	$a0, .LBB6_63
	b	.LBB6_64
.LBB6_61:                               # %lpad44.loopexit
.Ltmp157:                               # EH_LABEL
.LBB6_62:                               # %delete.notnull.i74
	move	$fp, $a0
	move	$a0, $s0
.LBB6_63:                               # %ehcleanup50
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_64:                               # %ehcleanup50
.Ltmp158:                               # EH_LABEL
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.65:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit79
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_66:                               # %terminate.lpad.i78
.Ltmp160:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_, .Lfunc_end6-_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp143-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp143
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin3         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin3         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp117-.Ltmp115              #   Call between .Ltmp115 and .Ltmp117
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin3         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp133-.Ltmp120              #   Call between .Ltmp120 and .Ltmp133
	.uleb128 .Ltmp139-.Lfunc_begin3         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin3         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin3         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin3         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin3         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin3         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin3         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin3         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp161-.Ltmp156              #   Call between .Ltmp156 and .Ltmp161
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin3         #     jumps to .Ltmp163
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp162-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp158-.Ltmp162              #   Call between .Ltmp162 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin3         #     jumps to .Ltmp160
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp159-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Lfunc_end6-.Ltmp159           #   Call between .Ltmp159 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL17PrintNumberString11EAdjustmentiPKy
	.type	_ZL17PrintNumberString11EAdjustmentiPKy,@function
_ZL17PrintNumberString11EAdjustmentiPKy: # @_ZL17PrintNumberString11EAdjustmentiPKy
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s0, $a2
	move	$fp, $a1
	move	$s2, $a0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB7_2
# %bb.1:                                # %if.then
	ld.d	$a0, $s0, 0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_Z21ConvertUInt64ToStringyPw)
	jirl	$ra, $ra, 0
.LBB7_2:                                # %if.end
	addi.d	$a0, $sp, 16
	addi.d	$s3, $sp, 16
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	beqz	$a1, .LBB7_4
# %bb.3:
	move	$s0, $zero
	b	.LBB7_5
.LBB7_4:                                # %if.end9.i.i
	addi.w	$a1, $s1, 0
	addi.w	$a0, $a0, 0
	slti	$a1, $a1, -1
	slli.d	$a0, $a0, 2
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$zero, $a0, 0
.LBB7_5:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	move	$a0, $zero
	.p2align	4, , 16
.LBB7_6:                                # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $a0, $s3
	stx.w	$a1, $s0, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB7_6
# %bb.7:                                # %_ZN11CStringBaseIwEC2EPKw.exit
	sub.w	$s3, $fp, $s1
	ori	$a0, $zero, 2
	move	$s4, $s3
	beq	$s2, $a0, .LBB7_10
# %bb.8:                                # %_ZN11CStringBaseIwEC2EPKw.exit
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB7_14
# %bb.9:                                # %sw.bb1.i
	bstrpick.d	$a0, $s3, 31, 31
	add.w	$a0, $s3, $a0
	srai.d	$s4, $a0, 1
.LBB7_10:                               # %sw.epilog.i
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB7_15
# %bb.11:                               # %for.body.i.i.preheader
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$s2, $a0, %got_pc_lo12(g_StdOut)
	move	$s5, $s4
	.p2align	4, , 16
.LBB7_12:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp164:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.13:                               # %call.i.i2.noexc
                                        #   in Loop: Header=BB7_12 Depth=1
	addi.w	$s5, $s5, -1
	bnez	$s5, .LBB7_12
	b	.LBB7_15
.LBB7_14:
	move	$s4, $zero
.LBB7_15:                               # %_ZL11PrintSpacesi.exit.i
.Ltmp167:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$a0, $a0, %got_pc_lo12(g_StdOut)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp168:                               # EH_LABEL
# %bb.16:                               # %call4.i.noexc
	sub.w	$a0, $s3, $s4
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB7_20
# %bb.17:                               # %for.body.i6.i.preheader
	add.d	$a0, $s4, $s1
	pcalau12i	$a1, %got_pc_hi20(g_StdOut)
	ld.d	$s1, $a1, %got_pc_lo12(g_StdOut)
	sub.w	$fp, $a0, $fp
	ori	$s2, $zero, 0
	lu32i.d	$s2, 1
	.p2align	4, , 16
.LBB7_18:                               # %for.body.i6.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp170:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.19:                               # %call.i8.i.noexc
                                        #   in Loop: Header=BB7_18 Depth=1
	bstrpick.d	$a0, $fp, 31, 0
	addi.d	$fp, $a0, 1
	and	$a0, $fp, $s2
	beqz	$a0, .LBB7_18
.LBB7_20:                               # %invoke.cont
	beqz	$s0, .LBB7_22
# %bb.21:                               # %delete.notnull.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB7_22:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB7_23:                               # %lpad.loopexit.split-lp.loopexit.split-lp
.Ltmp169:                               # EH_LABEL
	b	.LBB7_26
.LBB7_24:                               # %lpad.loopexit.split-lp.loopexit
.Ltmp166:                               # EH_LABEL
	b	.LBB7_26
.LBB7_25:                               # %lpad.loopexit
.Ltmp172:                               # EH_LABEL
.LBB7_26:                               # %lpad
	move	$fp, $a0
	beqz	$s0, .LBB7_28
# %bb.27:                               # %delete.notnull.i7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB7_28:                               # %_ZN11CStringBaseIwED2Ev.exit8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZL17PrintNumberString11EAdjustmentiPKy, .Lfunc_end7-_ZL17PrintNumberString11EAdjustmentiPKy
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp164-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp164
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp165-.Ltmp164              #   Call between .Ltmp164 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin4         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp168-.Ltmp167              #   Call between .Ltmp167 and .Ltmp168
	.uleb128 .Ltmp169-.Lfunc_begin4         #     jumps to .Ltmp169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp171-.Ltmp170              #   Call between .Ltmp170 and .Ltmp171
	.uleb128 .Ltmp172-.Lfunc_begin4         #     jumps to .Ltmp172
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Lfunc_end7-.Ltmp171           #   Call between .Ltmp171 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEpLEPKw,"axG",@progbits,_ZN11CStringBaseIwEpLEPKw,comdat
	.weak	_ZN11CStringBaseIwEpLEPKw       # -- Begin function _ZN11CStringBaseIwEpLEPKw
	.p2align	2
	.type	_ZN11CStringBaseIwEpLEPKw,@function
_ZN11CStringBaseIwEpLEPKw:              # @_ZN11CStringBaseIwEpLEPKw
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s0, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 8
	ld.w	$s5, $fp, 12
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	nor	$a1, $s3, $zero
	add.w	$a1, $s5, $a1
	bge	$a1, $a0, .LBB8_20
# %bb.1:                                # %if.end.i
	ori	$a2, $zero, 64
	slt	$a2, $a2, $s5
	bstrpick.d	$a3, $s5, 31, 1
	ori	$a4, $zero, 8
	slt	$a4, $a4, $s5
	ori	$a5, $zero, 4
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 16
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	add.w	$a3, $a2, $a1
	slt	$a0, $a3, $a0
	sub.d	$a1, $s1, $a1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	add.w	$a0, $a0, $s5
	addi.w	$s4, $a0, 1
	beq	$s4, $s5, .LBB8_20
# %bb.2:                                # %if.end.i.i
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s2, $a0
	blt	$s5, $a1, .LBB8_19
# %bb.3:                                # %for.cond.preheader.i.i
	ld.d	$a0, $fp, 0
	blt	$s3, $a1, .LBB8_8
# %bb.4:                                # %iter.check
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s3, $a2, .LBB8_16
# %bb.5:                                # %iter.check
	sub.d	$a2, $s2, $a0
	ori	$a3, $zero, 63
	bgeu	$a3, $a2, .LBB8_16
# %bb.6:                                # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$s3, $a1, .LBB8_9
# %bb.7:
	move	$a1, $zero
	b	.LBB8_13
.LBB8_8:                                # %for.cond.cleanup.i.i
	bnez	$a0, .LBB8_18
	b	.LBB8_19
.LBB8_9:                                # %vector.ph
	bstrpick.d	$a1, $s3, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $s2, 32
	addi.d	$a3, $a0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB8_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB8_10
# %bb.11:                               # %middle.block
	beq	$a1, $s3, .LBB8_18
# %bb.12:                               # %vec.epilog.iter.check
	andi	$a2, $s3, 12
	beqz	$a2, .LBB8_16
.LBB8_13:                               # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s3, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $s2, 2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB8_14:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB8_14
# %bb.15:                               # %vec.epilog.middle.block
	beq	$a1, $s3, .LBB8_18
.LBB8_16:                               # %for.body.i.i.preheader
	sub.d	$a2, $s3, $a1
	alsl.d	$a3, $a1, $s2, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB8_17:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB8_17
.LBB8_18:                               # %delete.notnull.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 8
.LBB8_19:                               # %if.end9.i.i
	st.d	$s2, $fp, 0
	slli.d	$a0, $s3, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $fp, 12
.LBB8_20:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a0, $fp, 0
	alsl.d	$a0, $s3, $a0, 2
	.p2align	4, , 16
.LBB8_21:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$a2, $a0, 4
	st.w	$a1, $a0, 0
	move	$a0, $a2
	bnez	$a1, .LBB8_21
# %bb.22:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	add.d	$a0, $s3, $s1
	st.w	$a0, $fp, 8
	move	$a0, $fp
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
.Lfunc_end8:
	.size	_ZN11CStringBaseIwEpLEPKw, .Lfunc_end8-_ZN11CStringBaseIwEpLEPKw
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z14GetUInt64ValueP10IInArchivejjRy # -- Begin function _Z14GetUInt64ValueP10IInArchivejjRy
	.p2align	5
	.type	_Z14GetUInt64ValueP10IInArchivejjRy,@function
_Z14GetUInt64ValueP10IInArchivejjRy:    # @_Z14GetUInt64ValueP10IInArchivejjRy
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	ld.d	$a4, $a0, 0
	ld.d	$a4, $a4, 64
	move	$fp, $a3
	st.w	$zero, $sp, 8
.Ltmp173:                               # EH_LABEL
	addi.d	$a3, $sp, 8
	jirl	$ra, $a4, 0
.Ltmp174:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	bnez	$a0, .LBB9_7
# %bb.2:                                # %if.end
	ld.hu	$s0, $sp, 8
	beqz	$s0, .LBB9_5
# %bb.3:                                # %if.end3
.Ltmp177:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.4:                                # %invoke.cont4
	st.d	$a0, $fp, 0
.LBB9_5:                                # %cleanup
.Ltmp183:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.6:                                # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit3
	sltu	$a0, $zero, $s0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB9_7:                                # %if.then
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	st.d	$a1, $a0, 0
.Ltmp175:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.8:                                # %unreachable
.LBB9_9:                                # %terminate.lpad.i2
.Ltmp185:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB9_10:                               # %lpad
.Ltmp179:                               # EH_LABEL
	move	$fp, $a0
.Ltmp180:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.11:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_12:                               # %terminate.lpad.i
.Ltmp182:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_Z14GetUInt64ValueP10IInArchivejjRy, .Lfunc_end9-_Z14GetUInt64ValueP10IInArchivejjRy
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp173-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp178-.Ltmp173              #   Call between .Ltmp173 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin5         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin5         #     jumps to .Ltmp185
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp184-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp175-.Ltmp184              #   Call between .Ltmp184 and .Ltmp175
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp179-.Lfunc_begin5         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp180-.Ltmp176              #   Call between .Ltmp176 and .Ltmp180
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin5         #     jumps to .Ltmp182
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp181-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Lfunc_end9-.Ltmp181           #   Call between .Ltmp181 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z12ListArchivesP7CCodecsRK13CRecordVectorIiEbR13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeEbbRbRS7_Ry
.LCPI10_0:
	.dword	8                               # 0x8
	.dword	0                               # 0x0
	.text
	.globl	_Z12ListArchivesP7CCodecsRK13CRecordVectorIiEbR13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeEbbRbRS7_Ry
	.p2align	5
	.type	_Z12ListArchivesP7CCodecsRK13CRecordVectorIiEbR13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeEbbRbRS7_Ry,@function
_Z12ListArchivesP7CCodecsRK13CRecordVectorIiEbR13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeEbbRbRS7_Ry: # @_Z12ListArchivesP7CCodecsRK13CRecordVectorIiEbR13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeEbbRbRS7_Ry
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -640
	.cfi_def_cfa_offset 640
	st.d	$ra, $sp, 632                   # 8-byte Folded Spill
	st.d	$fp, $sp, 624                   # 8-byte Folded Spill
	st.d	$s0, $sp, 616                   # 8-byte Folded Spill
	st.d	$s1, $sp, 608                   # 8-byte Folded Spill
	st.d	$s2, $sp, 600                   # 8-byte Folded Spill
	st.d	$s3, $sp, 592                   # 8-byte Folded Spill
	st.d	$s4, $sp, 584                   # 8-byte Folded Spill
	st.d	$s5, $sp, 576                   # 8-byte Folded Spill
	st.d	$s6, $sp, 568                   # 8-byte Folded Spill
	st.d	$s7, $sp, 560                   # 8-byte Folded Spill
	st.d	$s8, $sp, 552                   # 8-byte Folded Spill
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
	ld.d	$t0, $sp, 656
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	move	$s0, $a5
	move	$s7, $a4
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	st.d	$t0, $sp, 144                   # 8-byte Folded Spill
	st.d	$zero, $t0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	vst	$vr0, $sp, 528
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 544
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI10CFieldInfoE+16)
	addi.d	$fp, $a0, %pc_lo12(_ZTV13CObjectVectorI10CFieldInfoE+16)
	st.d	$fp, $sp, 520
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	bnez	$a7, .LBB10_2
# %bb.1:                                # %if.then
.Ltmp186:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZL19kStandardFieldTable)
	addi.d	$a1, $a0, %pc_lo12(_ZL19kStandardFieldTable)
	addi.d	$a0, $sp, 520
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZN13CFieldPrinter4InitEPK14CFieldInfoIniti)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
.LBB10_2:                               # %if.end
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	st.d	$zero, $sp, 512
	ori	$a1, $zero, 1
	st.d	$zero, $sp, 504
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB10_231
# %bb.3:                                # %for.body.lr.ph
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	ld.d	$s8, $sp, 648
	ld.d	$a0, $sp, 640
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	pcalau12i	$a1, %got_pc_hi20(_ZTV20COpenCallbackConsole)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTV20COpenCallbackConsole)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI10_0)
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	addi.d	$a0, $a1, 16
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$s0, $a0, %got_pc_lo12(g_StdOut)
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 4
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s8, $sp, 288                   # 8-byte Folded Spill
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_4:                               # %for.inc599
                                        #   in Loop: Header=BB10_5 Depth=1
	addi.d	$fp, $fp, 1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bge	$fp, $a0, .LBB10_233
.LBB10_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_26 Depth 2
                                        #     Child Loop BB10_36 Depth 2
                                        #       Child Loop BB10_38 Depth 3
                                        #     Child Loop BB10_77 Depth 2
                                        #       Child Loop BB10_95 Depth 3
                                        #       Child Loop BB10_122 Depth 3
                                        #     Child Loop BB10_189 Depth 2
                                        #       Child Loop BB10_190 Depth 3
                                        #       Child Loop BB10_194 Depth 3
                                        #     Child Loop BB10_156 Depth 2
                                        #     Child Loop BB10_209 Depth 2
                                        #       Child Loop BB10_210 Depth 3
                                        #       Child Loop BB10_214 Depth 3
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	slli.d	$a1, $fp, 3
	ldx.d	$s1, $a0, $a1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_7
# %bb.6:                                #   in Loop: Header=BB10_5 Depth=1
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
	b	.LBB10_20
	.p2align	4, , 16
.LBB10_7:                               # %if.then9
                                        #   in Loop: Header=BB10_5 Depth=1
	st.d	$zero, $sp, 472
.Ltmp189:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.8:                                # %invoke.cont11
                                        #   in Loop: Header=BB10_5 Depth=1
	st.d	$a0, $sp, 464
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 476
	ld.d	$a1, $s1, 0
.Ltmp192:                               # EH_LABEL
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.9:                                # %invoke.cont15
                                        #   in Loop: Header=BB10_5 Depth=1
	beqz	$a0, .LBB10_12
# %bb.10:                               # %invoke.cont17
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.bu	$a0, $sp, 456
	andi	$a0, $a0, 16
	bnez	$a0, .LBB10_12
# %bb.11:                               # %if.end32
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 424
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	move	$s6, $zero
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 464
	bnez	$a0, .LBB10_18
	b	.LBB10_19
	.p2align	4, , 16
.LBB10_12:                              # %if.then19
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp194:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.13:                               # %invoke.cont20
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp196:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
# %bb.14:                               # %invoke.cont22
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a1, $s1, 0
.Ltmp198:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.15:                               # %invoke.cont26
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp200:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.16:                               # %invoke.cont28
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp202:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
# %bb.17:                               # %invoke.cont30
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
	move	$s2, $zero
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$s6, $zero, 4
	ld.d	$a0, $sp, 464
	beqz	$a0, .LBB10_19
.LBB10_18:                              # %delete.notnull.i.i175
                                        #   in Loop: Header=BB10_5 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_19:                              # %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit176
                                        #   in Loop: Header=BB10_5 Depth=1
	beqz	$s2, .LBB10_227
.LBB10_20:                              # %invoke.cont36
                                        #   in Loop: Header=BB10_5 Depth=1
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 432
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 448
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 424
	addi.d	$a0, $sp, 464
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 456
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 480
	st.b	$zero, $sp, 496
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $sp, 384
	st.b	$zero, $sp, 401
	st.d	$zero, $sp, 416
.Ltmp205:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp206:                               # EH_LABEL
# %bb.21:                               # %invoke.cont38
                                        #   in Loop: Header=BB10_5 Depth=1
	st.d	$a0, $sp, 408
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.b	$a1, $a1, 0
	st.w	$zero, $a0, 0
	ori	$a2, $zero, 4
	st.w	$a2, $sp, 420
	st.d	$s0, $sp, 392
	st.b	$a1, $sp, 400
	addi.d	$a1, $sp, 408
	beq	$s8, $a1, .LBB10_28
# %bb.22:                               # %if.end.i
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.w	$a1, $s8, 8
	st.w	$zero, $sp, 416
	addi.w	$s2, $a1, 1
	st.w	$zero, $a0, 0
	ori	$a2, $zero, 4
	beq	$s2, $a2, .LBB10_25
# %bb.23:                               # %if.end.i.i
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$s3, $a0
	slti	$a0, $a1, -1
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp208:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.24:                               # %if.end9.i.i
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 416
	st.d	$s4, $sp, 408
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s4, $a0
	st.w	$s2, $sp, 420
	move	$a0, $s4
.LBB10_25:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a1, $s8, 0
	.p2align	4, , 16
.LBB10_26:                              # %while.cond.i.i
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB10_26
# %bb.27:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.w	$a0, $s8, 8
	st.w	$a0, $sp, 416
.LBB10_28:                              # %invoke.cont42
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp211:                               # EH_LABEL
	addi.d	$a0, $sp, 424
	addi.d	$a6, $sp, 384
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a4, $zero
	st.d	$s1, $sp, 248                   # 8-byte Folded Spill
	move	$a5, $s1
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
# %bb.29:                               # %invoke.cont46
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$s3, $a0
	ori	$s6, $zero, 1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB10_47
# %bb.30:                               # %invoke.cont46
                                        #   in Loop: Header=BB10_5 Depth=1
	bnez	$s3, .LBB10_48
# %bb.31:                               # %if.end93
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bnez	$a0, .LBB10_56
# %bb.32:                               # %if.end93
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.w	$a0, $sp, 468
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_56
# %bb.33:                               # %for.body102.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$s2, $zero
	b	.LBB10_36
	.p2align	4, , 16
.LBB10_34:                              #   in Loop: Header=BB10_36 Depth=2
	move	$fp, $s1
	ld.d	$s8, $sp, 288                   # 8-byte Folded Reload
	ori	$s6, $zero, 1
.LBB10_35:                              # %if.end118
                                        #   in Loop: Header=BB10_36 Depth=2
	ld.w	$a0, $sp, 468
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB10_56
.LBB10_36:                              # %for.body102
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_38 Depth 3
	ld.w	$s4, $s7, 12
	beqz	$s4, .LBB10_35
# %bb.37:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB10_36 Depth=2
	move	$s1, $fp
	ld.d	$a0, $sp, 472
	slli.d	$a1, $s2, 3
	ldx.d	$s5, $a0, $a1
	move	$s6, $zero
	.p2align	4, , 16
.LBB10_38:                              # %while.body.i
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$s8, $s4, $s6
	bstrpick.d	$a0, $s8, 31, 31
	ld.d	$a1, $s7, 16
	add.w	$a0, $s8, $a0
	srai.d	$s3, $a0, 1
	slli.d	$a0, $s3, 3
	ldx.d	$fp, $a1, $a0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $fp, 0
.Ltmp213:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp214:                               # EH_LABEL
# %bb.39:                               # %call.i.i.i.noexc197
                                        #   in Loop: Header=BB10_38 Depth=3
	beqz	$a0, .LBB10_42
# %bb.40:                               # %cleanup.i
                                        #   in Loop: Header=BB10_38 Depth=3
	ld.d	$a0, $s5, 0
	ld.d	$a1, $fp, 0
.Ltmp215:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.41:                               # %call.i.i8.i.noexc
                                        #   in Loop: Header=BB10_38 Depth=3
	slti	$a0, $a0, 0
	addi.w	$a1, $s3, 1
	masknez	$a2, $s4, $a0
	maskeqz	$a3, $s3, $a0
	or	$s4, $a3, $a2
	addi.w	$a2, $s4, 0
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$s6, $a0, $a1
	bne	$s6, $a2, .LBB10_38
	b	.LBB10_34
	.p2align	4, , 16
.LBB10_42:                              # %invoke.cont107
                                        #   in Loop: Header=BB10_36 Depth=2
	addi.w	$a0, $zero, -1
	blt	$s8, $a0, .LBB10_34
# %bb.43:                               # %invoke.cont107
                                        #   in Loop: Header=BB10_36 Depth=2
	move	$fp, $s1
	ld.d	$s8, $sp, 288                   # 8-byte Folded Reload
	ori	$s6, $zero, 1
	bge	$s1, $s3, .LBB10_35
# %bb.44:                               # %if.then111
                                        #   in Loop: Header=BB10_36 Depth=2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 16
.Ltmp218:                               # EH_LABEL
	ori	$a2, $zero, 1
	move	$a1, $s3
	jirl	$ra, $a3, 0
.Ltmp219:                               # EH_LABEL
# %bb.45:                               # %invoke.cont112
                                        #   in Loop: Header=BB10_36 Depth=2
	ld.d	$a0, $s7, 0
	ld.d	$a3, $a0, 16
.Ltmp220:                               # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s7
	move	$a1, $s3
	jirl	$ra, $a3, 0
.Ltmp221:                               # EH_LABEL
# %bb.46:                               # %invoke.cont115
                                        #   in Loop: Header=BB10_36 Depth=2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	b	.LBB10_35
	.p2align	4, , 16
.LBB10_47:                              #   in Loop: Header=BB10_5 Depth=1
	st.d	$s3, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a1, $sp, 384
	bnez	$a0, .LBB10_225
	b	.LBB10_226
	.p2align	4, , 16
.LBB10_48:                              # %if.end52
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp393:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp394:                               # EH_LABEL
# %bb.49:                               # %invoke.cont53
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp395:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp396:                               # EH_LABEL
# %bb.50:                               # %invoke.cont55
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
.Ltmp397:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.51:                               # %invoke.cont59
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp399:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp400:                               # EH_LABEL
# %bb.52:                               # %invoke.cont61
                                        #   in Loop: Header=BB10_5 Depth=1
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 14
	beq	$s3, $a0, .LBB10_66
# %bb.53:                               # %invoke.cont61
                                        #   in Loop: Header=BB10_5 Depth=1
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB10_68
# %bb.54:                               # %if.then64
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp401:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	pcaddu18i	$ra, %call36(_ZN20COpenCallbackConsole21Open_WasPasswordAskedEv)
	jirl	$ra, $ra, 0
.Ltmp402:                               # EH_LABEL
# %bb.55:                               # %invoke.cont65
                                        #   in Loop: Header=BB10_5 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	b	.LBB10_67
	.p2align	4, , 16
.LBB10_56:                              # %if.end123
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_64
# %bb.57:                               # %if.then125
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp223:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp224:                               # EH_LABEL
# %bb.58:                               # %invoke.cont126
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp225:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.78)
	addi.d	$a1, $a1, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.59:                               # %invoke.cont128
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
.Ltmp227:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp228:                               # EH_LABEL
# %bb.60:                               # %invoke.cont132
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp229:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp230:                               # EH_LABEL
# %bb.61:                               # %invoke.cont134
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp231:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.62:                               # %for.cond139.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.w	$a0, $sp, 436
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_144
# %bb.63:                               # %for.body145.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$s2, $zero
	b	.LBB10_77
.LBB10_64:                              #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB10_65:                              # %if.end400
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.w	$a0, $sp, 436
	ld.d	$a1, $sp, 440
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$s5, $a0, -8
	ld.d	$s3, $s5, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bnez	$a0, .LBB10_148
	b	.LBB10_150
.LBB10_66:                              #   in Loop: Header=BB10_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
.LBB10_67:                              # %if.then75.invoke
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp403:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp404:                               # EH_LABEL
	b	.LBB10_73
.LBB10_68:                              # %if.else78
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $sp, 376
.Ltmp405:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp406:                               # EH_LABEL
# %bb.69:                               # %call.i.i.i.noexc
                                        #   in Loop: Header=BB10_5 Depth=1
	st.d	$a0, $sp, 368
	st.w	$zero, $a0, 0
.Ltmp408:                               # EH_LABEL
	addi.d	$a1, $sp, 368
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8NWindows6NError15MyFormatMessageEjR11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp409:                               # EH_LABEL
# %bb.70:                               # %invoke.cont80
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a1, $sp, 368
.Ltmp411:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp412:                               # EH_LABEL
# %bb.71:                               # %invoke.cont84
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 368
	beqz	$a0, .LBB10_73
# %bb.72:                               # %delete.notnull.i
                                        #   in Loop: Header=BB10_5 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_73:                              # %if.end89
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp414:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp415:                               # EH_LABEL
# %bb.74:                               # %invoke.cont90
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $a1, 0
	ori	$s6, $zero, 4
	ld.d	$a0, $sp, 408
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a1, $sp, 384
	bnez	$a0, .LBB10_225
	b	.LBB10_226
	.p2align	4, , 16
.LBB10_75:                              # %cleanup368.thread396
                                        #   in Loop: Header=BB10_77 Depth=2
	ld.w	$a0, $sp, 436
.LBB10_76:                              # %for.inc376
                                        #   in Loop: Header=BB10_77 Depth=2
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB10_144
.LBB10_77:                              # %for.body145
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_95 Depth 3
                                        #       Child Loop BB10_122 Depth 3
	ld.d	$a0, $sp, 440
	slli.d	$a1, $s2, 3
	ldx.d	$s3, $a0, $a1
.Ltmp233:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.78:                               # %invoke.cont150
                                        #   in Loop: Header=BB10_77 Depth=2
	ld.d	$s1, $s3, 8
.Ltmp235:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.79:                               # %call.i205.noexc
                                        #   in Loop: Header=BB10_77 Depth=2
.Ltmp237:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.80:                               # %call1.i.noexc
                                        #   in Loop: Header=BB10_77 Depth=2
.Ltmp239:                               # EH_LABEL
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
# %bb.81:                               # %call2.i.noexc
                                        #   in Loop: Header=BB10_77 Depth=2
.Ltmp241:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.82:                               # %invoke.cont154
                                        #   in Loop: Header=BB10_77 Depth=2
	ld.w	$a0, $s3, 40
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 32
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$s1, $a0, 24
.Ltmp243:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.83:                               # %call.i213.noexc
                                        #   in Loop: Header=BB10_77 Depth=2
.Ltmp245:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
# %bb.84:                               # %call1.i.noexc215
                                        #   in Loop: Header=BB10_77 Depth=2
.Ltmp247:                               # EH_LABEL
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.85:                               # %call2.i.noexc217
                                        #   in Loop: Header=BB10_77 Depth=2
.Ltmp249:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.86:                               # %invoke.cont159
                                        #   in Loop: Header=BB10_77 Depth=2
	ld.w	$a0, $s3, 72
	beqz	$a0, .LBB10_91
# %bb.87:                               # %if.then162
                                        #   in Loop: Header=BB10_77 Depth=2
	ld.d	$s1, $s3, 64
.Ltmp251:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp252:                               # EH_LABEL
# %bb.88:                               # %call.i223.noexc
                                        #   in Loop: Header=BB10_77 Depth=2
.Ltmp253:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
# %bb.89:                               # %call1.i.noexc225
                                        #   in Loop: Header=BB10_77 Depth=2
.Ltmp255:                               # EH_LABEL
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.90:                               # %call2.i.noexc227
                                        #   in Loop: Header=BB10_77 Depth=2
.Ltmp257:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp258:                               # EH_LABEL
.LBB10_91:                              # %if.end167
                                        #   in Loop: Header=BB10_77 Depth=2
	ld.d	$s1, $s3, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 104
.Ltmp260:                               # EH_LABEL
	addi.d	$a1, $sp, 304
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp261:                               # EH_LABEL
# %bb.92:                               # %invoke.cont173
                                        #   in Loop: Header=BB10_77 Depth=2
	bnez	$a0, .LBB10_116
# %bb.93:                               # %invoke.cont173
                                        #   in Loop: Header=BB10_77 Depth=2
	ld.w	$a0, $sp, 304
	beqz	$a0, .LBB10_116
# %bb.94:                               # %for.body180.preheader
                                        #   in Loop: Header=BB10_77 Depth=2
	move	$s3, $zero
	.p2align	4, , 16
.LBB10_95:                              # %for.body180
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_77 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$zero, $sp, 360
	ld.d	$a0, $s1, 0
	ld.d	$a5, $a0, 112
.Ltmp263:                               # EH_LABEL
	addi.d	$a2, $sp, 360
	addi.d	$a3, $sp, 356
	addi.d	$a4, $sp, 316
	move	$a0, $s1
	move	$a1, $s3
	jirl	$ra, $a5, 0
.Ltmp264:                               # EH_LABEL
# %bb.96:                               # %invoke.cont188
                                        #   in Loop: Header=BB10_95 Depth=3
	beqz	$a0, .LBB10_98
# %bb.97:                               #   in Loop: Header=BB10_95 Depth=3
	move	$s5, $zero
	b	.LBB10_113
	.p2align	4, , 16
.LBB10_98:                              # %cleanup.cont195
                                        #   in Loop: Header=BB10_95 Depth=3
	st.w	$zero, $sp, 368
	ld.d	$a0, $s1, 0
	ld.w	$a1, $sp, 356
	ld.d	$a3, $a0, 80
.Ltmp266:                               # EH_LABEL
	addi.d	$a2, $sp, 368
	move	$a0, $s1
	jirl	$ra, $a3, 0
.Ltmp267:                               # EH_LABEL
# %bb.99:                               # %invoke.cont203
                                        #   in Loop: Header=BB10_95 Depth=3
	move	$s4, $a0
	bnez	$a0, .LBB10_111
# %bb.100:                              # %cleanup.cont210
                                        #   in Loop: Header=BB10_95 Depth=3
	ld.w	$a2, $sp, 356
.Ltmp269:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 368
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb)
	jirl	$ra, $ra, 0
.Ltmp270:                               # EH_LABEL
# %bb.101:                              # %invoke.cont213
                                        #   in Loop: Header=BB10_95 Depth=3
	ld.w	$a0, $sp, 344
	beqz	$a0, .LBB10_109
# %bb.102:                              # %if.then217
                                        #   in Loop: Header=BB10_95 Depth=3
	ld.w	$a1, $sp, 356
	ld.d	$a2, $sp, 360
.Ltmp272:                               # EH_LABEL
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(_ZL11GetPropNamejPw)
	jirl	$ra, $ra, 0
.Ltmp273:                               # EH_LABEL
# %bb.103:                              # %invoke.cont222
                                        #   in Loop: Header=BB10_95 Depth=3
	ld.d	$s5, $sp, 320
	ld.d	$s6, $sp, 336
.Ltmp275:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp276:                               # EH_LABEL
# %bb.104:                              # %call.i233.noexc
                                        #   in Loop: Header=BB10_95 Depth=3
.Ltmp277:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp278:                               # EH_LABEL
# %bb.105:                              # %call1.i.noexc235
                                        #   in Loop: Header=BB10_95 Depth=3
.Ltmp279:                               # EH_LABEL
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp280:                               # EH_LABEL
# %bb.106:                              # %call2.i.noexc237
                                        #   in Loop: Header=BB10_95 Depth=3
.Ltmp281:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp282:                               # EH_LABEL
# %bb.107:                              # %invoke.cont228
                                        #   in Loop: Header=BB10_95 Depth=3
	ori	$s6, $zero, 1
	beqz	$s5, .LBB10_109
# %bb.108:                              # %delete.notnull.i242
                                        #   in Loop: Header=BB10_95 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_109:                             # %if.end231
                                        #   in Loop: Header=BB10_95 Depth=3
	ld.d	$a0, $sp, 336
	beqz	$a0, .LBB10_111
# %bb.110:                              # %delete.notnull.i251
                                        #   in Loop: Header=BB10_95 Depth=3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_111:                             # %cleanup234
                                        #   in Loop: Header=BB10_95 Depth=3
.Ltmp290:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp291:                               # EH_LABEL
# %bb.112:                              # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
                                        #   in Loop: Header=BB10_95 Depth=3
	sltui	$s5, $s4, 1
	masknez	$a0, $s4, $s5
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s5
	or	$a0, $a1, $a0
.LBB10_113:                             # %cleanup238
                                        #   in Loop: Header=BB10_95 Depth=3
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360
.Ltmp293:                               # EH_LABEL
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp294:                               # EH_LABEL
# %bb.114:                              # %_ZN10CMyComBSTRD2Ev.exit
                                        #   in Loop: Header=BB10_95 Depth=3
	beqz	$s5, .LBB10_224
# %bb.115:                              # %for.cond177
                                        #   in Loop: Header=BB10_95 Depth=3
	ld.w	$a0, $sp, 304
	addi.w	$s3, $s3, 1
	bltu	$s3, $a0, .LBB10_95
.LBB10_116:                             # %if.end254
                                        #   in Loop: Header=BB10_77 Depth=2
	ld.w	$a0, $sp, 436
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	beq	$s2, $a1, .LBB10_76
# %bb.117:                              # %if.then259
                                        #   in Loop: Header=BB10_77 Depth=2
.Ltmp296:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp297:                               # EH_LABEL
# %bb.118:                              # %invoke.cont262
                                        #   in Loop: Header=BB10_77 Depth=2
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 88
.Ltmp298:                               # EH_LABEL
	addi.d	$a1, $sp, 356
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp299:                               # EH_LABEL
# %bb.119:                              # %invoke.cont266
                                        #   in Loop: Header=BB10_77 Depth=2
	bnez	$a0, .LBB10_75
# %bb.120:                              # %if.then269
                                        #   in Loop: Header=BB10_77 Depth=2
	ld.w	$a0, $sp, 356
	beqz	$a0, .LBB10_75
# %bb.121:                              # %for.body278.preheader
                                        #   in Loop: Header=BB10_77 Depth=2
	ld.d	$a0, $sp, 440
	alsl.d	$a0, $s2, $a0, 3
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 44
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	move	$s4, $zero
	.p2align	4, , 16
.LBB10_122:                             # %for.body278
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_77 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$zero, $sp, 360
	ld.d	$a0, $s1, 0
	ld.d	$a5, $a0, 96
.Ltmp301:                               # EH_LABEL
	addi.d	$a2, $sp, 360
	addi.d	$a3, $sp, 316
	addi.d	$a4, $sp, 314
	move	$a0, $s1
	move	$a1, $s4
	jirl	$ra, $a5, 0
.Ltmp302:                               # EH_LABEL
# %bb.123:                              # %invoke.cont290
                                        #   in Loop: Header=BB10_122 Depth=3
	beqz	$a0, .LBB10_125
# %bb.124:                              #   in Loop: Header=BB10_122 Depth=3
	move	$s3, $zero
	b	.LBB10_141
	.p2align	4, , 16
.LBB10_125:                             # %cleanup.cont297
                                        #   in Loop: Header=BB10_122 Depth=3
	st.w	$zero, $sp, 368
	ld.d	$a0, $s1, 0
	ld.w	$a2, $sp, 316
	ld.d	$a4, $a0, 64
.Ltmp304:                               # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	jirl	$ra, $a4, 0
.Ltmp305:                               # EH_LABEL
# %bb.126:                              # %invoke.cont306
                                        #   in Loop: Header=BB10_122 Depth=3
	move	$s5, $a0
	bnez	$a0, .LBB10_139
# %bb.127:                              # %cleanup.cont313
                                        #   in Loop: Header=BB10_122 Depth=3
	ld.w	$a2, $sp, 316
.Ltmp307:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 368
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb)
	jirl	$ra, $ra, 0
.Ltmp308:                               # EH_LABEL
# %bb.128:                              # %invoke.cont317
                                        #   in Loop: Header=BB10_122 Depth=3
	ld.w	$a0, $sp, 344
	beqz	$a0, .LBB10_137
# %bb.129:                              # %if.then321
                                        #   in Loop: Header=BB10_122 Depth=3
	ld.w	$a1, $sp, 316
	ld.d	$a2, $sp, 360
.Ltmp310:                               # EH_LABEL
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(_ZL11GetPropNamejPw)
	jirl	$ra, $ra, 0
.Ltmp311:                               # EH_LABEL
# %bb.130:                              # %invoke.cont326
                                        #   in Loop: Header=BB10_122 Depth=3
	ld.d	$s6, $sp, 320
	ld.d	$s3, $sp, 336
.Ltmp313:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp314:                               # EH_LABEL
# %bb.131:                              # %call.i267.noexc
                                        #   in Loop: Header=BB10_122 Depth=3
.Ltmp315:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp316:                               # EH_LABEL
# %bb.132:                              # %call1.i.noexc269
                                        #   in Loop: Header=BB10_122 Depth=3
.Ltmp317:                               # EH_LABEL
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp318:                               # EH_LABEL
# %bb.133:                              # %call2.i.noexc271
                                        #   in Loop: Header=BB10_122 Depth=3
.Ltmp319:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp320:                               # EH_LABEL
# %bb.134:                              # %invoke.cont332
                                        #   in Loop: Header=BB10_122 Depth=3
	beqz	$s6, .LBB10_136
# %bb.135:                              # %delete.notnull.i276
                                        #   in Loop: Header=BB10_122 Depth=3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_136:                             # %_ZN11CStringBaseIwED2Ev.exit277
                                        #   in Loop: Header=BB10_122 Depth=3
	ori	$s6, $zero, 1
.LBB10_137:                             # %if.end335
                                        #   in Loop: Header=BB10_122 Depth=3
	ld.d	$a0, $sp, 336
	beqz	$a0, .LBB10_139
# %bb.138:                              # %delete.notnull.i285
                                        #   in Loop: Header=BB10_122 Depth=3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_139:                             # %cleanup338
                                        #   in Loop: Header=BB10_122 Depth=3
.Ltmp328:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.140:                              # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit289
                                        #   in Loop: Header=BB10_122 Depth=3
	sltui	$s3, $s5, 1
	masknez	$a0, $s5, $s3
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s3
	or	$a0, $a1, $a0
.LBB10_141:                             # %cleanup342
                                        #   in Loop: Header=BB10_122 Depth=3
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360
.Ltmp331:                               # EH_LABEL
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.142:                              # %_ZN10CMyComBSTRD2Ev.exit291
                                        #   in Loop: Header=BB10_122 Depth=3
	beqz	$s3, .LBB10_224
# %bb.143:                              # %for.cond275
                                        #   in Loop: Header=BB10_122 Depth=3
	ld.w	$a0, $sp, 356
	addi.w	$s4, $s4, 1
	bltu	$s4, $a0, .LBB10_122
	b	.LBB10_75
.LBB10_144:                             # %for.end381
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp334:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp335:                               # EH_LABEL
# %bb.145:                              # %invoke.cont382
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_184
# %bb.146:                              # %if.then385
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp348:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp349:                               # EH_LABEL
# %bb.147:                              # %if.end400.thread
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.w	$a0, $sp, 436
	ld.d	$a1, $sp, 440
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$s5, $a0, -8
	ld.d	$s3, $s5, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB10_148:                             # %if.then412
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp350:                               # EH_LABEL
	addi.d	$a0, $sp, 520
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN13CFieldPrinter4InitEP10IInArchive)
	jirl	$ra, $ra, 0
.Ltmp351:                               # EH_LABEL
# %bb.149:                              # %invoke.cont415
                                        #   in Loop: Header=BB10_5 Depth=1
	bnez	$a0, .LBB10_152
.LBB10_150:                             # %if.end424
                                        #   in Loop: Header=BB10_5 Depth=1
	st.d	$zero, $sp, 336
	st.d	$zero, $sp, 320
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 56
.Ltmp353:                               # EH_LABEL
	addi.d	$a1, $sp, 356
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp354:                               # EH_LABEL
# %bb.151:                              # %invoke.cont429
                                        #   in Loop: Header=BB10_5 Depth=1
	ori	$s6, $zero, 1
	beqz	$a0, .LBB10_153
.LBB10_152:                             #   in Loop: Header=BB10_5 Depth=1
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a1, $sp, 384
	bnez	$a0, .LBB10_225
	b	.LBB10_226
.LBB10_153:                             # %for.cond439.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.w	$a0, $sp, 356
	beqz	$a0, .LBB10_198
# %bb.154:                              # %for.body442.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$s6, $zero
	move	$s4, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	b	.LBB10_156
	.p2align	4, , 16
.LBB10_155:                             # %for.inc518
                                        #   in Loop: Header=BB10_156 Depth=2
	ld.w	$a0, $sp, 356
	addi.w	$s6, $s6, 1
	bgeu	$s6, $a0, .LBB10_199
.LBB10_156:                             # %for.body442
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp356:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13NConsoleClose15TestBreakSignalEv)
	jirl	$ra, $ra, 0
.Ltmp357:                               # EH_LABEL
# %bb.157:                              # %invoke.cont444
                                        #   in Loop: Header=BB10_156 Depth=2
	ld.d	$s8, $sp, 288                   # 8-byte Folded Reload
	bnez	$a0, .LBB10_229
# %bb.158:                              # %if.end447
                                        #   in Loop: Header=BB10_156 Depth=2
	st.d	$zero, $sp, 376
.Ltmp359:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.159:                              # %invoke.cont449
                                        #   in Loop: Header=BB10_156 Depth=2
	st.d	$a0, $sp, 368
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 380
.Ltmp362:                               # EH_LABEL
	addi.d	$a2, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNK4CArc11GetItemPathEjR11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp363:                               # EH_LABEL
# %bb.160:                              # %invoke.cont451
                                        #   in Loop: Header=BB10_156 Depth=2
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	beqz	$a1, .LBB10_162
# %bb.161:                              # %invoke.cont451
                                        #   in Loop: Header=BB10_156 Depth=2
	ori	$s8, $zero, 17
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB10_178
.LBB10_162:                             # %if.end457
                                        #   in Loop: Header=BB10_156 Depth=2
	ori	$s8, $zero, 1
	bnez	$a0, .LBB10_177
# %bb.163:                              # %cleanup.cont464
                                        #   in Loop: Header=BB10_156 Depth=2
.Ltmp365:                               # EH_LABEL
	addi.d	$a2, $sp, 316
	move	$a0, $s3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_Z19IsArchiveItemFolderP10IInArchivejRb)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.164:                              # %invoke.cont467
                                        #   in Loop: Header=BB10_156 Depth=2
	move	$s1, $a0
	ori	$s8, $zero, 1
	bnez	$a0, .LBB10_176
# %bb.165:                              # %cleanup.cont474
                                        #   in Loop: Header=BB10_156 Depth=2
	ld.b	$a0, $sp, 316
	ori	$a1, $zero, 1
	andn	$a2, $a1, $a0
.Ltmp368:                               # EH_LABEL
	addi.d	$a1, $sp, 368
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEb)
	jirl	$ra, $ra, 0
.Ltmp369:                               # EH_LABEL
# %bb.166:                              # %invoke.cont478
                                        #   in Loop: Header=BB10_156 Depth=2
	ori	$s8, $zero, 19
	beqz	$a0, .LBB10_176
# %bb.167:                              # %if.end481
                                        #   in Loop: Header=BB10_156 Depth=2
.Ltmp370:                               # EH_LABEL
	addi.d	$a0, $sp, 520
	move	$a1, $s5
	move	$a2, $s6
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb)
	jirl	$ra, $ra, 0
.Ltmp371:                               # EH_LABEL
# %bb.168:                              # %invoke.cont483
                                        #   in Loop: Header=BB10_156 Depth=2
.Ltmp373:                               # EH_LABEL
	move	$s8, $s4
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	ori	$a2, $zero, 7
	addi.d	$a3, $sp, 304
	move	$a0, $s3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_Z14GetUInt64ValueP10IInArchivejjRy)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.169:                              # %invoke.cont486
                                        #   in Loop: Header=BB10_156 Depth=2
	addi.d	$s4, $sp, 320
	bnez	$a0, .LBB10_171
# %bb.170:                              # %if.then488
                                        #   in Loop: Header=BB10_156 Depth=2
	st.d	$zero, $sp, 304
	move	$s4, $s8
.LBB10_171:                             # %if.end490
                                        #   in Loop: Header=BB10_156 Depth=2
.Ltmp375:                               # EH_LABEL
	ori	$a2, $zero, 8
	addi.d	$a3, $sp, 360
	move	$a0, $s3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_Z14GetUInt64ValueP10IInArchivejjRy)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.172:                              # %invoke.cont491
                                        #   in Loop: Header=BB10_156 Depth=2
	addi.d	$s2, $sp, 336
	bnez	$a0, .LBB10_174
# %bb.173:                              # %if.then493
                                        #   in Loop: Header=BB10_156 Depth=2
	st.d	$zero, $sp, 360
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
.LBB10_174:                             # %if.end495
                                        #   in Loop: Header=BB10_156 Depth=2
.Ltmp377:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.175:                              # %invoke.cont496
                                        #   in Loop: Header=BB10_156 Depth=2
	ld.bu	$a0, $sp, 316
	move	$s8, $zero
	xori	$a1, $a0, 1
	ld.d	$a2, $sp, 360
	ld.d	$a3, $sp, 304
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a4, $a4, $a1
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.LBB10_176:                             # %cleanup508
                                        #   in Loop: Header=BB10_156 Depth=2
	sltui	$a0, $s1, 1
	masknez	$a1, $s1, $a0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB10_177:                             # %cleanup510
                                        #   in Loop: Header=BB10_156 Depth=2
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
.LBB10_178:                             # %cleanup510
                                        #   in Loop: Header=BB10_156 Depth=2
	ld.d	$a0, $sp, 368
	beqz	$a0, .LBB10_180
# %bb.179:                              # %delete.notnull.i311
                                        #   in Loop: Header=BB10_156 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_180:                             # %_ZN11CStringBaseIwED2Ev.exit312
                                        #   in Loop: Header=BB10_156 Depth=2
	beqz	$s8, .LBB10_155
# %bb.181:                              # %_ZN11CStringBaseIwED2Ev.exit312
                                        #   in Loop: Header=BB10_156 Depth=2
	ori	$a0, $zero, 19
	beq	$s8, $a0, .LBB10_155
# %bb.182:                              # %_ZN11CStringBaseIwED2Ev.exit312
                                        #   in Loop: Header=BB10_5 Depth=1
	ori	$a0, $zero, 17
	beq	$s8, $a0, .LBB10_199
# %bb.183:                              #   in Loop: Header=BB10_5 Depth=1
	move	$s6, $s8
	ld.d	$s8, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 408
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a1, $sp, 384
	bnez	$a0, .LBB10_225
	b	.LBB10_226
.LBB10_184:                             # %if.then393
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp336:                               # EH_LABEL
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZN13CFieldPrinter10PrintTitleEv)
	jirl	$ra, $ra, 0
.Ltmp337:                               # EH_LABEL
# %bb.185:                              # %invoke.cont394
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp338:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp339:                               # EH_LABEL
# %bb.186:                              # %invoke.cont395
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.w	$a0, $sp, 532
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_196
# %bb.187:                              # %for.body.i.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$s1, $zero
	b	.LBB10_189
	.p2align	4, , 16
.LBB10_188:                             # %for.cond.cleanup7.i
                                        #   in Loop: Header=BB10_189 Depth=2
	ld.w	$a0, $sp, 532
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB10_196
.LBB10_189:                             # %for.body.i
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_190 Depth 3
                                        #       Child Loop BB10_194 Depth 3
	ld.d	$a0, $sp, 536
	slli.d	$a1, $s1, 3
	ldx.d	$s2, $a0, $a1
	ld.w	$s3, $s2, 32
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB10_192
	.p2align	4, , 16
.LBB10_190:                             # %for.body.i.i
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp340:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp341:                               # EH_LABEL
# %bb.191:                              # %call.i.i.noexc301
                                        #   in Loop: Header=BB10_190 Depth=3
	addi.w	$s3, $s3, -1
	bnez	$s3, .LBB10_190
.LBB10_192:                             # %_ZL11PrintSpacesi.exit.i
                                        #   in Loop: Header=BB10_189 Depth=2
	ld.w	$a0, $s2, 36
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_188
# %bb.193:                              # %for.body8.i.preheader
                                        #   in Loop: Header=BB10_189 Depth=2
	move	$s3, $zero
	.p2align	4, , 16
.LBB10_194:                             # %for.body8.i
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp343:                               # EH_LABEL
	ori	$a1, $zero, 45
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp344:                               # EH_LABEL
# %bb.195:                              # %call9.i.noexc
                                        #   in Loop: Header=BB10_194 Depth=3
	ld.w	$a0, $s2, 36
	addi.w	$s3, $s3, 1
	blt	$s3, $a0, .LBB10_194
	b	.LBB10_188
.LBB10_196:                             # %invoke.cont397
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp346:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp347:                               # EH_LABEL
# %bb.197:                              #   in Loop: Header=BB10_5 Depth=1
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	b	.LBB10_65
.LBB10_198:                             #   in Loop: Header=BB10_5 Depth=1
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	move	$s4, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
.LBB10_199:                             # %for.end523
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $sp, 336
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	st.d	$s6, $sp, 320
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bnez	$a0, .LBB10_230
# %bb.200:                              # %for.end523
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$s8, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	bnez	$s2, .LBB10_202
# %bb.201:                              # %if.then527
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.w	$a0, $sp, 468
	ld.d	$a1, $sp, 488
	sltui	$a0, $a0, 1
	masknez	$a0, $a1, $a0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sltui	$a1, $s5, 1
	masknez	$a0, $a0, $a1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 336
	addi.d	$s2, $sp, 336
.LBB10_202:                             # %if.end537
                                        #   in Loop: Header=BB10_5 Depth=1
	bnez	$s4, .LBB10_205
.LBB10_203:                             # %if.end537
                                        #   in Loop: Header=BB10_5 Depth=1
	bnez	$s5, .LBB10_205
# %bb.204:                              # %if.then541
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$s6, $zero
	st.d	$zero, $sp, 320
	addi.d	$s4, $sp, 320
.LBB10_205:                             # %if.end542
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	bnez	$a0, .LBB10_219
# %bb.206:                              # %if.then546
                                        #   in Loop: Header=BB10_5 Depth=1
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $sp, 532
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_216
# %bb.207:                              # %for.body.i321.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$s1, $zero
	b	.LBB10_209
	.p2align	4, , 16
.LBB10_208:                             # %for.cond.cleanup7.i329
                                        #   in Loop: Header=BB10_209 Depth=2
	ld.w	$a0, $sp, 532
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB10_216
.LBB10_209:                             # %for.body.i321
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_210 Depth 3
                                        #       Child Loop BB10_214 Depth 3
	ld.d	$a0, $sp, 536
	slli.d	$a1, $s1, 3
	ldx.d	$s2, $a0, $a1
	ld.w	$s3, $s2, 32
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB10_212
	.p2align	4, , 16
.LBB10_210:                             # %for.body.i.i336
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp380:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp381:                               # EH_LABEL
# %bb.211:                              # %call.i.i.noexc340
                                        #   in Loop: Header=BB10_210 Depth=3
	addi.w	$s3, $s3, -1
	bnez	$s3, .LBB10_210
.LBB10_212:                             # %_ZL11PrintSpacesi.exit.i326
                                        #   in Loop: Header=BB10_209 Depth=2
	ld.w	$a0, $s2, 36
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_208
# %bb.213:                              # %for.body8.i332.preheader
                                        #   in Loop: Header=BB10_209 Depth=2
	move	$s3, $zero
	.p2align	4, , 16
.LBB10_214:                             # %for.body8.i332
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp383:                               # EH_LABEL
	ori	$a1, $zero, 45
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp384:                               # EH_LABEL
# %bb.215:                              # %call9.i.noexc342
                                        #   in Loop: Header=BB10_214 Depth=3
	ld.w	$a0, $s2, 36
	addi.w	$s3, $s3, 1
	blt	$s3, $a0, .LBB10_214
	b	.LBB10_208
.LBB10_216:                             # %invoke.cont547
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp386:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp387:                               # EH_LABEL
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
# %bb.217:                              # %invoke.cont548
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp388:                               # EH_LABEL
	addi.d	$a0, $sp, 520
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $s4
	move	$a4, $s2
	pcaddu18i	$ra, %call36(_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_)
	jirl	$ra, $ra, 0
.Ltmp389:                               # EH_LABEL
# %bb.218:                              # %invoke.cont550
                                        #   in Loop: Header=BB10_5 Depth=1
.Ltmp390:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp391:                               # EH_LABEL
.LBB10_219:                             # %if.end554
                                        #   in Loop: Header=BB10_5 Depth=1
	beqz	$s2, .LBB10_221
# %bb.220:                              # %if.then556
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 512
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 512
	addi.d	$a0, $sp, 512
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
.LBB10_221:                             # %if.end558
                                        #   in Loop: Header=BB10_5 Depth=1
	beqz	$s4, .LBB10_223
# %bb.222:                              # %if.then560
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 504
	add.d	$a0, $a0, $s6
	st.d	$a0, $sp, 504
	addi.d	$a0, $sp, 504
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
.LBB10_223:                             # %if.end562
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$s6, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $s1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_224:                             # %cleanup583
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 408
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a1, $sp, 384
	beqz	$a0, .LBB10_226
.LBB10_225:                             # %delete.notnull.i.i347
                                        #   in Loop: Header=BB10_5 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_226:                             # %_ZN20COpenCallbackConsoleD2Ev.exit
                                        #   in Loop: Header=BB10_5 Depth=1
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN12CArchiveLinkD2Ev)
	jirl	$ra, $ra, 0
.LBB10_227:                             # %cleanup593
                                        #   in Loop: Header=BB10_5 Depth=1
	beqz	$s6, .LBB10_4
# %bb.228:                              # %cleanup593
                                        #   in Loop: Header=BB10_5 Depth=1
	ori	$a0, $zero, 4
	beq	$s6, $a0, .LBB10_4
	b	.LBB10_232
.LBB10_229:                             #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ori	$s6, $zero, 1
	ld.d	$a0, $sp, 408
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a1, $sp, 384
	bnez	$a0, .LBB10_225
	b	.LBB10_226
.LBB10_230:                             #   in Loop: Header=BB10_5 Depth=1
	ld.d	$s8, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	beqz	$s4, .LBB10_203
	b	.LBB10_205
.LBB10_231:
	move	$s0, $zero
	b	.LBB10_256
.LBB10_232:                             # %cleanup593
	ori	$a0, $zero, 2
	bne	$s6, $a0, .LBB10_255
.LBB10_233:                             # %for.end604
	move	$s0, $zero
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_254
# %bb.234:                              # %for.end604
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bnez	$a0, .LBB10_256
# %bb.235:                              # %for.end604
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB10_256
# %bb.236:                              # %if.then610
.Ltmp417:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$a0, $a0, %got_pc_lo12(g_StdOut)
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.237:                              # %invoke.cont611
	ld.w	$a0, $sp, 532
	ori	$fp, $zero, 1
	blt	$a0, $fp, .LBB10_247
# %bb.238:                              # %for.body.lr.ph.i356
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$s0, $a0, %got_pc_lo12(g_StdOut)
	move	$s1, $zero
	b	.LBB10_240
	.p2align	4, , 16
.LBB10_239:                             # %for.cond.cleanup7.i366
                                        #   in Loop: Header=BB10_240 Depth=1
	ld.w	$a0, $sp, 532
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB10_247
.LBB10_240:                             # %for.body.i358
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_241 Depth 2
                                        #     Child Loop BB10_245 Depth 2
	ld.d	$a0, $sp, 536
	slli.d	$a1, $s1, 3
	ldx.d	$s2, $a0, $a1
	ld.w	$s3, $s2, 32
	blt	$s3, $fp, .LBB10_243
	.p2align	4, , 16
.LBB10_241:                             # %for.body.i.i373
                                        #   Parent Loop BB10_240 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp419:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp420:                               # EH_LABEL
# %bb.242:                              # %call.i.i.noexc377
                                        #   in Loop: Header=BB10_241 Depth=2
	addi.w	$s3, $s3, -1
	bnez	$s3, .LBB10_241
.LBB10_243:                             # %_ZL11PrintSpacesi.exit.i363
                                        #   in Loop: Header=BB10_240 Depth=1
	ld.w	$a0, $s2, 36
	blt	$a0, $fp, .LBB10_239
# %bb.244:                              # %for.body8.i369.preheader
                                        #   in Loop: Header=BB10_240 Depth=1
	move	$s3, $zero
	.p2align	4, , 16
.LBB10_245:                             # %for.body8.i369
                                        #   Parent Loop BB10_240 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp422:                               # EH_LABEL
	ori	$a1, $zero, 45
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp423:                               # EH_LABEL
# %bb.246:                              # %call9.i.noexc379
                                        #   in Loop: Header=BB10_245 Depth=2
	ld.w	$a0, $s2, 36
	addi.w	$s3, $s3, 1
	blt	$s3, $a0, .LBB10_245
	b	.LBB10_239
.LBB10_247:                             # %invoke.cont613
.Ltmp425:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$a0, $a0, %got_pc_lo12(g_StdOut)
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp426:                               # EH_LABEL
# %bb.248:                              # %invoke.cont614
.Ltmp427:                               # EH_LABEL
	addi.d	$a0, $sp, 520
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_)
	jirl	$ra, $ra, 0
.Ltmp428:                               # EH_LABEL
# %bb.249:                              # %invoke.cont616
.Ltmp429:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$a0, $a0, %got_pc_lo12(g_StdOut)
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp430:                               # EH_LABEL
# %bb.250:                              # %invoke.cont618
.Ltmp431:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$a0, $a0, %got_pc_lo12(g_StdOut)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp432:                               # EH_LABEL
# %bb.251:                              # %invoke.cont620
.Ltmp433:                               # EH_LABEL
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEi)
	jirl	$ra, $ra, 0
.Ltmp434:                               # EH_LABEL
# %bb.252:                              # %invoke.cont622
.Ltmp435:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
# %bb.253:
	move	$s0, $zero
.LBB10_254:                             # %cleanup627
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	b	.LBB10_256
.LBB10_255:                             # %cleanup627.loopexit
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
.LBB10_256:                             # %cleanup627
	st.d	$fp, $sp, 520
.Ltmp438:                               # EH_LABEL
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp439:                               # EH_LABEL
# %bb.257:                              # %_ZN13CFieldPrinterD2Ev.exit
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s0, 0
	ld.d	$s8, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 616                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 632                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 640
	ret
.LBB10_258:                             # %lpad485
.Ltmp379:                               # EH_LABEL
	b	.LBB10_289
.LBB10_259:                             # %lpad477
.Ltmp372:                               # EH_LABEL
	b	.LBB10_289
.LBB10_260:                             # %lpad323
.Ltmp312:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB10_275
.LBB10_261:                             # %lpad529.loopexit.split-lp.loopexit.split-lp
.Ltmp392:                               # EH_LABEL
	b	.LBB10_325
.LBB10_262:                             # %lpad316
.Ltmp309:                               # EH_LABEL
	b	.LBB10_279
.LBB10_263:                             # %lpad
.Ltmp188:                               # EH_LABEL
	b	.LBB10_321
.LBB10_264:                             # %lpad466
.Ltmp367:                               # EH_LABEL
	b	.LBB10_289
.LBB10_265:                             # %lpad81
.Ltmp413:                               # EH_LABEL
	b	.LBB10_267
.LBB10_266:                             # %lpad.i
.Ltmp410:                               # EH_LABEL
.LBB10_267:                             # %lpad81
	ld.d	$a1, $sp, 368
	move	$fp, $a0
	beqz	$a1, .LBB10_326
# %bb.268:                              # %delete.notnull.i190
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_326
.LBB10_269:                             # %lpad79
.Ltmp407:                               # EH_LABEL
	b	.LBB10_325
.LBB10_270:                             # %terminate.lpad.i.i
.Ltmp440:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_271:                             # %lpad414
.Ltmp352:                               # EH_LABEL
	b	.LBB10_325
.LBB10_272:                             # %lpad428
.Ltmp355:                               # EH_LABEL
	b	.LBB10_325
.LBB10_273:                             # %lpad327
.Ltmp321:                               # EH_LABEL
	move	$fp, $a0
	beqz	$s6, .LBB10_275
# %bb.274:                              # %delete.notnull.i279
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_275:                             # %ehcleanup334
	ld.d	$a0, $sp, 336
	beqz	$a0, .LBB10_280
# %bb.276:                              # %delete.notnull.i282
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_280
.LBB10_277:                             # %terminate.lpad.i288
.Ltmp330:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_278:                             # %lpad305
.Ltmp306:                               # EH_LABEL
.LBB10_279:                             # %ehcleanup339
	move	$fp, $a0
.LBB10_280:                             # %ehcleanup339
.Ltmp322:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp323:                               # EH_LABEL
	b	.LBB10_295
.LBB10_281:                             # %lpad3.loopexit.split-lp.loopexit.split-lp
.Ltmp437:                               # EH_LABEL
	b	.LBB10_321
.LBB10_282:                             # %terminate.lpad.i293
.Ltmp324:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_283:                             # %lpad219
.Ltmp274:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB10_300
.LBB10_284:                             # %lpad261
.Ltmp300:                               # EH_LABEL
	b	.LBB10_325
.LBB10_285:                             # %lpad41
.Ltmp210:                               # EH_LABEL
	b	.LBB10_325
.LBB10_286:                             # %lpad168
.Ltmp262:                               # EH_LABEL
	b	.LBB10_325
.LBB10_287:                             # %lpad212
.Ltmp271:                               # EH_LABEL
	b	.LBB10_304
.LBB10_288:                             # %lpad450
.Ltmp364:                               # EH_LABEL
.LBB10_289:                             # %ehcleanup511
	move	$fp, $a0
	ld.d	$a0, $sp, 368
	beqz	$a0, .LBB10_326
# %bb.290:                              # %delete.notnull.i314
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_326
.LBB10_291:                             # %lpad448
.Ltmp361:                               # EH_LABEL
	b	.LBB10_325
.LBB10_292:                             # %lpad443
.Ltmp358:                               # EH_LABEL
	b	.LBB10_325
.LBB10_293:                             # %terminate.lpad.i290
.Ltmp333:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_294:                             # %lpad285
.Ltmp303:                               # EH_LABEL
	move	$fp, $a0
.LBB10_295:                             # %ehcleanup343
	ld.d	$a0, $sp, 360
.Ltmp325:                               # EH_LABEL
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
	b	.LBB10_326
.LBB10_296:                             # %terminate.lpad.i295
.Ltmp327:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_297:                             # %lpad10
.Ltmp191:                               # EH_LABEL
	b	.LBB10_321
.LBB10_298:                             # %lpad223
.Ltmp283:                               # EH_LABEL
	move	$fp, $a0
	beqz	$s5, .LBB10_300
# %bb.299:                              # %delete.notnull.i245
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_300:                             # %ehcleanup230
	ld.d	$a0, $sp, 336
	beqz	$a0, .LBB10_305
# %bb.301:                              # %delete.notnull.i248
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_305
.LBB10_302:                             # %terminate.lpad.i
.Ltmp292:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_303:                             # %lpad202
.Ltmp268:                               # EH_LABEL
.LBB10_304:                             # %ehcleanup235
	move	$fp, $a0
.LBB10_305:                             # %ehcleanup235
.Ltmp284:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
	b	.LBB10_311
.LBB10_306:                             # %lpad37
.Ltmp207:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB10_328
.LBB10_307:                             # %terminate.lpad.i256
.Ltmp286:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_308:                             # %lpad104.loopexit.split-lp
.Ltmp222:                               # EH_LABEL
	b	.LBB10_325
.LBB10_309:                             # %terminate.lpad.i254
.Ltmp295:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_310:                             # %lpad183
.Ltmp265:                               # EH_LABEL
	move	$fp, $a0
.LBB10_311:                             # %ehcleanup239
	ld.d	$a0, $sp, 360
.Ltmp287:                               # EH_LABEL
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp288:                               # EH_LABEL
	b	.LBB10_326
.LBB10_312:                             # %terminate.lpad.i258
.Ltmp289:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_313:                             # %lpad12
.Ltmp204:                               # EH_LABEL
	ld.d	$a1, $sp, 464
	move	$fp, $a0
	beqz	$a1, .LBB10_329
# %bb.314:                              # %delete.notnull.i.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZN13CFieldPrinterD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_315:                             # %lpad147
.Ltmp259:                               # EH_LABEL
	b	.LBB10_325
.LBB10_316:                             # %lpad45.loopexit.split-lp.loopexit.split-lp
.Ltmp416:                               # EH_LABEL
	b	.LBB10_325
.LBB10_317:                             # %lpad529.loopexit
.Ltmp385:                               # EH_LABEL
	b	.LBB10_325
.LBB10_318:                             # %lpad529.loopexit.split-lp.loopexit
.Ltmp382:                               # EH_LABEL
	b	.LBB10_325
.LBB10_319:                             # %lpad3.loopexit
.Ltmp424:                               # EH_LABEL
	b	.LBB10_321
.LBB10_320:                             # %lpad3.loopexit.split-lp.loopexit
.Ltmp421:                               # EH_LABEL
.LBB10_321:                             # %ehcleanup642
	move	$fp, $a0
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZN13CFieldPrinterD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_322:                             # %lpad45.loopexit
.Ltmp345:                               # EH_LABEL
	b	.LBB10_325
.LBB10_323:                             # %lpad45.loopexit.split-lp.loopexit
.Ltmp342:                               # EH_LABEL
	b	.LBB10_325
.LBB10_324:                             # %lpad104.loopexit
.Ltmp217:                               # EH_LABEL
.LBB10_325:                             # %ehcleanup586
	move	$fp, $a0
.LBB10_326:                             # %ehcleanup586
	ld.d	$a0, $sp, 408
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a1, $sp, 384
	beqz	$a0, .LBB10_328
# %bb.327:                              # %delete.notnull.i.i351
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_328:                             # %ehcleanup588
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN12CArchiveLinkD2Ev)
	jirl	$ra, $ra, 0
.LBB10_329:                             # %ehcleanup642
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZN13CFieldPrinterD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_Z12ListArchivesP7CCodecsRK13CRecordVectorIiEbR13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeEbbRbRS7_Ry, .Lfunc_end10-_Z12ListArchivesP7CCodecsRK13CRecordVectorIiEbR13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeEbbRbRS7_Ry
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp186-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin6         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin6         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp203-.Ltmp192              #   Call between .Ltmp192 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin6         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp205-.Ltmp203              #   Call between .Ltmp203 and .Ltmp205
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin6         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin6         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp211-.Ltmp209              #   Call between .Ltmp209 and .Ltmp211
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp416-.Lfunc_begin6         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp216-.Ltmp213              #   Call between .Ltmp213 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin6         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp221-.Ltmp218              #   Call between .Ltmp218 and .Ltmp221
	.uleb128 .Ltmp222-.Lfunc_begin6         #     jumps to .Ltmp222
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp404-.Ltmp393              #   Call between .Ltmp393 and .Ltmp404
	.uleb128 .Ltmp416-.Lfunc_begin6         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp405-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp406-.Ltmp405              #   Call between .Ltmp405 and .Ltmp406
	.uleb128 .Ltmp407-.Lfunc_begin6         #     jumps to .Ltmp407
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp408-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp409-.Ltmp408              #   Call between .Ltmp408 and .Ltmp409
	.uleb128 .Ltmp410-.Lfunc_begin6         #     jumps to .Ltmp410
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp411-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp412-.Ltmp411              #   Call between .Ltmp411 and .Ltmp412
	.uleb128 .Ltmp413-.Lfunc_begin6         #     jumps to .Ltmp413
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp412-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp414-.Ltmp412              #   Call between .Ltmp412 and .Ltmp414
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin6         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp258-.Ltmp233              #   Call between .Ltmp233 and .Ltmp258
	.uleb128 .Ltmp259-.Lfunc_begin6         #     jumps to .Ltmp259
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp261-.Ltmp260              #   Call between .Ltmp260 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin6         #     jumps to .Ltmp262
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp264-.Ltmp263              #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp265-.Lfunc_begin6         #     jumps to .Ltmp265
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp267-.Ltmp266              #   Call between .Ltmp266 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin6         #     jumps to .Ltmp268
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp271-.Lfunc_begin6         #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin6         #     jumps to .Ltmp274
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp282-.Ltmp275              #   Call between .Ltmp275 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin6         #     jumps to .Ltmp283
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp290-.Ltmp282              #   Call between .Ltmp282 and .Ltmp290
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin6         #     jumps to .Ltmp292
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp293-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin6         #     jumps to .Ltmp295
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp296-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp299-.Ltmp296              #   Call between .Ltmp296 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin6         #     jumps to .Ltmp300
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin6         #     jumps to .Ltmp303
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp306-.Lfunc_begin6         #     jumps to .Ltmp306
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp308-.Ltmp307              #   Call between .Ltmp307 and .Ltmp308
	.uleb128 .Ltmp309-.Lfunc_begin6         #     jumps to .Ltmp309
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp311-.Ltmp310              #   Call between .Ltmp310 and .Ltmp311
	.uleb128 .Ltmp312-.Lfunc_begin6         #     jumps to .Ltmp312
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp313-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp320-.Ltmp313              #   Call between .Ltmp313 and .Ltmp320
	.uleb128 .Ltmp321-.Lfunc_begin6         #     jumps to .Ltmp321
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp328-.Ltmp320              #   Call between .Ltmp320 and .Ltmp328
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp329-.Ltmp328              #   Call between .Ltmp328 and .Ltmp329
	.uleb128 .Ltmp330-.Lfunc_begin6         #     jumps to .Ltmp330
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp331-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp332-.Ltmp331              #   Call between .Ltmp331 and .Ltmp332
	.uleb128 .Ltmp333-.Lfunc_begin6         #     jumps to .Ltmp333
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp334-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Ltmp349-.Ltmp334              #   Call between .Ltmp334 and .Ltmp349
	.uleb128 .Ltmp416-.Lfunc_begin6         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin6         # >> Call Site 37 <<
	.uleb128 .Ltmp351-.Ltmp350              #   Call between .Ltmp350 and .Ltmp351
	.uleb128 .Ltmp352-.Lfunc_begin6         #     jumps to .Ltmp352
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin6         # >> Call Site 38 <<
	.uleb128 .Ltmp354-.Ltmp353              #   Call between .Ltmp353 and .Ltmp354
	.uleb128 .Ltmp355-.Lfunc_begin6         #     jumps to .Ltmp355
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp356-.Lfunc_begin6         # >> Call Site 39 <<
	.uleb128 .Ltmp357-.Ltmp356              #   Call between .Ltmp356 and .Ltmp357
	.uleb128 .Ltmp358-.Lfunc_begin6         #     jumps to .Ltmp358
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp359-.Lfunc_begin6         # >> Call Site 40 <<
	.uleb128 .Ltmp360-.Ltmp359              #   Call between .Ltmp359 and .Ltmp360
	.uleb128 .Ltmp361-.Lfunc_begin6         #     jumps to .Ltmp361
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp362-.Lfunc_begin6         # >> Call Site 41 <<
	.uleb128 .Ltmp363-.Ltmp362              #   Call between .Ltmp362 and .Ltmp363
	.uleb128 .Ltmp364-.Lfunc_begin6         #     jumps to .Ltmp364
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp365-.Lfunc_begin6         # >> Call Site 42 <<
	.uleb128 .Ltmp366-.Ltmp365              #   Call between .Ltmp365 and .Ltmp366
	.uleb128 .Ltmp367-.Lfunc_begin6         #     jumps to .Ltmp367
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp368-.Lfunc_begin6         # >> Call Site 43 <<
	.uleb128 .Ltmp371-.Ltmp368              #   Call between .Ltmp368 and .Ltmp371
	.uleb128 .Ltmp372-.Lfunc_begin6         #     jumps to .Ltmp372
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp373-.Lfunc_begin6         # >> Call Site 44 <<
	.uleb128 .Ltmp378-.Ltmp373              #   Call between .Ltmp373 and .Ltmp378
	.uleb128 .Ltmp379-.Lfunc_begin6         #     jumps to .Ltmp379
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp378-.Lfunc_begin6         # >> Call Site 45 <<
	.uleb128 .Ltmp336-.Ltmp378              #   Call between .Ltmp378 and .Ltmp336
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp336-.Lfunc_begin6         # >> Call Site 46 <<
	.uleb128 .Ltmp339-.Ltmp336              #   Call between .Ltmp336 and .Ltmp339
	.uleb128 .Ltmp416-.Lfunc_begin6         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp340-.Lfunc_begin6         # >> Call Site 47 <<
	.uleb128 .Ltmp341-.Ltmp340              #   Call between .Ltmp340 and .Ltmp341
	.uleb128 .Ltmp342-.Lfunc_begin6         #     jumps to .Ltmp342
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp343-.Lfunc_begin6         # >> Call Site 48 <<
	.uleb128 .Ltmp344-.Ltmp343              #   Call between .Ltmp343 and .Ltmp344
	.uleb128 .Ltmp345-.Lfunc_begin6         #     jumps to .Ltmp345
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin6         # >> Call Site 49 <<
	.uleb128 .Ltmp347-.Ltmp346              #   Call between .Ltmp346 and .Ltmp347
	.uleb128 .Ltmp416-.Lfunc_begin6         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp380-.Lfunc_begin6         # >> Call Site 50 <<
	.uleb128 .Ltmp381-.Ltmp380              #   Call between .Ltmp380 and .Ltmp381
	.uleb128 .Ltmp382-.Lfunc_begin6         #     jumps to .Ltmp382
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp383-.Lfunc_begin6         # >> Call Site 51 <<
	.uleb128 .Ltmp384-.Ltmp383              #   Call between .Ltmp383 and .Ltmp384
	.uleb128 .Ltmp385-.Lfunc_begin6         #     jumps to .Ltmp385
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp386-.Lfunc_begin6         # >> Call Site 52 <<
	.uleb128 .Ltmp391-.Ltmp386              #   Call between .Ltmp386 and .Ltmp391
	.uleb128 .Ltmp392-.Lfunc_begin6         #     jumps to .Ltmp392
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin6         # >> Call Site 53 <<
	.uleb128 .Ltmp417-.Ltmp391              #   Call between .Ltmp391 and .Ltmp417
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin6         # >> Call Site 54 <<
	.uleb128 .Ltmp418-.Ltmp417              #   Call between .Ltmp417 and .Ltmp418
	.uleb128 .Ltmp437-.Lfunc_begin6         #     jumps to .Ltmp437
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp419-.Lfunc_begin6         # >> Call Site 55 <<
	.uleb128 .Ltmp420-.Ltmp419              #   Call between .Ltmp419 and .Ltmp420
	.uleb128 .Ltmp421-.Lfunc_begin6         #     jumps to .Ltmp421
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin6         # >> Call Site 56 <<
	.uleb128 .Ltmp423-.Ltmp422              #   Call between .Ltmp422 and .Ltmp423
	.uleb128 .Ltmp424-.Lfunc_begin6         #     jumps to .Ltmp424
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp425-.Lfunc_begin6         # >> Call Site 57 <<
	.uleb128 .Ltmp436-.Ltmp425              #   Call between .Ltmp425 and .Ltmp436
	.uleb128 .Ltmp437-.Lfunc_begin6         #     jumps to .Ltmp437
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin6         # >> Call Site 58 <<
	.uleb128 .Ltmp439-.Ltmp438              #   Call between .Ltmp438 and .Ltmp439
	.uleb128 .Ltmp440-.Lfunc_begin6         #     jumps to .Ltmp440
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp439-.Lfunc_begin6         # >> Call Site 59 <<
	.uleb128 .Ltmp322-.Ltmp439              #   Call between .Ltmp439 and .Ltmp322
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp322-.Lfunc_begin6         # >> Call Site 60 <<
	.uleb128 .Ltmp323-.Ltmp322              #   Call between .Ltmp322 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin6         #     jumps to .Ltmp324
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp323-.Lfunc_begin6         # >> Call Site 61 <<
	.uleb128 .Ltmp325-.Ltmp323              #   Call between .Ltmp323 and .Ltmp325
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin6         # >> Call Site 62 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin6         #     jumps to .Ltmp327
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp326-.Lfunc_begin6         # >> Call Site 63 <<
	.uleb128 .Ltmp284-.Ltmp326              #   Call between .Ltmp326 and .Ltmp284
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin6         # >> Call Site 64 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin6         #     jumps to .Ltmp286
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp285-.Lfunc_begin6         # >> Call Site 65 <<
	.uleb128 .Ltmp287-.Ltmp285              #   Call between .Ltmp285 and .Ltmp287
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin6         # >> Call Site 66 <<
	.uleb128 .Ltmp288-.Ltmp287              #   Call between .Ltmp287 and .Ltmp288
	.uleb128 .Ltmp289-.Lfunc_begin6         #     jumps to .Ltmp289
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp288-.Lfunc_begin6         # >> Call Site 67 <<
	.uleb128 .Lfunc_end10-.Ltmp288          #   Call between .Ltmp288 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12CArchiveLinkD2Ev,"axG",@progbits,_ZN12CArchiveLinkD2Ev,comdat
	.weak	_ZN12CArchiveLinkD2Ev           # -- Begin function _ZN12CArchiveLinkD2Ev
	.p2align	2
	.type	_ZN12CArchiveLinkD2Ev,@function
_ZN12CArchiveLinkD2Ev:                  # @_ZN12CArchiveLinkD2Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
.Ltmp441:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink7ReleaseEv)
	jirl	$ra, $ra, 0
.Ltmp442:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	addi.d	$s0, $fp, 32
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 32
.Ltmp444:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp445:                               # EH_LABEL
# %bb.2:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $fp, 0
.Ltmp447:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp448:                               # EH_LABEL
# %bb.3:                                # %_ZN13CObjectVectorI4CArcED2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB11_4:                               # %terminate.lpad.i1
.Ltmp449:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_5:                               # %terminate.lpad.i
.Ltmp446:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_6:                               # %terminate.lpad
.Ltmp443:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN12CArchiveLinkD2Ev, .Lfunc_end11-_ZN12CArchiveLinkD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12CArchiveLinkD2Ev,"aG",@progbits,_ZN12CArchiveLinkD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table11:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp441-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp442-.Ltmp441              #   Call between .Ltmp441 and .Ltmp442
	.uleb128 .Ltmp443-.Lfunc_begin7         #     jumps to .Ltmp443
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp444-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.uleb128 .Ltmp446-.Lfunc_begin7         #     jumps to .Ltmp446
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp445-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp447-.Ltmp445              #   Call between .Ltmp445 and .Ltmp447
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp447-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp448-.Ltmp447              #   Call between .Ltmp447 and .Ltmp448
	.uleb128 .Ltmp449-.Lfunc_begin7         #     jumps to .Ltmp449
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp448-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Lfunc_end11-.Ltmp448          #   Call between .Ltmp448 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CFieldPrinterD2Ev,"axG",@progbits,_ZN13CFieldPrinterD2Ev,comdat
	.weak	_ZN13CFieldPrinterD2Ev          # -- Begin function _ZN13CFieldPrinterD2Ev
	.p2align	2
	.type	_ZN13CFieldPrinterD2Ev,@function
_ZN13CFieldPrinterD2Ev:                 # @_ZN13CFieldPrinterD2Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI10CFieldInfoE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI10CFieldInfoE+16)
	st.d	$a0, $fp, 0
.Ltmp450:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp451:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI10CFieldInfoED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB12_2:                               # %terminate.lpad.i
.Ltmp452:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN13CFieldPrinterD2Ev, .Lfunc_end12-_ZN13CFieldPrinterD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CFieldPrinterD2Ev,"aG",@progbits,_ZN13CFieldPrinterD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp450-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp451-.Ltmp450              #   Call between .Ltmp450 and .Ltmp451
	.uleb128 .Ltmp452-.Lfunc_begin8         #     jumps to .Ltmp452
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp451-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Lfunc_end12-.Ltmp451          #   Call between .Ltmp451 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	__clang_call_terminate, .Lfunc_end13-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN13CObjectVectorI10CFieldInfoED2Ev,"axG",@progbits,_ZN13CObjectVectorI10CFieldInfoED2Ev,comdat
	.weak	_ZN13CObjectVectorI10CFieldInfoED2Ev # -- Begin function _ZN13CObjectVectorI10CFieldInfoED2Ev
	.p2align	2
	.type	_ZN13CObjectVectorI10CFieldInfoED2Ev,@function
_ZN13CObjectVectorI10CFieldInfoED2Ev:   # @_ZN13CObjectVectorI10CFieldInfoED2Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI10CFieldInfoE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI10CFieldInfoE+16)
	st.d	$a0, $fp, 0
.Ltmp453:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp454:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB14_2:                               # %terminate.lpad
.Ltmp455:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN13CObjectVectorI10CFieldInfoED2Ev, .Lfunc_end14-_ZN13CObjectVectorI10CFieldInfoED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI10CFieldInfoED2Ev,"aG",@progbits,_ZN13CObjectVectorI10CFieldInfoED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp453-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp454-.Ltmp453              #   Call between .Ltmp453 and .Ltmp454
	.uleb128 .Ltmp455-.Lfunc_begin9         #     jumps to .Ltmp455
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp454-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end14-.Ltmp454          #   Call between .Ltmp454 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI10CFieldInfoED0Ev,"axG",@progbits,_ZN13CObjectVectorI10CFieldInfoED0Ev,comdat
	.weak	_ZN13CObjectVectorI10CFieldInfoED0Ev # -- Begin function _ZN13CObjectVectorI10CFieldInfoED0Ev
	.p2align	2
	.type	_ZN13CObjectVectorI10CFieldInfoED0Ev,@function
_ZN13CObjectVectorI10CFieldInfoED0Ev:   # @_ZN13CObjectVectorI10CFieldInfoED0Ev
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI10CFieldInfoE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI10CFieldInfoE+16)
	st.d	$a0, $fp, 0
.Ltmp456:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp457:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI10CFieldInfoED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB15_2:                               # %terminate.lpad.i
.Ltmp458:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN13CObjectVectorI10CFieldInfoED0Ev, .Lfunc_end15-_ZN13CObjectVectorI10CFieldInfoED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI10CFieldInfoED0Ev,"aG",@progbits,_ZN13CObjectVectorI10CFieldInfoED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp456-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.uleb128 .Ltmp458-.Lfunc_begin10        #     jumps to .Ltmp458
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp457-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Lfunc_end15-.Ltmp457          #   Call between .Ltmp457 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI10CFieldInfoE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI10CFieldInfoE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI10CFieldInfoE6DeleteEii # -- Begin function _ZN13CObjectVectorI10CFieldInfoE6DeleteEii
	.p2align	2
	.type	_ZN13CObjectVectorI10CFieldInfoE6DeleteEii,@function
_ZN13CObjectVectorI10CFieldInfoE6DeleteEii: # @_ZN13CObjectVectorI10CFieldInfoE6DeleteEii
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
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB16_7
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_2:                               # %_ZN10CFieldInfoD2Ev.exit
                                        #   in Loop: Header=BB16_4 Depth=1
	ori	$a1, $zero, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_3:                               # %for.inc
                                        #   in Loop: Header=BB16_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB16_7
.LBB16_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB16_3
# %bb.5:                                # %delete.notnull
                                        #   in Loop: Header=BB16_4 Depth=1
	ld.d	$a0, $s2, 8
	beqz	$a0, .LBB16_2
# %bb.6:                                # %delete.notnull.i.i
                                        #   in Loop: Header=BB16_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB16_2
.LBB16_7:                               # %for.cond.cleanup
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end16:
	.size	_ZN13CObjectVectorI10CFieldInfoE6DeleteEii, .Lfunc_end16-_ZN13CObjectVectorI10CFieldInfoE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorI4CArcED2Ev,"axG",@progbits,_ZN13CObjectVectorI4CArcED2Ev,comdat
	.weak	_ZN13CObjectVectorI4CArcED2Ev   # -- Begin function _ZN13CObjectVectorI4CArcED2Ev
	.p2align	2
	.type	_ZN13CObjectVectorI4CArcED2Ev,@function
_ZN13CObjectVectorI4CArcED2Ev:          # @_ZN13CObjectVectorI4CArcED2Ev
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $fp, 0
.Ltmp459:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp460:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB17_2:                               # %terminate.lpad
.Ltmp461:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN13CObjectVectorI4CArcED2Ev, .Lfunc_end17-_ZN13CObjectVectorI4CArcED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcED2Ev,"aG",@progbits,_ZN13CObjectVectorI4CArcED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table17:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp459-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp461-.Lfunc_begin11        #     jumps to .Ltmp461
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp460-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Lfunc_end17-.Ltmp460          #   Call between .Ltmp460 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI4CArcED0Ev,"axG",@progbits,_ZN13CObjectVectorI4CArcED0Ev,comdat
	.weak	_ZN13CObjectVectorI4CArcED0Ev   # -- Begin function _ZN13CObjectVectorI4CArcED0Ev
	.p2align	2
	.type	_ZN13CObjectVectorI4CArcED0Ev,@function
_ZN13CObjectVectorI4CArcED0Ev:          # @_ZN13CObjectVectorI4CArcED0Ev
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $fp, 0
.Ltmp462:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp463:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI4CArcED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB18_2:                               # %terminate.lpad.i
.Ltmp464:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN13CObjectVectorI4CArcED0Ev, .Lfunc_end18-_ZN13CObjectVectorI4CArcED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcED0Ev,"aG",@progbits,_ZN13CObjectVectorI4CArcED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table18:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp462-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp463-.Ltmp462              #   Call between .Ltmp462 and .Ltmp463
	.uleb128 .Ltmp464-.Lfunc_begin12        #     jumps to .Ltmp464
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp463-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Lfunc_end18-.Ltmp463          #   Call between .Ltmp463 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI4CArcE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI4CArcE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI4CArcE6DeleteEii # -- Begin function _ZN13CObjectVectorI4CArcE6DeleteEii
	.p2align	2
	.type	_ZN13CObjectVectorI4CArcE6DeleteEii,@function
_ZN13CObjectVectorI4CArcE6DeleteEii:    # @_ZN13CObjectVectorI4CArcE6DeleteEii
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
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
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB19_13
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB19_4
	.p2align	4, , 16
.LBB19_2:                               # %_ZN4CArcD2Ev.exit
                                        #   in Loop: Header=BB19_4 Depth=1
	ori	$a1, $zero, 80
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_3:                               # %for.inc
                                        #   in Loop: Header=BB19_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB19_13
.LBB19_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB19_3
# %bb.5:                                # %delete.notnull
                                        #   in Loop: Header=BB19_4 Depth=1
	ld.d	$a0, $s2, 64
	beqz	$a0, .LBB19_7
# %bb.6:                                # %delete.notnull.i.i
                                        #   in Loop: Header=BB19_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB19_7:                               # %_ZN11CStringBaseIwED2Ev.exit.i
                                        #   in Loop: Header=BB19_4 Depth=1
	ld.d	$a0, $s2, 24
	beqz	$a0, .LBB19_9
# %bb.8:                                # %delete.notnull.i2.i
                                        #   in Loop: Header=BB19_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB19_9:                               # %_ZN11CStringBaseIwED2Ev.exit3.i
                                        #   in Loop: Header=BB19_4 Depth=1
	ld.d	$a0, $s2, 8
	beqz	$a0, .LBB19_11
# %bb.10:                               # %delete.notnull.i5.i
                                        #   in Loop: Header=BB19_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB19_11:                              # %_ZN11CStringBaseIwED2Ev.exit6.i
                                        #   in Loop: Header=BB19_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB19_2
# %bb.12:                               # %if.then.i.i
                                        #   in Loop: Header=BB19_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp465:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp466:                               # EH_LABEL
	b	.LBB19_2
.LBB19_13:                              # %for.cond.cleanup
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB19_14:                              # %terminate.lpad.i.i
.Ltmp467:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN13CObjectVectorI4CArcE6DeleteEii, .Lfunc_end19-_ZN13CObjectVectorI4CArcE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI4CArcE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp465-.Lfunc_begin13        #   Call between .Lfunc_begin13 and .Ltmp465
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp467-.Lfunc_begin13        #     jumps to .Ltmp467
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp466-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Lfunc_end19-.Ltmp466          #   Call between .Ltmp466 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEED2Ev,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED2Ev,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEED2Ev # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.p2align	2
	.type	_ZN13CObjectVectorI11CStringBaseIwEED2Ev,@function
_ZN13CObjectVectorI11CStringBaseIwEED2Ev: # @_ZN13CObjectVectorI11CStringBaseIwEED2Ev
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp468:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp469:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB20_2:                               # %terminate.lpad
.Ltmp470:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN13CObjectVectorI11CStringBaseIwEED2Ev, .Lfunc_end20-_ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CStringBaseIwEED2Ev,"aG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp468-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp469-.Ltmp468              #   Call between .Ltmp468 and .Ltmp469
	.uleb128 .Ltmp470-.Lfunc_begin14        #     jumps to .Ltmp470
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp469-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Lfunc_end20-.Ltmp469          #   Call between .Ltmp469 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEED0Ev,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED0Ev,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEED0Ev # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.p2align	2
	.type	_ZN13CObjectVectorI11CStringBaseIwEED0Ev,@function
_ZN13CObjectVectorI11CStringBaseIwEED0Ev: # @_ZN13CObjectVectorI11CStringBaseIwEED0Ev
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp471:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp472:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB21_2:                               # %terminate.lpad.i
.Ltmp473:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN13CObjectVectorI11CStringBaseIwEED0Ev, .Lfunc_end21-_ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CStringBaseIwEED0Ev,"aG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp471-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp472-.Ltmp471              #   Call between .Ltmp471 and .Ltmp472
	.uleb128 .Ltmp473-.Lfunc_begin15        #     jumps to .Ltmp473
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp472-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Lfunc_end21-.Ltmp472          #   Call between .Ltmp472 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.p2align	2
	.type	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,@function
_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii: # @_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
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
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB22_7
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB22_4
	.p2align	4, , 16
.LBB22_2:                               # %_ZN11CStringBaseIwED2Ev.exit
                                        #   in Loop: Header=BB22_4 Depth=1
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_3:                               # %for.inc
                                        #   in Loop: Header=BB22_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB22_7
.LBB22_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB22_3
# %bb.5:                                # %delete.notnull
                                        #   in Loop: Header=BB22_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB22_2
# %bb.6:                                # %delete.notnull.i
                                        #   in Loop: Header=BB22_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB22_2
.LBB22_7:                               # %for.cond.cleanup
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end22:
	.size	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii, .Lfunc_end22-_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" = "
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.1:
	.word	32                              # 0x20
	.word	0                               # 0x0
	.size	.L.str.1, 8

	.type	.L.str.2,@object                # @.str.2
	.p2align	2, 0x0
.L.str.2:
	.word	44                              # 0x2c
	.word	32                              # 0x20
	.word	0                               # 0x0
	.size	.L.str.2, 12

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"GetPropertyValue error"
	.size	.L.str.4, 23

	.type	_ZL19kStandardFieldTable,@object # @_ZL19kStandardFieldTable
	.data
	.p2align	3, 0x0
_ZL19kStandardFieldTable:
	.word	12                              # 0xc
	.space	4
	.dword	.L.str.75
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	19                              # 0x13
	.word	9                               # 0x9
	.space	4
	.dword	.L.str.76
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	7                               # 0x7
	.space	4
	.dword	.L.str.20
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	12                              # 0xc
	.word	8                               # 0x8
	.space	4
	.dword	.L.str.77
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	12                              # 0xc
	.word	3                               # 0x3
	.space	4
	.dword	.L.str.18
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	24                              # 0x18
	.size	_ZL19kStandardFieldTable, 160

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Error: "
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" is not file"
	.size	.L.str.6, 13

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	": "
	.size	.L.str.7, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Can not open encrypted archive. Wrong password?"
	.size	.L.str.8, 48

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Can not open file as archive"
	.size	.L.str.9, 29

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Can't allocate required memory"
	.size	.L.str.10, 31

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"--\n"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.12:
	.word	80                              # 0x50
	.word	97                              # 0x61
	.word	116                             # 0x74
	.word	104                             # 0x68
	.word	0                               # 0x0
	.size	.L.str.12, 20

	.type	.L.str.13,@object               # @.str.13
	.p2align	2, 0x0
.L.str.13:
	.word	84                              # 0x54
	.word	121                             # 0x79
	.word	112                             # 0x70
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.13, 20

	.type	.L.str.14,@object               # @.str.14
	.p2align	2, 0x0
.L.str.14:
	.word	69                              # 0x45
	.word	114                             # 0x72
	.word	114                             # 0x72
	.word	111                             # 0x6f
	.word	114                             # 0x72
	.word	0                               # 0x0
	.size	.L.str.14, 24

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"----\n"
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"----------\n"
	.size	.L.str.16, 12

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Archives: "
	.size	.L.str.17, 11

	.type	_ZL13kPropIdToName,@object      # @_ZL13kPropIdToName
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZL13kPropIdToName:
	.word	3                               # 0x3
	.space	4
	.dword	.L.str.12
	.word	4                               # 0x4
	.space	4
	.dword	.L.str.18
	.word	6                               # 0x6
	.space	4
	.dword	.L.str.19
	.word	7                               # 0x7
	.space	4
	.dword	.L.str.20
	.word	8                               # 0x8
	.space	4
	.dword	.L.str.21
	.word	9                               # 0x9
	.space	4
	.dword	.L.str.22
	.word	10                              # 0xa
	.space	4
	.dword	.L.str.23
	.word	11                              # 0xb
	.space	4
	.dword	.L.str.24
	.word	12                              # 0xc
	.space	4
	.dword	.L.str.25
	.word	13                              # 0xd
	.space	4
	.dword	.L.str.26
	.word	14                              # 0xe
	.space	4
	.dword	.L.str.27
	.word	15                              # 0xf
	.space	4
	.dword	.L.str.28
	.word	16                              # 0x10
	.space	4
	.dword	.L.str.29
	.word	17                              # 0x11
	.space	4
	.dword	.L.str.30
	.word	18                              # 0x12
	.space	4
	.dword	.L.str.31
	.word	19                              # 0x13
	.space	4
	.dword	.L.str.32
	.word	20                              # 0x14
	.space	4
	.dword	.L.str.13
	.word	21                              # 0x15
	.space	4
	.dword	.L.str.33
	.word	22                              # 0x16
	.space	4
	.dword	.L.str.34
	.word	23                              # 0x17
	.space	4
	.dword	.L.str.35
	.word	24                              # 0x18
	.space	4
	.dword	.L.str.36
	.word	25                              # 0x19
	.space	4
	.dword	.L.str.37
	.word	26                              # 0x1a
	.space	4
	.dword	.L.str.38
	.word	27                              # 0x1b
	.space	4
	.dword	.L.str.39
	.word	28                              # 0x1c
	.space	4
	.dword	.L.str.40
	.word	29                              # 0x1d
	.space	4
	.dword	.L.str.41
	.word	30                              # 0x1e
	.space	4
	.dword	.L.str.42
	.word	31                              # 0x1f
	.space	4
	.dword	.L.str.43
	.word	32                              # 0x20
	.space	4
	.dword	.L.str.44
	.word	33                              # 0x21
	.space	4
	.dword	.L.str.45
	.word	34                              # 0x22
	.space	4
	.dword	.L.str.46
	.word	35                              # 0x23
	.space	4
	.dword	.L.str.47
	.word	36                              # 0x24
	.space	4
	.dword	.L.str.48
	.word	37                              # 0x25
	.space	4
	.dword	.L.str.49
	.word	38                              # 0x26
	.space	4
	.dword	.L.str.50
	.word	39                              # 0x27
	.space	4
	.dword	.L.str.51
	.word	41                              # 0x29
	.space	4
	.dword	.L.str.52
	.word	42                              # 0x2a
	.space	4
	.dword	.L.str.53
	.word	43                              # 0x2b
	.space	4
	.dword	.L.str.54
	.word	44                              # 0x2c
	.space	4
	.dword	.L.str.55
	.word	45                              # 0x2d
	.space	4
	.dword	.L.str.56
	.word	46                              # 0x2e
	.space	4
	.dword	.L.str.57
	.word	47                              # 0x2f
	.space	4
	.dword	.L.str.58
	.word	48                              # 0x30
	.space	4
	.dword	.L.str.59
	.word	49                              # 0x31
	.space	4
	.dword	.L.str.60
	.word	50                              # 0x32
	.space	4
	.dword	.L.str.61
	.word	51                              # 0x33
	.space	4
	.dword	.L.str.62
	.word	52                              # 0x34
	.space	4
	.dword	.L.str.63
	.word	53                              # 0x35
	.space	4
	.dword	.L.str.64
	.word	54                              # 0x36
	.space	4
	.dword	.L.str.65
	.word	55                              # 0x37
	.space	4
	.dword	.L.str.14
	.word	4352                            # 0x1100
	.space	4
	.dword	.L.str.66
	.word	4353                            # 0x1101
	.space	4
	.dword	.L.str.67
	.word	4354                            # 0x1102
	.space	4
	.dword	.L.str.68
	.word	4355                            # 0x1103
	.space	4
	.dword	.L.str.69
	.size	_ZL13kPropIdToName, 880

	.type	.L.str.18,@object               # @.str.18
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.18:
	.word	78                              # 0x4e
	.word	97                              # 0x61
	.word	109                             # 0x6d
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.18, 20

	.type	.L.str.19,@object               # @.str.19
	.p2align	2, 0x0
.L.str.19:
	.word	70                              # 0x46
	.word	111                             # 0x6f
	.word	108                             # 0x6c
	.word	100                             # 0x64
	.word	101                             # 0x65
	.word	114                             # 0x72
	.word	0                               # 0x0
	.size	.L.str.19, 28

	.type	.L.str.20,@object               # @.str.20
	.p2align	2, 0x0
.L.str.20:
	.word	83                              # 0x53
	.word	105                             # 0x69
	.word	122                             # 0x7a
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.20, 20

	.type	.L.str.21,@object               # @.str.21
	.p2align	2, 0x0
.L.str.21:
	.word	80                              # 0x50
	.word	97                              # 0x61
	.word	99                              # 0x63
	.word	107                             # 0x6b
	.word	101                             # 0x65
	.word	100                             # 0x64
	.word	32                              # 0x20
	.word	83                              # 0x53
	.word	105                             # 0x69
	.word	122                             # 0x7a
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.21, 48

	.type	.L.str.22,@object               # @.str.22
	.p2align	2, 0x0
.L.str.22:
	.word	65                              # 0x41
	.word	116                             # 0x74
	.word	116                             # 0x74
	.word	114                             # 0x72
	.word	105                             # 0x69
	.word	98                              # 0x62
	.word	117                             # 0x75
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	115                             # 0x73
	.word	0                               # 0x0
	.size	.L.str.22, 44

	.type	.L.str.23,@object               # @.str.23
	.p2align	2, 0x0
.L.str.23:
	.word	67                              # 0x43
	.word	114                             # 0x72
	.word	101                             # 0x65
	.word	97                              # 0x61
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	100                             # 0x64
	.word	0                               # 0x0
	.size	.L.str.23, 32

	.type	.L.str.24,@object               # @.str.24
	.p2align	2, 0x0
.L.str.24:
	.word	65                              # 0x41
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	101                             # 0x65
	.word	115                             # 0x73
	.word	115                             # 0x73
	.word	101                             # 0x65
	.word	100                             # 0x64
	.word	0                               # 0x0
	.size	.L.str.24, 36

	.type	.L.str.25,@object               # @.str.25
	.p2align	2, 0x0
.L.str.25:
	.word	77                              # 0x4d
	.word	111                             # 0x6f
	.word	100                             # 0x64
	.word	105                             # 0x69
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	101                             # 0x65
	.word	100                             # 0x64
	.word	0                               # 0x0
	.size	.L.str.25, 36

	.type	.L.str.26,@object               # @.str.26
	.p2align	2, 0x0
.L.str.26:
	.word	83                              # 0x53
	.word	111                             # 0x6f
	.word	108                             # 0x6c
	.word	105                             # 0x69
	.word	100                             # 0x64
	.word	0                               # 0x0
	.size	.L.str.26, 24

	.type	.L.str.27,@object               # @.str.27
	.p2align	2, 0x0
.L.str.27:
	.word	67                              # 0x43
	.word	111                             # 0x6f
	.word	109                             # 0x6d
	.word	109                             # 0x6d
	.word	101                             # 0x65
	.word	110                             # 0x6e
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	100                             # 0x64
	.word	0                               # 0x0
	.size	.L.str.27, 40

	.type	.L.str.28,@object               # @.str.28
	.p2align	2, 0x0
.L.str.28:
	.word	69                              # 0x45
	.word	110                             # 0x6e
	.word	99                              # 0x63
	.word	114                             # 0x72
	.word	121                             # 0x79
	.word	112                             # 0x70
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	100                             # 0x64
	.word	0                               # 0x0
	.size	.L.str.28, 40

	.type	.L.str.29,@object               # @.str.29
	.p2align	2, 0x0
.L.str.29:
	.word	83                              # 0x53
	.word	112                             # 0x70
	.word	108                             # 0x6c
	.word	105                             # 0x69
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	66                              # 0x42
	.word	101                             # 0x65
	.word	102                             # 0x66
	.word	111                             # 0x6f
	.word	114                             # 0x72
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.29, 52

	.type	.L.str.30,@object               # @.str.30
	.p2align	2, 0x0
.L.str.30:
	.word	83                              # 0x53
	.word	112                             # 0x70
	.word	108                             # 0x6c
	.word	105                             # 0x69
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	65                              # 0x41
	.word	102                             # 0x66
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	114                             # 0x72
	.word	0                               # 0x0
	.size	.L.str.30, 48

	.type	.L.str.31,@object               # @.str.31
	.p2align	2, 0x0
.L.str.31:
	.word	68                              # 0x44
	.word	105                             # 0x69
	.word	99                              # 0x63
	.word	116                             # 0x74
	.word	105                             # 0x69
	.word	111                             # 0x6f
	.word	110                             # 0x6e
	.word	97                              # 0x61
	.word	114                             # 0x72
	.word	121                             # 0x79
	.word	32                              # 0x20
	.word	83                              # 0x53
	.word	105                             # 0x69
	.word	122                             # 0x7a
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.31, 64

	.type	.L.str.32,@object               # @.str.32
	.p2align	2, 0x0
.L.str.32:
	.word	67                              # 0x43
	.word	82                              # 0x52
	.word	67                              # 0x43
	.word	0                               # 0x0
	.size	.L.str.32, 16

	.type	.L.str.33,@object               # @.str.33
	.p2align	2, 0x0
.L.str.33:
	.word	65                              # 0x41
	.word	110                             # 0x6e
	.word	116                             # 0x74
	.word	105                             # 0x69
	.word	0                               # 0x0
	.size	.L.str.33, 20

	.type	.L.str.34,@object               # @.str.34
	.p2align	2, 0x0
.L.str.34:
	.word	77                              # 0x4d
	.word	101                             # 0x65
	.word	116                             # 0x74
	.word	104                             # 0x68
	.word	111                             # 0x6f
	.word	100                             # 0x64
	.word	0                               # 0x0
	.size	.L.str.34, 28

	.type	.L.str.35,@object               # @.str.35
	.p2align	2, 0x0
.L.str.35:
	.word	72                              # 0x48
	.word	111                             # 0x6f
	.word	115                             # 0x73
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	79                              # 0x4f
	.word	83                              # 0x53
	.word	0                               # 0x0
	.size	.L.str.35, 32

	.type	.L.str.36,@object               # @.str.36
	.p2align	2, 0x0
.L.str.36:
	.word	70                              # 0x46
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	83                              # 0x53
	.word	121                             # 0x79
	.word	115                             # 0x73
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	109                             # 0x6d
	.word	0                               # 0x0
	.size	.L.str.36, 48

	.type	.L.str.37,@object               # @.str.37
	.p2align	2, 0x0
.L.str.37:
	.word	85                              # 0x55
	.word	115                             # 0x73
	.word	101                             # 0x65
	.word	114                             # 0x72
	.word	0                               # 0x0
	.size	.L.str.37, 20

	.type	.L.str.38,@object               # @.str.38
	.p2align	2, 0x0
.L.str.38:
	.word	71                              # 0x47
	.word	114                             # 0x72
	.word	111                             # 0x6f
	.word	117                             # 0x75
	.word	112                             # 0x70
	.word	0                               # 0x0
	.size	.L.str.38, 24

	.type	.L.str.39,@object               # @.str.39
	.p2align	2, 0x0
.L.str.39:
	.word	66                              # 0x42
	.word	108                             # 0x6c
	.word	111                             # 0x6f
	.word	99                              # 0x63
	.word	107                             # 0x6b
	.word	0                               # 0x0
	.size	.L.str.39, 24

	.type	.L.str.40,@object               # @.str.40
	.p2align	2, 0x0
.L.str.40:
	.word	67                              # 0x43
	.word	111                             # 0x6f
	.word	109                             # 0x6d
	.word	109                             # 0x6d
	.word	101                             # 0x65
	.word	110                             # 0x6e
	.word	116                             # 0x74
	.word	0                               # 0x0
	.size	.L.str.40, 32

	.type	.L.str.41,@object               # @.str.41
	.p2align	2, 0x0
.L.str.41:
	.word	80                              # 0x50
	.word	111                             # 0x6f
	.word	115                             # 0x73
	.word	105                             # 0x69
	.word	116                             # 0x74
	.word	105                             # 0x69
	.word	111                             # 0x6f
	.word	110                             # 0x6e
	.word	0                               # 0x0
	.size	.L.str.41, 36

	.type	.L.str.42,@object               # @.str.42
	.p2align	2, 0x0
.L.str.42:
	.word	80                              # 0x50
	.word	114                             # 0x72
	.word	101                             # 0x65
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	120                             # 0x78
	.word	0                               # 0x0
	.size	.L.str.42, 28

	.type	.L.str.43,@object               # @.str.43
	.p2align	2, 0x0
.L.str.43:
	.word	70                              # 0x46
	.word	111                             # 0x6f
	.word	108                             # 0x6c
	.word	100                             # 0x64
	.word	101                             # 0x65
	.word	114                             # 0x72
	.word	115                             # 0x73
	.word	0                               # 0x0
	.size	.L.str.43, 32

	.type	.L.str.44,@object               # @.str.44
	.p2align	2, 0x0
.L.str.44:
	.word	70                              # 0x46
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	115                             # 0x73
	.word	0                               # 0x0
	.size	.L.str.44, 24

	.type	.L.str.45,@object               # @.str.45
	.p2align	2, 0x0
.L.str.45:
	.word	86                              # 0x56
	.word	101                             # 0x65
	.word	114                             # 0x72
	.word	115                             # 0x73
	.word	105                             # 0x69
	.word	111                             # 0x6f
	.word	110                             # 0x6e
	.word	0                               # 0x0
	.size	.L.str.45, 32

	.type	.L.str.46,@object               # @.str.46
	.p2align	2, 0x0
.L.str.46:
	.word	86                              # 0x56
	.word	111                             # 0x6f
	.word	108                             # 0x6c
	.word	117                             # 0x75
	.word	109                             # 0x6d
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.46, 28

	.type	.L.str.47,@object               # @.str.47
	.p2align	2, 0x0
.L.str.47:
	.word	77                              # 0x4d
	.word	117                             # 0x75
	.word	108                             # 0x6c
	.word	116                             # 0x74
	.word	105                             # 0x69
	.word	118                             # 0x76
	.word	111                             # 0x6f
	.word	108                             # 0x6c
	.word	117                             # 0x75
	.word	109                             # 0x6d
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.47, 48

	.type	.L.str.48,@object               # @.str.48
	.p2align	2, 0x0
.L.str.48:
	.word	79                              # 0x4f
	.word	102                             # 0x66
	.word	102                             # 0x66
	.word	115                             # 0x73
	.word	101                             # 0x65
	.word	116                             # 0x74
	.word	0                               # 0x0
	.size	.L.str.48, 28

	.type	.L.str.49,@object               # @.str.49
	.p2align	2, 0x0
.L.str.49:
	.word	76                              # 0x4c
	.word	105                             # 0x69
	.word	110                             # 0x6e
	.word	107                             # 0x6b
	.word	115                             # 0x73
	.word	0                               # 0x0
	.size	.L.str.49, 24

	.type	.L.str.50,@object               # @.str.50
	.p2align	2, 0x0
.L.str.50:
	.word	66                              # 0x42
	.word	108                             # 0x6c
	.word	111                             # 0x6f
	.word	99                              # 0x63
	.word	107                             # 0x6b
	.word	115                             # 0x73
	.word	0                               # 0x0
	.size	.L.str.50, 28

	.type	.L.str.51,@object               # @.str.51
	.p2align	2, 0x0
.L.str.51:
	.word	86                              # 0x56
	.word	111                             # 0x6f
	.word	108                             # 0x6c
	.word	117                             # 0x75
	.word	109                             # 0x6d
	.word	101                             # 0x65
	.word	115                             # 0x73
	.word	0                               # 0x0
	.size	.L.str.51, 32

	.type	.L.str.52,@object               # @.str.52
	.p2align	2, 0x0
.L.str.52:
	.word	54                              # 0x36
	.word	52                              # 0x34
	.word	45                              # 0x2d
	.word	98                              # 0x62
	.word	105                             # 0x69
	.word	116                             # 0x74
	.word	0                               # 0x0
	.size	.L.str.52, 28

	.type	.L.str.53,@object               # @.str.53
	.p2align	2, 0x0
.L.str.53:
	.word	66                              # 0x42
	.word	105                             # 0x69
	.word	103                             # 0x67
	.word	45                              # 0x2d
	.word	101                             # 0x65
	.word	110                             # 0x6e
	.word	100                             # 0x64
	.word	105                             # 0x69
	.word	97                              # 0x61
	.word	110                             # 0x6e
	.word	0                               # 0x0
	.size	.L.str.53, 44

	.type	.L.str.54,@object               # @.str.54
	.p2align	2, 0x0
.L.str.54:
	.word	67                              # 0x43
	.word	80                              # 0x50
	.word	85                              # 0x55
	.word	0                               # 0x0
	.size	.L.str.54, 16

	.type	.L.str.55,@object               # @.str.55
	.p2align	2, 0x0
.L.str.55:
	.word	80                              # 0x50
	.word	104                             # 0x68
	.word	121                             # 0x79
	.word	115                             # 0x73
	.word	105                             # 0x69
	.word	99                              # 0x63
	.word	97                              # 0x61
	.word	108                             # 0x6c
	.word	32                              # 0x20
	.word	83                              # 0x53
	.word	105                             # 0x69
	.word	122                             # 0x7a
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.55, 56

	.type	.L.str.56,@object               # @.str.56
	.p2align	2, 0x0
.L.str.56:
	.word	72                              # 0x48
	.word	101                             # 0x65
	.word	97                              # 0x61
	.word	100                             # 0x64
	.word	101                             # 0x65
	.word	114                             # 0x72
	.word	115                             # 0x73
	.word	32                              # 0x20
	.word	83                              # 0x53
	.word	105                             # 0x69
	.word	122                             # 0x7a
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.56, 52

	.type	.L.str.57,@object               # @.str.57
	.p2align	2, 0x0
.L.str.57:
	.word	67                              # 0x43
	.word	104                             # 0x68
	.word	101                             # 0x65
	.word	99                              # 0x63
	.word	107                             # 0x6b
	.word	115                             # 0x73
	.word	117                             # 0x75
	.word	109                             # 0x6d
	.word	0                               # 0x0
	.size	.L.str.57, 36

	.type	.L.str.58,@object               # @.str.58
	.p2align	2, 0x0
.L.str.58:
	.word	67                              # 0x43
	.word	104                             # 0x68
	.word	97                              # 0x61
	.word	114                             # 0x72
	.word	97                              # 0x61
	.word	99                              # 0x63
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	114                             # 0x72
	.word	105                             # 0x69
	.word	115                             # 0x73
	.word	116                             # 0x74
	.word	105                             # 0x69
	.word	99                              # 0x63
	.word	115                             # 0x73
	.word	0                               # 0x0
	.size	.L.str.58, 64

	.type	.L.str.59,@object               # @.str.59
	.p2align	2, 0x0
.L.str.59:
	.word	86                              # 0x56
	.word	105                             # 0x69
	.word	114                             # 0x72
	.word	116                             # 0x74
	.word	117                             # 0x75
	.word	97                              # 0x61
	.word	108                             # 0x6c
	.word	32                              # 0x20
	.word	65                              # 0x41
	.word	100                             # 0x64
	.word	100                             # 0x64
	.word	114                             # 0x72
	.word	101                             # 0x65
	.word	115                             # 0x73
	.word	115                             # 0x73
	.word	0                               # 0x0
	.size	.L.str.59, 64

	.type	.L.str.60,@object               # @.str.60
	.p2align	2, 0x0
.L.str.60:
	.word	73                              # 0x49
	.word	68                              # 0x44
	.word	0                               # 0x0
	.size	.L.str.60, 12

	.type	.L.str.61,@object               # @.str.61
	.p2align	2, 0x0
.L.str.61:
	.word	83                              # 0x53
	.word	104                             # 0x68
	.word	111                             # 0x6f
	.word	114                             # 0x72
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	78                              # 0x4e
	.word	97                              # 0x61
	.word	109                             # 0x6d
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.61, 44

	.type	.L.str.62,@object               # @.str.62
	.p2align	2, 0x0
.L.str.62:
	.word	67                              # 0x43
	.word	114                             # 0x72
	.word	101                             # 0x65
	.word	97                              # 0x61
	.word	116                             # 0x74
	.word	111                             # 0x6f
	.word	114                             # 0x72
	.word	32                              # 0x20
	.word	65                              # 0x41
	.word	112                             # 0x70
	.word	112                             # 0x70
	.word	108                             # 0x6c
	.word	105                             # 0x69
	.word	99                              # 0x63
	.word	97                              # 0x61
	.word	116                             # 0x74
	.word	105                             # 0x69
	.word	111                             # 0x6f
	.word	110                             # 0x6e
	.word	0                               # 0x0
	.size	.L.str.62, 80

	.type	.L.str.63,@object               # @.str.63
	.p2align	2, 0x0
.L.str.63:
	.word	83                              # 0x53
	.word	101                             # 0x65
	.word	99                              # 0x63
	.word	116                             # 0x74
	.word	111                             # 0x6f
	.word	114                             # 0x72
	.word	32                              # 0x20
	.word	83                              # 0x53
	.word	105                             # 0x69
	.word	122                             # 0x7a
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.63, 48

	.type	.L.str.64,@object               # @.str.64
	.p2align	2, 0x0
.L.str.64:
	.word	77                              # 0x4d
	.word	111                             # 0x6f
	.word	100                             # 0x64
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.64, 20

	.type	.L.str.65,@object               # @.str.65
	.p2align	2, 0x0
.L.str.65:
	.word	76                              # 0x4c
	.word	105                             # 0x69
	.word	110                             # 0x6e
	.word	107                             # 0x6b
	.word	0                               # 0x0
	.size	.L.str.65, 20

	.type	.L.str.66,@object               # @.str.66
	.p2align	2, 0x0
.L.str.66:
	.word	84                              # 0x54
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	97                              # 0x61
	.word	108                             # 0x6c
	.word	32                              # 0x20
	.word	83                              # 0x53
	.word	105                             # 0x69
	.word	122                             # 0x7a
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.66, 44

	.type	.L.str.67,@object               # @.str.67
	.p2align	2, 0x0
.L.str.67:
	.word	70                              # 0x46
	.word	114                             # 0x72
	.word	101                             # 0x65
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	83                              # 0x53
	.word	112                             # 0x70
	.word	97                              # 0x61
	.word	99                              # 0x63
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.67, 44

	.type	.L.str.68,@object               # @.str.68
	.p2align	2, 0x0
.L.str.68:
	.word	67                              # 0x43
	.word	108                             # 0x6c
	.word	117                             # 0x75
	.word	115                             # 0x73
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	114                             # 0x72
	.word	32                              # 0x20
	.word	83                              # 0x53
	.word	105                             # 0x69
	.word	122                             # 0x7a
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.68, 52

	.type	.L.str.69,@object               # @.str.69
	.p2align	2, 0x0
.L.str.69:
	.word	76                              # 0x4c
	.word	97                              # 0x61
	.word	98                              # 0x62
	.word	101                             # 0x65
	.word	108                             # 0x6c
	.word	0                               # 0x0
	.size	.L.str.69, 24

	.type	.L.str.70,@object               # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"incorrect item"
	.size	.L.str.70, 15

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"FileTimeToLocalFileTime error"
	.size	.L.str.71, 30

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"                   "
	.size	.L.str.72, 20

	.type	.L.str.73,@object               # @.str.73
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.73:
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	115                             # 0x73
	.word	0                               # 0x0
	.size	.L.str.73, 24

	.type	.L.str.74,@object               # @.str.74
	.p2align	2, 0x0
.L.str.74:
	.word	102                             # 0x66
	.word	111                             # 0x6f
	.word	108                             # 0x6c
	.word	100                             # 0x64
	.word	101                             # 0x65
	.word	114                             # 0x72
	.word	115                             # 0x73
	.word	0                               # 0x0
	.size	.L.str.74, 32

	.type	_ZTV13CObjectVectorI10CFieldInfoE,@object # @_ZTV13CObjectVectorI10CFieldInfoE
	.section	.data.rel.ro._ZTV13CObjectVectorI10CFieldInfoE,"awG",@progbits,_ZTV13CObjectVectorI10CFieldInfoE,comdat
	.weak	_ZTV13CObjectVectorI10CFieldInfoE
	.p2align	3, 0x0
_ZTV13CObjectVectorI10CFieldInfoE:
	.dword	0
	.dword	_ZTI13CObjectVectorI10CFieldInfoE
	.dword	_ZN13CObjectVectorI10CFieldInfoED2Ev
	.dword	_ZN13CObjectVectorI10CFieldInfoED0Ev
	.dword	_ZN13CObjectVectorI10CFieldInfoE6DeleteEii
	.size	_ZTV13CObjectVectorI10CFieldInfoE, 40

	.type	_ZTI13CObjectVectorI10CFieldInfoE,@object # @_ZTI13CObjectVectorI10CFieldInfoE
	.section	.data.rel.ro._ZTI13CObjectVectorI10CFieldInfoE,"awG",@progbits,_ZTI13CObjectVectorI10CFieldInfoE,comdat
	.weak	_ZTI13CObjectVectorI10CFieldInfoE
	.p2align	3, 0x0
_ZTI13CObjectVectorI10CFieldInfoE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI10CFieldInfoE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI10CFieldInfoE, 24

	.type	_ZTS13CObjectVectorI10CFieldInfoE,@object # @_ZTS13CObjectVectorI10CFieldInfoE
	.section	.rodata._ZTS13CObjectVectorI10CFieldInfoE,"aG",@progbits,_ZTS13CObjectVectorI10CFieldInfoE,comdat
	.weak	_ZTS13CObjectVectorI10CFieldInfoE
_ZTS13CObjectVectorI10CFieldInfoE:
	.asciz	"13CObjectVectorI10CFieldInfoE"
	.size	_ZTS13CObjectVectorI10CFieldInfoE, 30

	.type	_ZTI13CRecordVectorIPvE,@object # @_ZTI13CRecordVectorIPvE
	.section	.data.rel.ro._ZTI13CRecordVectorIPvE,"awG",@progbits,_ZTI13CRecordVectorIPvE,comdat
	.weak	_ZTI13CRecordVectorIPvE
	.p2align	3, 0x0
_ZTI13CRecordVectorIPvE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIPvE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIPvE, 24

	.type	_ZTS13CRecordVectorIPvE,@object # @_ZTS13CRecordVectorIPvE
	.section	.rodata._ZTS13CRecordVectorIPvE,"aG",@progbits,_ZTS13CRecordVectorIPvE,comdat
	.weak	_ZTS13CRecordVectorIPvE
_ZTS13CRecordVectorIPvE:
	.asciz	"13CRecordVectorIPvE"
	.size	_ZTS13CRecordVectorIPvE, 20

	.type	.L.str.75,@object               # @.str.75
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.75:
	.word	32                              # 0x20
	.word	32                              # 0x20
	.word	32                              # 0x20
	.word	68                              # 0x44
	.word	97                              # 0x61
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	32                              # 0x20
	.word	32                              # 0x20
	.word	32                              # 0x20
	.word	32                              # 0x20
	.word	32                              # 0x20
	.word	84                              # 0x54
	.word	105                             # 0x69
	.word	109                             # 0x6d
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.75, 72

	.type	.L.str.76,@object               # @.str.76
	.p2align	2, 0x0
.L.str.76:
	.word	65                              # 0x41
	.word	116                             # 0x74
	.word	116                             # 0x74
	.word	114                             # 0x72
	.word	0                               # 0x0
	.size	.L.str.76, 20

	.type	.L.str.77,@object               # @.str.77
	.p2align	2, 0x0
.L.str.77:
	.word	67                              # 0x43
	.word	111                             # 0x6f
	.word	109                             # 0x6d
	.word	112                             # 0x70
	.word	114                             # 0x72
	.word	101                             # 0x65
	.word	115                             # 0x73
	.word	115                             # 0x73
	.word	101                             # 0x65
	.word	100                             # 0x64
	.word	0                               # 0x0
	.size	.L.str.77, 44

	.type	_ZTV13CObjectVectorI4CArcE,@object # @_ZTV13CObjectVectorI4CArcE
	.section	.data.rel.ro._ZTV13CObjectVectorI4CArcE,"awG",@progbits,_ZTV13CObjectVectorI4CArcE,comdat
	.weak	_ZTV13CObjectVectorI4CArcE
	.p2align	3, 0x0
_ZTV13CObjectVectorI4CArcE:
	.dword	0
	.dword	_ZTI13CObjectVectorI4CArcE
	.dword	_ZN13CObjectVectorI4CArcED2Ev
	.dword	_ZN13CObjectVectorI4CArcED0Ev
	.dword	_ZN13CObjectVectorI4CArcE6DeleteEii
	.size	_ZTV13CObjectVectorI4CArcE, 40

	.type	_ZTI13CObjectVectorI4CArcE,@object # @_ZTI13CObjectVectorI4CArcE
	.section	.data.rel.ro._ZTI13CObjectVectorI4CArcE,"awG",@progbits,_ZTI13CObjectVectorI4CArcE,comdat
	.weak	_ZTI13CObjectVectorI4CArcE
	.p2align	3, 0x0
_ZTI13CObjectVectorI4CArcE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI4CArcE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI4CArcE, 24

	.type	_ZTS13CObjectVectorI4CArcE,@object # @_ZTS13CObjectVectorI4CArcE
	.section	.rodata._ZTS13CObjectVectorI4CArcE,"aG",@progbits,_ZTS13CObjectVectorI4CArcE,comdat
	.weak	_ZTS13CObjectVectorI4CArcE
_ZTS13CObjectVectorI4CArcE:
	.asciz	"13CObjectVectorI4CArcE"
	.size	_ZTS13CObjectVectorI4CArcE, 23

	.type	_ZTV13CObjectVectorI11CStringBaseIwEE,@object # @_ZTV13CObjectVectorI11CStringBaseIwEE
	.section	.data.rel.ro._ZTV13CObjectVectorI11CStringBaseIwEE,"awG",@progbits,_ZTV13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTV13CObjectVectorI11CStringBaseIwEE
	.p2align	3, 0x0
_ZTV13CObjectVectorI11CStringBaseIwEE:
	.dword	0
	.dword	_ZTI13CObjectVectorI11CStringBaseIwEE
	.dword	_ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.dword	_ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.dword	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.size	_ZTV13CObjectVectorI11CStringBaseIwEE, 40

	.type	_ZTI13CObjectVectorI11CStringBaseIwEE,@object # @_ZTI13CObjectVectorI11CStringBaseIwEE
	.section	.data.rel.ro._ZTI13CObjectVectorI11CStringBaseIwEE,"awG",@progbits,_ZTI13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTI13CObjectVectorI11CStringBaseIwEE
	.p2align	3, 0x0
_ZTI13CObjectVectorI11CStringBaseIwEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI11CStringBaseIwEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI11CStringBaseIwEE, 24

	.type	_ZTS13CObjectVectorI11CStringBaseIwEE,@object # @_ZTS13CObjectVectorI11CStringBaseIwEE
	.section	.rodata._ZTS13CObjectVectorI11CStringBaseIwEE,"aG",@progbits,_ZTS13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTS13CObjectVectorI11CStringBaseIwEE
_ZTS13CObjectVectorI11CStringBaseIwEE:
	.asciz	"13CObjectVectorI11CStringBaseIwEE"
	.size	_ZTS13CObjectVectorI11CStringBaseIwEE, 34

	.type	.L.str.78,@object               # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"Listing archive: "
	.size	.L.str.78, 18

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z4endlR13CStdOutStream
	.addrsig_sym _Unwind_Resume
	.addrsig_sym g_StdOut
	.addrsig_sym _ZTIPKc
	.addrsig_sym _ZL19kStandardFieldTable
	.addrsig_sym _ZTI13CObjectVectorI10CFieldInfoE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS13CObjectVectorI10CFieldInfoE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTI13CObjectVectorI4CArcE
	.addrsig_sym _ZTS13CObjectVectorI4CArcE
	.addrsig_sym _ZTI13CObjectVectorI11CStringBaseIwEE
	.addrsig_sym _ZTS13CObjectVectorI11CStringBaseIwEE
