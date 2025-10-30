	.file	"Variable.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN2PP8VariableC2Ev             # -- Begin function _ZN2PP8VariableC2Ev
	.p2align	5
	.type	_ZN2PP8VariableC2Ev,@function
_ZN2PP8VariableC2Ev:                    # @_ZN2PP8VariableC2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	addi.d	$s4, $a0, 16
	st.d	$s4, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	addi.d	$s0, $a0, 32
	st.d	$zero, $a0, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 40
	st.d	$zero, $a0, 72
	vst	$vr0, $a0, 80
	addi.d	$s1, $a0, 104
	addi.d	$s5, $a0, 120
	st.d	$s5, $a0, 104
	st.d	$zero, $a0, 112
	st.b	$zero, $a0, 120
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	ori	$a4, $zero, 17
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont
	addi.d	$s2, $sp, 32
	st.d	$s2, $sp, 16
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 48
.Ltmp2:                                 # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.2:                                # %call2.i5.i.noexc
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ld.d	$s3, $fp, 40
	ld.d	$a0, $fp, 48
	beq	$s3, $a0, .LBB0_5
# %bb.3:                                # %if.then.i.i8
	addi.d	$a0, $s3, 16
	st.d	$a0, $s3, 0
	ld.d	$a1, $sp, 16
	beq	$a1, $s2, .LBB0_8
# %bb.4:                                # %if.else.i.i.i
	st.d	$a1, $s3, 0
	ld.d	$a0, $sp, 32
	ld.d	$s6, $sp, 24
	st.d	$a0, $s3, 16
	b	.LBB0_9
.LBB0_5:                                # %if.else.i.i
.Ltmp5:                                 # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.6:                                # %invoke.cont8
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB0_10
# %bb.7:                                # %if.then.i.i11
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_10
.LBB0_8:                                # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i
	ld.d	$s6, $sp, 24
	addi.d	$a2, $s6, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_9:                                # %invoke.cont8.thread
	ld.d	$a0, $fp, 40
	st.d	$s6, $s3, 8
	st.d	$s2, $sp, 16
	st.d	$zero, $sp, 24
	addi.d	$a0, $a0, 32
	st.d	$a0, $fp, 40
.LBB0_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	ld.d	$a2, $fp, 112
	st.d	$a0, $fp, 56
	st.w	$zero, $fp, 64
	st.b	$zero, $fp, 96
.Ltmp8:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a3, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s1
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.11:                               # %invoke.cont12
	st.b	$zero, $fp, 97
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
.LBB0_12:                               # %lpad7
.Ltmp7:                                 # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$s3, $a0
	bne	$a2, $s2, .LBB0_17
# %bb.13:                               # %ehcleanup14
	ld.d	$a0, $s1, 0
	addi.d	$s1, $fp, 72
	bne	$a0, $s5, .LBB0_20
.LBB0_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB0_21
.LBB0_15:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bne	$a0, $s4, .LBB0_22
.LBB0_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_17:                               # %if.then.i.i20
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	addi.d	$s1, $fp, 72
	beq	$a0, $s5, .LBB0_14
	b	.LBB0_20
.LBB0_18:                               # %lpad5
.Ltmp4:                                 # EH_LABEL
	move	$s3, $a0
	ld.d	$a0, $s1, 0
	addi.d	$s1, $fp, 72
	beq	$a0, $s5, .LBB0_14
	b	.LBB0_20
.LBB0_19:                               # %lpad
.Ltmp10:                                # EH_LABEL
	move	$s3, $a0
	ld.d	$a0, $s1, 0
	addi.d	$s1, $fp, 72
	beq	$a0, $s5, .LBB0_14
.LBB0_20:                               # %if.then.i.i27
	ld.d	$a1, $s5, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB0_15
.LBB0_21:                               # %if.then.i.i.i
	ld.d	$a1, $fp, 88
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beq	$a0, $s4, .LBB0_16
.LBB0_22:                               # %if.then.i.i35
	ld.d	$a1, $s4, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN2PP8VariableC2Ev, .Lfunc_end0-_ZN2PP8VariableC2Ev
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
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp8-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Lfunc_end0-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
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
	beq	$a0, $s0, .LBB1_6
# %bb.1:                                # %for.body.i.preheader
	addi.d	$s1, $a0, 16
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s1, 16
	addi.d	$s1, $s1, 32
	beq	$a0, $s0, .LBB1_5
.LBB1_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, -16
	beq	$s1, $a0, .LBB1_2
# %bb.4:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_5:                                # %invoke.contthread-pre-split
	ld.d	$a0, $fp, 0
.LBB1_6:                                # %invoke.cont
	beqz	$a0, .LBB1_8
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
.LBB1_8:                                # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .Lfunc_end1-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN2PP8VariableC2Ei             # -- Begin function _ZN2PP8VariableC2Ei
	.p2align	5
	.type	_ZN2PP8VariableC2Ei,@function
_ZN2PP8VariableC2Ei:                    # @_ZN2PP8VariableC2Ei
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$a2, $a0, 16
	st.d	$a2, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	st.d	$zero, $a0, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 40
	st.d	$zero, $a0, 72
	vst	$vr0, $a0, 80
	addi.d	$a2, $a0, 120
	st.d	$a2, $a0, 104
	st.d	$zero, $a0, 112
	st.b	$zero, $a0, 120
	pcalau12i	$a0, %pc_hi20(_ZN2PPL10index_baseE)
	st.w	$a1, $a0, %pc_lo12(_ZN2PPL10index_baseE)
	ret
.Lfunc_end2:
	.size	_ZN2PP8VariableC2Ei, .Lfunc_end2-_ZN2PP8VariableC2Ei
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_bS6_ # -- Begin function _ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_bS6_
	.p2align	5
	.type	_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_bS6_,@function
_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_bS6_: # @_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_bS6_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	move	$s1, $a4
	move	$s2, $a3
	move	$s5, $a2
	move	$fp, $a0
	addi.d	$s6, $a0, 16
	st.d	$s6, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	addi.d	$s0, $a0, 32
	st.d	$zero, $a0, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 40
	addi.d	$s7, $a0, 72
	st.d	$zero, $a0, 72
	vst	$vr0, $a0, 80
	addi.d	$s3, $a0, 104
	addi.d	$s8, $a0, 120
	st.d	$s8, $a0, 104
	st.d	$zero, $a0, 112
	st.b	$zero, $a0, 120
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.d	$s4, $fp, 40
	ld.d	$a0, $fp, 48
	beq	$s4, $a0, .LBB3_8
# %bb.2:                                # %if.then.i
	addi.d	$a0, $s4, 16
	st.d	$a0, $s4, 0
	ld.d	$a1, $s5, 8
	ld.d	$s5, $s5, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 16
	bltu	$a1, $a2, .LBB3_5
# %bb.3:                                # %if.then.i.i.i
.Ltmp13:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.4:                                # %call.i4.i.i.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $s4, 0
	st.d	$a1, $s4, 16
.LBB3_5:                                # %if.end.i.i.i
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB3_10
# %bb.6:                                # %if.end.i.i.i
	bnez	$a1, .LBB3_9
# %bb.7:                                # %if.then.i.i.i.i
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB3_10
.LBB3_8:                                # %if.else.i
.Ltmp15:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
	b	.LBB3_11
.LBB3_9:                                # %if.end.i.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 40
	st.d	$a0, $s4, 8
	addi.d	$a0, $a1, 32
	st.d	$a0, $fp, 40
.LBB3_11:                               # %invoke.cont4
	st.d	$zero, $fp, 56
	st.w	$zero, $fp, 64
	st.b	$s2, $fp, 96
.Ltmp17:                                # EH_LABEL
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.12:                               # %invoke.cont7
	st.b	$zero, $fp, 97
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
.LBB3_13:                               # %lpad
.Ltmp19:                                # EH_LABEL
	ld.d	$a2, $s3, 0
	move	$s1, $a0
	bne	$a2, $s8, .LBB3_17
# %bb.14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $s7, 0
	bnez	$a0, .LBB3_18
.LBB3_15:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bne	$a0, $s6, .LBB3_19
.LBB3_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_17:                               # %if.then.i.i
	ld.d	$a0, $s8, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB3_15
.LBB3_18:                               # %if.then.i.i.i8
	ld.d	$a1, $fp, 88
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beq	$a0, $s6, .LBB3_16
.LBB3_19:                               # %if.then.i.i10
	ld.d	$a1, $s6, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_bS6_, .Lfunc_end3-_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_bS6_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp16-.Ltmp11                #   Call between .Ltmp11 and .Ltmp16
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end3-.Ltmp18            #   Call between .Ltmp18 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	addi.d	$s4, $a0, 16
	st.d	$s4, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	addi.d	$s0, $a0, 32
	st.d	$zero, $a0, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 40
	st.d	$zero, $a0, 72
	vst	$vr0, $a0, 80
	addi.d	$s1, $a0, 104
	addi.d	$s5, $a0, 120
	st.d	$s5, $a0, 104
	st.d	$zero, $a0, 112
	st.b	$zero, $a0, 120
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.1:                                # %invoke.cont
	addi.d	$s2, $sp, 32
	st.d	$s2, $sp, 16
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 48
.Ltmp22:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.2:                                # %call2.i5.i.noexc
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ld.d	$s3, $fp, 40
	ld.d	$a0, $fp, 48
	beq	$s3, $a0, .LBB4_5
# %bb.3:                                # %if.then.i.i6
	addi.d	$a0, $s3, 16
	st.d	$a0, $s3, 0
	ld.d	$a1, $sp, 16
	beq	$a1, $s2, .LBB4_8
# %bb.4:                                # %if.else.i.i.i
	st.d	$a1, $s3, 0
	ld.d	$a0, $sp, 32
	ld.d	$s6, $sp, 24
	st.d	$a0, $s3, 16
	b	.LBB4_9
.LBB4_5:                                # %if.else.i.i
.Ltmp25:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.6:                                # %invoke.cont8
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB4_10
# %bb.7:                                # %if.then.i.i8
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_10
.LBB4_8:                                # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i
	ld.d	$s6, $sp, 24
	addi.d	$a2, $s6, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_9:                                # %invoke.cont8.thread
	ld.d	$a0, $fp, 40
	st.d	$s6, $s3, 8
	st.d	$s2, $sp, 16
	st.d	$zero, $sp, 24
	addi.d	$a0, $a0, 32
	st.d	$a0, $fp, 40
.LBB4_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	ld.d	$a2, $fp, 112
	st.d	$a0, $fp, 56
	st.w	$zero, $fp, 64
	st.b	$zero, $fp, 96
.Ltmp28:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a3, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s1
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.11:                               # %invoke.cont12
	st.b	$zero, $fp, 97
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
.LBB4_12:                               # %lpad7
.Ltmp27:                                # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$s3, $a0
	bne	$a2, $s2, .LBB4_17
# %bb.13:                               # %ehcleanup14
	ld.d	$a0, $s1, 0
	addi.d	$s1, $fp, 72
	bne	$a0, $s5, .LBB4_20
.LBB4_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB4_21
.LBB4_15:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bne	$a0, $s4, .LBB4_22
.LBB4_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_17:                               # %if.then.i.i15
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	addi.d	$s1, $fp, 72
	beq	$a0, $s5, .LBB4_14
	b	.LBB4_20
.LBB4_18:                               # %lpad5
.Ltmp24:                                # EH_LABEL
	move	$s3, $a0
	ld.d	$a0, $s1, 0
	addi.d	$s1, $fp, 72
	beq	$a0, $s5, .LBB4_14
	b	.LBB4_20
.LBB4_19:                               # %lpad
.Ltmp30:                                # EH_LABEL
	move	$s3, $a0
	ld.d	$a0, $s1, 0
	addi.d	$s1, $fp, 72
	beq	$a0, $s5, .LBB4_14
.LBB4_20:                               # %if.then.i.i22
	ld.d	$a1, $s5, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_15
.LBB4_21:                               # %if.then.i.i.i
	ld.d	$a1, $fp, 88
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beq	$a0, $s4, .LBB4_16
.LBB4_22:                               # %if.then.i.i30
	ld.d	$a1, $s4, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end4-_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp30-.Lfunc_begin2          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin2          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp28-.Ltmp26                #   Call between .Ltmp26 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin2          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Lfunc_end4-.Ltmp29            #   Call between .Ltmp29 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEERS7_IS6_SaIS6_EEiiS6_PSt5dequeIS6_SB_ERNS1_18basic_stringstreamIcS4_S5_EERi # -- Begin function _ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEERS7_IS6_SaIS6_EEiiS6_PSt5dequeIS6_SB_ERNS1_18basic_stringstreamIcS4_S5_EERi
	.p2align	5
	.type	_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEERS7_IS6_SaIS6_EEiiS6_PSt5dequeIS6_SB_ERNS1_18basic_stringstreamIcS4_S5_EERi,@function
_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEERS7_IS6_SaIS6_EEiiS6_PSt5dequeIS6_SB_ERNS1_18basic_stringstreamIcS4_S5_EERi: # @_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEERS7_IS6_SaIS6_EEiiS6_PSt5dequeIS6_SB_ERNS1_18basic_stringstreamIcS4_S5_EERi
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
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
	move	$s1, $a7
	move	$s6, $a6
	move	$s2, $a5
	move	$s3, $a4
	move	$s4, $a3
	move	$s5, $a2
	move	$fp, $a0
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	st.d	$zero, $fp, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 40
	st.d	$zero, $fp, 72
	vst	$vr0, $fp, 80
	addi.d	$s7, $fp, 104
	addi.d	$a0, $fp, 120
	st.d	$a0, $fp, 104
	st.d	$zero, $fp, 112
	st.b	$zero, $fp, 120
.Ltmp31:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.1:                                # %invoke.cont
	addi.w	$s0, $zero, -1
	move	$a0, $s0
	lu32i.d	$a0, 0
	ld.d	$a2, $fp, 112
	st.d	$a0, $fp, 56
	st.w	$zero, $fp, 64
	st.b	$zero, $fp, 96
.Ltmp33:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a3, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s7
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.2:                                # %invoke.cont4
	st.b	$zero, $fp, 97
	addi.d	$s8, $sp, 48
	ld.d	$a1, $s6, 8
	ld.d	$s6, $s6, 0
	st.d	$s8, $sp, 32
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 64
	move	$a0, $s8
	bltu	$a1, $a2, .LBB5_5
# %bb.3:                                # %if.then.i.i
.Ltmp35:                                # EH_LABEL
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.4:                                # %call.i4.i.noexc
	ld.d	$a1, $sp, 64
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 48
.LBB5_5:                                # %if.end.i.i
	ld.d	$s7, $sp, 168
	ld.d	$a7, $sp, 160
	beq	$a1, $s0, .LBB5_9
# %bb.6:                                # %if.end.i.i
	bnez	$a1, .LBB5_8
# %bb.7:                                # %if.then.i.i.i
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB5_9
.LBB5_8:                                # %if.end.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	move	$s0, $a7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a7, $s0
.LBB5_9:                                # %invoke.cont6
	ld.d	$a0, $sp, 64
	st.d	$a0, $sp, 40
.Ltmp38:                                # EH_LABEL
	addi.d	$a5, $sp, 32
	st.d	$s7, $sp, 0
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $s2
	move	$a6, $s1
	pcaddu18i	$ra, %call36(_ZN2PP8Variable13set_var_valueERSt6vectorIiSaIiEERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEiiSA_PSt5dequeISA_SB_ERNS5_18basic_stringstreamIcS8_S9_EERi)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.10:                               # %invoke.cont8
	ld.d	$a0, $sp, 32
	beq	$a0, $s8, .LBB5_12
# %bb.11:                               # %if.then.i.i9
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_12:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB5_13:                               # %lpad7
.Ltmp40:                                # EH_LABEL
	ld.d	$a2, $sp, 32
	move	$s1, $a0
	beq	$a2, $s8, .LBB5_16
# %bb.14:                               # %if.then.i.i12
	ld.d	$a0, $sp, 48
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_16
.LBB5_15:                               # %lpad
.Ltmp37:                                # EH_LABEL
	move	$s1, $a0
.LBB5_16:                               # %ehcleanup
	addi.d	$a0, $fp, 104
	ld.d	$a0, $a0, 0
	addi.d	$s0, $fp, 72
	addi.d	$a1, $fp, 120
	beq	$a0, $a1, .LBB5_18
# %bb.17:                               # %if.then.i.i19
	addi.d	$a1, $fp, 120
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_18:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
	ld.d	$a0, $s0, 0
	addi.d	$s0, $fp, 32
	beqz	$a0, .LBB5_20
# %bb.19:                               # %if.then.i.i.i25
	ld.d	$a1, $fp, 88
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_20:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB5_22
# %bb.21:                               # %if.then.i.i27
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_22:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEERS7_IS6_SaIS6_EEiiS6_PSt5dequeIS6_SB_ERNS1_18basic_stringstreamIcS4_S5_EERi, .Lfunc_end5-_ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEERS7_IS6_SaIS6_EEiiS6_PSt5dequeIS6_SB_ERNS1_18basic_stringstreamIcS4_S5_EERi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp36-.Ltmp31                #   Call between .Ltmp31 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin3          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp38-.Ltmp36                #   Call between .Ltmp36 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin3          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Lfunc_end5-.Ltmp39            #   Call between .Ltmp39 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP8Variable13set_var_valueERSt6vectorIiSaIiEERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEiiSA_PSt5dequeISA_SB_ERNS5_18basic_stringstreamIcS8_S9_EERi # -- Begin function _ZN2PP8Variable13set_var_valueERSt6vectorIiSaIiEERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEiiSA_PSt5dequeISA_SB_ERNS5_18basic_stringstreamIcS8_S9_EERi
	.p2align	5
	.type	_ZN2PP8Variable13set_var_valueERSt6vectorIiSaIiEERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEiiSA_PSt5dequeISA_SB_ERNS5_18basic_stringstreamIcS8_S9_EERi,@function
_ZN2PP8Variable13set_var_valueERSt6vectorIiSaIiEERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEiiSA_PSt5dequeISA_SB_ERNS5_18basic_stringstreamIcS8_S9_EERi: # @_ZN2PP8Variable13set_var_valueERSt6vectorIiSaIiEERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEiiSA_PSt5dequeISA_SB_ERNS5_18basic_stringstreamIcS8_S9_EERi
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
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
	ld.bu	$a0, $a0, 96
	ld.d	$s7, $sp, 144
	move	$s0, $a6
	move	$s1, $a5
	move	$s6, $a4
	move	$s3, $a3
	beqz	$a0, .LBB6_4
# %bb.1:                                # %if.then
	ld.d	$a0, $a7, 16
	ld.d	$a0, $a0, -24
	addi.d	$fp, $a7, 16
	add.d	$a0, $fp, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB6_177
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB6_15
# %bb.3:                                # %if.then.i2.i.i
	ld.bu	$a0, $s2, 67
	b	.LBB6_16
.LBB6_4:                                # %if.end
	move	$s2, $a2
	ld.d	$a2, $a1, 8
	ld.d	$a3, $a1, 0
	ld.w	$a0, $fp, 56
	sub.d	$a2, $a2, $a3
	srai.d	$a2, $a2, 2
	addi.w	$s4, $a2, 0
	bltz	$a0, .LBB6_9
# %bb.5:                                # %if.then21
	beq	$a0, $s4, .LBB6_10
# %bb.6:                                # %if.then24
	ld.d	$a0, $a7, 16
	ld.d	$a0, $a0, -24
	addi.d	$s2, $a7, 16
	add.d	$a0, $s2, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB6_177
# %bb.7:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i421
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB6_53
# %bb.8:                                # %if.then.i2.i.i424
	ld.bu	$a0, $s5, 67
	b	.LBB6_54
.LBB6_9:                                # %if.else
	st.w	$a2, $fp, 56
	st.w	$s3, $fp, 64
.LBB6_10:                               # %if.end75
	ld.d	$a0, $fp, 80
	ld.d	$a2, $fp, 72
	sub.d	$a0, $a0, $a2
	srai.d	$a0, $a0, 2
	bnez	$s4, .LBB6_24
# %bb.11:                               # %if.end75
	addi.w	$a2, $a0, 0
	blez	$a2, .LBB6_24
# %bb.12:                               # %if.then81
	ld.d	$a0, $a7, 16
	ld.d	$a0, $a0, -24
	addi.d	$s2, $a7, 16
	add.d	$a0, $s2, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB6_177
# %bb.13:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i601
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB6_44
# %bb.14:                               # %if.then.i2.i.i604
	ld.bu	$a0, $s4, 67
	b	.LBB6_45
.LBB6_15:                               # %if.end.i.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.LBB6_16:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB6_177
# %bb.17:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i341
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB6_19
# %bb.18:                               # %if.then.i2.i.i344
	ld.bu	$a0, $s4, 67
	b	.LBB6_20
.LBB6_19:                               # %if.end.i.i.i349
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.LBB6_20:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit354
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 16
	ld.d	$a1, $s0, 24
	addi.w	$a3, $s3, -1
	ld.d	$a0, $s0, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB6_23
# %bb.21:                               # %land.lhs.true.i.i.i.i
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB6_29
# %bb.22:                               # %if.then.i.i.i.i
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB6_31
.LBB6_23:                               # %cond.false.i.i.i.i
	srai.d	$a2, $a1, 4
	b	.LBB6_30
.LBB6_24:                               # %if.end120
	blez	$s4, .LBB6_26
# %bb.25:                               # %if.then123
	addi.w	$s5, $a0, 1
	bne	$s5, $s4, .LBB6_62
.LBB6_26:                               # %if.end159
	pcalau12i	$a0, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$a2, $a0, %pc_lo12(_ZN2PPL10index_baseE)
	addi.d	$s0, $fp, 72
	addi.d	$a0, $sp, 55
	move	$s1, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZN2PP12Parser_utilsC1Ei)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 55
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 8
	ld.d	$a2, $s2, 0
	move	$s0, $a0
	ld.d	$s3, $fp, 40
	ld.d	$a0, $fp, 32
	sub.d	$a1, $a1, $a2
	srai.d	$s5, $a1, 5
	add.w	$s4, $s0, $s5
	sub.d	$a1, $s3, $a0
	srai.d	$a1, $a1, 5
	addi.w	$a2, $a1, 0
	addi.d	$s1, $fp, 32
	bge	$a2, $s4, .LBB6_174
# %bb.27:                               # %if.then168
	addi.d	$s6, $sp, 32
	st.d	$s6, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $sp, 32
	bgeu	$a1, $s4, .LBB6_130
# %bb.28:                               # %if.then.i
	sub.d	$a2, $s4, $a1
.Ltmp41:                                # EH_LABEL
	addi.d	$a3, $sp, 16
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
	b	.LBB6_172
.LBB6_29:                               # %cond.true.i.i.i.i
	srli.d	$a2, $a1, 4
.LBB6_30:                               # %cond.end.i.i.i.i
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB6_31:                               # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB6_177
# %bb.32:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i361
	ld.bu	$a1, $s0, 56
	beqz	$a1, .LBB6_34
# %bb.33:                               # %if.then.i2.i.i364
	ld.bu	$a1, $s0, 67
	b	.LBB6_35
.LBB6_34:                               # %if.end.i.i.i369
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB6_35:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit374
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s1, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB6_177
# %bb.36:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i381
	ld.bu	$a1, $s0, 56
	beqz	$a1, .LBB6_38
# %bb.37:                               # %if.then.i2.i.i384
	ld.bu	$a1, $s0, 67
	b	.LBB6_39
.LBB6_38:                               # %if.end.i.i.i389
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB6_39:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit394
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 39
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB6_177
# %bb.40:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i401
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB6_42
# %bb.41:                               # %if.then.i2.i.i404
	ld.bu	$a0, $s0, 67
	b	.LBB6_43
.LBB6_42:                               # %if.end.i.i.i409
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB6_43:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit414
	ext.w.b	$a1, $a0
	move	$a0, $fp
	b	.LBB6_168
.LBB6_44:                               # %if.end.i.i.i609
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.LBB6_45:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit614
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB6_177
# %bb.46:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i621
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB6_48
# %bb.47:                               # %if.then.i2.i.i624
	ld.bu	$a0, $s5, 67
	b	.LBB6_49
.LBB6_48:                               # %if.end.i.i.i629
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.LBB6_49:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit634
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 16
	ld.d	$a1, $s0, 24
	addi.w	$a3, $s3, -1
	ld.d	$a0, $s0, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB6_52
# %bb.50:                               # %land.lhs.true.i.i.i.i195
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB6_65
# %bb.51:                               # %if.then.i.i.i.i199
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB6_67
.LBB6_52:                               # %cond.false.i.i.i.i186
	srai.d	$a2, $a1, 4
	b	.LBB6_66
.LBB6_53:                               # %if.end.i.i.i429
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.LBB6_54:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit434
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s5, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB6_177
# %bb.55:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i441
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB6_57
# %bb.56:                               # %if.then.i2.i.i444
	ld.bu	$a0, $s6, 67
	b	.LBB6_58
.LBB6_57:                               # %if.end.i.i.i449
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.LBB6_58:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit454
	ext.w.b	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 16
	ld.d	$a1, $s0, 24
	addi.w	$a3, $s3, -1
	ld.d	$a0, $s0, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB6_61
# %bb.59:                               # %land.lhs.true.i.i.i.i101
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB6_83
# %bb.60:                               # %if.then.i.i.i.i105
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB6_85
.LBB6_61:                               # %cond.false.i.i.i.i92
	srai.d	$a2, $a1, 4
	b	.LBB6_84
.LBB6_62:                               # %if.then126
	ld.d	$a0, $a7, 16
	ld.d	$a0, $a0, -24
	addi.d	$s2, $a7, 16
	add.d	$a0, $s2, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB6_177
# %bb.63:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i741
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB6_136
# %bb.64:                               # %if.then.i2.i.i744
	ld.bu	$a0, $s4, 67
	b	.LBB6_137
.LBB6_65:                               # %cond.true.i.i.i.i197
	srli.d	$a2, $a1, 4
.LBB6_66:                               # %cond.end.i.i.i.i188
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB6_67:                               # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit201
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s3, $a1, 240
	beqz	$s3, .LBB6_177
# %bb.68:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i641
	ld.bu	$a1, $s3, 56
	beqz	$a1, .LBB6_70
# %bb.69:                               # %if.then.i2.i.i644
	ld.bu	$a1, $s3, 67
	b	.LBB6_71
.LBB6_70:                               # %if.end.i.i.i649
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s4
.LBB6_71:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit654
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 9
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s1, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB6_177
# %bb.72:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i661
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB6_74
# %bb.73:                               # %if.then.i2.i.i664
	ld.bu	$a1, $s1, 67
	b	.LBB6_75
.LBB6_74:                               # %if.end.i.i.i669
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB6_75:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit674
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 49
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB6_177
# %bb.76:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i681
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB6_78
# %bb.77:                               # %if.then.i2.i.i684
	ld.bu	$a0, $s1, 67
	b	.LBB6_79
.LBB6_78:                               # %if.end.i.i.i689
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB6_79:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit694
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 60
	blez	$a0, .LBB6_169
# %bb.80:                               # %if.then104
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 34
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 60
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB6_177
# %bb.81:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i701
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB6_109
# %bb.82:                               # %if.then.i2.i.i704
	ld.bu	$a0, $s3, 67
	b	.LBB6_110
.LBB6_83:                               # %cond.true.i.i.i.i103
	srli.d	$a2, $a1, 4
.LBB6_84:                               # %cond.end.i.i.i.i94
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB6_85:                               # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit107
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s3, $a1, 240
	beqz	$s3, .LBB6_177
# %bb.86:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i461
	ld.bu	$a1, $s3, 56
	beqz	$a1, .LBB6_88
# %bb.87:                               # %if.then.i2.i.i464
	ld.bu	$a1, $s3, 67
	b	.LBB6_89
.LBB6_88:                               # %if.end.i.i.i469
	move	$s5, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s5
.LBB6_89:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit474
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 9
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s1, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB6_177
# %bb.90:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i481
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB6_92
# %bb.91:                               # %if.then.i2.i.i484
	ld.bu	$a1, $s1, 67
	b	.LBB6_93
.LBB6_92:                               # %if.end.i.i.i489
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB6_93:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit494
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 49
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB6_177
# %bb.94:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i501
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB6_96
# %bb.95:                               # %if.then.i2.i.i504
	ld.bu	$a0, $s1, 67
	b	.LBB6_97
.LBB6_96:                               # %if.end.i.i.i509
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB6_97:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit514
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 56
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB6_177
# %bb.98:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i521
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB6_100
# %bb.99:                               # %if.then.i2.i.i524
	ld.bu	$a1, $s1, 67
	b	.LBB6_101
.LBB6_100:                              # %if.end.i.i.i529
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB6_101:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit534
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 27
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB6_177
# %bb.102:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i541
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB6_104
# %bb.103:                              # %if.then.i2.i.i544
	ld.bu	$a1, $s1, 67
	b	.LBB6_105
.LBB6_104:                              # %if.end.i.i.i549
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB6_105:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit554
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 64
	blez	$a0, .LBB6_169
# %bb.106:                              # %if.then56
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 23
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB6_177
# %bb.107:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i561
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB6_114
# %bb.108:                              # %if.then.i2.i.i564
	ld.bu	$a0, $s3, 67
	b	.LBB6_115
.LBB6_109:                              # %if.end.i.i.i709
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.LBB6_110:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit714
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 60
	ld.d	$a2, $s0, 16
	ld.d	$a1, $s0, 24
	addi.w	$a3, $a0, -1
	ld.d	$a0, $s0, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB6_113
# %bb.111:                              # %land.lhs.true.i.i.i.i240
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB6_119
# %bb.112:                              # %if.then.i.i.i.i244
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB6_121
.LBB6_113:                              # %cond.false.i.i.i.i231
	srai.d	$a2, $a1, 4
	b	.LBB6_120
.LBB6_114:                              # %if.end.i.i.i569
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.LBB6_115:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit574
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 64
	ld.d	$a2, $s0, 16
	ld.d	$a1, $s0, 24
	addi.w	$a3, $a0, -1
	ld.d	$a0, $s0, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB6_118
# %bb.116:                              # %land.lhs.true.i.i.i.i152
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB6_124
# %bb.117:                              # %if.then.i.i.i.i156
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB6_126
.LBB6_118:                              # %cond.false.i.i.i.i143
	srai.d	$a2, $a1, 4
	b	.LBB6_125
.LBB6_119:                              # %cond.true.i.i.i.i242
	srli.d	$a2, $a1, 4
.LBB6_120:                              # %cond.end.i.i.i.i233
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB6_121:                              # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit246
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB6_177
# %bb.122:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i721
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB6_128
.LBB6_123:                              # %if.then.i2.i.i584
	ld.bu	$a1, $fp, 67
	b	.LBB6_129
.LBB6_124:                              # %cond.true.i.i.i.i154
	srli.d	$a2, $a1, 4
.LBB6_125:                              # %cond.end.i.i.i.i145
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB6_126:                              # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit158
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB6_177
# %bb.127:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i581
	ld.bu	$a1, $fp, 56
	bnez	$a1, .LBB6_123
.LBB6_128:                              # %if.end.i.i.i589
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB6_129:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit594
	ext.w.b	$a1, $a1
	b	.LBB6_168
.LBB6_130:                              # %if.else.i
	bgeu	$s4, $a1, .LBB6_172
# %bb.131:                              # %if.then7.i
	slli.d	$a1, $s4, 5
	add.d	$s7, $a0, $a1
	beq	$s3, $s7, .LBB6_172
# %bb.132:                              # %for.body.i.i.i.preheader
	add.d	$a0, $a1, $a0
	addi.d	$s8, $a0, 16
	b	.LBB6_134
	.p2align	4, , 16
.LBB6_133:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB6_134 Depth=1
	addi.d	$a0, $s8, 16
	addi.d	$s8, $s8, 32
	beq	$a0, $s3, .LBB6_171
.LBB6_134:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, -16
	beq	$s8, $a0, .LBB6_133
# %bb.135:                              # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB6_134 Depth=1
	ld.d	$a1, $s8, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB6_133
.LBB6_136:                              # %if.end.i.i.i749
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.LBB6_137:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit754
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB6_177
# %bb.138:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i761
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB6_140
# %bb.139:                              # %if.then.i2.i.i764
	ld.bu	$a0, $s6, 67
	b	.LBB6_141
.LBB6_140:                              # %if.end.i.i.i769
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.LBB6_141:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit774
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 16
	ld.d	$a1, $s0, 24
	addi.w	$a3, $s3, -1
	ld.d	$a0, $s0, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB6_144
# %bb.142:                              # %land.lhs.true.i.i.i.i277
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB6_145
# %bb.143:                              # %if.then.i.i.i.i281
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB6_147
.LBB6_144:                              # %cond.false.i.i.i.i268
	srai.d	$a2, $a1, 4
	b	.LBB6_146
.LBB6_145:                              # %cond.true.i.i.i.i279
	srli.d	$a2, $a1, 4
.LBB6_146:                              # %cond.end.i.i.i.i270
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB6_147:                              # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit283
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB6_177
# %bb.148:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i781
	ld.bu	$a1, $s0, 56
	beqz	$a1, .LBB6_150
# %bb.149:                              # %if.then.i2.i.i784
	ld.bu	$a1, $s0, 67
	b	.LBB6_151
.LBB6_150:                              # %if.end.i.i.i789
	move	$s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB6_151:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit794
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 9
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s1, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB6_177
# %bb.152:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i801
	ld.bu	$a1, $s0, 56
	beqz	$a1, .LBB6_154
# %bb.153:                              # %if.then.i2.i.i804
	ld.bu	$a1, $s0, 67
	b	.LBB6_155
.LBB6_154:                              # %if.end.i.i.i809
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB6_155:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit814
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 23
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 56
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB6_177
# %bb.156:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i821
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB6_158
# %bb.157:                              # %if.then.i2.i.i824
	ld.bu	$a1, $fp, 67
	b	.LBB6_159
.LBB6_158:                              # %if.end.i.i.i829
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB6_159:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit834
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 33
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB6_177
# %bb.160:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i841
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB6_162
# %bb.161:                              # %if.then.i2.i.i844
	ld.bu	$a1, $fp, 67
	b	.LBB6_163
.LBB6_162:                              # %if.end.i.i.i849
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB6_163:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit854
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 30
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB6_177
# %bb.164:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i861
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB6_166
# %bb.165:                              # %if.then.i2.i.i864
	ld.bu	$a0, $fp, 67
	b	.LBB6_167
.LBB6_166:                              # %if.end.i.i.i869
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB6_167:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit874
	ext.w.b	$a1, $a0
	move	$a0, $s2
.LBB6_168:                              # %if.end71
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB6_169:                              # %if.end71
	ori	$a0, $zero, 2
	st.w	$a0, $s7, 0
.LBB6_170:                              # %cleanup.cont
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
.LBB6_171:                              # %invoke.cont.i.i
	st.d	$s7, $fp, 40
.LBB6_172:                              # %invoke.cont174
	ld.d	$a0, $sp, 16
	beq	$a0, $s6, .LBB6_174
# %bb.173:                              # %if.then.i.i321
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_174:                              # %if.end177
	addi.w	$a0, $s5, 0
	blez	$a0, .LBB6_170
# %bb.175:                              # %for.body.preheader
	move	$fp, $zero
	slli.d	$s3, $s0, 5
	.p2align	4, , 16
.LBB6_176:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a2, $s1, 0
	add.d	$a1, $a0, $fp
	add.d	$a0, $a2, $s3
	add.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 32
	blt	$s0, $s4, .LBB6_176
	b	.LBB6_170
.LBB6_177:                              # %if.then.i.i.i
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB6_178:                              # %lpad173
.Ltmp43:                                # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s6, .LBB6_180
# %bb.179:                              # %if.then.i.i323
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_180:                              # %ehcleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN2PP8Variable13set_var_valueERSt6vectorIiSaIiEERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEiiSA_PSt5dequeISA_SB_ERNS5_18basic_stringstreamIcS8_S9_EERi, .Lfunc_end6-_ZN2PP8Variable13set_var_valueERSt6vectorIiSaIiEERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEiiSA_PSt5dequeISA_SB_ERNS5_18basic_stringstreamIcS8_S9_EERi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp41-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin4          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp42            #   Call between .Ltmp42 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP8Variable8bump_varERSt6vectorIiSaIiEEiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi # -- Begin function _ZN2PP8Variable8bump_varERSt6vectorIiSaIiEEiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi
	.p2align	5
	.type	_ZN2PP8Variable8bump_varERSt6vectorIiSaIiEEiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi,@function
_ZN2PP8Variable8bump_varERSt6vectorIiSaIiEEiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi: # @_ZN2PP8Variable8bump_varERSt6vectorIiSaIiEEiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -736
	.cfi_def_cfa_offset 736
	st.d	$ra, $sp, 728                   # 8-byte Folded Spill
	st.d	$fp, $sp, 720                   # 8-byte Folded Spill
	st.d	$s0, $sp, 712                   # 8-byte Folded Spill
	st.d	$s1, $sp, 704                   # 8-byte Folded Spill
	st.d	$s2, $sp, 696                   # 8-byte Folded Spill
	st.d	$s3, $sp, 688                   # 8-byte Folded Spill
	st.d	$s4, $sp, 680                   # 8-byte Folded Spill
	st.d	$s5, $sp, 672                   # 8-byte Folded Spill
	st.d	$s6, $sp, 664                   # 8-byte Folded Spill
	st.d	$s7, $sp, 656                   # 8-byte Folded Spill
	st.d	$s8, $sp, 648                   # 8-byte Folded Spill
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
	pcalau12i	$t0, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$t0, $t0, %pc_lo12(_ZN2PPL10index_baseE)
	move	$s1, $a7
	move	$s2, $a6
	move	$s5, $a5
	move	$s3, $a4
	move	$s4, $a3
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 647
	move	$a1, $t0
	pcaddu18i	$ra, %call36(_ZN2PP12Parser_utilsC1Ei)
	jirl	$ra, $ra, 0
	addi.d	$a2, $fp, 72
	addi.d	$a0, $sp, 647
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 32
	slli.d	$s7, $a0, 5
	add.d	$a0, $a2, $s7
	addi.d	$s8, $sp, 496
	st.d	$s8, $sp, 480
	ld.d	$a1, $a0, 8
	ldx.d	$s6, $a2, $s7
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 56
	move	$a0, $s8
	bltu	$a1, $a2, .LBB7_2
# %bb.1:                                # %if.then.i.i
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 480
	st.d	$a1, $sp, 496
.LBB7_2:                                # %if.end.i.i
	addi.w	$s0, $zero, -1
	beq	$a1, $s0, .LBB7_6
# %bb.3:                                # %if.end.i.i
	bnez	$a1, .LBB7_5
# %bb.4:                                # %if.then.i.i.i
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB7_6
.LBB7_5:                                # %if.end.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 56
	st.d	$a0, $sp, 488
	addi.d	$s6, $sp, 464
	ld.d	$a1, $s5, 8
	ld.d	$s5, $s5, 0
	st.d	$s6, $sp, 448
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 56
	move	$a0, $s6
	bltu	$a1, $a2, .LBB7_9
# %bb.7:                                # %if.then.i.i24
.Ltmp44:                                # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.8:                                # %call.i4.i25.noexc
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 448
	st.d	$a1, $sp, 464
.LBB7_9:                                # %if.end.i.i19
	beq	$a1, $s0, .LBB7_13
# %bb.10:                               # %if.end.i.i19
	bnez	$a1, .LBB7_12
# %bb.11:                               # %if.then.i.i.i21
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB7_13
.LBB7_12:                               # %if.end.i.i.i.i22
	addi.d	$a2, $a1, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_13:                               # %invoke.cont
	ld.d	$a0, $sp, 56
	st.d	$a0, $sp, 456
.Ltmp47:                                # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 480
	addi.d	$a4, $sp, 448
	move	$a2, $s4
	move	$a3, $s3
	move	$a5, $s2
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.14:                               # %invoke.cont8
	ld.d	$a0, $sp, 448
	beq	$a0, $s6, .LBB7_16
# %bb.15:                               # %if.then.i.i29
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 480
	beq	$a0, $s8, .LBB7_18
# %bb.17:                               # %if.then.i.i32
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_18:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
.Ltmp50:                                # EH_LABEL
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.19:                               # %invoke.cont15
	ld.w	$a0, $sp, 544
	ld.d	$a2, $sp, 736
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB7_22
# %bb.20:                               # %if.then19
.Ltmp59:                                # EH_LABEL
	addi.d	$a0, $sp, 512
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN2PP4Word7get_intERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.21:                               # %invoke.cont21
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	addi.d	$a0, $sp, 72
.Ltmp62:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
	b	.LBB7_24
.LBB7_22:                               # %if.else
.Ltmp53:                                # EH_LABEL
	addi.d	$a0, $sp, 512
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN2PP4Word10get_doubleERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.23:                               # %invoke.cont40
	ld.d	$a0, $sp, 72
	ld.d	$a1, $a0, -24
	addi.d	$a0, $sp, 72
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 15
	st.d	$a2, $a1, 8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
.LBB7_24:                               # %if.end46
	ld.d	$a0, $sp, 120
	addi.d	$s0, $sp, 40
	st.d	$s0, $sp, 24
	st.d	$zero, $sp, 32
	st.b	$zero, $sp, 40
	beqz	$a0, .LBB7_27
# %bb.25:                               # %if.end46
	ld.d	$a1, $sp, 104
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB7_27
# %bb.26:                               # %if.then.i.i57
	ld.d	$a3, $sp, 112
	sub.d	$a4, $a0, $a3
.Ltmp65:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
	b	.LBB7_28
.LBB7_27:                               # %if.else.i.i
	addi.d	$a1, $sp, 152
.Ltmp67:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
.LBB7_28:                               # %invoke.cont48
	ld.d	$a2, $fp, 32
	ldx.d	$a0, $a2, $s7
	ld.d	$a1, $sp, 24
	add.d	$fp, $a2, $s7
	addi.d	$a2, $fp, 16
	beq	$a0, $a2, .LBB7_31
# %bb.29:                               # %invoke.cont.thread.i
	beq	$a1, $s0, .LBB7_35
# %bb.30:                               # %if.then24.i
	ld.d	$a2, $a2, 0
	b	.LBB7_33
.LBB7_31:                               # %invoke.cont.i
	beq	$a1, $s0, .LBB7_35
# %bb.32:
	move	$a0, $zero
                                        # implicit-def: $r6
.LBB7_33:                               # %if.end26.i
	st.d	$a1, $fp, 0
	ld.d	$a1, $sp, 32
	st.d	$a1, $fp, 8
	ld.d	$a1, $sp, 40
	st.d	$a1, $fp, 16
	beqz	$a0, .LBB7_39
# %bb.34:                               # %if.then30.i
	st.d	$a0, $sp, 24
	st.d	$a2, $sp, 40
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB7_42
	b	.LBB7_43
.LBB7_35:                               # %if.then9.i
	addi.d	$a2, $sp, 24
	beq	$a2, $fp, .LBB7_46
# %bb.36:                               # %if.then10.i
	ld.d	$a2, $sp, 32
	beqz	$a2, .LBB7_41
# %bb.37:                               # %if.then10.i
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB7_40
# %bb.38:                               # %if.then.i25.i
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB7_41
.LBB7_39:                               # %if.else31.i
	st.d	$s0, $sp, 24
	move	$a0, $s0
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB7_42
	b	.LBB7_43
.LBB7_40:                               # %if.end.i.i.i
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_41:                               # %if.end18.i
	ld.d	$a0, $sp, 32
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 24
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	beq	$a0, $s0, .LBB7_43
.LBB7_42:                               # %if.then.i.i63
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$fp, $a0, %got_pc_lo12(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 56
	ld.d	$a1, $fp, 64
	ld.d	$a0, $a0, -24
	ld.d	$a2, $fp, 72
	addi.d	$s0, $sp, 56
	stx.d	$a1, $a0, $s0
	st.d	$a2, $sp, 72
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 152
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 168
	st.d	$a1, $sp, 80
	beq	$a0, $a2, .LBB7_45
# %bb.44:                               # %if.then.i.i.i.i.i
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_45:                               # %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 80
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 56
	ld.d	$a1, $fp, 24
	ld.d	$a0, $a0, -24
	stx.d	$a1, $a0, $s0
	st.d	$zero, $sp, 64
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 512
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 712                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 720                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 728                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 736
	ret
.LBB7_46:
	move	$a0, $a1
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB7_42
	b	.LBB7_43
.LBB7_47:                               # %lpad35
.Ltmp58:                                # EH_LABEL
	b	.LBB7_51
.LBB7_48:                               # %lpad23
.Ltmp64:                                # EH_LABEL
	b	.LBB7_51
.LBB7_49:                               # %lpad28
.Ltmp55:                                # EH_LABEL
	b	.LBB7_51
.LBB7_50:                               # %lpad20
.Ltmp61:                                # EH_LABEL
.LBB7_51:                               # %ehcleanup54
	move	$fp, $a0
.LBB7_52:                               # %ehcleanup54
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 512
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_53:                               # %lpad
.Ltmp46:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 480
	beq	$a0, $s8, .LBB7_59
	b	.LBB7_61
.LBB7_54:                               # %lpad.i.i
.Ltmp69:                                # EH_LABEL
	ld.d	$a2, $sp, 24
	move	$fp, $a0
	beq	$a2, $s0, .LBB7_52
# %bb.55:                               # %if.then.i.i.i.i
	ld.d	$a0, $sp, 40
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_52
.LBB7_56:                               # %lpad14
.Ltmp52:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 512
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_57:                               # %lpad7
.Ltmp49:                                # EH_LABEL
	ld.d	$a2, $sp, 448
	move	$fp, $a0
	bne	$a2, $s6, .LBB7_60
# %bb.58:                               # %ehcleanup
	ld.d	$a0, $sp, 480
	bne	$a0, $s8, .LBB7_61
.LBB7_59:                               # %ehcleanup57
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_60:                               # %if.then.i.i39
	ld.d	$a0, $sp, 464
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480
	beq	$a0, $s8, .LBB7_59
.LBB7_61:                               # %if.then.i.i46
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN2PP8Variable8bump_varERSt6vectorIiSaIiEEiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi, .Lfunc_end7-_ZN2PP8Variable8bump_varERSt6vectorIiSaIiEEiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp44-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin5          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp47-.Ltmp45                #   Call between .Ltmp45 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin5          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp50-.Ltmp48                #   Call between .Ltmp48 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin5          # >> Call Site 6 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin5          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin5          # >> Call Site 7 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin5          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin5          # >> Call Site 8 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin5          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin5          # >> Call Site 9 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin5          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin5          # >> Call Site 10 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin5          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin5          # >> Call Site 11 <<
	.uleb128 .Ltmp68-.Ltmp65                #   Call between .Ltmp65 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin5          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin5          # >> Call Site 12 <<
	.uleb128 .Lfunc_end7-.Ltmp68            #   Call between .Ltmp68 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi # -- Begin function _ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi
	.p2align	5
	.type	_ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi,@function
_ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi: # @_ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi
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
	move	$s8, $a0
	ld.bu	$a0, $a0, 96
	move	$fp, $a7
	move	$s1, $a5
	move	$s2, $a4
	move	$s6, $a3
	move	$s4, $a2
	beqz	$a0, .LBB8_4
# %bb.1:                                # %if.then
	ld.d	$a0, $a6, 16
	ld.d	$a0, $a0, -24
	addi.d	$s0, $a6, 16
	add.d	$a0, $s0, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_141
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_14
# %bb.3:                                # %if.then.i2.i.i
	ld.bu	$a0, $s3, 67
	b	.LBB8_15
.LBB8_4:                                # %if.end
	move	$s3, $a1
	ld.d	$a1, $a1, 8
	ld.d	$s7, $s3, 0
	ld.w	$a0, $s8, 56
	sub.d	$a1, $a1, $s7
	srai.d	$a1, $a1, 2
	addi.w	$s5, $a1, 1
	bltz	$a0, .LBB8_9
# %bb.5:                                # %if.then21
	beq	$a0, $s5, .LBB8_10
# %bb.6:                                # %if.then24
	ld.d	$a0, $a6, 16
	ld.d	$a0, $a0, -24
	addi.d	$s3, $a6, 16
	add.d	$a0, $s3, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB8_141
# %bb.7:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i338
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB8_82
# %bb.8:                                # %if.then.i2.i.i341
	ld.bu	$a0, $s7, 67
	b	.LBB8_83
.LBB8_9:                                # %if.else
	st.w	$s5, $s8, 56
	st.w	$s4, $s8, 64
.LBB8_10:                               # %if.end75
	ld.d	$a0, $s8, 80
	ld.d	$s5, $s8, 72
	sub.d	$a2, $a0, $s5
	srli.d	$a2, $a2, 2
	addi.w	$a2, $a2, 0
	blez	$a2, .LBB8_38
# %bb.11:                               # %if.then79
	ld.d	$a0, $a6, 16
	ld.d	$a0, $a0, -24
	addi.d	$s3, $a6, 16
	add.d	$a0, $s3, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB8_141
# %bb.12:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i518
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB8_51
# %bb.13:                               # %if.then.i2.i.i521
	ld.bu	$a0, $s5, 67
	b	.LBB8_52
.LBB8_14:                               # %if.end.i.i.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.LBB8_15:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB8_141
# %bb.16:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB8_18
# %bb.17:                               # %if.then.i2.i.i261
	ld.bu	$a0, $s5, 67
	b	.LBB8_19
.LBB8_18:                               # %if.end.i.i.i266
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.LBB8_19:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit271
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	addi.w	$a3, $s4, -1
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB8_22
# %bb.20:                               # %land.lhs.true.i.i.i.i
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB8_23
# %bb.21:                               # %if.then.i.i.i.i
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB8_25
.LBB8_22:                               # %cond.false.i.i.i.i
	srai.d	$a2, $a1, 4
	b	.LBB8_24
.LBB8_23:                               # %cond.true.i.i.i.i
	srli.d	$a2, $a1, 4
.LBB8_24:                               # %cond.end.i.i.i.i
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB8_25:                               # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB8_141
# %bb.26:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i278
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB8_28
# %bb.27:                               # %if.then.i2.i.i281
	ld.bu	$a1, $s1, 67
	b	.LBB8_29
.LBB8_28:                               # %if.end.i.i.i286
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB8_29:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit291
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB8_141
# %bb.30:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i298
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB8_32
# %bb.31:                               # %if.then.i2.i.i301
	ld.bu	$a1, $s1, 67
	b	.LBB8_33
.LBB8_32:                               # %if.end.i.i.i306
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB8_33:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit311
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 39
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB8_141
# %bb.34:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i318
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB8_36
# %bb.35:                               # %if.then.i2.i.i321
	ld.bu	$a0, $s1, 67
	b	.LBB8_37
.LBB8_36:                               # %if.end.i.i.i326
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB8_37:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit331
	ext.w.b	$a1, $a0
	move	$a0, $s0
	b	.LBB8_138
.LBB8_38:                               # %if.end121
	st.w	$s4, $s8, 60
	beq	$a0, $s5, .LBB8_40
# %bb.39:                               # %invoke.cont.i.i
	st.d	$s5, $s8, 80
	ld.d	$a0, $s3, 8
	sub.d	$a0, $a0, $s7
	srli.d	$a1, $a0, 2
	move	$a0, $s5
.LBB8_40:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit
	addi.w	$a1, $a1, 0
	blez	$a1, .LBB8_140
# %bb.41:                               # %for.body.lr.ph
	move	$s2, $zero
	move	$s4, $zero
	ld.d	$a1, $s8, 88
	addi.w	$a2, $zero, -4
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	lu52i.d	$s0, $a2, 511
	b	.LBB8_44
	.p2align	4, , 16
.LBB8_42:                               # %if.then.i
                                        #   in Loop: Header=BB8_44 Depth=1
	ldx.w	$a2, $s7, $s2
	st.w	$a2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s8, 80
.LBB8_43:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB8_44 Depth=1
	ld.d	$a2, $s3, 8
	addi.d	$s4, $s4, 1
	sub.d	$a2, $a2, $s7
	slli.d	$a2, $a2, 30
	srai.d	$a2, $a2, 32
	addi.d	$s2, $s2, 4
	bge	$s4, $a2, .LBB8_140
.LBB8_44:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bne	$a0, $a1, .LBB8_42
# %bb.45:                               # %if.else.i
                                        #   in Loop: Header=BB8_44 Depth=1
	sub.d	$fp, $a1, $s5
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB8_142
# %bb.46:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
                                        #   in Loop: Header=BB8_44 Depth=1
	srai.d	$a0, $fp, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$s6, $a0, $a1
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ldx.w	$a1, $s7, $s2
	move	$s1, $a0
	stx.w	$a1, $a0, $fp
	blez	$fp, .LBB8_48
# %bb.47:                               # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB8_44 Depth=1
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB8_48:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB8_44 Depth=1
	beqz	$s5, .LBB8_50
# %bb.49:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i
                                        #   in Loop: Header=BB8_44 Depth=1
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_50:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB8_44 Depth=1
	add.d	$a0, $s1, $fp
	addi.d	$a0, $a0, 4
	st.d	$s1, $s8, 72
	ld.d	$s7, $s3, 0
	st.d	$a0, $s8, 80
	alsl.d	$a1, $s6, $s1, 2
	st.d	$a1, $s8, 88
	move	$s5, $s1
	b	.LBB8_43
.LBB8_51:                               # %if.end.i.i.i526
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.LBB8_52:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit531
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 24
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s5, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB8_141
# %bb.53:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i538
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB8_55
# %bb.54:                               # %if.then.i2.i.i541
	ld.bu	$a0, $s6, 67
	b	.LBB8_56
.LBB8_55:                               # %if.end.i.i.i546
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.LBB8_56:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit551
	ext.w.b	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	addi.w	$a3, $s4, -1
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB8_59
# %bb.57:                               # %land.lhs.true.i.i.i.i175
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB8_60
# %bb.58:                               # %if.then.i.i.i.i179
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB8_62
.LBB8_59:                               # %cond.false.i.i.i.i166
	srai.d	$a2, $a1, 4
	b	.LBB8_61
.LBB8_60:                               # %cond.true.i.i.i.i177
	srli.d	$a2, $a1, 4
.LBB8_61:                               # %cond.end.i.i.i.i168
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB8_62:                               # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit181
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s4, $a1, 240
	beqz	$s4, .LBB8_141
# %bb.63:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i558
	ld.bu	$a1, $s4, 56
	beqz	$a1, .LBB8_65
# %bb.64:                               # %if.then.i2.i.i561
	ld.bu	$a1, $s4, 67
	b	.LBB8_66
.LBB8_65:                               # %if.end.i.i.i566
	move	$s0, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB8_66:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit571
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 9
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s2, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s2, $a1, 240
	beqz	$s2, .LBB8_141
# %bb.67:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i578
	ld.bu	$a1, $s2, 56
	beqz	$a1, .LBB8_69
# %bb.68:                               # %if.then.i2.i.i581
	ld.bu	$a1, $s2, 67
	b	.LBB8_70
.LBB8_69:                               # %if.end.i.i.i586
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB8_70:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit591
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 46
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB8_141
# %bb.71:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i598
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB8_73
# %bb.72:                               # %if.then.i2.i.i601
	ld.bu	$a0, $s2, 67
	b	.LBB8_74
.LBB8_73:                               # %if.end.i.i.i606
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.LBB8_74:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit611
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 18
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB8_141
# %bb.75:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i618
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB8_77
# %bb.76:                               # %if.then.i2.i.i621
	ld.bu	$a0, $s2, 67
	b	.LBB8_78
.LBB8_77:                               # %if.end.i.i.i626
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.LBB8_78:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit631
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 60
	blez	$a0, .LBB8_139
# %bb.79:                               # %if.then105
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 23
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 60
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB8_141
# %bb.80:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i638
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB8_91
# %bb.81:                               # %if.then.i2.i.i641
	ld.bu	$a0, $s4, 67
	b	.LBB8_92
.LBB8_82:                               # %if.end.i.i.i346
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.LBB8_83:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit351
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 24
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s6, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB8_141
# %bb.84:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i358
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB8_86
# %bb.85:                               # %if.then.i2.i.i361
	ld.bu	$a0, $s7, 67
	b	.LBB8_87
.LBB8_86:                               # %if.end.i.i.i366
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.LBB8_87:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit371
	ext.w.b	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	addi.w	$a3, $s4, -1
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB8_90
# %bb.88:                               # %land.lhs.true.i.i.i.i81
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB8_96
# %bb.89:                               # %if.then.i.i.i.i85
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB8_98
.LBB8_90:                               # %cond.false.i.i.i.i72
	srai.d	$a2, $a1, 4
	b	.LBB8_97
.LBB8_91:                               # %if.end.i.i.i646
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.LBB8_92:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit651
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 60
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	addi.w	$a3, $a0, -1
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB8_95
# %bb.93:                               # %land.lhs.true.i.i.i.i223
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB8_122
# %bb.94:                               # %if.then.i.i.i.i227
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB8_124
.LBB8_95:                               # %cond.false.i.i.i.i214
	srai.d	$a2, $a1, 4
	b	.LBB8_123
.LBB8_96:                               # %cond.true.i.i.i.i83
	srli.d	$a2, $a1, 4
.LBB8_97:                               # %cond.end.i.i.i.i74
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB8_98:                               # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit87
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s4, $a1, 240
	beqz	$s4, .LBB8_141
# %bb.99:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i378
	ld.bu	$a1, $s4, 56
	beqz	$a1, .LBB8_101
# %bb.100:                              # %if.then.i2.i.i381
	ld.bu	$a1, $s4, 67
	b	.LBB8_102
.LBB8_101:                              # %if.end.i.i.i386
	move	$s0, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB8_102:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit391
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 9
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s2, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s2, $a1, 240
	beqz	$s2, .LBB8_141
# %bb.103:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i398
	ld.bu	$a1, $s2, 56
	beqz	$a1, .LBB8_105
# %bb.104:                              # %if.then.i2.i.i401
	ld.bu	$a1, $s2, 67
	b	.LBB8_106
.LBB8_105:                              # %if.end.i.i.i406
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB8_106:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit411
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 62
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB8_141
# %bb.107:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i418
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB8_109
# %bb.108:                              # %if.then.i2.i.i421
	ld.bu	$a0, $s2, 67
	b	.LBB8_110
.LBB8_109:                              # %if.end.i.i.i426
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.LBB8_110:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit431
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 56
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s2, $a1, 240
	beqz	$s2, .LBB8_141
# %bb.111:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i438
	ld.bu	$a1, $s2, 56
	beqz	$a1, .LBB8_113
# %bb.112:                              # %if.then.i2.i.i441
	ld.bu	$a1, $s2, 67
	b	.LBB8_114
.LBB8_113:                              # %if.end.i.i.i446
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB8_114:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit451
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s2, $a1, 240
	beqz	$s2, .LBB8_141
# %bb.115:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i458
	ld.bu	$a1, $s2, 56
	beqz	$a1, .LBB8_117
# %bb.116:                              # %if.then.i2.i.i461
	ld.bu	$a1, $s2, 67
	b	.LBB8_118
.LBB8_117:                              # %if.end.i.i.i466
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB8_118:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit471
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 64
	blez	$a0, .LBB8_139
# %bb.119:                              # %if.then56
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 23
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 64
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB8_141
# %bb.120:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i478
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB8_127
# %bb.121:                              # %if.then.i2.i.i481
	ld.bu	$a0, $s4, 67
	b	.LBB8_128
.LBB8_122:                              # %cond.true.i.i.i.i225
	srli.d	$a2, $a1, 4
.LBB8_123:                              # %cond.end.i.i.i.i216
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB8_124:                              # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit229
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB8_141
# %bb.125:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i658
	ld.bu	$a1, $s0, 56
	beqz	$a1, .LBB8_136
.LBB8_126:                              # %if.then.i2.i.i501
	ld.bu	$a1, $s0, 67
	b	.LBB8_137
.LBB8_127:                              # %if.end.i.i.i486
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.LBB8_128:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit491
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 64
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	addi.w	$a3, $a0, -1
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB8_131
# %bb.129:                              # %land.lhs.true.i.i.i.i132
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB8_132
# %bb.130:                              # %if.then.i.i.i.i136
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB8_134
.LBB8_131:                              # %cond.false.i.i.i.i123
	srai.d	$a2, $a1, 4
	b	.LBB8_133
.LBB8_132:                              # %cond.true.i.i.i.i134
	srli.d	$a2, $a1, 4
.LBB8_133:                              # %cond.end.i.i.i.i125
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB8_134:                              # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit138
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB8_141
# %bb.135:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i498
	ld.bu	$a1, $s0, 56
	bnez	$a1, .LBB8_126
.LBB8_136:                              # %if.end.i.i.i506
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB8_137:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit511
	ext.w.b	$a1, $a1
.LBB8_138:                              # %cleanup.cont.sink.split.sink.split
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB8_139:                              # %cleanup.cont.sink.split
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 0
.LBB8_140:                              # %cleanup.cont
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
.LBB8_141:                              # %if.then.i.i.i251
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB8_142:                              # %if.then.i.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi, .Lfunc_end8-_ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2PP8Variable13get_var_valueERSt6vectorIiSaIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiSA_PSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi # -- Begin function _ZN2PP8Variable13get_var_valueERSt6vectorIiSaIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiSA_PSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi
	.p2align	5
	.type	_ZN2PP8Variable13get_var_valueERSt6vectorIiSaIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiSA_PSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi,@function
_ZN2PP8Variable13get_var_valueERSt6vectorIiSaIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiSA_PSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi: # @_ZN2PP8Variable13get_var_valueERSt6vectorIiSaIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiSA_PSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	.cfi_def_cfa_offset 272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
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
	ld.w	$a1, $a1, 56
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	move	$s6, $a0
	beqz	$a1, .LBB9_5
# %bb.1:                                # %entry
	move	$s1, $a2
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a3, $a0, 2
	addi.w	$a2, $a3, 0
	beqz	$a2, .LBB9_5
# %bb.2:                                # %if.end
	move	$s2, $a7
	move	$s5, $a6
	move	$s3, $a4
	ld.d	$a0, $s0, 80
	ld.d	$a1, $s0, 72
	ld.d	$a4, $sp, 280
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a5, $sp, 272
	addi.w	$a3, $a3, -1
	sub.d	$a4, $a0, $a1
	srli.d	$a4, $a4, 2
	addi.w	$a4, $a4, 0
	bne	$a3, $a4, .LBB9_63
# %bb.3:                                # %for.cond.preheader
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	ori	$a4, $zero, 2
	addi.d	$a3, $s0, 72
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	blt	$a2, $a4, .LBB9_66
# %bb.4:                                # %for.body.lr.ph
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s8, $a2, 16
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a3, $a2, -1
	ori	$s6, $zero, 1
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a2, $a3, 5
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$a2, $a2, %pc_lo12(.L.str.6)
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.23)
	addi.d	$a2, $a2, %pc_lo12(.L.str.23)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s7, $zero
	move	$s3, $zero
	b	.LBB9_14
.LBB9_5:                                # %if.then
	ld.d	$a2, $s0, 32
	addi.d	$a0, $s6, 16
	st.d	$a0, $s6, 0
	ld.d	$a1, $a2, 8
	ld.d	$fp, $a2, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 120
	bltu	$a1, $a2, .LBB9_7
# %bb.6:                                # %if.then.i.i
	addi.d	$a1, $sp, 120
	move	$a0, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120
	st.d	$a0, $s6, 0
	st.d	$a1, $s6, 16
.LBB9_7:                                # %if.end.i.i
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB9_107
# %bb.8:                                # %if.end.i.i
	bnez	$a1, .LBB9_106
# %bb.9:                                # %if.then.i.i.i
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB9_107
.LBB9_10:                               # %if.end.i.i.i827
                                        #   in Loop: Header=BB9_14 Depth=1
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s4
.LBB9_11:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit832
                                        #   in Loop: Header=BB9_14 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB9_12:                               # %if.end115
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 0
	ld.d	$a0, $s0, 80
	ld.d	$a1, $s0, 72
.LBB9_13:                               # %for.inc
                                        #   in Loop: Header=BB9_14 Depth=1
	sub.d	$a2, $a0, $a1
	slli.d	$a2, $a2, 30
	srai.d	$a2, $a2, 32
	addi.d	$s3, $s3, 1
	addi.w	$s6, $s6, 1
	addi.d	$s7, $s7, 4
	bge	$s3, $a2, .LBB9_66
.LBB9_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s1, 0
	ldx.w	$a2, $a2, $s7
	ldx.w	$a3, $a1, $s7
	bge	$a3, $a2, .LBB9_13
# %bb.15:                               # %if.then60
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s8, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB9_225
# %bb.16:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB9_18
# %bb.17:                               # %if.then.i2.i.i662
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB9_19
.LBB9_18:                               # %if.end.i.i.i667
                                        #   in Loop: Header=BB9_14 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.LBB9_19:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit672
                                        #   in Loop: Header=BB9_14 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 24
	move	$a0, $s8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB9_225
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i679
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB9_22
# %bb.21:                               # %if.then.i2.i.i682
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB9_23
.LBB9_22:                               # %if.end.i.i.i687
                                        #   in Loop: Header=BB9_14 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB9_23:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit692
                                        #   in Loop: Header=BB9_14 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4
	move	$a0, $s8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB9_26
# %bb.24:                               # %land.lhs.true.i.i.i.i182
                                        #   in Loop: Header=BB9_14 Depth=1
	ori	$a3, $zero, 15
	bltu	$a3, $a1, .LBB9_27
# %bb.25:                               # %if.then.i.i.i.i186
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	b	.LBB9_29
.LBB9_26:                               # %cond.false.i.i.i.i173
                                        #   in Loop: Header=BB9_14 Depth=1
	srai.d	$a2, $a1, 4
	b	.LBB9_28
.LBB9_27:                               # %cond.true.i.i.i.i184
                                        #   in Loop: Header=BB9_14 Depth=1
	srli.d	$a2, $a1, 4
.LBB9_28:                               # %cond.end.i.i.i.i175
                                        #   in Loop: Header=BB9_14 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB9_29:                               # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit188
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB9_225
# %bb.30:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i699
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB9_32
# %bb.31:                               # %if.then.i2.i.i702
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a1, $fp, 67
	b	.LBB9_33
.LBB9_32:                               # %if.end.i.i.i707
                                        #   in Loop: Header=BB9_14 Depth=1
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s4
.LBB9_33:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit712
                                        #   in Loop: Header=BB9_14 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 9
	move	$a0, $s8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $s5, 8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB9_225
# %bb.34:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i719
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB9_36
# %bb.35:                               # %if.then.i2.i.i722
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a1, $fp, 67
	b	.LBB9_37
.LBB9_36:                               # %if.end.i.i.i727
                                        #   in Loop: Header=BB9_14 Depth=1
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s4
.LBB9_37:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit732
                                        #   in Loop: Header=BB9_14 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 16
	move	$a0, $s8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB9_225
# %bb.38:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i739
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB9_40
# %bb.39:                               # %if.then.i2.i.i742
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a1, $fp, 67
	b	.LBB9_41
.LBB9_40:                               # %if.end.i.i.i747
                                        #   in Loop: Header=BB9_14 Depth=1
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s4
.LBB9_41:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit752
                                        #   in Loop: Header=BB9_14 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 24
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ldx.w	$a1, $a0, $s7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB9_225
# %bb.42:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i759
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB9_44
# %bb.43:                               # %if.then.i2.i.i762
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a1, $fp, 67
	b	.LBB9_45
.LBB9_44:                               # %if.end.i.i.i767
                                        #   in Loop: Header=BB9_14 Depth=1
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s4
.LBB9_45:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit772
                                        #   in Loop: Header=BB9_14 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	ori	$a2, $zero, 34
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 72
	ld.d	$a0, $a0, 0
	ldx.w	$a1, $a0, $s7
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB9_225
# %bb.46:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i779
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB9_48
# %bb.47:                               # %if.then.i2.i.i782
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a1, $fp, 67
	b	.LBB9_49
.LBB9_48:                               # %if.end.i.i.i787
                                        #   in Loop: Header=BB9_14 Depth=1
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s4
.LBB9_49:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit792
                                        #   in Loop: Header=BB9_14 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 60
	blez	$a0, .LBB9_12
# %bb.50:                               # %if.then100
                                        #   in Loop: Header=BB9_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 34
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 60
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB9_225
# %bb.51:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i799
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB9_53
# %bb.52:                               # %if.then.i2.i.i802
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB9_54
.LBB9_53:                               # %if.end.i.i.i807
                                        #   in Loop: Header=BB9_14 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB9_54:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit812
                                        #   in Loop: Header=BB9_14 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 60
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	addi.w	$a3, $a0, -1
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB9_57
# %bb.55:                               # %land.lhs.true.i.i.i.i240
                                        #   in Loop: Header=BB9_14 Depth=1
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB9_58
# %bb.56:                               # %if.then.i.i.i.i244
                                        #   in Loop: Header=BB9_14 Depth=1
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB9_60
.LBB9_57:                               # %cond.false.i.i.i.i231
                                        #   in Loop: Header=BB9_14 Depth=1
	srai.d	$a2, $a1, 4
	b	.LBB9_59
.LBB9_58:                               # %cond.true.i.i.i.i242
                                        #   in Loop: Header=BB9_14 Depth=1
	srli.d	$a2, $a1, 4
.LBB9_59:                               # %cond.end.i.i.i.i233
                                        #   in Loop: Header=BB9_14 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB9_60:                               # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit246
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB9_225
# %bb.61:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i819
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB9_10
# %bb.62:                               # %if.then.i2.i.i822
                                        #   in Loop: Header=BB9_14 Depth=1
	ld.bu	$a1, $fp, 67
	b	.LBB9_11
.LBB9_63:                               # %if.then7
	ld.d	$a0, $a5, 16
	ld.d	$a0, $a0, -24
	addi.d	$fp, $a5, 16
	add.d	$a0, $fp, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB9_225
# %bb.64:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB9_108
# %bb.65:                               # %if.then.i2.i.i
	ld.bu	$a0, $s1, 67
	b	.LBB9_109
.LBB9_66:                               # %for.cond.cleanup
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB9_140
# %bb.67:                               # %for.cond124.preheader
	ld.d	$a1, $s1, 8
	ld.d	$a2, $s1, 0
	sub.d	$a3, $a1, $a2
	srli.d	$a3, $a3, 2
	addi.w	$a3, $a3, 0
	blez	$a3, .LBB9_141
# %bb.68:                               # %for.body129.lr.ph
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	addi.d	$fp, $a3, 16
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	addi.w	$s3, $a3, -1
	pcalau12i	$a3, %pc_hi20(.L.str.3)
	addi.d	$a3, $a3, %pc_lo12(.L.str.3)
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(.L.str.4)
	addi.d	$a3, $a3, %pc_lo12(.L.str.4)
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(.L.str.5)
	addi.d	$a3, $a3, %pc_lo12(.L.str.5)
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a3, $s3, 5
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(.L.str.6)
	addi.d	$a3, $a3, %pc_lo12(.L.str.6)
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	move	$s7, $zero
	move	$s8, $zero
	b	.LBB9_72
	.p2align	4, , 16
.LBB9_69:                               # %if.then.i2.i.i962
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a1, $s4, 67
.LBB9_70:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit972
                                        #   in Loop: Header=BB9_72 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 8
	ld.d	$a2, $s1, 0
.LBB9_71:                               # %for.inc166
                                        #   in Loop: Header=BB9_72 Depth=1
	addi.d	$s8, $s8, 1
	sub.d	$a3, $a1, $a2
	slli.d	$a3, $a3, 30
	srai.d	$a3, $a3, 32
	addi.d	$s7, $s7, 4
	bge	$s8, $a3, .LBB9_139
.LBB9_72:                               # %for.body129
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $a2, $s7
	bgtz	$a3, .LBB9_71
# %bb.73:                               # %if.then133
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB9_225
# %bb.74:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i839
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB9_76
# %bb.75:                               # %if.then.i2.i.i842
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB9_77
.LBB9_76:                               # %if.end.i.i.i847
                                        #   in Loop: Header=BB9_72 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.LBB9_77:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit852
                                        #   in Loop: Header=BB9_72 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 24
	move	$a0, $fp
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB9_225
# %bb.78:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i859
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB9_80
# %bb.79:                               # %if.then.i2.i.i862
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a0, $s6, 67
	b	.LBB9_81
.LBB9_80:                               # %if.end.i.i.i867
                                        #   in Loop: Header=BB9_72 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.LBB9_81:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit872
                                        #   in Loop: Header=BB9_72 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4
	move	$a0, $fp
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB9_84
# %bb.82:                               # %land.lhs.true.i.i.i.i296
                                        #   in Loop: Header=BB9_72 Depth=1
	ori	$a3, $zero, 15
	bltu	$a3, $a1, .LBB9_85
# %bb.83:                               # %if.then.i.i.i.i300
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	b	.LBB9_87
.LBB9_84:                               # %cond.false.i.i.i.i287
                                        #   in Loop: Header=BB9_72 Depth=1
	srai.d	$a2, $a1, 4
	b	.LBB9_86
.LBB9_85:                               # %cond.true.i.i.i.i298
                                        #   in Loop: Header=BB9_72 Depth=1
	srli.d	$a2, $a1, 4
.LBB9_86:                               # %cond.end.i.i.i.i289
                                        #   in Loop: Header=BB9_72 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB9_87:                               # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit302
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s4, $a1, 240
	beqz	$s4, .LBB9_225
# %bb.88:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i879
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a1, $s4, 56
	beqz	$a1, .LBB9_90
# %bb.89:                               # %if.then.i2.i.i882
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a1, $s4, 67
	b	.LBB9_91
.LBB9_90:                               # %if.end.i.i.i887
                                        #   in Loop: Header=BB9_72 Depth=1
	move	$s6, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s6
.LBB9_91:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit892
                                        #   in Loop: Header=BB9_72 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 9
	move	$a0, $fp
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $s5, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s4, $a1, 240
	beqz	$s4, .LBB9_225
# %bb.92:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i899
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a1, $s4, 56
	beqz	$a1, .LBB9_94
# %bb.93:                               # %if.then.i2.i.i902
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a1, $s4, 67
	b	.LBB9_95
.LBB9_94:                               # %if.end.i.i.i907
                                        #   in Loop: Header=BB9_72 Depth=1
	move	$s6, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s6
.LBB9_95:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit912
                                        #   in Loop: Header=BB9_72 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s4, $a1, 240
	beqz	$s4, .LBB9_225
# %bb.96:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i919
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a1, $s4, 56
	beqz	$a1, .LBB9_98
# %bb.97:                               # %if.then.i2.i.i922
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a1, $s4, 67
	b	.LBB9_99
.LBB9_98:                               # %if.end.i.i.i927
                                        #   in Loop: Header=BB9_72 Depth=1
	move	$s6, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s6
.LBB9_99:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit932
                                        #   in Loop: Header=BB9_72 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 42
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB9_225
# %bb.100:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i939
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB9_102
# %bb.101:                              # %if.then.i2.i.i942
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB9_103
.LBB9_102:                              # %if.end.i.i.i947
                                        #   in Loop: Header=BB9_72 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.LBB9_103:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit952
                                        #   in Loop: Header=BB9_72 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 18
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ldx.w	$a1, $a0, $s7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s4, $a1, 240
	beqz	$s4, .LBB9_225
# %bb.104:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i959
                                        #   in Loop: Header=BB9_72 Depth=1
	ld.bu	$a1, $s4, 56
	bnez	$a1, .LBB9_69
# %bb.105:                              # %if.end.i.i.i967
                                        #   in Loop: Header=BB9_72 Depth=1
	move	$s6, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s6
	b	.LBB9_70
.LBB9_106:                              # %if.end.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_107:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 120
	st.d	$a0, $s6, 8
	b	.LBB9_160
.LBB9_108:                              # %if.end.i.i.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB9_109:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB9_225
# %bb.110:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i519
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB9_112
# %bb.111:                              # %if.then.i2.i.i522
	ld.bu	$a0, $s4, 67
	b	.LBB9_113
.LBB9_112:                              # %if.end.i.i.i527
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.LBB9_113:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit532
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	addi.w	$a3, $s3, -1
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB9_116
# %bb.114:                              # %land.lhs.true.i.i.i.i
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB9_117
# %bb.115:                              # %if.then.i.i.i.i
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB9_119
.LBB9_116:                              # %cond.false.i.i.i.i
	srai.d	$a2, $a1, 4
	b	.LBB9_118
.LBB9_117:                              # %cond.true.i.i.i.i
	srli.d	$a2, $a1, 4
.LBB9_118:                              # %cond.end.i.i.i.i
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB9_119:                              # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB9_225
# %bb.120:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i539
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB9_122
# %bb.121:                              # %if.then.i2.i.i542
	ld.bu	$a1, $s1, 67
	b	.LBB9_123
.LBB9_122:                              # %if.end.i.i.i547
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB9_123:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit552
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $s5, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB9_225
# %bb.124:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i559
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB9_126
# %bb.125:                              # %if.then.i2.i.i562
	ld.bu	$a1, $s1, 67
	b	.LBB9_127
.LBB9_126:                              # %if.end.i.i.i567
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB9_127:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit572
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	ori	$a2, $zero, 31
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB9_225
# %bb.128:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i579
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB9_130
# %bb.129:                              # %if.then.i2.i.i582
	ld.bu	$a1, $s1, 67
	b	.LBB9_131
.LBB9_130:                              # %if.end.i.i.i587
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB9_131:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit592
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 39
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB9_225
# %bb.132:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i599
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB9_134
# %bb.133:                              # %if.then.i2.i.i602
	ld.bu	$a0, $s1, 67
	b	.LBB9_135
.LBB9_134:                              # %if.end.i.i.i607
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB9_135:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit612
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 60
	blez	$a0, .LBB9_159
# %bb.136:                              # %if.then33
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 36
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 60
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB9_225
# %bb.137:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i619
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB9_147
# %bb.138:                              # %if.then.i2.i.i622
	ld.bu	$a0, $s3, 67
	b	.LBB9_148
.LBB9_139:                              # %for.cond.cleanup128
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB9_141
.LBB9_140:                              # %if.then118
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 16
	st.d	$a0, $a1, 0
	st.d	$zero, $a1, 8
	st.b	$zero, $a1, 16
	b	.LBB9_160
.LBB9_141:                              # %if.end174
	pcalau12i	$s3, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$a1, $s3, %pc_lo12(_ZN2PPL10index_baseE)
	addi.d	$a0, $sp, 183
	pcaddu18i	$ra, %call36(_ZN2PP12Parser_utilsC1Ei)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 183
	move	$a1, $s1
	addi.d	$a2, $s0, 72
	pcaddu18i	$ra, %call36(_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 40
	ld.d	$a2, $s0, 32
	sub.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 5
	addi.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB9_161
# %bb.142:                              # %if.end271
	slli.d	$a3, $a0, 5
	add.d	$a1, $a2, $a3
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $s0, 16
	st.d	$a0, $s0, 0
	ld.d	$a1, $a1, 8
	ldx.d	$fp, $a2, $a3
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 120
	bltu	$a1, $a2, .LBB9_144
# %bb.143:                              # %if.then.i.i503
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 16
.LBB9_144:                              # %if.end.i.i498
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB9_174
# %bb.145:                              # %if.end.i.i498
	bnez	$a1, .LBB9_173
# %bb.146:                              # %if.then.i.i.i500
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB9_174
.LBB9_147:                              # %if.end.i.i.i627
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.LBB9_148:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit632
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 60
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	addi.w	$a3, $a0, -1
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB9_151
# %bb.149:                              # %land.lhs.true.i.i.i.i132
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB9_152
# %bb.150:                              # %if.then.i.i.i.i136
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB9_154
.LBB9_151:                              # %cond.false.i.i.i.i123
	srai.d	$a2, $a1, 4
	b	.LBB9_153
.LBB9_152:                              # %cond.true.i.i.i.i134
	srli.d	$a2, $a1, 4
.LBB9_153:                              # %cond.end.i.i.i.i125
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB9_154:                              # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit138
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB9_225
# %bb.155:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i639
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB9_157
# %bb.156:                              # %if.then.i2.i.i642
	ld.bu	$a1, $fp, 67
	b	.LBB9_158
.LBB9_157:                              # %if.end.i.i.i647
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB9_158:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit652
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB9_159:                              # %if.end48
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	addi.d	$a0, $s6, 16
	st.d	$a0, $s6, 0
	st.d	$zero, $s6, 8
	st.b	$zero, $s6, 16
.LBB9_160:                              # %cleanup278
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB9_161:                              # %if.then181
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$a0, $a0, -24
	addi.d	$s8, $a1, 16
	add.d	$a0, $s8, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB9_225
# %bb.162:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i979
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB9_164
# %bb.163:                              # %if.then.i2.i.i982
	ld.bu	$a0, $fp, 67
	b	.LBB9_165
.LBB9_164:                              # %if.end.i.i.i987
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB9_165:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit992
	ext.w.b	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 24
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB9_225
# %bb.166:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i999
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB9_168
# %bb.167:                              # %if.then.i2.i.i1002
	ld.bu	$a0, $s4, 67
	b	.LBB9_169
.LBB9_168:                              # %if.end.i.i.i1007
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.LBB9_169:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit1012
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a3, $a0, -1
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $a1, $a3
	bltz	$a1, .LBB9_172
# %bb.170:                              # %land.lhs.true.i.i.i.i370
	ori	$a4, $zero, 15
	bltu	$a4, $a1, .LBB9_175
# %bb.171:                              # %if.then.i.i.i.i374
	slli.d	$a0, $a3, 5
	add.d	$a0, $a2, $a0
	b	.LBB9_177
.LBB9_172:                              # %cond.false.i.i.i.i361
	srai.d	$a2, $a1, 4
	b	.LBB9_176
.LBB9_173:                              # %if.end.i.i.i.i501
	addi.d	$a2, $a1, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_174:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit505
	ld.d	$a0, $sp, 120
	st.d	$a0, $s0, 8
	b	.LBB9_160
.LBB9_175:                              # %cond.true.i.i.i.i372
	srli.d	$a2, $a1, 4
.LBB9_176:                              # %cond.end.i.i.i.i363
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB9_177:                              # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit376
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB9_225
# %bb.178:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1019
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB9_180
# %bb.179:                              # %if.then.i2.i.i1022
	ld.bu	$a1, $fp, 67
	b	.LBB9_181
.LBB9_180:                              # %if.end.i.i.i1027
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB9_181:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit1032
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 9
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $s5, 8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB9_225
# %bb.182:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1039
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB9_184
# %bb.183:                              # %if.then.i2.i.i1042
	ld.bu	$a1, $fp, 67
	b	.LBB9_185
.LBB9_184:                              # %if.end.i.i.i1047
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB9_185:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit1052
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 16
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB9_225
# %bb.186:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1059
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB9_188
# %bb.187:                              # %if.then.i2.i.i1062
	ld.bu	$a1, $fp, 67
	b	.LBB9_189
.LBB9_188:                              # %if.end.i.i.i1067
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB9_189:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit1072
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 53
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s8, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB9_225
# %bb.190:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1079
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB9_192
# %bb.191:                              # %if.then.i2.i.i1082
	ld.bu	$a0, $fp, 67
	b	.LBB9_193
.LBB9_192:                              # %if.end.i.i.i1087
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB9_193:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit1092
	ext.w.b	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 49
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s8, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB9_225
# %bb.194:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1099
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB9_196
# %bb.195:                              # %if.then.i2.i.i1102
	ld.bu	$a0, $fp, 67
	b	.LBB9_197
.LBB9_196:                              # %if.end.i.i.i1107
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB9_197:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit1112
	ext.w.b	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.d	$s4, $s1, 0
	sub.d	$s5, $a0, $s4
	slli.d	$a0, $s5, 30
	srai.d	$s6, $a0, 32
	srli.d	$a1, $s6, 61
	bnez	$a1, .LBB9_228
# %bb.198:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	beqz	$a0, .LBB9_200
# %bb.199:                              # %for.body.preheader.i.i.i.i.i
	srai.d	$fp, $a0, 30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 152
	alsl.d	$a0, $s6, $a0, 2
	st.d	$a0, $sp, 168
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $fp
	ld.w	$a1, $s0, 56
	st.d	$a0, $sp, 160
	bnez	$a1, .LBB9_201
	b	.LBB9_204
.LBB9_200:                              # %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
	move	$a0, $zero
	st.d	$zero, $sp, 168
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 152
	ld.w	$a1, $s0, 56
	st.d	$a0, $sp, 160
	beqz	$a1, .LBB9_204
.LBB9_201:                              # %if.end.i
	ld.d	$fp, $s0, 40
	ld.d	$s0, $s0, 32
	ld.w	$a1, $s3, %pc_lo12(_ZN2PPL10index_baseE)
.Ltmp70:                                # EH_LABEL
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN2PP12Parser_utilsC1Ei)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.202:                              # %.noexc416
.Ltmp72:                                # EH_LABEL
	sub.d	$a0, $fp, $s0
	srai.d	$a0, $a0, 5
	addi.w	$a1, $a0, -1
	addi.w	$a2, $a0, 0
	addi.d	$a0, $sp, 120
	addi.d	$a3, $sp, 152
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.203:                              # %.noexc417
	ld.d	$a0, $s1, 8
	ld.d	$s4, $s1, 0
	sub.d	$s5, $a0, $s4
.LBB9_204:                              # %_ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE.exit
	srli.d	$a0, $s5, 2
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB9_223
# %bb.205:                              # %for.body229.lr.ph
	addi.d	$s5, $sp, 136
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$fp, $a0, %pc_lo12(.L.str.32)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s0, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$s2, $a0, %pc_lo12(.L.str.34)
	move	$s6, $zero
	move	$s7, $zero
	b	.LBB9_207
	.p2align	4, , 16
.LBB9_206:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481
                                        #   in Loop: Header=BB9_207 Depth=1
	ld.d	$a0, $s1, 8
	ld.d	$s4, $s1, 0
	addi.d	$s7, $s7, 1
	sub.d	$a0, $a0, $s4
	slli.d	$a0, $a0, 30
	srai.d	$a0, $a0, 32
	addi.d	$s6, $s6, 4
	bge	$s7, $a0, .LBB9_223
.LBB9_207:                              # %for.body229
                                        # =>This Inner Loop Header: Depth=1
	st.d	$s5, $sp, 120
	ld.d	$a0, $sp, 152
	st.d	$zero, $sp, 128
	st.b	$zero, $sp, 136
	ldx.w	$a1, $s4, $s6
	ldx.w	$a0, $a0, $s6
	bge	$a0, $a1, .LBB9_209
# %bb.208:                              # %if.then238
                                        #   in Loop: Header=BB9_207 Depth=1
.Ltmp75:                                # EH_LABEL
	addi.d	$a0, $sp, 120
	ori	$a4, $zero, 21
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
.LBB9_209:                              # %if.end242
                                        #   in Loop: Header=BB9_207 Depth=1
.Ltmp77:                                # EH_LABEL
	ori	$a2, $zero, 22
	move	$a0, $s8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.210:                              # %invoke.cont244
                                        #   in Loop: Header=BB9_207 Depth=1
	ld.d	$a0, $s1, 0
	ldx.w	$a1, $a0, $s6
.Ltmp79:                                # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.211:                              # %invoke.cont248
                                        #   in Loop: Header=BB9_207 Depth=1
.Ltmp81:                                # EH_LABEL
	move	$s3, $a0
	ori	$a2, $zero, 14
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.212:                              # %invoke.cont250
                                        #   in Loop: Header=BB9_207 Depth=1
	ld.d	$a0, $sp, 152
	ldx.w	$a1, $a0, $s6
.Ltmp83:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.213:                              # %invoke.cont254
                                        #   in Loop: Header=BB9_207 Depth=1
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp85:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.214:                              # %invoke.cont256
                                        #   in Loop: Header=BB9_207 Depth=1
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB9_226
# %bb.215:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1119
                                        #   in Loop: Header=BB9_207 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB9_217
# %bb.216:                              # %if.then.i2.i.i1122
                                        #   in Loop: Header=BB9_207 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB9_219
	.p2align	4, , 16
.LBB9_217:                              # %if.end.i.i.i1127
                                        #   in Loop: Header=BB9_207 Depth=1
.Ltmp87:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.218:                              # %.noexc1133
                                        #   in Loop: Header=BB9_207 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp89:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp90:                                # EH_LABEL
.LBB9_219:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB9_207 Depth=1
.Ltmp91:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.220:                              # %call1.i1125.noexc
                                        #   in Loop: Header=BB9_207 Depth=1
.Ltmp93:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.221:                              # %invoke.cont258
                                        #   in Loop: Header=BB9_207 Depth=1
	ld.d	$a0, $sp, 120
	beq	$a0, $s5, .LBB9_206
# %bb.222:                              # %if.then.i.i476
                                        #   in Loop: Header=BB9_207 Depth=1
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB9_206
.LBB9_223:                              # %for.cond.cleanup228
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 152
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 16
	st.d	$a1, $a2, 0
	st.d	$zero, $a2, 8
	st.b	$zero, $a2, 16
	beqz	$a0, .LBB9_160
# %bb.224:                              # %if.then.i.i.i482
	ld.d	$a1, $sp, 168
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB9_160
.LBB9_225:                              # %if.then.i.i.i512
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB9_226:                              # %if.then.i.i.i1131
.Ltmp96:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.227:                              # %.noexc1132
.LBB9_228:                              # %if.then.i.i406
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB9_229:                              # %lpad221
.Ltmp74:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB9_234
	b	.LBB9_236
.LBB9_230:                              # %lpad239.loopexit.split-lp
.Ltmp98:                                # EH_LABEL
	b	.LBB9_232
.LBB9_231:                              # %lpad239.loopexit
.Ltmp95:                                # EH_LABEL
.LBB9_232:                              # %lpad239
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	bne	$a0, $s5, .LBB9_235
# %bb.233:                              # %ehcleanup269
	ld.d	$a0, $sp, 152
	bnez	$a0, .LBB9_236
.LBB9_234:                              # %ehcleanup270
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_235:                              # %if.then.i.i456
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB9_234
.LBB9_236:                              # %if.then.i.i.i487
	ld.d	$a1, $sp, 168
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN2PP8Variable13get_var_valueERSt6vectorIiSaIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiSA_PSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi, .Lfunc_end9-_ZN2PP8Variable13get_var_valueERSt6vectorIiSaIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiSA_PSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp70-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp73-.Ltmp70                #   Call between .Ltmp70 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin6          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Ltmp94-.Ltmp75                #   Call between .Ltmp75 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin6          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin6          # >> Call Site 4 <<
	.uleb128 .Ltmp96-.Ltmp94                #   Call between .Ltmp94 and .Ltmp96
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin6          # >> Call Site 5 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin6          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin6          # >> Call Site 6 <<
	.uleb128 .Lfunc_end9-.Ltmp97            #   Call between .Ltmp97 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE # -- Begin function _ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE
	.p2align	5
	.type	_ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE,@function
_ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE: # @_ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:                                # %entry
	ld.w	$a3, $a0, 56
	beqz	$a3, .LBB10_2
# %bb.1:                                # %if.end
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
	move	$fp, $a2
	move	$s0, $a1
	ld.d	$a2, $a0, 40
	ld.d	$a3, $a0, 32
	pcalau12i	$a1, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$a1, $a1, %pc_lo12(_ZN2PPL10index_baseE)
	sub.d	$a2, $a2, $a3
	srli.d	$s1, $a2, 5
	move	$s2, $a0
	addi.d	$a0, $sp, 7
	pcaddu18i	$ra, %call36(_ZN2PP12Parser_utilsC1Ei)
	jirl	$ra, $ra, 0
	addi.d	$a4, $s2, 72
	addi.w	$a2, $s1, 0
	addi.d	$a0, $sp, 7
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB10_2:                               # %return
	ret
.Lfunc_end10:
	.size	_ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE, .Lfunc_end10-_ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE
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
	.section	.text._ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,"axG",@progbits,_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,comdat
	.weak	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ # -- Begin function _ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.p2align	5
	.type	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,@function
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_: # @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.cfi_startproc
# %bb.0:                                # %entry
	beq	$a0, $a1, .LBB12_6
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
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.d	$a0, $s0, 16
	addi.d	$s0, $s0, 32
	beq	$a0, $fp, .LBB12_5
.LBB12_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, -16
	beq	$s0, $a0, .LBB12_2
# %bb.4:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_2
.LBB12_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB12_6:                               # %for.end
	ret
.Lfunc_end12:
	.size	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, .Lfunc_end12-_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_ # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_
	.p2align	5
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_
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
	ld.d	$s5, $a0, 8
	ld.d	$s0, $a0, 0
	sub.d	$s6, $s5, $s0
	addi.w	$a0, $zero, -32
	lu52i.d	$a0, $a0, 2047
	beq	$s6, $a0, .LBB13_14
# %bb.1:                                # %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
	move	$s3, $a1
	srai.d	$a0, $s6, 5
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 63
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slli.d	$s1, $a0, 5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a1, $s3, 0
	add.d	$s7, $a0, $s6
	addi.d	$a0, $s7, 16
	addi.d	$s4, $s3, 16
	stx.d	$a0, $s2, $s6
	beq	$a1, $s4, .LBB13_3
# %bb.2:                                # %if.else.i
	ld.d	$a0, $s3, 16
	ld.d	$s6, $s3, 8
	st.d	$a1, $s7, 0
	st.d	$a0, $s7, 16
	b	.LBB13_4
.LBB13_3:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i
	ld.d	$s6, $s3, 8
	addi.d	$a2, $s6, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB13_4:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	st.d	$s6, $s7, 8
	st.d	$s4, $s3, 0
	st.d	$zero, $s3, 8
	st.b	$zero, $s3, 16
	move	$s3, $s2
	beq	$s0, $s5, .LBB13_11
# %bb.5:                                # %for.body.i.i.i.preheader
	move	$s4, $zero
	b	.LBB13_8
	.p2align	4, , 16
.LBB13_6:                               # %if.else.i.i.i.i.i
                                        #   in Loop: Header=BB13_8 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$s8, $s7, 8
	st.d	$a1, $s6, 0
	st.d	$a0, $s6, 16
.LBB13_7:                               # %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
                                        #   in Loop: Header=BB13_8 Depth=1
	st.d	$s8, $s6, 8
	stx.d	$s3, $s0, $s4
	st.d	$zero, $s7, 8
	addi.d	$s4, $s4, 32
	add.d	$a0, $s0, $s4
	st.b	$zero, $s3, 0
	beq	$a0, $s5, .LBB13_10
.LBB13_8:                               # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s2, $s4
	ldx.d	$a1, $s0, $s4
	add.d	$s7, $s0, $s4
	addi.d	$a0, $s6, 16
	addi.d	$s3, $s7, 16
	stx.d	$a0, $s2, $s4
	bne	$s3, $a1, .LBB13_6
# %bb.9:                                # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i
                                        #   in Loop: Header=BB13_8 Depth=1
	ld.d	$s8, $s7, 8
	addi.d	$a2, $s8, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB13_7
.LBB13_10:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit
	add.d	$s3, $s2, $s4
.LBB13_11:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
	beqz	$s0, .LBB13_13
# %bb.12:                               # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_13:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev.exit
	addi.d	$a0, $s3, 32
	st.d	$s2, $fp, 0
	st.d	$a0, $fp, 8
	add.d	$a0, $s2, $s1
	st.d	$a0, $fp, 16
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
.LBB13_14:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_, .Lfunc_end13-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_ # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_
	.p2align	5
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	ld.d	$s5, $a0, 8
	ld.d	$s0, $a0, 0
	sub.d	$s7, $s5, $s0
	addi.w	$a0, $zero, -32
	lu52i.d	$a0, $a0, 2047
	beq	$s7, $a0, .LBB14_18
# %bb.1:                                # %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
	move	$s4, $a1
	srai.d	$a0, $s7, 5
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	addi.w	$s6, $zero, -1
	lu52i.d	$a1, $s6, 63
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slli.d	$s1, $a0, 5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	add.d	$s3, $a0, $s7
	addi.d	$a0, $s3, 16
	ld.d	$a1, $s4, 8
	ld.d	$s4, $s4, 0
	stx.d	$a0, $s2, $s7
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 16
	bltu	$a1, $a2, .LBB14_4
# %bb.2:                                # %if.then.i.i
.Ltmp99:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.3:                                # %call.i4.i.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $s3, 0
	st.d	$a1, $s3, 16
.LBB14_4:                               # %if.end.i.i
	beq	$a1, $s6, .LBB14_7
# %bb.5:                                # %if.end.i.i
	bnez	$a1, .LBB14_11
# %bb.6:                                # %if.then.i.i.i
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
.LBB14_7:                               # %invoke.cont
	ld.d	$a0, $sp, 16
	st.d	$a0, $s3, 8
	move	$s3, $s2
	bne	$s0, $s5, .LBB14_12
.LBB14_8:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
	beqz	$s0, .LBB14_10
.LBB14_9:                               # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_10:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev.exit
	addi.d	$a0, $s3, 32
	st.d	$s2, $fp, 0
	st.d	$a0, $fp, 8
	add.d	$a0, $s2, $s1
	st.d	$a0, $fp, 16
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
.LBB14_11:                              # %if.end.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	st.d	$a0, $s3, 8
	move	$s3, $s2
	beq	$s0, $s5, .LBB14_8
.LBB14_12:                              # %for.body.i.i.i.preheader
	move	$s4, $zero
	b	.LBB14_15
	.p2align	4, , 16
.LBB14_13:                              # %if.else.i.i.i.i.i
                                        #   in Loop: Header=BB14_15 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$s8, $s7, 8
	st.d	$a1, $s6, 0
	st.d	$a0, $s6, 16
.LBB14_14:                              # %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
                                        #   in Loop: Header=BB14_15 Depth=1
	st.d	$s8, $s6, 8
	stx.d	$s3, $s0, $s4
	st.d	$zero, $s7, 8
	addi.d	$s4, $s4, 32
	add.d	$a0, $s0, $s4
	st.b	$zero, $s3, 0
	beq	$a0, $s5, .LBB14_17
.LBB14_15:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s2, $s4
	ldx.d	$a1, $s0, $s4
	add.d	$s7, $s0, $s4
	addi.d	$a0, $s6, 16
	addi.d	$s3, $s7, 16
	stx.d	$a0, $s2, $s4
	bne	$s3, $a1, .LBB14_13
# %bb.16:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i
                                        #   in Loop: Header=BB14_15 Depth=1
	ld.d	$s8, $s7, 8
	addi.d	$a2, $s8, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB14_14
.LBB14_17:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit
	add.d	$s3, $s2, $s4
	bnez	$s0, .LBB14_9
	b	.LBB14_10
.LBB14_18:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB14_19:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev.exit22
.Ltmp101:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_, .Lfunc_end14-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,"aG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp99-.Lfunc_begin7          #   Call between .Lfunc_begin7 and .Ltmp99
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin7         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Lfunc_end14-.Ltmp100          #   Call between .Ltmp100 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_ # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_
	.p2align	5
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	beqz	$a2, .LBB15_89
# %bb.1:                                # %if.then
	move	$s5, $a3
	move	$s7, $a2
	move	$fp, $a1
	move	$s2, $a0
	ld.d	$a0, $a0, 16
	ld.d	$s1, $s2, 8
	sub.d	$a0, $a0, $s1
	srai.d	$a0, $a0, 5
	addi.w	$s8, $zero, -1
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	bgeu	$a0, $a2, .LBB15_12
# %bb.2:                                # %if.else43
	ld.d	$s4, $s2, 0
	sub.d	$a0, $s1, $s4
	srai.d	$a1, $a0, 5
	lu52i.d	$a0, $s8, 63
	sub.d	$a2, $a0, $a1
	bltu	$a2, $s7, .LBB15_91
# %bb.3:                                # %for.body.lr.ph.i.i.i109
	sltu	$a2, $s7, $a1
	masknez	$a3, $s7, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	sub.d	$s0, $fp, $s4
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s0
	st.d	$s6, $sp, 96
	st.d	$s6, $sp, 32
	addi.d	$a0, $sp, 96
	st.d	$a0, $sp, 40
	ori	$s0, $zero, 16
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $s7
	b	.LBB15_6
	.p2align	4, , 16
.LBB15_4:                               # %if.end.i.i.i.i.i.i.i.i122
                                        #   in Loop: Header=BB15_6 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB15_5:                               # %for.inc.i.i.i117
                                        #   in Loop: Header=BB15_6 Depth=1
	ld.d	$a0, $sp, 72
	ld.d	$a1, $sp, 96
	addi.d	$s2, $s2, -1
	st.d	$a0, $s6, 8
	addi.d	$s6, $a1, 32
	st.d	$s6, $sp, 96
	beqz	$s2, .LBB15_17
.LBB15_6:                               # %for.body.i.i.i111
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $s6, 16
	st.d	$a0, $s6, 0
	ld.d	$a1, $s5, 8
	ld.d	$s7, $s5, 0
	st.d	$a1, $sp, 72
	bltu	$a1, $s0, .LBB15_9
# %bb.7:                                # %if.then.i.i.i.i.i.i124
                                        #   in Loop: Header=BB15_6 Depth=1
.Ltmp111:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	move	$a0, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.8:                                # %call.i4.i.i.noexc.i.i.i127
                                        #   in Loop: Header=BB15_6 Depth=1
	ld.d	$a1, $sp, 72
	st.d	$a0, $s6, 0
	st.d	$a1, $s6, 16
.LBB15_9:                               # %if.end.i.i.i.i.i.i116
                                        #   in Loop: Header=BB15_6 Depth=1
	beq	$a1, $s8, .LBB15_5
# %bb.10:                               # %if.end.i.i.i.i.i.i116
                                        #   in Loop: Header=BB15_6 Depth=1
	bnez	$a1, .LBB15_4
# %bb.11:                               # %if.then.i.i.i.i.i.i.i121
                                        #   in Loop: Header=BB15_6 Depth=1
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB15_5
.LBB15_12:                              # %if.then4
	st.d	$s2, $sp, 32
	addi.d	$s1, $sp, 40
	addi.d	$s4, $sp, 56
	ld.d	$a1, $s5, 8
	ld.d	$s3, $s5, 0
	st.d	$s4, $sp, 40
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 72
	move	$a0, $s4
	bltu	$a1, $a2, .LBB15_14
# %bb.13:                               # %if.then.i.i.i
	addi.d	$a1, $sp, 72
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
.LBB15_14:                              # %if.end.i.i.i
	beq	$a1, $s8, .LBB15_40
# %bb.15:                               # %if.end.i.i.i
	bnez	$a1, .LBB15_39
# %bb.16:                               # %if.then.i.i.i.i
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB15_40
.LBB15_17:                              # %invoke.cont58
	move	$a0, $s3
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	beq	$s4, $fp, .LBB15_24
# %bb.18:                               # %for.body.i.i.i.i131.preheader
	move	$s0, $zero
	b	.LBB15_21
	.p2align	4, , 16
.LBB15_19:                              # %if.else.i.i.i.i.i.i135
                                        #   in Loop: Header=BB15_21 Depth=1
	st.d	$a1, $s2, 0
	ld.d	$a0, $s5, 0
	st.d	$a0, $s2, 16
.LBB15_20:                              # %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i136
                                        #   in Loop: Header=BB15_21 Depth=1
	ld.d	$a0, $s6, 8
	st.d	$a0, $s2, 8
	stx.d	$s5, $s4, $s0
	st.d	$zero, $s6, 8
	addi.d	$s0, $s0, 32
	add.d	$a0, $s4, $s0
	st.b	$zero, $s5, 0
	beq	$a0, $fp, .LBB15_23
.LBB15_21:                              # %for.body.i.i.i.i131
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s2, $s3, $s0
	addi.d	$a0, $s2, 16
	stx.d	$a0, $s3, $s0
	ldx.d	$a1, $s4, $s0
	add.d	$s6, $s4, $s0
	addi.d	$s5, $s6, 16
	bne	$s5, $a1, .LBB15_19
# %bb.22:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i.i144
                                        #   in Loop: Header=BB15_21 Depth=1
	ld.d	$a1, $s6, 8
	addi.d	$a2, $a1, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB15_20
.LBB15_23:                              # %invoke.cont61.loopexit
	add.d	$a0, $s3, $s0
.LBB15_24:                              # %invoke.cont61
	slli.d	$a1, $s7, 5
	add.d	$s5, $a0, $a1
	beq	$s1, $fp, .LBB15_31
# %bb.25:                               # %for.body.i.i.i.i149.preheader
	move	$s0, $zero
	b	.LBB15_28
	.p2align	4, , 16
.LBB15_26:                              # %if.else.i.i.i.i.i.i153
                                        #   in Loop: Header=BB15_28 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $s6, 16
.LBB15_27:                              # %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i154
                                        #   in Loop: Header=BB15_28 Depth=1
	ld.d	$a0, $s7, 8
	st.d	$a0, $s6, 8
	stx.d	$s2, $fp, $s0
	st.d	$zero, $s7, 8
	addi.d	$s0, $s0, 32
	add.d	$a0, $fp, $s0
	st.b	$zero, $s2, 0
	beq	$a0, $s1, .LBB15_30
.LBB15_28:                              # %for.body.i.i.i.i149
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s5, $s0
	addi.d	$a0, $s6, 16
	stx.d	$a0, $s5, $s0
	ldx.d	$a1, $fp, $s0
	add.d	$s7, $fp, $s0
	addi.d	$s2, $s7, 16
	bne	$s2, $a1, .LBB15_26
# %bb.29:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i.i162
                                        #   in Loop: Header=BB15_28 Depth=1
	ld.d	$a1, $s7, 8
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB15_27
.LBB15_30:                              # %invoke.cont65.loopexit
	add.d	$s5, $s5, $s0
.LBB15_31:                              # %invoke.cont65
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	beq	$s4, $s1, .LBB15_36
# %bb.32:                               # %for.body.i168.preheader
	addi.d	$fp, $s4, 16
	b	.LBB15_34
	.p2align	4, , 16
.LBB15_33:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
                                        #   in Loop: Header=BB15_34 Depth=1
	addi.d	$a0, $fp, 16
	addi.d	$fp, $fp, 32
	beq	$a0, $s1, .LBB15_36
.LBB15_34:                              # %for.body.i168
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -16
	beq	$fp, $a0, .LBB15_33
# %bb.35:                               # %if.then.i.i.i.i170
                                        #   in Loop: Header=BB15_34 Depth=1
	ld.d	$a1, $fp, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB15_33
.LBB15_36:                              # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
	beqz	$s4, .LBB15_38
# %bb.37:                               # %if.then.i174
	ld.d	$a0, $s0, 16
	sub.d	$a1, $a0, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_38:                              # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
	st.d	$s3, $s0, 0
	st.d	$s5, $s0, 8
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $s3, $a0
	st.d	$a0, $s0, 16
	b	.LBB15_89
.LBB15_39:                              # %if.end.i.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB15_40:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit
	ld.d	$s5, $s2, 8
	ld.d	$a1, $sp, 72
	sub.d	$s6, $s5, $fp
	srai.d	$a0, $s6, 5
	st.d	$a1, $sp, 48
	bgeu	$s7, $a0, .LBB15_47
# %bb.41:                               # %if.then12
	slli.d	$s3, $s7, 5
	sub.d	$s6, $zero, $s3
	sub.d	$s0, $s5, $s3
	move	$a0, $s5
	beqz	$s6, .LBB15_64
# %bb.42:                               # %for.body.i.i.i.i.preheader
	move	$s4, $zero
	b	.LBB15_45
	.p2align	4, , 16
.LBB15_43:                              # %if.else.i.i.i.i.i.i
                                        #   in Loop: Header=BB15_45 Depth=1
	ld.d	$a0, $s2, 0
	st.d	$a1, $s7, 0
	st.d	$a0, $s7, 16
.LBB15_44:                              # %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i
                                        #   in Loop: Header=BB15_45 Depth=1
	ld.d	$a0, $s8, 8
	st.d	$a0, $s7, 8
	stx.d	$s2, $s0, $s4
	st.d	$zero, $s8, 8
	addi.d	$s4, $s4, 32
	st.b	$zero, $s2, 0
	beq	$s3, $s4, .LBB15_63
.LBB15_45:                              # %for.body.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s7, $s5, $s4
	addi.d	$a0, $s7, 16
	stx.d	$a0, $s5, $s4
	ldx.d	$a1, $s0, $s4
	add.d	$s8, $s0, $s4
	addi.d	$s2, $s8, 16
	bne	$s2, $a1, .LBB15_43
# %bb.46:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB15_45 Depth=1
	ld.d	$a1, $s8, 8
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB15_44
.LBB15_47:                              # %if.else
	sub.d	$a1, $s7, $a0
	st.d	$s5, $sp, 88
	st.d	$s5, $sp, 72
	addi.d	$a2, $sp, 88
	st.d	$a2, $sp, 80
	move	$s3, $s5
	beqz	$a1, .LBB15_57
# %bb.48:                               # %for.body.i.i.i.preheader
	sub.d	$s7, $a0, $s7
	ori	$s4, $zero, 16
	move	$s3, $s5
	b	.LBB15_51
	.p2align	4, , 16
.LBB15_49:                              # %if.end.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB15_51 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB15_50:                              # %for.inc.i.i.i
                                        #   in Loop: Header=BB15_51 Depth=1
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 88
	st.d	$a0, $s3, 8
	addi.d	$s3, $a1, 32
	addi.d	$s7, $s7, 1
	st.d	$s3, $sp, 88
	beqz	$s7, .LBB15_57
.LBB15_51:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $s3, 16
	st.d	$a0, $s3, 0
	ld.d	$a1, $sp, 48
	ld.d	$s2, $sp, 40
	st.d	$a1, $sp, 96
	bltu	$a1, $s4, .LBB15_54
# %bb.52:                               # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB15_51 Depth=1
.Ltmp102:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.53:                               # %call.i4.i.i.noexc.i.i.i
                                        #   in Loop: Header=BB15_51 Depth=1
	st.d	$a0, $s3, 0
	ld.d	$a1, $sp, 96
	st.d	$a1, $s3, 16
.LBB15_54:                              # %if.end.i.i.i.i.i.i
                                        #   in Loop: Header=BB15_51 Depth=1
	beq	$a1, $s8, .LBB15_50
# %bb.55:                               # %if.end.i.i.i.i.i.i
                                        #   in Loop: Header=BB15_51 Depth=1
	bnez	$a1, .LBB15_49
# %bb.56:                               # %if.then.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB15_51 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB15_50
.LBB15_57:                              # %invoke.cont28
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s3, $a1, 8
	beq	$s5, $fp, .LBB15_90
# %bb.58:                               # %for.body.i.i.i.i68.preheader
	move	$s0, $zero
	b	.LBB15_61
	.p2align	4, , 16
.LBB15_59:                              # %if.else.i.i.i.i.i.i72
                                        #   in Loop: Header=BB15_61 Depth=1
	st.d	$a1, $s4, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $s4, 16
.LBB15_60:                              # %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i73
                                        #   in Loop: Header=BB15_61 Depth=1
	ld.d	$a0, $s7, 8
	st.d	$a0, $s4, 8
	stx.d	$s2, $fp, $s0
	st.d	$zero, $s7, 8
	addi.d	$s0, $s0, 32
	add.d	$a0, $fp, $s0
	st.b	$zero, $s2, 0
	beq	$a0, $s5, .LBB15_84
.LBB15_61:                              # %for.body.i.i.i.i68
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s4, $s3, $s0
	addi.d	$a0, $s4, 16
	stx.d	$a0, $s3, $s0
	ldx.d	$a1, $fp, $s0
	add.d	$s7, $fp, $s0
	addi.d	$s2, $s7, 16
	bne	$s2, $a1, .LBB15_59
# %bb.62:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i.i81
                                        #   in Loop: Header=BB15_61 Depth=1
	ld.d	$a1, $s7, 8
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB15_60
.LBB15_63:                              # %invoke.cont.loopexit
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 8
	addi.d	$s4, $sp, 56
.LBB15_64:                              # %invoke.cont
	add.d	$a0, $a0, $s3
	st.d	$a0, $s2, 8
	beq	$s0, $fp, .LBB15_82
# %bb.65:                               # %while.body.i.preheader
	ori	$s0, $zero, 1
	b	.LBB15_69
.LBB15_66:                              # %if.end.i.i.i.i
                                        #   in Loop: Header=BB15_69 Depth=1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB15_67:                              # %if.end18.i.i
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $s2, -24
	ld.d	$a1, $s5, -32
	st.d	$a0, $s5, -24
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s2, -32
.LBB15_68:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
                                        #   in Loop: Header=BB15_69 Depth=1
	addi.d	$s5, $s5, -32
	st.d	$zero, $s2, -24
	add.d	$a1, $s5, $s6
	st.b	$zero, $a0, 0
	beq	$a1, $fp, .LBB15_82
.LBB15_69:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s2, $s5, $s6
	ld.d	$a0, $s5, -32
	ld.d	$a1, $s2, -32
	addi.d	$a3, $s5, -16
	addi.d	$a2, $s2, -16
	beq	$a3, $a0, .LBB15_72
# %bb.70:                               # %invoke.cont.thread.i.i
                                        #   in Loop: Header=BB15_69 Depth=1
	beq	$a2, $a1, .LBB15_76
# %bb.71:                               # %if.then24.i.i
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a3, $a3, 0
	b	.LBB15_74
	.p2align	4, , 16
.LBB15_72:                              # %invoke.cont.i.i
                                        #   in Loop: Header=BB15_69 Depth=1
	beq	$a2, $a1, .LBB15_76
# %bb.73:                               #   in Loop: Header=BB15_69 Depth=1
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB15_74:                              # %if.end26.i.i
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a4, $s2, -24
	ld.d	$a5, $a2, 0
	st.d	$a1, $s5, -32
	st.d	$a4, $s5, -24
	st.d	$a5, $s5, -16
	beqz	$a0, .LBB15_80
# %bb.75:                               # %if.then30.i.i
                                        #   in Loop: Header=BB15_69 Depth=1
	st.d	$a0, $s2, -32
	st.d	$a3, $a2, 0
	b	.LBB15_68
	.p2align	4, , 16
.LBB15_76:                              # %if.then9.i.i
                                        #   in Loop: Header=BB15_69 Depth=1
	beq	$s2, $s5, .LBB15_81
# %bb.77:                               # %if.then10.i.i
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a2, $s2, -24
	beqz	$a2, .LBB15_67
# %bb.78:                               # %if.then10.i.i
                                        #   in Loop: Header=BB15_69 Depth=1
	bne	$a2, $s0, .LBB15_66
# %bb.79:                               # %if.then.i25.i.i
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB15_67
	.p2align	4, , 16
.LBB15_80:                              # %if.else31.i.i
                                        #   in Loop: Header=BB15_69 Depth=1
	st.d	$a2, $s2, -32
	move	$a0, $a2
	b	.LBB15_68
.LBB15_81:                              #   in Loop: Header=BB15_69 Depth=1
	move	$a0, $a1
	b	.LBB15_68
	.p2align	4, , 16
.LBB15_82:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp108:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.83:                               # %.noexc
                                        #   in Loop: Header=BB15_82 Depth=1
	addi.d	$s3, $s3, -32
	addi.d	$fp, $fp, 32
	bnez	$s3, .LBB15_82
	b	.LBB15_87
.LBB15_84:                              # %invoke.cont36
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	add.d	$a0, $a0, $s6
	st.d	$a0, $a1, 8
	addi.d	$s4, $sp, 56
	.p2align	4, , 16
.LBB15_85:                              # %for.body.i87
                                        # =>This Inner Loop Header: Depth=1
.Ltmp105:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.86:                               # %.noexc91
                                        #   in Loop: Header=BB15_85 Depth=1
	addi.d	$fp, $fp, 32
	bne	$fp, $s5, .LBB15_85
.LBB15_87:                              # %if.end
	ld.d	$a0, $sp, 40
	beq	$a0, $s4, .LBB15_89
.LBB15_88:                              # %if.then.i.i.i95
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_89:                              # %if.end95
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
.LBB15_90:                              # %invoke.cont36.thread
	add.d	$a0, $s3, $s6
	st.d	$a0, $a1, 8
	addi.d	$s4, $sp, 56
	ld.d	$a0, $sp, 40
	bne	$a0, $s4, .LBB15_88
	b	.LBB15_89
.LBB15_91:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB15_92:                              # %lpad.i.i.i
.Ltmp104:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB15_96
.LBB15_93:                              # %lpad.loopexit.split-lp
.Ltmp107:                               # EH_LABEL
	b	.LBB15_95
.LBB15_94:                              # %lpad.loopexit
.Ltmp110:                               # EH_LABEL
.LBB15_95:                              # %lpad.body
	move	$fp, $a0
.LBB15_96:                              # %lpad.body
	ld.d	$a0, $sp, 40
	addi.d	$a1, $sp, 56
	beq	$a0, $a1, .LBB15_102
# %bb.97:                               # %if.then.i.i.i62
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_98:                              # %lpad.i.i.i126
.Ltmp113:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
	move	$a0, $s3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.99:                               # %invoke.cont78
	move	$a0, $s3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.100:                              # %unreachable
.LBB15_101:                             # %lpad72
.Ltmp118:                               # EH_LABEL
	move	$fp, $a0
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
.LBB15_102:                             # %eh.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_103:                             # %terminate.lpad
.Ltmp121:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_, .Lfunc_end15-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_,"aG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp111-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp111
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin8         #     jumps to .Ltmp113
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp112-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp102-.Ltmp112              #   Call between .Ltmp112 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin8         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp108-.Ltmp103              #   Call between .Ltmp103 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin8         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin8         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp114-.Ltmp106              #   Call between .Ltmp106 and .Ltmp114
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp118-.Lfunc_begin8         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin8         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin8         # >> Call Site 12 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin8         #     jumps to .Ltmp121
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp120-.Lfunc_begin8         # >> Call Site 13 <<
	.uleb128 .Lfunc_end15-.Ltmp120          #   Call between .Ltmp120 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,"axG",@progbits,_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,comdat
	.weak	_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev # -- Begin function _ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev
	.p2align	5
	.type	_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,@function
_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev: # @_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB16_2
.LBB16_1:                               # %if.end
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB16_2:                               # %if.then
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp122:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
	b	.LBB16_1
.LBB16_3:                               # %terminate.lpad
.Ltmp124:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev, .Lfunc_end16-_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,"aG",@progbits,_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp122-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin9         #     jumps to .Ltmp124
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp123-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end16-.Ltmp123          #   Call between .Ltmp123 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"__NO_NAME_GIVEN__"
	.size	.L.str, 18

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.1:
	.asciz	"__NO_VALUE_GIVEN__"
	.size	.L.str.1, 19

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.space	1
	.size	.L.str.2, 1

	.type	_ZN2PPL10index_baseE,@object    # @_ZN2PPL10index_baseE
	.data
	.p2align	2, 0x0
_ZN2PPL10index_baseE:
	.word	1                               # 0x1
	.size	_ZN2PPL10index_baseE, 4

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"*** FATAL ERROR in line "
	.size	.L.str.3, 25

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	":"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"    "
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"in file: "
	.size	.L.str.6, 10

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Cannot redefine a pre-defined variable."
	.size	.L.str.7, 40

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Cannot redefine the dimensionality of a variable."
	.size	.L.str.8, 50

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Original number of dimensions = "
	.size	.L.str.9, 33

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"New number of dimensions = "
	.size	.L.str.10, 28

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Previously set in line "
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Array boundaries not allowed for scalar variable."
	.size	.L.str.12, 50

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Array boundaries were set in line "
	.size	.L.str.13, 35

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Number of dimensions = "
	.size	.L.str.14, 24

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Number of array boundaries + 1 = "
	.size	.L.str.15, 34

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"These should match but don't. "
	.size	.L.str.16, 31

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Cannot redefine the dimensionality of a variable (set_bounds)."
	.size	.L.str.17, 63

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"The bounds on this array has already been set,"
	.size	.L.str.18, 47

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"cannot reset them."
	.size	.L.str.19, 19

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"The dimensionality of variable "
	.size	.L.str.20, 32

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"does not match what was previously set."
	.size	.L.str.21, 40

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Previous dimensionality set in line "
	.size	.L.str.22, 37

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Variable name = "
	.size	.L.str.23, 17

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"The value for dimension "
	.size	.L.str.24, 25

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	" = "
	.size	.L.str.25, 4

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"This exceeds the max dimension of "
	.size	.L.str.26, 35

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"The array bounds were set in line "
	.size	.L.str.27, 35

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Expected index greater than or equal to 1 "
	.size	.L.str.28, 43

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Instead, index =  "
	.size	.L.str.29, 19

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Exceeded array bounds. Check to make sure you are not"
	.size	.L.str.30, 54

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"requesting an array element you have not yet set."
	.size	.L.str.31, 50

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"  ERROR, max exceeded"
	.size	.L.str.32, 22

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"    Requested index = "
	.size	.L.str.33, 23

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"  Max index = "
	.size	.L.str.34, 15

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.35, 26

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"vector::_M_fill_insert"
	.size	.L.str.37, 23

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.38, 49

	.globl	_ZN2PP8VariableC1Ev
	.type	_ZN2PP8VariableC1Ev,@function
_ZN2PP8VariableC1Ev = _ZN2PP8VariableC2Ev
	.globl	_ZN2PP8VariableC1Ei
	.type	_ZN2PP8VariableC1Ei,@function
_ZN2PP8VariableC1Ei = _ZN2PP8VariableC2Ei
	.globl	_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_bS6_
	.type	_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_bS6_,@function
_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_bS6_ = _ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_bS6_
	.globl	_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = _ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEERS7_IS6_SaIS6_EEiiS6_PSt5dequeIS6_SB_ERNS1_18basic_stringstreamIcS4_S5_EERi
	.type	_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEERS7_IS6_SaIS6_EEiiS6_PSt5dequeIS6_SB_ERNS1_18basic_stringstreamIcS4_S5_EERi,@function
_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEERS7_IS6_SaIS6_EEiiS6_PSt5dequeIS6_SB_ERNS1_18basic_stringstreamIcS4_S5_EERi = _ZN2PP8VariableC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEERS7_IS6_SaIS6_EEiiS6_PSt5dequeIS6_SB_ERNS1_18basic_stringstreamIcS4_S5_EERi
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
	.addrsig_sym _Unwind_Resume
