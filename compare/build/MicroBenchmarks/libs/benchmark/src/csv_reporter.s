	.file	"csv_reporter.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,comdat
	.hidden	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$s0, $fp, 8
	beq	$a0, $s0, .LBB0_6
# %bb.1:                                # %for.body.i.preheader
	addi.d	$s1, $a0, 16
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a0, $s1, 16
	addi.d	$s1, $s1, 32
	beq	$a0, $s0, .LBB0_5
.LBB0_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, -16
	beq	$s1, $a0, .LBB0_2
# %bb.4:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_5:                                # %invoke.contthread-pre-split
	ld.d	$a0, $fp, 0
.LBB0_6:                                # %invoke.cont
	beqz	$a0, .LBB0_8
# %bb.7:                                # %if.then.i.i
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB0_8:                                # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .Lfunc_end0-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.hidden	_ZN9benchmark9CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN9benchmark9CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZN9benchmark9CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN9benchmark9CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN9benchmark9CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN9benchmark9CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$s2, $sp, 64
	ld.d	$a0, $a1, 8
	st.d	$s2, $sp, 48
	st.d	$zero, $sp, 56
	st.b	$zero, $sp, 64
	addi.d	$a1, $a0, 2
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.d	$s3, $s0, 8
	beqz	$s3, .LBB1_11
# %bb.2:
	ld.d	$s4, $s0, 0
	ori	$s5, $zero, 34
	addi.w	$a0, $zero, -3
	lu52i.d	$s6, $a0, 2047
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s0, $a0, %pc_lo12(.L.str.11)
	ori	$s7, $zero, 15
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
                                        #   in Loop: Header=BB1_5 Depth=1
	stx.b	$s8, $a0, $s1
	ld.d	$a0, $sp, 48
	addi.d	$a1, $s1, 1
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.LBB1_4:                                # %sw.epilog
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 1
	beqz	$s3, .LBB1_11
.LBB1_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s8, $s4, 0
	ld.d	$s1, $sp, 56
	bne	$s8, $s5, .LBB1_8
# %bb.6:                                # %sw.bb
                                        #   in Loop: Header=BB1_5 Depth=1
	bgeu	$s1, $s6, .LBB1_25
# %bb.7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
                                        #   in Loop: Header=BB1_5 Depth=1
.Ltmp5:                                 # EH_LABEL
	addi.d	$a0, $sp, 48
	ori	$a2, $zero, 2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_8:                                # %sw.default
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 64
	xor	$a2, $a0, $s2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$a1, $a2, $a1
	bltu	$s1, $a1, .LBB1_3
# %bb.9:                                # %if.then.i.i
                                        #   in Loop: Header=BB1_5 Depth=1
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 48
	ori	$a4, $zero, 1
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.10:                               # %.noexc17
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 48
	b	.LBB1_3
.LBB1_11:                               # %for.cond.cleanup
	ori	$a0, $zero, 34
	st.b	$a0, $sp, 87
	ld.d	$s0, $sp, 48
	ld.d	$s1, $sp, 56
	addi.d	$s3, $sp, 32
	st.d	$s3, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $sp, 32
	addi.d	$a1, $s1, 1
.Ltmp11:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.12:                               # %invoke.cont.i.i
	ld.d	$a0, $sp, 24
	addi.w	$a1, $zero, -2
	lu52i.d	$s4, $a1, 2047
	beq	$a0, $s4, .LBB1_27
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp13:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 87
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.14:                               # %invoke.cont1.i.i
	ld.d	$a0, $sp, 24
	sub.d	$a0, $s4, $a0
	bltu	$a0, $s1, .LBB1_27
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.16:                               # %invoke.cont14
	ld.d	$a1, $sp, 24
.Ltmp17:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a3, $zero, 1
	ori	$a4, $zero, 34
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.17:                               # %call2.i.i.noexc
	addi.d	$a1, $fp, 16
	st.d	$a1, $fp, 0
	ld.d	$a2, $a0, 0
	addi.d	$s0, $a0, 16
	beq	$a2, $s0, .LBB1_19
# %bb.18:                               # %if.else.i.i
	st.d	$a2, $fp, 0
	ld.d	$a1, $a0, 16
	st.d	$a1, $fp, 16
	ld.d	$s1, $a0, 8
	b	.LBB1_20
.LBB1_19:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
	ld.d	$s1, $a0, 8
	addi.d	$a2, $s1, 1
	move	$s4, $a0
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
.LBB1_20:                               # %invoke.cont16
	st.d	$s0, $a0, 0
	ld.d	$a2, $sp, 16
	st.d	$s1, $fp, 8
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	beq	$a2, $s3, .LBB1_22
# %bb.21:                               # %if.then.i.i24
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_22:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB1_24
# %bb.23:                               # %if.then.i.i28
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
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
.LBB1_25:                               # %if.then.i.i.i
.Ltmp8:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.26:                               # %.noexc
.LBB1_27:                               # %if.then.i.i10.invoke.i.i
.Ltmp20:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.28:                               # %if.then.i.i10.cont.i.i
.LBB1_29:                               # %lpad15
.Ltmp19:                                # EH_LABEL
	b	.LBB1_32
.LBB1_30:                               # %lpad
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB1_34
	b	.LBB1_38
.LBB1_31:                               # %lpad.i.i
.Ltmp22:                                # EH_LABEL
.LBB1_32:                               # %lpad15
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	bne	$a2, $s3, .LBB1_35
# %bb.33:                               # %ehcleanup17
	ld.d	$a0, $sp, 48
	bne	$a0, $s2, .LBB1_38
.LBB1_34:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_35:                               # %ehcleanup.sink.split
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB1_34
	b	.LBB1_38
.LBB1_36:                               # %lpad7.loopexit.split-lp
.Ltmp10:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB1_34
	b	.LBB1_38
.LBB1_37:                               # %lpad7.loopexit
.Ltmp7:                                 # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB1_34
.LBB1_38:                               # %if.then.i.i42
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN9benchmark9CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end1-_ZN9benchmark9CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp4
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp16-.Ltmp11                #   Call between .Ltmp11 and .Ltmp16
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp8-.Ltmp18                 #   Call between .Ltmp18 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Lfunc_end1-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark11CSVReporter13ReportContextERKNS_17BenchmarkReporter7ContextE # -- Begin function _ZN9benchmark11CSVReporter13ReportContextERKNS_17BenchmarkReporter7ContextE
	.globl	_ZN9benchmark11CSVReporter13ReportContextERKNS_17BenchmarkReporter7ContextE
	.p2align	5
	.type	_ZN9benchmark11CSVReporter13ReportContextERKNS_17BenchmarkReporter7ContextE,@function
_ZN9benchmark11CSVReporter13ReportContextERKNS_17BenchmarkReporter7ContextE: # @_ZN9benchmark11CSVReporter13ReportContextERKNS_17BenchmarkReporter7ContextE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter17PrintBasicContextEPSoRKNS0_7ContextE)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	_ZN9benchmark11CSVReporter13ReportContextERKNS_17BenchmarkReporter7ContextE, .Lfunc_end2-_ZN9benchmark11CSVReporter13ReportContextERKNS_17BenchmarkReporter7ContextE
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN9benchmark11CSVReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE # -- Begin function _ZN9benchmark11CSVReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE
	.globl	_ZN9benchmark11CSVReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE
	.p2align	5
	.type	_ZN9benchmark11CSVReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE,@function
_ZN9benchmark11CSVReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE: # @_ZN9benchmark11CSVReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
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
	move	$s8, $a0
	ld.bu	$a0, $a0, 24
	ld.d	$a2, $a1, 0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 8
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	beqz	$a0, .LBB3_17
# %bb.1:                                # %if.else
	beq	$a2, $a1, .LBB3_60
# %bb.2:                                # %for.body99.preheader
	ori	$fp, $zero, 16
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s1, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s2, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s3, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$s8, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s4, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$s5, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %for.cond.cleanup114
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 560
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB3_60
.LBB3_4:                                # %for.body99
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	ld.d	$s7, $a2, 520
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$s6, $a2, 504
	bne	$s7, $s6, .LBB3_6
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_5:                                # %cleanup131
                                        #   in Loop: Header=BB3_6 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beq	$a0, $s6, .LBB3_3
.LBB3_6:                                # %for.body115
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 40
	bne	$a0, $fp, .LBB3_9
# %bb.7:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85
                                        #   in Loop: Header=BB3_6 Depth=2
	ld.d	$s0, $s7, 32
	ori	$a2, $zero, 16
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_5
# %bb.8:                                # %lor.lhs.false120
                                        #   in Loop: Header=BB3_6 Depth=2
	ori	$a2, $zero, 16
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_5
.LBB3_9:                                # %if.end124
                                        #   in Loop: Header=BB3_6 Depth=2
	ld.b	$a0, $s3, 0
	dbar	20
	beqz	$a0, .LBB3_15
.LBB3_10:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
                                        #   in Loop: Header=BB3_6 Depth=2
	ld.d	$a0, $s8, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB3_5
# %bb.11:                               # %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit
                                        #   in Loop: Header=BB3_6 Depth=2
	ori	$a2, $zero, 42
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB3_5
# %bb.12:                               # %_ZN9benchmark8internallsIA16_cEERNS0_7LogTypeES4_RKT_.exit
                                        #   in Loop: Header=BB3_6 Depth=2
	ori	$a2, $zero, 15
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB3_5
# %bb.13:                               # %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit
                                        #   in Loop: Header=BB3_6 Depth=2
	ld.d	$a1, $s7, 32
	ld.d	$a2, $s7, 40
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB3_5
# %bb.14:                               # %if.then.i103
                                        #   in Loop: Header=BB3_6 Depth=2
	ori	$a2, $zero, 50
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB3_5
.LBB3_15:                               # %init.check.i
                                        #   in Loop: Header=BB3_6 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB3_10
# %bb.16:                               # %init.i
                                        #   in Loop: Header=BB3_6 Depth=2
	st.d	$zero, $s8, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB3_10
.LBB3_17:                               # %if.then
	ld.d	$a0, $s8, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beq	$a2, $a1, .LBB3_52
# %bb.18:                               # %for.body.lr.ph
	addi.d	$a0, $s8, 40
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$s3, $zero, 16
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$s2, -524288
	lu12i.w	$a0, 524287
	ori	$fp, $a0, 4095
	ori	$s1, $zero, 24
	b	.LBB3_20
	.p2align	4, , 16
.LBB3_19:                               # %for.cond.cleanup16
                                        #   in Loop: Header=BB3_20 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 560
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB3_52
.LBB3_20:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_24 Depth 2
                                        #       Child Loop BB3_31 Depth 3
	ld.d	$s5, $a2, 520
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $a2, 504
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bne	$s5, $a0, .LBB3_24
	b	.LBB3_19
.LBB3_21:                               # %if.end.i.i.i.i.i
                                        #   in Loop: Header=BB3_24 Depth=2
	addi.d	$a2, $a1, 1
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_22:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_.exit
                                        #   in Loop: Header=BB3_24 Depth=2
	ld.d	$a0, $sp, 96
	st.d	$a0, $s7, 40
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s6
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 72
	addi.d	$a0, $a0, 1
	st.d	$a0, $s8, 72
.LBB3_23:                               # %cleanup
                                        #   in Loop: Header=BB3_24 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$s5, $a0, .LBB3_19
.LBB3_24:                               # %for.body17
                                        #   Parent Loop BB3_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_31 Depth 3
	ld.d	$s4, $s5, 40
	bne	$s4, $s3, .LBB3_27
# %bb.25:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
                                        #   in Loop: Header=BB3_24 Depth=2
	ld.d	$s0, $s5, 32
	ori	$a2, $zero, 16
	move	$a0, $s0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_23
# %bb.26:                               # %lor.lhs.false
                                        #   in Loop: Header=BB3_24 Depth=2
	ori	$a2, $zero, 16
	move	$a0, $s0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_23
.LBB3_27:                               # %if.end
                                        #   in Loop: Header=BB3_24 Depth=2
	ld.d	$a0, $s8, 48
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_35
# %bb.28:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB3_24 Depth=2
	ld.d	$s8, $s5, 32
	b	.LBB3_31
	.p2align	4, , 16
.LBB3_29:                               # %if.then.i.i.i.i128
                                        #   in Loop: Header=BB3_31 Depth=3
	sub.d	$a0, $s4, $s0
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a0, $a0, $a1
.LBB3_30:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
                                        #   in Loop: Header=BB3_31 Depth=3
	addi.w	$a1, $a0, 0
	slti	$a0, $a1, 0
	masknez	$a2, $s1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a2
	ldx.d	$a0, $s6, $a0
	beqz	$a0, .LBB3_33
.LBB3_31:                               # %while.body.i
                                        #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a0
	ld.d	$s0, $a0, 40
	sltu	$a0, $s0, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s0, $a0
	or	$s7, $a0, $a1
	beqz	$s7, .LBB3_29
# %bb.32:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
                                        #   in Loop: Header=BB3_31 Depth=3
	ld.d	$a1, $s6, 32
	move	$a0, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_30
	b	.LBB3_29
	.p2align	4, , 16
.LBB3_33:                               # %while.end.i
                                        #   in Loop: Header=BB3_24 Depth=2
	move	$a0, $s6
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	bltz	$a1, .LBB3_35
# %bb.34:                               # %if.end12.i
                                        #   in Loop: Header=BB3_24 Depth=2
	bnez	$s7, .LBB3_37
	b	.LBB3_39
	.p2align	4, , 16
.LBB3_35:                               # %if.then.i125
                                        #   in Loop: Header=BB3_24 Depth=2
	ld.d	$a0, $s8, 56
	beq	$s6, $a0, .LBB3_40
# %bb.36:                               # %if.else.i
                                        #   in Loop: Header=BB3_24 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$s0, $a0, 40
	sltu	$a1, $s4, $s0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s7, $a1, $a2
	beqz	$s7, .LBB3_39
.LBB3_37:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11.i
                                        #   in Loop: Header=BB3_24 Depth=2
	ld.d	$a1, $s5, 32
	ld.d	$a0, $a0, 32
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_39
# %bb.38:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit21.i
                                        #   in Loop: Header=BB3_24 Depth=2
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB3_23
	b	.LBB3_40
	.p2align	4, , 16
.LBB3_39:                               # %if.then.i.i.i16.i
                                        #   in Loop: Header=BB3_24 Depth=2
	sub.d	$a0, $s0, $s4
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB3_23
.LBB3_40:                               # %if.then.i112
                                        #   in Loop: Header=BB3_24 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$a0, $s6, .LBB3_45
# %bb.41:                               # %lor.rhs.i.i
                                        #   in Loop: Header=BB3_24 Depth=2
	ld.d	$s0, $s6, 40
	sltu	$a0, $s0, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB3_43
# %bb.42:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
                                        #   in Loop: Header=BB3_24 Depth=2
	ld.d	$a1, $s6, 32
	ld.d	$a0, $s5, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_44
.LBB3_43:                               # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB3_24 Depth=2
	sub.d	$a0, $s4, $s0
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a0, $a0, $a1
.LBB3_44:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
                                        #   in Loop: Header=BB3_24 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	b	.LBB3_46
.LBB3_45:                               #   in Loop: Header=BB3_24 Depth=2
	ori	$a0, $zero, 1
.LBB3_46:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i
                                        #   in Loop: Header=BB3_24 Depth=2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$s0, $a0, 48
	st.d	$s0, $a0, 32
	ld.d	$a1, $s5, 40
	ld.d	$s8, $s5, 32
	st.d	$a1, $sp, 96
	bltu	$a1, $s3, .LBB3_49
# %bb.47:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB3_24 Depth=2
.Ltmp23:                                # EH_LABEL
	addi.d	$s4, $s7, 32
	addi.d	$a1, $sp, 96
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.48:                               # %call.i4.i.noexc.i
                                        #   in Loop: Header=BB3_24 Depth=2
	ld.d	$a1, $sp, 96
	st.d	$a0, $s4, 0
	st.d	$a1, $s0, 0
	move	$s0, $a0
.LBB3_49:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB3_24 Depth=2
	addi.w	$a0, $zero, -1
	beq	$a1, $a0, .LBB3_22
# %bb.50:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB3_24 Depth=2
	bnez	$a1, .LBB3_21
# %bb.51:                               # %if.then.i.i.i.i
                                        #   in Loop: Header=BB3_24 Depth=2
	ld.b	$a0, $s8, 0
	st.b	$a0, $s0, 0
	b	.LBB3_22
.LBB3_52:                               # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E)
	addi.d	$fp, $a0, %pc_lo12(_ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E)
	ld.d	$s1, $fp, 0
	ld.d	$a0, $fp, 8
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB3_56
# %bb.53:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s0, $a0, %pc_lo12(.L.str.12)
	.p2align	4, , 16
.LBB3_54:                               # %for.body44
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s1, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	addi.d	$s1, $s1, 32
	beq	$s1, $a0, .LBB3_56
# %bb.55:                               # %if.end58
                                        #   in Loop: Header=BB3_54 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	bne	$s1, $a0, .LBB3_54
.LBB3_56:                               # %for.cond.cleanup43
	ld.d	$s2, $s8, 56
	addi.d	$fp, $s8, 40
	beq	$s2, $fp, .LBB3_59
# %bb.57:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$s0, $a0, %pc_lo12(.L.str.13)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s1, $a0, %pc_lo12(.L.str.14)
	.p2align	4, , 16
.LBB3_58:                               # %for.body74
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 2
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 32
	ld.d	$a2, $s2, 40
	move	$s3, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$s2, $s3
	bne	$s3, $fp, .LBB3_58
.LBB3_59:                               # %for.cond.cleanup73
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	st.b	$fp, $s8, 24
.LBB3_60:                               # %if.end146
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ld.d	$fp, $a0, 8
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	beq	$s0, $fp, .LBB3_62
	.p2align	4, , 16
.LBB3_61:                               # %for.body156
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 560
	bne	$s0, $fp, .LBB3_61
.LBB3_62:                               # %for.cond.cleanup155
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
.LBB3_63:                               # %lpad.i
.Ltmp25:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 64
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.64:                               # %unreachable.i
.LBB3_65:                               # %lpad3.i
.Ltmp28:                                # EH_LABEL
	move	$fp, $a0
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.66:                               # %eh.resume.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_67:                               # %terminate.lpad.i
.Ltmp31:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN9benchmark11CSVReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE, .Lfunc_end3-_ZN9benchmark11CSVReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin1          #     jumps to .Ltmp25
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp26-.Ltmp24                #   Call between .Ltmp24 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin1          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin1          #     jumps to .Ltmp31
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Lfunc_end3-.Ltmp30            #   Call between .Ltmp30 and .Lfunc_end3
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
	.hidden	_ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE # -- Begin function _ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE
	.globl	_ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE
	.p2align	5
	.type	_ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE,@function
_ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE: # @_ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE
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
	move	$s1, $a0
	ld.d	$s4, $a0, 8
	move	$s3, $a1
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(_ZN9benchmark9CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.d	$a1, $sp, 88
	ld.d	$a2, $sp, 96
.Ltmp35:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.2:                                # %invoke.cont4
.Ltmp37:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.3:                                # %invoke.cont6
	ld.d	$a0, $sp, 88
	addi.d	$s0, $sp, 104
	beq	$a0, $s0, .LBB4_5
# %bb.4:                                # %if.then.i.i
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 56
	addi.d	$a1, $sp, 72
	beq	$a0, $a1, .LBB4_7
# %bb.6:                                # %if.then.i.i68
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
	ld.w	$a0, $s3, 352
	beqz	$a0, .LBB4_16
# %bb.8:                                # %if.then
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E)
	addi.d	$a0, $a0, %pc_lo12(_ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E)
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 5
	addi.d	$a1, $a0, -3
	st.d	$s0, $sp, 88
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 44
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.9:                                # %invoke.cont14
	ld.d	$a1, $sp, 88
	ld.d	$a2, $sp, 96
.Ltmp43:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.10:                               # %invoke.cont16
	ld.d	$a0, $sp, 88
	beq	$a0, $s0, .LBB4_12
# %bb.11:                               # %if.then.i.i79
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_12:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.w	$a1, $a0, 24
	ori	$a1, $a1, 1
	st.w	$a1, $a0, 24
	ld.w	$a0, $s3, 352
	addi.d	$a0, $a0, -2
	sltui	$a1, $a0, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIbEERSoT_)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s3, 360
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN9benchmark9CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	ld.d	$a2, $sp, 96
.Ltmp46:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.13:                               # %invoke.cont28
.Ltmp48:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.14:                               # %invoke.cont30
	ld.d	$a0, $sp, 88
	beq	$a0, $s0, .LBB4_91
# %bb.15:                               # %if.then.i.i96
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_91
.LBB4_16:                               # %if.end
	ld.bu	$a0, $s3, 488
	bnez	$a0, .LBB4_19
# %bb.17:                               # %if.end
	ld.b	$a0, $s3, 489
	andi	$a0, $a0, 1
	bnez	$a0, .LBB4_19
# %bb.18:                               # %if.then35
	ld.d	$a1, $s3, 392
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIlEERSoT_)
	jirl	$ra, $ra, 0
.LBB4_19:                               # %if.end37
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 272
	bne	$a0, $fp, .LBB4_22
# %bb.20:                               # %if.end37
	ld.w	$a0, $s3, 312
	beqz	$a0, .LBB4_22
# %bb.21:                               # %if.else
	fld.d	$fa0, $s3, 432
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 440
	b	.LBB4_23
.LBB4_22:                               # %if.then41
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv)
	jirl	$ra, $ra, 0
.LBB4_23:                               # %if.end52
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 488
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	beqz	$a0, .LBB4_27
# %bb.24:                               # %if.then55
	ld.w	$a1, $s3, 460
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	ld.d	$a2, $sp, 96
.Ltmp51:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.25:                               # %invoke.cont58
	ld.d	$a0, $sp, 88
	beq	$a0, $s0, .LBB4_30
# %bb.26:                               # %if.then.i.i150
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_30
.LBB4_27:                               # %if.else62
	ld.bu	$a0, $s3, 489
	bnez	$a0, .LBB4_30
# %bb.28:                               # %if.else62
	ld.w	$a0, $s3, 312
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_30
# %bb.29:                               # %if.then68
	ld.w	$a0, $s3, 424
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE)
	ldx.d	$s2, $a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.LBB4_30:                               # %if.end72
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 1
	ori	$s5, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 88
	ori	$s0, $zero, 16
	st.d	$s0, $sp, 56
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	vld	$vr0, $a2, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
	stx.b	$zero, $a0, $a1
	ld.d	$s1, $s3, 512
	ld.d	$s2, $sp, 88
	addi.d	$fp, $s3, 504
	lu12i.w	$s6, -524288
	lu12i.w	$a0, 524287
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	beqz	$s1, .LBB4_41
# %bb.31:                               # %while.body.lr.ph.i.i.i
	ld.d	$s7, $sp, 96
	ori	$s8, $a0, 4095
	ori	$s4, $zero, 24
	b	.LBB4_34
	.p2align	4, , 16
.LBB4_32:                               # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_34 Depth=1
	sub.d	$a0, $s3, $s7
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
.LBB4_33:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB4_34 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s1, $a0
	masknez	$a2, $s0, $a0
	maskeqz	$a3, $s4, $a0
	or	$a2, $a3, $a2
	ldx.d	$s1, $s1, $a2
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	beqz	$s1, .LBB4_36
.LBB4_34:                               # %while.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s1, 40
	sltu	$a0, $s7, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s7, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_32
# %bb.35:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_34 Depth=1
	ld.d	$a0, $s1, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_33
	b	.LBB4_32
.LBB4_36:                               # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSI_RS7_.exit.i.i
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB4_41
# %bb.37:                               # %lor.lhs.false.i.i
	ld.d	$s0, $fp, 40
	sltu	$a0, $s0, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_39
# %bb.38:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_40
.LBB4_39:                               # %if.then.i.i.i.i.i
	sub.d	$a0, $s7, $s0
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
.LBB4_40:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$s5, $a0, 0
.LBB4_41:                               # %invoke.cont80
	addi.d	$s8, $sp, 104
	beq	$s2, $s8, .LBB4_43
# %bb.42:                               # %if.then.i.i179
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
	addi.d	$fp, $s3, 496
	bnez	$s5, .LBB4_49
# %bb.44:                               # %if.then93
	st.d	$s8, $sp, 88
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 56
.Ltmp54:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.45:                               # %call2.i5.i.noexc194
	ld.d	$a1, $sp, 56
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	vld	$vr0, $a2, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
	stx.b	$zero, $a0, $a1
.Ltmp57:                                # EH_LABEL
	addi.d	$a1, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.46:                               # %invoke.cont100
	fld.d	$fa0, $a0, 0
.Ltmp59:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.47:                               # %invoke.cont104
	ld.d	$a0, $sp, 88
	beq	$a0, $s8, .LBB4_49
# %bb.48:                               # %if.then.i.i200
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_49:                               # %if.end110
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 1
	ori	$s5, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	st.d	$s8, $sp, 88
	ori	$s7, $zero, 16
	st.d	$s7, $sp, 56
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	vld	$vr0, $a2, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
	stx.b	$zero, $a0, $a1
	ld.d	$s1, $s3, 512
	ld.d	$s3, $sp, 88
	beqz	$s1, .LBB4_60
# %bb.50:                               # %while.body.lr.ph.i.i.i237
	ld.d	$s2, $sp, 96
	lu12i.w	$a0, 524287
	ori	$s0, $a0, 4095
	ori	$s4, $zero, 24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	b	.LBB4_53
	.p2align	4, , 16
.LBB4_51:                               # %if.then.i.i.i.i.i.i281
                                        #   in Loop: Header=BB4_53 Depth=1
	sub.d	$a0, $s8, $s2
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
.LBB4_52:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i251
                                        #   in Loop: Header=BB4_53 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s1, $a0
	masknez	$a2, $s7, $a0
	maskeqz	$a3, $s4, $a0
	or	$a2, $a3, $a2
	ldx.d	$s1, $s1, $a2
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	beqz	$s1, .LBB4_55
.LBB4_53:                               # %while.body.i.i.i240
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s1, 40
	sltu	$a0, $s2, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_51
# %bb.54:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i247
                                        #   in Loop: Header=BB4_53 Depth=1
	ld.d	$a0, $s1, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_52
	b	.LBB4_51
.LBB4_55:                               # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSI_RS7_.exit.i.i259
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	addi.d	$s8, $sp, 104
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB4_60
# %bb.56:                               # %lor.lhs.false.i.i262
	ld.d	$s1, $fp, 40
	sltu	$a0, $s1, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s1, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_58
# %bb.57:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i267
	ld.d	$a1, $fp, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_59
.LBB4_58:                               # %if.then.i.i.i.i.i276
	sub.d	$a0, $s2, $s1
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
.LBB4_59:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i271
	addi.w	$a0, $a0, 0
	slti	$s5, $a0, 0
.LBB4_60:                               # %invoke.cont119
	beq	$s3, $s8, .LBB4_62
# %bb.61:                               # %if.then.i.i293
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_62:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	bnez	$s5, .LBB4_68
# %bb.63:                               # %if.then134
	st.d	$s8, $sp, 88
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 56
.Ltmp62:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.64:                               # %call2.i5.i.noexc308
	ld.d	$a1, $sp, 56
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	vld	$vr0, $a2, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
	stx.b	$zero, $a0, $a1
.Ltmp65:                                # EH_LABEL
	addi.d	$a1, $sp, 88
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.65:                               # %invoke.cont141
	fld.d	$fa0, $a0, 0
.Ltmp67:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.66:                               # %invoke.cont145
	ld.d	$a0, $sp, 88
	beq	$a0, $s8, .LBB4_68
# %bb.67:                               # %if.then.i.i315
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_68:                               # %if.end151
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 328
	beqz	$a0, .LBB4_72
# %bb.69:                               # %if.then154
	addi.d	$a1, $fp, 320
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN9benchmark9CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	ld.d	$a2, $sp, 96
.Ltmp70:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.70:                               # %invoke.cont158
	ld.d	$a0, $sp, 88
	beq	$a0, $s8, .LBB4_72
# %bb.71:                               # %if.then.i.i343
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_72:                               # %if.end162
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $a0, 56
	addi.d	$a0, $a0, 40
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beq	$s2, $a0, .LBB4_88
# %bb.73:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$s7, $a0, 4095
	ori	$s8, $zero, 16
	ori	$s5, $zero, 24
	b	.LBB4_76
	.p2align	4, , 16
.LBB4_74:                               # %if.then182
                                        #   in Loop: Header=BB4_76 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.LBB4_75:                               # %if.end189
                                        #   in Loop: Header=BB4_76 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB4_88
.LBB4_76:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_80 Depth 2
	ld.d	$s1, $fp, 512
	beqz	$s1, .LBB4_74
# %bb.77:                               # %while.body.lr.ph.i.i.i371
                                        #   in Loop: Header=BB4_76 Depth=1
	ld.d	$fp, $s2, 40
	ld.d	$s3, $s2, 32
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB4_80
	.p2align	4, , 16
.LBB4_78:                               # %if.then.i.i.i.i.i.i415
                                        #   in Loop: Header=BB4_80 Depth=2
	sub.d	$a0, $s4, $fp
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB4_79:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i385
                                        #   in Loop: Header=BB4_80 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s1, $a0
	masknez	$a2, $s8, $a0
	maskeqz	$a3, $s5, $a0
	or	$a2, $a3, $a2
	ldx.d	$s1, $s1, $a2
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a1
	beqz	$s1, .LBB4_82
.LBB4_80:                               # %while.body.i.i.i374
                                        #   Parent Loop BB4_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s1, 40
	sltu	$a0, $fp, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_78
# %bb.81:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i381
                                        #   in Loop: Header=BB4_80 Depth=2
	ld.d	$a0, $s1, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_79
	b	.LBB4_78
	.p2align	4, , 16
.LBB4_82:                               # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSI_RS7_.exit.i.i393
                                        #   in Loop: Header=BB4_76 Depth=1
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_74
# %bb.83:                               # %lor.lhs.false.i.i396
                                        #   in Loop: Header=BB4_76 Depth=1
	ld.d	$s1, $s0, 40
	sltu	$a0, $s1, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s1, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_85
# %bb.84:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i401
                                        #   in Loop: Header=BB4_76 Depth=1
	ld.d	$a1, $s0, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_86
.LBB4_85:                               # %if.then.i.i.i.i.i410
                                        #   in Loop: Header=BB4_76 Depth=1
	sub.d	$a0, $fp, $s1
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB4_86:                               # %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit422
                                        #   in Loop: Header=BB4_76 Depth=1
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB4_74
# %bb.87:                               # %if.else184
                                        #   in Loop: Header=BB4_76 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s0, 64
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	b	.LBB4_75
.LBB4_88:                               # %for.cond.cleanup
	ori	$a0, $zero, 10
	st.b	$a0, $sp, 88
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB4_90
# %bb.89:                               # %if.then.i
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB4_91
.LBB4_90:                               # %if.end.i
	ori	$a1, $zero, 10
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.LBB4_91:                               # %cleanup
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
.LBB4_92:                               # %lpad138
.Ltmp64:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_93:                               # %lpad97
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_94:                               # %lpad57
.Ltmp53:                                # EH_LABEL
	b	.LBB4_103
.LBB4_95:                               # %lpad157
.Ltmp72:                                # EH_LABEL
	b	.LBB4_98
.LBB4_96:                               # %lpad140
.Ltmp69:                                # EH_LABEL
	b	.LBB4_98
.LBB4_97:                               # %lpad99
.Ltmp61:                                # EH_LABEL
.LBB4_98:                               # %lpad99
	ld.d	$a2, $sp, 88
	move	$fp, $a0
	bne	$a2, $s8, .LBB4_104
	b	.LBB4_110
.LBB4_99:                               # %lpad15
.Ltmp45:                                # EH_LABEL
	b	.LBB4_103
.LBB4_100:                              # %lpad13
.Ltmp42:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_101:                              # %lpad
.Ltmp34:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB4_107
.LBB4_102:                              # %lpad27
.Ltmp50:                                # EH_LABEL
.LBB4_103:                              # %lpad15
	ld.d	$a2, $sp, 88
	move	$fp, $a0
	beq	$a2, $s0, .LBB4_110
.LBB4_104:                              # %if.then.i.i117
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB4_109
.LBB4_105:                              # %lpad3
.Ltmp39:                                # EH_LABEL
	ld.d	$a2, $sp, 88
	addi.d	$a1, $sp, 104
	move	$fp, $a0
	beq	$a2, $a1, .LBB4_107
# %bb.106:                              # %if.then.i.i103
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_107:                              # %ehcleanup
	ld.d	$a0, $sp, 56
	addi.d	$a1, $sp, 72
	beq	$a0, $a1, .LBB4_110
# %bb.108:                              # %if.then.i.i110
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
.LBB4_109:                              # %ehcleanup192
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_110:                              # %ehcleanup192
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE, .Lfunc_end4-_ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp32-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin2          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp38-.Ltmp35                #   Call between .Ltmp35 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin2          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp40-.Ltmp38                #   Call between .Ltmp38 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin2          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp46-.Ltmp44                #   Call between .Ltmp44 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp49-.Ltmp46                #   Call between .Ltmp46 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin2          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp51-.Ltmp49                #   Call between .Ltmp49 and .Ltmp51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin2          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp54-.Ltmp52                #   Call between .Ltmp52 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin2          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp60-.Ltmp57                #   Call between .Ltmp57 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin2          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp62-.Ltmp60                #   Call between .Ltmp60 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin2          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin2          # >> Call Site 16 <<
	.uleb128 .Ltmp68-.Ltmp65                #   Call between .Ltmp65 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin2          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin2          # >> Call Site 17 <<
	.uleb128 .Ltmp70-.Ltmp68                #   Call between .Ltmp68 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin2          # >> Call Site 18 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin2          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin2          # >> Call Site 19 <<
	.uleb128 .Lfunc_end4-.Ltmp71            #   Call between .Ltmp71 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_,"axG",@progbits,_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_,comdat
	.hidden	_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_ # -- Begin function _ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_
	.weak	_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_
	.p2align	5
	.type	_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_,@function
_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_: # @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_
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
	ld.d	$s4, $a0, 16
	beqz	$s4, .LBB5_12
# %bb.1:                                # %while.body.lr.ph.i.i.i
	addi.d	$s5, $a0, 8
	ld.d	$s3, $a1, 8
	ld.d	$fp, $a1, 0
	lu12i.w	$s2, -524288
	lu12i.w	$a0, 524287
	ori	$s1, $a0, 4095
	ori	$s6, $zero, 16
	ori	$s7, $zero, 24
	move	$s0, $s5
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	sub.d	$a0, $s8, $s3
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
.LBB5_3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s4, $a0
	masknez	$a2, $s6, $a0
	maskeqz	$a3, $s7, $a0
	or	$a2, $a3, $a2
	ldx.d	$s4, $s4, $a2
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a1
	beqz	$s4, .LBB5_6
.LBB5_4:                                # %while.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s4, 40
	sltu	$a0, $s3, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB5_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $s4, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_3
	b	.LBB5_2
.LBB5_6:                                # %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
	beq	$s0, $s5, .LBB5_12
# %bb.7:                                # %lor.rhs
	ld.d	$s4, $s0, 40
	sltu	$a0, $s4, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB5_9
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a1, $s0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_10
.LBB5_9:                                # %if.then.i.i.i
	sub.d	$a0, $s3, $s4
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
.LBB5_10:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB5_12
# %bb.11:                               # %if.end
	addi.d	$a0, $s0, 64
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
.LBB5_12:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(_ZSt20__throw_out_of_rangePKc)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_, .Lfunc_end5-_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl,"axG",@progbits,_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl # -- Begin function _ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
	.weak	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl,@function
_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl: # @_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
# %bb.0:                                # %entry
	ret
.Lfunc_end6:
	.size	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl, .Lfunc_end6-_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter8FinalizeEv,"axG",@progbits,_ZN9benchmark17BenchmarkReporter8FinalizeEv,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter8FinalizeEv # -- Begin function _ZN9benchmark17BenchmarkReporter8FinalizeEv
	.weak	_ZN9benchmark17BenchmarkReporter8FinalizeEv
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter8FinalizeEv,@function
_ZN9benchmark17BenchmarkReporter8FinalizeEv: # @_ZN9benchmark17BenchmarkReporter8FinalizeEv
# %bb.0:                                # %entry
	ret
.Lfunc_end7:
	.size	_ZN9benchmark17BenchmarkReporter8FinalizeEv, .Lfunc_end7-_ZN9benchmark17BenchmarkReporter8FinalizeEv
                                        # -- End function
	.section	.text._ZN9benchmark11CSVReporterD2Ev,"axG",@progbits,_ZN9benchmark11CSVReporterD2Ev,comdat
	.hidden	_ZN9benchmark11CSVReporterD2Ev  # -- Begin function _ZN9benchmark11CSVReporterD2Ev
	.weak	_ZN9benchmark11CSVReporterD2Ev
	.p2align	5
	.type	_ZN9benchmark11CSVReporterD2Ev,@function
_ZN9benchmark11CSVReporterD2Ev:         # @_ZN9benchmark11CSVReporterD2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVN9benchmark11CSVReporterE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN9benchmark11CSVReporterE+16)
	ld.d	$a1, $fp, 48
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 32
.Ltmp73:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.1:                                # %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN9benchmark17BenchmarkReporterD2Ev)
	jr	$t8
.LBB8_2:                                # %terminate.lpad.i.i
.Ltmp75:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN9benchmark11CSVReporterD2Ev, .Lfunc_end8-_ZN9benchmark11CSVReporterD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark11CSVReporterD2Ev,"aG",@progbits,_ZN9benchmark11CSVReporterD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp73-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin3          #     jumps to .Ltmp75
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp74-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Lfunc_end8-.Ltmp74            #   Call between .Ltmp74 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark11CSVReporterD0Ev,"axG",@progbits,_ZN9benchmark11CSVReporterD0Ev,comdat
	.hidden	_ZN9benchmark11CSVReporterD0Ev  # -- Begin function _ZN9benchmark11CSVReporterD0Ev
	.weak	_ZN9benchmark11CSVReporterD0Ev
	.p2align	5
	.type	_ZN9benchmark11CSVReporterD0Ev,@function
_ZN9benchmark11CSVReporterD0Ev:         # @_ZN9benchmark11CSVReporterD0Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVN9benchmark11CSVReporterE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN9benchmark11CSVReporterE+16)
	ld.d	$a1, $fp, 48
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 32
.Ltmp76:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.1:                                # %_ZN9benchmark11CSVReporterD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporterD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 80
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB9_2:                                # %terminate.lpad.i.i.i
.Ltmp78:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN9benchmark11CSVReporterD0Ev, .Lfunc_end9-_ZN9benchmark11CSVReporterD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark11CSVReporterD0Ev,"aG",@progbits,_ZN9benchmark11CSVReporterD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp76-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin4          #     jumps to .Ltmp78
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp77-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Lfunc_end9-.Ltmp77            #   Call between .Ltmp77 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_startproc
# %bb.0:                                # %entry
	beqz	$a1, .LBB10_6
# %bb.1:                                # %while.body.preheader
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a1
	move	$fp, $a0
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
                                        #   in Loop: Header=BB10_3 Depth=1
	ori	$a1, $zero, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB10_5
.LBB10_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB10_2
# %bb.4:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB10_2
.LBB10_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB10_6:                               # %while.end
	ret
.Lfunc_end10:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, .Lfunc_end10-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_endproc
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
.Lfunc_end11:
	.size	__clang_call_terminate, .Lfunc_end11-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,"axG",@progbits,_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,comdat
	.hidden	_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev # -- Begin function _ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev
	.weak	_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev
	.p2align	5
	.type	_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,@function
_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev: # @_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB12_2
.LBB12_1:                               # %if.end
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB12_2:                               # %if.then
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp79:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
	b	.LBB12_1
.LBB12_3:                               # %terminate.lpad
.Ltmp81:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev, .Lfunc_end12-_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,"aG",@progbits,_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp79-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin5          #     jumps to .Ltmp81
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp80-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Lfunc_end12-.Ltmp80           #   Call between .Ltmp80 and .Lfunc_end12
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
	.section	.text._ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,"axG",@progbits,_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,comdat
	.weak	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ # -- Begin function _ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.p2align	5
	.type	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,@function
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_: # @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.cfi_startproc
# %bb.0:                                # %entry
	beq	$a0, $a1, .LBB13_6
# %bb.1:                                # %for.body.preheader
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	addi.d	$s0, $a0, 16
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$a0, $s0, 16
	addi.d	$s0, $s0, 32
	beq	$a0, $fp, .LBB13_5
.LBB13_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, -16
	beq	$s0, $a0, .LBB13_2
# %bb.4:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB13_2
.LBB13_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB13_6:                               # %for.end
	ret
.Lfunc_end13:
	.size	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, .Lfunc_end13-_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _GLOBAL__sub_I_csv_reporter.cc
.LCPI14_0:
	.dword	8                               # 0x8
	.dword	7308613718830837859             # 0x656d69745f757063
	.section	.text.startup,"ax",@progbits
	.p2align	5
	.type	_GLOBAL__sub_I_csv_reporter.cc,@function
_GLOBAL__sub_I_csv_reporter.cc:         # @_GLOBAL__sub_I_csv_reporter.cc
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -448
	.cfi_def_cfa_offset 448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
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
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	st.d	$a0, $sp, 8
	lu12i.w	$a0, 415446
	ori	$a0, $a0, 366
	st.w	$a0, $sp, 24
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 28
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.d	$a1, $a0, 0
	ld.h	$a0, $a0, 8
	st.d	$a1, $sp, 56
	st.h	$a0, $sp, 64
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 48
	st.b	$zero, $sp, 66
	addi.d	$a0, $sp, 88
	st.d	$a0, $sp, 72
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	st.d	$a1, $sp, 88
	st.b	$a0, $sp, 96
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 80
	pcalau12i	$a1, %pc_hi20(.LCPI14_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI14_0)
	st.b	$zero, $sp, 97
	addi.d	$a1, $sp, 120
	st.d	$a1, $sp, 104
	vst	$vr0, $sp, 112
	st.b	$zero, $sp, 128
	addi.d	$a1, $sp, 152
	st.d	$a1, $sp, 136
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.b	$a2, $a1, 8
	ld.d	$a1, $a1, 0
	st.b	$a2, $sp, 160
	st.d	$a1, $sp, 152
	st.d	$a0, $sp, 144
	st.b	$zero, $sp, 161
	addi.d	$s0, $sp, 168
	addi.d	$a0, $sp, 184
	st.d	$a0, $sp, 168
	ori	$fp, $zero, 16
	st.d	$fp, $sp, 328
.Ltmp82:                                # EH_LABEL
	addi.d	$a1, $sp, 328
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.1:                                # %call2.i5.i.noexc69.i
	ld.d	$a1, $sp, 328
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	vld	$vr0, $a2, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 168
	st.d	$a1, $sp, 176
	stx.b	$zero, $a0, $a1
	addi.d	$s0, $sp, 200
	addi.d	$a0, $sp, 216
	st.d	$a0, $sp, 200
	st.d	$fp, $sp, 328
.Ltmp85:                                # EH_LABEL
	addi.d	$a1, $sp, 328
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.2:                                # %call2.i5.i.noexc81.i
	ld.d	$a1, $sp, 328
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	vld	$vr0, $a2, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 216
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 200
	st.d	$a1, $sp, 208
	stx.b	$zero, $a0, $a1
	addi.d	$s2, $sp, 248
	st.d	$s2, $sp, 232
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ld.w	$a1, $a0, 0
	ld.b	$a0, $a0, 4
	st.w	$a1, $sp, 248
	st.b	$a0, $sp, 252
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 240
	st.b	$zero, $sp, 253
	addi.d	$s3, $sp, 280
	st.d	$s3, $sp, 264
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 6
	st.d	$a1, $sp, 280
	st.d	$a0, $sp, 286
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 272
	st.b	$zero, $sp, 294
	addi.d	$s4, $sp, 312
	st.d	$s4, $sp, 296
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	st.d	$a1, $sp, 312
	st.d	$a0, $sp, 317
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 304
	st.b	$zero, $sp, 325
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E)
	addi.d	$s5, $a0, %pc_lo12(_ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E)
	st.d	$zero, $s5, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $s5, 0
.Ltmp88:                                # EH_LABEL
	ori	$a0, $zero, 320
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.3:                                # %call5.i.i.i.noexc.i
	move	$fp, $a0
	st.d	$a0, $s5, 0
	addi.d	$a0, $a0, 320
	st.d	$a0, $s5, 16
	st.d	$fp, $sp, 344
	st.d	$fp, $sp, 328
	addi.d	$a0, $sp, 344
	st.d	$a0, $sp, 336
	addi.d	$a0, $fp, 16
	ld.d	$a1, $sp, 16
	ld.d	$s0, $sp, 8
	st.d	$a0, $fp, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 352
	bltu	$a1, $a2, .LBB14_6
# %bb.4:                                # %if.then.i.i.i.i.i.i.i.i
.Ltmp91:                                # EH_LABEL
	addi.d	$a1, $sp, 352
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.5:                                # %call.i4.i.i.noexc.i.i.i.i.i
	ld.d	$a1, $sp, 352
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB14_6:                               # %if.end.i.i.i.i.i.i.i.i
	addi.w	$s6, $zero, -1
	beq	$a1, $s6, .LBB14_10
# %bb.7:                                # %if.end.i.i.i.i.i.i.i.i
	bnez	$a1, .LBB14_9
# %bb.8:                                # %if.then.i.i.i.i.i.i.i.i.i
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB14_10
.LBB14_9:                               # %if.end.i.i.i.i.i.i.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB14_10:                              # %for.inc.i.i.i.i.i
	ld.d	$a0, $sp, 352
	ld.d	$s7, $sp, 344
	st.d	$a0, $fp, 8
	addi.d	$s1, $s7, 32
	addi.d	$fp, $s7, 48
	st.d	$fp, $s7, 32
	ld.d	$a1, $sp, 48
	ld.d	$s0, $sp, 40
	st.d	$s1, $sp, 344
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 352
	bltu	$a1, $a0, .LBB14_13
# %bb.11:                               # %if.then.i.i.i.i.i.i.i.1.i
.Ltmp93:                                # EH_LABEL
	addi.d	$a1, $sp, 352
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.12:                               # %call.i4.i.i.noexc.i.i.i.i.1.i
	ld.d	$a1, $sp, 352
	st.d	$a0, $s1, 0
	st.d	$a1, $fp, 0
	move	$fp, $a0
.LBB14_13:                              # %if.end.i.i.i.i.i.i.i.1.i
	beq	$a1, $s6, .LBB14_17
# %bb.14:                               # %if.end.i.i.i.i.i.i.i.1.i
	bnez	$a1, .LBB14_16
# %bb.15:                               # %if.then.i.i.i.i.i.i.i.i.1.i
	ld.b	$a0, $s0, 0
	st.b	$a0, $fp, 0
	b	.LBB14_17
.LBB14_16:                              # %if.end.i.i.i.i.i.i.i.i.i.1.i
	addi.d	$a2, $a1, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB14_17:                              # %for.inc.i.i.i.i.1.i
	ld.d	$a0, $sp, 352
	ld.d	$s8, $sp, 344
	st.d	$a0, $s7, 40
	addi.d	$s1, $s8, 32
	addi.d	$fp, $s8, 48
	st.d	$fp, $s8, 32
	ld.d	$a1, $sp, 80
	ld.d	$s0, $sp, 72
	st.d	$s1, $sp, 344
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 352
	bltu	$a1, $a0, .LBB14_20
# %bb.18:                               # %if.then.i.i.i.i.i.i.i.2.i
.Ltmp95:                                # EH_LABEL
	addi.d	$a1, $sp, 352
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.19:                               # %call.i4.i.i.noexc.i.i.i.i.2.i
	ld.d	$a1, $sp, 352
	st.d	$a0, $s1, 0
	st.d	$a1, $fp, 0
	move	$fp, $a0
.LBB14_20:                              # %if.end.i.i.i.i.i.i.i.2.i
	beq	$a1, $s6, .LBB14_24
# %bb.21:                               # %if.end.i.i.i.i.i.i.i.2.i
	bnez	$a1, .LBB14_23
# %bb.22:                               # %if.then.i.i.i.i.i.i.i.i.2.i
	ld.b	$a0, $s0, 0
	st.b	$a0, $fp, 0
	b	.LBB14_24
.LBB14_23:                              # %if.end.i.i.i.i.i.i.i.i.i.2.i
	addi.d	$a2, $a1, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB14_24:                              # %for.inc.i.i.i.i.2.i
	ld.d	$a0, $sp, 352
	ld.d	$s7, $sp, 344
	st.d	$a0, $s8, 40
	addi.d	$s1, $s7, 32
	addi.d	$fp, $s7, 48
	st.d	$fp, $s7, 32
	ld.d	$a1, $sp, 112
	ld.d	$s0, $sp, 104
	st.d	$s1, $sp, 344
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 352
	bltu	$a1, $a0, .LBB14_27
# %bb.25:                               # %if.then.i.i.i.i.i.i.i.3.i
.Ltmp97:                                # EH_LABEL
	addi.d	$a1, $sp, 352
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.26:                               # %call.i4.i.i.noexc.i.i.i.i.3.i
	ld.d	$a1, $sp, 352
	st.d	$a0, $s1, 0
	st.d	$a1, $fp, 0
	move	$fp, $a0
.LBB14_27:                              # %if.end.i.i.i.i.i.i.i.3.i
	beq	$a1, $s6, .LBB14_31
# %bb.28:                               # %if.end.i.i.i.i.i.i.i.3.i
	bnez	$a1, .LBB14_30
# %bb.29:                               # %if.then.i.i.i.i.i.i.i.i.3.i
	ld.b	$a0, $s0, 0
	st.b	$a0, $fp, 0
	b	.LBB14_31
.LBB14_30:                              # %if.end.i.i.i.i.i.i.i.i.i.3.i
	addi.d	$a2, $a1, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB14_31:                              # %for.inc.i.i.i.i.3.i
	ld.d	$a0, $sp, 352
	ld.d	$s8, $sp, 344
	st.d	$a0, $s7, 40
	addi.d	$s1, $s8, 32
	addi.d	$fp, $s8, 48
	st.d	$fp, $s8, 32
	ld.d	$a1, $sp, 144
	ld.d	$s0, $sp, 136
	st.d	$s1, $sp, 344
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 352
	bltu	$a1, $a0, .LBB14_34
# %bb.32:                               # %if.then.i.i.i.i.i.i.i.4.i
.Ltmp99:                                # EH_LABEL
	addi.d	$a1, $sp, 352
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.33:                               # %call.i4.i.i.noexc.i.i.i.i.4.i
	ld.d	$a1, $sp, 352
	st.d	$a0, $s1, 0
	st.d	$a1, $fp, 0
	move	$fp, $a0
.LBB14_34:                              # %if.end.i.i.i.i.i.i.i.4.i
	beq	$a1, $s6, .LBB14_38
# %bb.35:                               # %if.end.i.i.i.i.i.i.i.4.i
	bnez	$a1, .LBB14_37
# %bb.36:                               # %if.then.i.i.i.i.i.i.i.i.4.i
	ld.b	$a0, $s0, 0
	st.b	$a0, $fp, 0
	b	.LBB14_38
.LBB14_37:                              # %if.end.i.i.i.i.i.i.i.i.i.4.i
	addi.d	$a2, $a1, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB14_38:                              # %for.inc.i.i.i.i.4.i
	ld.d	$a0, $sp, 352
	ld.d	$s7, $sp, 344
	st.d	$a0, $s8, 40
	addi.d	$s1, $s7, 32
	addi.d	$fp, $s7, 48
	st.d	$fp, $s7, 32
	ld.d	$a1, $sp, 176
	ld.d	$s0, $sp, 168
	st.d	$s1, $sp, 344
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 352
	bltu	$a1, $a0, .LBB14_41
# %bb.39:                               # %if.then.i.i.i.i.i.i.i.5.i
.Ltmp101:                               # EH_LABEL
	addi.d	$a1, $sp, 352
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.40:                               # %call.i4.i.i.noexc.i.i.i.i.5.i
	ld.d	$a1, $sp, 352
	st.d	$a0, $s1, 0
	st.d	$a1, $fp, 0
	move	$fp, $a0
.LBB14_41:                              # %if.end.i.i.i.i.i.i.i.5.i
	beq	$a1, $s6, .LBB14_45
# %bb.42:                               # %if.end.i.i.i.i.i.i.i.5.i
	bnez	$a1, .LBB14_44
# %bb.43:                               # %if.then.i.i.i.i.i.i.i.i.5.i
	ld.b	$a0, $s0, 0
	st.b	$a0, $fp, 0
	b	.LBB14_45
.LBB14_44:                              # %if.end.i.i.i.i.i.i.i.i.i.5.i
	addi.d	$a2, $a1, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB14_45:                              # %for.inc.i.i.i.i.5.i
	ld.d	$a0, $sp, 352
	ld.d	$s8, $sp, 344
	st.d	$a0, $s7, 40
	addi.d	$s1, $s8, 32
	addi.d	$fp, $s8, 48
	st.d	$fp, $s8, 32
	ld.d	$a1, $sp, 208
	ld.d	$s0, $sp, 200
	st.d	$s1, $sp, 344
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 352
	bltu	$a1, $a0, .LBB14_48
# %bb.46:                               # %if.then.i.i.i.i.i.i.i.6.i
.Ltmp103:                               # EH_LABEL
	addi.d	$a1, $sp, 352
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.47:                               # %call.i4.i.i.noexc.i.i.i.i.6.i
	ld.d	$a1, $sp, 352
	st.d	$a0, $s1, 0
	st.d	$a1, $fp, 0
	move	$fp, $a0
.LBB14_48:                              # %if.end.i.i.i.i.i.i.i.6.i
	beq	$a1, $s6, .LBB14_52
# %bb.49:                               # %if.end.i.i.i.i.i.i.i.6.i
	bnez	$a1, .LBB14_51
# %bb.50:                               # %if.then.i.i.i.i.i.i.i.i.6.i
	ld.b	$a0, $s0, 0
	st.b	$a0, $fp, 0
	b	.LBB14_52
.LBB14_51:                              # %if.end.i.i.i.i.i.i.i.i.i.6.i
	addi.d	$a2, $a1, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB14_52:                              # %for.inc.i.i.i.i.6.i
	ld.d	$a0, $sp, 352
	ld.d	$s7, $sp, 344
	st.d	$a0, $s8, 40
	addi.d	$s1, $s7, 32
	addi.d	$fp, $s7, 48
	st.d	$fp, $s7, 32
	ld.d	$a1, $sp, 240
	ld.d	$s0, $sp, 232
	st.d	$s1, $sp, 344
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 352
	bltu	$a1, $a0, .LBB14_55
# %bb.53:                               # %if.then.i.i.i.i.i.i.i.7.i
.Ltmp105:                               # EH_LABEL
	addi.d	$a1, $sp, 352
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.54:                               # %call.i4.i.i.noexc.i.i.i.i.7.i
	ld.d	$a1, $sp, 352
	st.d	$a0, $s1, 0
	st.d	$a1, $fp, 0
	move	$fp, $a0
.LBB14_55:                              # %if.end.i.i.i.i.i.i.i.7.i
	beq	$a1, $s6, .LBB14_59
# %bb.56:                               # %if.end.i.i.i.i.i.i.i.7.i
	bnez	$a1, .LBB14_58
# %bb.57:                               # %if.then.i.i.i.i.i.i.i.i.7.i
	ld.b	$a0, $s0, 0
	st.b	$a0, $fp, 0
	b	.LBB14_59
.LBB14_58:                              # %if.end.i.i.i.i.i.i.i.i.i.7.i
	addi.d	$a2, $a1, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB14_59:                              # %for.inc.i.i.i.i.7.i
	ld.d	$a0, $sp, 352
	ld.d	$s8, $sp, 344
	st.d	$a0, $s7, 40
	addi.d	$s1, $s8, 32
	addi.d	$fp, $s8, 48
	st.d	$fp, $s8, 32
	ld.d	$a1, $sp, 272
	ld.d	$s0, $sp, 264
	st.d	$s1, $sp, 344
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 352
	bltu	$a1, $a0, .LBB14_62
# %bb.60:                               # %if.then.i.i.i.i.i.i.i.8.i
.Ltmp107:                               # EH_LABEL
	addi.d	$a1, $sp, 352
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.61:                               # %call.i4.i.i.noexc.i.i.i.i.8.i
	ld.d	$a1, $sp, 352
	st.d	$a0, $s1, 0
	st.d	$a1, $fp, 0
	move	$fp, $a0
.LBB14_62:                              # %if.end.i.i.i.i.i.i.i.8.i
	beq	$a1, $s6, .LBB14_66
# %bb.63:                               # %if.end.i.i.i.i.i.i.i.8.i
	bnez	$a1, .LBB14_65
# %bb.64:                               # %if.then.i.i.i.i.i.i.i.i.8.i
	ld.b	$a0, $s0, 0
	st.b	$a0, $fp, 0
	b	.LBB14_66
.LBB14_65:                              # %if.end.i.i.i.i.i.i.i.i.i.8.i
	addi.d	$a2, $a1, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB14_66:                              # %for.inc.i.i.i.i.8.i
	ld.d	$a0, $sp, 352
	ld.d	$s7, $sp, 344
	st.d	$a0, $s8, 40
	addi.d	$s1, $s7, 32
	addi.d	$fp, $s7, 48
	st.d	$fp, $s7, 32
	ld.d	$a1, $sp, 304
	ld.d	$s0, $sp, 296
	st.d	$s1, $sp, 344
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 352
	bltu	$a1, $a0, .LBB14_69
# %bb.67:                               # %if.then.i.i.i.i.i.i.i.9.i
.Ltmp109:                               # EH_LABEL
	addi.d	$a1, $sp, 352
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.68:                               # %call.i4.i.i.noexc.i.i.i.i.9.i
	ld.d	$a1, $sp, 352
	st.d	$a0, $s1, 0
	st.d	$a1, $fp, 0
	move	$fp, $a0
.LBB14_69:                              # %if.end.i.i.i.i.i.i.i.9.i
	beq	$a1, $s6, .LBB14_73
# %bb.70:                               # %if.end.i.i.i.i.i.i.i.9.i
	bnez	$a1, .LBB14_72
# %bb.71:                               # %if.then.i.i.i.i.i.i.i.i.9.i
	ld.b	$a0, $s0, 0
	st.b	$a0, $fp, 0
	b	.LBB14_73
.LBB14_72:                              # %if.end.i.i.i.i.i.i.i.i.i.9.i
	addi.d	$a2, $a1, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB14_73:                              # %for.inc.i.i.i.i.9.i
	ld.d	$a0, $sp, 352
	st.d	$a0, $s7, 40
	ld.d	$a1, $sp, 344
	ld.d	$a0, $sp, 296
	addi.d	$a1, $a1, 32
	st.d	$a1, $s5, 8
	beq	$a0, $s4, .LBB14_75
# %bb.74:                               # %if.then.i.i120.i
	ld.d	$a1, $sp, 312
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_75:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ld.d	$a0, $sp, 264
	beq	$a0, $s3, .LBB14_77
# %bb.76:                               # %if.then.i.i120.1.i
	ld.d	$a1, $sp, 280
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_77:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i
	ld.d	$a0, $sp, 232
	beq	$a0, $s2, .LBB14_79
# %bb.78:                               # %if.then.i.i120.2.i
	ld.d	$a1, $sp, 248
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_79:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 216
	beq	$a0, $a1, .LBB14_81
# %bb.80:                               # %if.then.i.i120.3.i
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_81:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3.i
	ld.d	$a0, $sp, 168
	addi.d	$fp, $sp, 24
	addi.d	$s0, $sp, 56
	addi.d	$s1, $sp, 88
	addi.d	$s2, $sp, 120
	addi.d	$a1, $sp, 184
	beq	$a0, $a1, .LBB14_83
# %bb.82:                               # %if.then.i.i120.4.i
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_83:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4.i
	ld.d	$a0, $sp, 136
	addi.d	$a1, $sp, 152
	beq	$a0, $a1, .LBB14_85
# %bb.84:                               # %if.then.i.i120.5.i
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_85:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5.i
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB14_87
# %bb.86:                               # %if.then.i.i120.6.i
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_87:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6.i
	ld.d	$a0, $sp, 72
	beq	$a0, $s1, .LBB14_89
# %bb.88:                               # %if.then.i.i120.7.i
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_89:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7.i
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB14_91
# %bb.90:                               # %if.then.i.i120.8.i
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_91:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8.i
	ld.d	$a0, $sp, 8
	beq	$a0, $fp, .LBB14_93
# %bb.92:                               # %if.then.i.i120.9.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_93:                              # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E)
	addi.d	$a1, $a1, %pc_lo12(_ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E)
	pcalau12i	$a2, %pc_hi20(__dso_handle)
	addi.d	$a2, $a2, %pc_lo12(__dso_handle)
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.LBB14_94:                              # %lpad.i.body.thread.i
.Ltmp90:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 296
	beq	$a0, $s4, .LBB14_103
	b	.LBB14_114
.LBB14_95:                              # %lpad23.i
.Ltmp87:                                # EH_LABEL
	b	.LBB14_97
.LBB14_96:                              # %lpad19.i
.Ltmp84:                                # EH_LABEL
.LBB14_97:                              # %arraydestroy.body67.preheader.i
	move	$fp, $a0
	addi.d	$s1, $s0, -16
	addi.d	$s0, $sp, 8
	b	.LBB14_99
	.p2align	4, , 16
.LBB14_98:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i
                                        #   in Loop: Header=BB14_99 Depth=1
	addi.d	$a0, $s1, -16
	addi.d	$s1, $s1, -32
	beq	$a0, $s0, .LBB14_112
.LBB14_99:                              # %arraydestroy.body67.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, -16
	beq	$s1, $a0, .LBB14_98
# %bb.100:                              # %if.then.i.i129.i
                                        #   in Loop: Header=BB14_99 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB14_98
.LBB14_101:                             # %lpad.i.body.i
.Ltmp111:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 328
	pcaddu18i	$ra, %call36(_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	bnez	$a0, .LBB14_113
# %bb.102:                              # %lpad38.body.i
	ld.d	$a0, $sp, 296
	bne	$a0, $s4, .LBB14_114
.LBB14_103:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i
	ld.d	$a0, $sp, 264
	bne	$a0, $s3, .LBB14_115
.LBB14_104:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.1.i
	ld.d	$a0, $sp, 232
	bne	$a0, $s2, .LBB14_116
.LBB14_105:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.2.i
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 216
	bne	$a0, $a1, .LBB14_117
.LBB14_106:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.3.i
	ld.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	bne	$a0, $a1, .LBB14_118
.LBB14_107:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.4.i
	ld.d	$a0, $sp, 136
	addi.d	$a1, $sp, 152
	bne	$a0, $a1, .LBB14_119
.LBB14_108:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.5.i
	ld.d	$a0, $sp, 104
	addi.d	$a1, $sp, 120
	bne	$a0, $a1, .LBB14_120
.LBB14_109:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.6.i
	ld.d	$a0, $sp, 72
	addi.d	$a1, $sp, 88
	bne	$a0, $a1, .LBB14_121
.LBB14_110:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.7.i
	ld.d	$a0, $sp, 40
	addi.d	$a1, $sp, 56
	bne	$a0, $a1, .LBB14_122
.LBB14_111:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.8.i
	ld.d	$a0, $sp, 8
	addi.d	$a1, $sp, 24
	bne	$a0, $a1, .LBB14_123
.LBB14_112:                             # %cleanup.done.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_113:                             # %if.then.i.i.i.i
	ld.d	$a1, $s5, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296
	beq	$a0, $s4, .LBB14_103
.LBB14_114:                             # %if.then.i.i122.i
	ld.d	$a1, $sp, 312
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264
	beq	$a0, $s3, .LBB14_104
.LBB14_115:                             # %if.then.i.i122.1.i
	ld.d	$a1, $sp, 280
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	beq	$a0, $s2, .LBB14_105
.LBB14_116:                             # %if.then.i.i122.2.i
	ld.d	$a1, $sp, 248
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 216
	beq	$a0, $a1, .LBB14_106
.LBB14_117:                             # %if.then.i.i122.3.i
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	beq	$a0, $a1, .LBB14_107
.LBB14_118:                             # %if.then.i.i122.4.i
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136
	addi.d	$a1, $sp, 152
	beq	$a0, $a1, .LBB14_108
.LBB14_119:                             # %if.then.i.i122.5.i
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a1, $sp, 120
	beq	$a0, $a1, .LBB14_109
.LBB14_120:                             # %if.then.i.i122.6.i
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	addi.d	$a1, $sp, 88
	beq	$a0, $a1, .LBB14_110
.LBB14_121:                             # %if.then.i.i122.7.i
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	addi.d	$a1, $sp, 56
	beq	$a0, $a1, .LBB14_111
.LBB14_122:                             # %if.then.i.i122.8.i
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	addi.d	$a1, $sp, 24
	beq	$a0, $a1, .LBB14_112
.LBB14_123:                             # %if.then.i.i122.9.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_GLOBAL__sub_I_csv_reporter.cc, .Lfunc_end14-_GLOBAL__sub_I_csv_reporter.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp82-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp82
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin6          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin6          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin6          # >> Call Site 4 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin6          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin6          # >> Call Site 5 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp111-.Lfunc_begin6         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin6          # >> Call Site 6 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin6          # >> Call Site 7 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp111-.Lfunc_begin6         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin6          # >> Call Site 8 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin6          # >> Call Site 9 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp111-.Lfunc_begin6         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin6          # >> Call Site 10 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin6          # >> Call Site 11 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp111-.Lfunc_begin6         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin6          # >> Call Site 12 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin6          # >> Call Site 13 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp111-.Lfunc_begin6         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp111-.Lfunc_begin6         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp111-.Lfunc_begin6         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp111-.Lfunc_begin6         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp111-.Lfunc_begin6         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin6         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Lfunc_end14-.Ltmp110          #   Call between .Ltmp110 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E,@object # @_ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E
	.local	_ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E
	.comm	_ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E,24,8
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.2:
	.asciz	"iterations"
	.size	.L.str.2, 11

	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"real_time"
	.size	.L.str.3, 10

	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"time_unit"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
	.p2align	3, 0x0
.L.str.6:
	.asciz	"bytes_per_second"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
	.p2align	3, 0x0
.L.str.7:
	.asciz	"items_per_second"
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"label"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.9:
	.asciz	"error_occurred"
	.size	.L.str.9, 15

	.type	.L.str.10,@object               # @.str.10
	.p2align	3, 0x0
.L.str.10:
	.asciz	"error_message"
	.size	.L.str.10, 14

	.hidden	__dso_handle
	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"\"\""
	.size	.L.str.11, 3

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	","
	.size	.L.str.12, 2

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	",\""
	.size	.L.str.13, 3

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\""
	.size	.L.str.14, 2

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"\n"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"All counters must be present in each run. "
	.size	.L.str.16, 43

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Counter named \""
	.size	.L.str.17, 16

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\" was not in a run after being added to the header"
	.size	.L.str.18, 51

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	",,"
	.size	.L.str.19, 3

	.hidden	_ZTVN9benchmark11CSVReporterE   # @_ZTVN9benchmark11CSVReporterE
	.type	_ZTVN9benchmark11CSVReporterE,@object
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN9benchmark11CSVReporterE
	.p2align	3, 0x0
_ZTVN9benchmark11CSVReporterE:
	.dword	0
	.dword	_ZTIN9benchmark11CSVReporterE
	.dword	_ZN9benchmark11CSVReporter13ReportContextERKNS_17BenchmarkReporter7ContextE
	.dword	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
	.dword	_ZN9benchmark11CSVReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE
	.dword	_ZN9benchmark17BenchmarkReporter8FinalizeEv
	.dword	_ZN9benchmark11CSVReporterD2Ev
	.dword	_ZN9benchmark11CSVReporterD0Ev
	.size	_ZTVN9benchmark11CSVReporterE, 64

	.hidden	_ZTIN9benchmark11CSVReporterE   # @_ZTIN9benchmark11CSVReporterE
	.type	_ZTIN9benchmark11CSVReporterE,@object
	.globl	_ZTIN9benchmark11CSVReporterE
	.p2align	3, 0x0
_ZTIN9benchmark11CSVReporterE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN9benchmark11CSVReporterE
	.dword	_ZTIN9benchmark17BenchmarkReporterE
	.size	_ZTIN9benchmark11CSVReporterE, 24

	.hidden	_ZTSN9benchmark11CSVReporterE   # @_ZTSN9benchmark11CSVReporterE
	.type	_ZTSN9benchmark11CSVReporterE,@object
	.section	.rodata,"a",@progbits
	.globl	_ZTSN9benchmark11CSVReporterE
_ZTSN9benchmark11CSVReporterE:
	.asciz	"N9benchmark11CSVReporterE"
	.size	_ZTSN9benchmark11CSVReporterE, 26

	.hidden	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log # @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.type	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,@object
	.section	.bss._ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,"awG",@nobits,_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,comdat
	.weak	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.p2align	3, 0x0
_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log:
	.space	8
	.size	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, 8

	.hidden	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log # @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.type	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,@object
	.section	.bss._ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,"awG",@nobits,_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,comdat
	.weak	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.p2align	3, 0x0
_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log:
	.dword	0                               # 0x0
	.size	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, 8

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"s"
	.size	.L.str.20, 2

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"ms"
	.size	.L.str.21, 3

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"us"
	.size	.L.str.22, 3

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"ns"
	.size	.L.str.23, 3

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"map::at"
	.size	.L.str.25, 8

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"basic_string::append"
	.size	.L.str.27, 21

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_csv_reporter.cc
	.type	.Lswitch.table._ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE,@object # @switch.table._ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table._ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE:
	.dword	.L.str.23
	.dword	.L.str.22
	.dword	.L.str.21
	.dword	.L.str.20
	.size	.Lswitch.table._ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE, 32

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
	.addrsig_sym _GLOBAL__sub_I_csv_reporter.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZN9benchmark12_GLOBAL__N_18elementsB5cxx11E
	.addrsig_sym __dso_handle
	.addrsig_sym _ZTIN9benchmark11CSVReporterE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSN9benchmark11CSVReporterE
	.addrsig_sym _ZTIN9benchmark17BenchmarkReporterE
	.addrsig_sym _ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
