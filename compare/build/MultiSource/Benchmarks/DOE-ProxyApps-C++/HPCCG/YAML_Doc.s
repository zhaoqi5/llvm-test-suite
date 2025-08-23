	.file	"YAML_Doc.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_ # -- Begin function _ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_
	.p2align	2
	.type	_ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_,@function
_ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_: # @_ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_
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
	move	$s3, $a4
	move	$s4, $a3
	move	$s6, $a2
	move	$s7, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN12YAML_ElementC2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 88
	addi.d	$a1, $fp, 104
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $fp, 88
	st.d	$zero, $fp, 96
	st.b	$zero, $fp, 104
	addi.d	$s1, $fp, 120
	addi.d	$a1, $fp, 136
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $fp, 120
	st.d	$zero, $fp, 128
	st.b	$zero, $fp, 136
	addi.d	$s2, $fp, 152
	addi.d	$s0, $fp, 168
	st.d	$s0, $fp, 152
	st.d	$zero, $fp, 160
	st.b	$zero, $fp, 168
	addi.d	$s5, $fp, 184
	addi.d	$s8, $fp, 200
	st.d	$s8, $fp, 184
	st.d	$zero, $fp, 192
	st.b	$zero, $fp, 200
.Ltmp0:                                 # EH_LABEL
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont
.Ltmp2:                                 # EH_LABEL
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.2:                                # %invoke.cont4
.Ltmp4:                                 # EH_LABEL
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.3:                                # %invoke.cont7
.Ltmp6:                                 # EH_LABEL
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.4:                                # %invoke.cont10
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
.LBB0_5:                                # %lpad
.Ltmp8:                                 # EH_LABEL
	ld.d	$a2, $s5, 0
	move	$s3, $a0
	bne	$a2, $s8, .LBB0_10
# %bb.6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $s2, 0
	bne	$a0, $s0, .LBB0_11
.LBB0_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
	ld.d	$a0, $s1, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_12
.LBB0_8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_13
.LBB0_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_ElementD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_10:                               # %if.then.i.i
	ld.d	$a0, $s8, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beq	$a0, $s0, .LBB0_7
.LBB0_11:                               # %if.then.i.i9
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_8
.LBB0_12:                               # %if.then.i.i16
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_9
.LBB0_13:                               # %if.then.i.i23
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_ElementD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_, .Lfunc_end0-_ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_
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
	.uleb128 .Ltmp7-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end0-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12YAML_ElementC2Ev,"axG",@progbits,_ZN12YAML_ElementC2Ev,comdat
	.weak	_ZN12YAML_ElementC2Ev           # -- Begin function _ZN12YAML_ElementC2Ev
	.p2align	2
	.type	_ZN12YAML_ElementC2Ev,@function
_ZN12YAML_ElementC2Ev:                  # @_ZN12YAML_ElementC2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$s2, $a0, 16
	st.d	$s2, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	addi.d	$s0, $a0, 32
	addi.d	$s3, $a0, 48
	st.d	$s3, $a0, 32
	st.d	$zero, $a0, 40
	st.b	$zero, $a0, 48
	addi.d	$s1, $a0, 64
	st.d	$zero, $a0, 64
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 72
.Ltmp9:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a3, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.d	$a2, $fp, 40
.Ltmp11:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a3, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s0
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.2:                                # %invoke.cont4
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_3:                                # %lpad
.Ltmp13:                                # EH_LABEL
	ld.d	$a2, $s1, 0
	move	$s1, $a0
	bnez	$a2, .LBB1_7
# %bb.4:                                # %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit
	ld.d	$a0, $s0, 0
	bne	$a0, $s3, .LBB1_8
.LBB1_5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 0
	bne	$a0, $s2, .LBB1_9
.LBB1_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_7:                                # %if.then.i.i.i
	ld.d	$a0, $fp, 80
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	beq	$a0, $s3, .LBB1_5
.LBB1_8:                                # %if.then.i.i
	ld.d	$a1, $s3, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beq	$a0, $s2, .LBB1_6
.LBB1_9:                                # %if.then.i.i12
	ld.d	$a1, $s2, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN12YAML_ElementC2Ev, .Lfunc_end1-_ZN12YAML_ElementC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12YAML_ElementC2Ev,"aG",@progbits,_ZN12YAML_ElementC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp12-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Lfunc_end1-.Ltmp12            #   Call between .Ltmp12 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8YAML_DocD2Ev                # -- Begin function _ZN8YAML_DocD2Ev
	.p2align	2
	.type	_ZN8YAML_DocD2Ev,@function
_ZN8YAML_DocD2Ev:                       # @_ZN8YAML_DocD2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 184
	addi.d	$a1, $fp, 200
	beq	$a0, $a1, .LBB2_2
# %bb.1:                                # %if.then.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 152
	addi.d	$a1, $fp, 168
	beq	$a0, $a1, .LBB2_4
# %bb.3:                                # %if.then.i.i2
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
	ld.d	$a0, $fp, 120
	addi.d	$a1, $fp, 136
	beq	$a0, $a1, .LBB2_6
# %bb.5:                                # %if.then.i.i9
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
	ld.d	$a0, $fp, 88
	addi.d	$a1, $fp, 104
	beq	$a0, $a1, .LBB2_8
# %bb.7:                                # %if.then.i.i16
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN12YAML_ElementD2Ev)
	jr	$t8
.Lfunc_end2:
	.size	_ZN8YAML_DocD2Ev, .Lfunc_end2-_ZN8YAML_DocD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8YAML_Doc12generateYAMLB5cxx11Ev # -- Begin function _ZN8YAML_Doc12generateYAMLB5cxx11Ev
	.p2align	2
	.type	_ZN8YAML_Doc12generateYAMLB5cxx11Ev,@function
_ZN8YAML_Doc12generateYAMLB5cxx11Ev:    # @_ZN8YAML_Doc12generateYAMLB5cxx11Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -320
	.cfi_def_cfa_offset 320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
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
	move	$s2, $a1
	move	$s0, $a0
	addi.d	$fp, $a0, 16
	st.d	$fp, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	addi.d	$s6, $sp, 144
	st.d	$s6, $sp, 128
	st.d	$zero, $sp, 136
	st.b	$zero, $sp, 144
.Ltmp14:                                # EH_LABEL
	addi.d	$a0, $sp, 128
	ori	$a1, $zero, 23
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp16:                                # EH_LABEL
	addi.d	$a0, $sp, 128
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.2:                                # %invoke.cont1.i.i
	ld.d	$a0, $sp, 136
	addi.w	$a1, $zero, -24
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB3_223
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i
.Ltmp18:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 128
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.4:                                # %invoke.cont
	ld.d	$a0, $sp, 136
	ld.d	$a2, $s2, 96
	addi.w	$a1, $zero, -2
	lu52i.d	$s7, $a1, 2047
	sub.d	$a0, $s7, $a0
	bltu	$a0, $a2, .LBB3_225
# %bb.5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
.Ltmp20:                                # EH_LABEL
	ld.d	$a1, $s2, 88
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.6:                                # %call.i.i.i.noexc
	addi.d	$s3, $sp, 176
	st.d	$s3, $sp, 160
	ld.d	$a1, $a0, 0
	addi.d	$s4, $a0, 16
	beq	$a1, $s4, .LBB3_8
# %bb.7:                                # %if.else.i.i
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 176
	ld.d	$s1, $a0, 8
	st.d	$a1, $sp, 160
	b	.LBB3_9
.LBB3_8:                                # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
	ld.d	$s1, $a0, 8
	addi.d	$a2, $s1, 1
	move	$s3, $a0
	addi.d	$a0, $sp, 176
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	addi.d	$s3, $sp, 176
.LBB3_9:                                # %invoke.cont5
	st.d	$s1, $sp, 168
	st.d	$s4, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$a1, $sp, 168
	st.b	$zero, $a0, 16
	beq	$a1, $s7, .LBB3_227
# %bb.10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
.Ltmp22:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 160
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.11:                               # %call2.i.i.noexc
	addi.d	$s4, $sp, 208
	st.d	$s4, $sp, 192
	ld.d	$a1, $a0, 0
	addi.d	$s5, $a0, 16
	beq	$a1, $s5, .LBB3_13
# %bb.12:                               # %if.else.i.i37
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 208
	ld.d	$s1, $a0, 8
	st.d	$a1, $sp, 192
	b	.LBB3_14
.LBB3_13:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i43
	ld.d	$s1, $a0, 8
	addi.d	$a2, $s1, 1
	move	$s3, $a0
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	addi.d	$s3, $sp, 176
.LBB3_14:                               # %invoke.cont7
	st.d	$s1, $sp, 200
	st.d	$s5, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	ld.d	$a0, $s0, 0
	beq	$a0, $fp, .LBB3_32
# %bb.15:                               # %invoke.cont.thread.i
	ld.d	$a1, $sp, 192
	beq	$a1, $s4, .LBB3_35
# %bb.16:                               # %if.then24.i
	ld.d	$a2, $fp, 0
	vld	$vr0, $sp, 200
	st.d	$a1, $s0, 0
	vst	$vr0, $s0, 8
	beqz	$a0, .LBB3_34
.LBB3_17:                               # %if.then30.i
	st.d	$a0, $sp, 192
	st.d	$a2, $sp, 208
	st.d	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 192
	beq	$a0, $s4, .LBB3_19
.LBB3_18:                               # %if.then.i.i
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 160
	beq	$a0, $s3, .LBB3_21
# %bb.20:                               # %if.then.i.i60
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB3_23
# %bb.22:                               # %if.then.i.i68
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_23:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
	ld.d	$s4, $s0, 0
	ld.d	$s5, $s0, 8
	st.d	$s6, $sp, 128
	st.d	$zero, $sp, 136
	st.b	$zero, $sp, 144
	addi.d	$a1, $s5, 26
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.24:                               # %invoke.cont.i.i87
	ld.d	$a0, $sp, 136
	sub.d	$a0, $s7, $a0
	bltu	$a0, $s5, .LBB3_221
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i91
.Ltmp26:                                # EH_LABEL
	addi.d	$a0, $sp, 128
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.26:                               # %invoke.cont1.i.i93
	ld.d	$a0, $sp, 136
	addi.w	$a1, $zero, -27
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB3_221
# %bb.27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i97
.Ltmp28:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 128
	ori	$a2, $zero, 26
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.28:                               # %invoke.cont15
	ld.d	$a0, $sp, 136
	ld.d	$a2, $s2, 128
	sub.d	$a0, $s7, $a0
	bltu	$a0, $a2, .LBB3_229
# %bb.29:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i110
.Ltmp30:                                # EH_LABEL
	ld.d	$a1, $s2, 120
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.30:                               # %call.i.i.i111.noexc
	st.d	$s3, $sp, 160
	ld.d	$a1, $a0, 0
	addi.d	$s4, $a0, 16
	beq	$a1, $s4, .LBB3_39
# %bb.31:                               # %if.else.i.i113
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 176
	ld.d	$s1, $a0, 8
	st.d	$a1, $sp, 160
	b	.LBB3_40
.LBB3_32:                               # %invoke.cont.i
	ld.d	$a1, $sp, 192
	beq	$a1, $s4, .LBB3_35
# %bb.33:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 200
	st.d	$a1, $s0, 0
	vst	$vr0, $s0, 8
	bnez	$a0, .LBB3_17
.LBB3_34:                               # %if.else31.i
	st.d	$s4, $sp, 192
	move	$a0, $s4
	st.d	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 192
	bne	$a0, $s4, .LBB3_18
	b	.LBB3_19
.LBB3_35:                               # %if.then9.i
	addi.d	$a2, $sp, 192
	beq	$a2, $s0, .LBB3_219
# %bb.36:                               # %if.then10.i
	ld.d	$a2, $sp, 200
	beqz	$a2, .LBB3_116
# %bb.37:                               # %if.then10.i
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_115
# %bb.38:                               # %if.then.i25.i
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_116
.LBB3_39:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i119
	ld.d	$s1, $a0, 8
	addi.d	$a2, $s1, 1
	move	$s3, $a0
	addi.d	$a0, $sp, 176
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	addi.d	$s3, $sp, 176
.LBB3_40:                               # %invoke.cont17
	st.d	$s1, $sp, 168
	st.d	$s4, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$a1, $sp, 168
	st.b	$zero, $a0, 16
	beq	$a1, $s7, .LBB3_231
# %bb.41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i132
.Ltmp32:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 160
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.42:                               # %call2.i.i.noexc146
	addi.d	$s4, $sp, 208
	st.d	$s4, $sp, 192
	ld.d	$a1, $a0, 0
	addi.d	$s5, $a0, 16
	beq	$a1, $s5, .LBB3_44
# %bb.43:                               # %if.else.i.i134
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 208
	ld.d	$s1, $a0, 8
	st.d	$a1, $sp, 192
	b	.LBB3_45
.LBB3_44:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i140
	ld.d	$s1, $a0, 8
	addi.d	$a2, $s1, 1
	move	$s3, $a0
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	addi.d	$s3, $sp, 176
.LBB3_45:                               # %invoke.cont19
	st.d	$s1, $sp, 200
	st.d	$s5, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	ld.d	$a0, $s0, 0
	beq	$a0, $fp, .LBB3_83
# %bb.46:                               # %invoke.cont.thread.i150
	ld.d	$a1, $sp, 192
	beq	$a1, $s4, .LBB3_86
# %bb.47:                               # %if.then24.i152
	ld.d	$a2, $fp, 0
	vld	$vr0, $sp, 200
	st.d	$a1, $s0, 0
	vst	$vr0, $s0, 8
	beqz	$a0, .LBB3_85
.LBB3_48:                               # %if.then30.i160
	st.d	$a0, $sp, 192
	st.d	$a2, $sp, 208
	st.d	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 192
	beq	$a0, $s4, .LBB3_50
.LBB3_49:                               # %if.then.i.i181
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_50:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 160
	beq	$a0, $s3, .LBB3_52
# %bb.51:                               # %if.then.i.i189
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_52:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB3_54
# %bb.53:                               # %if.then.i.i197
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_54:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
	ld.d	$a1, $s2, 72
	ld.d	$a0, $s2, 64
	beq	$a1, $a0, .LBB3_81
# %bb.55:                               # %for.body.lr.ph
	move	$s7, $zero
	move	$s1, $zero
	addi.d	$s6, $sp, 112
	addi.d	$s4, $sp, 208
	addi.d	$s8, $sp, 192
	b	.LBB3_57
	.p2align	4, , 16
.LBB3_56:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a1, $s2, 72
	ld.d	$a0, $s2, 64
	addi.d	$s1, $s1, 1
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	addi.d	$s7, $s7, 8
	bgeu	$s1, $a1, .LBB3_81
.LBB3_57:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a1, $a0, $s7
	st.d	$s6, $sp, 96
	st.d	$zero, $sp, 104
	st.b	$zero, $sp, 112
.Ltmp34:                                # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a2, $sp, 96
	pcaddu18i	$ra, %call36(_ZN12YAML_Element9printYAMLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.58:                               # %invoke.cont35
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a3, $s0, 0
	ld.d	$a4, $s0, 8
.Ltmp37:                                # EH_LABEL
	addi.d	$a0, $sp, 160
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.59:                               # %call3.i.i.i.noexc
                                        #   in Loop: Header=BB3_57 Depth=1
	st.d	$s4, $sp, 192
	ld.d	$a1, $a0, 0
	addi.d	$s5, $a0, 16
	beq	$a1, $s5, .LBB3_61
# %bb.60:                               # %if.else.i.i253
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 208
	ld.d	$s3, $a0, 8
	st.d	$a1, $sp, 192
	b	.LBB3_62
	.p2align	4, , 16
.LBB3_61:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i259
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$s3, $a0, 8
	addi.d	$a2, $s3, 1
	move	$fp, $a0
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
.LBB3_62:                               # %invoke.cont37
                                        #   in Loop: Header=BB3_57 Depth=1
	st.d	$s3, $sp, 200
	st.d	$s5, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	ld.d	$a0, $s0, 0
	beq	$a0, $fp, .LBB3_71
# %bb.63:                               # %invoke.cont.thread.i265
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a1, $sp, 192
	addi.d	$s3, $sp, 176
	beq	$a1, $s4, .LBB3_74
# %bb.64:                               # %if.then24.i267
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a2, $fp, 0
	vld	$vr0, $sp, 200
	st.d	$a1, $s0, 0
	vst	$vr0, $s0, 8
	beqz	$a0, .LBB3_73
.LBB3_65:                               # %if.then30.i275
                                        #   in Loop: Header=BB3_57 Depth=1
	st.d	$a0, $sp, 192
	st.d	$a2, $sp, 208
	st.d	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 192
	beq	$a0, $s4, .LBB3_67
.LBB3_66:                               # %if.then.i.i296
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_67:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a0, $sp, 160
	beq	$a0, $s3, .LBB3_69
# %bb.68:                               # %if.then.i.i304
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_69:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a0, $sp, 96
	beq	$a0, $s6, .LBB3_56
# %bb.70:                               # %if.then.i.i312
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_56
	.p2align	4, , 16
.LBB3_71:                               # %invoke.cont.i290
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a1, $sp, 192
	addi.d	$s3, $sp, 176
	beq	$a1, $s4, .LBB3_74
# %bb.72:                               #   in Loop: Header=BB3_57 Depth=1
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 200
	st.d	$a1, $s0, 0
	vst	$vr0, $s0, 8
	bnez	$a0, .LBB3_65
.LBB3_73:                               # %if.else31.i277
                                        #   in Loop: Header=BB3_57 Depth=1
	st.d	$s4, $sp, 192
	move	$a0, $s4
	st.d	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 192
	bne	$a0, $s4, .LBB3_66
	b	.LBB3_67
	.p2align	4, , 16
.LBB3_74:                               # %if.then9.i278
                                        #   in Loop: Header=BB3_57 Depth=1
	beq	$s8, $s0, .LBB3_80
# %bb.75:                               # %if.then10.i282
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a2, $sp, 200
	beqz	$a2, .LBB3_79
# %bb.76:                               # %if.then10.i282
                                        #   in Loop: Header=BB3_57 Depth=1
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_78
# %bb.77:                               # %if.then.i25.i283
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_79
.LBB3_78:                               # %if.end.i.i.i289
                                        #   in Loop: Header=BB3_57 Depth=1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_79:                               # %if.end18.i284
                                        #   in Loop: Header=BB3_57 Depth=1
	ld.d	$a0, $sp, 200
	ld.d	$a1, $s0, 0
	st.d	$a0, $s0, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 192
	st.d	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 192
	bne	$a0, $s4, .LBB3_66
	b	.LBB3_67
.LBB3_80:                               #   in Loop: Header=BB3_57 Depth=1
	move	$a0, $a1
	st.d	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 192
	bne	$a0, $s4, .LBB3_66
	b	.LBB3_67
.LBB3_81:                               # %for.cond.cleanup
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 20
	ld.w	$a3, $a0, 16
	ld.w	$a4, $a0, 12
	ld.w	$a5, $a0, 8
	ld.w	$a6, $a0, 4
	ld.w	$a7, $a0, 0
	addi.w	$a2, $a1, 1900
	addi.w	$a3, $a3, 1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 192
	addi.d	$s8, $sp, 208
	st.d	$s8, $sp, 192
	st.d	$zero, $sp, 200
	st.b	$zero, $sp, 208
	beqz	$a0, .LBB3_90
# %bb.82:                               # %if.else
.Ltmp40:                                # EH_LABEL
	addi.d	$a1, $s2, 184
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
	addi.d	$s7, $sp, 144
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	b	.LBB3_128
.LBB3_83:                               # %invoke.cont.i175
	ld.d	$a1, $sp, 192
	beq	$a1, $s4, .LBB3_86
# %bb.84:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 200
	st.d	$a1, $s0, 0
	vst	$vr0, $s0, 8
	bnez	$a0, .LBB3_48
.LBB3_85:                               # %if.else31.i162
	st.d	$s4, $sp, 192
	move	$a0, $s4
	st.d	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 192
	bne	$a0, $s4, .LBB3_49
	b	.LBB3_50
.LBB3_86:                               # %if.then9.i163
	addi.d	$a2, $sp, 192
	beq	$a2, $s0, .LBB3_220
# %bb.87:                               # %if.then10.i167
	ld.d	$a2, $sp, 200
	beqz	$a2, .LBB3_118
# %bb.88:                               # %if.then10.i167
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_117
# %bb.89:                               # %if.then.i25.i168
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_118
.LBB3_90:                               # %if.then
	ld.d	$s4, $s2, 88
	ld.d	$s5, $s2, 96
	addi.d	$s8, $sp, 40
	st.d	$s8, $sp, 24
	st.d	$zero, $sp, 32
	st.b	$zero, $sp, 40
	addi.d	$a1, $s5, 1
.Ltmp43:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
# %bb.91:                               # %invoke.cont.i.i347
	ld.d	$a0, $sp, 32
	sub.d	$a0, $fp, $a0
	bltu	$a0, $s5, .LBB3_241
# %bb.92:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i351
.Ltmp45:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.93:                               # %invoke.cont1.i.i353
	ld.d	$a0, $sp, 32
	beq	$a0, $fp, .LBB3_241
# %bb.94:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i357
.Ltmp47:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.95:                               # %invoke.cont58
	ld.d	$a0, $sp, 32
	ld.d	$a2, $s2, 128
	sub.d	$a0, $fp, $a0
	bltu	$a0, $a2, .LBB3_245
# %bb.96:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i370
.Ltmp49:                                # EH_LABEL
	ld.d	$a1, $s2, 120
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.97:                               # %call.i.i.i371.noexc
	addi.d	$s4, $sp, 144
	st.d	$s4, $sp, 128
	ld.d	$a1, $a0, 0
	addi.d	$s5, $a0, 16
	beq	$a1, $s5, .LBB3_99
# %bb.98:                               # %if.else.i.i373
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 144
	ld.d	$s1, $a0, 8
	st.d	$a1, $sp, 128
	b	.LBB3_100
.LBB3_99:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i379
	ld.d	$s1, $a0, 8
	addi.d	$a2, $s1, 1
	move	$s3, $a0
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	addi.d	$s3, $sp, 176
.LBB3_100:                              # %invoke.cont61
	st.d	$s1, $sp, 136
	st.d	$s5, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$a1, $sp, 136
	st.b	$zero, $a0, 16
	beq	$a1, $fp, .LBB3_247
# %bb.101:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i392
.Ltmp51:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 128
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.102:                              # %call2.i.i.noexc406
	move	$s6, $a0
	addi.d	$s5, $sp, 176
	st.d	$s5, $sp, 160
	ld.d	$a0, $a0, 0
	addi.d	$s7, $s6, 16
	beq	$a0, $s7, .LBB3_104
# %bb.103:                              # %if.else.i.i394
	ld.d	$a1, $s6, 16
	st.d	$a1, $sp, 176
	ld.d	$s1, $s6, 8
	st.d	$a0, $sp, 160
	b	.LBB3_105
.LBB3_104:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i400
	ld.d	$s1, $s6, 8
	addi.d	$a2, $s1, 1
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_105:                              # %invoke.cont63
	st.d	$s1, $sp, 168
	st.d	$s7, $s6, 0
	ld.d	$a0, $sp, 192
	st.d	$zero, $s6, 8
	st.b	$zero, $s6, 16
	addi.d	$a1, $sp, 208
	beq	$a0, $a1, .LBB3_109
# %bb.106:                              # %invoke.cont.thread.i410
	ld.d	$a1, $sp, 160
	addi.d	$s7, $sp, 144
	beq	$a1, $s5, .LBB3_112
# %bb.107:                              # %if.then24.i412
	ld.d	$a2, $sp, 208
	vld	$vr0, $sp, 168
	st.d	$a1, $sp, 192
	vst	$vr0, $sp, 200
	beqz	$a0, .LBB3_111
.LBB3_108:                              # %if.then30.i420
	st.d	$a0, $sp, 160
	st.d	$a2, $sp, 176
	b	.LBB3_121
.LBB3_109:                              # %invoke.cont.i435
	ld.d	$a1, $sp, 160
	addi.d	$s7, $sp, 144
	beq	$a1, $s5, .LBB3_112
# %bb.110:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 168
	st.d	$a1, $sp, 192
	vst	$vr0, $sp, 200
	bnez	$a0, .LBB3_108
.LBB3_111:                              # %if.else31.i422
	st.d	$s5, $sp, 160
	move	$a0, $s5
	b	.LBB3_121
.LBB3_112:                              # %if.then9.i423
	ld.d	$a2, $sp, 168
	beqz	$a2, .LBB3_120
# %bb.113:                              # %if.then9.i423
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_119
# %bb.114:                              # %if.then.i25.i428
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_120
.LBB3_115:                              # %if.end.i.i.i
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_116:                              # %if.end18.i
	ld.d	$a0, $sp, 200
	ld.d	$a1, $s0, 0
	st.d	$a0, $s0, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 192
	st.d	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 192
	bne	$a0, $s4, .LBB3_18
	b	.LBB3_19
.LBB3_117:                              # %if.end.i.i.i174
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_118:                              # %if.end18.i169
	ld.d	$a0, $sp, 200
	ld.d	$a1, $s0, 0
	st.d	$a0, $s0, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 192
	st.d	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 192
	bne	$a0, $s4, .LBB3_49
	b	.LBB3_50
.LBB3_119:                              # %if.end.i.i.i434
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_120:                              # %if.end18.i429
	ld.d	$a0, $sp, 168
	ld.d	$a1, $sp, 192
	st.d	$a0, $sp, 200
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 160
.LBB3_121:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit439
	st.d	$zero, $sp, 168
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 160
	beq	$a0, $s5, .LBB3_123
# %bb.122:                              # %if.then.i.i441
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_123:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447
	ld.d	$a0, $sp, 128
	beq	$a0, $s4, .LBB3_125
# %bb.124:                              # %if.then.i.i449
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_125:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
	ld.d	$a0, $sp, 24
	beq	$a0, $s8, .LBB3_127
# %bb.126:                              # %if.then.i.i457
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_127:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463
	addi.d	$s8, $sp, 208
.LBB3_128:                              # %if.end
	addi.d	$s6, $sp, 40
	st.d	$s6, $sp, 24
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 224
	move	$a0, $s6
	bltu	$s4, $a1, .LBB3_131
# %bb.129:                              # %if.then.i.i490
.Ltmp53:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 224
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.130:                              # %call2.i5.i.noexc491
	ld.d	$a1, $sp, 224
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 40
.LBB3_131:                              # %if.end.i.i485
	beqz	$s4, .LBB3_135
# %bb.132:                              # %if.end.i.i485
	ori	$a1, $zero, 1
	bne	$s4, $a1, .LBB3_134
# %bb.133:                              # %if.then.i.i.i.i488
	ld.b	$a1, $sp, 56
	st.b	$a1, $a0, 0
	b	.LBB3_135
.LBB3_134:                              # %if.end.i.i.i.i.i489
	addi.d	$a1, $sp, 56
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_135:                              # %invoke.cont79
	ld.d	$a0, $sp, 224
	ld.d	$a1, $sp, 24
	st.d	$a0, $sp, 32
	stx.b	$zero, $a1, $a0
	ld.d	$a3, $sp, 192
	ld.d	$a4, $sp, 200
.Ltmp56:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.136:                              # %call3.i.i.i.noexc509
	st.d	$s7, $sp, 128
	ld.d	$a1, $a0, 0
	addi.d	$s4, $a0, 16
	beq	$a1, $s4, .LBB3_138
# %bb.137:                              # %if.else.i.i499
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 144
	ld.d	$s1, $a0, 8
	st.d	$a1, $sp, 128
	b	.LBB3_139
.LBB3_138:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i505
	ld.d	$s1, $a0, 8
	addi.d	$a2, $s1, 1
	move	$s3, $a0
	move	$a0, $s7
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	addi.d	$s3, $sp, 176
.LBB3_139:                              # %invoke.cont81
	st.d	$s1, $sp, 136
	st.d	$s4, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$a1, $sp, 136
	addi.w	$a2, $zero, -6
	lu52i.d	$a2, $a2, 2047
	st.b	$zero, $a0, 16
	bgeu	$a1, $a2, .LBB3_233
# %bb.140:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i517
.Ltmp59:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 128
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.141:                              # %call2.i.i.noexc531
	move	$s4, $a0
	st.d	$s3, $sp, 160
	ld.d	$a0, $a0, 0
	addi.d	$s5, $s4, 16
	beq	$a0, $s5, .LBB3_143
# %bb.142:                              # %if.else.i.i519
	ld.d	$a1, $s4, 16
	st.d	$a1, $sp, 176
	ld.d	$s1, $s4, 8
	st.d	$a0, $sp, 160
	b	.LBB3_144
.LBB3_143:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i525
	ld.d	$s1, $s4, 8
	addi.d	$a2, $s1, 1
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_144:                              # %invoke.cont83
	st.d	$s1, $sp, 168
	st.d	$s5, $s4, 0
	ld.d	$a0, $sp, 192
	st.d	$zero, $s4, 8
	st.b	$zero, $s4, 16
	beq	$a0, $s8, .LBB3_148
# %bb.145:                              # %invoke.cont.thread.i535
	ld.d	$a1, $sp, 160
	beq	$a1, $s3, .LBB3_151
# %bb.146:                              # %if.then24.i537
	ld.d	$a2, $sp, 208
	vld	$vr0, $sp, 168
	st.d	$a1, $sp, 192
	vst	$vr0, $sp, 200
	beqz	$a0, .LBB3_150
.LBB3_147:                              # %if.then30.i545
	st.d	$a0, $sp, 160
	st.d	$a2, $sp, 176
	b	.LBB3_156
.LBB3_148:                              # %invoke.cont.i560
	ld.d	$a1, $sp, 160
	beq	$a1, $s3, .LBB3_151
# %bb.149:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 168
	st.d	$a1, $sp, 192
	vst	$vr0, $sp, 200
	bnez	$a0, .LBB3_147
.LBB3_150:                              # %if.else31.i547
	st.d	$s3, $sp, 160
	move	$a0, $s3
	b	.LBB3_156
.LBB3_151:                              # %if.then9.i548
	ld.d	$a2, $sp, 168
	beqz	$a2, .LBB3_155
# %bb.152:                              # %if.then9.i548
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_154
# %bb.153:                              # %if.then.i25.i553
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_155
.LBB3_154:                              # %if.end.i.i.i559
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_155:                              # %if.end18.i554
	ld.d	$a0, $sp, 168
	ld.d	$a1, $sp, 192
	st.d	$a0, $sp, 200
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 160
.LBB3_156:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit564
	st.d	$zero, $sp, 168
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 160
	beq	$a0, $s3, .LBB3_158
# %bb.157:                              # %if.then.i.i566
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_158:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572
	ld.d	$a0, $sp, 128
	beq	$a0, $s7, .LBB3_160
# %bb.159:                              # %if.then.i.i574
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_160:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580
	ld.d	$a0, $sp, 24
	beq	$a0, $s6, .LBB3_162
# %bb.161:                              # %if.then.i.i582
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_162:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588
	ld.d	$s3, $s2, 160
	beqz	$s3, .LBB3_165
# %bb.163:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB3_174
# %bb.164:                              # %invoke.cont95
	ld.d	$s4, $s2, 152
	ld.bu	$a0, $s4, 0
	ori	$a1, $zero, 46
	bne	$a0, $a1, .LBB3_175
.LBB3_165:                              # %if.else118
	ld.d	$s1, $sp, 192
	ld.d	$s2, $sp, 200
	addi.d	$s3, $sp, 176
	st.d	$s3, $sp, 160
	st.d	$zero, $sp, 168
	st.b	$zero, $sp, 176
	addi.d	$a1, $s2, 2
.Ltmp61:                                # EH_LABEL
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.166:                              # %invoke.cont.i.i783
	ld.d	$a0, $sp, 168
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	bltu	$a1, $a0, .LBB3_235
# %bb.167:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i787
.Ltmp63:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 160
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.168:                              # %invoke.cont1.i.i789
	ld.d	$a0, $sp, 168
	sub.d	$a0, $fp, $a0
	bltu	$a0, $s2, .LBB3_235
# %bb.169:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i793
.Ltmp65:                                # EH_LABEL
	addi.d	$a0, $sp, 160
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.170:                              # %invoke.cont121
	ld.d	$a0, $sp, 192
	beq	$a0, $s8, .LBB3_189
# %bb.171:                              # %invoke.cont.thread.i801
	ld.d	$a1, $sp, 160
	beq	$a1, $s3, .LBB3_192
# %bb.172:                              # %if.then24.i803
	ld.d	$a2, $sp, 208
	vld	$vr0, $sp, 168
	st.d	$a1, $sp, 192
	vst	$vr0, $sp, 200
	beqz	$a0, .LBB3_191
.LBB3_173:                              # %if.then30.i811
	st.d	$a0, $sp, 160
	st.d	$a2, $sp, 176
	b	.LBB3_212
.LBB3_174:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588.if.then97_crit_edge
	ld.d	$s4, $s2, 152
.LBB3_175:                              # %if.then97
	addi.d	$s5, $sp, 176
	st.d	$s5, $sp, 160
	st.d	$zero, $sp, 168
	st.b	$zero, $sp, 176
	addi.d	$a1, $s3, 6
.Ltmp70:                                # EH_LABEL
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.176:                              # %invoke.cont.i.i616
	ld.d	$a0, $sp, 168
	addi.w	$a1, $zero, -8
	lu52i.d	$a1, $a1, 2047
	bltu	$a1, $a0, .LBB3_237
# %bb.177:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i620
.Ltmp72:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	addi.d	$a0, $sp, 160
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.178:                              # %invoke.cont1.i.i622
	ld.d	$a0, $sp, 168
	sub.d	$a0, $fp, $a0
	bltu	$a0, $s3, .LBB3_237
# %bb.179:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i626
.Ltmp74:                                # EH_LABEL
	addi.d	$a0, $sp, 160
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.180:                              # %invoke.cont100
	ld.d	$a0, $s2, 152
	ori	$a1, $zero, 493
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s2, 152
	ld.d	$s4, $s2, 160
	addi.d	$s6, $sp, 40
	st.d	$s6, $sp, 24
	st.d	$zero, $sp, 32
	st.b	$zero, $sp, 40
	addi.d	$a1, $s4, 1
.Ltmp76:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.181:                              # %invoke.cont.i.i644
	ld.d	$a0, $sp, 32
	sub.d	$a0, $fp, $a0
	bltu	$a0, $s4, .LBB3_239
# %bb.182:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i648
.Ltmp78:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.183:                              # %invoke.cont1.i.i650
	ld.d	$a0, $sp, 32
	beq	$a0, $fp, .LBB3_239
# %bb.184:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i654
.Ltmp80:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.185:                              # %invoke.cont108
	ld.d	$a0, $sp, 32
	ld.d	$a2, $s2, 192
	sub.d	$a0, $fp, $a0
	bltu	$a0, $a2, .LBB3_243
# %bb.186:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i667
.Ltmp82:                                # EH_LABEL
	ld.d	$a1, $s2, 184
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.187:                              # %call.i.i.i668.noexc
	move	$s2, $a0
	st.d	$s7, $sp, 128
	ld.d	$a1, $a0, 0
	addi.d	$s0, $a0, 16
	beq	$a1, $s0, .LBB3_195
# %bb.188:                              # %if.else.i.i670
	ld.d	$a0, $s2, 16
	st.d	$a0, $sp, 144
	ld.d	$fp, $s2, 8
	st.d	$a1, $sp, 128
	b	.LBB3_196
.LBB3_189:                              # %invoke.cont.i826
	ld.d	$a1, $sp, 160
	beq	$a1, $s3, .LBB3_192
# %bb.190:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 168
	st.d	$a1, $sp, 192
	vst	$vr0, $sp, 200
	bnez	$a0, .LBB3_173
.LBB3_191:                              # %if.else31.i813
	st.d	$s3, $sp, 160
	move	$a0, $s3
	b	.LBB3_212
.LBB3_192:                              # %if.then9.i814
	ld.d	$a2, $sp, 168
	beqz	$a2, .LBB3_211
# %bb.193:                              # %if.then9.i814
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_210
# %bb.194:                              # %if.then.i25.i819
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_211
.LBB3_195:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i676
	ld.d	$fp, $s2, 8
	addi.d	$a2, $fp, 1
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a1, $s7
.LBB3_196:                              # %invoke.cont111
	st.d	$fp, $sp, 136
	st.d	$s0, $s2, 0
	ld.d	$a0, $sp, 192
	st.d	$zero, $s2, 8
	st.b	$zero, $s2, 16
	beq	$a0, $s8, .LBB3_200
# %bb.197:                              # %invoke.cont.thread.i685
	beq	$a1, $s7, .LBB3_207
# %bb.198:                              # %if.end26.i688
	ld.d	$a3, $sp, 144
	ld.d	$a2, $sp, 208
	st.d	$a1, $sp, 192
	st.d	$fp, $sp, 200
	st.d	$a3, $sp, 208
	beqz	$a0, .LBB3_202
# %bb.199:                              # %if.then30.i695
	st.d	$a0, $sp, 128
	st.d	$a2, $sp, 144
	st.d	$zero, $sp, 136
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 128
	bne	$a0, $s7, .LBB3_203
	b	.LBB3_204
.LBB3_200:                              # %invoke.cont.i710
	beq	$a1, $s7, .LBB3_207
# %bb.201:                              # %if.end26.i688.thread
	ld.d	$a0, $sp, 144
	st.d	$a1, $sp, 192
	st.d	$fp, $sp, 200
	st.d	$a0, $sp, 208
.LBB3_202:                              # %if.else31.i697
	st.d	$s7, $sp, 128
	move	$a0, $s7
	st.d	$zero, $sp, 136
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 128
	beq	$a0, $s7, .LBB3_204
.LBB3_203:                              # %if.then.i.i716
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_204:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722
	ld.d	$a0, $sp, 24
	beq	$a0, $s6, .LBB3_206
# %bb.205:                              # %if.then.i.i724
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_206:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit730
	ld.d	$a0, $sp, 160
	bne	$a0, $s5, .LBB3_213
	b	.LBB3_214
.LBB3_207:                              # %if.then9.i698
	beqz	$fp, .LBB3_218
# %bb.208:                              # %if.then9.i698
	ori	$a2, $zero, 1
	bne	$fp, $a2, .LBB3_217
# %bb.209:                              # %if.then.i25.i703
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_218
.LBB3_210:                              # %if.end.i.i.i825
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_211:                              # %if.end18.i820
	ld.d	$a0, $sp, 168
	ld.d	$a1, $sp, 192
	st.d	$a0, $sp, 200
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 160
.LBB3_212:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit830
	st.d	$zero, $sp, 168
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 160
	beq	$a0, $s3, .LBB3_214
.LBB3_213:                              # %if.then.i.i832
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_214:                              # %if.end124
	ld.d	$a0, $sp, 192
	beq	$a0, $s8, .LBB3_216
# %bb.215:                              # %if.then.i.i840
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_216:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB3_217:                              # %if.end.i.i.i709
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_218:                              # %if.end18.i704
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 192
	st.d	$a0, $sp, 200
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 128
	st.d	$zero, $sp, 136
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 128
	bne	$a0, $s7, .LBB3_203
	b	.LBB3_204
.LBB3_219:
	move	$a0, $a1
	st.d	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 192
	bne	$a0, $s4, .LBB3_18
	b	.LBB3_19
.LBB3_220:
	move	$a0, $a1
	st.d	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 192
	bne	$a0, $s4, .LBB3_49
	b	.LBB3_50
.LBB3_221:                              # %if.then.i.i10.invoke.i.i100
.Ltmp111:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.222:                              # %if.then.i.i10.cont.i.i101
.LBB3_223:                              # %if.then.i.i10.invoke.i.i
.Ltmp120:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.224:                              # %if.then.i.i10.cont.i.i
.LBB3_225:                              # %if.then.i.i.i.i
.Ltmp117:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.226:                              # %.noexc
.LBB3_227:                              # %if.then.i.i.i
.Ltmp114:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.228:                              # %.noexc47
.LBB3_229:                              # %if.then.i.i.i.i123
.Ltmp108:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.230:                              # %.noexc124
.LBB3_231:                              # %if.then.i.i.i144
.Ltmp105:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.232:                              # %.noexc145
.LBB3_233:                              # %if.then.i.i.i529
.Ltmp93:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.234:                              # %.noexc530
.LBB3_235:                              # %if.then.i.i10.invoke.i.i796
.Ltmp67:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.236:                              # %if.then.i.i10.cont.i.i797
.LBB3_237:                              # %if.then.i.i10.invoke.i.i629
.Ltmp90:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.238:                              # %if.then.i.i10.cont.i.i630
.LBB3_239:                              # %if.then.i.i10.invoke.i.i657
.Ltmp87:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.240:                              # %if.then.i.i10.cont.i.i658
.LBB3_241:                              # %if.then.i.i10.invoke.i.i360
.Ltmp102:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.242:                              # %if.then.i.i10.cont.i.i361
.LBB3_243:                              # %if.then.i.i.i.i680
.Ltmp84:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.244:                              # %.noexc681
.LBB3_245:                              # %if.then.i.i.i.i383
.Ltmp99:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.246:                              # %.noexc384
.LBB3_247:                              # %if.then.i.i.i404
.Ltmp96:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.248:                              # %.noexc405
.LBB3_249:                              # %lpad78
.Ltmp55:                                # EH_LABEL
	b	.LBB3_251
.LBB3_250:                              # %lpad50
.Ltmp42:                                # EH_LABEL
.LBB3_251:                              # %ehcleanup125
	move	$s2, $a0
	b	.LBB3_283
.LBB3_252:                              # %lpad62
.Ltmp98:                                # EH_LABEL
	ld.d	$a2, $sp, 128
	move	$s2, $a0
	beq	$a2, $s4, .LBB3_255
# %bb.253:                              # %if.then.i.i465
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_255
.LBB3_254:                              # %lpad60
.Ltmp101:                               # EH_LABEL
	move	$s2, $a0
.LBB3_255:                              # %ehcleanup66
	ld.d	$a0, $sp, 24
	beq	$a0, $s8, .LBB3_283
	b	.LBB3_263
.LBB3_256:                              # %lpad110
.Ltmp86:                                # EH_LABEL
	b	.LBB3_274
.LBB3_257:                              # %lpad80
.Ltmp58:                                # EH_LABEL
	move	$s2, $a0
	b	.LBB3_262
.LBB3_258:                              # %lpad.i.i340
.Ltmp104:                               # EH_LABEL
	ld.d	$a2, $sp, 24
	move	$s2, $a0
	beq	$a2, $s8, .LBB3_283
# %bb.259:                              # %if.then.i.i15.i.i342
	ld.d	$a0, $sp, 40
	b	.LBB3_281
.LBB3_260:                              # %lpad82
.Ltmp95:                                # EH_LABEL
	ld.d	$a2, $sp, 128
	move	$s2, $a0
	beq	$a2, $s7, .LBB3_262
# %bb.261:                              # %if.then.i.i740
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_262:                              # %ehcleanup86
	ld.d	$a0, $sp, 24
	beq	$a0, $s6, .LBB3_283
.LBB3_263:                              # %if.then.i.i473
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	b	.LBB3_282
.LBB3_264:                              # %lpad18
.Ltmp107:                               # EH_LABEL
	b	.LBB3_267
.LBB3_265:                              # %lpad16
.Ltmp110:                               # EH_LABEL
	b	.LBB3_270
.LBB3_266:                              # %lpad6
.Ltmp116:                               # EH_LABEL
.LBB3_267:                              # %lpad6
	ld.d	$a2, $sp, 160
	move	$s2, $a0
	beq	$a2, $s3, .LBB3_271
# %bb.268:                              # %if.then.i.i210
	ld.d	$a0, $sp, 176
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_271
.LBB3_269:                              # %lpad4
.Ltmp119:                               # EH_LABEL
.LBB3_270:                              # %ehcleanup
	move	$s2, $a0
.LBB3_271:                              # %ehcleanup
	ld.d	$a0, $sp, 128
	beq	$a0, $s6, .LBB3_296
# %bb.272:                              # %if.then.i.i218
	ld.d	$a1, $sp, 144
	b	.LBB3_294
.LBB3_273:                              # %lpad.i.i637
.Ltmp89:                                # EH_LABEL
.LBB3_274:                              # %lpad110
	ld.d	$a2, $sp, 24
	move	$s2, $a0
	beq	$a2, $s6, .LBB3_276
# %bb.275:                              # %if.then.i.i756
	ld.d	$a0, $sp, 40
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_276:                              # %ehcleanup114
	ld.d	$a0, $sp, 160
	beq	$a0, $s5, .LBB3_283
# %bb.277:                              # %if.then.i.i764
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	b	.LBB3_282
.LBB3_278:                              # %lpad.i.i609
.Ltmp92:                                # EH_LABEL
	ld.d	$a2, $sp, 160
	move	$s2, $a0
	bne	$a2, $s5, .LBB3_280
	b	.LBB3_283
.LBB3_279:                              # %lpad.i.i776
.Ltmp69:                                # EH_LABEL
	ld.d	$a2, $sp, 160
	move	$s2, $a0
	beq	$a2, $s3, .LBB3_283
.LBB3_280:                              # %if.then.i.i15.i.i778
	ld.d	$a0, $sp, 176
.LBB3_281:                              # %ehcleanup125
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB3_282:                              # %ehcleanup125
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_283:                              # %ehcleanup125
	ld.d	$a0, $sp, 192
	addi.d	$a1, $sp, 208
	beq	$a0, $a1, .LBB3_296
# %bb.284:                              # %if.then.i.i848
	ld.d	$a1, $sp, 208
	b	.LBB3_294
.LBB3_285:                              # %lpad.i.i
.Ltmp122:                               # EH_LABEL
	b	.LBB3_287
.LBB3_286:                              # %lpad.i.i80
.Ltmp113:                               # EH_LABEL
.LBB3_287:                              # %lpad.i.i
	ld.d	$a2, $sp, 128
	move	$s2, $a0
	beq	$a2, $s6, .LBB3_296
# %bb.288:                              # %if.then.i.i15.i.i
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB3_295
.LBB3_289:                              # %lpad34
.Ltmp36:                                # EH_LABEL
	move	$s2, $a0
	b	.LBB3_292
.LBB3_290:                              # %lpad36
.Ltmp39:                                # EH_LABEL
	ld.d	$a2, $sp, 160
	move	$s2, $a0
	beq	$a2, $s3, .LBB3_292
# %bb.291:                              # %if.then.i.i320
	ld.d	$a0, $sp, 176
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_292:                              # %ehcleanup40
	ld.d	$a0, $sp, 96
	beq	$a0, $s6, .LBB3_296
# %bb.293:                              # %if.then.i.i328
	ld.d	$a1, $sp, 112
.LBB3_294:                              # %ehcleanup130
	addi.d	$a1, $a1, 1
.LBB3_295:                              # %ehcleanup130
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_296:                              # %ehcleanup130
	ld.d	$a0, $s0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_298
# %bb.297:                              # %if.then.i.i856
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_298:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN8YAML_Doc12generateYAMLB5cxx11Ev, .Lfunc_end3-_ZN8YAML_Doc12generateYAMLB5cxx11Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp14-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp19-.Ltmp14                #   Call between .Ltmp14 and .Ltmp19
	.uleb128 .Ltmp122-.Lfunc_begin2         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp119-.Lfunc_begin2         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp116-.Lfunc_begin2         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp29-.Ltmp24                #   Call between .Ltmp24 and .Ltmp29
	.uleb128 .Ltmp113-.Lfunc_begin2         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp110-.Lfunc_begin2         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp107-.Lfunc_begin2         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin2          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin2          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp40-.Ltmp38                #   Call between .Ltmp38 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin2          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp48-.Ltmp43                #   Call between .Ltmp43 and .Ltmp48
	.uleb128 .Ltmp104-.Lfunc_begin2         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 16 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp101-.Lfunc_begin2         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin2          # >> Call Site 17 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin2          # >> Call Site 18 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp98-.Lfunc_begin2          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 19 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin2          # >> Call Site 20 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin2          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 21 <<
	.uleb128 .Ltmp56-.Ltmp54                #   Call between .Ltmp54 and .Ltmp56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin2          # >> Call Site 22 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin2          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin2          # >> Call Site 23 <<
	.uleb128 .Ltmp59-.Ltmp57                #   Call between .Ltmp57 and .Ltmp59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 24 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp95-.Lfunc_begin2          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 25 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin2          # >> Call Site 26 <<
	.uleb128 .Ltmp66-.Ltmp61                #   Call between .Ltmp61 and .Ltmp66
	.uleb128 .Ltmp69-.Lfunc_begin2          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin2          # >> Call Site 27 <<
	.uleb128 .Ltmp75-.Ltmp70                #   Call between .Ltmp70 and .Ltmp75
	.uleb128 .Ltmp92-.Lfunc_begin2          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin2          # >> Call Site 28 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin2          # >> Call Site 29 <<
	.uleb128 .Ltmp81-.Ltmp76                #   Call between .Ltmp76 and .Ltmp81
	.uleb128 .Ltmp89-.Lfunc_begin2          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin2          # >> Call Site 30 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp86-.Lfunc_begin2          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin2          # >> Call Site 31 <<
	.uleb128 .Ltmp111-.Ltmp83               #   Call between .Ltmp83 and .Ltmp111
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin2         # >> Call Site 32 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin2         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin2         # >> Call Site 33 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin2         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin2         # >> Call Site 34 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin2         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin2         # >> Call Site 35 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin2         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin2         # >> Call Site 36 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin2         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin2         # >> Call Site 37 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin2         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin2          # >> Call Site 38 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin2          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin2          # >> Call Site 39 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin2          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin2          # >> Call Site 40 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin2          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin2          # >> Call Site 41 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin2          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin2         # >> Call Site 42 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin2         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin2          # >> Call Site 43 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin2          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin2          # >> Call Site 44 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin2         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin2          # >> Call Site 45 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin2          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin2          # >> Call Site 46 <<
	.uleb128 .Lfunc_end3-.Ltmp97            #   Call between .Ltmp97 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Mini-Application Name: "
	.size	.L.str, 24

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Mini-Application Version: "
	.size	.L.str.2, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.space	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%04d:%02d:%02d-%02d:%02d:%02d"
	.size	.L.str.4, 30

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"-"
	.size	.L.str.5, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"_"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	".yaml"
	.size	.L.str.7, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"mkdir "
	.size	.L.str.9, 7

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"/"
	.size	.L.str.10, 2

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"./"
	.size	.L.str.11, 3

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"basic_string::append"
	.size	.L.str.14, 21

	.globl	_ZN8YAML_DocC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_
	.type	_ZN8YAML_DocC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_,@function
_ZN8YAML_DocC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_ = _ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_
	.globl	_ZN8YAML_DocD1Ev
	.type	_ZN8YAML_DocD1Ev,@function
_ZN8YAML_DocD1Ev = _ZN8YAML_DocD2Ev
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
